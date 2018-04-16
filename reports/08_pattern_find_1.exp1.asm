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
# Warmup Iteration   1: 8638.973 ops/s
# Warmup Iteration   2: 18659.770 ops/s
# Warmup Iteration   3: 18877.888 ops/s
# Warmup Iteration   4: 18815.402 ops/s
# Warmup Iteration   5: 18584.204 ops/s
# Warmup Iteration   6: 18622.226 ops/s
# Warmup Iteration   7: 19093.826 ops/s
# Warmup Iteration   8: 19019.067 ops/s
# Warmup Iteration   9: 19246.111 ops/s
# Warmup Iteration  10: 19222.149 ops/s
# Warmup Iteration  11: 18865.180 ops/s
# Warmup Iteration  12: 19321.950 ops/s
# Warmup Iteration  13: 19217.878 ops/s
# Warmup Iteration  14: 19324.735 ops/s
# Warmup Iteration  15: 19355.866 ops/s
# Warmup Iteration  16: 19360.017 ops/s
# Warmup Iteration  17: 19176.719 ops/s
# Warmup Iteration  18: 19064.693 ops/s
# Warmup Iteration  19: 19303.089 ops/s
# Warmup Iteration  20: 19382.182 ops/s
Iteration   1: 19345.461 ops/s
Iteration   2: 19238.491 ops/s
Iteration   3: 19113.198 ops/s
Iteration   4: 19168.746 ops/s
Iteration   5: 19284.202 ops/s
Iteration   6: 19307.274 ops/s
Iteration   7: 19268.062 ops/s
Iteration   8: 19189.662 ops/s
Iteration   9: 19344.943 ops/s
Iteration  10: 19299.756 ops/s
Iteration  11: 19376.292 ops/s
Iteration  12: 19332.036 ops/s
Iteration  13: 19190.596 ops/s
Iteration  14: 19382.455 ops/s
Iteration  15: 19385.845 ops/s
Iteration  16: 19271.097 ops/s
Iteration  17: 19313.277 ops/s
Iteration  18: 19204.055 ops/s
Iteration  19: 19372.915 ops/s
Iteration  20: 19338.451 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  19286.341 ±(99.9%) 68.939 ops/s [Average]
  (min, avg, max) = (19113.198, 19286.341, 19385.845), stdev = 79.391
  CI (99.9%): [19217.401, 19355.280] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1:·asm":
