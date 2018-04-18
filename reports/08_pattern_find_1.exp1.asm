# JMH version: 1.19
# VM version: JDK 1.8.0_131, VM 25.131-b11
# VM invoker: /usr/lib/jvm/java-8-oracle/jre/bin/java
# VM options: <none>
# Warmup: 20 iterations, 1 s each
# Measurement: 20 iterations, 1 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Throughput, ops/time
# Benchmark: com.github.arnaudroger.re2j.Re2jFindRegex.testExp1

# Run progress: 0.00% complete, ETA 00:00:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6050.136 ops/s
# Warmup Iteration   2: 13790.791 ops/s
# Warmup Iteration   3: 13799.228 ops/s
# Warmup Iteration   4: 13537.949 ops/s
# Warmup Iteration   5: 13880.791 ops/s
# Warmup Iteration   6: 13868.897 ops/s
# Warmup Iteration   7: 11331.159 ops/s
# Warmup Iteration   8: 13852.355 ops/s
# Warmup Iteration   9: 13901.891 ops/s
# Warmup Iteration  10: 13792.008 ops/s
# Warmup Iteration  11: 13798.663 ops/s
# Warmup Iteration  12: 13859.586 ops/s
# Warmup Iteration  13: 10445.197 ops/s
# Warmup Iteration  14: 13585.681 ops/s
# Warmup Iteration  15: 13899.115 ops/s
# Warmup Iteration  16: 13896.460 ops/s
# Warmup Iteration  17: 13919.970 ops/s
# Warmup Iteration  18: 13916.099 ops/s
# Warmup Iteration  19: 13891.233 ops/s
# Warmup Iteration  20: 13917.237 ops/s
Iteration   1: 13918.274 ops/s
Iteration   2: 13913.135 ops/s
Iteration   3: 13845.094 ops/s
Iteration   4: 13857.791 ops/s
Iteration   5: 13854.633 ops/s
Iteration   6: 13838.408 ops/s
Iteration   7: 13917.972 ops/s
Iteration   8: 13920.046 ops/s
Iteration   9: 13919.006 ops/s
Iteration  10: 13906.953 ops/s
Iteration  11: 13918.841 ops/s
Iteration  12: 13918.270 ops/s
Iteration  13: 13918.510 ops/s
Iteration  14: 13920.277 ops/s
Iteration  15: 13918.676 ops/s
Iteration  16: 13905.600 ops/s
Iteration  17: 13914.120 ops/s
Iteration  18: 13921.142 ops/s
Iteration  19: 13921.057 ops/s
Iteration  20: 13909.042 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  13902.842 ±(99.9%) 24.497 ops/s [Average]
  (min, avg, max) = (13838.408, 13902.842, 13921.142), stdev = 28.211
  CI (99.9%): [13878.345, 13927.340] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1:·asm":
