#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#ifdef ARCH_64
#define MAX_POW_TWO (((size_t) 1) << 63)
#else
#define MAX_POW_TWO (((size_t) 1) << 31)
#endif /* ARCH_64 */


enum cc_stat {
    CC_OK                   = 0,

    CC_ERR_ALLOC            = 1,
    CC_ERR_INVALID_CAPACITY = 2,
    CC_ERR_INVALID_RANGE    = 3,
    CC_ERR_MAX_CAPACITY     = 4,
    CC_ERR_KEY_NOT_FOUND    = 6,
    CC_ERR_VALUE_NOT_FOUND  = 7,
    CC_ERR_OUT_OF_RANGE     = 8,

    CC_ITER_END             = 9,
};

#define CC_MAX_ELEMENTS ((size_t) - 2)

#if defined(_MSC_VER)

#define       INLINE __inline
#define FORCE_INLINE __forceinline

#else

#define       INLINE inline
#define FORCE_INLINE inline __attribute__((always_inline))

#endif /* _MSC_VER */


int cc_common_cmp_str(const void *key1, const void *key2);

#define CC_CMP_STRING  cc_common_cmp_str
size_t CC_PARENT(size_t x) {return (x - 1) / 2;}
size_t CC_LEFT(size_t x)    {return 2 * x + 1;}
size_t CC_RIGHT(size_t x)   {return 2 * x + 2;}
#define DEFAULT_CAPACITY 8
#define DEFAULT_EXPANSION_FACTOR 2
struct cc_pqueue_s {
    size_t   size;
    size_t   capacity;
    float    exp_factor;
    void   **buffer;

    /* Memory management function pointers */
    void *(*mem_alloc)  (size_t size);
    void *(*mem_calloc) (size_t blocks, size_t size);
    void  (*mem_free)   (void *block);

    /*  Comparator function pointer, for compairing the elements of CC_PQueue */
    int   (*cmp) (const void *a, const void *b);
};
typedef struct cc_pqueue_s CC_PQueue;

/**
 * The pqueue initialization configuration structure. Used to initialize the
 * CC_PQueue with the specified attributes
 **/

typedef struct cc_pqueue_conf_s {
    /**
     * The initial capacity of the array */
    size_t capacity;

    /**
     * The rate at which the buffer expands (capacity * exp_factor). */
    float  exp_factor;

    /**
     * comparator, used to hold the address of the function which will
     * be used to compare the elements of the CC_PQueue
     */
    int (*cmp) (const void *a, const void *b);

    /**
     * Memory allocators used to allocate the Array structure and the
     * underlying data buffers. */
    void *(*mem_alloc)  (size_t size);
    void *(*mem_calloc) (size_t blocks, size_t size);
    void  (*mem_free)   (void *block);
} CC_PQueueConf;

enum cc_stat  cc_pqueue_new             (CC_PQueue **out, int (*)(const void *, const void *));
enum cc_stat  cc_pqueue_new_conf        (CC_PQueueConf const * const conf, CC_PQueue **out);
void          cc_pqueue_destroy         (CC_PQueue *pqueue);
void          cc_pqueue_destroy_cb      (CC_PQueue *pqueue, void (*cb) (void*));

enum cc_stat  cc_pqueue_push            (CC_PQueue *pqueue, void *element);
enum cc_stat  cc_pqueue_top             (CC_PQueue *pqueue, void **out);
enum cc_stat  cc_pqueue_pop             (CC_PQueue *pqueue, void **out);

static void cc_pqueue_heapify(CC_PQueue *pqueue, size_t index);


/**
 * Initializes the fields of CC_PQueueConf to default values
 *
 * @param[in, out] conf CC_PQueueConf structure that is being initialized
 * @param[in] comp The comparator function required for CC_PQueue
 */
void cc_pqueue_conf_init(CC_PQueueConf *conf, int (*cmp)(const void *, const void *))
{
    conf->mem_alloc  = malloc;
    conf->mem_calloc = calloc;
    conf->mem_free   = free;
    conf->cmp        = cmp;
    conf->exp_factor = DEFAULT_EXPANSION_FACTOR;
    conf->capacity   = DEFAULT_CAPACITY;
}


/**
 * Creates a new empty pqueue and returns a status code.
 *
 * @param[out] out pointer to where the newly created CC_PQueue is to be stored
 *
 * @return CC_OK if the creation was successful, or CC_ERR_ALLOC if the
 * memory allocation for the new CC_PQueue structure failed.
 */
enum cc_stat cc_pqueue_new(CC_PQueue **out, int (*cmp)(const void*, const void*))
{
    CC_PQueueConf conf;
    cc_pqueue_conf_init(&conf, cmp);
    return cc_pqueue_new_conf(&conf, out);
}

