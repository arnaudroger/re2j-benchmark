# JMH version: 1.19
# VM version: JDK 1.8.0_131, VM 25.131-b11
# VM invoker: /usr/lib/jvm/java-8-oracle/jre/bin/java
# VM options: <none>
# Warmup: 20 iterations, 1 s each
# Measurement: 20 iterations, 1 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Throughput, ops/time
# Benchmark: com.github.arnaudroger.re2j.Re2jFindRegex.testExp2

# Run progress: 0.00% complete, ETA 00:00:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 11169.425 ops/s
# Warmup Iteration   2: 17911.139 ops/s
# Warmup Iteration   3: 17935.617 ops/s
# Warmup Iteration   4: 17887.425 ops/s
# Warmup Iteration   5: 17354.596 ops/s
# Warmup Iteration   6: 16703.130 ops/s
# Warmup Iteration   7: 17002.204 ops/s
# Warmup Iteration   8: 17928.574 ops/s
# Warmup Iteration   9: 18053.243 ops/s
# Warmup Iteration  10: 18055.743 ops/s
# Warmup Iteration  11: 18064.138 ops/s
# Warmup Iteration  12: 18067.903 ops/s
# Warmup Iteration  13: 18058.787 ops/s
# Warmup Iteration  14: 18066.842 ops/s
# Warmup Iteration  15: 18063.835 ops/s
# Warmup Iteration  16: 18055.641 ops/s
# Warmup Iteration  17: 18043.867 ops/s
# Warmup Iteration  18: 17943.581 ops/s
# Warmup Iteration  19: 18049.909 ops/s
# Warmup Iteration  20: 18059.566 ops/s
Iteration   1: 18053.281 ops/s
Iteration   2: 17773.981 ops/s
Iteration   3: 18068.596 ops/s
Iteration   4: 17956.632 ops/s
Iteration   5: 18078.148 ops/s
Iteration   6: 18080.071 ops/s
Iteration   7: 18071.826 ops/s
Iteration   8: 18064.587 ops/s
Iteration   9: 18057.954 ops/s
Iteration  10: 18058.303 ops/s
Iteration  11: 18057.220 ops/s
Iteration  12: 18047.455 ops/s
Iteration  13: 18063.043 ops/s
Iteration  14: 18067.668 ops/s
Iteration  15: 18074.940 ops/s
Iteration  16: 17945.811 ops/s
Iteration  17: 17781.304 ops/s
Iteration  18: 17779.102 ops/s
Iteration  19: 17778.262 ops/s
Iteration  20: 17779.529 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  17981.886 ±(99.9%) 109.039 ops/s [Average]
  (min, avg, max) = (17773.981, 17981.886, 18080.071), stdev = 125.569
  CI (99.9%): [17872.847, 18090.924] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2:·asm":