PrintAssembly processed: 206663 total address lines.
Perf output processed (skipped 22.936 seconds):
 Column 1: cycles (20248 events)
 Column 2: instructions (20322 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 529 (1345 bytes) 

                        0x00007f5ef523b457: mov    %r12b,(%r11,%r10,1)  ;*aastore
                                                                      ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                      ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 276)
                        0x00007f5ef523b45b: xor    %r9d,%r9d
                        0x00007f5ef523b45e: mov    0x20(%rsp),%r13
                        0x00007f5ef523b463: vmovd  %xmm5,%ebx
                        0x00007f5ef523b467: vmovd  %xmm2,%edi         ;*synchronization entry
                                                                      ; - com.google.re2j.Machine::step@-1 (line 276)
  0.18%    0.25%   ↗ ↗  0x00007f5ef523b46b: mov    0xa4(%rsp),%eax
  0.29%    0.43%   │ │  0x00007f5ef523b472: mov    0xac(%rsp),%r10d   ;*aload
                   │ │                                                ; - com.google.re2j.Machine::step@216 (line 302)
  1.37%    1.60%   │ │  0x00007f5ef523b47a: test   %r9,%r9
                  ╭│ │  0x00007f5ef523b47d: je     0x00007f5ef523b4c3  ;*ifnull
                  ││ │                                                ; - com.google.re2j.Machine::step@218 (line 302)
                  ││ │  0x00007f5ef523b47f: mov    0xc(%r12,%rdi,8),%ebp  ;*arraylength
                  ││ │                                                ; - com.google.re2j.Machine::free@8 (line 167)
                  ││ │                                                ; - com.google.re2j.Machine::step@224 (line 303)
                  ││ │                                                ; implicit exception: dispatches to 0x00007f5ef523ced9
  0.00%    0.00%  ││ │  0x00007f5ef523b484: cmp    %ebp,%ebx
                  ││ │  0x00007f5ef523b486: jge    0x00007f5ef523be2d  ;*if_icmplt
                  ││ │                                                ; - com.google.re2j.Machine::free@9 (line 167)
                  ││ │                                                ; - com.google.re2j.Machine::step@224 (line 303)
                  ││ │  0x00007f5ef523b48c: mov    %ebx,%r11d
  1.52%    1.85%  ││ │  0x00007f5ef523b48f: inc    %r11d
                  ││ │  0x00007f5ef523b492: mov    %r11d,0xc(%r13)    ;*putfield poolSize
                  ││ │                                                ; - com.google.re2j.Machine::free@45 (line 170)
                  ││ │                                                ; - com.google.re2j.Machine::step@224 (line 303)
                  ││ │  0x00007f5ef523b496: cmp    %ebp,%ebx
                  ││ │  0x00007f5ef523b498: jae    0x00007f5ef523bc99  ;*aastore
                  ││ │                                                ; - com.google.re2j.Machine::free@49 (line 170)
                  ││ │                                                ; - com.google.re2j.Machine::step@224 (line 303)
                  ││ │  0x00007f5ef523b49e: mov    %r9,%r8
  1.36%    1.83%  ││ │  0x00007f5ef523b4a1: shr    $0x3,%r8
                  ││ │  0x00007f5ef523b4a5: lea    (%r12,%rdi,8),%r11  ;*getfield pool
                  ││ │                                                ; - com.google.re2j.Machine::free@5 (line 167)
                  ││ │                                                ; - com.google.re2j.Machine::step@224 (line 303)
           0.00%  ││ │  0x00007f5ef523b4a9: lea    0x10(%r11,%rbx,4),%r11
                  ││ │  0x00007f5ef523b4ae: mov    %r8d,(%r11)
  1.41%    1.61%  ││ │  0x00007f5ef523b4b1: shr    $0x9,%r11
                  ││ │  0x00007f5ef523b4b5: movabs $0x7f5f063ce000,%r8
           0.00%  ││ │  0x00007f5ef523b4bf: mov    %r12b,(%r8,%r11,1)  ;*goto
                  ││ │                                                ; - com.google.re2j.Machine::step@230 (line 277)
  0.23%    0.20%  ↘│ │  0x00007f5ef523b4c3: mov    0x8(%rsp),%r11
  1.45%    1.69%   │ │  0x00007f5ef523b4c8: mov    0xc(%r11),%r11d    ;*getfield size
                   │ │                                                ; - com.google.re2j.Machine::step@15 (line 277)
  0.30%    0.39%   │ │  0x00007f5ef523b4cc: inc    %r10d              ; OopMap{r13=Oop r14=Oop [8]=Oop off=495}
                   │ │                                                ;*goto
                   │ │                                                ; - com.google.re2j.Machine::step@230 (line 277)
  0.00%    0.01%   │ │  0x00007f5ef523b4cf: test   %eax,0x1878ab2b(%rip)        # 0x00007f5f0d9c6000
                   │ │                                                ;*goto
                   │ │                                                ; - com.google.re2j.Machine::step@230 (line 277)
                   │ │                                                ;   {poll}
  0.19%    0.25%   │ │  0x00007f5ef523b4d5: cmp    %r11d,%r10d
                   │ │  0x00007f5ef523b4d8: jge    0x00007f5ef523bac5  ;*aload_1
                   │ │                                                ; - com.google.re2j.Machine::step@21 (line 278)
  1.04%    1.14%   │ │  0x00007f5ef523b4de: mov    0x8(%rsp),%r11
  0.54%    0.46%   │ │  0x00007f5ef523b4e3: mov    0x20(%r11),%r8d    ;*getfield denseThreads
                   │ │                                                ; - com.google.re2j.Machine::step@22 (line 278)
  0.22%    0.45%   │ │  0x00007f5ef523b4e7: mov    0xc(%r12,%r8,8),%r9d  ; implicit exception: dispatches to 0x00007f5ef523cea5
  1.71%    2.09%   │ │  0x00007f5ef523b4ec: cmp    %r9d,%r10d
                   │ │  0x00007f5ef523b4ef: jae    0x00007f5ef523bc07
  1.48%    1.93%   │ │  0x00007f5ef523b4f5: lea    (%r12,%r8,8),%r11
  0.33%    0.33%   │ │  0x00007f5ef523b4f9: mov    0x10(%r11,%r10,4),%r11d  ;*aaload
                   │ │                                                ; - com.google.re2j.Machine::step@27 (line 278)
  0.04%    0.06%   │ │  0x00007f5ef523b4fe: mov    0x10(%r12,%r11,8),%ebp  ;*getfield inst
                   │ │                                                ; - com.google.re2j.Machine::step@78 (line 283)
                   │ │                                                ; implicit exception: dispatches to 0x00007f5ef523ceb9
  2.82%    3.15%   │ │  0x00007f5ef523b503: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007f5ef523cec9
  5.28%    5.41%   │ │  0x00007f5ef523b508: cmp    $0xf8019992,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                   │ │  0x00007f5ef523b50f: jne    0x00007f5ef523bc51
  1.24%    1.48%   │ │  0x00007f5ef523b515: lea    (%r12,%rbp,8),%rcx  ;*invokevirtual isMatch
                   │ │                                                ; - com.google.re2j.Machine::step@85 (line 285)
                   │ │  0x00007f5ef523b519: mov    0xc(%rcx),%r8d     ;*getfield op
                   │ │                                                ; - com.google.re2j.Inst::isMatch@1 (line 78)
                   │ │                                                ; - com.google.re2j.Inst$MatchInst::isMatch@1 (line 82)
                   │ │                                                ; - com.google.re2j.Machine::step@85 (line 285)
                   │ │  0x00007f5ef523b51d: cmp    $0x6,%r8d
                   │ │  0x00007f5ef523b521: je     0x00007f5ef523bced  ;*if_icmpne
                   │ │                                                ; - com.google.re2j.Inst::isMatch@6 (line 78)
                   │ │                                                ; - com.google.re2j.Inst$MatchInst::isMatch@1 (line 82)
                   │ │                                                ; - com.google.re2j.Machine::step@85 (line 285)
  1.90%    1.86%   │ │  0x00007f5ef523b527: mov    0xc(%r13),%ebx     ;*getfield poolSize
                   │ │                                                ; - com.google.re2j.Machine::alloc@1 (line 132)
                   │ │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                   │ │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                   │ │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.15%    0.07%   │ │  0x00007f5ef523b52b: mov    0x24(%r13),%edi    ;*getfield pool
                   │ │                                                ; - com.google.re2j.Machine::alloc@18 (line 134)
                   │ │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                   │ │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                   │ │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                   │ │  0x00007f5ef523b52f: lea    (%r12,%r11,8),%r9  ;*aaload
                   │ │                                                ; - com.google.re2j.Machine::step@27 (line 278)
  0.00%            │ │  0x00007f5ef523b533: cmp    $0xa,%r8d
                   │ │  0x00007f5ef523b537: jne    0x00007f5ef523ba5a  ;*if_icmpne
                   │ │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@6 (line 134)
                   │ │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.47%    0.40%   │ │  0x00007f5ef523b53d: mov    0x1c(%rcx),%ecx    ;*getfield outInst
                   │ │                                                ; - com.google.re2j.Machine::step@195 (line 300)
  0.03%    0.00%   │ │  0x00007f5ef523b540: mov    0xc(%r12,%r11,8),%r8d  ;*getfield cap
                   │ │                                                ; - com.google.re2j.Machine::step@203 (line 300)
  0.01%            │ │  0x00007f5ef523b545: mov    0x8(%r12,%rcx,8),%esi  ; implicit exception: dispatches to 0x00007f5ef523cee9
  1.55%    0.33%   │ │  0x00007f5ef523b54a: lea    (%r12,%rcx,8),%rdx
  0.01%    0.01%   │ │  0x00007f5ef523b54e: cmp    $0xf8019843,%esi   ;   {metadata(&apos;com/google/re2j/Inst$AltInst&apos;)}
                   │ │  0x00007f5ef523b554: jne    0x00007f5ef523bafc  ;*invokevirtual add
                   │ │                                                ; - com.google.re2j.Machine::step@211 (line 300)
  0.46%    0.15%   │ │  0x00007f5ef523b55a: mov    0x18(%rdx),%ecx    ;*getfield pc
                   │ │                                                ; - com.google.re2j.Inst$AltInst::add@2 (line 187)
                   │ │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.04%    0.02%   │ │  0x00007f5ef523b55d: mov    0x10(%r14),%rsi    ;*getfield pcsl
                   │ │                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                   │ │                                                ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                   │ │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                   │ │                                                ; implicit exception: dispatches to 0x00007f5ef523cf11
                   │ │  0x00007f5ef523b561: cmp    $0x40,%ecx
                   │ │  0x00007f5ef523b564: jg     0x00007f5ef523c0c5  ;*if_icmpgt
                   │ │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                   │ │                                                ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                   │ │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.55%    0.57%   │ │  0x00007f5ef523b56a: vmovq  %rdx,%xmm3
                   │ │  0x00007f5ef523b56f: vmovd  %r8d,%xmm4
                   │ │  0x00007f5ef523b574: vmovq  %r9,%xmm0
                   │ │  0x00007f5ef523b579: vmovd  %edi,%xmm2
  0.52%    0.02%   │ │  0x00007f5ef523b57d: vmovd  %ebx,%xmm1
                   │ │  0x00007f5ef523b581: mov    %r11d,%edx
                   │ │  0x00007f5ef523b584: mov    %r10d,0xac(%rsp)
                   │ │  0x00007f5ef523b58c: mov    %eax,0xa4(%rsp)
  0.45%    0.00%   │ │  0x00007f5ef523b593: mov    %r13,0x20(%rsp)
  0.00%            │ │  0x00007f5ef523b598: mov    $0x1,%r8d
                   │ │  0x00007f5ef523b59e: shl    %cl,%r8            ;*lshl
                   │ │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                   │ │                                                ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                   │ │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.54%    0.00%   │ │  0x00007f5ef523b5a1: mov    %rsi,%r11
                   │ │  0x00007f5ef523b5a4: and    %r8,%r11
                   │ │  0x00007f5ef523b5a7: test   %r11,%r11
                   ╰ │  0x00007f5ef523b5aa: jne    0x00007f5ef523b46b  ;*ifeq
                     │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.46%              │  0x00007f5ef523b5b0: cmp    $0x40,%ecx
                     │  0x00007f5ef523b5b3: jge    0x00007f5ef523c111  ;*if_icmpge
                     │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                     │  0x00007f5ef523b5b9: mov    %r12b,0x18(%r14)   ;*putfield empty
                     │                                                ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                     │  0x00007f5ef523b5bd: vmovq  %xmm3,%r10
                     │  0x00007f5ef523b5c2: mov    0x1c(%r10),%ebp    ;*getfield outInst
                     │                                                ; - com.google.re2j.Inst$AltInst::add@23 (line 192)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.51%    0.11%     │  0x00007f5ef523b5c6: or     %rsi,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                     │  0x00007f5ef523b5c9: mov    %r8,0x10(%r14)     ;*putfield pcsl
                     │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                     │  0x00007f5ef523b5cd: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f5ef523cf25
  0.89%    0.00%     │  0x00007f5ef523b5d2: cmp    $0xf8019992,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                     │  0x00007f5ef523b5d9: jne    0x00007f5ef523bd91
  0.51%    0.02%     │  0x00007f5ef523b5df: lea    (%r12,%rbp,8),%rbx  ;*invokevirtual add
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                     │  0x00007f5ef523b5e3: mov    0x18(%rbx),%r9d    ;*getfield pc
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.16%              │  0x00007f5ef523b5e7: cmp    $0x40,%r9d
                     │  0x00007f5ef523b5eb: jg     0x00007f5ef523c161  ;*if_icmpgt
                     │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.40%    0.06%     │  0x00007f5ef523b5f1: mov    $0x1,%r10d
  0.06%    0.03%     │  0x00007f5ef523b5f7: mov    %r9d,%ecx
                     │  0x00007f5ef523b5fa: shl    %cl,%r10           ;*lshl
                     │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.87%    0.64%     │  0x00007f5ef523b5fd: mov    %r8,%r11
                     │  0x00007f5ef523b600: and    %r10,%r11          ;*land
                     │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
           0.00%     │  0x00007f5ef523b603: test   %r11,%r11
                     │  0x00007f5ef523b606: jne    0x00007f5ef523c1b9  ;*ifeq
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.21%    0.17%     │  0x00007f5ef523b60c: cmp    $0x40,%r9d
                     │  0x00007f5ef523b610: jge    0x00007f5ef523c221  ;*if_icmpge
                     │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.29%    0.38%     │  0x00007f5ef523b616: or     %r10,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                     │  0x00007f5ef523b619: mov    %r8,0x10(%r14)     ;*putfield pcsl
                     │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%    0.02%     │  0x00007f5ef523b61d: vmovq  %xmm0,%r10
  0.10%    0.15%     │  0x00007f5ef523b622: mov    %rbx,%r11
  0.29%    0.33%     │  0x00007f5ef523b625: shr    $0x3,%r11
                     │  0x00007f5ef523b629: mov    %r11d,0x10(%r12,%rdx,8)
  0.02%    0.02%     │  0x00007f5ef523b62e: shr    $0x9,%r10
  0.18%    0.08%     │  0x00007f5ef523b632: movabs $0x7f5f063ce000,%r11
  0.32%    0.10%     │  0x00007f5ef523b63c: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@41 (line 101)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                     │  0x00007f5ef523b640: vmovd  %xmm4,%r10d
  0.05%    0.01%     │  0x00007f5ef523b645: mov    0xc(%r12,%r10,8),%r9d  ;*arraylength
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@45 (line 103)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                     │                                                ; implicit exception: dispatches to 0x00007f5ef523cf49
  0.19%    0.00%     │  0x00007f5ef523b64a: test   %r9d,%r9d
                     │  0x00007f5ef523b64d: jg     0x00007f5ef523c279  ;*ifle
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.36%    0.06%     │  0x00007f5ef523b653: mov    %r9d,%r13d
                     │  0x00007f5ef523b656: mov    0xc(%r14),%r10d    ;*getfield size
                     │                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.05%              │  0x00007f5ef523b65a: mov    %r10d,0x28(%rsp)
  0.21%    0.06%     │  0x00007f5ef523b65f: mov    0x20(%r14),%r10d   ;*getfield denseThreads
                     │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.30%    0.14%     │  0x00007f5ef523b663: vmovd  %r10d,%xmm0
                     │  0x00007f5ef523b668: mov    0x28(%rsp),%r10d
  0.05%    0.04%     │  0x00007f5ef523b66d: inc    %r10d              ;*iadd
                     │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 65)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.15%    0.14%     │  0x00007f5ef523b670: vmovd  %r10d,%xmm6
  0.29%    0.26%     │  0x00007f5ef523b675: mov    %r10d,0xc(%r14)    ;*putfield size
                     │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                     │  0x00007f5ef523b679: vmovd  %xmm0,%r10d
  0.04%    0.01%     │  0x00007f5ef523b67e: mov    0xc(%r12,%r10,8),%edi  ; implicit exception: dispatches to 0x00007f5ef523cf59
  0.15%    0.14%     │  0x00007f5ef523b683: mov    0x28(%rsp),%r10d
  0.27%    0.40%     │  0x00007f5ef523b688: cmp    %edi,%r10d
                     │  0x00007f5ef523b68b: jae    0x00007f5ef523bd45  ;*aastore
                     │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                     │  0x00007f5ef523b691: vmovq  %xmm3,%r10
  0.03%    0.04%     │  0x00007f5ef523b696: mov    0x20(%r10),%r10d   ;*getfield argInst
                     │                                                ; - com.google.re2j.Inst$AltInst::add@41 (line 193)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.16%    0.22%     │  0x00007f5ef523b69a: mov    %r10d,%ebx
  0.31%    0.37%     │  0x00007f5ef523b69d: vmovd  %xmm0,%r10d
                     │  0x00007f5ef523b6a2: lea    (%r12,%r10,8),%r9  ;*getfield denseThreads
                     │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.03%    0.02%     │  0x00007f5ef523b6a6: mov    0x28(%rsp),%r10d
  0.11%    0.16%     │  0x00007f5ef523b6ab: lea    0x10(%r9,%r10,4),%r10
  0.34%    0.32%     │  0x00007f5ef523b6b0: mov    %edx,(%r10)
           0.00%     │  0x00007f5ef523b6b3: shr    $0x9,%r10
  0.03%    0.02%     │  0x00007f5ef523b6b7: mov    %r12b,(%r11,%r10,1)  ;*aastore
                     │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.15%    0.19%     │  0x00007f5ef523b6bb: mov    %ebx,%r10d
  0.32%    0.33%     │  0x00007f5ef523b6be: mov    0x8(%r12,%r10,8),%ecx  ;*invokevirtual add
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                     │                                                ; implicit exception: dispatches to 0x00007f5ef523cf75
                     │  0x00007f5ef523b6c3: movslq 0x28(%rsp),%r10
  0.02%    0.01%     │  0x00007f5ef523b6c8: lea    (%r9,%r10,4),%rdx  ;*aastore
                     │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.15%    0.19%     │  0x00007f5ef523b6cc: mov    %rdx,%rsi
  0.26%    0.39%     │  0x00007f5ef523b6cf: add    $0x14,%rsi         ;*aastore
                     │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                     │  0x00007f5ef523b6d3: vmovd  %xmm1,%r10d
  0.02%    0.03%     │  0x00007f5ef523b6d8: dec    %r10d              ;*isub
                     │                                                ; - com.google.re2j.Machine::alloc@13 (line 133)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.17%    0.22%     │  0x00007f5ef523b6db: vmovd  %r10d,%xmm5
  0.31%    0.23%     │  0x00007f5ef523b6e0: mov    %ebx,%r10d
                     │  0x00007f5ef523b6e3: lea    (%r12,%r10,8),%r11
  0.01%    0.00%     │  0x00007f5ef523b6e7: mov    0x28(%rsp),%r10d
  0.18%    0.07%     │  0x00007f5ef523b6ec: add    $0x2,%r10d         ;*iadd
                     │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 65)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.32%    0.13%     │  0x00007f5ef523b6f0: cmp    $0xf8019886,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                     │  0x00007f5ef523b6f6: jne    0x00007f5ef523b36f  ;*invokevirtual add
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                     │  0x00007f5ef523b6fc: mov    %r11,%rax
  0.02%    0.02%     │  0x00007f5ef523b6ff: mov    0x18(%r11),%r11d   ;*getfield pc
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@2 (line 248)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.16%    0.07%     │  0x00007f5ef523b703: mov    %r11d,%ecx
  0.30%    0.13%     │  0x00007f5ef523b706: cmp    $0x40,%r11d
                     │  0x00007f5ef523b70a: jg     0x00007f5ef523c585  ;*if_icmpgt
                     │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@5 (line 248)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                     │  0x00007f5ef523b710: mov    $0x1,%ebx
  0.01%    0.02%     │  0x00007f5ef523b715: shl    %cl,%rbx           ;*lshl
                     │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@5 (line 248)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.47%    0.34%     │  0x00007f5ef523b718: mov    %r8,%r11
  0.04%    0.02%     │  0x00007f5ef523b71b: and    %rbx,%r11          ;*land
                     │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@5 (line 248)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.15%    0.17%     │  0x00007f5ef523b71e: test   %r11,%r11
                     │  0x00007f5ef523b721: jne    0x00007f5ef523c5d1  ;*ifeq
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@8 (line 248)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.38%    0.32%     │  0x00007f5ef523b727: mov    %ecx,%r11d
                     │  0x00007f5ef523b72a: cmp    $0x40,%r11d
                     │  0x00007f5ef523b72e: jge    0x00007f5ef523c62d  ;*if_icmpge
                     │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@19 (line 251)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.03%              │  0x00007f5ef523b734: mov    %rax,%r11
  0.14%    0.03%     │  0x00007f5ef523b737: mov    0x14(%r11),%ebp    ;*getfield arg
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@23 (line 253)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.29%    0.02%     │  0x00007f5ef523b73b: or     %rbx,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@19 (line 251)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                     │  0x00007f5ef523b73e: mov    %r8,0x10(%r14)     ;*putfield pcsl
                     │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@19 (line 251)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%    0.05%     │  0x00007f5ef523b742: cmp    %r13d,%ebp
                     │  0x00007f5ef523b745: jl     0x00007f5ef523c6d9  ;*if_icmpge
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@28 (line 253)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.13%    0.08%     │  0x00007f5ef523b74b: mov    0x1c(%r11),%ebp    ;*getfield outInst
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@75 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.33%    0.43%     │  0x00007f5ef523b74f: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f5ef523cfb1
                     │  0x00007f5ef523b754: cmp    $0xf8019843,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$AltInst&apos;)}
                     │  0x00007f5ef523b75b: jne    0x00007f5ef523c049
  0.04%    0.07%     │  0x00007f5ef523b761: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.13%    0.26%     │  0x00007f5ef523b765: vmovq  %r11,%xmm3
  0.30%    0.47%     │  0x00007f5ef523b76a: mov    0x18(%r11),%r11d   ;*getfield pc
                     │                                                ; - com.google.re2j.Inst$AltInst::add@2 (line 187)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                     │  0x00007f5ef523b76e: mov    %r11d,%eax
  0.04%    0.02%     │  0x00007f5ef523b771: cmp    $0x40,%r11d
                     │  0x00007f5ef523b775: jg     0x00007f5ef523c7e9  ;*if_icmpgt
                     │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.16%    0.13%     │  0x00007f5ef523b77b: mov    $0x1,%ebx
  0.31%    0.35%     │  0x00007f5ef523b780: mov    %r11d,%ecx
                     │  0x00007f5ef523b783: shl    %cl,%rbx           ;*lshl
                     │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.40%    0.57%     │  0x00007f5ef523b786: mov    %r8,%r11
                     │  0x00007f5ef523b789: and    %rbx,%r11
  0.04%    0.05%     │  0x00007f5ef523b78c: test   %r11,%r11
                     │  0x00007f5ef523b78f: jne    0x00007f5ef523bbf2  ;*ifeq
                     │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.15%    0.24%     │  0x00007f5ef523b795: mov    %ecx,%r11d
  0.34%    0.49%     │  0x00007f5ef523b798: cmp    $0x40,%r11d
                     │  0x00007f5ef523b79c: jge    0x00007f5ef523c835  ;*if_icmpge
                     │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                     │  0x00007f5ef523b7a2: or     %rbx,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%    0.03%     │  0x00007f5ef523b7a5: mov    %r8,0x10(%r14)     ;*putfield pcsl
                     │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.17%    0.21%     │  0x00007f5ef523b7a9: vmovq  %xmm3,%r11
  0.36%    0.39%     │  0x00007f5ef523b7ae: mov    0x1c(%r11),%ebp    ;*getfield outInst
                     │                                                ; - com.google.re2j.Inst$AltInst::add@23 (line 192)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                     │  0x00007f5ef523b7b2: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f5ef523cfe1
  0.03%    0.02%     │  0x00007f5ef523b7b7: cmp    $0xf8019992,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                     │  0x00007f5ef523b7be: jne    0x00007f5ef523c081
  0.14%    0.15%     │  0x00007f5ef523b7c4: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.30%    0.37%     │  0x00007f5ef523b7c8: vmovq  %r11,%xmm7
                     │  0x00007f5ef523b7cd: mov    0x18(%r11),%r11d   ;*getfield pc
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%    0.06%     │  0x00007f5ef523b7d1: mov    %r11d,%eax
  0.09%    0.20%     │  0x00007f5ef523b7d4: cmp    $0x40,%r11d
                     │  0x00007f5ef523b7d8: jg     0x00007f5ef523c881  ;*if_icmpgt
                     │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.26%    0.38%     │  0x00007f5ef523b7de: mov    $0x1,%ebx
                     │  0x00007f5ef523b7e3: mov    %r11d,%ecx
  0.05%    0.05%     │  0x00007f5ef523b7e6: shl    %cl,%rbx           ;*lshl
                     │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.51%    0.53%     │  0x00007f5ef523b7e9: mov    %r8,%r11
  0.03%    0.02%     │  0x00007f5ef523b7ec: and    %rbx,%r11          ;*land
                     │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.11%    0.22%     │  0x00007f5ef523b7ef: test   %r11,%r11
                     │  0x00007f5ef523b7f2: jne    0x00007f5ef523c8dd  ;*ifeq
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.36%    0.33%     │  0x00007f5ef523b7f8: mov    %ecx,%r11d
                     │  0x00007f5ef523b7fb: cmp    $0x40,%r11d
                     │  0x00007f5ef523b7ff: jge    0x00007f5ef523c951  ;*if_icmpge
                     │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%    0.01%     │  0x00007f5ef523b805: or     %rbx,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.16%    0.17%     │  0x00007f5ef523b808: mov    %r8,0x10(%r14)     ;*putfield pcsl
                     │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.25%    0.28%     │  0x00007f5ef523b80c: vmovd  %xmm1,%r11d
                     │  0x00007f5ef523b811: test   %r11d,%r11d
                     │  0x00007f5ef523b814: jle    0x00007f5ef523c4ad  ;*ifle
                     │                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%    0.04%     │  0x00007f5ef523b81a: mov    0x20(%rsp),%rcx
  0.16%    0.19%     │  0x00007f5ef523b81f: vmovd  %xmm5,%r11d
  0.28%    0.42%     │  0x00007f5ef523b824: mov    %r11d,0xc(%rcx)    ;*putfield poolSize
                     │                                                ; - com.google.re2j.Machine::alloc@14 (line 133)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                     │  0x00007f5ef523b828: vmovd  %xmm2,%r11d
  0.00%    0.04%     │  0x00007f5ef523b82d: mov    0xc(%r12,%r11,8),%ebx  ; implicit exception: dispatches to 0x00007f5ef523cffd
  0.16%    0.21%     │  0x00007f5ef523b832: vmovd  %xmm5,%r11d
  0.27%    0.35%     │  0x00007f5ef523b837: cmp    %ebx,%r11d
                     │  0x00007f5ef523b83a: jae    0x00007f5ef523bf4d
                     │  0x00007f5ef523b840: vmovd  %xmm2,%r11d
  0.01%    0.05%     │  0x00007f5ef523b845: lea    (%r12,%r11,8),%rax
  0.17%    0.27%     │  0x00007f5ef523b849: vmovd  %xmm1,%r11d
  0.29%    0.46%     │  0x00007f5ef523b84e: mov    0xc(%rax,%r11,4),%ebp  ;*aaload
                     │                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                     │  0x00007f5ef523b853: test   %ebp,%ebp
                     │  0x00007f5ef523b855: je     0x00007f5ef523bfa9  ;*putfield inst
                     │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%    0.06%     │  0x00007f5ef523b85b: mov    %r10d,0xc(%r14)    ;*putfield size
                     │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.14%    0.22%     │  0x00007f5ef523b85f: lea    (%r12,%rbp,8),%rcx
  0.31%    0.29%     │  0x00007f5ef523b863: vmovq  %xmm7,%r11
                     │  0x00007f5ef523b868: shr    $0x3,%r11
  0.03%    0.01%     │  0x00007f5ef523b86c: mov    %r11d,0x10(%r12,%rbp,8)
  0.14%    0.15%     │  0x00007f5ef523b871: mov    %rcx,%r11
  0.26%    0.26%     │  0x00007f5ef523b874: shr    $0x9,%r11
                     │  0x00007f5ef523b878: movabs $0x7f5f063ce000,%rcx
  0.05%    0.08%     │  0x00007f5ef523b882: mov    %r12b,(%rcx,%r11,1)  ;*putfield inst
                     │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.18%    0.33%     │  0x00007f5ef523b886: cmp    %edi,%r10d
                     │  0x00007f5ef523b889: jae    0x00007f5ef523bfbd
  0.27%    0.49%     │  0x00007f5ef523b88f: mov    %ebp,(%rsi)        ;*aastore
                     │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                     │  0x00007f5ef523b891: vmovq  %xmm3,%r10
  0.01%    0.02%     │  0x00007f5ef523b896: mov    0x20(%r10),%r10d   ;*getfield argInst
                     │                                                ; - com.google.re2j.Inst$AltInst::add@41 (line 193)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.15%    0.21%     │  0x00007f5ef523b89a: mov    %r10d,%ecx
  0.27%    0.35%     │  0x00007f5ef523b89d: mov    %rsi,%r10
                     │  0x00007f5ef523b8a0: shr    $0x9,%r10
  0.04%    0.04%     │  0x00007f5ef523b8a4: movabs $0x7f5f063ce000,%r11
  0.16%    0.21%     │  0x00007f5ef523b8ae: mov    %r12b,(%r11,%r10,1)  ;*aastore
                     │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.23%    0.33%     │  0x00007f5ef523b8b2: mov    %ecx,%r10d
                     │  0x00007f5ef523b8b5: mov    0x8(%r12,%r10,8),%r10d  ; implicit exception: dispatches to 0x00007f5ef523d011
  0.04%    0.04%     │  0x00007f5ef523b8ba: lea    (%r12,%rcx,8),%r11
  0.20%    0.24%     │  0x00007f5ef523b8be: cmp    $0xf8019886,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                    ╭│  0x00007f5ef523b8c5: je     0x00007f5ef523b9b1
  0.34%    0.42%    ││  0x00007f5ef523b8cb: cmp    $0xf8019992,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                    ││  0x00007f5ef523b8d2: jne    0x00007f5ef523c50d  ;*invokevirtual add
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    ││  0x00007f5ef523b8d8: mov    %r11,%rdi
  0.04%    0.04%    ││  0x00007f5ef523b8db: mov    0x18(%r11),%r10d   ;*getfield pc
                    ││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.33%    0.47%    ││  0x00007f5ef523b8df: mov    %r10d,%ecx
  0.32%    0.17%    ││  0x00007f5ef523b8e2: cmp    $0x40,%r10d
                    ││  0x00007f5ef523b8e6: jg     0x00007f5ef523cafd  ;*if_icmpgt
                    ││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                    ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%    0.01%    ││  0x00007f5ef523b8ec: mov    $0x1,%r11d
  0.01%    0.02%    ││  0x00007f5ef523b8f2: shl    %cl,%r11           ;*lshl
                    ││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                    ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.59%    0.70%    ││  0x00007f5ef523b8f5: mov    %r8,%r10
  0.02%    0.05%    ││  0x00007f5ef523b8f8: and    %r11,%r10          ;*land
                    ││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                    ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.19%    0.23%    ││  0x00007f5ef523b8fb: test   %r10,%r10
                    ││  0x00007f5ef523b8fe: jne    0x00007f5ef523cba1  ;*ifeq
                    ││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.38%    0.34%    ││  0x00007f5ef523b904: mov    %ecx,%r10d
  0.00%             ││  0x00007f5ef523b907: cmp    $0x40,%r10d
                    ││  0x00007f5ef523b90b: jge    0x00007f5ef523cc11  ;*if_icmpge
                    ││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                    ││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%    0.03%    ││  0x00007f5ef523b911: or     %r11,%r8
  0.13%    0.14%    ││  0x00007f5ef523b914: mov    %r8,0x10(%r14)     ;*putfield pcsl
                    ││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                    ││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.32%    0.47%    ││  0x00007f5ef523b918: vmovd  %xmm5,%r10d
                    ││  0x00007f5ef523b91d: test   %r10d,%r10d
                    ││  0x00007f5ef523b920: jle    0x00007f5ef523c9ad  ;*ifle
                    ││                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                    ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.03%    0.04%    ││  0x00007f5ef523b926: vmovd  %xmm1,%r10d
  0.18%    0.21%    ││  0x00007f5ef523b92b: add    $0xfffffffe,%r10d  ;*isub
                    ││                                                ; - com.google.re2j.Machine::alloc@13 (line 133)
                    ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.28%    0.41%    ││  0x00007f5ef523b92f: mov    %r10d,%ecx
                    ││  0x00007f5ef523b932: mov    0x20(%rsp),%r11
  0.02%    0.07%    ││  0x00007f5ef523b937: mov    %r10d,0xc(%r11)    ;*putfield poolSize
                    ││                                                ; - com.google.re2j.Machine::alloc@14 (line 133)
                    ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.14%    0.25%    ││  0x00007f5ef523b93b: cmp    %ebx,%r10d
                    ││  0x00007f5ef523b93e: jae    0x00007f5ef523c3d9
  0.29%    0.48%    ││  0x00007f5ef523b944: mov    %r10d,%ebx
  0.00%    0.00%    ││  0x00007f5ef523b947: mov    0x10(%rax,%r10,4),%r11d  ;*aaload
                    ││                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                    ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.05%    0.02%    ││  0x00007f5ef523b94c: test   %r11d,%r11d
                    ││  0x00007f5ef523b94f: je     0x00007f5ef523c43d  ;*putfield inst
                    ││                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                    ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.16%    0.12%    ││  0x00007f5ef523b955: add    $0x18,%rdx
  0.24%    0.24%    ││  0x00007f5ef523b959: mov    %r11d,(%rdx)       ;*aastore
                    ││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    ││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    ││  0x00007f5ef523b95c: lea    (%r12,%r11,8),%r10
  0.03%    0.03%    ││  0x00007f5ef523b960: mov    %rdx,%r8
  0.13%    0.21%    ││  0x00007f5ef523b963: shr    $0x9,%r8
  0.27%    0.52%    ││  0x00007f5ef523b967: shr    $0x9,%r10
                    ││  0x00007f5ef523b96b: movabs $0x7f5f063ce000,%r9
  0.00%    0.03%    ││  0x00007f5ef523b975: mov    %r12b,(%r9,%r10,1)  ;*putfield inst
                    ││                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                    ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.13%    0.21%    ││  0x00007f5ef523b979: movabs $0x7f5f063ce000,%r10
  0.31%    0.50%    ││  0x00007f5ef523b983: mov    %r12b,(%r10,%r8,1)  ;*aastore
                    ││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    ││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    ││  0x00007f5ef523b987: mov    0x28(%rsp),%r10d
  0.01%    0.03%    ││  0x00007f5ef523b98c: add    $0x3,%r10d
  0.16%    0.17%    ││  0x00007f5ef523b990: mov    %r10d,0xc(%r14)    ;*putfield size
                    ││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                    ││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.26%    0.40%    ││  0x00007f5ef523b994: mov    %rdi,%r8
           0.00%    ││  0x00007f5ef523b997: shr    $0x3,%r8
  0.01%    0.04%    ││  0x00007f5ef523b99b: mov    %r8d,0x10(%r12,%r11,8)  ;*putfield inst
                    ││                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                    ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.16%    0.22%    ││  0x00007f5ef523b9a0: xor    %r9d,%r9d
  0.32%    0.45%    ││  0x00007f5ef523b9a3: mov    0x20(%rsp),%r13
                    ││  0x00007f5ef523b9a8: vmovd  %xmm2,%edi
  0.01%    0.03%    │╰  0x00007f5ef523b9ac: jmpq   0x00007f5ef523b46b
                    ↘   0x00007f5ef523b9b1: mov    %r11,%r9           ;*invokevirtual add
                                                                      ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 276)
                        0x00007f5ef523b9b4: mov    0x18(%r9),%ecx     ;*getfield pc
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@2 (line 248)
                                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