PrintAssembly processed: 195817 total address lines.
Perf output processed (skipped 23.366 seconds):
 Column 1: cycles (20398 events)
 Column 2: instructions (20447 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 500 (1434 bytes) 

                        0x00007f242c389660: mov    %r12b,(%r8,%r10,1)  ;*aastore
                                                                      ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                      ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 276)
                        0x00007f242c389664: xor    %edx,%edx
                        0x00007f242c389666: vmovd  %xmm6,%ebx
                        0x00007f242c38966a: vmovd  %xmm0,%edi         ;*synchronization entry
                                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%    0.02%     ↗  0x00007f242c38966e: mov    0xa4(%rsp),%r10d   ;*aload
                     │                                                ; - com.google.re2j.Machine::step@216 (line 302)
  1.14%    1.77%   ↗ │  0x00007f242c389676: test   %rdx,%rdx
                  ╭│ │  0x00007f242c389679: je     0x00007f242c3896c7  ;*ifnull
                  ││ │                                                ; - com.google.re2j.Machine::step@218 (line 302)
                  ││ │  0x00007f242c38967b: mov    0xc(%r12,%rdi,8),%ebp  ;*arraylength
                  ││ │                                                ; - com.google.re2j.Machine::free@8 (line 167)
                  ││ │                                                ; - com.google.re2j.Machine::step@224 (line 303)
                  ││ │                                                ; implicit exception: dispatches to 0x00007f242c38ae0d
  0.00%           ││ │  0x00007f242c389680: cmp    %ebp,%ebx
                  ││ │  0x00007f242c389682: jge    0x00007f242c38a0d9  ;*if_icmplt
                  ││ │                                                ; - com.google.re2j.Machine::free@9 (line 167)
                  ││ │                                                ; - com.google.re2j.Machine::step@224 (line 303)
  0.35%    0.49%  ││ │  0x00007f242c389688: mov    %ebx,%r9d
  0.95%    1.12%  ││ │  0x00007f242c38968b: inc    %r9d
                  ││ │  0x00007f242c38968e: mov    0x20(%rsp),%r8
                  ││ │  0x00007f242c389693: mov    %r9d,0xc(%r8)      ;*putfield poolSize
                  ││ │                                                ; - com.google.re2j.Machine::free@45 (line 170)
                  ││ │                                                ; - com.google.re2j.Machine::step@224 (line 303)
  0.41%    0.46%  ││ │  0x00007f242c389697: cmp    %ebp,%ebx
                  ││ │  0x00007f242c389699: jae    0x00007f242c389f55  ;*aastore
                  ││ │                                                ; - com.google.re2j.Machine::free@49 (line 170)
                  ││ │                                                ; - com.google.re2j.Machine::step@224 (line 303)
  0.91%    1.04%  ││ │  0x00007f242c38969f: mov    %rdx,%r8
                  ││ │  0x00007f242c3896a2: shr    $0x3,%r8
                  ││ │  0x00007f242c3896a6: lea    (%r12,%rdi,8),%r9  ;*getfield pool
                  ││ │                                                ; - com.google.re2j.Machine::free@5 (line 167)
                  ││ │                                                ; - com.google.re2j.Machine::step@224 (line 303)
  0.37%    0.36%  ││ │  0x00007f242c3896aa: lea    0x10(%r9,%rbx,4),%r9
  0.91%    1.37%  ││ │  0x00007f242c3896af: mov    %r8d,(%r9)
  0.00%           ││ │  0x00007f242c3896b2: mov    %r9,%r8
                  ││ │  0x00007f242c3896b5: shr    $0x9,%r8
  0.37%    0.28%  ││ │  0x00007f242c3896b9: movabs $0x7f2427b98000,%r9
  0.80%    1.39%  ││ │  0x00007f242c3896c3: mov    %r12b,(%r9,%r8,1)  ;*goto
                  ││ │                                                ; - com.google.re2j.Machine::step@230 (line 277)
  0.43%    0.41%  ↘│ │  0x00007f242c3896c7: mov    0x8(%rsp),%r8
                   │ │  0x00007f242c3896cc: mov    0xc(%r8),%r9d      ;*getfield size
                   │ │                                                ; - com.google.re2j.Machine::step@15 (line 277)
  0.41%    0.17%   │ │  0x00007f242c3896d0: inc    %r10d              ; OopMap{r11=Oop [8]=Oop [32]=Oop off=499}
                   │ │                                                ;*goto
                   │ │                                                ; - com.google.re2j.Machine::step@230 (line 277)
  0.94%    1.22%   │ │  0x00007f242c3896d3: test   %eax,0x15f2b927(%rip)        # 0x00007f24422b5000
                   │ │                                                ;*goto
                   │ │                                                ; - com.google.re2j.Machine::step@230 (line 277)
                   │ │                                                ;   {poll}
  0.35%    0.35%   │ │  0x00007f242c3896d9: cmp    %r9d,%r10d
                   │ │  0x00007f242c3896dc: jge    0x00007f242c389d3c
                   │ │  0x00007f242c3896e2: mov    %r11,%rax          ;*aload_1
                   │ │                                                ; - com.google.re2j.Machine::step@21 (line 278)
  0.50%    0.10%   │ │  0x00007f242c3896e5: mov    0x8(%rsp),%r11
  0.83%    0.69%   │ │  0x00007f242c3896ea: mov    0x20(%r11),%r8d    ;*getfield denseThreads
                   │ │                                                ; - com.google.re2j.Machine::step@22 (line 278)
  1.42%    1.71%   │ │  0x00007f242c3896ee: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x00007f242c38add9
  2.12%    2.68%   │ │  0x00007f242c3896f3: cmp    %r11d,%r10d
                   │ │  0x00007f242c3896f6: jae    0x00007f242c389ecd
  0.88%    0.58%   │ │  0x00007f242c3896fc: lea    (%r12,%r8,8),%r11
  0.55%    0.44%   │ │  0x00007f242c389700: mov    0x10(%r11,%r10,4),%r14d  ;*aaload
                   │ │                                                ; - com.google.re2j.Machine::step@27 (line 278)
  0.31%    0.41%   │ │  0x00007f242c389705: mov    0x10(%r12,%r14,8),%ebp  ;*getfield inst
                   │ │                                                ; - com.google.re2j.Machine::step@78 (line 283)
                   │ │                                                ; implicit exception: dispatches to 0x00007f242c38aded
  3.40%    3.11%   │ │  0x00007f242c38970a: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007f242c38adfd
  7.00%    6.89%   │ │  0x00007f242c38970f: cmp    $0xf8019992,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                   │ │  0x00007f242c389716: jne    0x00007f242c389f11
  1.79%    1.36%   │ │  0x00007f242c38971c: lea    (%r12,%rbp,8),%r11  ;*invokevirtual isMatch
                   │ │                                                ; - com.google.re2j.Machine::step@85 (line 285)
  0.00%    0.01%   │ │  0x00007f242c389720: mov    0xc(%r11),%r8d     ;*getfield op
                   │ │                                                ; - com.google.re2j.Inst::isMatch@1 (line 78)
                   │ │                                                ; - com.google.re2j.Inst$MatchInst::isMatch@1 (line 82)
                   │ │                                                ; - com.google.re2j.Machine::step@85 (line 285)
  0.04%    0.05%   │ │  0x00007f242c389724: cmp    $0x6,%r8d
                   │ │  0x00007f242c389728: je     0x00007f242c389fb1  ;*if_icmpne
                   │ │                                                ; - com.google.re2j.Inst::isMatch@6 (line 78)
                   │ │                                                ; - com.google.re2j.Inst$MatchInst::isMatch@1 (line 82)
                   │ │                                                ; - com.google.re2j.Machine::step@85 (line 285)
  1.93%    1.33%   │ │  0x00007f242c38972e: mov    0x20(%rsp),%r9
  0.03%    0.04%   │ │  0x00007f242c389733: mov    0xc(%r9),%ebx      ;*getfield poolSize
                   │ │                                                ; - com.google.re2j.Machine::alloc@1 (line 132)
                   │ │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                   │ │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                   │ │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%    0.00%   │ │  0x00007f242c389737: mov    0x24(%r9),%edi     ;*getfield pool
                   │ │                                                ; - com.google.re2j.Machine::alloc@18 (line 134)
                   │ │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                   │ │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                   │ │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                   │ │  0x00007f242c38973b: lea    (%r12,%r14,8),%rdx  ;*aaload
                   │ │                                                ; - com.google.re2j.Machine::step@27 (line 278)
  1.70%    1.53%   │ │  0x00007f242c38973f: cmp    $0xa,%r8d
                   │ │  0x00007f242c389743: jne    0x00007f242c389cca  ;*if_icmpne
                   │ │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@6 (line 134)
                   │ │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.02%    0.01%   │ │  0x00007f242c389749: mov    0x1c(%r11),%ecx    ;*getfield outInst
                   │ │                                                ; - com.google.re2j.Machine::step@195 (line 300)
  0.03%    0.00%   │ │  0x00007f242c38974d: mov    0xc(%r12,%r14,8),%r8d  ;*getfield cap
                   │ │                                                ; - com.google.re2j.Machine::step@203 (line 300)
                   │ │  0x00007f242c389752: mov    0x8(%r12,%rcx,8),%esi  ; implicit exception: dispatches to 0x00007f242c38ae1d
  1.88%    0.21%   │ │  0x00007f242c389757: lea    (%r12,%rcx,8),%r9
                   │ │  0x00007f242c38975b: cmp    $0xf8019843,%esi   ;   {metadata(&apos;com/google/re2j/Inst$AltInst&apos;)}
                   │ │  0x00007f242c389761: jne    0x00007f242c389d78  ;*invokevirtual add
                   │ │                                                ; - com.google.re2j.Machine::step@211 (line 300)
  0.51%    0.52%   │ │  0x00007f242c389767: mov    0x18(%r9),%ecx     ;*getfield pc
                   │ │                                                ; - com.google.re2j.Inst$AltInst::add@2 (line 187)
                   │ │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                   │ │  0x00007f242c38976b: mov    %rax,%r11
                   │ │  0x00007f242c38976e: mov    0x10(%rax),%rax    ;*getfield pcsl
                   │ │                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                   │ │                                                ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                   │ │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                   │ │                                                ; implicit exception: dispatches to 0x00007f242c38ae41
                   │ │  0x00007f242c389772: cmp    $0x40,%ecx
                   │ │  0x00007f242c389775: jg     0x00007f242c38a2fd  ;*if_icmpgt
                   │ │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                   │ │                                                ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                   │ │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.50%    0.00%   │ │  0x00007f242c38977b: mov    $0x1,%esi
                   │ │  0x00007f242c389780: shl    %cl,%rsi           ;*lshl
                   │ │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                   │ │                                                ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                   │ │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.84%    0.01%   │ │  0x00007f242c389783: mov    %rsi,%r13
                   │ │  0x00007f242c389786: mov    %rax,%rsi
                   │ │  0x00007f242c389789: and    %r13,%rsi
                   │ │  0x00007f242c38978c: test   %rsi,%rsi
                   ╰ │  0x00007f242c38978f: jne    0x00007f242c389676  ;*ifeq
                     │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.50%              │  0x00007f242c389795: cmp    $0x40,%ecx
                     │  0x00007f242c389798: jge    0x00007f242c38a345  ;*if_icmpge
                     │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
           0.00%     │  0x00007f242c38979e: mov    %r12b,0x18(%r11)   ;*putfield empty
                     │                                                ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                     │  0x00007f242c3897a2: mov    0x1c(%r9),%ebp     ;*getfield outInst
                     │                                                ; - com.google.re2j.Inst$AltInst::add@23 (line 192)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                     │  0x00007f242c3897a6: or     %rax,%r13          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.47%    0.15%     │  0x00007f242c3897a9: vmovq  %r13,%xmm4
  0.02%              │  0x00007f242c3897ae: mov    %r13,0x10(%r11)    ;*putfield pcsl
                     │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                     │  0x00007f242c3897b2: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f242c38ae55
  0.85%              │  0x00007f242c3897b7: cmp    $0xf8019992,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                     │  0x00007f242c3897bd: jne    0x00007f242c38a049
  0.50%              │  0x00007f242c3897c3: lea    (%r12,%rbp,8),%r13  ;*invokevirtual add
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                     │  0x00007f242c3897c7: mov    0x18(%r13),%ecx    ;*getfield pc
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.19%    0.02%     │  0x00007f242c3897cb: cmp    $0x40,%ecx
                     │  0x00007f242c3897ce: jg     0x00007f242c38a38d  ;*if_icmpgt
                     │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.30%    0.03%     │  0x00007f242c3897d4: mov    $0x1,%eax
  0.13%    0.07%     │  0x00007f242c3897d9: shl    %cl,%rax           ;*lshl
                     │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.77%    0.44%     │  0x00007f242c3897dc: vmovq  %xmm4,%rsi
  0.03%    0.03%     │  0x00007f242c3897e1: and    %rax,%rsi          ;*land
                     │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                     │  0x00007f242c3897e4: test   %rsi,%rsi
                     │  0x00007f242c3897e7: jne    0x00007f242c389e4c  ;*ifeq
                     │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.16%    0.23%     │  0x00007f242c3897ed: vmovd  %ecx,%xmm5
  0.17%    0.26%     │  0x00007f242c3897f1: vmovq  %r13,%xmm3
  0.03%    0.01%     │  0x00007f242c3897f6: vmovq  %r9,%xmm1
                     │  0x00007f242c3897fb: vmovd  %r8d,%xmm2
  0.21%    0.24%     │  0x00007f242c389800: mov    %rdx,%rcx
  0.15%    0.23%     │  0x00007f242c389803: vmovd  %edi,%xmm0
  0.02%    0.03%     │  0x00007f242c389807: mov    %ebx,%r13d
                     │  0x00007f242c38980a: mov    %r10d,0xa4(%rsp)
  0.23%    0.18%     │  0x00007f242c389812: mov    %r11,%r8
  0.22%    0.11%     │  0x00007f242c389815: xor    %ebp,%ebp          ;*ireturn
                     │                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 47)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%              │  0x00007f242c389817: test   %rsi,%rsi
                     │  0x00007f242c38981a: jne    0x00007f242c38a3d9  ;*ifeq
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                     │  0x00007f242c389820: vmovd  %xmm5,%r9d
  0.23%              │  0x00007f242c389825: cmp    $0x40,%r9d
                     │  0x00007f242c389829: jge    0x00007f242c38a419  ;*if_icmpge
                     │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.17%    0.02%     │  0x00007f242c38982f: vmovq  %xmm4,%rdx
  0.01%              │  0x00007f242c389834: or     %rax,%rdx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                     │  0x00007f242c389837: mov    %r8,%rdi
  0.18%    0.02%     │  0x00007f242c38983a: mov    %rdx,0x10(%r8)     ;*putfield pcsl
                     │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.20%    0.07%     │  0x00007f242c38983e: mov    %rcx,%r11
  0.03%    0.01%     │  0x00007f242c389841: vmovq  %xmm3,%r10
                     │  0x00007f242c389846: shr    $0x3,%r10
  0.20%    0.07%     │  0x00007f242c38984a: mov    %r10d,0x10(%r12,%r14,8)
  0.20%    0.12%     │  0x00007f242c38984f: shr    $0x9,%r11
  0.01%              │  0x00007f242c389853: movabs $0x7f2427b98000,%r10
                     │  0x00007f242c38985d: mov    %r12b,(%r10,%r11,1)  ;*putfield inst
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@41 (line 101)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.10%    0.22%     │  0x00007f242c389861: vmovd  %xmm2,%r9d
  0.19%    0.25%     │  0x00007f242c389866: mov    0xc(%r12,%r9,8),%ebx  ;*arraylength
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@45 (line 103)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                     │                                                ; implicit exception: dispatches to 0x00007f242c38ae79
  0.01%    0.02%     │  0x00007f242c38986b: test   %ebx,%ebx
                     │  0x00007f242c38986d: jg     0x00007f242c38a461  ;*ifle
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                     │  0x00007f242c389873: mov    %ebx,0xac(%rsp)
  0.21%    0.27%     │  0x00007f242c38987a: vmovaps %xmm2,%xmm4
  0.23%    0.18%     │  0x00007f242c38987e: mov    %r14d,%r10d
  0.03%    0.02%     │  0x00007f242c389881: vmovq  %rdi,%xmm2
                     │  0x00007f242c389886: mov    0xc(%rdi),%r11d    ;*getfield size
                     │                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.21%    0.15%     │  0x00007f242c38988a: mov    %r11d,0x28(%rsp)
  0.21%    0.13%     │  0x00007f242c38988f: mov    0x20(%rdi),%r11d   ;*getfield denseThreads
                     │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.06%    0.01%     │  0x00007f242c389893: vmovd  %r11d,%xmm3
                     │  0x00007f242c389898: mov    0x28(%rsp),%r11d
  0.20%    0.20%     │  0x00007f242c38989d: inc    %r11d              ;*iadd
                     │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 65)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.25%    0.18%     │  0x00007f242c3898a0: vmovd  %r11d,%xmm5
  0.04%    0.02%     │  0x00007f242c3898a5: mov    %rdi,%r8
                     │  0x00007f242c3898a8: mov    %r11d,0xc(%r8)     ;*putfield size
                     │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.17%    0.25%     │  0x00007f242c3898ac: vmovd  %xmm3,%r11d
  0.21%    0.22%     │  0x00007f242c3898b1: mov    0xc(%r12,%r11,8),%r8d  ; implicit exception: dispatches to 0x00007f242c38ae89
  0.02%    0.05%     │  0x00007f242c3898b6: mov    0x28(%rsp),%r11d
                     │  0x00007f242c3898bb: cmp    %r8d,%r11d
                     │  0x00007f242c3898be: jae    0x00007f242c38a00d  ;*aastore
                     │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.17%    0.28%     │  0x00007f242c3898c4: vmovq  %xmm1,%r11
  0.21%    0.24%     │  0x00007f242c3898c9: mov    0x20(%r11),%r11d   ;*getfield argInst
                     │                                                ; - com.google.re2j.Inst$AltInst::add@41 (line 193)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%    0.02%     │  0x00007f242c3898cd: mov    %r11d,%r14d
                     │  0x00007f242c3898d0: vmovd  %xmm3,%r9d
  0.23%    0.08%     │  0x00007f242c3898d5: lea    (%r12,%r9,8),%r11  ;*getfield denseThreads
                     │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.21%    0.06%     │  0x00007f242c3898d9: mov    0x28(%rsp),%r9d
  0.02%              │  0x00007f242c3898de: lea    0x10(%r11,%r9,4),%r9
                     │  0x00007f242c3898e3: mov    %r10d,(%r9)
  0.26%    0.07%     │  0x00007f242c3898e6: mov    %r9,%r10
  0.17%    0.08%     │  0x00007f242c3898e9: shr    $0x9,%r10
  0.03%              │  0x00007f242c3898ed: movabs $0x7f2427b98000,%r9
                     │  0x00007f242c3898f7: mov    %r12b,(%r9,%r10,1)  ;*aastore
                     │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.24%    0.22%     │  0x00007f242c3898fb: mov    0x8(%r12,%r14,8),%ecx  ;*invokevirtual add
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                     │                                                ; implicit exception: dispatches to 0x00007f242c38aea5
  0.22%    0.10%     │  0x00007f242c389900: movslq 0x28(%rsp),%r10
  0.02%    0.00%     │  0x00007f242c389905: lea    (%r11,%r10,4),%rdi  ;*aastore
                     │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                     │  0x00007f242c389909: mov    %rdi,%r9
  0.27%    0.33%     │  0x00007f242c38990c: add    $0x14,%r9          ;*aastore
                     │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.21%    0.18%     │  0x00007f242c389910: mov    %r13d,%r10d
  0.02%    0.02%     │  0x00007f242c389913: dec    %r10d              ;*isub
                     │                                                ; - com.google.re2j.Machine::alloc@13 (line 133)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                     │  0x00007f242c389916: vmovd  %r10d,%xmm6
  0.31%    0.10%     │  0x00007f242c38991b: lea    (%r12,%r14,8),%r10
  0.15%    0.01%     │  0x00007f242c38991f: mov    0x28(%rsp),%ebx
  0.02%    0.00%     │  0x00007f242c389923: add    $0x2,%ebx          ;*iadd
                     │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 65)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                     │  0x00007f242c389926: cmp    $0xf8019886,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                     │  0x00007f242c38992c: jne    0x00007f242c389574  ;*invokevirtual add
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.24%    0.24%     │  0x00007f242c389932: mov    %r10,%rax
  0.15%    0.26%     │  0x00007f242c389935: mov    0x18(%r10),%r10d   ;*getfield pc
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@2 (line 248)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%    0.02%     │  0x00007f242c389939: mov    %r10d,%ecx
                     │  0x00007f242c38993c: cmp    $0x40,%r10d
  0.25%    0.38%     │  0x00007f242c389940: jg     0x00007f242c38a715  ;*if_icmpgt
                     │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@5 (line 248)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.20%    0.21%     │  0x00007f242c389946: mov    $0x1,%esi
  0.02%    0.04%     │  0x00007f242c38994b: shl    %cl,%rsi           ;*lshl
                     │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@5 (line 248)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.37%    0.43%     │  0x00007f242c38994e: mov    %rdx,%r10
  0.01%    0.03%     │  0x00007f242c389951: and    %rsi,%r10          ;*land
                     │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@5 (line 248)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                     │  0x00007f242c389954: test   %r10,%r10
                     │  0x00007f242c389957: jne    0x00007f242c389e7e  ;*ifeq
                     │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@5 (line 248)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.23%    0.33%     │  0x00007f242c38995d: xor    %ebp,%ebp          ;*ireturn
                     │                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 47)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@5 (line 248)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.20%    0.24%     │  0x00007f242c38995f: test   %r10,%r10
                     │  0x00007f242c389962: jne    0x00007f242c38a751  ;*ifeq
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@8 (line 248)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.03%    0.06%     │  0x00007f242c389968: mov    %ecx,%r10d
                     │  0x00007f242c38996b: cmp    $0x40,%r10d
                     │  0x00007f242c38996f: jge    0x00007f242c38a781  ;*if_icmpge
                     │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@19 (line 251)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.26%    0.39%     │  0x00007f242c389975: mov    %rax,%r10
  0.17%    0.26%     │  0x00007f242c389978: mov    0x14(%r10),%ebp    ;*getfield arg
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@23 (line 253)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.03%    0.02%     │  0x00007f242c38997c: or     %rsi,%rdx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@19 (line 251)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                     │  0x00007f242c38997f: vmovq  %xmm2,%r10
  0.25%    0.34%     │  0x00007f242c389984: mov    %rdx,0x10(%r10)    ;*putfield pcsl
                     │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@19 (line 251)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.19%    0.23%     │  0x00007f242c389988: cmp    0xac(%rsp),%ebp
                     │  0x00007f242c38998f: jl     0x00007f242c38a80d  ;*if_icmpge
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@28 (line 253)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.04%    0.02%     │  0x00007f242c389995: mov    %rax,%r10
                     │  0x00007f242c389998: mov    0x1c(%r10),%ebp    ;*getfield outInst
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@75 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.23%    0.29%     │  0x00007f242c38999c: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f242c38aee1
  0.13%    0.27%     │  0x00007f242c3899a1: cmp    $0xf8019843,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$AltInst&apos;)}
                     │  0x00007f242c3899a7: jne    0x00007f242c38a2a1
  0.01%    0.03%     │  0x00007f242c3899ad: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                     │  0x00007f242c3899b1: vmovq  %r10,%xmm1
  0.26%    0.36%     │  0x00007f242c3899b6: mov    0x18(%r10),%r10d   ;*getfield pc
                     │                                                ; - com.google.re2j.Inst$AltInst::add@2 (line 187)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.16%    0.18%     │  0x00007f242c3899ba: mov    %r10d,%eax
  0.03%    0.05%     │  0x00007f242c3899bd: cmp    $0x40,%r10d
                     │  0x00007f242c3899c1: jg     0x00007f242c38a8c1  ;*if_icmpgt
                     │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                     │  0x00007f242c3899c7: mov    $0x1,%esi
  0.21%    0.30%     │  0x00007f242c3899cc: mov    %r10d,%ecx
  0.15%    0.20%     │  0x00007f242c3899cf: shl    %cl,%rsi           ;*lshl
                     │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.33%    0.39%     │  0x00007f242c3899d2: mov    %rdx,%r10
  0.16%    0.24%     │  0x00007f242c3899d5: and    %rsi,%r10
  0.01%    0.01%     │  0x00007f242c3899d8: test   %r10,%r10
                     │  0x00007f242c3899db: jne    0x00007f242c389e92  ;*ifeq
                     │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                     │  0x00007f242c3899e1: mov    %ecx,%r10d
  0.21%    0.20%     │  0x00007f242c3899e4: cmp    $0x40,%r10d
                     │  0x00007f242c3899e8: jge    0x00007f242c38a901  ;*if_icmpge
                     │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.15%    0.24%     │  0x00007f242c3899ee: or     %rsi,%rdx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%    0.00%     │  0x00007f242c3899f1: vmovq  %xmm2,%r10
                     │  0x00007f242c3899f6: mov    %rdx,0x10(%r10)    ;*putfield pcsl
                     │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.21%    0.34%     │  0x00007f242c3899fa: vmovq  %xmm1,%r10
  0.18%    0.25%     │  0x00007f242c3899ff: mov    0x1c(%r10),%ebp    ;*getfield outInst
                     │                                                ; - com.google.re2j.Inst$AltInst::add@23 (line 192)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.03%    0.03%     │  0x00007f242c389a03: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f242c38af15
  0.07%    0.04%     │  0x00007f242c389a08: cmp    $0xf8019992,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                     │  0x00007f242c389a0f: jne    0x00007f242c38a2c9
  0.25%    0.35%     │  0x00007f242c389a15: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.22%    0.26%     │  0x00007f242c389a19: mov    %r10,%r14
  0.03%    0.02%     │  0x00007f242c389a1c: mov    0x18(%r10),%r10d   ;*getfield pc
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                     │  0x00007f242c389a20: mov    %r10d,%eax
  0.26%    0.35%     │  0x00007f242c389a23: cmp    $0x40,%r10d
                     │  0x00007f242c389a27: jg     0x00007f242c38a941  ;*if_icmpgt
                     │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.15%    0.22%     │  0x00007f242c389a2d: mov    $0x1,%esi
  0.00%    0.02%     │  0x00007f242c389a32: mov    %r10d,%ecx
                     │  0x00007f242c389a35: shl    %cl,%rsi           ;*lshl
                     │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.46%    0.51%     │  0x00007f242c389a38: mov    %rdx,%r10
                     │  0x00007f242c389a3b: and    %rsi,%r10          ;*land
                     │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.25%    0.24%     │  0x00007f242c389a3e: test   %r10,%r10
                     │  0x00007f242c389a41: jne    0x00007f242c389ea5  ;*ifeq
                     │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.15%    0.18%     │  0x00007f242c389a47: xor    %ebp,%ebp          ;*ireturn
                     │                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 47)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.05%    0.04%     │  0x00007f242c389a49: test   %r10,%r10
                     │  0x00007f242c389a4c: jne    0x00007f242c38a985  ;*ifeq
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%    0.01%     │  0x00007f242c389a52: mov    %ecx,%r10d
  0.29%    0.29%     │  0x00007f242c389a55: cmp    $0x40,%r10d
                     │  0x00007f242c389a59: jge    0x00007f242c38a9c1  ;*if_icmpge
                     │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.16%    0.19%     │  0x00007f242c389a5f: or     %rsi,%rdx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.05%    0.04%     │  0x00007f242c389a62: vmovq  %xmm2,%r10
  0.00%              │  0x00007f242c389a67: mov    %rdx,0x10(%r10)    ;*putfield pcsl
                     │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.26%    0.27%     │  0x00007f242c389a6b: test   %r13d,%r13d
                     │  0x00007f242c389a6e: jle    0x00007f242c38a675  ;*ifle
                     │                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.17%    0.21%     │  0x00007f242c389a74: mov    0x20(%rsp),%rcx
  0.03%    0.08%     │  0x00007f242c389a79: vmovd  %xmm6,%r10d
                     │  0x00007f242c389a7e: mov    %r10d,0xc(%rcx)    ;*putfield poolSize
                     │                                                ; - com.google.re2j.Machine::alloc@14 (line 133)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.24%    0.35%     │  0x00007f242c389a82: vmovd  %xmm0,%r10d
  0.16%    0.18%     │  0x00007f242c389a87: mov    0xc(%r12,%r10,8),%r10d  ; implicit exception: dispatches to 0x00007f242c38af35
  0.08%    0.04%     │  0x00007f242c389a8c: vmovd  %xmm6,%esi
  0.00%              │  0x00007f242c389a90: cmp    %r10d,%esi
                     │  0x00007f242c389a93: jae    0x00007f242c38a1d1
  0.19%    0.28%     │  0x00007f242c389a99: vmovd  %xmm0,%ecx
  0.17%    0.09%     │  0x00007f242c389a9d: lea    (%r12,%rcx,8),%rax
  0.04%    0.03%     │  0x00007f242c389aa1: mov    0xc(%rax,%r13,4),%ebp  ;*aaload
                     │                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                     │  0x00007f242c389aa6: test   %ebp,%ebp
                     │  0x00007f242c389aa8: je     0x00007f242c38a21d  ;*putfield inst
                     │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.15%    0.22%     │  0x00007f242c389aae: vmovq  %xmm2,%rcx
  0.20%    0.24%     │  0x00007f242c389ab3: mov    %ebx,0xc(%rcx)     ;*putfield size
                     │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.06%    0.07%     │  0x00007f242c389ab6: lea    (%r12,%rbp,8),%rsi
  0.00%              │  0x00007f242c389aba: mov    %r14,%rcx
  0.22%    0.45%     │  0x00007f242c389abd: shr    $0x3,%rcx
  0.19%    0.27%     │  0x00007f242c389ac1: mov    %ecx,0x10(%r12,%rbp,8)
  0.11%    0.16%     │  0x00007f242c389ac6: mov    %rsi,%rcx
                     │  0x00007f242c389ac9: shr    $0x9,%rcx
  0.17%    0.34%     │  0x00007f242c389acd: movabs $0x7f2427b98000,%rsi
  0.14%    0.22%     │  0x00007f242c389ad7: mov    %r12b,(%rsi,%rcx,1)  ;*putfield inst
                     │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.16%    0.21%     │  0x00007f242c389adb: cmp    %r8d,%ebx
                     │  0x00007f242c389ade: jae    0x00007f242c38a231
                     │  0x00007f242c389ae4: mov    %ebp,(%r9)         ;*aastore
                     │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.22%    0.30%     │  0x00007f242c389ae7: vmovq  %xmm1,%r8
  0.13%    0.24%     │  0x00007f242c389aec: mov    0x20(%r8),%r8d     ;*getfield argInst
                     │                                                ; - com.google.re2j.Inst$AltInst::add@41 (line 193)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.14%    0.17%     │  0x00007f242c389af0: mov    %r8d,%ecx
                     │  0x00007f242c389af3: mov    %r9,%r8
  0.20%    0.30%     │  0x00007f242c389af6: shr    $0x9,%r8
  0.12%    0.19%     │  0x00007f242c389afa: movabs $0x7f2427b98000,%r9
  0.15%    0.19%     │  0x00007f242c389b04: mov    %r12b,(%r9,%r8,1)  ;*aastore
                     │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
           0.00%     │  0x00007f242c389b08: mov    %ecx,%r8d
  0.18%    0.23%     │  0x00007f242c389b0b: mov    0x8(%r12,%r8,8),%r8d  ; implicit exception: dispatches to 0x00007f242c38af49
  0.13%    0.19%     │  0x00007f242c389b10: lea    (%r12,%rcx,8),%r9
  0.15%    0.12%     │  0x00007f242c389b14: cmp    $0xf8019886,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                    ╭│  0x00007f242c389b1b: je     0x00007f242c389c0d
           0.00%    ││  0x00007f242c389b21: cmp    $0xf8019992,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                    ││  0x00007f242c389b28: jne    0x00007f242c38a6b9  ;*invokevirtual add
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.18%    0.16%    ││  0x00007f242c389b2e: mov    %r9,%r14
  0.10%    0.09%    ││  0x00007f242c389b31: mov    0x18(%r9),%r8d     ;*getfield pc
                    ││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.11%    0.18%    ││  0x00007f242c389b35: mov    %r8d,%ecx
                    ││  0x00007f242c389b38: cmp    $0x40,%r8d
                    ││  0x00007f242c389b3c: jg     0x00007f242c38aaf9  ;*if_icmpgt
                    ││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                    ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.20%    0.27%    ││  0x00007f242c389b42: mov    $0x1,%r9d
  0.14%    0.16%    ││  0x00007f242c389b48: shl    %cl,%r9            ;*lshl
                    ││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                    ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.36%    0.42%    ││  0x00007f242c389b4b: mov    %rdx,%r8
  0.11%    0.19%    ││  0x00007f242c389b4e: and    %r9,%r8            ;*land
                    ││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                    ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.13%    0.10%    ││  0x00007f242c389b51: test   %r8,%r8
                    ││  0x00007f242c389b54: jne    0x00007f242c389eb9  ;*ifeq
                    ││                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                    ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
           0.01%    ││  0x00007f242c389b5a: xor    %ebp,%ebp          ;*ireturn
                    ││                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 47)
                    ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.15%    0.23%    ││  0x00007f242c389b5c: test   %r8,%r8
                    ││  0x00007f242c389b5f: jne    0x00007f242c38ab6d  ;*ifeq
                    ││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.11%    0.22%    ││  0x00007f242c389b65: mov    %ecx,%r8d
  0.15%    0.11%    ││  0x00007f242c389b68: cmp    $0x40,%r8d
                    ││  0x00007f242c389b6c: jge    0x00007f242c38abb1  ;*if_icmpge
                    ││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                    ││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    ││  0x00007f242c389b72: or     %r9,%rdx
  0.20%    0.28%    ││  0x00007f242c389b75: vmovq  %xmm2,%r8
  0.15%    0.16%    ││  0x00007f242c389b7a: mov    %rdx,0x10(%r8)     ;*putfield pcsl
                    ││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                    ││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.14%    0.10%    ││  0x00007f242c389b7e: vmovd  %xmm6,%r8d
                    ││  0x00007f242c389b83: test   %r8d,%r8d
                    ││  0x00007f242c389b86: jle    0x00007f242c38aa05  ;*ifle
                    ││                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                    ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.18%    0.35%    ││  0x00007f242c389b8c: mov    %r13d,%ebx
  0.15%    0.16%    ││  0x00007f242c389b8f: add    $0xfffffffe,%ebx   ;*isub
                    ││                                                ; - com.google.re2j.Machine::alloc@13 (line 133)
                    ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.10%    0.08%    ││  0x00007f242c389b92: mov    0x20(%rsp),%r8
           0.00%    ││  0x00007f242c389b97: mov    %ebx,0xc(%r8)      ;*putfield poolSize
                    ││                                                ; - com.google.re2j.Machine::alloc@14 (line 133)
                    ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.20%    0.13%    ││  0x00007f242c389b9b: cmp    %r10d,%ebx
                    ││  0x00007f242c389b9e: jae    0x00007f242c38a5b9
  0.14%    0.14%    ││  0x00007f242c389ba4: mov    0x10(%rax,%rbx,4),%r10d  ;*aaload
                    ││                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                    ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.16%    0.14%    ││  0x00007f242c389ba9: test   %r10d,%r10d
                    ││  0x00007f242c389bac: je     0x00007f242c38a615  ;*putfield inst
                    ││                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                    ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
           0.00%    ││  0x00007f242c389bb2: add    $0x18,%rdi
  0.18%    0.33%    ││  0x00007f242c389bb6: mov    %r10d,(%rdi)       ;*aastore
                    ││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    ││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.16%    0.22%    ││  0x00007f242c389bb9: lea    (%r12,%r10,8),%r11
  0.08%    0.20%    ││  0x00007f242c389bbd: mov    %rdi,%r8
                    ││  0x00007f242c389bc0: shr    $0x9,%r8
  0.19%    0.31%    ││  0x00007f242c389bc4: shr    $0x9,%r11
  0.15%    0.18%    ││  0x00007f242c389bc8: movabs $0x7f2427b98000,%r9
  0.08%    0.13%    ││  0x00007f242c389bd2: mov    %r12b,(%r9,%r11,1)  ;*putfield inst
                    ││                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                    ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%    0.07%    ││  0x00007f242c389bd6: movabs $0x7f2427b98000,%r11
  0.16%    0.28%    ││  0x00007f242c389be0: mov    %r12b,(%r11,%r8,1)  ;*aastore
                    ││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    ││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.14%    0.21%    ││  0x00007f242c389be4: mov    0x28(%rsp),%r9d
  0.12%    0.15%    ││  0x00007f242c389be9: add    $0x3,%r9d
  0.02%    0.03%    ││  0x00007f242c389bed: vmovq  %xmm2,%r11
  0.15%    0.20%    ││  0x00007f242c389bf2: mov    %r9d,0xc(%r11)     ;*putfield size
                    ││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                    ││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.06%    0.18%    ││  0x00007f242c389bf6: mov    %r14,%r8
  0.10%    0.12%    ││  0x00007f242c389bf9: shr    $0x3,%r8
  0.02%    0.01%    ││  0x00007f242c389bfd: mov    %r8d,0x10(%r12,%r10,8)  ;*putfield inst
                    ││                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                    ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.20%    0.23%    ││  0x00007f242c389c02: xor    %edx,%edx
  0.13%    0.23%    ││  0x00007f242c389c04: vmovd  %xmm0,%edi
  0.11%    0.09%    │╰  0x00007f242c389c08: jmpq   0x00007f242c38966e
                    ↘   0x00007f242c389c0d: mov    %r9,%r8            ;*invokevirtual add
                                                                      ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 276)
                        0x00007f242c389c10: mov    0x18(%r8),%ecx     ;*getfield pc
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@2 (line 248)
                                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