/**
 * Creates a new empty CC_PQueue based on the CC_PQueueConf struct and returns a
 * status code.
 *
 * The priority queue is allocated using the allocators specified in the CC_PQueueConf
 * struct. The allocation may fail if the underlying allocator fails. It may also
 * fail if the values of exp_factor and capacity in the ArrayConf
 * structure of the CC_PQueueConf do not meet the following condition:
 * <code>exp_factor < (CC_MAX_ELEMENTS / capacity)</code>.
 *
 * @param[in] conf priority queue configuration structure
 * @param[out] out pointer to where the newly created CC_PQueue is to be stored
 *
 * @return CC_OK if the creation was successful, CC_ERR_INVALID_CAPACITY if
 * the above mentioned condition is not met, or CC_ERR_ALLOC if the memory
 * allocation for the new CC_PQueue structure failed.
 */
enum cc_stat cc_pqueue_new_conf(CC_PQueueConf const * const conf, CC_PQueue **out)
{
    float ex;

    /* The expansion factor must be greater than one for the
     * array to grow */
    if (conf->exp_factor <= 1)
        ex = DEFAULT_EXPANSION_FACTOR;
    else
        ex = conf->exp_factor;

    /* Needed to avoid an integer overflow on the first resize and
     * to easily check for any future overflows. */
    if (!conf->capacity || ex >= CC_MAX_ELEMENTS / conf->capacity)
        return CC_ERR_INVALID_CAPACITY;

    CC_PQueue *pq = conf->mem_calloc(1, sizeof(CC_PQueue));

    if (!pq)
        return CC_ERR_ALLOC;

    printf("malloc size is :%lu", conf->capacity * sizeof(void*));
    void **buff = conf->mem_alloc(conf->capacity * sizeof(void*));

    if (!buff) {
        conf->mem_free(pq);
        return CC_ERR_ALLOC;
    }

    pq->mem_alloc  = conf->mem_alloc;
    pq->mem_calloc = conf->mem_calloc;
    pq->mem_free   = conf->mem_free;
    pq->cmp        = conf->cmp;
    pq->buffer     = buff;
    pq->exp_factor = ex;
    pq->capacity   = conf->capacity;
    printf("cc_pqueue_new_conf: capacity: %d\n", (int)pq->capacity);

    *out = pq;
    return CC_OK;
}

/**
 * Destroys the specified CC_PQueue structure, while leaving the data it holds
 * intact.
 *
 * @param[in] pq the CC_PQueue to be destroyed
 */
void cc_pqueue_destroy(CC_PQueue *pq)
{
    pq->mem_free(pq->buffer);
    pq->mem_free(pq);
}

/**
 * Destroys the specified priority queue structure along with all the data it holds.
 *
 * @note This function should not be called on a CC_PQueue that has some of its
 * elements allocated on the Stack (stack memory of function calls).
 *
 * @param[in] pq the Priority Queue to be destroyed
 */
void cc_pqueue_destroy_cb(CC_PQueue *pq, void (*cb) (void*))
{
    size_t i;
    for (i = 0; i < pq->size; i++)
        cb(pq->buffer[i]);

    cc_pqueue_destroy(pq);
}

/**
 * Expands the Pqueue capacity. This might fail if the the new buffer
 * cannot be allocated. In case the expansion would overflow the index
 * range, a maximum capacity buffer is allocated instead. If the capacity
 * is already at the maximum capacity, no new buffer is allocated.
 *
 * @param[in] pq pqueue whose capacity is being expanded
 *
 * @return CC_OK if the buffer was expanded successfully, CC_ERR_ALLOC if
 * the memory allocation for the new buffer failed, or CC_ERR_MAX_CAPACITY
 * if the pqueue is already at maximum capacity.
 */
static enum cc_stat expand_capacity(CC_PQueue *pq)
{
    if (pq->capacity == CC_MAX_ELEMENTS)
        return CC_ERR_MAX_CAPACITY;

    size_t new_capacity = pq->capacity * pq->exp_factor;

    /* As long as the capacity is greater that the expansion factor
     * at the point of overflow, this is check is valid. */
    if (new_capacity <= pq->capacity)
        pq->capacity = CC_MAX_ELEMENTS;
    else
        pq->capacity = new_capacity;

    void **new_buff = pq->mem_alloc(new_capacity * sizeof(void*));

    if (!new_buff)
        return CC_ERR_ALLOC;

    memcpy(new_buff, pq->buffer, pq->size * sizeof(void*));

    pq->mem_free(pq->buffer);
    pq->buffer = new_buff;

    return CC_OK;
}

/**
 * Pushes the element in the pqueue
 *
 * @param[in] pq the priority queue in which the element is to be pushed
 * @param[in] element the element which is needed to be pushed
 *
 * @return CC_OK if the element was successfully pushed, or CC_ERR_ALLOC
 * if the memory allocation for the new element failed.
 */