....................................................................................................
 57.10%   57.45%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 572 (930 bytes) 

                             0x00007f5ef525f50b: mov    %rcx,%r11
                             0x00007f5ef525f50e: shl    $0x3,%r11          ;*getfield q1
                                                                           ; - com.google.re2j.Machine::match@53 (line 188)
                             0x00007f5ef525f512: mov    %r11,0x20(%rsp)
                             0x00007f5ef525f517: xor    %r11d,%r11d
                             0x00007f5ef525f51a: mov    $0x1,%ecx
                             0x00007f5ef525f51f: xor    %eax,%eax
                             0x00007f5ef525f521: mov    %ecx,0x14(%rsp)
                             0x00007f5ef525f525: mov    %eax,0x60(%rsp)
                  ╭          0x00007f5ef525f529: jmpq   0x00007f5ef525f6b1
  0.03%    0.06%  │    ↗     0x00007f5ef525f52e: or     $0x20,%ebx         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                  │    │                                                   ; - com.google.re2j.Machine::match@323 (line 241)
           0.02%  │    │     0x00007f5ef525f531: mov    %ebx,0x4c(%rsp)    ;*iload_2
                  │    │                                                   ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                  │    │                                                   ; - com.google.re2j.Machine::match@323 (line 241)
  0.10%    0.09%  │    │↗    0x00007f5ef525f535: mov    0x60(%rsp),%r10d
  0.23%    0.04%  │    ││    0x00007f5ef525f53a: cmp    0x64(%rsp),%r10d
                  │    ││    0x00007f5ef525f53f: je     0x00007f5ef525fd6e  ;*if_icmpne
                  │    ││                                                  ; - com.google.re2j.Machine::match@348 (line 242)
  0.17%    0.23%  │    ││    0x00007f5ef525f545: xor    %ebx,%ebx          ;*invokespecial step
                  │    ││                                                  ; - com.google.re2j.Machine::match@356 (line 242)
  0.08%    0.11%  │    ││    0x00007f5ef525f547: mov    %rax,-0x8(%rsp)
  0.14%    0.09%  │    ││    0x00007f5ef525f54c: mov    0x60(%rsp),%eax
  0.30%    0.30%  │    ││    0x00007f5ef525f550: mov    %eax,0x38(%rsp)
  0.28%    0.18%  │    ││    0x00007f5ef525f554: mov    -0x8(%rsp),%rax    ;*invokevirtual endPos
                  │    ││                                                  ; - com.google.re2j.Machine::match@345 (line 242)
  0.52%    0.31%  │    ││    0x00007f5ef525f559: add    0x28(%rsp),%r10d   ;*iadd
                  │    ││                                                  ; - com.google.re2j.Machine::match@337 (line 242)
  0.08%    0.06%  │    ││    0x00007f5ef525f55e: mov    %r10d,0x60(%rsp)
  0.24%    0.40%  │    ││    0x00007f5ef525f563: mov    0x40(%rsp),%rsi
  0.05%    0.05%  │    ││    0x00007f5ef525f568: mov    0x18(%rsp),%rdx
  0.18%    0.09%  │    ││    0x00007f5ef525f56d: mov    0x20(%rsp),%rcx
  0.02%    0.05%  │    ││    0x00007f5ef525f572: mov    0x38(%rsp),%r8d
  0.72%    0.55%  │    ││    0x00007f5ef525f577: mov    %r10d,%r9d
  0.03%    0.05%  │    ││    0x00007f5ef525f57a: mov    0x4c(%rsp),%r10d
  0.10%    0.07%  │    ││    0x00007f5ef525f57f: mov    %r10d,(%rsp)
  0.11%    0.05%  │    ││    0x00007f5ef525f583: mov    0x3c(%rsp),%r10d
  0.27%    0.33%  │    ││    0x00007f5ef525f588: mov    %r10d,0x8(%rsp)
  0.10%    0.04%  │    ││    0x00007f5ef525f58d: mov    %ebx,0x10(%rsp)
  0.10%    0.11%  │    ││    0x00007f5ef525f591: xchg   %ax,%ax
  0.04%    0.02%  │    ││    0x00007f5ef525f593: callq  0x00007f5ef5046020  ; OopMap{[24]=Oop [32]=Oop [52]=NarrowOop [64]=Oop [80]=Oop off=664}
                  │    ││                                                  ;*invokespecial step
                  │    ││                                                  ; - com.google.re2j.Machine::match@356 (line 242)
                  │    ││                                                  ;   {optimized virtual_call}
  0.38%    0.56%  │    ││    0x00007f5ef525f598: mov    0x40(%rsp),%r10
  0.01%    0.00%  │    ││    0x00007f5ef525f59d: mov    0x24(%r10),%r13d   ;*getfield pool
                  │    ││                                                  ; - com.google.re2j.Machine::freeQueue@1 (line 156)
                  │    ││                                                  ; - com.google.re2j.Machine::freeQueue@15 (line 150)
                  │    ││                                                  ; - com.google.re2j.Machine::freeQueue@3 (line 144)
                  │    ││                                                  ; - com.google.re2j.Machine::match@445 (line 263)
                  │    ││    0x00007f5ef525f5a1: mov    0xc(%r10),%r8d     ;*getfield poolSize
                  │    ││                                                  ; - com.google.re2j.Machine::freeQueue@8 (line 157)
                  │    ││                                                  ; - com.google.re2j.Machine::freeQueue@15 (line 150)
                  │    ││                                                  ; - com.google.re2j.Machine::freeQueue@3 (line 144)
                  │    ││                                                  ; - com.google.re2j.Machine::match@445 (line 263)
  0.51%    0.52%  │    ││    0x00007f5ef525f5a5: mov    0x28(%rsp),%r10d
                  │    ││    0x00007f5ef525f5aa: test   %r10d,%r10d
                  │    ││    0x00007f5ef525f5ad: je     0x00007f5ef525fca4  ;*ifne
                  │    ││                                                  ; - com.google.re2j.Machine::match@361 (line 243)
  0.00%           │    ││    0x00007f5ef525f5b3: mov    0x40(%rsp),%r11
                  │    ││    0x00007f5ef525f5b8: mov    0x28(%r11),%r14d   ;*getfield matchcap
                  │    ││                                                  ; - com.google.re2j.Machine::match@368 (line 246)
  0.50%    0.50%  │    ││    0x00007f5ef525f5bc: mov    0xc(%r12,%r14,8),%ebp  ;*arraylength
                  │    ││                                                  ; - com.google.re2j.Machine::match@371 (line 246)
                  │    ││                                                  ; implicit exception: dispatches to 0x00007f5ef52612f9
  0.01%    0.03%  │    ││    0x00007f5ef525f5c1: test   %ebp,%ebp
                  │    ││    0x00007f5ef525f5c3: jne    0x00007f5ef52601b1  ;*ifne
                  │    ││                                                  ; - com.google.re2j.Machine::match@372 (line 246)
  0.04%    0.02%  │    ││    0x00007f5ef525f5c9: movzbl 0x10(%r11),%r11d   ;*getfield matched
                  │    ││                                                  ; - com.google.re2j.Machine::match@376 (line 246)
  0.00%           │    ││    0x00007f5ef525f5ce: test   %r11d,%r11d
                  │    ││    0x00007f5ef525f5d1: jne    0x00007f5ef52603fd  ;*ifeq
                  │    ││                                                  ; - com.google.re2j.Machine::match@379 (line 246)
  0.46%    0.60%  │    ││    0x00007f5ef525f5d7: mov    0x50(%rsp),%r10
                  │    ││    0x00007f5ef525f5dc: mov    0x10(%r10),%r10d   ;*getfield end
                  │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                  │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.03%    0.03%  │    ││    0x00007f5ef525f5e0: mov    %r10d,0x64(%rsp)
                  │    ││    0x00007f5ef525f5e5: mov    0x50(%rsp),%r10
  0.55%    0.50%  │    ││    0x00007f5ef525f5ea: mov    0xc(%r10),%ebx     ;*getfield start
                  │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                  │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.00%    0.01%  │    ││    0x00007f5ef525f5ee: mov    0x14(%r10),%r9d    ;*getfield str
                  │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                  │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.03%    0.02%  │    ││    0x00007f5ef525f5f2: mov    0x2c(%rsp),%ecx
           0.00%  │    ││    0x00007f5ef525f5f6: cmp    $0xffffffff,%ecx
                  │    ││    0x00007f5ef525f5f9: je     0x00007f5ef525fd78  ;*if_icmpeq
                  │    ││                                                  ; - com.google.re2j.Machine::match@401 (line 254)
  0.42%    0.70%  │    ││    0x00007f5ef525f5ff: mov    0x30(%rsp),%ecx
           0.00%  │    ││    0x00007f5ef525f603: add    0x60(%rsp),%ecx
  0.01%    0.03%  │    ││    0x00007f5ef525f607: add    %ebx,%ecx          ;*iadd
                  │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                  │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
                  │    ││    0x00007f5ef525f609: cmp    0x64(%rsp),%ecx
                  │    ││    0x00007f5ef525f60d: jge    0x00007f5ef525fd86  ;*if_icmpge
                  │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                  │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.49%    0.61%  │    ││    0x00007f5ef525f613: mov    0x8(%r12,%r9,8),%r10d  ; implicit exception: dispatches to 0x00007f5ef5261309
  0.00%    0.04%  │    ││    0x00007f5ef525f618: cmp    $0xf80002da,%r10d  ;   {metadata(&apos;java/lang/String&apos;)}
                  │    ││    0x00007f5ef525f61f: jne    0x00007f5ef526004d
  0.01%    0.03%  │    ││    0x00007f5ef525f625: lea    (%r12,%r9,8),%rdi  ;*invokeinterface charAt
                  │    ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                  │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
                  │    ││    0x00007f5ef525f629: test   %ecx,%ecx
                  │    ││    0x00007f5ef525f62b: jl     0x00007f5ef5260205  ;*iflt
                  │    ││                                                  ; - java.lang.String::charAt@1 (line 657)
                  │    ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                  │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.44%    0.57%  │    ││    0x00007f5ef525f631: mov    0xc(%rdi),%r10d    ;*getfield value
                  │    ││                                                  ; - java.lang.String::charAt@6 (line 657)
                  │    ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                  │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
                  │    ││    0x00007f5ef525f635: mov    0xc(%r12,%r10,8),%ebp  ;*arraylength
                  │    ││                                                  ; - java.lang.String::charAt@9 (line 657)
                  │    ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                  │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
                  │    ││                                                  ; implicit exception: dispatches to 0x00007f5ef526131d
  0.59%    0.60%  │    ││    0x00007f5ef525f63a: cmp    %ebp,%ecx
                  │    ││    0x00007f5ef525f63c: jge    0x00007f5ef5260451  ;*if_icmplt
                  │    ││                                                  ; - java.lang.String::charAt@10 (line 657)
                  │    ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                  │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.47%    0.57%  │    ││    0x00007f5ef525f642: cmp    %ebp,%ecx
                  │    ││    0x00007f5ef525f644: jae    0x00007f5ef525ff71
  0.33%    0.37%  │    ││    0x00007f5ef525f64a: shl    $0x3,%r10
                  │    ││    0x00007f5ef525f64e: movzwl 0x10(%r10,%rcx,2),%eax  ;*caload
                  │    ││                                                  ; - java.lang.String::charAt@27 (line 660)
                  │    ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                  │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.13%    0.14%  │    ││    0x00007f5ef525f654: cmp    $0xd800,%eax
                  │    ││    0x00007f5ef525f65a: jge    0x00007f5ef52604c9  ;*if_icmplt
                  │    ││                                                  ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                  │    ││                                                  ; - java.lang.Character::codePointAt@9 (line 4867)
                  │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.46%    0.54%  │    ││    0x00007f5ef525f660: shl    $0x3,%eax          ;*ishl
                  │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                  │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.18%    0.25%  │    ││    0x00007f5ef525f663: mov    %eax,%edx
                  │    ││    0x00007f5ef525f665: or     $0x1,%edx
  0.38%    0.42%  │    ││    0x00007f5ef525f668: and    $0x7,%eax
  0.08%    0.16%  │    ││    0x00007f5ef525f66b: sar    $0x3,%edx          ;*ishr
                  │    ││                                                  ; - com.google.re2j.Machine::match@417 (line 256)
  0.43%    0.53%  │    ││    0x00007f5ef525f66e: or     $0x1,%eax          ; OopMap{r9=NarrowOop r13=NarrowOop r14=NarrowOop [24]=Oop [32]=Oop [64]=Oop [80]=Oop off=881}
                  │    ││                                                  ;*goto
                  │    ││                                                  ; - com.google.re2j.Machine::match@439 (line 262)
  0.02%    0.00%  │    ││    0x00007f5ef525f671: test   %eax,0x18766989(%rip)        # 0x00007f5f0d9c6000
                  │    ││                                                  ;*goto
                  │    ││                                                  ; - com.google.re2j.Machine::match@439 (line 262)
                  │    ││                                                  ;   {poll}
  0.48%    0.53%  │    ││    0x00007f5ef525f677: mov    0x40(%rsp),%r10
           0.00%  │    ││    0x00007f5ef525f67c: mov    0x14(%r10),%esi    ;*getfield re2
                  │    ││                                                  ; - com.google.re2j.Machine::match@169 (line 216)
  0.02%    0.02%  │    ││    0x00007f5ef525f680: mov    0x20(%rsp),%r10
           0.00%  │    ││    0x00007f5ef525f685: shr    $0x3,%r10
  0.53%    0.54%  │    ││    0x00007f5ef525f689: mov    %r10d,0x34(%rsp)
           0.01%  │    ││    0x00007f5ef525f68e: mov    0x4c(%rsp),%r10d
  0.01%    0.02%  │    ││    0x00007f5ef525f693: mov    0x2c(%rsp),%edi
  0.01%           │    ││    0x00007f5ef525f697: mov    %edx,0x2c(%rsp)
  0.46%    0.58%  │    ││    0x00007f5ef525f69b: mov    0x18(%rsp),%rcx
  0.01%    0.01%  │    ││    0x00007f5ef525f6a0: mov    %rcx,0x20(%rsp)
  0.01%    0.03%  │    ││    0x00007f5ef525f6a5: mov    0x30(%rsp),%ecx
  0.01%    0.00%  │    ││    0x00007f5ef525f6a9: mov    %ecx,0x28(%rsp)
  0.44%    0.56%  │    ││    0x00007f5ef525f6ad: mov    %eax,0x30(%rsp)
           0.01%  ↘    ││    0x00007f5ef525f6b1: mov    0x34(%rsp),%edx
  0.01%    0.02%       ││    0x00007f5ef525f6b5: movzbl 0x18(%r12,%rdx,8),%edx  ; implicit exception: dispatches to 0x00007f5ef5261285
  0.01%    0.00%       ││    0x00007f5ef525f6bb: mov    0x34(%rsp),%eax
  0.47%    0.52%       ││    0x00007f5ef525f6bf: lea    (%r12,%rax,8),%rcx  ;*aload
                       ││                                                  ; - com.google.re2j.Machine::match@136 (line 207)
  0.00%    0.01%       ││    0x00007f5ef525f6c3: mov    %rcx,0x18(%rsp)
  0.01%    0.02%       ││    0x00007f5ef525f6c8: test   %edx,%edx
                       ││    0x00007f5ef525f6ca: jne    0x00007f5ef525f969  ;*aload_0
                       ││                                                  ; - com.google.re2j.Machine::match@267 (line 233)
  0.00%                ││    0x00007f5ef525f6d0: test   %r11d,%r11d
                       ││    0x00007f5ef525f6d3: jne    0x00007f5ef52600b5  ;*ifne
                       ││                                                  ; - com.google.re2j.Machine::match@271 (line 233)
  0.39%    0.67%       ││    0x00007f5ef525f6d9: mov    0x60(%rsp),%r9d
  0.00%    0.00%       ││    0x00007f5ef525f6de: test   %r9d,%r9d
                   ╭   ││    0x00007f5ef525f6e1: je     0x00007f5ef525f6f1  ;*ifeq
                   │   ││                                                  ; - com.google.re2j.Machine::match@275 (line 233)
  0.03%    0.01%   │   ││    0x00007f5ef525f6e3: mov    0x3c(%rsp),%r11d
  0.00%            │   ││    0x00007f5ef525f6e8: test   %r11d,%r11d
                   │   ││    0x00007f5ef525f6eb: jne    0x00007f5ef5260161  ;*aload_0
                   │   ││                                                  ; - com.google.re2j.Machine::match@282 (line 236)
  0.40%    0.58%   ↘   ││    0x00007f5ef525f6f1: mov    0xc(%r12,%r14,8),%ebp  ;*arraylength
                       ││                                                  ; - com.google.re2j.Machine::match@286 (line 236)
                       ││                                                  ; implicit exception: dispatches to 0x00007f5ef5261295
  0.02%                ││    0x00007f5ef525f6f6: test   %ebp,%ebp
                       ││    0x00007f5ef525f6f8: jg     0x00007f5ef5260281  ;*ifle
                       ││                                                  ; - com.google.re2j.Machine::match@287 (line 236)
  0.01%    0.02%       ││    0x00007f5ef525f6fe: mov    0x40(%rsp),%r11
  0.00%    0.01%       ││    0x00007f5ef525f703: mov    0x18(%r11),%r11d   ;*getfield prog
                       ││                                                  ; - com.google.re2j.Machine::match@298 (line 239)
  0.48%    0.56%       ││    0x00007f5ef525f707: mov    0x1c(%r12,%r11,8),%ebp  ;*getfield startInst
                       ││                                                  ; - com.google.re2j.Machine::match@301 (line 239)
                       ││                                                  ; implicit exception: dispatches to 0x00007f5ef52612a5
  0.01%    0.01%       ││    0x00007f5ef525f70c: mov    0x8(%r12,%rbp,8),%r9d  ; implicit exception: dispatches to 0x00007f5ef52612b5
  0.37%    0.50%       ││    0x00007f5ef525f711: cmp    $0xf8019992,%r9d   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                       ││    0x00007f5ef525f718: jne    0x00007f5ef525fff1
  0.36%    0.54%       ││    0x00007f5ef525f71e: lea    (%r12,%rbp,8),%rbx  ;*invokevirtual add
                       ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.08%    0.10%       ││    0x00007f5ef525f722: mov    0x18(%rbx),%r11d   ;*getfield pc
                       ││                                                  ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                       ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.00%    0.00%       ││    0x00007f5ef525f726: cmp    $0x40,%r11d
                       ││    0x00007f5ef525f72a: jg     0x00007f5ef52602d5  ;*if_icmpgt
                       ││                                                  ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                       ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                       ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.37%    0.52%       ││    0x00007f5ef525f730: mov    $0x1,%edx
  0.03%    0.01%       ││    0x00007f5ef525f735: mov    %r11d,%ecx
  0.07%    0.06%       ││    0x00007f5ef525f738: shl    %cl,%rdx           ;*lshl
                       ││                                                  ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                       ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                       ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.92%    0.70%       ││    0x00007f5ef525f73b: mov    0x34(%rsp),%r10d
  0.03%    0.01%       ││    0x00007f5ef525f740: mov    0x10(%r12,%r10,8),%r9  ;*getfield pcsl
                       ││                                                  ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                       ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                       ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
                       ││    0x00007f5ef525f745: mov    %r9,%r10
  0.01%    0.01%       ││    0x00007f5ef525f748: and    %rdx,%r10          ;*land
                       ││                                                  ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                       ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                       ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.40%    0.28%       ││    0x00007f5ef525f74b: test   %r10,%r10
                       ││    0x00007f5ef525f74e: jne    0x00007f5ef5260329  ;*ifeq
                       ││                                                  ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                       ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.05%    0.01%       ││    0x00007f5ef525f754: cmp    $0x40,%r11d
                       ││    0x00007f5ef525f758: jge    0x00007f5ef52603a9  ;*if_icmpge
                       ││                                                  ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                       ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                       ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.00%                ││    0x00007f5ef525f75e: mov    0x34(%rsp),%r10d
  0.00%    0.00%       ││    0x00007f5ef525f763: mov    %r12b,0x18(%r12,%r10,8)  ;*putfield empty
                       ││                                                  ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                       ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                       ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.42%    0.40%       ││    0x00007f5ef525f768: or     %r9,%rdx
  0.04%    0.01%       ││    0x00007f5ef525f76b: mov    %rdx,0x10(%r12,%r10,8)  ;*putfield pcsl
                       ││                                                  ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                       ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                       ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.01%                ││    0x00007f5ef525f770: test   %r8d,%r8d
                       ││    0x00007f5ef525f773: jle    0x00007f5ef5260109  ;*ifle
                       ││                                                  ; - com.google.re2j.Machine::alloc@4 (line 132)
                       ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                       ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
                       ││    0x00007f5ef525f779: mov    %r8d,%ebp
  0.47%    0.52%       ││    0x00007f5ef525f77c: dec    %ebp               ;*isub
                       ││                                                  ; - com.google.re2j.Machine::alloc@13 (line 133)
                       ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                       ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.02%    0.02%       ││    0x00007f5ef525f77e: mov    0x40(%rsp),%r10
  0.01%    0.00%       ││    0x00007f5ef525f783: mov    %ebp,0xc(%r10)     ;*putfield poolSize
                       ││                                                  ; - com.google.re2j.Machine::alloc@14 (line 133)
                       ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                       ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.01%                ││    0x00007f5ef525f787: mov    0xc(%r12,%r13,8),%r10d  ; implicit exception: dispatches to 0x00007f5ef52612d1
  0.46%    0.34%       ││    0x00007f5ef525f78c: cmp    %r10d,%ebp
                       ││    0x00007f5ef525f78f: jae    0x00007f5ef525fe90
  0.04%    0.01%       ││    0x00007f5ef525f795: lea    (%r12,%r13,8),%r10
                       ││    0x00007f5ef525f799: mov    0xc(%r10,%r8,4),%r8d  ;*aaload
                       ││                                                  ; - com.google.re2j.Machine::alloc@25 (line 134)
                       ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                       ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.01%    0.01%       ││    0x00007f5ef525f79e: test   %r8d,%r8d
                       ││    0x00007f5ef525f7a1: je     0x00007f5ef525fee5  ;*putfield inst
                       ││                                                  ; - com.google.re2j.Machine::alloc@45 (line 138)
                       ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                       ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.50%    0.34%       ││    0x00007f5ef525f7a7: mov    0x34(%rsp),%r10d
  0.02%    0.04%       ││    0x00007f5ef525f7ac: mov    0x20(%r12,%r10,8),%r9d  ;*getfield denseThreads
                       ││                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                       ││                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                       ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
           0.01%       ││    0x00007f5ef525f7b1: mov    0xc(%r12,%r10,8),%ecx  ;*getfield size
                       ││                                                  ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                       ││                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                       ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.00%    0.02%       ││    0x00007f5ef525f7b6: lea    (%r12,%r8,8),%r10
  0.40%    0.40%       ││    0x00007f5ef525f7ba: mov    %ecx,%r11d
  0.02%    0.03%       ││    0x00007f5ef525f7bd: inc    %r11d
  0.01%                ││    0x00007f5ef525f7c0: mov    0x34(%rsp),%esi
  0.00%                ││    0x00007f5ef525f7c4: mov    %r11d,0xc(%r12,%rsi,8)  ;*putfield size
                       ││                                                  ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                       ││                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                       ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.48%    0.42%       ││    0x00007f5ef525f7c9: mov    %r10,%r11
  0.03%    0.02%       ││    0x00007f5ef525f7cc: mov    %rbx,%r10
  0.00%                ││    0x00007f5ef525f7cf: shr    $0x3,%r10
                       ││    0x00007f5ef525f7d3: mov    %r10d,0x10(%r12,%r8,8)
  0.39%    0.55%       ││    0x00007f5ef525f7d8: shr    $0x9,%r11
  0.01%    0.03%       ││    0x00007f5ef525f7dc: movabs $0x7f5f063ce000,%r10
  0.00%    0.00%       ││    0x00007f5ef525f7e6: mov    %r12b,(%r10,%r11,1)  ;*putfield inst
                       ││                                                  ; - com.google.re2j.Machine::alloc@45 (line 138)
                       ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                       ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.01%    0.01%       ││    0x00007f5ef525f7ea: mov    0xc(%r12,%r9,8),%r11d  ; implicit exception: dispatches to 0x00007f5ef52612e1
  0.47%    0.57%       ││    0x00007f5ef525f7ef: cmp    %r11d,%ecx
                       ││    0x00007f5ef525f7f2: jae    0x00007f5ef525fef9  ;*aastore
                       ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                       ││                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                       ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.02%    0.02%       ││    0x00007f5ef525f7f8: test   %edi,%edi
                    ╭  ││    0x00007f5ef525f7fa: jl     0x00007f5ef525f8a1  ;*ifge
                    │  ││                                                  ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                    │  ││                                                  ; - com.google.re2j.Machine::match@323 (line 241)
                    │  ││    0x00007f5ef525f800: xor    %ebx,%ebx          ;*iload_0
                    │  ││                                                  ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                    │  ││                                                  ; - com.google.re2j.Machine::match@323 (line 241)
           0.01%    │  ││↗   0x00007f5ef525f802: cmp    $0xa,%edi
                    │  │││   0x00007f5ef525f805: je     0x00007f5ef525fd5e  ;*iload_1
                    │  │││                                                 ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                    │  │││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.45%    0.63%    │  │││   0x00007f5ef525f80b: mov    0x2c(%rsp),%r10d
  0.03%    0.03%    │  │││   0x00007f5ef525f810: test   %r10d,%r10d
                    │  │││   0x00007f5ef525f813: jl     0x00007f5ef525fb98  ;*iload_1
                    │  │││                                                 ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                    │  │││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.02%             │  │││   0x00007f5ef525f819: cmp    $0xa,%r10d
                    │  │││   0x00007f5ef525f81d: je     0x00007f5ef525fd66  ;*iload_0
                    │  │││                                                 ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                    │  │││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
                    │  │││   0x00007f5ef525f823: mov    %edi,%r10d
  0.52%    0.58%    │  │││   0x00007f5ef525f826: add    $0xffffffbf,%r10d
  0.02%    0.03%    │  │││   0x00007f5ef525f82a: lea    (%r12,%r9,8),%r11  ;*getfield denseThreads
                    │  │││                                                 ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                    │  │││                                                 ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │  │││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.01%    0.00%    │  │││   0x00007f5ef525f82e: lea    0x10(%r11,%rcx,4),%r11
  0.02%    0.00%    │  │││   0x00007f5ef525f833: mov    %r8d,(%r11)
  0.55%    0.62%    │  │││   0x00007f5ef525f836: shr    $0x9,%r11
  0.02%    0.04%    │  │││   0x00007f5ef525f83a: movabs $0x7f5f063ce000,%r8
  0.02%    0.00%    │  │││   0x00007f5ef525f844: mov    %r12b,(%r8,%r11,1)  ;*aastore
                    │  │││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    │  │││                                                 ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │  │││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.10%    0.05%    │  │││   0x00007f5ef525f848: cmp    $0x1a,%r10d
                    │╭ │││   0x00007f5ef525f84c: jb     0x00007f5ef525f85f  ;*if_icmple
                    ││ │││                                                 ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                    ││ │││                                                 ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    ││ │││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.37%    0.32%    ││ │││   0x00007f5ef525f84e: mov    %edi,%r10d
  0.04%    0.03%    ││ │││   0x00007f5ef525f851: add    $0xffffff9f,%r10d
           0.03%    ││ │││   0x00007f5ef525f855: cmp    $0x1a,%r10d
                    ││ │││   0x00007f5ef525f859: jae    0x00007f5ef525fdc1  ;*iconst_1
                    ││ │││                                                 ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                    ││ │││                                                 ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    ││ │││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.05%    0.03%    │↘ │││   0x00007f5ef525f85f: mov    $0x1,%ebp          ;*ireturn
                    │  │││                                                 ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                    │  │││                                                 ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    │  │││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.30%    0.20%    │  │││   0x00007f5ef525f864: mov    0x2c(%rsp),%r11d
  0.03%    0.02%    │  │││   0x00007f5ef525f869: add    $0xffffffbf,%r11d
  0.01%    0.01%    │  │││   0x00007f5ef525f86d: cmp    $0x1a,%r11d
                    │ ╭│││   0x00007f5ef525f871: jb     0x00007f5ef525f886  ;*if_icmple
                    │ ││││                                                 ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                    │ ││││                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    │ ││││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.12%    0.08%    │ ││││   0x00007f5ef525f873: mov    0x2c(%rsp),%r10d
  0.34%    0.33%    │ ││││   0x00007f5ef525f878: add    $0xffffff9f,%r10d
  0.03%    0.04%    │ ││││   0x00007f5ef525f87c: cmp    $0x1a,%r10d
  0.02%    0.02%    │ ││││   0x00007f5ef525f880: jae    0x00007f5ef525fde2  ;*iconst_1
                    │ ││││                                                 ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                    │ ││││                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    │ ││││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.04%    0.04%    │ ↘│││   0x00007f5ef525f886: mov    $0x1,%r11d         ;*ireturn
                    │  │││                                                 ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                    │  │││                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    │  │││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.38%    0.36%    │  │││   0x00007f5ef525f88c: cmp    %r11d,%ebp
                    │  ╰││   0x00007f5ef525f88f: je     0x00007f5ef525f52e  ;*if_icmpeq
                    │   ││                                                 ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                    │   ││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.01%    0.02%    │   ││   0x00007f5ef525f895: or     $0x10,%ebx         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                    │   ││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.01%    0.02%    │   ││   0x00007f5ef525f898: mov    %ebx,0x4c(%rsp)
  0.10%    0.11%    │   ╰│   0x00007f5ef525f89c: jmpq   0x00007f5ef525f535
                    ↘    │   0x00007f5ef525f8a1: mov    $0x5,%ebx
                         ╰   0x00007f5ef525f8a6: jmpq   0x00007f5ef525f802
                             0x00007f5ef525f8ab: nopl   0x0(%rax,%rax,1)
  0.00%                      0x00007f5ef525f8b0: mov    %eax,0x5c(%rsp)
  0.01%    0.01%             0x00007f5ef525f8b4: jmpq   0x00007f5ef525faeb
                             0x00007f5ef525f8b9: mov    0x5c(%rsp),%esi
                             0x00007f5ef525f8bd: add    $0x2,%esi
                             0x00007f5ef525f8c0: mov    %esi,0x5c(%rsp)
                             0x00007f5ef525f8c4: mov    0x5c(%rsp),%esi
                             0x00007f5ef525f8c8: inc    %esi
                             0x00007f5ef525f8ca: mov    %esi,0x58(%rsp)
                             0x00007f5ef525f8ce: jmp    0x00007f5ef525f8f2
           0.00%             0x00007f5ef525f8d0: mov    0x5c(%rsp),%esi
                             0x00007f5ef525f8d4: add    $0x2,%esi
                             0x00007f5ef525f8d7: mov    %esi,0x58(%rsp)
                          ╭  0x00007f5ef525f8db: jmp    0x00007f5ef525f8e8
                          │  0x00007f5ef525f8dd: mov    0x5c(%rsp),%esi
                          │  0x00007f5ef525f8e1: add    $0x2,%esi
                          │  0x00007f5ef525f8e4: mov    %esi,0x5c(%rsp)
                          ↘  0x00007f5ef525f8e8: mov    0x5c(%rsp),%esi
                             0x00007f5ef525f8ec: inc    %esi               ;*iinc
                                                                           ; - java.lang.String::indexOf@69 (line 1772)
                                                                           ; - java.lang.String::indexOf@21 (line 1718)