....................................................................................................
 62.67%   60.66%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 550 (979 bytes) 

                             0x00007f242c3afa7a: test   %r10d,%r10d
                             0x00007f242c3afa7d: jne    0x00007f242c3b0eed  ;*ifne
                                                                           ; - com.google.re2j.Machine::match@115 (line 200)
                             0x00007f242c3afa83: test   %edi,%edi
                             0x00007f242c3afa85: jl     0x00007f242c3b03ba  ;*ifge
                                                                           ; - com.google.re2j.Utils::emptyOpContext@21 (line 179)
                                                                           ; - com.google.re2j.Machine::match@121 (line 201)
                             0x00007f242c3afa8b: mov    $0x5,%r10d         ;*iload_1
                                                                           ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                                                                           ; - com.google.re2j.Machine::match@121 (line 201)
  0.01%                      0x00007f242c3afa91: cmp    $0xa,%edi
                             0x00007f242c3afa94: je     0x00007f242c3b03e8  ;*iload_0
                                                                           ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                                                                           ; - com.google.re2j.Machine::match@121 (line 201)
                             0x00007f242c3afa9a: mov    %edi,%r11d
                             0x00007f242c3afa9d: add    $0xffffffbf,%r11d
                             0x00007f242c3afaa1: cmp    $0x1a,%r11d
                  ╭          0x00007f242c3afaa5: jb     0x00007f242c3afab8  ;*if_icmple
                  │                                                        ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │                                                        ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                        ; - com.google.re2j.Machine::match@121 (line 201)
  0.00%    0.00%  │          0x00007f242c3afaa7: mov    %edi,%r8d
                  │          0x00007f242c3afaaa: add    $0xffffff9f,%r8d
                  │          0x00007f242c3afaae: cmp    $0x1a,%r8d
                  │          0x00007f242c3afab2: jae    0x00007f242c3b03f1  ;*iconst_1
                  │                                                        ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │                                                        ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                        ; - com.google.re2j.Machine::match@121 (line 201)
  0.00%    0.00%  ↘          0x00007f242c3afab8: or     $0x10,%r10d        ;*iload_2
                                                                           ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                           ; - com.google.re2j.Machine::match@121 (line 201)
  0.01%    0.01%             0x00007f242c3afabc: mov    0x40(%rsp),%r11
           0.00%             0x00007f242c3afac1: mov    0x24(%r11),%r13d   ;*getfield pool
                                                                           ; - com.google.re2j.Machine::alloc@18 (line 134)
                                                                           ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                                                           ; - com.google.re2j.Machine::match@315 (line 239)
  0.01%                      0x00007f242c3afac5: mov    0xc(%r11),%r8d     ;*getfield poolSize
                                                                           ; - com.google.re2j.Machine::alloc@1 (line 132)
                                                                           ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                                                           ; - com.google.re2j.Machine::match@315 (line 239)
                             0x00007f242c3afac9: mov    %rbx,%r11
  0.00%                      0x00007f242c3afacc: shl    $0x3,%r11          ;*getfield q1
                                                                           ; - com.google.re2j.Machine::match@53 (line 188)
                             0x00007f242c3afad0: mov    %r11,0x20(%rsp)
  0.01%                      0x00007f242c3afad5: xor    %ebx,%ebx
                             0x00007f242c3afad7: xor    %edx,%edx
  0.01%                      0x00007f242c3afad9: mov    %edx,0x60(%rsp)
                   ╭         0x00007f242c3afadd: jmpq   0x00007f242c3afc65
  0.06%    0.07%   │    ↗    0x00007f242c3afae2: or     $0x20,%r9d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                   │    │                                                  ; - com.google.re2j.Machine::match@323 (line 241)
  0.21%    0.09%   │    │    0x00007f242c3afae6: mov    %r9d,0x4c(%rsp)    ;*iload_2
                   │    │                                                  ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   │    │                                                  ; - com.google.re2j.Machine::match@323 (line 241)
  0.13%    0.14%   │    │↗   0x00007f242c3afaeb: mov    0x60(%rsp),%r10d
  0.09%    0.07%   │    ││   0x00007f242c3afaf0: cmp    0x14(%rsp),%r10d
                   │    ││   0x00007f242c3afaf5: je     0x00007f242c3b0306  ;*if_icmpne
                   │    ││                                                 ; - com.google.re2j.Machine::match@348 (line 242)
  0.15%    0.21%   │    ││   0x00007f242c3afafb: xor    %ebx,%ebx          ;*invokespecial step
                   │    ││                                                 ; - com.google.re2j.Machine::match@356 (line 242)
  0.20%    0.19%   │    ││   0x00007f242c3afafd: mov    %rax,-0x8(%rsp)
  0.10%    0.11%   │    ││   0x00007f242c3afb02: mov    0x60(%rsp),%eax
  0.06%    0.21%   │    ││   0x00007f242c3afb06: mov    %eax,0x38(%rsp)
  0.11%    0.15%   │    ││   0x00007f242c3afb0a: mov    -0x8(%rsp),%rax
  0.75%    0.50%   │    ││   0x00007f242c3afb0f: mov    %eax,0x2c(%rsp)    ;*invokevirtual endPos
                   │    ││                                                 ; - com.google.re2j.Machine::match@345 (line 242)
  0.12%    0.11%   │    ││   0x00007f242c3afb13: add    0x28(%rsp),%r10d   ;*iadd
                   │    ││                                                 ; - com.google.re2j.Machine::match@337 (line 242)
  0.20%    0.18%   │    ││   0x00007f242c3afb18: mov    %r10d,0x60(%rsp)
  0.05%    0.08%   │    ││   0x00007f242c3afb1d: mov    0x40(%rsp),%rsi
  0.19%    0.33%   │    ││   0x00007f242c3afb22: mov    0x18(%rsp),%rdx
  0.09%    0.05%   │    ││   0x00007f242c3afb27: mov    0x20(%rsp),%rcx
  0.13%    0.18%   │    ││   0x00007f242c3afb2c: mov    0x38(%rsp),%r8d
  0.14%    0.14%   │    ││   0x00007f242c3afb31: mov    %r10d,%r9d
  0.19%    0.22%   │    ││   0x00007f242c3afb34: mov    0x4c(%rsp),%r10d
  0.08%    0.07%   │    ││   0x00007f242c3afb39: mov    %r10d,(%rsp)
  0.08%    0.15%   │    ││   0x00007f242c3afb3d: mov    0x3c(%rsp),%r10d
  0.05%    0.09%   │    ││   0x00007f242c3afb42: mov    %r10d,0x8(%rsp)
  0.19%    0.29%   │    ││   0x00007f242c3afb47: mov    %ebx,0x10(%rsp)
  0.16%    0.09%   │    ││   0x00007f242c3afb4b: callq  0x00007f242c1b0020  ; OopMap{[24]=Oop [32]=Oop [52]=NarrowOop [64]=Oop [80]=Oop off=656}
                   │    ││                                                 ;*invokespecial step
                   │    ││                                                 ; - com.google.re2j.Machine::match@356 (line 242)
                   │    ││                                                 ;   {optimized virtual_call}
                   │    ││   0x00007f242c3afb50: mov    0x40(%rsp),%r10
  0.49%    0.53%   │    ││   0x00007f242c3afb55: mov    0x24(%r10),%r13d   ;*getfield pool
                   │    ││                                                 ; - com.google.re2j.Machine::freeQueue@1 (line 156)
                   │    ││                                                 ; - com.google.re2j.Machine::freeQueue@15 (line 150)
                   │    ││                                                 ; - com.google.re2j.Machine::freeQueue@3 (line 144)
                   │    ││                                                 ; - com.google.re2j.Machine::match@445 (line 263)
                   │    ││   0x00007f242c3afb59: mov    0xc(%r10),%r8d     ;*getfield poolSize
                   │    ││                                                 ; - com.google.re2j.Machine::freeQueue@8 (line 157)
                   │    ││                                                 ; - com.google.re2j.Machine::freeQueue@15 (line 150)
                   │    ││                                                 ; - com.google.re2j.Machine::freeQueue@3 (line 144)
                   │    ││                                                 ; - com.google.re2j.Machine::match@445 (line 263)
                   │    ││   0x00007f242c3afb5d: mov    0x28(%rsp),%r11d
  0.49%    0.42%   │    ││   0x00007f242c3afb62: test   %r11d,%r11d
                   │    ││   0x00007f242c3afb65: je     0x00007f242c3b0251  ;*ifne
                   │    ││                                                 ; - com.google.re2j.Machine::match@361 (line 243)
  0.00%    0.01%   │    ││   0x00007f242c3afb6b: mov    0x28(%r10),%r14d   ;*getfield matchcap
                   │    ││                                                 ; - com.google.re2j.Machine::match@368 (line 246)
                   │    ││   0x00007f242c3afb6f: mov    0xc(%r12,%r14,8),%ebp  ;*arraylength
                   │    ││                                                 ; - com.google.re2j.Machine::match@371 (line 246)
                   │    ││                                                 ; implicit exception: dispatches to 0x00007f242c3b1841
  0.02%    0.04%   │    ││   0x00007f242c3afb74: test   %ebp,%ebp
                   │    ││   0x00007f242c3afb76: jne    0x00007f242c3b072d  ;*ifne
                   │    ││                                                 ; - com.google.re2j.Machine::match@372 (line 246)
  0.42%    0.33%   │    ││   0x00007f242c3afb7c: movzbl 0x10(%r10),%ebx    ;*getfield matched
                   │    ││                                                 ; - com.google.re2j.Machine::match@376 (line 246)
                   │    ││   0x00007f242c3afb81: test   %ebx,%ebx
                   │    ││   0x00007f242c3afb83: jne    0x00007f242c3b0941  ;*ifeq
                   │    ││                                                 ; - com.google.re2j.Machine::match@379 (line 246)
                   │    ││   0x00007f242c3afb89: mov    0x50(%rsp),%r10
                   │    ││   0x00007f242c3afb8e: mov    0x10(%r10),%r11d   ;*getfield end
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                   │    ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.46%    0.28%   │    ││   0x00007f242c3afb92: mov    %r11d,0x14(%rsp)
           0.00%   │    ││   0x00007f242c3afb97: mov    0xc(%r10),%r9d     ;*getfield start
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                   │    ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.00%            │    ││   0x00007f242c3afb9b: mov    0x14(%r10),%ecx    ;*getfield str
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                   │    ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.01%    0.03%   │    ││   0x00007f242c3afb9f: mov    0x2c(%rsp),%r11d
  0.52%    0.45%   │    ││   0x00007f242c3afba4: cmp    $0xffffffff,%r11d
                   │    ││   0x00007f242c3afba8: je     0x00007f242c3b0310  ;*if_icmpeq
                   │    ││                                                 ; - com.google.re2j.Machine::match@401 (line 254)
           0.01%   │    ││   0x00007f242c3afbae: mov    0x30(%rsp),%edi
                   │    ││   0x00007f242c3afbb2: add    0x60(%rsp),%edi
           0.00%   │    ││   0x00007f242c3afbb6: add    %r9d,%edi          ;*iadd
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                   │    ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.48%    0.63%   │    ││   0x00007f242c3afbb9: cmp    0x14(%rsp),%edi
                   │    ││   0x00007f242c3afbbd: jge    0x00007f242c3b031f  ;*if_icmpge
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                   │    ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.01%    0.01%   │    ││   0x00007f242c3afbc3: mov    0x8(%r12,%rcx,8),%r11d  ; implicit exception: dispatches to 0x00007f242c3b1851
  0.02%    0.05%   │    ││   0x00007f242c3afbc8: cmp    $0xf80002da,%r11d  ;   {metadata(&apos;java/lang/String&apos;)}
                   │    ││   0x00007f242c3afbcf: jne    0x00007f242c3b05dd
  0.00%    0.06%   │    ││   0x00007f242c3afbd5: lea    (%r12,%rcx,8),%rax  ;*invokeinterface charAt
                   │    ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.40%    0.60%   │    ││   0x00007f242c3afbd9: test   %edi,%edi
                   │    ││   0x00007f242c3afbdb: jl     0x00007f242c3b0781  ;*iflt
                   │    ││                                                 ; - java.lang.String::charAt@1 (line 657)
                   │    ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
           0.01%   │    ││   0x00007f242c3afbe1: mov    0xc(%rax),%r10d    ;*getfield value
                   │    ││                                                 ; - java.lang.String::charAt@6 (line 657)
                   │    ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
                   │    ││   0x00007f242c3afbe5: mov    0xc(%r12,%r10,8),%ebp  ;*arraylength
                   │    ││                                                 ; - java.lang.String::charAt@9 (line 657)
                   │    ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
                   │    ││                                                 ; implicit exception: dispatches to 0x00007f242c3b1865
  1.20%    1.48%   │    ││   0x00007f242c3afbea: cmp    %ebp,%edi
                   │    ││   0x00007f242c3afbec: jge    0x00007f242c3b0995  ;*if_icmplt
                   │    ││                                                 ; - java.lang.String::charAt@10 (line 657)
                   │    ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.46%    0.66%   │    ││   0x00007f242c3afbf2: cmp    %ebp,%edi
                   │    ││   0x00007f242c3afbf4: jae    0x00007f242c3b0509
  0.11%    0.12%   │    ││   0x00007f242c3afbfa: shl    $0x3,%r10
                   │    ││   0x00007f242c3afbfe: movzwl 0x10(%r10,%rdi,2),%edx  ;*caload
                   │    ││                                                 ; - java.lang.String::charAt@27 (line 660)
                   │    ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.03%    0.04%   │    ││   0x00007f242c3afc04: cmp    $0xd800,%edx
                   │    ││   0x00007f242c3afc0a: jge    0x00007f242c3b0a0d  ;*if_icmplt
                   │    ││                                                 ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   │    ││                                                 ; - java.lang.Character::codePointAt@9 (line 4867)
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.41%    0.57%   │    ││   0x00007f242c3afc10: shl    $0x3,%edx          ;*ishl
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                   │    ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.10%    0.08%   │    ││   0x00007f242c3afc13: mov    %edx,%r11d
                   │    ││   0x00007f242c3afc16: or     $0x1,%r11d
  0.32%    0.41%   │    ││   0x00007f242c3afc1a: and    $0x7,%edx
  0.16%    0.23%   │    ││   0x00007f242c3afc1d: sar    $0x3,%r11d         ;*ishr
                   │    ││                                                 ; - com.google.re2j.Machine::match@417 (line 256)
  0.22%    0.42%   │    ││   0x00007f242c3afc21: or     $0x1,%edx          ; OopMap{rcx=NarrowOop r13=NarrowOop r14=NarrowOop [24]=Oop [32]=Oop [64]=Oop [80]=Oop off=868}
                   │    ││                                                 ;*goto
                   │    ││                                                 ; - com.google.re2j.Machine::match@439 (line 262)
           0.01%   │    ││   0x00007f242c3afc24: test   %eax,0x15f053d6(%rip)        # 0x00007f24422b5000
                   │    ││                                                 ;*goto
                   │    ││                                                 ; - com.google.re2j.Machine::match@439 (line 262)
                   │    ││                                                 ;   {poll}
  0.01%    0.00%   │    ││   0x00007f242c3afc2a: mov    0x40(%rsp),%r10
  0.17%    0.18%   │    ││   0x00007f242c3afc2f: mov    0x14(%r10),%esi    ;*getfield re2
                   │    ││                                                 ; - com.google.re2j.Machine::match@169 (line 216)
  0.29%    0.36%   │    ││   0x00007f242c3afc33: mov    0x20(%rsp),%r10
           0.01%   │    ││   0x00007f242c3afc38: shr    $0x3,%r10
                   │    ││   0x00007f242c3afc3c: mov    %r10d,0x34(%rsp)
  0.13%    0.19%   │    ││   0x00007f242c3afc41: mov    0x4c(%rsp),%r10d
  0.25%    0.28%   │    ││   0x00007f242c3afc46: mov    0x2c(%rsp),%edi
                   │    ││   0x00007f242c3afc4a: mov    %r11d,%eax
                   │    ││   0x00007f242c3afc4d: mov    0x18(%rsp),%r11
  0.14%    0.20%   │    ││   0x00007f242c3afc52: mov    %r11,0x20(%rsp)
  0.27%    0.32%   │    ││   0x00007f242c3afc57: mov    0x30(%rsp),%r11d
  0.00%    0.01%   │    ││   0x00007f242c3afc5c: mov    %r11d,0x28(%rsp)
                   │    ││   0x00007f242c3afc61: mov    %edx,0x30(%rsp)
  0.10%    0.25%   ↘    ││   0x00007f242c3afc65: mov    0x34(%rsp),%r11d
  0.26%    0.37%        ││   0x00007f242c3afc6a: movzbl 0x18(%r12,%r11,8),%r11d  ; implicit exception: dispatches to 0x00007f242c3b17cd
  0.01%    0.01%        ││   0x00007f242c3afc70: mov    0x34(%rsp),%edx
                        ││   0x00007f242c3afc74: shl    $0x3,%rdx          ;*aload
                        ││                                                 ; - com.google.re2j.Machine::match@136 (line 207)
  0.22%    0.19%        ││   0x00007f242c3afc78: mov    %rdx,0x18(%rsp)
  0.27%    0.41%        ││   0x00007f242c3afc7d: test   %r11d,%r11d
  0.00%    0.00%        ││   0x00007f242c3afc80: jne    0x00007f242c3aff1a  ;*aload_0
                        ││                                                 ; - com.google.re2j.Machine::match@267 (line 233)
           0.00%        ││   0x00007f242c3afc86: test   %ebx,%ebx
                        ││   0x00007f242c3afc88: jne    0x00007f242c3b0645  ;*ifne
                        ││                                                 ; - com.google.re2j.Machine::match@271 (line 233)
  0.15%    0.19%        ││   0x00007f242c3afc8e: mov    0x60(%rsp),%r11d
  0.24%    0.41%        ││   0x00007f242c3afc93: test   %r11d,%r11d
                    ╭   ││   0x00007f242c3afc96: je     0x00007f242c3afca6  ;*ifeq
                    │   ││                                                 ; - com.google.re2j.Machine::match@275 (line 233)
           0.01%    │   ││   0x00007f242c3afc98: mov    0x3c(%rsp),%r9d
  0.00%    0.01%    │   ││   0x00007f242c3afc9d: test   %r9d,%r9d
                    │   ││   0x00007f242c3afca0: jne    0x00007f242c3b06e5  ;*aload_0
                    │   ││                                                 ; - com.google.re2j.Machine::match@282 (line 236)
  0.06%    0.15%    ↘   ││   0x00007f242c3afca6: mov    0xc(%r12,%r14,8),%ebp  ;*arraylength
                        ││                                                 ; - com.google.re2j.Machine::match@286 (line 236)
                        ││                                                 ; implicit exception: dispatches to 0x00007f242c3b17dd
  0.30%    0.41%        ││   0x00007f242c3afcab: test   %ebp,%ebp
                        ││   0x00007f242c3afcad: jg     0x00007f242c3b07fd  ;*ifle
                        ││                                                 ; - com.google.re2j.Machine::match@287 (line 236)
           0.00%        ││   0x00007f242c3afcb3: mov    0x40(%rsp),%r11
  0.00%    0.01%        ││   0x00007f242c3afcb8: mov    0x18(%r11),%r11d   ;*getfield prog
                        ││                                                 ; - com.google.re2j.Machine::match@298 (line 239)
  0.18%    0.23%        ││   0x00007f242c3afcbc: mov    0x1c(%r12,%r11,8),%ebp  ;*getfield startInst
                        ││                                                 ; - com.google.re2j.Machine::match@301 (line 239)
                        ││                                                 ; implicit exception: dispatches to 0x00007f242c3b17ed
  0.24%    0.44%        ││   0x00007f242c3afcc1: mov    0x8(%r12,%rbp,8),%r9d  ; implicit exception: dispatches to 0x00007f242c3b17fd
  0.27%    0.31%        ││   0x00007f242c3afcc6: cmp    $0xf8019992,%r9d   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                        ││   0x00007f242c3afccd: jne    0x00007f242c3b0589
  0.25%    0.31%        ││   0x00007f242c3afcd3: lea    (%r12,%rbp,8),%r9  ;*invokevirtual add
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.06%    0.04%        ││   0x00007f242c3afcd7: mov    0x18(%r9),%ecx     ;*getfield pc
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.14%    0.21%        ││   0x00007f242c3afcdb: cmp    $0x40,%ecx
                        ││   0x00007f242c3afcde: jg     0x00007f242c3b084d  ;*if_icmpgt
                        ││                                                 ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.29%    0.25%        ││   0x00007f242c3afce4: mov    $0x1,%r11d
  0.01%    0.02%        ││   0x00007f242c3afcea: shl    %cl,%r11           ;*lshl
                        ││                                                 ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.85%    0.55%        ││   0x00007f242c3afced: mov    0x34(%rsp),%r10d
                        ││   0x00007f242c3afcf2: mov    0x10(%r12,%r10,8),%rbx  ;*getfield pcsl
                        ││                                                 ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.03%                 ││   0x00007f242c3afcf7: mov    %rbx,%r10
  0.04%    0.02%        ││   0x00007f242c3afcfa: and    %r11,%r10          ;*land
                        ││                                                 ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.33%    0.23%        ││   0x00007f242c3afcfd: test   %r10,%r10
  0.08%    0.03%        ││   0x00007f242c3afd00: jne    0x00007f242c3b03b0  ;*ifeq
                        ││                                                 ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.29%    0.28%        ││   0x00007f242c3afd06: xor    %ebp,%ebp          ;*ireturn
                        ││                                                 ; - com.google.re2j.Machine$Queue::contains@24 (line 47)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.06%    0.01%        ││   0x00007f242c3afd08: test   %r10,%r10
                        ││   0x00007f242c3afd0b: jne    0x00007f242c3b089d  ;*ifeq
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.06%    0.07%        ││   0x00007f242c3afd11: cmp    $0x40,%ecx
                        ││   0x00007f242c3afd14: jge    0x00007f242c3b08f1  ;*if_icmpge
                        ││                                                 ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.01%    0.03%        ││   0x00007f242c3afd1a: mov    0x34(%rsp),%ecx
  0.33%    0.27%        ││   0x00007f242c3afd1e: mov    %r12b,0x18(%r12,%rcx,8)  ;*putfield empty
                        ││                                                 ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.05%                 ││   0x00007f242c3afd23: or     %rbx,%r11
  0.04%    0.06%        ││   0x00007f242c3afd26: mov    %r11,0x10(%r12,%rcx,8)  ;*putfield pcsl
                        ││                                                 ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.01%    0.01%        ││   0x00007f242c3afd2b: test   %r8d,%r8d
                        ││   0x00007f242c3afd2e: jle    0x00007f242c3b0691  ;*ifle
                        ││                                                 ; - com.google.re2j.Machine::alloc@4 (line 132)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.30%    0.30%        ││   0x00007f242c3afd34: mov    %r8d,%ebp
  0.04%    0.02%        ││   0x00007f242c3afd37: dec    %ebp               ;*isub
                        ││                                                 ; - com.google.re2j.Machine::alloc@13 (line 133)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.10%    0.04%        ││   0x00007f242c3afd39: mov    0x40(%rsp),%r10
  0.03%    0.02%        ││   0x00007f242c3afd3e: mov    %ebp,0xc(%r10)     ;*putfield poolSize
                        ││                                                 ; - com.google.re2j.Machine::alloc@14 (line 133)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.38%    0.29%        ││   0x00007f242c3afd42: mov    0xc(%r12,%r13,8),%r11d  ; implicit exception: dispatches to 0x00007f242c3b1819
  0.06%    0.11%        ││   0x00007f242c3afd47: cmp    %r11d,%ebp
                        ││   0x00007f242c3afd4a: jae    0x00007f242c3b043a
  0.09%    0.07%        ││   0x00007f242c3afd50: lea    (%r12,%r13,8),%r10
  0.01%    0.03%        ││   0x00007f242c3afd54: mov    0xc(%r10,%r8,4),%r8d  ;*aaload
                        ││                                                 ; - com.google.re2j.Machine::alloc@25 (line 134)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.33%    0.35%        ││   0x00007f242c3afd59: test   %r8d,%r8d
                        ││   0x00007f242c3afd5c: je     0x00007f242c3b0485  ;*putfield inst
                        ││                                                 ; - com.google.re2j.Machine::alloc@45 (line 138)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.06%    0.05%        ││   0x00007f242c3afd62: mov    0x20(%r12,%rcx,8),%ecx  ;*getfield denseThreads
                        ││                                                 ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.04%    0.06%        ││   0x00007f242c3afd67: mov    0x34(%rsp),%r11d
  0.05%    0.01%        ││   0x00007f242c3afd6c: mov    0xc(%r12,%r11,8),%ebx  ;*getfield size
                        ││                                                 ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.31%    0.37%        ││   0x00007f242c3afd71: lea    (%r12,%r8,8),%r10
  0.05%    0.01%        ││   0x00007f242c3afd75: mov    %ebx,%r11d
  0.06%    0.08%        ││   0x00007f242c3afd78: inc    %r11d
  0.02%    0.03%        ││   0x00007f242c3afd7b: mov    0x34(%rsp),%esi
  0.36%    0.43%        ││   0x00007f242c3afd7f: mov    %r11d,0xc(%r12,%rsi,8)  ;*putfield size
                        ││                                                 ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.06%    0.03%        ││   0x00007f242c3afd84: mov    %r9,%r11
  0.07%    0.08%        ││   0x00007f242c3afd87: shr    $0x3,%r11
  0.04%    0.01%        ││   0x00007f242c3afd8b: mov    %r11d,0x10(%r12,%r8,8)
  0.37%    0.41%        ││   0x00007f242c3afd90: shr    $0x9,%r10
  0.06%    0.06%        ││   0x00007f242c3afd94: movabs $0x7f2427b98000,%r11
  0.03%    0.04%        ││   0x00007f242c3afd9e: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                        ││                                                 ; - com.google.re2j.Machine::alloc@45 (line 138)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
           0.04%        ││   0x00007f242c3afda2: mov    0xc(%r12,%rcx,8),%r10d  ; implicit exception: dispatches to 0x00007f242c3b1829
  0.26%    0.35%        ││   0x00007f242c3afda7: cmp    %r10d,%ebx
                        ││   0x00007f242c3afdaa: jae    0x00007f242c3b0499  ;*aastore
                        ││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.08%    0.05%        ││   0x00007f242c3afdb0: test   %edi,%edi
                     ╭  ││   0x00007f242c3afdb2: jl     0x00007f242c3afe51  ;*ifge
                     │  ││                                                 ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                     │  ││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.05%    0.07%     │  ││   0x00007f242c3afdb8: xor    %r9d,%r9d          ;*iload_0
                     │  ││                                                 ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                     │  ││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.01%    0.04%     │  ││↗  0x00007f242c3afdbb: cmp    $0xa,%edi
                     │  │││  0x00007f242c3afdbe: je     0x00007f242c3b032c  ;*iload_1
                     │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                     │  │││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.24%    0.36%     │  │││  0x00007f242c3afdc4: test   %eax,%eax
                     │  │││  0x00007f242c3afdc6: jl     0x00007f242c3b0158  ;*iload_1
                     │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                     │  │││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.08%    0.05%     │  │││  0x00007f242c3afdcc: cmp    $0xa,%eax
                     │  │││  0x00007f242c3afdcf: je     0x00007f242c3b0335  ;*iload_0
                     │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                     │  │││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.04%    0.05%     │  │││  0x00007f242c3afdd5: mov    %edi,%r11d
  0.01%    0.03%     │  │││  0x00007f242c3afdd8: add    $0xffffffbf,%r11d
  0.22%    0.43%     │  │││  0x00007f242c3afddc: lea    (%r12,%rcx,8),%r10  ;*getfield denseThreads
                     │  │││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                     │  │││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │  │││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.08%    0.06%     │  │││  0x00007f242c3afde0: lea    0x10(%r10,%rbx,4),%r10
  0.05%    0.08%     │  │││  0x00007f242c3afde5: mov    %r8d,(%r10)
  0.11%    0.11%     │  │││  0x00007f242c3afde8: shr    $0x9,%r10
  0.25%    0.27%     │  │││  0x00007f242c3afdec: movabs $0x7f2427b98000,%r8
  0.03%    0.04%     │  │││  0x00007f242c3afdf6: mov    %r12b,(%r8,%r10,1)  ;*aastore
                     │  │││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                     │  │││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │  │││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.15%    0.10%     │  │││  0x00007f242c3afdfa: cmp    $0x1a,%r11d
                     │╭ │││  0x00007f242c3afdfe: jb     0x00007f242c3afe11  ;*if_icmple
                     ││ │││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                     ││ │││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     ││ │││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.06%    0.07%     ││ │││  0x00007f242c3afe00: mov    %edi,%r11d
  0.29%    0.33%     ││ │││  0x00007f242c3afe03: add    $0xffffff9f,%r11d
  0.02%    0.05%     ││ │││  0x00007f242c3afe07: cmp    $0x1a,%r11d
                     ││ │││  0x00007f242c3afe0b: jae    0x00007f242c3b036d  ;*iconst_1
                     ││ │││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                     ││ │││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     ││ │││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.08%    0.06%     │↘ │││  0x00007f242c3afe11: mov    $0x1,%ebp          ;*ireturn
                     │  │││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                     │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     │  │││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.06%    0.07%     │  │││  0x00007f242c3afe16: mov    %eax,%r10d
  0.24%    0.25%     │  │││  0x00007f242c3afe19: add    $0xffffffbf,%r10d
  0.04%    0.06%     │  │││  0x00007f242c3afe1d: cmp    $0x1a,%r10d
                     │ ╭│││  0x00007f242c3afe21: jb     0x00007f242c3afe34  ;*if_icmple
                     │ ││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                     │ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     │ ││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.10%    0.07%     │ ││││  0x00007f242c3afe23: mov    %eax,%r11d
  0.08%    0.07%     │ ││││  0x00007f242c3afe26: add    $0xffffff9f,%r11d
  0.20%    0.18%     │ ││││  0x00007f242c3afe2a: cmp    $0x1a,%r11d
                     │ ││││  0x00007f242c3afe2e: jae    0x00007f242c3b038e  ;*iconst_1
                     │ ││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                     │ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     │ ││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.02%    0.03%     │ ↘│││  0x00007f242c3afe34: mov    $0x1,%r10d         ;*ireturn
                     │  │││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                     │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     │  │││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.12%    0.09%     │  │││  0x00007f242c3afe3a: cmp    %r10d,%ebp
                     │  ╰││  0x00007f242c3afe3d: je     0x00007f242c3afae2  ;*if_icmpeq
                     │   ││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                     │   ││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.11%    0.11%     │   ││  0x00007f242c3afe43: or     $0x10,%r9d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                     │   ││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.01%    0.00%     │   ││  0x00007f242c3afe47: mov    %r9d,0x4c(%rsp)
  0.20%    0.38%     │   ╰│  0x00007f242c3afe4c: jmpq   0x00007f242c3afaeb
                     ↘    │  0x00007f242c3afe51: mov    $0x5,%r9d
                          ╰  0x00007f242c3afe57: jmpq   0x00007f242c3afdbb
                             0x00007f242c3afe5c: nopl   0x0(%rax)
           0.00%             0x00007f242c3afe60: mov    %eax,0x5c(%rsp)
  0.00%    0.00%             0x00007f242c3afe64: jmpq   0x00007f242c3b00a6
                             0x00007f242c3afe69: mov    0x5c(%rsp),%esi
                             0x00007f242c3afe6d: add    $0x2,%esi
                             0x00007f242c3afe70: mov    %esi,0x5c(%rsp)
                             0x00007f242c3afe74: mov    0x5c(%rsp),%esi
                             0x00007f242c3afe78: inc    %esi
                             0x00007f242c3afe7a: mov    %esi,0x58(%rsp)
                             0x00007f242c3afe7e: jmp    0x00007f242c3afea2
                             0x00007f242c3afe80: mov    0x5c(%rsp),%esi
                             0x00007f242c3afe84: add    $0x2,%esi
                             0x00007f242c3afe87: mov    %esi,0x58(%rsp)
