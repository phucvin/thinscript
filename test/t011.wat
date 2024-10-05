(module
  (type (;0;) (func (param i32) (result i32)))
  (type (;1;) (func (param i32 i32 i32)))
  (type (;2;) (func (param i32 i32 i32) (result i32)))
  (type (;3;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;4;) (func (param i32 i32) (result i32)))
  (type (;5;) (func (param i32 i32 i32 i32 i32)))
  (type (;6;) (func (result i32)))
  (type (;7;) (func))
  (type (;8;) (func (param i32 i64 i32) (result i64)))
  (import "a" "a" (func (;0;) (type 3)))
  (import "a" "b" (func (;1;) (type 0)))
  (import "a" "c" (func (;2;) (type 1)))
  (func (;3;) (type 5) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 256
    i32.sub
    local.tee 5
    global.set 0
    local.get 4
    i32.const 73728
    i32.and
    local.get 2
    local.get 3
    i32.le_s
    i32.or
    i32.eqz
    if  ;; label = @1
      local.get 5
      local.get 1
      local.get 2
      local.get 3
      i32.sub
      local.tee 3
      i32.const 256
      local.get 3
      i32.const 256
      i32.lt_u
      local.tee 1
      select
      call 6
      local.get 1
      i32.eqz
      if  ;; label = @2
        loop  ;; label = @3
          local.get 0
          local.get 5
          i32.const 256
          call 4
          local.get 3
          i32.const 256
          i32.sub
          local.tee 3
          i32.const 255
          i32.gt_u
          br_if 0 (;@3;)
        end
      end
      local.get 0
      local.get 5
      local.get 3
      call 4
    end
    local.get 5
    i32.const 256
    i32.add
    global.set 0)
  (func (;4;) (type 1) (param i32 i32 i32)
    (local i32 i32 i32 i32)
    local.get 0
    i32.load8_u
    i32.const 32
    i32.and
    i32.eqz
    if  ;; label = @1
      block  ;; label = @2
        local.get 0
        local.tee 4
        i32.load offset=16
        local.tee 0
        if (result i32)  ;; label = @3
          local.get 0
        else
          local.get 4
          call 12
          br_if 1 (;@2;)
          local.get 4
          i32.load offset=16
        end
        local.get 4
        i32.load offset=20
        local.tee 0
        i32.sub
        local.get 2
        i32.lt_u
        if  ;; label = @3
          local.get 4
          local.get 1
          local.get 2
          local.get 4
          i32.load offset=36
          call_indirect (type 2)
          drop
          br 1 (;@2;)
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.eqz
            local.get 4
            i32.load offset=80
            i32.const 0
            i32.lt_s
            i32.or
            br_if 0 (;@4;)
            local.get 2
            local.set 5
            loop  ;; label = @5
              local.get 1
              local.get 5
              i32.add
              local.tee 3
              i32.const 1
              i32.sub
              i32.load8_u
              i32.const 10
              i32.ne
              if  ;; label = @6
                local.get 5
                i32.const 1
                i32.sub
                local.tee 5
                br_if 1 (;@5;)
                br 2 (;@4;)
              end
            end
            local.get 4
            local.get 1
            local.get 5
            local.get 4
            i32.load offset=36
            call_indirect (type 2)
            local.get 5
            i32.lt_u
            br_if 2 (;@2;)
            local.get 2
            local.get 5
            i32.sub
            local.set 2
            local.get 4
            i32.load offset=20
            local.set 0
            br 1 (;@3;)
          end
          local.get 1
          local.set 3
        end
        block  ;; label = @3
          local.get 2
          i32.const 512
          i32.ge_u
          if  ;; label = @4
            local.get 0
            local.get 3
            local.get 2
            call 2
            br 1 (;@3;)
          end
          local.get 0
          local.get 2
          i32.add
          local.set 6
          block  ;; label = @4
            local.get 0
            local.get 3
            i32.xor
            i32.const 3
            i32.and
            i32.eqz
            if  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.const 3
                i32.and
                i32.eqz
                local.get 2
                i32.eqz
                i32.or
                br_if 0 (;@6;)
                loop  ;; label = @7
                  local.get 0
                  local.get 3
                  i32.load8_u
                  i32.store8
                  local.get 3
                  i32.const 1
                  i32.add
                  local.set 3
                  local.get 0
                  i32.const 1
                  i32.add
                  local.tee 0
                  i32.const 3
                  i32.and
                  i32.eqz
                  br_if 1 (;@6;)
                  local.get 0
                  local.get 6
                  i32.lt_u
                  br_if 0 (;@7;)
                end
              end
              local.get 6
              i32.const -4
              i32.and
              local.set 5
              block  ;; label = @6
                local.get 6
                i32.const 64
                i32.lt_u
                br_if 0 (;@6;)
                local.get 0
                local.get 5
                i32.const -64
                i32.add
                local.tee 1
                i32.gt_u
                br_if 0 (;@6;)
                loop  ;; label = @7
                  local.get 0
                  local.get 3
                  i32.load
                  i32.store
                  local.get 0
                  local.get 3
                  i32.load offset=4
                  i32.store offset=4
                  local.get 0
                  local.get 3
                  i32.load offset=8
                  i32.store offset=8
                  local.get 0
                  local.get 3
                  i32.load offset=12
                  i32.store offset=12
                  local.get 0
                  local.get 3
                  i32.load offset=16
                  i32.store offset=16
                  local.get 0
                  local.get 3
                  i32.load offset=20
                  i32.store offset=20
                  local.get 0
                  local.get 3
                  i32.load offset=24
                  i32.store offset=24
                  local.get 0
                  local.get 3
                  i32.load offset=28
                  i32.store offset=28
                  local.get 0
                  local.get 3
                  i32.load offset=32
                  i32.store offset=32
                  local.get 0
                  local.get 3
                  i32.load offset=36
                  i32.store offset=36
                  local.get 0
                  local.get 3
                  i32.load offset=40
                  i32.store offset=40
                  local.get 0
                  local.get 3
                  i32.load offset=44
                  i32.store offset=44
                  local.get 0
                  local.get 3
                  i32.load offset=48
                  i32.store offset=48
                  local.get 0
                  local.get 3
                  i32.load offset=52
                  i32.store offset=52
                  local.get 0
                  local.get 3
                  i32.load offset=56
                  i32.store offset=56
                  local.get 0
                  local.get 3
                  i32.load offset=60
                  i32.store offset=60
                  local.get 3
                  i32.const -64
                  i32.sub
                  local.set 3
                  local.get 0
                  i32.const -64
                  i32.sub
                  local.tee 0
                  local.get 1
                  i32.le_u
                  br_if 0 (;@7;)
                end
              end
              local.get 0
              local.get 5
              i32.ge_u
              br_if 1 (;@4;)
              loop  ;; label = @6
                local.get 0
                local.get 3
                i32.load
                i32.store
                local.get 3
                i32.const 4
                i32.add
                local.set 3
                local.get 0
                i32.const 4
                i32.add
                local.tee 0
                local.get 5
                i32.lt_u
                br_if 0 (;@6;)
              end
              br 1 (;@4;)
            end
            local.get 6
            i32.const 4
            i32.lt_u
            br_if 0 (;@4;)
            local.get 6
            i32.const 4
            i32.sub
            local.tee 1
            local.get 0
            i32.lt_u
            br_if 0 (;@4;)
            loop  ;; label = @5
              local.get 0
              local.get 3
              i32.load8_u
              i32.store8
              local.get 0
              local.get 3
              i32.load8_u offset=1
              i32.store8 offset=1
              local.get 0
              local.get 3
              i32.load8_u offset=2
              i32.store8 offset=2
              local.get 0
              local.get 3
              i32.load8_u offset=3
              i32.store8 offset=3
              local.get 3
              i32.const 4
              i32.add
              local.set 3
              local.get 0
              i32.const 4
              i32.add
              local.tee 0
              local.get 1
              i32.le_u
              br_if 0 (;@5;)
            end
          end
          local.get 0
          local.get 6
          i32.lt_u
          if  ;; label = @4
            loop  ;; label = @5
              local.get 0
              local.get 3
              i32.load8_u
              i32.store8
              local.get 3
              i32.const 1
              i32.add
              local.set 3
              local.get 0
              i32.const 1
              i32.add
              local.tee 0
              local.get 6
              i32.ne
              br_if 0 (;@5;)
            end
          end
        end
        local.get 4
        local.get 4
        i32.load offset=20
        local.get 2
        i32.add
        i32.store offset=20
      end
    end)
  (func (;5;) (type 0) (param i32) (result i32)
    (local i32 i32)
    i32.const 1712
    i32.load
    local.tee 1
    local.get 0
    i32.const 7
    i32.add
    i32.const -8
    i32.and
    local.tee 2
    i32.add
    local.set 0
    block  ;; label = @1
      local.get 2
      i32.const 0
      local.get 0
      local.get 1
      i32.le_u
      select
      i32.eqz
      if  ;; label = @2
        local.get 0
        memory.size
        i32.const 16
        i32.shl
        i32.le_u
        br_if 1 (;@1;)
        local.get 0
        call 1
        br_if 1 (;@1;)
      end
      i32.const 2760
      i32.const 48
      i32.store
      i32.const -1
      return
    end
    i32.const 1712
    local.get 0
    i32.store
    local.get 1)
  (func (;6;) (type 1) (param i32 i32 i32)
    (local i32 i32 i64)
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.store8
      local.get 0
      local.get 2
      i32.add
      local.tee 3
      i32.const 1
      i32.sub
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
      i32.const 3
      i32.sub
      local.get 1
      i32.store8
      local.get 3
      i32.const 2
      i32.sub
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
      i32.const 4
      i32.sub
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
      local.tee 0
      i32.store
      local.get 3
      local.get 2
      local.get 4
      i32.sub
      i32.const -4
      i32.and
      local.tee 2
      i32.add
      local.tee 1
      i32.const 4
      i32.sub
      local.get 0
      i32.store
      local.get 2
      i32.const 9
      i32.lt_u
      br_if 0 (;@1;)
      local.get 3
      local.get 0
      i32.store offset=8
      local.get 3
      local.get 0
      i32.store offset=4
      local.get 1
      i32.const 8
      i32.sub
      local.get 0
      i32.store
      local.get 1
      i32.const 12
      i32.sub
      local.get 0
      i32.store
      local.get 2
      i32.const 25
      i32.lt_u
      br_if 0 (;@1;)
      local.get 3
      local.get 0
      i32.store offset=24
      local.get 3
      local.get 0
      i32.store offset=20
      local.get 3
      local.get 0
      i32.store offset=16
      local.get 3
      local.get 0
      i32.store offset=12
      local.get 1
      i32.const 16
      i32.sub
      local.get 0
      i32.store
      local.get 1
      i32.const 20
      i32.sub
      local.get 0
      i32.store
      local.get 1
      i32.const 24
      i32.sub
      local.get 0
      i32.store
      local.get 1
      i32.const 28
      i32.sub
      local.get 0
      i32.store
      local.get 2
      local.get 3
      i32.const 4
      i32.and
      i32.const 24
      i32.or
      local.tee 1
      i32.sub
      local.tee 2
      i32.const 32
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      i64.extend_i32_u
      i64.const 4294967297
      i64.mul
      local.set 5
      local.get 1
      local.get 3
      i32.add
      local.set 1
      loop  ;; label = @2
        local.get 1
        local.get 5
        i64.store offset=24
        local.get 1
        local.get 5
        i64.store offset=16
        local.get 1
        local.get 5
        i64.store offset=8
        local.get 1
        local.get 5
        i64.store
        local.get 1
        i32.const 32
        i32.add
        local.set 1
        local.get 2
        i32.const 32
        i32.sub
        local.tee 2
        i32.const 31
        i32.gt_u
        br_if 0 (;@2;)
      end
    end)
  (func (;7;) (type 6) (result i32)
    (local i32)
    block  ;; label = @1
      i32.const 8
      call 8
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 4
      i32.sub
      i32.load8_u
      i32.const 3
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      i32.const 8
      call 6
    end
    local.get 0)
  (func (;8;) (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 10
    global.set 0
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
                        local.get 0
                        i32.const 244
                        i32.le_u
                        if  ;; label = @11
                          i32.const 2952
                          i32.load
                          local.tee 4
                          i32.const 16
                          local.get 0
                          i32.const 11
                          i32.add
                          i32.const 504
                          i32.and
                          local.get 0
                          i32.const 11
                          i32.lt_u
                          select
                          local.tee 6
                          i32.const 3
                          i32.shr_u
                          local.tee 0
                          i32.shr_u
                          local.tee 1
                          i32.const 3
                          i32.and
                          if  ;; label = @12
                            block  ;; label = @13
                              local.get 1
                              i32.const -1
                              i32.xor
                              i32.const 1
                              i32.and
                              local.get 0
                              i32.add
                              local.tee 2
                              i32.const 3
                              i32.shl
                              local.tee 1
                              i32.const 2992
                              i32.add
                              local.tee 0
                              local.get 1
                              i32.const 3000
                              i32.add
                              i32.load
                              local.tee 1
                              i32.load offset=8
                              local.tee 5
                              i32.eq
                              if  ;; label = @14
                                i32.const 2952
                                local.get 4
                                i32.const -2
                                local.get 2
                                i32.rotl
                                i32.and
                                i32.store
                                br 1 (;@13;)
                              end
                              local.get 5
                              local.get 0
                              i32.store offset=12
                              local.get 0
                              local.get 5
                              i32.store offset=8
                            end
                            local.get 1
                            i32.const 8
                            i32.add
                            local.set 0
                            local.get 1
                            local.get 2
                            i32.const 3
                            i32.shl
                            local.tee 2
                            i32.const 3
                            i32.or
                            i32.store offset=4
                            local.get 1
                            local.get 2
                            i32.add
                            local.tee 1
                            local.get 1
                            i32.load offset=4
                            i32.const 1
                            i32.or
                            i32.store offset=4
                            br 11 (;@1;)
                          end
                          local.get 6
                          i32.const 2960
                          i32.load
                          local.tee 8
                          i32.le_u
                          br_if 1 (;@10;)
                          local.get 1
                          if  ;; label = @12
                            block  ;; label = @13
                              i32.const 2
                              local.get 0
                              i32.shl
                              local.tee 2
                              i32.const 0
                              local.get 2
                              i32.sub
                              i32.or
                              local.get 1
                              local.get 0
                              i32.shl
                              i32.and
                              i32.ctz
                              local.tee 1
                              i32.const 3
                              i32.shl
                              local.tee 0
                              i32.const 2992
                              i32.add
                              local.tee 2
                              local.get 0
                              i32.const 3000
                              i32.add
                              i32.load
                              local.tee 0
                              i32.load offset=8
                              local.tee 5
                              i32.eq
                              if  ;; label = @14
                                i32.const 2952
                                local.get 4
                                i32.const -2
                                local.get 1
                                i32.rotl
                                i32.and
                                local.tee 4
                                i32.store
                                br 1 (;@13;)
                              end
                              local.get 5
                              local.get 2
                              i32.store offset=12
                              local.get 2
                              local.get 5
                              i32.store offset=8
                            end
                            local.get 0
                            local.get 6
                            i32.const 3
                            i32.or
                            i32.store offset=4
                            local.get 0
                            local.get 6
                            i32.add
                            local.tee 7
                            local.get 1
                            i32.const 3
                            i32.shl
                            local.tee 1
                            local.get 6
                            i32.sub
                            local.tee 5
                            i32.const 1
                            i32.or
                            i32.store offset=4
                            local.get 0
                            local.get 1
                            i32.add
                            local.get 5
                            i32.store
                            local.get 8
                            if  ;; label = @13
                              local.get 8
                              i32.const -8
                              i32.and
                              i32.const 2992
                              i32.add
                              local.set 1
                              i32.const 2972
                              i32.load
                              local.set 2
                              block (result i32)  ;; label = @14
                                local.get 4
                                i32.const 1
                                local.get 8
                                i32.const 3
                                i32.shr_u
                                i32.shl
                                local.tee 3
                                i32.and
                                i32.eqz
                                if  ;; label = @15
                                  i32.const 2952
                                  local.get 3
                                  local.get 4
                                  i32.or
                                  i32.store
                                  local.get 1
                                  br 1 (;@14;)
                                end
                                local.get 1
                                i32.load offset=8
                              end
                              local.set 3
                              local.get 1
                              local.get 2
                              i32.store offset=8
                              local.get 3
                              local.get 2
                              i32.store offset=12
                              local.get 2
                              local.get 1
                              i32.store offset=12
                              local.get 2
                              local.get 3
                              i32.store offset=8
                            end
                            local.get 0
                            i32.const 8
                            i32.add
                            local.set 0
                            i32.const 2972
                            local.get 7
                            i32.store
                            i32.const 2960
                            local.get 5
                            i32.store
                            br 11 (;@1;)
                          end
                          i32.const 2956
                          i32.load
                          local.tee 11
                          i32.eqz
                          br_if 1 (;@10;)
                          local.get 11
                          i32.ctz
                          i32.const 2
                          i32.shl
                          i32.const 3256
                          i32.add
                          i32.load
                          local.tee 2
                          i32.load offset=4
                          i32.const -8
                          i32.and
                          local.get 6
                          i32.sub
                          local.set 3
                          local.get 2
                          local.set 1
                          loop  ;; label = @12
                            block  ;; label = @13
                              local.get 1
                              i32.load offset=16
                              local.tee 0
                              i32.eqz
                              if  ;; label = @14
                                local.get 1
                                i32.load offset=20
                                local.tee 0
                                i32.eqz
                                br_if 1 (;@13;)
                              end
                              local.get 0
                              i32.load offset=4
                              i32.const -8
                              i32.and
                              local.get 6
                              i32.sub
                              local.tee 1
                              local.get 3
                              local.get 1
                              local.get 3
                              i32.lt_u
                              local.tee 1
                              select
                              local.set 3
                              local.get 0
                              local.get 2
                              local.get 1
                              select
                              local.set 2
                              local.get 0
                              local.set 1
                              br 1 (;@12;)
                            end
                          end
                          local.get 2
                          i32.load offset=24
                          local.set 9
                          local.get 2
                          local.get 2
                          i32.load offset=12
                          local.tee 0
                          i32.ne
                          if  ;; label = @12
                            local.get 2
                            i32.load offset=8
                            local.tee 1
                            local.get 0
                            i32.store offset=12
                            local.get 0
                            local.get 1
                            i32.store offset=8
                            br 10 (;@2;)
                          end
                          local.get 2
                          i32.load offset=20
                          local.tee 1
                          if (result i32)  ;; label = @12
                            local.get 2
                            i32.const 20
                            i32.add
                          else
                            local.get 2
                            i32.load offset=16
                            local.tee 1
                            i32.eqz
                            br_if 3 (;@9;)
                            local.get 2
                            i32.const 16
                            i32.add
                          end
                          local.set 5
                          loop  ;; label = @12
                            local.get 5
                            local.set 7
                            local.get 1
                            local.tee 0
                            i32.const 20
                            i32.add
                            local.set 5
                            local.get 0
                            i32.load offset=20
                            local.tee 1
                            br_if 0 (;@12;)
                            local.get 0
                            i32.const 16
                            i32.add
                            local.set 5
                            local.get 0
                            i32.load offset=16
                            local.tee 1
                            br_if 0 (;@12;)
                          end
                          local.get 7
                          i32.const 0
                          i32.store
                          br 9 (;@2;)
                        end
                        i32.const -1
                        local.set 6
                        local.get 0
                        i32.const -65
                        i32.gt_u
                        br_if 0 (;@10;)
                        local.get 0
                        i32.const 11
                        i32.add
                        local.tee 1
                        i32.const -8
                        i32.and
                        local.set 6
                        i32.const 2956
                        i32.load
                        local.tee 7
                        i32.eqz
                        br_if 0 (;@10;)
                        i32.const 31
                        local.set 8
                        i32.const 0
                        local.get 6
                        i32.sub
                        local.set 3
                        local.get 0
                        i32.const 16777204
                        i32.le_u
                        if  ;; label = @11
                          local.get 6
                          i32.const 38
                          local.get 1
                          i32.const 8
                          i32.shr_u
                          i32.clz
                          local.tee 0
                          i32.sub
                          i32.shr_u
                          i32.const 1
                          i32.and
                          local.get 0
                          i32.const 1
                          i32.shl
                          i32.sub
                          i32.const 62
                          i32.add
                          local.set 8
                        end
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 8
                              i32.const 2
                              i32.shl
                              i32.const 3256
                              i32.add
                              i32.load
                              local.tee 1
                              i32.eqz
                              if  ;; label = @14
                                i32.const 0
                                local.set 0
                                br 1 (;@13;)
                              end
                              i32.const 0
                              local.set 0
                              local.get 6
                              i32.const 25
                              local.get 8
                              i32.const 1
                              i32.shr_u
                              i32.sub
                              i32.const 0
                              local.get 8
                              i32.const 31
                              i32.ne
                              select
                              i32.shl
                              local.set 2
                              loop  ;; label = @14
                                block  ;; label = @15
                                  local.get 1
                                  i32.load offset=4
                                  i32.const -8
                                  i32.and
                                  local.get 6
                                  i32.sub
                                  local.tee 4
                                  local.get 3
                                  i32.ge_u
                                  br_if 0 (;@15;)
                                  local.get 1
                                  local.set 5
                                  local.get 4
                                  local.tee 3
                                  br_if 0 (;@15;)
                                  i32.const 0
                                  local.set 3
                                  local.get 1
                                  local.set 0
                                  br 3 (;@12;)
                                end
                                local.get 0
                                local.get 1
                                i32.load offset=20
                                local.tee 4
                                local.get 4
                                local.get 1
                                local.get 2
                                i32.const 29
                                i32.shr_u
                                i32.const 4
                                i32.and
                                i32.add
                                i32.load offset=16
                                local.tee 1
                                i32.eq
                                select
                                local.get 0
                                local.get 4
                                select
                                local.set 0
                                local.get 2
                                i32.const 1
                                i32.shl
                                local.set 2
                                local.get 1
                                br_if 0 (;@14;)
                              end
                            end
                            local.get 0
                            local.get 5
                            i32.or
                            i32.eqz
                            if  ;; label = @13
                              i32.const 0
                              local.set 5
                              i32.const 2
                              local.get 8
                              i32.shl
                              local.tee 0
                              i32.const 0
                              local.get 0
                              i32.sub
                              i32.or
                              local.get 7
                              i32.and
                              local.tee 0
                              i32.eqz
                              br_if 3 (;@10;)
                              local.get 0
                              i32.ctz
                              i32.const 2
                              i32.shl
                              i32.const 3256
                              i32.add
                              i32.load
                              local.set 0
                            end
                            local.get 0
                            i32.eqz
                            br_if 1 (;@11;)
                          end
                          loop  ;; label = @12
                            local.get 0
                            i32.load offset=4
                            i32.const -8
                            i32.and
                            local.get 6
                            i32.sub
                            local.tee 2
                            local.get 3
                            i32.lt_u
                            local.set 1
                            local.get 2
                            local.get 3
                            local.get 1
                            select
                            local.set 3
                            local.get 0
                            local.get 5
                            local.get 1
                            select
                            local.set 5
                            local.get 0
                            i32.load offset=16
                            local.tee 1
                            if (result i32)  ;; label = @13
                              local.get 1
                            else
                              local.get 0
                              i32.load offset=20
                            end
                            local.tee 0
                            br_if 0 (;@12;)
                          end
                        end
                        local.get 5
                        i32.eqz
                        br_if 0 (;@10;)
                        local.get 3
                        i32.const 2960
                        i32.load
                        local.get 6
                        i32.sub
                        i32.ge_u
                        br_if 0 (;@10;)
                        local.get 5
                        i32.load offset=24
                        local.set 8
                        local.get 5
                        local.get 5
                        i32.load offset=12
                        local.tee 0
                        i32.ne
                        if  ;; label = @11
                          local.get 5
                          i32.load offset=8
                          local.tee 1
                          local.get 0
                          i32.store offset=12
                          local.get 0
                          local.get 1
                          i32.store offset=8
                          br 8 (;@3;)
                        end
                        local.get 5
                        i32.load offset=20
                        local.tee 1
                        if (result i32)  ;; label = @11
                          local.get 5
                          i32.const 20
                          i32.add
                        else
                          local.get 5
                          i32.load offset=16
                          local.tee 1
                          i32.eqz
                          br_if 3 (;@8;)
                          local.get 5
                          i32.const 16
                          i32.add
                        end
                        local.set 2
                        loop  ;; label = @11
                          local.get 2
                          local.set 4
                          local.get 1
                          local.tee 0
                          i32.const 20
                          i32.add
                          local.set 2
                          local.get 0
                          i32.load offset=20
                          local.tee 1
                          br_if 0 (;@11;)
                          local.get 0
                          i32.const 16
                          i32.add
                          local.set 2
                          local.get 0
                          i32.load offset=16
                          local.tee 1
                          br_if 0 (;@11;)
                        end
                        local.get 4
                        i32.const 0
                        i32.store
                        br 7 (;@3;)
                      end
                      local.get 6
                      i32.const 2960
                      i32.load
                      local.tee 5
                      i32.le_u
                      if  ;; label = @10
                        i32.const 2972
                        i32.load
                        local.set 0
                        block  ;; label = @11
                          local.get 5
                          local.get 6
                          i32.sub
                          local.tee 1
                          i32.const 16
                          i32.ge_u
                          if  ;; label = @12
                            local.get 0
                            local.get 6
                            i32.add
                            local.tee 2
                            local.get 1
                            i32.const 1
                            i32.or
                            i32.store offset=4
                            local.get 0
                            local.get 5
                            i32.add
                            local.get 1
                            i32.store
                            local.get 0
                            local.get 6
                            i32.const 3
                            i32.or
                            i32.store offset=4
                            br 1 (;@11;)
                          end
                          local.get 0
                          local.get 5
                          i32.const 3
                          i32.or
                          i32.store offset=4
                          local.get 0
                          local.get 5
                          i32.add
                          local.tee 1
                          local.get 1
                          i32.load offset=4
                          i32.const 1
                          i32.or
                          i32.store offset=4
                          i32.const 0
                          local.set 2
                          i32.const 0
                          local.set 1
                        end
                        i32.const 2960
                        local.get 1
                        i32.store
                        i32.const 2972
                        local.get 2
                        i32.store
                        local.get 0
                        i32.const 8
                        i32.add
                        local.set 0
                        br 9 (;@1;)
                      end
                      local.get 6
                      i32.const 2964
                      i32.load
                      local.tee 2
                      i32.lt_u
                      if  ;; label = @10
                        i32.const 2964
                        local.get 2
                        local.get 6
                        i32.sub
                        local.tee 1
                        i32.store
                        i32.const 2976
                        i32.const 2976
                        i32.load
                        local.tee 0
                        local.get 6
                        i32.add
                        local.tee 2
                        i32.store
                        local.get 2
                        local.get 1
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        local.get 0
                        local.get 6
                        i32.const 3
                        i32.or
                        i32.store offset=4
                        local.get 0
                        i32.const 8
                        i32.add
                        local.set 0
                        br 9 (;@1;)
                      end
                      i32.const 0
                      local.set 0
                      local.get 6
                      i32.const 47
                      i32.add
                      local.tee 3
                      block (result i32)  ;; label = @10
                        i32.const 3424
                        i32.load
                        if  ;; label = @11
                          i32.const 3432
                          i32.load
                          br 1 (;@10;)
                        end
                        i32.const 3436
                        i64.const -1
                        i64.store align=4
                        i32.const 3428
                        i64.const 17592186048512
                        i64.store align=4
                        i32.const 3424
                        local.get 10
                        i32.const 12
                        i32.add
                        i32.const -16
                        i32.and
                        i32.const 1431655768
                        i32.xor
                        i32.store
                        i32.const 3444
                        i32.const 0
                        i32.store
                        i32.const 3396
                        i32.const 0
                        i32.store
                        i32.const 4096
                      end
                      local.tee 1
                      i32.add
                      local.tee 4
                      i32.const 0
                      local.get 1
                      i32.sub
                      local.tee 7
                      i32.and
                      local.tee 1
                      local.get 6
                      i32.le_u
                      br_if 8 (;@1;)
                      i32.const 3392
                      i32.load
                      local.tee 5
                      if  ;; label = @10
                        i32.const 3384
                        i32.load
                        local.tee 8
                        local.get 1
                        i32.add
                        local.tee 9
                        local.get 8
                        i32.le_u
                        local.get 5
                        local.get 9
                        i32.lt_u
                        i32.or
                        br_if 9 (;@1;)
                      end
                      block  ;; label = @10
                        i32.const 3396
                        i32.load8_u
                        i32.const 4
                        i32.and
                        i32.eqz
                        if  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  i32.const 2976
                                  i32.load
                                  local.tee 5
                                  if  ;; label = @16
                                    i32.const 3400
                                    local.set 0
                                    loop  ;; label = @17
                                      local.get 0
                                      i32.load
                                      local.tee 8
                                      local.get 5
                                      i32.le_u
                                      if  ;; label = @18
                                        local.get 5
                                        local.get 8
                                        local.get 0
                                        i32.load offset=4
                                        i32.add
                                        i32.lt_u
                                        br_if 3 (;@15;)
                                      end
                                      local.get 0
                                      i32.load offset=8
                                      local.tee 0
                                      br_if 0 (;@17;)
                                    end
                                  end
                                  i32.const 0
                                  call 5
                                  local.tee 2
                                  i32.const -1
                                  i32.eq
                                  br_if 3 (;@12;)
                                  local.get 1
                                  local.set 4
                                  i32.const 3428
                                  i32.load
                                  local.tee 0
                                  i32.const 1
                                  i32.sub
                                  local.tee 5
                                  local.get 2
                                  i32.and
                                  if  ;; label = @16
                                    local.get 1
                                    local.get 2
                                    i32.sub
                                    local.get 2
                                    local.get 5
                                    i32.add
                                    i32.const 0
                                    local.get 0
                                    i32.sub
                                    i32.and
                                    i32.add
                                    local.set 4
                                  end
                                  local.get 4
                                  local.get 6
                                  i32.le_u
                                  br_if 3 (;@12;)
                                  i32.const 3392
                                  i32.load
                                  local.tee 0
                                  if  ;; label = @16
                                    i32.const 3384
                                    i32.load
                                    local.tee 5
                                    local.get 4
                                    i32.add
                                    local.tee 7
                                    local.get 5
                                    i32.le_u
                                    local.get 0
                                    local.get 7
                                    i32.lt_u
                                    i32.or
                                    br_if 4 (;@12;)
                                  end
                                  local.get 4
                                  call 5
                                  local.tee 0
                                  local.get 2
                                  i32.ne
                                  br_if 1 (;@14;)
                                  br 5 (;@10;)
                                end
                                local.get 4
                                local.get 2
                                i32.sub
                                local.get 7
                                i32.and
                                local.tee 4
                                call 5
                                local.tee 2
                                local.get 0
                                i32.load
                                local.get 0
                                i32.load offset=4
                                i32.add
                                i32.eq
                                br_if 1 (;@13;)
                                local.get 2
                                local.set 0
                              end
                              local.get 0
                              i32.const -1
                              i32.eq
                              br_if 1 (;@12;)
                              local.get 6
                              i32.const 48
                              i32.add
                              local.get 4
                              i32.le_u
                              if  ;; label = @14
                                local.get 0
                                local.set 2
                                br 4 (;@10;)
                              end
                              i32.const 3432
                              i32.load
                              local.tee 2
                              local.get 3
                              local.get 4
                              i32.sub
                              i32.add
                              i32.const 0
                              local.get 2
                              i32.sub
                              i32.and
                              local.tee 2
                              call 5
                              i32.const -1
                              i32.eq
                              br_if 1 (;@12;)
                              local.get 2
                              local.get 4
                              i32.add
                              local.set 4
                              local.get 0
                              local.set 2
                              br 3 (;@10;)
                            end
                            local.get 2
                            i32.const -1
                            i32.ne
                            br_if 2 (;@10;)
                          end
                          i32.const 3396
                          i32.const 3396
                          i32.load
                          i32.const 4
                          i32.or
                          i32.store
                        end
                        local.get 1
                        call 5
                        local.tee 2
                        i32.const -1
                        i32.eq
                        i32.const 0
                        call 5
                        local.tee 0
                        i32.const -1
                        i32.eq
                        i32.or
                        local.get 0
                        local.get 2
                        i32.le_u
                        i32.or
                        br_if 5 (;@5;)
                        local.get 0
                        local.get 2
                        i32.sub
                        local.tee 4
                        local.get 6
                        i32.const 40
                        i32.add
                        i32.le_u
                        br_if 5 (;@5;)
                      end
                      i32.const 3384
                      i32.const 3384
                      i32.load
                      local.get 4
                      i32.add
                      local.tee 0
                      i32.store
                      i32.const 3388
                      i32.load
                      local.get 0
                      i32.lt_u
                      if  ;; label = @10
                        i32.const 3388
                        local.get 0
                        i32.store
                      end
                      block  ;; label = @10
                        i32.const 2976
                        i32.load
                        local.tee 3
                        if  ;; label = @11
                          i32.const 3400
                          local.set 0
                          loop  ;; label = @12
                            local.get 2
                            local.get 0
                            i32.load
                            local.tee 1
                            local.get 0
                            i32.load offset=4
                            local.tee 5
                            i32.add
                            i32.eq
                            br_if 2 (;@10;)
                            local.get 0
                            i32.load offset=8
                            local.tee 0
                            br_if 0 (;@12;)
                          end
                          br 4 (;@7;)
                        end
                        i32.const 2968
                        i32.load
                        local.tee 0
                        i32.const 0
                        local.get 0
                        local.get 2
                        i32.le_u
                        select
                        i32.eqz
                        if  ;; label = @11
                          i32.const 2968
                          local.get 2
                          i32.store
                        end
                        i32.const 0
                        local.set 0
                        i32.const 3404
                        local.get 4
                        i32.store
                        i32.const 3400
                        local.get 2
                        i32.store
                        i32.const 2984
                        i32.const -1
                        i32.store
                        i32.const 2988
                        i32.const 3424
                        i32.load
                        i32.store
                        i32.const 3412
                        i32.const 0
                        i32.store
                        loop  ;; label = @11
                          local.get 0
                          i32.const 3
                          i32.shl
                          local.tee 1
                          i32.const 3000
                          i32.add
                          local.get 1
                          i32.const 2992
                          i32.add
                          local.tee 5
                          i32.store
                          local.get 1
                          i32.const 3004
                          i32.add
                          local.get 5
                          i32.store
                          local.get 0
                          i32.const 1
                          i32.add
                          local.tee 0
                          i32.const 32
                          i32.ne
                          br_if 0 (;@11;)
                        end
                        i32.const 2964
                        local.get 4
                        i32.const 40
                        i32.sub
                        local.tee 0
                        i32.const -8
                        local.get 2
                        i32.sub
                        i32.const 7
                        i32.and
                        local.tee 1
                        i32.sub
                        local.tee 5
                        i32.store
                        i32.const 2976
                        local.get 1
                        local.get 2
                        i32.add
                        local.tee 1
                        i32.store
                        local.get 1
                        local.get 5
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        local.get 0
                        local.get 2
                        i32.add
                        i32.const 40
                        i32.store offset=4
                        i32.const 2980
                        i32.const 3440
                        i32.load
                        i32.store
                        br 4 (;@6;)
                      end
                      local.get 2
                      local.get 3
                      i32.le_u
                      local.get 1
                      local.get 3
                      i32.gt_u
                      i32.or
                      br_if 2 (;@7;)
                      local.get 0
                      i32.load offset=12
                      i32.const 8
                      i32.and
                      br_if 2 (;@7;)
                      local.get 0
                      local.get 4
                      local.get 5
                      i32.add
                      i32.store offset=4
                      i32.const 2976
                      local.get 3
                      i32.const -8
                      local.get 3
                      i32.sub
                      i32.const 7
                      i32.and
                      local.tee 0
                      i32.add
                      local.tee 1
                      i32.store
                      i32.const 2964
                      i32.const 2964
                      i32.load
                      local.get 4
                      i32.add
                      local.tee 2
                      local.get 0
                      i32.sub
                      local.tee 0
                      i32.store
                      local.get 1
                      local.get 0
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      local.get 2
                      local.get 3
                      i32.add
                      i32.const 40
                      i32.store offset=4
                      i32.const 2980
                      i32.const 3440
                      i32.load
                      i32.store
                      br 3 (;@6;)
                    end
                    i32.const 0
                    local.set 0
                    br 6 (;@2;)
                  end
                  i32.const 0
                  local.set 0
                  br 4 (;@3;)
                end
                i32.const 2968
                i32.load
                local.get 2
                i32.gt_u
                if  ;; label = @7
                  i32.const 2968
                  local.get 2
                  i32.store
                end
                local.get 2
                local.get 4
                i32.add
                local.set 5
                i32.const 3400
                local.set 0
                block  ;; label = @7
                  loop  ;; label = @8
                    local.get 5
                    local.get 0
                    i32.load
                    local.tee 1
                    i32.ne
                    if  ;; label = @9
                      local.get 0
                      i32.load offset=8
                      local.tee 0
                      br_if 1 (;@8;)
                      br 2 (;@7;)
                    end
                  end
                  local.get 0
                  i32.load8_u offset=12
                  i32.const 8
                  i32.and
                  i32.eqz
                  br_if 3 (;@4;)
                end
                i32.const 3400
                local.set 0
                loop  ;; label = @7
                  block  ;; label = @8
                    local.get 0
                    i32.load
                    local.tee 1
                    local.get 3
                    i32.le_u
                    if  ;; label = @9
                      local.get 3
                      local.get 1
                      local.get 0
                      i32.load offset=4
                      i32.add
                      local.tee 5
                      i32.lt_u
                      br_if 1 (;@8;)
                    end
                    local.get 0
                    i32.load offset=8
                    local.set 0
                    br 1 (;@7;)
                  end
                end
                i32.const 2964
                local.get 4
                i32.const 40
                i32.sub
                local.tee 0
                i32.const -8
                local.get 2
                i32.sub
                i32.const 7
                i32.and
                local.tee 1
                i32.sub
                local.tee 7
                i32.store
                i32.const 2976
                local.get 1
                local.get 2
                i32.add
                local.tee 1
                i32.store
                local.get 1
                local.get 7
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 0
                local.get 2
                i32.add
                i32.const 40
                i32.store offset=4
                i32.const 2980
                i32.const 3440
                i32.load
                i32.store
                local.get 3
                local.get 5
                i32.const 39
                local.get 5
                i32.sub
                i32.const 7
                i32.and
                i32.add
                i32.const 47
                i32.sub
                local.tee 0
                local.get 0
                local.get 3
                i32.const 16
                i32.add
                i32.lt_u
                select
                local.tee 1
                i32.const 27
                i32.store offset=4
                local.get 1
                i32.const 3408
                i64.load align=4
                i64.store offset=16 align=4
                local.get 1
                i32.const 3400
                i64.load align=4
                i64.store offset=8 align=4
                i32.const 3408
                local.get 1
                i32.const 8
                i32.add
                i32.store
                i32.const 3404
                local.get 4
                i32.store
                i32.const 3400
                local.get 2
                i32.store
                i32.const 3412
                i32.const 0
                i32.store
                local.get 1
                i32.const 24
                i32.add
                local.set 0
                loop  ;; label = @7
                  local.get 0
                  i32.const 7
                  i32.store offset=4
                  local.get 0
                  i32.const 8
                  i32.add
                  local.get 0
                  i32.const 4
                  i32.add
                  local.set 0
                  local.get 5
                  i32.lt_u
                  br_if 0 (;@7;)
                end
                local.get 1
                local.get 3
                i32.eq
                br_if 0 (;@6;)
                local.get 1
                local.get 1
                i32.load offset=4
                i32.const -2
                i32.and
                i32.store offset=4
                local.get 3
                local.get 1
                local.get 3
                i32.sub
                local.tee 2
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 1
                local.get 2
                i32.store
                block (result i32)  ;; label = @7
                  local.get 2
                  i32.const 255
                  i32.le_u
                  if  ;; label = @8
                    local.get 2
                    i32.const -8
                    i32.and
                    i32.const 2992
                    i32.add
                    local.set 0
                    block (result i32)  ;; label = @9
                      i32.const 2952
                      i32.load
                      local.tee 1
                      i32.const 1
                      local.get 2
                      i32.const 3
                      i32.shr_u
                      i32.shl
                      local.tee 2
                      i32.and
                      i32.eqz
                      if  ;; label = @10
                        i32.const 2952
                        local.get 1
                        local.get 2
                        i32.or
                        i32.store
                        local.get 0
                        br 1 (;@9;)
                      end
                      local.get 0
                      i32.load offset=8
                    end
                    local.set 1
                    local.get 0
                    local.get 3
                    i32.store offset=8
                    local.get 1
                    local.get 3
                    i32.store offset=12
                    i32.const 12
                    local.set 2
                    i32.const 8
                    br 1 (;@7;)
                  end
                  i32.const 31
                  local.set 0
                  local.get 2
                  i32.const 16777215
                  i32.le_u
                  if  ;; label = @8
                    local.get 2
                    i32.const 38
                    local.get 2
                    i32.const 8
                    i32.shr_u
                    i32.clz
                    local.tee 0
                    i32.sub
                    i32.shr_u
                    i32.const 1
                    i32.and
                    local.get 0
                    i32.const 1
                    i32.shl
                    i32.sub
                    i32.const 62
                    i32.add
                    local.set 0
                  end
                  local.get 3
                  local.get 0
                  i32.store offset=28
                  local.get 3
                  i64.const 0
                  i64.store offset=16 align=4
                  local.get 0
                  i32.const 2
                  i32.shl
                  i32.const 3256
                  i32.add
                  local.set 1
                  block  ;; label = @8
                    block  ;; label = @9
                      i32.const 2956
                      i32.load
                      local.tee 5
                      i32.const 1
                      local.get 0
                      i32.shl
                      local.tee 4
                      i32.and
                      i32.eqz
                      if  ;; label = @10
                        i32.const 2956
                        local.get 4
                        local.get 5
                        i32.or
                        i32.store
                        local.get 1
                        local.get 3
                        i32.store
                        br 1 (;@9;)
                      end
                      local.get 2
                      i32.const 25
                      local.get 0
                      i32.const 1
                      i32.shr_u
                      i32.sub
                      i32.const 0
                      local.get 0
                      i32.const 31
                      i32.ne
                      select
                      i32.shl
                      local.set 0
                      local.get 1
                      i32.load
                      local.set 5
                      loop  ;; label = @10
                        local.get 5
                        local.tee 1
                        i32.load offset=4
                        i32.const -8
                        i32.and
                        local.get 2
                        i32.eq
                        br_if 2 (;@8;)
                        local.get 0
                        i32.const 29
                        i32.shr_u
                        local.set 4
                        local.get 0
                        i32.const 1
                        i32.shl
                        local.set 0
                        local.get 1
                        local.get 4
                        i32.const 4
                        i32.and
                        i32.add
                        local.tee 4
                        i32.load offset=16
                        local.tee 5
                        br_if 0 (;@10;)
                      end
                      local.get 4
                      local.get 3
                      i32.store offset=16
                    end
                    local.get 3
                    local.get 1
                    i32.store offset=24
                    i32.const 8
                    local.set 2
                    local.get 3
                    local.tee 1
                    local.set 0
                    i32.const 12
                    br 1 (;@7;)
                  end
                  local.get 1
                  i32.load offset=8
                  local.tee 0
                  local.get 3
                  i32.store offset=12
                  local.get 1
                  local.get 3
                  i32.store offset=8
                  local.get 3
                  local.get 0
                  i32.store offset=8
                  i32.const 0
                  local.set 0
                  i32.const 24
                  local.set 2
                  i32.const 12
                end
                local.get 3
                i32.add
                local.get 1
                i32.store
                local.get 2
                local.get 3
                i32.add
                local.get 0
                i32.store
              end
              i32.const 2964
              i32.load
              local.tee 0
              local.get 6
              i32.le_u
              br_if 0 (;@5;)
              i32.const 2964
              local.get 0
              local.get 6
              i32.sub
              local.tee 1
              i32.store
              i32.const 2976
              i32.const 2976
              i32.load
              local.tee 0
              local.get 6
              i32.add
              local.tee 2
              i32.store
              local.get 2
              local.get 1
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 0
              local.get 6
              i32.const 3
              i32.or
              i32.store offset=4
              local.get 0
              i32.const 8
              i32.add
              local.set 0
              br 4 (;@1;)
            end
            i32.const 2760
            i32.const 48
            i32.store
            i32.const 0
            local.set 0
            br 3 (;@1;)
          end
          local.get 0
          local.get 2
          i32.store
          local.get 0
          local.get 0
          i32.load offset=4
          local.get 4
          i32.add
          i32.store offset=4
          local.get 2
          i32.const -8
          local.get 2
          i32.sub
          i32.const 7
          i32.and
          i32.add
          local.tee 8
          local.get 6
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 1
          i32.const -8
          local.get 1
          i32.sub
          i32.const 7
          i32.and
          i32.add
          local.tee 4
          local.get 6
          local.get 8
          i32.add
          local.tee 3
          i32.sub
          local.set 7
          block  ;; label = @4
            i32.const 2976
            i32.load
            local.get 4
            i32.eq
            if  ;; label = @5
              i32.const 2976
              local.get 3
              i32.store
              i32.const 2964
              i32.const 2964
              i32.load
              local.get 7
              i32.add
              local.tee 0
              i32.store
              local.get 3
              local.get 0
              i32.const 1
              i32.or
              i32.store offset=4
              br 1 (;@4;)
            end
            i32.const 2972
            i32.load
            local.get 4
            i32.eq
            if  ;; label = @5
              i32.const 2972
              local.get 3
              i32.store
              i32.const 2960
              i32.const 2960
              i32.load
              local.get 7
              i32.add
              local.tee 0
              i32.store
              local.get 3
              local.get 0
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 0
              local.get 3
              i32.add
              local.get 0
              i32.store
              br 1 (;@4;)
            end
            local.get 4
            i32.load offset=4
            local.tee 0
            i32.const 3
            i32.and
            i32.const 1
            i32.eq
            if  ;; label = @5
              local.get 0
              i32.const -8
              i32.and
              local.set 9
              local.get 4
              i32.load offset=12
              local.set 2
              block  ;; label = @6
                local.get 0
                i32.const 255
                i32.le_u
                if  ;; label = @7
                  local.get 4
                  i32.load offset=8
                  local.tee 1
                  local.get 2
                  i32.eq
                  if  ;; label = @8
                    i32.const 2952
                    i32.const 2952
                    i32.load
                    i32.const -2
                    local.get 0
                    i32.const 3
                    i32.shr_u
                    i32.rotl
                    i32.and
                    i32.store
                    br 2 (;@6;)
                  end
                  local.get 1
                  local.get 2
                  i32.store offset=12
                  local.get 2
                  local.get 1
                  i32.store offset=8
                  br 1 (;@6;)
                end
                local.get 4
                i32.load offset=24
                local.set 6
                block  ;; label = @7
                  local.get 2
                  local.get 4
                  i32.ne
                  if  ;; label = @8
                    local.get 4
                    i32.load offset=8
                    local.tee 0
                    local.get 2
                    i32.store offset=12
                    local.get 2
                    local.get 0
                    i32.store offset=8
                    br 1 (;@7;)
                  end
                  block  ;; label = @8
                    local.get 4
                    i32.load offset=20
                    local.tee 0
                    if (result i32)  ;; label = @9
                      local.get 4
                      i32.const 20
                      i32.add
                    else
                      local.get 4
                      i32.load offset=16
                      local.tee 0
                      i32.eqz
                      br_if 1 (;@8;)
                      local.get 4
                      i32.const 16
                      i32.add
                    end
                    local.set 1
                    loop  ;; label = @9
                      local.get 1
                      local.set 5
                      local.get 0
                      local.tee 2
                      i32.const 20
                      i32.add
                      local.set 1
                      local.get 0
                      i32.load offset=20
                      local.tee 0
                      br_if 0 (;@9;)
                      local.get 2
                      i32.const 16
                      i32.add
                      local.set 1
                      local.get 2
                      i32.load offset=16
                      local.tee 0
                      br_if 0 (;@9;)
                    end
                    local.get 5
                    i32.const 0
                    i32.store
                    br 1 (;@7;)
                  end
                  i32.const 0
                  local.set 2
                end
                local.get 6
                i32.eqz
                br_if 0 (;@6;)
                block  ;; label = @7
                  local.get 4
                  i32.load offset=28
                  local.tee 0
                  i32.const 2
                  i32.shl
                  i32.const 3256
                  i32.add
                  local.tee 1
                  i32.load
                  local.get 4
                  i32.eq
                  if  ;; label = @8
                    local.get 1
                    local.get 2
                    i32.store
                    local.get 2
                    br_if 1 (;@7;)
                    i32.const 2956
                    i32.const 2956
                    i32.load
                    i32.const -2
                    local.get 0
                    i32.rotl
                    i32.and
                    i32.store
                    br 2 (;@6;)
                  end
                  block  ;; label = @8
                    local.get 4
                    local.get 6
                    i32.load offset=16
                    i32.eq
                    if  ;; label = @9
                      local.get 6
                      local.get 2
                      i32.store offset=16
                      br 1 (;@8;)
                    end
                    local.get 6
                    local.get 2
                    i32.store offset=20
                  end
                  local.get 2
                  i32.eqz
                  br_if 1 (;@6;)
                end
                local.get 2
                local.get 6
                i32.store offset=24
                local.get 4
                i32.load offset=16
                local.tee 0
                if  ;; label = @7
                  local.get 2
                  local.get 0
                  i32.store offset=16
                  local.get 0
                  local.get 2
                  i32.store offset=24
                end
                local.get 4
                i32.load offset=20
                local.tee 0
                i32.eqz
                br_if 0 (;@6;)
                local.get 2
                local.get 0
                i32.store offset=20
                local.get 0
                local.get 2
                i32.store offset=24
              end
              local.get 7
              local.get 9
              i32.add
              local.set 7
              local.get 4
              local.get 9
              i32.add
              local.tee 4
              i32.load offset=4
              local.set 0
            end
            local.get 4
            local.get 0
            i32.const -2
            i32.and
            i32.store offset=4
            local.get 3
            local.get 7
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 3
            local.get 7
            i32.add
            local.get 7
            i32.store
            local.get 7
            i32.const 255
            i32.le_u
            if  ;; label = @5
              local.get 7
              i32.const -8
              i32.and
              i32.const 2992
              i32.add
              local.set 0
              block (result i32)  ;; label = @6
                i32.const 2952
                i32.load
                local.tee 1
                i32.const 1
                local.get 7
                i32.const 3
                i32.shr_u
                i32.shl
                local.tee 2
                i32.and
                i32.eqz
                if  ;; label = @7
                  i32.const 2952
                  local.get 1
                  local.get 2
                  i32.or
                  i32.store
                  local.get 0
                  br 1 (;@6;)
                end
                local.get 0
                i32.load offset=8
              end
              local.set 1
              local.get 0
              local.get 3
              i32.store offset=8
              local.get 1
              local.get 3
              i32.store offset=12
              local.get 3
              local.get 0
              i32.store offset=12
              local.get 3
              local.get 1
              i32.store offset=8
              br 1 (;@4;)
            end
            i32.const 31
            local.set 2
            local.get 7
            i32.const 16777215
            i32.le_u
            if  ;; label = @5
              local.get 7
              i32.const 38
              local.get 7
              i32.const 8
              i32.shr_u
              i32.clz
              local.tee 0
              i32.sub
              i32.shr_u
              i32.const 1
              i32.and
              local.get 0
              i32.const 1
              i32.shl
              i32.sub
              i32.const 62
              i32.add
              local.set 2
            end
            local.get 3
            local.get 2
            i32.store offset=28
            local.get 3
            i64.const 0
            i64.store offset=16 align=4
            local.get 2
            i32.const 2
            i32.shl
            i32.const 3256
            i32.add
            local.set 0
            block  ;; label = @5
              block  ;; label = @6
                i32.const 2956
                i32.load
                local.tee 1
                i32.const 1
                local.get 2
                i32.shl
                local.tee 5
                i32.and
                i32.eqz
                if  ;; label = @7
                  i32.const 2956
                  local.get 1
                  local.get 5
                  i32.or
                  i32.store
                  local.get 0
                  local.get 3
                  i32.store
                  br 1 (;@6;)
                end
                local.get 7
                i32.const 25
                local.get 2
                i32.const 1
                i32.shr_u
                i32.sub
                i32.const 0
                local.get 2
                i32.const 31
                i32.ne
                select
                i32.shl
                local.set 2
                local.get 0
                i32.load
                local.set 1
                loop  ;; label = @7
                  local.get 1
                  local.tee 0
                  i32.load offset=4
                  i32.const -8
                  i32.and
                  local.get 7
                  i32.eq
                  br_if 2 (;@5;)
                  local.get 2
                  i32.const 29
                  i32.shr_u
                  local.set 1
                  local.get 2
                  i32.const 1
                  i32.shl
                  local.set 2
                  local.get 0
                  local.get 1
                  i32.const 4
                  i32.and
                  i32.add
                  local.tee 5
                  i32.load offset=16
                  local.tee 1
                  br_if 0 (;@7;)
                end
                local.get 5
                local.get 3
                i32.store offset=16
              end
              local.get 3
              local.get 0
              i32.store offset=24
              local.get 3
              local.get 3
              i32.store offset=12
              local.get 3
              local.get 3
              i32.store offset=8
              br 1 (;@4;)
            end
            local.get 0
            i32.load offset=8
            local.tee 1
            local.get 3
            i32.store offset=12
            local.get 0
            local.get 3
            i32.store offset=8
            local.get 3
            i32.const 0
            i32.store offset=24
            local.get 3
            local.get 0
            i32.store offset=12
            local.get 3
            local.get 1
            i32.store offset=8
          end
          local.get 8
          i32.const 8
          i32.add
          local.set 0
          br 2 (;@1;)
        end
        block  ;; label = @3
          local.get 8
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 5
            i32.load offset=28
            local.tee 1
            i32.const 2
            i32.shl
            i32.const 3256
            i32.add
            local.tee 2
            i32.load
            local.get 5
            i32.eq
            if  ;; label = @5
              local.get 2
              local.get 0
              i32.store
              local.get 0
              br_if 1 (;@4;)
              i32.const 2956
              local.get 7
              i32.const -2
              local.get 1
              i32.rotl
              i32.and
              local.tee 7
              i32.store
              br 2 (;@3;)
            end
            block  ;; label = @5
              local.get 5
              local.get 8
              i32.load offset=16
              i32.eq
              if  ;; label = @6
                local.get 8
                local.get 0
                i32.store offset=16
                br 1 (;@5;)
              end
              local.get 8
              local.get 0
              i32.store offset=20
            end
            local.get 0
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 0
          local.get 8
          i32.store offset=24
          local.get 5
          i32.load offset=16
          local.tee 1
          if  ;; label = @4
            local.get 0
            local.get 1
            i32.store offset=16
            local.get 1
            local.get 0
            i32.store offset=24
          end
          local.get 5
          i32.load offset=20
          local.tee 1
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          local.get 1
          i32.store offset=20
          local.get 1
          local.get 0
          i32.store offset=24
        end
        block  ;; label = @3
          local.get 3
          i32.const 15
          i32.le_u
          if  ;; label = @4
            local.get 5
            local.get 3
            local.get 6
            i32.add
            local.tee 0
            i32.const 3
            i32.or
            i32.store offset=4
            local.get 0
            local.get 5
            i32.add
            local.tee 0
            local.get 0
            i32.load offset=4
            i32.const 1
            i32.or
            i32.store offset=4
            br 1 (;@3;)
          end
          local.get 5
          local.get 6
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 5
          local.get 6
          i32.add
          local.tee 4
          local.get 3
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 3
          local.get 4
          i32.add
          local.get 3
          i32.store
          local.get 3
          i32.const 255
          i32.le_u
          if  ;; label = @4
            local.get 3
            i32.const -8
            i32.and
            i32.const 2992
            i32.add
            local.set 0
            block (result i32)  ;; label = @5
              i32.const 2952
              i32.load
              local.tee 1
              i32.const 1
              local.get 3
              i32.const 3
              i32.shr_u
              i32.shl
              local.tee 2
              i32.and
              i32.eqz
              if  ;; label = @6
                i32.const 2952
                local.get 1
                local.get 2
                i32.or
                i32.store
                local.get 0
                br 1 (;@5;)
              end
              local.get 0
              i32.load offset=8
            end
            local.set 1
            local.get 0
            local.get 4
            i32.store offset=8
            local.get 1
            local.get 4
            i32.store offset=12
            local.get 4
            local.get 0
            i32.store offset=12
            local.get 4
            local.get 1
            i32.store offset=8
            br 1 (;@3;)
          end
          i32.const 31
          local.set 0
          local.get 3
          i32.const 16777215
          i32.le_u
          if  ;; label = @4
            local.get 3
            i32.const 38
            local.get 3
            i32.const 8
            i32.shr_u
            i32.clz
            local.tee 0
            i32.sub
            i32.shr_u
            i32.const 1
            i32.and
            local.get 0
            i32.const 1
            i32.shl
            i32.sub
            i32.const 62
            i32.add
            local.set 0
          end
          local.get 4
          local.get 0
          i32.store offset=28
          local.get 4
          i64.const 0
          i64.store offset=16 align=4
          local.get 0
          i32.const 2
          i32.shl
          i32.const 3256
          i32.add
          local.set 1
          block  ;; label = @4
            block  ;; label = @5
              local.get 7
              i32.const 1
              local.get 0
              i32.shl
              local.tee 2
              i32.and
              i32.eqz
              if  ;; label = @6
                i32.const 2956
                local.get 2
                local.get 7
                i32.or
                i32.store
                local.get 1
                local.get 4
                i32.store
                local.get 4
                local.get 1
                i32.store offset=24
                br 1 (;@5;)
              end
              local.get 3
              i32.const 25
              local.get 0
              i32.const 1
              i32.shr_u
              i32.sub
              i32.const 0
              local.get 0
              i32.const 31
              i32.ne
              select
              i32.shl
              local.set 0
              local.get 1
              i32.load
              local.set 1
              loop  ;; label = @6
                local.get 1
                local.tee 2
                i32.load offset=4
                i32.const -8
                i32.and
                local.get 3
                i32.eq
                br_if 2 (;@4;)
                local.get 0
                i32.const 29
                i32.shr_u
                local.set 7
                local.get 0
                i32.const 1
                i32.shl
                local.set 0
                local.get 2
                local.get 7
                i32.const 4
                i32.and
                i32.add
                local.tee 7
                i32.load offset=16
                local.tee 1
                br_if 0 (;@6;)
              end
              local.get 7
              local.get 4
              i32.store offset=16
              local.get 4
              local.get 2
              i32.store offset=24
            end
            local.get 4
            local.get 4
            i32.store offset=12
            local.get 4
            local.get 4
            i32.store offset=8
            br 1 (;@3;)
          end
          local.get 2
          i32.load offset=8
          local.tee 0
          local.get 4
          i32.store offset=12
          local.get 2
          local.get 4
          i32.store offset=8
          local.get 4
          i32.const 0
          i32.store offset=24
          local.get 4
          local.get 2
          i32.store offset=12
          local.get 4
          local.get 0
          i32.store offset=8
        end
        local.get 5
        i32.const 8
        i32.add
        local.set 0
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 9
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 2
          i32.load offset=28
          local.tee 1
          i32.const 2
          i32.shl
          i32.const 3256
          i32.add
          local.tee 5
          i32.load
          local.get 2
          i32.eq
          if  ;; label = @4
            local.get 5
            local.get 0
            i32.store
            local.get 0
            br_if 1 (;@3;)
            i32.const 2956
            local.get 11
            i32.const -2
            local.get 1
            i32.rotl
            i32.and
            i32.store
            br 2 (;@2;)
          end
          block  ;; label = @4
            local.get 2
            local.get 9
            i32.load offset=16
            i32.eq
            if  ;; label = @5
              local.get 9
              local.get 0
              i32.store offset=16
              br 1 (;@4;)
            end
            local.get 9
            local.get 0
            i32.store offset=20
          end
          local.get 0
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 0
        local.get 9
        i32.store offset=24
        local.get 2
        i32.load offset=16
        local.tee 1
        if  ;; label = @3
          local.get 0
          local.get 1
          i32.store offset=16
          local.get 1
          local.get 0
          i32.store offset=24
        end
        local.get 2
        i32.load offset=20
        local.tee 1
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        local.get 1
        i32.store offset=20
        local.get 1
        local.get 0
        i32.store offset=24
      end
      block  ;; label = @2
        local.get 3
        i32.const 15
        i32.le_u
        if  ;; label = @3
          local.get 2
          local.get 3
          local.get 6
          i32.add
          local.tee 0
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 0
          local.get 2
          i32.add
          local.tee 0
          local.get 0
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
          br 1 (;@2;)
        end
        local.get 2
        local.get 6
        i32.const 3
        i32.or
        i32.store offset=4
        local.get 2
        local.get 6
        i32.add
        local.tee 5
        local.get 3
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 3
        local.get 5
        i32.add
        local.get 3
        i32.store
        local.get 8
        if  ;; label = @3
          local.get 8
          i32.const -8
          i32.and
          i32.const 2992
          i32.add
          local.set 0
          i32.const 2972
          i32.load
          local.set 1
          block (result i32)  ;; label = @4
            i32.const 1
            local.get 8
            i32.const 3
            i32.shr_u
            i32.shl
            local.tee 7
            local.get 4
            i32.and
            i32.eqz
            if  ;; label = @5
              i32.const 2952
              local.get 4
              local.get 7
              i32.or
              i32.store
              local.get 0
              br 1 (;@4;)
            end
            local.get 0
            i32.load offset=8
          end
          local.set 4
          local.get 0
          local.get 1
          i32.store offset=8
          local.get 4
          local.get 1
          i32.store offset=12
          local.get 1
          local.get 0
          i32.store offset=12
          local.get 1
          local.get 4
          i32.store offset=8
        end
        i32.const 2972
        local.get 5
        i32.store
        i32.const 2960
        local.get 3
        i32.store
      end
      local.get 2
      i32.const 8
      i32.add
      local.set 0
    end
    local.get 10
    i32.const 16
    i32.add
    global.set 0
    local.get 0)
  (func (;9;) (type 7)
    i32.const 2916
    i32.const 2796
    i32.store
    i32.const 2844
    i32.const 42
    i32.store)
  (func (;10;) (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32 i32)
    local.get 0
    i32.load
    local.tee 3
    i32.load8_s
    i32.const 48
    i32.sub
    local.tee 1
    i32.const 9
    i32.gt_u
    if  ;; label = @1
      i32.const 0
      return
    end
    loop  ;; label = @1
      i32.const -1
      local.set 4
      local.get 2
      i32.const 214748364
      i32.le_u
      if  ;; label = @2
        i32.const -1
        local.get 1
        local.get 2
        i32.const 10
        i32.mul
        local.tee 5
        i32.add
        local.get 1
        local.get 5
        i32.const 2147483647
        i32.xor
        i32.gt_u
        select
        local.set 4
      end
      local.get 0
      local.get 3
      i32.const 1
      i32.add
      local.tee 5
      i32.store
      local.get 3
      i32.load8_s offset=1
      local.get 4
      local.set 2
      local.get 5
      local.set 3
      i32.const 48
      i32.sub
      local.tee 1
      i32.const 10
      i32.lt_u
      br_if 0 (;@1;)
    end
    local.get 2)
  (func (;11;) (type 3) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64)
    i32.const 1069
    local.set 5
    global.get 0
    i32.const -64
    i32.add
    local.tee 6
    global.set 0
    local.get 6
    i32.const 1069
    i32.store offset=60
    local.get 6
    i32.const 39
    i32.add
    local.set 20
    local.get 6
    i32.const 40
    i32.add
    local.set 15
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            loop  ;; label = @5
              i32.const 0
              local.set 4
              loop  ;; label = @6
                local.get 5
                local.set 11
                local.get 4
                local.get 12
                i32.const 2147483647
                i32.xor
                i32.gt_s
                br_if 2 (;@4;)
                local.get 4
                local.get 12
                i32.add
                local.set 12
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 5
                        local.tee 4
                        i32.load8_u
                        local.tee 7
                        if  ;; label = @11
                          loop  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 7
                                i32.const 255
                                i32.and
                                local.tee 5
                                i32.eqz
                                if  ;; label = @15
                                  local.get 4
                                  local.set 5
                                  br 1 (;@14;)
                                end
                                local.get 5
                                i32.const 37
                                i32.ne
                                br_if 1 (;@13;)
                                local.get 4
                                local.set 7
                                loop  ;; label = @15
                                  local.get 7
                                  i32.load8_u offset=1
                                  i32.const 37
                                  i32.ne
                                  if  ;; label = @16
                                    local.get 7
                                    local.set 5
                                    br 2 (;@14;)
                                  end
                                  local.get 4
                                  i32.const 1
                                  i32.add
                                  local.set 4
                                  local.get 7
                                  i32.load8_u offset=2
                                  local.get 7
                                  i32.const 2
                                  i32.add
                                  local.tee 5
                                  local.set 7
                                  i32.const 37
                                  i32.eq
                                  br_if 0 (;@15;)
                                end
                              end
                              local.get 4
                              local.get 11
                              i32.sub
                              local.tee 4
                              local.get 12
                              i32.const 2147483647
                              i32.xor
                              local.tee 21
                              i32.gt_s
                              br_if 9 (;@4;)
                              local.get 0
                              if  ;; label = @14
                                local.get 0
                                local.get 11
                                local.get 4
                                call 4
                              end
                              local.get 4
                              br_if 7 (;@6;)
                              local.get 6
                              local.get 5
                              i32.store offset=60
                              local.get 5
                              i32.const 1
                              i32.add
                              local.set 4
                              i32.const -1
                              local.set 14
                              block  ;; label = @14
                                local.get 5
                                i32.load8_s offset=1
                                i32.const 48
                                i32.sub
                                local.tee 7
                                i32.const 9
                                i32.gt_u
                                br_if 0 (;@14;)
                                local.get 5
                                i32.load8_u offset=2
                                i32.const 36
                                i32.ne
                                br_if 0 (;@14;)
                                local.get 5
                                i32.const 3
                                i32.add
                                local.set 4
                                i32.const 1
                                local.set 16
                                local.get 7
                                local.set 14
                              end
                              local.get 6
                              local.get 4
                              i32.store offset=60
                              i32.const 0
                              local.set 10
                              block  ;; label = @14
                                local.get 4
                                i32.load8_s
                                local.tee 7
                                i32.const 32
                                i32.sub
                                local.tee 5
                                i32.const 31
                                i32.gt_u
                                if  ;; label = @15
                                  local.get 4
                                  local.set 9
                                  br 1 (;@14;)
                                end
                                local.get 4
                                local.set 9
                                i32.const 1
                                local.get 5
                                i32.shl
                                local.tee 5
                                i32.const 75913
                                i32.and
                                i32.eqz
                                br_if 0 (;@14;)
                                loop  ;; label = @15
                                  local.get 6
                                  local.get 4
                                  i32.const 1
                                  i32.add
                                  local.tee 9
                                  i32.store offset=60
                                  local.get 5
                                  local.get 10
                                  i32.or
                                  local.set 10
                                  local.get 4
                                  i32.load8_s offset=1
                                  local.tee 7
                                  i32.const 32
                                  i32.sub
                                  local.tee 5
                                  i32.const 32
                                  i32.ge_u
                                  br_if 1 (;@14;)
                                  local.get 9
                                  local.set 4
                                  i32.const 1
                                  local.get 5
                                  i32.shl
                                  local.tee 5
                                  i32.const 75913
                                  i32.and
                                  br_if 0 (;@15;)
                                end
                              end
                              block  ;; label = @14
                                local.get 7
                                i32.const 42
                                i32.eq
                                if  ;; label = @15
                                  block (result i32)  ;; label = @16
                                    block  ;; label = @17
                                      local.get 9
                                      i32.load8_s offset=1
                                      i32.const 48
                                      i32.sub
                                      local.tee 4
                                      i32.const 9
                                      i32.gt_u
                                      br_if 0 (;@17;)
                                      local.get 9
                                      i32.load8_u offset=2
                                      i32.const 36
                                      i32.ne
                                      br_if 0 (;@17;)
                                      block (result i32)  ;; label = @18
                                        local.get 0
                                        i32.eqz
                                        if  ;; label = @19
                                          local.get 3
                                          local.get 4
                                          i32.const 2
                                          i32.shl
                                          i32.add
                                          i32.const 10
                                          i32.store
                                          i32.const 0
                                          br 1 (;@18;)
                                        end
                                        local.get 2
                                        local.get 4
                                        i32.const 3
                                        i32.shl
                                        i32.add
                                        i32.load
                                      end
                                      local.set 13
                                      local.get 9
                                      i32.const 3
                                      i32.add
                                      local.set 5
                                      i32.const 1
                                      br 1 (;@16;)
                                    end
                                    local.get 16
                                    br_if 6 (;@10;)
                                    local.get 9
                                    i32.const 1
                                    i32.add
                                    local.set 5
                                    local.get 0
                                    i32.eqz
                                    if  ;; label = @17
                                      local.get 6
                                      local.get 5
                                      i32.store offset=60
                                      i32.const 0
                                      local.set 16
                                      i32.const 0
                                      local.set 13
                                      br 3 (;@14;)
                                    end
                                    local.get 1
                                    local.get 1
                                    i32.load
                                    local.tee 4
                                    i32.const 4
                                    i32.add
                                    i32.store
                                    local.get 4
                                    i32.load
                                    local.set 13
                                    i32.const 0
                                  end
                                  local.set 16
                                  local.get 6
                                  local.get 5
                                  i32.store offset=60
                                  local.get 13
                                  i32.const 0
                                  i32.ge_s
                                  br_if 1 (;@14;)
                                  i32.const 0
                                  local.get 13
                                  i32.sub
                                  local.set 13
                                  local.get 10
                                  i32.const 8192
                                  i32.or
                                  local.set 10
                                  br 1 (;@14;)
                                end
                                local.get 6
                                i32.const 60
                                i32.add
                                call 10
                                local.tee 13
                                i32.const 0
                                i32.lt_s
                                br_if 10 (;@4;)
                                local.get 6
                                i32.load offset=60
                                local.set 5
                              end
                              i32.const 0
                              local.set 4
                              i32.const -1
                              local.set 8
                              block (result i32)  ;; label = @14
                                i32.const 0
                                local.get 5
                                i32.load8_u
                                i32.const 46
                                i32.ne
                                br_if 0 (;@14;)
                                drop
                                local.get 5
                                i32.load8_u offset=1
                                i32.const 42
                                i32.eq
                                if  ;; label = @15
                                  block (result i32)  ;; label = @16
                                    block  ;; label = @17
                                      local.get 5
                                      i32.load8_s offset=2
                                      i32.const 48
                                      i32.sub
                                      local.tee 7
                                      i32.const 9
                                      i32.gt_u
                                      br_if 0 (;@17;)
                                      local.get 5
                                      i32.load8_u offset=3
                                      i32.const 36
                                      i32.ne
                                      br_if 0 (;@17;)
                                      local.get 5
                                      i32.const 4
                                      i32.add
                                      local.set 5
                                      block (result i32)  ;; label = @18
                                        local.get 0
                                        i32.eqz
                                        if  ;; label = @19
                                          local.get 3
                                          local.get 7
                                          i32.const 2
                                          i32.shl
                                          i32.add
                                          i32.const 10
                                          i32.store
                                          i32.const 0
                                          br 1 (;@18;)
                                        end
                                        local.get 2
                                        local.get 7
                                        i32.const 3
                                        i32.shl
                                        i32.add
                                        i32.load
                                      end
                                      br 1 (;@16;)
                                    end
                                    local.get 16
                                    br_if 6 (;@10;)
                                    local.get 5
                                    i32.const 2
                                    i32.add
                                    local.set 5
                                    i32.const 0
                                    local.get 0
                                    i32.eqz
                                    br_if 0 (;@16;)
                                    drop
                                    local.get 1
                                    local.get 1
                                    i32.load
                                    local.tee 7
                                    i32.const 4
                                    i32.add
                                    i32.store
                                    local.get 7
                                    i32.load
                                  end
                                  local.set 8
                                  local.get 6
                                  local.get 5
                                  i32.store offset=60
                                  local.get 8
                                  i32.const 0
                                  i32.ge_s
                                  br 1 (;@14;)
                                end
                                local.get 6
                                local.get 5
                                i32.const 1
                                i32.add
                                i32.store offset=60
                                local.get 6
                                i32.const 60
                                i32.add
                                call 10
                                local.set 8
                                local.get 6
                                i32.load offset=60
                                local.set 5
                                i32.const 1
                              end
                              local.set 17
                              loop  ;; label = @14
                                local.get 4
                                local.set 19
                                i32.const 28
                                local.set 9
                                local.get 5
                                local.tee 22
                                i32.load8_s
                                local.tee 7
                                i32.const 123
                                i32.sub
                                i32.const -58
                                i32.lt_u
                                br_if 11 (;@3;)
                                local.get 5
                                i32.const 1
                                i32.add
                                local.set 5
                                local.get 7
                                local.get 4
                                i32.const 58
                                i32.mul
                                i32.add
                                i32.load8_u offset=1023
                                local.tee 4
                                i32.const 1
                                i32.sub
                                i32.const 8
                                i32.lt_u
                                br_if 0 (;@14;)
                              end
                              local.get 6
                              local.get 5
                              i32.store offset=60
                              block  ;; label = @14
                                local.get 4
                                i32.const 27
                                i32.ne
                                if  ;; label = @15
                                  local.get 4
                                  i32.eqz
                                  br_if 12 (;@3;)
                                  local.get 14
                                  i32.const 0
                                  i32.ge_s
                                  if  ;; label = @16
                                    local.get 0
                                    i32.eqz
                                    if  ;; label = @17
                                      local.get 3
                                      local.get 14
                                      i32.const 2
                                      i32.shl
                                      i32.add
                                      local.get 4
                                      i32.store
                                      br 12 (;@5;)
                                    end
                                    local.get 6
                                    local.get 2
                                    local.get 14
                                    i32.const 3
                                    i32.shl
                                    i32.add
                                    i64.load
                                    i64.store offset=48
                                    br 2 (;@14;)
                                  end
                                  local.get 0
                                  i32.eqz
                                  br_if 8 (;@7;)
                                  local.get 6
                                  i32.const 48
                                  i32.add
                                  local.get 4
                                  local.get 1
                                  call 15
                                  br 1 (;@14;)
                                end
                                local.get 14
                                i32.const 0
                                i32.ge_s
                                br_if 11 (;@3;)
                                i32.const 0
                                local.set 4
                                local.get 0
                                i32.eqz
                                br_if 8 (;@6;)
                              end
                              local.get 0
                              i32.load8_u
                              i32.const 32
                              i32.and
                              br_if 11 (;@2;)
                              local.get 10
                              i32.const -65537
                              i32.and
                              local.tee 7
                              local.get 10
                              local.get 10
                              i32.const 8192
                              i32.and
                              select
                              local.set 10
                              i32.const 0
                              local.set 14
                              i32.const 1052
                              local.set 18
                              local.get 15
                              local.set 9
                              block  ;; label = @14
                                block  ;; label = @15
                                  block (result i32)  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                block (result i32)  ;; label = @23
                                                  block  ;; label = @24
                                                    block  ;; label = @25
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          block  ;; label = @28
                                                            block  ;; label = @29
                                                              block  ;; label = @30
                                                                local.get 22
                                                                i32.load8_s
                                                                local.tee 4
                                                                i32.const -45
                                                                i32.and
                                                                local.get 4
                                                                local.get 4
                                                                i32.const 15
                                                                i32.and
                                                                i32.const 3
                                                                i32.eq
                                                                select
                                                                local.get 4
                                                                local.get 19
                                                                select
                                                                local.tee 4
                                                                i32.const 88
                                                                i32.sub
                                                                br_table 4 (;@26;) 22 (;@8;) 22 (;@8;) 22 (;@8;) 22 (;@8;) 22 (;@8;) 22 (;@8;) 22 (;@8;) 22 (;@8;) 16 (;@14;) 22 (;@8;) 9 (;@21;) 6 (;@24;) 16 (;@14;) 16 (;@14;) 16 (;@14;) 22 (;@8;) 6 (;@24;) 22 (;@8;) 22 (;@8;) 22 (;@8;) 22 (;@8;) 2 (;@28;) 5 (;@25;) 3 (;@27;) 22 (;@8;) 22 (;@8;) 10 (;@20;) 22 (;@8;) 1 (;@29;) 22 (;@8;) 22 (;@8;) 4 (;@26;) 0 (;@30;)
                                                              end
                                                              block  ;; label = @30
                                                                local.get 4
                                                                i32.const 65
                                                                i32.sub
                                                                br_table 16 (;@14;) 22 (;@8;) 11 (;@19;) 22 (;@8;) 16 (;@14;) 16 (;@14;) 16 (;@14;) 0 (;@30;)
                                                              end
                                                              local.get 4
                                                              i32.const 83
                                                              i32.eq
                                                              br_if 11 (;@18;)
                                                              br 21 (;@8;)
                                                            end
                                                            local.get 6
                                                            i64.load offset=48
                                                            local.set 24
                                                            i32.const 1052
                                                            br 5 (;@23;)
                                                          end
                                                          i32.const 0
                                                          local.set 4
                                                          block  ;; label = @28
                                                            block  ;; label = @29
                                                              block  ;; label = @30
                                                                block  ;; label = @31
                                                                  block  ;; label = @32
                                                                    block  ;; label = @33
                                                                      block  ;; label = @34
                                                                        local.get 19
                                                                        i32.const 255
                                                                        i32.and
                                                                        br_table 0 (;@34;) 1 (;@33;) 2 (;@32;) 3 (;@31;) 4 (;@30;) 28 (;@6;) 5 (;@29;) 6 (;@28;) 28 (;@6;)
                                                                      end
                                                                      local.get 6
                                                                      i32.load offset=48
                                                                      local.get 12
                                                                      i32.store
                                                                      br 27 (;@6;)
                                                                    end
                                                                    local.get 6
                                                                    i32.load offset=48
                                                                    local.get 12
                                                                    i32.store
                                                                    br 26 (;@6;)
                                                                  end
                                                                  local.get 6
                                                                  i32.load offset=48
                                                                  local.get 12
                                                                  i64.extend_i32_s
                                                                  i64.store
                                                                  br 25 (;@6;)
                                                                end
                                                                local.get 6
                                                                i32.load offset=48
                                                                local.get 12
                                                                i32.store16
                                                                br 24 (;@6;)
                                                              end
                                                              local.get 6
                                                              i32.load offset=48
                                                              local.get 12
                                                              i32.store8
                                                              br 23 (;@6;)
                                                            end
                                                            local.get 6
                                                            i32.load offset=48
                                                            local.get 12
                                                            i32.store
                                                            br 22 (;@6;)
                                                          end
                                                          local.get 6
                                                          i32.load offset=48
                                                          local.get 12
                                                          i64.extend_i32_s
                                                          i64.store
                                                          br 21 (;@6;)
                                                        end
                                                        i32.const 8
                                                        local.get 8
                                                        local.get 8
                                                        i32.const 8
                                                        i32.le_u
                                                        select
                                                        local.set 8
                                                        local.get 10
                                                        i32.const 8
                                                        i32.or
                                                        local.set 10
                                                        i32.const 120
                                                        local.set 4
                                                      end
                                                      local.get 15
                                                      local.set 5
                                                      local.get 6
                                                      i64.load offset=48
                                                      local.tee 24
                                                      local.tee 23
                                                      i64.eqz
                                                      i32.eqz
                                                      if  ;; label = @26
                                                        local.get 4
                                                        i32.const 32
                                                        i32.and
                                                        local.set 11
                                                        loop  ;; label = @27
                                                          local.get 5
                                                          i32.const 1
                                                          i32.sub
                                                          local.tee 5
                                                          local.get 23
                                                          i32.wrap_i64
                                                          i32.const 15
                                                          i32.and
                                                          i32.const 1552
                                                          i32.add
                                                          i32.load8_u
                                                          local.get 11
                                                          i32.or
                                                          i32.store8
                                                          local.get 23
                                                          i64.const 15
                                                          i64.gt_u
                                                          local.get 23
                                                          i64.const 4
                                                          i64.shr_u
                                                          local.set 23
                                                          br_if 0 (;@27;)
                                                        end
                                                      end
                                                      local.get 5
                                                      local.set 11
                                                      local.get 10
                                                      i32.const 8
                                                      i32.and
                                                      i32.eqz
                                                      local.get 24
                                                      i64.eqz
                                                      i32.or
                                                      br_if 3 (;@22;)
                                                      local.get 4
                                                      i32.const 4
                                                      i32.shr_u
                                                      i32.const 1052
                                                      i32.add
                                                      local.set 18
                                                      i32.const 2
                                                      local.set 14
                                                      br 3 (;@22;)
                                                    end
                                                    local.get 15
                                                    local.set 4
                                                    local.get 6
                                                    i64.load offset=48
                                                    local.tee 24
                                                    local.tee 23
                                                    i64.eqz
                                                    i32.eqz
                                                    if  ;; label = @25
                                                      loop  ;; label = @26
                                                        local.get 4
                                                        i32.const 1
                                                        i32.sub
                                                        local.tee 4
                                                        local.get 23
                                                        i32.wrap_i64
                                                        i32.const 7
                                                        i32.and
                                                        i32.const 48
                                                        i32.or
                                                        i32.store8
                                                        local.get 23
                                                        i64.const 7
                                                        i64.gt_u
                                                        local.get 23
                                                        i64.const 3
                                                        i64.shr_u
                                                        local.set 23
                                                        br_if 0 (;@26;)
                                                      end
                                                    end
                                                    local.get 4
                                                    local.set 11
                                                    local.get 10
                                                    i32.const 8
                                                    i32.and
                                                    i32.eqz
                                                    br_if 2 (;@22;)
                                                    local.get 8
                                                    local.get 15
                                                    local.get 4
                                                    i32.sub
                                                    local.tee 4
                                                    i32.const 1
                                                    i32.add
                                                    local.get 4
                                                    local.get 8
                                                    i32.lt_s
                                                    select
                                                    local.set 8
                                                    br 2 (;@22;)
                                                  end
                                                  local.get 6
                                                  i64.load offset=48
                                                  local.tee 24
                                                  i64.const 0
                                                  i64.lt_s
                                                  if  ;; label = @24
                                                    local.get 6
                                                    i64.const 0
                                                    local.get 24
                                                    i64.sub
                                                    local.tee 24
                                                    i64.store offset=48
                                                    i32.const 1
                                                    local.set 14
                                                    i32.const 1052
                                                    br 1 (;@23;)
                                                  end
                                                  local.get 10
                                                  i32.const 2048
                                                  i32.and
                                                  if  ;; label = @24
                                                    i32.const 1
                                                    local.set 14
                                                    i32.const 1053
                                                    br 1 (;@23;)
                                                  end
                                                  i32.const 1054
                                                  i32.const 1052
                                                  local.get 10
                                                  i32.const 1
                                                  i32.and
                                                  local.tee 14
                                                  select
                                                end
                                                local.set 18
                                                local.get 15
                                                local.set 7
                                                block  ;; label = @23
                                                  local.get 24
                                                  local.tee 25
                                                  i64.const 4294967296
                                                  i64.lt_u
                                                  if  ;; label = @24
                                                    local.get 24
                                                    local.set 23
                                                    br 1 (;@23;)
                                                  end
                                                  loop  ;; label = @24
                                                    local.get 7
                                                    i32.const 1
                                                    i32.sub
                                                    local.tee 7
                                                    local.get 25
                                                    local.get 25
                                                    i64.const 10
                                                    i64.div_u
                                                    local.tee 23
                                                    i64.const 10
                                                    i64.mul
                                                    i64.sub
                                                    i32.wrap_i64
                                                    i32.const 48
                                                    i32.or
                                                    i32.store8
                                                    local.get 25
                                                    i64.const 42949672959
                                                    i64.gt_u
                                                    local.get 23
                                                    local.set 25
                                                    br_if 0 (;@24;)
                                                  end
                                                end
                                                local.get 23
                                                i64.eqz
                                                i32.eqz
                                                if  ;; label = @23
                                                  local.get 23
                                                  i32.wrap_i64
                                                  local.set 5
                                                  loop  ;; label = @24
                                                    local.get 7
                                                    i32.const 1
                                                    i32.sub
                                                    local.tee 7
                                                    local.get 5
                                                    local.get 5
                                                    i32.const 10
                                                    i32.div_u
                                                    local.tee 4
                                                    i32.const 10
                                                    i32.mul
                                                    i32.sub
                                                    i32.const 48
                                                    i32.or
                                                    i32.store8
                                                    local.get 5
                                                    i32.const 9
                                                    i32.gt_u
                                                    local.get 4
                                                    local.set 5
                                                    br_if 0 (;@24;)
                                                  end
                                                end
                                                local.get 7
                                                local.set 11
                                              end
                                              local.get 17
                                              local.get 8
                                              i32.const 0
                                              i32.lt_s
                                              i32.and
                                              br_if 17 (;@4;)
                                              local.get 10
                                              i32.const -65537
                                              i32.and
                                              local.get 10
                                              local.get 17
                                              select
                                              local.set 10
                                              local.get 24
                                              i64.const 0
                                              i64.ne
                                              local.get 8
                                              i32.or
                                              i32.eqz
                                              if  ;; label = @22
                                                local.get 15
                                                local.set 11
                                                i32.const 0
                                                local.set 8
                                                br 14 (;@8;)
                                              end
                                              local.get 8
                                              local.get 24
                                              i64.eqz
                                              local.get 15
                                              local.get 11
                                              i32.sub
                                              i32.add
                                              local.tee 4
                                              local.get 4
                                              local.get 8
                                              i32.lt_s
                                              select
                                              local.set 8
                                              br 13 (;@8;)
                                            end
                                            local.get 6
                                            i32.load8_u offset=48
                                            local.set 4
                                            br 11 (;@9;)
                                          end
                                          block (result i32)  ;; label = @20
                                            i32.const 2147483647
                                            local.get 8
                                            local.get 8
                                            i32.const 2147483647
                                            i32.ge_u
                                            select
                                            local.tee 10
                                            local.tee 5
                                            i32.const 0
                                            i32.ne
                                            local.set 9
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  local.get 6
                                                  i32.load offset=48
                                                  local.tee 4
                                                  i32.const 1062
                                                  local.get 4
                                                  select
                                                  local.tee 11
                                                  local.tee 4
                                                  i32.const 3
                                                  i32.and
                                                  i32.eqz
                                                  local.get 5
                                                  i32.eqz
                                                  i32.or
                                                  br_if 0 (;@23;)
                                                  loop  ;; label = @24
                                                    local.get 4
                                                    i32.load8_u
                                                    i32.eqz
                                                    br_if 2 (;@22;)
                                                    local.get 5
                                                    i32.const 1
                                                    i32.sub
                                                    local.tee 5
                                                    i32.const 0
                                                    i32.ne
                                                    local.set 9
                                                    local.get 4
                                                    i32.const 1
                                                    i32.add
                                                    local.tee 4
                                                    i32.const 3
                                                    i32.and
                                                    i32.eqz
                                                    br_if 1 (;@23;)
                                                    local.get 5
                                                    br_if 0 (;@24;)
                                                  end
                                                end
                                                local.get 9
                                                i32.eqz
                                                br_if 1 (;@21;)
                                                local.get 4
                                                i32.load8_u
                                                i32.eqz
                                                local.get 5
                                                i32.const 4
                                                i32.lt_u
                                                i32.or
                                                i32.eqz
                                                if  ;; label = @23
                                                  loop  ;; label = @24
                                                    i32.const 16843008
                                                    local.get 4
                                                    i32.load
                                                    local.tee 9
                                                    i32.sub
                                                    local.get 9
                                                    i32.or
                                                    i32.const -2139062144
                                                    i32.and
                                                    i32.const -2139062144
                                                    i32.ne
                                                    br_if 2 (;@22;)
                                                    local.get 4
                                                    i32.const 4
                                                    i32.add
                                                    local.set 4
                                                    local.get 5
                                                    i32.const 4
                                                    i32.sub
                                                    local.tee 5
                                                    i32.const 3
                                                    i32.gt_u
                                                    br_if 0 (;@24;)
                                                  end
                                                end
                                                local.get 5
                                                i32.eqz
                                                br_if 1 (;@21;)
                                              end
                                              loop  ;; label = @22
                                                local.get 4
                                                local.get 4
                                                i32.load8_u
                                                i32.eqz
                                                br_if 2 (;@20;)
                                                drop
                                                local.get 4
                                                i32.const 1
                                                i32.add
                                                local.set 4
                                                local.get 5
                                                i32.const 1
                                                i32.sub
                                                local.tee 5
                                                br_if 0 (;@22;)
                                              end
                                            end
                                            i32.const 0
                                          end
                                          local.tee 4
                                          local.get 11
                                          i32.sub
                                          local.get 10
                                          local.get 4
                                          select
                                          local.tee 4
                                          local.get 11
                                          i32.add
                                          local.set 9
                                          local.get 8
                                          i32.const 0
                                          i32.ge_s
                                          if  ;; label = @20
                                            local.get 7
                                            local.set 10
                                            local.get 4
                                            local.set 8
                                            br 12 (;@8;)
                                          end
                                          local.get 7
                                          local.set 10
                                          local.get 4
                                          local.set 8
                                          local.get 9
                                          i32.load8_u
                                          br_if 15 (;@4;)
                                          br 11 (;@8;)
                                        end
                                        local.get 6
                                        i64.load offset=48
                                        local.tee 23
                                        i64.eqz
                                        i32.eqz
                                        br_if 1 (;@17;)
                                        i32.const 0
                                        local.set 4
                                        br 9 (;@9;)
                                      end
                                      local.get 8
                                      if  ;; label = @18
                                        local.get 6
                                        i32.load offset=48
                                        br 2 (;@16;)
                                      end
                                      i32.const 0
                                      local.set 4
                                      local.get 0
                                      i32.const 32
                                      local.get 13
                                      i32.const 0
                                      local.get 10
                                      call 3
                                      br 2 (;@15;)
                                    end
                                    local.get 6
                                    i32.const 0
                                    i32.store offset=12
                                    local.get 6
                                    local.get 23
                                    i64.store32 offset=8
                                    local.get 6
                                    local.get 6
                                    i32.const 8
                                    i32.add
                                    local.tee 4
                                    i32.store offset=48
                                    i32.const -1
                                    local.set 8
                                    local.get 4
                                  end
                                  local.set 7
                                  i32.const 0
                                  local.set 4
                                  loop  ;; label = @16
                                    block  ;; label = @17
                                      local.get 7
                                      i32.load
                                      local.tee 11
                                      i32.eqz
                                      br_if 0 (;@17;)
                                      local.get 6
                                      i32.const 4
                                      i32.add
                                      local.get 11
                                      call 13
                                      local.tee 11
                                      i32.const 0
                                      i32.lt_s
                                      br_if 15 (;@2;)
                                      local.get 11
                                      local.get 8
                                      local.get 4
                                      i32.sub
                                      i32.gt_u
                                      br_if 0 (;@17;)
                                      local.get 7
                                      i32.const 4
                                      i32.add
                                      local.set 7
                                      local.get 4
                                      local.get 11
                                      i32.add
                                      local.tee 4
                                      local.get 8
                                      i32.lt_u
                                      br_if 1 (;@16;)
                                    end
                                  end
                                  i32.const 61
                                  local.set 9
                                  local.get 4
                                  i32.const 0
                                  i32.lt_s
                                  br_if 12 (;@3;)
                                  local.get 0
                                  i32.const 32
                                  local.get 13
                                  local.get 4
                                  local.get 10
                                  call 3
                                  local.get 4
                                  i32.eqz
                                  if  ;; label = @16
                                    i32.const 0
                                    local.set 4
                                    br 1 (;@15;)
                                  end
                                  i32.const 0
                                  local.set 9
                                  local.get 6
                                  i32.load offset=48
                                  local.set 7
                                  loop  ;; label = @16
                                    local.get 7
                                    i32.load
                                    local.tee 11
                                    i32.eqz
                                    br_if 1 (;@15;)
                                    local.get 6
                                    i32.const 4
                                    i32.add
                                    local.tee 8
                                    local.get 11
                                    call 13
                                    local.tee 11
                                    local.get 9
                                    i32.add
                                    local.tee 9
                                    local.get 4
                                    i32.gt_u
                                    br_if 1 (;@15;)
                                    local.get 0
                                    local.get 8
                                    local.get 11
                                    call 4
                                    local.get 7
                                    i32.const 4
                                    i32.add
                                    local.set 7
                                    local.get 4
                                    local.get 9
                                    i32.gt_u
                                    br_if 0 (;@16;)
                                  end
                                end
                                local.get 0
                                i32.const 32
                                local.get 13
                                local.get 4
                                local.get 10
                                i32.const 8192
                                i32.xor
                                call 3
                                local.get 13
                                local.get 4
                                local.get 4
                                local.get 13
                                i32.lt_s
                                select
                                local.set 4
                                br 8 (;@6;)
                              end
                              local.get 17
                              local.get 8
                              i32.const 0
                              i32.lt_s
                              i32.and
                              br_if 9 (;@4;)
                              i32.const 61
                              local.set 9
                              local.get 6
                              f64.load offset=48
                              unreachable
                            end
                            local.get 4
                            i32.load8_u offset=1
                            local.set 7
                            local.get 4
                            i32.const 1
                            i32.add
                            local.set 4
                            br 0 (;@12;)
                          end
                          unreachable
                        end
                        local.get 0
                        br_if 9 (;@1;)
                        local.get 16
                        i32.eqz
                        br_if 3 (;@7;)
                        i32.const 1
                        local.set 4
                        loop  ;; label = @11
                          local.get 3
                          local.get 4
                          i32.const 2
                          i32.shl
                          i32.add
                          i32.load
                          local.tee 0
                          if  ;; label = @12
                            local.get 2
                            local.get 4
                            i32.const 3
                            i32.shl
                            i32.add
                            local.get 0
                            local.get 1
                            call 15
                            i32.const 1
                            local.set 12
                            local.get 4
                            i32.const 1
                            i32.add
                            local.tee 4
                            i32.const 10
                            i32.ne
                            br_if 1 (;@11;)
                            br 11 (;@1;)
                          end
                        end
                        local.get 4
                        i32.const 10
                        i32.ge_u
                        if  ;; label = @11
                          i32.const 1
                          local.set 12
                          br 10 (;@1;)
                        end
                        loop  ;; label = @11
                          local.get 3
                          local.get 4
                          i32.const 2
                          i32.shl
                          i32.add
                          i32.load
                          br_if 1 (;@10;)
                          i32.const 1
                          local.set 12
                          local.get 4
                          i32.const 1
                          i32.add
                          local.tee 4
                          i32.const 10
                          i32.ne
                          br_if 0 (;@11;)
                        end
                        br 9 (;@1;)
                      end
                      i32.const 28
                      local.set 9
                      br 6 (;@3;)
                    end
                    local.get 6
                    local.get 4
                    i32.store8 offset=39
                    i32.const 1
                    local.set 8
                    local.get 20
                    local.set 11
                    local.get 7
                    local.set 10
                  end
                  local.get 8
                  local.get 9
                  local.get 11
                  i32.sub
                  local.tee 7
                  local.get 7
                  local.get 8
                  i32.lt_s
                  select
                  local.tee 8
                  local.get 14
                  i32.const 2147483647
                  i32.xor
                  i32.gt_s
                  br_if 3 (;@4;)
                  i32.const 61
                  local.set 9
                  local.get 13
                  local.get 8
                  local.get 14
                  i32.add
                  local.tee 5
                  local.get 5
                  local.get 13
                  i32.lt_s
                  select
                  local.tee 4
                  local.get 21
                  i32.gt_s
                  br_if 4 (;@3;)
                  local.get 0
                  i32.const 32
                  local.get 4
                  local.get 5
                  local.get 10
                  call 3
                  local.get 0
                  local.get 18
                  local.get 14
                  call 4
                  local.get 0
                  i32.const 48
                  local.get 4
                  local.get 5
                  local.get 10
                  i32.const 65536
                  i32.xor
                  call 3
                  local.get 0
                  i32.const 48
                  local.get 8
                  local.get 7
                  i32.const 0
                  call 3
                  local.get 0
                  local.get 11
                  local.get 7
                  call 4
                  local.get 0
                  i32.const 32
                  local.get 4
                  local.get 5
                  local.get 10
                  i32.const 8192
                  i32.xor
                  call 3
                  local.get 6
                  i32.load offset=60
                  local.set 5
                  br 1 (;@6;)
                end
              end
            end
            i32.const 0
            local.set 12
            br 3 (;@1;)
          end
          i32.const 61
          local.set 9
        end
        i32.const 2760
        local.get 9
        i32.store
      end
      i32.const -1
      local.set 12
    end
    local.get 6
    i32.const -64
    i32.sub
    global.set 0
    local.get 12)
  (func (;12;) (type 0) (param i32) (result i32)
    (local i32)
    local.get 0
    local.get 0
    i32.load offset=72
    local.tee 1
    i32.const 1
    i32.sub
    local.get 1
    i32.or
    i32.store offset=72
    local.get 0
    i32.load
    local.tee 1
    i32.const 8
    i32.and
    if  ;; label = @1
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
    i32.load offset=44
    local.tee 1
    i32.store offset=28
    local.get 0
    local.get 1
    i32.store offset=20
    local.get 0
    local.get 1
    local.get 0
    i32.load offset=48
    i32.add
    i32.store offset=16
    i32.const 0)
  (func (;13;) (type 4) (param i32 i32) (result i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 0
      return
    end
    block (result i32)  ;; label = @1
      block  ;; label = @2
        local.get 0
        if (result i32)  ;; label = @3
          local.get 1
          i32.const 127
          i32.le_u
          br_if 1 (;@2;)
          block  ;; label = @4
            i32.const 2916
            i32.load
            i32.load
            i32.eqz
            if  ;; label = @5
              local.get 1
              i32.const -128
              i32.and
              i32.const 57216
              i32.eq
              br_if 3 (;@2;)
              br 1 (;@4;)
            end
            local.get 1
            i32.const 2047
            i32.le_u
            if  ;; label = @5
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
              br 4 (;@1;)
            end
            local.get 1
            i32.const -8192
            i32.and
            i32.const 57344
            i32.ne
            local.get 1
            i32.const 55296
            i32.ge_u
            i32.and
            i32.eqz
            if  ;; label = @5
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
              br 4 (;@1;)
            end
            local.get 1
            i32.const 65536
            i32.sub
            i32.const 1048575
            i32.le_u
            if  ;; label = @5
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
              br 4 (;@1;)
            end
          end
          i32.const 2760
          i32.const 25
          i32.store
          i32.const -1
        else
          i32.const 1
        end
        br 1 (;@1;)
      end
      local.get 0
      local.get 1
      i32.store8
      i32.const 1
    end)
  (func (;14;) (type 0) (param i32) (result i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 0
      return
    end
    i32.const 2760
    local.get 0
    i32.store
    i32.const -1)
  (func (;15;) (type 1) (param i32 i32 i32)
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
                          local.get 1
                          i32.const 9
                          i32.sub
                          br_table 0 (;@11;) 8 (;@3;) 9 (;@2;) 10 (;@1;) 8 (;@3;) 9 (;@2;) 1 (;@10;) 2 (;@9;) 3 (;@8;) 4 (;@7;) 10 (;@1;) 9 (;@2;) 10 (;@1;) 10 (;@1;) 8 (;@3;) 9 (;@2;) 5 (;@6;) 6 (;@5;) 7 (;@4;)
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
              f64.load
              f64.store
              return
            end
            unreachable
          end
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
    i64.store)
  (func (;16;) (type 8) (param i32 i64 i32) (result i64)
    i64.const 0)
  (func (;17;) (type 0) (param i32) (result i32)
    i32.const 0)
  (func (;18;) (type 2) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 0
    i32.load offset=28
    local.tee 4
    i32.store offset=16
    local.get 0
    i32.load offset=20
    local.set 5
    local.get 3
    local.get 2
    i32.store offset=28
    local.get 3
    local.get 1
    i32.store offset=24
    local.get 3
    local.get 5
    local.get 4
    i32.sub
    local.tee 1
    i32.store offset=20
    local.get 1
    local.get 2
    i32.add
    local.set 5
    local.get 3
    i32.const 16
    i32.add
    local.set 1
    i32.const 2
    local.set 7
    block (result i32)  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.load offset=60
            local.get 1
            i32.const 2
            local.get 3
            i32.const 12
            i32.add
            call 0
            call 14
            if  ;; label = @5
              local.get 1
              local.set 4
              br 1 (;@4;)
            end
            loop  ;; label = @5
              local.get 5
              local.get 3
              i32.load offset=12
              local.tee 6
              i32.eq
              br_if 2 (;@3;)
              local.get 6
              i32.const 0
              i32.lt_s
              if  ;; label = @6
                local.get 1
                local.set 4
                br 4 (;@2;)
              end
              local.get 1
              local.get 6
              local.get 1
              i32.load offset=4
              local.tee 8
              i32.gt_u
              local.tee 9
              i32.const 3
              i32.shl
              i32.add
              local.tee 4
              local.get 6
              local.get 8
              i32.const 0
              local.get 9
              select
              i32.sub
              local.tee 8
              local.get 4
              i32.load
              i32.add
              i32.store
              local.get 1
              i32.const 12
              i32.const 4
              local.get 9
              select
              i32.add
              local.tee 1
              local.get 1
              i32.load
              local.get 8
              i32.sub
              i32.store
              local.get 5
              local.get 6
              i32.sub
              local.set 5
              local.get 0
              i32.load offset=60
              local.get 4
              local.tee 1
              local.get 7
              local.get 9
              i32.sub
              local.tee 7
              local.get 3
              i32.const 12
              i32.add
              call 0
              call 14
              i32.eqz
              br_if 0 (;@5;)
            end
          end
          local.get 5
          i32.const -1
          i32.ne
          br_if 1 (;@2;)
        end
        local.get 0
        local.get 0
        i32.load offset=44
        local.tee 1
        i32.store offset=28
        local.get 0
        local.get 1
        i32.store offset=20
        local.get 0
        local.get 1
        local.get 0
        i32.load offset=48
        i32.add
        i32.store offset=16
        local.get 2
        br 1 (;@1;)
      end
      local.get 0
      i32.const 0
      i32.store offset=28
      local.get 0
      i64.const 0
      i64.store offset=16
      local.get 0
      local.get 0
      i32.load
      i32.const 32
      i32.or
      i32.store
      i32.const 0
      local.get 7
      i32.const 2
      i32.eq
      br_if 0 (;@1;)
      drop
      local.get 2
      local.get 4
      i32.load offset=4
      i32.sub
    end
    local.get 3
    i32.const 32
    i32.add
    global.set 0)
  (func (;19;) (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    call 7
    local.tee 0
    i32.const 1
    i32.store
    call 7
    local.tee 2
    i32.const 2
    i32.store
    local.get 0
    local.get 2
    i32.store offset=4
    call 7
    local.tee 1
    i32.const 3
    i32.store
    local.get 2
    local.get 1
    i32.store offset=4
    loop  ;; label = @1
      local.get 0
      i32.load
      local.get 9
      i32.add
      local.set 9
      local.get 0
      i32.load offset=4
      local.tee 0
      br_if 0 (;@1;)
    end
    global.get 0
    i32.const 16
    i32.sub
    local.tee 8
    global.set 0
    i32.const 0
    local.set 1
    i32.const 0
    local.set 2
    block  ;; label = @1
      i32.const 1024
      i32.load
      local.tee 6
      if  ;; label = @2
        loop  ;; label = @3
          block (result i32)  ;; label = @4
            local.get 1
            i32.const 1
            i32.shl
            i32.const 1028
            i32.add
            i32.load16_u
            local.tee 0
            i32.const 64512
            i32.and
            i32.const 55296
            i32.ne
            local.get 1
            i32.const 1
            i32.add
            local.tee 7
            local.get 6
            i32.ge_u
            i32.or
            i32.eqz
            if  ;; label = @5
              local.get 7
              i32.const 1
              i32.shl
              i32.const 1028
              i32.add
              i32.load16_u
              local.get 0
              i32.const 10
              i32.shl
              i32.add
              i32.const 56613888
              i32.sub
              local.set 0
              local.get 1
              i32.const 2
              i32.add
              br 1 (;@4;)
            end
            local.get 7
          end
          local.set 1
          block (result i32)  ;; label = @4
            i32.const 1
            local.get 0
            i32.const 128
            i32.lt_u
            br_if 0 (;@4;)
            drop
            i32.const 2
            local.get 0
            i32.const 2048
            i32.lt_u
            br_if 0 (;@4;)
            drop
            i32.const 3
            i32.const 4
            local.get 0
            i32.const 65536
            i32.lt_u
            select
          end
          local.get 2
          i32.add
          local.set 2
          local.get 1
          local.get 6
          i32.lt_u
          br_if 0 (;@3;)
        end
        local.get 2
        i32.const 1
        i32.add
        call 8
        local.tee 2
        local.set 0
        loop  ;; label = @3
          block (result i32)  ;; label = @4
            local.get 3
            i32.const 1
            i32.shl
            i32.const 1028
            i32.add
            i32.load16_u
            local.tee 1
            i32.const 64512
            i32.and
            i32.const 55296
            i32.ne
            local.get 3
            i32.const 1
            i32.add
            local.tee 7
            local.get 6
            i32.ge_u
            i32.or
            i32.eqz
            if  ;; label = @5
              local.get 7
              i32.const 1
              i32.shl
              i32.const 1028
              i32.add
              i32.load16_u
              local.get 1
              i32.const 10
              i32.shl
              i32.add
              i32.const 56613888
              i32.sub
              local.set 1
              local.get 3
              i32.const 2
              i32.add
              br 1 (;@4;)
            end
            local.get 7
          end
          local.set 3
          block  ;; label = @4
            local.get 1
            i32.const 127
            i32.le_u
            if  ;; label = @5
              local.get 0
              local.get 1
              i32.store8
              br 1 (;@4;)
            end
            block  ;; label = @5
              local.get 1
              i32.const 2047
              i32.le_u
              if  ;; label = @6
                local.get 0
                local.get 1
                i32.const 6
                i32.shr_u
                i32.const 192
                i32.or
                i32.store8
                br 1 (;@5;)
              end
              block (result i32)  ;; label = @6
                local.get 1
                i32.const 65535
                i32.le_u
                if  ;; label = @7
                  local.get 1
                  i32.const 12
                  i32.shr_u
                  i32.const -32
                  i32.or
                  local.set 5
                  local.get 0
                  br 1 (;@6;)
                end
                local.get 0
                local.get 1
                i32.const 12
                i32.shr_u
                i32.const 63
                i32.and
                i32.const 128
                i32.or
                i32.store8 offset=1
                local.get 1
                i32.const 18
                i32.shr_u
                i32.const 7
                i32.and
                i32.const -16
                i32.or
                local.set 5
                local.get 0
                i32.const 1
                i32.add
              end
              local.set 7
              local.get 0
              local.get 5
              i32.store8
              local.get 7
              local.get 1
              i32.const 6
              i32.shr_u
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=1
              local.get 7
              i32.const 1
              i32.add
              local.set 0
            end
            local.get 0
            local.get 1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=1
            local.get 0
            i32.const 1
            i32.add
            local.set 0
          end
          local.get 0
          i32.const 1
          i32.add
          local.set 0
          local.get 3
          local.get 6
          i32.lt_u
          br_if 0 (;@3;)
        end
        br 1 (;@1;)
      end
      i32.const 1
      call 8
      local.tee 2
      local.set 0
    end
    local.get 0
    i32.const 0
    i32.store8
    local.get 8
    local.get 2
    i32.store
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 8
    i32.store offset=12
    i32.const 0
    local.set 6
    global.get 0
    i32.const 208
    i32.sub
    local.tee 4
    global.set 0
    local.get 4
    local.get 8
    i32.store offset=204
    local.get 4
    i32.const 160
    i32.add
    local.tee 0
    i32.const 0
    i32.const 40
    call 6
    local.get 4
    local.get 4
    i32.load offset=204
    i32.store offset=200
    block  ;; label = @1
      i32.const 0
      local.get 4
      i32.const 200
      i32.add
      local.get 4
      i32.const 80
      i32.add
      local.get 0
      call 11
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      i32.const 1644
      i32.load
      i32.const 0
      i32.lt_s
      i32.const 1568
      i32.const 1568
      i32.load
      local.tee 1
      i32.const -33
      i32.and
      i32.store
      block (result i32)  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            i32.const 1616
            i32.load
            i32.eqz
            if  ;; label = @5
              i32.const 1616
              i32.const 80
              i32.store
              i32.const 1596
              i32.const 0
              i32.store
              i32.const 1584
              i64.const 0
              i64.store
              i32.const 1612
              i32.load
              local.set 6
              i32.const 1612
              local.get 4
              i32.store
              br 1 (;@4;)
            end
            i32.const 1584
            i32.load
            br_if 1 (;@3;)
          end
          i32.const -1
          i32.const 1568
          call 12
          br_if 1 (;@2;)
          drop
        end
        i32.const 1568
        local.get 4
        i32.const 200
        i32.add
        local.get 4
        i32.const 80
        i32.add
        local.get 4
        i32.const 160
        i32.add
        call 11
      end
      local.set 0
      local.get 6
      if (result i32)  ;; label = @2
        i32.const 1568
        i32.const 0
        i32.const 0
        i32.const 1604
        i32.load
        call_indirect (type 2)
        drop
        i32.const 1616
        i32.const 0
        i32.store
        i32.const 1612
        local.get 6
        i32.store
        i32.const 1596
        i32.const 0
        i32.store
        i32.const 1588
        i32.load
        drop
        i32.const 1584
        i64.const 0
        i64.store
        i32.const 0
      else
        local.get 0
      end
      drop
      i32.const 1568
      i32.const 1568
      i32.load
      local.get 1
      i32.const 32
      i32.and
      i32.or
      i32.store
      br_if 0 (;@1;)
    end
    local.get 4
    i32.const 208
    i32.add
    global.set 0
    local.get 3
    i32.const 16
    i32.add
    global.set 0
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.const 8
      i32.sub
      local.tee 3
      local.get 2
      i32.const 4
      i32.sub
      i32.load
      local.tee 0
      i32.const -8
      i32.and
      local.tee 5
      i32.add
      local.set 4
      block  ;; label = @2
        local.get 0
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 0
        i32.const 2
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 3
        local.get 3
        i32.load
        local.tee 1
        i32.sub
        local.tee 3
        i32.const 2968
        i32.load
        i32.lt_u
        br_if 1 (;@1;)
        local.get 1
        local.get 5
        i32.add
        local.set 5
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              i32.const 2972
              i32.load
              local.get 3
              i32.ne
              if  ;; label = @6
                local.get 3
                i32.load offset=12
                local.set 2
                local.get 1
                i32.const 255
                i32.le_u
                if  ;; label = @7
                  local.get 2
                  local.get 3
                  i32.load offset=8
                  local.tee 0
                  i32.ne
                  br_if 2 (;@5;)
                  i32.const 2952
                  i32.const 2952
                  i32.load
                  i32.const -2
                  local.get 1
                  i32.const 3
                  i32.shr_u
                  i32.rotl
                  i32.and
                  i32.store
                  br 5 (;@2;)
                end
                local.get 3
                i32.load offset=24
                local.set 6
                local.get 2
                local.get 3
                i32.ne
                if  ;; label = @7
                  local.get 3
                  i32.load offset=8
                  local.tee 0
                  local.get 2
                  i32.store offset=12
                  local.get 2
                  local.get 0
                  i32.store offset=8
                  br 4 (;@3;)
                end
                local.get 3
                i32.load offset=20
                local.tee 0
                if (result i32)  ;; label = @7
                  local.get 3
                  i32.const 20
                  i32.add
                else
                  local.get 3
                  i32.load offset=16
                  local.tee 0
                  i32.eqz
                  br_if 3 (;@4;)
                  local.get 3
                  i32.const 16
                  i32.add
                end
                local.set 1
                loop  ;; label = @7
                  local.get 1
                  local.set 7
                  local.get 0
                  local.tee 2
                  i32.const 20
                  i32.add
                  local.set 1
                  local.get 2
                  i32.load offset=20
                  local.tee 0
                  br_if 0 (;@7;)
                  local.get 2
                  i32.const 16
                  i32.add
                  local.set 1
                  local.get 2
                  i32.load offset=16
                  local.tee 0
                  br_if 0 (;@7;)
                end
                local.get 7
                i32.const 0
                i32.store
                br 3 (;@3;)
              end
              local.get 4
              i32.load offset=4
              local.tee 0
              i32.const 3
              i32.and
              i32.const 3
              i32.ne
              br_if 3 (;@2;)
              i32.const 2960
              local.get 5
              i32.store
              local.get 4
              local.get 0
              i32.const -2
              i32.and
              i32.store offset=4
              local.get 3
              local.get 5
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 4
              local.get 5
              i32.store
              br 4 (;@1;)
            end
            local.get 0
            local.get 2
            i32.store offset=12
            local.get 2
            local.get 0
            i32.store offset=8
            br 2 (;@2;)
          end
          i32.const 0
          local.set 2
        end
        local.get 6
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 3
          i32.load offset=28
          local.tee 1
          i32.const 2
          i32.shl
          i32.const 3256
          i32.add
          local.tee 0
          i32.load
          local.get 3
          i32.eq
          if  ;; label = @4
            local.get 0
            local.get 2
            i32.store
            local.get 2
            br_if 1 (;@3;)
            i32.const 2956
            i32.const 2956
            i32.load
            i32.const -2
            local.get 1
            i32.rotl
            i32.and
            i32.store
            br 2 (;@2;)
          end
          block  ;; label = @4
            local.get 3
            local.get 6
            i32.load offset=16
            i32.eq
            if  ;; label = @5
              local.get 6
              local.get 2
              i32.store offset=16
              br 1 (;@4;)
            end
            local.get 6
            local.get 2
            i32.store offset=20
          end
          local.get 2
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 2
        local.get 6
        i32.store offset=24
        local.get 3
        i32.load offset=16
        local.tee 0
        if  ;; label = @3
          local.get 2
          local.get 0
          i32.store offset=16
          local.get 0
          local.get 2
          i32.store offset=24
        end
        local.get 3
        i32.load offset=20
        local.tee 0
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        local.get 0
        i32.store offset=20
        local.get 0
        local.get 2
        i32.store offset=24
      end
      local.get 3
      local.get 4
      i32.ge_u
      br_if 0 (;@1;)
      local.get 4
      i32.load offset=4
      local.tee 1
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.const 2
              i32.and
              i32.eqz
              if  ;; label = @6
                i32.const 2976
                i32.load
                local.get 4
                i32.eq
                if  ;; label = @7
                  i32.const 2976
                  local.get 3
                  i32.store
                  i32.const 2964
                  i32.const 2964
                  i32.load
                  local.get 5
                  i32.add
                  local.tee 0
                  i32.store
                  local.get 3
                  local.get 0
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 3
                  i32.const 2972
                  i32.load
                  i32.ne
                  br_if 6 (;@1;)
                  i32.const 2960
                  i32.const 0
                  i32.store
                  i32.const 2972
                  i32.const 0
                  i32.store
                  br 6 (;@1;)
                end
                i32.const 2972
                i32.load
                local.get 4
                i32.eq
                if  ;; label = @7
                  i32.const 2972
                  local.get 3
                  i32.store
                  i32.const 2960
                  i32.const 2960
                  i32.load
                  local.get 5
                  i32.add
                  local.tee 0
                  i32.store
                  local.get 3
                  local.get 0
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 0
                  local.get 3
                  i32.add
                  local.get 0
                  i32.store
                  br 6 (;@1;)
                end
                local.get 1
                i32.const -8
                i32.and
                local.get 5
                i32.add
                local.set 5
                local.get 4
                i32.load offset=12
                local.set 2
                local.get 1
                i32.const 255
                i32.le_u
                if  ;; label = @7
                  local.get 4
                  i32.load offset=8
                  local.tee 0
                  local.get 2
                  i32.eq
                  if  ;; label = @8
                    i32.const 2952
                    i32.const 2952
                    i32.load
                    i32.const -2
                    local.get 1
                    i32.const 3
                    i32.shr_u
                    i32.rotl
                    i32.and
                    i32.store
                    br 5 (;@3;)
                  end
                  local.get 0
                  local.get 2
                  i32.store offset=12
                  local.get 2
                  local.get 0
                  i32.store offset=8
                  br 4 (;@3;)
                end
                local.get 4
                i32.load offset=24
                local.set 6
                local.get 2
                local.get 4
                i32.ne
                if  ;; label = @7
                  local.get 4
                  i32.load offset=8
                  local.tee 0
                  local.get 2
                  i32.store offset=12
                  local.get 2
                  local.get 0
                  i32.store offset=8
                  br 3 (;@4;)
                end
                local.get 4
                i32.load offset=20
                local.tee 0
                if (result i32)  ;; label = @7
                  local.get 4
                  i32.const 20
                  i32.add
                else
                  local.get 4
                  i32.load offset=16
                  local.tee 0
                  i32.eqz
                  br_if 2 (;@5;)
                  local.get 4
                  i32.const 16
                  i32.add
                end
                local.set 1
                loop  ;; label = @7
                  local.get 1
                  local.set 7
                  local.get 0
                  local.tee 2
                  i32.const 20
                  i32.add
                  local.set 1
                  local.get 2
                  i32.load offset=20
                  local.tee 0
                  br_if 0 (;@7;)
                  local.get 2
                  i32.const 16
                  i32.add
                  local.set 1
                  local.get 2
                  i32.load offset=16
                  local.tee 0
                  br_if 0 (;@7;)
                end
                local.get 7
                i32.const 0
                i32.store
                br 2 (;@4;)
              end
              local.get 4
              local.get 1
              i32.const -2
              i32.and
              i32.store offset=4
              local.get 3
              local.get 5
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 3
              local.get 5
              i32.add
              local.get 5
              i32.store
              br 3 (;@2;)
            end
            i32.const 0
            local.set 2
          end
          local.get 6
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 4
            i32.load offset=28
            local.tee 1
            i32.const 2
            i32.shl
            i32.const 3256
            i32.add
            local.tee 0
            i32.load
            local.get 4
            i32.eq
            if  ;; label = @5
              local.get 0
              local.get 2
              i32.store
              local.get 2
              br_if 1 (;@4;)
              i32.const 2956
              i32.const 2956
              i32.load
              i32.const -2
              local.get 1
              i32.rotl
              i32.and
              i32.store
              br 2 (;@3;)
            end
            block  ;; label = @5
              local.get 4
              local.get 6
              i32.load offset=16
              i32.eq
              if  ;; label = @6
                local.get 6
                local.get 2
                i32.store offset=16
                br 1 (;@5;)
              end
              local.get 6
              local.get 2
              i32.store offset=20
            end
            local.get 2
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 2
          local.get 6
          i32.store offset=24
          local.get 4
          i32.load offset=16
          local.tee 0
          if  ;; label = @4
            local.get 2
            local.get 0
            i32.store offset=16
            local.get 0
            local.get 2
            i32.store offset=24
          end
          local.get 4
          i32.load offset=20
          local.tee 0
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          local.get 0
          i32.store offset=20
          local.get 0
          local.get 2
          i32.store offset=24
        end
        local.get 3
        local.get 5
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 3
        local.get 5
        i32.add
        local.get 5
        i32.store
        local.get 3
        i32.const 2972
        i32.load
        i32.ne
        br_if 0 (;@2;)
        i32.const 2960
        local.get 5
        i32.store
        br 1 (;@1;)
      end
      local.get 5
      i32.const 255
      i32.le_u
      if  ;; label = @2
        local.get 5
        i32.const -8
        i32.and
        i32.const 2992
        i32.add
        local.set 2
        block (result i32)  ;; label = @3
          i32.const 2952
          i32.load
          local.tee 1
          i32.const 1
          local.get 5
          i32.const 3
          i32.shr_u
          i32.shl
          local.tee 0
          i32.and
          i32.eqz
          if  ;; label = @4
            i32.const 2952
            local.get 0
            local.get 1
            i32.or
            i32.store
            local.get 2
            br 1 (;@3;)
          end
          local.get 2
          i32.load offset=8
        end
        local.set 0
        local.get 2
        local.get 3
        i32.store offset=8
        local.get 0
        local.get 3
        i32.store offset=12
        local.get 3
        local.get 2
        i32.store offset=12
        local.get 3
        local.get 0
        i32.store offset=8
        br 1 (;@1;)
      end
      i32.const 31
      local.set 2
      local.get 5
      i32.const 16777215
      i32.le_u
      if  ;; label = @2
        local.get 5
        i32.const 38
        local.get 5
        i32.const 8
        i32.shr_u
        i32.clz
        local.tee 0
        i32.sub
        i32.shr_u
        i32.const 1
        i32.and
        local.get 0
        i32.const 1
        i32.shl
        i32.sub
        i32.const 62
        i32.add
        local.set 2
      end
      local.get 3
      local.get 2
      i32.store offset=28
      local.get 3
      i64.const 0
      i64.store offset=16 align=4
      local.get 2
      i32.const 2
      i32.shl
      i32.const 3256
      i32.add
      local.set 1
      block (result i32)  ;; label = @2
        block  ;; label = @3
          block (result i32)  ;; label = @4
            i32.const 2956
            i32.load
            local.tee 7
            i32.const 1
            local.get 2
            i32.shl
            local.tee 0
            i32.and
            i32.eqz
            if  ;; label = @5
              i32.const 2956
              local.get 0
              local.get 7
              i32.or
              i32.store
              local.get 1
              local.get 3
              i32.store
              i32.const 24
              local.set 2
              i32.const 8
              br 1 (;@4;)
            end
            local.get 5
            i32.const 25
            local.get 2
            i32.const 1
            i32.shr_u
            i32.sub
            i32.const 0
            local.get 2
            i32.const 31
            i32.ne
            select
            i32.shl
            local.set 2
            local.get 1
            i32.load
            local.set 1
            loop  ;; label = @5
              local.get 1
              local.tee 0
              i32.load offset=4
              i32.const -8
              i32.and
              local.get 5
              i32.eq
              br_if 2 (;@3;)
              local.get 2
              i32.const 29
              i32.shr_u
              local.set 1
              local.get 2
              i32.const 1
              i32.shl
              local.set 2
              local.get 0
              local.get 1
              i32.const 4
              i32.and
              i32.add
              local.tee 7
              i32.load offset=16
              local.tee 1
              br_if 0 (;@5;)
            end
            local.get 7
            local.get 3
            i32.store offset=16
            i32.const 24
            local.set 2
            local.get 0
            local.set 1
            i32.const 8
          end
          local.set 5
          local.get 3
          local.tee 0
          br 1 (;@2;)
        end
        local.get 0
        i32.load offset=8
        local.tee 1
        local.get 3
        i32.store offset=12
        local.get 0
        local.get 3
        i32.store offset=8
        i32.const 24
        local.set 5
        i32.const 8
        local.set 2
        i32.const 0
      end
      local.set 7
      local.get 2
      local.get 3
      i32.add
      local.get 1
      i32.store
      local.get 3
      local.get 0
      i32.store offset=12
      local.get 3
      local.get 5
      i32.add
      local.get 7
      i32.store
      i32.const 2984
      i32.const 2984
      i32.load
      i32.const 1
      i32.sub
      local.tee 0
      i32.const -1
      local.get 0
      select
      i32.store
    end
    local.get 8
    i32.const 16
    i32.add
    global.set 0
    local.get 9)
  (table (;0;) 4 4 funcref)
  (memory (;0;) 258 258)
  (global (;0;) (mut i32) (i32.const 68992))
  (export "d" (memory 0))
  (export "e" (func 9))
  (export "f" (func 19))
  (export "g" (table 0))
  (elem (;0;) (i32.const 1) func 17 18 16)
  (data (;0;) (i32.const 1024) "\0c\00\00\00H\00e\00l\00l\00o\00 \00f\00r\00o\00m\00 \00C\00-+   0X0x\00(null)\00C injected | %s\0a\00\00\00\19\00\0b\00\19\19\19\00\00\00\00\05\00\00\00\00\00\00\09\00\00\00\00\0b\00\00\00\00\00\00\00\00\19\00\0a\0a\19\19\19\03\0a\07\00\01\00\09\0b\18\00\00\09\06\0b\00\00\0b\00\06\19\00\00\00\19\19\19")
  (data (;1;) (i32.const 1169) "\0e\00\00\00\00\00\00\00\00\19\00\0b\0d\19\19\19\00\0d\00\00\02\00\09\0e\00\00\00\09\00\0e\00\00\0e")
  (data (;2;) (i32.const 1227) "\0c")
  (data (;3;) (i32.const 1239) "\13\00\00\00\00\13\00\00\00\00\09\0c\00\00\00\00\00\0c\00\00\0c")
  (data (;4;) (i32.const 1285) "\10")
  (data (;5;) (i32.const 1297) "\0f\00\00\00\04\0f\00\00\00\00\09\10\00\00\00\00\00\10\00\00\10")
  (data (;6;) (i32.const 1343) "\12")
  (data (;7;) (i32.const 1355) "\11\00\00\00\00\11\00\00\00\00\09\12\00\00\00\00\00\12\00\00\12\00\00\1a\00\00\00\1a\1a\1a")
  (data (;8;) (i32.const 1410) "\1a\00\00\00\1a\1a\1a\00\00\00\00\00\00\09")
  (data (;9;) (i32.const 1459) "\14")
  (data (;10;) (i32.const 1471) "\17\00\00\00\00\17\00\00\00\00\09\14\00\00\00\00\00\14\00\00\14")
  (data (;11;) (i32.const 1517) "\16")
  (data (;12;) (i32.const 1529) "\15\00\00\00\00\15\00\00\00\00\09\16\00\00\00\00\00\16\00\00\16\00\000123456789ABCDEF")
  (data (;13;) (i32.const 1568) "\05")
  (data (;14;) (i32.const 1580) "\01")
  (data (;15;) (i32.const 1604) "\02\00\00\00\03\00\00\00\c8\06\00\00\00\04")
  (data (;16;) (i32.const 1628) "\01")
  (data (;17;) (i32.const 1644) "\ff\ff\ff\ff\0a")
  (data (;18;) (i32.const 1712) "\80\0d\01"))