enum cc_stat cc_pqueue_push(CC_PQueue *pq, void *element)
{
    size_t i = pq->size;

    printf("pq size is: %d, capacity is: %d\n", (int)i, (int)(pq->capacity));
    if (i >= pq->capacity) {
        enum cc_stat status = expand_capacity(pq);
        if (status != CC_OK)
            return status;
    }

    pq->buffer[i] = element;
    pq->size++;

    if (i == 0)
        return CC_OK;

    void *child  = pq->buffer[i];
    void *parent = pq->buffer[CC_PARENT(i)];

    while (i != 0 && pq->cmp(child, parent) > 0) {
        void *tmp = pq->buffer[i];
        pq->buffer[i] = pq->buffer[CC_PARENT(i)];
        pq->buffer[CC_PARENT(i)] = tmp;

        i      = CC_PARENT(i);
        child  = pq->buffer[i];
        printf("[%lu]before parent, buffer is %d, index is %lu, after index: %d\n", sizeof(void*), (int)(pq->buffer), CC_PARENT(i), (int)((pq->buffer) + CC_PARENT(i)) );
        parent = pq->buffer[CC_PARENT(i)]; // parent = 0x51
        // printf("DEBUG: parent=%d\n", *(int *)parent);
        printf("DEBUG: %d\n", (int)parent);
    }
    return CC_OK;
}

/**
 * Gets the most prioritized element from the queue without popping it
 * @param[in] pqueue the CC_PQueue structure of which the top element is needed
 * @param[out] out pointer where the element is stored
 *
 * @return CC_OK if the element was found, or CC_ERR_VALUE_NOT_FOUND if the
 * CC_PQueue is empty.
 */
enum cc_stat cc_pqueue_top(CC_PQueue *pq, void **out)
{
    if (pq->size == 0)
        return CC_ERR_OUT_OF_RANGE;

    *out = pq->buffer[0];
    return CC_OK;
}

/**
 * Removes the most prioritized element from the CC_PQueue
 * @param[in] pq the CC_PQueue structure whose element is needed to be popped
 * @param[out] out the pointer where the removed element will be stored
 *
 * return CC_OK if the element was popped successfully, or CC_ERR_OUT_OF_RANGE
 * if pqueue was empty
 */
enum cc_stat cc_pqueue_pop(CC_PQueue *pq, void **out)
{
    if (pq->size == 0)
        return CC_ERR_OUT_OF_RANGE;

    void *tmp = pq->buffer[0];
    pq->buffer[0] = pq->buffer[pq->size - 1];
    pq->buffer[pq->size - 1] = tmp;

    tmp = pq->buffer[pq->size - 1];
    pq->size--;

    cc_pqueue_heapify(pq, 0);

    if (out)
        *out = tmp;

    return CC_OK;
}

/**
 * Maintains the heap property of the CC_PQueue
 *
 * @param[in] pq the CC_PQueue structure whose heap property is to be maintained
 * @param[in] index the index from where we need to apply this operation
 */
static void cc_pqueue_heapify(CC_PQueue *pq, size_t index)
{
    if (pq->size <= 1)
        return;

    size_t L   = CC_LEFT(index);
    size_t R   = CC_RIGHT(index);
    size_t tmp = index;

    void *left     = pq->buffer[L];
    void *right    = pq->buffer[R];
    void *indexPtr = pq->buffer[index];

    if (L < pq->size && pq->cmp(indexPtr, left) < 0) {
        indexPtr = left;
        index = L;
    }

    if (R < pq->size && pq->cmp(indexPtr, right) < 0) {
        indexPtr = right;
        index = R;
    }

    if (index != tmp) {
        void *swap_tmp = pq->buffer[tmp];
        pq->buffer[tmp] = pq->buffer[index];
        pq->buffer[index] = swap_tmp;

        cc_pqueue_heapify(pq, index);
    }
}

static int cmp(const void *a, const void *b)
{
    return *((int *)a) - *((int *)b);
}

int main(int argc, char **argv) {
    // Create a new array
    CC_PQueue *pq;

    cc_pqueue_new(&pq, cmp);

    int e = 1001, f = 1000;
    scanf("%d", &e);
    scanf("%d", &f);
    printf("e is %d\n", e);
    printf("f is %d\n", f);

    printf("before pushed 1, capacity: %d", (int)(pq->capacity));
    cc_pqueue_push(pq, (void *) &e);
    puts("after pushed 1");
    cc_pqueue_push(pq, (void *) &f);
    puts("after push 2");

    cc_pqueue_destroy(pq);
    puts("after destroy");

    return 0;
}
