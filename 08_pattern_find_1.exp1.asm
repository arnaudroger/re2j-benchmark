# JMH version: 1.19
# VM version: JDK 1.8.0_131, VM 25.131-b11
# VM invoker: /usr/lib/jvm/java-8-oracle/jre/bin/java
# VM options: <none>
# Warmup: 20 iterations, 1 s each
# Measurement: 20 iterations, 1 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Throughput, ops/time
# Benchmark: com.github.arnaudroger.re2j.Re2jRegex.testExp1

# Run progress: 0.00% complete, ETA 00:00:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 3312.383 ops/s
# Warmup Iteration   2: 18507.562 ops/s
# Warmup Iteration   3: 19030.874 ops/s
# Warmup Iteration   4: 19349.373 ops/s
# Warmup Iteration   5: 18904.594 ops/s
# Warmup Iteration   6: 19176.148 ops/s
# Warmup Iteration   7: 19462.882 ops/s
# Warmup Iteration   8: 19476.105 ops/s
# Warmup Iteration   9: 19220.167 ops/s
# Warmup Iteration  10: 19450.127 ops/s
# Warmup Iteration  11: 19225.357 ops/s
# Warmup Iteration  12: 19464.028 ops/s
# Warmup Iteration  13: 19346.898 ops/s
# Warmup Iteration  14: 19452.205 ops/s
# Warmup Iteration  15: 18884.365 ops/s
# Warmup Iteration  16: 19463.407 ops/s
# Warmup Iteration  17: 19404.959 ops/s
# Warmup Iteration  18: 19339.168 ops/s
# Warmup Iteration  19: 19427.059 ops/s
# Warmup Iteration  20: 19333.667 ops/s
Iteration   1: 19338.543 ops/s
Iteration   2: 19173.712 ops/s
Iteration   3: 19073.638 ops/s
Iteration   4: 19096.056 ops/s
Iteration   5: 19219.240 ops/s
Iteration   6: 19342.498 ops/s
Iteration   7: 19266.034 ops/s
Iteration   8: 19047.907 ops/s
Iteration   9: 19164.984 ops/s
Iteration  10: 19316.059 ops/s
Iteration  11: 19295.805 ops/s
Iteration  12: 19321.069 ops/s
Iteration  13: 19209.224 ops/s
Iteration  14: 19309.656 ops/s
Iteration  15: 19324.116 ops/s
Iteration  16: 19201.015 ops/s
Iteration  17: 19172.173 ops/s
Iteration  18: 19160.158 ops/s
Iteration  19: 19338.327 ops/s
Iteration  20: 19250.269 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jRegex.testExp1":
  19231.024 ±(99.9%) 81.080 ops/s [Average]
  (min, avg, max) = (19047.907, 19231.024, 19342.498), stdev = 93.371
  CI (99.9%): [19149.945, 19312.104] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jRegex.testExp1:·asm":
