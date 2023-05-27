(module
  (type (;0;) (func (param i32 i32 i32) (result i32)))
  (type (;1;) (func (param i32 i64 i32) (result i64)))
  (type (;2;) (func (param i32 i32)))
  (type (;3;) (func (param i32) (result i32)))
  (type (;4;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;5;) (func (param i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;6;) (func))
  (type (;7;) (func (param i32 i64 i32) (result i32)))
  (type (;8;) (func (param i32 i32) (result i32)))
  (type (;9;) (func (param i32 i64 i32 i32) (result i32)))
  (type (;10;) (func (param i32)))
  (type (;11;) (func (param i32 i32 i32)))
  (type (;12;) (func (param i32 i32 i32 i32)))
  (type (;13;) (func (param i32 i32 i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;14;) (func (result i32)))
  (type (;15;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (type (;16;) (func (param i32) (result i64)))
  (type (;17;) (func (param i32 i32 i32 i32 i32)))
  (type (;18;) (func (param f64 i32) (result f64)))
  (type (;19;) (func (param i32 i64 i64 i64 i64 i32)))
  (type (;20;) (func (param i32 i64 i64 i64 i64)))
  (type (;21;) (func (param i32 i64 i64 i32)))
  (import "env" "overflow$0" (func $overflow$0 (type 2)))
  (import "env" "inet_ntoa" (func $inet_ntoa (type 3)))
  (import "env" "socket" (func $socket (type 0)))
  (import "env" "getaddrinfo" (func $getaddrinfo (type 4)))
  (import "env" "bind" (func $bind (type 0)))
  (import "env" "inet_addr" (func $inet_addr (type 3)))
  (import "env" "sendto" (func $sendto (type 5)))
  (import "env" "gethostbyname" (func $gethostbyname (type 3)))
  (import "env" "res_init" (func $res_init (type 6)))
  (import "wasi_snapshot_preview1" "clock_time_get" (func $__imported_wasi_snapshot_preview1_clock_time_get (type 7)))
  (import "wasi_snapshot_preview1" "fd_close" (func $__imported_wasi_snapshot_preview1_fd_close (type 3)))
  (import "wasi_snapshot_preview1" "fd_fdstat_get" (func $__imported_wasi_snapshot_preview1_fd_fdstat_get (type 8)))
  (import "wasi_snapshot_preview1" "fd_seek" (func $__imported_wasi_snapshot_preview1_fd_seek (type 9)))
  (import "wasi_snapshot_preview1" "fd_write" (func $__imported_wasi_snapshot_preview1_fd_write (type 4)))
  (import "wasi_snapshot_preview1" "poll_oneoff" (func $__imported_wasi_snapshot_preview1_poll_oneoff (type 4)))
  (import "wasi_snapshot_preview1" "proc_exit" (func $__imported_wasi_snapshot_preview1_proc_exit (type 10)))
  (import "wasi_snapshot_preview1" "sock_recv" (func $__imported_wasi_snapshot_preview1_sock_recv (type 5)))
  (func $_start (type 6)
    (local i32)
    block  ;; label = @1
      call $__original_main
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      call $exit
      unreachable
    end)
  (func $strnrcasecmp (type 0) (param i32 i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 0
    i32.store offset=24
    local.get 3
    local.get 1
    i32.store offset=20
    local.get 3
    local.get 2
    i32.store offset=16
    local.get 3
    local.get 3
    i32.load offset=20
    call $strlen
    i32.store offset=8
    local.get 3
    local.get 3
    i32.load offset=24
    call $strlen
    i32.store offset=4
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.load offset=8
        local.get 3
        i32.load offset=4
        i32.gt_u
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.const -1
        i32.store offset=28
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 3
        i32.load offset=16
        local.get 3
        i32.load offset=8
        i32.gt_u
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.const -1
        i32.store offset=28
        br 1 (;@1;)
      end
      local.get 3
      local.get 3
      i32.load offset=24
      local.get 3
      i32.load offset=4
      i32.add
      i32.const 0
      local.get 3
      i32.load offset=16
      i32.sub
      i32.add
      i32.store offset=12
      local.get 3
      local.get 3
      i32.load offset=12
      local.get 3
      i32.load offset=20
      local.get 3
      i32.load offset=16
      call $strncasecmp
      i32.store offset=28
    end
    local.get 3
    i32.load offset=28
    local.set 2
    local.get 3
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 2)
  (func $getlong (type 3) (param i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    local.get 0
    i32.store offset=12
    local.get 1
    i32.load offset=12
    i32.load8_u
    i32.const 255
    i32.and
    i32.const 24
    i32.shl
    local.get 1
    i32.load offset=12
    i32.load8_u offset=1
    i32.const 255
    i32.and
    i32.const 16
    i32.shl
    i32.add
    local.get 1
    i32.load offset=12
    i32.load8_u offset=2
    i32.const 255
    i32.and
    i32.const 8
    i32.shl
    i32.add
    local.get 1
    i32.load offset=12
    i32.load8_u offset=3
    i32.const 255
    i32.and
    i32.add)
  (func $getshort (type 3) (param i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    local.get 0
    i32.store offset=12
    local.get 1
    i32.load offset=12
    i32.load8_u
    i32.const 255
    i32.and
    i32.const 8
    i32.shl
    local.get 1
    i32.load offset=12
    i32.load8_u offset=1
    i32.const 255
    i32.and
    i32.add
    i32.const 65535
    i32.and)
  (func $getname (type 8) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i32.store offset=24
    local.get 2
    local.get 1
    i32.store offset=20
    local.get 2
    i32.const 0
    i32.store offset=16
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.load offset=20
        i32.load
        i32.load8_u
        i32.const 24
        i32.shl
        i32.const 24
        i32.shr_s
        br_if 0 (;@2;)
        i32.const 10512
        i32.const 4326
        call $overflow$0
        i32.const 10512
        i32.const 4326
        call $strcpy
        drop
        local.get 2
        i32.load offset=20
        local.tee 1
        local.get 1
        i32.load
        i32.const 1
        i32.add
        i32.store
        local.get 2
        i32.const 10512
        i32.store offset=28
        br 1 (;@1;)
      end
      local.get 2
      local.get 2
      i32.load offset=20
      i32.load
      i32.store offset=12
      i32.const 10512
      i32.const 0
      i32.const 1025
      call $memset
      drop
      loop  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.load offset=12
            i32.load8_u
            i32.const 24
            i32.shl
            i32.const 24
            i32.shr_s
            i32.eqz
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 2
              i32.load offset=12
              i32.load8_u
              i32.const 24
              i32.shl
              i32.const 24
              i32.shr_s
              i32.const 192
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              local.get 2
              local.get 2
              i32.load offset=12
              i32.load8_u
              i32.store8 offset=7
              local.get 2
              i32.load offset=12
              local.tee 1
              local.get 1
              i32.load8_u
              i32.const 24
              i32.shl
              i32.const 24
              i32.shr_s
              i32.const 63
              i32.and
              i32.store8
              local.get 2
              local.get 2
              i32.load offset=12
              call $getshort
              i32.const 65535
              i32.and
              i32.store offset=8
              local.get 2
              i32.load offset=12
              local.get 2
              i32.load8_u offset=7
              i32.store8
              local.get 2
              local.get 2
              i32.load offset=24
              i32.load offset=44
              local.get 2
              i32.load offset=8
              i32.add
              i32.store offset=12
              block  ;; label = @6
                local.get 2
                i32.load offset=16
                br_if 0 (;@6;)
                local.get 2
                i32.load offset=20
                local.tee 1
                local.get 1
                i32.load
                i32.const 2
                i32.add
                i32.store
              end
              local.get 2
              i32.const 1
              i32.store offset=16
              br 2 (;@3;)
            end
            i32.const 10512
            i32.const 10512
            call $strlen
            i32.add
            local.get 2
            i32.load offset=12
            local.get 2
            i32.load offset=12
            i32.load8_u
            i32.const 24
            i32.shl
            i32.const 24
            i32.shr_s
            i32.const 1
            i32.add
            call $memcpy
            drop
            block  ;; label = @5
              local.get 2
              i32.load offset=16
              br_if 0 (;@5;)
              local.get 2
              i32.load offset=20
              local.tee 1
              local.get 1
              i32.load
              local.get 2
              i32.load offset=12
              i32.load8_u
              i32.const 24
              i32.shl
              i32.const 24
              i32.shr_s
              i32.const 1
              i32.add
              i32.add
              i32.store
              block  ;; label = @6
                local.get 2
                i32.load offset=20
                i32.load
                i32.load8_u
                i32.const 24
                i32.shl
                i32.const 24
                i32.shr_s
                br_if 0 (;@6;)
                local.get 2
                i32.load offset=20
                local.tee 1
                local.get 1
                i32.load
                i32.const 1
                i32.add
                i32.store
              end
            end
            local.get 2
            local.get 2
            i32.load offset=12
            local.get 2
            i32.load offset=12
            i32.load8_u
            i32.const 24
            i32.shl
            i32.const 24
            i32.shr_s
            i32.const 1
            i32.add
            i32.add
            i32.store offset=12
            br 1 (;@3;)
          end
          local.get 2
          i32.const 10512
          i32.store offset=28
          br 2 (;@1;)
        end
        br 0 (;@2;)
      end
    end
    local.get 2
    i32.load offset=28
    local.set 1
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $extract_rr (type 0) (param i32 i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 0
    i32.store offset=28
    local.get 3
    local.get 1
    i32.store offset=24
    local.get 3
    local.get 2
    i32.store offset=20
    local.get 3
    i32.const 1
    i32.const 32
    call $calloc
    i32.store offset=16
    local.get 3
    i32.load offset=16
    local.get 3
    i32.load offset=20
    i32.load
    i32.store offset=28
    local.get 3
    local.get 3
    i32.load offset=28
    local.get 3
    i32.const 24
    i32.add
    call $getname
    i32.store offset=12
    local.get 3
    i32.load offset=12
    call $strdup
    local.set 2
    local.get 3
    i32.load offset=16
    local.get 2
    i32.store
    local.get 3
    i32.load offset=12
    i32.const 1
    call $printablename
    call $strdup
    local.set 2
    local.get 3
    i32.load offset=16
    local.get 2
    i32.store offset=4
    local.get 3
    i32.load offset=24
    call $getshort
    local.set 2
    local.get 3
    i32.load offset=16
    local.get 2
    i32.store16 offset=8
    local.get 3
    i32.load offset=24
    i32.const 2
    i32.add
    call $getshort
    local.set 2
    local.get 3
    i32.load offset=16
    local.get 2
    i32.store16 offset=10
    local.get 3
    i32.load offset=24
    i32.const 4
    i32.add
    call $getlong
    local.set 2
    local.get 3
    i32.load offset=16
    local.get 2
    i32.store offset=12
    local.get 3
    i32.load offset=24
    i32.const 8
    i32.add
    call $getshort
    local.set 2
    local.get 3
    i32.load offset=16
    local.get 2
    i32.store16 offset=16
    i32.const 1
    local.get 3
    i32.load offset=16
    i32.load16_u offset=16
    i32.const 65535
    i32.and
    call $calloc
    local.set 2
    local.get 3
    i32.load offset=16
    local.get 2
    i32.store offset=20
    local.get 3
    i32.load offset=16
    i32.load offset=20
    local.get 3
    i32.load offset=24
    i32.const 10
    i32.add
    local.get 3
    i32.load offset=16
    i32.load16_u offset=16
    i32.const 65535
    i32.and
    call $memcpy
    drop
    local.get 3
    local.get 3
    i32.load offset=24
    i32.const 10
    i32.add
    i32.store offset=8
    local.get 3
    i32.load offset=16
    i32.load16_u offset=8
    i32.const 65535
    i32.and
    local.get 3
    i32.load offset=28
    local.get 3
    i32.load offset=8
    i32.const 1
    call $get_resource
    call $strdup
    local.set 2
    local.get 3
    i32.load offset=16
    local.get 2
    i32.store offset=24
    local.get 3
    local.get 3
    i32.load offset=24
    local.get 3
    i32.load offset=16
    i32.load16_u offset=16
    i32.const 65535
    i32.and
    i32.const 10
    i32.add
    i32.add
    i32.store offset=24
    local.get 3
    i32.load offset=20
    local.get 3
    i32.load offset=16
    i32.store
    local.get 3
    i32.load offset=24
    local.set 2
    local.get 3
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 2)
  (func $printablename (type 8) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i32.store offset=40
    local.get 2
    local.get 1
    i32.store offset=36
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.load offset=40
          i32.const 0
          i32.eq
          i32.const 1
          i32.and
          br_if 0 (;@3;)
          local.get 2
          i32.load offset=40
          i32.load8_u
          i32.const 24
          i32.shl
          i32.const 24
          i32.shr_s
          br_if 1 (;@2;)
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.load offset=36
            br_if 0 (;@4;)
            i32.const 11552
            i32.const 1261
            call $overflow$0
            i32.const 11552
            i32.const 1261
            call $strcpy
            drop
            br 1 (;@3;)
          end
          i32.const 11552
          i32.const 4327
          call $overflow$0
          i32.const 11552
          i32.const 4327
          call $strcpy
          drop
        end
        local.get 2
        i32.const 11552
        i32.store offset=44
        br 1 (;@1;)
      end
      i32.const 0
      i32.const 0
      i32.store8 offset=11552
      local.get 2
      local.get 2
      i32.load offset=40
      i32.store offset=32
      block  ;; label = @2
        loop  ;; label = @3
          local.get 2
          i32.load offset=32
          i32.load8_u
          i32.const 24
          i32.shl
          i32.const 24
          i32.shr_s
          i32.eqz
          br_if 1 (;@2;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.load offset=36
              br_if 0 (;@5;)
              i32.const 11552
              call $strlen
              local.set 1
              local.get 2
              local.get 2
              i32.load offset=32
              i32.load8_u
              i32.const 24
              i32.shl
              i32.const 24
              i32.shr_s
              i32.store offset=16
              local.get 1
              i32.const 11552
              i32.add
              i32.const 4361
              local.get 2
              i32.const 16
              i32.add
              call $sprintf
              drop
              br 1 (;@4;)
            end
            i32.const 11552
            i32.const 4327
            call $strcat
            drop
          end
          local.get 2
          local.get 2
          i32.load offset=32
          local.get 2
          i32.load offset=32
          i32.load8_u
          i32.const 24
          i32.shl
          i32.const 24
          i32.shr_s
          i32.const 1
          i32.add
          i32.add
          i32.load8_u
          i32.store8 offset=31
          local.get 2
          i32.load offset=32
          local.get 2
          i32.load offset=32
          i32.load8_u
          i32.const 24
          i32.shl
          i32.const 24
          i32.shr_s
          i32.const 1
          i32.add
          i32.add
          i32.const 0
          i32.store8
          i32.const 11552
          call $strlen
          local.set 1
          local.get 2
          local.get 2
          i32.load offset=32
          i32.const 1
          i32.add
          i32.store
          local.get 1
          i32.const 11552
          i32.add
          i32.const 1365
          local.get 2
          call $sprintf
          drop
          local.get 2
          local.get 2
          i32.load offset=32
          local.get 2
          i32.load offset=32
          i32.load8_u
          i32.const 24
          i32.shl
          i32.const 24
          i32.shr_s
          i32.add
          i32.const 1
          i32.add
          i32.store offset=32
          local.get 2
          i32.load offset=32
          local.get 2
          i32.load8_u offset=31
          i32.store8
          br 0 (;@3;)
        end
      end
      block  ;; label = @2
        local.get 2
        i32.load offset=36
        br_if 0 (;@2;)
        local.get 2
        i32.const 11552
        i32.store offset=44
        br 1 (;@1;)
      end
      local.get 2
      i32.const 11552
      i32.const 1
      i32.add
      i32.store offset=44
    end
    local.get 2
    i32.load offset=44
    local.set 1
    local.get 2
    i32.const 48
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $get_resource (type 4) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 2208
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    local.get 0
    i32.store offset=2200
    local.get 4
    local.get 1
    i32.store offset=2196
    local.get 4
    local.get 2
    i32.store offset=2192
    local.get 4
    local.get 3
    i32.store offset=2188
    local.get 4
    i32.load offset=2200
    i32.const -1
    i32.add
    local.tee 3
    i32.const 27
    i32.gt_u
    drop
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 3
                          br_table 0 (;@11;) 6 (;@5;) 9 (;@2;) 9 (;@2;) 2 (;@9;) 8 (;@3;) 9 (;@2;) 9 (;@2;) 9 (;@2;) 9 (;@2;) 9 (;@2;) 7 (;@4;) 5 (;@6;) 9 (;@2;) 4 (;@7;) 3 (;@8;) 9 (;@2;) 9 (;@2;) 9 (;@2;) 9 (;@2;) 9 (;@2;) 9 (;@2;) 9 (;@2;) 9 (;@2;) 9 (;@2;) 9 (;@2;) 9 (;@2;) 1 (;@10;) 9 (;@2;)
                        end
                        local.get 4
                        i32.load offset=2192
                        i32.load8_u
                        local.set 3
                        local.get 4
                        i32.load offset=2192
                        i32.load8_u offset=1
                        local.set 2
                        local.get 4
                        i32.load offset=2192
                        i32.load8_u offset=2
                        local.set 1
                        local.get 4
                        local.get 4
                        i32.load offset=2192
                        i32.load8_u offset=3
                        i32.const 255
                        i32.and
                        i32.store offset=12
                        local.get 4
                        local.get 1
                        i32.const 255
                        i32.and
                        i32.store offset=8
                        local.get 4
                        local.get 2
                        i32.const 255
                        i32.and
                        i32.store offset=4
                        local.get 4
                        local.get 3
                        i32.const 255
                        i32.and
                        i32.store
                        i32.const 13632
                        i32.const 1240
                        local.get 4
                        call $sprintf
                        drop
                        local.get 4
                        i32.const 13632
                        i32.store offset=2204
                        br 9 (;@1;)
                      end
                      local.get 4
                      i32.load offset=2192
                      i32.load8_u
                      local.set 3
                      local.get 4
                      i32.load offset=2192
                      i32.load8_u offset=1
                      local.set 2
                      local.get 4
                      i32.load offset=2192
                      i32.load8_u offset=2
                      local.set 1
                      local.get 4
                      i32.load offset=2192
                      i32.load8_u offset=3
                      local.set 0
                      local.get 4
                      i32.load offset=2192
                      i32.load8_u offset=4
                      local.set 5
                      local.get 4
                      i32.load offset=2192
                      i32.load8_u offset=5
                      local.set 6
                      local.get 4
                      i32.load offset=2192
                      i32.load8_u offset=6
                      local.set 7
                      local.get 4
                      i32.load offset=2192
                      i32.load8_u offset=7
                      local.set 8
                      local.get 4
                      i32.load offset=2192
                      i32.load8_u offset=8
                      local.set 9
                      local.get 4
                      i32.load offset=2192
                      i32.load8_u offset=9
                      local.set 10
                      local.get 4
                      i32.load offset=2192
                      i32.load8_u offset=10
                      local.set 11
                      local.get 4
                      i32.load offset=2192
                      i32.load8_u offset=11
                      local.set 12
                      local.get 4
                      i32.load offset=2192
                      i32.load8_u offset=12
                      local.set 13
                      local.get 4
                      i32.load offset=2192
                      i32.load8_u offset=13
                      local.set 14
                      local.get 4
                      i32.load offset=2192
                      i32.load8_u offset=14
                      local.set 15
                      local.get 4
                      i32.const 76
                      i32.add
                      local.get 4
                      i32.load offset=2192
                      i32.load8_u offset=15
                      i32.const 255
                      i32.and
                      i32.store
                      local.get 4
                      i32.const 72
                      i32.add
                      local.get 15
                      i32.const 255
                      i32.and
                      i32.store
                      local.get 4
                      i32.const 68
                      i32.add
                      local.get 14
                      i32.const 255
                      i32.and
                      i32.store
                      local.get 4
                      i32.const 64
                      i32.add
                      local.get 13
                      i32.const 255
                      i32.and
                      i32.store
                      local.get 4
                      i32.const 60
                      i32.add
                      local.get 12
                      i32.const 255
                      i32.and
                      i32.store
                      local.get 4
                      i32.const 56
                      i32.add
                      local.get 11
                      i32.const 255
                      i32.and
                      i32.store
                      local.get 4
                      i32.const 52
                      i32.add
                      local.get 10
                      i32.const 255
                      i32.and
                      i32.store
                      local.get 4
                      i32.const 48
                      i32.add
                      local.get 9
                      i32.const 255
                      i32.and
                      i32.store
                      local.get 4
                      i32.const 44
                      i32.add
                      local.get 8
                      i32.const 255
                      i32.and
                      i32.store
                      local.get 4
                      i32.const 40
                      i32.add
                      local.get 7
                      i32.const 255
                      i32.and
                      i32.store
                      local.get 4
                      i32.const 36
                      i32.add
                      local.get 6
                      i32.const 255
                      i32.and
                      i32.store
                      local.get 4
                      i32.const 32
                      i32.add
                      local.get 5
                      i32.const 255
                      i32.and
                      i32.store
                      local.get 4
                      local.get 0
                      i32.const 255
                      i32.and
                      i32.store offset=28
                      local.get 4
                      local.get 1
                      i32.const 255
                      i32.and
                      i32.store offset=24
                      local.get 4
                      local.get 2
                      i32.const 255
                      i32.and
                      i32.store offset=20
                      local.get 4
                      local.get 3
                      i32.const 255
                      i32.and
                      i32.store offset=16
                      i32.const 13632
                      i32.const 1116
                      local.get 4
                      i32.const 16
                      i32.add
                      call $sprintf
                      drop
                      local.get 4
                      i32.const 13632
                      i32.store offset=2204
                      br 8 (;@1;)
                    end
                    i32.const 13632
                    local.get 4
                    i32.load offset=2196
                    local.get 4
                    i32.const 2192
                    i32.add
                    call $getname
                    local.get 4
                    i32.load offset=2188
                    call $printablename
                    local.tee 3
                    call $overflow$0
                    i32.const 13632
                    local.get 3
                    call $strcpy
                    drop
                    local.get 4
                    i32.const 13632
                    i32.store offset=2204
                    br 7 (;@1;)
                  end
                  i32.const 13632
                  local.get 4
                  i32.load offset=2196
                  local.get 4
                  i32.const 2192
                  i32.add
                  call $getname
                  local.get 4
                  i32.load offset=2188
                  call $printablename
                  local.tee 3
                  call $overflow$0
                  i32.const 13632
                  local.get 3
                  call $strcpy
                  drop
                  local.get 4
                  i32.const 13632
                  i32.store offset=2204
                  br 6 (;@1;)
                end
                local.get 4
                local.get 4
                i32.load offset=2192
                call $getshort
                i32.store16 offset=2186
                local.get 4
                local.get 4
                i32.load offset=2192
                i32.const 2
                i32.add
                i32.store offset=2192
                local.get 4
                i32.load16_u offset=2186
                local.set 3
                local.get 4
                local.get 4
                i32.load offset=2196
                local.get 4
                i32.const 2192
                i32.add
                call $getname
                local.get 4
                i32.load offset=2188
                call $printablename
                i32.store offset=84
                local.get 4
                local.get 3
                i32.const 65535
                i32.and
                i32.store offset=80
                i32.const 13632
                i32.const 1329
                local.get 4
                i32.const 80
                i32.add
                call $sprintf
                drop
                local.get 4
                i32.const 13632
                i32.store offset=2204
                br 5 (;@1;)
              end
              i32.const 13632
              local.get 4
              i32.load offset=2196
              local.get 4
              i32.const 2192
              i32.add
              call $getname
              local.get 4
              i32.load offset=2188
              call $printablename
              local.tee 3
              call $overflow$0
              i32.const 13632
              local.get 3
              call $strcpy
              drop
              local.get 4
              i32.const 13632
              i32.store offset=2204
              br 4 (;@1;)
            end
            i32.const 13632
            local.get 4
            i32.load offset=2196
            local.get 4
            i32.const 2192
            i32.add
            call $getname
            local.get 4
            i32.load offset=2188
            call $printablename
            local.tee 3
            call $overflow$0
            i32.const 13632
            local.get 3
            call $strcpy
            drop
            local.get 4
            i32.const 13632
            i32.store offset=2204
            br 3 (;@1;)
          end
          i32.const 13632
          local.get 4
          i32.load offset=2196
          local.get 4
          i32.const 2192
          i32.add
          call $getname
          local.get 4
          i32.load offset=2188
          call $printablename
          local.tee 3
          call $overflow$0
          i32.const 13632
          local.get 3
          call $strcpy
          drop
          local.get 4
          i32.const 13632
          i32.store offset=2204
          br 2 (;@1;)
        end
        local.get 4
        i32.const 1152
        i32.add
        local.tee 3
        local.get 4
        i32.load offset=2196
        local.get 4
        i32.const 2192
        i32.add
        call $getname
        local.get 4
        i32.load offset=2188
        call $printablename
        local.tee 2
        call $overflow$0
        local.get 3
        local.get 2
        call $strcpy
        drop
        local.get 4
        i32.const 112
        i32.add
        local.tee 3
        local.get 4
        i32.load offset=2196
        local.get 4
        i32.const 2192
        i32.add
        call $getname
        local.get 4
        i32.load offset=2188
        call $printablename
        local.tee 2
        call $overflow$0
        local.get 3
        local.get 2
        call $strcpy
        drop
        local.get 4
        local.get 4
        i32.load offset=2192
        call $getlong
        i32.store offset=108
        local.get 4
        i32.load offset=108
        local.set 3
        local.get 4
        local.get 4
        i32.const 112
        i32.add
        i32.store offset=104
        local.get 4
        local.get 4
        i32.const 1152
        i32.add
        i32.store offset=100
        local.get 4
        local.get 3
        i32.store offset=96
        i32.const 14672
        i32.const 1336
        local.get 4
        i32.const 96
        i32.add
        call $sprintf
        drop
        local.get 4
        i32.const 14672
        i32.store offset=2204
        br 1 (;@1;)
      end
      local.get 4
      i32.const 1407
      i32.store offset=2204
    end
    local.get 4
    i32.load offset=2204
    local.set 3
    local.get 4
    i32.const 2208
    i32.add
    global.set $__stack_pointer
    local.get 3)
  (func $extract_data (type 10) (param i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=60
    local.get 1
    i32.const 0
    i32.store offset=56
    local.get 1
    i32.const 0
    i32.store offset=52
    local.get 1
    i32.const 0
    i32.store offset=48
    local.get 1
    i32.const 0
    i32.store offset=44
    local.get 1
    i32.const 0
    i32.store offset=40
    local.get 1
    local.get 1
    i32.load offset=60
    i32.load offset=44
    i32.store offset=16
    local.get 1
    i32.load offset=60
    local.get 1
    i32.load offset=16
    i32.store offset=48
    local.get 1
    local.get 1
    i32.load offset=16
    i32.store offset=36
    local.get 1
    i32.const 1
    i32.const 12
    call $calloc
    i32.store offset=56
    local.get 1
    i32.load offset=56
    local.tee 0
    local.get 1
    i32.load offset=60
    i32.load offset=44
    local.tee 2
    i64.load align=1
    i64.store align=1
    local.get 0
    i32.const 8
    i32.add
    local.get 2
    i32.const 8
    i32.add
    i32.load align=1
    i32.store align=1
    local.get 1
    i32.load offset=56
    i32.load16_u
    i32.const 65535
    i32.and
    call $ntohs
    local.set 0
    local.get 1
    i32.load offset=56
    local.get 0
    i32.store16
    local.get 1
    i32.load offset=56
    i32.load16_u offset=2
    i32.const 65535
    i32.and
    call $ntohs
    local.set 0
    local.get 1
    i32.load offset=56
    local.get 0
    i32.store16 offset=2
    local.get 1
    i32.load offset=56
    i32.load16_u offset=4
    i32.const 65535
    i32.and
    call $ntohs
    local.set 0
    local.get 1
    i32.load offset=56
    local.get 0
    i32.store16 offset=4
    local.get 1
    i32.load offset=56
    i32.load16_u offset=6
    i32.const 65535
    i32.and
    call $ntohs
    local.set 0
    local.get 1
    i32.load offset=56
    local.get 0
    i32.store16 offset=6
    local.get 1
    i32.load offset=56
    i32.load16_u offset=8
    i32.const 65535
    i32.and
    call $ntohs
    local.set 0
    local.get 1
    i32.load offset=56
    local.get 0
    i32.store16 offset=8
    local.get 1
    i32.load offset=56
    i32.load16_u offset=10
    i32.const 65535
    i32.and
    call $ntohs
    local.set 0
    local.get 1
    i32.load offset=56
    local.get 0
    i32.store16 offset=10
    local.get 1
    local.get 1
    i32.load offset=16
    i32.const 12
    i32.add
    i32.store offset=16
    local.get 1
    i32.load offset=60
    local.get 1
    i32.load offset=16
    i32.store offset=52
    local.get 1
    local.get 1
    i32.load offset=16
    i32.store offset=32
    local.get 1
    i32.const 1
    i32.const 12
    call $calloc
    i32.store offset=52
    local.get 1
    i32.load offset=60
    local.get 1
    i32.const 32
    i32.add
    call $getname
    call $strdup
    local.set 0
    local.get 1
    i32.load offset=52
    local.get 0
    i32.store offset=4
    local.get 1
    i32.load offset=32
    call $getshort
    local.set 0
    local.get 1
    i32.load offset=52
    local.get 0
    i32.store16 offset=8
    local.get 1
    i32.load offset=32
    i32.const 2
    i32.add
    call $getshort
    local.set 0
    local.get 1
    i32.load offset=52
    local.get 0
    i32.store16 offset=10
    local.get 1
    local.get 1
    i32.load offset=32
    i32.const 4
    i32.add
    i32.store offset=16
    local.get 1
    i32.load offset=60
    local.get 1
    i32.load offset=16
    i32.store offset=56
    local.get 1
    i32.const 0
    i32.store offset=12
    block  ;; label = @1
      loop  ;; label = @2
        local.get 1
        i32.load offset=12
        local.get 1
        i32.load offset=56
        i32.load16_u offset=6
        i32.const 65535
        i32.and
        i32.lt_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        local.get 1
        i32.load offset=16
        i32.store offset=28
        local.get 1
        local.get 1
        i32.load offset=60
        local.get 1
        i32.load offset=28
        local.get 1
        i32.const 48
        i32.add
        call $extract_rr
        i32.store offset=16
        local.get 1
        local.get 1
        i32.load offset=12
        i32.const 1
        i32.add
        i32.store offset=12
        br 0 (;@2;)
      end
    end
    local.get 1
    i32.load offset=60
    local.get 1
    i32.load offset=16
    i32.store offset=60
    local.get 1
    i32.const 0
    i32.store offset=12
    block  ;; label = @1
      loop  ;; label = @2
        local.get 1
        i32.load offset=12
        local.get 1
        i32.load offset=56
        i32.load16_u offset=8
        i32.const 65535
        i32.and
        i32.lt_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        local.get 1
        i32.load offset=16
        i32.store offset=24
        local.get 1
        local.get 1
        i32.load offset=60
        local.get 1
        i32.load offset=24
        local.get 1
        i32.const 44
        i32.add
        call $extract_rr
        i32.store offset=16
        local.get 1
        local.get 1
        i32.load offset=12
        i32.const 1
        i32.add
        i32.store offset=12
        br 0 (;@2;)
      end
    end
    local.get 1
    i32.load offset=60
    local.get 1
    i32.load offset=16
    i32.store offset=64
    local.get 1
    i32.const 0
    i32.store offset=12
    block  ;; label = @1
      loop  ;; label = @2
        local.get 1
        i32.load offset=12
        local.get 1
        i32.load offset=56
        i32.load16_u offset=10
        i32.const 65535
        i32.and
        i32.lt_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        local.get 1
        i32.load offset=16
        i32.store offset=20
        local.get 1
        local.get 1
        i32.load offset=60
        local.get 1
        i32.load offset=20
        local.get 1
        i32.const 40
        i32.add
        call $extract_rr
        i32.store offset=16
        local.get 1
        local.get 1
        i32.load offset=12
        i32.const 1
        i32.add
        i32.store offset=12
        br 0 (;@2;)
      end
    end
    local.get 1
    i32.load offset=60
    local.get 1
    i32.load offset=56
    i32.store offset=8
    local.get 1
    i32.load offset=60
    local.get 1
    i32.load offset=52
    i32.store offset=12
    local.get 1
    i32.load offset=60
    local.get 1
    i32.load offset=48
    i32.store offset=16
    local.get 1
    i32.load offset=60
    local.get 1
    i32.load offset=40
    i32.store offset=24
    local.get 1
    i32.load offset=60
    local.get 1
    i32.load offset=44
    i32.store offset=20
    local.get 1
    i32.const 64
    i32.add
    global.set $__stack_pointer)
  (func $get_class (type 3) (param i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    local.get 0
    i32.store offset=8
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 1
                  i32.load offset=8
                  local.tee 0
                  i32.const 1
                  i32.eq
                  br_if 0 (;@7;)
                  local.get 0
                  i32.const 3
                  i32.eq
                  br_if 1 (;@6;)
                  local.get 0
                  i32.const 4
                  i32.eq
                  br_if 2 (;@5;)
                  local.get 0
                  i32.const 254
                  i32.eq
                  br_if 3 (;@4;)
                  local.get 0
                  i32.const 255
                  i32.eq
                  br_if 4 (;@3;)
                  br 5 (;@2;)
                end
                local.get 1
                i32.const 1269
                i32.store offset=12
                br 5 (;@1;)
              end
              local.get 1
              i32.const 1278
              i32.store offset=12
              br 4 (;@1;)
            end
            local.get 1
            i32.const 1660
            i32.store offset=12
            br 3 (;@1;)
          end
          local.get 1
          i32.const 1531
          i32.store offset=12
          br 2 (;@1;)
        end
        local.get 1
        i32.const 1651
        i32.store offset=12
        br 1 (;@1;)
      end
      local.get 1
      i32.const 1407
      i32.store offset=12
    end
    local.get 1
    i32.load offset=12)
  (func $get_type (type 3) (param i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    local.get 0
    i32.store offset=8
    local.get 1
    i32.load offset=8
    i32.const -1
    i32.add
    local.tee 0
    i32.const 11
    i32.gt_u
    drop
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  br_table 0 (;@7;) 1 (;@6;) 5 (;@2;) 5 (;@2;) 2 (;@5;) 3 (;@4;) 5 (;@2;) 5 (;@2;) 5 (;@2;) 5 (;@2;) 5 (;@2;) 4 (;@3;) 5 (;@2;)
                end
                local.get 1
                i32.const 3344
                i32.store offset=12
                br 5 (;@1;)
              end
              local.get 1
              i32.const 2120
              i32.store offset=12
              br 4 (;@1;)
            end
            local.get 1
            i32.const 2135
            i32.store offset=12
            br 3 (;@1;)
          end
          local.get 1
          i32.const 2141
          i32.store offset=12
          br 2 (;@1;)
        end
        local.get 1
        i32.const 2123
        i32.store offset=12
        br 1 (;@1;)
      end
      local.get 1
      i32.const 1407
      i32.store offset=12
    end
    local.get 1
    i32.load offset=12)
  (func $get_ttl (type 3) (param i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=76
    i32.const 0
    i32.const 0
    i32.store8 offset=12592
    block  ;; label = @1
      local.get 1
      i32.load offset=76
      i32.const 604800
      i32.gt_s
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      local.get 1
      i32.load offset=76
      i32.const 604800
      i32.div_s
      i32.store offset=64
      i32.const 12592
      i32.const 1217
      local.get 1
      i32.const 64
      i32.add
      call $sprintf
      drop
      local.get 1
      local.get 1
      i32.load offset=76
      i32.const 604800
      i32.rem_s
      i32.store offset=76
    end
    block  ;; label = @1
      local.get 1
      i32.load offset=76
      i32.const 86400
      i32.gt_s
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      i32.const 12592
      call $strlen
      local.set 0
      local.get 1
      local.get 1
      i32.load offset=76
      i32.const 86400
      i32.div_s
      i32.store offset=48
      local.get 0
      i32.const 12592
      i32.add
      i32.const 1725
      local.get 1
      i32.const 48
      i32.add
      call $sprintf
      drop
      local.get 1
      local.get 1
      i32.load offset=76
      i32.const 86400
      i32.rem_s
      i32.store offset=76
    end
    block  ;; label = @1
      local.get 1
      i32.load offset=76
      i32.const 3600
      i32.gt_s
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      i32.const 12592
      call $strlen
      local.set 0
      local.get 1
      local.get 1
      i32.load offset=76
      i32.const 3600
      i32.div_s
      i32.store offset=32
      local.get 0
      i32.const 12592
      i32.add
      i32.const 1433
      local.get 1
      i32.const 32
      i32.add
      call $sprintf
      drop
      local.get 1
      local.get 1
      i32.load offset=76
      i32.const 3600
      i32.rem_s
      i32.store offset=76
    end
    block  ;; label = @1
      local.get 1
      i32.load offset=76
      i32.const 60
      i32.gt_s
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      i32.const 12592
      call $strlen
      local.set 0
      local.get 1
      local.get 1
      i32.load offset=76
      i32.const 60
      i32.div_s
      i32.store offset=16
      local.get 0
      i32.const 12592
      i32.add
      i32.const 1429
      local.get 1
      i32.const 16
      i32.add
      call $sprintf
      drop
      local.get 1
      local.get 1
      i32.load offset=76
      i32.const 60
      i32.rem_s
      i32.store offset=76
    end
    block  ;; label = @1
      local.get 1
      i32.load offset=76
      i32.const 0
      i32.gt_s
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      i32.const 12592
      call $strlen
      local.set 0
      local.get 1
      local.get 1
      i32.load offset=76
      i32.store
      local.get 0
      i32.const 12592
      i32.add
      i32.const 1318
      local.get 1
      call $sprintf
      drop
    end
    local.get 1
    i32.const 80
    i32.add
    global.set $__stack_pointer
    i32.const 12592)
  (func $dump_question (type 10) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=44
    local.get 1
    local.get 1
    i32.load offset=44
    i32.load offset=4
    i32.const 0
    call $printablename
    i32.store
    i32.const 5131
    local.get 1
    call $printf
    drop
    local.get 1
    i32.load offset=44
    i32.load16_u offset=8
    local.set 0
    local.get 1
    local.get 1
    i32.load offset=44
    i32.load16_u offset=8
    i32.const 65535
    i32.and
    call $get_type
    i32.store offset=20
    local.get 1
    local.get 0
    i32.const 65535
    i32.and
    i32.store offset=16
    i32.const 6287
    local.get 1
    i32.const 16
    i32.add
    call $printf
    drop
    local.get 1
    i32.load offset=44
    i32.load16_u offset=10
    local.set 0
    local.get 1
    local.get 1
    i32.load offset=44
    i32.load16_u offset=10
    i32.const 65535
    i32.and
    call $get_class
    i32.store offset=36
    local.get 1
    local.get 0
    i32.const 65535
    i32.and
    i32.store offset=32
    i32.const 6253
    local.get 1
    i32.const 32
    i32.add
    call $printf
    drop
    local.get 1
    i32.const 48
    i32.add
    global.set $__stack_pointer)
  (func $dump_header (type 10) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 128
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=124
    local.get 1
    local.get 1
    i32.load offset=124
    i32.load16_u
    i32.store offset=112
    i32.const 5171
    local.get 1
    i32.const 112
    i32.add
    call $printf
    drop
    local.get 1
    local.get 1
    i32.load offset=124
    i32.load16_u offset=2
    i32.store offset=96
    i32.const 4366
    local.get 1
    i32.const 96
    i32.add
    call $printf
    drop
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.load offset=124
        i32.load16_u offset=2
        i32.const 15
        i32.shr_u
        i32.const 255
        i32.and
        i32.const 0
        i32.const 255
        i32.and
        i32.ne
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        i32.const 4566
        i32.const 0
        call $printf
        drop
        br 1 (;@1;)
      end
      i32.const 4569
      i32.const 0
      call $printf
      drop
    end
    block  ;; label = @1
      local.get 1
      i32.load offset=124
      i32.load16_u offset=2
      i32.const 10
      i32.shr_u
      i32.const 1
      i32.and
      i32.const 255
      i32.and
      i32.const 0
      i32.const 255
      i32.and
      i32.ne
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      i32.const 4584
      i32.const 0
      call $printf
      drop
    end
    block  ;; label = @1
      local.get 1
      i32.load offset=124
      i32.load16_u offset=2
      i32.const 9
      i32.shr_u
      i32.const 1
      i32.and
      i32.const 255
      i32.and
      i32.const 0
      i32.const 255
      i32.and
      i32.ne
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      i32.const 4576
      i32.const 0
      call $printf
      drop
    end
    block  ;; label = @1
      local.get 1
      i32.load offset=124
      i32.const 3
      i32.add
      i32.load8_u
      i32.const 1
      i32.and
      i32.const 255
      i32.and
      i32.const 0
      i32.const 255
      i32.and
      i32.ne
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      i32.const 4572
      i32.const 0
      call $printf
      drop
    end
    block  ;; label = @1
      local.get 1
      i32.load offset=124
      i32.load16_u offset=2
      i32.const 7
      i32.shr_u
      i32.const 1
      i32.and
      i32.const 255
      i32.and
      i32.const 0
      i32.const 255
      i32.and
      i32.ne
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      i32.const 4580
      i32.const 0
      call $printf
      drop
    end
    i32.const 6624
    i32.const 0
    call $printf
    drop
    local.get 1
    local.get 1
    i32.load offset=124
    i32.load16_u offset=2
    i32.const 11
    i32.shr_u
    i32.const 15
    i32.and
    i32.store offset=80
    i32.const 4429
    local.get 1
    i32.const 80
    i32.add
    call $printf
    drop
    local.get 1
    i32.load offset=124
    i32.load16_u offset=2
    i32.const 11
    i32.shr_u
    i32.const 15
    i32.and
    local.tee 0
    i32.const 15
    i32.gt_u
    drop
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 0
                      br_table 0 (;@9;) 1 (;@8;) 2 (;@7;) 7 (;@2;) 3 (;@6;) 4 (;@5;) 7 (;@2;) 7 (;@2;) 7 (;@2;) 7 (;@2;) 7 (;@2;) 7 (;@2;) 7 (;@2;) 7 (;@2;) 5 (;@4;) 6 (;@3;) 7 (;@2;)
                    end
                    i32.const 6095
                    i32.const 0
                    call $printf
                    drop
                    br 7 (;@1;)
                  end
                  i32.const 6078
                  i32.const 0
                  call $printf
                  drop
                  br 6 (;@1;)
                end
                i32.const 6184
                i32.const 0
                call $printf
                drop
                br 5 (;@1;)
              end
              i32.const 6113
              i32.const 0
              call $printf
              drop
              br 4 (;@1;)
            end
            i32.const 6484
            i32.const 0
            call $printf
            drop
            br 3 (;@1;)
          end
          i32.const 6209
          i32.const 0
          call $printf
          drop
          br 2 (;@1;)
        end
        i32.const 6453
        i32.const 0
        call $printf
        drop
        br 1 (;@1;)
      end
      i32.const 6396
      i32.const 0
      call $printf
      drop
    end
    local.get 1
    local.get 1
    i32.load offset=124
    i32.load16_u offset=2
    i32.const 15
    i32.and
    i32.store offset=64
    i32.const 4400
    local.get 1
    i32.const 64
    i32.add
    call $printf
    drop
    local.get 1
    i32.load offset=124
    i32.load16_u offset=2
    i32.const 15
    i32.and
    local.tee 0
    i32.const 10
    i32.gt_u
    drop
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 0
                              br_table 0 (;@13;) 1 (;@12;) 2 (;@11;) 3 (;@10;) 4 (;@9;) 5 (;@8;) 6 (;@7;) 7 (;@6;) 8 (;@5;) 9 (;@4;) 10 (;@3;) 11 (;@2;)
                            end
                            i32.const 6370
                            i32.const 0
                            call $printf
                            drop
                            br 11 (;@1;)
                          end
                          i32.const 6354
                          i32.const 0
                          call $printf
                          drop
                          br 10 (;@1;)
                        end
                        i32.const 6494
                        i32.const 0
                        call $printf
                        drop
                        br 9 (;@1;)
                      end
                      i32.const 6382
                      i32.const 0
                      call $printf
                      drop
                      br 8 (;@1;)
                    end
                    i32.const 6549
                    i32.const 0
                    call $printf
                    drop
                    br 7 (;@1;)
                  end
                  i32.const 6568
                  i32.const 0
                  call $printf
                  drop
                  br 6 (;@1;)
                end
                i32.const 6238
                i32.const 0
                call $printf
                drop
                br 5 (;@1;)
              end
              i32.const 6222
              i32.const 0
              call $printf
              drop
              br 4 (;@1;)
            end
            i32.const 6160
            i32.const 0
            call $printf
            drop
            br 3 (;@1;)
          end
          i32.const 6465
          i32.const 0
          call $printf
          drop
          br 2 (;@1;)
        end
        i32.const 6407
        i32.const 0
        call $printf
        drop
        br 1 (;@1;)
      end
      i32.const 6396
      i32.const 0
      call $printf
      drop
    end
    local.get 1
    local.get 1
    i32.load offset=124
    i32.load16_u offset=4
    i32.const 65535
    i32.and
    i32.store
    i32.const 4753
    local.get 1
    call $printf
    drop
    local.get 1
    local.get 1
    i32.load offset=124
    i32.load16_u offset=6
    i32.const 65535
    i32.and
    i32.store offset=16
    i32.const 4782
    local.get 1
    i32.const 16
    i32.add
    call $printf
    drop
    local.get 1
    local.get 1
    i32.load offset=124
    i32.load16_u offset=8
    i32.const 65535
    i32.and
    i32.store offset=32
    i32.const 4724
    local.get 1
    i32.const 32
    i32.add
    call $printf
    drop
    local.get 1
    local.get 1
    i32.load offset=124
    i32.load16_u offset=10
    i32.const 65535
    i32.and
    i32.store offset=48
    i32.const 4695
    local.get 1
    i32.const 48
    i32.add
    call $printf
    drop
    local.get 1
    i32.const 128
    i32.add
    global.set $__stack_pointer)
  (func $dump_rr (type 2) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 96
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i32.store offset=92
    local.get 2
    local.get 1
    i32.store offset=88
    local.get 2
    local.get 2
    i32.load offset=92
    i32.load
    i32.const 0
    call $printablename
    i32.store
    i32.const 5103
    local.get 2
    call $printf
    drop
    local.get 2
    i32.load offset=92
    i32.load16_u offset=8
    local.set 1
    local.get 2
    local.get 2
    i32.load offset=92
    i32.load16_u offset=8
    i32.const 65535
    i32.and
    call $get_type
    i32.store offset=20
    local.get 2
    local.get 1
    i32.const 65535
    i32.and
    i32.store offset=16
    i32.const 6287
    local.get 2
    i32.const 16
    i32.add
    call $printf
    drop
    local.get 2
    i32.load offset=92
    i32.load16_u offset=10
    local.set 1
    local.get 2
    local.get 2
    i32.load offset=92
    i32.load16_u offset=10
    i32.const 65535
    i32.and
    call $get_class
    i32.store offset=36
    local.get 2
    local.get 1
    i32.const 65535
    i32.and
    i32.store offset=32
    i32.const 6253
    local.get 2
    i32.const 32
    i32.add
    call $printf
    drop
    local.get 2
    i32.load offset=92
    i32.load offset=12
    local.set 1
    local.get 2
    local.get 2
    i32.load offset=92
    i32.load offset=12
    call $get_ttl
    i32.store offset=52
    local.get 2
    local.get 1
    i32.store offset=48
    i32.const 6321
    local.get 2
    i32.const 48
    i32.add
    call $printf
    drop
    local.get 2
    local.get 2
    i32.load offset=92
    i32.load16_u offset=16
    i32.const 65535
    i32.and
    i32.store offset=64
    i32.const 4811
    local.get 2
    i32.const 64
    i32.add
    call $printf
    drop
    local.get 2
    local.get 2
    i32.load offset=92
    i32.load16_u offset=8
    i32.const 65535
    i32.and
    local.get 2
    i32.load offset=88
    local.get 2
    i32.load offset=92
    i32.load offset=20
    i32.const 0
    call $get_resource
    i32.store offset=80
    i32.const 5075
    local.get 2
    i32.const 80
    i32.add
    call $printf
    drop
    local.get 2
    i32.const 96
    i32.add
    global.set $__stack_pointer)
  (func $dump_data (type 11) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 0
    i32.store offset=44
    local.get 3
    local.get 1
    i32.store offset=40
    local.get 3
    local.get 2
    i32.store offset=36
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        i32.load offset=10480
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 3
        i32.load offset=44
        i32.const 0
        i32.ne
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        i32.const 5244
        i32.const 0
        call $printf
        drop
        local.get 3
        local.get 3
        i32.load offset=44
        i32.load offset=4
        call $inet_ntoa
        i32.store offset=16
        i32.const 5047
        local.get 3
        i32.const 16
        i32.add
        call $printf
        drop
      end
      block  ;; label = @2
        local.get 3
        i32.load offset=40
        i32.const 0
        i32.ne
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        i32.const 5244
        i32.const 0
        call $printf
        drop
        local.get 3
        i32.const 2097
        i32.store
        i32.const 5047
        local.get 3
        call $printf
        drop
      end
      block  ;; label = @2
        local.get 3
        i32.load offset=36
        i32.load
        i32.const 0
        i32.ne
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.load offset=36
        i32.load offset=8
        i32.const 0
        i32.eq
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        i32.const 6530
        i32.const 0
        call $printf
        drop
        local.get 3
        i32.load offset=36
        i32.load
        call $dump_header
      end
      block  ;; label = @2
        local.get 3
        i32.load offset=36
        i32.load offset=8
        i32.const 0
        i32.ne
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        i32.const 6141
        i32.const 0
        call $printf
        drop
        local.get 3
        i32.load offset=36
        i32.load offset=8
        call $dump_header
      end
      block  ;; label = @2
        local.get 3
        i32.load offset=36
        i32.load offset=4
        i32.const 0
        i32.ne
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.load offset=36
        i32.load offset=12
        i32.const 0
        i32.eq
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        i32.const 6512
        i32.const 0
        call $printf
        drop
        local.get 3
        i32.load offset=36
        i32.load offset=4
        call $dump_question
      end
      block  ;; label = @2
        local.get 3
        i32.load offset=36
        i32.load offset=12
        i32.const 0
        i32.ne
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        i32.const 6123
        i32.const 0
        call $printf
        drop
        local.get 3
        i32.load offset=36
        i32.load offset=12
        call $dump_question
      end
      local.get 3
      local.get 3
      i32.load offset=36
      i32.load offset=16
      i32.store offset=32
      block  ;; label = @2
        loop  ;; label = @3
          local.get 3
          i32.load offset=32
          i32.const 0
          i32.ne
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          i32.const 5218
          i32.const 0
          call $printf
          drop
          local.get 3
          i32.load offset=32
          local.get 3
          i32.load offset=36
          call $dump_rr
          local.get 3
          local.get 3
          i32.load offset=32
          i32.load offset=28
          i32.store offset=32
          br 0 (;@3;)
        end
      end
      local.get 3
      local.get 3
      i32.load offset=36
      i32.load offset=20
      i32.store offset=28
      block  ;; label = @2
        loop  ;; label = @3
          local.get 3
          i32.load offset=28
          i32.const 0
          i32.ne
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          i32.const 5204
          i32.const 0
          call $printf
          drop
          local.get 3
          i32.load offset=28
          local.get 3
          i32.load offset=36
          call $dump_rr
          local.get 3
          local.get 3
          i32.load offset=28
          i32.load offset=28
          i32.store offset=28
          br 0 (;@3;)
        end
      end
      local.get 3
      local.get 3
      i32.load offset=36
      i32.load offset=24
      i32.store offset=24
      block  ;; label = @2
        loop  ;; label = @3
          local.get 3
          i32.load offset=24
          i32.const 0
          i32.ne
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          i32.const 5229
          i32.const 0
          call $printf
          drop
          local.get 3
          i32.load offset=24
          local.get 3
          i32.load offset=36
          call $dump_rr
          local.get 3
          local.get 3
          i32.load offset=24
          i32.load offset=28
          i32.store offset=24
          br 0 (;@3;)
        end
      end
    end
    local.get 3
    i32.const 48
    i32.add
    global.set $__stack_pointer)
  (func $create_packet (type 3) (param i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=44
    local.get 1
    local.get 1
    i32.load offset=44
    i32.load offset=4
    i32.load
    i32.const 12
    i32.add
    i32.const 4
    i32.add
    i32.store offset=4
    local.get 1
    i32.const 1
    local.get 1
    i32.load offset=4
    call $calloc
    i32.store offset=40
    local.get 1
    i32.const 24
    i32.add
    local.tee 0
    local.get 1
    i32.load offset=44
    i32.load
    local.tee 2
    i64.load align=2
    i64.store align=2
    local.get 0
    i32.const 8
    i32.add
    local.get 2
    i32.const 8
    i32.add
    i32.load align=2
    i32.store align=2
    local.get 1
    i32.const 8
    i32.add
    local.tee 0
    local.get 1
    i32.load offset=44
    i32.load offset=4
    local.tee 2
    i64.load align=4
    i64.store align=4
    local.get 0
    i32.const 8
    i32.add
    local.get 2
    i32.const 8
    i32.add
    i32.load
    i32.store
    local.get 1
    local.get 1
    i32.load offset=44
    i32.load
    i32.load16_u
    i32.const 65535
    i32.and
    call $htons
    i32.store16 offset=24
    local.get 1
    local.get 1
    i32.load offset=44
    i32.load
    i32.load16_u offset=2
    i32.const 65535
    i32.and
    call $htons
    i32.store16 offset=26
    local.get 1
    local.get 1
    i32.load offset=44
    i32.load
    i32.load16_u offset=4
    i32.const 65535
    i32.and
    call $htons
    i32.store16 offset=28
    local.get 1
    local.get 1
    i32.load offset=44
    i32.load
    i32.load16_u offset=6
    i32.const 65535
    i32.and
    call $htons
    i32.store16 offset=30
    local.get 1
    local.get 1
    i32.load offset=44
    i32.load
    i32.load16_u offset=8
    i32.const 65535
    i32.and
    call $htons
    i32.store16 offset=32
    local.get 1
    local.get 1
    i32.load offset=44
    i32.load
    i32.load16_u offset=10
    i32.const 65535
    i32.and
    call $htons
    i32.store16 offset=34
    local.get 1
    local.get 1
    i32.load offset=44
    i32.load offset=4
    i32.load16_u offset=8
    i32.const 65535
    i32.and
    call $htons
    i32.store16 offset=16
    local.get 1
    local.get 1
    i32.load offset=44
    i32.load offset=4
    i32.load16_u offset=10
    i32.const 65535
    i32.and
    call $htons
    i32.store16 offset=18
    local.get 1
    i32.load offset=40
    local.tee 0
    local.get 1
    i32.const 24
    i32.add
    local.tee 2
    i64.load align=1
    i64.store align=1
    local.get 0
    i32.const 8
    i32.add
    local.get 2
    i32.const 8
    i32.add
    i32.load align=1
    i32.store align=1
    local.get 1
    i32.load offset=40
    i32.const 12
    i32.add
    local.get 1
    i32.load offset=12
    local.get 1
    i32.load offset=8
    call $memcpy
    drop
    local.get 1
    i32.load offset=40
    i32.const 12
    i32.add
    local.get 1
    i32.load offset=8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    i32.load align=1
    i32.store align=1
    local.get 1
    i32.load offset=40
    local.set 0
    local.get 1
    i32.const 48
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $create_socket (type 3) (param i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=44
    local.get 1
    local.get 1
    i32.load offset=44
    i32.const 5
    i32.const 0
    call $socket
    local.tee 0
    i32.store offset=40
    block  ;; label = @1
      local.get 0
      i32.const 0
      i32.lt_s
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      i32.const 1292
      call $perror
      i32.const 5255
      i32.const 0
      call $printf
      drop
      i32.const 1
      call $exit
      unreachable
    end
    block  ;; label = @1
      i32.const 0
      i32.load offset=10500
      i32.const 0
      i32.ne
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.const 8
      i32.add
      local.tee 0
      i64.const 0
      i64.store align=4
      local.get 0
      i32.const 24
      i32.add
      i64.const 0
      i64.store align=4
      local.get 0
      i32.const 16
      i32.add
      i64.const 0
      i64.store align=4
      local.get 0
      i32.const 8
      i32.add
      i64.const 0
      i64.store align=4
      local.get 1
      i32.const 4
      i32.store offset=8
      local.get 1
      i32.const 1
      i32.store offset=12
      local.get 1
      i32.const 5
      i32.store offset=16
      local.get 1
      i32.const 0
      i32.load offset=10500
      i32.const 0
      local.get 1
      i32.const 8
      i32.add
      local.get 1
      i32.const 4
      i32.add
      call $getaddrinfo
      i32.store
      block  ;; label = @2
        local.get 1
        i32.load
        i32.const 8
        i32.eq
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.const 0
        i32.store offset=8
        local.get 1
        i32.const 0
        i32.load offset=10500
        i32.const 0
        local.get 1
        i32.const 8
        i32.add
        local.get 1
        i32.const 4
        i32.add
        call $getaddrinfo
        i32.store
      end
      block  ;; label = @2
        local.get 1
        i32.load
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.load offset=10500
        call $perror
        block  ;; label = @3
          local.get 1
          i32.load
          i32.const 11
          i32.eq
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          i32.load offset=10500
          call $perror
        end
        i32.const 1
        call $exit
        unreachable
      end
      block  ;; label = @2
        local.get 1
        i32.load offset=40
        local.get 1
        i32.load offset=4
        i32.load offset=24
        local.get 1
        i32.load offset=4
        i32.load offset=16
        call $bind
        i32.const 0
        i32.lt_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        i32.const 1671
        call $perror
        i32.const 1
        call $exit
        unreachable
      end
    end
    local.get 1
    i32.load offset=40
    local.set 0
    local.get 1
    i32.const 48
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $send_data (type 8) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i32.store offset=76
    local.get 2
    local.get 1
    i32.store offset=72
    local.get 2
    local.get 2
    i32.load offset=72
    i32.load offset=4
    i32.load
    i32.const 12
    i32.add
    i32.const 4
    i32.add
    i32.store offset=60
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.load offset=72
        i32.load offset=72
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        local.tee 1
        i64.const 0
        i64.store
        local.get 1
        i32.const 24
        i32.add
        i64.const 0
        i64.store
        local.get 1
        i32.const 16
        i32.add
        i64.const 0
        i64.store
        local.get 1
        i32.const 8
        i32.add
        i64.const 0
        i64.store
        local.get 2
        i32.const 2
        i32.store16
        local.get 2
        i32.const 53
        i32.const 65535
        i32.and
        call $htons
        i32.store16 offset=2
        i32.const 2
        local.get 2
        i32.load offset=76
        local.get 2
        i32.const 8
        i32.add
        call $inet_pton
        drop
        i32.const 0
        local.get 2
        local.get 2
        i32.load offset=72
        call $dump_data
        br 1 (;@1;)
      end
      local.get 2
      i32.const 32
      i32.add
      local.tee 1
      i64.const 0
      i64.store
      local.get 1
      i32.const 8
      i32.add
      i64.const 0
      i64.store
      local.get 2
      i32.const 1
      i32.store16 offset=32
      local.get 2
      i32.const 53
      i32.const 65535
      i32.and
      call $htons
      i32.store16 offset=34
      local.get 2
      local.get 2
      i32.load offset=76
      call $inet_addr
      i32.store offset=36
      local.get 2
      i32.const 32
      i32.add
      i32.const 0
      local.get 2
      i32.load offset=72
      call $dump_data
    end
    local.get 2
    local.get 2
    i32.load offset=72
    call $create_packet
    i32.store offset=64
    local.get 2
    i32.load offset=72
    i32.load offset=68
    local.set 1
    local.get 2
    i32.load offset=64
    local.set 0
    local.get 2
    i32.load offset=60
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.load offset=72
        i32.load offset=72
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        local.set 4
        br 1 (;@1;)
      end
      local.get 2
      i32.const 32
      i32.add
      local.set 4
    end
    local.get 2
    local.get 1
    local.get 0
    local.get 3
    i32.const 0
    local.get 4
    i32.const 32
    i32.const 16
    local.get 2
    i32.load offset=72
    i32.load offset=72
    select
    call $sendto
    local.tee 1
    i32.store offset=68
    block  ;; label = @1
      local.get 1
      i32.const -1
      i32.eq
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      i32.const 1383
      call $perror
    end
    local.get 2
    i32.load offset=64
    call $free
    local.get 2
    i32.load offset=68
    local.set 1
    local.get 2
    i32.const 80
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $receive_data (type 8) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 6192
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i32.store offset=6184
    local.get 2
    local.get 1
    i32.store offset=6180
    local.get 2
    i32.const 1
    local.get 2
    i32.load offset=6180
    i32.shl
    i32.const 5
    i32.mul
    i64.extend_i32_s
    i64.store offset=8
    local.get 2
    i64.const 0
    i64.store offset=16
    block  ;; label = @1
      i32.const 0
      i32.load offset=10496
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i64.load offset=8
      i32.const 0
      i32.load offset=10496
      i64.extend_i32_s
      i64.gt_s
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.const 0
      i32.load offset=10496
      i64.extend_i32_s
      i64.store offset=8
    end
    local.get 2
    i32.const 24
    i32.add
    call $FD_ZERO
    local.get 2
    i32.load offset=6184
    i32.load offset=68
    local.get 2
    i32.const 24
    i32.add
    call $FD_SET
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.load offset=6184
        i32.load offset=68
        i32.const 1
        i32.add
        local.get 2
        i32.const 24
        i32.add
        i32.const 0
        i32.const 0
        local.get 2
        i32.const 8
        i32.add
        call $select
        i32.const 0
        i32.lt_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.const 2
        i32.store offset=6188
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 2
        i32.load offset=6184
        i32.load offset=68
        local.get 2
        i32.const 24
        i32.add
        call $FD_ISSET
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 2
        i32.const 3
        i32.store offset=6188
        br 1 (;@1;)
      end
      local.get 2
      local.get 2
      i32.load offset=6184
      i32.load offset=68
      local.get 2
      i32.const 4128
      i32.add
      i32.const 2048
      i32.const 0
      call $recv
      local.tee 1
      i32.store offset=4124
      block  ;; label = @2
        local.get 1
        i32.const -1
        i32.eq
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.const 1
        i32.store offset=6188
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 2
        i32.const 4128
        i32.add
        call $getshort
        i32.const 65535
        i32.and
        local.get 2
        i32.load offset=6184
        i32.load
        i32.load16_u
        i32.const 65535
        i32.and
        i32.ne
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.load offset=6184
        i32.load
        i32.load16_u
        local.set 1
        local.get 2
        local.get 2
        i32.const 4128
        i32.add
        call $getshort
        i32.const 65535
        i32.and
        i32.store offset=4
        local.get 2
        local.get 1
        i32.const 65535
        i32.and
        i32.store
        i32.const 0
        i32.load offset=6628
        i32.const 4659
        local.get 2
        call $fprintf
        drop
        local.get 2
        i32.const 4
        i32.store offset=6188
        br 1 (;@1;)
      end
      local.get 2
      i32.load offset=6184
      local.get 2
      i32.load offset=4124
      i32.store offset=40
      i32.const 1
      local.get 2
      i32.load offset=4124
      call $calloc
      local.set 1
      local.get 2
      i32.load offset=6184
      local.get 1
      i32.store offset=44
      local.get 2
      i32.load offset=6184
      i32.load offset=44
      local.get 2
      i32.const 4128
      i32.add
      local.get 2
      i32.load offset=4124
      call $memcpy
      drop
      local.get 2
      i32.load offset=6184
      call $extract_data
      i32.const 0
      i32.const 0
      local.get 2
      i32.load offset=6184
      call $dump_data
      local.get 2
      i32.const 0
      i32.store offset=6188
    end
    local.get 2
    i32.load offset=6188
    local.set 1
    local.get 2
    i32.const 6192
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $FD_ZERO (type 10) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    local.get 0
    i32.store offset=12
    local.get 1
    i32.load offset=12
    i32.const 0
    i32.store)
  (func $FD_SET (type 2) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    local.get 0
    i32.store offset=28
    local.get 2
    local.get 1
    i32.store offset=24
    local.get 2
    local.get 2
    i32.load offset=24
    i32.load
    i32.store offset=20
    local.get 2
    local.get 2
    i32.load offset=24
    i32.const 4
    i32.add
    i32.store offset=16
    local.get 2
    local.get 2
    i32.load offset=16
    local.get 2
    i32.load offset=20
    i32.const 2
    i32.shl
    i32.add
    i32.store offset=12
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          local.get 2
          i32.load offset=16
          local.get 2
          i32.load offset=12
          i32.lt_u
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          block  ;; label = @4
            local.get 2
            i32.load offset=16
            i32.load
            local.get 2
            i32.load offset=28
            i32.eq
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            br 3 (;@1;)
          end
          local.get 2
          local.get 2
          i32.load offset=16
          i32.const 4
          i32.add
          i32.store offset=16
          br 0 (;@3;)
        end
      end
      local.get 2
      i32.load offset=24
      local.get 2
      i32.load offset=20
      i32.const 1
      i32.add
      i32.store
      local.get 2
      i32.load offset=24
      i32.const 4
      i32.add
      local.get 2
      i32.load offset=20
      i32.const 2
      i32.shl
      i32.add
      local.get 2
      i32.load offset=28
      i32.store
    end)
  (func $FD_ISSET (type 8) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    local.get 0
    i32.store offset=24
    local.get 2
    local.get 1
    i32.store offset=20
    local.get 2
    local.get 2
    i32.load offset=20
    i32.load
    i32.store offset=16
    local.get 2
    local.get 2
    i32.load offset=20
    i32.const 4
    i32.add
    i32.store offset=12
    local.get 2
    local.get 2
    i32.load offset=12
    local.get 2
    i32.load offset=16
    i32.const 2
    i32.shl
    i32.add
    i32.store offset=8
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          local.get 2
          i32.load offset=12
          local.get 2
          i32.load offset=8
          i32.lt_u
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          block  ;; label = @4
            local.get 2
            i32.load offset=12
            i32.load
            local.get 2
            i32.load offset=24
            i32.eq
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 2
            i32.const 1
            i32.const 1
            i32.and
            i32.store8 offset=31
            br 3 (;@1;)
          end
          local.get 2
          local.get 2
          i32.load offset=12
          i32.const 4
          i32.add
          i32.store offset=12
          br 0 (;@3;)
        end
      end
      local.get 2
      i32.const 0
      i32.const 1
      i32.and
      i32.store8 offset=31
    end
    local.get 2
    i32.load8_u offset=31
    i32.const 1
    i32.and)
  (func $create_header (type 10) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=12
    i32.const 1
    i32.const 12
    call $calloc
    local.set 0
    local.get 1
    i32.load offset=12
    local.get 0
    i32.store
    call $random
    local.set 0
    local.get 1
    i32.load offset=12
    i32.load
    local.get 0
    i32.const 32639
    i32.and
    i32.store16
    local.get 1
    i32.load offset=12
    i32.load
    i32.const 1
    i32.store16 offset=4
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $create_question (type 2) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i32.store offset=12
    local.get 2
    local.get 1
    i32.store offset=8
    i32.const 1
    i32.const 12
    call $calloc
    local.set 1
    local.get 2
    i32.load offset=12
    local.get 1
    i32.store offset=4
    local.get 2
    i32.load offset=12
    i32.load offset=4
    local.get 2
    i32.load offset=8
    call $strlen
    i32.const 2
    i32.add
    i32.store
    i32.const 1
    local.get 2
    i32.load offset=12
    i32.load offset=4
    i32.load
    i32.const 2
    i32.add
    call $calloc
    local.set 1
    local.get 2
    i32.load offset=12
    i32.load offset=4
    local.get 1
    i32.store offset=4
    local.get 2
    i32.load offset=12
    i32.load offset=4
    i32.load offset=4
    i32.const 1
    i32.add
    local.tee 1
    local.get 2
    i32.load offset=8
    local.tee 0
    call $overflow$0
    local.get 1
    local.get 0
    call $strcpy
    drop
    local.get 2
    local.get 2
    i32.load offset=12
    i32.load offset=4
    i32.load offset=4
    i32.const 1
    i32.add
    i32.store offset=4
    local.get 2
    local.get 2
    i32.load offset=12
    i32.load offset=4
    i32.load offset=4
    i32.store
    block  ;; label = @1
      loop  ;; label = @2
        local.get 2
        i32.load offset=4
        i32.load8_u
        i32.const 24
        i32.shl
        i32.const 24
        i32.shr_s
        i32.eqz
        br_if 1 (;@1;)
        block  ;; label = @3
          local.get 2
          i32.load offset=4
          i32.load8_u
          i32.const 24
          i32.shl
          i32.const 24
          i32.shr_s
          i32.const 46
          i32.eq
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          i32.load
          local.get 2
          i32.load offset=4
          local.get 2
          i32.load
          i32.sub
          i32.const 1
          i32.sub
          i32.store8
          local.get 2
          local.get 2
          i32.load offset=4
          i32.store
        end
        local.get 2
        local.get 2
        i32.load offset=4
        i32.const 1
        i32.add
        i32.store offset=4
        br 0 (;@2;)
      end
    end
    local.get 2
    i32.load
    local.get 2
    i32.load offset=4
    local.get 2
    i32.load
    i32.sub
    i32.const 1
    i32.sub
    i32.store8
    local.get 2
    i32.load offset=12
    i32.load offset=4
    i32.const 0
    i32.load offset=9064
    i32.store16 offset=8
    local.get 2
    i32.load offset=12
    i32.load offset=4
    i32.const 1
    i32.store16 offset=10
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $add_arecord (type 12) (param i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    local.get 0
    i32.store offset=28
    local.get 4
    local.get 1
    i32.store offset=24
    local.get 4
    local.get 2
    i32.store offset=20
    local.get 4
    local.get 3
    i32.store offset=16
    local.get 4
    i32.const 1
    i32.const 24
    call $calloc
    i32.store offset=12
    local.get 4
    i32.load offset=20
    call $strdup
    local.set 3
    local.get 4
    i32.load offset=12
    local.get 3
    i32.store
    local.get 4
    i32.load offset=16
    call $strdup
    local.set 3
    local.get 4
    i32.load offset=12
    local.get 3
    i32.store offset=4
    local.get 4
    i32.load offset=24
    i32.load
    i32.const 1
    call $printablename
    call $strdup
    local.set 3
    local.get 4
    i32.load offset=12
    local.get 3
    i32.store offset=12
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        i32.load offset=24
        i32.load offset=24
        i32.const 0
        i32.eq
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        i32.load offset=12
        i32.const 0
        i32.store offset=16
        br 1 (;@1;)
      end
      local.get 4
      i32.load offset=24
      i32.load offset=24
      call $strdup
      local.set 3
      local.get 4
      i32.load offset=12
      local.get 3
      i32.store offset=16
    end
    local.get 4
    i32.load offset=12
    i32.const 0
    i32.load offset=17748
    i32.store offset=20
    i32.const 0
    local.get 4
    i32.load offset=12
    i32.store offset=17748
    local.get 4
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $display_arecords (type 6)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    local.get 0
    i32.const 0
    i32.load offset=17748
    i32.store offset=76
    block  ;; label = @1
      loop  ;; label = @2
        local.get 0
        i32.load offset=76
        i32.const 0
        i32.ne
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=76
        i32.load
        local.set 1
        local.get 0
        local.get 0
        i32.load offset=76
        i32.load offset=4
        i32.store offset=52
        local.get 0
        local.get 1
        i32.store offset=48
        local.get 0
        local.get 0
        i32.const 72
        i32.add
        i32.store offset=56
        i32.const 1419
        local.get 0
        i32.const 48
        i32.add
        call $printf
        drop
        block  ;; label = @3
          block  ;; label = @4
            i32.const 40
            local.get 0
            i32.load offset=72
            i32.sub
            i32.const 1
            i32.lt_s
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            i32.const 4657
            i32.const 0
            call $printf
            drop
            br 1 (;@3;)
          end
          local.get 0
          i32.const 40
          local.get 0
          i32.load offset=72
          i32.sub
          i32.store offset=16
          local.get 0
          i32.const 62
          i32.add
          i32.const 1316
          local.get 0
          i32.const 16
          i32.add
          call $sprintf
          drop
          local.get 0
          i32.const 4657
          i32.store offset=32
          local.get 0
          i32.const 62
          i32.add
          local.get 0
          i32.const 32
          i32.add
          call $printf
          drop
        end
        local.get 0
        i32.load offset=76
        i32.load offset=12
        local.set 1
        local.get 0
        local.get 0
        i32.load offset=76
        i32.load offset=16
        i32.store offset=4
        local.get 0
        local.get 1
        i32.store
        i32.const 5037
        local.get 0
        call $printf
        drop
        local.get 0
        local.get 0
        i32.load offset=76
        i32.load offset=20
        i32.store offset=76
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 80
    i32.add
    global.set $__stack_pointer)
  (func $add_answer (type 10) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 1
    i32.const 1
    i32.const 8
    call $calloc
    i32.store offset=8
    local.get 1
    i32.load offset=12
    call $strdup
    local.set 0
    local.get 1
    i32.load offset=8
    local.get 0
    i32.store
    local.get 1
    i32.load offset=8
    i32.const 0
    i32.load offset=17752
    i32.store offset=4
    i32.const 0
    local.get 1
    i32.load offset=8
    i32.store offset=17752
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $has_answer (type 3) (param i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=8
    local.get 1
    i32.const 0
    i32.load offset=17752
    i32.store offset=4
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          local.get 1
          i32.load offset=4
          i32.const 0
          i32.ne
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          block  ;; label = @4
            local.get 1
            i32.load offset=4
            i32.load
            local.get 1
            i32.load offset=8
            call $strcmp
            br_if 0 (;@4;)
            local.get 1
            i32.const 1
            i32.store offset=12
            br 3 (;@1;)
          end
          local.get 1
          local.get 1
          i32.load offset=4
          i32.load offset=4
          i32.store offset=4
          br 0 (;@3;)
        end
      end
      local.get 1
      i32.const 0
      i32.store offset=12
    end
    local.get 1
    i32.load offset=12
    local.set 0
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $add_busy (type 10) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 1
    i32.const 1
    i32.const 8
    call $calloc
    i32.store offset=8
    local.get 1
    i32.load offset=12
    call $strdup
    local.set 0
    local.get 1
    i32.load offset=8
    local.get 0
    i32.store
    local.get 1
    i32.load offset=8
    i32.const 0
    i32.load offset=17756
    i32.store offset=4
    i32.const 0
    local.get 1
    i32.load offset=8
    i32.store offset=17756
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $remove_busy (type 10) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=12
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        i32.load offset=17756
        i32.load
        local.get 1
        i32.load offset=12
        call $strcmp
        br_if 0 (;@2;)
        local.get 1
        i32.const 0
        i32.load offset=17756
        i32.store offset=8
        i32.const 0
        i32.const 0
        i32.load offset=17756
        i32.load offset=4
        i32.store offset=17756
        local.get 1
        i32.load offset=8
        call $free
        br 1 (;@1;)
      end
      local.get 1
      i32.const 0
      i32.load offset=17756
      i32.store offset=4
      local.get 1
      local.get 1
      i32.load offset=4
      i32.load offset=4
      i32.store offset=8
      block  ;; label = @2
        loop  ;; label = @3
          local.get 1
          i32.load offset=8
          i32.const 0
          i32.ne
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          block  ;; label = @4
            local.get 1
            i32.load offset=8
            i32.load
            local.get 1
            i32.load offset=12
            call $strcmp
            br_if 0 (;@4;)
            local.get 1
            i32.load offset=4
            local.get 1
            i32.load offset=8
            i32.load offset=4
            i32.store offset=4
            local.get 1
            i32.load offset=8
            call $free
            br 3 (;@1;)
          end
          br 0 (;@3;)
        end
      end
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $is_busy (type 3) (param i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=8
    local.get 1
    i32.const 0
    i32.load offset=17756
    i32.store offset=4
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          local.get 1
          i32.load offset=4
          i32.const 0
          i32.ne
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          block  ;; label = @4
            local.get 1
            i32.load offset=4
            i32.load
            local.get 1
            i32.load offset=8
            call $strcmp
            br_if 0 (;@4;)
            local.get 1
            i32.const 1
            i32.store offset=12
            br 3 (;@1;)
          end
          local.get 1
          local.get 1
          i32.load offset=4
          i32.load offset=4
          i32.store offset=4
          br 0 (;@3;)
        end
      end
      local.get 1
      i32.const 0
      i32.store offset=12
    end
    local.get 1
    i32.load offset=12
    local.set 0
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $create_session (type 13) (param i32 i32 i32 i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 3408
    i32.sub
    local.tee 8
    global.set $__stack_pointer
    local.get 8
    local.get 0
    i32.store offset=3400
    local.get 8
    local.get 1
    i32.store offset=3396
    local.get 8
    local.get 2
    i32.store offset=3392
    local.get 8
    local.get 3
    i32.store offset=3388
    local.get 8
    local.get 4
    i32.store offset=3384
    local.get 8
    local.get 5
    i32.store offset=3380
    local.get 8
    local.get 6
    i32.store offset=3376
    local.get 8
    local.get 7
    i32.store offset=3372
    local.get 8
    i32.const 0
    i32.store offset=3344
    block  ;; label = @1
      local.get 8
      i32.load offset=3380
      i32.eqz
      br_if 0 (;@1;)
      local.get 8
      i32.load offset=3376
      local.set 7
      local.get 8
      i32.const 32
      i32.const 124
      local.get 8
      i32.load offset=3372
      i32.const 1
      i32.eq
      i32.const 1
      i32.and
      select
      i32.store offset=180
      local.get 8
      local.get 7
      i32.store offset=176
      i32.const 1891
      local.get 8
      i32.const 176
      i32.add
      call $printf
      drop
      i32.const 4531
      i32.const 0
      call $printf
      drop
    end
    local.get 8
    local.get 8
    i32.load offset=3388
    i32.store offset=160
    i32.const 4476
    local.get 8
    i32.const 160
    i32.add
    call $printf
    drop
    block  ;; label = @1
      local.get 8
      i32.load offset=3384
      i32.const 0
      i32.ne
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 8
      local.get 8
      i32.load offset=3384
      i32.store offset=144
      i32.const 4537
      local.get 8
      i32.const 144
      i32.add
      call $printf
      drop
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 8
        i32.load offset=3396
        i32.load8_u
        i32.const 24
        i32.shl
        i32.const 24
        i32.shr_s
        br_if 0 (;@2;)
        i32.const 4329
        i32.const 0
        call $printf
        drop
        local.get 8
        i32.const 1
        i32.store offset=3404
        br 1 (;@1;)
      end
      block  ;; label = @2
        i32.const 0
        i32.load offset=10492
        i32.eqz
        br_if 0 (;@2;)
        local.get 8
        i32.load offset=3392
        i32.eqz
        br_if 0 (;@2;)
        local.get 8
        local.get 8
        i32.load offset=3396
        i32.store
        i32.const 1702
        local.get 8
        call $printf
        drop
        local.get 8
        i32.const 1
        i32.store offset=3404
        br 1 (;@1;)
      end
      local.get 8
      local.get 8
      i32.load offset=3396
      i32.store offset=128
      i32.const 4647
      local.get 8
      i32.const 128
      i32.add
      call $printf
      drop
      i32.const 0
      i32.load offset=8832
      call $fflush
      drop
      block  ;; label = @2
        local.get 8
        i32.load offset=3396
        call $is_busy
        i32.const 1
        i32.eq
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        i32.const 4518
        i32.const 0
        call $printf
        drop
        i32.const 0
        i32.load offset=8832
        call $fflush
        drop
        local.get 8
        i32.const 0
        i32.store offset=3404
        br 1 (;@1;)
      end
      block  ;; label = @2
        i32.const 0
        i32.load offset=9060
        i32.eqz
        br_if 0 (;@2;)
        local.get 8
        i32.load offset=3396
        call $has_answer
        i32.eqz
        br_if 0 (;@2;)
        i32.const 4352
        i32.const 0
        call $printf
        drop
        local.get 8
        i32.const 0
        i32.store offset=3404
        br 1 (;@1;)
      end
      local.get 8
      i32.load offset=3396
      call $add_busy
      local.get 8
      i32.const 1
      i32.const 76
      call $calloc
      i32.store offset=3368
      i32.const 2
      i32.const 1
      local.get 8
      i32.load offset=3392
      select
      call $create_socket
      local.set 7
      local.get 8
      i32.load offset=3368
      local.get 7
      i32.store offset=68
      local.get 8
      i32.load offset=3368
      local.get 8
      i32.load offset=3392
      i32.store offset=72
      local.get 8
      i32.load offset=3396
      call $strdup
      local.set 7
      local.get 8
      i32.load offset=3368
      local.get 7
      i32.store offset=32
      local.get 8
      i32.load offset=3400
      call $strdup
      local.set 7
      local.get 8
      i32.load offset=3368
      local.get 7
      i32.store offset=36
      local.get 8
      i32.load offset=3368
      call $create_header
      local.get 8
      i32.load offset=3368
      local.get 8
      i32.load offset=3400
      call $create_question
      local.get 8
      i32.const 0
      i32.store offset=3348
      local.get 8
      i32.const 0
      i32.store offset=3356
      block  ;; label = @2
        block  ;; label = @3
          loop  ;; label = @4
            local.get 8
            i32.load offset=3356
            i32.const 0
            i32.load offset=9056
            i32.lt_s
            i32.const 1
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            local.get 8
            i32.load offset=3396
            local.get 8
            i32.load offset=3368
            call $send_data
            drop
            local.get 8
            local.get 8
            i32.load offset=3368
            local.get 8
            i32.load offset=3356
            call $receive_data
            local.tee 7
            i32.store offset=3348
            block  ;; label = @5
              local.get 7
              br_if 0 (;@5;)
              br 3 (;@2;)
            end
            i32.const 4644
            i32.const 0
            call $printf
            drop
            i32.const 0
            i32.load offset=8832
            call $fflush
            drop
            local.get 8
            local.get 8
            i32.load offset=3356
            i32.const 1
            i32.add
            i32.store offset=3356
            br 0 (;@4;)
          end
        end
      end
      local.get 8
      i32.load offset=3368
      i32.load offset=68
      call $close
      drop
      block  ;; label = @2
        local.get 8
        i32.load offset=3348
        i32.eqz
        br_if 0 (;@2;)
        local.get 8
        i32.load offset=3396
        call $remove_busy
        block  ;; label = @3
          i32.const 0
          i32.load offset=10488
          i32.eqz
          br_if 0 (;@3;)
          local.get 8
          i32.load offset=3396
          call $add_answer
        end
        local.get 8
        i32.const 1
        i32.store offset=3404
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 8
        i32.load offset=3368
        i32.load offset=8
        i32.load16_u offset=6
        i32.const 65535
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            local.get 8
            i32.load offset=3368
            i32.load offset=8
            i32.load16_u offset=2
            i32.const 10
            i32.shr_u
            i32.const 1
            i32.and
            i32.const 255
            i32.and
            i32.const 0
            i32.const 255
            i32.and
            i32.ne
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            i32.const 4492
            i32.const 0
            call $printf
            drop
            br 1 (;@3;)
          end
          i32.const 4480
          i32.const 0
          call $printf
          drop
        end
        local.get 8
        local.get 8
        i32.load offset=3368
        i32.load offset=16
        i32.store offset=2300
        block  ;; label = @3
          loop  ;; label = @4
            local.get 8
            i32.load offset=2300
            i32.const 0
            i32.ne
            i32.const 1
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            block  ;; label = @5
              local.get 8
              i32.load offset=2300
              i32.load16_u offset=8
              i32.const 65535
              i32.and
              i32.const 0
              i32.load offset=9064
              i32.ne
              i32.const 1
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              local.get 8
              i32.const 9072
              local.get 8
              i32.load offset=2300
              i32.load16_u offset=8
              i32.const 65535
              i32.and
              i32.const 2
              i32.shl
              i32.add
              i32.load
              i32.store offset=16
              i32.const 4543
              local.get 8
              i32.const 16
              i32.add
              call $printf
              drop
            end
            local.get 8
            i32.load offset=3368
            local.get 8
            i32.load offset=2300
            local.get 8
            i32.load offset=3388
            local.get 8
            i32.load offset=3396
            call $add_arecord
            local.get 8
            local.get 8
            i32.load offset=2300
            i32.load offset=28
            i32.store offset=2300
            br 0 (;@4;)
          end
        end
        block  ;; label = @3
          i32.const 0
          i32.load offset=9060
          i32.eqz
          br_if 0 (;@3;)
          local.get 8
          i32.load offset=3396
          call $add_answer
        end
      end
      block  ;; label = @2
        local.get 8
        i32.load offset=3368
        i32.load offset=20
        i32.const 0
        i32.ne
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 8
        i32.load offset=3384
        i32.const 0
        i32.ne
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 8
          i32.load offset=3368
          i32.load offset=8
          i32.load16_u offset=2
          i32.const 10
          i32.shr_u
          i32.const 1
          i32.and
          i32.const 255
          i32.and
          br_if 0 (;@3;)
          local.get 8
          i32.load offset=3384
          local.get 8
          i32.load offset=3368
          i32.load offset=20
          i32.load offset=4
          call $strcasecmp
          br_if 0 (;@3;)
          i32.const 4518
          i32.const 0
          call $printf
          drop
          local.get 8
          i32.load offset=3396
          call $remove_busy
          local.get 8
          i32.const 0
          i32.store offset=3404
          br 2 (;@1;)
        end
      end
      block  ;; label = @2
        local.get 8
        i32.load offset=3368
        i32.load offset=8
        i32.load16_u offset=2
        i32.const 10
        i32.shr_u
        i32.const 1
        i32.and
        i32.const 255
        i32.and
        i32.const 0
        i32.const 255
        i32.and
        i32.ne
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 8
        i32.load offset=3396
        call $remove_busy
        local.get 8
        i32.const 0
        i32.store offset=3404
        br 1 (;@1;)
      end
      local.get 8
      i32.const 0
      i32.store offset=3352
      local.get 8
      local.get 8
      i32.load offset=3368
      i32.load offset=20
      i32.store offset=3364
      loop  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 8
            i32.load offset=3364
            i32.const 0
            i32.ne
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 8
            i32.const 0
            i32.store offset=2296
            block  ;; label = @5
              local.get 8
              i32.load offset=3364
              i32.load16_u offset=8
              i32.const 65535
              i32.and
              i32.const 2
              i32.ne
              i32.const 1
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              local.get 8
              local.get 8
              i32.load offset=3364
              i32.load offset=28
              i32.store offset=3364
              br 2 (;@3;)
            end
            block  ;; label = @5
              local.get 8
              i32.load offset=3364
              i32.load offset=4
              i32.const 4327
              call $strcmp
              br_if 0 (;@5;)
              local.get 8
              local.get 8
              i32.load offset=3364
              i32.load offset=28
              i32.store offset=3364
              local.get 8
              local.get 8
              i32.load offset=3344
              local.tee 7
              i32.const 1
              i32.add
              i32.store offset=3344
              block  ;; label = @6
                local.get 7
                br_if 0 (;@6;)
                i32.const 4458
                i32.const 0
                call $printf
                drop
              end
              br 2 (;@3;)
            end
            block  ;; label = @5
              local.get 8
              i32.load offset=3384
              i32.const 0
              i32.ne
              i32.const 1
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              local.get 8
              i32.load offset=3384
              i32.const 4327
              call $strcmp
              i32.eqz
              br_if 0 (;@5;)
              local.get 8
              i32.load offset=3364
              i32.load offset=4
              local.get 8
              i32.load offset=3384
              local.get 8
              i32.load offset=3384
              call $strlen
              call $strnrcasecmp
              i32.eqz
              br_if 0 (;@5;)
              local.get 8
              local.get 8
              i32.load offset=3344
              local.tee 7
              i32.const 1
              i32.add
              i32.store offset=3344
              block  ;; label = @6
                local.get 7
                br_if 0 (;@6;)
                i32.const 4458
                i32.const 0
                call $printf
                drop
              end
              local.get 8
              local.get 8
              i32.load offset=3364
              i32.load offset=28
              i32.store offset=3364
              br 2 (;@3;)
            end
            local.get 8
            local.get 8
            i32.load offset=3368
            i32.load offset=24
            i32.store offset=3360
            block  ;; label = @5
              loop  ;; label = @6
                local.get 8
                i32.load offset=3360
                i32.const 0
                i32.ne
                i32.const 1
                i32.and
                i32.eqz
                br_if 1 (;@5;)
                block  ;; label = @7
                  local.get 8
                  i32.load offset=3360
                  i32.load
                  i32.const 1
                  call $printablename
                  local.get 8
                  i32.load offset=3364
                  i32.load offset=24
                  call $strcmp
                  br_if 0 (;@7;)
                  local.get 8
                  local.get 8
                  i32.load offset=2296
                  i32.const 1
                  i32.add
                  i32.store offset=2296
                end
                local.get 8
                local.get 8
                i32.load offset=3360
                i32.load offset=28
                i32.store offset=3360
                br 0 (;@6;)
              end
            end
            local.get 8
            local.get 8
            i32.load offset=3368
            i32.load offset=24
            i32.store offset=3360
            block  ;; label = @5
              loop  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    loop  ;; label = @9
                      local.get 8
                      i32.load offset=3360
                      i32.const 0
                      i32.ne
                      i32.const 1
                      i32.and
                      i32.eqz
                      br_if 1 (;@8;)
                      block  ;; label = @10
                        local.get 8
                        i32.load offset=3360
                        i32.load
                        i32.const 1
                        call $printablename
                        local.get 8
                        i32.load offset=3364
                        i32.load offset=24
                        call $strcmp
                        br_if 0 (;@10;)
                        br 3 (;@7;)
                      end
                      local.get 8
                      local.get 8
                      i32.load offset=3360
                      i32.load offset=28
                      i32.store offset=3360
                      br 0 (;@9;)
                    end
                  end
                end
                local.get 8
                i32.load offset=3376
                local.set 7
                local.get 8
                i32.load offset=3372
                local.set 6
                local.get 8
                i32.const 4653
                i32.const 6626
                local.get 8
                i32.load offset=3380
                select
                i32.store offset=120
                local.get 8
                i32.const 32
                i32.const 124
                local.get 6
                i32.const 1
                i32.eq
                i32.const 1
                i32.and
                select
                i32.store offset=116
                local.get 8
                local.get 7
                i32.store offset=112
                local.get 8
                i32.const 2304
                i32.add
                i32.const 1322
                local.get 8
                i32.const 112
                i32.add
                call $sprintf
                drop
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 8
                    i32.load offset=3360
                    i32.const 0
                    i32.ne
                    i32.const 1
                    i32.and
                    i32.eqz
                    br_if 0 (;@8;)
                    i32.const 6625
                    i32.const 0
                    call $printf
                    drop
                    local.get 8
                    i32.const 224
                    i32.add
                    local.get 8
                    i32.load offset=3360
                    i32.load
                    i32.const 1
                    call $printablename
                    call $strcpy
                    drop
                    local.get 8
                    i32.const 1264
                    i32.add
                    local.get 8
                    i32.load offset=3360
                    i32.load offset=24
                    call $strcpy
                    drop
                    local.get 8
                    i32.load offset=3400
                    local.set 6
                    local.get 8
                    i32.const 1264
                    i32.add
                    local.set 5
                    i32.const 1
                    i32.const 0
                    local.get 8
                    i32.load offset=3360
                    i32.load16_u offset=8
                    i32.const 65535
                    i32.and
                    i32.const 28
                    i32.eq
                    i32.const 1
                    i32.and
                    select
                    local.set 4
                    local.get 8
                    i32.const 224
                    i32.add
                    local.set 3
                    local.get 8
                    i32.load offset=3364
                    i32.load offset=4
                    local.set 2
                    local.get 8
                    i32.load offset=3380
                    i32.const 1
                    i32.add
                    local.set 1
                    local.get 8
                    i32.const 2304
                    i32.add
                    local.set 0
                    i32.const 0
                    local.set 7
                    block  ;; label = @9
                      local.get 8
                      i32.load offset=3364
                      i32.load offset=28
                      i32.const 0
                      i32.eq
                      i32.const 1
                      i32.and
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 8
                      i32.load offset=2296
                      i32.const 1
                      i32.le_s
                      local.set 7
                    end
                    local.get 8
                    local.get 6
                    local.get 5
                    local.get 4
                    local.get 3
                    local.get 2
                    local.get 1
                    local.get 0
                    i32.const 1
                    i32.const 0
                    local.get 7
                    i32.const 1
                    i32.and
                    select
                    call $create_session
                    local.get 8
                    i32.load offset=3352
                    i32.add
                    i32.store offset=3352
                    br 1 (;@7;)
                  end
                  local.get 8
                  i32.const 0
                  i32.store offset=216
                  local.get 8
                  i32.const 224
                  i32.add
                  local.get 8
                  i32.load offset=3364
                  i32.load offset=24
                  call $strcpy
                  drop
                  local.get 8
                  i32.const 0
                  i32.store offset=220
                  block  ;; label = @8
                    loop  ;; label = @9
                      local.get 8
                      i32.load offset=220
                      i32.const 2
                      i32.lt_s
                      i32.const 1
                      i32.and
                      i32.eqz
                      br_if 1 (;@8;)
                      local.get 8
                      i32.const 0
                      i32.store offset=200
                      local.get 8
                      local.get 8
                      i32.const 224
                      i32.add
                      call $gethostbyname
                      i32.store offset=204
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 8
                          i32.load offset=204
                          i32.const 0
                          i32.eq
                          i32.const 1
                          i32.and
                          i32.eqz
                          br_if 0 (;@11;)
                          br 1 (;@10;)
                        end
                        local.get 8
                        i32.const 0
                        i32.store offset=212
                        block  ;; label = @11
                          loop  ;; label = @12
                            local.get 8
                            i32.load offset=204
                            i32.load offset=16
                            local.get 8
                            i32.load offset=212
                            i32.const 2
                            i32.shl
                            i32.add
                            i32.load
                            i32.const 0
                            i32.ne
                            i32.const 1
                            i32.and
                            i32.eqz
                            br_if 1 (;@11;)
                            local.get 8
                            local.get 8
                            i32.load offset=212
                            i32.const 1
                            i32.add
                            i32.store offset=212
                            br 0 (;@12;)
                          end
                        end
                        local.get 8
                        local.get 8
                        i32.load offset=212
                        i32.const 4
                        call $calloc
                        i32.store offset=200
                        local.get 8
                        i32.const 0
                        i32.store offset=208
                        block  ;; label = @11
                          loop  ;; label = @12
                            local.get 8
                            i32.load offset=208
                            local.get 8
                            i32.load offset=212
                            i32.lt_s
                            i32.const 1
                            i32.and
                            i32.eqz
                            br_if 1 (;@11;)
                            i32.const 1
                            local.get 8
                            i32.load offset=204
                            i32.load offset=12
                            call $calloc
                            local.set 7
                            local.get 8
                            i32.load offset=200
                            local.get 8
                            i32.load offset=208
                            i32.const 2
                            i32.shl
                            i32.add
                            local.get 7
                            i32.store
                            local.get 8
                            i32.load offset=200
                            local.get 8
                            i32.load offset=208
                            i32.const 2
                            i32.shl
                            i32.add
                            i32.load
                            local.get 8
                            i32.load offset=204
                            i32.load offset=16
                            local.get 8
                            i32.load offset=208
                            i32.const 2
                            i32.shl
                            i32.add
                            i32.load
                            local.get 8
                            i32.load offset=204
                            i32.load offset=12
                            call $memcpy
                            drop
                            local.get 8
                            local.get 8
                            i32.load offset=208
                            i32.const 1
                            i32.add
                            i32.store offset=208
                            br 0 (;@12;)
                          end
                        end
                        local.get 8
                        i32.const 0
                        i32.store offset=208
                        block  ;; label = @11
                          loop  ;; label = @12
                            local.get 8
                            i32.load offset=208
                            local.get 8
                            i32.load offset=212
                            i32.lt_s
                            i32.const 1
                            i32.and
                            i32.eqz
                            br_if 1 (;@11;)
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 8
                                i32.load offset=220
                                br_if 0 (;@14;)
                                local.get 8
                                local.get 8
                                i32.load offset=200
                                local.get 8
                                i32.load offset=208
                                i32.const 2
                                i32.shl
                                i32.add
                                i32.load
                                i32.store offset=196
                                local.get 8
                                i32.load offset=196
                                i32.load8_u
                                local.set 7
                                local.get 8
                                i32.load offset=196
                                i32.load8_u offset=1
                                local.set 6
                                local.get 8
                                i32.load offset=196
                                i32.load8_u offset=2
                                local.set 5
                                local.get 8
                                local.get 8
                                i32.load offset=196
                                i32.load8_u offset=3
                                i32.const 255
                                i32.and
                                i32.store offset=44
                                local.get 8
                                local.get 5
                                i32.const 255
                                i32.and
                                i32.store offset=40
                                local.get 8
                                local.get 6
                                i32.const 255
                                i32.and
                                i32.store offset=36
                                local.get 8
                                local.get 7
                                i32.const 255
                                i32.and
                                i32.store offset=32
                                local.get 8
                                i32.const 1264
                                i32.add
                                i32.const 1240
                                local.get 8
                                i32.const 32
                                i32.add
                                call $sprintf
                                drop
                                local.get 8
                                i32.const 0
                                i32.store offset=3392
                                br 1 (;@13;)
                              end
                              local.get 8
                              local.get 8
                              i32.load offset=200
                              local.get 8
                              i32.load offset=208
                              i32.const 2
                              i32.shl
                              i32.add
                              i32.load
                              i32.store offset=192
                              local.get 8
                              i32.load offset=192
                              i32.load8_u
                              local.set 7
                              local.get 8
                              i32.load offset=192
                              i32.load8_u offset=1
                              local.set 6
                              local.get 8
                              i32.load offset=192
                              i32.load8_u offset=2
                              local.set 5
                              local.get 8
                              i32.load offset=192
                              i32.load8_u offset=3
                              local.set 4
                              local.get 8
                              i32.load offset=192
                              i32.load8_u offset=4
                              local.set 3
                              local.get 8
                              i32.load offset=192
                              i32.load8_u offset=5
                              local.set 2
                              local.get 8
                              i32.load offset=192
                              i32.load8_u offset=6
                              local.set 1
                              local.get 8
                              i32.load offset=192
                              i32.load8_u offset=7
                              local.set 0
                              local.get 8
                              i32.load offset=192
                              i32.load8_u offset=8
                              local.set 9
                              local.get 8
                              i32.load offset=192
                              i32.load8_u offset=9
                              local.set 10
                              local.get 8
                              i32.load offset=192
                              i32.load8_u offset=10
                              local.set 11
                              local.get 8
                              i32.load offset=192
                              i32.load8_u offset=11
                              local.set 12
                              local.get 8
                              i32.load offset=192
                              i32.load8_u offset=12
                              local.set 13
                              local.get 8
                              i32.load offset=192
                              i32.load8_u offset=13
                              local.set 14
                              local.get 8
                              i32.load offset=192
                              i32.load8_u offset=14
                              local.set 15
                              local.get 8
                              i32.const 108
                              i32.add
                              local.get 8
                              i32.load offset=192
                              i32.load8_u offset=15
                              i32.const 255
                              i32.and
                              i32.store
                              local.get 8
                              i32.const 104
                              i32.add
                              local.get 15
                              i32.const 255
                              i32.and
                              i32.store
                              local.get 8
                              i32.const 100
                              i32.add
                              local.get 14
                              i32.const 255
                              i32.and
                              i32.store
                              local.get 8
                              i32.const 96
                              i32.add
                              local.get 13
                              i32.const 255
                              i32.and
                              i32.store
                              local.get 8
                              i32.const 92
                              i32.add
                              local.get 12
                              i32.const 255
                              i32.and
                              i32.store
                              local.get 8
                              i32.const 88
                              i32.add
                              local.get 11
                              i32.const 255
                              i32.and
                              i32.store
                              local.get 8
                              i32.const 84
                              i32.add
                              local.get 10
                              i32.const 255
                              i32.and
                              i32.store
                              local.get 8
                              i32.const 80
                              i32.add
                              local.get 9
                              i32.const 255
                              i32.and
                              i32.store
                              local.get 8
                              i32.const 76
                              i32.add
                              local.get 0
                              i32.const 255
                              i32.and
                              i32.store
                              local.get 8
                              i32.const 72
                              i32.add
                              local.get 1
                              i32.const 255
                              i32.and
                              i32.store
                              local.get 8
                              i32.const 68
                              i32.add
                              local.get 2
                              i32.const 255
                              i32.and
                              i32.store
                              local.get 8
                              i32.const 64
                              i32.add
                              local.get 3
                              i32.const 255
                              i32.and
                              i32.store
                              local.get 8
                              local.get 4
                              i32.const 255
                              i32.and
                              i32.store offset=60
                              local.get 8
                              local.get 5
                              i32.const 255
                              i32.and
                              i32.store offset=56
                              local.get 8
                              local.get 6
                              i32.const 255
                              i32.and
                              i32.store offset=52
                              local.get 8
                              local.get 7
                              i32.const 255
                              i32.and
                              i32.store offset=48
                              local.get 8
                              i32.const 1264
                              i32.add
                              i32.const 1028
                              local.get 8
                              i32.const 48
                              i32.add
                              call $sprintf
                              drop
                              local.get 8
                              i32.const 1
                              i32.store offset=3392
                            end
                            i32.const 6625
                            i32.const 0
                            call $printf
                            drop
                            local.get 8
                            i32.load offset=3400
                            local.set 6
                            local.get 8
                            i32.const 1264
                            i32.add
                            local.set 5
                            local.get 8
                            i32.load offset=220
                            i32.const 1
                            i32.eq
                            i32.const 1
                            i32.and
                            local.set 4
                            local.get 8
                            i32.const 224
                            i32.add
                            local.set 3
                            local.get 8
                            i32.load offset=3364
                            i32.load offset=4
                            local.set 2
                            local.get 8
                            i32.load offset=3380
                            i32.const 1
                            i32.add
                            local.set 1
                            local.get 8
                            i32.const 2304
                            i32.add
                            local.set 0
                            i32.const 0
                            local.set 7
                            block  ;; label = @13
                              local.get 8
                              i32.load offset=3364
                              i32.load offset=28
                              i32.const 0
                              i32.eq
                              i32.const 1
                              i32.and
                              i32.eqz
                              br_if 0 (;@13;)
                              local.get 8
                              i32.load offset=2296
                              i32.const 1
                              i32.le_s
                              local.set 7
                            end
                            local.get 8
                            local.get 6
                            local.get 5
                            local.get 4
                            local.get 3
                            local.get 2
                            local.get 1
                            local.get 0
                            i32.const 1
                            i32.const 0
                            local.get 7
                            i32.const 1
                            i32.and
                            select
                            call $create_session
                            local.get 8
                            i32.load offset=3352
                            i32.add
                            i32.store offset=3352
                            local.get 8
                            local.get 8
                            i32.load offset=216
                            i32.const 1
                            i32.add
                            i32.store offset=216
                            local.get 8
                            local.get 8
                            i32.load offset=208
                            i32.const 1
                            i32.add
                            i32.store offset=208
                            br 0 (;@12;)
                          end
                        end
                      end
                      local.get 8
                      local.get 8
                      i32.load offset=220
                      i32.const 1
                      i32.add
                      i32.store offset=220
                      br 0 (;@9;)
                    end
                  end
                  block  ;; label = @8
                    local.get 8
                    i32.load offset=216
                    br_if 0 (;@8;)
                    i32.const 6625
                    i32.const 0
                    call $printf
                    drop
                    local.get 8
                    i32.const 0
                    i32.store8 offset=1264
                    local.get 8
                    i32.load offset=3400
                    local.set 6
                    local.get 8
                    i32.const 1264
                    i32.add
                    local.set 5
                    local.get 8
                    i32.const 224
                    i32.add
                    local.set 4
                    local.get 8
                    i32.load offset=3364
                    i32.load offset=4
                    local.set 3
                    local.get 8
                    i32.load offset=3380
                    i32.const 1
                    i32.add
                    local.set 2
                    local.get 8
                    i32.const 2304
                    i32.add
                    local.set 1
                    i32.const 0
                    local.set 7
                    block  ;; label = @9
                      local.get 8
                      i32.load offset=3364
                      i32.load offset=28
                      i32.const 0
                      i32.eq
                      i32.const 1
                      i32.and
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 8
                      i32.load offset=2296
                      i32.const 1
                      i32.le_s
                      local.set 7
                    end
                    local.get 8
                    local.get 6
                    local.get 5
                    i32.const 0
                    local.get 4
                    local.get 3
                    local.get 2
                    local.get 1
                    i32.const 1
                    i32.const 0
                    local.get 7
                    i32.const 1
                    i32.and
                    select
                    call $create_session
                    local.get 8
                    i32.load offset=3352
                    i32.add
                    i32.store offset=3352
                  end
                end
                local.get 8
                local.get 8
                i32.load offset=2296
                i32.const -1
                i32.add
                local.tee 7
                i32.store offset=2296
                block  ;; label = @7
                  local.get 7
                  i32.const 0
                  i32.le_s
                  i32.const 1
                  i32.and
                  i32.eqz
                  br_if 0 (;@7;)
                  br 2 (;@5;)
                end
                block  ;; label = @7
                  local.get 8
                  i32.load offset=3360
                  i32.const 0
                  i32.ne
                  i32.const 1
                  i32.and
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 8
                  local.get 8
                  i32.load offset=3360
                  i32.load offset=28
                  i32.store offset=3360
                end
                local.get 8
                i32.load offset=3360
                i32.const 0
                i32.ne
                i32.const 1
                i32.and
                br_if 0 (;@6;)
              end
            end
            local.get 8
            local.get 8
            i32.load offset=3364
            i32.load offset=28
            i32.store offset=3364
            br 1 (;@3;)
          end
          block  ;; label = @4
            i32.const 0
            i32.load offset=9060
            i32.eqz
            br_if 0 (;@4;)
            local.get 8
            i32.load offset=3352
            br_if 0 (;@4;)
            local.get 8
            i32.load offset=3396
            call $add_answer
          end
          local.get 8
          i32.load offset=3396
          call $remove_busy
          local.get 8
          local.get 8
          i32.load offset=3352
          i32.store offset=3404
          br 2 (;@1;)
        end
        br 0 (;@2;)
      end
    end
    local.get 8
    i32.load offset=3404
    local.set 7
    local.get 8
    i32.const 3408
    i32.add
    global.set $__stack_pointer
    local.get 7)
  (func $usage (type 6)
    i32.const 0
    i32.load offset=6628
    i32.const 5318
    i32.const 0
    call $fprintf
    drop
    i32.const 0
    i32.load offset=6628
    i32.const 4926
    i32.const 0
    call $fprintf
    drop
    i32.const 1
    call $exit
    unreachable)
  (func $main1 (type 8) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 2240
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i32.store offset=2232
    local.get 2
    local.get 1
    i32.store offset=2228
    local.get 2
    i32.const 4186
    i32.store offset=2220
    local.get 2
    i32.const 4286
    i32.store offset=2216
    local.get 2
    i32.const 0
    i32.store offset=140
    local.get 2
    i32.const 0
    i32.store offset=136
    block  ;; label = @1
      i32.const 0
      i32.load
      i32.const 1
      i32.and
      br_if 0 (;@1;)
      call $res_init
    end
    block  ;; label = @1
      i32.const 0
      i32.load
      i32.const 0
      i32.gt_s
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.const 0
      i32.load
      call $inet_ntoa
      call $strdup
      i32.store offset=2216
      local.get 2
      local.get 2
      i32.load offset=2216
      call $strdup
      i32.store offset=2220
    end
    i32.const 6596
    i32.const 0
    call $printf
    drop
    block  ;; label = @1
      loop  ;; label = @2
        local.get 2
        local.get 2
        i32.load offset=2232
        local.get 2
        i32.load offset=2228
        i32.const 1221
        call $getopt
        local.tee 1
        i32.store offset=2224
        local.get 1
        i32.const -1
        i32.ne
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        i32.load offset=2224
        i32.const -52
        i32.add
        local.tee 1
        i32.const 66
        i32.gt_u
        drop
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 1
                                br_table 0 (;@14;) 10 (;@4;) 10 (;@4;) 10 (;@4;) 10 (;@4;) 10 (;@4;) 10 (;@4;) 10 (;@4;) 10 (;@4;) 10 (;@4;) 10 (;@4;) 10 (;@4;) 10 (;@4;) 10 (;@4;) 10 (;@4;) 2 (;@12;) 10 (;@4;) 10 (;@4;) 10 (;@4;) 10 (;@4;) 10 (;@4;) 10 (;@4;) 10 (;@4;) 10 (;@4;) 10 (;@4;) 10 (;@4;) 10 (;@4;) 10 (;@4;) 10 (;@4;) 10 (;@4;) 10 (;@4;) 6 (;@8;) 10 (;@4;) 10 (;@4;) 10 (;@4;) 10 (;@4;) 10 (;@4;) 10 (;@4;) 10 (;@4;) 10 (;@4;) 10 (;@4;) 10 (;@4;) 10 (;@4;) 10 (;@4;) 10 (;@4;) 10 (;@4;) 10 (;@4;) 1 (;@13;) 10 (;@4;) 10 (;@4;) 10 (;@4;) 10 (;@4;) 10 (;@4;) 10 (;@4;) 10 (;@4;) 10 (;@4;) 10 (;@4;) 10 (;@4;) 10 (;@4;) 3 (;@11;) 10 (;@4;) 4 (;@10;) 5 (;@9;) 7 (;@7;) 8 (;@6;) 10 (;@4;) 9 (;@5;) 10 (;@4;)
                              end
                              i32.const 0
                              i32.const 1
                              i32.store offset=10492
                              br 10 (;@3;)
                            end
                            i32.const 0
                            i32.const 0
                            i32.store offset=9060
                            br 9 (;@3;)
                          end
                          i32.const 0
                          i32.const 1
                          i32.store offset=10488
                          br 8 (;@3;)
                        end
                        i32.const 0
                        i32.const 1
                        i32.store offset=10484
                        br 7 (;@3;)
                      end
                      i32.const 0
                      i32.const 0
                      i32.load offset=18268
                      call $atoi
                      local.tee 1
                      i32.store offset=9064
                      block  ;; label = @10
                        local.get 1
                        i32.const 1
                        i32.lt_s
                        i32.const 1
                        i32.and
                        i32.eqz
                        br_if 0 (;@10;)
                        block  ;; label = @11
                          i32.const 2095
                          i32.const 0
                          i32.load offset=18268
                          call $strcmp
                          br_if 0 (;@11;)
                          i32.const 0
                          i32.const 1
                          i32.store offset=9064
                        end
                        block  ;; label = @11
                          i32.const 2032
                          i32.const 0
                          i32.load offset=18268
                          call $strcmp
                          br_if 0 (;@11;)
                          i32.const 0
                          i32.const 28
                          i32.store offset=9064
                        end
                        block  ;; label = @11
                          i32.const 3667
                          i32.const 0
                          i32.load offset=18268
                          call $strcmp
                          br_if 0 (;@11;)
                          i32.const 0
                          i32.const 28
                          i32.store offset=9064
                        end
                        block  ;; label = @11
                          i32.const 1369
                          i32.const 0
                          i32.load offset=18268
                          call $strcmp
                          br_if 0 (;@11;)
                          i32.const 0
                          i32.const 12
                          i32.store offset=9064
                        end
                        block  ;; label = @11
                          i32.const 1549
                          i32.const 0
                          i32.load offset=18268
                          call $strcmp
                          br_if 0 (;@11;)
                          i32.const 0
                          i32.const 5
                          i32.store offset=9064
                        end
                        block  ;; label = @11
                          i32.const 1401
                          i32.const 0
                          i32.load offset=18268
                          call $strcmp
                          br_if 0 (;@11;)
                          i32.const 0
                          i32.const 13
                          i32.store offset=9064
                        end
                        block  ;; label = @11
                          i32.const 1025
                          i32.const 0
                          i32.load offset=18268
                          call $strcmp
                          br_if 0 (;@11;)
                          i32.const 0
                          i32.const 15
                          i32.store offset=9064
                        end
                        block  ;; label = @11
                          i32.const 1313
                          i32.const 0
                          i32.load offset=18268
                          call $strcmp
                          br_if 0 (;@11;)
                          i32.const 0
                          i32.const 2
                          i32.store offset=9064
                        end
                        block  ;; label = @11
                          i32.const 1257
                          i32.const 0
                          i32.load offset=18268
                          call $strcmp
                          br_if 0 (;@11;)
                          i32.const 0
                          i32.const 16
                          i32.store offset=9064
                        end
                        block  ;; label = @11
                          i32.const 1992
                          i32.const 0
                          i32.load offset=18268
                          call $strcmp
                          br_if 0 (;@11;)
                          i32.const 0
                          i32.const 6
                          i32.store offset=9064
                        end
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=9064
                          i32.const 1
                          i32.lt_s
                          i32.const 1
                          i32.and
                          i32.eqz
                          br_if 0 (;@11;)
                          i32.const 0
                          i32.load offset=6628
                          i32.const 4887
                          i32.const 0
                          call $fprintf
                          drop
                          i32.const 0
                          i32.const 1
                          i32.store offset=9064
                        end
                      end
                      br 6 (;@3;)
                    end
                    i32.const 0
                    i32.const 0
                    i32.load offset=18268
                    call $atoi
                    local.tee 1
                    i32.store offset=9056
                    block  ;; label = @9
                      local.get 1
                      i32.const 1
                      i32.lt_s
                      i32.const 1
                      i32.and
                      i32.eqz
                      br_if 0 (;@9;)
                      i32.const 0
                      i32.load offset=6628
                      i32.const 4840
                      i32.const 0
                      call $fprintf
                      drop
                      i32.const 0
                      i32.const 3
                      i32.store offset=9056
                    end
                    br 5 (;@3;)
                  end
                  i32.const 0
                  i32.const 0
                  i32.load offset=18268
                  i32.store offset=10500
                  br 4 (;@3;)
                end
                local.get 2
                i32.const 0
                i32.load offset=18268
                i32.store offset=2220
                block  ;; label = @7
                  local.get 2
                  i32.load offset=2220
                  i32.const 4327
                  call $strcmp
                  br_if 0 (;@7;)
                  local.get 2
                  i32.const 2101
                  call $strdup
                  i32.store offset=2220
                  local.get 2
                  i32.const 1
                  i32.store offset=140
                end
                br 3 (;@3;)
              end
              i32.const 0
              i32.const 0
              i32.load offset=18268
              call $atoi
              i32.store offset=10496
              br 2 (;@3;)
            end
            i32.const 0
            i32.const 1
            i32.store offset=10480
            br 1 (;@3;)
          end
          call $usage
        end
        br 0 (;@2;)
      end
    end
    i32.const 6613
    i32.const 0
    call $printf
    drop
    local.get 2
    i32.const 0
    i32.load offset=10096
    i32.store offset=112
    i32.const 5159
    local.get 2
    i32.const 112
    i32.add
    call $printf
    drop
    local.get 2
    local.get 2
    i32.load offset=2232
    i32.const 0
    i32.load offset=10096
    i32.sub
    i32.store offset=2232
    local.get 2
    local.get 2
    i32.load offset=2228
    i32.const 0
    i32.load offset=10096
    i32.const 2
    i32.shl
    i32.add
    i32.store offset=2228
    block  ;; label = @1
      local.get 2
      i32.load offset=2228
      i32.load
      i32.const 0
      i32.eq
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      call $usage
    end
    i32.const 6579
    i32.const 0
    call $printf
    drop
    local.get 2
    i32.const 144
    i32.add
    local.tee 1
    local.get 2
    i32.load offset=2228
    i32.load
    local.tee 0
    call $overflow$0
    local.get 1
    local.get 0
    call $strcpy
    drop
    block  ;; label = @1
      local.get 2
      i32.const 144
      i32.add
      local.get 2
      i32.load offset=2228
      i32.load
      call $strlen
      i32.const 1
      i32.sub
      i32.add
      i32.load8_u
      i32.const 24
      i32.shl
      i32.const 24
      i32.shr_s
      i32.const 46
      i32.eq
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.const 144
      i32.add
      local.get 2
      i32.load offset=2228
      i32.load
      call $strlen
      i32.const 1
      i32.sub
      i32.add
      i32.const 0
      i32.store8
    end
    i32.const 9072
    i32.const 0
    i32.load offset=9064
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set 1
    local.get 2
    i32.load offset=2220
    local.set 0
    local.get 2
    i32.const 0
    i32.load offset=9056
    i32.store offset=108
    local.get 2
    local.get 0
    i32.store offset=104
    local.get 2
    local.get 1
    i32.store offset=100
    local.get 2
    local.get 2
    i32.const 144
    i32.add
    i32.store offset=96
    i32.const 4957
    local.get 2
    i32.const 96
    i32.add
    call $printf
    drop
    i32.const 0
    call $time
    i32.wrap_i64
    call $srandom
    local.get 2
    i32.const 0
    i32.store offset=132
    local.get 2
    local.get 2
    i32.load offset=2220
    call $gethostbyname
    i32.store offset=132
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.load offset=132
        i32.const 0
        i32.eq
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        i32.const 0
        i32.load offset=10492
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 2
      local.get 2
      i32.load offset=2220
      call $gethostbyname
      i32.store offset=132
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.load offset=132
        i32.const 0
        i32.eq
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        local.get 2
        i32.load offset=2220
        i32.store
        i32.const 0
        i32.load offset=6628
        i32.const 5006
        local.get 2
        call $fprintf
        drop
        local.get 2
        i32.const 1
        i32.store offset=2236
        br 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.load offset=132
          i32.load offset=8
          i32.const 1
          i32.eq
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          local.get 2
          i32.load offset=132
          i32.load offset=16
          i32.load
          i32.store offset=128
          local.get 2
          i32.load offset=128
          i32.load8_u
          local.set 1
          local.get 2
          i32.load offset=128
          i32.load8_u offset=1
          local.set 0
          local.get 2
          i32.load offset=128
          i32.load8_u offset=2
          local.set 3
          local.get 2
          local.get 2
          i32.load offset=128
          i32.load8_u offset=3
          i32.const 255
          i32.and
          i32.store offset=28
          local.get 2
          local.get 3
          i32.const 255
          i32.and
          i32.store offset=24
          local.get 2
          local.get 0
          i32.const 255
          i32.and
          i32.store offset=20
          local.get 2
          local.get 1
          i32.const 255
          i32.and
          i32.store offset=16
          local.get 2
          i32.const 1184
          i32.add
          i32.const 1240
          local.get 2
          i32.const 16
          i32.add
          call $sprintf
          drop
          local.get 2
          i32.const 0
          i32.store offset=136
          br 1 (;@2;)
        end
        local.get 2
        local.get 2
        i32.load offset=132
        i32.load offset=16
        i32.load
        i32.store offset=124
        local.get 2
        i32.load offset=124
        i32.load8_u
        local.set 1
        local.get 2
        i32.load offset=124
        i32.load8_u offset=1
        local.set 0
        local.get 2
        i32.load offset=124
        i32.load8_u offset=2
        local.set 3
        local.get 2
        i32.load offset=124
        i32.load8_u offset=3
        local.set 4
        local.get 2
        i32.load offset=124
        i32.load8_u offset=4
        local.set 5
        local.get 2
        i32.load offset=124
        i32.load8_u offset=5
        local.set 6
        local.get 2
        i32.load offset=124
        i32.load8_u offset=6
        local.set 7
        local.get 2
        i32.load offset=124
        i32.load8_u offset=7
        local.set 8
        local.get 2
        i32.load offset=124
        i32.load8_u offset=8
        local.set 9
        local.get 2
        i32.load offset=124
        i32.load8_u offset=9
        local.set 10
        local.get 2
        i32.load offset=124
        i32.load8_u offset=10
        local.set 11
        local.get 2
        i32.load offset=124
        i32.load8_u offset=11
        local.set 12
        local.get 2
        i32.load offset=124
        i32.load8_u offset=12
        local.set 13
        local.get 2
        i32.load offset=124
        i32.load8_u offset=13
        local.set 14
        local.get 2
        i32.load offset=124
        i32.load8_u offset=14
        local.set 15
        local.get 2
        i32.const 92
        i32.add
        local.get 2
        i32.load offset=124
        i32.load8_u offset=15
        i32.const 255
        i32.and
        i32.store
        local.get 2
        i32.const 88
        i32.add
        local.get 15
        i32.const 255
        i32.and
        i32.store
        local.get 2
        i32.const 84
        i32.add
        local.get 14
        i32.const 255
        i32.and
        i32.store
        local.get 2
        i32.const 80
        i32.add
        local.get 13
        i32.const 255
        i32.and
        i32.store
        local.get 2
        i32.const 76
        i32.add
        local.get 12
        i32.const 255
        i32.and
        i32.store
        local.get 2
        i32.const 72
        i32.add
        local.get 11
        i32.const 255
        i32.and
        i32.store
        local.get 2
        i32.const 68
        i32.add
        local.get 10
        i32.const 255
        i32.and
        i32.store
        local.get 2
        i32.const 64
        i32.add
        local.get 9
        i32.const 255
        i32.and
        i32.store
        local.get 2
        i32.const 60
        i32.add
        local.get 8
        i32.const 255
        i32.and
        i32.store
        local.get 2
        i32.const 56
        i32.add
        local.get 7
        i32.const 255
        i32.and
        i32.store
        local.get 2
        i32.const 52
        i32.add
        local.get 6
        i32.const 255
        i32.and
        i32.store
        local.get 2
        i32.const 48
        i32.add
        local.get 5
        i32.const 255
        i32.and
        i32.store
        local.get 2
        local.get 4
        i32.const 255
        i32.and
        i32.store offset=44
        local.get 2
        local.get 3
        i32.const 255
        i32.and
        i32.store offset=40
        local.get 2
        local.get 0
        i32.const 255
        i32.and
        i32.store offset=36
        local.get 2
        local.get 1
        i32.const 255
        i32.and
        i32.store offset=32
        local.get 2
        i32.const 1184
        i32.add
        i32.const 1028
        local.get 2
        i32.const 32
        i32.add
        call $sprintf
        drop
        local.get 2
        i32.const 1
        i32.store offset=136
      end
      local.get 2
      i32.const 144
      i32.add
      local.get 2
      i32.const 1184
      i32.add
      local.get 2
      i32.load offset=136
      local.get 2
      i32.load offset=2220
      i32.const 4327
      i32.const 0
      local.get 2
      i32.load offset=140
      select
      i32.const 0
      i32.const 6626
      i32.const 1
      call $create_session
      drop
      i32.const 6625
      i32.const 0
      call $printf
      drop
      block  ;; label = @2
        i32.const 0
        i32.load offset=10484
        i32.eqz
        br_if 0 (;@2;)
        i32.const 6625
        i32.const 0
        call $printf
        drop
        call $display_arecords
      end
      local.get 2
      i32.const 0
      i32.store offset=2236
    end
    local.get 2
    i32.load offset=2236
    local.set 1
    local.get 2
    i32.const 2240
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $__original_main (type 14) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    local.get 0
    i32.const 3
    i32.store offset=28
    local.get 0
    i32.const 2145
    i32.store offset=24
    local.get 0
    i32.const 1373
    i32.store offset=12
    local.get 0
    i32.const 1237
    i32.store offset=16
    local.get 0
    local.get 0
    i32.load offset=24
    i32.store offset=20
    local.get 0
    i32.load offset=28
    local.get 0
    i32.const 12
    i32.add
    call $main1
    drop
    local.get 0
    i32.const 32
    i32.add
    global.set $__stack_pointer
    i32.const 0)
  (func $malloc (type 3) (param i32) (result i32)
    local.get 0
    call $dlmalloc)
  (func $dlmalloc (type 3) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block  ;; label = @1
      i32.const 0
      i32.load offset=17784
      br_if 0 (;@1;)
      i32.const 0
      call $sbrk
      i32.const 84912
      i32.sub
      local.tee 2
      i32.const 89
      i32.lt_u
      br_if 0 (;@1;)
      i32.const 0
      local.set 3
      block  ;; label = @2
        i32.const 0
        i32.load offset=18232
        local.tee 4
        br_if 0 (;@2;)
        i32.const 0
        i64.const -1
        i64.store offset=18244 align=4
        i32.const 0
        i64.const 281474976776192
        i64.store offset=18236 align=4
        i32.const 0
        local.get 1
        i32.const 8
        i32.add
        i32.const -16
        i32.and
        i32.const 1431655768
        i32.xor
        local.tee 4
        i32.store offset=18232
        i32.const 0
        i32.const 0
        i32.store offset=18252
        i32.const 0
        i32.const 0
        i32.store offset=18204
      end
      i32.const 0
      local.get 2
      i32.store offset=18212
      i32.const 0
      i32.const 84912
      i32.store offset=18208
      i32.const 0
      i32.const 84912
      i32.store offset=17776
      i32.const 0
      local.get 4
      i32.store offset=17796
      i32.const 0
      i32.const -1
      i32.store offset=17792
      loop  ;; label = @2
        local.get 3
        i32.const 17820
        i32.add
        local.get 3
        i32.const 17808
        i32.add
        local.tee 4
        i32.store
        local.get 4
        local.get 3
        i32.const 17800
        i32.add
        local.tee 5
        i32.store
        local.get 3
        i32.const 17812
        i32.add
        local.get 5
        i32.store
        local.get 3
        i32.const 17828
        i32.add
        local.get 3
        i32.const 17816
        i32.add
        local.tee 5
        i32.store
        local.get 5
        local.get 4
        i32.store
        local.get 3
        i32.const 17836
        i32.add
        local.get 3
        i32.const 17824
        i32.add
        local.tee 4
        i32.store
        local.get 4
        local.get 5
        i32.store
        local.get 3
        i32.const 17832
        i32.add
        local.get 4
        i32.store
        local.get 3
        i32.const 32
        i32.add
        local.tee 3
        i32.const 256
        i32.ne
        br_if 0 (;@2;)
      end
      i32.const 84912
      i32.const -8
      i32.const 84912
      i32.sub
      i32.const 15
      i32.and
      i32.const 0
      i32.const 84912
      i32.const 8
      i32.add
      i32.const 15
      i32.and
      select
      local.tee 3
      i32.add
      local.tee 4
      i32.const 4
      i32.add
      local.get 2
      local.get 3
      i32.sub
      i32.const -56
      i32.add
      local.tee 3
      i32.const 1
      i32.or
      i32.store
      i32.const 0
      i32.const 0
      i32.load offset=18248
      i32.store offset=17788
      i32.const 0
      local.get 4
      i32.store offset=17784
      i32.const 0
      local.get 3
      i32.store offset=17772
      local.get 2
      i32.const 84912
      i32.add
      i32.const -52
      i32.add
      i32.const 56
      i32.store
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 0
                            i32.const 236
                            i32.gt_u
                            br_if 0 (;@12;)
                            block  ;; label = @13
                              i32.const 0
                              i32.load offset=17760
                              local.tee 6
                              i32.const 16
                              local.get 0
                              i32.const 19
                              i32.add
                              i32.const -16
                              i32.and
                              local.get 0
                              i32.const 11
                              i32.lt_u
                              select
                              local.tee 2
                              i32.const 3
                              i32.shr_u
                              local.tee 4
                              i32.shr_u
                              local.tee 3
                              i32.const 3
                              i32.and
                              i32.eqz
                              br_if 0 (;@13;)
                              local.get 3
                              i32.const 1
                              i32.and
                              local.get 4
                              i32.or
                              i32.const 1
                              i32.xor
                              local.tee 5
                              i32.const 3
                              i32.shl
                              local.tee 0
                              i32.const 17808
                              i32.add
                              i32.load
                              local.tee 4
                              i32.const 8
                              i32.add
                              local.set 3
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 4
                                  i32.load offset=8
                                  local.tee 2
                                  local.get 0
                                  i32.const 17800
                                  i32.add
                                  local.tee 0
                                  i32.ne
                                  br_if 0 (;@15;)
                                  i32.const 0
                                  local.get 6
                                  i32.const -2
                                  local.get 5
                                  i32.rotl
                                  i32.and
                                  i32.store offset=17760
                                  br 1 (;@14;)
                                end
                                local.get 0
                                local.get 2
                                i32.store offset=8
                                local.get 2
                                local.get 0
                                i32.store offset=12
                              end
                              local.get 4
                              local.get 5
                              i32.const 3
                              i32.shl
                              local.tee 5
                              i32.const 3
                              i32.or
                              i32.store offset=4
                              local.get 4
                              local.get 5
                              i32.add
                              i32.const 4
                              i32.add
                              local.tee 4
                              local.get 4
                              i32.load
                              i32.const 1
                              i32.or
                              i32.store
                              br 12 (;@1;)
                            end
                            local.get 2
                            i32.const 0
                            i32.load offset=17768
                            local.tee 7
                            i32.le_u
                            br_if 1 (;@11;)
                            block  ;; label = @13
                              local.get 3
                              i32.eqz
                              br_if 0 (;@13;)
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 3
                                  local.get 4
                                  i32.shl
                                  i32.const 2
                                  local.get 4
                                  i32.shl
                                  local.tee 3
                                  i32.const 0
                                  local.get 3
                                  i32.sub
                                  i32.or
                                  i32.and
                                  local.tee 3
                                  i32.const 0
                                  local.get 3
                                  i32.sub
                                  i32.and
                                  i32.const -1
                                  i32.add
                                  local.tee 3
                                  local.get 3
                                  i32.const 12
                                  i32.shr_u
                                  i32.const 16
                                  i32.and
                                  local.tee 3
                                  i32.shr_u
                                  local.tee 4
                                  i32.const 5
                                  i32.shr_u
                                  i32.const 8
                                  i32.and
                                  local.tee 5
                                  local.get 3
                                  i32.or
                                  local.get 4
                                  local.get 5
                                  i32.shr_u
                                  local.tee 3
                                  i32.const 2
                                  i32.shr_u
                                  i32.const 4
                                  i32.and
                                  local.tee 4
                                  i32.or
                                  local.get 3
                                  local.get 4
                                  i32.shr_u
                                  local.tee 3
                                  i32.const 1
                                  i32.shr_u
                                  i32.const 2
                                  i32.and
                                  local.tee 4
                                  i32.or
                                  local.get 3
                                  local.get 4
                                  i32.shr_u
                                  local.tee 3
                                  i32.const 1
                                  i32.shr_u
                                  i32.const 1
                                  i32.and
                                  local.tee 4
                                  i32.or
                                  local.get 3
                                  local.get 4
                                  i32.shr_u
                                  i32.add
                                  local.tee 5
                                  i32.const 3
                                  i32.shl
                                  local.tee 0
                                  i32.const 17808
                                  i32.add
                                  i32.load
                                  local.tee 4
                                  i32.load offset=8
                                  local.tee 3
                                  local.get 0
                                  i32.const 17800
                                  i32.add
                                  local.tee 0
                                  i32.ne
                                  br_if 0 (;@15;)
                                  i32.const 0
                                  local.get 6
                                  i32.const -2
                                  local.get 5
                                  i32.rotl
                                  i32.and
                                  local.tee 6
                                  i32.store offset=17760
                                  br 1 (;@14;)
                                end
                                local.get 0
                                local.get 3
                                i32.store offset=8
                                local.get 3
                                local.get 0
                                i32.store offset=12
                              end
                              local.get 4
                              i32.const 8
                              i32.add
                              local.set 3
                              local.get 4
                              local.get 2
                              i32.const 3
                              i32.or
                              i32.store offset=4
                              local.get 4
                              local.get 5
                              i32.const 3
                              i32.shl
                              local.tee 5
                              i32.add
                              local.get 5
                              local.get 2
                              i32.sub
                              local.tee 5
                              i32.store
                              local.get 4
                              local.get 2
                              i32.add
                              local.tee 0
                              local.get 5
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              block  ;; label = @14
                                local.get 7
                                i32.eqz
                                br_if 0 (;@14;)
                                local.get 7
                                i32.const 3
                                i32.shr_u
                                local.tee 8
                                i32.const 3
                                i32.shl
                                i32.const 17800
                                i32.add
                                local.set 2
                                i32.const 0
                                i32.load offset=17780
                                local.set 4
                                block  ;; label = @15
                                  block  ;; label = @16
                                    local.get 6
                                    i32.const 1
                                    local.get 8
                                    i32.shl
                                    local.tee 8
                                    i32.and
                                    br_if 0 (;@16;)
                                    i32.const 0
                                    local.get 6
                                    local.get 8
                                    i32.or
                                    i32.store offset=17760
                                    local.get 2
                                    local.set 8
                                    br 1 (;@15;)
                                  end
                                  local.get 2
                                  i32.load offset=8
                                  local.set 8
                                end
                                local.get 8
                                local.get 4
                                i32.store offset=12
                                local.get 2
                                local.get 4
                                i32.store offset=8
                                local.get 4
                                local.get 2
                                i32.store offset=12
                                local.get 4
                                local.get 8
                                i32.store offset=8
                              end
                              i32.const 0
                              local.get 0
                              i32.store offset=17780
                              i32.const 0
                              local.get 5
                              i32.store offset=17768
                              br 12 (;@1;)
                            end
                            i32.const 0
                            i32.load offset=17764
                            local.tee 9
                            i32.eqz
                            br_if 1 (;@11;)
                            local.get 9
                            i32.const 0
                            local.get 9
                            i32.sub
                            i32.and
                            i32.const -1
                            i32.add
                            local.tee 3
                            local.get 3
                            i32.const 12
                            i32.shr_u
                            i32.const 16
                            i32.and
                            local.tee 3
                            i32.shr_u
                            local.tee 4
                            i32.const 5
                            i32.shr_u
                            i32.const 8
                            i32.and
                            local.tee 5
                            local.get 3
                            i32.or
                            local.get 4
                            local.get 5
                            i32.shr_u
                            local.tee 3
                            i32.const 2
                            i32.shr_u
                            i32.const 4
                            i32.and
                            local.tee 4
                            i32.or
                            local.get 3
                            local.get 4
                            i32.shr_u
                            local.tee 3
                            i32.const 1
                            i32.shr_u
                            i32.const 2
                            i32.and
                            local.tee 4
                            i32.or
                            local.get 3
                            local.get 4
                            i32.shr_u
                            local.tee 3
                            i32.const 1
                            i32.shr_u
                            i32.const 1
                            i32.and
                            local.tee 4
                            i32.or
                            local.get 3
                            local.get 4
                            i32.shr_u
                            i32.add
                            i32.const 2
                            i32.shl
                            i32.const 18064
                            i32.add
                            i32.load
                            local.tee 0
                            i32.load offset=4
                            i32.const -8
                            i32.and
                            local.get 2
                            i32.sub
                            local.set 4
                            local.get 0
                            local.set 5
                            block  ;; label = @13
                              loop  ;; label = @14
                                block  ;; label = @15
                                  local.get 5
                                  i32.load offset=16
                                  local.tee 3
                                  br_if 0 (;@15;)
                                  local.get 5
                                  i32.const 20
                                  i32.add
                                  i32.load
                                  local.tee 3
                                  i32.eqz
                                  br_if 2 (;@13;)
                                end
                                local.get 3
                                i32.load offset=4
                                i32.const -8
                                i32.and
                                local.get 2
                                i32.sub
                                local.tee 5
                                local.get 4
                                local.get 5
                                local.get 4
                                i32.lt_u
                                local.tee 5
                                select
                                local.set 4
                                local.get 3
                                local.get 0
                                local.get 5
                                select
                                local.set 0
                                local.get 3
                                local.set 5
                                br 0 (;@14;)
                              end
                            end
                            local.get 0
                            i32.load offset=24
                            local.set 10
                            block  ;; label = @13
                              local.get 0
                              i32.load offset=12
                              local.tee 8
                              local.get 0
                              i32.eq
                              br_if 0 (;@13;)
                              i32.const 0
                              i32.load offset=17776
                              local.get 0
                              i32.load offset=8
                              local.tee 3
                              i32.gt_u
                              drop
                              local.get 8
                              local.get 3
                              i32.store offset=8
                              local.get 3
                              local.get 8
                              i32.store offset=12
                              br 11 (;@2;)
                            end
                            block  ;; label = @13
                              local.get 0
                              i32.const 20
                              i32.add
                              local.tee 5
                              i32.load
                              local.tee 3
                              br_if 0 (;@13;)
                              local.get 0
                              i32.load offset=16
                              local.tee 3
                              i32.eqz
                              br_if 3 (;@10;)
                              local.get 0
                              i32.const 16
                              i32.add
                              local.set 5
                            end
                            loop  ;; label = @13
                              local.get 5
                              local.set 11
                              local.get 3
                              local.tee 8
                              i32.const 20
                              i32.add
                              local.tee 5
                              i32.load
                              local.tee 3
                              br_if 0 (;@13;)
                              local.get 8
                              i32.const 16
                              i32.add
                              local.set 5
                              local.get 8
                              i32.load offset=16
                              local.tee 3
                              br_if 0 (;@13;)
                            end
                            local.get 11
                            i32.const 0
                            i32.store
                            br 10 (;@2;)
                          end
                          i32.const -1
                          local.set 2
                          local.get 0
                          i32.const -65
                          i32.gt_u
                          br_if 0 (;@11;)
                          local.get 0
                          i32.const 19
                          i32.add
                          local.tee 3
                          i32.const -16
                          i32.and
                          local.set 2
                          i32.const 0
                          i32.load offset=17764
                          local.tee 7
                          i32.eqz
                          br_if 0 (;@11;)
                          i32.const 0
                          local.set 11
                          block  ;; label = @12
                            local.get 2
                            i32.const 256
                            i32.lt_u
                            br_if 0 (;@12;)
                            i32.const 31
                            local.set 11
                            local.get 2
                            i32.const 16777215
                            i32.gt_u
                            br_if 0 (;@12;)
                            local.get 3
                            i32.const 8
                            i32.shr_u
                            local.tee 3
                            local.get 3
                            i32.const 1048320
                            i32.add
                            i32.const 16
                            i32.shr_u
                            i32.const 8
                            i32.and
                            local.tee 3
                            i32.shl
                            local.tee 4
                            local.get 4
                            i32.const 520192
                            i32.add
                            i32.const 16
                            i32.shr_u
                            i32.const 4
                            i32.and
                            local.tee 4
                            i32.shl
                            local.tee 5
                            local.get 5
                            i32.const 245760
                            i32.add
                            i32.const 16
                            i32.shr_u
                            i32.const 2
                            i32.and
                            local.tee 5
                            i32.shl
                            i32.const 15
                            i32.shr_u
                            local.get 3
                            local.get 4
                            i32.or
                            local.get 5
                            i32.or
                            i32.sub
                            local.tee 3
                            i32.const 1
                            i32.shl
                            local.get 2
                            local.get 3
                            i32.const 21
                            i32.add
                            i32.shr_u
                            i32.const 1
                            i32.and
                            i32.or
                            i32.const 28
                            i32.add
                            local.set 11
                          end
                          i32.const 0
                          local.get 2
                          i32.sub
                          local.set 4
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 11
                                  i32.const 2
                                  i32.shl
                                  i32.const 18064
                                  i32.add
                                  i32.load
                                  local.tee 5
                                  br_if 0 (;@15;)
                                  i32.const 0
                                  local.set 3
                                  i32.const 0
                                  local.set 8
                                  br 1 (;@14;)
                                end
                                i32.const 0
                                local.set 3
                                local.get 2
                                i32.const 0
                                i32.const 25
                                local.get 11
                                i32.const 1
                                i32.shr_u
                                i32.sub
                                local.get 11
                                i32.const 31
                                i32.eq
                                select
                                i32.shl
                                local.set 0
                                i32.const 0
                                local.set 8
                                loop  ;; label = @15
                                  block  ;; label = @16
                                    local.get 5
                                    i32.load offset=4
                                    i32.const -8
                                    i32.and
                                    local.get 2
                                    i32.sub
                                    local.tee 6
                                    local.get 4
                                    i32.ge_u
                                    br_if 0 (;@16;)
                                    local.get 6
                                    local.set 4
                                    local.get 5
                                    local.set 8
                                    local.get 6
                                    br_if 0 (;@16;)
                                    i32.const 0
                                    local.set 4
                                    local.get 5
                                    local.set 8
                                    local.get 5
                                    local.set 3
                                    br 3 (;@13;)
                                  end
                                  local.get 3
                                  local.get 5
                                  i32.const 20
                                  i32.add
                                  i32.load
                                  local.tee 6
                                  local.get 6
                                  local.get 5
                                  local.get 0
                                  i32.const 29
                                  i32.shr_u
                                  i32.const 4
                                  i32.and
                                  i32.add
                                  i32.const 16
                                  i32.add
                                  i32.load
                                  local.tee 5
                                  i32.eq
                                  select
                                  local.get 3
                                  local.get 6
                                  select
                                  local.set 3
                                  local.get 0
                                  i32.const 1
                                  i32.shl
                                  local.set 0
                                  local.get 5
                                  br_if 0 (;@15;)
                                end
                              end
                              block  ;; label = @14
                                local.get 3
                                local.get 8
                                i32.or
                                br_if 0 (;@14;)
                                i32.const 0
                                local.set 8
                                i32.const 2
                                local.get 11
                                i32.shl
                                local.tee 3
                                i32.const 0
                                local.get 3
                                i32.sub
                                i32.or
                                local.get 7
                                i32.and
                                local.tee 3
                                i32.eqz
                                br_if 3 (;@11;)
                                local.get 3
                                i32.const 0
                                local.get 3
                                i32.sub
                                i32.and
                                i32.const -1
                                i32.add
                                local.tee 3
                                local.get 3
                                i32.const 12
                                i32.shr_u
                                i32.const 16
                                i32.and
                                local.tee 3
                                i32.shr_u
                                local.tee 5
                                i32.const 5
                                i32.shr_u
                                i32.const 8
                                i32.and
                                local.tee 0
                                local.get 3
                                i32.or
                                local.get 5
                                local.get 0
                                i32.shr_u
                                local.tee 3
                                i32.const 2
                                i32.shr_u
                                i32.const 4
                                i32.and
                                local.tee 5
                                i32.or
                                local.get 3
                                local.get 5
                                i32.shr_u
                                local.tee 3
                                i32.const 1
                                i32.shr_u
                                i32.const 2
                                i32.and
                                local.tee 5
                                i32.or
                                local.get 3
                                local.get 5
                                i32.shr_u
                                local.tee 3
                                i32.const 1
                                i32.shr_u
                                i32.const 1
                                i32.and
                                local.tee 5
                                i32.or
                                local.get 3
                                local.get 5
                                i32.shr_u
                                i32.add
                                i32.const 2
                                i32.shl
                                i32.const 18064
                                i32.add
                                i32.load
                                local.set 3
                              end
                              local.get 3
                              i32.eqz
                              br_if 1 (;@12;)
                            end
                            loop  ;; label = @13
                              local.get 3
                              i32.load offset=4
                              i32.const -8
                              i32.and
                              local.get 2
                              i32.sub
                              local.tee 6
                              local.get 4
                              i32.lt_u
                              local.set 0
                              block  ;; label = @14
                                local.get 3
                                i32.load offset=16
                                local.tee 5
                                br_if 0 (;@14;)
                                local.get 3
                                i32.const 20
                                i32.add
                                i32.load
                                local.set 5
                              end
                              local.get 6
                              local.get 4
                              local.get 0
                              select
                              local.set 4
                              local.get 3
                              local.get 8
                              local.get 0
                              select
                              local.set 8
                              local.get 5
                              local.set 3
                              local.get 5
                              br_if 0 (;@13;)
                            end
                          end
                          local.get 8
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 4
                          i32.const 0
                          i32.load offset=17768
                          local.get 2
                          i32.sub
                          i32.ge_u
                          br_if 0 (;@11;)
                          local.get 8
                          i32.load offset=24
                          local.set 11
                          block  ;; label = @12
                            local.get 8
                            i32.load offset=12
                            local.tee 0
                            local.get 8
                            i32.eq
                            br_if 0 (;@12;)
                            i32.const 0
                            i32.load offset=17776
                            local.get 8
                            i32.load offset=8
                            local.tee 3
                            i32.gt_u
                            drop
                            local.get 0
                            local.get 3
                            i32.store offset=8
                            local.get 3
                            local.get 0
                            i32.store offset=12
                            br 9 (;@3;)
                          end
                          block  ;; label = @12
                            local.get 8
                            i32.const 20
                            i32.add
                            local.tee 5
                            i32.load
                            local.tee 3
                            br_if 0 (;@12;)
                            local.get 8
                            i32.load offset=16
                            local.tee 3
                            i32.eqz
                            br_if 3 (;@9;)
                            local.get 8
                            i32.const 16
                            i32.add
                            local.set 5
                          end
                          loop  ;; label = @12
                            local.get 5
                            local.set 6
                            local.get 3
                            local.tee 0
                            i32.const 20
                            i32.add
                            local.tee 5
                            i32.load
                            local.tee 3
                            br_if 0 (;@12;)
                            local.get 0
                            i32.const 16
                            i32.add
                            local.set 5
                            local.get 0
                            i32.load offset=16
                            local.tee 3
                            br_if 0 (;@12;)
                          end
                          local.get 6
                          i32.const 0
                          i32.store
                          br 8 (;@3;)
                        end
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=17768
                          local.tee 3
                          local.get 2
                          i32.lt_u
                          br_if 0 (;@11;)
                          i32.const 0
                          i32.load offset=17780
                          local.set 4
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 3
                              local.get 2
                              i32.sub
                              local.tee 5
                              i32.const 16
                              i32.lt_u
                              br_if 0 (;@13;)
                              local.get 4
                              local.get 2
                              i32.add
                              local.tee 0
                              local.get 5
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              i32.const 0
                              local.get 5
                              i32.store offset=17768
                              i32.const 0
                              local.get 0
                              i32.store offset=17780
                              local.get 4
                              local.get 3
                              i32.add
                              local.get 5
                              i32.store
                              local.get 4
                              local.get 2
                              i32.const 3
                              i32.or
                              i32.store offset=4
                              br 1 (;@12;)
                            end
                            local.get 4
                            local.get 3
                            i32.const 3
                            i32.or
                            i32.store offset=4
                            local.get 3
                            local.get 4
                            i32.add
                            i32.const 4
                            i32.add
                            local.tee 3
                            local.get 3
                            i32.load
                            i32.const 1
                            i32.or
                            i32.store
                            i32.const 0
                            i32.const 0
                            i32.store offset=17780
                            i32.const 0
                            i32.const 0
                            i32.store offset=17768
                          end
                          local.get 4
                          i32.const 8
                          i32.add
                          local.set 3
                          br 10 (;@1;)
                        end
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=17772
                          local.tee 0
                          local.get 2
                          i32.le_u
                          br_if 0 (;@11;)
                          i32.const 0
                          i32.load offset=17784
                          local.tee 3
                          local.get 2
                          i32.add
                          local.tee 4
                          local.get 0
                          local.get 2
                          i32.sub
                          local.tee 5
                          i32.const 1
                          i32.or
                          i32.store offset=4
                          i32.const 0
                          local.get 5
                          i32.store offset=17772
                          i32.const 0
                          local.get 4
                          i32.store offset=17784
                          local.get 3
                          local.get 2
                          i32.const 3
                          i32.or
                          i32.store offset=4
                          local.get 3
                          i32.const 8
                          i32.add
                          local.set 3
                          br 10 (;@1;)
                        end
                        block  ;; label = @11
                          block  ;; label = @12
                            i32.const 0
                            i32.load offset=18232
                            i32.eqz
                            br_if 0 (;@12;)
                            i32.const 0
                            i32.load offset=18240
                            local.set 4
                            br 1 (;@11;)
                          end
                          i32.const 0
                          i64.const -1
                          i64.store offset=18244 align=4
                          i32.const 0
                          i64.const 281474976776192
                          i64.store offset=18236 align=4
                          i32.const 0
                          local.get 1
                          i32.const 12
                          i32.add
                          i32.const -16
                          i32.and
                          i32.const 1431655768
                          i32.xor
                          i32.store offset=18232
                          i32.const 0
                          i32.const 0
                          i32.store offset=18252
                          i32.const 0
                          i32.const 0
                          i32.store offset=18204
                          i32.const 65536
                          local.set 4
                        end
                        i32.const 0
                        local.set 3
                        block  ;; label = @11
                          local.get 4
                          local.get 2
                          i32.const 71
                          i32.add
                          local.tee 7
                          i32.add
                          local.tee 6
                          i32.const 0
                          local.get 4
                          i32.sub
                          local.tee 11
                          i32.and
                          local.tee 8
                          local.get 2
                          i32.gt_u
                          br_if 0 (;@11;)
                          i32.const 0
                          i32.const 48
                          i32.store offset=18256
                          br 10 (;@1;)
                        end
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=18200
                          local.tee 3
                          i32.eqz
                          br_if 0 (;@11;)
                          block  ;; label = @12
                            i32.const 0
                            i32.load offset=18192
                            local.tee 4
                            local.get 8
                            i32.add
                            local.tee 5
                            local.get 4
                            i32.le_u
                            br_if 0 (;@12;)
                            local.get 5
                            local.get 3
                            i32.le_u
                            br_if 1 (;@11;)
                          end
                          i32.const 0
                          local.set 3
                          i32.const 0
                          i32.const 48
                          i32.store offset=18256
                          br 10 (;@1;)
                        end
                        i32.const 0
                        i32.load8_u offset=18204
                        i32.const 4
                        i32.and
                        br_if 4 (;@6;)
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              i32.const 0
                              i32.load offset=17784
                              local.tee 4
                              i32.eqz
                              br_if 0 (;@13;)
                              i32.const 18208
                              local.set 3
                              loop  ;; label = @14
                                block  ;; label = @15
                                  local.get 3
                                  i32.load
                                  local.tee 5
                                  local.get 4
                                  i32.gt_u
                                  br_if 0 (;@15;)
                                  local.get 5
                                  local.get 3
                                  i32.load offset=4
                                  i32.add
                                  local.get 4
                                  i32.gt_u
                                  br_if 3 (;@12;)
                                end
                                local.get 3
                                i32.load offset=8
                                local.tee 3
                                br_if 0 (;@14;)
                              end
                            end
                            i32.const 0
                            call $sbrk
                            local.tee 0
                            i32.const -1
                            i32.eq
                            br_if 5 (;@7;)
                            local.get 8
                            local.set 6
                            block  ;; label = @13
                              i32.const 0
                              i32.load offset=18236
                              local.tee 3
                              i32.const -1
                              i32.add
                              local.tee 4
                              local.get 0
                              i32.and
                              i32.eqz
                              br_if 0 (;@13;)
                              local.get 8
                              local.get 0
                              i32.sub
                              local.get 4
                              local.get 0
                              i32.add
                              i32.const 0
                              local.get 3
                              i32.sub
                              i32.and
                              i32.add
                              local.set 6
                            end
                            local.get 6
                            local.get 2
                            i32.le_u
                            br_if 5 (;@7;)
                            local.get 6
                            i32.const 2147483646
                            i32.gt_u
                            br_if 5 (;@7;)
                            block  ;; label = @13
                              i32.const 0
                              i32.load offset=18200
                              local.tee 3
                              i32.eqz
                              br_if 0 (;@13;)
                              i32.const 0
                              i32.load offset=18192
                              local.tee 4
                              local.get 6
                              i32.add
                              local.tee 5
                              local.get 4
                              i32.le_u
                              br_if 6 (;@7;)
                              local.get 5
                              local.get 3
                              i32.gt_u
                              br_if 6 (;@7;)
                            end
                            local.get 6
                            call $sbrk
                            local.tee 3
                            local.get 0
                            i32.ne
                            br_if 1 (;@11;)
                            br 7 (;@5;)
                          end
                          local.get 6
                          local.get 0
                          i32.sub
                          local.get 11
                          i32.and
                          local.tee 6
                          i32.const 2147483646
                          i32.gt_u
                          br_if 4 (;@7;)
                          local.get 6
                          call $sbrk
                          local.tee 0
                          local.get 3
                          i32.load
                          local.get 3
                          i32.load offset=4
                          i32.add
                          i32.eq
                          br_if 3 (;@8;)
                          local.get 0
                          local.set 3
                        end
                        block  ;; label = @11
                          local.get 3
                          i32.const -1
                          i32.eq
                          br_if 0 (;@11;)
                          local.get 2
                          i32.const 72
                          i32.add
                          local.get 6
                          i32.le_u
                          br_if 0 (;@11;)
                          block  ;; label = @12
                            local.get 7
                            local.get 6
                            i32.sub
                            i32.const 0
                            i32.load offset=18240
                            local.tee 4
                            i32.add
                            i32.const 0
                            local.get 4
                            i32.sub
                            i32.and
                            local.tee 4
                            i32.const 2147483646
                            i32.le_u
                            br_if 0 (;@12;)
                            local.get 3
                            local.set 0
                            br 7 (;@5;)
                          end
                          block  ;; label = @12
                            local.get 4
                            call $sbrk
                            i32.const -1
                            i32.eq
                            br_if 0 (;@12;)
                            local.get 4
                            local.get 6
                            i32.add
                            local.set 6
                            local.get 3
                            local.set 0
                            br 7 (;@5;)
                          end
                          i32.const 0
                          local.get 6
                          i32.sub
                          call $sbrk
                          drop
                          br 4 (;@7;)
                        end
                        local.get 3
                        local.set 0
                        local.get 3
                        i32.const -1
                        i32.ne
                        br_if 5 (;@5;)
                        br 3 (;@7;)
                      end
                      i32.const 0
                      local.set 8
                      br 7 (;@2;)
                    end
                    i32.const 0
                    local.set 0
                    br 5 (;@3;)
                  end
                  local.get 0
                  i32.const -1
                  i32.ne
                  br_if 2 (;@5;)
                end
                i32.const 0
                i32.const 0
                i32.load offset=18204
                i32.const 4
                i32.or
                i32.store offset=18204
              end
              local.get 8
              i32.const 2147483646
              i32.gt_u
              br_if 1 (;@4;)
              local.get 8
              call $sbrk
              local.set 0
              i32.const 0
              call $sbrk
              local.set 3
              local.get 0
              i32.const -1
              i32.eq
              br_if 1 (;@4;)
              local.get 3
              i32.const -1
              i32.eq
              br_if 1 (;@4;)
              local.get 0
              local.get 3
              i32.ge_u
              br_if 1 (;@4;)
              local.get 3
              local.get 0
              i32.sub
              local.tee 6
              local.get 2
              i32.const 56
              i32.add
              i32.le_u
              br_if 1 (;@4;)
            end
            i32.const 0
            i32.const 0
            i32.load offset=18192
            local.get 6
            i32.add
            local.tee 3
            i32.store offset=18192
            block  ;; label = @5
              local.get 3
              i32.const 0
              i32.load offset=18196
              i32.le_u
              br_if 0 (;@5;)
              i32.const 0
              local.get 3
              i32.store offset=18196
            end
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    i32.const 0
                    i32.load offset=17784
                    local.tee 4
                    i32.eqz
                    br_if 0 (;@8;)
                    i32.const 18208
                    local.set 3
                    loop  ;; label = @9
                      local.get 0
                      local.get 3
                      i32.load
                      local.tee 5
                      local.get 3
                      i32.load offset=4
                      local.tee 8
                      i32.add
                      i32.eq
                      br_if 2 (;@7;)
                      local.get 3
                      i32.load offset=8
                      local.tee 3
                      br_if 0 (;@9;)
                      br 3 (;@6;)
                    end
                  end
                  block  ;; label = @8
                    block  ;; label = @9
                      i32.const 0
                      i32.load offset=17776
                      local.tee 3
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 0
                      local.get 3
                      i32.ge_u
                      br_if 1 (;@8;)
                    end
                    i32.const 0
                    local.get 0
                    i32.store offset=17776
                  end
                  i32.const 0
                  local.set 3
                  i32.const 0
                  local.get 6
                  i32.store offset=18212
                  i32.const 0
                  local.get 0
                  i32.store offset=18208
                  i32.const 0
                  i32.const -1
                  i32.store offset=17792
                  i32.const 0
                  i32.const 0
                  i32.load offset=18232
                  i32.store offset=17796
                  i32.const 0
                  i32.const 0
                  i32.store offset=18220
                  loop  ;; label = @8
                    local.get 3
                    i32.const 17820
                    i32.add
                    local.get 3
                    i32.const 17808
                    i32.add
                    local.tee 4
                    i32.store
                    local.get 4
                    local.get 3
                    i32.const 17800
                    i32.add
                    local.tee 5
                    i32.store
                    local.get 3
                    i32.const 17812
                    i32.add
                    local.get 5
                    i32.store
                    local.get 3
                    i32.const 17828
                    i32.add
                    local.get 3
                    i32.const 17816
                    i32.add
                    local.tee 5
                    i32.store
                    local.get 5
                    local.get 4
                    i32.store
                    local.get 3
                    i32.const 17836
                    i32.add
                    local.get 3
                    i32.const 17824
                    i32.add
                    local.tee 4
                    i32.store
                    local.get 4
                    local.get 5
                    i32.store
                    local.get 3
                    i32.const 17832
                    i32.add
                    local.get 4
                    i32.store
                    local.get 3
                    i32.const 32
                    i32.add
                    local.tee 3
                    i32.const 256
                    i32.ne
                    br_if 0 (;@8;)
                  end
                  local.get 0
                  i32.const -8
                  local.get 0
                  i32.sub
                  i32.const 15
                  i32.and
                  i32.const 0
                  local.get 0
                  i32.const 8
                  i32.add
                  i32.const 15
                  i32.and
                  select
                  local.tee 3
                  i32.add
                  local.tee 4
                  local.get 6
                  local.get 3
                  i32.sub
                  i32.const -56
                  i32.add
                  local.tee 3
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  i32.const 0
                  i32.const 0
                  i32.load offset=18248
                  i32.store offset=17788
                  i32.const 0
                  local.get 4
                  i32.store offset=17784
                  i32.const 0
                  local.get 3
                  i32.store offset=17772
                  local.get 6
                  local.get 0
                  i32.add
                  i32.const -52
                  i32.add
                  i32.const 56
                  i32.store
                  br 2 (;@5;)
                end
                local.get 3
                i32.load8_u offset=12
                i32.const 8
                i32.and
                br_if 0 (;@6;)
                local.get 5
                local.get 4
                i32.gt_u
                br_if 0 (;@6;)
                local.get 0
                local.get 4
                i32.le_u
                br_if 0 (;@6;)
                local.get 4
                i32.const -8
                local.get 4
                i32.sub
                i32.const 15
                i32.and
                i32.const 0
                local.get 4
                i32.const 8
                i32.add
                i32.const 15
                i32.and
                select
                local.tee 5
                i32.add
                local.tee 0
                i32.const 0
                i32.load offset=17772
                local.get 6
                i32.add
                local.tee 11
                local.get 5
                i32.sub
                local.tee 5
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 3
                local.get 8
                local.get 6
                i32.add
                i32.store offset=4
                i32.const 0
                i32.const 0
                i32.load offset=18248
                i32.store offset=17788
                i32.const 0
                local.get 5
                i32.store offset=17772
                i32.const 0
                local.get 0
                i32.store offset=17784
                local.get 11
                local.get 4
                i32.add
                i32.const 4
                i32.add
                i32.const 56
                i32.store
                br 1 (;@5;)
              end
              block  ;; label = @6
                local.get 0
                i32.const 0
                i32.load offset=17776
                local.tee 11
                i32.ge_u
                br_if 0 (;@6;)
                i32.const 0
                local.get 0
                i32.store offset=17776
                local.get 0
                local.set 11
              end
              local.get 0
              local.get 6
              i32.add
              local.set 8
              i32.const 18208
              local.set 3
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            loop  ;; label = @13
                              local.get 3
                              i32.load
                              local.get 8
                              i32.eq
                              br_if 1 (;@12;)
                              local.get 3
                              i32.load offset=8
                              local.tee 3
                              br_if 0 (;@13;)
                              br 2 (;@11;)
                            end
                          end
                          local.get 3
                          i32.load8_u offset=12
                          i32.const 8
                          i32.and
                          i32.eqz
                          br_if 1 (;@10;)
                        end
                        i32.const 18208
                        local.set 3
                        loop  ;; label = @11
                          block  ;; label = @12
                            local.get 3
                            i32.load
                            local.tee 5
                            local.get 4
                            i32.gt_u
                            br_if 0 (;@12;)
                            local.get 5
                            local.get 3
                            i32.load offset=4
                            i32.add
                            local.tee 5
                            local.get 4
                            i32.gt_u
                            br_if 3 (;@9;)
                          end
                          local.get 3
                          i32.load offset=8
                          local.set 3
                          br 0 (;@11;)
                        end
                      end
                      local.get 3
                      local.get 0
                      i32.store
                      local.get 3
                      local.get 3
                      i32.load offset=4
                      local.get 6
                      i32.add
                      i32.store offset=4
                      local.get 0
                      i32.const -8
                      local.get 0
                      i32.sub
                      i32.const 15
                      i32.and
                      i32.const 0
                      local.get 0
                      i32.const 8
                      i32.add
                      i32.const 15
                      i32.and
                      select
                      i32.add
                      local.tee 6
                      local.get 2
                      i32.const 3
                      i32.or
                      i32.store offset=4
                      local.get 8
                      i32.const -8
                      local.get 8
                      i32.sub
                      i32.const 15
                      i32.and
                      i32.const 0
                      local.get 8
                      i32.const 8
                      i32.add
                      i32.const 15
                      i32.and
                      select
                      i32.add
                      local.tee 8
                      local.get 6
                      local.get 2
                      i32.add
                      local.tee 2
                      i32.sub
                      local.set 5
                      block  ;; label = @10
                        local.get 4
                        local.get 8
                        i32.ne
                        br_if 0 (;@10;)
                        i32.const 0
                        local.get 2
                        i32.store offset=17784
                        i32.const 0
                        i32.const 0
                        i32.load offset=17772
                        local.get 5
                        i32.add
                        local.tee 3
                        i32.store offset=17772
                        local.get 2
                        local.get 3
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        br 3 (;@7;)
                      end
                      block  ;; label = @10
                        i32.const 0
                        i32.load offset=17780
                        local.get 8
                        i32.ne
                        br_if 0 (;@10;)
                        i32.const 0
                        local.get 2
                        i32.store offset=17780
                        i32.const 0
                        i32.const 0
                        i32.load offset=17768
                        local.get 5
                        i32.add
                        local.tee 3
                        i32.store offset=17768
                        local.get 2
                        local.get 3
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        local.get 2
                        local.get 3
                        i32.add
                        local.get 3
                        i32.store
                        br 3 (;@7;)
                      end
                      block  ;; label = @10
                        local.get 8
                        i32.load offset=4
                        local.tee 3
                        i32.const 3
                        i32.and
                        i32.const 1
                        i32.ne
                        br_if 0 (;@10;)
                        local.get 3
                        i32.const -8
                        i32.and
                        local.set 7
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 3
                            i32.const 255
                            i32.gt_u
                            br_if 0 (;@12;)
                            local.get 8
                            i32.load offset=8
                            local.tee 4
                            local.get 3
                            i32.const 3
                            i32.shr_u
                            local.tee 11
                            i32.const 3
                            i32.shl
                            i32.const 17800
                            i32.add
                            local.tee 0
                            i32.eq
                            drop
                            block  ;; label = @13
                              local.get 8
                              i32.load offset=12
                              local.tee 3
                              local.get 4
                              i32.ne
                              br_if 0 (;@13;)
                              i32.const 0
                              i32.const 0
                              i32.load offset=17760
                              i32.const -2
                              local.get 11
                              i32.rotl
                              i32.and
                              i32.store offset=17760
                              br 2 (;@11;)
                            end
                            local.get 3
                            local.get 0
                            i32.eq
                            drop
                            local.get 3
                            local.get 4
                            i32.store offset=8
                            local.get 4
                            local.get 3
                            i32.store offset=12
                            br 1 (;@11;)
                          end
                          local.get 8
                          i32.load offset=24
                          local.set 9
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 8
                              i32.load offset=12
                              local.tee 0
                              local.get 8
                              i32.eq
                              br_if 0 (;@13;)
                              local.get 11
                              local.get 8
                              i32.load offset=8
                              local.tee 3
                              i32.gt_u
                              drop
                              local.get 0
                              local.get 3
                              i32.store offset=8
                              local.get 3
                              local.get 0
                              i32.store offset=12
                              br 1 (;@12;)
                            end
                            block  ;; label = @13
                              local.get 8
                              i32.const 20
                              i32.add
                              local.tee 3
                              i32.load
                              local.tee 4
                              br_if 0 (;@13;)
                              local.get 8
                              i32.const 16
                              i32.add
                              local.tee 3
                              i32.load
                              local.tee 4
                              br_if 0 (;@13;)
                              i32.const 0
                              local.set 0
                              br 1 (;@12;)
                            end
                            loop  ;; label = @13
                              local.get 3
                              local.set 11
                              local.get 4
                              local.tee 0
                              i32.const 20
                              i32.add
                              local.tee 3
                              i32.load
                              local.tee 4
                              br_if 0 (;@13;)
                              local.get 0
                              i32.const 16
                              i32.add
                              local.set 3
                              local.get 0
                              i32.load offset=16
                              local.tee 4
                              br_if 0 (;@13;)
                            end
                            local.get 11
                            i32.const 0
                            i32.store
                          end
                          local.get 9
                          i32.eqz
                          br_if 0 (;@11;)
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 8
                              i32.load offset=28
                              local.tee 4
                              i32.const 2
                              i32.shl
                              i32.const 18064
                              i32.add
                              local.tee 3
                              i32.load
                              local.get 8
                              i32.ne
                              br_if 0 (;@13;)
                              local.get 3
                              local.get 0
                              i32.store
                              local.get 0
                              br_if 1 (;@12;)
                              i32.const 0
                              i32.const 0
                              i32.load offset=17764
                              i32.const -2
                              local.get 4
                              i32.rotl
                              i32.and
                              i32.store offset=17764
                              br 2 (;@11;)
                            end
                            local.get 9
                            i32.const 16
                            i32.const 20
                            local.get 9
                            i32.load offset=16
                            local.get 8
                            i32.eq
                            select
                            i32.add
                            local.get 0
                            i32.store
                            local.get 0
                            i32.eqz
                            br_if 1 (;@11;)
                          end
                          local.get 0
                          local.get 9
                          i32.store offset=24
                          block  ;; label = @12
                            local.get 8
                            i32.load offset=16
                            local.tee 3
                            i32.eqz
                            br_if 0 (;@12;)
                            local.get 0
                            local.get 3
                            i32.store offset=16
                            local.get 3
                            local.get 0
                            i32.store offset=24
                          end
                          local.get 8
                          i32.load offset=20
                          local.tee 3
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 0
                          i32.const 20
                          i32.add
                          local.get 3
                          i32.store
                          local.get 3
                          local.get 0
                          i32.store offset=24
                        end
                        local.get 7
                        local.get 5
                        i32.add
                        local.set 5
                        local.get 8
                        local.get 7
                        i32.add
                        local.set 8
                      end
                      local.get 8
                      local.get 8
                      i32.load offset=4
                      i32.const -2
                      i32.and
                      i32.store offset=4
                      local.get 2
                      local.get 5
                      i32.add
                      local.get 5
                      i32.store
                      local.get 2
                      local.get 5
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      block  ;; label = @10
                        local.get 5
                        i32.const 255
                        i32.gt_u
                        br_if 0 (;@10;)
                        local.get 5
                        i32.const 3
                        i32.shr_u
                        local.tee 4
                        i32.const 3
                        i32.shl
                        i32.const 17800
                        i32.add
                        local.set 3
                        block  ;; label = @11
                          block  ;; label = @12
                            i32.const 0
                            i32.load offset=17760
                            local.tee 5
                            i32.const 1
                            local.get 4
                            i32.shl
                            local.tee 4
                            i32.and
                            br_if 0 (;@12;)
                            i32.const 0
                            local.get 5
                            local.get 4
                            i32.or
                            i32.store offset=17760
                            local.get 3
                            local.set 4
                            br 1 (;@11;)
                          end
                          local.get 3
                          i32.load offset=8
                          local.set 4
                        end
                        local.get 4
                        local.get 2
                        i32.store offset=12
                        local.get 3
                        local.get 2
                        i32.store offset=8
                        local.get 2
                        local.get 3
                        i32.store offset=12
                        local.get 2
                        local.get 4
                        i32.store offset=8
                        br 3 (;@7;)
                      end
                      i32.const 31
                      local.set 3
                      block  ;; label = @10
                        local.get 5
                        i32.const 16777215
                        i32.gt_u
                        br_if 0 (;@10;)
                        local.get 5
                        i32.const 8
                        i32.shr_u
                        local.tee 3
                        local.get 3
                        i32.const 1048320
                        i32.add
                        i32.const 16
                        i32.shr_u
                        i32.const 8
                        i32.and
                        local.tee 3
                        i32.shl
                        local.tee 4
                        local.get 4
                        i32.const 520192
                        i32.add
                        i32.const 16
                        i32.shr_u
                        i32.const 4
                        i32.and
                        local.tee 4
                        i32.shl
                        local.tee 0
                        local.get 0
                        i32.const 245760
                        i32.add
                        i32.const 16
                        i32.shr_u
                        i32.const 2
                        i32.and
                        local.tee 0
                        i32.shl
                        i32.const 15
                        i32.shr_u
                        local.get 3
                        local.get 4
                        i32.or
                        local.get 0
                        i32.or
                        i32.sub
                        local.tee 3
                        i32.const 1
                        i32.shl
                        local.get 5
                        local.get 3
                        i32.const 21
                        i32.add
                        i32.shr_u
                        i32.const 1
                        i32.and
                        i32.or
                        i32.const 28
                        i32.add
                        local.set 3
                      end
                      local.get 2
                      local.get 3
                      i32.store offset=28
                      local.get 2
                      i64.const 0
                      i64.store offset=16 align=4
                      local.get 3
                      i32.const 2
                      i32.shl
                      i32.const 18064
                      i32.add
                      local.set 4
                      block  ;; label = @10
                        i32.const 0
                        i32.load offset=17764
                        local.tee 0
                        i32.const 1
                        local.get 3
                        i32.shl
                        local.tee 8
                        i32.and
                        br_if 0 (;@10;)
                        local.get 4
                        local.get 2
                        i32.store
                        i32.const 0
                        local.get 0
                        local.get 8
                        i32.or
                        i32.store offset=17764
                        local.get 2
                        local.get 4
                        i32.store offset=24
                        local.get 2
                        local.get 2
                        i32.store offset=8
                        local.get 2
                        local.get 2
                        i32.store offset=12
                        br 3 (;@7;)
                      end
                      local.get 5
                      i32.const 0
                      i32.const 25
                      local.get 3
                      i32.const 1
                      i32.shr_u
                      i32.sub
                      local.get 3
                      i32.const 31
                      i32.eq
                      select
                      i32.shl
                      local.set 3
                      local.get 4
                      i32.load
                      local.set 0
                      loop  ;; label = @10
                        local.get 0
                        local.tee 4
                        i32.load offset=4
                        i32.const -8
                        i32.and
                        local.get 5
                        i32.eq
                        br_if 2 (;@8;)
                        local.get 3
                        i32.const 29
                        i32.shr_u
                        local.set 0
                        local.get 3
                        i32.const 1
                        i32.shl
                        local.set 3
                        local.get 4
                        local.get 0
                        i32.const 4
                        i32.and
                        i32.add
                        i32.const 16
                        i32.add
                        local.tee 8
                        i32.load
                        local.tee 0
                        br_if 0 (;@10;)
                      end
                      local.get 8
                      local.get 2
                      i32.store
                      local.get 2
                      local.get 4
                      i32.store offset=24
                      local.get 2
                      local.get 2
                      i32.store offset=12
                      local.get 2
                      local.get 2
                      i32.store offset=8
                      br 2 (;@7;)
                    end
                    local.get 0
                    i32.const -8
                    local.get 0
                    i32.sub
                    i32.const 15
                    i32.and
                    i32.const 0
                    local.get 0
                    i32.const 8
                    i32.add
                    i32.const 15
                    i32.and
                    select
                    local.tee 3
                    i32.add
                    local.tee 11
                    local.get 6
                    local.get 3
                    i32.sub
                    i32.const -56
                    i32.add
                    local.tee 3
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 8
                    i32.const -52
                    i32.add
                    i32.const 56
                    i32.store
                    local.get 4
                    local.get 5
                    i32.const 55
                    local.get 5
                    i32.sub
                    i32.const 15
                    i32.and
                    i32.const 0
                    local.get 5
                    i32.const -55
                    i32.add
                    i32.const 15
                    i32.and
                    select
                    i32.add
                    i32.const -63
                    i32.add
                    local.tee 8
                    local.get 8
                    local.get 4
                    i32.const 16
                    i32.add
                    i32.lt_u
                    select
                    local.tee 8
                    i32.const 35
                    i32.store offset=4
                    i32.const 0
                    i32.const 0
                    i32.load offset=18248
                    i32.store offset=17788
                    i32.const 0
                    local.get 11
                    i32.store offset=17784
                    i32.const 0
                    local.get 3
                    i32.store offset=17772
                    local.get 8
                    i32.const 16
                    i32.add
                    i32.const 0
                    i64.load offset=18216 align=4
                    i64.store align=4
                    local.get 8
                    i32.const 0
                    i64.load offset=18208 align=4
                    i64.store offset=8 align=4
                    i32.const 0
                    local.get 8
                    i32.const 8
                    i32.add
                    i32.store offset=18216
                    i32.const 0
                    local.get 6
                    i32.store offset=18212
                    i32.const 0
                    local.get 0
                    i32.store offset=18208
                    i32.const 0
                    i32.const 0
                    i32.store offset=18220
                    local.get 8
                    i32.const 36
                    i32.add
                    local.set 3
                    loop  ;; label = @9
                      local.get 3
                      i32.const 7
                      i32.store
                      local.get 5
                      local.get 3
                      i32.const 4
                      i32.add
                      local.tee 3
                      i32.gt_u
                      br_if 0 (;@9;)
                    end
                    local.get 8
                    local.get 4
                    i32.eq
                    br_if 3 (;@5;)
                    local.get 8
                    local.get 8
                    i32.load offset=4
                    i32.const -2
                    i32.and
                    i32.store offset=4
                    local.get 8
                    local.get 8
                    local.get 4
                    i32.sub
                    local.tee 6
                    i32.store
                    local.get 4
                    local.get 6
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    block  ;; label = @9
                      local.get 6
                      i32.const 255
                      i32.gt_u
                      br_if 0 (;@9;)
                      local.get 6
                      i32.const 3
                      i32.shr_u
                      local.tee 5
                      i32.const 3
                      i32.shl
                      i32.const 17800
                      i32.add
                      local.set 3
                      block  ;; label = @10
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=17760
                          local.tee 0
                          i32.const 1
                          local.get 5
                          i32.shl
                          local.tee 5
                          i32.and
                          br_if 0 (;@11;)
                          i32.const 0
                          local.get 0
                          local.get 5
                          i32.or
                          i32.store offset=17760
                          local.get 3
                          local.set 5
                          br 1 (;@10;)
                        end
                        local.get 3
                        i32.load offset=8
                        local.set 5
                      end
                      local.get 5
                      local.get 4
                      i32.store offset=12
                      local.get 3
                      local.get 4
                      i32.store offset=8
                      local.get 4
                      local.get 3
                      i32.store offset=12
                      local.get 4
                      local.get 5
                      i32.store offset=8
                      br 4 (;@5;)
                    end
                    i32.const 31
                    local.set 3
                    block  ;; label = @9
                      local.get 6
                      i32.const 16777215
                      i32.gt_u
                      br_if 0 (;@9;)
                      local.get 6
                      i32.const 8
                      i32.shr_u
                      local.tee 3
                      local.get 3
                      i32.const 1048320
                      i32.add
                      i32.const 16
                      i32.shr_u
                      i32.const 8
                      i32.and
                      local.tee 3
                      i32.shl
                      local.tee 5
                      local.get 5
                      i32.const 520192
                      i32.add
                      i32.const 16
                      i32.shr_u
                      i32.const 4
                      i32.and
                      local.tee 5
                      i32.shl
                      local.tee 0
                      local.get 0
                      i32.const 245760
                      i32.add
                      i32.const 16
                      i32.shr_u
                      i32.const 2
                      i32.and
                      local.tee 0
                      i32.shl
                      i32.const 15
                      i32.shr_u
                      local.get 3
                      local.get 5
                      i32.or
                      local.get 0
                      i32.or
                      i32.sub
                      local.tee 3
                      i32.const 1
                      i32.shl
                      local.get 6
                      local.get 3
                      i32.const 21
                      i32.add
                      i32.shr_u
                      i32.const 1
                      i32.and
                      i32.or
                      i32.const 28
                      i32.add
                      local.set 3
                    end
                    local.get 4
                    i64.const 0
                    i64.store offset=16 align=4
                    local.get 4
                    i32.const 28
                    i32.add
                    local.get 3
                    i32.store
                    local.get 3
                    i32.const 2
                    i32.shl
                    i32.const 18064
                    i32.add
                    local.set 5
                    block  ;; label = @9
                      i32.const 0
                      i32.load offset=17764
                      local.tee 0
                      i32.const 1
                      local.get 3
                      i32.shl
                      local.tee 8
                      i32.and
                      br_if 0 (;@9;)
                      local.get 5
                      local.get 4
                      i32.store
                      i32.const 0
                      local.get 0
                      local.get 8
                      i32.or
                      i32.store offset=17764
                      local.get 4
                      i32.const 24
                      i32.add
                      local.get 5
                      i32.store
                      local.get 4
                      local.get 4
                      i32.store offset=8
                      local.get 4
                      local.get 4
                      i32.store offset=12
                      br 4 (;@5;)
                    end
                    local.get 6
                    i32.const 0
                    i32.const 25
                    local.get 3
                    i32.const 1
                    i32.shr_u
                    i32.sub
                    local.get 3
                    i32.const 31
                    i32.eq
                    select
                    i32.shl
                    local.set 3
                    local.get 5
                    i32.load
                    local.set 0
                    loop  ;; label = @9
                      local.get 0
                      local.tee 5
                      i32.load offset=4
                      i32.const -8
                      i32.and
                      local.get 6
                      i32.eq
                      br_if 3 (;@6;)
                      local.get 3
                      i32.const 29
                      i32.shr_u
                      local.set 0
                      local.get 3
                      i32.const 1
                      i32.shl
                      local.set 3
                      local.get 5
                      local.get 0
                      i32.const 4
                      i32.and
                      i32.add
                      i32.const 16
                      i32.add
                      local.tee 8
                      i32.load
                      local.tee 0
                      br_if 0 (;@9;)
                    end
                    local.get 8
                    local.get 4
                    i32.store
                    local.get 4
                    i32.const 24
                    i32.add
                    local.get 5
                    i32.store
                    local.get 4
                    local.get 4
                    i32.store offset=12
                    local.get 4
                    local.get 4
                    i32.store offset=8
                    br 3 (;@5;)
                  end
                  local.get 4
                  i32.load offset=8
                  local.tee 3
                  local.get 2
                  i32.store offset=12
                  local.get 4
                  local.get 2
                  i32.store offset=8
                  local.get 2
                  i32.const 0
                  i32.store offset=24
                  local.get 2
                  local.get 4
                  i32.store offset=12
                  local.get 2
                  local.get 3
                  i32.store offset=8
                end
                local.get 6
                i32.const 8
                i32.add
                local.set 3
                br 5 (;@1;)
              end
              local.get 5
              i32.load offset=8
              local.tee 3
              local.get 4
              i32.store offset=12
              local.get 5
              local.get 4
              i32.store offset=8
              local.get 4
              i32.const 24
              i32.add
              i32.const 0
              i32.store
              local.get 4
              local.get 5
              i32.store offset=12
              local.get 4
              local.get 3
              i32.store offset=8
            end
            i32.const 0
            i32.load offset=17772
            local.tee 3
            local.get 2
            i32.le_u
            br_if 0 (;@4;)
            i32.const 0
            i32.load offset=17784
            local.tee 4
            local.get 2
            i32.add
            local.tee 5
            local.get 3
            local.get 2
            i32.sub
            local.tee 3
            i32.const 1
            i32.or
            i32.store offset=4
            i32.const 0
            local.get 3
            i32.store offset=17772
            i32.const 0
            local.get 5
            i32.store offset=17784
            local.get 4
            local.get 2
            i32.const 3
            i32.or
            i32.store offset=4
            local.get 4
            i32.const 8
            i32.add
            local.set 3
            br 3 (;@1;)
          end
          i32.const 0
          local.set 3
          i32.const 0
          i32.const 48
          i32.store offset=18256
          br 2 (;@1;)
        end
        block  ;; label = @3
          local.get 11
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 8
              local.get 8
              i32.load offset=28
              local.tee 5
              i32.const 2
              i32.shl
              i32.const 18064
              i32.add
              local.tee 3
              i32.load
              i32.ne
              br_if 0 (;@5;)
              local.get 3
              local.get 0
              i32.store
              local.get 0
              br_if 1 (;@4;)
              i32.const 0
              local.get 7
              i32.const -2
              local.get 5
              i32.rotl
              i32.and
              local.tee 7
              i32.store offset=17764
              br 2 (;@3;)
            end
            local.get 11
            i32.const 16
            i32.const 20
            local.get 11
            i32.load offset=16
            local.get 8
            i32.eq
            select
            i32.add
            local.get 0
            i32.store
            local.get 0
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 0
          local.get 11
          i32.store offset=24
          block  ;; label = @4
            local.get 8
            i32.load offset=16
            local.tee 3
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            local.get 3
            i32.store offset=16
            local.get 3
            local.get 0
            i32.store offset=24
          end
          local.get 8
          i32.const 20
          i32.add
          i32.load
          local.tee 3
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          i32.const 20
          i32.add
          local.get 3
          i32.store
          local.get 3
          local.get 0
          i32.store offset=24
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 4
            i32.const 15
            i32.gt_u
            br_if 0 (;@4;)
            local.get 8
            local.get 4
            local.get 2
            i32.add
            local.tee 3
            i32.const 3
            i32.or
            i32.store offset=4
            local.get 3
            local.get 8
            i32.add
            i32.const 4
            i32.add
            local.tee 3
            local.get 3
            i32.load
            i32.const 1
            i32.or
            i32.store
            br 1 (;@3;)
          end
          local.get 8
          local.get 2
          i32.add
          local.tee 0
          local.get 4
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 8
          local.get 2
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 0
          local.get 4
          i32.add
          local.get 4
          i32.store
          block  ;; label = @4
            local.get 4
            i32.const 255
            i32.gt_u
            br_if 0 (;@4;)
            local.get 4
            i32.const 3
            i32.shr_u
            local.tee 4
            i32.const 3
            i32.shl
            i32.const 17800
            i32.add
            local.set 3
            block  ;; label = @5
              block  ;; label = @6
                i32.const 0
                i32.load offset=17760
                local.tee 5
                i32.const 1
                local.get 4
                i32.shl
                local.tee 4
                i32.and
                br_if 0 (;@6;)
                i32.const 0
                local.get 5
                local.get 4
                i32.or
                i32.store offset=17760
                local.get 3
                local.set 4
                br 1 (;@5;)
              end
              local.get 3
              i32.load offset=8
              local.set 4
            end
            local.get 4
            local.get 0
            i32.store offset=12
            local.get 3
            local.get 0
            i32.store offset=8
            local.get 0
            local.get 3
            i32.store offset=12
            local.get 0
            local.get 4
            i32.store offset=8
            br 1 (;@3;)
          end
          i32.const 31
          local.set 3
          block  ;; label = @4
            local.get 4
            i32.const 16777215
            i32.gt_u
            br_if 0 (;@4;)
            local.get 4
            i32.const 8
            i32.shr_u
            local.tee 3
            local.get 3
            i32.const 1048320
            i32.add
            i32.const 16
            i32.shr_u
            i32.const 8
            i32.and
            local.tee 3
            i32.shl
            local.tee 5
            local.get 5
            i32.const 520192
            i32.add
            i32.const 16
            i32.shr_u
            i32.const 4
            i32.and
            local.tee 5
            i32.shl
            local.tee 2
            local.get 2
            i32.const 245760
            i32.add
            i32.const 16
            i32.shr_u
            i32.const 2
            i32.and
            local.tee 2
            i32.shl
            i32.const 15
            i32.shr_u
            local.get 3
            local.get 5
            i32.or
            local.get 2
            i32.or
            i32.sub
            local.tee 3
            i32.const 1
            i32.shl
            local.get 4
            local.get 3
            i32.const 21
            i32.add
            i32.shr_u
            i32.const 1
            i32.and
            i32.or
            i32.const 28
            i32.add
            local.set 3
          end
          local.get 0
          local.get 3
          i32.store offset=28
          local.get 0
          i64.const 0
          i64.store offset=16 align=4
          local.get 3
          i32.const 2
          i32.shl
          i32.const 18064
          i32.add
          local.set 5
          block  ;; label = @4
            local.get 7
            i32.const 1
            local.get 3
            i32.shl
            local.tee 2
            i32.and
            br_if 0 (;@4;)
            local.get 5
            local.get 0
            i32.store
            i32.const 0
            local.get 7
            local.get 2
            i32.or
            i32.store offset=17764
            local.get 0
            local.get 5
            i32.store offset=24
            local.get 0
            local.get 0
            i32.store offset=8
            local.get 0
            local.get 0
            i32.store offset=12
            br 1 (;@3;)
          end
          local.get 4
          i32.const 0
          i32.const 25
          local.get 3
          i32.const 1
          i32.shr_u
          i32.sub
          local.get 3
          i32.const 31
          i32.eq
          select
          i32.shl
          local.set 3
          local.get 5
          i32.load
          local.set 2
          block  ;; label = @4
            loop  ;; label = @5
              local.get 2
              local.tee 5
              i32.load offset=4
              i32.const -8
              i32.and
              local.get 4
              i32.eq
              br_if 1 (;@4;)
              local.get 3
              i32.const 29
              i32.shr_u
              local.set 2
              local.get 3
              i32.const 1
              i32.shl
              local.set 3
              local.get 5
              local.get 2
              i32.const 4
              i32.and
              i32.add
              i32.const 16
              i32.add
              local.tee 6
              i32.load
              local.tee 2
              br_if 0 (;@5;)
            end
            local.get 6
            local.get 0
            i32.store
            local.get 0
            local.get 5
            i32.store offset=24
            local.get 0
            local.get 0
            i32.store offset=12
            local.get 0
            local.get 0
            i32.store offset=8
            br 1 (;@3;)
          end
          local.get 5
          i32.load offset=8
          local.tee 3
          local.get 0
          i32.store offset=12
          local.get 5
          local.get 0
          i32.store offset=8
          local.get 0
          i32.const 0
          i32.store offset=24
          local.get 0
          local.get 5
          i32.store offset=12
          local.get 0
          local.get 3
          i32.store offset=8
        end
        local.get 8
        i32.const 8
        i32.add
        local.set 3
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 10
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            local.get 0
            i32.load offset=28
            local.tee 5
            i32.const 2
            i32.shl
            i32.const 18064
            i32.add
            local.tee 3
            i32.load
            i32.ne
            br_if 0 (;@4;)
            local.get 3
            local.get 8
            i32.store
            local.get 8
            br_if 1 (;@3;)
            i32.const 0
            local.get 9
            i32.const -2
            local.get 5
            i32.rotl
            i32.and
            i32.store offset=17764
            br 2 (;@2;)
          end
          local.get 10
          i32.const 16
          i32.const 20
          local.get 10
          i32.load offset=16
          local.get 0
          i32.eq
          select
          i32.add
          local.get 8
          i32.store
          local.get 8
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 8
        local.get 10
        i32.store offset=24
        block  ;; label = @3
          local.get 0
          i32.load offset=16
          local.tee 3
          i32.eqz
          br_if 0 (;@3;)
          local.get 8
          local.get 3
          i32.store offset=16
          local.get 3
          local.get 8
          i32.store offset=24
        end
        local.get 0
        i32.const 20
        i32.add
        i32.load
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 8
        i32.const 20
        i32.add
        local.get 3
        i32.store
        local.get 3
        local.get 8
        i32.store offset=24
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 4
          i32.const 15
          i32.gt_u
          br_if 0 (;@3;)
          local.get 0
          local.get 4
          local.get 2
          i32.add
          local.tee 3
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 3
          local.get 0
          i32.add
          i32.const 4
          i32.add
          local.tee 3
          local.get 3
          i32.load
          i32.const 1
          i32.or
          i32.store
          br 1 (;@2;)
        end
        local.get 0
        local.get 2
        i32.add
        local.tee 5
        local.get 4
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 0
        local.get 2
        i32.const 3
        i32.or
        i32.store offset=4
        local.get 5
        local.get 4
        i32.add
        local.get 4
        i32.store
        block  ;; label = @3
          local.get 7
          i32.eqz
          br_if 0 (;@3;)
          local.get 7
          i32.const 3
          i32.shr_u
          local.tee 8
          i32.const 3
          i32.shl
          i32.const 17800
          i32.add
          local.set 2
          i32.const 0
          i32.load offset=17780
          local.set 3
          block  ;; label = @4
            block  ;; label = @5
              i32.const 1
              local.get 8
              i32.shl
              local.tee 8
              local.get 6
              i32.and
              br_if 0 (;@5;)
              i32.const 0
              local.get 8
              local.get 6
              i32.or
              i32.store offset=17760
              local.get 2
              local.set 8
              br 1 (;@4;)
            end
            local.get 2
            i32.load offset=8
            local.set 8
          end
          local.get 8
          local.get 3
          i32.store offset=12
          local.get 2
          local.get 3
          i32.store offset=8
          local.get 3
          local.get 2
          i32.store offset=12
          local.get 3
          local.get 8
          i32.store offset=8
        end
        i32.const 0
        local.get 5
        i32.store offset=17780
        i32.const 0
        local.get 4
        i32.store offset=17768
      end
      local.get 0
      i32.const 8
      i32.add
      local.set 3
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 3)
  (func $free (type 10) (param i32)
    local.get 0
    call $dlfree)
  (func $dlfree (type 10) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const -8
      i32.add
      local.tee 1
      local.get 0
      i32.const -4
      i32.add
      i32.load
      local.tee 2
      i32.const -8
      i32.and
      local.tee 0
      i32.add
      local.set 3
      block  ;; label = @2
        local.get 2
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 2
        i32.const 3
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        local.get 1
        i32.load
        local.tee 2
        i32.sub
        local.tee 1
        i32.const 0
        i32.load offset=17776
        local.tee 4
        i32.lt_u
        br_if 1 (;@1;)
        local.get 2
        local.get 0
        i32.add
        local.set 0
        block  ;; label = @3
          i32.const 0
          i32.load offset=17780
          local.get 1
          i32.eq
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 2
            i32.const 255
            i32.gt_u
            br_if 0 (;@4;)
            local.get 1
            i32.load offset=8
            local.tee 4
            local.get 2
            i32.const 3
            i32.shr_u
            local.tee 5
            i32.const 3
            i32.shl
            i32.const 17800
            i32.add
            local.tee 6
            i32.eq
            drop
            block  ;; label = @5
              local.get 1
              i32.load offset=12
              local.tee 2
              local.get 4
              i32.ne
              br_if 0 (;@5;)
              i32.const 0
              i32.const 0
              i32.load offset=17760
              i32.const -2
              local.get 5
              i32.rotl
              i32.and
              i32.store offset=17760
              br 3 (;@2;)
            end
            local.get 2
            local.get 6
            i32.eq
            drop
            local.get 2
            local.get 4
            i32.store offset=8
            local.get 4
            local.get 2
            i32.store offset=12
            br 2 (;@2;)
          end
          local.get 1
          i32.load offset=24
          local.set 7
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.load offset=12
              local.tee 6
              local.get 1
              i32.eq
              br_if 0 (;@5;)
              local.get 4
              local.get 1
              i32.load offset=8
              local.tee 2
              i32.gt_u
              drop
              local.get 6
              local.get 2
              i32.store offset=8
              local.get 2
              local.get 6
              i32.store offset=12
              br 1 (;@4;)
            end
            block  ;; label = @5
              local.get 1
              i32.const 20
              i32.add
              local.tee 2
              i32.load
              local.tee 4
              br_if 0 (;@5;)
              local.get 1
              i32.const 16
              i32.add
              local.tee 2
              i32.load
              local.tee 4
              br_if 0 (;@5;)
              i32.const 0
              local.set 6
              br 1 (;@4;)
            end
            loop  ;; label = @5
              local.get 2
              local.set 5
              local.get 4
              local.tee 6
              i32.const 20
              i32.add
              local.tee 2
              i32.load
              local.tee 4
              br_if 0 (;@5;)
              local.get 6
              i32.const 16
              i32.add
              local.set 2
              local.get 6
              i32.load offset=16
              local.tee 4
              br_if 0 (;@5;)
            end
            local.get 5
            i32.const 0
            i32.store
          end
          local.get 7
          i32.eqz
          br_if 1 (;@2;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.load offset=28
              local.tee 4
              i32.const 2
              i32.shl
              i32.const 18064
              i32.add
              local.tee 2
              i32.load
              local.get 1
              i32.ne
              br_if 0 (;@5;)
              local.get 2
              local.get 6
              i32.store
              local.get 6
              br_if 1 (;@4;)
              i32.const 0
              i32.const 0
              i32.load offset=17764
              i32.const -2
              local.get 4
              i32.rotl
              i32.and
              i32.store offset=17764
              br 3 (;@2;)
            end
            local.get 7
            i32.const 16
            i32.const 20
            local.get 7
            i32.load offset=16
            local.get 1
            i32.eq
            select
            i32.add
            local.get 6
            i32.store
            local.get 6
            i32.eqz
            br_if 2 (;@2;)
          end
          local.get 6
          local.get 7
          i32.store offset=24
          block  ;; label = @4
            local.get 1
            i32.load offset=16
            local.tee 2
            i32.eqz
            br_if 0 (;@4;)
            local.get 6
            local.get 2
            i32.store offset=16
            local.get 2
            local.get 6
            i32.store offset=24
          end
          local.get 1
          i32.load offset=20
          local.tee 2
          i32.eqz
          br_if 1 (;@2;)
          local.get 6
          i32.const 20
          i32.add
          local.get 2
          i32.store
          local.get 2
          local.get 6
          i32.store offset=24
          br 1 (;@2;)
        end
        local.get 3
        i32.load offset=4
        local.tee 2
        i32.const 3
        i32.and
        i32.const 3
        i32.ne
        br_if 0 (;@2;)
        local.get 3
        local.get 2
        i32.const -2
        i32.and
        i32.store offset=4
        i32.const 0
        local.get 0
        i32.store offset=17768
        local.get 1
        local.get 0
        i32.add
        local.get 0
        i32.store
        local.get 1
        local.get 0
        i32.const 1
        i32.or
        i32.store offset=4
        return
      end
      local.get 3
      local.get 1
      i32.le_u
      br_if 0 (;@1;)
      local.get 3
      i32.load offset=4
      local.tee 2
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.const 2
          i32.and
          br_if 0 (;@3;)
          block  ;; label = @4
            i32.const 0
            i32.load offset=17784
            local.get 3
            i32.ne
            br_if 0 (;@4;)
            i32.const 0
            local.get 1
            i32.store offset=17784
            i32.const 0
            i32.const 0
            i32.load offset=17772
            local.get 0
            i32.add
            local.tee 0
            i32.store offset=17772
            local.get 1
            local.get 0
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 1
            i32.const 0
            i32.load offset=17780
            i32.ne
            br_if 3 (;@1;)
            i32.const 0
            i32.const 0
            i32.store offset=17768
            i32.const 0
            i32.const 0
            i32.store offset=17780
            return
          end
          block  ;; label = @4
            i32.const 0
            i32.load offset=17780
            local.get 3
            i32.ne
            br_if 0 (;@4;)
            i32.const 0
            local.get 1
            i32.store offset=17780
            i32.const 0
            i32.const 0
            i32.load offset=17768
            local.get 0
            i32.add
            local.tee 0
            i32.store offset=17768
            local.get 1
            local.get 0
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 1
            local.get 0
            i32.add
            local.get 0
            i32.store
            return
          end
          local.get 2
          i32.const -8
          i32.and
          local.get 0
          i32.add
          local.set 0
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.const 255
              i32.gt_u
              br_if 0 (;@5;)
              local.get 3
              i32.load offset=8
              local.tee 4
              local.get 2
              i32.const 3
              i32.shr_u
              local.tee 5
              i32.const 3
              i32.shl
              i32.const 17800
              i32.add
              local.tee 6
              i32.eq
              drop
              block  ;; label = @6
                local.get 3
                i32.load offset=12
                local.tee 2
                local.get 4
                i32.ne
                br_if 0 (;@6;)
                i32.const 0
                i32.const 0
                i32.load offset=17760
                i32.const -2
                local.get 5
                i32.rotl
                i32.and
                i32.store offset=17760
                br 2 (;@4;)
              end
              local.get 2
              local.get 6
              i32.eq
              drop
              local.get 2
              local.get 4
              i32.store offset=8
              local.get 4
              local.get 2
              i32.store offset=12
              br 1 (;@4;)
            end
            local.get 3
            i32.load offset=24
            local.set 7
            block  ;; label = @5
              block  ;; label = @6
                local.get 3
                i32.load offset=12
                local.tee 6
                local.get 3
                i32.eq
                br_if 0 (;@6;)
                i32.const 0
                i32.load offset=17776
                local.get 3
                i32.load offset=8
                local.tee 2
                i32.gt_u
                drop
                local.get 6
                local.get 2
                i32.store offset=8
                local.get 2
                local.get 6
                i32.store offset=12
                br 1 (;@5;)
              end
              block  ;; label = @6
                local.get 3
                i32.const 20
                i32.add
                local.tee 2
                i32.load
                local.tee 4
                br_if 0 (;@6;)
                local.get 3
                i32.const 16
                i32.add
                local.tee 2
                i32.load
                local.tee 4
                br_if 0 (;@6;)
                i32.const 0
                local.set 6
                br 1 (;@5;)
              end
              loop  ;; label = @6
                local.get 2
                local.set 5
                local.get 4
                local.tee 6
                i32.const 20
                i32.add
                local.tee 2
                i32.load
                local.tee 4
                br_if 0 (;@6;)
                local.get 6
                i32.const 16
                i32.add
                local.set 2
                local.get 6
                i32.load offset=16
                local.tee 4
                br_if 0 (;@6;)
              end
              local.get 5
              i32.const 0
              i32.store
            end
            local.get 7
            i32.eqz
            br_if 0 (;@4;)
            block  ;; label = @5
              block  ;; label = @6
                local.get 3
                i32.load offset=28
                local.tee 4
                i32.const 2
                i32.shl
                i32.const 18064
                i32.add
                local.tee 2
                i32.load
                local.get 3
                i32.ne
                br_if 0 (;@6;)
                local.get 2
                local.get 6
                i32.store
                local.get 6
                br_if 1 (;@5;)
                i32.const 0
                i32.const 0
                i32.load offset=17764
                i32.const -2
                local.get 4
                i32.rotl
                i32.and
                i32.store offset=17764
                br 2 (;@4;)
              end
              local.get 7
              i32.const 16
              i32.const 20
              local.get 7
              i32.load offset=16
              local.get 3
              i32.eq
              select
              i32.add
              local.get 6
              i32.store
              local.get 6
              i32.eqz
              br_if 1 (;@4;)
            end
            local.get 6
            local.get 7
            i32.store offset=24
            block  ;; label = @5
              local.get 3
              i32.load offset=16
              local.tee 2
              i32.eqz
              br_if 0 (;@5;)
              local.get 6
              local.get 2
              i32.store offset=16
              local.get 2
              local.get 6
              i32.store offset=24
            end
            local.get 3
            i32.load offset=20
            local.tee 2
            i32.eqz
            br_if 0 (;@4;)
            local.get 6
            i32.const 20
            i32.add
            local.get 2
            i32.store
            local.get 2
            local.get 6
            i32.store offset=24
          end
          local.get 1
          local.get 0
          i32.add
          local.get 0
          i32.store
          local.get 1
          local.get 0
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 1
          i32.const 0
          i32.load offset=17780
          i32.ne
          br_if 1 (;@2;)
          i32.const 0
          local.get 0
          i32.store offset=17768
          return
        end
        local.get 3
        local.get 2
        i32.const -2
        i32.and
        i32.store offset=4
        local.get 1
        local.get 0
        i32.add
        local.get 0
        i32.store
        local.get 1
        local.get 0
        i32.const 1
        i32.or
        i32.store offset=4
      end
      block  ;; label = @2
        local.get 0
        i32.const 255
        i32.gt_u
        br_if 0 (;@2;)
        local.get 0
        i32.const 3
        i32.shr_u
        local.tee 2
        i32.const 3
        i32.shl
        i32.const 17800
        i32.add
        local.set 0
        block  ;; label = @3
          block  ;; label = @4
            i32.const 0
            i32.load offset=17760
            local.tee 4
            i32.const 1
            local.get 2
            i32.shl
            local.tee 2
            i32.and
            br_if 0 (;@4;)
            i32.const 0
            local.get 4
            local.get 2
            i32.or
            i32.store offset=17760
            local.get 0
            local.set 2
            br 1 (;@3;)
          end
          local.get 0
          i32.load offset=8
          local.set 2
        end
        local.get 2
        local.get 1
        i32.store offset=12
        local.get 0
        local.get 1
        i32.store offset=8
        local.get 1
        local.get 0
        i32.store offset=12
        local.get 1
        local.get 2
        i32.store offset=8
        return
      end
      i32.const 31
      local.set 2
      block  ;; label = @2
        local.get 0
        i32.const 16777215
        i32.gt_u
        br_if 0 (;@2;)
        local.get 0
        i32.const 8
        i32.shr_u
        local.tee 2
        local.get 2
        i32.const 1048320
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 8
        i32.and
        local.tee 2
        i32.shl
        local.tee 4
        local.get 4
        i32.const 520192
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 4
        i32.and
        local.tee 4
        i32.shl
        local.tee 6
        local.get 6
        i32.const 245760
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 2
        i32.and
        local.tee 6
        i32.shl
        i32.const 15
        i32.shr_u
        local.get 2
        local.get 4
        i32.or
        local.get 6
        i32.or
        i32.sub
        local.tee 2
        i32.const 1
        i32.shl
        local.get 0
        local.get 2
        i32.const 21
        i32.add
        i32.shr_u
        i32.const 1
        i32.and
        i32.or
        i32.const 28
        i32.add
        local.set 2
      end
      local.get 1
      i64.const 0
      i64.store offset=16 align=4
      local.get 1
      i32.const 28
      i32.add
      local.get 2
      i32.store
      local.get 2
      i32.const 2
      i32.shl
      i32.const 18064
      i32.add
      local.set 4
      block  ;; label = @2
        block  ;; label = @3
          i32.const 0
          i32.load offset=17764
          local.tee 6
          i32.const 1
          local.get 2
          i32.shl
          local.tee 3
          i32.and
          br_if 0 (;@3;)
          local.get 4
          local.get 1
          i32.store
          i32.const 0
          local.get 6
          local.get 3
          i32.or
          i32.store offset=17764
          local.get 1
          i32.const 24
          i32.add
          local.get 4
          i32.store
          local.get 1
          local.get 1
          i32.store offset=8
          local.get 1
          local.get 1
          i32.store offset=12
          br 1 (;@2;)
        end
        local.get 0
        i32.const 0
        i32.const 25
        local.get 2
        i32.const 1
        i32.shr_u
        i32.sub
        local.get 2
        i32.const 31
        i32.eq
        select
        i32.shl
        local.set 2
        local.get 4
        i32.load
        local.set 6
        block  ;; label = @3
          loop  ;; label = @4
            local.get 6
            local.tee 4
            i32.load offset=4
            i32.const -8
            i32.and
            local.get 0
            i32.eq
            br_if 1 (;@3;)
            local.get 2
            i32.const 29
            i32.shr_u
            local.set 6
            local.get 2
            i32.const 1
            i32.shl
            local.set 2
            local.get 4
            local.get 6
            i32.const 4
            i32.and
            i32.add
            i32.const 16
            i32.add
            local.tee 3
            i32.load
            local.tee 6
            br_if 0 (;@4;)
          end
          local.get 3
          local.get 1
          i32.store
          local.get 1
          i32.const 24
          i32.add
          local.get 4
          i32.store
          local.get 1
          local.get 1
          i32.store offset=12
          local.get 1
          local.get 1
          i32.store offset=8
          br 1 (;@2;)
        end
        local.get 4
        i32.load offset=8
        local.tee 0
        local.get 1
        i32.store offset=12
        local.get 4
        local.get 1
        i32.store offset=8
        local.get 1
        i32.const 24
        i32.add
        i32.const 0
        i32.store
        local.get 1
        local.get 4
        i32.store offset=12
        local.get 1
        local.get 0
        i32.store offset=8
      end
      i32.const 0
      i32.const 0
      i32.load offset=17792
      i32.const -1
      i32.add
      local.tee 1
      i32.const -1
      local.get 1
      select
      i32.store offset=17792
    end)
  (func $calloc (type 8) (param i32 i32) (result i32)
    (local i32 i64)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        br_if 0 (;@2;)
        i32.const 0
        local.set 2
        br 1 (;@1;)
      end
      local.get 0
      i64.extend_i32_u
      local.get 1
      i64.extend_i32_u
      i64.mul
      local.tee 3
      i32.wrap_i64
      local.set 2
      local.get 1
      local.get 0
      i32.or
      i32.const 65536
      i32.lt_u
      br_if 0 (;@1;)
      i32.const -1
      local.get 2
      local.get 3
      i64.const 32
      i64.shr_u
      i32.wrap_i64
      i32.const 0
      i32.ne
      select
      local.set 2
    end
    block  ;; label = @1
      local.get 2
      call $dlmalloc
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const -4
      i32.add
      i32.load8_u
      i32.const 3
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      local.get 2
      call $memset
      drop
    end
    local.get 0)
  (func $pselect (type 5) (param i32 i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64)
    global.get $__stack_pointer
    i32.const 4128
    i32.sub
    local.tee 6
    local.set 7
    local.get 6
    global.set $__stack_pointer
    i32.const -1
    local.set 8
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const -1
        i32.gt_s
        br_if 0 (;@2;)
        i32.const 0
        i32.const 28
        i32.store offset=18256
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.load
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.const 52
        i32.store offset=18256
        i32.const -1
        local.set 8
        br 1 (;@1;)
      end
      i32.const 0
      local.set 8
      local.get 7
      i32.const 0
      i32.store offset=24
      local.get 6
      local.set 9
      local.get 6
      local.get 1
      local.get 7
      i32.const 24
      i32.add
      local.get 1
      select
      local.tee 10
      i32.load
      local.get 2
      local.get 7
      i32.const 24
      i32.add
      local.get 2
      select
      local.tee 11
      i32.load
      i32.add
      i32.const 48
      i32.mul
      i32.sub
      i32.const -48
      i32.add
      local.tee 12
      local.tee 13
      global.set $__stack_pointer
      block  ;; label = @2
        local.get 10
        i32.load
        local.tee 1
        i32.eqz
        br_if 0 (;@2;)
        local.get 10
        i32.const 4
        i32.add
        local.set 3
        i32.const 0
        local.set 8
        loop  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.load
            local.tee 2
            local.get 0
            i32.ge_s
            br_if 0 (;@4;)
            local.get 12
            local.get 8
            i32.const 48
            i32.mul
            i32.add
            local.tee 6
            i32.const 0
            i32.store offset=9 align=1
            local.get 6
            i32.const 1
            i32.store8 offset=8
            local.get 6
            local.get 2
            i64.extend_i32_s
            i64.store
            local.get 6
            i64.const 0
            i64.store offset=20 align=4
            local.get 6
            i32.const 12
            i32.add
            i32.const 0
            i32.store align=1
            local.get 6
            i32.const 16
            i32.add
            local.get 2
            i32.store
            local.get 6
            i32.const 28
            i32.add
            i64.const 0
            i64.store align=4
            local.get 6
            i32.const 36
            i32.add
            i64.const 0
            i64.store align=4
            local.get 6
            i32.const 44
            i32.add
            i32.const 0
            i32.store
            local.get 8
            i32.const 1
            i32.add
            local.set 8
          end
          local.get 3
          i32.const 4
          i32.add
          local.set 3
          local.get 1
          i32.const -1
          i32.add
          local.tee 1
          br_if 0 (;@3;)
        end
      end
      block  ;; label = @2
        local.get 11
        i32.load
        local.tee 1
        i32.eqz
        br_if 0 (;@2;)
        local.get 11
        i32.const 4
        i32.add
        local.set 3
        loop  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.load
            local.tee 2
            local.get 0
            i32.ge_s
            br_if 0 (;@4;)
            local.get 12
            local.get 8
            i32.const 48
            i32.mul
            i32.add
            local.tee 6
            i32.const 0
            i32.store offset=9 align=1
            local.get 6
            i32.const 2
            i32.store8 offset=8
            local.get 6
            local.get 2
            i64.extend_i32_s
            i64.store
            local.get 6
            i64.const 0
            i64.store offset=20 align=4
            local.get 6
            i32.const 12
            i32.add
            i32.const 0
            i32.store align=1
            local.get 6
            i32.const 16
            i32.add
            local.get 2
            i32.store
            local.get 6
            i32.const 28
            i32.add
            i64.const 0
            i64.store align=4
            local.get 6
            i32.const 36
            i32.add
            i64.const 0
            i64.store align=4
            local.get 6
            i32.const 44
            i32.add
            i32.const 0
            i32.store
            local.get 8
            i32.const 1
            i32.add
            local.set 8
          end
          local.get 3
          i32.const 4
          i32.add
          local.set 3
          local.get 1
          i32.const -1
          i32.add
          local.tee 1
          br_if 0 (;@3;)
        end
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 4
                    i32.eqz
                    br_if 0 (;@8;)
                    i64.const 0
                    local.set 14
                    local.get 12
                    local.get 8
                    i32.const 48
                    i32.mul
                    i32.add
                    local.tee 6
                    i64.const 0
                    i64.store
                    local.get 6
                    i32.const 40
                    i32.add
                    i64.const 0
                    i64.store
                    local.get 6
                    i32.const 32
                    i32.add
                    i64.const 0
                    i64.store
                    local.get 6
                    i32.const 24
                    i32.add
                    local.tee 3
                    i64.const 0
                    i64.store
                    local.get 6
                    i32.const 16
                    i32.add
                    i64.const 0
                    i64.store
                    local.get 6
                    i32.const 8
                    i32.add
                    i64.const 0
                    i64.store
                    local.get 4
                    i32.load offset=8
                    local.tee 6
                    i32.const 999999999
                    i32.gt_u
                    br_if 1 (;@7;)
                    local.get 8
                    i32.const 1
                    i32.add
                    local.set 8
                    block  ;; label = @9
                      local.get 4
                      i64.load
                      local.tee 15
                      i64.const 0
                      i64.lt_s
                      br_if 0 (;@9;)
                      local.get 7
                      i32.const 0
                      i32.store offset=16
                      local.get 7
                      local.get 15
                      i64.const 0
                      i64.const 1000000000
                      i64.const 0
                      local.get 7
                      i32.const 16
                      i32.add
                      call $__muloti4
                      local.get 3
                      local.get 7
                      i64.load
                      local.tee 15
                      i64.store
                      i64.const -1
                      local.set 14
                      i64.const 0
                      local.get 7
                      i32.const 8
                      i32.add
                      i64.load
                      local.tee 16
                      i64.const 1
                      i64.and
                      local.tee 17
                      i64.sub
                      local.get 16
                      i64.xor
                      i64.const 0
                      i64.ne
                      local.get 7
                      i32.load offset=16
                      i32.const 0
                      i32.ne
                      i32.or
                      br_if 0 (;@9;)
                      local.get 15
                      local.get 15
                      i64.const -512
                      i64.and
                      i64.xor
                      local.get 17
                      i64.or
                      i64.const 0
                      i64.ne
                      br_if 0 (;@9;)
                      local.get 3
                      local.get 15
                      local.get 6
                      i64.extend_i32_u
                      i64.add
                      local.tee 17
                      i64.store
                      i64.const 0
                      local.get 17
                      local.get 15
                      i64.lt_u
                      i64.extend_i32_u
                      local.get 16
                      i64.const 1
                      i64.and
                      i64.sub
                      local.tee 15
                      i64.const 1
                      i64.and
                      i64.sub
                      local.tee 16
                      local.get 15
                      i64.xor
                      i64.const 0
                      i64.ne
                      br_if 0 (;@9;)
                      local.get 16
                      i64.const -1
                      i64.gt_s
                      br_if 1 (;@8;)
                    end
                    local.get 3
                    local.get 14
                    i64.store
                  end
                  local.get 13
                  local.get 8
                  i32.const 5
                  i32.shl
                  i32.sub
                  local.tee 3
                  global.set $__stack_pointer
                  block  ;; label = @8
                    local.get 12
                    local.get 3
                    local.get 8
                    local.get 7
                    i32.const 20
                    i32.add
                    call $__wasi_poll_oneoff
                    local.tee 6
                    br_if 0 (;@8;)
                    local.get 7
                    i32.load offset=20
                    local.tee 0
                    i32.eqz
                    br_if 4 (;@4;)
                    local.get 3
                    i32.const 10
                    i32.add
                    local.set 6
                    local.get 0
                    local.set 8
                    loop  ;; label = @9
                      block  ;; label = @10
                        local.get 6
                        i32.load8_u
                        i32.const -1
                        i32.add
                        i32.const 255
                        i32.and
                        i32.const 1
                        i32.gt_u
                        br_if 0 (;@10;)
                        local.get 6
                        i32.const -2
                        i32.add
                        i32.load16_u
                        i32.const 8
                        i32.ne
                        br_if 0 (;@10;)
                        i32.const 0
                        i32.const 8
                        i32.store offset=18256
                        br 4 (;@6;)
                      end
                      local.get 6
                      i32.const 32
                      i32.add
                      local.set 6
                      local.get 8
                      i32.const -1
                      i32.add
                      local.tee 8
                      br_if 0 (;@9;)
                    end
                    i32.const 0
                    local.set 6
                    local.get 10
                    i32.const 0
                    i32.store
                    local.get 11
                    i32.const 0
                    i32.store
                    local.get 0
                    i32.eqz
                    br_if 5 (;@3;)
                    loop  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 3
                            i32.const 10
                            i32.add
                            i32.load8_u
                            i32.const -1
                            i32.add
                            br_table 0 (;@12;) 1 (;@11;) 2 (;@10;)
                          end
                          local.get 10
                          local.get 10
                          i32.load
                          local.tee 6
                          i32.const 1
                          i32.add
                          i32.store
                          local.get 10
                          local.get 6
                          i32.const 2
                          i32.shl
                          i32.add
                          i32.const 4
                          i32.add
                          local.get 3
                          i64.load
                          i64.store32
                          br 1 (;@10;)
                        end
                        local.get 11
                        local.get 11
                        i32.load
                        local.tee 6
                        i32.const 1
                        i32.add
                        i32.store
                        local.get 11
                        local.get 6
                        i32.const 2
                        i32.shl
                        i32.add
                        i32.const 4
                        i32.add
                        local.get 3
                        i64.load
                        i64.store32
                      end
                      local.get 3
                      i32.const 32
                      i32.add
                      local.set 3
                      local.get 0
                      i32.const -1
                      i32.add
                      local.tee 0
                      i32.eqz
                      br_if 4 (;@5;)
                      br 0 (;@9;)
                    end
                  end
                  i32.const 0
                  local.get 6
                  i32.const 58
                  local.get 8
                  select
                  i32.store offset=18256
                  br 1 (;@6;)
                end
                i32.const 0
                i32.const 28
                i32.store offset=18256
              end
              i32.const -1
              local.set 8
              br 3 (;@2;)
            end
            local.get 11
            i32.load
            local.set 6
            br 1 (;@3;)
          end
          i32.const 0
          local.set 6
          local.get 10
          i32.const 0
          i32.store
          local.get 11
          i32.const 0
          i32.store
        end
        local.get 6
        local.get 10
        i32.load
        i32.add
        local.set 8
      end
      local.get 9
      drop
    end
    local.get 7
    i32.const 4128
    i32.add
    global.set $__stack_pointer
    local.get 8)
  (func $select (type 15) (param i32 i32 i32 i32 i32) (result i32)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 4
          i64.load offset=8
          local.tee 6
          i64.const 1000000
          i64.lt_u
          br_if 0 (;@3;)
          i32.const 0
          i32.const 28
          i32.store offset=18256
          i32.const -1
          local.set 4
          br 2 (;@1;)
        end
        local.get 5
        local.get 4
        i64.load
        i64.store
        local.get 5
        local.get 6
        i32.wrap_i64
        i32.const 1000
        i32.mul
        i32.store offset=8
        local.get 0
        local.get 1
        local.get 2
        local.get 3
        local.get 5
        i32.const 0
        call $pselect
        local.set 4
        br 1 (;@1;)
      end
      local.get 0
      local.get 1
      local.get 2
      local.get 3
      i32.const 0
      i32.const 0
      call $pselect
      local.set 4
    end
    local.get 5
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 4)
  (func $recv (type 4) (param i32 i32 i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.const 4
        i32.lt_u
        br_if 0 (;@2;)
        i32.const 0
        i32.const 58
        i32.store offset=18256
        i32.const -1
        local.set 3
        br 1 (;@1;)
      end
      local.get 4
      local.get 2
      i32.store offset=12
      local.get 4
      local.get 1
      i32.store offset=8
      block  ;; label = @2
        local.get 0
        local.get 4
        i32.const 8
        i32.add
        i32.const 1
        local.get 3
        i32.const 65535
        i32.and
        local.get 4
        i32.const 4
        i32.add
        local.get 4
        i32.const 2
        i32.add
        call $__wasi_sock_recv
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        local.get 3
        i32.store offset=18256
        i32.const -1
        local.set 3
        br 1 (;@1;)
      end
      local.get 4
      i32.load offset=4
      local.set 3
    end
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 3)
  (func $time (type 16) (param i32) (result i64)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i64.const 0
    i64.store offset=8
    i32.const 0
    i64.const 1000000000
    local.get 1
    i32.const 8
    i32.add
    call $__wasi_clock_time_get
    drop
    local.get 1
    i64.load offset=8
    i64.const 1000000000
    i64.div_u
    local.set 2
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      i64.store
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2)
  (func $close (type 3) (param i32) (result i32)
    block  ;; label = @1
      local.get 0
      call $__wasi_fd_close
      local.tee 0
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    i32.const 0
    local.get 0
    i32.store offset=18256
    i32.const -1)
  (func $__wasi_clock_time_get (type 7) (param i32 i64 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $__imported_wasi_snapshot_preview1_clock_time_get
    i32.const 65535
    i32.and)
  (func $__wasi_fd_close (type 3) (param i32) (result i32)
    local.get 0
    call $__imported_wasi_snapshot_preview1_fd_close
    i32.const 65535
    i32.and)
  (func $__wasi_fd_fdstat_get (type 8) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $__imported_wasi_snapshot_preview1_fd_fdstat_get
    i32.const 65535
    i32.and)
  (func $__wasi_fd_seek (type 9) (param i32 i64 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $__imported_wasi_snapshot_preview1_fd_seek
    i32.const 65535
    i32.and)
  (func $__wasi_fd_write (type 4) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $__imported_wasi_snapshot_preview1_fd_write
    i32.const 65535
    i32.and)
  (func $__wasi_poll_oneoff (type 4) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $__imported_wasi_snapshot_preview1_poll_oneoff
    i32.const 65535
    i32.and)
  (func $__wasi_proc_exit (type 10) (param i32)
    local.get 0
    call $__imported_wasi_snapshot_preview1_proc_exit
    unreachable)
  (func $__wasi_sock_recv (type 5) (param i32 i32 i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    local.get 5
    call $__imported_wasi_snapshot_preview1_sock_recv
    i32.const 65535
    i32.and)
  (func $abort (type 6)
    unreachable
    unreachable)
  (func $sbrk (type 3) (param i32) (result i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      memory.size
      i32.const 16
      i32.shl
      return
    end
    block  ;; label = @1
      local.get 0
      i32.const 65535
      i32.and
      br_if 0 (;@1;)
      local.get 0
      i32.const -1
      i32.le_s
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 0
        i32.const 16
        i32.shr_u
        memory.grow
        local.tee 0
        i32.const -1
        i32.ne
        br_if 0 (;@2;)
        i32.const 0
        i32.const 48
        i32.store offset=18256
        i32.const -1
        return
      end
      local.get 0
      i32.const 16
      i32.shl
      return
    end
    call $abort
    unreachable)
  (func $__getopt_msg (type 12) (param i32 i32 i32 i32)
    local.get 1
    call $__lctrans_cur
    local.set 1
    block  ;; label = @1
      local.get 0
      i32.const 10104
      call $fputs
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      local.get 1
      local.get 1
      call $strlen
      i32.const 1
      i32.const 10104
      call $fwrite
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.const 1
      local.get 3
      i32.const 10104
      call $fwrite
      local.get 3
      i32.ne
      br_if 0 (;@1;)
      i32.const 10
      i32.const 10104
      call $putc
      drop
    end)
  (func $getopt (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        i32.load offset=10096
        local.tee 4
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.load offset=18260
        i32.eqz
        br_if 1 (;@1;)
      end
      i32.const 1
      local.set 4
      i32.const 0
      i32.const 1
      i32.store offset=10096
      i32.const 0
      i32.const 0
      i32.store offset=18264
      i32.const 0
      i32.const 0
      i32.store offset=18260
    end
    i32.const -1
    local.set 5
    block  ;; label = @1
      local.get 4
      local.get 0
      i32.ge_s
      br_if 0 (;@1;)
      local.get 1
      local.get 4
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.tee 6
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 6
        i32.load8_u
        i32.const 45
        i32.eq
        br_if 0 (;@2;)
        local.get 2
        i32.load8_u
        i32.const 45
        i32.ne
        br_if 1 (;@1;)
        i32.const 0
        local.get 6
        i32.store offset=18268
        i32.const 1
        local.set 5
        i32.const 0
        local.get 4
        i32.const 1
        i32.add
        i32.store offset=10096
        br 1 (;@1;)
      end
      local.get 6
      i32.load8_u offset=1
      local.tee 7
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 7
        i32.const 45
        i32.ne
        br_if 0 (;@2;)
        local.get 6
        i32.load8_u offset=2
        br_if 0 (;@2;)
        i32.const 0
        local.get 4
        i32.const 1
        i32.add
        i32.store offset=10096
        br 1 (;@1;)
      end
      block  ;; label = @2
        i32.const 0
        i32.load offset=18264
        local.tee 4
        br_if 0 (;@2;)
        i32.const 1
        local.set 4
        i32.const 0
        i32.const 1
        i32.store offset=18264
      end
      block  ;; label = @2
        local.get 3
        i32.const 12
        i32.add
        local.get 6
        local.get 4
        i32.add
        i32.const 4
        call $mbtowc
        local.tee 8
        i32.const -1
        i32.gt_s
        br_if 0 (;@2;)
        local.get 3
        i32.const 65533
        i32.store offset=12
        i32.const 1
        local.set 8
      end
      i32.const 0
      i32.const 0
      i32.load offset=18264
      local.tee 4
      local.get 8
      i32.add
      local.tee 6
      i32.store offset=18264
      block  ;; label = @2
        local.get 1
        i32.const 0
        i32.load offset=10096
        local.tee 7
        i32.const 2
        i32.shl
        i32.add
        i32.load
        local.tee 5
        local.get 6
        i32.add
        i32.load8_u
        br_if 0 (;@2;)
        i32.const 0
        local.get 7
        i32.const 1
        i32.add
        i32.store offset=10096
        i32.const 0
        i32.const 0
        i32.store offset=18264
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.load8_u
          i32.const -43
          i32.add
          br_table 0 (;@3;) 1 (;@2;) 0 (;@3;) 1 (;@2;)
        end
        local.get 2
        i32.const 1
        i32.add
        local.set 2
      end
      local.get 5
      local.get 4
      i32.add
      local.set 9
      i32.const 0
      local.set 4
      local.get 3
      i32.const 0
      i32.store offset=8
      block  ;; label = @2
        loop  ;; label = @3
          local.get 3
          i32.const 8
          i32.add
          local.get 2
          local.get 4
          i32.add
          i32.const 4
          call $mbtowc
          local.tee 6
          i32.const 1
          local.get 6
          i32.const 1
          i32.gt_s
          select
          local.get 4
          i32.add
          local.set 4
          local.get 3
          i32.load offset=12
          local.set 7
          local.get 3
          i32.load offset=8
          local.set 5
          local.get 6
          i32.eqz
          br_if 1 (;@2;)
          local.get 5
          local.get 7
          i32.ne
          br_if 0 (;@3;)
        end
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 5
          local.get 7
          i32.ne
          br_if 0 (;@3;)
          local.get 7
          i32.const 58
          i32.ne
          br_if 1 (;@2;)
        end
        i32.const 0
        local.get 7
        i32.store offset=18272
        i32.const 63
        local.set 5
        local.get 2
        i32.load8_u
        i32.const 58
        i32.eq
        br_if 1 (;@1;)
        i32.const 0
        i32.load offset=10100
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        i32.load
        i32.const 4620
        local.get 9
        local.get 8
        call $__getopt_msg
        br 1 (;@1;)
      end
      local.get 2
      local.get 4
      i32.add
      local.tee 4
      i32.load8_u
      i32.const 58
      i32.ne
      br_if 0 (;@1;)
      i32.const 0
      i32.const 0
      i32.store offset=18268
      i32.const 0
      i32.load offset=10096
      local.set 6
      i32.const 0
      i32.load offset=18264
      local.set 7
      block  ;; label = @2
        block  ;; label = @3
          local.get 4
          i32.const 1
          i32.add
          i32.load8_u
          i32.const 58
          i32.ne
          br_if 0 (;@3;)
          local.get 7
          br_if 0 (;@3;)
          local.get 6
          local.set 4
          br 1 (;@2;)
        end
        i32.const 0
        local.get 6
        i32.const 1
        i32.add
        local.tee 4
        i32.store offset=10096
        i32.const 0
        local.get 1
        local.get 6
        i32.const 2
        i32.shl
        i32.add
        i32.load
        local.get 7
        i32.add
        i32.store offset=18268
        i32.const 0
        i32.const 0
        i32.store offset=18264
      end
      local.get 4
      local.get 0
      i32.le_s
      br_if 0 (;@1;)
      i32.const 0
      local.get 5
      i32.store offset=18272
      i32.const 58
      local.set 5
      local.get 2
      i32.load8_u
      i32.const 58
      i32.eq
      br_if 0 (;@1;)
      i32.const 63
      local.set 5
      i32.const 0
      i32.load offset=10100
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.load
      i32.const 4588
      local.get 9
      local.get 8
      call $__getopt_msg
    end
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 5)
  (func $htons (type 3) (param i32) (result i32)
    local.get 0
    i32.const 8
    i32.shl
    local.get 0
    i32.const 8
    i32.shr_u
    i32.or
    i32.const 65535
    i32.and)
  (func $ntohs (type 3) (param i32) (result i32)
    local.get 0
    i32.const 8
    i32.shl
    local.get 0
    i32.const 8
    i32.shr_u
    i32.or
    i32.const 65535
    i32.and)
  (func $inet_pton (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    i32.const -1
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  i32.const -1
                  i32.add
                  br_table 0 (;@7;) 2 (;@5;) 1 (;@6;)
                end
                i32.const 0
                local.set 4
                local.get 1
                i32.load8_s
                local.tee 5
                i32.const -48
                i32.add
                local.tee 0
                i32.const 9
                i32.gt_u
                br_if 5 (;@1;)
                i32.const 1
                local.set 6
                local.get 1
                i32.load8_s offset=1
                i32.const -48
                i32.add
                local.tee 7
                i32.const 10
                i32.lt_u
                br_if 2 (;@4;)
                br 4 (;@2;)
              end
              i32.const 0
              i32.const 5
              i32.store offset=18256
              br 4 (;@1;)
            end
            block  ;; label = @5
              local.get 1
              i32.load8_u
              local.tee 5
              i32.const 58
              i32.ne
              br_if 0 (;@5;)
              i32.const 0
              local.set 4
              local.get 1
              i32.load8_u offset=1
              i32.const 58
              i32.ne
              br_if 4 (;@1;)
              local.get 1
              i32.const 1
              i32.add
              local.set 1
            end
            i32.const -1
            local.set 6
            i32.const 0
            local.set 0
            block  ;; label = @5
              loop  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 5
                            i32.const 255
                            i32.and
                            i32.const 58
                            i32.ne
                            br_if 0 (;@12;)
                            local.get 6
                            i32.const 0
                            i32.lt_s
                            br_if 1 (;@11;)
                          end
                          block  ;; label = @12
                            local.get 5
                            i32.const 24
                            i32.shl
                            i32.const 24
                            i32.shr_s
                            local.tee 7
                            i32.const -48
                            i32.add
                            local.tee 5
                            i32.const 10
                            i32.lt_u
                            br_if 0 (;@12;)
                            i32.const 0
                            local.set 4
                            local.get 7
                            i32.const 32
                            i32.or
                            local.tee 5
                            i32.const 87
                            i32.lt_s
                            br_if 11 (;@1;)
                            local.get 5
                            i32.const -97
                            i32.add
                            i32.const 5
                            i32.gt_u
                            br_if 11 (;@1;)
                            local.get 5
                            i32.const -87
                            i32.add
                            local.set 5
                          end
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 1
                              i32.load8_s offset=1
                              local.tee 7
                              i32.const -48
                              i32.add
                              local.tee 4
                              i32.const 10
                              i32.lt_u
                              br_if 0 (;@13;)
                              i32.const 1
                              local.set 4
                              local.get 7
                              i32.const 32
                              i32.or
                              local.tee 7
                              i32.const 87
                              i32.lt_s
                              br_if 1 (;@12;)
                              local.get 7
                              i32.const -97
                              i32.add
                              i32.const 5
                              i32.gt_u
                              br_if 1 (;@12;)
                              local.get 7
                              i32.const -87
                              i32.add
                              local.set 4
                            end
                            local.get 4
                            local.get 5
                            i32.const 4
                            i32.shl
                            i32.add
                            local.set 5
                            block  ;; label = @13
                              local.get 1
                              i32.load8_s offset=2
                              local.tee 7
                              i32.const -48
                              i32.add
                              local.tee 4
                              i32.const 10
                              i32.lt_u
                              br_if 0 (;@13;)
                              i32.const 2
                              local.set 4
                              local.get 7
                              i32.const 32
                              i32.or
                              local.tee 7
                              i32.const 87
                              i32.lt_s
                              br_if 1 (;@12;)
                              local.get 7
                              i32.const -97
                              i32.add
                              i32.const 5
                              i32.gt_u
                              br_if 1 (;@12;)
                              local.get 7
                              i32.const -87
                              i32.add
                              local.set 4
                            end
                            local.get 4
                            local.get 5
                            i32.const 4
                            i32.shl
                            i32.add
                            local.set 5
                            block  ;; label = @13
                              local.get 1
                              i32.load8_s offset=3
                              local.tee 8
                              i32.const -48
                              i32.add
                              local.tee 7
                              i32.const 10
                              i32.lt_u
                              br_if 0 (;@13;)
                              i32.const 3
                              local.set 4
                              local.get 8
                              i32.const 32
                              i32.or
                              local.tee 7
                              i32.const 87
                              i32.lt_s
                              br_if 1 (;@12;)
                              local.get 7
                              i32.const -97
                              i32.add
                              i32.const 5
                              i32.gt_u
                              br_if 1 (;@12;)
                              local.get 7
                              i32.const -87
                              i32.add
                              local.set 7
                            end
                            i32.const 4
                            local.set 4
                            local.get 7
                            local.get 5
                            i32.const 4
                            i32.shl
                            i32.add
                            local.set 5
                          end
                          local.get 3
                          local.get 0
                          i32.const 7
                          i32.and
                          i32.const 1
                          i32.shl
                          i32.or
                          local.get 5
                          i32.store16
                          local.get 1
                          local.get 4
                          i32.add
                          local.tee 7
                          i32.load8_u
                          local.tee 5
                          br_if 1 (;@10;)
                          i32.const 1
                          local.set 7
                          local.get 6
                          i32.const -1
                          i32.gt_s
                          br_if 2 (;@9;)
                          i32.const 0
                          local.set 4
                          local.get 0
                          i32.const 7
                          i32.ne
                          br_if 10 (;@1;)
                          br 2 (;@9;)
                        end
                        i32.const 1
                        local.set 7
                        local.get 3
                        local.get 0
                        i32.const 7
                        i32.and
                        i32.const 1
                        i32.shl
                        i32.or
                        i32.const 0
                        i32.store16
                        local.get 1
                        i32.const 1
                        i32.add
                        local.set 4
                        block  ;; label = @11
                          local.get 1
                          i32.load8_u offset=1
                          local.tee 5
                          br_if 0 (;@11;)
                          local.get 4
                          local.set 1
                          local.get 0
                          local.set 6
                          br 2 (;@9;)
                        end
                        local.get 0
                        local.set 6
                        local.get 0
                        i32.const 7
                        i32.ne
                        br_if 3 (;@7;)
                        i32.const 0
                        local.set 4
                        br 9 (;@1;)
                      end
                      i32.const 0
                      local.set 4
                      local.get 0
                      i32.const 7
                      i32.eq
                      br_if 8 (;@1;)
                      local.get 5
                      i32.const 58
                      i32.eq
                      br_if 1 (;@8;)
                      local.get 5
                      i32.const 46
                      i32.ne
                      br_if 8 (;@1;)
                      block  ;; label = @10
                        local.get 0
                        i32.const 5
                        i32.gt_u
                        br_if 0 (;@10;)
                        local.get 6
                        i32.const 0
                        i32.lt_s
                        br_if 9 (;@1;)
                      end
                      local.get 0
                      i32.const 1
                      i32.add
                      local.set 0
                      i32.const 0
                      local.set 7
                    end
                    block  ;; label = @9
                      local.get 6
                      i32.const 0
                      i32.lt_s
                      br_if 0 (;@9;)
                      local.get 3
                      local.get 6
                      i32.const 1
                      i32.shl
                      i32.add
                      local.tee 5
                      i32.const 7
                      local.get 0
                      i32.sub
                      local.tee 4
                      i32.const 1
                      i32.shl
                      i32.add
                      local.get 5
                      local.get 0
                      local.get 6
                      i32.sub
                      i32.const 1
                      i32.shl
                      i32.const 2
                      i32.add
                      call $memmove
                      drop
                      local.get 4
                      i32.const 1
                      i32.lt_s
                      br_if 0 (;@9;)
                      local.get 5
                      i32.const 0
                      i32.const 14
                      local.get 0
                      i32.const 1
                      i32.shl
                      i32.sub
                      call $memset
                      drop
                    end
                    local.get 2
                    local.get 3
                    i32.load16_u
                    local.tee 0
                    i32.const 8
                    i32.shl
                    local.get 0
                    i32.const 8
                    i32.shr_u
                    i32.or
                    i32.store16 align=1
                    local.get 2
                    local.get 3
                    i32.load16_u offset=2
                    local.tee 0
                    i32.const 8
                    i32.shl
                    local.get 0
                    i32.const 8
                    i32.shr_u
                    i32.or
                    i32.store16 offset=2 align=1
                    local.get 2
                    local.get 3
                    i32.load16_u offset=4
                    local.tee 0
                    i32.const 8
                    i32.shl
                    local.get 0
                    i32.const 8
                    i32.shr_u
                    i32.or
                    i32.store16 offset=4 align=1
                    local.get 2
                    local.get 3
                    i32.load16_u offset=6
                    local.tee 0
                    i32.const 8
                    i32.shl
                    local.get 0
                    i32.const 8
                    i32.shr_u
                    i32.or
                    i32.store16 offset=6 align=1
                    local.get 2
                    local.get 3
                    i32.load16_u offset=8
                    local.tee 0
                    i32.const 8
                    i32.shl
                    local.get 0
                    i32.const 8
                    i32.shr_u
                    i32.or
                    i32.store16 offset=8 align=1
                    local.get 2
                    local.get 3
                    i32.load16_u offset=10
                    local.tee 0
                    i32.const 8
                    i32.shl
                    local.get 0
                    i32.const 8
                    i32.shr_u
                    i32.or
                    i32.store16 offset=10 align=1
                    local.get 2
                    local.get 3
                    i32.load16_u offset=12
                    local.tee 0
                    i32.const 8
                    i32.shl
                    local.get 0
                    i32.const 8
                    i32.shr_u
                    i32.or
                    i32.store16 offset=12 align=1
                    local.get 2
                    local.get 3
                    i32.load16_u offset=14
                    local.tee 0
                    i32.const 8
                    i32.shl
                    local.get 0
                    i32.const 8
                    i32.shr_u
                    i32.or
                    i32.store16 offset=14 align=1
                    i32.const 1
                    local.set 4
                    local.get 7
                    br_if 7 (;@1;)
                    i32.const 0
                    local.set 4
                    local.get 1
                    i32.load8_s
                    local.tee 5
                    i32.const -48
                    i32.add
                    local.tee 0
                    i32.const 9
                    i32.gt_u
                    br_if 7 (;@1;)
                    i32.const 1
                    local.set 6
                    local.get 1
                    i32.load8_s offset=1
                    i32.const -48
                    i32.add
                    local.tee 7
                    i32.const 10
                    i32.lt_u
                    br_if 3 (;@5;)
                    br 5 (;@3;)
                  end
                  local.get 7
                  i32.const 1
                  i32.add
                  local.tee 4
                  i32.load8_u
                  local.set 5
                end
                local.get 0
                i32.const 1
                i32.add
                local.set 0
                local.get 4
                local.set 1
                br 0 (;@6;)
              end
            end
            local.get 5
            i32.const 48
            i32.eq
            br_if 3 (;@1;)
            local.get 1
            i32.load8_s offset=2
            i32.const -48
            i32.add
            local.tee 5
            local.get 7
            local.get 0
            i32.const 10
            i32.mul
            i32.add
            local.tee 0
            i32.const 10
            i32.mul
            i32.add
            local.get 0
            local.get 5
            i32.const 10
            i32.lt_u
            local.tee 5
            select
            local.tee 0
            i32.const 255
            i32.gt_s
            br_if 3 (;@1;)
            i32.const 3
            i32.const 2
            local.get 5
            select
            local.set 6
            br 1 (;@3;)
          end
          local.get 5
          i32.const 48
          i32.eq
          br_if 2 (;@1;)
          local.get 1
          i32.load8_s offset=2
          i32.const -48
          i32.add
          local.tee 5
          local.get 7
          local.get 0
          i32.const 10
          i32.mul
          i32.add
          local.tee 0
          i32.const 10
          i32.mul
          i32.add
          local.get 0
          local.get 5
          i32.const 10
          i32.lt_u
          local.tee 5
          select
          local.tee 0
          i32.const 255
          i32.gt_s
          br_if 2 (;@1;)
          i32.const 3
          i32.const 2
          local.get 5
          select
          local.set 6
          br 1 (;@2;)
        end
        local.get 2
        local.get 0
        i32.store8 offset=12
        local.get 1
        local.get 6
        i32.add
        local.tee 1
        i32.load8_u
        i32.const 46
        i32.ne
        br_if 1 (;@1;)
        i32.const 1
        local.set 5
        local.get 1
        i32.const 1
        i32.add
        local.tee 1
        i32.load8_s
        local.tee 6
        i32.const -48
        i32.add
        local.tee 0
        i32.const 10
        i32.ge_u
        br_if 1 (;@1;)
        block  ;; label = @3
          local.get 1
          i32.load8_s offset=1
          i32.const -48
          i32.add
          local.tee 7
          i32.const 9
          i32.gt_u
          br_if 0 (;@3;)
          local.get 6
          i32.const 48
          i32.eq
          br_if 2 (;@1;)
          local.get 1
          i32.load8_s offset=2
          i32.const -48
          i32.add
          local.tee 5
          local.get 7
          local.get 0
          i32.const 10
          i32.mul
          i32.add
          local.tee 0
          i32.const 10
          i32.mul
          i32.add
          local.get 0
          local.get 5
          i32.const 10
          i32.lt_u
          local.tee 5
          select
          local.tee 0
          i32.const 255
          i32.gt_s
          br_if 2 (;@1;)
          i32.const 3
          i32.const 2
          local.get 5
          select
          local.set 5
        end
        local.get 2
        local.get 0
        i32.store8 offset=13
        local.get 1
        local.get 5
        i32.add
        local.tee 1
        i32.load8_u
        i32.const 46
        i32.ne
        br_if 1 (;@1;)
        i32.const 1
        local.set 5
        local.get 1
        i32.const 1
        i32.add
        local.tee 1
        i32.load8_s
        local.tee 6
        i32.const -48
        i32.add
        local.tee 0
        i32.const 9
        i32.gt_u
        br_if 1 (;@1;)
        block  ;; label = @3
          local.get 1
          i32.load8_s offset=1
          i32.const -48
          i32.add
          local.tee 7
          i32.const 9
          i32.gt_u
          br_if 0 (;@3;)
          local.get 6
          i32.const 48
          i32.eq
          br_if 2 (;@1;)
          local.get 1
          i32.load8_s offset=2
          i32.const -48
          i32.add
          local.tee 5
          local.get 7
          local.get 0
          i32.const 10
          i32.mul
          i32.add
          local.tee 0
          i32.const 10
          i32.mul
          i32.add
          local.get 0
          local.get 5
          i32.const 10
          i32.lt_u
          local.tee 5
          select
          local.tee 0
          i32.const 255
          i32.gt_s
          br_if 2 (;@1;)
          i32.const 3
          i32.const 2
          local.get 5
          select
          local.set 5
        end
        local.get 2
        local.get 0
        i32.store8 offset=14
        local.get 1
        local.get 5
        i32.add
        local.tee 1
        i32.load8_u
        i32.const 46
        i32.ne
        br_if 1 (;@1;)
        i32.const 1
        local.set 5
        local.get 1
        i32.const 1
        i32.add
        local.tee 1
        i32.load8_s
        local.tee 6
        i32.const -48
        i32.add
        local.tee 0
        i32.const 9
        i32.gt_u
        br_if 1 (;@1;)
        block  ;; label = @3
          local.get 1
          i32.load8_s offset=1
          i32.const -48
          i32.add
          local.tee 7
          i32.const 9
          i32.gt_u
          br_if 0 (;@3;)
          local.get 6
          i32.const 48
          i32.eq
          br_if 2 (;@1;)
          local.get 1
          i32.load8_s offset=2
          i32.const -48
          i32.add
          local.tee 5
          local.get 7
          local.get 0
          i32.const 10
          i32.mul
          i32.add
          local.tee 0
          i32.const 10
          i32.mul
          i32.add
          local.get 0
          local.get 5
          i32.const 10
          i32.lt_u
          local.tee 5
          select
          local.tee 0
          i32.const 255
          i32.gt_s
          br_if 2 (;@1;)
          i32.const 3
          i32.const 2
          local.get 5
          select
          local.set 5
        end
        local.get 2
        local.get 0
        i32.store8 offset=15
        local.get 1
        local.get 5
        i32.add
        i32.load8_u
        i32.eqz
        local.set 4
        br 1 (;@1;)
      end
      local.get 2
      local.get 0
      i32.store8
      local.get 1
      local.get 6
      i32.add
      local.tee 1
      i32.load8_u
      i32.const 46
      i32.ne
      br_if 0 (;@1;)
      i32.const 1
      local.set 5
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_s
      local.tee 6
      i32.const -48
      i32.add
      local.tee 0
      i32.const 10
      i32.ge_u
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 1
        i32.load8_s offset=1
        i32.const -48
        i32.add
        local.tee 7
        i32.const 9
        i32.gt_u
        br_if 0 (;@2;)
        local.get 6
        i32.const 48
        i32.eq
        br_if 1 (;@1;)
        local.get 1
        i32.load8_s offset=2
        i32.const -48
        i32.add
        local.tee 5
        local.get 7
        local.get 0
        i32.const 10
        i32.mul
        i32.add
        local.tee 0
        i32.const 10
        i32.mul
        i32.add
        local.get 0
        local.get 5
        i32.const 10
        i32.lt_u
        local.tee 5
        select
        local.tee 0
        i32.const 255
        i32.gt_s
        br_if 1 (;@1;)
        i32.const 3
        i32.const 2
        local.get 5
        select
        local.set 5
      end
      local.get 2
      local.get 0
      i32.store8 offset=1
      local.get 1
      local.get 5
      i32.add
      local.tee 1
      i32.load8_u
      i32.const 46
      i32.ne
      br_if 0 (;@1;)
      i32.const 1
      local.set 5
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_s
      local.tee 6
      i32.const -48
      i32.add
      local.tee 0
      i32.const 9
      i32.gt_u
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 1
        i32.load8_s offset=1
        i32.const -48
        i32.add
        local.tee 7
        i32.const 9
        i32.gt_u
        br_if 0 (;@2;)
        local.get 6
        i32.const 48
        i32.eq
        br_if 1 (;@1;)
        local.get 1
        i32.load8_s offset=2
        i32.const -48
        i32.add
        local.tee 5
        local.get 7
        local.get 0
        i32.const 10
        i32.mul
        i32.add
        local.tee 0
        i32.const 10
        i32.mul
        i32.add
        local.get 0
        local.get 5
        i32.const 10
        i32.lt_u
        local.tee 5
        select
        local.tee 0
        i32.const 255
        i32.gt_s
        br_if 1 (;@1;)
        i32.const 3
        i32.const 2
        local.get 5
        select
        local.set 5
      end
      local.get 2
      local.get 0
      i32.store8 offset=2
      local.get 1
      local.get 5
      i32.add
      local.tee 1
      i32.load8_u
      i32.const 46
      i32.ne
      br_if 0 (;@1;)
      i32.const 1
      local.set 5
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_s
      local.tee 6
      i32.const -48
      i32.add
      local.tee 0
      i32.const 9
      i32.gt_u
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 1
        i32.load8_s offset=1
        i32.const -48
        i32.add
        local.tee 7
        i32.const 9
        i32.gt_u
        br_if 0 (;@2;)
        local.get 6
        i32.const 48
        i32.eq
        br_if 1 (;@1;)
        local.get 1
        i32.load8_s offset=2
        i32.const -48
        i32.add
        local.tee 5
        local.get 7
        local.get 0
        i32.const 10
        i32.mul
        i32.add
        local.tee 0
        i32.const 10
        i32.mul
        i32.add
        local.get 0
        local.get 5
        i32.const 10
        i32.lt_u
        local.tee 5
        select
        local.tee 0
        i32.const 255
        i32.gt_s
        br_if 1 (;@1;)
        i32.const 3
        i32.const 2
        local.get 5
        select
        local.set 5
      end
      local.get 2
      local.get 0
      i32.store8 offset=3
      local.get 1
      local.get 5
      i32.add
      i32.load8_u
      i32.eqz
      local.set 4
    end
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 4)
  (func $_Exit (type 10) (param i32)
    local.get 0
    call $__wasi_proc_exit
    unreachable)
  (func $dummy (type 6))
  (func $__wasm_call_dtors (type 6)
    call $dummy
    call $__stdio_exit)
  (func $exit (type 10) (param i32)
    call $dummy
    call $__stdio_exit
    local.get 0
    call $_Exit
    unreachable)
  (func $__fwritex (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.load offset=16
        local.tee 3
        br_if 0 (;@2;)
        i32.const 0
        local.set 4
        local.get 2
        call $__towrite
        br_if 1 (;@1;)
        local.get 2
        i32.load offset=16
        local.set 3
      end
      block  ;; label = @2
        local.get 3
        local.get 2
        i32.load offset=20
        local.tee 5
        i32.sub
        local.get 1
        i32.ge_u
        br_if 0 (;@2;)
        local.get 2
        local.get 0
        local.get 1
        local.get 2
        i32.load offset=32
        call_indirect (type 0)
        return
      end
      i32.const 0
      local.set 6
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.load offset=64
          i32.const 0
          i32.ge_s
          br_if 0 (;@3;)
          local.get 1
          local.set 3
          br 1 (;@2;)
        end
        i32.const 0
        local.set 6
        local.get 0
        local.set 4
        i32.const 0
        local.set 3
        loop  ;; label = @3
          block  ;; label = @4
            local.get 1
            local.get 3
            i32.ne
            br_if 0 (;@4;)
            local.get 1
            local.set 3
            br 2 (;@2;)
          end
          local.get 3
          i32.const 1
          i32.add
          local.set 3
          local.get 4
          local.get 1
          i32.add
          local.set 7
          local.get 4
          i32.const -1
          i32.add
          local.tee 8
          local.set 4
          local.get 7
          i32.const -1
          i32.add
          i32.load8_u
          i32.const 10
          i32.ne
          br_if 0 (;@3;)
        end
        local.get 2
        local.get 0
        local.get 1
        local.get 3
        i32.sub
        i32.const 1
        i32.add
        local.tee 6
        local.get 2
        i32.load offset=32
        call_indirect (type 0)
        local.tee 4
        local.get 6
        i32.lt_u
        br_if 1 (;@1;)
        local.get 3
        i32.const -1
        i32.add
        local.set 3
        local.get 8
        local.get 1
        i32.add
        i32.const 1
        i32.add
        local.set 0
        local.get 2
        i32.load offset=20
        local.set 5
      end
      local.get 5
      local.get 0
      local.get 3
      call $memcpy
      drop
      local.get 2
      local.get 2
      i32.load offset=20
      local.get 3
      i32.add
      i32.store offset=20
      local.get 6
      local.get 3
      i32.add
      local.set 4
    end
    local.get 4)
  (func $fwrite (type 4) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    local.get 2
    local.get 1
    i32.mul
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.load offset=16
        local.tee 5
        br_if 0 (;@2;)
        i32.const 0
        local.set 5
        local.get 3
        call $__towrite
        br_if 1 (;@1;)
        local.get 3
        i32.load offset=16
        local.set 5
      end
      block  ;; label = @2
        local.get 5
        local.get 3
        i32.load offset=20
        local.tee 6
        i32.sub
        local.get 4
        i32.ge_u
        br_if 0 (;@2;)
        local.get 3
        local.get 0
        local.get 4
        local.get 3
        i32.load offset=32
        call_indirect (type 0)
        local.set 5
        br 1 (;@1;)
      end
      i32.const 0
      local.set 7
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.load offset=64
          i32.const 0
          i32.ge_s
          br_if 0 (;@3;)
          local.get 4
          local.set 5
          br 1 (;@2;)
        end
        local.get 0
        local.get 4
        i32.add
        local.set 8
        i32.const 0
        local.set 7
        i32.const 0
        local.set 5
        loop  ;; label = @3
          block  ;; label = @4
            local.get 4
            local.get 5
            i32.add
            br_if 0 (;@4;)
            local.get 4
            local.set 5
            br 2 (;@2;)
          end
          local.get 8
          local.get 5
          i32.add
          local.set 9
          local.get 5
          i32.const -1
          i32.add
          local.tee 10
          local.set 5
          local.get 9
          i32.const -1
          i32.add
          i32.load8_u
          i32.const 10
          i32.ne
          br_if 0 (;@3;)
        end
        local.get 3
        local.get 0
        local.get 4
        local.get 10
        i32.add
        i32.const 1
        i32.add
        local.tee 7
        local.get 3
        i32.load offset=32
        call_indirect (type 0)
        local.tee 5
        local.get 7
        i32.lt_u
        br_if 1 (;@1;)
        local.get 10
        i32.const -1
        i32.xor
        local.set 5
        local.get 8
        local.get 10
        i32.add
        i32.const 1
        i32.add
        local.set 0
        local.get 3
        i32.load offset=20
        local.set 6
      end
      local.get 6
      local.get 0
      local.get 5
      call $memcpy
      drop
      local.get 3
      local.get 3
      i32.load offset=20
      local.get 5
      i32.add
      i32.store offset=20
      local.get 7
      local.get 5
      i32.add
      local.set 5
    end
    block  ;; label = @1
      local.get 5
      local.get 4
      i32.ne
      br_if 0 (;@1;)
      local.get 2
      i32.const 0
      local.get 1
      select
      return
    end
    local.get 5
    local.get 1
    i32.div_u)
  (func $fputs (type 8) (param i32 i32) (result i32)
    (local i32)
    local.get 0
    call $strlen
    local.set 2
    i32.const -1
    i32.const 0
    local.get 2
    local.get 0
    i32.const 1
    local.get 2
    local.get 1
    call $fwrite
    i32.ne
    select)
  (func $__lseek (type 1) (param i32 i64 i32) (result i64)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        local.get 1
        local.get 2
        i32.const 255
        i32.and
        local.get 3
        i32.const 8
        i32.add
        call $__wasi_fd_seek
        local.tee 0
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.const 70
        local.get 0
        local.get 0
        i32.const 76
        i32.eq
        select
        i32.store offset=18256
        i64.const -1
        local.set 1
        br 1 (;@1;)
      end
      local.get 3
      i64.load offset=8
      local.set 1
    end
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $__stdio_seek (type 1) (param i32 i64 i32) (result i64)
    local.get 0
    i32.load offset=56
    local.get 1
    local.get 2
    call $__lseek)
  (func $printf (type 8) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 1
    i32.store offset=12
    i32.const 10224
    local.get 0
    local.get 1
    call $vfprintf
    local.set 1
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $sprintf (type 0) (param i32 i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 2
    i32.store offset=12
    local.get 0
    local.get 1
    local.get 2
    call $vsprintf
    local.set 2
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2)
  (func $fflush (type 3) (param i32) (result i32)
    (local i32 i32 i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      i32.const 0
      local.set 1
      block  ;; label = @2
        i32.const 0
        i32.load offset=10336
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.load offset=10336
        call $fflush
        local.set 1
      end
      block  ;; label = @2
        i32.const 0
        i32.load offset=10216
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.load offset=10216
        call $fflush
        local.get 1
        i32.or
        local.set 1
      end
      block  ;; label = @2
        call $__ofl_lock
        i32.load
        local.tee 0
        i32.eqz
        br_if 0 (;@2;)
        loop  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.load offset=20
            local.get 0
            i32.load offset=24
            i32.eq
            br_if 0 (;@4;)
            local.get 0
            i32.const 0
            i32.const 0
            local.get 0
            i32.load offset=32
            call_indirect (type 0)
            drop
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.load offset=20
                br_if 0 (;@6;)
                i32.const -1
                local.set 2
                br 1 (;@5;)
              end
              block  ;; label = @6
                local.get 0
                i32.load offset=4
                local.tee 2
                local.get 0
                i32.load offset=8
                local.tee 3
                i32.eq
                br_if 0 (;@6;)
                local.get 0
                local.get 2
                local.get 3
                i32.sub
                i64.extend_i32_s
                i32.const 1
                local.get 0
                i32.load offset=36
                call_indirect (type 1)
                drop
              end
              i32.const 0
              local.set 2
              local.get 0
              i32.const 0
              i32.store offset=24
              local.get 0
              i64.const 0
              i64.store offset=16
              local.get 0
              i64.const 0
              i64.store offset=4 align=4
            end
            local.get 2
            local.get 1
            i32.or
            local.set 1
          end
          local.get 0
          i32.load offset=52
          local.tee 0
          br_if 0 (;@3;)
        end
      end
      call $__ofl_unlock
      local.get 1
      return
    end
    block  ;; label = @1
      local.get 0
      i32.load offset=20
      local.get 0
      i32.load offset=24
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      i32.const 0
      local.get 0
      i32.load offset=32
      call_indirect (type 0)
      drop
      local.get 0
      i32.load offset=20
      br_if 0 (;@1;)
      i32.const -1
      return
    end
    block  ;; label = @1
      local.get 0
      i32.load offset=4
      local.tee 1
      local.get 0
      i32.load offset=8
      local.tee 2
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      local.get 2
      i32.sub
      i64.extend_i32_s
      i32.const 1
      local.get 0
      i32.load offset=36
      call_indirect (type 1)
      drop
    end
    local.get 0
    i32.const 0
    i32.store offset=24
    local.get 0
    i64.const 0
    i64.store offset=16
    local.get 0
    i64.const 0
    i64.store offset=4 align=4
    i32.const 0)
  (func $strerror (type 3) (param i32) (result i32)
    (local i32)
    block  ;; label = @1
      i32.const 0
      i32.load offset=18308
      local.tee 1
      br_if 0 (;@1;)
      i32.const 18284
      local.set 1
      i32.const 0
      i32.const 18284
      i32.store offset=18308
    end
    i32.const 0
    local.get 0
    local.get 0
    i32.const 76
    i32.gt_u
    select
    i32.const 1
    i32.shl
    i32.const 8192
    i32.add
    i32.load16_u
    i32.const 6632
    i32.add
    local.get 1
    i32.load offset=20
    call $__lctrans)
  (func $vfprintf (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 208
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 2
    i32.store offset=204
    local.get 3
    i32.const 160
    i32.add
    i32.const 32
    i32.add
    i64.const 0
    i64.store
    local.get 3
    i32.const 184
    i32.add
    i64.const 0
    i64.store
    local.get 3
    i32.const 176
    i32.add
    i64.const 0
    i64.store
    local.get 3
    i64.const 0
    i64.store offset=168
    local.get 3
    i64.const 0
    i64.store offset=160
    local.get 3
    local.get 2
    i32.store offset=200
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        local.get 1
        local.get 3
        i32.const 200
        i32.add
        local.get 3
        i32.const 80
        i32.add
        local.get 3
        i32.const 160
        i32.add
        call $printf_core
        i32.const 0
        i32.ge_s
        br_if 0 (;@2;)
        i32.const -1
        local.set 0
        br 1 (;@1;)
      end
      local.get 0
      i32.load
      local.set 4
      block  ;; label = @2
        local.get 0
        i32.load offset=60
        i32.const 0
        i32.gt_s
        br_if 0 (;@2;)
        local.get 0
        local.get 4
        i32.const -33
        i32.and
        i32.store
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.load offset=44
              br_if 0 (;@5;)
              local.get 0
              i32.const 80
              i32.store offset=44
              local.get 0
              i32.const 0
              i32.store offset=24
              local.get 0
              i64.const 0
              i64.store offset=16
              local.get 0
              i32.load offset=40
              local.set 5
              local.get 0
              local.get 3
              i32.store offset=40
              br 1 (;@4;)
            end
            i32.const 0
            local.set 5
            local.get 0
            i32.load offset=16
            br_if 1 (;@3;)
          end
          i32.const -1
          local.set 2
          local.get 0
          call $__towrite
          br_if 1 (;@2;)
        end
        local.get 0
        local.get 1
        local.get 3
        i32.const 200
        i32.add
        local.get 3
        i32.const 80
        i32.add
        local.get 3
        i32.const 160
        i32.add
        call $printf_core
        local.set 2
      end
      local.get 4
      i32.const 32
      i32.and
      local.set 1
      block  ;; label = @2
        local.get 5
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.const 0
        i32.const 0
        local.get 0
        i32.load offset=32
        call_indirect (type 0)
        drop
        local.get 0
        i32.const 0
        i32.store offset=44
        local.get 0
        local.get 5
        i32.store offset=40
        local.get 0
        i32.const 0
        i32.store offset=24
        local.get 0
        i32.const 0
        i32.store offset=16
        local.get 0
        i32.load offset=20
        local.set 5
        local.get 0
        i32.const 0
        i32.store offset=20
        local.get 2
        i32.const -1
        local.get 5
        select
        local.set 2
      end
      local.get 0
      local.get 0
      i32.load
      local.tee 5
      local.get 1
      i32.or
      i32.store
      i32.const -1
      local.get 2
      local.get 5
      i32.const 32
      i32.and
      select
      local.set 0
    end
    local.get 3
    i32.const 208
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $printf_core (type 15) (param i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 f64 i32 i32 i32 i32 i32 i32 f64 i32)
    global.get $__stack_pointer
    i32.const 880
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    i32.const 68
    i32.add
    i32.const 12
    i32.add
    local.set 6
    local.get 5
    i32.const 55
    i32.add
    local.set 7
    i32.const -2
    local.get 5
    i32.const 80
    i32.add
    i32.sub
    local.set 8
    local.get 5
    i32.const 80
    i32.add
    i32.const 9
    i32.or
    local.set 9
    i32.const -10
    local.get 5
    i32.const 68
    i32.add
    i32.sub
    local.set 10
    local.get 5
    i32.const 68
    i32.add
    i32.const 10
    i32.add
    local.set 11
    local.get 5
    i32.const 400
    i32.add
    local.set 12
    local.get 5
    i32.const 56
    i32.add
    local.set 13
    i32.const 0
    local.set 14
    i32.const 0
    local.set 15
    i32.const 0
    local.set 16
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          loop  ;; label = @4
            local.get 1
            local.set 17
            local.get 16
            i32.const 2147483647
            local.get 15
            i32.sub
            i32.gt_s
            br_if 1 (;@3;)
            local.get 16
            local.get 15
            i32.add
            local.set 15
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 17
                              i32.load8_u
                              local.tee 16
                              i32.eqz
                              br_if 0 (;@13;)
                              local.get 17
                              local.set 1
                              loop  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      local.get 16
                                      i32.const 255
                                      i32.and
                                      local.tee 16
                                      i32.eqz
                                      br_if 0 (;@17;)
                                      local.get 16
                                      i32.const 37
                                      i32.ne
                                      br_if 2 (;@15;)
                                      local.get 1
                                      local.set 16
                                      loop  ;; label = @18
                                        local.get 1
                                        i32.const 1
                                        i32.add
                                        i32.load8_u
                                        i32.const 37
                                        i32.ne
                                        br_if 2 (;@16;)
                                        local.get 16
                                        i32.const 1
                                        i32.add
                                        local.set 16
                                        local.get 1
                                        i32.const 2
                                        i32.add
                                        local.tee 1
                                        i32.load8_u
                                        i32.const 37
                                        i32.eq
                                        br_if 0 (;@18;)
                                        br 2 (;@16;)
                                      end
                                    end
                                    local.get 1
                                    local.set 16
                                  end
                                  local.get 16
                                  local.get 17
                                  i32.sub
                                  local.tee 16
                                  i32.const 2147483647
                                  local.get 15
                                  i32.sub
                                  local.tee 18
                                  i32.gt_s
                                  br_if 12 (;@3;)
                                  block  ;; label = @16
                                    local.get 0
                                    i32.eqz
                                    br_if 0 (;@16;)
                                    local.get 0
                                    i32.load8_u
                                    i32.const 32
                                    i32.and
                                    br_if 0 (;@16;)
                                    local.get 17
                                    local.get 16
                                    local.get 0
                                    call $__fwritex
                                    drop
                                  end
                                  local.get 16
                                  br_if 11 (;@4;)
                                  local.get 1
                                  i32.const 1
                                  i32.add
                                  local.set 16
                                  i32.const -1
                                  local.set 19
                                  block  ;; label = @16
                                    local.get 1
                                    i32.load8_s offset=1
                                    local.tee 20
                                    i32.const -48
                                    i32.add
                                    local.tee 21
                                    i32.const 9
                                    i32.gt_u
                                    br_if 0 (;@16;)
                                    local.get 1
                                    i32.load8_u offset=2
                                    i32.const 36
                                    i32.ne
                                    br_if 0 (;@16;)
                                    local.get 1
                                    i32.const 3
                                    i32.add
                                    local.set 16
                                    local.get 1
                                    i32.load8_s offset=3
                                    local.set 20
                                    i32.const 1
                                    local.set 14
                                    local.get 21
                                    local.set 19
                                  end
                                  i32.const 0
                                  local.set 22
                                  block  ;; label = @16
                                    local.get 20
                                    i32.const -32
                                    i32.add
                                    local.tee 1
                                    i32.const 31
                                    i32.gt_u
                                    br_if 0 (;@16;)
                                    i32.const 1
                                    local.get 1
                                    i32.shl
                                    local.tee 1
                                    i32.const 75913
                                    i32.and
                                    i32.eqz
                                    br_if 0 (;@16;)
                                    local.get 16
                                    i32.const 1
                                    i32.add
                                    local.set 21
                                    i32.const 0
                                    local.set 22
                                    loop  ;; label = @17
                                      local.get 1
                                      local.get 22
                                      i32.or
                                      local.set 22
                                      local.get 21
                                      local.tee 16
                                      i32.load8_s
                                      local.tee 20
                                      i32.const -32
                                      i32.add
                                      local.tee 1
                                      i32.const 32
                                      i32.ge_u
                                      br_if 1 (;@16;)
                                      local.get 16
                                      i32.const 1
                                      i32.add
                                      local.set 21
                                      i32.const 1
                                      local.get 1
                                      i32.shl
                                      local.tee 1
                                      i32.const 75913
                                      i32.and
                                      br_if 0 (;@17;)
                                    end
                                  end
                                  block  ;; label = @16
                                    local.get 20
                                    i32.const 42
                                    i32.ne
                                    br_if 0 (;@16;)
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        local.get 16
                                        i32.load8_s offset=1
                                        i32.const -48
                                        i32.add
                                        local.tee 1
                                        i32.const 9
                                        i32.gt_u
                                        br_if 0 (;@18;)
                                        local.get 16
                                        i32.load8_u offset=2
                                        i32.const 36
                                        i32.ne
                                        br_if 0 (;@18;)
                                        local.get 4
                                        local.get 1
                                        i32.const 2
                                        i32.shl
                                        i32.add
                                        i32.const 10
                                        i32.store
                                        local.get 16
                                        i32.const 3
                                        i32.add
                                        local.set 21
                                        local.get 16
                                        i32.load8_s offset=1
                                        i32.const 3
                                        i32.shl
                                        local.get 3
                                        i32.add
                                        i32.const -384
                                        i32.add
                                        i32.load
                                        local.set 23
                                        i32.const 1
                                        local.set 14
                                        br 1 (;@17;)
                                      end
                                      local.get 14
                                      br_if 6 (;@11;)
                                      local.get 16
                                      i32.const 1
                                      i32.add
                                      local.set 21
                                      block  ;; label = @18
                                        local.get 0
                                        br_if 0 (;@18;)
                                        i32.const 0
                                        local.set 14
                                        i32.const 0
                                        local.set 23
                                        br 6 (;@12;)
                                      end
                                      local.get 2
                                      local.get 2
                                      i32.load
                                      local.tee 1
                                      i32.const 4
                                      i32.add
                                      i32.store
                                      local.get 1
                                      i32.load
                                      local.set 23
                                      i32.const 0
                                      local.set 14
                                    end
                                    local.get 23
                                    i32.const -1
                                    i32.gt_s
                                    br_if 4 (;@12;)
                                    i32.const 0
                                    local.get 23
                                    i32.sub
                                    local.set 23
                                    local.get 22
                                    i32.const 8192
                                    i32.or
                                    local.set 22
                                    br 4 (;@12;)
                                  end
                                  i32.const 0
                                  local.set 23
                                  block  ;; label = @16
                                    local.get 20
                                    i32.const -48
                                    i32.add
                                    local.tee 1
                                    i32.const 9
                                    i32.le_u
                                    br_if 0 (;@16;)
                                    local.get 16
                                    local.set 21
                                    br 4 (;@12;)
                                  end
                                  i32.const 0
                                  local.set 23
                                  loop  ;; label = @16
                                    block  ;; label = @17
                                      local.get 23
                                      i32.const 214748364
                                      i32.gt_u
                                      br_if 0 (;@17;)
                                      i32.const -1
                                      local.get 23
                                      i32.const 10
                                      i32.mul
                                      local.tee 21
                                      local.get 1
                                      i32.add
                                      local.get 1
                                      i32.const 2147483647
                                      local.get 21
                                      i32.sub
                                      i32.gt_s
                                      select
                                      local.set 23
                                      local.get 16
                                      i32.load8_s offset=1
                                      local.set 1
                                      local.get 16
                                      i32.const 1
                                      i32.add
                                      local.tee 21
                                      local.set 16
                                      local.get 1
                                      i32.const -48
                                      i32.add
                                      local.tee 1
                                      i32.const 10
                                      i32.lt_u
                                      br_if 1 (;@16;)
                                      local.get 23
                                      i32.const 0
                                      i32.lt_s
                                      br_if 14 (;@3;)
                                      br 5 (;@12;)
                                    end
                                    local.get 16
                                    i32.load8_s offset=1
                                    local.set 1
                                    i32.const -1
                                    local.set 23
                                    local.get 16
                                    i32.const 1
                                    i32.add
                                    local.set 16
                                    local.get 1
                                    i32.const -48
                                    i32.add
                                    local.tee 1
                                    i32.const 10
                                    i32.lt_u
                                    br_if 0 (;@16;)
                                    br 13 (;@3;)
                                  end
                                end
                                local.get 1
                                i32.const 1
                                i32.add
                                local.tee 1
                                i32.load8_u
                                local.set 16
                                br 0 (;@14;)
                              end
                            end
                            local.get 0
                            br_if 11 (;@1;)
                            block  ;; label = @13
                              local.get 14
                              br_if 0 (;@13;)
                              i32.const 0
                              local.set 15
                              br 12 (;@1;)
                            end
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 4
                                i32.load offset=4
                                local.tee 1
                                br_if 0 (;@14;)
                                i32.const 1
                                local.set 1
                                br 1 (;@13;)
                              end
                              local.get 3
                              i32.const 8
                              i32.add
                              local.get 1
                              local.get 2
                              call $pop_arg
                              block  ;; label = @14
                                local.get 4
                                i32.load offset=8
                                local.tee 1
                                br_if 0 (;@14;)
                                i32.const 2
                                local.set 1
                                br 1 (;@13;)
                              end
                              local.get 3
                              i32.const 16
                              i32.add
                              local.get 1
                              local.get 2
                              call $pop_arg
                              block  ;; label = @14
                                local.get 4
                                i32.load offset=12
                                local.tee 1
                                br_if 0 (;@14;)
                                i32.const 3
                                local.set 1
                                br 1 (;@13;)
                              end
                              local.get 3
                              i32.const 24
                              i32.add
                              local.get 1
                              local.get 2
                              call $pop_arg
                              block  ;; label = @14
                                local.get 4
                                i32.load offset=16
                                local.tee 1
                                br_if 0 (;@14;)
                                i32.const 4
                                local.set 1
                                br 1 (;@13;)
                              end
                              local.get 3
                              i32.const 32
                              i32.add
                              local.get 1
                              local.get 2
                              call $pop_arg
                              block  ;; label = @14
                                local.get 4
                                i32.load offset=20
                                local.tee 1
                                br_if 0 (;@14;)
                                i32.const 5
                                local.set 1
                                br 1 (;@13;)
                              end
                              local.get 3
                              i32.const 40
                              i32.add
                              local.get 1
                              local.get 2
                              call $pop_arg
                              block  ;; label = @14
                                local.get 4
                                i32.load offset=24
                                local.tee 1
                                br_if 0 (;@14;)
                                i32.const 6
                                local.set 1
                                br 1 (;@13;)
                              end
                              local.get 3
                              i32.const 48
                              i32.add
                              local.get 1
                              local.get 2
                              call $pop_arg
                              block  ;; label = @14
                                local.get 4
                                i32.load offset=28
                                local.tee 1
                                br_if 0 (;@14;)
                                i32.const 7
                                local.set 1
                                br 1 (;@13;)
                              end
                              local.get 3
                              i32.const 56
                              i32.add
                              local.get 1
                              local.get 2
                              call $pop_arg
                              block  ;; label = @14
                                local.get 4
                                i32.load offset=32
                                local.tee 1
                                br_if 0 (;@14;)
                                i32.const 8
                                local.set 1
                                br 1 (;@13;)
                              end
                              local.get 3
                              i32.const 64
                              i32.add
                              local.get 1
                              local.get 2
                              call $pop_arg
                              block  ;; label = @14
                                local.get 4
                                i32.load offset=36
                                local.tee 1
                                br_if 0 (;@14;)
                                i32.const 9
                                local.set 1
                                br 1 (;@13;)
                              end
                              local.get 3
                              i32.const 72
                              i32.add
                              local.get 1
                              local.get 2
                              call $pop_arg
                              i32.const 1
                              local.set 15
                              br 12 (;@1;)
                            end
                            local.get 1
                            i32.const 2
                            i32.shl
                            local.set 1
                            loop  ;; label = @13
                              local.get 4
                              local.get 1
                              i32.add
                              i32.load
                              br_if 2 (;@11;)
                              local.get 1
                              i32.const 4
                              i32.add
                              local.tee 1
                              i32.const 40
                              i32.ne
                              br_if 0 (;@13;)
                            end
                            i32.const 1
                            local.set 15
                            br 11 (;@1;)
                          end
                          i32.const 0
                          local.set 16
                          i32.const -1
                          local.set 20
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 21
                              i32.load8_u
                              i32.const 46
                              i32.eq
                              br_if 0 (;@13;)
                              local.get 21
                              local.set 1
                              i32.const 0
                              local.set 24
                              br 1 (;@12;)
                            end
                            block  ;; label = @13
                              local.get 21
                              i32.load8_s offset=1
                              local.tee 20
                              i32.const 42
                              i32.ne
                              br_if 0 (;@13;)
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 21
                                  i32.load8_s offset=2
                                  i32.const -48
                                  i32.add
                                  local.tee 1
                                  i32.const 9
                                  i32.gt_u
                                  br_if 0 (;@15;)
                                  local.get 21
                                  i32.load8_u offset=3
                                  i32.const 36
                                  i32.ne
                                  br_if 0 (;@15;)
                                  local.get 4
                                  local.get 1
                                  i32.const 2
                                  i32.shl
                                  i32.add
                                  i32.const 10
                                  i32.store
                                  local.get 21
                                  i32.const 4
                                  i32.add
                                  local.set 1
                                  local.get 21
                                  i32.load8_s offset=2
                                  i32.const 3
                                  i32.shl
                                  local.get 3
                                  i32.add
                                  i32.const -384
                                  i32.add
                                  i32.load
                                  local.set 20
                                  br 1 (;@14;)
                                end
                                local.get 14
                                br_if 3 (;@11;)
                                local.get 21
                                i32.const 2
                                i32.add
                                local.set 1
                                block  ;; label = @15
                                  local.get 0
                                  br_if 0 (;@15;)
                                  i32.const 0
                                  local.set 20
                                  br 1 (;@14;)
                                end
                                local.get 2
                                local.get 2
                                i32.load
                                local.tee 21
                                i32.const 4
                                i32.add
                                i32.store
                                local.get 21
                                i32.load
                                local.set 20
                              end
                              local.get 20
                              i32.const -1
                              i32.xor
                              i32.const 31
                              i32.shr_u
                              local.set 24
                              br 1 (;@12;)
                            end
                            local.get 21
                            i32.const 1
                            i32.add
                            local.set 1
                            block  ;; label = @13
                              local.get 20
                              i32.const -48
                              i32.add
                              local.tee 25
                              i32.const 9
                              i32.le_u
                              br_if 0 (;@13;)
                              i32.const 1
                              local.set 24
                              i32.const 0
                              local.set 20
                              br 1 (;@12;)
                            end
                            i32.const 0
                            local.set 21
                            loop  ;; label = @13
                              i32.const -1
                              local.set 20
                              block  ;; label = @14
                                local.get 21
                                i32.const 214748364
                                i32.gt_u
                                br_if 0 (;@14;)
                                i32.const -1
                                local.get 21
                                i32.const 10
                                i32.mul
                                local.tee 21
                                local.get 25
                                i32.add
                                local.get 25
                                i32.const 2147483647
                                local.get 21
                                i32.sub
                                i32.gt_s
                                select
                                local.set 20
                              end
                              i32.const 1
                              local.set 24
                              local.get 20
                              local.set 21
                              local.get 1
                              i32.const 1
                              i32.add
                              local.tee 1
                              i32.load8_s
                              i32.const -48
                              i32.add
                              local.tee 25
                              i32.const 10
                              i32.lt_u
                              br_if 0 (;@13;)
                            end
                          end
                          loop  ;; label = @12
                            local.get 16
                            local.set 21
                            local.get 1
                            i32.load8_s
                            i32.const -65
                            i32.add
                            local.tee 16
                            i32.const 57
                            i32.gt_u
                            br_if 1 (;@11;)
                            local.get 1
                            i32.const 1
                            i32.add
                            local.set 1
                            local.get 21
                            i32.const 58
                            i32.mul
                            local.get 16
                            i32.add
                            i32.const 8352
                            i32.add
                            i32.load8_u
                            local.tee 16
                            i32.const -1
                            i32.add
                            i32.const 8
                            i32.lt_u
                            br_if 0 (;@12;)
                          end
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 16
                                i32.const 27
                                i32.eq
                                br_if 0 (;@14;)
                                local.get 16
                                i32.eqz
                                br_if 3 (;@11;)
                                block  ;; label = @15
                                  local.get 19
                                  i32.const 0
                                  i32.lt_s
                                  br_if 0 (;@15;)
                                  local.get 4
                                  local.get 19
                                  i32.const 2
                                  i32.shl
                                  i32.add
                                  local.get 16
                                  i32.store
                                  local.get 5
                                  local.get 3
                                  local.get 19
                                  i32.const 3
                                  i32.shl
                                  i32.add
                                  i64.load
                                  i64.store offset=56
                                  br 2 (;@13;)
                                end
                                block  ;; label = @15
                                  local.get 0
                                  br_if 0 (;@15;)
                                  i32.const 0
                                  local.set 15
                                  br 14 (;@1;)
                                end
                                local.get 5
                                i32.const 56
                                i32.add
                                local.get 16
                                local.get 2
                                call $pop_arg
                                br 2 (;@12;)
                              end
                              local.get 19
                              i32.const -1
                              i32.gt_s
                              br_if 2 (;@11;)
                            end
                            i32.const 0
                            local.set 16
                            local.get 0
                            i32.eqz
                            br_if 8 (;@4;)
                          end
                          local.get 22
                          i32.const -65537
                          i32.and
                          local.tee 25
                          local.get 22
                          local.get 22
                          i32.const 8192
                          i32.and
                          select
                          local.set 19
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    block  ;; label = @25
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          block  ;; label = @28
                                                            local.get 1
                                                            i32.const -1
                                                            i32.add
                                                            i32.load8_s
                                                            local.tee 16
                                                            i32.const -33
                                                            i32.and
                                                            local.get 16
                                                            local.get 16
                                                            i32.const 15
                                                            i32.and
                                                            i32.const 3
                                                            i32.eq
                                                            select
                                                            local.get 16
                                                            local.get 21
                                                            select
                                                            local.tee 26
                                                            i32.const -65
                                                            i32.add
                                                            br_table 16 (;@12;) 18 (;@10;) 13 (;@15;) 18 (;@10;) 16 (;@12;) 16 (;@12;) 16 (;@12;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 12 (;@16;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 3 (;@25;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 16 (;@12;) 18 (;@10;) 8 (;@20;) 5 (;@23;) 16 (;@12;) 16 (;@12;) 16 (;@12;) 18 (;@10;) 5 (;@23;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 9 (;@19;) 1 (;@27;) 4 (;@24;) 2 (;@26;) 18 (;@10;) 18 (;@10;) 10 (;@18;) 18 (;@10;) 0 (;@28;) 18 (;@10;) 18 (;@10;) 3 (;@25;) 18 (;@10;)
                                                          end
                                                          i32.const 0
                                                          local.set 27
                                                          i32.const 1188
                                                          local.set 28
                                                          local.get 5
                                                          i64.load offset=56
                                                          local.set 29
                                                          br 5 (;@22;)
                                                        end
                                                        i32.const 0
                                                        local.set 16
                                                        block  ;; label = @27
                                                          block  ;; label = @28
                                                            block  ;; label = @29
                                                              block  ;; label = @30
                                                                block  ;; label = @31
                                                                  block  ;; label = @32
                                                                    block  ;; label = @33
                                                                      local.get 21
                                                                      i32.const 255
                                                                      i32.and
                                                                      br_table 0 (;@33;) 1 (;@32;) 2 (;@31;) 3 (;@30;) 4 (;@29;) 29 (;@4;) 5 (;@28;) 6 (;@27;) 29 (;@4;)
                                                                    end
                                                                    local.get 5
                                                                    i32.load offset=56
                                                                    local.get 15
                                                                    i32.store
                                                                    br 28 (;@4;)
                                                                  end
                                                                  local.get 5
                                                                  i32.load offset=56
                                                                  local.get 15
                                                                  i32.store
                                                                  br 27 (;@4;)
                                                                end
                                                                local.get 5
                                                                i32.load offset=56
                                                                local.get 15
                                                                i64.extend_i32_s
                                                                i64.store
                                                                br 26 (;@4;)
                                                              end
                                                              local.get 5
                                                              i32.load offset=56
                                                              local.get 15
                                                              i32.store16
                                                              br 25 (;@4;)
                                                            end
                                                            local.get 5
                                                            i32.load offset=56
                                                            local.get 15
                                                            i32.store8
                                                            br 24 (;@4;)
                                                          end
                                                          local.get 5
                                                          i32.load offset=56
                                                          local.get 15
                                                          i32.store
                                                          br 23 (;@4;)
                                                        end
                                                        local.get 5
                                                        i32.load offset=56
                                                        local.get 15
                                                        i64.extend_i32_s
                                                        i64.store
                                                        br 22 (;@4;)
                                                      end
                                                      local.get 20
                                                      i32.const 8
                                                      local.get 20
                                                      i32.const 8
                                                      i32.gt_u
                                                      select
                                                      local.set 20
                                                      local.get 19
                                                      i32.const 8
                                                      i32.or
                                                      local.set 19
                                                      i32.const 120
                                                      local.set 26
                                                    end
                                                    i32.const 0
                                                    local.set 27
                                                    i32.const 1188
                                                    local.set 28
                                                    block  ;; label = @25
                                                      local.get 5
                                                      i64.load offset=56
                                                      local.tee 29
                                                      i64.eqz
                                                      i32.eqz
                                                      br_if 0 (;@25;)
                                                      local.get 13
                                                      local.set 17
                                                      br 4 (;@21;)
                                                    end
                                                    local.get 26
                                                    i32.const 32
                                                    i32.and
                                                    local.set 21
                                                    local.get 13
                                                    local.set 17
                                                    loop  ;; label = @25
                                                      local.get 17
                                                      i32.const -1
                                                      i32.add
                                                      local.tee 17
                                                      local.get 29
                                                      i32.wrap_i64
                                                      i32.const 15
                                                      i32.and
                                                      i32.const 8816
                                                      i32.add
                                                      i32.load8_u
                                                      local.get 21
                                                      i32.or
                                                      i32.store8
                                                      local.get 29
                                                      i64.const 15
                                                      i64.gt_u
                                                      local.set 16
                                                      local.get 29
                                                      i64.const 4
                                                      i64.shr_u
                                                      local.set 29
                                                      local.get 16
                                                      br_if 0 (;@25;)
                                                    end
                                                    local.get 19
                                                    i32.const 8
                                                    i32.and
                                                    i32.eqz
                                                    br_if 3 (;@21;)
                                                    local.get 26
                                                    i32.const 4
                                                    i32.shr_s
                                                    i32.const 1188
                                                    i32.add
                                                    local.set 28
                                                    i32.const 2
                                                    local.set 27
                                                    br 3 (;@21;)
                                                  end
                                                  local.get 13
                                                  local.set 17
                                                  block  ;; label = @24
                                                    local.get 5
                                                    i64.load offset=56
                                                    local.tee 29
                                                    i64.eqz
                                                    br_if 0 (;@24;)
                                                    local.get 13
                                                    local.set 17
                                                    loop  ;; label = @25
                                                      local.get 17
                                                      i32.const -1
                                                      i32.add
                                                      local.tee 17
                                                      local.get 29
                                                      i32.wrap_i64
                                                      i32.const 7
                                                      i32.and
                                                      i32.const 48
                                                      i32.or
                                                      i32.store8
                                                      local.get 29
                                                      i64.const 7
                                                      i64.gt_u
                                                      local.set 16
                                                      local.get 29
                                                      i64.const 3
                                                      i64.shr_u
                                                      local.set 29
                                                      local.get 16
                                                      br_if 0 (;@25;)
                                                    end
                                                  end
                                                  i32.const 0
                                                  local.set 27
                                                  i32.const 1188
                                                  local.set 28
                                                  local.get 19
                                                  i32.const 8
                                                  i32.and
                                                  i32.eqz
                                                  br_if 2 (;@21;)
                                                  local.get 20
                                                  local.get 13
                                                  local.get 17
                                                  i32.sub
                                                  local.tee 16
                                                  i32.const 1
                                                  i32.add
                                                  local.get 20
                                                  local.get 16
                                                  i32.gt_s
                                                  select
                                                  local.set 20
                                                  br 2 (;@21;)
                                                end
                                                block  ;; label = @23
                                                  local.get 5
                                                  i64.load offset=56
                                                  local.tee 29
                                                  i64.const -1
                                                  i64.gt_s
                                                  br_if 0 (;@23;)
                                                  local.get 5
                                                  i64.const 0
                                                  local.get 29
                                                  i64.sub
                                                  local.tee 29
                                                  i64.store offset=56
                                                  i32.const 1
                                                  local.set 27
                                                  i32.const 1188
                                                  local.set 28
                                                  br 1 (;@22;)
                                                end
                                                block  ;; label = @23
                                                  local.get 19
                                                  i32.const 2048
                                                  i32.and
                                                  i32.eqz
                                                  br_if 0 (;@23;)
                                                  i32.const 1
                                                  local.set 27
                                                  i32.const 1189
                                                  local.set 28
                                                  br 1 (;@22;)
                                                end
                                                i32.const 1190
                                                i32.const 1188
                                                local.get 19
                                                i32.const 1
                                                i32.and
                                                local.tee 27
                                                select
                                                local.set 28
                                              end
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  local.get 29
                                                  i64.const 4294967296
                                                  i64.ge_u
                                                  br_if 0 (;@23;)
                                                  local.get 29
                                                  local.set 30
                                                  local.get 13
                                                  local.set 17
                                                  br 1 (;@22;)
                                                end
                                                local.get 13
                                                local.set 17
                                                loop  ;; label = @23
                                                  local.get 17
                                                  i32.const -1
                                                  i32.add
                                                  local.tee 17
                                                  local.get 29
                                                  local.get 29
                                                  i64.const 10
                                                  i64.div_u
                                                  local.tee 30
                                                  i64.const 10
                                                  i64.mul
                                                  i64.sub
                                                  i32.wrap_i64
                                                  i32.const 48
                                                  i32.or
                                                  i32.store8
                                                  local.get 29
                                                  i64.const 42949672959
                                                  i64.gt_u
                                                  local.set 16
                                                  local.get 30
                                                  local.set 29
                                                  local.get 16
                                                  br_if 0 (;@23;)
                                                end
                                              end
                                              local.get 30
                                              i32.wrap_i64
                                              local.tee 16
                                              i32.eqz
                                              br_if 0 (;@21;)
                                              loop  ;; label = @22
                                                local.get 17
                                                i32.const -1
                                                i32.add
                                                local.tee 17
                                                local.get 16
                                                local.get 16
                                                i32.const 10
                                                i32.div_u
                                                local.tee 21
                                                i32.const 10
                                                i32.mul
                                                i32.sub
                                                i32.const 48
                                                i32.or
                                                i32.store8
                                                local.get 16
                                                i32.const 9
                                                i32.gt_u
                                                local.set 22
                                                local.get 21
                                                local.set 16
                                                local.get 22
                                                br_if 0 (;@22;)
                                              end
                                            end
                                            block  ;; label = @21
                                              local.get 24
                                              i32.eqz
                                              br_if 0 (;@21;)
                                              local.get 20
                                              i32.const 0
                                              i32.lt_s
                                              br_if 18 (;@3;)
                                            end
                                            local.get 19
                                            i32.const -65537
                                            i32.and
                                            local.get 19
                                            local.get 24
                                            select
                                            local.set 25
                                            block  ;; label = @21
                                              local.get 5
                                              i64.load offset=56
                                              local.tee 29
                                              i64.const 0
                                              i64.ne
                                              br_if 0 (;@21;)
                                              i32.const 0
                                              local.set 22
                                              local.get 20
                                              br_if 0 (;@21;)
                                              local.get 13
                                              local.set 17
                                              local.get 13
                                              local.set 16
                                              br 12 (;@9;)
                                            end
                                            local.get 20
                                            local.get 13
                                            local.get 17
                                            i32.sub
                                            local.get 29
                                            i64.eqz
                                            i32.add
                                            local.tee 16
                                            local.get 20
                                            local.get 16
                                            i32.gt_s
                                            select
                                            local.set 22
                                            local.get 13
                                            local.set 16
                                            br 11 (;@9;)
                                          end
                                          local.get 5
                                          local.get 5
                                          i64.load offset=56
                                          i64.store8 offset=55
                                          i32.const 0
                                          local.set 27
                                          i32.const 1188
                                          local.set 28
                                          i32.const 1
                                          local.set 22
                                          local.get 7
                                          local.set 17
                                          local.get 13
                                          local.set 16
                                          br 10 (;@9;)
                                        end
                                        i32.const 0
                                        i32.load offset=18256
                                        call $strerror
                                        local.set 17
                                        br 1 (;@17;)
                                      end
                                      local.get 5
                                      i32.load offset=56
                                      local.tee 16
                                      i32.const 4345
                                      local.get 16
                                      select
                                      local.set 17
                                    end
                                    i32.const 0
                                    local.set 27
                                    local.get 17
                                    local.get 17
                                    i32.const 2147483647
                                    local.get 20
                                    local.get 20
                                    i32.const 0
                                    i32.lt_s
                                    select
                                    call $strnlen
                                    local.tee 22
                                    i32.add
                                    local.set 16
                                    i32.const 1188
                                    local.set 28
                                    local.get 20
                                    i32.const -1
                                    i32.gt_s
                                    br_if 7 (;@9;)
                                    local.get 16
                                    i32.load8_u
                                    i32.eqz
                                    br_if 7 (;@9;)
                                    br 13 (;@3;)
                                  end
                                  local.get 5
                                  i32.load offset=56
                                  local.set 21
                                  local.get 20
                                  br_if 1 (;@14;)
                                  i32.const 0
                                  local.set 16
                                  br 2 (;@13;)
                                end
                                local.get 5
                                i32.const 0
                                i32.store offset=12
                                local.get 5
                                local.get 5
                                i64.load offset=56
                                i64.store32 offset=8
                                local.get 5
                                local.get 5
                                i32.const 8
                                i32.add
                                i32.store offset=56
                                i32.const -1
                                local.set 20
                                local.get 5
                                i32.const 8
                                i32.add
                                local.set 21
                              end
                              i32.const 0
                              local.set 16
                              local.get 21
                              local.set 17
                              block  ;; label = @14
                                loop  ;; label = @15
                                  local.get 17
                                  i32.load
                                  local.tee 18
                                  i32.eqz
                                  br_if 1 (;@14;)
                                  block  ;; label = @16
                                    local.get 5
                                    i32.const 4
                                    i32.add
                                    local.get 18
                                    call $wctomb
                                    local.tee 18
                                    i32.const 0
                                    i32.lt_s
                                    local.tee 22
                                    br_if 0 (;@16;)
                                    local.get 18
                                    local.get 20
                                    local.get 16
                                    i32.sub
                                    i32.gt_u
                                    br_if 0 (;@16;)
                                    local.get 17
                                    i32.const 4
                                    i32.add
                                    local.set 17
                                    local.get 20
                                    local.get 18
                                    local.get 16
                                    i32.add
                                    local.tee 16
                                    i32.gt_u
                                    br_if 1 (;@15;)
                                    br 2 (;@14;)
                                  end
                                end
                                local.get 22
                                br_if 12 (;@2;)
                              end
                              local.get 16
                              i32.const 0
                              i32.lt_s
                              br_if 10 (;@3;)
                            end
                            block  ;; label = @13
                              local.get 19
                              i32.const 73728
                              i32.and
                              local.tee 22
                              br_if 0 (;@13;)
                              local.get 23
                              local.get 16
                              i32.le_s
                              br_if 0 (;@13;)
                              local.get 5
                              i32.const 112
                              i32.add
                              i32.const 32
                              local.get 23
                              local.get 16
                              i32.sub
                              local.tee 17
                              i32.const 256
                              local.get 17
                              i32.const 256
                              i32.lt_u
                              local.tee 18
                              select
                              call $memset
                              drop
                              block  ;; label = @14
                                local.get 18
                                br_if 0 (;@14;)
                                loop  ;; label = @15
                                  block  ;; label = @16
                                    local.get 0
                                    i32.load8_u
                                    i32.const 32
                                    i32.and
                                    br_if 0 (;@16;)
                                    local.get 5
                                    i32.const 112
                                    i32.add
                                    i32.const 256
                                    local.get 0
                                    call $__fwritex
                                    drop
                                  end
                                  local.get 17
                                  i32.const -256
                                  i32.add
                                  local.tee 17
                                  i32.const 255
                                  i32.gt_u
                                  br_if 0 (;@15;)
                                end
                              end
                              local.get 0
                              i32.load8_u
                              i32.const 32
                              i32.and
                              br_if 0 (;@13;)
                              local.get 5
                              i32.const 112
                              i32.add
                              local.get 17
                              local.get 0
                              call $__fwritex
                              drop
                            end
                            block  ;; label = @13
                              local.get 16
                              i32.eqz
                              br_if 0 (;@13;)
                              i32.const 0
                              local.set 17
                              loop  ;; label = @14
                                local.get 21
                                i32.load
                                local.tee 18
                                i32.eqz
                                br_if 1 (;@13;)
                                local.get 5
                                i32.const 4
                                i32.add
                                local.get 18
                                call $wctomb
                                local.tee 18
                                local.get 17
                                i32.add
                                local.tee 17
                                local.get 16
                                i32.gt_u
                                br_if 1 (;@13;)
                                block  ;; label = @15
                                  local.get 0
                                  i32.load8_u
                                  i32.const 32
                                  i32.and
                                  br_if 0 (;@15;)
                                  local.get 5
                                  i32.const 4
                                  i32.add
                                  local.get 18
                                  local.get 0
                                  call $__fwritex
                                  drop
                                end
                                local.get 21
                                i32.const 4
                                i32.add
                                local.set 21
                                local.get 17
                                local.get 16
                                i32.lt_u
                                br_if 0 (;@14;)
                              end
                            end
                            block  ;; label = @13
                              local.get 22
                              i32.const 8192
                              i32.ne
                              br_if 0 (;@13;)
                              local.get 23
                              local.get 16
                              i32.le_s
                              br_if 0 (;@13;)
                              local.get 5
                              i32.const 112
                              i32.add
                              i32.const 32
                              local.get 23
                              local.get 16
                              i32.sub
                              local.tee 17
                              i32.const 256
                              local.get 17
                              i32.const 256
                              i32.lt_u
                              local.tee 18
                              select
                              call $memset
                              drop
                              block  ;; label = @14
                                local.get 18
                                br_if 0 (;@14;)
                                loop  ;; label = @15
                                  block  ;; label = @16
                                    local.get 0
                                    i32.load8_u
                                    i32.const 32
                                    i32.and
                                    br_if 0 (;@16;)
                                    local.get 5
                                    i32.const 112
                                    i32.add
                                    i32.const 256
                                    local.get 0
                                    call $__fwritex
                                    drop
                                  end
                                  local.get 17
                                  i32.const -256
                                  i32.add
                                  local.tee 17
                                  i32.const 255
                                  i32.gt_u
                                  br_if 0 (;@15;)
                                end
                              end
                              local.get 0
                              i32.load8_u
                              i32.const 32
                              i32.and
                              br_if 0 (;@13;)
                              local.get 5
                              i32.const 112
                              i32.add
                              local.get 17
                              local.get 0
                              call $__fwritex
                              drop
                            end
                            local.get 23
                            local.get 16
                            local.get 23
                            local.get 16
                            i32.gt_s
                            select
                            local.set 16
                            br 8 (;@4;)
                          end
                          block  ;; label = @12
                            local.get 24
                            i32.eqz
                            br_if 0 (;@12;)
                            local.get 20
                            i32.const 0
                            i32.lt_s
                            br_if 9 (;@3;)
                          end
                          local.get 5
                          f64.load offset=56
                          local.set 31
                          local.get 5
                          i32.const 0
                          i32.store offset=108
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 31
                              i64.reinterpret_f64
                              i64.const -1
                              i64.gt_s
                              br_if 0 (;@13;)
                              local.get 31
                              f64.neg
                              local.set 31
                              i32.const 1
                              local.set 32
                              i32.const 0
                              local.set 33
                              i32.const 1198
                              local.set 34
                              br 1 (;@12;)
                            end
                            block  ;; label = @13
                              local.get 19
                              i32.const 2048
                              i32.and
                              i32.eqz
                              br_if 0 (;@13;)
                              i32.const 1
                              local.set 32
                              i32.const 0
                              local.set 33
                              i32.const 1201
                              local.set 34
                              br 1 (;@12;)
                            end
                            i32.const 1204
                            i32.const 1199
                            local.get 19
                            i32.const 1
                            i32.and
                            local.tee 32
                            select
                            local.set 34
                            local.get 32
                            i32.eqz
                            local.set 33
                          end
                          block  ;; label = @12
                            local.get 31
                            f64.abs
                            f64.const inf (;=inf;)
                            f64.lt
                            br_if 0 (;@12;)
                            local.get 32
                            i32.const 3
                            i32.add
                            local.set 17
                            block  ;; label = @13
                              local.get 19
                              i32.const 8192
                              i32.and
                              br_if 0 (;@13;)
                              local.get 23
                              local.get 17
                              i32.le_s
                              br_if 0 (;@13;)
                              local.get 5
                              i32.const 624
                              i32.add
                              i32.const 32
                              local.get 23
                              local.get 17
                              i32.sub
                              local.tee 16
                              i32.const 256
                              local.get 16
                              i32.const 256
                              i32.lt_u
                              local.tee 18
                              select
                              call $memset
                              drop
                              block  ;; label = @14
                                local.get 18
                                br_if 0 (;@14;)
                                loop  ;; label = @15
                                  block  ;; label = @16
                                    local.get 0
                                    i32.load8_u
                                    i32.const 32
                                    i32.and
                                    br_if 0 (;@16;)
                                    local.get 5
                                    i32.const 624
                                    i32.add
                                    i32.const 256
                                    local.get 0
                                    call $__fwritex
                                    drop
                                  end
                                  local.get 16
                                  i32.const -256
                                  i32.add
                                  local.tee 16
                                  i32.const 255
                                  i32.gt_u
                                  br_if 0 (;@15;)
                                end
                              end
                              local.get 0
                              i32.load8_u
                              i32.const 32
                              i32.and
                              br_if 0 (;@13;)
                              local.get 5
                              i32.const 624
                              i32.add
                              local.get 16
                              local.get 0
                              call $__fwritex
                              drop
                            end
                            block  ;; label = @13
                              local.get 0
                              i32.load
                              local.tee 16
                              i32.const 32
                              i32.and
                              br_if 0 (;@13;)
                              local.get 34
                              local.get 32
                              local.get 0
                              call $__fwritex
                              drop
                              local.get 0
                              i32.load
                              local.set 16
                            end
                            block  ;; label = @13
                              local.get 16
                              i32.const 32
                              i32.and
                              br_if 0 (;@13;)
                              i32.const 1415
                              i32.const 2127
                              local.get 26
                              i32.const 32
                              i32.and
                              local.tee 16
                              select
                              i32.const 1437
                              i32.const 2131
                              local.get 16
                              select
                              local.get 31
                              local.get 31
                              f64.ne
                              select
                              i32.const 3
                              local.get 0
                              call $__fwritex
                              drop
                            end
                            block  ;; label = @13
                              local.get 19
                              i32.const 73728
                              i32.and
                              i32.const 8192
                              i32.ne
                              br_if 0 (;@13;)
                              local.get 23
                              local.get 17
                              i32.le_s
                              br_if 0 (;@13;)
                              local.get 5
                              i32.const 624
                              i32.add
                              i32.const 32
                              local.get 23
                              local.get 17
                              i32.sub
                              local.tee 16
                              i32.const 256
                              local.get 16
                              i32.const 256
                              i32.lt_u
                              local.tee 18
                              select
                              call $memset
                              drop
                              block  ;; label = @14
                                local.get 18
                                br_if 0 (;@14;)
                                loop  ;; label = @15
                                  block  ;; label = @16
                                    local.get 0
                                    i32.load8_u
                                    i32.const 32
                                    i32.and
                                    br_if 0 (;@16;)
                                    local.get 5
                                    i32.const 624
                                    i32.add
                                    i32.const 256
                                    local.get 0
                                    call $__fwritex
                                    drop
                                  end
                                  local.get 16
                                  i32.const -256
                                  i32.add
                                  local.tee 16
                                  i32.const 255
                                  i32.gt_u
                                  br_if 0 (;@15;)
                                end
                              end
                              local.get 0
                              i32.load8_u
                              i32.const 32
                              i32.and
                              br_if 0 (;@13;)
                              local.get 5
                              i32.const 624
                              i32.add
                              local.get 16
                              local.get 0
                              call $__fwritex
                              drop
                            end
                            local.get 23
                            local.get 17
                            local.get 23
                            local.get 17
                            i32.gt_s
                            select
                            local.set 16
                            br 7 (;@5;)
                          end
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 31
                                local.get 5
                                i32.const 108
                                i32.add
                                call $frexp
                                local.tee 31
                                local.get 31
                                f64.add
                                local.tee 31
                                f64.const 0x0p+0 (;=0;)
                                f64.eq
                                br_if 0 (;@14;)
                                local.get 5
                                local.get 5
                                i32.load offset=108
                                local.tee 16
                                i32.const -1
                                i32.add
                                i32.store offset=108
                                local.get 26
                                i32.const 32
                                i32.or
                                local.tee 35
                                i32.const 97
                                i32.ne
                                br_if 1 (;@13;)
                                br 8 (;@6;)
                              end
                              local.get 26
                              i32.const 32
                              i32.or
                              local.tee 35
                              i32.const 97
                              i32.eq
                              br_if 7 (;@6;)
                              i32.const 6
                              local.get 20
                              local.get 20
                              i32.const 0
                              i32.lt_s
                              select
                              local.set 36
                              local.get 5
                              i32.load offset=108
                              local.set 21
                              br 1 (;@12;)
                            end
                            local.get 5
                            local.get 16
                            i32.const -29
                            i32.add
                            local.tee 21
                            i32.store offset=108
                            i32.const 6
                            local.get 20
                            local.get 20
                            i32.const 0
                            i32.lt_s
                            select
                            local.set 36
                            local.get 31
                            f64.const 0x1p+28 (;=2.68435e+08;)
                            f64.mul
                            local.set 31
                          end
                          local.get 5
                          i32.const 112
                          i32.add
                          local.get 12
                          local.get 21
                          i32.const 0
                          i32.lt_s
                          select
                          local.tee 28
                          local.set 17
                          loop  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 31
                                f64.const 0x1p+32 (;=4.29497e+09;)
                                f64.lt
                                local.get 31
                                f64.const 0x0p+0 (;=0;)
                                f64.ge
                                i32.and
                                i32.eqz
                                br_if 0 (;@14;)
                                local.get 31
                                i32.trunc_f64_u
                                local.set 16
                                br 1 (;@13;)
                              end
                              i32.const 0
                              local.set 16
                            end
                            local.get 17
                            local.get 16
                            i32.store
                            local.get 17
                            i32.const 4
                            i32.add
                            local.set 17
                            local.get 31
                            local.get 16
                            f64.convert_i32_u
                            f64.sub
                            f64.const 0x1.dcd65p+29 (;=1e+09;)
                            f64.mul
                            local.tee 31
                            f64.const 0x0p+0 (;=0;)
                            f64.ne
                            br_if 0 (;@12;)
                          end
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 21
                              i32.const 1
                              i32.ge_s
                              br_if 0 (;@13;)
                              local.get 17
                              local.set 16
                              local.get 28
                              local.set 18
                              br 1 (;@12;)
                            end
                            local.get 28
                            local.set 18
                            loop  ;; label = @13
                              local.get 21
                              i32.const 29
                              local.get 21
                              i32.const 29
                              i32.lt_s
                              select
                              local.set 21
                              block  ;; label = @14
                                local.get 17
                                i32.const -4
                                i32.add
                                local.tee 16
                                local.get 18
                                i32.lt_u
                                br_if 0 (;@14;)
                                local.get 21
                                i64.extend_i32_u
                                local.set 30
                                i64.const 0
                                local.set 29
                                loop  ;; label = @15
                                  local.get 16
                                  local.get 16
                                  i64.load32_u
                                  local.get 30
                                  i64.shl
                                  local.get 29
                                  i64.const 4294967295
                                  i64.and
                                  i64.add
                                  local.tee 29
                                  local.get 29
                                  i64.const 1000000000
                                  i64.div_u
                                  local.tee 29
                                  i64.const 1000000000
                                  i64.mul
                                  i64.sub
                                  i64.store32
                                  local.get 16
                                  i32.const -4
                                  i32.add
                                  local.tee 16
                                  local.get 18
                                  i32.ge_u
                                  br_if 0 (;@15;)
                                end
                                local.get 29
                                i32.wrap_i64
                                local.tee 16
                                i32.eqz
                                br_if 0 (;@14;)
                                local.get 18
                                i32.const -4
                                i32.add
                                local.tee 18
                                local.get 16
                                i32.store
                              end
                              block  ;; label = @14
                                loop  ;; label = @15
                                  local.get 17
                                  local.tee 16
                                  local.get 18
                                  i32.le_u
                                  br_if 1 (;@14;)
                                  local.get 16
                                  i32.const -4
                                  i32.add
                                  local.tee 17
                                  i32.load
                                  i32.eqz
                                  br_if 0 (;@15;)
                                end
                              end
                              local.get 5
                              local.get 5
                              i32.load offset=108
                              local.get 21
                              i32.sub
                              local.tee 21
                              i32.store offset=108
                              local.get 16
                              local.set 17
                              local.get 21
                              i32.const 0
                              i32.gt_s
                              br_if 0 (;@13;)
                            end
                          end
                          local.get 36
                          i32.const 25
                          i32.add
                          i32.const 9
                          i32.div_u
                          local.set 17
                          block  ;; label = @12
                            local.get 21
                            i32.const -1
                            i32.gt_s
                            br_if 0 (;@12;)
                            local.get 17
                            i32.const 1
                            i32.add
                            local.set 27
                            loop  ;; label = @13
                              i32.const 9
                              i32.const 0
                              local.get 21
                              i32.sub
                              local.get 21
                              i32.const -9
                              i32.lt_s
                              select
                              local.set 20
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 18
                                  local.get 16
                                  i32.ge_u
                                  br_if 0 (;@15;)
                                  i32.const 1000000000
                                  local.get 20
                                  i32.shr_u
                                  local.set 25
                                  i32.const -1
                                  local.get 20
                                  i32.shl
                                  i32.const -1
                                  i32.xor
                                  local.set 24
                                  i32.const 0
                                  local.set 21
                                  local.get 18
                                  local.set 17
                                  loop  ;; label = @16
                                    local.get 17
                                    local.get 17
                                    i32.load
                                    local.tee 22
                                    local.get 20
                                    i32.shr_u
                                    local.get 21
                                    i32.add
                                    i32.store
                                    local.get 22
                                    local.get 24
                                    i32.and
                                    local.get 25
                                    i32.mul
                                    local.set 21
                                    local.get 17
                                    i32.const 4
                                    i32.add
                                    local.tee 17
                                    local.get 16
                                    i32.lt_u
                                    br_if 0 (;@16;)
                                  end
                                  local.get 18
                                  i32.load
                                  local.set 17
                                  local.get 21
                                  i32.eqz
                                  br_if 1 (;@14;)
                                  local.get 16
                                  local.get 21
                                  i32.store
                                  local.get 16
                                  i32.const 4
                                  i32.add
                                  local.set 16
                                  br 1 (;@14;)
                                end
                                local.get 18
                                i32.load
                                local.set 17
                              end
                              local.get 5
                              local.get 5
                              i32.load offset=108
                              local.get 20
                              i32.add
                              local.tee 21
                              i32.store offset=108
                              local.get 28
                              local.get 18
                              local.get 17
                              i32.eqz
                              i32.const 2
                              i32.shl
                              i32.add
                              local.tee 18
                              local.get 35
                              i32.const 102
                              i32.eq
                              select
                              local.tee 17
                              local.get 27
                              i32.const 2
                              i32.shl
                              i32.add
                              local.get 16
                              local.get 16
                              local.get 17
                              i32.sub
                              i32.const 2
                              i32.shr_s
                              local.get 27
                              i32.gt_s
                              select
                              local.set 16
                              local.get 21
                              i32.const 0
                              i32.lt_s
                              br_if 0 (;@13;)
                            end
                          end
                          i32.const 0
                          local.set 20
                          block  ;; label = @12
                            local.get 18
                            local.get 16
                            i32.ge_u
                            br_if 0 (;@12;)
                            local.get 28
                            local.get 18
                            i32.sub
                            i32.const 2
                            i32.shr_s
                            i32.const 9
                            i32.mul
                            local.set 20
                            local.get 18
                            i32.load
                            local.tee 21
                            i32.const 10
                            i32.lt_u
                            br_if 0 (;@12;)
                            i32.const 10
                            local.set 17
                            loop  ;; label = @13
                              local.get 20
                              i32.const 1
                              i32.add
                              local.set 20
                              local.get 21
                              local.get 17
                              i32.const 10
                              i32.mul
                              local.tee 17
                              i32.ge_u
                              br_if 0 (;@13;)
                            end
                          end
                          block  ;; label = @12
                            local.get 36
                            i32.const 0
                            local.get 20
                            local.get 35
                            i32.const 102
                            i32.eq
                            select
                            i32.sub
                            local.get 35
                            i32.const 103
                            i32.eq
                            local.tee 24
                            local.get 36
                            i32.const 0
                            i32.ne
                            i32.and
                            i32.sub
                            local.tee 17
                            local.get 16
                            local.get 28
                            i32.sub
                            i32.const 2
                            i32.shr_s
                            i32.const 9
                            i32.mul
                            i32.const -9
                            i32.add
                            i32.ge_s
                            br_if 0 (;@12;)
                            local.get 17
                            i32.const 9216
                            i32.add
                            local.tee 22
                            i32.const 9
                            i32.div_s
                            local.tee 21
                            i32.const 2
                            i32.shl
                            local.get 28
                            i32.add
                            local.tee 37
                            i32.const -4092
                            i32.add
                            local.set 25
                            i32.const 10
                            local.set 17
                            block  ;; label = @13
                              local.get 22
                              local.get 21
                              i32.const 9
                              i32.mul
                              local.tee 35
                              i32.sub
                              local.tee 27
                              i32.const 7
                              i32.gt_s
                              br_if 0 (;@13;)
                              i32.const 8
                              local.get 27
                              i32.sub
                              i32.const 7
                              i32.and
                              local.set 21
                              i32.const 10
                              local.set 17
                              block  ;; label = @14
                                i32.const 7
                                local.get 27
                                i32.sub
                                i32.const 7
                                i32.lt_u
                                br_if 0 (;@14;)
                                i32.const 0
                                local.get 35
                                local.get 22
                                i32.sub
                                i32.const 8
                                i32.add
                                i32.const -8
                                i32.and
                                i32.sub
                                local.set 22
                                i32.const 10
                                local.set 17
                                loop  ;; label = @15
                                  local.get 17
                                  i32.const 100000000
                                  i32.mul
                                  local.set 17
                                  local.get 22
                                  i32.const 8
                                  i32.add
                                  local.tee 22
                                  br_if 0 (;@15;)
                                end
                              end
                              local.get 21
                              i32.eqz
                              br_if 0 (;@13;)
                              loop  ;; label = @14
                                local.get 17
                                i32.const 10
                                i32.mul
                                local.set 17
                                local.get 21
                                i32.const -1
                                i32.add
                                local.tee 21
                                br_if 0 (;@14;)
                              end
                            end
                            local.get 25
                            i32.const 4
                            i32.add
                            local.set 27
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 25
                                i32.load
                                local.tee 22
                                local.get 22
                                local.get 17
                                i32.div_u
                                local.tee 35
                                local.get 17
                                i32.mul
                                i32.sub
                                local.tee 21
                                br_if 0 (;@14;)
                                local.get 27
                                local.get 16
                                i32.eq
                                br_if 1 (;@13;)
                              end
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 35
                                  i32.const 1
                                  i32.and
                                  br_if 0 (;@15;)
                                  f64.const 0x1p+53 (;=9.0072e+15;)
                                  local.set 31
                                  local.get 17
                                  i32.const 1000000000
                                  i32.ne
                                  br_if 1 (;@14;)
                                  local.get 25
                                  local.get 18
                                  i32.le_u
                                  br_if 1 (;@14;)
                                  local.get 25
                                  i32.const -4
                                  i32.add
                                  i32.load8_u
                                  i32.const 1
                                  i32.and
                                  i32.eqz
                                  br_if 1 (;@14;)
                                end
                                f64.const 0x1.0000000000001p+53 (;=9.0072e+15;)
                                local.set 31
                              end
                              f64.const 0x1p-1 (;=0.5;)
                              f64.const 0x1p+0 (;=1;)
                              f64.const 0x1.8p+0 (;=1.5;)
                              local.get 27
                              local.get 16
                              i32.eq
                              select
                              f64.const 0x1.8p+0 (;=1.5;)
                              local.get 21
                              local.get 17
                              i32.const 1
                              i32.shr_u
                              local.tee 27
                              i32.eq
                              select
                              local.get 21
                              local.get 27
                              i32.lt_u
                              select
                              local.set 38
                              block  ;; label = @14
                                local.get 33
                                br_if 0 (;@14;)
                                local.get 34
                                i32.load8_u
                                i32.const 45
                                i32.ne
                                br_if 0 (;@14;)
                                local.get 38
                                f64.neg
                                local.set 38
                                local.get 31
                                f64.neg
                                local.set 31
                              end
                              local.get 25
                              local.get 22
                              local.get 21
                              i32.sub
                              local.tee 21
                              i32.store
                              local.get 31
                              local.get 38
                              f64.add
                              local.get 31
                              f64.eq
                              br_if 0 (;@13;)
                              local.get 25
                              local.get 21
                              local.get 17
                              i32.add
                              local.tee 17
                              i32.store
                              block  ;; label = @14
                                local.get 17
                                i32.const 1000000000
                                i32.lt_u
                                br_if 0 (;@14;)
                                local.get 37
                                i32.const -4096
                                i32.add
                                local.set 17
                                loop  ;; label = @15
                                  local.get 17
                                  i32.const 4
                                  i32.add
                                  i32.const 0
                                  i32.store
                                  block  ;; label = @16
                                    local.get 17
                                    local.get 18
                                    i32.ge_u
                                    br_if 0 (;@16;)
                                    local.get 18
                                    i32.const -4
                                    i32.add
                                    local.tee 18
                                    i32.const 0
                                    i32.store
                                  end
                                  local.get 17
                                  local.get 17
                                  i32.load
                                  i32.const 1
                                  i32.add
                                  local.tee 21
                                  i32.store
                                  local.get 17
                                  i32.const -4
                                  i32.add
                                  local.set 17
                                  local.get 21
                                  i32.const 999999999
                                  i32.gt_u
                                  br_if 0 (;@15;)
                                end
                                local.get 17
                                i32.const 4
                                i32.add
                                local.set 25
                              end
                              local.get 28
                              local.get 18
                              i32.sub
                              i32.const 2
                              i32.shr_s
                              i32.const 9
                              i32.mul
                              local.set 20
                              local.get 18
                              i32.load
                              local.tee 21
                              i32.const 10
                              i32.lt_u
                              br_if 0 (;@13;)
                              i32.const 10
                              local.set 17
                              loop  ;; label = @14
                                local.get 20
                                i32.const 1
                                i32.add
                                local.set 20
                                local.get 21
                                local.get 17
                                i32.const 10
                                i32.mul
                                local.tee 17
                                i32.ge_u
                                br_if 0 (;@14;)
                              end
                            end
                            local.get 25
                            i32.const 4
                            i32.add
                            local.tee 17
                            local.get 16
                            local.get 16
                            local.get 17
                            i32.gt_u
                            select
                            local.set 16
                          end
                          local.get 16
                          local.get 28
                          i32.sub
                          local.set 17
                          block  ;; label = @12
                            loop  ;; label = @13
                              local.get 17
                              local.set 21
                              local.get 16
                              local.tee 22
                              local.get 18
                              i32.le_u
                              local.tee 25
                              br_if 1 (;@12;)
                              local.get 21
                              i32.const -4
                              i32.add
                              local.set 17
                              local.get 22
                              i32.const -4
                              i32.add
                              local.tee 16
                              i32.load
                              i32.eqz
                              br_if 0 (;@13;)
                            end
                          end
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 24
                              br_if 0 (;@13;)
                              local.get 19
                              i32.const 8
                              i32.and
                              local.set 27
                              br 1 (;@12;)
                            end
                            local.get 20
                            i32.const -1
                            i32.xor
                            i32.const -1
                            local.get 36
                            i32.const 1
                            local.get 36
                            select
                            local.tee 16
                            local.get 20
                            i32.gt_s
                            local.get 20
                            i32.const -5
                            i32.gt_s
                            i32.and
                            local.tee 17
                            select
                            local.get 16
                            i32.add
                            local.set 36
                            i32.const -1
                            i32.const -2
                            local.get 17
                            select
                            local.get 26
                            i32.add
                            local.set 26
                            local.get 19
                            i32.const 8
                            i32.and
                            local.tee 27
                            br_if 0 (;@12;)
                            i32.const -9
                            local.set 16
                            block  ;; label = @13
                              local.get 25
                              br_if 0 (;@13;)
                              local.get 22
                              i32.const -4
                              i32.add
                              i32.load
                              local.tee 25
                              i32.eqz
                              br_if 0 (;@13;)
                              i32.const 0
                              local.set 16
                              local.get 25
                              i32.const 10
                              i32.rem_u
                              br_if 0 (;@13;)
                              i32.const 10
                              local.set 17
                              i32.const 0
                              local.set 16
                              loop  ;; label = @14
                                local.get 16
                                i32.const -1
                                i32.add
                                local.set 16
                                local.get 25
                                local.get 17
                                i32.const 10
                                i32.mul
                                local.tee 17
                                i32.rem_u
                                i32.eqz
                                br_if 0 (;@14;)
                              end
                            end
                            local.get 21
                            i32.const 2
                            i32.shr_s
                            i32.const 9
                            i32.mul
                            i32.const -9
                            i32.add
                            local.set 17
                            block  ;; label = @13
                              local.get 26
                              i32.const -33
                              i32.and
                              i32.const 70
                              i32.ne
                              br_if 0 (;@13;)
                              i32.const 0
                              local.set 27
                              local.get 36
                              local.get 17
                              local.get 16
                              i32.add
                              local.tee 16
                              i32.const 0
                              local.get 16
                              i32.const 0
                              i32.gt_s
                              select
                              local.tee 16
                              local.get 36
                              local.get 16
                              i32.lt_s
                              select
                              local.set 36
                              br 1 (;@12;)
                            end
                            i32.const 0
                            local.set 27
                            local.get 36
                            local.get 17
                            local.get 20
                            i32.add
                            local.get 16
                            i32.add
                            local.tee 16
                            i32.const 0
                            local.get 16
                            i32.const 0
                            i32.gt_s
                            select
                            local.tee 16
                            local.get 36
                            local.get 16
                            i32.lt_s
                            select
                            local.set 36
                          end
                          i32.const -1
                          local.set 16
                          local.get 36
                          i32.const 2147483645
                          i32.const 2147483646
                          local.get 36
                          local.get 27
                          i32.or
                          local.tee 17
                          select
                          i32.gt_s
                          br_if 6 (;@5;)
                          local.get 36
                          local.get 17
                          i32.const 0
                          i32.ne
                          local.tee 39
                          i32.add
                          i32.const 1
                          i32.add
                          local.set 35
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 26
                              i32.const -33
                              i32.and
                              i32.const 70
                              i32.ne
                              local.tee 37
                              br_if 0 (;@13;)
                              local.get 20
                              i32.const 2147483647
                              local.get 35
                              i32.sub
                              i32.gt_s
                              br_if 8 (;@5;)
                              local.get 20
                              i32.const 0
                              local.get 20
                              i32.const 0
                              i32.gt_s
                              select
                              local.set 17
                              br 1 (;@12;)
                            end
                            local.get 6
                            local.set 21
                            local.get 6
                            local.set 17
                            block  ;; label = @13
                              local.get 20
                              local.get 20
                              i32.const 31
                              i32.shr_s
                              local.tee 16
                              i32.add
                              local.get 16
                              i32.xor
                              local.tee 16
                              i32.eqz
                              br_if 0 (;@13;)
                              loop  ;; label = @14
                                local.get 17
                                i32.const -1
                                i32.add
                                local.tee 17
                                local.get 16
                                local.get 16
                                i32.const 10
                                i32.div_u
                                local.tee 25
                                i32.const 10
                                i32.mul
                                i32.sub
                                i32.const 48
                                i32.or
                                i32.store8
                                local.get 21
                                i32.const -1
                                i32.add
                                local.set 21
                                local.get 16
                                i32.const 9
                                i32.gt_u
                                local.set 24
                                local.get 25
                                local.set 16
                                local.get 24
                                br_if 0 (;@14;)
                              end
                            end
                            block  ;; label = @13
                              local.get 6
                              local.get 21
                              i32.sub
                              i32.const 1
                              i32.gt_s
                              br_if 0 (;@13;)
                              local.get 17
                              local.get 11
                              local.get 21
                              i32.sub
                              i32.add
                              local.tee 17
                              i32.const 48
                              local.get 10
                              local.get 21
                              i32.add
                              call $memset
                              drop
                            end
                            local.get 17
                            i32.const -2
                            i32.add
                            local.tee 33
                            local.get 26
                            i32.store8
                            i32.const -1
                            local.set 16
                            local.get 17
                            i32.const -1
                            i32.add
                            i32.const 45
                            i32.const 43
                            local.get 20
                            i32.const 0
                            i32.lt_s
                            select
                            i32.store8
                            local.get 6
                            local.get 33
                            i32.sub
                            local.tee 17
                            i32.const 2147483647
                            local.get 35
                            i32.sub
                            i32.gt_s
                            br_if 7 (;@5;)
                          end
                          i32.const -1
                          local.set 16
                          local.get 17
                          local.get 35
                          i32.add
                          local.tee 17
                          local.get 32
                          i32.const 2147483647
                          i32.xor
                          i32.gt_s
                          br_if 6 (;@5;)
                          local.get 17
                          local.get 32
                          i32.add
                          local.set 24
                          block  ;; label = @12
                            local.get 19
                            i32.const 73728
                            i32.and
                            local.tee 19
                            br_if 0 (;@12;)
                            local.get 23
                            local.get 24
                            i32.le_s
                            br_if 0 (;@12;)
                            local.get 5
                            i32.const 624
                            i32.add
                            i32.const 32
                            local.get 23
                            local.get 24
                            i32.sub
                            local.tee 16
                            i32.const 256
                            local.get 16
                            i32.const 256
                            i32.lt_u
                            local.tee 17
                            select
                            call $memset
                            drop
                            block  ;; label = @13
                              local.get 17
                              br_if 0 (;@13;)
                              loop  ;; label = @14
                                block  ;; label = @15
                                  local.get 0
                                  i32.load8_u
                                  i32.const 32
                                  i32.and
                                  br_if 0 (;@15;)
                                  local.get 5
                                  i32.const 624
                                  i32.add
                                  i32.const 256
                                  local.get 0
                                  call $__fwritex
                                  drop
                                end
                                local.get 16
                                i32.const -256
                                i32.add
                                local.tee 16
                                i32.const 255
                                i32.gt_u
                                br_if 0 (;@14;)
                              end
                            end
                            local.get 0
                            i32.load8_u
                            i32.const 32
                            i32.and
                            br_if 0 (;@12;)
                            local.get 5
                            i32.const 624
                            i32.add
                            local.get 16
                            local.get 0
                            call $__fwritex
                            drop
                          end
                          block  ;; label = @12
                            local.get 0
                            i32.load8_u
                            i32.const 32
                            i32.and
                            br_if 0 (;@12;)
                            local.get 34
                            local.get 32
                            local.get 0
                            call $__fwritex
                            drop
                          end
                          block  ;; label = @12
                            local.get 19
                            i32.const 65536
                            i32.ne
                            br_if 0 (;@12;)
                            local.get 23
                            local.get 24
                            i32.le_s
                            br_if 0 (;@12;)
                            local.get 5
                            i32.const 624
                            i32.add
                            i32.const 48
                            local.get 23
                            local.get 24
                            i32.sub
                            local.tee 16
                            i32.const 256
                            local.get 16
                            i32.const 256
                            i32.lt_u
                            local.tee 17
                            select
                            call $memset
                            drop
                            block  ;; label = @13
                              local.get 17
                              br_if 0 (;@13;)
                              loop  ;; label = @14
                                block  ;; label = @15
                                  local.get 0
                                  i32.load8_u
                                  i32.const 32
                                  i32.and
                                  br_if 0 (;@15;)
                                  local.get 5
                                  i32.const 624
                                  i32.add
                                  i32.const 256
                                  local.get 0
                                  call $__fwritex
                                  drop
                                end
                                local.get 16
                                i32.const -256
                                i32.add
                                local.tee 16
                                i32.const 255
                                i32.gt_u
                                br_if 0 (;@14;)
                              end
                            end
                            local.get 0
                            i32.load8_u
                            i32.const 32
                            i32.and
                            br_if 0 (;@12;)
                            local.get 5
                            i32.const 624
                            i32.add
                            local.get 16
                            local.get 0
                            call $__fwritex
                            drop
                          end
                          local.get 37
                          br_if 3 (;@8;)
                          local.get 28
                          local.get 18
                          local.get 18
                          local.get 28
                          i32.gt_u
                          select
                          local.tee 20
                          local.set 25
                          loop  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    local.get 25
                                    i32.load
                                    local.tee 16
                                    i32.eqz
                                    br_if 0 (;@16;)
                                    i32.const 0
                                    local.set 17
                                    loop  ;; label = @17
                                      local.get 5
                                      i32.const 80
                                      i32.add
                                      local.get 17
                                      i32.add
                                      i32.const 8
                                      i32.add
                                      local.get 16
                                      local.get 16
                                      i32.const 10
                                      i32.div_u
                                      local.tee 18
                                      i32.const 10
                                      i32.mul
                                      i32.sub
                                      i32.const 48
                                      i32.or
                                      i32.store8
                                      local.get 17
                                      i32.const -1
                                      i32.add
                                      local.set 17
                                      local.get 16
                                      i32.const 9
                                      i32.gt_u
                                      local.set 21
                                      local.get 18
                                      local.set 16
                                      local.get 21
                                      br_if 0 (;@17;)
                                    end
                                    local.get 5
                                    i32.const 80
                                    i32.add
                                    local.get 17
                                    i32.add
                                    i32.const 9
                                    i32.add
                                    local.set 16
                                    block  ;; label = @17
                                      local.get 25
                                      local.get 20
                                      i32.eq
                                      br_if 0 (;@17;)
                                      local.get 16
                                      local.get 5
                                      i32.const 80
                                      i32.add
                                      i32.le_u
                                      br_if 4 (;@13;)
                                      br 3 (;@14;)
                                    end
                                    local.get 17
                                    br_if 3 (;@13;)
                                    br 1 (;@15;)
                                  end
                                  i32.const 0
                                  local.set 17
                                  local.get 9
                                  local.set 16
                                  local.get 25
                                  local.get 20
                                  i32.ne
                                  br_if 1 (;@14;)
                                end
                                local.get 16
                                i32.const -1
                                i32.add
                                local.tee 16
                                i32.const 48
                                i32.store8
                                br 1 (;@13;)
                              end
                              local.get 5
                              i32.const 80
                              i32.add
                              i32.const 48
                              local.get 17
                              i32.const 9
                              i32.add
                              call $memset
                              drop
                              local.get 5
                              i32.const 80
                              i32.add
                              local.set 16
                            end
                            block  ;; label = @13
                              local.get 0
                              i32.load8_u
                              i32.const 32
                              i32.and
                              br_if 0 (;@13;)
                              local.get 16
                              local.get 9
                              local.get 16
                              i32.sub
                              local.get 0
                              call $__fwritex
                              drop
                            end
                            local.get 25
                            i32.const 4
                            i32.add
                            local.tee 25
                            local.get 28
                            i32.le_u
                            br_if 0 (;@12;)
                          end
                          i32.const 0
                          local.set 16
                          block  ;; label = @12
                            local.get 39
                            i32.eqz
                            br_if 0 (;@12;)
                            block  ;; label = @13
                              local.get 0
                              i32.load8_u
                              i32.const 32
                              i32.and
                              br_if 0 (;@13;)
                              i32.const 4327
                              i32.const 1
                              local.get 0
                              call $__fwritex
                              drop
                            end
                            block  ;; label = @13
                              local.get 25
                              local.get 22
                              i32.lt_u
                              br_if 0 (;@13;)
                              local.get 36
                              local.set 16
                              br 1 (;@12;)
                            end
                            block  ;; label = @13
                              local.get 36
                              i32.const 1
                              i32.ge_s
                              br_if 0 (;@13;)
                              local.get 36
                              local.set 16
                              br 1 (;@12;)
                            end
                            loop  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    local.get 25
                                    i32.load
                                    local.tee 16
                                    br_if 0 (;@16;)
                                    local.get 9
                                    local.set 17
                                    local.get 9
                                    local.set 18
                                    br 1 (;@15;)
                                  end
                                  local.get 9
                                  local.set 18
                                  local.get 9
                                  local.set 17
                                  loop  ;; label = @16
                                    local.get 17
                                    i32.const -1
                                    i32.add
                                    local.tee 17
                                    local.get 16
                                    local.get 16
                                    i32.const 10
                                    i32.div_u
                                    local.tee 21
                                    i32.const 10
                                    i32.mul
                                    i32.sub
                                    i32.const 48
                                    i32.or
                                    i32.store8
                                    local.get 18
                                    i32.const -1
                                    i32.add
                                    local.set 18
                                    local.get 16
                                    i32.const 9
                                    i32.gt_u
                                    local.set 20
                                    local.get 21
                                    local.set 16
                                    local.get 20
                                    br_if 0 (;@16;)
                                  end
                                  local.get 17
                                  local.get 5
                                  i32.const 80
                                  i32.add
                                  i32.le_u
                                  br_if 1 (;@14;)
                                end
                                local.get 17
                                local.get 5
                                i32.const 80
                                i32.add
                                local.get 18
                                i32.sub
                                i32.add
                                local.tee 17
                                i32.const 48
                                local.get 18
                                local.get 5
                                i32.const 80
                                i32.add
                                i32.sub
                                call $memset
                                drop
                              end
                              block  ;; label = @14
                                local.get 0
                                i32.load8_u
                                i32.const 32
                                i32.and
                                br_if 0 (;@14;)
                                local.get 17
                                local.get 36
                                i32.const 9
                                local.get 36
                                i32.const 9
                                i32.lt_s
                                select
                                local.get 0
                                call $__fwritex
                                drop
                              end
                              local.get 36
                              i32.const -9
                              i32.add
                              local.set 16
                              local.get 25
                              i32.const 4
                              i32.add
                              local.tee 25
                              local.get 22
                              i32.ge_u
                              br_if 1 (;@12;)
                              local.get 36
                              i32.const 9
                              i32.gt_s
                              local.set 17
                              local.get 16
                              local.set 36
                              local.get 17
                              br_if 0 (;@13;)
                            end
                          end
                          local.get 0
                          i32.const 48
                          local.get 16
                          i32.const 9
                          i32.add
                          i32.const 9
                          i32.const 0
                          call $pad
                          br 4 (;@7;)
                        end
                        i32.const 0
                        i32.const 28
                        i32.store offset=18256
                        br 8 (;@2;)
                      end
                      i32.const 0
                      local.set 27
                      i32.const 1188
                      local.set 28
                      local.get 13
                      local.set 16
                      local.get 19
                      local.set 25
                      local.get 20
                      local.set 22
                    end
                    local.get 16
                    local.get 17
                    i32.sub
                    local.tee 20
                    local.get 22
                    local.get 22
                    local.get 20
                    i32.lt_s
                    select
                    local.tee 24
                    i32.const 2147483647
                    local.get 27
                    i32.sub
                    i32.gt_s
                    br_if 5 (;@3;)
                    local.get 27
                    local.get 24
                    i32.add
                    local.tee 21
                    local.get 23
                    local.get 23
                    local.get 21
                    i32.lt_s
                    select
                    local.tee 16
                    local.get 18
                    i32.gt_s
                    br_if 5 (;@3;)
                    block  ;; label = @9
                      local.get 25
                      i32.const 73728
                      i32.and
                      local.tee 25
                      br_if 0 (;@9;)
                      local.get 21
                      local.get 23
                      i32.ge_s
                      br_if 0 (;@9;)
                      local.get 5
                      i32.const 112
                      i32.add
                      i32.const 32
                      local.get 16
                      local.get 21
                      i32.sub
                      local.tee 18
                      i32.const 256
                      local.get 18
                      i32.const 256
                      i32.lt_u
                      local.tee 19
                      select
                      call $memset
                      drop
                      block  ;; label = @10
                        local.get 19
                        br_if 0 (;@10;)
                        loop  ;; label = @11
                          block  ;; label = @12
                            local.get 0
                            i32.load8_u
                            i32.const 32
                            i32.and
                            br_if 0 (;@12;)
                            local.get 5
                            i32.const 112
                            i32.add
                            i32.const 256
                            local.get 0
                            call $__fwritex
                            drop
                          end
                          local.get 18
                          i32.const -256
                          i32.add
                          local.tee 18
                          i32.const 255
                          i32.gt_u
                          br_if 0 (;@11;)
                        end
                      end
                      local.get 0
                      i32.load8_u
                      i32.const 32
                      i32.and
                      br_if 0 (;@9;)
                      local.get 5
                      i32.const 112
                      i32.add
                      local.get 18
                      local.get 0
                      call $__fwritex
                      drop
                    end
                    block  ;; label = @9
                      local.get 0
                      i32.load8_u
                      i32.const 32
                      i32.and
                      br_if 0 (;@9;)
                      local.get 28
                      local.get 27
                      local.get 0
                      call $__fwritex
                      drop
                    end
                    block  ;; label = @9
                      local.get 25
                      i32.const 65536
                      i32.ne
                      br_if 0 (;@9;)
                      local.get 21
                      local.get 23
                      i32.ge_s
                      br_if 0 (;@9;)
                      local.get 5
                      i32.const 112
                      i32.add
                      i32.const 48
                      local.get 16
                      local.get 21
                      i32.sub
                      local.tee 18
                      i32.const 256
                      local.get 18
                      i32.const 256
                      i32.lt_u
                      local.tee 19
                      select
                      call $memset
                      drop
                      block  ;; label = @10
                        local.get 19
                        br_if 0 (;@10;)
                        loop  ;; label = @11
                          block  ;; label = @12
                            local.get 0
                            i32.load8_u
                            i32.const 32
                            i32.and
                            br_if 0 (;@12;)
                            local.get 5
                            i32.const 112
                            i32.add
                            i32.const 256
                            local.get 0
                            call $__fwritex
                            drop
                          end
                          local.get 18
                          i32.const -256
                          i32.add
                          local.tee 18
                          i32.const 255
                          i32.gt_u
                          br_if 0 (;@11;)
                        end
                      end
                      local.get 0
                      i32.load8_u
                      i32.const 32
                      i32.and
                      br_if 0 (;@9;)
                      local.get 5
                      i32.const 112
                      i32.add
                      local.get 18
                      local.get 0
                      call $__fwritex
                      drop
                    end
                    block  ;; label = @9
                      local.get 20
                      local.get 22
                      i32.ge_s
                      br_if 0 (;@9;)
                      local.get 5
                      i32.const 112
                      i32.add
                      i32.const 48
                      local.get 24
                      local.get 20
                      i32.sub
                      local.tee 18
                      i32.const 256
                      local.get 18
                      i32.const 256
                      i32.lt_u
                      local.tee 22
                      select
                      call $memset
                      drop
                      block  ;; label = @10
                        local.get 22
                        br_if 0 (;@10;)
                        loop  ;; label = @11
                          block  ;; label = @12
                            local.get 0
                            i32.load8_u
                            i32.const 32
                            i32.and
                            br_if 0 (;@12;)
                            local.get 5
                            i32.const 112
                            i32.add
                            i32.const 256
                            local.get 0
                            call $__fwritex
                            drop
                          end
                          local.get 18
                          i32.const -256
                          i32.add
                          local.tee 18
                          i32.const 255
                          i32.gt_u
                          br_if 0 (;@11;)
                        end
                      end
                      local.get 0
                      i32.load8_u
                      i32.const 32
                      i32.and
                      br_if 0 (;@9;)
                      local.get 5
                      i32.const 112
                      i32.add
                      local.get 18
                      local.get 0
                      call $__fwritex
                      drop
                    end
                    block  ;; label = @9
                      local.get 0
                      i32.load8_u
                      i32.const 32
                      i32.and
                      br_if 0 (;@9;)
                      local.get 17
                      local.get 20
                      local.get 0
                      call $__fwritex
                      drop
                    end
                    local.get 25
                    i32.const 8192
                    i32.ne
                    br_if 4 (;@4;)
                    local.get 21
                    local.get 23
                    i32.ge_s
                    br_if 4 (;@4;)
                    local.get 5
                    i32.const 112
                    i32.add
                    i32.const 32
                    local.get 16
                    local.get 21
                    i32.sub
                    local.tee 17
                    i32.const 256
                    local.get 17
                    i32.const 256
                    i32.lt_u
                    local.tee 18
                    select
                    call $memset
                    drop
                    block  ;; label = @9
                      local.get 18
                      br_if 0 (;@9;)
                      loop  ;; label = @10
                        block  ;; label = @11
                          local.get 0
                          i32.load8_u
                          i32.const 32
                          i32.and
                          br_if 0 (;@11;)
                          local.get 5
                          i32.const 112
                          i32.add
                          i32.const 256
                          local.get 0
                          call $__fwritex
                          drop
                        end
                        local.get 17
                        i32.const -256
                        i32.add
                        local.tee 17
                        i32.const 255
                        i32.gt_u
                        br_if 0 (;@10;)
                      end
                    end
                    local.get 0
                    i32.load8_u
                    i32.const 32
                    i32.and
                    br_if 4 (;@4;)
                    local.get 5
                    i32.const 112
                    i32.add
                    local.get 17
                    local.get 0
                    call $__fwritex
                    drop
                    br 4 (;@4;)
                  end
                  block  ;; label = @8
                    local.get 36
                    i32.const 0
                    i32.lt_s
                    br_if 0 (;@8;)
                    local.get 22
                    local.get 18
                    i32.const 4
                    i32.add
                    local.get 22
                    local.get 18
                    i32.gt_u
                    select
                    local.set 25
                    local.get 18
                    local.set 20
                    loop  ;; label = @9
                      local.get 9
                      local.set 21
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 20
                          i32.load
                          local.tee 16
                          i32.eqz
                          br_if 0 (;@11;)
                          i32.const 0
                          local.set 17
                          loop  ;; label = @12
                            local.get 5
                            i32.const 80
                            i32.add
                            local.get 17
                            i32.add
                            i32.const 8
                            i32.add
                            local.get 16
                            local.get 16
                            i32.const 10
                            i32.div_u
                            local.tee 21
                            i32.const 10
                            i32.mul
                            i32.sub
                            i32.const 48
                            i32.or
                            i32.store8
                            local.get 17
                            i32.const -1
                            i32.add
                            local.set 17
                            local.get 16
                            i32.const 9
                            i32.gt_u
                            local.set 22
                            local.get 21
                            local.set 16
                            local.get 22
                            br_if 0 (;@12;)
                          end
                          local.get 5
                          i32.const 80
                          i32.add
                          local.get 17
                          i32.add
                          i32.const 9
                          i32.add
                          local.set 21
                          local.get 17
                          br_if 1 (;@10;)
                        end
                        local.get 21
                        i32.const -1
                        i32.add
                        local.tee 21
                        i32.const 48
                        i32.store8
                      end
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 20
                          local.get 18
                          i32.eq
                          br_if 0 (;@11;)
                          local.get 21
                          local.get 5
                          i32.const 80
                          i32.add
                          i32.le_u
                          br_if 1 (;@10;)
                          local.get 5
                          i32.const 80
                          i32.add
                          i32.const 48
                          local.get 21
                          local.get 5
                          i32.const 80
                          i32.add
                          i32.sub
                          call $memset
                          drop
                          local.get 5
                          i32.const 80
                          i32.add
                          local.set 21
                          br 1 (;@10;)
                        end
                        block  ;; label = @11
                          local.get 0
                          i32.load8_u
                          i32.const 32
                          i32.and
                          br_if 0 (;@11;)
                          local.get 21
                          i32.const 1
                          local.get 0
                          call $__fwritex
                          drop
                        end
                        local.get 21
                        i32.const 1
                        i32.add
                        local.set 21
                        block  ;; label = @11
                          local.get 36
                          i32.const 0
                          i32.gt_s
                          br_if 0 (;@11;)
                          local.get 27
                          i32.eqz
                          br_if 1 (;@10;)
                        end
                        local.get 0
                        i32.load8_u
                        i32.const 32
                        i32.and
                        br_if 0 (;@10;)
                        i32.const 4327
                        i32.const 1
                        local.get 0
                        call $__fwritex
                        drop
                      end
                      local.get 9
                      local.get 21
                      i32.sub
                      local.set 16
                      block  ;; label = @10
                        local.get 0
                        i32.load8_u
                        i32.const 32
                        i32.and
                        br_if 0 (;@10;)
                        local.get 21
                        local.get 16
                        local.get 36
                        local.get 36
                        local.get 16
                        i32.gt_s
                        select
                        local.get 0
                        call $__fwritex
                        drop
                      end
                      local.get 36
                      local.get 16
                      i32.sub
                      local.set 36
                      local.get 20
                      i32.const 4
                      i32.add
                      local.tee 20
                      local.get 25
                      i32.ge_u
                      br_if 1 (;@8;)
                      local.get 36
                      i32.const -1
                      i32.gt_s
                      br_if 0 (;@9;)
                    end
                  end
                  local.get 0
                  i32.const 48
                  local.get 36
                  i32.const 18
                  i32.add
                  i32.const 18
                  i32.const 0
                  call $pad
                  local.get 0
                  i32.load8_u
                  i32.const 32
                  i32.and
                  br_if 0 (;@7;)
                  local.get 33
                  local.get 6
                  local.get 33
                  i32.sub
                  local.get 0
                  call $__fwritex
                  drop
                end
                block  ;; label = @7
                  local.get 19
                  i32.const 8192
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 23
                  local.get 24
                  i32.le_s
                  br_if 0 (;@7;)
                  local.get 5
                  i32.const 624
                  i32.add
                  i32.const 32
                  local.get 23
                  local.get 24
                  i32.sub
                  local.tee 16
                  i32.const 256
                  local.get 16
                  i32.const 256
                  i32.lt_u
                  local.tee 17
                  select
                  call $memset
                  drop
                  block  ;; label = @8
                    local.get 17
                    br_if 0 (;@8;)
                    loop  ;; label = @9
                      block  ;; label = @10
                        local.get 0
                        i32.load8_u
                        i32.const 32
                        i32.and
                        br_if 0 (;@10;)
                        local.get 5
                        i32.const 624
                        i32.add
                        i32.const 256
                        local.get 0
                        call $__fwritex
                        drop
                      end
                      local.get 16
                      i32.const -256
                      i32.add
                      local.tee 16
                      i32.const 255
                      i32.gt_u
                      br_if 0 (;@9;)
                    end
                  end
                  local.get 0
                  i32.load8_u
                  i32.const 32
                  i32.and
                  br_if 0 (;@7;)
                  local.get 5
                  i32.const 624
                  i32.add
                  local.get 16
                  local.get 0
                  call $__fwritex
                  drop
                end
                local.get 23
                local.get 24
                local.get 23
                local.get 24
                i32.gt_s
                select
                local.set 16
                br 1 (;@5;)
              end
              local.get 34
              local.get 26
              i32.const 26
              i32.shl
              i32.const 31
              i32.shr_s
              i32.const 9
              i32.and
              i32.add
              local.set 27
              block  ;; label = @6
                local.get 20
                i32.const 11
                i32.gt_u
                br_if 0 (;@6;)
                i32.const 12
                local.get 20
                i32.sub
                local.tee 16
                i32.eqz
                br_if 0 (;@6;)
                i32.const 11
                local.get 20
                i32.sub
                local.set 18
                block  ;; label = @7
                  block  ;; label = @8
                    i32.const 4
                    local.get 20
                    i32.sub
                    i32.const 7
                    i32.and
                    local.tee 17
                    br_if 0 (;@8;)
                    f64.const 0x1p+4 (;=16;)
                    local.set 38
                    br 1 (;@7;)
                  end
                  local.get 20
                  i32.const -12
                  i32.add
                  local.set 16
                  f64.const 0x1p+4 (;=16;)
                  local.set 38
                  loop  ;; label = @8
                    local.get 16
                    i32.const 1
                    i32.add
                    local.set 16
                    local.get 38
                    f64.const 0x1p+4 (;=16;)
                    f64.mul
                    local.set 38
                    local.get 17
                    i32.const -1
                    i32.add
                    local.tee 17
                    br_if 0 (;@8;)
                  end
                  i32.const 0
                  local.get 16
                  i32.sub
                  local.set 16
                end
                block  ;; label = @7
                  local.get 18
                  i32.const 7
                  i32.lt_u
                  br_if 0 (;@7;)
                  loop  ;; label = @8
                    local.get 38
                    f64.const 0x1p+4 (;=16;)
                    f64.mul
                    f64.const 0x1p+4 (;=16;)
                    f64.mul
                    f64.const 0x1p+4 (;=16;)
                    f64.mul
                    f64.const 0x1p+4 (;=16;)
                    f64.mul
                    f64.const 0x1p+4 (;=16;)
                    f64.mul
                    f64.const 0x1p+4 (;=16;)
                    f64.mul
                    f64.const 0x1p+4 (;=16;)
                    f64.mul
                    f64.const 0x1p+4 (;=16;)
                    f64.mul
                    local.set 38
                    local.get 16
                    i32.const -8
                    i32.add
                    local.tee 16
                    br_if 0 (;@8;)
                  end
                end
                block  ;; label = @7
                  local.get 27
                  i32.load8_u
                  i32.const 45
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 38
                  local.get 31
                  f64.neg
                  local.get 38
                  f64.sub
                  f64.add
                  f64.neg
                  local.set 31
                  br 1 (;@6;)
                end
                local.get 31
                local.get 38
                f64.add
                local.get 38
                f64.sub
                local.set 31
              end
              local.get 6
              local.set 16
              block  ;; label = @6
                block  ;; label = @7
                  local.get 5
                  i32.load offset=108
                  local.tee 22
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 22
                  local.get 22
                  i32.const 31
                  i32.shr_s
                  local.tee 16
                  i32.add
                  local.get 16
                  i32.xor
                  local.set 16
                  i32.const 0
                  local.set 17
                  loop  ;; label = @8
                    local.get 5
                    i32.const 68
                    i32.add
                    local.get 17
                    i32.add
                    i32.const 11
                    i32.add
                    local.get 16
                    local.get 16
                    i32.const 10
                    i32.div_u
                    local.tee 18
                    i32.const 10
                    i32.mul
                    i32.sub
                    i32.const 48
                    i32.or
                    i32.store8
                    local.get 17
                    i32.const -1
                    i32.add
                    local.set 17
                    local.get 16
                    i32.const 9
                    i32.gt_u
                    local.set 21
                    local.get 18
                    local.set 16
                    local.get 21
                    br_if 0 (;@8;)
                  end
                  local.get 5
                  i32.const 68
                  i32.add
                  local.get 17
                  i32.add
                  i32.const 12
                  i32.add
                  local.set 16
                  local.get 17
                  br_if 1 (;@6;)
                end
                local.get 16
                i32.const -1
                i32.add
                local.tee 16
                i32.const 48
                i32.store8
              end
              local.get 32
              i32.const 2
              i32.or
              local.set 25
              local.get 26
              i32.const 32
              i32.and
              local.set 18
              local.get 16
              i32.const -2
              i32.add
              local.tee 24
              local.get 26
              i32.const 15
              i32.add
              i32.store8
              local.get 16
              i32.const -1
              i32.add
              i32.const 45
              i32.const 43
              local.get 22
              i32.const 0
              i32.lt_s
              select
              i32.store8
              local.get 19
              i32.const 8
              i32.and
              local.set 21
              local.get 5
              i32.const 80
              i32.add
              local.set 17
              loop  ;; label = @6
                local.get 17
                local.set 16
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 31
                    f64.abs
                    f64.const 0x1p+31 (;=2.14748e+09;)
                    f64.lt
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 31
                    i32.trunc_f64_s
                    local.set 17
                    br 1 (;@7;)
                  end
                  i32.const -2147483648
                  local.set 17
                end
                local.get 16
                local.get 17
                i32.const 8816
                i32.add
                i32.load8_u
                local.get 18
                i32.or
                i32.store8
                local.get 31
                local.get 17
                f64.convert_i32_s
                f64.sub
                f64.const 0x1p+4 (;=16;)
                f64.mul
                local.set 31
                block  ;; label = @7
                  local.get 16
                  i32.const 1
                  i32.add
                  local.tee 17
                  local.get 5
                  i32.const 80
                  i32.add
                  i32.sub
                  i32.const 1
                  i32.ne
                  br_if 0 (;@7;)
                  block  ;; label = @8
                    local.get 31
                    f64.const 0x0p+0 (;=0;)
                    f64.ne
                    br_if 0 (;@8;)
                    local.get 20
                    i32.const 0
                    i32.gt_s
                    br_if 0 (;@8;)
                    local.get 21
                    i32.eqz
                    br_if 1 (;@7;)
                  end
                  local.get 16
                  i32.const 46
                  i32.store8 offset=1
                  local.get 16
                  i32.const 2
                  i32.add
                  local.set 17
                end
                local.get 31
                f64.const 0x0p+0 (;=0;)
                f64.ne
                br_if 0 (;@6;)
              end
              i32.const -1
              local.set 16
              i32.const 2147483645
              local.get 6
              local.get 24
              i32.sub
              local.tee 22
              local.get 25
              i32.add
              local.tee 21
              i32.sub
              local.get 20
              i32.lt_s
              br_if 0 (;@5;)
              local.get 20
              i32.const 2
              i32.add
              local.get 17
              local.get 5
              i32.const 80
              i32.add
              i32.sub
              local.tee 18
              local.get 8
              local.get 17
              i32.add
              local.get 20
              i32.lt_s
              select
              local.get 18
              local.get 20
              select
              local.tee 20
              local.get 21
              i32.add
              local.set 17
              block  ;; label = @6
                local.get 19
                i32.const 73728
                i32.and
                local.tee 21
                br_if 0 (;@6;)
                local.get 23
                local.get 17
                i32.le_s
                br_if 0 (;@6;)
                local.get 5
                i32.const 624
                i32.add
                i32.const 32
                local.get 23
                local.get 17
                i32.sub
                local.tee 16
                i32.const 256
                local.get 16
                i32.const 256
                i32.lt_u
                local.tee 19
                select
                call $memset
                drop
                block  ;; label = @7
                  local.get 19
                  br_if 0 (;@7;)
                  loop  ;; label = @8
                    block  ;; label = @9
                      local.get 0
                      i32.load8_u
                      i32.const 32
                      i32.and
                      br_if 0 (;@9;)
                      local.get 5
                      i32.const 624
                      i32.add
                      i32.const 256
                      local.get 0
                      call $__fwritex
                      drop
                    end
                    local.get 16
                    i32.const -256
                    i32.add
                    local.tee 16
                    i32.const 255
                    i32.gt_u
                    br_if 0 (;@8;)
                  end
                end
                local.get 0
                i32.load8_u
                i32.const 32
                i32.and
                br_if 0 (;@6;)
                local.get 5
                i32.const 624
                i32.add
                local.get 16
                local.get 0
                call $__fwritex
                drop
              end
              block  ;; label = @6
                local.get 0
                i32.load8_u
                i32.const 32
                i32.and
                br_if 0 (;@6;)
                local.get 27
                local.get 25
                local.get 0
                call $__fwritex
                drop
              end
              block  ;; label = @6
                local.get 21
                i32.const 65536
                i32.ne
                br_if 0 (;@6;)
                local.get 23
                local.get 17
                i32.le_s
                br_if 0 (;@6;)
                local.get 5
                i32.const 624
                i32.add
                i32.const 48
                local.get 23
                local.get 17
                i32.sub
                local.tee 16
                i32.const 256
                local.get 16
                i32.const 256
                i32.lt_u
                local.tee 25
                select
                call $memset
                drop
                block  ;; label = @7
                  local.get 25
                  br_if 0 (;@7;)
                  loop  ;; label = @8
                    block  ;; label = @9
                      local.get 0
                      i32.load8_u
                      i32.const 32
                      i32.and
                      br_if 0 (;@9;)
                      local.get 5
                      i32.const 624
                      i32.add
                      i32.const 256
                      local.get 0
                      call $__fwritex
                      drop
                    end
                    local.get 16
                    i32.const -256
                    i32.add
                    local.tee 16
                    i32.const 255
                    i32.gt_u
                    br_if 0 (;@8;)
                  end
                end
                local.get 0
                i32.load8_u
                i32.const 32
                i32.and
                br_if 0 (;@6;)
                local.get 5
                i32.const 624
                i32.add
                local.get 16
                local.get 0
                call $__fwritex
                drop
              end
              block  ;; label = @6
                local.get 0
                i32.load8_u
                i32.const 32
                i32.and
                br_if 0 (;@6;)
                local.get 5
                i32.const 80
                i32.add
                local.get 18
                local.get 0
                call $__fwritex
                drop
              end
              block  ;; label = @6
                local.get 20
                local.get 18
                i32.sub
                local.tee 16
                i32.const 1
                i32.lt_s
                br_if 0 (;@6;)
                local.get 5
                i32.const 624
                i32.add
                i32.const 48
                local.get 16
                i32.const 256
                local.get 16
                i32.const 256
                i32.lt_u
                local.tee 18
                select
                call $memset
                drop
                block  ;; label = @7
                  local.get 18
                  br_if 0 (;@7;)
                  loop  ;; label = @8
                    block  ;; label = @9
                      local.get 0
                      i32.load8_u
                      i32.const 32
                      i32.and
                      br_if 0 (;@9;)
                      local.get 5
                      i32.const 624
                      i32.add
                      i32.const 256
                      local.get 0
                      call $__fwritex
                      drop
                    end
                    local.get 16
                    i32.const -256
                    i32.add
                    local.tee 16
                    i32.const 255
                    i32.gt_u
                    br_if 0 (;@8;)
                  end
                end
                local.get 0
                i32.load8_u
                i32.const 32
                i32.and
                br_if 0 (;@6;)
                local.get 5
                i32.const 624
                i32.add
                local.get 16
                local.get 0
                call $__fwritex
                drop
              end
              block  ;; label = @6
                local.get 0
                i32.load8_u
                i32.const 32
                i32.and
                br_if 0 (;@6;)
                local.get 24
                local.get 22
                local.get 0
                call $__fwritex
                drop
              end
              block  ;; label = @6
                local.get 21
                i32.const 8192
                i32.ne
                br_if 0 (;@6;)
                local.get 23
                local.get 17
                i32.le_s
                br_if 0 (;@6;)
                local.get 5
                i32.const 624
                i32.add
                i32.const 32
                local.get 23
                local.get 17
                i32.sub
                local.tee 16
                i32.const 256
                local.get 16
                i32.const 256
                i32.lt_u
                local.tee 18
                select
                call $memset
                drop
                block  ;; label = @7
                  local.get 18
                  br_if 0 (;@7;)
                  loop  ;; label = @8
                    block  ;; label = @9
                      local.get 0
                      i32.load8_u
                      i32.const 32
                      i32.and
                      br_if 0 (;@9;)
                      local.get 5
                      i32.const 624
                      i32.add
                      i32.const 256
                      local.get 0
                      call $__fwritex
                      drop
                    end
                    local.get 16
                    i32.const -256
                    i32.add
                    local.tee 16
                    i32.const 255
                    i32.gt_u
                    br_if 0 (;@8;)
                  end
                end
                local.get 0
                i32.load8_u
                i32.const 32
                i32.and
                br_if 0 (;@6;)
                local.get 5
                i32.const 624
                i32.add
                local.get 16
                local.get 0
                call $__fwritex
                drop
              end
              local.get 23
              local.get 17
              local.get 23
              local.get 17
              i32.gt_s
              select
              local.set 16
            end
            local.get 16
            i32.const 0
            i32.ge_s
            br_if 0 (;@4;)
          end
        end
        i32.const 0
        i32.const 61
        i32.store offset=18256
      end
      i32.const -1
      local.set 15
    end
    local.get 5
    i32.const 880
    i32.add
    global.set $__stack_pointer
    local.get 15)
  (func $pop_arg (type 11) (param i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          local.get 1
                                          i32.const -9
                                          i32.add
                                          br_table 17 (;@2;) 0 (;@19;) 1 (;@18;) 4 (;@15;) 2 (;@17;) 3 (;@16;) 5 (;@14;) 6 (;@13;) 7 (;@12;) 8 (;@11;) 9 (;@10;) 10 (;@9;) 11 (;@8;) 12 (;@7;) 13 (;@6;) 14 (;@5;) 15 (;@4;) 16 (;@3;) 18 (;@1;)
                                        end
                                        local.get 2
                                        local.get 2
                                        i32.load
                                        local.tee 1
                                        i32.const 4
                                        i32.add
                                        i32.store
                                        local.get 0
                                        local.get 1
                                        i64.load32_s
                                        i64.store
                                        return
                                      end
                                      local.get 2
                                      local.get 2
                                      i32.load
                                      local.tee 1
                                      i32.const 4
                                      i32.add
                                      i32.store
                                      local.get 0
                                      local.get 1
                                      i64.load32_u
                                      i64.store
                                      return
                                    end
                                    local.get 2
                                    local.get 2
                                    i32.load
                                    local.tee 1
                                    i32.const 4
                                    i32.add
                                    i32.store
                                    local.get 0
                                    local.get 1
                                    i64.load32_s
                                    i64.store
                                    return
                                  end
                                  local.get 2
                                  local.get 2
                                  i32.load
                                  local.tee 1
                                  i32.const 4
                                  i32.add
                                  i32.store
                                  local.get 0
                                  local.get 1
                                  i64.load32_u
                                  i64.store
                                  return
                                end
                                local.get 2
                                local.get 2
                                i32.load
                                i32.const 7
                                i32.add
                                i32.const -8
                                i32.and
                                local.tee 1
                                i32.const 8
                                i32.add
                                i32.store
                                local.get 0
                                local.get 1
                                i64.load
                                i64.store
                                return
                              end
                              local.get 2
                              local.get 2
                              i32.load
                              local.tee 1
                              i32.const 4
                              i32.add
                              i32.store
                              local.get 0
                              local.get 1
                              i64.load16_s
                              i64.store
                              return
                            end
                            local.get 2
                            local.get 2
                            i32.load
                            local.tee 1
                            i32.const 4
                            i32.add
                            i32.store
                            local.get 0
                            local.get 1
                            i64.load16_u
                            i64.store
                            return
                          end
                          local.get 2
                          local.get 2
                          i32.load
                          local.tee 1
                          i32.const 4
                          i32.add
                          i32.store
                          local.get 0
                          local.get 1
                          i64.load8_s
                          i64.store
                          return
                        end
                        local.get 2
                        local.get 2
                        i32.load
                        local.tee 1
                        i32.const 4
                        i32.add
                        i32.store
                        local.get 0
                        local.get 1
                        i64.load8_u
                        i64.store
                        return
                      end
                      local.get 2
                      local.get 2
                      i32.load
                      i32.const 7
                      i32.add
                      i32.const -8
                      i32.and
                      local.tee 1
                      i32.const 8
                      i32.add
                      i32.store
                      local.get 0
                      local.get 1
                      i64.load
                      i64.store
                      return
                    end
                    local.get 2
                    local.get 2
                    i32.load
                    local.tee 1
                    i32.const 4
                    i32.add
                    i32.store
                    local.get 0
                    local.get 1
                    i64.load32_u
                    i64.store
                    return
                  end
                  local.get 2
                  local.get 2
                  i32.load
                  i32.const 7
                  i32.add
                  i32.const -8
                  i32.and
                  local.tee 1
                  i32.const 8
                  i32.add
                  i32.store
                  local.get 0
                  local.get 1
                  i64.load
                  i64.store
                  return
                end
                local.get 2
                local.get 2
                i32.load
                i32.const 7
                i32.add
                i32.const -8
                i32.and
                local.tee 1
                i32.const 8
                i32.add
                i32.store
                local.get 0
                local.get 1
                i64.load
                i64.store
                return
              end
              local.get 2
              local.get 2
              i32.load
              local.tee 1
              i32.const 4
              i32.add
              i32.store
              local.get 0
              local.get 1
              i64.load32_s
              i64.store
              return
            end
            local.get 2
            local.get 2
            i32.load
            local.tee 1
            i32.const 4
            i32.add
            i32.store
            local.get 0
            local.get 1
            i64.load32_u
            i64.store
            return
          end
          local.get 2
          local.get 2
          i32.load
          i32.const 7
          i32.add
          i32.const -8
          i32.and
          local.tee 1
          i32.const 8
          i32.add
          i32.store
          local.get 0
          local.get 1
          f64.load
          f64.store
          return
        end
        call $long_double_not_supported
        unreachable
      end
      local.get 2
      local.get 2
      i32.load
      local.tee 1
      i32.const 4
      i32.add
      i32.store
      local.get 0
      local.get 1
      i32.load
      i32.store
    end)
  (func $pad (type 17) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 256
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    block  ;; label = @1
      local.get 4
      i32.const 73728
      i32.and
      br_if 0 (;@1;)
      local.get 2
      local.get 3
      i32.le_s
      br_if 0 (;@1;)
      local.get 5
      local.get 1
      local.get 2
      local.get 3
      i32.sub
      local.tee 2
      i32.const 256
      local.get 2
      i32.const 256
      i32.lt_u
      local.tee 4
      select
      call $memset
      local.set 3
      block  ;; label = @2
        local.get 4
        br_if 0 (;@2;)
        loop  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.load8_u
            i32.const 32
            i32.and
            br_if 0 (;@4;)
            local.get 3
            i32.const 256
            local.get 0
            call $__fwritex
            drop
          end
          local.get 2
          i32.const -256
          i32.add
          local.tee 2
          i32.const 255
          i32.gt_u
          br_if 0 (;@3;)
        end
      end
      local.get 0
      i32.load8_u
      i32.const 32
      i32.and
      br_if 0 (;@1;)
      local.get 3
      local.get 2
      local.get 0
      call $__fwritex
      drop
    end
    local.get 5
    i32.const 256
    i32.add
    global.set $__stack_pointer)
  (func $long_double_not_supported (type 6)
    i32.const 5947
    i32.const 10104
    call $fputs
    drop
    call $abort
    unreachable)
  (func $fputc (type 8) (param i32 i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 0
      i32.const 255
      i32.and
      local.tee 2
      local.get 1
      i32.load offset=64
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      i32.load offset=20
      local.tee 3
      local.get 1
      i32.load offset=16
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      local.get 3
      i32.const 1
      i32.add
      i32.store offset=20
      local.get 3
      local.get 0
      i32.store8
      local.get 2
      return
    end
    local.get 1
    local.get 2
    call $__overflow)
  (func $perror (type 10) (param i32)
    (local i32 i32 i32)
    i32.const 0
    i32.load offset=18256
    call $strerror
    local.set 1
    i32.const 0
    i32.load offset=10164
    local.set 2
    i32.const 0
    i32.load offset=10208
    local.set 3
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load8_u
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 0
      call $strlen
      i32.const 1
      i32.const 10104
      call $fwrite
      drop
      i32.const 58
      i32.const 10104
      call $fputc
      drop
      i32.const 32
      i32.const 10104
      call $fputc
      drop
    end
    local.get 1
    local.get 1
    call $strlen
    i32.const 1
    i32.const 10104
    call $fwrite
    drop
    i32.const 10
    i32.const 10104
    call $fputc
    drop
    i32.const 0
    local.get 3
    i32.store offset=10208
    i32.const 0
    local.get 2
    i32.store offset=10164)
  (func $__overflow (type 8) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 1
    i32.store8 offset=15
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=16
        local.tee 3
        br_if 0 (;@2;)
        i32.const -1
        local.set 3
        local.get 0
        call $__towrite
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=16
        local.set 3
      end
      block  ;; label = @2
        local.get 0
        i32.load offset=20
        local.tee 4
        local.get 3
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        i32.load offset=64
        local.get 1
        i32.const 255
        i32.and
        local.tee 3
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        local.get 4
        i32.const 1
        i32.add
        i32.store offset=20
        local.get 4
        local.get 1
        i32.store8
        br 1 (;@1;)
      end
      i32.const -1
      local.set 3
      local.get 0
      local.get 2
      i32.const 15
      i32.add
      i32.const 1
      local.get 0
      i32.load offset=32
      call_indirect (type 0)
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 2
      i32.load8_u offset=15
      local.set 3
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 3)
  (func $writev (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    i32.const -1
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.const -1
        i32.gt_s
        br_if 0 (;@2;)
        i32.const 0
        i32.const 28
        i32.store offset=18256
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 0
        local.get 1
        local.get 2
        local.get 3
        i32.const 12
        i32.add
        call $__wasi_fd_write
        local.tee 2
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        local.get 2
        i32.store offset=18256
        i32.const -1
        local.set 4
        br 1 (;@1;)
      end
      local.get 3
      i32.load offset=12
      local.set 4
    end
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 4)
  (func $__stdio_write (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 2
    i32.store offset=12
    local.get 3
    local.get 1
    i32.store offset=8
    local.get 3
    local.get 0
    i32.load offset=24
    local.tee 1
    i32.store
    local.get 3
    local.get 0
    i32.load offset=20
    local.get 1
    i32.sub
    local.tee 1
    i32.store offset=4
    i32.const 2
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        local.get 2
        i32.add
        local.tee 5
        local.get 0
        i32.load offset=56
        local.get 3
        i32.const 2
        call $writev
        local.tee 6
        i32.eq
        br_if 0 (;@2;)
        local.get 3
        local.set 1
        loop  ;; label = @3
          block  ;; label = @4
            local.get 6
            i32.const -1
            i32.gt_s
            br_if 0 (;@4;)
            i32.const 0
            local.set 6
            local.get 0
            i32.const 0
            i32.store offset=24
            local.get 0
            i64.const 0
            i64.store offset=16
            local.get 0
            local.get 0
            i32.load
            i32.const 32
            i32.or
            i32.store
            local.get 4
            i32.const 2
            i32.eq
            br_if 3 (;@1;)
            local.get 2
            local.get 1
            i32.load offset=4
            i32.sub
            local.set 6
            br 3 (;@1;)
          end
          local.get 1
          local.get 6
          local.get 1
          i32.load offset=4
          local.tee 7
          i32.gt_u
          local.tee 8
          i32.const 3
          i32.shl
          i32.add
          local.tee 9
          local.get 9
          i32.load
          local.get 6
          local.get 7
          i32.const 0
          local.get 8
          select
          i32.sub
          local.tee 7
          i32.add
          i32.store
          local.get 1
          i32.const 12
          i32.const 4
          local.get 8
          select
          i32.add
          local.tee 9
          local.get 9
          i32.load
          local.get 7
          i32.sub
          i32.store
          local.get 5
          local.get 6
          i32.sub
          local.tee 5
          local.get 0
          i32.load offset=56
          local.get 1
          i32.const 8
          i32.add
          local.get 1
          local.get 8
          select
          local.tee 1
          local.get 4
          local.get 8
          i32.sub
          local.tee 4
          call $writev
          local.tee 6
          i32.ne
          br_if 0 (;@3;)
        end
      end
      local.get 0
      local.get 0
      i32.load offset=40
      local.tee 1
      i32.store offset=24
      local.get 0
      local.get 1
      i32.store offset=20
      local.get 0
      local.get 1
      local.get 0
      i32.load offset=44
      i32.add
      i32.store offset=16
      local.get 2
      local.set 6
    end
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 6)
  (func $__ofl_lock (type 14) (result i32)
    i32.const 19352)
  (func $__ofl_unlock (type 6))
  (func $putc (type 8) (param i32 i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 0
      i32.const 255
      i32.and
      local.tee 2
      local.get 1
      i32.load offset=64
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      i32.load offset=20
      local.tee 3
      local.get 1
      i32.load offset=16
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      local.get 3
      i32.const 1
      i32.add
      i32.store offset=20
      local.get 3
      local.get 0
      i32.store8
      local.get 2
      return
    end
    local.get 1
    local.get 2
    call $__overflow)
  (func $__stdio_exit (type 6)
    (local i32 i32 i32)
    block  ;; label = @1
      call $__ofl_lock
      i32.load
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      loop  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.load offset=20
          local.get 0
          i32.load offset=24
          i32.eq
          br_if 0 (;@3;)
          local.get 0
          i32.const 0
          i32.const 0
          local.get 0
          i32.load offset=32
          call_indirect (type 0)
          drop
        end
        block  ;; label = @3
          local.get 0
          i32.load offset=4
          local.tee 1
          local.get 0
          i32.load offset=8
          local.tee 2
          i32.eq
          br_if 0 (;@3;)
          local.get 0
          local.get 1
          local.get 2
          i32.sub
          i64.extend_i32_s
          i32.const 1
          local.get 0
          i32.load offset=36
          call_indirect (type 1)
          drop
        end
        local.get 0
        i32.load offset=52
        local.tee 0
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      i32.const 0
      i32.load offset=19356
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 0
        i32.load offset=20
        local.get 0
        i32.load offset=24
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        i32.const 0
        i32.const 0
        local.get 0
        i32.load offset=32
        call_indirect (type 0)
        drop
      end
      local.get 0
      i32.load offset=4
      local.tee 1
      local.get 0
      i32.load offset=8
      local.tee 2
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      local.get 2
      i32.sub
      i64.extend_i32_s
      i32.const 1
      local.get 0
      i32.load offset=36
      call_indirect (type 1)
      drop
    end
    block  ;; label = @1
      i32.const 0
      i32.load offset=10336
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 0
        i32.load offset=20
        local.get 0
        i32.load offset=24
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        i32.const 0
        i32.const 0
        local.get 0
        i32.load offset=32
        call_indirect (type 0)
        drop
      end
      local.get 0
      i32.load offset=4
      local.tee 1
      local.get 0
      i32.load offset=8
      local.tee 2
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      local.get 2
      i32.sub
      i64.extend_i32_s
      i32.const 1
      local.get 0
      i32.load offset=36
      call_indirect (type 1)
      drop
    end
    block  ;; label = @1
      i32.const 0
      i32.load offset=10216
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 0
        i32.load offset=20
        local.get 0
        i32.load offset=24
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        i32.const 0
        i32.const 0
        local.get 0
        i32.load offset=32
        call_indirect (type 0)
        drop
      end
      local.get 0
      i32.load offset=4
      local.tee 1
      local.get 0
      i32.load offset=8
      local.tee 2
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      local.get 2
      i32.sub
      i64.extend_i32_s
      i32.const 1
      local.get 0
      i32.load offset=36
      call_indirect (type 1)
      drop
    end)
  (func $__towrite (type 3) (param i32) (result i32)
    (local i32)
    local.get 0
    local.get 0
    i32.load offset=60
    local.tee 1
    i32.const -1
    i32.add
    local.get 1
    i32.or
    i32.store offset=60
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 1
      i32.const 8
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.const 32
      i32.or
      i32.store
      i32.const -1
      return
    end
    local.get 0
    i64.const 0
    i64.store offset=4 align=4
    local.get 0
    local.get 0
    i32.load offset=40
    local.tee 1
    i32.store offset=24
    local.get 0
    local.get 1
    i32.store offset=20
    local.get 0
    local.get 1
    local.get 0
    i32.load offset=44
    i32.add
    i32.store offset=16
    i32.const 0)
  (func $__stdio_close (type 3) (param i32) (result i32)
    local.get 0
    i32.load offset=56
    call $close)
  (func $__isatty (type 3) (param i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        local.get 1
        i32.const 8
        i32.add
        call $__wasi_fd_fdstat_get
        local.tee 0
        br_if 0 (;@2;)
        i32.const 59
        local.set 0
        local.get 1
        i32.load8_u offset=8
        i32.const 2
        i32.ne
        br_if 0 (;@2;)
        local.get 1
        i32.load8_u offset=16
        i32.const 36
        i32.and
        br_if 0 (;@2;)
        i32.const 1
        local.set 2
        br 1 (;@1;)
      end
      i32.const 0
      local.set 2
      i32.const 0
      local.get 0
      i32.store offset=18256
    end
    local.get 1
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 2)
  (func $__stdout_write (type 0) (param i32 i32 i32) (result i32)
    local.get 0
    i32.const 2
    i32.store offset=32
    block  ;; label = @1
      local.get 0
      i32.load8_u
      i32.const 64
      i32.and
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=56
      call $__isatty
      br_if 0 (;@1;)
      local.get 0
      i32.const -1
      i32.store offset=64
    end
    local.get 0
    local.get 1
    local.get 2
    call $__stdio_write)
  (func $fprintf (type 0) (param i32 i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 2
    i32.store offset=12
    local.get 0
    local.get 1
    local.get 2
    call $vfprintf
    local.set 2
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2)
  (func $vsnprintf (type 4) (param i32 i32 i32 i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 128
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    i32.const -1
    local.set 5
    local.get 4
    local.get 1
    i32.const -1
    i32.add
    i32.const 0
    local.get 1
    select
    i32.store offset=116
    local.get 4
    local.get 0
    local.get 4
    i32.const 126
    i32.add
    local.get 1
    select
    local.tee 0
    i32.store offset=112
    local.get 4
    i32.const 0
    i32.const 112
    call $memset
    local.tee 4
    i32.const -1
    i32.store offset=64
    local.get 4
    i32.const 5
    i32.store offset=32
    local.get 4
    local.get 4
    i32.const 112
    i32.add
    i32.store offset=68
    local.get 4
    local.get 4
    i32.const 127
    i32.add
    i32.store offset=40
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const -1
        i32.gt_s
        br_if 0 (;@2;)
        i32.const 0
        i32.const 61
        i32.store offset=18256
        br 1 (;@1;)
      end
      local.get 0
      i32.const 0
      i32.store8
      local.get 4
      local.get 2
      local.get 3
      call $vfprintf
      local.set 5
    end
    local.get 4
    i32.const 128
    i32.add
    global.set $__stack_pointer
    local.get 5)
  (func $sn_write (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.load offset=68
      local.tee 3
      i32.load offset=4
      local.tee 4
      local.get 0
      i32.load offset=20
      local.get 0
      i32.load offset=24
      local.tee 5
      i32.sub
      local.tee 6
      local.get 4
      local.get 6
      i32.lt_u
      select
      local.tee 6
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.load
      local.get 5
      local.get 6
      call $memcpy
      drop
      local.get 3
      local.get 3
      i32.load
      local.get 6
      i32.add
      i32.store
      local.get 3
      local.get 3
      i32.load offset=4
      local.get 6
      i32.sub
      local.tee 4
      i32.store offset=4
    end
    local.get 3
    i32.load
    local.set 6
    block  ;; label = @1
      local.get 4
      local.get 2
      local.get 4
      local.get 2
      i32.lt_u
      select
      local.tee 4
      i32.eqz
      br_if 0 (;@1;)
      local.get 6
      local.get 1
      local.get 4
      call $memcpy
      drop
      local.get 3
      local.get 3
      i32.load
      local.get 4
      i32.add
      local.tee 6
      i32.store
      local.get 3
      local.get 3
      i32.load offset=4
      local.get 4
      i32.sub
      i32.store offset=4
    end
    local.get 6
    i32.const 0
    i32.store8
    local.get 0
    local.get 0
    i32.load offset=40
    local.tee 3
    i32.store offset=24
    local.get 0
    local.get 3
    i32.store offset=20
    local.get 2)
  (func $vsprintf (type 0) (param i32 i32 i32) (result i32)
    local.get 0
    i32.const 2147483647
    local.get 1
    local.get 2
    call $vsnprintf)
  (func $strlen (type 3) (param i32) (result i32)
    (local i32 i32)
    local.get 0
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        local.set 1
        local.get 0
        i32.load8_u
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 1
        i32.add
        local.tee 1
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.load8_u
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 2
        i32.add
        local.tee 1
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.load8_u
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 3
        i32.add
        local.tee 1
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.load8_u
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 4
        i32.add
        local.set 1
      end
      local.get 1
      i32.const -4
      i32.add
      local.set 1
      loop  ;; label = @2
        local.get 1
        i32.const 4
        i32.add
        local.tee 1
        i32.load
        local.tee 2
        i32.const -1
        i32.xor
        local.get 2
        i32.const -16843009
        i32.add
        i32.and
        i32.const -2139062144
        i32.and
        i32.eqz
        br_if 0 (;@2;)
      end
      local.get 2
      i32.const 255
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 1
        i32.const 1
        i32.add
        local.tee 1
        i32.load8_u
        br_if 0 (;@2;)
      end
    end
    local.get 1
    local.get 0
    i32.sub)
  (func $strdup (type 3) (param i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 0
      call $strlen
      i32.const 1
      i32.add
      local.tee 1
      call $malloc
      local.tee 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      local.get 0
      local.get 1
      call $memcpy
      drop
    end
    local.get 2)
  (func $memmove (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      local.get 1
      i32.eq
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 1
        local.get 0
        local.get 2
        i32.add
        local.tee 3
        i32.sub
        i32.const 0
        local.get 2
        i32.const 1
        i32.shl
        i32.sub
        i32.gt_u
        br_if 0 (;@2;)
        local.get 0
        local.get 1
        local.get 2
        call $memcpy
        drop
        br 1 (;@1;)
      end
      local.get 1
      local.get 0
      i32.xor
      i32.const 3
      i32.and
      local.set 4
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  local.get 1
                  i32.ge_u
                  br_if 0 (;@7;)
                  block  ;; label = @8
                    local.get 4
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 2
                    local.set 4
                    local.get 0
                    local.set 3
                    br 6 (;@2;)
                  end
                  block  ;; label = @8
                    local.get 0
                    i32.const 3
                    i32.and
                    br_if 0 (;@8;)
                    local.get 2
                    local.set 4
                    local.get 0
                    local.set 3
                    br 5 (;@3;)
                  end
                  local.get 2
                  i32.eqz
                  br_if 6 (;@1;)
                  local.get 0
                  local.get 1
                  i32.load8_u
                  i32.store8
                  local.get 2
                  i32.const -1
                  i32.add
                  local.set 4
                  local.get 0
                  i32.const 1
                  i32.add
                  local.tee 3
                  i32.const 3
                  i32.and
                  br_if 1 (;@6;)
                  local.get 1
                  i32.const 1
                  i32.add
                  local.set 1
                  br 4 (;@3;)
                end
                local.get 4
                br_if 2 (;@4;)
                local.get 3
                i32.const 3
                i32.and
                i32.eqz
                br_if 1 (;@5;)
                local.get 2
                i32.eqz
                br_if 5 (;@1;)
                local.get 0
                local.get 2
                i32.const -1
                i32.add
                local.tee 3
                i32.add
                local.tee 4
                local.get 1
                local.get 3
                i32.add
                i32.load8_u
                i32.store8
                block  ;; label = @7
                  local.get 4
                  i32.const 3
                  i32.and
                  br_if 0 (;@7;)
                  local.get 3
                  local.set 2
                  br 2 (;@5;)
                end
                local.get 3
                i32.eqz
                br_if 5 (;@1;)
                local.get 0
                local.get 2
                i32.const -2
                i32.add
                local.tee 3
                i32.add
                local.tee 4
                local.get 1
                local.get 3
                i32.add
                i32.load8_u
                i32.store8
                block  ;; label = @7
                  local.get 4
                  i32.const 3
                  i32.and
                  br_if 0 (;@7;)
                  local.get 3
                  local.set 2
                  br 2 (;@5;)
                end
                local.get 3
                i32.eqz
                br_if 5 (;@1;)
                local.get 0
                local.get 2
                i32.const -3
                i32.add
                local.tee 3
                i32.add
                local.tee 4
                local.get 1
                local.get 3
                i32.add
                i32.load8_u
                i32.store8
                block  ;; label = @7
                  local.get 4
                  i32.const 3
                  i32.and
                  br_if 0 (;@7;)
                  local.get 3
                  local.set 2
                  br 2 (;@5;)
                end
                local.get 3
                i32.eqz
                br_if 5 (;@1;)
                local.get 0
                local.get 2
                i32.const -4
                i32.add
                local.tee 2
                i32.add
                local.get 1
                local.get 2
                i32.add
                i32.load8_u
                i32.store8
                br 1 (;@5;)
              end
              local.get 4
              i32.eqz
              br_if 4 (;@1;)
              local.get 0
              local.get 1
              i32.load8_u offset=1
              i32.store8 offset=1
              local.get 2
              i32.const -2
              i32.add
              local.set 4
              block  ;; label = @6
                local.get 0
                i32.const 2
                i32.add
                local.tee 3
                i32.const 3
                i32.and
                br_if 0 (;@6;)
                local.get 1
                i32.const 2
                i32.add
                local.set 1
                br 3 (;@3;)
              end
              local.get 4
              i32.eqz
              br_if 4 (;@1;)
              local.get 0
              local.get 1
              i32.load8_u offset=2
              i32.store8 offset=2
              local.get 2
              i32.const -3
              i32.add
              local.set 4
              block  ;; label = @6
                local.get 0
                i32.const 3
                i32.add
                local.tee 3
                i32.const 3
                i32.and
                br_if 0 (;@6;)
                local.get 1
                i32.const 3
                i32.add
                local.set 1
                br 3 (;@3;)
              end
              local.get 4
              i32.eqz
              br_if 4 (;@1;)
              local.get 0
              local.get 1
              i32.load8_u offset=3
              i32.store8 offset=3
              local.get 0
              i32.const 4
              i32.add
              local.set 3
              local.get 1
              i32.const 4
              i32.add
              local.set 1
              local.get 2
              i32.const -4
              i32.add
              local.set 4
              br 2 (;@3;)
            end
            local.get 2
            i32.const 4
            i32.lt_u
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 2
              i32.const -4
              i32.add
              local.tee 5
              i32.const 2
              i32.shr_u
              i32.const 1
              i32.add
              i32.const 3
              i32.and
              local.tee 3
              i32.eqz
              br_if 0 (;@5;)
              local.get 1
              i32.const -4
              i32.add
              local.set 4
              local.get 0
              i32.const -4
              i32.add
              local.set 6
              loop  ;; label = @6
                local.get 6
                local.get 2
                i32.add
                local.get 4
                local.get 2
                i32.add
                i32.load
                i32.store
                local.get 2
                i32.const -4
                i32.add
                local.set 2
                local.get 3
                i32.const -1
                i32.add
                local.tee 3
                br_if 0 (;@6;)
              end
            end
            local.get 5
            i32.const 12
            i32.lt_u
            br_if 0 (;@4;)
            local.get 1
            i32.const -16
            i32.add
            local.set 6
            local.get 0
            i32.const -16
            i32.add
            local.set 5
            loop  ;; label = @5
              local.get 5
              local.get 2
              i32.add
              local.tee 3
              i32.const 12
              i32.add
              local.get 6
              local.get 2
              i32.add
              local.tee 4
              i32.const 12
              i32.add
              i32.load
              i32.store
              local.get 3
              i32.const 8
              i32.add
              local.get 4
              i32.const 8
              i32.add
              i32.load
              i32.store
              local.get 3
              i32.const 4
              i32.add
              local.get 4
              i32.const 4
              i32.add
              i32.load
              i32.store
              local.get 3
              local.get 4
              i32.load
              i32.store
              local.get 2
              i32.const -16
              i32.add
              local.tee 2
              i32.const 3
              i32.gt_u
              br_if 0 (;@5;)
            end
          end
          local.get 2
          i32.eqz
          br_if 2 (;@1;)
          local.get 2
          i32.const -1
          i32.add
          local.set 5
          block  ;; label = @4
            local.get 2
            i32.const 3
            i32.and
            local.tee 3
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            i32.const -1
            i32.add
            local.set 4
            local.get 0
            i32.const -1
            i32.add
            local.set 6
            loop  ;; label = @5
              local.get 6
              local.get 2
              i32.add
              local.get 4
              local.get 2
              i32.add
              i32.load8_u
              i32.store8
              local.get 2
              i32.const -1
              i32.add
              local.set 2
              local.get 3
              i32.const -1
              i32.add
              local.tee 3
              br_if 0 (;@5;)
            end
          end
          local.get 5
          i32.const 3
          i32.lt_u
          br_if 2 (;@1;)
          local.get 1
          i32.const -4
          i32.add
          local.set 4
          local.get 0
          i32.const -4
          i32.add
          local.set 6
          loop  ;; label = @4
            local.get 6
            local.get 2
            i32.add
            local.tee 1
            i32.const 3
            i32.add
            local.get 4
            local.get 2
            i32.add
            local.tee 3
            i32.const 3
            i32.add
            i32.load8_u
            i32.store8
            local.get 1
            i32.const 2
            i32.add
            local.get 3
            i32.const 2
            i32.add
            i32.load8_u
            i32.store8
            local.get 1
            i32.const 1
            i32.add
            local.get 3
            i32.const 1
            i32.add
            i32.load8_u
            i32.store8
            local.get 1
            local.get 3
            i32.load8_u
            i32.store8
            local.get 2
            i32.const -4
            i32.add
            local.tee 2
            br_if 0 (;@4;)
            br 3 (;@1;)
          end
        end
        local.get 4
        i32.const 4
        i32.lt_u
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 4
          i32.const -4
          i32.add
          local.tee 6
          i32.const 2
          i32.shr_u
          i32.const 1
          i32.add
          i32.const 7
          i32.and
          local.tee 2
          i32.eqz
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 3
            local.get 1
            i32.load
            i32.store
            local.get 1
            i32.const 4
            i32.add
            local.set 1
            local.get 3
            i32.const 4
            i32.add
            local.set 3
            local.get 4
            i32.const -4
            i32.add
            local.set 4
            local.get 2
            i32.const -1
            i32.add
            local.tee 2
            br_if 0 (;@4;)
          end
        end
        local.get 6
        i32.const 28
        i32.lt_u
        br_if 0 (;@2;)
        loop  ;; label = @3
          local.get 3
          local.get 1
          i32.load
          i32.store
          local.get 3
          i32.const 4
          i32.add
          local.get 1
          i32.const 4
          i32.add
          i32.load
          i32.store
          local.get 3
          i32.const 8
          i32.add
          local.get 1
          i32.const 8
          i32.add
          i32.load
          i32.store
          local.get 3
          i32.const 12
          i32.add
          local.get 1
          i32.const 12
          i32.add
          i32.load
          i32.store
          local.get 3
          i32.const 16
          i32.add
          local.get 1
          i32.const 16
          i32.add
          i32.load
          i32.store
          local.get 3
          i32.const 20
          i32.add
          local.get 1
          i32.const 20
          i32.add
          i32.load
          i32.store
          local.get 3
          i32.const 24
          i32.add
          local.get 1
          i32.const 24
          i32.add
          i32.load
          i32.store
          local.get 3
          i32.const 28
          i32.add
          local.get 1
          i32.const 28
          i32.add
          i32.load
          i32.store
          local.get 3
          i32.const 32
          i32.add
          local.set 3
          local.get 1
          i32.const 32
          i32.add
          local.set 1
          local.get 4
          i32.const -32
          i32.add
          local.tee 4
          i32.const 3
          i32.gt_u
          br_if 0 (;@3;)
        end
      end
      local.get 4
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      i32.const -1
      i32.add
      local.set 6
      block  ;; label = @2
        local.get 4
        i32.const 7
        i32.and
        local.tee 2
        i32.eqz
        br_if 0 (;@2;)
        loop  ;; label = @3
          local.get 3
          local.get 1
          i32.load8_u
          i32.store8
          local.get 4
          i32.const -1
          i32.add
          local.set 4
          local.get 3
          i32.const 1
          i32.add
          local.set 3
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          local.get 2
          i32.const -1
          i32.add
          local.tee 2
          br_if 0 (;@3;)
        end
      end
      local.get 6
      i32.const 7
      i32.lt_u
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 3
        local.get 1
        i32.load8_u
        i32.store8
        local.get 3
        i32.const 1
        i32.add
        local.get 1
        i32.const 1
        i32.add
        i32.load8_u
        i32.store8
        local.get 3
        i32.const 2
        i32.add
        local.get 1
        i32.const 2
        i32.add
        i32.load8_u
        i32.store8
        local.get 3
        i32.const 3
        i32.add
        local.get 1
        i32.const 3
        i32.add
        i32.load8_u
        i32.store8
        local.get 3
        i32.const 4
        i32.add
        local.get 1
        i32.const 4
        i32.add
        i32.load8_u
        i32.store8
        local.get 3
        i32.const 5
        i32.add
        local.get 1
        i32.const 5
        i32.add
        i32.load8_u
        i32.store8
        local.get 3
        i32.const 6
        i32.add
        local.get 1
        i32.const 6
        i32.add
        i32.load8_u
        i32.store8
        local.get 3
        i32.const 7
        i32.add
        local.get 1
        i32.const 7
        i32.add
        i32.load8_u
        i32.store8
        local.get 3
        i32.const 8
        i32.add
        local.set 3
        local.get 1
        i32.const 8
        i32.add
        local.set 1
        local.get 4
        i32.const -8
        i32.add
        local.tee 4
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (func $memcpy (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        local.get 1
        i32.load8_u
        i32.store8
        local.get 2
        i32.const -1
        i32.add
        local.set 3
        local.get 0
        i32.const 1
        i32.add
        local.set 4
        local.get 1
        i32.const 1
        i32.add
        local.tee 5
        i32.const 3
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 3
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        local.get 1
        i32.load8_u offset=1
        i32.store8 offset=1
        local.get 2
        i32.const -2
        i32.add
        local.set 3
        local.get 0
        i32.const 2
        i32.add
        local.set 4
        local.get 1
        i32.const 2
        i32.add
        local.tee 5
        i32.const 3
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 3
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        local.get 1
        i32.load8_u offset=2
        i32.store8 offset=2
        local.get 2
        i32.const -3
        i32.add
        local.set 3
        local.get 0
        i32.const 3
        i32.add
        local.set 4
        local.get 1
        i32.const 3
        i32.add
        local.tee 5
        i32.const 3
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 3
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        local.get 1
        i32.load8_u offset=3
        i32.store8 offset=3
        local.get 2
        i32.const -4
        i32.add
        local.set 3
        local.get 0
        i32.const 4
        i32.add
        local.set 4
        local.get 1
        i32.const 4
        i32.add
        local.set 5
        br 1 (;@1;)
      end
      local.get 2
      local.set 3
      local.get 0
      local.set 4
      local.get 1
      local.set 5
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 4
          i32.const 3
          i32.and
          local.tee 1
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 3
              i32.const 16
              i32.lt_u
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 3
                i32.const -16
                i32.add
                local.tee 1
                i32.const 16
                i32.and
                br_if 0 (;@6;)
                local.get 4
                local.get 5
                i64.load align=4
                i64.store align=4
                local.get 4
                local.get 5
                i64.load offset=8 align=4
                i64.store offset=8 align=4
                local.get 4
                i32.const 16
                i32.add
                local.set 4
                local.get 5
                i32.const 16
                i32.add
                local.set 5
                local.get 1
                local.set 3
              end
              local.get 1
              i32.const 16
              i32.lt_u
              br_if 1 (;@4;)
              loop  ;; label = @6
                local.get 4
                local.get 5
                i64.load align=4
                i64.store align=4
                local.get 4
                i32.const 8
                i32.add
                local.get 5
                i32.const 8
                i32.add
                i64.load align=4
                i64.store align=4
                local.get 4
                i32.const 16
                i32.add
                local.get 5
                i32.const 16
                i32.add
                i64.load align=4
                i64.store align=4
                local.get 4
                i32.const 24
                i32.add
                local.get 5
                i32.const 24
                i32.add
                i64.load align=4
                i64.store align=4
                local.get 4
                i32.const 32
                i32.add
                local.set 4
                local.get 5
                i32.const 32
                i32.add
                local.set 5
                local.get 3
                i32.const -32
                i32.add
                local.tee 3
                i32.const 15
                i32.gt_u
                br_if 0 (;@6;)
              end
            end
            local.get 3
            local.set 1
          end
          block  ;; label = @4
            local.get 1
            i32.const 8
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 4
            local.get 5
            i64.load align=4
            i64.store align=4
            local.get 5
            i32.const 8
            i32.add
            local.set 5
            local.get 4
            i32.const 8
            i32.add
            local.set 4
          end
          block  ;; label = @4
            local.get 1
            i32.const 4
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 4
            local.get 5
            i32.load
            i32.store
            local.get 5
            i32.const 4
            i32.add
            local.set 5
            local.get 4
            i32.const 4
            i32.add
            local.set 4
          end
          block  ;; label = @4
            local.get 1
            i32.const 2
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 4
            local.get 5
            i32.load16_u align=1
            i32.store16 align=1
            local.get 4
            i32.const 2
            i32.add
            local.set 4
            local.get 5
            i32.const 2
            i32.add
            local.set 5
          end
          local.get 1
          i32.const 1
          i32.and
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        block  ;; label = @3
          local.get 3
          i32.const 32
          i32.lt_u
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 1
                i32.const -1
                i32.add
                br_table 0 (;@6;) 1 (;@5;) 2 (;@4;) 3 (;@3;)
              end
              local.get 4
              local.get 5
              i32.load
              local.tee 6
              i32.store8
              local.get 4
              local.get 6
              i32.const 16
              i32.shr_u
              i32.store8 offset=2
              local.get 4
              local.get 6
              i32.const 8
              i32.shr_u
              i32.store8 offset=1
              local.get 3
              i32.const -3
              i32.add
              local.set 3
              local.get 4
              i32.const 3
              i32.add
              local.set 7
              i32.const 0
              local.set 1
              loop  ;; label = @6
                local.get 7
                local.get 1
                i32.add
                local.tee 4
                local.get 5
                local.get 1
                i32.add
                local.tee 2
                i32.const 4
                i32.add
                i32.load
                local.tee 8
                i32.const 8
                i32.shl
                local.get 6
                i32.const 24
                i32.shr_u
                i32.or
                i32.store
                local.get 4
                i32.const 4
                i32.add
                local.get 2
                i32.const 8
                i32.add
                i32.load
                local.tee 6
                i32.const 8
                i32.shl
                local.get 8
                i32.const 24
                i32.shr_u
                i32.or
                i32.store
                local.get 4
                i32.const 8
                i32.add
                local.get 2
                i32.const 12
                i32.add
                i32.load
                local.tee 8
                i32.const 8
                i32.shl
                local.get 6
                i32.const 24
                i32.shr_u
                i32.or
                i32.store
                local.get 4
                i32.const 12
                i32.add
                local.get 2
                i32.const 16
                i32.add
                i32.load
                local.tee 6
                i32.const 8
                i32.shl
                local.get 8
                i32.const 24
                i32.shr_u
                i32.or
                i32.store
                local.get 1
                i32.const 16
                i32.add
                local.set 1
                local.get 3
                i32.const -16
                i32.add
                local.tee 3
                i32.const 16
                i32.gt_u
                br_if 0 (;@6;)
              end
              local.get 7
              local.get 1
              i32.add
              local.set 4
              local.get 5
              local.get 1
              i32.add
              i32.const 3
              i32.add
              local.set 5
              br 2 (;@3;)
            end
            local.get 4
            local.get 5
            i32.load
            local.tee 6
            i32.store16 align=1
            local.get 3
            i32.const -2
            i32.add
            local.set 3
            local.get 4
            i32.const 2
            i32.add
            local.set 7
            i32.const 0
            local.set 1
            loop  ;; label = @5
              local.get 7
              local.get 1
              i32.add
              local.tee 4
              local.get 5
              local.get 1
              i32.add
              local.tee 2
              i32.const 4
              i32.add
              i32.load
              local.tee 8
              i32.const 16
              i32.shl
              local.get 6
              i32.const 16
              i32.shr_u
              i32.or
              i32.store
              local.get 4
              i32.const 4
              i32.add
              local.get 2
              i32.const 8
              i32.add
              i32.load
              local.tee 6
              i32.const 16
              i32.shl
              local.get 8
              i32.const 16
              i32.shr_u
              i32.or
              i32.store
              local.get 4
              i32.const 8
              i32.add
              local.get 2
              i32.const 12
              i32.add
              i32.load
              local.tee 8
              i32.const 16
              i32.shl
              local.get 6
              i32.const 16
              i32.shr_u
              i32.or
              i32.store
              local.get 4
              i32.const 12
              i32.add
              local.get 2
              i32.const 16
              i32.add
              i32.load
              local.tee 6
              i32.const 16
              i32.shl
              local.get 8
              i32.const 16
              i32.shr_u
              i32.or
              i32.store
              local.get 1
              i32.const 16
              i32.add
              local.set 1
              local.get 3
              i32.const -16
              i32.add
              local.tee 3
              i32.const 17
              i32.gt_u
              br_if 0 (;@5;)
            end
            local.get 7
            local.get 1
            i32.add
            local.set 4
            local.get 5
            local.get 1
            i32.add
            i32.const 2
            i32.add
            local.set 5
            br 1 (;@3;)
          end
          local.get 4
          local.get 5
          i32.load
          local.tee 6
          i32.store8
          local.get 3
          i32.const -1
          i32.add
          local.set 3
          local.get 4
          i32.const 1
          i32.add
          local.set 7
          i32.const 0
          local.set 1
          loop  ;; label = @4
            local.get 7
            local.get 1
            i32.add
            local.tee 4
            local.get 5
            local.get 1
            i32.add
            local.tee 2
            i32.const 4
            i32.add
            i32.load
            local.tee 8
            i32.const 24
            i32.shl
            local.get 6
            i32.const 8
            i32.shr_u
            i32.or
            i32.store
            local.get 4
            i32.const 4
            i32.add
            local.get 2
            i32.const 8
            i32.add
            i32.load
            local.tee 6
            i32.const 24
            i32.shl
            local.get 8
            i32.const 8
            i32.shr_u
            i32.or
            i32.store
            local.get 4
            i32.const 8
            i32.add
            local.get 2
            i32.const 12
            i32.add
            i32.load
            local.tee 8
            i32.const 24
            i32.shl
            local.get 6
            i32.const 8
            i32.shr_u
            i32.or
            i32.store
            local.get 4
            i32.const 12
            i32.add
            local.get 2
            i32.const 16
            i32.add
            i32.load
            local.tee 6
            i32.const 24
            i32.shl
            local.get 8
            i32.const 8
            i32.shr_u
            i32.or
            i32.store
            local.get 1
            i32.const 16
            i32.add
            local.set 1
            local.get 3
            i32.const -16
            i32.add
            local.tee 3
            i32.const 18
            i32.gt_u
            br_if 0 (;@4;)
          end
          local.get 7
          local.get 1
          i32.add
          local.set 4
          local.get 5
          local.get 1
          i32.add
          i32.const 1
          i32.add
          local.set 5
        end
        block  ;; label = @3
          local.get 3
          i32.const 16
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          local.get 5
          i32.load8_u
          i32.store8
          local.get 4
          local.get 5
          i32.load offset=1 align=1
          i32.store offset=1 align=1
          local.get 4
          local.get 5
          i64.load offset=5 align=1
          i64.store offset=5 align=1
          local.get 4
          local.get 5
          i32.load16_u offset=13 align=1
          i32.store16 offset=13 align=1
          local.get 4
          local.get 5
          i32.load8_u offset=15
          i32.store8 offset=15
          local.get 4
          i32.const 16
          i32.add
          local.set 4
          local.get 5
          i32.const 16
          i32.add
          local.set 5
        end
        block  ;; label = @3
          local.get 3
          i32.const 8
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          local.get 5
          i64.load align=1
          i64.store align=1
          local.get 4
          i32.const 8
          i32.add
          local.set 4
          local.get 5
          i32.const 8
          i32.add
          local.set 5
        end
        block  ;; label = @3
          local.get 3
          i32.const 4
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          local.get 5
          i32.load align=1
          i32.store align=1
          local.get 4
          i32.const 4
          i32.add
          local.set 4
          local.get 5
          i32.const 4
          i32.add
          local.set 5
        end
        block  ;; label = @3
          local.get 3
          i32.const 2
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          local.get 5
          i32.load16_u align=1
          i32.store16 align=1
          local.get 4
          i32.const 2
          i32.add
          local.set 4
          local.get 5
          i32.const 2
          i32.add
          local.set 5
        end
        local.get 3
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 4
      local.get 5
      i32.load8_u
      i32.store8
    end
    local.get 0)
  (func $strcasecmp (type 8) (param i32 i32) (result i32)
    (local i32 i32 i32 i32)
    i32.const 0
    local.set 2
    block  ;; label = @1
      local.get 0
      i32.load8_u
      local.tee 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 1
      i32.add
      local.set 0
      loop  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.load8_u
          local.tee 4
          br_if 0 (;@3;)
          local.get 3
          local.set 2
          br 2 (;@1;)
        end
        block  ;; label = @3
          local.get 3
          i32.const 255
          i32.and
          local.tee 5
          local.get 4
          i32.eq
          br_if 0 (;@3;)
          local.get 5
          call $tolower
          local.get 4
          call $tolower
          i32.eq
          br_if 0 (;@3;)
          local.get 3
          local.set 2
          br 2 (;@1;)
        end
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 0
        i32.load8_u
        local.set 3
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 3
        br_if 0 (;@2;)
      end
    end
    local.get 2
    i32.const 255
    i32.and
    call $tolower
    local.get 1
    i32.load8_u
    call $tolower
    i32.sub)
  (func $__stpcpy (type 8) (param i32 i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          local.get 0
          i32.xor
          i32.const 3
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          local.set 2
          br 1 (;@2;)
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const 3
            i32.and
            br_if 0 (;@4;)
            local.get 0
            local.set 2
            br 1 (;@3;)
          end
          local.get 0
          local.get 1
          i32.load8_u
          local.tee 2
          i32.store8
          block  ;; label = @4
            local.get 2
            br_if 0 (;@4;)
            local.get 0
            return
          end
          local.get 0
          i32.const 1
          i32.add
          local.set 2
          block  ;; label = @4
            local.get 1
            i32.const 1
            i32.add
            local.tee 3
            i32.const 3
            i32.and
            br_if 0 (;@4;)
            local.get 3
            local.set 1
            br 1 (;@3;)
          end
          local.get 2
          local.get 3
          i32.load8_u
          local.tee 3
          i32.store8
          local.get 3
          i32.eqz
          br_if 2 (;@1;)
          local.get 0
          i32.const 2
          i32.add
          local.set 2
          block  ;; label = @4
            local.get 1
            i32.const 2
            i32.add
            local.tee 3
            i32.const 3
            i32.and
            br_if 0 (;@4;)
            local.get 3
            local.set 1
            br 1 (;@3;)
          end
          local.get 2
          local.get 3
          i32.load8_u
          local.tee 3
          i32.store8
          local.get 3
          i32.eqz
          br_if 2 (;@1;)
          local.get 0
          i32.const 3
          i32.add
          local.set 2
          block  ;; label = @4
            local.get 1
            i32.const 3
            i32.add
            local.tee 3
            i32.const 3
            i32.and
            br_if 0 (;@4;)
            local.get 3
            local.set 1
            br 1 (;@3;)
          end
          local.get 2
          local.get 3
          i32.load8_u
          local.tee 3
          i32.store8
          local.get 3
          i32.eqz
          br_if 2 (;@1;)
          local.get 0
          i32.const 4
          i32.add
          local.set 2
          local.get 1
          i32.const 4
          i32.add
          local.set 1
        end
        local.get 1
        i32.load
        local.tee 0
        i32.const -1
        i32.xor
        local.get 0
        i32.const -16843009
        i32.add
        i32.and
        i32.const -2139062144
        i32.and
        br_if 0 (;@2;)
        loop  ;; label = @3
          local.get 2
          local.get 0
          i32.store
          local.get 2
          i32.const 4
          i32.add
          local.set 2
          local.get 1
          i32.const 4
          i32.add
          local.tee 1
          i32.load
          local.tee 0
          i32.const -1
          i32.xor
          local.get 0
          i32.const -16843009
          i32.add
          i32.and
          i32.const -2139062144
          i32.and
          i32.eqz
          br_if 0 (;@3;)
        end
      end
      local.get 2
      local.get 1
      i32.load8_u
      local.tee 0
      i32.store8
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.const 1
      i32.add
      local.set 1
      loop  ;; label = @2
        local.get 2
        i32.const 1
        i32.add
        local.tee 2
        local.get 1
        i32.load8_u
        local.tee 0
        i32.store8
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 0
        br_if 0 (;@2;)
      end
    end
    local.get 2)
  (func $strcpy (type 8) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $__stpcpy
    drop
    local.get 0)
  (func $strnlen (type 8) (param i32 i32) (result i32)
    (local i32)
    local.get 0
    i32.const 0
    local.get 1
    call $memchr
    local.tee 2
    local.get 0
    i32.sub
    local.get 1
    local.get 2
    select)
  (func $memset (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i64)
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.store8
      local.get 2
      local.get 0
      i32.add
      local.tee 3
      i32.const -1
      i32.add
      local.get 1
      i32.store8
      local.get 2
      i32.const 3
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.store8 offset=2
      local.get 0
      local.get 1
      i32.store8 offset=1
      local.get 3
      i32.const -3
      i32.add
      local.get 1
      i32.store8
      local.get 3
      i32.const -2
      i32.add
      local.get 1
      i32.store8
      local.get 2
      i32.const 7
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.store8 offset=3
      local.get 3
      i32.const -4
      i32.add
      local.get 1
      i32.store8
      local.get 2
      i32.const 9
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      local.get 0
      i32.sub
      i32.const 3
      i32.and
      local.tee 4
      i32.add
      local.tee 3
      local.get 1
      i32.const 255
      i32.and
      i32.const 16843009
      i32.mul
      local.tee 1
      i32.store
      local.get 3
      local.get 2
      local.get 4
      i32.sub
      i32.const -4
      i32.and
      local.tee 4
      i32.add
      local.tee 2
      i32.const -4
      i32.add
      local.get 1
      i32.store
      local.get 4
      i32.const 9
      i32.lt_u
      br_if 0 (;@1;)
      local.get 3
      local.get 1
      i32.store offset=8
      local.get 3
      local.get 1
      i32.store offset=4
      local.get 2
      i32.const -8
      i32.add
      local.get 1
      i32.store
      local.get 2
      i32.const -12
      i32.add
      local.get 1
      i32.store
      local.get 4
      i32.const 25
      i32.lt_u
      br_if 0 (;@1;)
      local.get 3
      local.get 1
      i32.store offset=24
      local.get 3
      local.get 1
      i32.store offset=20
      local.get 3
      local.get 1
      i32.store offset=16
      local.get 3
      local.get 1
      i32.store offset=12
      local.get 2
      i32.const -16
      i32.add
      local.get 1
      i32.store
      local.get 2
      i32.const -20
      i32.add
      local.get 1
      i32.store
      local.get 2
      i32.const -24
      i32.add
      local.get 1
      i32.store
      local.get 2
      i32.const -28
      i32.add
      local.get 1
      i32.store
      local.get 4
      local.get 3
      i32.const 4
      i32.and
      i32.const 24
      i32.or
      local.tee 5
      i32.sub
      local.tee 2
      i32.const 32
      i32.lt_u
      br_if 0 (;@1;)
      local.get 1
      i64.extend_i32_u
      i64.const 4294967297
      i64.mul
      local.set 6
      local.get 3
      local.get 5
      i32.add
      local.set 1
      loop  ;; label = @2
        local.get 1
        local.get 6
        i64.store
        local.get 1
        i32.const 24
        i32.add
        local.get 6
        i64.store
        local.get 1
        i32.const 16
        i32.add
        local.get 6
        i64.store
        local.get 1
        i32.const 8
        i32.add
        local.get 6
        i64.store
        local.get 1
        i32.const 32
        i32.add
        local.set 1
        local.get 2
        i32.const -32
        i32.add
        local.tee 2
        i32.const 31
        i32.gt_u
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (func $strncasecmp (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32)
    block  ;; label = @1
      local.get 2
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    i32.const 0
    local.set 3
    block  ;; label = @1
      local.get 0
      i32.load8_u
      local.tee 4
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 1
      i32.add
      local.set 0
      local.get 2
      i32.const -1
      i32.add
      local.set 2
      loop  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.load8_u
          local.tee 5
          br_if 0 (;@3;)
          local.get 4
          local.set 3
          br 2 (;@1;)
        end
        block  ;; label = @3
          local.get 2
          br_if 0 (;@3;)
          local.get 4
          local.set 3
          br 2 (;@1;)
        end
        block  ;; label = @3
          local.get 4
          i32.const 255
          i32.and
          local.tee 6
          local.get 5
          i32.eq
          br_if 0 (;@3;)
          local.get 6
          call $tolower
          local.get 5
          call $tolower
          i32.eq
          br_if 0 (;@3;)
          local.get 4
          local.set 3
          br 2 (;@1;)
        end
        local.get 2
        i32.const -1
        i32.add
        local.set 2
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 0
        i32.load8_u
        local.set 4
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 4
        br_if 0 (;@2;)
      end
    end
    local.get 3
    i32.const 255
    i32.and
    call $tolower
    local.get 1
    i32.load8_u
    call $tolower
    i32.sub)
  (func $strcmp (type 8) (param i32 i32) (result i32)
    (local i32 i32)
    local.get 1
    i32.load8_u
    local.set 2
    block  ;; label = @1
      local.get 0
      i32.load8_u
      local.tee 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      local.get 2
      i32.const 255
      i32.and
      i32.ne
      br_if 0 (;@1;)
      local.get 0
      i32.const 1
      i32.add
      local.set 0
      local.get 1
      i32.const 1
      i32.add
      local.set 1
      loop  ;; label = @2
        local.get 1
        i32.load8_u
        local.set 2
        local.get 0
        i32.load8_u
        local.tee 3
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 3
        local.get 2
        i32.const 255
        i32.and
        i32.eq
        br_if 0 (;@2;)
      end
    end
    local.get 3
    local.get 2
    i32.const 255
    i32.and
    i32.sub)
  (func $memchr (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    local.get 2
    i32.const 0
    i32.ne
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.const 3
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 2
            i32.eqz
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 0
              i32.load8_u
              local.get 1
              i32.const 255
              i32.and
              i32.ne
              br_if 0 (;@5;)
              local.get 0
              local.set 4
              local.get 2
              local.set 5
              br 3 (;@2;)
            end
            local.get 2
            i32.const -1
            i32.add
            local.tee 5
            i32.const 0
            i32.ne
            local.set 3
            local.get 0
            i32.const 1
            i32.add
            local.tee 4
            i32.const 3
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            local.get 5
            i32.eqz
            br_if 1 (;@3;)
            local.get 4
            i32.load8_u
            local.get 1
            i32.const 255
            i32.and
            i32.eq
            br_if 2 (;@2;)
            local.get 2
            i32.const -2
            i32.add
            local.tee 5
            i32.const 0
            i32.ne
            local.set 3
            local.get 0
            i32.const 2
            i32.add
            local.tee 4
            i32.const 3
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            local.get 5
            i32.eqz
            br_if 1 (;@3;)
            local.get 4
            i32.load8_u
            local.get 1
            i32.const 255
            i32.and
            i32.eq
            br_if 2 (;@2;)
            local.get 2
            i32.const -3
            i32.add
            local.tee 5
            i32.const 0
            i32.ne
            local.set 3
            local.get 0
            i32.const 3
            i32.add
            local.tee 4
            i32.const 3
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            local.get 5
            i32.eqz
            br_if 1 (;@3;)
            local.get 4
            i32.load8_u
            local.get 1
            i32.const 255
            i32.and
            i32.eq
            br_if 2 (;@2;)
            local.get 0
            i32.const 4
            i32.add
            local.set 4
            local.get 2
            i32.const -4
            i32.add
            local.tee 5
            i32.const 0
            i32.ne
            local.set 3
            br 1 (;@3;)
          end
          local.get 2
          local.set 5
          local.get 0
          local.set 4
        end
        local.get 3
        i32.eqz
        br_if 1 (;@1;)
      end
      block  ;; label = @2
        local.get 4
        i32.load8_u
        local.get 1
        i32.const 255
        i32.and
        i32.eq
        br_if 0 (;@2;)
        local.get 5
        i32.const 4
        i32.lt_u
        br_if 0 (;@2;)
        local.get 1
        i32.const 255
        i32.and
        i32.const 16843009
        i32.mul
        local.set 0
        loop  ;; label = @3
          local.get 4
          i32.load
          local.get 0
          i32.xor
          local.tee 2
          i32.const -1
          i32.xor
          local.get 2
          i32.const -16843009
          i32.add
          i32.and
          i32.const -2139062144
          i32.and
          br_if 1 (;@2;)
          local.get 4
          i32.const 4
          i32.add
          local.set 4
          local.get 5
          i32.const -4
          i32.add
          local.tee 5
          i32.const 3
          i32.gt_u
          br_if 0 (;@3;)
        end
      end
      local.get 5
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.const 255
      i32.and
      local.set 2
      loop  ;; label = @2
        block  ;; label = @3
          local.get 4
          i32.load8_u
          local.get 2
          i32.ne
          br_if 0 (;@3;)
          local.get 4
          return
        end
        local.get 4
        i32.const 1
        i32.add
        local.set 4
        local.get 5
        i32.const -1
        i32.add
        local.tee 5
        br_if 0 (;@2;)
      end
    end
    i32.const 0)
  (func $strcat (type 8) (param i32 i32) (result i32)
    local.get 0
    local.get 0
    call $strlen
    i32.add
    local.get 1
    call $strcpy
    drop
    local.get 0)
  (func $dummy.1 (type 8) (param i32 i32) (result i32)
    local.get 0)
  (func $__lctrans (type 8) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $dummy.1)
  (func $__lctrans_cur (type 3) (param i32) (result i32)
    (local i32)
    block  ;; label = @1
      i32.const 0
      i32.load offset=18308
      local.tee 1
      br_if 0 (;@1;)
      i32.const 18284
      local.set 1
      i32.const 0
      i32.const 18284
      i32.store offset=18308
    end
    local.get 0
    local.get 1
    i32.load offset=20
    call $dummy.1)
  (func $atoi (type 3) (param i32) (result i32)
    (local i32 i32 i32 i32)
    loop  ;; label = @1
      local.get 0
      i32.load8_s
      local.tee 1
      i32.const -9
      i32.add
      local.set 2
      local.get 0
      i32.const 1
      i32.add
      local.tee 3
      local.set 0
      local.get 1
      i32.const 32
      i32.eq
      br_if 0 (;@1;)
      local.get 3
      local.set 0
      local.get 2
      i32.const 5
      i32.lt_u
      br_if 0 (;@1;)
    end
    i32.const 0
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const -43
            i32.add
            br_table 2 (;@2;) 0 (;@4;) 1 (;@3;) 0 (;@4;)
          end
          local.get 3
          i32.const -1
          i32.add
          local.set 3
          i32.const 0
          local.set 4
          br 2 (;@1;)
        end
        i32.const 1
        local.set 4
      end
      local.get 3
      i32.load8_s
      local.set 1
    end
    i32.const 0
    local.set 2
    block  ;; label = @1
      local.get 1
      i32.const -48
      i32.add
      local.tee 1
      i32.const 9
      i32.gt_u
      br_if 0 (;@1;)
      local.get 3
      i32.const 1
      i32.add
      local.set 0
      i32.const 0
      local.set 2
      loop  ;; label = @2
        local.get 2
        i32.const 10
        i32.mul
        local.get 1
        i32.sub
        local.set 2
        local.get 0
        i32.load8_s
        local.set 1
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 1
        i32.const -48
        i32.add
        local.tee 1
        i32.const 10
        i32.lt_u
        br_if 0 (;@2;)
      end
    end
    local.get 2
    i32.const 0
    local.get 2
    i32.sub
    local.get 4
    select)
  (func $wctomb (type 8) (param i32 i32) (result i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    local.get 0
    local.get 1
    i32.const 0
    call $wcrtomb)
  (func $wcrtomb (type 0) (param i32 i32 i32) (result i32)
    (local i32)
    i32.const 1
    local.set 3
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 1
        i32.const 127
        i32.gt_u
        br_if 0 (;@2;)
        local.get 0
        local.get 1
        i32.store8
        i32.const 1
        return
      end
      block  ;; label = @2
        block  ;; label = @3
          i32.const 0
          i32.load offset=18284
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 1
            i32.const -128
            i32.and
            i32.const 57216
            i32.eq
            br_if 0 (;@4;)
            i32.const 0
            i32.const 25
            i32.store offset=18256
            br 2 (;@2;)
          end
          local.get 0
          local.get 1
          i32.store8
          i32.const 1
          return
        end
        block  ;; label = @3
          local.get 1
          i32.const 2047
          i32.gt_u
          br_if 0 (;@3;)
          local.get 0
          local.get 1
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=1
          local.get 0
          local.get 1
          i32.const 6
          i32.shr_u
          i32.const 192
          i32.or
          i32.store8
          i32.const 2
          return
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const 55296
            i32.lt_u
            br_if 0 (;@4;)
            local.get 1
            i32.const -8192
            i32.and
            i32.const 57344
            i32.ne
            br_if 1 (;@3;)
          end
          local.get 0
          local.get 1
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=2
          local.get 0
          local.get 1
          i32.const 12
          i32.shr_u
          i32.const 224
          i32.or
          i32.store8
          local.get 0
          local.get 1
          i32.const 6
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=1
          i32.const 3
          return
        end
        block  ;; label = @3
          local.get 1
          i32.const -65536
          i32.add
          i32.const 1048575
          i32.gt_u
          br_if 0 (;@3;)
          local.get 0
          local.get 1
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=3
          local.get 0
          local.get 1
          i32.const 18
          i32.shr_u
          i32.const 240
          i32.or
          i32.store8
          local.get 0
          local.get 1
          i32.const 6
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=2
          local.get 0
          local.get 1
          i32.const 12
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=1
          i32.const 4
          return
        end
        i32.const 0
        i32.const 25
        i32.store offset=18256
      end
      i32.const -1
      local.set 3
    end
    local.get 3)
  (func $mbtowc (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 3
    block  ;; label = @1
      local.get 1
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 3
      i32.const 12
      i32.add
      local.get 0
      select
      local.set 3
      block  ;; label = @2
        local.get 1
        i32.load8_u
        local.tee 0
        i32.const 24
        i32.shl
        i32.const 24
        i32.shr_s
        local.tee 4
        i32.const 0
        i32.lt_s
        br_if 0 (;@2;)
        local.get 3
        local.get 0
        i32.store
        local.get 4
        i32.const 0
        i32.ne
        return
      end
      block  ;; label = @2
        i32.const 0
        i32.load offset=18284
        br_if 0 (;@2;)
        local.get 3
        local.get 4
        i32.const 57343
        i32.and
        i32.store
        i32.const 1
        return
      end
      local.get 0
      i32.const -194
      i32.add
      local.tee 0
      i32.const 50
      i32.gt_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 2
      i32.shl
      i32.const 8848
      i32.add
      i32.load
      local.set 0
      block  ;; label = @2
        local.get 2
        i32.const 3
        i32.gt_u
        br_if 0 (;@2;)
        local.get 0
        local.get 2
        i32.const 6
        i32.mul
        i32.const -6
        i32.add
        i32.shl
        i32.const 0
        i32.lt_s
        br_if 1 (;@1;)
      end
      local.get 1
      i32.load8_u offset=1
      local.tee 4
      i32.const 3
      i32.shr_u
      local.tee 2
      i32.const -16
      i32.add
      local.get 2
      local.get 0
      i32.const 26
      i32.shr_s
      i32.add
      i32.or
      i32.const 7
      i32.gt_u
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 4
        i32.const -128
        i32.add
        local.get 0
        i32.const 6
        i32.shl
        i32.or
        local.tee 0
        i32.const 0
        i32.lt_s
        br_if 0 (;@2;)
        local.get 3
        local.get 0
        i32.store
        i32.const 2
        return
      end
      local.get 1
      i32.load8_u offset=2
      i32.const -128
      i32.add
      local.tee 2
      i32.const 63
      i32.gt_u
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 2
        local.get 0
        i32.const 6
        i32.shl
        i32.or
        local.tee 0
        i32.const 0
        i32.lt_s
        br_if 0 (;@2;)
        local.get 3
        local.get 0
        i32.store
        i32.const 3
        return
      end
      local.get 1
      i32.load8_u offset=3
      i32.const -128
      i32.add
      local.tee 1
      i32.const 63
      i32.gt_u
      br_if 0 (;@1;)
      local.get 3
      local.get 1
      local.get 0
      i32.const 6
      i32.shl
      i32.or
      i32.store
      i32.const 4
      return
    end
    i32.const 0
    i32.const 25
    i32.store offset=18256
    i32.const -1)
  (func $srandom (type 10) (param i32)
    (local i32 i32 i32 i64 i32)
    block  ;; label = @1
      i32.const 0
      i32.load offset=10340
      local.tee 1
      br_if 0 (;@1;)
      i32.const 0
      i32.load offset=10344
      local.get 0
      i32.store
      return
    end
    i32.const 0
    i32.const 3
    i32.const 3
    i32.const 1
    local.get 1
    i32.const 7
    i32.eq
    select
    local.get 1
    i32.const 31
    i32.eq
    select
    i32.store offset=10348
    i32.const 0
    i32.const 0
    i32.store offset=19360
    i32.const 0
    i32.load offset=10344
    local.set 2
    block  ;; label = @1
      local.get 1
      i32.const 1
      i32.lt_s
      br_if 0 (;@1;)
      local.get 1
      i32.const 3
      i32.and
      local.set 3
      local.get 0
      i64.extend_i32_u
      local.set 4
      i32.const 0
      local.set 0
      block  ;; label = @2
        local.get 1
        i32.const -1
        i32.add
        i32.const 3
        i32.lt_u
        br_if 0 (;@2;)
        local.get 1
        i32.const -4
        i32.and
        local.set 5
        i32.const 0
        local.set 0
        local.get 2
        local.set 1
        loop  ;; label = @3
          local.get 1
          local.get 4
          i64.const 6364136223846793005
          i64.mul
          i64.const 1
          i64.add
          local.tee 4
          i64.const 32
          i64.shr_u
          i64.store32
          local.get 1
          i32.const 4
          i32.add
          local.get 4
          i64.const 6364136223846793005
          i64.mul
          i64.const 1
          i64.add
          local.tee 4
          i64.const 32
          i64.shr_u
          i64.store32
          local.get 1
          i32.const 8
          i32.add
          local.get 4
          i64.const 6364136223846793005
          i64.mul
          i64.const 1
          i64.add
          local.tee 4
          i64.const 32
          i64.shr_u
          i64.store32
          local.get 1
          i32.const 12
          i32.add
          local.get 4
          i64.const 6364136223846793005
          i64.mul
          i64.const 1
          i64.add
          local.tee 4
          i64.const 32
          i64.shr_u
          i64.store32
          local.get 1
          i32.const 16
          i32.add
          local.set 1
          local.get 5
          local.get 0
          i32.const 4
          i32.add
          local.tee 0
          i32.ne
          br_if 0 (;@3;)
        end
      end
      local.get 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      local.get 0
      i32.const 2
      i32.shl
      i32.add
      local.set 1
      loop  ;; label = @2
        local.get 1
        local.get 4
        i64.const 6364136223846793005
        i64.mul
        i64.const 1
        i64.add
        local.tee 4
        i64.const 32
        i64.shr_u
        i64.store32
        local.get 1
        i32.const 4
        i32.add
        local.set 1
        local.get 3
        i32.const -1
        i32.add
        local.tee 3
        br_if 0 (;@2;)
      end
    end
    local.get 2
    local.get 2
    i32.load
    i32.const 1
    i32.or
    i32.store)
  (func $random (type 14) (result i32)
    (local i32 i32 i32 i32)
    i32.const 0
    i32.load offset=10344
    local.set 0
    block  ;; label = @1
      i32.const 0
      i32.load offset=10340
      local.tee 1
      br_if 0 (;@1;)
      local.get 0
      local.get 0
      i32.load
      i32.const 1103515245
      i32.mul
      i32.const 12345
      i32.add
      i32.const 2147483647
      i32.and
      local.tee 1
      i32.store
      local.get 1
      return
    end
    local.get 0
    i32.const 0
    i32.load offset=10348
    local.tee 2
    i32.const 2
    i32.shl
    i32.add
    local.tee 3
    local.get 3
    i32.load
    local.get 0
    i32.const 0
    i32.load offset=19360
    local.tee 3
    i32.const 2
    i32.shl
    i32.add
    i32.load
    i32.add
    local.tee 0
    i32.store
    i32.const 0
    i32.const 0
    local.get 3
    i32.const 1
    i32.add
    local.tee 3
    local.get 3
    local.get 1
    i32.eq
    select
    i32.store offset=19360
    i32.const 0
    i32.const 0
    local.get 2
    i32.const 1
    i32.add
    local.tee 2
    local.get 2
    local.get 1
    i32.eq
    select
    i32.store offset=10348
    local.get 0
    i32.const 1
    i32.shr_u)
  (func $tolower (type 3) (param i32) (result i32)
    local.get 0
    i32.const 32
    i32.or
    local.get 0
    local.get 0
    i32.const -65
    i32.add
    i32.const 26
    i32.lt_u
    select)
  (func $frexp (type 18) (param f64 i32) (result f64)
    (local i64 i32)
    block  ;; label = @1
      local.get 0
      i64.reinterpret_f64
      local.tee 2
      i64.const 52
      i64.shr_u
      i32.wrap_i64
      i32.const 2047
      i32.and
      local.tee 3
      i32.const 2047
      i32.eq
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 3
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 0
          f64.const 0x0p+0 (;=0;)
          f64.ne
          br_if 0 (;@3;)
          local.get 1
          i32.const 0
          i32.store
          local.get 0
          return
        end
        local.get 0
        f64.const 0x1p+64 (;=1.84467e+19;)
        f64.mul
        local.get 1
        call $frexp
        local.set 0
        local.get 1
        local.get 1
        i32.load
        i32.const -64
        i32.add
        i32.store
        local.get 0
        return
      end
      local.get 1
      local.get 3
      i32.const -1022
      i32.add
      i32.store
      local.get 2
      i64.const -9218868437227405313
      i64.and
      i64.const 4602678819172646912
      i64.or
      f64.reinterpret_i64
      local.set 0
    end
    local.get 0)
  (func $__muloti4 (type 19) (param i32 i64 i64 i64 i64 i32)
    (local i32 i64 i64 i64 i64 i64 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 6
    global.set $__stack_pointer
    local.get 5
    i32.const 0
    i32.store
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          local.get 2
          i64.const -9223372036854775808
          i64.xor
          i64.or
          i64.const 0
          i64.ne
          br_if 0 (;@3;)
          local.get 3
          i64.const 2
          i64.lt_u
          i32.const 0
          local.get 4
          i64.eqz
          select
          i32.eqz
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        block  ;; label = @3
          local.get 3
          local.get 4
          i64.const -9223372036854775808
          i64.xor
          i64.or
          i64.const 0
          i64.ne
          br_if 0 (;@3;)
          local.get 1
          i64.const 2
          i64.lt_u
          i32.const 0
          local.get 2
          i64.eqz
          select
          i32.eqz
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        local.get 2
        i64.const 63
        i64.shr_s
        local.tee 7
        local.get 1
        i64.xor
        local.tee 8
        local.get 7
        i64.sub
        local.tee 9
        i64.const 2
        i64.lt_u
        local.get 7
        local.get 2
        i64.xor
        local.get 7
        i64.sub
        local.get 8
        local.get 7
        i64.lt_u
        i64.extend_i32_u
        i64.sub
        local.tee 10
        i64.const 0
        i64.lt_s
        local.get 10
        i64.eqz
        select
        br_if 1 (;@1;)
        local.get 4
        i64.const 63
        i64.shr_s
        local.tee 8
        local.get 3
        i64.xor
        local.tee 11
        local.get 8
        i64.sub
        local.tee 12
        i64.const 2
        i64.lt_u
        local.get 8
        local.get 4
        i64.xor
        local.get 8
        i64.sub
        local.get 11
        local.get 8
        i64.lt_u
        i64.extend_i32_u
        i64.sub
        local.tee 11
        i64.const 0
        i64.lt_s
        local.get 11
        i64.eqz
        select
        br_if 1 (;@1;)
        block  ;; label = @3
          local.get 7
          local.get 8
          i64.xor
          local.tee 7
          local.get 7
          i64.or
          i64.const 0
          i64.ne
          br_if 0 (;@3;)
          local.get 6
          i32.const 16
          i32.add
          i64.const -1
          i64.const 9223372036854775807
          local.get 12
          local.get 11
          call $__udivti3
          local.get 9
          local.get 6
          i64.load offset=16
          i64.gt_u
          local.get 10
          local.get 6
          i32.const 24
          i32.add
          i64.load
          local.tee 7
          i64.gt_s
          local.get 10
          local.get 7
          i64.eq
          select
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        local.get 6
        i32.const 32
        i32.add
        i64.const 0
        i64.const -9223372036854775808
        local.get 12
        local.get 11
        call $__udivti3
        local.get 9
        local.get 6
        i64.load offset=32
        i64.le_u
        local.get 10
        local.get 6
        i32.const 40
        i32.add
        i64.load
        local.tee 7
        i64.le_s
        local.get 10
        local.get 7
        i64.eq
        select
        br_if 1 (;@1;)
      end
      local.get 5
      i32.const 1
      i32.store
    end
    local.get 6
    local.get 3
    local.get 4
    local.get 1
    local.get 2
    call $__multi3
    local.get 0
    local.get 6
    i32.const 8
    i32.add
    i64.load
    i64.store offset=8
    local.get 0
    local.get 6
    i64.load
    i64.store
    local.get 6
    i32.const 48
    i32.add
    global.set $__stack_pointer)
  (func $__multi3 (type 20) (param i32 i64 i64 i64 i64)
    (local i64)
    local.get 0
    local.get 4
    local.get 1
    i64.mul
    local.get 2
    local.get 3
    i64.mul
    i64.add
    local.get 3
    i64.const 32
    i64.shr_u
    local.tee 4
    local.get 1
    i64.const 32
    i64.shr_u
    local.tee 2
    i64.mul
    i64.add
    local.get 3
    i64.const 4294967295
    i64.and
    local.tee 3
    local.get 1
    i64.const 4294967295
    i64.and
    local.tee 1
    i64.mul
    local.tee 5
    i64.const 32
    i64.shr_u
    local.get 3
    local.get 2
    i64.mul
    i64.add
    local.tee 3
    i64.const 32
    i64.shr_u
    i64.add
    local.get 3
    i64.const 4294967295
    i64.and
    local.get 4
    local.get 1
    i64.mul
    i64.add
    local.tee 3
    i64.const 32
    i64.shr_u
    i64.add
    i64.store offset=8
    local.get 0
    local.get 3
    i64.const 32
    i64.shl
    local.get 5
    i64.const 4294967295
    i64.and
    i64.or
    i64.store)
  (func $__ashlti3 (type 21) (param i32 i64 i64 i32)
    (local i64)
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.const 64
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        local.get 3
        i32.const -64
        i32.add
        i64.extend_i32_u
        i64.shl
        local.set 2
        i64.const 0
        local.set 1
        br 1 (;@1;)
      end
      local.get 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.const 64
      local.get 3
      i32.sub
      i64.extend_i32_u
      i64.shr_u
      local.get 2
      local.get 3
      i64.extend_i32_u
      local.tee 4
      i64.shl
      i64.or
      local.set 2
      local.get 1
      local.get 4
      i64.shl
      local.set 1
    end
    local.get 0
    local.get 1
    i64.store
    local.get 0
    local.get 2
    i64.store offset=8)
  (func $__udivmodti4 (type 19) (param i32 i64 i64 i64 i64 i32)
    (local i32 i64 i64 i64 i64 i64 i64 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 6
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          local.get 1
          i64.le_u
          local.get 4
          local.get 2
          i64.le_u
          local.get 4
          local.get 2
          i64.eq
          select
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 5
            br_if 0 (;@4;)
            i64.const 0
            local.set 7
            br 2 (;@2;)
          end
          local.get 5
          local.get 1
          i64.store
          local.get 5
          local.get 2
          i64.store offset=8
          i64.const 0
          local.set 7
          br 1 (;@2;)
        end
        i64.const 0
        local.set 7
        block  ;; label = @3
          local.get 4
          i64.const 0
          i64.ne
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              local.get 3
              i64.ge_u
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 3
                i64.clz
                local.tee 8
                i64.eqz
                br_if 0 (;@6;)
                local.get 2
                local.get 8
                i64.shl
                local.get 1
                i64.const 1
                i64.shr_u
                local.get 8
                i64.const -1
                i64.xor
                i64.shr_u
                i64.or
                local.set 2
                local.get 1
                local.get 8
                i64.shl
                local.set 1
                local.get 3
                local.get 8
                i64.shl
                local.set 3
              end
              local.get 2
              local.get 2
              local.get 3
              i64.const 32
              i64.shr_u
              local.tee 9
              i64.div_u
              local.tee 4
              local.get 9
              i64.mul
              i64.sub
              local.set 10
              local.get 1
              i64.const 4294967295
              i64.and
              local.set 11
              local.get 1
              i64.const 32
              i64.shr_u
              local.set 1
              local.get 3
              i64.const 4294967295
              i64.and
              local.set 7
              block  ;; label = @6
                loop  ;; label = @7
                  block  ;; label = @8
                    local.get 4
                    i64.const 4294967295
                    i64.gt_u
                    br_if 0 (;@8;)
                    local.get 4
                    local.get 7
                    i64.mul
                    local.get 10
                    i64.const 32
                    i64.shl
                    local.get 1
                    i64.or
                    i64.le_u
                    br_if 2 (;@6;)
                  end
                  local.get 4
                  i64.const -1
                  i64.add
                  local.set 4
                  local.get 10
                  local.get 9
                  i64.add
                  local.tee 10
                  i64.const 4294967296
                  i64.lt_u
                  br_if 0 (;@7;)
                end
              end
              local.get 1
              local.get 2
              i64.const 32
              i64.shl
              i64.or
              local.get 4
              local.get 3
              i64.mul
              i64.sub
              local.tee 2
              local.get 2
              local.get 9
              i64.div_u
              local.tee 10
              local.get 9
              i64.mul
              i64.sub
              local.set 1
              block  ;; label = @6
                loop  ;; label = @7
                  block  ;; label = @8
                    local.get 10
                    i64.const 4294967295
                    i64.gt_u
                    br_if 0 (;@8;)
                    local.get 10
                    local.get 7
                    i64.mul
                    local.get 1
                    i64.const 32
                    i64.shl
                    local.get 11
                    i64.or
                    i64.le_u
                    br_if 2 (;@6;)
                  end
                  local.get 10
                  i64.const -1
                  i64.add
                  local.set 10
                  local.get 1
                  local.get 9
                  i64.add
                  local.tee 1
                  i64.const 4294967296
                  i64.lt_u
                  br_if 0 (;@7;)
                end
              end
              local.get 2
              i64.const 32
              i64.shl
              local.get 11
              i64.or
              local.get 10
              local.get 3
              i64.mul
              i64.sub
              local.get 8
              i64.shr_u
              local.set 1
              i64.const 0
              local.set 11
              br 1 (;@4;)
            end
            local.get 2
            local.get 2
            local.get 3
            i64.div_u
            local.tee 11
            local.get 3
            i64.mul
            i64.sub
            local.set 8
            block  ;; label = @5
              local.get 3
              i64.clz
              local.tee 12
              i64.eqz
              br_if 0 (;@5;)
              local.get 8
              local.get 12
              i64.shl
              local.get 1
              i64.const 64
              local.get 12
              i64.sub
              i64.shr_u
              i64.or
              local.set 8
              local.get 1
              local.get 12
              i64.shl
              local.set 1
              local.get 3
              local.get 12
              i64.shl
              local.set 3
            end
            local.get 8
            local.get 8
            local.get 3
            i64.const 32
            i64.shr_u
            local.tee 2
            i64.div_u
            local.tee 4
            local.get 2
            i64.mul
            i64.sub
            local.set 10
            local.get 1
            i64.const 4294967295
            i64.and
            local.set 7
            local.get 1
            i64.const 32
            i64.shr_u
            local.set 1
            local.get 3
            i64.const 4294967295
            i64.and
            local.set 9
            block  ;; label = @5
              loop  ;; label = @6
                block  ;; label = @7
                  local.get 4
                  i64.const 4294967295
                  i64.gt_u
                  br_if 0 (;@7;)
                  local.get 4
                  local.get 9
                  i64.mul
                  local.get 10
                  i64.const 32
                  i64.shl
                  local.get 1
                  i64.or
                  i64.le_u
                  br_if 2 (;@5;)
                end
                local.get 4
                i64.const -1
                i64.add
                local.set 4
                local.get 10
                local.get 2
                i64.add
                local.tee 10
                i64.const 4294967296
                i64.lt_u
                br_if 0 (;@6;)
              end
            end
            local.get 1
            local.get 8
            i64.const 32
            i64.shl
            i64.or
            local.get 4
            local.get 3
            i64.mul
            i64.sub
            local.tee 8
            local.get 8
            local.get 2
            i64.div_u
            local.tee 10
            local.get 2
            i64.mul
            i64.sub
            local.set 1
            block  ;; label = @5
              loop  ;; label = @6
                block  ;; label = @7
                  local.get 10
                  i64.const 4294967295
                  i64.gt_u
                  br_if 0 (;@7;)
                  local.get 10
                  local.get 9
                  i64.mul
                  local.get 1
                  i64.const 32
                  i64.shl
                  local.get 7
                  i64.or
                  i64.le_u
                  br_if 2 (;@5;)
                end
                local.get 10
                i64.const -1
                i64.add
                local.set 10
                local.get 1
                local.get 2
                i64.add
                local.tee 1
                i64.const 4294967296
                i64.lt_u
                br_if 0 (;@6;)
              end
            end
            local.get 8
            i64.const 32
            i64.shl
            local.get 7
            i64.or
            local.get 10
            local.get 3
            i64.mul
            i64.sub
            local.get 12
            i64.shr_u
            local.set 1
          end
          local.get 10
          local.get 4
          i64.const 32
          i64.shl
          i64.add
          local.set 7
          local.get 5
          i32.eqz
          br_if 2 (;@1;)
          local.get 5
          i64.const 0
          i64.store offset=8
          local.get 5
          local.get 1
          i64.store
          br 2 (;@1;)
        end
        local.get 6
        local.get 3
        local.get 4
        local.get 4
        i64.clz
        i32.wrap_i64
        local.get 2
        i64.clz
        i32.wrap_i64
        i32.sub
        local.tee 13
        call $__ashlti3
        block  ;; label = @3
          local.get 13
          i32.const 0
          i32.lt_s
          br_if 0 (;@3;)
          local.get 6
          i32.const 8
          i32.add
          i64.load
          local.set 4
          local.get 6
          i64.load
          local.set 10
          local.get 13
          i32.const 1
          i32.add
          local.set 13
          i64.const 0
          local.set 7
          loop  ;; label = @4
            local.get 2
            local.get 4
            local.get 2
            i64.const -1
            i64.xor
            i64.add
            local.get 10
            local.get 1
            i64.const -1
            i64.xor
            i64.add
            local.get 10
            i64.lt_u
            i64.extend_i32_u
            i64.add
            i64.const 63
            i64.shr_s
            local.tee 9
            local.get 4
            i64.and
            i64.sub
            local.get 1
            local.get 9
            local.get 10
            i64.and
            local.tee 3
            i64.lt_u
            i64.extend_i32_u
            i64.sub
            local.set 2
            local.get 10
            i64.const 1
            i64.shr_u
            local.get 4
            i64.const 63
            i64.shl
            i64.or
            local.set 10
            local.get 7
            i64.const 1
            i64.shl
            local.get 9
            i64.sub
            local.set 7
            local.get 1
            local.get 3
            i64.sub
            local.set 1
            local.get 4
            i64.const 1
            i64.shr_u
            local.set 4
            local.get 13
            i32.const -1
            i32.add
            local.tee 13
            i32.const 0
            i32.gt_s
            br_if 0 (;@4;)
          end
        end
        local.get 5
        i32.eqz
        br_if 0 (;@2;)
        local.get 5
        local.get 2
        i64.store offset=8
        local.get 5
        local.get 1
        i64.store
      end
      i64.const 0
      local.set 11
    end
    local.get 0
    local.get 7
    i64.store
    local.get 0
    local.get 11
    i64.store offset=8
    local.get 6
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $__udivti3 (type 20) (param i32 i64 i64 i64 i64)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    i32.const 0
    call $__udivmodti4
    local.get 5
    i64.load
    local.set 1
    local.get 0
    local.get 5
    i32.const 8
    i32.add
    i64.load
    i64.store offset=8
    local.get 0
    local.get 1
    i64.store
    local.get 5
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_start.command_export (type 6)
    call $_start
    call $__wasm_call_dtors)
  (table (;0;) 6 6 funcref)
  (memory (;0;) 2)
  (global $__stack_pointer (mut i32) (i32.const 84912))
  (export "memory" (memory 0))
  (export "_start" (func $_start.command_export))
  (elem (;0;) (i32.const 1) func $__stdio_close $__stdio_write $__stdio_seek $__stdout_write $sn_write)
  (data $.rodata (i32.const 1024) "#mx\00%02hx%02hx:%02hx%02hx:%02hx%02hx:%02hx%02hx:%02hx%02hx:%02hx%02hx:%02hx%02hx:%02hx%02hx\00%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x\00-+   0X0x\00-0X+0X 0X-0x+0x 0x\00%dw\004cCoq:r:S:s:t:v\00-v\00%hu.%hu.%hu.%hu\00#txt\00(0)root\00Internet\00MIT Chaos-net\00create_socket/socket\00ns\00%%%ds\00%s%c%s\00%hu %s\00serial: %ld mname: %s rname: %s\00#ptr\00dnstracer\00send_data/sendto\00#hinfo\00unknown\00nan\00%s (%s)%n\00%dm\00%dh\00inf\00#0xff\00#0xef\00#0xdf\00#0xcf\00#0xbf\00#0xaf\00#0x9f\00#0x8f\00#0x7f\00#0x6f\00#0x5f\00#0x4f\00#0x3f\00#0x2f\00#0x1f\00Pre-req in update\00cname\00#0xfe\00#0xee\00#0xde\00#0xce\00#0xbe\00#0xae\00#0x9e\00#0x8e\00#0x7e\00#0x6e\00#0x5e\00#0x4e\00#0x3e\00#0x2e\00#0x1e\00#0x0e\00Wildcard\00MIT Hesiod\00create_socket/bind\00#0xfd\00#0xed\00(%s) Not queried\00#0xdd\00%dd\00#0xcd\00#0xbd\00#0xad\00#0x9d\00#0x8d\00#0x7d\00#0x6d\00#0x5d\00#0x4d\00#0x3d\00#0x2d\00#0x1d\00#0xfc\00#0xec\00#0xdc\00#0xcc\00#0xbc\00#0xac\00#0x9c\00#0x8c\00#0x7c\00#0x6c\00#0x5c\00#0x4c\00#0x3c\00#0x2c\00#0x1c\00%s%c\00#0xfb\00#0xeb\00#0xdb\00#0xcb\00#0xbb\00#0xab\00#0x9b\00#0x8b\00#0x7b\00#0x6b\00#0x5b\00#0x4b\00#0x3b\00#0x2b\00#0x1b\00#0x0b\00soa\00#0xfa\00#0xea\00#0xda\00#0xca\00#0xba\00#0xaa\00aaaa\00#0x9a\00#0x8a\00#0x7a\00#0x6a\00#0x5a\00#0x4a\00#0x3a\00#0x2a\00#0x1a\00#0x0a\00XXX\00A.ROOT-SERVERS.NET\00NS\00PTR\00NAN\00INF\00CNAME\00SOA\00AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\00#0xf9\00#0xe9\00#0xd9\00#0xc9\00#0xb9\00#0xa9\00#0x99\00#0x89\00#0x79\00#0x69\00#0x59\00#0x49\00#0x39\00#0x29\00#0x19\00#0x09\00#0xf8\00#0xe8\00#0xd8\00#0xc8\00#0xb8\00#0xa8\00#0x98\00#0x88\00#0x78\00#0x68\00#0x58\00#0x48\00#0x38\00#0x28\00#0x18\00#0x08\00#0xf7\00#0xe7\00#0xd7\00#0xc7\00#0xb7\00#0xa7\00#0x97\00#0x87\00#0x77\00#0x67\00#0x57\00#0x47\00#0x37\00#0x27\00#0x17\00#0x07\00#0xf6\00#0xe6\00#0xd6\00#0xc6\00#0xb6\00#0xa6\00#0x96\00#0x86\00#0x76\00#0x66\00#0x56\00#0x46\00#0x36\00#0x26\00#0x16\00#0xf5\00#0xe5\00#0xd5\00#0xc5\00#0xb5\00#0xa5\00#0x95\00#0x85\00#0x75\00#0x65\00#0x55\00#0x45\00#0x35\00#0x25\00#0x15\00#0xf4\00#0xe4\00#0xd4\00#0xc4\00#0xb4\00#0xa4\00#0x94\00#0x84\00#0x74\00#0x64\00#0x54\00#0x44\00#0x34\00#0x24\00#0x14\00#0x04\00#0xf3\00#0xe3\00#0xd3\00#0xc3\00#0xb3\00#0xa3\00#0x93\00#0x83\00#0x73\00#0x63\00#0x53\00#0x43\00#0x33\00#0x23\00#0x13\00#0x03\00#0xf2\00#0xe2\00#0xd2\00#0xc2\00#0xb2\00#0xa2\00#0x92\00#0x82\00#0x72\00#0x62\00#0x52\00#0x42\00#0x32\00#0x22\00#0x12\00#0xf1\00#0xe1\00#0xd1\00#0xc1\00#0xb1\00#0xa1\00#0x91\00#0x81\00#0x71\00#0x61\00#0x51\00#0x41\00#0x31\00#0x21\00#0x11\00127.0.0.1\00#0xf0\00#0xe0\00#0xd0\00#0xc0\00#0xb0\00#0xa0\00#0x90\00#0x80\00#0x70\00#0x60\00#0x50\00#0x40\00#0x30\00#0x20\00#0x00\000000:0000:0000:0000:0000:0000:0000:0000\00\01.\00(No IP address)\00(null)\00(cached)\00(%d)\00- Flags:                0x%02hX (\00- Return code:          %hu \00- Opcode:               %hu \00Refers backwards \00%s \00Got answer \00Got authoritative answer \00Lame server \00\5c___ \00[%s] \00[received type is %s] \00R \00Q \00RD \00TC \00RA \00AA \00: option requires an argument: \00: unrecognized option: \00* \00(%s) \00     \00Expected id: %hx, received id: %hx\0a\00- Number additional RR: %hu\0a\00- Number authority RR:  %hu\0a\00- Number questions:     %hu\0a\00- Number answer RR:     %hu\0a\00- Resource length:      %hu\0a\00Strange amount of retries, setting to default\0a\00Strange querytype, setting to default\0a\00\09-4: don't query IPv6 servers\0a\00Tracing to %s[%s] via %s, maximum of %d retries\0a\00Cannot find IP address for %s\0a\00%s -> %s\0a\00- Destination address:  %s\0a\00- Resource data:        %s\0a\00- Domainname:           %s\0a\00- Queryname:            %s\0a\00optind: %d\0a\00- Identifier:           0x%04hX\0a\00AUTHORITY RR\0a\00ANSWER RR\0a\00ADDITIONAL RR\0a\00IP HEADER\0a\00If this is an IPv6 problem, run configure with --disable-ipv6\0a\00DNSTRACER version 1.8.1 - (c) Edwin Groothuis - http://www.mavetju.org\0aUsage: dnstracer [options] [host]\0a\09-c: disable local caching, default enabled\0a\09-C: enable negative caching, default disabled\0a\09-o: enable overview of received answers, default disabled\0a\09-q <querytype>: query-type to use for the DNS requests, default A\0a\09-r <retries>: amount of retries for DNS requests, default 3\0a\09-s <server>: use this server for the initial request, default localhost\0a\09             If . is specified, A.ROOT-SERVERS.NET will be used.\0a\09-t <maximum timeout>: Limit time to wait per try\0a\09-v: verbose\0a\09-S <ip address>: use this source address.\0a\00Support for formatting long double values is currently disabled.\0aTo enable it, add -lc-printscan-long-double to the link command.\0a\00(Inverse query)\0a\00(Standard query)\0a\00(Notify)\0a\00QUESTIONS (recv)\0a\00DNS HEADER (recv)\0a\00(RRset does not exist)\0a\00(Server status request)\0a\00(Zone init)\0a\00(RRset exists)\0a\00(Name exists)\0a\00- Class:                %hu (%s)\0a\00- Type:                 %hu (%s)\0a\00- TTL:                  %u (%s)\0a\00(Format error)\0a\00(No error)\0a\00(Name error)\0a\00(unknown)\0a\00(Zone of record different from zone section)\0a\00(Zone Ref)\0a\00(Not authoritive)\0a\00(Update)\0a\00(Server failure)\0a\00QUESTIONS (send)\0a\00DNS HEADER (send)\0a\00(Not implemented)\0a\00(Refused)\0a\00before strcpy()\0a\00before getopt()\0a\00end getopt()\0a\00\00x'\00\00Success\00Illegal byte sequence\00Domain error\00Result not representable\00Not a tty\00Permission denied\00Operation not permitted\00No such file or directory\00No such process\00File exists\00Value too large for data type\00No space left on device\00Out of memory\00Resource busy\00Interrupted system call\00Resource temporarily unavailable\00Invalid seek\00Cross-device link\00Read-only file system\00Directory not empty\00Connection reset by peer\00Operation timed out\00Connection refused\00Host is unreachable\00Address in use\00Broken pipe\00I/O error\00No such device or address\00No such device\00Not a directory\00Is a directory\00Text file busy\00Exec format error\00Invalid argument\00Argument list too long\00Symbolic link loop\00Filename too long\00Too many open files in system\00No file descriptors available\00Bad file descriptor\00No child process\00Bad address\00File too large\00Too many links\00No locks available\00Resource deadlock would occur\00State not recoverable\00Previous owner died\00Operation canceled\00Function not implemented\00No message of desired type\00Identifier removed\00Link has been severed\00Protocol error\00Bad message\00Not a socket\00Destination address required\00Message too large\00Protocol wrong type for socket\00Protocol not available\00Protocol not supported\00Not supported\00Address family not supported by protocol\00Address not available\00Network is down\00Network unreachable\00Connection reset by network\00Connection aborted\00No buffer space available\00Socket is connected\00Socket not connected\00Operation already in progress\00Operation in progress\00Stale file handle\00Quota exceeded\00Multihop attempted\00Capabilities insufficient\00\00\00\00\00\00\00\00\00\00\00u\02N\00\d6\01\e2\04\b9\04\18\01\8e\05\ed\02\16\04\f2\00\97\03\01\038\05\af\01\82\01O\03/\04\1e\00\d4\05\a2\00\12\03\1e\03\c2\01\de\03\08\00\ac\05\00\01d\02\f1\01e\054\02\8c\02\cf\02-\03L\04\e3\05\9f\02\f8\04\1c\05\08\05\b1\02K\05\15\02x\00R\02<\03\f1\03\e4\00\c3\03}\04\cc\00\aa\03y\05$\02n\01m\03\22\04\ab\04D\00\fb\01\ae\00\83\03`\00\e5\01\07\04\94\04^\04+\00X\019\01\92\00\c2\05\9b\01C\02F\01\f6\05\00\00\00\00\00\00\19\00\0a\00\19\19\19\00\00\00\00\05\00\00\00\00\00\00\09\00\00\00\00\0b\00\00\00\00\00\00\00\00\19\00\11\0a\19\19\19\03\0a\07\00\01\1b\09\0b\18\00\00\09\06\0b\00\00\0b\00\06\19\00\00\00\19\19\19\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0e\00\00\00\00\00\00\00\00\19\00\0a\0d\19\19\19\00\0d\00\00\02\00\09\0e\00\00\00\09\00\0e\00\00\0e\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0c\00\00\00\00\00\00\00\00\00\00\00\13\00\00\00\00\13\00\00\00\00\09\0c\00\00\00\00\00\0c\00\00\0c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\0f\00\00\00\04\0f\00\00\00\00\09\10\00\00\00\00\00\10\00\00\10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\12\00\00\00\00\00\00\00\00\00\00\00\11\00\00\00\00\11\00\00\00\00\09\12\00\00\00\00\00\12\00\00\12\00\00\1a\00\00\00\1a\1a\1a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1a\00\00\00\1a\1a\1a\00\00\00\00\00\00\09\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\17\00\00\00\00\17\00\00\00\00\09\14\00\00\00\00\00\14\00\00\14\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\16\00\00\00\00\00\00\00\00\00\00\00\15\00\00\00\00\15\00\00\00\00\09\16\00\00\00\00\00\16\00\00\16\00\000123456789ABCDEF\f0'\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\c0\03\00\00\c0\04\00\00\c0\05\00\00\c0\06\00\00\c0\07\00\00\c0\08\00\00\c0\09\00\00\c0\0a\00\00\c0\0b\00\00\c0\0c\00\00\c0\0d\00\00\c0\0e\00\00\c0\0f\00\00\c0\10\00\00\c0\11\00\00\c0\12\00\00\c0\13\00\00\c0\14\00\00\c0\15\00\00\c0\16\00\00\c0\17\00\00\c0\18\00\00\c0\19\00\00\c0\1a\00\00\c0\1b\00\00\c0\1c\00\00\c0\1d\00\00\c0\1e\00\00\c0\1f\00\00\c0\00\00\00\b3\01\00\00\c3\02\00\00\c3\03\00\00\c3\04\00\00\c3\05\00\00\c3\06\00\00\c3\07\00\00\c3\08\00\00\c3\09\00\00\c3\0a\00\00\c3\0b\00\00\c3\0c\00\00\c3\0d\00\00\d3\0e\00\00\c3\0f\00\00\c3\00\00\0c\bb\01\00\0c\c3\02\00\0c\c3\03\00\0c\c3\04\00\0c\db")
  (data $.data (i32.const 9056) "\03\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\b8\10\00\00/\08\00\00!\05\00\00\a0\0f\00\00@\0f\00\00\0d\06\00\00\c8\07\00\00,\0e\00\00\cc\0d\00\00l\0d\00\00+\08\00\00\c2\07\00\00X\05\00\00x\05\00\00m\06\00\00\00\04\00\00\e8\04\00\00T\10\00\00\fa\0f\00\00\9a\0f\00\00:\0f\00\00\e0\0e\00\00\86\0e\00\00&\0e\00\00\c6\0d\00\00f\0d\00\00%\08\00\00\bc\07\00\00]\07\00\00\03\07\00\00g\06\00\00\f5\05\00\00\b2\10\00\00N\10\00\00\f4\0f\00\00\94\0f\00\004\0f\00\00\da\0e\00\00\80\0e\00\00 \0e\00\00\c0\0d\00\00`\0d\00\00\1f\08\00\00\b6\07\00\00W\07\00\00\fd\06\00\00a\06\00\00\ef\05\00\00\ac\10\00\00H\10\00\00\ee\0f\00\00\8e\0f\00\00.\0f\00\00\d4\0e\00\00z\0e\00\00\1a\0e\00\00\ba\0d\00\00Z\0d\00\00\19\08\00\00\b0\07\00\00Q\07\00\00\f7\06\00\00[\06\00\00\e9\05\00\00\a6\10\00\00B\10\00\00\e8\0f\00\00\88\0f\00\00(\0f\00\00\ce\0e\00\00t\0e\00\00\14\0e\00\00\b4\0d\00\00T\0d\00\00\13\08\00\00\aa\07\00\00K\07\00\00\f1\06\00\00U\06\00\00\e3\05\00\00\a0\10\00\00<\10\00\00\e2\0f\00\00\82\0f\00\00\22\0f\00\00\c8\0e\00\00n\0e\00\00\0e\0e\00\00\ae\0d\00\00N\0d\00\00\0d\08\00\00\a4\07\00\00E\07\00\00\eb\06\00\00O\06\00\00\dd\05\00\00\9a\10\00\006\10\00\00\dc\0f\00\00|\0f\00\00\1c\0f\00\00\c2\0e\00\00h\0e\00\00\08\0e\00\00\a8\0d\00\00H\0d\00\00\07\08\00\00\9e\07\00\00?\07\00\00\e5\06\00\00I\06\00\00\d7\05\00\00\94\10\00\000\10\00\00\d6\0f\00\00v\0f\00\00\16\0f\00\00\bc\0e\00\00b\0e\00\00\02\0e\00\00\a2\0d\00\00B\0d\00\00\01\08\00\00\98\07\00\009\07\00\00\df\06\00\00C\06\00\00\d1\05\00\00\8e\10\00\00*\10\00\00\d0\0f\00\00p\0f\00\00\10\0f\00\00\b6\0e\00\00\5c\0e\00\00\fc\0d\00\00\9c\0d\00\00<\0d\00\00\fb\07\00\00\92\07\00\003\07\00\00\d9\06\00\00=\06\00\00\cb\05\00\00\88\10\00\00$\10\00\00\ca\0f\00\00j\0f\00\00\0a\0f\00\00\b0\0e\00\00V\0e\00\00\f6\0d\00\00\96\0d\00\006\0d\00\00\f5\07\00\00\8c\07\00\00-\07\00\00\d3\06\00\007\06\00\00\c5\05\00\00\82\10\00\00\1e\10\00\00\c4\0f\00\00d\0f\00\00\04\0f\00\00\aa\0e\00\00P\0e\00\00\f0\0d\00\00\90\0d\00\000\0d\00\00\ea\07\00\00\86\07\00\00'\07\00\00\cd\06\00\001\06\00\00\bf\05\00\00|\10\00\00\18\10\00\00\be\0f\00\00^\0f\00\00\fe\0e\00\00\a4\0e\00\00J\0e\00\00\ea\0d\00\00\8a\0d\00\00*\0d\00\00\e4\07\00\00\80\07\00\00!\07\00\00\c7\06\00\00+\06\00\00\b9\05\00\00v\10\00\00\12\10\00\00\b8\0f\00\00X\0f\00\00\f8\0e\00\00\9e\0e\00\00D\0e\00\00\e4\0d\00\00\84\0d\00\00$\0d\00\00\de\07\00\00z\07\00\00\1b\07\00\00\c1\06\00\00%\06\00\00\b3\05\00\00p\10\00\00\0c\10\00\00\b2\0f\00\00R\0f\00\00\f2\0e\00\00\98\0e\00\00>\0e\00\00\de\0d\00\00~\0d\00\00\1e\0d\00\00\d8\07\00\00t\07\00\00\15\07\00\00\b7\06\00\00\1f\06\00\00\ad\05\00\00j\10\00\00\06\10\00\00\ac\0f\00\00L\0f\00\00\ec\0e\00\00\92\0e\00\008\0e\00\00\d8\0d\00\00x\0d\00\00\18\0d\00\00\d2\07\00\00n\07\00\00\0f\07\00\00\a0\06\00\00\19\06\00\00\a7\05\00\00d\10\00\00\00\10\00\00\a6\0f\00\00F\0f\00\00\e6\0e\00\00\8c\0e\00\002\0e\00\00\d2\0d\00\00r\0d\00\00\12\0d\00\00\cc\07\00\00h\07\00\00\09\07\00\00\9a\06\00\00\13\06\00\00\a1\05\00\00\01\00\00\00\01\00\00\00\05\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\03\00\00\00lG\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\ff\ff\ff\ff\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00x'\00\00\00\00\00\00\05\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\03\00\00\00\98G\00\00\00\04\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\0a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f0'\00\00\1f\00\00\00t(\00\00\03\00\00\00\00\00\00\00-\f4QX\cf\8c\b1\c0F\f6\b5\cb)1\03\c7\04[p0\b4]\fd x\7f\8b\9a\d8Y)PhH\89\ab\a7V\03l\ff\b7\cd\88?\d4w\b4+\a5\a3p\f1\ba\e4\a8\fcA\83\fd\d9o\e1\8az/-t\96\07\1f\0d\09^\03v,p\f7@\a5,\a7oWA\a8\aat\df\a0Xd\03J\c7\c4<S\ae\af_\18\04\15\b1\e3m(\86\ab\0c\a4\bfC\f0\e9P\819W\16R7"))