....................................................................................................
 22.73%   25.48%  <total for region 2>

....[Hottest Regions]...............................................................................
 62.67%   60.66%         C2, level 4  com.google.re2j.Machine::step, version 500 (1434 bytes) 
 22.73%   25.48%         C2, level 4  com.google.re2j.Machine::match, version 550 (979 bytes) 
  4.77%    4.96%         C2, level 4  com.google.re2j.Machine::step, version 500 (381 bytes) 
  3.68%    4.65%         C2, level 4  com.google.re2j.Machine::step, version 500 (111 bytes) 
  1.31%    0.24%         C2, level 4  com.google.re2j.Machine::init, version 541 (312 bytes) 
  0.56%    0.60%         C2, level 4  com.google.re2j.Machine::match, version 550 (267 bytes) 
  0.55%    0.54%   [kernel.kallsyms]  [unknown] (5 bytes) 
  0.19%    0.05%         C2, level 4  com.google.re2j.Machine::init, version 541 (61 bytes) 
  0.19%    0.10%         C2, level 4  com.google.re2j.Machine::match, version 550 (182 bytes) 
  0.19%    0.06%         C2, level 4  com.google.re2j.Machine::init, version 541 (107 bytes) 
  0.11%    0.00%   [kernel.kallsyms]  [unknown] (45 bytes) 
  0.11%    0.08%         C2, level 4  com.google.re2j.RE2::match, version 564 (28 bytes) 
  0.09%    0.07%         C2, level 4  com.google.re2j.RE2::match, version 564 (9 bytes) 
  0.08%    0.05%         C2, level 4  com.google.re2j.RE2::match, version 564 (0 bytes) 
  0.08%                  C2, level 4  com.google.re2j.RE2::match, version 564 (190 bytes) 
  0.07%    0.02%   [kernel.kallsyms]  [unknown] (22 bytes) 
  0.07%    0.10%         C2, level 4  com.google.re2j.Machine::match, version 550 (210 bytes) 
  0.06%    0.05%         C2, level 4  com.google.re2j.RE2::match, version 564 (0 bytes) 
  0.06%    0.06%         C2, level 4  com.google.re2j.Machine::match, version 550 (189 bytes) 
  0.05%    0.03%   [kernel.kallsyms]  [unknown] (4 bytes) 
  2.37%    2.18%  <...other 459 warm regions...>