PrintAssembly processed: 209119 total address lines.
Perf output processed (skipped 23.349 seconds):
 Column 1: cycles (20344 events)
 Column 2: instructions (20388 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 521 (1345 bytes) 

                        0x00007f08f1241097: mov    %r12b,(%r11,%r10,1)  ;*aastore
                                                                      ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                      ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 276)
                        0x00007f08f124109b: xor    %r9d,%r9d
                        0x00007f08f124109e: mov    0x20(%rsp),%r13
                        0x00007f08f12410a3: vmovd  %xmm5,%ebx
                        0x00007f08f12410a7: vmovd  %xmm2,%edi         ;*synchronization entry
                                                                      ; - com.google.re2j.Machine::step@-1 (line 276)
  0.10%    0.26%   ↗ ↗  0x00007f08f12410ab: mov    0xa4(%rsp),%eax
  0.17%    0.26%   │ │  0x00007f08f12410b2: mov    0xac(%rsp),%r10d   ;*aload
                   │ │                                                ; - com.google.re2j.Machine::step@216 (line 302)
  1.72%    1.91%   │ │  0x00007f08f12410ba: test   %r9,%r9
                  ╭│ │  0x00007f08f12410bd: je     0x00007f08f1241103  ;*ifnull
                  ││ │                                                ; - com.google.re2j.Machine::step@218 (line 302)
           0.00%  ││ │  0x00007f08f12410bf: mov    0xc(%r12,%rdi,8),%ebp  ;*arraylength
                  ││ │                                                ; - com.google.re2j.Machine::free@8 (line 167)
                  ││ │                                                ; - com.google.re2j.Machine::step@224 (line 303)
                  ││ │                                                ; implicit exception: dispatches to 0x00007f08f1242b19
           0.00%  ││ │  0x00007f08f12410c4: cmp    %ebp,%ebx
                  ││ │  0x00007f08f12410c6: jge    0x00007f08f1241a6d  ;*if_icmplt
                  ││ │                                                ; - com.google.re2j.Machine::free@9 (line 167)
                  ││ │                                                ; - com.google.re2j.Machine::step@224 (line 303)
  0.01%           ││ │  0x00007f08f12410cc: mov    %ebx,%r11d
  1.37%    1.90%  ││ │  0x00007f08f12410cf: inc    %r11d
                  ││ │  0x00007f08f12410d2: mov    %r11d,0xc(%r13)    ;*putfield poolSize
                  ││ │                                                ; - com.google.re2j.Machine::free@45 (line 170)
                  ││ │                                                ; - com.google.re2j.Machine::step@224 (line 303)
                  ││ │  0x00007f08f12410d6: cmp    %ebp,%ebx
                  ││ │  0x00007f08f12410d8: jae    0x00007f08f12418d9  ;*aastore
                  ││ │                                                ; - com.google.re2j.Machine::free@49 (line 170)
                  ││ │                                                ; - com.google.re2j.Machine::step@224 (line 303)
                  ││ │  0x00007f08f12410de: mov    %r9,%r8
  1.45%    1.67%  ││ │  0x00007f08f12410e1: shr    $0x3,%r8
                  ││ │  0x00007f08f12410e5: lea    (%r12,%rdi,8),%r11  ;*getfield pool
                  ││ │                                                ; - com.google.re2j.Machine::free@5 (line 167)
                  ││ │                                                ; - com.google.re2j.Machine::step@224 (line 303)
  0.00%    0.00%  ││ │  0x00007f08f12410e9: lea    0x10(%r11,%rbx,4),%r11
                  ││ │  0x00007f08f12410ee: mov    %r8d,(%r11)
  1.43%    1.86%  ││ │  0x00007f08f12410f1: shr    $0x9,%r11
                  ││ │  0x00007f08f12410f5: movabs $0x7f0902706000,%r8
           0.00%  ││ │  0x00007f08f12410ff: mov    %r12b,(%r8,%r11,1)  ;*goto
                  ││ │                                                ; - com.google.re2j.Machine::step@230 (line 277)
  0.16%    0.21%  ↘│ │  0x00007f08f1241103: mov    0x8(%rsp),%r11
  1.48%    1.65%   │ │  0x00007f08f1241108: mov    0xc(%r11),%r11d    ;*getfield size
                   │ │                                                ; - com.google.re2j.Machine::step@15 (line 277)
  0.21%    0.15%   │ │  0x00007f08f124110c: inc    %r10d              ; OopMap{r13=Oop r14=Oop [8]=Oop off=495}
                   │ │                                                ;*goto
                   │ │                                                ; - com.google.re2j.Machine::step@230 (line 277)
  0.18%    0.17%   │ │  0x00007f08f124110f: test   %eax,0x18abceeb(%rip)        # 0x00007f0909cfe000
                   │ │                                                ;*goto
                   │ │                                                ; - com.google.re2j.Machine::step@230 (line 277)
                   │ │                                                ;   {poll}
  0.16%    0.20%   │ │  0x00007f08f1241115: cmp    %r11d,%r10d
                   │ │  0x00007f08f1241118: jge    0x00007f08f1241705  ;*aload_1
                   │ │                                                ; - com.google.re2j.Machine::step@21 (line 278)
  1.28%    1.41%   │ │  0x00007f08f124111e: mov    0x8(%rsp),%r11
  0.21%    0.28%   │ │  0x00007f08f1241123: mov    0x20(%r11),%r8d    ;*getfield denseThreads
                   │ │                                                ; - com.google.re2j.Machine::step@22 (line 278)
  0.23%    0.36%   │ │  0x00007f08f1241127: mov    0xc(%r12,%r8,8),%r9d  ; implicit exception: dispatches to 0x00007f08f1242ae5
  1.54%    1.83%   │ │  0x00007f08f124112c: cmp    %r9d,%r10d
                   │ │  0x00007f08f124112f: jae    0x00007f08f1241847
  1.37%    1.91%   │ │  0x00007f08f1241135: lea    (%r12,%r8,8),%r11
  0.23%    0.24%   │ │  0x00007f08f1241139: mov    0x10(%r11,%r10,4),%r11d  ;*aaload
                   │ │                                                ; - com.google.re2j.Machine::step@27 (line 278)
  0.16%    0.17%   │ │  0x00007f08f124113e: mov    0x10(%r12,%r11,8),%ebp  ;*getfield inst
                   │ │                                                ; - com.google.re2j.Machine::step@78 (line 283)
                   │ │                                                ; implicit exception: dispatches to 0x00007f08f1242af9
  3.02%    3.29%   │ │  0x00007f08f1241143: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007f08f1242b09
  5.35%    5.54%   │ │  0x00007f08f1241148: cmp    $0xf8019992,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                   │ │  0x00007f08f124114f: jne    0x00007f08f1241891
  1.16%    1.31%   │ │  0x00007f08f1241155: lea    (%r12,%rbp,8),%rcx  ;*invokevirtual isMatch
                   │ │                                                ; - com.google.re2j.Machine::step@85 (line 285)
           0.00%   │ │  0x00007f08f1241159: mov    0xc(%rcx),%r8d     ;*getfield op
                   │ │                                                ; - com.google.re2j.Inst::isMatch@1 (line 78)
                   │ │                                                ; - com.google.re2j.Inst$MatchInst::isMatch@1 (line 82)
                   │ │                                                ; - com.google.re2j.Machine::step@85 (line 285)
  0.00%    0.02%   │ │  0x00007f08f124115d: cmp    $0x6,%r8d
                   │ │  0x00007f08f1241161: je     0x00007f08f124192d  ;*if_icmpne
                   │ │                                                ; - com.google.re2j.Inst::isMatch@6 (line 78)
                   │ │                                                ; - com.google.re2j.Inst$MatchInst::isMatch@1 (line 82)
                   │ │                                                ; - com.google.re2j.Machine::step@85 (line 285)
  1.76%    1.69%   │ │  0x00007f08f1241167: mov    0xc(%r13),%ebx     ;*getfield poolSize
                   │ │                                                ; - com.google.re2j.Machine::alloc@1 (line 132)
                   │ │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                   │ │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                   │ │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.07%    0.07%   │ │  0x00007f08f124116b: mov    0x24(%r13),%edi    ;*getfield pool
                   │ │                                                ; - com.google.re2j.Machine::alloc@18 (line 134)
                   │ │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                   │ │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                   │ │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                   │ │  0x00007f08f124116f: lea    (%r12,%r11,8),%r9  ;*aaload
                   │ │                                                ; - com.google.re2j.Machine::step@27 (line 278)
  0.01%            │ │  0x00007f08f1241173: cmp    $0xa,%r8d
                   │ │  0x00007f08f1241177: jne    0x00007f08f124169a  ;*if_icmpne
                   │ │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@6 (line 134)
                   │ │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.48%    0.45%   │ │  0x00007f08f124117d: mov    0x1c(%rcx),%ecx    ;*getfield outInst
                   │ │                                                ; - com.google.re2j.Machine::step@195 (line 300)
  0.02%            │ │  0x00007f08f1241180: mov    0xc(%r12,%r11,8),%r8d  ;*getfield cap
                   │ │                                                ; - com.google.re2j.Machine::step@203 (line 300)
  0.03%            │ │  0x00007f08f1241185: mov    0x8(%r12,%rcx,8),%esi  ; implicit exception: dispatches to 0x00007f08f1242b29
  1.38%    0.96%   │ │  0x00007f08f124118a: lea    (%r12,%rcx,8),%rdx
  0.00%    0.00%   │ │  0x00007f08f124118e: cmp    $0xf8019843,%esi   ;   {metadata(&apos;com/google/re2j/Inst$AltInst&apos;)}
                   │ │  0x00007f08f1241194: jne    0x00007f08f124173c  ;*invokevirtual add
                   │ │                                                ; - com.google.re2j.Machine::step@211 (line 300)
  0.48%    0.26%   │ │  0x00007f08f124119a: mov    0x18(%rdx),%ecx    ;*getfield pc
                   │ │                                                ; - com.google.re2j.Inst$AltInst::add@2 (line 187)
                   │ │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.07%    0.07%   │ │  0x00007f08f124119d: mov    0x10(%r14),%rsi    ;*getfield pcsl
                   │ │                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                   │ │                                                ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                   │ │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                   │ │                                                ; implicit exception: dispatches to 0x00007f08f1242b51
                   │ │  0x00007f08f12411a1: cmp    $0x40,%ecx
                   │ │  0x00007f08f12411a4: jg     0x00007f08f1241d05  ;*if_icmpgt
                   │ │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                   │ │                                                ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                   │ │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.52%    0.47%   │ │  0x00007f08f12411aa: vmovq  %rdx,%xmm3
                   │ │  0x00007f08f12411af: vmovd  %r8d,%xmm4
                   │ │  0x00007f08f12411b4: vmovq  %r9,%xmm0
                   │ │  0x00007f08f12411b9: vmovd  %edi,%xmm2
  0.50%    0.03%   │ │  0x00007f08f12411bd: vmovd  %ebx,%xmm1
                   │ │  0x00007f08f12411c1: mov    %r11d,%edx
                   │ │  0x00007f08f12411c4: mov    %r10d,0xac(%rsp)
                   │ │  0x00007f08f12411cc: mov    %eax,0xa4(%rsp)
  0.56%    0.02%   │ │  0x00007f08f12411d3: mov    %r13,0x20(%rsp)
                   │ │  0x00007f08f12411d8: mov    $0x1,%r8d
                   │ │  0x00007f08f12411de: shl    %cl,%r8            ;*lshl
                   │ │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                   │ │                                                ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                   │ │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.48%    0.01%   │ │  0x00007f08f12411e1: mov    %rsi,%r11
                   │ │  0x00007f08f12411e4: and    %r8,%r11
                   │ │  0x00007f08f12411e7: test   %r11,%r11
                   ╰ │  0x00007f08f12411ea: jne    0x00007f08f12410ab  ;*ifeq
                     │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.54%    0.02%     │  0x00007f08f12411f0: cmp    $0x40,%ecx
                     │  0x00007f08f12411f3: jge    0x00007f08f1241d51  ;*if_icmpge
                     │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                     │  0x00007f08f12411f9: mov    %r12b,0x18(%r14)   ;*putfield empty
                     │                                                ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                     │  0x00007f08f12411fd: vmovq  %xmm3,%r10
                     │  0x00007f08f1241202: mov    0x1c(%r10),%ebp    ;*getfield outInst
                     │                                                ; - com.google.re2j.Inst$AltInst::add@23 (line 192)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.51%    0.14%     │  0x00007f08f1241206: or     %rsi,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                     │  0x00007f08f1241209: mov    %r8,0x10(%r14)     ;*putfield pcsl
                     │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                     │  0x00007f08f124120d: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f08f1242b65
  0.72%    0.01%     │  0x00007f08f1241212: cmp    $0xf8019992,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                     │  0x00007f08f1241219: jne    0x00007f08f12419d1
  0.45%    0.01%     │  0x00007f08f124121f: lea    (%r12,%rbp,8),%rbx  ;*invokevirtual add
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                     │  0x00007f08f1241223: mov    0x18(%rbx),%r9d    ;*getfield pc
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.20%    0.00%     │  0x00007f08f1241227: cmp    $0x40,%r9d
                     │  0x00007f08f124122b: jg     0x00007f08f1241da1  ;*if_icmpgt
                     │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.32%    0.04%     │  0x00007f08f1241231: mov    $0x1,%r10d
  0.09%    0.03%     │  0x00007f08f1241237: mov    %r9d,%ecx
                     │  0x00007f08f124123a: shl    %cl,%r10           ;*lshl
                     │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.93%    0.57%     │  0x00007f08f124123d: mov    %r8,%r11
                     │  0x00007f08f1241240: and    %r10,%r11          ;*land
                     │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
           0.00%     │  0x00007f08f1241243: test   %r11,%r11
                     │  0x00007f08f1241246: jne    0x00007f08f1241df9  ;*ifeq
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.19%    0.23%     │  0x00007f08f124124c: cmp    $0x40,%r9d
                     │  0x00007f08f1241250: jge    0x00007f08f1241e61  ;*if_icmpge
                     │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.34%    0.29%     │  0x00007f08f1241256: or     %r10,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                     │  0x00007f08f1241259: mov    %r8,0x10(%r14)     ;*putfield pcsl
                     │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.07%    0.04%     │  0x00007f08f124125d: vmovq  %xmm0,%r10
  0.13%    0.11%     │  0x00007f08f1241262: mov    %rbx,%r11
  0.28%    0.26%     │  0x00007f08f1241265: shr    $0x3,%r11
                     │  0x00007f08f1241269: mov    %r11d,0x10(%r12,%rdx,8)
  0.03%    0.03%     │  0x00007f08f124126e: shr    $0x9,%r10
  0.12%    0.07%     │  0x00007f08f1241272: movabs $0x7f0902706000,%r11
  0.27%    0.13%     │  0x00007f08f124127c: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@41 (line 101)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                     │  0x00007f08f1241280: vmovd  %xmm4,%r10d
  0.06%    0.00%     │  0x00007f08f1241285: mov    0xc(%r12,%r10,8),%r9d  ;*arraylength
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@45 (line 103)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                     │                                                ; implicit exception: dispatches to 0x00007f08f1242b89
  0.15%    0.02%     │  0x00007f08f124128a: test   %r9d,%r9d
                     │  0x00007f08f124128d: jg     0x00007f08f1241eb9  ;*ifle
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.25%    0.05%     │  0x00007f08f1241293: mov    %r9d,%r13d
                     │  0x00007f08f1241296: mov    0xc(%r14),%r10d    ;*getfield size
                     │                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.05%    0.01%     │  0x00007f08f124129a: mov    %r10d,0x28(%rsp)
  0.12%    0.06%     │  0x00007f08f124129f: mov    0x20(%r14),%r10d   ;*getfield denseThreads
                     │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.29%    0.23%     │  0x00007f08f12412a3: vmovd  %r10d,%xmm0
                     │  0x00007f08f12412a8: mov    0x28(%rsp),%r10d
  0.03%    0.03%     │  0x00007f08f12412ad: inc    %r10d              ;*iadd
                     │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 65)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.13%    0.16%     │  0x00007f08f12412b0: vmovd  %r10d,%xmm6
  0.37%    0.29%     │  0x00007f08f12412b5: mov    %r10d,0xc(%r14)    ;*putfield size
                     │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                     │  0x00007f08f12412b9: vmovd  %xmm0,%r10d
  0.06%    0.05%     │  0x00007f08f12412be: mov    0xc(%r12,%r10,8),%edi  ; implicit exception: dispatches to 0x00007f08f1242b99
  0.10%    0.16%     │  0x00007f08f12412c3: mov    0x28(%rsp),%r10d
  0.29%    0.37%     │  0x00007f08f12412c8: cmp    %edi,%r10d
                     │  0x00007f08f12412cb: jae    0x00007f08f1241985  ;*aastore
                     │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                     │  0x00007f08f12412d1: vmovq  %xmm3,%r10
  0.05%    0.05%     │  0x00007f08f12412d6: mov    0x20(%r10),%r10d   ;*getfield argInst
                     │                                                ; - com.google.re2j.Inst$AltInst::add@41 (line 193)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.15%    0.15%     │  0x00007f08f12412da: mov    %r10d,%ebx
  0.24%    0.32%     │  0x00007f08f12412dd: vmovd  %xmm0,%r10d
                     │  0x00007f08f12412e2: lea    (%r12,%r10,8),%r9  ;*getfield denseThreads
                     │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%    0.03%     │  0x00007f08f12412e6: mov    0x28(%rsp),%r10d
  0.12%    0.14%     │  0x00007f08f12412eb: lea    0x10(%r9,%r10,4),%r10
  0.27%    0.28%     │  0x00007f08f12412f0: mov    %edx,(%r10)
                     │  0x00007f08f12412f3: shr    $0x9,%r10
  0.03%    0.04%     │  0x00007f08f12412f7: mov    %r12b,(%r11,%r10,1)  ;*aastore
                     │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.14%    0.13%     │  0x00007f08f12412fb: mov    %ebx,%r10d
  0.37%    0.31%     │  0x00007f08f12412fe: mov    0x8(%r12,%r10,8),%ecx  ;*invokevirtual add
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                     │                                                ; implicit exception: dispatches to 0x00007f08f1242bb5
                     │  0x00007f08f1241303: movslq 0x28(%rsp),%r10
  0.06%    0.05%     │  0x00007f08f1241308: lea    (%r9,%r10,4),%rdx  ;*aastore
                     │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.11%    0.14%     │  0x00007f08f124130c: mov    %rdx,%rsi
  0.31%    0.35%     │  0x00007f08f124130f: add    $0x14,%rsi         ;*aastore
                     │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                     │  0x00007f08f1241313: vmovd  %xmm1,%r10d
  0.04%    0.07%     │  0x00007f08f1241318: dec    %r10d              ;*isub
                     │                                                ; - com.google.re2j.Machine::alloc@13 (line 133)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.19%    0.11%     │  0x00007f08f124131b: vmovd  %r10d,%xmm5
  0.21%    0.37%     │  0x00007f08f1241320: mov    %ebx,%r10d
                     │  0x00007f08f1241323: lea    (%r12,%r10,8),%r11
  0.05%    0.00%     │  0x00007f08f1241327: mov    0x28(%rsp),%r10d
  0.14%    0.04%     │  0x00007f08f124132c: add    $0x2,%r10d         ;*iadd
                     │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 65)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.31%    0.09%     │  0x00007f08f1241330: cmp    $0xf8019886,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                     │  0x00007f08f1241336: jne    0x00007f08f1240faf  ;*invokevirtual add
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                     │  0x00007f08f124133c: mov    %r11,%rax
  0.04%              │  0x00007f08f124133f: mov    0x18(%r11),%r11d   ;*getfield pc
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@2 (line 248)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.17%    0.06%     │  0x00007f08f1241343: mov    %r11d,%ecx
  0.28%    0.12%     │  0x00007f08f1241346: cmp    $0x40,%r11d
                     │  0x00007f08f124134a: jg     0x00007f08f12421c5  ;*if_icmpgt
                     │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@5 (line 248)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%    0.02%     │  0x00007f08f1241350: mov    $0x1,%ebx
  0.06%    0.02%     │  0x00007f08f1241355: shl    %cl,%rbx           ;*lshl
                     │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@5 (line 248)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.43%    0.37%     │  0x00007f08f1241358: mov    %r8,%r11
  0.03%    0.04%     │  0x00007f08f124135b: and    %rbx,%r11          ;*land
                     │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@5 (line 248)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.15%    0.15%     │  0x00007f08f124135e: test   %r11,%r11
                     │  0x00007f08f1241361: jne    0x00007f08f1242211  ;*ifeq
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@8 (line 248)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.33%    0.41%     │  0x00007f08f1241367: mov    %ecx,%r11d
  0.01%    0.02%     │  0x00007f08f124136a: cmp    $0x40,%r11d
                     │  0x00007f08f124136e: jge    0x00007f08f124226d  ;*if_icmpge
                     │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@19 (line 251)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.05%              │  0x00007f08f1241374: mov    %rax,%r11
  0.11%    0.01%     │  0x00007f08f1241377: mov    0x14(%r11),%ebp    ;*getfield arg
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@23 (line 253)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.30%    0.03%     │  0x00007f08f124137b: or     %rbx,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@19 (line 251)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%    0.01%     │  0x00007f08f124137e: mov    %r8,0x10(%r14)     ;*putfield pcsl
                     │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@19 (line 251)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.03%    0.02%     │  0x00007f08f1241382: cmp    %r13d,%ebp
                     │  0x00007f08f1241385: jl     0x00007f08f1242319  ;*if_icmpge
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@28 (line 253)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.15%    0.09%     │  0x00007f08f124138b: mov    0x1c(%r11),%ebp    ;*getfield outInst
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@75 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.44%    0.46%     │  0x00007f08f124138f: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f08f1242bf1
  0.78%    0.98%     │  0x00007f08f1241394: cmp    $0xf8019843,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$AltInst&apos;)}
                     │  0x00007f08f124139b: jne    0x00007f08f1241c89
  0.20%    0.32%     │  0x00007f08f12413a1: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.06%    0.13%     │  0x00007f08f12413a5: vmovq  %r11,%xmm3
  0.23%    0.25%     │  0x00007f08f12413aa: mov    0x18(%r11),%r11d   ;*getfield pc
                     │                                                ; - com.google.re2j.Inst$AltInst::add@2 (line 187)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%    0.04%     │  0x00007f08f12413ae: mov    %r11d,%eax
  0.23%    0.27%     │  0x00007f08f12413b1: cmp    $0x40,%r11d
                     │  0x00007f08f12413b5: jg     0x00007f08f1242429  ;*if_icmpgt
                     │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.05%    0.05%     │  0x00007f08f12413bb: mov    $0x1,%ebx
  0.21%    0.20%     │  0x00007f08f12413c0: mov    %r11d,%ecx
  0.00%    0.01%     │  0x00007f08f12413c3: shl    %cl,%rbx           ;*lshl
                     │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.69%    0.85%     │  0x00007f08f12413c6: mov    %r8,%r11
                     │  0x00007f08f12413c9: and    %rbx,%r11
  0.04%    0.02%     │  0x00007f08f12413cc: test   %r11,%r11
                     │  0x00007f08f12413cf: jne    0x00007f08f1241832  ;*ifeq
                     │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.08%    0.08%     │  0x00007f08f12413d5: mov    %ecx,%r11d
  0.38%    0.46%     │  0x00007f08f12413d8: cmp    $0x40,%r11d
                     │  0x00007f08f12413dc: jge    0x00007f08f1242475  ;*if_icmpge
                     │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%    0.00%     │  0x00007f08f12413e2: or     %rbx,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%    0.04%     │  0x00007f08f12413e5: mov    %r8,0x10(%r14)     ;*putfield pcsl
                     │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.06%    0.11%     │  0x00007f08f12413e9: vmovq  %xmm3,%r11
  0.37%    0.42%     │  0x00007f08f12413ee: mov    0x1c(%r11),%ebp    ;*getfield outInst
                     │                                                ; - com.google.re2j.Inst$AltInst::add@23 (line 192)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%    0.00%     │  0x00007f08f12413f2: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f08f1242c21
  0.58%    0.66%     │  0x00007f08f12413f7: cmp    $0xf8019992,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                     │  0x00007f08f12413fe: jne    0x00007f08f1241cc1
  0.25%    0.26%     │  0x00007f08f1241404: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.18%    0.25%     │  0x00007f08f1241408: vmovq  %r11,%xmm7
                     │  0x00007f08f124140d: mov    0x18(%r11),%r11d   ;*getfield pc
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.06%    0.11%     │  0x00007f08f1241411: mov    %r11d,%eax
  0.29%    0.26%     │  0x00007f08f1241414: cmp    $0x40,%r11d
                     │  0x00007f08f1241418: jg     0x00007f08f12424c1  ;*if_icmpgt
                     │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.26%    0.26%     │  0x00007f08f124141e: mov    $0x1,%ebx
  0.00%    0.00%     │  0x00007f08f1241423: mov    %r11d,%ecx
  0.02%    0.01%     │  0x00007f08f1241426: shl    %cl,%rbx           ;*lshl
                     │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.72%    0.63%     │  0x00007f08f1241429: mov    %r8,%r11
  0.03%    0.03%     │  0x00007f08f124142c: and    %rbx,%r11          ;*land
                     │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.09%    0.07%     │  0x00007f08f124142f: test   %r11,%r11
                     │  0x00007f08f1241432: jne    0x00007f08f124251d  ;*ifeq
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.21%    0.24%     │  0x00007f08f1241438: mov    %ecx,%r11d
  0.19%    0.08%     │  0x00007f08f124143b: cmp    $0x40,%r11d
                     │  0x00007f08f124143f: jge    0x00007f08f1242591  ;*if_icmpge
                     │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%    0.01%     │  0x00007f08f1241445: or     %rbx,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.13%    0.08%     │  0x00007f08f1241448: mov    %r8,0x10(%r14)     ;*putfield pcsl
                     │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.25%    0.20%     │  0x00007f08f124144c: vmovd  %xmm1,%r11d
  0.15%    0.09%     │  0x00007f08f1241451: test   %r11d,%r11d
                     │  0x00007f08f1241454: jle    0x00007f08f12420ed  ;*ifle
                     │                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%    0.04%     │  0x00007f08f124145a: mov    0x20(%rsp),%rcx
  0.14%    0.07%     │  0x00007f08f124145f: vmovd  %xmm5,%r11d
  0.17%    0.18%     │  0x00007f08f1241464: mov    %r11d,0xc(%rcx)    ;*putfield poolSize
                     │                                                ; - com.google.re2j.Machine::alloc@14 (line 133)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.17%    0.08%     │  0x00007f08f1241468: vmovd  %xmm2,%r11d
  0.01%    0.01%     │  0x00007f08f124146d: mov    0xc(%r12,%r11,8),%ebx  ; implicit exception: dispatches to 0x00007f08f1242c3d
  0.14%    0.09%     │  0x00007f08f1241472: vmovd  %xmm5,%r11d
  0.20%    0.17%     │  0x00007f08f1241477: cmp    %ebx,%r11d
                     │  0x00007f08f124147a: jae    0x00007f08f1241b8d
  0.16%    0.02%     │  0x00007f08f1241480: vmovd  %xmm2,%r11d
  0.04%    0.04%     │  0x00007f08f1241485: lea    (%r12,%r11,8),%rax
  0.12%    0.14%     │  0x00007f08f1241489: vmovd  %xmm1,%r11d
  0.19%    0.28%     │  0x00007f08f124148e: mov    0xc(%rax,%r11,4),%ebp  ;*aaload
                     │                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.15%    0.02%     │  0x00007f08f1241493: test   %ebp,%ebp
                     │  0x00007f08f1241495: je     0x00007f08f1241be9  ;*putfield inst
                     │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%    0.05%     │  0x00007f08f124149b: mov    %r10d,0xc(%r14)    ;*putfield size
                     │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.12%    0.12%     │  0x00007f08f124149f: lea    (%r12,%rbp,8),%rcx
  0.19%    0.22%     │  0x00007f08f12414a3: vmovq  %xmm7,%r11
  0.15%    0.12%     │  0x00007f08f12414a8: shr    $0x3,%r11
  0.03%    0.01%     │  0x00007f08f12414ac: mov    %r11d,0x10(%r12,%rbp,8)
  0.13%    0.19%     │  0x00007f08f12414b1: mov    %rcx,%r11
  0.23%    0.15%     │  0x00007f08f12414b4: shr    $0x9,%r11
  0.11%    0.15%     │  0x00007f08f12414b8: movabs $0x7f0902706000,%rcx
  0.02%    0.03%     │  0x00007f08f12414c2: mov    %r12b,(%rcx,%r11,1)  ;*putfield inst
                     │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.18%    0.24%     │  0x00007f08f12414c6: cmp    %edi,%r10d
                     │  0x00007f08f12414c9: jae    0x00007f08f1241bfd
  0.18%    0.25%     │  0x00007f08f12414cf: mov    %ebp,(%rsi)        ;*aastore
                     │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.17%    0.14%     │  0x00007f08f12414d1: vmovq  %xmm3,%r10
  0.01%    0.01%     │  0x00007f08f12414d6: mov    0x20(%r10),%r10d   ;*getfield argInst
                     │                                                ; - com.google.re2j.Inst$AltInst::add@41 (line 193)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.09%    0.15%     │  0x00007f08f12414da: mov    %r10d,%ecx
  0.17%    0.25%     │  0x00007f08f12414dd: mov    %rsi,%r10
  0.15%    0.09%     │  0x00007f08f12414e0: shr    $0x9,%r10
  0.02%    0.05%     │  0x00007f08f12414e4: movabs $0x7f0902706000,%r11
  0.15%    0.22%     │  0x00007f08f12414ee: mov    %r12b,(%r11,%r10,1)  ;*aastore
                     │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.23%    0.26%     │  0x00007f08f12414f2: mov    %ecx,%r10d
  0.14%    0.17%     │  0x00007f08f12414f5: mov    0x8(%r12,%r10,8),%r10d  ; implicit exception: dispatches to 0x00007f08f1242c51
  0.02%    0.01%     │  0x00007f08f12414fa: lea    (%r12,%rcx,8),%r11
  0.15%    0.17%     │  0x00007f08f12414fe: cmp    $0xf8019886,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                    ╭│  0x00007f08f1241505: je     0x00007f08f12415f1
  0.21%    0.22%    ││  0x00007f08f124150b: cmp    $0xf8019992,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                    ││  0x00007f08f1241512: jne    0x00007f08f124214d  ;*invokevirtual add
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.20%    0.22%    ││  0x00007f08f1241518: mov    %r11,%rdi
  0.01%    0.04%    ││  0x00007f08f124151b: mov    0x18(%r11),%r10d   ;*getfield pc
                    ││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.16%    0.07%    ││  0x00007f08f124151f: mov    %r10d,%ecx
  0.15%    0.14%    ││  0x00007f08f1241522: cmp    $0x40,%r10d
                    ││  0x00007f08f1241526: jg     0x00007f08f124273d  ;*if_icmpgt
                    ││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                    ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.14%    0.07%    ││  0x00007f08f124152c: mov    $0x1,%r11d
  0.02%    0.01%    ││  0x00007f08f1241532: shl    %cl,%r11           ;*lshl
                    ││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                    ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.43%    0.42%    ││  0x00007f08f1241535: mov    %r8,%r10
  0.00%    0.03%    ││  0x00007f08f1241538: and    %r11,%r10          ;*land
                    ││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                    ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.13%    0.09%    ││  0x00007f08f124153b: test   %r10,%r10
                    ││  0x00007f08f124153e: jne    0x00007f08f12427e1  ;*ifeq
                    ││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.15%    0.18%    ││  0x00007f08f1241544: mov    %ecx,%r10d
  0.18%    0.10%    ││  0x00007f08f1241547: cmp    $0x40,%r10d
                    ││  0x00007f08f124154b: jge    0x00007f08f1242851  ;*if_icmpge
                    ││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                    ││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.03%    0.03%    ││  0x00007f08f1241551: or     %r11,%r8
  0.18%    0.11%    ││  0x00007f08f1241554: mov    %r8,0x10(%r14)     ;*putfield pcsl
                    ││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                    ││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.19%    0.22%    ││  0x00007f08f1241558: vmovd  %xmm5,%r10d
  0.22%    0.17%    ││  0x00007f08f124155d: test   %r10d,%r10d
                    ││  0x00007f08f1241560: jle    0x00007f08f12425ed  ;*ifle
                    ││                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                    ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.03%    0.04%    ││  0x00007f08f1241566: vmovd  %xmm1,%r10d
  0.14%    0.21%    ││  0x00007f08f124156b: add    $0xfffffffe,%r10d  ;*isub
                    ││                                                ; - com.google.re2j.Machine::alloc@13 (line 133)
                    ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.21%    0.19%    ││  0x00007f08f124156f: mov    %r10d,%ecx
  0.16%    0.21%    ││  0x00007f08f1241572: mov    0x20(%rsp),%r11
  0.02%    0.03%    ││  0x00007f08f1241577: mov    %r10d,0xc(%r11)    ;*putfield poolSize
                    ││                                                ; - com.google.re2j.Machine::alloc@14 (line 133)
                    ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.12%    0.19%    ││  0x00007f08f124157b: cmp    %ebx,%r10d
                    ││  0x00007f08f124157e: jae    0x00007f08f1242019
  0.15%    0.19%    ││  0x00007f08f1241584: mov    %r10d,%ebx
  0.14%             ││  0x00007f08f1241587: mov    0x10(%rax,%r10,4),%r11d  ;*aaload
                    ││                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                    ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.03%    0.03%    ││  0x00007f08f124158c: test   %r11d,%r11d
                    ││  0x00007f08f124158f: je     0x00007f08f124207d  ;*putfield inst
                    ││                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                    ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.12%    0.07%    ││  0x00007f08f1241595: add    $0x18,%rdx
  0.21%    0.13%    ││  0x00007f08f1241599: mov    %r11d,(%rdx)       ;*aastore
                    ││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    ││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.17%    0.21%    ││  0x00007f08f124159c: lea    (%r12,%r11,8),%r10
  0.01%    0.01%    ││  0x00007f08f12415a0: mov    %rdx,%r8
  0.15%    0.25%    ││  0x00007f08f12415a3: shr    $0x9,%r8
  0.13%    0.24%    ││  0x00007f08f12415a7: shr    $0x9,%r10
  0.19%    0.23%    ││  0x00007f08f12415ab: movabs $0x7f0902706000,%r9
  0.03%    0.02%    ││  0x00007f08f12415b5: mov    %r12b,(%r9,%r10,1)  ;*putfield inst
                    ││                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                    ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.12%    0.24%    ││  0x00007f08f12415b9: movabs $0x7f0902706000,%r10
  0.20%    0.26%    ││  0x00007f08f12415c3: mov    %r12b,(%r10,%r8,1)  ;*aastore
                    ││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    ││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.18%    0.26%    ││  0x00007f08f12415c7: mov    0x28(%rsp),%r10d
  0.00%    0.03%    ││  0x00007f08f12415cc: add    $0x3,%r10d
  0.08%    0.18%    ││  0x00007f08f12415d0: mov    %r10d,0xc(%r14)    ;*putfield size
                    ││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                    ││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.19%    0.21%    ││  0x00007f08f12415d4: mov    %rdi,%r8
  0.10%    0.19%    ││  0x00007f08f12415d7: shr    $0x3,%r8
  0.04%    0.02%    ││  0x00007f08f12415db: mov    %r8d,0x10(%r12,%r11,8)  ;*putfield inst
                    ││                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                    ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.15%    0.15%    ││  0x00007f08f12415e0: xor    %r9d,%r9d
  0.20%    0.23%    ││  0x00007f08f12415e3: mov    0x20(%rsp),%r13
  0.15%    0.22%    ││  0x00007f08f12415e8: vmovd  %xmm2,%edi
  0.01%    0.02%    │╰  0x00007f08f12415ec: jmpq   0x00007f08f12410ab
                    ↘   0x00007f08f12415f1: mov    %r11,%r9           ;*invokevirtual add
                                                                      ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 276)
                        0x00007f08f12415f4: mov    0x18(%r9),%ecx     ;*getfield pc
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@2 (line 248)
                                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