PrintAssembly processed: 189095 total address lines.
Perf output processed (skipped 23.328 seconds):
 Column 1: cycles (20351 events)
 Column 2: instructions (20346 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 488 (532 bytes) 

                             # parm6:    [sp+0x78]   = int
                             # parm7:    [sp+0x80]   = boolean
                             0x00007f5f412044a0: mov    0x8(%rsi),%r10d
                             0x00007f5f412044a4: shl    $0x3,%r10
                             0x00007f5f412044a8: cmp    %r10,%rax
                             0x00007f5f412044ab: jne    0x00007f5f41045e20  ;   {runtime_call}
                             0x00007f5f412044b1: data16 xchg %ax,%ax
                             0x00007f5f412044b4: nopl   0x0(%rax,%rax,1)
                             0x00007f5f412044bc: data16 data16 xchg %ax,%ax
                           [Verified Entry Point]
  0.28%    0.31%             0x00007f5f412044c0: mov    %eax,-0x14000(%rsp)
  0.38%    0.28%             0x00007f5f412044c7: push   %rbp
  0.16%    0.15%             0x00007f5f412044c8: sub    $0x60,%rsp         ;*synchronization entry
                                                                           ; - com.google.re2j.Machine::step@-1 (line 280)
  0.39%    0.44%             0x00007f5f412044cc: mov    %edi,(%rsp)
  0.11%    0.17%             0x00007f5f412044cf: vmovd  %r9d,%xmm2
  0.18%    0.19%             0x00007f5f412044d4: vmovd  %r8d,%xmm1
  0.14%    0.14%             0x00007f5f412044d9: vmovq  %rcx,%xmm0
  0.24%    0.24%             0x00007f5f412044de: mov    %rsi,%r13
  0.11%    0.10%             0x00007f5f412044e1: mov    0x14(%rsi),%r11d   ;*getfield re2
                                                                           ; - com.google.re2j.Machine::step@1 (line 280)
  0.16%    0.07%             0x00007f5f412044e5: movzbl 0x18(%r12,%r11,8),%r14d  ;*getfield longest
                                                                           ; - com.google.re2j.Machine::step@4 (line 280)
                                                                           ; implicit exception: dispatches to 0x00007f5f41204cb9
  0.14%    0.09%             0x00007f5f412044eb: mov    %rdx,%rax
  0.28%    0.19%             0x00007f5f412044ee: mov    0xc(%rdx),%r9d     ;*getfield size
                                                                           ; - com.google.re2j.Machine::step@10 (line 281)
                                                                           ; implicit exception: dispatches to 0x00007f5f41204cc9
  0.10%    0.07%             0x00007f5f412044f2: test   %r9d,%r9d
                  ╭          0x00007f5f412044f5: jle    0x00007f5f412045de  ;*if_icmpge
                  │                                                        ; - com.google.re2j.Machine::step@22 (line 282)
  0.12%    0.07%  │          0x00007f5f412044fb: movzbl 0x11(%rsi),%r11d
  0.17%    0.12%  │          0x00007f5f41204500: test   %r11d,%r11d
                  │          0x00007f5f41204503: jne    0x00007f5f4120494d  ;*aload_0
                  │                                                        ; - com.google.re2j.Machine::step@25 (line 285)
  0.26%    0.16%  │          0x00007f5f41204509: mov    0x20(%rdx),%r11d   ;*getfield denseThreadsInstructions
                  │                                                        ; - com.google.re2j.Machine::step@82 (line 295)
  0.15%    0.10%  │          0x00007f5f4120450d: mov    0xc(%r12,%r11,8),%r10d  ;*aaload
                  │                                                        ; - com.google.re2j.Machine::step@87 (line 295)
                  │                                                        ; implicit exception: dispatches to 0x00007f5f4120494d
  0.15%    0.10%  │          0x00007f5f41204512: test   %r10d,%r10d
                  │          0x00007f5f41204515: jbe    0x00007f5f4120494d
  0.17%    0.15%  │          0x00007f5f4120451b: mov    %r9d,%ecx
  0.19%    0.21%  │          0x00007f5f4120451e: dec    %ecx
  0.09%    0.14%  │          0x00007f5f41204520: cmp    %r10d,%ecx
                  │          0x00007f5f41204523: jae    0x00007f5f4120494d
  0.14%    0.14%  │          0x00007f5f41204529: lea    (%r12,%r11,8),%rbx
  0.15%    0.17%  │          0x00007f5f4120452d: xor    %r11d,%r11d
  0.26%    0.27%  │╭         0x00007f5f41204530: jmp    0x00007f5f41204543
  0.72%    0.92%  ││    ↗    0x00007f5f41204532: vmovq  %r10,%xmm0
  0.37%    0.53%  ││    │    0x00007f5f41204537: mov    %r8d,0x78(%rsp)
  0.35%    0.56%  ││    │    0x00007f5f4120453c: mov    %edi,0x80(%rsp)    ;*aload_0
                  ││    │                                                  ; - com.google.re2j.Machine::step@25 (line 285)
  1.25%    1.53%  │↘    │    0x00007f5f41204543: mov    0x10(%rbx,%r11,4),%r10d  ;*aaload
                  │     │                                                  ; - com.google.re2j.Machine::step@87 (line 295)
  1.13%    1.19%  │     │    0x00007f5f41204548: mov    0xc(%r12,%r10,8),%r8d  ; implicit exception: dispatches to 0x00007f5f41204ca9
  1.17%    1.17%  │     │    0x00007f5f4120454d: cmp    $0x6,%r8d
                  │ ╭   │    0x00007f5f41204551: je     0x00007f5f412046d9  ;*if_icmpne
                  │ │   │                                                  ; - com.google.re2j.Machine::step@97 (line 297)
  1.35%    1.70%  │ │   │    0x00007f5f41204557: mov    0x8(%r12,%r10,8),%ecx
  1.03%    1.25%  │ │   │    0x00007f5f4120455c: cmp    $0xf8019993,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │ │   │    0x00007f5f41204562: jne    0x00007f5f412047cd
  0.86%    0.89%  │ │   │    0x00007f5f41204568: shl    $0x3,%r10          ;*invokevirtual matchRune
                  │ │   │                                                  ; - com.google.re2j.Machine::step@181 (line 312)
  0.46%    0.65%  │ │   │    0x00007f5f4120456c: mov    0xc(%r10),%ebp     ;*getfield op
                  │ │   │                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@1 (line 136)
                  │ │   │                                                  ; - com.google.re2j.Machine::step@181 (line 312)
  0.95%    1.06%  │ │   │    0x00007f5f41204570: cmp    $0xa,%ebp
                  │ │╭  │    0x00007f5f41204573: je     0x00007f5f4120460b  ;*if_icmpne
                  │ ││  │                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@6 (line 136)
                  │ ││  │                                                  ; - com.google.re2j.Machine::step@181 (line 312)
  1.44%    1.52%  │ ││  │    0x00007f5f41204579: cmp    $0xb,%ebp
                  │ ││  │    0x00007f5f4120457c: je     0x00007f5f4120484d  ;*if_icmpne
                  │ ││  │                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@17 (line 140)
                  │ ││  │                                                  ; - com.google.re2j.Machine::step@181 (line 312)
  0.72%    0.90%  │ ││  │    0x00007f5f41204582: cmp    $0x9,%ebp
                  │ ││  │    0x00007f5f41204585: je     0x00007f5f4120488d  ;*if_icmpne
                  │ ││  │                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@38 (line 144)
                  │ ││  │                                                  ; - com.google.re2j.Machine::step@181 (line 312)
  1.15%    1.33%  │ ││  │    0x00007f5f4120458b: cmp    $0xc,%ebp
                  │ ││  │    0x00007f5f4120458e: jne    0x00007f5f4120480d  ;*if_icmpne
                  │ ││  │                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@61 (line 148)
                  │ ││  │                                                  ; - com.google.re2j.Machine::step@181 (line 312)
  1.00%    0.93%  │ ││  │    0x00007f5f41204594: mov    0x20(%r10),%ecx    ;*getfield f0
                  │ ││  │                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@65 (line 149)
                  │ ││  │                                                  ; - com.google.re2j.Machine::step@181 (line 312)
  0.95%    1.02%  │ ││  │    0x00007f5f41204598: cmp    (%rsp),%ecx
                  │ ││╭ │    0x00007f5f4120459b: je     0x00007f5f4120460b  ;*if_icmpeq
                  │ │││ │                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@69 (line 149)
                  │ │││ │                                                  ; - com.google.re2j.Machine::step@181 (line 312)
  1.17%    1.29%  │ │││ │    0x00007f5f4120459d: mov    0x24(%r10),%r8d    ;*getfield f1
                  │ │││ │                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@73 (line 149)
                  │ │││ │                                                  ; - com.google.re2j.Machine::step@181 (line 312)
  0.66%    0.74%  │ │││ │    0x00007f5f412045a1: cmp    (%rsp),%r8d
                  │ │││╭│    0x00007f5f412045a5: je     0x00007f5f4120460b  ;*if_icmpeq
                  │ │││││                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@77 (line 149)
                  │ │││││                                                  ; - com.google.re2j.Machine::step@181 (line 312)
  1.62%    1.69%  │ │││││    0x00007f5f412045a7: mov    0x28(%r10),%ebp    ;*getfield f2
                  │ │││││                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@81 (line 149)
                  │ │││││                                                  ; - com.google.re2j.Machine::step@181 (line 312)
  0.99%    1.02%  │ │││││    0x00007f5f412045ab: cmp    (%rsp),%ebp
                  │ │││││    0x00007f5f412045ae: je     0x00007f5f412048cd  ;*if_icmpeq
                  │ │││││                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@85 (line 149)
                  │ │││││                                                  ; - com.google.re2j.Machine::step@181 (line 312)
  0.94%    1.05%  │ │││││    0x00007f5f412045b4: mov    0x2c(%r10),%ebp    ;*getfield f3
                  │ │││││                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@89 (line 149)
                  │ │││││                                                  ; - com.google.re2j.Machine::step@181 (line 312)
  0.40%    0.46%  │ │││││    0x00007f5f412045b8: cmp    (%rsp),%ebp
                  │ │││││    0x00007f5f412045bb: je     0x00007f5f4120490d  ;*if_icmpne
                  │ │││││                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@93 (line 149)
                  │ │││││                                                  ; - com.google.re2j.Machine::step@181 (line 312)
  1.58%    1.88%  │ │││││    0x00007f5f412045c1: vmovq  %xmm0,%r10
  0.92%    0.84%  │ │││││    0x00007f5f412045c6: mov    0x78(%rsp),%r8d
  0.44%    0.56%  │ │││││    0x00007f5f412045cb: mov    0x80(%rsp),%edi    ;*aload
                  │ │││││                                                  ; - com.google.re2j.Machine::step@207 (line 315)
  0.51%    0.56%  │ │││││ ↗  0x00007f5f412045d2: inc    %r11d              ;*iinc
                  │ │││││ │                                                ; - com.google.re2j.Machine::step@218 (line 282)
  1.66%    1.94%  │ │││││ │  0x00007f5f412045d5: cmp    %r9d,%r11d
                  │ ││││╰ │  0x00007f5f412045d8: jl     0x00007f5f41204532  ;*if_icmpge
                  │ ││││  │                                                ; - com.google.re2j.Machine::step@22 (line 282)
  0.11%    0.19%  ↘ ││││  │  0x00007f5f412045de: movzbl 0x18(%rax),%r10d
  0.04%    0.08%    ││││  │  0x00007f5f412045e3: test   %r10d,%r10d
                    ││││ ╭│  0x00007f5f412045e6: jne    0x00007f5f412045ff  ;*ifeq
                    ││││ ││                                                ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                    ││││ ││                                                ; - com.google.re2j.Machine::step@225 (line 319)
  0.05%    0.06%    ││││ ││  0x00007f5f412045e8: mov    %r12d,0xc(%rax)    ;*putfield size
                    ││││ ││                                                ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                    ││││ ││                                                ; - com.google.re2j.Machine::step@225 (line 319)
  0.43%    0.52%    ││││ ││  0x00007f5f412045ec: mov    0x1c(%rax),%ebp    ;*getfield pcs
                    ││││ ││                                                ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                    ││││ ││                                                ; - com.google.re2j.Machine::step@225 (line 319)
  0.17%    0.15%    ││││ ││  0x00007f5f412045ef: movb   $0x1,0x18(%rax)    ;*putfield empty
                    ││││ ││                                                ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                    ││││ ││                                                ; - com.google.re2j.Machine::step@225 (line 319)
  0.05%    0.10%    ││││ ││  0x00007f5f412045f3: mov    %r12,0x10(%rax)    ;*putfield pcsl
                    ││││ ││                                                ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                    ││││ ││                                                ; - com.google.re2j.Machine::step@225 (line 319)
  0.07%    0.05%    ││││ ││  0x00007f5f412045f7: test   %ebp,%ebp
                    ││││ ││  0x00007f5f412045f9: jne    0x00007f5f41204981  ;*getfield size
                    ││││ ││                                                ; - com.google.re2j.Machine::step@10 (line 281)
  0.36%    0.46%    ││││ ↘│  0x00007f5f412045ff: add    $0x60,%rsp
  0.12%    0.06%    ││││  │  0x00007f5f41204603: pop    %rbp
  0.06%    0.06%    ││││  │  0x00007f5f41204604: test   %eax,0x1728d9f6(%rip)        # 0x00007f5f58492000
                    ││││  │                                                ;   {poll_return}
  0.05%    0.04%    ││││  │  0x00007f5f4120460a: retq   
  0.41%    0.48%    │↘↘↘  │  0x00007f5f4120460b: mov    0x1c(%r10),%ecx    ;*getfield outInst
                    │     │                                                ; - com.google.re2j.Machine::step@189 (line 313)
  0.37%    0.42%    │     │  0x00007f5f4120460f: mov    0x8(%r12,%rcx,8),%r10d  ; implicit exception: dispatches to 0x00007f5f41204cd9
  0.38%    0.32%    │     │  0x00007f5f41204614: lea    (%r12,%rcx,8),%r8
  0.00%    0.00%    │     │  0x00007f5f41204618: xor    %esi,%esi
  0.03%    0.01%    │     │  0x00007f5f4120461a: movabs $0x7f5f50e9a000,%rdi
  0.00%    0.02%    │     │  0x00007f5f41204624: mov    $0x1,%edx
  0.10%    0.09%    │     │  0x00007f5f41204629: cmp    $0xf8019993,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                    │     │  0x00007f5f41204630: jne    0x00007f5f41204707  ;*invokevirtual add
                    │     │                                                ; - com.google.re2j.Machine::step@202 (line 313)
  0.01%             │     │  0x00007f5f41204636: mov    0x18(%r8),%ecx     ;*getfield pc
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.01%    │     │  0x00007f5f4120463a: vmovq  %xmm0,%r10
  0.02%    0.03%    │     │  0x00007f5f4120463f: mov    0x10(%r10),%rbp    ;*getfield pcsl
                    │     │                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
                    │     │                                                ; implicit exception: dispatches to 0x00007f5f41204cf9
  0.10%    0.07%    │     │  0x00007f5f41204643: cmp    $0x40,%ecx
                    │     │  0x00007f5f41204646: jg     0x00007f5f41204a1d  ;*if_icmpgt
                    │     │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.01%    │     │  0x00007f5f4120464c: vmovd  %r11d,%xmm0
  0.00%    0.00%    │     │  0x00007f5f41204651: shl    %cl,%rdx           ;*lshl
                    │     │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.27%    0.14%    │     │  0x00007f5f41204654: mov    %rbp,%r11
           0.01%    │     │  0x00007f5f41204657: and    %rdx,%r11          ;*land
                    │     │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
                    │     │  0x00007f5f4120465a: test   %r11,%r11
                    │     │  0x00007f5f4120465d: jne    0x00007f5f41204a65  ;*ifeq
                    │     │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.07%    0.08%    │     │  0x00007f5f41204663: cmp    $0x40,%ecx
                    │     │  0x00007f5f41204666: jge    0x00007f5f41204ab9  ;*if_icmpge
                    │     │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.02%    │     │  0x00007f5f4120466c: mov    %r12b,0x18(%r10)   ;*putfield empty
                    │     │                                                ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.00%    │     │  0x00007f5f41204670: mov    0x20(%r10),%r11d   ;*getfield denseThreadsInstructions
                    │     │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.00%    │     │  0x00007f5f41204674: or     %rbp,%rdx
  0.06%    0.07%    │     │  0x00007f5f41204677: mov    %rdx,0x10(%r10)    ;*putfield pcsl
                    │     │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.01%    │     │  0x00007f5f4120467b: mov    0xc(%r10),%ebp     ;*getfield size
                    │     │                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.01%    │     │  0x00007f5f4120467f: mov    %ebp,%esi
  0.00%    0.01%    │     │  0x00007f5f41204681: inc    %esi
  0.07%    0.06%    │     │  0x00007f5f41204683: mov    %esi,0xc(%r10)     ;*putfield size
                    │     │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.01%    │     │  0x00007f5f41204687: mov    0xc(%r12,%r11,8),%esi  ; implicit exception: dispatches to 0x00007f5f41204d0d
  0.03%    0.01%    │     │  0x00007f5f4120468c: cmp    %esi,%ebp
                    │     │  0x00007f5f4120468e: jae    0x00007f5f41204995
  0.05%    0.02%    │     │  0x00007f5f41204694: mov    0x8(%r12,%r11,8),%esi
  0.05%    0.07%    │     │  0x00007f5f41204699: cmp    $0xf8019808,%esi   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                    │     │  0x00007f5f4120469f: jne    0x00007f5f412049d9  ;*aastore
                    │     │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.01%    │     │  0x00007f5f412046a5: shl    $0x3,%r11          ;*getfield denseThreadsInstructions
                    │     │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%             │     │  0x00007f5f412046a9: lea    0x10(%r11,%rbp,4),%rcx
  0.04%             │     │  0x00007f5f412046ae: mov    %r8,%r11
  0.05%    0.06%    │     │  0x00007f5f412046b1: shr    $0x3,%r11
  0.02%    0.04%    │     │  0x00007f5f412046b5: mov    %r11d,(%rcx)
  0.21%    0.02%    │     │  0x00007f5f412046b8: mov    %rcx,%r11
  0.01%             │     │  0x00007f5f412046bb: shr    $0x9,%r11
  0.07%    0.03%    │     │  0x00007f5f412046bf: mov    %r12b,(%rdi,%r11,1)  ;*synchronization entry
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.08%    0.07%    │     │  0x00007f5f412046c3: mov    0x78(%rsp),%r8d
  0.01%    0.02%    │     │  0x00007f5f412046c8: mov    0x80(%rsp),%edi
                    │     │  0x00007f5f412046cf: vmovd  %xmm0,%r11d
  0.10%    0.04%    │     ╰  0x00007f5f412046d4: jmpq   0x00007f5f412045d2
                    ↘        0x00007f5f412046d9: mov    0x78(%rsp),%r8d
                             0x00007f5f412046de: cmp    $0x2,%r8d
                             0x00007f5f412046e2: je     0x00007f5f412047a0  ;*if_icmpne
                                                                           ; - com.google.re2j.Machine::step@103 (line 300)
                             0x00007f5f412046e8: mov    0x80(%rsp),%edi    ;*aload_0
                                                                           ; - com.google.re2j.Machine::step@159 (line 305)
                             0x00007f5f412046ef: movb   $0x1,0x10(%r13)    ;*putfield matched
                                                                           ; - com.google.re2j.Machine::step@161 (line 305)
                             0x00007f5f412046f4: test   %r14d,%r14d
                             0x00007f5f412046f7: je     0x00007f5f412047b9  ;*ifne
....................................................................................................
 34.76%   37.38%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Inst$Alt5Inst::add, version 496 (852 bytes) 

                     # parm4:    rdi:rdi   = &apos;[I&apos;
                     # parm5:    [sp+0x70]   = &apos;com/google/re2j/Machine&apos;  (sp of caller)
                     0x00007f5f41212840: mov    0x8(%rsi),%r10d
                     0x00007f5f41212844: shl    $0x3,%r10
                     0x00007f5f41212848: cmp    %r10,%rax
                     0x00007f5f4121284b: jne    0x00007f5f41045e20  ;   {runtime_call}
                     0x00007f5f41212851: data16 xchg %ax,%ax
                     0x00007f5f41212854: nopl   0x0(%rax,%rax,1)
                     0x00007f5f4121285c: data16 data16 xchg %ax,%ax
                   [Verified Entry Point]
  0.04%    0.00%     0x00007f5f41212860: mov    %eax,-0x14000(%rsp)
  0.56%    0.52%     0x00007f5f41212867: push   %rbp
  0.03%              0x00007f5f41212868: sub    $0x60,%rsp         ;*synchronization entry
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@-1 (line 275)
  0.20%    0.25%     0x00007f5f4121286c: vmovq  %r8,%xmm6
  0.40%    0.43%     0x00007f5f41212871: vmovq  %rsi,%xmm4
  0.00%    0.00%     0x00007f5f41212876: vmovd  %ecx,%xmm0
           0.00%     0x00007f5f4121287a: mov    0x18(%rsi),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@2 (line 275)
  0.23%    0.27%     0x00007f5f4121287d: mov    0x10(%rdx),%r11    ;*getfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 275)
                                                                   ; implicit exception: dispatches to 0x00007f5f412131f1
  0.47%    0.26%     0x00007f5f41212881: cmp    $0x40,%ecx
                     0x00007f5f41212884: jg     0x00007f5f41212d5d  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 275)
  0.01%    0.00%     0x00007f5f4121288a: mov    $0x1,%eax
                     0x00007f5f4121288f: mov    $0x1,%r8d
  0.22%    0.17%     0x00007f5f41212895: shl    %cl,%r8            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 275)
  0.45%    0.38%     0x00007f5f41212898: mov    %r11,%r10
  0.17%    0.19%     0x00007f5f4121289b: and    %r8,%r10           ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 275)
  0.45%    0.46%     0x00007f5f4121289e: xor    %r13d,%r13d
  0.00%    0.00%     0x00007f5f412128a1: test   %r10,%r10
                     0x00007f5f412128a4: jne    0x00007f5f41212d91  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 275)
                     0x00007f5f412128aa: cmp    $0x40,%ecx
                     0x00007f5f412128ad: jge    0x00007f5f41212dd5  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 278)
  0.20%    0.14%     0x00007f5f412128b3: mov    %r12b,0x18(%rdx)   ;*putfield empty
                                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 278)
  0.52%    0.43%     0x00007f5f412128b7: mov    0x1c(%rsi),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@23 (line 280)
  0.01%    0.00%     0x00007f5f412128ba: or     %r11,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 278)
  0.00%              0x00007f5f412128bd: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 278)
  0.19%    0.13%     0x00007f5f412128c1: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f5f41213205
  0.34%    0.32%     0x00007f5f412128c6: cmp    $0xf8019993,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                     0x00007f5f412128cd: jne    0x00007f5f41212c31
  0.01%    0.00%     0x00007f5f412128d3: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
                     0x00007f5f412128d7: mov    0x18(%r10),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.21%    0.21%     0x00007f5f412128db: cmp    $0x40,%ecx
                     0x00007f5f412128de: jg     0x00007f5f41212e09  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.45%    0.40%     0x00007f5f412128e4: mov    $0x1,%r11d
  0.00%    0.02%     0x00007f5f412128ea: shl    %cl,%r11           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.69%    0.58%     0x00007f5f412128ed: mov    %r8,%rbx
  0.00%              0x00007f5f412128f0: and    %r11,%rbx          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
                     0x00007f5f412128f3: test   %rbx,%rbx
                     0x00007f5f412128f6: jne    0x00007f5f41212e49  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.24%    0.31%     0x00007f5f412128fc: cmp    $0x40,%ecx
                     0x00007f5f412128ff: jge    0x00007f5f41212e91  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.38%    0.66%     0x00007f5f41212905: or     %r11,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.00%              0x00007f5f41212908: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
           0.00%     0x00007f5f4121290c: mov    0x70(%rsp),%r11
  0.21%    0.21%     0x00007f5f41212911: movzbl 0x11(%r11),%ebp    ;*getfield captures
                                                                   ; - com.google.re2j.Inst$MatchInst::add@24 (line 98)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
                                                                   ; implicit exception: dispatches to 0x00007f5f4121322d
  0.43%    0.40%     0x00007f5f41212916: test   %ebp,%ebp
                     0x00007f5f41212918: jne    0x00007f5f41212ed1  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@27 (line 98)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.00%    0.00%     0x00007f5f4121291e: mov    0xc(%rdx),%ecx     ;*getfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.00%              0x00007f5f41212921: mov    0x20(%rdx),%ebx    ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.22%    0.31%     0x00007f5f41212924: mov    %ecx,%esi
  0.40%    0.75%     0x00007f5f41212926: inc    %esi               ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.01%    0.00%     0x00007f5f41212928: mov    %esi,0xc(%rdx)     ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
                     0x00007f5f4121292b: mov    0xc(%r12,%rbx,8),%edi  ; implicit exception: dispatches to 0x00007f5f4121323d
  0.21%    0.39%     0x00007f5f41212930: cmp    %edi,%ecx
                  ╭  0x00007f5f41212932: jae    0x00007f5f41212bb5
  0.49%    0.80%  │  0x00007f5f41212938: vmovd  %esi,%xmm1
  0.01%    0.00%  │  0x00007f5f4121293c: vmovd  %ebx,%xmm2
                  │  0x00007f5f41212940: mov    %ecx,0x18(%rsp)
  0.19%    0.21%  │  0x00007f5f41212944: mov    %r10,%rcx
  0.38%    0.50%  │  0x00007f5f41212947: mov    0x70(%rsp),%r14
  0.00%    0.01%  │  0x00007f5f4121294c: mov    0x8(%r12,%rbx,8),%r11d
           0.00%  │  0x00007f5f41212951: cmp    $0xf8019808,%r11d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                  │  0x00007f5f41212958: jne    0x00007f5f41212c61  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.15%    0.17%  │  0x00007f5f4121295e: vmovq  %xmm4,%r10
  0.46%    0.46%  │  0x00007f5f41212963: mov    0x20(%r10),%ebp    ;*getfield inst2
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@41 (line 281)
  0.00%    0.00%  │  0x00007f5f41212967: shr    $0x3,%rcx          ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.01%           │  0x00007f5f4121296b: lea    (%r12,%rbx,8),%r11  ;*getfield denseThreadsInstructions
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.18%    0.21%  │  0x00007f5f4121296f: mov    0x18(%rsp),%r10d
  0.60%    0.50%  │  0x00007f5f41212974: lea    0x10(%r11,%r10,4),%r10
  0.00%    0.00%  │  0x00007f5f41212979: mov    %ecx,(%r10)
  0.25%    0.26%  │  0x00007f5f4121297c: shr    $0x9,%r10
  0.12%    0.13%  │  0x00007f5f41212980: movabs $0x7f5f50e9a000,%rbx
  0.34%    0.39%  │  0x00007f5f4121298a: mov    %r12b,(%rbx,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.20%    0.15%  │  0x00007f5f4121298e: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f5f41213255
  0.01%           │  0x00007f5f41212993: cmp    $0xf8019993,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │  0x00007f5f4121299a: jne    0x00007f5f41212c99
  0.23%    0.08%  │  0x00007f5f412129a0: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.37%    0.17%  │  0x00007f5f412129a4: vmovq  %r10,%xmm3
  0.12%    0.11%  │  0x00007f5f412129a9: mov    0x18(%r10),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.01%    0.02%  │  0x00007f5f412129ad: vmovd  %ecx,%xmm5
  0.15%    0.07%  │  0x00007f5f412129b1: cmp    $0x40,%ecx
                  │  0x00007f5f412129b4: jg     0x00007f5f41212f0d  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.31%    0.28%  │  0x00007f5f412129ba: mov    $0x1,%r10d
  0.10%    0.11%  │  0x00007f5f412129c0: shl    %cl,%r10           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.57%    0.52%  │  0x00007f5f412129c3: mov    %r8,%rcx
  0.08%    0.13%  │  0x00007f5f412129c6: and    %r10,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.01%    0.02%  │  0x00007f5f412129c9: test   %rcx,%rcx
                  │  0x00007f5f412129cc: jne    0x00007f5f41212f49  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.17%    0.19%  │  0x00007f5f412129d2: vmovd  %xmm5,%ecx
  0.35%    0.36%  │  0x00007f5f412129d6: cmp    $0x40,%ecx
                  │  0x00007f5f412129d9: jge    0x00007f5f41212f91  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.13%    0.12%  │  0x00007f5f412129df: or     %r10,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.02%    0.00%  │  0x00007f5f412129e2: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.17%    0.06%  │  0x00007f5f412129e6: mov    0x18(%rsp),%ecx
  0.34%    0.18%  │  0x00007f5f412129ea: add    $0x2,%ecx
  0.10%    0.10%  │  0x00007f5f412129ed: mov    %ecx,0xc(%rdx)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.00%    0.00%  │  0x00007f5f412129f0: mov    0x18(%rsp),%r10d
  0.18%    0.20%  │  0x00007f5f412129f5: add    $0x4,%r10d         ;*iadd
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.39%    0.53%  │  0x00007f5f412129f9: cmp    %edi,%r10d
                  │  0x00007f5f412129fc: jae    0x00007f5f41212bf1  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.11%    0.12%  │  0x00007f5f41212a02: vmovd  %r9d,%xmm7
  0.01%    0.01%  │  0x00007f5f41212a07: vmovq  %xmm4,%r9
  0.14%    0.21%  │  0x00007f5f41212a0c: mov    0x24(%r9),%ebp     ;*getfield inst3
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@59 (line 282)
  0.30%    0.31%  │  0x00007f5f41212a10: vmovq  %xmm3,%r9
  0.07%    0.10%  │  0x00007f5f41212a15: mov    %r9,%rcx
  0.00%    0.01%  │  0x00007f5f41212a18: shr    $0x3,%rcx          ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.19%    0.24%  │  0x00007f5f41212a1c: movslq 0x18(%rsp),%r9
  0.25%    0.56%  │  0x00007f5f41212a21: lea    (%r11,%r9,4),%r9   ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.14%    0.07%  │  0x00007f5f41212a25: mov    %r9,%rdi
  0.01%    0.02%  │  0x00007f5f41212a28: add    $0x14,%rdi
  0.19%    0.16%  │  0x00007f5f41212a2c: mov    %ecx,(%rdi)
  0.37%    0.27%  │  0x00007f5f41212a2e: mov    %rdi,%rcx
  0.10%    0.14%  │  0x00007f5f41212a31: shr    $0x9,%rcx
  0.02%    0.02%  │  0x00007f5f41212a35: mov    %r12b,(%rbx,%rcx,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.21%    0.14%  │  0x00007f5f41212a39: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f5f4121327d
  0.32%    0.46%  │  0x00007f5f41212a3e: cmp    $0xf8019993,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │  0x00007f5f41212a44: jne    0x00007f5f41212cc9
  0.10%    0.12%  │  0x00007f5f41212a4a: lea    (%r12,%rbp,8),%rcx  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.02%    0.01%  │  0x00007f5f41212a4e: vmovq  %rcx,%xmm1
  0.20%    0.29%  │  0x00007f5f41212a53: mov    0x18(%rcx),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.35%    0.46%  │  0x00007f5f41212a56: vmovd  %ecx,%xmm2
  0.08%    0.12%  │  0x00007f5f41212a5a: cmp    $0x40,%ecx
                  │  0x00007f5f41212a5d: jg     0x00007f5f41212fd1  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.00%    0.00%  │  0x00007f5f41212a63: mov    $0x1,%edi
  0.18%    0.21%  │  0x00007f5f41212a68: shl    %cl,%rdi           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.43%    0.45%  │  0x00007f5f41212a6b: mov    %r8,%rcx
  0.18%    0.18%  │  0x00007f5f41212a6e: and    %rdi,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.36%    0.31%  │  0x00007f5f41212a71: test   %rcx,%rcx
                  │  0x00007f5f41212a74: jne    0x00007f5f41213011  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.07%    0.09%  │  0x00007f5f41212a7a: vmovd  %xmm2,%ecx
  0.01%    0.02%  │  0x00007f5f41212a7e: cmp    $0x40,%ecx
                  │  0x00007f5f41212a81: jge    0x00007f5f4121305d  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.20%    0.23%  │  0x00007f5f41212a87: or     %rdi,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.31%    0.38%  │  0x00007f5f41212a8a: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.08%    0.06%  │  0x00007f5f41212a8e: vmovq  %xmm4,%rcx
  0.02%    0.01%  │  0x00007f5f41212a93: mov    0x28(%rcx),%ebp    ;*getfield inst4
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 283)
  0.18%    0.16%  │  0x00007f5f41212a96: mov    %r9,%rdi
  0.37%    0.39%  │  0x00007f5f41212a99: add    $0x18,%rdi
  0.09%    0.05%  │  0x00007f5f41212a9d: vmovq  %xmm1,%rsi
  0.03%           │  0x00007f5f41212aa2: mov    %rsi,%rcx
  0.18%    0.24%  │  0x00007f5f41212aa5: shr    $0x3,%rcx
  0.34%    0.27%  │  0x00007f5f41212aa9: mov    %ecx,(%rdi)        ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.13%    0.02%  │  0x00007f5f41212aab: mov    0x18(%rsp),%ecx
  0.02%           │  0x00007f5f41212aaf: add    $0x3,%ecx
  0.24%    0.19%  │  0x00007f5f41212ab2: mov    %ecx,0xc(%rdx)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.29%    0.33%  │  0x00007f5f41212ab5: shr    $0x9,%rdi
  0.16%    0.08%  │  0x00007f5f41212ab9: mov    %r12b,(%rbx,%rdi,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.01%    0.02%  │  0x00007f5f41212abd: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f5f412132a5
  0.11%    0.17%  │  0x00007f5f41212ac2: cmp    $0xf8019993,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │  0x00007f5f41212ac8: jne    0x00007f5f41212cfd
  0.32%    0.41%  │  0x00007f5f41212ace: lea    (%r12,%rbp,8),%rcx  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.09%    0.14%  │  0x00007f5f41212ad2: vmovq  %rcx,%xmm1
  0.01%    0.02%  │  0x00007f5f41212ad7: mov    0x18(%rcx),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.14%    0.21%  │  0x00007f5f41212ada: vmovd  %ecx,%xmm3
  0.35%    0.29%  │  0x00007f5f41212ade: cmp    $0x40,%ecx
                  │  0x00007f5f41212ae1: jg     0x00007f5f4121309d  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.11%    0.10%  │  0x00007f5f41212ae7: mov    $0x1,%edi
  0.01%    0.03%  │  0x00007f5f41212aec: shl    %cl,%rdi           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.62%    0.56%  │  0x00007f5f41212aef: mov    %r8,%rcx
  0.01%    0.01%  │  0x00007f5f41212af2: and    %rdi,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.15%    0.10%  │  0x00007f5f41212af5: test   %rcx,%rcx
                  │  0x00007f5f41212af8: jne    0x00007f5f412130dd  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.31%    0.37%  │  0x00007f5f41212afe: vmovd  %xmm3,%ecx
  0.12%    0.14%  │  0x00007f5f41212b02: cmp    $0x40,%ecx
                  │  0x00007f5f41212b05: jge    0x00007f5f41213129  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.02%    0.04%  │  0x00007f5f41212b0b: mov    %r10d,0xc(%rdx)    ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.16%    0.22%  │  0x00007f5f41212b0f: vmovq  %xmm4,%r10
  0.40%    0.48%  │  0x00007f5f41212b14: mov    0x2c(%r10),%ebp    ;*getfield inst5
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@95 (line 284)
  0.10%    0.08%  │  0x00007f5f41212b18: mov    %r9,%rcx
  0.01%    0.02%  │  0x00007f5f41212b1b: add    $0x1c,%rcx         ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.13%    0.18%  │  0x00007f5f41212b1f: or     %rdi,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.29%    0.29%  │  0x00007f5f41212b22: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.07%    0.08%  │  0x00007f5f41212b26: vmovq  %xmm1,%r10
  0.01%    0.03%  │  0x00007f5f41212b2b: shr    $0x3,%r10
  0.15%    0.20%  │  0x00007f5f41212b2f: mov    %r10d,(%rcx)
  0.37%    0.47%  │  0x00007f5f41212b32: mov    %rcx,%r10
  0.10%    0.09%  │  0x00007f5f41212b35: shr    $0x9,%r10
  0.00%    0.02%  │  0x00007f5f41212b39: mov    %r12b,(%rbx,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.14%    0.19%  │  0x00007f5f41212b3d: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f5f412132cd
  0.28%    0.31%  │  0x00007f5f41212b42: cmp    $0xf8019993,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │  0x00007f5f41212b49: jne    0x00007f5f41212d31
  0.12%    0.09%  │  0x00007f5f41212b4f: lea    (%r12,%rbp,8),%rdi  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.03%    0.00%  │  0x00007f5f41212b53: mov    0x18(%rdi),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.15%    0.13%  │  0x00007f5f41212b56: cmp    $0x40,%ecx
                  │  0x00007f5f41212b59: jg     0x00007f5f41213169  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.29%    0.37%  │  0x00007f5f41212b5f: shl    %cl,%rax           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.33%    0.23%  │  0x00007f5f41212b62: mov    %r8,%r10
  0.28%    0.29%  │  0x00007f5f41212b65: and    %rax,%r10          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.12%    0.09%  │  0x00007f5f41212b68: test   %r10,%r10
                  │  0x00007f5f41212b6b: jne    0x00007f5f41213191  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.02%    0.02%  │  0x00007f5f41212b71: cmp    $0x40,%ecx
                  │  0x00007f5f41212b74: jge    0x00007f5f412131c9  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.14%    0.26%  │  0x00007f5f41212b7a: or     %rax,%r8
  0.37%    0.41%  │  0x00007f5f41212b7d: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.06%    0.14%  │  0x00007f5f41212b81: add    $0x20,%r9
  0.02%    0.00%  │  0x00007f5f41212b85: mov    %rdi,%r10
  0.22%    0.21%  │  0x00007f5f41212b88: shr    $0x3,%r10
  0.36%    0.48%  │  0x00007f5f41212b8c: mov    %r10d,(%r9)        ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.06%    0.07%  │  0x00007f5f41212b8f: mov    %r9,%r10
  0.02%    0.00%  │  0x00007f5f41212b92: mov    0x18(%rsp),%r11d
  0.21%    0.09%  │  0x00007f5f41212b97: add    $0x5,%r11d
  0.33%    0.17%  │  0x00007f5f41212b9b: mov    %r11d,0xc(%rdx)    ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.06%    0.08%  │  0x00007f5f41212b9f: shr    $0x9,%r10
  0.02%    0.01%  │  0x00007f5f41212ba3: mov    %r12b,(%rbx,%r10,1)  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 275)
  0.14%    0.20%  │  0x00007f5f41212ba7: xor    %eax,%eax
  0.34%    0.45%  │  0x00007f5f41212ba9: add    $0x60,%rsp
  0.10%    0.15%  │  0x00007f5f41212bad: pop    %rbp
  0.01%    0.01%  │  0x00007f5f41212bae: test   %eax,0x1727f44c(%rip)        # 0x00007f5f58492000
                  │                                                ;   {poll_return}
  0.17%    0.23%  │  0x00007f5f41212bb4: retq                      ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
                  ↘  0x00007f5f41212bb5: mov    $0xffffffe4,%esi
                     0x00007f5f41212bba: vmovq  %xmm4,%rbp
                     0x00007f5f41212bbf: mov    %rdx,0x70(%rsp)
                     0x00007f5f41212bc4: vmovss %xmm0,(%rsp)
                     0x00007f5f41212bc9: vmovsd %xmm6,0x8(%rsp)
                     0x00007f5f41212bcf: mov    %r9d,0x4(%rsp)
....................................................................................................
 30.93%   32.35%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 528 (974 bytes) 

                                                                                       ; - java.lang.String::charAt@27 (line 660)
                                                                                       ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                       ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                       ; - com.google.re2j.Machine::match@96 (line 199)
                                         0x00007f5f41228889: cmp    $0xd800,%r10d
                                         0x00007f5f41228890: jge    0x00007f5f412295f9  ;*if_icmplt
                                                                                       ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                                       ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                                       ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                       ; - com.google.re2j.Machine::match@96 (line 199)
  0.00%    0.00%                         0x00007f5f41228896: shl    $0x3,%r10d         ;*ishl
                                                                                       ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                                                                                       ; - com.google.re2j.Machine::match@96 (line 199)
                                         0x00007f5f4122889a: mov    %r10d,%r11d
                                         0x00007f5f4122889d: and    $0x7,%r11d
                                         0x00007f5f412288a1: or     $0x1,%r10d
  0.00%    0.00%                         0x00007f5f412288a5: or     $0x1,%r11d         ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                                                                                       ; - com.google.re2j.Machine::match@96 (line 199)
                                         0x00007f5f412288a9: sar    $0x3,%r10d         ;*iand
                                                                                       ; - com.google.re2j.Machine::match@111 (line 201)
                                         0x00007f5f412288ad: vmovd  %xmm1,%ecx
                                         0x00007f5f412288b1: test   %ecx,%ecx
                                         0x00007f5f412288b3: jne    0x00007f5f412293c9  ;*ifne
                                                                                       ; - com.google.re2j.Machine::match@115 (line 204)
  0.01%    0.00%                         0x00007f5f412288b9: test   %r8d,%r8d
                                         0x00007f5f412288bc: jl     0x00007f5f41228cef  ;*ifge
                                                                                       ; - com.google.re2j.Utils::emptyOpContext@21 (line 179)
                                                                                       ; - com.google.re2j.Machine::match@121 (line 205)
  0.00%                                  0x00007f5f412288c2: mov    $0x5,%r9d          ;*iload_1
                                                                                       ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                                                                                       ; - com.google.re2j.Machine::match@121 (line 205)
                                         0x00007f5f412288c8: cmp    $0xa,%r8d
                                         0x00007f5f412288cc: je     0x00007f5f41228d08  ;*iload_0
                                                                                       ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                                                                                       ; - com.google.re2j.Machine::match@121 (line 205)
                                         0x00007f5f412288d2: mov    %r8d,%ecx
                                         0x00007f5f412288d5: add    $0xffffffbf,%ecx
                                         0x00007f5f412288d8: cmp    $0x1a,%ecx
                  ╭                      0x00007f5f412288db: jb     0x00007f5f412288ec  ;*if_icmple
                  │                                                                    ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │                                                                    ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                                    ; - com.google.re2j.Machine::match@121 (line 205)
                  │                      0x00007f5f412288dd: mov    %r8d,%ebx
  0.00%           │                      0x00007f5f412288e0: add    $0xffffff9f,%ebx
  0.00%    0.00%  │                      0x00007f5f412288e3: cmp    $0x1a,%ebx
                  │                      0x00007f5f412288e6: jae    0x00007f5f41228d11  ;*iconst_1
                  │                                                                    ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │                                                                    ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                                    ; - com.google.re2j.Machine::match@121 (line 205)
                  ↘                      0x00007f5f412288ec: or     $0x10,%r9d         ;*iload_2
                                                                                       ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                                       ; - com.google.re2j.Machine::match@121 (line 205)
                                         0x00007f5f412288f0: mov    %r11d,0x30(%rsp)
  0.00%    0.00%                         0x00007f5f412288f5: mov    %r10d,0x2c(%rsp)
  0.00%    0.00%                         0x00007f5f412288fa: movzbl 0x11(%r13),%ecx    ;*getfield captures
                                                                                       ; - com.google.re2j.Machine::match@283 (line 240)
                                         0x00007f5f412288ff: mov    0x44(%rsp),%r10d
                                         0x00007f5f41228904: and    $0x4,%r10d         ;*iand
                                                                                       ; - com.google.re2j.Machine::match@147 (line 212)
  0.00%                                  0x00007f5f41228908: mov    %r10d,0x14(%rsp)
  0.00%                                  0x00007f5f4122890d: mov    %rdi,%r10
                                         0x00007f5f41228910: shl    $0x3,%r10          ;*getfield q1
                                                                                       ; - com.google.re2j.Machine::match@53 (line 192)
                                         0x00007f5f41228914: mov    %r10,0x58(%rsp)
           0.00%                         0x00007f5f41228919: mov    %r8d,0x34(%rsp)
  0.00%    0.01%                         0x00007f5f4122891e: xor    %eax,%eax
                                         0x00007f5f41228920: xor    %r11d,%r11d
                                         0x00007f5f41228923: mov    %r11d,0x1c(%rsp)
  0.00%            ╭                     0x00007f5f41228928: jmpq   0x00007f5f41228aa7
                   │                     0x00007f5f4122892d: data16 xchg %ax,%ax
  0.17%    0.27%   │          ↗          0x00007f5f41228930: or     $0x20,%r10d        ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                   │          │                                                        ; - com.google.re2j.Machine::match@322 (line 245)
  0.26%    0.26%   │          │          0x00007f5f41228934: mov    %r10d,0x3c(%rsp)   ;*iload_2
                   │          │                                                        ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   │          │                                                        ; - com.google.re2j.Machine::match@322 (line 245)
  0.14%    0.17%   │          │↗         0x00007f5f41228939: mov    0x1c(%rsp),%ebp
  0.09%    0.18%   │          ││         0x00007f5f4122893d: cmp    %ebx,%ebp
                   │╭         ││         0x00007f5f4122893f: je     0x00007f5f41228c3d  ;*if_icmpne
                   ││         ││                                                       ; - com.google.re2j.Machine::match@347 (line 246)
  0.16%    0.22%   ││         ││         0x00007f5f41228945: xor    %r10d,%r10d
  0.17%    0.21%   ││         ││     ↗   0x00007f5f41228948: mov    %r8d,0x1c(%rsp)
  0.16%    0.13%   ││         ││     │   0x00007f5f4122894d: mov    0x50(%rsp),%rsi
  0.11%    0.15%   ││         ││     │   0x00007f5f41228952: mov    0x20(%rsp),%rdx
  0.19%    0.17%   ││         ││     │   0x00007f5f41228957: mov    0x58(%rsp),%rcx
  0.22%    0.22%   ││         ││     │   0x00007f5f4122895c: mov    %ebp,%r8d
  0.14%    0.13%   ││         ││     │   0x00007f5f4122895f: mov    0x1c(%rsp),%r9d
  0.34%    0.24%   ││         ││     │   0x00007f5f41228964: mov    0x34(%rsp),%edi
  0.16%    0.15%   ││         ││     │   0x00007f5f41228968: mov    0x3c(%rsp),%ebx
  0.24%    0.23%   ││         ││     │   0x00007f5f4122896c: mov    %ebx,(%rsp)
  0.08%    0.06%   ││         ││     │   0x00007f5f4122896f: mov    0x38(%rsp),%r11d
  0.12%    0.13%   ││         ││     │   0x00007f5f41228974: mov    %r11d,0x8(%rsp)
  0.17%    0.14%   ││         ││     │   0x00007f5f41228979: mov    %r10d,0x10(%rsp)
  0.22%    0.31%   ││         ││     │   0x00007f5f4122897e: nop
  0.09%    0.10%   ││         ││     │   0x00007f5f4122897f: callq  0x00007f5f41046020  ; OopMap{[24]=NarrowOop [32]=Oop [72]=Oop [80]=Oop [88]=Oop off=644}
                   ││         ││     │                                                 ;*invokespecial step
                   ││         ││     │                                                 ; - com.google.re2j.Machine::match@355 (line 246)
                   ││         ││     │                                                 ;   {optimized virtual_call}
  0.42%    0.46%   ││         ││     │   0x00007f5f41228984: mov    0x50(%rsp),%r8
  0.20%    0.12%   ││         ││     │   0x00007f5f41228989: movzbl 0x10(%r8),%eax     ;*getfield matched
                   ││         ││     │                                                 ; - com.google.re2j.Machine::match@374 (line 250)
  0.27%    0.28%   ││         ││     │   0x00007f5f4122898e: movzbl 0x11(%r8),%ecx     ;*getfield captures
                   ││         ││     │                                                 ; - com.google.re2j.Machine::match@367 (line 250)
  0.37%    0.60%   ││         ││     │   0x00007f5f41228993: mov    0x28(%rsp),%r11d
  0.15%    0.10%   ││         ││     │   0x00007f5f41228998: test   %r11d,%r11d
                   ││╭        ││     │   0x00007f5f4122899b: je     0x00007f5f41228c5c  ;*ifne
                   │││        ││     │                                                 ; - com.google.re2j.Machine::match@360 (line 247)
  0.07%    0.05%   │││        ││     │   0x00007f5f412289a1: test   %ecx,%ecx
                   │││        ││     │   0x00007f5f412289a3: jne    0x00007f5f41228ef9  ;*ifne
                   │││        ││     │                                                 ; - com.google.re2j.Machine::match@370 (line 250)
  0.13%    0.17%   │││        ││     │   0x00007f5f412289a9: test   %eax,%eax
                   │││        ││     │   0x00007f5f412289ab: jne    0x00007f5f41229015  ;*ifeq
                   │││        ││     │                                                 ; - com.google.re2j.Machine::match@377 (line 250)
  0.31%    0.53%   │││        ││     │   0x00007f5f412289b1: mov    0x2c(%rsp),%r10d
  0.13%    0.05%   │││        ││     │   0x00007f5f412289b6: cmp    $0xffffffff,%r10d
                   │││╭       ││     │   0x00007f5f412289ba: je     0x00007f5f41228c48  ;*if_icmpeq
                   ││││       ││     │                                                 ; - com.google.re2j.Machine::match@399 (line 258)
  0.07%    0.05%   ││││       ││     │   0x00007f5f412289c0: mov    0x48(%rsp),%rdi
  0.08%    0.09%   ││││       ││     │   0x00007f5f412289c5: mov    0x10(%rdi),%ebx    ;*getfield end
                   ││││       ││     │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                   ││││       ││     │                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.63%    0.91%   ││││       ││     │   0x00007f5f412289c8: mov    0x30(%rsp),%r9d
  0.10%    0.10%   ││││       ││     │   0x00007f5f412289cd: add    0x1c(%rsp),%r9d
  0.03%    0.05%   ││││       ││     │   0x00007f5f412289d2: add    0xc(%rdi),%r9d     ;*iadd
                   ││││       ││     │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                   ││││       ││     │                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  1.42%    1.16%   ││││       ││     │   0x00007f5f412289d6: cmp    %ebx,%r9d
                   ││││╭      ││     │   0x00007f5f412289d9: jge    0x00007f5f41228c26  ;*if_icmpge
                   │││││      ││     │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                   │││││      ││     │                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.47%    0.39%   │││││      ││     │   0x00007f5f412289df: mov    0x14(%rdi),%ebp    ;*getfield str
                   │││││      ││     │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                   │││││      ││     │                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.05%    0.06%   │││││      ││     │   0x00007f5f412289e2: mov    0x8(%r12,%rbp,8),%ebx  ; implicit exception: dispatches to 0x00007f5f41229795
  1.71%    2.10%   │││││      ││     │   0x00007f5f412289e7: cmp    $0xf80002da,%ebx   ;   {metadata(&apos;java/lang/String&apos;)}
                   │││││      ││     │   0x00007f5f412289ed: jne    0x00007f5f41228ded
  0.58%    0.72%   │││││      ││     │   0x00007f5f412289f3: lea    (%r12,%rbp,8),%rbx  ;*invokeinterface charAt
                   │││││      ││     │                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││││      ││     │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││      ││     │                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.00%    0.02%   │││││      ││     │   0x00007f5f412289f7: test   %r9d,%r9d
                   │││││      ││     │   0x00007f5f412289fa: jl     0x00007f5f41228f49  ;*iflt
                   │││││      ││     │                                                 ; - java.lang.String::charAt@1 (line 657)
                   │││││      ││     │                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││││      ││     │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││      ││     │                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.05%    0.02%   │││││      ││     │   0x00007f5f41228a00: mov    %r9d,%r13d
  0.01%    0.03%   │││││      ││     │   0x00007f5f41228a03: mov    0xc(%rbx),%r10d    ;*getfield value
                   │││││      ││     │                                                 ; - java.lang.String::charAt@6 (line 657)
                   │││││      ││     │                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││││      ││     │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││      ││     │                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.53%    0.56%   │││││      ││     │   0x00007f5f41228a07: mov    %rbx,%r14
           0.00%   │││││      ││     │   0x00007f5f41228a0a: mov    0xc(%r12,%r10,8),%ebp  ;*arraylength
                   │││││      ││     │                                                 ; - java.lang.String::charAt@9 (line 657)
                   │││││      ││     │                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││││      ││     │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││      ││     │                                                 ; - com.google.re2j.Machine::match@407 (line 259)
                   │││││      ││     │                                                 ; implicit exception: dispatches to 0x00007f5f412297a9
  2.45%    3.00%   │││││      ││     │   0x00007f5f41228a0f: cmp    %ebp,%r9d
                   │││││      ││     │   0x00007f5f41228a12: jge    0x00007f5f41229065  ;*if_icmplt
                   │││││      ││     │                                                 ; - java.lang.String::charAt@10 (line 657)
                   │││││      ││     │                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││││      ││     │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││      ││     │                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.70%    0.71%   │││││      ││     │   0x00007f5f41228a18: cmp    %ebp,%r9d
                   │││││      ││     │   0x00007f5f41228a1b: jae    0x00007f5f41228d71
  0.12%    0.15%   │││││      ││     │   0x00007f5f41228a21: lea    (%r12,%r10,8),%r11
                   │││││      ││     │   0x00007f5f41228a25: movzwl 0x10(%r11,%r9,2),%ebx  ;*caload
                   │││││      ││     │                                                 ; - java.lang.String::charAt@27 (line 660)
                   │││││      ││     │                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││││      ││     │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││      ││     │                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.02%    0.04%   │││││      ││     │   0x00007f5f41228a2b: cmp    $0xd800,%ebx
                   │││││      ││     │   0x00007f5f41228a31: jge    0x00007f5f412290cd  ;*if_icmplt
                   │││││      ││     │                                                 ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   │││││      ││     │                                                 ; - java.lang.Character::codePointAt@9 (line 4867)
                   │││││      ││     │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││      ││     │                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.69%    0.61%   │││││      ││     │   0x00007f5f41228a37: shl    $0x3,%ebx          ;*ishl
                   │││││      ││     │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                   │││││      ││     │                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.06%    0.05%   │││││      ││     │   0x00007f5f41228a3a: mov    %ebx,%r11d
  0.00%            │││││      ││     │   0x00007f5f41228a3d: or     $0x1,%r11d
  0.31%    0.43%   │││││      ││     │   0x00007f5f41228a41: and    $0x7,%ebx
  0.19%    0.28%   │││││      ││     │   0x00007f5f41228a44: sar    $0x3,%r11d         ;*ishr
                   │││││      ││     │                                                 ; - com.google.re2j.Machine::match@415 (line 260)
  0.28%    0.47%   │││││      ││     │   0x00007f5f41228a48: or     $0x1,%ebx          ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                   │││││      ││     │                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.01%    0.00%   │││││      ││     │   0x00007f5f41228a4b: mov    0x2c(%rsp),%r10d   ;*aload
                   │││││      ││     │                                                 ; - com.google.re2j.Machine::match@425 (line 263)
  0.00%            │││││      ││   ↗ │↗  0x00007f5f41228a50: mov    %r8,%r13
  0.22%    0.16%   │││││      ││   │ ││  0x00007f5f41228a53: mov    %rdi,0x48(%rsp)
  0.40%    0.28%   │││││      ││   │ ││  0x00007f5f41228a58: mov    %r10d,0x34(%rsp)   ; OopMap{rdi=Oop r13=Oop [32]=Oop [72]=Oop [88]=Oop off=861}
                   │││││      ││   │ ││                                                ;*goto
                   │││││      ││   │ ││                                                ; - com.google.re2j.Machine::match@437 (line 266)
           0.00%   │││││      ││   │ ││  0x00007f5f41228a5d: test   %eax,0x1726959d(%rip)        # 0x00007f5f58492000
                   │││││      ││   │ ││                                                ;*goto
                   │││││      ││   │ ││                                                ; - com.google.re2j.Machine::match@437 (line 266)
                   │││││      ││   │ ││                                                ;   {poll}
           0.00%   │││││      ││   │ ││  0x00007f5f41228a63: mov    0x28(%r13),%edi    ;*getfield matchcap
                   │││││      ││   │ ││                                                ; - com.google.re2j.Machine::match@307 (line 243)
  0.25%    0.18%   │││││      ││   │ ││  0x00007f5f41228a67: mov    0x14(%r13),%r8d    ;*getfield re2
                   │││││      ││   │ ││                                                ; - com.google.re2j.Machine::match@169 (line 220)
  0.36%    0.25%   │││││      ││   │ ││  0x00007f5f41228a6b: vmovd  %r8d,%xmm2
  0.00%            │││││      ││   │ ││  0x00007f5f41228a70: mov    0x58(%rsp),%r10
  0.00%    0.01%   │││││      ││   │ ││  0x00007f5f41228a75: mov    %r10,%r8
  0.27%    0.09%   │││││      ││   │ ││  0x00007f5f41228a78: shr    $0x3,%r8
  0.38%    0.12%   │││││      ││   │ ││  0x00007f5f41228a7c: mov    %r8d,0x18(%rsp)
  0.01%            │││││      ││   │ ││  0x00007f5f41228a81: mov    0x3c(%rsp),%r9d
  0.00%    0.00%   │││││      ││   │ ││  0x00007f5f41228a86: mov    0x20(%rsp),%r10
  0.22%    0.13%   │││││      ││   │ ││  0x00007f5f41228a8b: mov    %r10,0x58(%rsp)
  0.35%    0.17%   │││││      ││   │ ││  0x00007f5f41228a90: mov    0x30(%rsp),%r10d
                   │││││      ││   │ ││  0x00007f5f41228a95: mov    %r10d,0x28(%rsp)
  0.01%    0.01%   │││││      ││   │ ││  0x00007f5f41228a9a: mov    %ebx,0x30(%rsp)
  0.23%    0.08%   │││││      ││   │ ││  0x00007f5f41228a9e: mov    %r11d,0x2c(%rsp)
  0.47%    0.13%   │││││      ││   │ ││  0x00007f5f41228aa3: vmovd  %edi,%xmm3         ;*aload
                   │││││      ││   │ ││                                                ; - com.google.re2j.Machine::match@136 (line 211)
  0.01%    0.01%   ↘││││      ││   │ ││  0x00007f5f41228aa7: mov    0x18(%rsp),%r11d
                    ││││      ││   │ ││  0x00007f5f41228aac: movzbl 0x18(%r12,%r11,8),%r10d  ; implicit exception: dispatches to 0x00007f5f4122973e
  0.26%    0.13%    ││││      ││   │ ││  0x00007f5f41228ab2: test   %r10d,%r10d
                    ││││╭     ││   │ ││  0x00007f5f41228ab5: je     0x00007f5f41228c09  ;*ifeq
                    │││││     ││   │ ││                                                ; - com.google.re2j.Machine::match@141 (line 211)
  0.23%    0.10%    │││││     ││   │ ││  0x00007f5f41228abb: mov    0x14(%rsp),%edi
           0.00%    │││││     ││   │ ││  0x00007f5f41228abf: test   %edi,%edi
                    │││││     ││   │ ││  0x00007f5f41228ac1: jne    0x00007f5f41229171  ;*ifeq
                    │││││     ││   │ ││                                                ; - com.google.re2j.Machine::match@148 (line 212)
                    │││││     ││   │ ││  0x00007f5f41228ac7: test   %eax,%eax
                    │││││     ││   │ ││  0x00007f5f41228ac9: jne    0x00007f5f412291c9  ;*ifeq
                    │││││     ││   │ ││                                                ; - com.google.re2j.Machine::match@162 (line 216)
  0.20%    0.03%    │││││     ││   │ ││  0x00007f5f41228acf: vmovd  %xmm2,%r10d
  0.26%    0.10%    │││││     ││   │ ││  0x00007f5f41228ad4: mov    0x24(%r12,%r10,8),%r10d  ;*getfield prefix
                    │││││     ││   │ ││                                                ; - com.google.re2j.Machine::match@172 (line 220)
                    │││││     ││   │ ││                                                ; implicit exception: dispatches to 0x00007f5f412297b9
           0.01%    │││││     ││   │ ││  0x00007f5f41228ad9: mov    0xc(%r12,%r10,8),%r11d  ;*getfield value
                    │││││     ││   │ ││                                                ; - java.lang.String::isEmpty@1 (line 635)
                    │││││     ││   │ ││                                                ; - com.google.re2j.Machine::match@175 (line 220)
                    │││││     ││   │ ││                                                ; implicit exception: dispatches to 0x00007f5f412297c9
  0.01%    0.01%    │││││     ││   │ ││  0x00007f5f41228ade: mov    0xc(%r12,%r11,8),%ebp  ;*arraylength
                    │││││     ││   │ ││                                                ; - java.lang.String::isEmpty@4 (line 635)
                    │││││     ││   │ ││                                                ; - com.google.re2j.Machine::match@175 (line 220)
                    │││││     ││   │ ││                                                ; implicit exception: dispatches to 0x00007f5f412297d9
  0.22%    0.19%    │││││     ││   │ ││  0x00007f5f41228ae3: test   %ebp,%ebp
                    │││││     ││   │ ││  0x00007f5f41228ae5: jne    0x00007f5f41229141  ;*aload_0
                    │││││     ││   │ ││                                                ; - com.google.re2j.Machine::match@267 (line 237)
  0.45%    0.27%    │││││     ││↗  │ ││  0x00007f5f41228aeb: test   %eax,%eax
                    │││││     │││  │ ││  0x00007f5f41228aed: jne    0x00007f5f41228e45  ;*ifne
                    │││││     │││  │ ││                                                ; - com.google.re2j.Machine::match@271 (line 237)
  0.00%             │││││     │││  │ ││  0x00007f5f41228af3: mov    0x1c(%rsp),%ebx
                    │││││     │││  │ ││  0x00007f5f41228af7: test   %ebx,%ebx
                    │││││╭    │││  │ ││  0x00007f5f41228af9: je     0x00007f5f41228c33  ;*ifeq
                    ││││││    │││  │ ││                                                ; - com.google.re2j.Machine::match@275 (line 237)
  0.19%    0.15%    ││││││    │││  │ ││  0x00007f5f41228aff: mov    0x38(%rsp),%r8d
  0.41%    0.44%    ││││││    │││  │ ││  0x00007f5f41228b04: test   %r8d,%r8d
                    ││││││    │││  │ ││  0x00007f5f41228b07: jne    0x00007f5f41228e99  ;*aload_0
                    ││││││    │││  │ ││                                                ; - com.google.re2j.Machine::match@282 (line 240)
  0.01%    0.00%    ││││││    │││  │↗││  0x00007f5f41228b0d: test   %ecx,%ecx
                    ││││││    │││  ││││  0x00007f5f41228b0f: jne    0x00007f5f41228fbd  ;*ifeq
                    ││││││    │││  ││││                                                ; - com.google.re2j.Machine::match@286 (line 240)
                    ││││││    │││  ││││  0x00007f5f41228b15: mov    0x18(%r13),%r10d   ;*getfield prog
                    ││││││    │││  ││││                                                ; - com.google.re2j.Machine::match@297 (line 243)
  0.18%    0.10%    ││││││    │││  ││││  0x00007f5f41228b19: mov    0x1c(%r12,%r10,8),%ebp  ;*getfield startInst
                    ││││││    │││  ││││                                                ; - com.google.re2j.Machine::match@300 (line 243)
                    ││││││    │││  ││││                                                ; implicit exception: dispatches to 0x00007f5f4122974d
  0.49%    0.25%    ││││││    │││  ││││  0x00007f5f41228b1e: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f5f4122975d
  0.00%    0.01%    ││││││    │││  ││││  0x00007f5f41228b23: cmp    $0xf8019a53,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$Alt5Inst&apos;)}
                    ││││││    │││  ││││  0x00007f5f41228b2a: jne    0x00007f5f41228d33  ;*invokevirtual add
                    ││││││    │││  ││││                                                ; - com.google.re2j.Machine::match@314 (line 243)
  0.00%             ││││││    │││  ││││  0x00007f5f41228b30: mov    %edi,0x14(%rsp)
  0.22%    0.04%    ││││││    │││  ││││  0x00007f5f41228b34: mov    %r8d,0x38(%rsp)
  0.45%    0.08%    ││││││    │││  ││││  0x00007f5f41228b39: mov    %r13,0x50(%rsp)    ;*ifeq
                    ││││││    │││  ││││                                                ; - com.google.re2j.Machine::match@286 (line 240)
  0.01%             ││││││    │││  ││││  0x00007f5f41228b3e: lea    (%r12,%rbp,8),%rsi  ;*invokevirtual add
                    ││││││    │││  ││││                                                ; - com.google.re2j.Machine::match@314 (line 243)
                    ││││││    │││  ││││  0x00007f5f41228b42: mov    0x18(%rsp),%r11d
  0.14%    0.01%    ││││││    │││  ││││  0x00007f5f41228b47: lea    (%r12,%r11,8),%r10  ;*aload
                    ││││││    │││  ││││                                                ; - com.google.re2j.Machine::match@136 (line 211)
  0.35%    0.04%    ││││││    │││  ││││  0x00007f5f41228b4b: mov    %r10,0x20(%rsp)
  0.00%             ││││││    │││  ││││  0x00007f5f41228b50: vmovd  %xmm3,%r10d
  0.00%    0.00%    ││││││    │││  ││││  0x00007f5f41228b55: mov    %r10,%r8
  0.17%    0.01%    ││││││    │││  ││││  0x00007f5f41228b58: shl    $0x3,%r8           ;*getfield matchcap
                    ││││││    │││  ││││                                                ; - com.google.re2j.Machine::match@307 (line 243)
  0.58%    0.04%    ││││││    │││  ││││  0x00007f5f41228b5c: mov    0x20(%rsp),%rdx
  0.22%    0.07%    ││││││    │││  ││││  0x00007f5f41228b61: mov    0x1c(%rsp),%ecx
                    ││││││    │││  ││││  0x00007f5f41228b65: xor    %edi,%edi
  0.20%    0.04%    ││││││    │││  ││││  0x00007f5f41228b67: mov    %r13,(%rsp)
  0.35%    0.13%    ││││││    │││  ││││  0x00007f5f41228b6b: callq  0x00007f5f41046020  ; OopMap{[24]=NarrowOop [32]=Oop [72]=Oop [80]=Oop [88]=Oop off=1136}
                    ││││││    │││  ││││                                                ;*invokevirtual add
                    ││││││    │││  ││││                                                ; - com.google.re2j.Machine::match@314 (line 243)
                    ││││││    │││  ││││                                                ;   {optimized virtual_call}
  0.40%    0.35%    ││││││    │││  ││││  0x00007f5f41228b70: mov    0x34(%rsp),%r11d
  0.14%    0.13%    ││││││    │││  ││││  0x00007f5f41228b75: test   %r11d,%r11d
                    ││││││╭   │││  ││││  0x00007f5f41228b78: jl     0x00007f5f41228c1b  ;*ifge
                    │││││││   │││  ││││                                                ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                    │││││││   │││  ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.18%    0.12%    │││││││   │││  ││││  0x00007f5f41228b7e: xor    %r10d,%r10d        ;*iload_0
                    │││││││   │││  ││││                                                ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                    │││││││   │││  ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.44%    0.29%    │││││││   │││ ↗││││  0x00007f5f41228b81: cmp    $0xa,%r11d
                    │││││││   │││ │││││  0x00007f5f41228b85: je     0x00007f5f41228c9b  ;*iload_1
                    │││││││   │││ │││││                                                ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                    │││││││   │││ │││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.11%    0.10%    │││││││   │││ │││││  0x00007f5f41228b8b: mov    0x2c(%rsp),%r9d
  0.02%    0.02%    │││││││   │││ │││││  0x00007f5f41228b90: test   %r9d,%r9d
                    │││││││╭  │││ │││││  0x00007f5f41228b93: jl     0x00007f5f41228c12  ;*iload_1
                    ││││││││  │││ │││││                                                ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                    ││││││││  │││ │││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.21%    0.20%    ││││││││  │││↗│││││  0x00007f5f41228b95: cmp    $0xa,%r9d
                    ││││││││  │││││││││  0x00007f5f41228b99: je     0x00007f5f41228ca4  ;*iload_0
                    ││││││││  │││││││││                                                ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                    ││││││││  │││││││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.34%    0.32%    ││││││││  │││││││││  0x00007f5f41228b9f: mov    0x48(%rsp),%rcx
  0.28%    0.20%    ││││││││  │││││││││  0x00007f5f41228ba4: mov    0x10(%rcx),%ebx    ;*getfield end
                    ││││││││  │││││││││                                                ; - com.google.re2j.MachineInput$UTF16Input::endPos@1 (line 221)
                    ││││││││  │││││││││                                                ; - com.google.re2j.Machine::match@344 (line 246)
  0.35%    0.39%    ││││││││  │││││││││  0x00007f5f41228ba7: mov    0x1c(%rsp),%r8d
  0.17%    0.18%    ││││││││  │││││││││  0x00007f5f41228bac: add    0x28(%rsp),%r8d    ;*iadd
                    ││││││││  │││││││││                                                ; - com.google.re2j.Machine::match@336 (line 246)
  0.37%    0.28%    ││││││││  │││││││││  0x00007f5f41228bb1: mov    0x34(%rsp),%esi
  0.06%    0.12%    ││││││││  │││││││││  0x00007f5f41228bb5: add    $0xffffffbf,%esi
  0.09%    0.12%    ││││││││  │││││││││  0x00007f5f41228bb8: mov    0x2c(%rsp),%edx
  0.17%    0.18%    ││││││││  │││││││││  0x00007f5f41228bbc: add    $0xffffffbf,%edx
  0.35%    0.43%    ││││││││  │││││││││  0x00007f5f41228bbf: cmp    $0x1a,%esi
                    ││││││││╭ │││││││││  0x00007f5f41228bc2: jb     0x00007f5f41228bd4  ;*if_icmple
                    │││││││││ │││││││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                    │││││││││ │││││││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    │││││││││ │││││││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.06%    0.06%    │││││││││ │││││││││  0x00007f5f41228bc4: mov    0x34(%rsp),%edi
  0.09%    0.09%    │││││││││ │││││││││  0x00007f5f41228bc8: add    $0xffffff9f,%edi
  0.17%    0.19%    │││││││││ │││││││││  0x00007f5f41228bcb: cmp    $0x1a,%edi
                    │││││││││ │││││││││  0x00007f5f41228bce: jae    0x00007f5f41228cad  ;*iconst_1
                    │││││││││ │││││││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                    │││││││││ │││││││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    │││││││││ │││││││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.30%    0.27%    ││││││││↘ │││││││││  0x00007f5f41228bd4: mov    $0x1,%ebp          ;*ireturn
                    ││││││││  │││││││││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                    ││││││││  │││││││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    ││││││││  │││││││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.07%    0.09%    ││││││││  │││││││││  0x00007f5f41228bd9: cmp    $0x1a,%edx
                    ││││││││ ╭│││││││││  0x00007f5f41228bdc: jb     0x00007f5f41228bee  ;*if_icmple
                    ││││││││ ││││││││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                    ││││││││ ││││││││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    ││││││││ ││││││││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.11%    0.12%    ││││││││ ││││││││││  0x00007f5f41228bde: mov    0x2c(%rsp),%edx
  0.20%    0.14%    ││││││││ ││││││││││  0x00007f5f41228be2: add    $0xffffff9f,%edx
  0.30%    0.20%    ││││││││ ││││││││││  0x00007f5f41228be5: cmp    $0x1a,%edx
                    ││││││││ ││││││││││  0x00007f5f41228be8: jae    0x00007f5f41228cce  ;*iconst_1
                    ││││││││ ││││││││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                    ││││││││ ││││││││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    ││││││││ ││││││││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.05%    0.13%    ││││││││ ↘│││││││││  0x00007f5f41228bee: mov    $0x1,%edi          ;*ireturn
                    ││││││││  │││││││││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                    ││││││││  │││││││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    ││││││││  │││││││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.16%    0.17%    ││││││││  │││││││││  0x00007f5f41228bf3: cmp    %edi,%ebp
                    ││││││││  ╰││││││││  0x00007f5f41228bf5: je     0x00007f5f41228930  ;*if_icmpeq
                    ││││││││   ││││││││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                    ││││││││   ││││││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.15%    0.09%    ││││││││   ││││││││  0x00007f5f41228bfb: or     $0x10,%r10d        ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                    ││││││││   ││││││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.02%    0.02%    ││││││││   ││││││││  0x00007f5f41228bff: mov    %r10d,0x3c(%rsp)
  0.10%    0.02%    ││││││││   ╰│││││││  0x00007f5f41228c04: jmpq   0x00007f5f41228939
  0.07%    0.04%    ││││↘│││    │││││││  0x00007f5f41228c09: mov    0x14(%rsp),%edi
           0.00%    ││││ │││    ╰││││││  0x00007f5f41228c0d: jmpq   0x00007f5f41228aeb
  0.00%    0.00%    ││││ ││↘     ││││││  0x00007f5f41228c12: or     $0xa,%r10d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@27 (line 180)
                    ││││ ││      ││││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
           0.00%    ││││ ││      ╰│││││  0x00007f5f41228c16: jmpq   0x00007f5f41228b95
  0.01%    0.00%    ││││ │↘       │││││  0x00007f5f41228c1b: mov    $0x5,%r10d
                    ││││ │        ╰││││  0x00007f5f41228c21: jmpq   0x00007f5f41228b81
  0.01%    0.00%    │││↘ │         ││││  0x00007f5f41228c26: mov    $0xffffffff,%r11d
                    │││  │         ││││  0x00007f5f41228c2c: xor    %ebx,%ebx
                    │││  │         ╰│││  0x00007f5f41228c2e: jmpq   0x00007f5f41228a50
                    │││  ↘          │││  0x00007f5f41228c33: mov    0x38(%rsp),%r8d
  0.01%    0.00%    │││             ╰││  0x00007f5f41228c38: jmpq   0x00007f5f41228b0d
  0.01%    0.01%    ↘││              ││  0x00007f5f41228c3d: mov    $0x1,%r10d
  0.00%              ││              ╰│  0x00007f5f41228c43: jmpq   0x00007f5f41228948
                     │↘               │  0x00007f5f41228c48: mov    0x30(%rsp),%ebx
                     │                │  0x00007f5f41228c4c: mov    $0xffffffff,%r11d
           0.00%     │                │  0x00007f5f41228c52: mov    0x48(%rsp),%rdi
                     │                ╰  0x00007f5f41228c57: jmpq   0x00007f5f41228a50
                     ↘                   0x00007f5f41228c5c: test   %ecx,%ecx
                                         0x00007f5f41228c5e: jne    0x00007f5f41229589  ;*ifeq
                                                                                       ; - com.google.re2j.Machine::freeQueue@4 (line 150)
                                                                                       ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                                                                                       ; - com.google.re2j.Machine::match@443 (line 267)
           0.00%                         0x00007f5f41228c64: mov    0x58(%rsp),%r11
                                         0x00007f5f41228c69: movzbl 0x18(%r11),%r10d   ; implicit exception: dispatches to 0x00007f5f41229841
                                         0x00007f5f41228c6e: test   %r10d,%r10d
                                         0x00007f5f41228c71: jne    0x00007f5f41228c8c  ;*ifeq
                                                                                       ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                                                                                       ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                                                                                       ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                                                                                       ; - com.google.re2j.Machine::match@443 (line 267)