....................................................................................................
 99.99%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 71.12%   70.27%         C2, level 4  com.google.re2j.Machine::step, version 500 
 23.72%   26.40%         C2, level 4  com.google.re2j.Machine::match, version 550 
  1.74%    1.59%   [kernel.kallsyms]  [unknown] 
  1.72%    0.36%         C2, level 4  com.google.re2j.Machine::init, version 541 
  0.49%    0.28%         C2, level 4  com.google.re2j.RE2::match, version 564 
  0.16%    0.08%         C2, level 4  java.util.Collections::shuffle, version 570 
  0.08%    0.04%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 611 
  0.06%    0.03%              [vdso]  [unknown] 
  0.05%    0.04%      hsdis-amd64.so  [unknown] 
  0.04%    0.03%        libc-2.26.so  _IO_fwrite 
  0.03%    0.06%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.03%    0.01%           libjvm.so  _ZN19GenericTaskQueueSetI17OverflowTaskQueueI8StarTaskL10MemoryType1ELj131072EELS2_1EE15steal_best_of_2EjPiRS1_ 
  0.03%    0.01%        runtime stub  StubRoutines::oop_disjoint_arraycopy 
  0.03%    0.07%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.02%                  C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 569 
  0.02%    0.07%        libc-2.26.so  vfprintf 
  0.02%    0.00%  libpthread-2.26.so  pthread_cond_timedwait@@GLIBC_2.3.2 
  0.02%    0.03%        libc-2.26.so  _IO_default_xsputn 
  0.02%    0.02%           libjvm.so  _ZN11StringTable17unlink_or_oops_doEP17BoolObjectClosureP10OopClosurePiS4_ 
  0.02%    0.03%           libjvm.so  _ZN12outputStream15update_positionEPKcm 
  0.54%    0.32%  <...other 75 warm methods...>
....................................................................................................
 99.99%   99.76%  <totals>

....[Distribution by Source]........................................................................
 97.32%   97.44%         C2, level 4
  1.74%    1.59%   [kernel.kallsyms]
  0.47%    0.52%           libjvm.so
  0.17%    0.28%        libc-2.26.so
  0.08%    0.05%  libpthread-2.26.so
  0.06%    0.03%              [vdso]
  0.06%    0.03%        runtime stub
  0.05%    0.04%      hsdis-amd64.so
  0.02%    0.01%         interpreter
  0.01%                  C1, level 3
  0.00%                    libnet.so
....................................................................................................
 99.99%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                     Mode  Cnt      Score    Error  Units
Re2jFindRegex.testExp1       thrpt   20  13902.842 ± 24.497  ops/s
Re2jFindRegex.testExp1:·asm  thrpt             NaN             ---