....................................................................................................
 58.74%   56.72%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 573 (1009 bytes) 

                               0x00007f08f126283f: test   %r10d,%r10d
                               0x00007f08f1262842: jne    0x00007f08f1263d55  ;*ifne
                                                                             ; - com.google.re2j.Machine::match@115 (line 200)
                               0x00007f08f1262848: test   %edi,%edi
                               0x00007f08f126284a: jl     0x00007f08f12631d0  ;*ifge
                                                                             ; - com.google.re2j.Utils::emptyOpContext@21 (line 179)
                                                                             ; - com.google.re2j.Machine::match@121 (line 201)
                               0x00007f08f1262850: mov    $0x5,%r10d         ;*iload_1
                                                                             ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                                                                             ; - com.google.re2j.Machine::match@121 (line 201)
  0.00%                        0x00007f08f1262856: cmp    $0xa,%edi
                               0x00007f08f1262859: je     0x00007f08f12631db  ;*iload_0
                                                                             ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                                                                             ; - com.google.re2j.Machine::match@121 (line 201)
                               0x00007f08f126285f: mov    %edi,%r8d
                               0x00007f08f1262862: add    $0xffffffbf,%r8d
                               0x00007f08f1262866: cmp    $0x1a,%r8d
                  ╭            0x00007f08f126286a: jb     0x00007f08f126287d  ;*if_icmple
                  │                                                          ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │                                                          ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                          ; - com.google.re2j.Machine::match@121 (line 201)
  0.00%    0.00%  │            0x00007f08f126286c: mov    %edi,%r11d
                  │            0x00007f08f126286f: add    $0xffffff9f,%r11d
                  │            0x00007f08f1262873: cmp    $0x1a,%r11d
                  │            0x00007f08f1262877: jae    0x00007f08f12631fc  ;*iconst_1
                  │                                                          ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │                                                          ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                          ; - com.google.re2j.Machine::match@121 (line 201)
  0.01%    0.01%  ↘            0x00007f08f126287d: or     $0x10,%r10d        ;*iload_2
                                                                             ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                             ; - com.google.re2j.Machine::match@121 (line 201)
  0.00%    0.01%               0x00007f08f1262881: mov    0x40(%rsp),%r11
  0.00%    0.01%               0x00007f08f1262886: mov    0x24(%r11),%eax    ;*getfield pool
                                                                             ; - com.google.re2j.Machine::alloc@18 (line 134)
                                                                             ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                                                             ; - com.google.re2j.Machine::match@315 (line 239)
  0.01%    0.00%               0x00007f08f126288a: mov    0xc(%r11),%r8d     ;*getfield poolSize
                                                                             ; - com.google.re2j.Machine::alloc@1 (line 132)
                                                                             ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                                                             ; - com.google.re2j.Machine::match@315 (line 239)
  0.00%                        0x00007f08f126288e: mov    %rdx,%r11
                               0x00007f08f1262891: shl    $0x3,%r11          ;*getfield q1
                                                                             ; - com.google.re2j.Machine::match@53 (line 188)
                               0x00007f08f1262895: mov    %r11,0x20(%rsp)
  0.00%                        0x00007f08f126289a: xor    %edx,%edx
                               0x00007f08f126289c: mov    $0x1,%r11d
                               0x00007f08f12628a2: xor    %ebp,%ebp
                               0x00007f08f12628a4: mov    %r11d,0x60(%rsp)
  0.01%    0.00%               0x00007f08f12628a9: mov    %ebp,0x5c(%rsp)
  0.00%            ╭           0x00007f08f12628ad: jmpq   0x00007f08f1262a38
  0.29%    0.27%   │     ↗     0x00007f08f12628b2: or     $0x20,%r9d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                   │     │                                                   ; - com.google.re2j.Machine::match@323 (line 241)
  0.01%    0.00%   │     │     0x00007f08f12628b6: mov    %r9d,0x4c(%rsp)    ;*iload_2
                   │     │                                                   ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   │     │                                                   ; - com.google.re2j.Machine::match@323 (line 241)
  0.09%    0.16%   │     │↗    0x00007f08f12628bb: mov    0x5c(%rsp),%r10d
  0.05%    0.05%   │     ││    0x00007f08f12628c0: cmp    0x64(%rsp),%r10d
                   │     ││    0x00007f08f12628c5: je     0x00007f08f1262f61  ;*if_icmpne
                   │     ││                                                  ; - com.google.re2j.Machine::match@348 (line 242)
  0.40%    0.26%   │     ││    0x00007f08f12628cb: xor    %ebx,%ebx          ;*invokespecial step
                   │     ││                                                  ; - com.google.re2j.Machine::match@356 (line 242)
  0.02%    0.04%   │     ││    0x00007f08f12628cd: mov    %rax,-0x8(%rsp)
  0.15%    0.14%   │     ││    0x00007f08f12628d2: mov    0x5c(%rsp),%eax
  0.02%    0.02%   │     ││    0x00007f08f12628d6: mov    %eax,0x38(%rsp)
  0.30%    0.41%   │     ││    0x00007f08f12628da: mov    -0x8(%rsp),%rax    ;*invokevirtual endPos
                   │     ││                                                  ; - com.google.re2j.Machine::match@345 (line 242)
  0.62%    0.40%   │     ││    0x00007f08f12628df: add    0x28(%rsp),%r10d   ;*iadd
                   │     ││                                                  ; - com.google.re2j.Machine::match@337 (line 242)
  0.16%    0.16%   │     ││    0x00007f08f12628e4: mov    %r10d,0x5c(%rsp)
  0.07%    0.07%   │     ││    0x00007f08f12628e9: mov    0x40(%rsp),%rsi
  0.29%    0.48%   │     ││    0x00007f08f12628ee: mov    0x18(%rsp),%rdx
  0.05%    0.04%   │     ││    0x00007f08f12628f3: mov    0x20(%rsp),%rcx
  0.10%    0.07%   │     ││    0x00007f08f12628f8: mov    0x38(%rsp),%r8d
  0.11%    0.06%   │     ││    0x00007f08f12628fd: mov    %r10d,%r9d
  0.29%    0.28%   │     ││    0x00007f08f1262900: mov    0x4c(%rsp),%r11d
  0.04%    0.05%   │     ││    0x00007f08f1262905: mov    %r11d,(%rsp)
  0.08%    0.08%   │     ││    0x00007f08f1262909: mov    0x3c(%rsp),%r11d
  0.08%    0.03%   │     ││    0x00007f08f126290e: mov    %r11d,0x8(%rsp)
  0.35%    0.36%   │     ││    0x00007f08f1262913: mov    %ebx,0x10(%rsp)
  0.02%    0.04%   │     ││    0x00007f08f1262917: callq  0x00007f08f1046020  ; OopMap{[24]=Oop [32]=Oop [52]=NarrowOop [64]=Oop [80]=Oop off=668}
                   │     ││                                                  ;*invokespecial step
                   │     ││                                                  ; - com.google.re2j.Machine::match@356 (line 242)
                   │     ││                                                  ;   {optimized virtual_call}
  0.46%    0.56%   │     ││    0x00007f08f126291c: mov    0x40(%rsp),%r10
  0.00%    0.01%   │     ││    0x00007f08f1262921: mov    0x24(%r10),%eax    ;*getfield pool
                   │     ││                                                  ; - com.google.re2j.Machine::freeQueue@1 (line 156)
                   │     ││                                                  ; - com.google.re2j.Machine::freeQueue@15 (line 150)
                   │     ││                                                  ; - com.google.re2j.Machine::freeQueue@3 (line 144)
                   │     ││                                                  ; - com.google.re2j.Machine::match@445 (line 263)
                   │     ││    0x00007f08f1262925: mov    0xc(%r10),%r8d     ;*getfield poolSize
                   │     ││                                                  ; - com.google.re2j.Machine::freeQueue@8 (line 157)
                   │     ││                                                  ; - com.google.re2j.Machine::freeQueue@15 (line 150)
                   │     ││                                                  ; - com.google.re2j.Machine::freeQueue@3 (line 144)
                   │     ││                                                  ; - com.google.re2j.Machine::match@445 (line 263)
  0.59%    0.48%   │     ││    0x00007f08f1262929: mov    0x28(%rsp),%r11d
           0.00%   │     ││    0x00007f08f126292e: test   %r11d,%r11d
                   │     ││    0x00007f08f1262931: je     0x00007f08f126307c  ;*ifne
                   │     ││                                                  ; - com.google.re2j.Machine::match@361 (line 243)
  0.01%            │     ││    0x00007f08f1262937: mov    0x28(%r10),%r14d   ;*getfield matchcap
                   │     ││                                                  ; - com.google.re2j.Machine::match@368 (line 246)
           0.00%   │     ││    0x00007f08f126293b: mov    0xc(%r12,%r14,8),%ebp  ;*arraylength
                   │     ││                                                  ; - com.google.re2j.Machine::match@371 (line 246)
                   │     ││                                                  ; implicit exception: dispatches to 0x00007f08f1264699
  0.50%    0.54%   │     ││    0x00007f08f1262940: test   %ebp,%ebp
                   │     ││    0x00007f08f1262942: jne    0x00007f08f1263559  ;*ifne
                   │     ││                                                  ; - com.google.re2j.Machine::match@372 (line 246)
  0.03%    0.04%   │     ││    0x00007f08f1262948: movzbl 0x10(%r10),%edx    ;*getfield matched
                   │     ││                                                  ; - com.google.re2j.Machine::match@376 (line 246)
           0.00%   │     ││    0x00007f08f126294d: test   %edx,%edx
                   │     ││    0x00007f08f126294f: jne    0x00007f08f12637a1  ;*ifeq
                   │     ││                                                  ; - com.google.re2j.Machine::match@379 (line 246)
                   │     ││    0x00007f08f1262955: mov    0x50(%rsp),%r10
  0.51%    0.49%   │     ││    0x00007f08f126295a: mov    0x10(%r10),%r10d   ;*getfield end
                   │     ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                   │     ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.01%    0.03%   │     ││    0x00007f08f126295e: mov    %r10d,0x64(%rsp)
           0.01%   │     ││    0x00007f08f1262963: mov    0x50(%rsp),%r10
                   │     ││    0x00007f08f1262968: mov    0xc(%r10),%r9d     ;*getfield start
                   │     ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                   │     ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.41%    0.46%   │     ││    0x00007f08f126296c: mov    0x14(%r10),%ebx    ;*getfield str
                   │     ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                   │     ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.03%    0.07%   │     ││    0x00007f08f1262970: mov    0x2c(%rsp),%r11d
  0.00%            │     ││    0x00007f08f1262975: cmp    $0xffffffff,%r11d
                   │     ││    0x00007f08f1262979: je     0x00007f08f1263136  ;*if_icmpeq
                   │     ││                                                  ; - com.google.re2j.Machine::match@401 (line 254)
           0.00%   │     ││    0x00007f08f126297f: mov    0x30(%rsp),%edi
  0.39%    0.59%   │     ││    0x00007f08f1262983: add    0x5c(%rsp),%edi
  0.02%    0.03%   │     ││    0x00007f08f1262987: add    %r9d,%edi          ;*iadd
                   │     ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                   │     ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
                   │     ││    0x00007f08f126298a: cmp    0x64(%rsp),%edi
                   │     ││    0x00007f08f126298e: jge    0x00007f08f1263145  ;*if_icmpge
                   │     ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                   │     ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.02%    0.01%   │     ││    0x00007f08f1262994: mov    0x8(%r12,%rbx,8),%r10d  ; implicit exception: dispatches to 0x00007f08f12646a9
  0.40%    0.55%   │     ││    0x00007f08f1262999: cmp    $0xf80002da,%r10d  ;   {metadata(&apos;java/lang/String&apos;)}
                   │     ││    0x00007f08f12629a0: jne    0x00007f08f12633f5
  0.02%    0.03%   │     ││    0x00007f08f12629a6: lea    (%r12,%rbx,8),%r13  ;*invokeinterface charAt
                   │     ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │     ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │     ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
           0.00%   │     ││    0x00007f08f12629aa: test   %edi,%edi
                   │     ││    0x00007f08f12629ac: jl     0x00007f08f12635ad  ;*iflt
                   │     ││                                                  ; - java.lang.String::charAt@1 (line 657)
                   │     ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │     ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │     ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.00%    0.01%   │     ││    0x00007f08f12629b2: mov    0xc(%r13),%ecx     ;*getfield value
                   │     ││                                                  ; - java.lang.String::charAt@6 (line 657)
                   │     ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │     ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │     ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.47%    0.52%   │     ││    0x00007f08f12629b6: mov    0xc(%r12,%rcx,8),%ebp  ;*arraylength
                   │     ││                                                  ; - java.lang.String::charAt@9 (line 657)
                   │     ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │     ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │     ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
                   │     ││                                                  ; implicit exception: dispatches to 0x00007f08f12646bd
  0.11%    0.09%   │     ││    0x00007f08f12629bb: cmp    %ebp,%edi
                   │     ││    0x00007f08f12629bd: jge    0x00007f08f12637f5  ;*if_icmplt
                   │     ││                                                  ; - java.lang.String::charAt@10 (line 657)
                   │     ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │     ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │     ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.21%    0.20%   │     ││    0x00007f08f12629c3: cmp    %ebp,%edi
                   │     ││    0x00007f08f12629c5: jae    0x00007f08f1263329
  0.02%    0.01%   │     ││    0x00007f08f12629cb: lea    (%r12,%rcx,8),%r10
  0.27%    0.17%   │     ││    0x00007f08f12629cf: movzwl 0x10(%r10,%rdi,2),%ecx  ;*caload
                   │     ││                                                  ; - java.lang.String::charAt@27 (line 660)
                   │     ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │     ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │     ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.06%    0.03%   │     ││    0x00007f08f12629d5: cmp    $0xd800,%ecx
                   │     ││    0x00007f08f12629db: jge    0x00007f08f126386d  ;*if_icmplt
                   │     ││                                                  ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   │     ││                                                  ; - java.lang.Character::codePointAt@9 (line 4867)
                   │     ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │     ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.18%    0.25%   │     ││    0x00007f08f12629e1: shl    $0x3,%ecx          ;*ishl
                   │     ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                   │     ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.04%    0.04%   │     ││    0x00007f08f12629e4: mov    %ecx,%r11d
  0.34%    0.31%   │     ││    0x00007f08f12629e7: or     $0x1,%r11d
  0.13%    0.32%   │     ││    0x00007f08f12629eb: and    $0x7,%ecx
  0.12%    0.20%   │     ││    0x00007f08f12629ee: sar    $0x3,%r11d         ;*ishr
                   │     ││                                                  ; - com.google.re2j.Machine::match@417 (line 256)
  0.17%    0.29%   │     ││    0x00007f08f12629f2: or     $0x1,%ecx          ; OopMap{rbx=NarrowOop rax=NarrowOop r14=NarrowOop [24]=Oop [32]=Oop [64]=Oop [80]=Oop off=885}
                   │     ││                                                  ;*goto
                   │     ││                                                  ; - com.google.re2j.Machine::match@439 (line 262)
  0.27%    0.46%   │     ││    0x00007f08f12629f5: test   %eax,0x18a9b605(%rip)        # 0x00007f0909cfe000
                   │     ││                                                  ;*goto
                   │     ││                                                  ; - com.google.re2j.Machine::match@439 (line 262)
                   │     ││                                                  ;   {poll}
  0.01%    0.01%   │     ││    0x00007f08f12629fb: mov    0x40(%rsp),%r10
  0.04%    0.05%   │     ││    0x00007f08f1262a00: mov    0x14(%r10),%esi    ;*getfield re2
                   │     ││                                                  ; - com.google.re2j.Machine::match@169 (line 216)
  0.23%    0.14%   │     ││    0x00007f08f1262a04: mov    0x20(%rsp),%r10
  0.27%    0.37%   │     ││    0x00007f08f1262a09: mov    %r10,%rdi
  0.00%    0.00%   │     ││    0x00007f08f1262a0c: shr    $0x3,%rdi
  0.04%    0.02%   │     ││    0x00007f08f1262a10: mov    %edi,0x34(%rsp)
  0.17%    0.22%   │     ││    0x00007f08f1262a14: mov    0x4c(%rsp),%r10d
  0.33%    0.34%   │     ││    0x00007f08f1262a19: mov    0x2c(%rsp),%edi
                   │     ││    0x00007f08f1262a1d: mov    %r11d,0x2c(%rsp)
  0.03%    0.04%   │     ││    0x00007f08f1262a22: mov    0x18(%rsp),%r11
  0.14%    0.24%   │     ││    0x00007f08f1262a27: mov    %r11,0x20(%rsp)
  0.28%    0.30%   │     ││    0x00007f08f1262a2c: mov    0x30(%rsp),%ebp
  0.01%            │     ││    0x00007f08f1262a30: mov    %ebp,0x28(%rsp)
  0.03%    0.03%   │     ││    0x00007f08f1262a34: mov    %ecx,0x30(%rsp)
  0.20%    0.28%   ↘     ││    0x00007f08f1262a38: mov    0x34(%rsp),%ecx
  0.30%    0.31%         ││    0x00007f08f1262a3c: movzbl 0x18(%r12,%rcx,8),%ecx  ; implicit exception: dispatches to 0x00007f08f1264625
  0.00%    0.01%         ││    0x00007f08f1262a42: mov    0x34(%rsp),%ebp
  0.01%    0.07%         ││    0x00007f08f1262a46: lea    (%r12,%rbp,8),%r11  ;*aload
                         ││                                                  ; - com.google.re2j.Machine::match@136 (line 207)
  0.16%    0.23%         ││    0x00007f08f1262a4a: mov    %r11,0x18(%rsp)
  0.24%    0.35%         ││    0x00007f08f1262a4f: test   %ecx,%ecx
                         ││    0x00007f08f1262a51: jne    0x00007f08f1262d07  ;*aload_0
                         ││                                                  ; - com.google.re2j.Machine::match@267 (line 233)
  0.01%    0.00%         ││    0x00007f08f1262a57: test   %edx,%edx
                         ││    0x00007f08f1262a59: jne    0x00007f08f126345d  ;*ifne
                         ││                                                  ; - com.google.re2j.Machine::match@271 (line 233)
  0.03%    0.03%         ││    0x00007f08f1262a5f: mov    0x5c(%rsp),%r9d
  0.20%    0.24%         ││    0x00007f08f1262a64: test   %r9d,%r9d
                    ╭    ││    0x00007f08f1262a67: je     0x00007f08f1262a77  ;*ifeq
                    │    ││                                                  ; - com.google.re2j.Machine::match@275 (line 233)
  0.29%    0.32%    │    ││    0x00007f08f1262a69: mov    0x3c(%rsp),%r11d
  0.01%    0.00%    │    ││    0x00007f08f1262a6e: test   %r11d,%r11d
                    │    ││    0x00007f08f1262a71: jne    0x00007f08f1263509  ;*aload_0
                    │    ││                                                  ; - com.google.re2j.Machine::match@282 (line 236)
  0.03%    0.02%    ↘    ││    0x00007f08f1262a77: mov    0xc(%r12,%r14,8),%ebp  ;*arraylength
                         ││                                                  ; - com.google.re2j.Machine::match@286 (line 236)
                         ││                                                  ; implicit exception: dispatches to 0x00007f08f1264635
  0.23%    0.17%         ││    0x00007f08f1262a7c: test   %ebp,%ebp
                         ││    0x00007f08f1262a7e: jg     0x00007f08f1263629  ;*ifle
                         ││                                                  ; - com.google.re2j.Machine::match@287 (line 236)
  0.33%    0.46%         ││    0x00007f08f1262a84: mov    0x40(%rsp),%r11
  0.01%                  ││    0x00007f08f1262a89: mov    0x18(%r11),%r11d   ;*getfield prog
                         ││                                                  ; - com.google.re2j.Machine::match@298 (line 239)
  0.05%    0.07%         ││    0x00007f08f1262a8d: mov    0x1c(%r12,%r11,8),%ebp  ;*getfield startInst
                         ││                                                  ; - com.google.re2j.Machine::match@301 (line 239)
                         ││                                                  ; implicit exception: dispatches to 0x00007f08f1264645
  0.18%    0.23%         ││    0x00007f08f1262a92: mov    0x8(%r12,%rbp,8),%r9d  ; implicit exception: dispatches to 0x00007f08f1264655
  1.35%    1.79%         ││    0x00007f08f1262a97: cmp    $0xf8019992,%r9d   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                         ││    0x00007f08f1262a9e: jne    0x00007f08f12633a5
  0.44%    0.57%         ││    0x00007f08f1262aa4: lea    (%r12,%rbp,8),%r9  ;*invokevirtual add
                         ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
           0.01%         ││    0x00007f08f1262aa8: mov    0x18(%r9),%r10d    ;*getfield pc
                         ││                                                  ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                         ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.01%    0.02%         ││    0x00007f08f1262aac: cmp    $0x40,%r10d
                         ││    0x00007f08f1262ab0: jg     0x00007f08f126367d  ;*if_icmpgt
                         ││                                                  ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                         ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                         ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.49%    0.49%         ││    0x00007f08f1262ab6: mov    $0x1,%ebx
  0.03%    0.07%         ││    0x00007f08f1262abb: mov    %r10d,%ecx
  0.00%                  ││    0x00007f08f1262abe: shl    %cl,%rbx           ;*lshl
                         ││                                                  ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                         ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                         ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.93%    1.34%         ││    0x00007f08f1262ac1: mov    0x34(%rsp),%r11d
           0.00%         ││    0x00007f08f1262ac6: mov    0x10(%r12,%r11,8),%r11  ;*getfield pcsl
                         ││                                                  ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                         ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                         ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.01%    0.01%         ││    0x00007f08f1262acb: mov    %r11,%rcx
  0.01%    0.01%         ││    0x00007f08f1262ace: and    %rbx,%rcx          ;*land
                         ││                                                  ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                         ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                         ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.41%    0.54%         ││    0x00007f08f1262ad1: test   %rcx,%rcx
                         ││    0x00007f08f1262ad4: jne    0x00007f08f12636d1  ;*ifeq
                         ││                                                  ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                         ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.05%    0.06%         ││    0x00007f08f1262ada: cmp    $0x40,%r10d
                         ││    0x00007f08f1262ade: jge    0x00007f08f126374d  ;*if_icmpge
                         ││                                                  ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                         ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                         ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.02%    0.02%         ││    0x00007f08f1262ae4: mov    0x34(%rsp),%ecx
           0.00%         ││    0x00007f08f1262ae8: mov    %r12b,0x18(%r12,%rcx,8)  ;*putfield empty
                         ││                                                  ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                         ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                         ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.46%    0.46%         ││    0x00007f08f1262aed: or     %r11,%rbx
  0.00%    0.04%         ││    0x00007f08f1262af0: mov    %rbx,0x10(%r12,%rcx,8)  ;*putfield pcsl
                         ││                                                  ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                         ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                         ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.03%    0.02%         ││    0x00007f08f1262af5: test   %r8d,%r8d
                         ││    0x00007f08f1262af8: jle    0x00007f08f12634b1  ;*ifle
                         ││                                                  ; - com.google.re2j.Machine::alloc@4 (line 132)
                         ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                         ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.00%    0.01%         ││    0x00007f08f1262afe: mov    %r8d,%ebp
  0.45%    0.42%         ││    0x00007f08f1262b01: dec    %ebp               ;*isub
                         ││                                                  ; - com.google.re2j.Machine::alloc@13 (line 133)
                         ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                         ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.01%    0.03%         ││    0x00007f08f1262b03: mov    0x40(%rsp),%r10
  0.00%    0.02%         ││    0x00007f08f1262b08: mov    %ebp,0xc(%r10)     ;*putfield poolSize
                         ││                                                  ; - com.google.re2j.Machine::alloc@14 (line 133)
                         ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                         ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.00%    0.00%         ││    0x00007f08f1262b0c: mov    0xc(%r12,%rax,8),%r10d  ; implicit exception: dispatches to 0x00007f08f1264671
  0.47%    0.48%         ││    0x00007f08f1262b11: cmp    %r10d,%ebp
                         ││    0x00007f08f1262b14: jae    0x00007f08f1263247
  0.02%    0.03%         ││    0x00007f08f1262b1a: lea    (%r12,%rax,8),%r10
  0.02%    0.02%         ││    0x00007f08f1262b1e: mov    0xc(%r10,%r8,4),%r8d  ;*aaload
                         ││                                                  ; - com.google.re2j.Machine::alloc@25 (line 134)
                         ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                         ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.01%    0.02%         ││    0x00007f08f1262b23: test   %r8d,%r8d
                         ││    0x00007f08f1262b26: je     0x00007f08f12632a1  ;*putfield inst
                         ││                                                  ; - com.google.re2j.Machine::alloc@45 (line 138)
                         ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                         ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.38%    0.48%         ││    0x00007f08f1262b2c: mov    0x20(%r12,%rcx,8),%ecx  ;*getfield denseThreads
                         ││                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                         ││                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                         ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.01%    0.03%         ││    0x00007f08f1262b31: mov    0x34(%rsp),%r11d
  0.02%    0.00%         ││    0x00007f08f1262b36: mov    0xc(%r12,%r11,8),%ebx  ;*getfield size
                         ││                                                  ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                         ││                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                         ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.01%                  ││    0x00007f08f1262b3b: lea    (%r12,%r8,8),%r10
  0.44%    0.51%         ││    0x00007f08f1262b3f: mov    %ebx,%r11d
  0.06%    0.03%         ││    0x00007f08f1262b42: inc    %r11d
  0.03%    0.01%         ││    0x00007f08f1262b45: mov    0x34(%rsp),%esi
           0.01%         ││    0x00007f08f1262b49: mov    %r11d,0xc(%r12,%rsi,8)  ;*putfield size
                         ││                                                  ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                         ││                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                         ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.45%    0.51%         ││    0x00007f08f1262b4e: mov    %r10,%r11
  0.00%    0.04%         ││    0x00007f08f1262b51: mov    %r9,%r10
  0.01%    0.02%         ││    0x00007f08f1262b54: shr    $0x3,%r10
  0.01%    0.00%         ││    0x00007f08f1262b58: mov    %r10d,0x10(%r12,%r8,8)
  0.42%    0.65%         ││    0x00007f08f1262b5d: shr    $0x9,%r11
  0.03%    0.02%         ││    0x00007f08f1262b61: movabs $0x7f0902706000,%r10
  0.02%    0.02%         ││    0x00007f08f1262b6b: mov    %r12b,(%r10,%r11,1)  ;*putfield inst
                         ││                                                  ; - com.google.re2j.Machine::alloc@45 (line 138)
                         ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                         ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.01%                  ││    0x00007f08f1262b6f: mov    0xc(%r12,%rcx,8),%r11d  ; implicit exception: dispatches to 0x00007f08f1264681
  0.40%    0.62%         ││    0x00007f08f1262b74: cmp    %r11d,%ebx
                         ││    0x00007f08f1262b77: jae    0x00007f08f12632b5  ;*aastore
                         ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                         ││                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                         ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.04%    0.02%         ││    0x00007f08f1262b7d: test   %edi,%edi
                     ╭   ││    0x00007f08f1262b7f: jl     0x00007f08f1262c29  ;*ifge
                     │   ││                                                  ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                     │   ││                                                  ; - com.google.re2j.Machine::match@323 (line 241)
  0.02%    0.04%     │   ││    0x00007f08f1262b85: xor    %r9d,%r9d          ;*iload_0
                     │   ││                                                  ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                     │   ││                                                  ; - com.google.re2j.Machine::match@323 (line 241)
  0.01%    0.01%     │   ││↗   0x00007f08f1262b88: cmp    $0xa,%edi
                     │   │││   0x00007f08f1262b8b: je     0x00007f08f1262f4f  ;*iload_1
                     │   │││                                                 ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                     │   │││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.46%    0.40%     │   │││   0x00007f08f1262b91: mov    0x2c(%rsp),%r10d
  0.03%    0.06%     │   │││   0x00007f08f1262b96: test   %r10d,%r10d
                     │╭  │││   0x00007f08f1262b99: jl     0x00007f08f1262c34  ;*iload_1
                     ││  │││                                                 ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                     ││  │││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.05%    0.02%     ││  │││↗  0x00007f08f1262b9f: cmp    $0xa,%r10d
                     ││  ││││  0x00007f08f1262ba3: je     0x00007f08f1262f58  ;*iload_0
                     ││  ││││                                                ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                     ││  ││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.01%    0.00%     ││  ││││  0x00007f08f1262ba9: mov    %edi,%r11d
  0.39%    0.29%     ││  ││││  0x00007f08f1262bac: add    $0xffffffbf,%r11d
  0.02%    0.05%     ││  ││││  0x00007f08f1262bb0: lea    (%r12,%rcx,8),%r10  ;*getfield denseThreads
                     ││  ││││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                     ││  ││││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     ││  ││││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.01%    0.01%     ││  ││││  0x00007f08f1262bb4: lea    0x10(%r10,%rbx,4),%r10
  0.01%    0.00%     ││  ││││  0x00007f08f1262bb9: mov    %r8d,(%r10)
  0.45%    0.21%     ││  ││││  0x00007f08f1262bbc: shr    $0x9,%r10
  0.03%    0.01%     ││  ││││  0x00007f08f1262bc0: movabs $0x7f0902706000,%r8
  0.02%    0.02%     ││  ││││  0x00007f08f1262bca: mov    %r12b,(%r8,%r10,1)  ;*aastore
                     ││  ││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                     ││  ││││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     ││  ││││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.04%    0.03%     ││  ││││  0x00007f08f1262bce: cmp    $0x1a,%r11d
                     ││╭ ││││  0x00007f08f1262bd2: jb     0x00007f08f1262be5  ;*if_icmple
                     │││ ││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                     │││ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     │││ ││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.36%    0.10%     │││ ││││  0x00007f08f1262bd4: mov    %edi,%r10d
  0.02%    0.01%     │││ ││││  0x00007f08f1262bd7: add    $0xffffff9f,%r10d
  0.01%    0.03%     │││ ││││  0x00007f08f1262bdb: cmp    $0x1a,%r10d
                     │││ ││││  0x00007f08f1262bdf: jae    0x00007f08f1263185  ;*iconst_1
                     │││ ││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                     │││ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     │││ ││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.02%    0.01%     ││↘ ││││  0x00007f08f1262be5: mov    $0x1,%ebp          ;*ireturn
                     ││  ││││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                     ││  ││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     ││  ││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.38%    0.21%     ││  ││││  0x00007f08f1262bea: mov    0x2c(%rsp),%r11d
  0.02%    0.02%     ││  ││││  0x00007f08f1262bef: add    $0xffffffbf,%r11d
  0.04%    0.03%     ││  ││││  0x00007f08f1262bf3: cmp    $0x1a,%r11d
                     ││ ╭││││  0x00007f08f1262bf7: jb     0x00007f08f1262c0c  ;*if_icmple
                     ││ │││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                     ││ │││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     ││ │││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.12%    0.08%     ││ │││││  0x00007f08f1262bf9: mov    0x2c(%rsp),%r10d
  0.33%    0.34%     ││ │││││  0x00007f08f1262bfe: add    $0xffffff9f,%r10d
  0.03%    0.04%     ││ │││││  0x00007f08f1262c02: cmp    $0x1a,%r10d
                     ││ │││││  0x00007f08f1262c06: jae    0x00007f08f12631a6  ;*iconst_1
                     ││ │││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                     ││ │││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     ││ │││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.02%    0.03%     ││ ↘││││  0x00007f08f1262c0c: mov    $0x1,%r11d         ;*ireturn
                     ││  ││││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                     ││  ││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     ││  ││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.14%    0.14%     ││  ││││  0x00007f08f1262c12: cmp    %r11d,%ebp
                     ││  ╰│││  0x00007f08f1262c15: je     0x00007f08f12628b2  ;*if_icmpeq
                     ││   │││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                     ││   │││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.00%    0.00%     ││   │││  0x00007f08f1262c1b: or     $0x10,%r9d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                     ││   │││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.00%    0.01%     ││   │││  0x00007f08f1262c1f: mov    %r9d,0x4c(%rsp)
  0.09%    0.11%     ││   ╰││  0x00007f08f1262c24: jmpq   0x00007f08f12628bb
                     ↘│    ││  0x00007f08f1262c29: mov    $0x5,%r9d
                      │    ╰│  0x00007f08f1262c2f: jmpq   0x00007f08f1262b88
  0.01%               ↘     │  0x00007f08f1262c34: or     $0xa,%r9d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@27 (line 180)
                            │                                                ; - com.google.re2j.Machine::match@323 (line 241)
                            ╰  0x00007f08f1262c38: jmpq   0x00007f08f1262b9f
                               0x00007f08f1262c3d: data16 xchg %ax,%ax
  0.00%    0.01%               0x00007f08f1262c40: mov    %eax,%r13d
                               0x00007f08f1262c43: vmovd  %xmm4,%eax
  0.00%    0.01%               0x00007f08f1262c47: jmpq   0x00007f08f1262e92
                               0x00007f08f1262c4c: add    $0x2,%r13d
                               0x00007f08f1262c50: vmovd  %xmm4,%eax
                               0x00007f08f1262c54: mov    %r13d,%ebx
                               0x00007f08f1262c57: inc    %ebx
                               0x00007f08f1262c59: vmovd  %ebx,%xmm3
                               0x00007f08f1262c5d: jmp    0x00007f08f1262c76
                               0x00007f08f1262c5f: mov    %r13d,%ebx
                               0x00007f08f1262c62: add    $0x2,%ebx
                               0x00007f08f1262c65: vmovd  %ebx,%xmm3
                               0x00007f08f1262c69: jmp    0x00007f08f1262c6f