....................................................................................................
 30.32%   26.97%  <total for region 3>

....[Hottest Regions]...............................................................................
 34.76%   37.38%         C2, level 4  com.google.re2j.Machine::step, version 488 (532 bytes) 
 30.93%   32.35%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 496 (852 bytes) 
 30.32%   26.97%         C2, level 4  com.google.re2j.Machine::match, version 528 (974 bytes) 
  0.67%    0.72%         C2, level 4  com.google.re2j.Machine::match, version 528 (86 bytes) 
  0.46%    0.45%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.12%    0.00%   [kernel.kallsyms]  [unknown] (39 bytes) 
  0.12%    0.09%         C2, level 4  com.google.re2j.Pattern::find, version 544 (33 bytes) 
  0.08%    0.06%         C2, level 4  java.util.Collections::shuffle, version 555 (91 bytes) 
  0.08%    0.06%         C2, level 4  com.google.re2j.Pattern::find, version 544 (0 bytes) 
  0.07%    0.04%         C2, level 4  com.google.re2j.Pattern::find, version 544 (8 bytes) 
  0.07%    0.04%         C2, level 4  com.google.re2j.Pattern::find, version 544 (8 bytes) 
  0.06%    0.02%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.05%                  C2, level 4  com.google.re2j.Pattern::find, version 544 (113 bytes) 
  0.04%    0.04%   [kernel.kallsyms]  [unknown] (1 bytes) 
  0.04%    0.01%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.04%            [kernel.kallsyms]  [unknown] (0 bytes) 
  0.04%    0.01%   [kernel.kallsyms]  [unknown] (29 bytes) 
  0.04%    0.02%         C2, level 4  java.util.Collections::shuffle, version 555 (85 bytes) 
  0.04%    0.01%         C2, level 4  com.google.re2j.Pattern::find, version 544 (48 bytes) 
  0.04%    0.05%           libjvm.so  _ZN10fileStream5writeEPKcm (18 bytes) 
  1.88%    1.65%  <...other 357 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 34.77%   37.39%         C2, level 4  com.google.re2j.Machine::step, version 488 
 31.07%   27.74%         C2, level 4  com.google.re2j.Machine::match, version 528 
 30.93%   32.35%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 496 
  1.47%    1.19%   [kernel.kallsyms]  [unknown] 
  0.62%    0.28%         C2, level 4  com.google.re2j.Pattern::find, version 544 
  0.20%    0.10%         C2, level 4  java.util.Collections::shuffle, version 555 
  0.11%    0.01%              [vdso]  [unknown] 
  0.10%    0.03%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 591 
  0.05%    0.07%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.05%    0.10%        libc-2.26.so  vfprintf 
  0.04%    0.02%      hsdis-amd64.so  [unknown] 
  0.03%    0.01%        libc-2.26.so  __clock_gettime 
  0.03%                  C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 551 
  0.03%    0.03%           libjvm.so  _ZN18PSPromotionManager22copy_to_survivor_spaceILb0EEEP7oopDescS2_ 
  0.02%           libpthread-2.26.so  __libc_write 
  0.02%    0.01%        libc-2.26.so  _IO_fflush 
  0.02%    0.04%        libc-2.26.so  _IO_fwrite 
  0.01%    0.01%           libjvm.so  _ZN13defaultStream4holdEl 
  0.01%    0.07%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.01%    0.00%           libjvm.so  _ZN18PSPromotionManager18drain_stacks_depthEb 
  0.36%    0.32%  <...other 63 warm methods...>
....................................................................................................
100.00%   99.79%  <totals>

....[Distribution by Source]........................................................................
 97.74%   97.90%         C2, level 4
  1.47%    1.19%   [kernel.kallsyms]
  0.35%    0.48%           libjvm.so
  0.21%    0.34%        libc-2.26.so
  0.11%    0.01%              [vdso]
  0.04%    0.02%      hsdis-amd64.so
  0.03%    0.03%  libpthread-2.26.so
  0.02%    0.01%         interpreter
  0.00%    0.00%        runtime stub
  0.00%               perf-14483.map
  0.00%                  C1, level 3
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                     Mode  Cnt      Score     Error  Units
Re2jFindRegex.testExp2       thrpt   20  17981.886 ± 109.039  ops/s
Re2jFindRegex.testExp2:·asm  thrpt             NaN              ---
