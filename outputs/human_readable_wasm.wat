(module $game.wasm
  (type (;0;) (func (param i32 i32 i32)))
  (type (;1;) (func (param i32)))
  (type (;2;) (func (result i32)))
  (type (;3;) (func))
  (type (;4;) (func (param i32 i32) (result i32)))
  (import "env" "InitWindow" (func $InitWindow (type 0)))
  (import "env" "SetTargetFPS" (func $SetTargetFPS (type 1)))
  (import "env" "WindowShouldClose" (func $WindowShouldClose (type 2)))
  (import "env" "BeginDrawing" (func $BeginDrawing (type 3)))
  (import "env" "ClearBackground" (func $ClearBackground (type 1)))
  (import "env" "EndDrawing" (func $EndDrawing (type 3)))
  (import "env" "CloseWindow" (func $CloseWindow (type 3)))
  (func $__wasm_call_ctors (type 3))
  (func $__original_main (type 2) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 0
    i32.const 16
    local.set 1
    local.get 0
    local.get 1
    i32.sub
    local.set 2
    local.get 2
    global.set $__stack_pointer
    i32.const 0
    local.set 3
    local.get 2
    local.get 3
    i32.store offset=12
    i32.const 800
    local.set 4
    i32.const 600
    local.set 5
    i32.const 1024
    local.set 6
    local.get 4
    local.get 5
    local.get 6
    call $InitWindow
    i32.const 60
    local.set 7
    local.get 7
    call $SetTargetFPS
    block  ;; label = @1
      loop  ;; label = @2
        call $WindowShouldClose
        local.set 8
        i32.const -1
        local.set 9
        local.get 8
        local.get 9
        i32.xor
        local.set 10
        i32.const 1
        local.set 11
        local.get 10
        local.get 11
        i32.and
        local.set 12
        local.get 12
        i32.eqz
        br_if 1 (;@1;)
        call $BeginDrawing
        i32.const 230
        local.set 13
        local.get 2
        local.get 13
        i32.store8 offset=8
        i32.const 41
        local.set 14
        local.get 2
        local.get 14
        i32.store8 offset=9
        i32.const 55
        local.set 15
        local.get 2
        local.get 15
        i32.store8 offset=10
        i32.const 255
        local.set 16
        local.get 2
        local.get 16
        i32.store8 offset=11
        local.get 2
        i32.load offset=8 align=1
        local.set 17
        local.get 2
        local.get 17
        i32.store offset=4
        i32.const 4
        local.set 18
        local.get 2
        local.get 18
        i32.add
        local.set 19
        local.get 19
        call $ClearBackground
        call $EndDrawing
        br 0 (;@2;)
      end
    end
    call $CloseWindow
    local.get 2
    i32.load offset=12
    local.set 20
    i32.const 16
    local.set 21
    local.get 2
    local.get 21
    i32.add
    local.set 22
    local.get 22
    global.set $__stack_pointer
    local.get 20
    return)
  (func $main (type 4) (param i32 i32) (result i32)
    (local i32)
    call $__original_main
    local.set 2
    local.get 2
    return)
  (table (;0;) 1 1 funcref)
  (memory (;0;) 2)
  (global $__stack_pointer (mut i32) (i32.const 66592))
  (global (;1;) i32 (i32.const 1024))
  (global (;2;) i32 (i32.const 1048))
  (global (;3;) i32 (i32.const 1056))
  (global (;4;) i32 (i32.const 66592))
  (global (;5;) i32 (i32.const 1024))
  (global (;6;) i32 (i32.const 66592))
  (global (;7;) i32 (i32.const 131072))
  (global (;8;) i32 (i32.const 0))
  (global (;9;) i32 (i32.const 1))
  (export "memory" (memory 0))
  (export "__wasm_call_ctors" (func $__wasm_call_ctors))
  (export "__original_main" (func $__original_main))
  (export "main" (func $main))
  (export "__main_void" (func $__original_main))
  (export "__indirect_function_table" (table 0))
  (export "__dso_handle" (global 1))
  (export "__data_end" (global 2))
  (export "__stack_low" (global 3))
  (export "__stack_high" (global 4))
  (export "__global_base" (global 5))
  (export "__heap_base" (global 6))
  (export "__heap_end" (global 7))
  (export "__memory_base" (global 8))
  (export "__table_base" (global 9))
  (data $.rodata (i32.const 1024) "Hello, from WebAssembly\00")
  (@custom "name" "\00\0a\09game.wasm\01\90\01\0a\00\0aInitWindow\01\0cSetTargetFPS\02\11WindowShouldClose\03\0cBeginDrawing\04\0fClearBackground\05\0aEndDrawing\06\0bCloseWindow\07\11__wasm_call_ctors\08\0f__original_main\09\04main\07\12\01\00\0f__stack_pointer\09\0a\01\00\07.rodata")
  (@custom "producers" "\01\0cprocessed-by\01\0cUbuntu clang\1118.1.3 (1ubuntu1)")
  (@custom "target_features" "\02+\0fmutable-globals+\08sign-ext"))