....................................................................................................
 24.20%   26.81%  <total for region 2>

....[Hottest Regions]...............................................................................
 58.74%   56.72%         C2, level 4  com.google.re2j.Machine::step, version 521 (1345 bytes) 
 24.20%   26.81%         C2, level 4  com.google.re2j.Machine::match, version 573 (1009 bytes) 
  6.43%    7.76%         C2, level 4  com.google.re2j.Machine::step, version 521 (403 bytes) 
  4.41%    4.62%         C2, level 4  com.google.re2j.Machine::step, version 521 (106 bytes) 
  1.48%    0.32%         C2, level 4  com.google.re2j.Machine::init, version 562 (438 bytes) 
  0.94%    1.01%         C2, level 4  com.google.re2j.Machine::match, version 573 (362 bytes) 
  0.42%    0.42%   [kernel.kallsyms]  [unknown] (6 bytes) 
  0.19%    0.02%         C2, level 4  com.google.re2j.Machine::init, version 562 (147 bytes) 
  0.11%    0.01%         C2, level 4  com.google.re2j.RE2::match, version 575 (129 bytes) 
  0.11%    0.07%         C2, level 4  com.google.re2j.RE2::match, version 575 (30 bytes) 
  0.09%    0.05%         C2, level 4  java.util.Collections::shuffle, version 585 (54 bytes) 
  0.09%    0.00%   [kernel.kallsyms]  [unknown] (39 bytes) 
  0.08%    0.07%         C2, level 4  com.google.re2j.Machine::match, version 573 (119 bytes) 
  0.07%    0.05%         C2, level 4  com.google.re2j.RE2::match, version 575 (5 bytes) 
  0.07%    0.04%         C2, level 4  com.google.re2j.RE2::match, version 575 (23 bytes) 
  0.07%    0.03%         C2, level 4  com.google.re2j.Machine::match, version 573 (158 bytes) 
  0.06%    0.02%         C2, level 4  com.google.re2j.Machine::match, version 573 (43 bytes) 
  0.05%    0.01%   [kernel.kallsyms]  [unknown] (4 bytes) 
  0.05%    0.01%         C2, level 4  java.util.Collections::shuffle, version 585 (81 bytes) 
  0.05%    0.04%         C2, level 4  com.google.re2j.Machine::match, version 573 (71 bytes) 
  2.24%    1.89%  <...other 393 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 69.59%   69.10%         C2, level 4  com.google.re2j.Machine::step, version 521 
 25.63%   28.12%         C2, level 4  com.google.re2j.Machine::match, version 573 
  1.71%    0.34%         C2, level 4  com.google.re2j.Machine::init, version 562 
  1.50%    1.26%   [kernel.kallsyms]  [unknown] 
  0.52%    0.29%         C2, level 4  com.google.re2j.RE2::match, version 575 
  0.20%    0.08%         C2, level 4  java.util.Collections::shuffle, version 585 
  0.08%    0.02%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 631 
  0.05%    0.01%              [vdso]  [unknown] 
  0.05%    0.01%           libjvm.so  SpinPause 
  0.04%    0.05%      hsdis-amd64.so  [unknown] 
  0.02%                  C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 582 
  0.02%    0.01%           libjvm.so  StringTable::unlink_or_oops_do 
  0.02%    0.03%        runtime stub  StubRoutines::oop_disjoint_arraycopy 
  0.02%    0.01%              [vdso]  __vdso_clock_gettime 
  0.02%    0.08%        libc-2.26.so  vfprintf 
  0.02%                    libjvm.so  os::javaTimeNanos 
  0.02%    0.00%           libjvm.so  decode_env::handle_event 
  0.02%    0.06%        libc-2.26.so  _IO_fwrite 
  0.02%           libpthread-2.26.so  __libc_write 
  0.02%    0.07%           libjvm.so  RelocIterator::initialize 
  0.39%    0.25%  <...other 64 warm methods...>
....................................................................................................
100.00%   99.80%  <totals>

....[Distribution by Source]........................................................................
 97.75%   97.96%         C2, level 4
  1.50%    1.26%   [kernel.kallsyms]
  0.35%    0.37%           libjvm.so
  0.13%    0.26%        libc-2.26.so
  0.08%    0.02%              [vdso]
  0.05%    0.03%  libpthread-2.26.so
  0.04%    0.05%      hsdis-amd64.so
  0.02%    0.03%        runtime stub
  0.02%                  interpreter
  0.02%                  C1, level 3
  0.00%               perf-21103.map
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                 Mode  Cnt      Score    Error  Units
Re2jRegex.testExp1       thrpt   20  19231.024 ± 81.080  ops/s
Re2jRegex.testExp1:·asm  thrpt             NaN             ---