....................................................................................................
 25.07%   26.75%  <total for region 2>

....[Hottest Regions]...............................................................................
 57.10%   57.45%         C2, level 4  com.google.re2j.Machine::step, version 529 (1345 bytes) 
 25.07%   26.75%         C2, level 4  com.google.re2j.Machine::match, version 572 (930 bytes) 
  6.88%    6.90%         C2, level 4  com.google.re2j.Machine::step, version 529 (403 bytes) 
  4.41%    4.78%         C2, level 4  com.google.re2j.Machine::step, version 529 (106 bytes) 
  1.51%    0.24%         C2, level 4  com.google.re2j.Machine::init, version 565 (299 bytes) 
  0.83%    1.20%         C2, level 4  com.google.re2j.Machine::match, version 572 (70 bytes) 
  0.31%    0.31%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.28%    0.05%         C2, level 4  com.google.re2j.Machine::init, version 565 (43 bytes) 
  0.28%    0.17%         C2, level 4  com.google.re2j.Machine::match, version 572 (447 bytes) 
  0.17%    0.06%         C2, level 4  com.google.re2j.Machine::init, version 565 (111 bytes) 
  0.15%    0.12%         C2, level 4  com.google.re2j.Machine::match, version 572 (412 bytes) 
  0.12%    0.04%         C2, level 4  com.google.re2j.RE2::match, version 583 (8 bytes) 
  0.11%    0.01%         C2, level 4  com.google.re2j.RE2::match, version 583 (129 bytes) 
  0.09%            [kernel.kallsyms]  [unknown] (37 bytes) 
  0.09%    0.02%         C2, level 4  com.google.re2j.RE2::match, version 583 (0 bytes) 
  0.08%    0.05%         C2, level 4  java.util.Collections::shuffle, version 591 (71 bytes) 
  0.08%    0.07%         C2, level 4  com.google.re2j.Machine::match, version 572 (140 bytes) 
  0.07%    0.05%         C2, level 4  com.google.re2j.RE2::match, version 583 (0 bytes) 
  0.06%            [kernel.kallsyms]  [unknown] (2 bytes) 
  0.06%                  C2, level 4  com.google.re2j.RE2::match, version 583 (21 bytes) 
  2.23%    1.71%  <...other 344 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 68.39%   69.13%         C2, level 4  com.google.re2j.Machine::step, version 529 
 26.61%   28.37%         C2, level 4  com.google.re2j.Machine::match, version 572 
  2.06%    0.36%         C2, level 4  com.google.re2j.Machine::init, version 565 
  1.18%    0.91%   [kernel.kallsyms]  [unknown] 
  0.57%    0.26%         C2, level 4  com.google.re2j.RE2::match, version 583 
  0.16%    0.08%         C2, level 4  java.util.Collections::shuffle, version 591 
  0.11%    0.03%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 635 
  0.08%    0.06%      hsdis-amd64.so  [unknown] 
  0.06%    0.00%              [vdso]  __vdso_clock_gettime 
  0.04%    0.02%           libjvm.so  fileStream::write 
  0.03%    0.02%           libjvm.so  StringTable::unlink_or_oops_do 
  0.03%    0.00%  libpthread-2.26.so  __libc_write 
  0.03%    0.06%           libjvm.so  RelocIterator::initialize 
  0.03%    0.02%           libjvm.so  SpinPause 
  0.03%    0.08%        libc-2.26.so  vfprintf 
  0.03%    0.02%              [vdso]  [unknown] 
  0.02%    0.05%        libc-2.26.so  _IO_fwrite 
  0.02%    0.03%           libjvm.so  outputStream::update_position 
  0.02%    0.00%           libjvm.so  ParallelTaskTerminator::offer_termination 
  0.02%                  C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 590 
  0.44%    0.26%  <...other 68 warm methods...>
....................................................................................................
100.00%   99.79%  <totals>

....[Distribution by Source]........................................................................
 97.92%   98.24%         C2, level 4
  1.18%    0.91%   [kernel.kallsyms]
  0.40%    0.41%           libjvm.so
  0.13%    0.28%        libc-2.26.so
  0.09%    0.02%              [vdso]
  0.08%    0.06%      hsdis-amd64.so
  0.08%    0.01%         interpreter
  0.06%    0.02%  libpthread-2.26.so
  0.03%    0.04%        runtime stub
  0.01%    0.00%         C1, level 3
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:44

Benchmark                     Mode  Cnt      Score    Error  Units
Re2jFindRegex.testExp1       thrpt   20  19286.341 ± 68.939  ops/s
Re2jFindRegex.testExp1:·asm  thrpt             NaN             ---
