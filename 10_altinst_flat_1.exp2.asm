# JMH version: 1.19
# VM version: JDK 1.8.0_131, VM 25.131-b11
# VM invoker: /usr/lib/jvm/java-8-oracle/jre/bin/java
# VM options: <none>
# Warmup: 20 iterations, 1 s each
# Measurement: 20 iterations, 1 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Throughput, ops/time
# Benchmark: com.github.arnaudroger.re2j.Re2jRegex.testExp2

# Run progress: 0.00% complete, ETA 00:00:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7275.318 ops/s
# Warmup Iteration   2: 14206.678 ops/s
# Warmup Iteration   3: 14644.570 ops/s
# Warmup Iteration   4: 14375.601 ops/s
# Warmup Iteration   5: 14653.095 ops/s
# Warmup Iteration   6: 14334.666 ops/s
# Warmup Iteration   7: 14783.375 ops/s
# Warmup Iteration   8: 14829.811 ops/s
# Warmup Iteration   9: 14765.659 ops/s
# Warmup Iteration  10: 14766.415 ops/s
# Warmup Iteration  11: 14677.668 ops/s
# Warmup Iteration  12: 14608.978 ops/s
# Warmup Iteration  13: 14840.107 ops/s
# Warmup Iteration  14: 14689.122 ops/s
# Warmup Iteration  15: 14985.868 ops/s
# Warmup Iteration  16: 14816.885 ops/s
# Warmup Iteration  17: 14401.692 ops/s
# Warmup Iteration  18: 14793.664 ops/s
# Warmup Iteration  19: 14987.905 ops/s
# Warmup Iteration  20: 14999.896 ops/s
Iteration   1: 14858.657 ops/s
Iteration   2: 14538.206 ops/s
Iteration   3: 14791.382 ops/s
Iteration   4: 14730.379 ops/s
Iteration   5: 14755.612 ops/s
Iteration   6: 14952.154 ops/s
Iteration   7: 14718.731 ops/s
Iteration   8: 14861.694 ops/s
Iteration   9: 14994.970 ops/s
Iteration  10: 13303.266 ops/s
Iteration  11: 14974.793 ops/s
Iteration  12: 14855.506 ops/s
Iteration  13: 13765.422 ops/s
Iteration  14: 14964.643 ops/s
Iteration  15: 14990.794 ops/s
Iteration  16: 14871.850 ops/s
Iteration  17: 14823.556 ops/s
Iteration  18: 14895.996 ops/s
Iteration  19: 14976.539 ops/s
Iteration  20: 13427.336 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jRegex.testExp2":
  14652.574 ±(99.9%) 447.846 ops/s [Average]
  (min, avg, max) = (13303.266, 14652.574, 14994.970), stdev = 515.740
  CI (99.9%): [14204.728, 15100.420] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jRegex.testExp2:·asm":
PrintAssembly processed: 203196 total address lines.
Perf output processed (skipped 23.543 seconds):
 Column 1: cycles (20327 events)
 Column 2: instructions (20372 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 526 (736 bytes) 

                             # parm6:    [sp+0x78]   = int
                             # parm7:    [sp+0x80]   = boolean
                             0x00007f3e6c196600: mov    0x8(%rsi),%r10d
                             0x00007f3e6c196604: shl    $0x3,%r10
                             0x00007f3e6c196608: cmp    %r10,%rax
                             0x00007f3e6c19660b: jne    0x00007f3e6bfa7e20  ;   {runtime_call}
                             0x00007f3e6c196611: data16 xchg %ax,%ax
                             0x00007f3e6c196614: nopl   0x0(%rax,%rax,1)
                             0x00007f3e6c19661c: data16 data16 xchg %ax,%ax
                           [Verified Entry Point]
  0.07%    0.04%             0x00007f3e6c196620: mov    %eax,-0x14000(%rsp)
  0.45%    0.52%             0x00007f3e6c196627: push   %rbp
  0.07%    0.06%             0x00007f3e6c196628: sub    $0x60,%rsp         ;*synchronization entry
                                                                           ; - com.google.re2j.Machine::step@-1 (line 276)
  0.17%    0.16%             0x00007f3e6c19662c: mov    %edi,0x18(%rsp)
  0.20%    0.17%             0x00007f3e6c196630: mov    %r9d,0x14(%rsp)
  0.06%    0.05%             0x00007f3e6c196635: mov    %r8d,0x10(%rsp)
  0.06%    0.02%             0x00007f3e6c19663a: mov    %rcx,0x8(%rsp)
  0.24%    0.19%             0x00007f3e6c19663f: vmovq  %rdx,%xmm0
  0.13%    0.12%             0x00007f3e6c196644: vmovq  %rsi,%xmm1
  0.05%    0.04%             0x00007f3e6c196649: mov    0x14(%rsi),%r10d   ;*getfield re2
                                                                           ; - com.google.re2j.Machine::step@1 (line 276)
  0.06%    0.03%             0x00007f3e6c19664d: movzbl 0x18(%r12,%r10,8),%r11d  ;*getfield longest
                                                                           ; - com.google.re2j.Machine::step@4 (line 276)
                                                                           ; implicit exception: dispatches to 0x00007f3e6c1971f1
  0.15%    0.19%             0x00007f3e6c196653: vmovd  %r11d,%xmm3
  0.16%    0.08%             0x00007f3e6c196658: mov    0xc(%rdx),%ecx     ;*getfield size
                                                                           ; - com.google.re2j.Machine::step@15 (line 277)
                                                                           ; implicit exception: dispatches to 0x00007f3e6c197201
  0.03%    0.04%             0x00007f3e6c19665b: test   %ecx,%ecx
                  ╭          0x00007f3e6c19665d: jle    0x00007f3e6c1967ae  ;*if_icmpge
                  │                                                        ; - com.google.re2j.Machine::step@18 (line 277)
  0.05%    0.05%  │          0x00007f3e6c196663: test   %r11d,%r11d
                  │          0x00007f3e6c196666: jne    0x00007f3e6c196d65
  0.23%    0.20%  │          0x00007f3e6c19666c: xor    %r10d,%r10d
  0.09%    0.17%  │╭         0x00007f3e6c19666f: jmp    0x00007f3e6c196687
  1.53%    1.04%  ││   ↗     0x00007f3e6c196671: mov    %r10d,%ecx
  0.03%    0.03%  ││   │     0x00007f3e6c196674: mov    %r11,0x8(%rsp)
  0.17%    0.13%  ││   │     0x00007f3e6c196679: mov    %ebx,0x78(%rsp)
  0.03%    0.04%  ││   │     0x00007f3e6c19667d: mov    %edi,0x80(%rsp)
  1.50%    0.97%  ││   │     0x00007f3e6c196684: mov    %edx,%r10d         ;*getfield size
                  ││   │                                                   ; - com.google.re2j.Machine::step@15 (line 277)
  0.10%    0.10%  │↘   │     0x00007f3e6c196687: vmovq  %xmm0,%r11
  0.26%    0.27%  │    │     0x00007f3e6c19668c: mov    0x20(%r11),%r8d    ;*getfield denseThreads
                  │    │                                                   ; - com.google.re2j.Machine::step@22 (line 278)
  0.15%    0.22%  │    │     0x00007f3e6c196690: mov    0xc(%r12,%r8,8),%r9d  ; implicit exception: dispatches to 0x00007f3e6c1971ad
  1.65%    1.08%  │    │     0x00007f3e6c196695: cmp    %r9d,%r10d
                  │    │     0x00007f3e6c196698: jae    0x00007f3e6c196aec
  0.09%    0.12%  │    │     0x00007f3e6c19669e: lea    (%r12,%r8,8),%r11
  0.23%    0.21%  │    │     0x00007f3e6c1966a2: mov    0x10(%r11,%r10,4),%r8d  ;*aaload
                  │    │                                                   ; - com.google.re2j.Machine::step@27 (line 278)
  0.23%    0.29%  │    │     0x00007f3e6c1966a7: mov    0x10(%r12,%r8,8),%edi  ;*getfield inst
                  │    │                                                   ; - com.google.re2j.Machine::step@78 (line 283)
                  │    │                                                   ; implicit exception: dispatches to 0x00007f3e6c1971c1
  3.14%    2.45%  │    │     0x00007f3e6c1966ac: mov    0xc(%r12,%rdi,8),%eax  ; implicit exception: dispatches to 0x00007f3e6c1971d1
  6.56%    6.97%  │    │     0x00007f3e6c1966b1: mov    0xc(%r12,%r8,8),%r14d  ;*getfield cap
                  │    │                                                   ; - com.google.re2j.Machine::step@106 (line 289)
  0.03%    0.02%  │    │     0x00007f3e6c1966b6: vmovq  %xmm1,%r11
                  │    │     0x00007f3e6c1966bb: mov    0xc(%r11),%r9d     ;*getfield poolSize
                  │    │                                                   ; - com.google.re2j.Machine::free@1 (line 167)
                  │    │                                                   ; - com.google.re2j.Machine::step@226 (line 303)
  0.32%    0.12%  │    │     0x00007f3e6c1966bf: mov    0x24(%r11),%r11d   ;*getfield pool
                  │    │                                                   ; - com.google.re2j.Machine::free@5 (line 167)
                  │    │                                                   ; - com.google.re2j.Machine::step@226 (line 303)
  1.82%    1.34%  │    │     0x00007f3e6c1966c3: mov    %r10d,%edx
  0.02%    0.03%  │    │     0x00007f3e6c1966c6: inc    %edx               ;*iadd
                  │    │                                                   ; - com.google.re2j.Machine::step@173 (line 295)
           0.02%  │    │     0x00007f3e6c1966c8: lea    (%r12,%r8,8),%rsi  ;*aaload
                  │    │                                                   ; - com.google.re2j.Machine::step@27 (line 278)
  0.26%    0.33%  │    │     0x00007f3e6c1966cc: cmp    $0x6,%eax
                  │    │     0x00007f3e6c1966cf: je     0x00007f3e6c19697c  ;*if_icmpne
                  │    │                                                   ; - com.google.re2j.Machine::step@90 (line 285)
  1.74%    2.13%  │    │     0x00007f3e6c1966d5: mov    0x8(%r12,%rdi,8),%ebx
  0.02%    0.05%  │    │     0x00007f3e6c1966da: cmp    $0xf8019993,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │    │     0x00007f3e6c1966e0: jne    0x00007f3e6c196b35
  0.00%    0.01%  │    │     0x00007f3e6c1966e6: shl    $0x3,%rdi          ;*invokevirtual matchRune
                  │    │                                                   ; - com.google.re2j.Machine::step@189 (line 299)
  0.29%    0.29%  │    │     0x00007f3e6c1966ea: mov    0xc(%rdi),%ebp     ;*getfield op
                  │    │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@1 (line 134)
                  │    │                                                   ; - com.google.re2j.Machine::step@189 (line 299)
  1.83%    2.12%  │    │     0x00007f3e6c1966ed: cmp    $0xa,%ebp
                  │ ╭  │     0x00007f3e6c1966f0: je     0x00007f3e6c1967e2  ;*if_icmpne
                  │ │  │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@6 (line 134)
                  │ │  │                                                   ; - com.google.re2j.Machine::step@189 (line 299)
  0.20%    0.11%  │ │  │     0x00007f3e6c1966f6: cmp    $0xb,%ebp
                  │ │  │     0x00007f3e6c1966f9: je     0x00007f3e6c196c11  ;*if_icmpne
                  │ │  │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@17 (line 138)
                  │ │  │                                                   ; - com.google.re2j.Machine::step@189 (line 299)
  0.24%    0.42%  │ │  │     0x00007f3e6c1966ff: cmp    $0x9,%ebp
                  │ │  │     0x00007f3e6c196702: je     0x00007f3e6c196c51  ;*if_icmpne
                  │ │  │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@38 (line 142)
                  │ │  │                                                   ; - com.google.re2j.Machine::step@189 (line 299)
  1.32%    1.78%  │ │  │     0x00007f3e6c196708: cmp    $0xc,%ebp
                  │ │  │     0x00007f3e6c19670b: jne    0x00007f3e6c196bd1  ;*if_icmpne
                  │ │  │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@61 (line 146)
                  │ │  │                                                   ; - com.google.re2j.Machine::step@189 (line 299)
  0.92%    1.29%  │ │  │     0x00007f3e6c196711: mov    0x20(%rdi),%eax    ;*getfield f0
                  │ │  │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@65 (line 147)
                  │ │  │                                                   ; - com.google.re2j.Machine::step@189 (line 299)
  0.03%    0.04%  │ │  │     0x00007f3e6c196714: cmp    0x18(%rsp),%eax
                  │ │╭ │     0x00007f3e6c196718: je     0x00007f3e6c1967e2  ;*if_icmpeq
                  │ ││ │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@69 (line 147)
                  │ ││ │                                                   ; - com.google.re2j.Machine::step@189 (line 299)
  1.37%    1.83%  │ ││ │     0x00007f3e6c19671e: mov    0x24(%rdi),%ebx    ;*getfield f1
                  │ ││ │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@73 (line 147)
                  │ ││ │                                                   ; - com.google.re2j.Machine::step@189 (line 299)
  0.15%    0.15%  │ ││ │     0x00007f3e6c196721: cmp    0x18(%rsp),%ebx
                  │ ││╭│     0x00007f3e6c196725: je     0x00007f3e6c1967e2  ;*if_icmpeq
                  │ ││││                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@77 (line 147)
                  │ ││││                                                   ; - com.google.re2j.Machine::step@189 (line 299)
  2.06%    2.31%  │ ││││     0x00007f3e6c19672b: mov    0x28(%rdi),%ebp    ;*getfield f2
                  │ ││││                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@81 (line 147)
                  │ ││││                                                   ; - com.google.re2j.Machine::step@189 (line 299)
  0.11%    0.10%  │ ││││     0x00007f3e6c19672e: cmp    0x18(%rsp),%ebp
                  │ ││││     0x00007f3e6c196732: je     0x00007f3e6c196ce5  ;*if_icmpeq
                  │ ││││                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@85 (line 147)
                  │ ││││                                                   ; - com.google.re2j.Machine::step@189 (line 299)
  1.08%    1.08%  │ ││││     0x00007f3e6c196738: mov    0x2c(%rdi),%ebp    ;*getfield f3
                  │ ││││                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@89 (line 147)
                  │ ││││                                                   ; - com.google.re2j.Machine::step@189 (line 299)
  0.06%    0.03%  │ ││││     0x00007f3e6c19673b: cmp    0x18(%rsp),%ebp
                  │ ││││     0x00007f3e6c19673f: je     0x00007f3e6c196d25  ;*if_icmpne
                  │ ││││                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@93 (line 147)
                  │ ││││                                                   ; - com.google.re2j.Machine::step@189 (line 299)
  1.76%    1.85%  │ ││││     0x00007f3e6c196745: mov    0x78(%rsp),%ebx
  0.04%    0.02%  │ ││││     0x00007f3e6c196749: mov    0x80(%rsp),%edi    ;*getfield size
                  │ ││││                                                   ; - com.google.re2j.Machine::step@15 (line 277)
  0.18%    0.21%  │ ││││     0x00007f3e6c196750: mov    0xc(%r12,%r11,8),%ebp  ;*arraylength
                  │ ││││                                                   ; - com.google.re2j.Machine::free@8 (line 167)
                  │ ││││                                                   ; - com.google.re2j.Machine::step@226 (line 303)
                  │ ││││                                                   ; implicit exception: dispatches to 0x00007f3e6c1971e1
  0.11%    0.04%  │ ││││     0x00007f3e6c196755: cmp    %ebp,%r9d
                  │ ││││     0x00007f3e6c196758: jge    0x00007f3e6c196c91  ;*if_icmplt
                  │ ││││                                                   ; - com.google.re2j.Machine::free@9 (line 167)
                  │ ││││                                                   ; - com.google.re2j.Machine::step@226 (line 303)
  1.81%    2.19%  │ ││││     0x00007f3e6c19675e: mov    %r9d,%esi
  0.01%    0.00%  │ ││││     0x00007f3e6c196761: inc    %esi
  0.20%    0.18%  │ ││││     0x00007f3e6c196763: vmovq  %xmm1,%rax
  0.05%    0.03%  │ ││││     0x00007f3e6c196768: mov    %esi,0xc(%rax)     ;*putfield poolSize
                  │ ││││                                                   ; - com.google.re2j.Machine::free@45 (line 170)
                  │ ││││                                                   ; - com.google.re2j.Machine::step@226 (line 303)
  1.98%    2.30%  │ ││││     0x00007f3e6c19676b: cmp    %ebp,%r9d
                  │ ││││     0x00007f3e6c19676e: jae    0x00007f3e6c196b71  ;*aastore
                  │ ││││                                                   ; - com.google.re2j.Machine::free@49 (line 170)
                  │ ││││                                                   ; - com.google.re2j.Machine::step@226 (line 303)
  0.00%    0.01%  │ ││││     0x00007f3e6c196774: vmovq  %xmm0,%r10
  0.11%    0.21%  │ ││││     0x00007f3e6c196779: mov    0xc(%r10),%r10d    ;*getfield size
                  │ ││││                                                   ; - com.google.re2j.Machine::step@15 (line 277)
  0.04%    0.04%  │ ││││     0x00007f3e6c19677d: shl    $0x3,%r11          ;*getfield pool
                  │ ││││                                                   ; - com.google.re2j.Machine::free@5 (line 167)
                  │ ││││                                                   ; - com.google.re2j.Machine::step@226 (line 303)
  1.88%    2.01%  │ ││││     0x00007f3e6c196781: lea    0x10(%r11,%r9,4),%r11
  0.00%    0.00%  │ ││││     0x00007f3e6c196786: mov    %r8d,(%r11)
  0.24%    0.27%  │ ││││     0x00007f3e6c196789: shr    $0x9,%r11
  0.01%    0.04%  │ ││││     0x00007f3e6c19678d: movabs $0x7f3e67990000,%r8
  2.00%    1.52%  │ ││││     0x00007f3e6c196797: mov    %r12b,(%r8,%r11,1)  ;*aastore
                  │ ││││                                                   ; - com.google.re2j.Machine::free@49 (line 170)
                  │ ││││                                                   ; - com.google.re2j.Machine::step@226 (line 303)
  0.13%    0.08%  │ ││││     0x00007f3e6c19679b: mov    0x8(%rsp),%r11     ; OopMap{r11=Oop xmm0=Oop xmm1=Oop off=416}
                  │ ││││                                                   ;*goto
                  │ ││││                                                   ; - com.google.re2j.Machine::step@232 (line 277)
  0.26%    0.27%  │ ││││  ↗  0x00007f3e6c1967a0: test   %eax,0x15efd85a(%rip)        # 0x00007f3e82094000
                  │ ││││  │                                                ;*goto
                  │ ││││  │                                                ; - com.google.re2j.Machine::step@232 (line 277)
                  │ ││││  │                                                ;   {poll}
  0.06%    0.03%  │ ││││  │  0x00007f3e6c1967a6: cmp    %ecx,%edx
                  │ │││╰  │  0x00007f3e6c1967a8: jl     0x00007f3e6c196671  ;*if_icmpge
                  │ │││   │                                                ; - com.google.re2j.Machine::step@18 (line 277)
  0.35%    0.17%  ↘ │││   │  0x00007f3e6c1967ae: vmovq  %xmm0,%r10
           0.01%    │││   │  0x00007f3e6c1967b3: movzbl 0x18(%r10),%r11d
  0.02%    0.03%    │││   │  0x00007f3e6c1967b8: test   %r11d,%r11d
                    │││ ╭ │  0x00007f3e6c1967bb: jne    0x00007f3e6c1967d6  ;*ifeq
                    │││ │ │                                                ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                    │││ │ │                                                ; - com.google.re2j.Machine::step@236 (line 306)
  0.01%    0.02%    │││ │ │  0x00007f3e6c1967bd: mov    %r12d,0xc(%r10)    ;*putfield size
                    │││ │ │                                                ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                    │││ │ │                                                ; - com.google.re2j.Machine::step@236 (line 306)
  0.44%    0.27%    │││ │ │  0x00007f3e6c1967c1: mov    0x1c(%r10),%ebp    ;*getfield pcs
                    │││ │ │                                                ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                    │││ │ │                                                ; - com.google.re2j.Machine::step@236 (line 306)
  0.00%    0.00%    │││ │ │  0x00007f3e6c1967c5: movb   $0x1,0x18(%r10)    ;*putfield empty
                    │││ │ │                                                ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                    │││ │ │                                                ; - com.google.re2j.Machine::step@236 (line 306)
  0.03%    0.01%    │││ │ │  0x00007f3e6c1967ca: mov    %r12,0x10(%r10)    ;*putfield pcsl
                    │││ │ │                                                ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                    │││ │ │                                                ; - com.google.re2j.Machine::step@236 (line 306)
  0.03%    0.02%    │││ │ │  0x00007f3e6c1967ce: test   %ebp,%ebp
                    │││ │ │  0x00007f3e6c1967d0: jne    0x00007f3e6c196d8d  ;*getfield size
                    │││ │ │                                                ; - com.google.re2j.Machine::step@15 (line 277)
  0.35%    0.18%    │││ ↘ │  0x00007f3e6c1967d6: add    $0x60,%rsp
  0.00%             │││   │  0x00007f3e6c1967da: pop    %rbp
  0.04%    0.05%    │││   │  0x00007f3e6c1967db: test   %eax,0x15efd81f(%rip)        # 0x00007f3e82094000
                    │││   │                                                ;   {poll_return}
           0.01%    │││   │  0x00007f3e6c1967e1: retq   
  0.28%    0.20%    ↘↘↘   │  0x00007f3e6c1967e2: mov    0x1c(%rdi),%r11d   ;*getfield outInst
                          │                                                ; - com.google.re2j.Machine::step@197 (line 300)
  0.19%    0.08%          │  0x00007f3e6c1967e6: mov    0x8(%r12,%r11,8),%ebx  ; implicit exception: dispatches to 0x00007f3e6c197211
  0.36%    0.28%          │  0x00007f3e6c1967eb: lea    (%r12,%r11,8),%r9
                          │  0x00007f3e6c1967ef: xor    %edi,%edi
                          │  0x00007f3e6c1967f1: mov    $0x1,%eax
                          │  0x00007f3e6c1967f6: cmp    $0xf8019993,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                         ╭│  0x00007f3e6c1967fc: jne    0x00007f3e6c1968c7  ;*invokevirtual add
                         ││                                                ; - com.google.re2j.Machine::step@213 (line 300)
  0.10%    0.05%         ││  0x00007f3e6c196802: mov    0x18(%r9),%ebx     ;*getfield pc
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                         ││  0x00007f3e6c196806: mov    0x8(%rsp),%r11
                         ││  0x00007f3e6c19680b: mov    0x10(%r11),%rbp    ;*getfield pcsl
                         ││                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                         ││                                                ; implicit exception: dispatches to 0x00007f3e6c197231
  0.01%                  ││  0x00007f3e6c19680f: cmp    $0x40,%ebx
                         ││  0x00007f3e6c196812: jg     0x00007f3e6c196df1  ;*if_icmpgt
                         ││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.11%    0.08%         ││  0x00007f3e6c196818: mov    %ebx,%ecx
           0.00%         ││  0x00007f3e6c19681a: shl    %cl,%rax           ;*lshl
                         ││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.21%    0.10%         ││  0x00007f3e6c19681d: mov    %rbp,%rcx
           0.00%         ││  0x00007f3e6c196820: and    %rax,%rcx          ;*land
                         ││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%                  ││  0x00007f3e6c196823: test   %rcx,%rcx
                         ││  0x00007f3e6c196826: jne    0x00007f3e6c196e3d  ;*ifeq
                         ││                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.09%    0.02%         ││  0x00007f3e6c19682c: cmp    $0x40,%ebx
                         ││  0x00007f3e6c19682f: jge    0x00007f3e6c196ea1  ;*if_icmpge
                         ││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                         ││  0x00007f3e6c196835: mov    %r12b,0x18(%r11)   ;*putfield empty
                         ││                                                ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%                  ││  0x00007f3e6c196839: or     %rbp,%rax
                         ││  0x00007f3e6c19683c: mov    %rax,0x10(%r11)    ;*putfield pcsl
                         ││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.11%    0.01%         ││  0x00007f3e6c196840: mov    %rsi,%rbx
  0.01%                  ││  0x00007f3e6c196843: mov    %r9,%rcx
  0.03%                  ││  0x00007f3e6c196846: shr    $0x3,%rcx
                         ││  0x00007f3e6c19684a: mov    %ecx,0x10(%r12,%r8,8)
  0.06%    0.03%         ││  0x00007f3e6c19684f: shr    $0x9,%rbx
           0.00%         ││  0x00007f3e6c196853: movabs $0x7f3e67990000,%r9
  0.00%                  ││  0x00007f3e6c19685d: mov    %r12b,(%r9,%rbx,1)  ;*putfield inst
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@41 (line 101)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                         ││  0x00007f3e6c196861: mov    0xc(%r12,%r14,8),%ebp  ;*arraylength
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@45 (line 103)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                         ││                                                ; implicit exception: dispatches to 0x00007f3e6c197245
  0.10%    0.04%         ││  0x00007f3e6c196866: test   %ebp,%ebp
                         ││  0x00007f3e6c196868: jg     0x00007f3e6c196eed  ;*ifle
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%    0.00%         ││  0x00007f3e6c19686e: mov    0x20(%r11),%ecx    ;*getfield denseThreads
                         ││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                         ││  0x00007f3e6c196872: mov    0xc(%r11),%ebp     ;*getfield size
                         ││                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                         ││  0x00007f3e6c196876: mov    %ebp,%r9d
  0.10%    0.04%         ││  0x00007f3e6c196879: inc    %r9d
  0.01%    0.01%         ││  0x00007f3e6c19687c: mov    %r9d,0xc(%r11)     ;*putfield size
                         ││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%                  ││  0x00007f3e6c196880: mov    0xc(%r12,%rcx,8),%ebx  ; implicit exception: dispatches to 0x00007f3e6c197255
  0.01%                  ││  0x00007f3e6c196885: cmp    %ebx,%ebp
                         ││  0x00007f3e6c196887: jae    0x00007f3e6c196da5  ;*aastore
                         ││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.08%    0.07%         ││  0x00007f3e6c19688d: lea    (%r12,%rcx,8),%r10  ;*getfield denseThreads
                         ││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%    0.01%         ││  0x00007f3e6c196891: lea    0x10(%r10,%rbp,4),%r10
  0.00%                  ││  0x00007f3e6c196896: mov    %r8d,(%r10)
  0.11%    0.00%         ││  0x00007f3e6c196899: shr    $0x9,%r10
  0.04%    0.09%         ││  0x00007f3e6c19689d: movabs $0x7f3e67990000,%r8
  0.01%    0.01%         ││  0x00007f3e6c1968a7: mov    %r12b,(%r8,%r10,1)  ;*synchronization entry
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.03%    0.01%         ││  0x00007f3e6c1968ab: vmovq  %xmm0,%r10
           0.00%         ││  0x00007f3e6c1968b0: mov    0xc(%r10),%ecx     ;*getfield size
                         ││                                                ; - com.google.re2j.Machine::step@15 (line 277)
  0.03%    0.10%         ││  0x00007f3e6c1968b4: mov    %ecx,%r10d
  0.01%    0.01%         ││  0x00007f3e6c1968b7: mov    0x78(%rsp),%ebx
  0.02%    0.03%         ││  0x00007f3e6c1968bb: mov    0x80(%rsp),%edi
  0.00%                  │╰  0x00007f3e6c1968c2: jmpq   0x00007f3e6c1967a0
                         ↘   0x00007f3e6c1968c7: cmp    $0xf801990d,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                             0x00007f3e6c1968cd: jne    0x00007f3e6c196f85  ;*invokevirtual add
                                                                           ; - com.google.re2j.Machine::step@213 (line 300)
                             0x00007f3e6c1968d3: mov    0x18(%r9),%ebx     ;*getfield pc
                                                                           ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                                                                           ; - com.google.re2j.Machine::step@213 (line 300)
                             0x00007f3e6c1968d7: mov    0x8(%rsp),%r11
                             0x00007f3e6c1968dc: mov    0x10(%r11),%rbp    ;*getfield pcsl
                                                                           ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                                                                           ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                           ; - com.google.re2j.Machine::step@213 (line 300)
                                                                           ; implicit exception: dispatches to 0x00007f3e6c197269
           0.00%             0x00007f3e6c1968e0: cmp    $0x40,%ebx
                             0x00007f3e6c1968e3: jg     0x00007f3e6c197061  ;*if_icmpgt
                                                                           ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                                                                           ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                           ; - com.google.re2j.Machine::step@213 (line 300)
                             0x00007f3e6c1968e9: mov    %ebx,%ecx
                             0x00007f3e6c1968eb: shl    %cl,%rax           ;*lshl
                                                                           ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                                                                           ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                           ; - com.google.re2j.Machine::step@213 (line 300)
                             0x00007f3e6c1968ee: mov    %rbp,%rcx
                             0x00007f3e6c1968f1: and    %rax,%rcx          ;*land
                                                                           ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                                                                           ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                           ; - com.google.re2j.Machine::step@213 (line 300)
                             0x00007f3e6c1968f4: test   %rcx,%rcx
                             0x00007f3e6c1968f7: jne    0x00007f3e6c1970b1  ;*ifeq
                                                                           ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                                                                           ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                           ; - com.google.re2j.Machine::step@213 (line 300)
                             0x00007f3e6c1968fd: cmp    $0x40,%ebx
  0.01%                      0x00007f3e6c196900: jge    0x00007f3e6c197111  ;*if_icmpge
                                                                           ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                                                                           ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                           ; - com.google.re2j.Machine::step@213 (line 300)
                             0x00007f3e6c196906: mov    %r12b,0x18(%r11)   ;*putfield empty
                                                                           ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                                                                           ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                           ; - com.google.re2j.Machine::step@213 (line 300)
                             0x00007f3e6c19690a: or     %rbp,%rax
                             0x00007f3e6c19690d: mov    %rax,0x10(%r11)    ;*putfield pcsl
                                                                           ; - com.google.re2j.Machine$Queue::add@15 (line 57)
....................................................................................................
 46.24%   45.16%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Inst$Alt5Inst::add, version 532 (1276 bytes) 

                     # parm4:    rdi:rdi   = &apos;com/google/re2j/Machine$Thread&apos;
                     # parm5:    [sp+0x70]   = &apos;com/google/re2j/Machine&apos;  (sp of caller)
                     0x00007f3e6c19b900: mov    0x8(%rsi),%r10d
                     0x00007f3e6c19b904: shl    $0x3,%r10
                     0x00007f3e6c19b908: cmp    %r10,%rax
                     0x00007f3e6c19b90b: jne    0x00007f3e6bfa7e20  ;   {runtime_call}
                     0x00007f3e6c19b911: data16 xchg %ax,%ax
                     0x00007f3e6c19b914: nopl   0x0(%rax,%rax,1)
                     0x00007f3e6c19b91c: data16 data16 xchg %ax,%ax
                   [Verified Entry Point]
  0.37%    0.40%     0x00007f3e6c19b920: mov    %eax,-0x14000(%rsp)
  0.04%    0.04%     0x00007f3e6c19b927: push   %rbp
  0.31%    0.27%     0x00007f3e6c19b928: sub    $0x60,%rsp         ;*synchronization entry
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@-1 (line 273)
  0.04%    0.08%     0x00007f3e6c19b92c: vmovq  %rsi,%xmm9
  0.06%    0.04%     0x00007f3e6c19b931: vmovd  %ecx,%xmm1
  0.27%    0.30%     0x00007f3e6c19b935: mov    0x18(%rsi),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@2 (line 273)
  0.04%    0.03%     0x00007f3e6c19b938: mov    0x10(%rdx),%r10    ;*getfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 273)
                                                                   ; implicit exception: dispatches to 0x00007f3e6c19c5c9
           0.00%     0x00007f3e6c19b93c: cmp    $0x40,%ecx
                     0x00007f3e6c19b93f: jg     0x00007f3e6c19c175  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 273)
  0.02%    0.05%     0x00007f3e6c19b945: mov    $0x1,%r14d
  0.37%    0.30%     0x00007f3e6c19b94b: mov    $0x1,%ebx
  0.04%    0.04%     0x00007f3e6c19b950: shl    %cl,%rbx           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 273)
  0.36%    0.43%     0x00007f3e6c19b953: mov    %r10,%r11
  0.05%    0.03%     0x00007f3e6c19b956: and    %rbx,%r11          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 273)
                     0x00007f3e6c19b959: test   %r11,%r11
                     0x00007f3e6c19b95c: jne    0x00007f3e6c19c1a9  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 273)
  0.04%    0.02%     0x00007f3e6c19b962: cmp    $0x40,%ecx
                     0x00007f3e6c19b965: jge    0x00007f3e6c19c1ed  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 276)
  0.29%    0.40%     0x00007f3e6c19b96b: mov    %r12b,0x18(%rdx)   ;*putfield empty
                                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 276)
  0.02%    0.03%     0x00007f3e6c19b96f: mov    0x1c(%rsi),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@23 (line 278)
                     0x00007f3e6c19b972: or     %r10,%rbx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 276)
  0.03%    0.04%     0x00007f3e6c19b975: mov    %rbx,0x10(%rdx)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 276)
  0.27%    0.30%     0x00007f3e6c19b979: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f3e6c19c5dd
  0.05%    0.06%     0x00007f3e6c19b97e: cmp    $0xf8019993,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                     0x00007f3e6c19b985: jne    0x00007f3e6c19bf65
  0.01%              0x00007f3e6c19b98b: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.04%    0.05%     0x00007f3e6c19b98f: mov    0x18(%r11),%r10d   ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.33%    0.32%     0x00007f3e6c19b993: cmp    $0x40,%r10d
                     0x00007f3e6c19b997: jg     0x00007f3e6c19c221  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.06%    0.04%     0x00007f3e6c19b99d: mov    $0x1,%esi
                     0x00007f3e6c19b9a2: mov    %r10d,%ecx
  0.05%    0.08%     0x00007f3e6c19b9a5: shl    %cl,%rsi           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.35%    0.30%     0x00007f3e6c19b9a8: mov    %rbx,%rcx
  0.01%    0.08%     0x00007f3e6c19b9ab: and    %rsi,%rcx          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.31%    0.14%     0x00007f3e6c19b9ae: test   %rcx,%rcx
                     0x00007f3e6c19b9b1: jne    0x00007f3e6c19c261  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.06%    0.04%     0x00007f3e6c19b9b7: cmp    $0x40,%r10d
                     0x00007f3e6c19b9bb: jge    0x00007f3e6c19c2a9  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
                     0x00007f3e6c19b9c1: or     %rsi,%rbx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.04%    0.09%     0x00007f3e6c19b9c4: mov    %rbx,0x10(%rdx)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.31%    0.55%     0x00007f3e6c19b9c8: mov    %r11,%r10
  0.04%    0.05%     0x00007f3e6c19b9cb: shr    $0x3,%r10          ;*putfield inst
                                                                   ; - com.google.re2j.Machine::alloc@45 (line 138)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
           0.01%     0x00007f3e6c19b9cf: movabs $0x7f3e67990000,%r13
  0.06%    0.10%     0x00007f3e6c19b9d9: test   %rdi,%rdi
                  ╭  0x00007f3e6c19b9dc: jne    0x00007f3e6c19be1d  ;*ifnonnull
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@24 (line 98)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.28%    0.45%  │  0x00007f3e6c19b9e2: mov    0x70(%rsp),%rdi
  0.01%    0.03%  │  0x00007f3e6c19b9e7: mov    0xc(%rdi),%ecx     ;*getfield poolSize
                  │                                                ; - com.google.re2j.Machine::alloc@1 (line 132)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
                  │                                                ; implicit exception: dispatches to 0x00007f3e6c19c6e9
  0.01%    0.01%  │  0x00007f3e6c19b9ea: test   %ecx,%ecx
                  │  0x00007f3e6c19b9ec: jle    0x00007f3e6c19c13d  ;*ifle
                  │                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.04%    0.02%  │  0x00007f3e6c19b9f2: vmovd  %ecx,%xmm0
  0.37%    0.43%  │  0x00007f3e6c19b9f6: mov    %r11,%rax
  0.03%    0.02%  │  0x00007f3e6c19b9f9: mov    0x24(%rdi),%r11d   ;*getfield pool
                  │                                                ; - com.google.re2j.Machine::alloc@18 (line 134)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.00%    0.00%  │  0x00007f3e6c19b9fd: mov    %ecx,%ebp
  0.06%    0.07%  │  0x00007f3e6c19b9ff: dec    %ebp               ;*isub
                  │                                                ; - com.google.re2j.Machine::alloc@13 (line 133)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.31%    0.41%  │  0x00007f3e6c19ba01: mov    %ebp,0xc(%rdi)     ;*putfield poolSize
                  │                                                ; - com.google.re2j.Machine::alloc@14 (line 133)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.07%    0.07%  │  0x00007f3e6c19ba04: mov    0xc(%r12,%r11,8),%ecx  ; implicit exception: dispatches to 0x00007f3e6c19c6fd
  0.02%    0.01%  │  0x00007f3e6c19ba09: cmp    %ecx,%ebp
                  │  0x00007f3e6c19ba0b: jae    0x00007f3e6c19c041
  0.06%    0.07%  │  0x00007f3e6c19ba11: lea    (%r12,%r11,8),%rcx
  0.33%    0.34%  │  0x00007f3e6c19ba15: vmovd  %xmm0,%r11d
  0.02%    0.04%  │  0x00007f3e6c19ba1a: mov    0xc(%rcx,%r11,4),%ecx  ;*aaload
                  │                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.00%    0.01%  │  0x00007f3e6c19ba1f: mov    %r10d,0x10(%r12,%rcx,8)  ;*putfield inst
                  │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
                  │                                                ; implicit exception: dispatches to 0x00007f3e6c19c70d
  0.52%    0.50%  │  0x00007f3e6c19ba24: lea    (%r12,%rcx,8),%rdi  ;*aaload
                  │                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.10%    0.16%  │  0x00007f3e6c19ba28: mov    %rdi,%r10
  0.05%    0.01%  │  0x00007f3e6c19ba2b: shr    $0x9,%r10
                  │  0x00007f3e6c19ba2f: mov    %r12b,0x0(%r13,%r10,1)  ;*aload_3
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@44 (line 103)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.50%    0.55%  │  0x00007f3e6c19ba34: mov    0xc(%r8),%ebp      ;*arraylength
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@45 (line 103)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
                  │                                                ; implicit exception: dispatches to 0x00007f3e6c19c605
  0.07%    0.07%  │  0x00007f3e6c19ba38: test   %ebp,%ebp
                  │  0x00007f3e6c19ba3a: jg     0x00007f3e6c19c2e9  ;*ifle
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.02%    0.01%  │  0x00007f3e6c19ba40: mov    0xc(%rdx),%ecx     ;*getfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
           0.00%  │  0x00007f3e6c19ba43: mov    0x20(%rdx),%r10d   ;*getfield denseThreads
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.35%    0.33%  │  0x00007f3e6c19ba47: vmovd  %r10d,%xmm0
  0.08%    0.09%  │  0x00007f3e6c19ba4c: mov    %ecx,0x20(%rsp)
  0.01%    0.03%  │  0x00007f3e6c19ba50: inc    %ecx               ;*iadd
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
                  │  0x00007f3e6c19ba52: mov    %ecx,0xc(%rdx)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.31%    0.28%  │  0x00007f3e6c19ba55: vmovd  %ecx,%xmm3
  0.08%    0.01%  │  0x00007f3e6c19ba59: mov    0xc(%r12,%r10,8),%r11d  ; implicit exception: dispatches to 0x00007f3e6c19c615
  0.02%    0.02%  │  0x00007f3e6c19ba5e: mov    0x20(%rsp),%ecx
  0.21%    0.14%  │  0x00007f3e6c19ba62: cmp    %r11d,%ecx
                  │  0x00007f3e6c19ba65: jae    0x00007f3e6c19be32  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.34%    0.28%  │  0x00007f3e6c19ba6b: vmovq  %xmm9,%r10
  0.06%    0.06%  │  0x00007f3e6c19ba70: mov    0x20(%r10),%ebp    ;*getfield inst2
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@41 (line 279)
  0.03%    0.01%  │  0x00007f3e6c19ba74: mov    %rdi,%r10
                  │  0x00007f3e6c19ba77: shr    $0x3,%r10          ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.35%    0.30%  │  0x00007f3e6c19ba7b: vmovd  %xmm0,%ecx
  0.10%    0.13%  │  0x00007f3e6c19ba7f: lea    (%r12,%rcx,8),%rdi  ;*getfield denseThreads
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.02%    0.01%  │  0x00007f3e6c19ba83: mov    0x20(%rsp),%esi
  0.00%           │  0x00007f3e6c19ba87: lea    0x10(%rdi,%rsi,4),%rcx
  0.34%    0.26%  │  0x00007f3e6c19ba8c: mov    %r10d,(%rcx)
  0.11%    0.11%  │  0x00007f3e6c19ba8f: mov    %rcx,%r10
  0.04%    0.01%  │  0x00007f3e6c19ba92: shr    $0x9,%r10
  0.00%           │  0x00007f3e6c19ba96: mov    %r12b,0x0(%r13,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.42%    0.43%  │  0x00007f3e6c19ba9b: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f3e6c19c629
  0.06%    0.14%  │  0x00007f3e6c19baa0: cmp    $0xf8019993,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │  0x00007f3e6c19baa7: jne    0x00007f3e6c19bf95
  0.03%    0.03%  │  0x00007f3e6c19baad: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
                  │  0x00007f3e6c19bab1: vmovq  %r10,%xmm2
  0.37%    0.33%  │  0x00007f3e6c19bab6: mov    0x18(%r10),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.09%    0.15%  │  0x00007f3e6c19baba: mov    %ecx,%eax
  0.01%    0.02%  │  0x00007f3e6c19babc: cmp    $0x40,%ecx
                  │  0x00007f3e6c19babf: jg     0x00007f3e6c19c319  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
                  │  0x00007f3e6c19bac5: mov    $0x1,%r10d
  0.29%    0.38%  │  0x00007f3e6c19bacb: shl    %cl,%r10           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.12%    0.12%  │  0x00007f3e6c19bace: mov    %rbx,%rcx
  0.39%    0.36%  │  0x00007f3e6c19bad1: and    %r10,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.05%    0.07%  │  0x00007f3e6c19bad4: test   %rcx,%rcx
                  │  0x00007f3e6c19bad7: jne    0x00007f3e6c19c351  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.01%    0.01%  │  0x00007f3e6c19badd: mov    %eax,%ecx
           0.00%  │  0x00007f3e6c19badf: cmp    $0x40,%ecx
                  │  0x00007f3e6c19bae2: jge    0x00007f3e6c19c395  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.30%    0.33%  │  0x00007f3e6c19bae8: or     %r10,%rbx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.12%    0.05%  │  0x00007f3e6c19baeb: mov    %rbx,0x10(%rdx)    ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.02%    0.03%  │  0x00007f3e6c19baef: mov    0x70(%rsp),%r10
                  │  0x00007f3e6c19baf4: mov    0xc(%r10),%ecx     ;*getfield poolSize
                  │                                                ; - com.google.re2j.Machine::alloc@1 (line 132)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
                  │                                                ; implicit exception: dispatches to 0x00007f3e6c19c64d
  0.31%    0.30%  │  0x00007f3e6c19baf8: vmovd  %ecx,%xmm5
  0.07%    0.21%  │  0x00007f3e6c19bafc: test   %ecx,%ecx
                  │  0x00007f3e6c19bafe: jle    0x00007f3e6c19c075  ;*ifle
                  │                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.01%    0.01%  │  0x00007f3e6c19bb04: mov    0x24(%r10),%ecx    ;*getfield pool
                  │                                                ; - com.google.re2j.Machine::alloc@18 (line 134)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
                  │  0x00007f3e6c19bb08: vmovd  %ecx,%xmm4
  0.29%    0.37%  │  0x00007f3e6c19bb0c: vmovd  %xmm5,%ecx
  0.09%    0.08%  │  0x00007f3e6c19bb10: dec    %ecx               ;*isub
                  │                                                ; - com.google.re2j.Machine::alloc@13 (line 133)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.03%    0.04%  │  0x00007f3e6c19bb12: vmovd  %ecx,%xmm6
  0.00%    0.01%  │  0x00007f3e6c19bb16: mov    %ecx,0xc(%r10)     ;*putfield poolSize
                  │                                                ; - com.google.re2j.Machine::alloc@14 (line 133)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.28%    0.29%  │  0x00007f3e6c19bb1a: vmovd  %xmm4,%ecx
  0.12%    0.12%  │  0x00007f3e6c19bb1e: mov    0xc(%r12,%rcx,8),%esi  ; implicit exception: dispatches to 0x00007f3e6c19c661
  0.08%    0.07%  │  0x00007f3e6c19bb23: vmovd  %xmm6,%r10d
                  │  0x00007f3e6c19bb28: cmp    %esi,%r10d
                  │  0x00007f3e6c19bb2b: jae    0x00007f3e6c19be65
  0.38%    0.25%  │  0x00007f3e6c19bb31: lea    (%r12,%rcx,8),%rax
  0.07%    0.06%  │  0x00007f3e6c19bb35: vmovd  %xmm5,%r10d
  0.01%    0.02%  │  0x00007f3e6c19bb3a: mov    0xc(%rax,%r10,4),%r10d  ;*aaload
                  │                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
                  │  0x00007f3e6c19bb3f: vmovd  %r10d,%xmm8
  0.33%    0.29%  │  0x00007f3e6c19bb44: test   %r10d,%r10d
                  │  0x00007f3e6c19bb47: je     0x00007f3e6c19be9d  ;*putfield inst
                  │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.07%    0.11%  │  0x00007f3e6c19bb4d: vmovd  %r9d,%xmm12
  0.02%    0.03%  │  0x00007f3e6c19bb52: vmovq  %r8,%xmm10
                  │  0x00007f3e6c19bb57: vmovq  %rdx,%xmm7
  0.38%    0.30%  │  0x00007f3e6c19bb5c: shl    $0x3,%r10
  0.08%    0.08%  │  0x00007f3e6c19bb60: mov    0x20(%rsp),%r8d
  0.02%    0.01%  │  0x00007f3e6c19bb65: add    $0x2,%r8d
  0.00%           │  0x00007f3e6c19bb69: mov    %r8d,0xc(%rdx)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.28%    0.12%  │  0x00007f3e6c19bb6d: mov    0x20(%rsp),%r8d
  0.08%    0.13%  │  0x00007f3e6c19bb72: add    $0x4,%r8d          ;*iadd
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.04%    0.01%  │  0x00007f3e6c19bb76: shr    $0x9,%r10
                  │  0x00007f3e6c19bb7a: mov    %r12b,0x0(%r13,%r10,1)
  1.03%    1.10%  │  0x00007f3e6c19bb7f: vmovq  %xmm2,%r10
  0.01%    0.03%  │  0x00007f3e6c19bb84: mov    %r10,%rcx
                  │  0x00007f3e6c19bb87: shr    $0x3,%rcx
                  │  0x00007f3e6c19bb8b: vmovd  %xmm8,%r10d
  0.38%    0.36%  │  0x00007f3e6c19bb90: mov    %ecx,0x10(%r12,%r10,8)  ;*putfield inst
                  │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.13%    0.19%  │  0x00007f3e6c19bb95: cmp    %r11d,%r8d
                  │  0x00007f3e6c19bb98: jae    0x00007f3e6c19beb1  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
                  │  0x00007f3e6c19bb9e: vmovq  %xmm9,%r10
                  │  0x00007f3e6c19bba3: mov    0x24(%r10),%ebp    ;*getfield inst3
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@59 (line 280)
  0.32%    0.28%  │  0x00007f3e6c19bba7: movslq 0x20(%rsp),%r10
  0.09%    0.12%  │  0x00007f3e6c19bbac: lea    (%rdi,%r10,4),%r11  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
                  │  0x00007f3e6c19bbb0: mov    %r11,%r9
                  │  0x00007f3e6c19bbb3: add    $0x14,%r9
  0.31%    0.38%  │  0x00007f3e6c19bbb7: vmovd  %xmm8,%r10d
  0.09%    0.11%  │  0x00007f3e6c19bbbc: mov    %r10d,(%r9)
  0.01%    0.00%  │  0x00007f3e6c19bbbf: mov    %r9,%r10
                  │  0x00007f3e6c19bbc2: shr    $0x9,%r10
  0.31%    0.42%  │  0x00007f3e6c19bbc6: mov    %r12b,0x0(%r13,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.10%    0.11%  │  0x00007f3e6c19bbcb: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f3e6c19c675
  0.00%    0.00%  │  0x00007f3e6c19bbd0: cmp    $0xf8019993,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │  0x00007f3e6c19bbd7: jne    0x00007f3e6c19bfc1
                  │  0x00007f3e6c19bbdd: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.27%    0.42%  │  0x00007f3e6c19bbe1: vmovq  %r10,%xmm0
  0.05%    0.10%  │  0x00007f3e6c19bbe6: mov    0x18(%r10),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
                  │  0x00007f3e6c19bbea: cmp    $0x40,%ecx
                  │  0x00007f3e6c19bbed: jg     0x00007f3e6c19c3cd  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.00%           │  0x00007f3e6c19bbf3: mov    $0x1,%r10d
  0.31%    0.37%  │  0x00007f3e6c19bbf9: shl    %cl,%r10           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.09%    0.06%  │  0x00007f3e6c19bbfc: mov    %rbx,%r9
  0.36%    0.39%  │  0x00007f3e6c19bbff: and    %r10,%r9           ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.06%    0.11%  │  0x00007f3e6c19bc02: test   %r9,%r9
                  │  0x00007f3e6c19bc05: jne    0x00007f3e6c19c409  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.00%    0.01%  │  0x00007f3e6c19bc0b: cmp    $0x40,%ecx
                  │  0x00007f3e6c19bc0e: jge    0x00007f3e6c19c451  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.00%           │  0x00007f3e6c19bc14: or     %r10,%rbx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.31%    0.35%  │  0x00007f3e6c19bc17: mov    %rbx,0x10(%rdx)    ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.06%    0.09%  │  0x00007f3e6c19bc1b: vmovd  %xmm6,%ecx
                  │  0x00007f3e6c19bc1f: test   %ecx,%ecx
                  │  0x00007f3e6c19bc21: jle    0x00007f3e6c19c0a9  ;*ifle
                  │                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
           0.00%  │  0x00007f3e6c19bc27: vmovd  %xmm5,%r9d
  0.35%    0.36%  │  0x00007f3e6c19bc2c: add    $0xfffffffc,%r9d   ;*isub
                  │                                                ; - com.google.re2j.Machine::alloc@13 (line 133)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.05%    0.14%  │  0x00007f3e6c19bc30: vmovd  %xmm5,%r10d
  0.00%           │  0x00007f3e6c19bc35: add    $0xfffffffe,%r10d  ;*isub
                  │                                                ; - com.google.re2j.Machine::alloc@13 (line 133)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
           0.01%  │  0x00007f3e6c19bc39: vmovd  %r10d,%xmm3
  0.36%    0.28%  │  0x00007f3e6c19bc3e: mov    0x70(%rsp),%rcx
  0.09%    0.05%  │  0x00007f3e6c19bc43: mov    %r10d,0xc(%rcx)    ;*putfield poolSize
                  │                                                ; - com.google.re2j.Machine::alloc@14 (line 133)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.06%    0.03%  │  0x00007f3e6c19bc47: cmp    %esi,%r9d
                  │  0x00007f3e6c19bc4a: jae    0x00007f3e6c19beed
                  │  0x00007f3e6c19bc50: mov    0x10(%rax,%r10,4),%r10d  ;*aaload
                  │                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.33%    0.35%  │  0x00007f3e6c19bc55: test   %r10d,%r10d
                  │  0x00007f3e6c19bc58: je     0x00007f3e6c19bf29  ;*putfield inst
                  │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.07%    0.07%  │  0x00007f3e6c19bc5e: mov    %r11,%rcx
           0.00%  │  0x00007f3e6c19bc61: add    $0x18,%rcx
                  │  0x00007f3e6c19bc65: mov    %r10d,(%rcx)       ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.35%    0.28%  │  0x00007f3e6c19bc68: vmovq  %xmm9,%rdx
  0.07%    0.06%  │  0x00007f3e6c19bc6d: mov    0x28(%rdx),%ebp    ;*getfield inst4
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 281)
           0.00%  │  0x00007f3e6c19bc70: lea    (%r12,%r10,8),%rdx
                  │  0x00007f3e6c19bc74: vmovq  %xmm0,%rsi
  0.31%    0.33%  │  0x00007f3e6c19bc79: shr    $0x3,%rsi
  0.06%    0.07%  │  0x00007f3e6c19bc7d: mov    %esi,0x10(%r12,%r10,8)  ;*putfield inst
                  │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.04%    0.05%  │  0x00007f3e6c19bc82: mov    0x20(%rsp),%r10d
  0.06%    0.02%  │  0x00007f3e6c19bc87: add    $0x3,%r10d
  0.33%    0.34%  │  0x00007f3e6c19bc8b: vmovq  %xmm7,%rsi
  0.09%    0.06%  │  0x00007f3e6c19bc90: mov    %r10d,0xc(%rsi)    ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.04%    0.03%  │  0x00007f3e6c19bc94: shr    $0x9,%rdx
                  │  0x00007f3e6c19bc98: mov    %r12b,0x0(%r13,%rdx,1)  ;*putfield inst
                  │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.33%    0.28%  │  0x00007f3e6c19bc9d: mov    %rcx,%r10
  0.09%    0.07%  │  0x00007f3e6c19bca0: shr    $0x9,%r10
  0.01%    0.02%  │  0x00007f3e6c19bca4: mov    %r12b,0x0(%r13,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.01%    0.01%  │  0x00007f3e6c19bca9: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f3e6c19c699
  0.23%    0.11%  │  0x00007f3e6c19bcae: cmp    $0xf8019993,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │  0x00007f3e6c19bcb5: jne    0x00007f3e6c19bfed
  0.10%    0.06%  │  0x00007f3e6c19bcbb: lea    (%r12,%rbp,8),%rdx  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.02%           │  0x00007f3e6c19bcbf: mov    0x18(%rdx),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.00%           │  0x00007f3e6c19bcc2: vmovd  %ecx,%xmm2
  0.34%    0.12%  │  0x00007f3e6c19bcc6: cmp    $0x40,%ecx
                  │  0x00007f3e6c19bcc9: jg     0x00007f3e6c19c48d  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.05%    0.00%  │  0x00007f3e6c19bccf: mov    $0x1,%r10d
  0.02%    0.02%  │  0x00007f3e6c19bcd5: shl    %cl,%r10           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.40%    0.30%  │  0x00007f3e6c19bcd8: mov    %rbx,%rcx
  0.02%    0.02%  │  0x00007f3e6c19bcdb: and    %r10,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
           0.00%  │  0x00007f3e6c19bcde: test   %rcx,%rcx
                  │  0x00007f3e6c19bce1: jne    0x00007f3e6c19c4c9  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.36%    0.32%  │  0x00007f3e6c19bce7: vmovd  %xmm2,%ecx
  0.05%    0.11%  │  0x00007f3e6c19bceb: cmp    $0x40,%ecx
                  │  0x00007f3e6c19bcee: jge    0x00007f3e6c19c511  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.03%           │  0x00007f3e6c19bcf4: or     %r10,%rbx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.01%           │  0x00007f3e6c19bcf7: mov    %rbx,0x10(%rsi)    ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.30%    0.34%  │  0x00007f3e6c19bcfb: vmovd  %xmm3,%ecx
  0.07%    0.11%  │  0x00007f3e6c19bcff: test   %ecx,%ecx
                  │  0x00007f3e6c19bd01: jle    0x00007f3e6c19c0e1  ;*ifle
                  │                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.02%    0.03%  │  0x00007f3e6c19bd07: vmovd  %xmm5,%ecx
           0.00%  │  0x00007f3e6c19bd0b: add    $0xfffffffd,%ecx   ;*isub
                  │                                                ; - com.google.re2j.Machine::alloc@13 (line 133)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.24%    0.34%  │  0x00007f3e6c19bd0e: vmovd  %ecx,%xmm0
  0.04%    0.07%  │  0x00007f3e6c19bd12: mov    0x70(%rsp),%r10
  0.01%    0.04%  │  0x00007f3e6c19bd17: mov    %ecx,0xc(%r10)     ;*putfield poolSize
                  │                                                ; - com.google.re2j.Machine::alloc@14 (line 133)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.03%    0.02%  │  0x00007f3e6c19bd1b: mov    0x10(%rax,%rcx,4),%esi  ;*aaload
                  │                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.29%    0.47%  │  0x00007f3e6c19bd1f: test   %esi,%esi
                  │  0x00007f3e6c19bd21: je     0x00007f3e6c19bf3d  ;*putfield inst
                  │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.09%    0.13%  │  0x00007f3e6c19bd27: vmovq  %xmm7,%r10
  0.00%    0.03%  │  0x00007f3e6c19bd2c: mov    %r8d,0xc(%r10)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.00%    0.02%  │  0x00007f3e6c19bd30: vmovq  %xmm9,%r10
  0.26%    0.45%  │  0x00007f3e6c19bd35: mov    0x2c(%r10),%ebp    ;*getfield inst5
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@95 (line 282)
  0.10%    0.09%  │  0x00007f3e6c19bd39: mov    %r11,%r8
                  │  0x00007f3e6c19bd3c: add    $0x1c,%r8
  0.00%    0.01%  │  0x00007f3e6c19bd40: mov    %esi,(%r8)         ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.34%    0.22%  │  0x00007f3e6c19bd43: mov    %rdx,%r10
  0.06%    0.06%  │  0x00007f3e6c19bd46: shr    $0x3,%r10
  0.03%    0.02%  │  0x00007f3e6c19bd4a: mov    %r10d,0x10(%r12,%rsi,8)
  0.08%    0.08%  │  0x00007f3e6c19bd4f: mov    %r8,%r10
  0.33%    0.44%  │  0x00007f3e6c19bd52: lea    (%r12,%rsi,8),%r8
  0.09%    0.10%  │  0x00007f3e6c19bd56: shr    $0x9,%r10
  0.04%    0.03%  │  0x00007f3e6c19bd5a: shr    $0x9,%r8
  0.04%    0.04%  │  0x00007f3e6c19bd5e: mov    %r12b,0x0(%r13,%r8,1)  ;*putfield inst
                  │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.42%    0.49%  │  0x00007f3e6c19bd63: mov    %r12b,0x0(%r13,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.04%    0.10%  │  0x00007f3e6c19bd68: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f3e6c19c6c1
  0.02%    0.01%  │  0x00007f3e6c19bd6d: cmp    $0xf8019993,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │  0x00007f3e6c19bd73: jne    0x00007f3e6c19c019
  0.02%    0.02%  │  0x00007f3e6c19bd79: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.35%    0.30%  │  0x00007f3e6c19bd7d: mov    0x18(%r10),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.07%    0.05%  │  0x00007f3e6c19bd81: cmp    $0x40,%ecx
                  │  0x00007f3e6c19bd84: jg     0x00007f3e6c19c54d  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.02%    0.02%  │  0x00007f3e6c19bd8a: mov    %r10,%r8
  0.02%    0.01%  │  0x00007f3e6c19bd8d: shl    %cl,%r14           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.50%    0.59%  │  0x00007f3e6c19bd90: mov    %rbx,%r10
  0.01%    0.01%  │  0x00007f3e6c19bd93: and    %r14,%r10          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.37%    0.42%  │  0x00007f3e6c19bd96: test   %r10,%r10
                  │  0x00007f3e6c19bd99: jne    0x00007f3e6c19c571  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.03%    0.09%  │  0x00007f3e6c19bd9f: cmp    $0x40,%ecx
                  │  0x00007f3e6c19bda2: jge    0x00007f3e6c19c5a5  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.01%    0.01%  │  0x00007f3e6c19bda8: or     %r14,%rbx
  0.02%    0.02%  │  0x00007f3e6c19bdab: vmovq  %xmm7,%rcx
  0.30%    0.31%  │  0x00007f3e6c19bdb0: mov    %rbx,0x10(%rcx)    ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.07%    0.09%  │  0x00007f3e6c19bdb4: vmovd  %xmm0,%r10d
  0.02%    0.01%  │  0x00007f3e6c19bdb9: test   %r10d,%r10d
                  │  0x00007f3e6c19bdbc: jle    0x00007f3e6c19c119  ;*ifle
                  │                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.02%    0.02%  │  0x00007f3e6c19bdc2: mov    0x70(%rsp),%r10
  0.28%    0.29%  │  0x00007f3e6c19bdc7: mov    %r9d,0xc(%r10)     ;*putfield poolSize
                  │                                                ; - com.google.re2j.Machine::alloc@14 (line 133)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.10%    0.09%  │  0x00007f3e6c19bdcb: mov    0x10(%rax,%r9,4),%r9d  ;*aaload
                  │                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.02%    0.03%  │  0x00007f3e6c19bdd0: test   %r9d,%r9d
                  │  0x00007f3e6c19bdd3: je     0x00007f3e6c19bf51  ;*putfield inst
                  │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.00%    0.01%  │  0x00007f3e6c19bdd9: add    $0x20,%r11
  0.30%    0.28%  │  0x00007f3e6c19bddd: mov    %r9d,(%r11)        ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.07%    0.07%  │  0x00007f3e6c19bde0: shr    $0x3,%r8
  0.01%    0.01%  │  0x00007f3e6c19bde4: mov    %r8d,0x10(%r12,%r9,8)  ;*putfield inst
                  │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.03%    0.04%  │  0x00007f3e6c19bde9: mov    %r11,%r10
  0.29%    0.32%  │  0x00007f3e6c19bdec: mov    0x20(%rsp),%r11d
  0.12%    0.10%  │  0x00007f3e6c19bdf1: add    $0x5,%r11d
  0.01%    0.03%  │  0x00007f3e6c19bdf5: mov    %r11d,0xc(%rcx)    ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.02%    0.06%  │  0x00007f3e6c19bdf9: shr    $0x9,%r10
  0.26%    0.34%  │  0x00007f3e6c19bdfd: lea    (%r12,%r9,8),%r11
  0.08%    0.09%  │  0x00007f3e6c19be01: shr    $0x9,%r11
  0.03%    0.02%  │  0x00007f3e6c19be05: mov    %r12b,0x0(%r13,%r11,1)  ;*putfield inst
                  │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.09%    0.08%  │  0x00007f3e6c19be0a: mov    %r12b,0x0(%r13,%r10,1)  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 273)
  0.23%    0.30%  │  0x00007f3e6c19be0f: xor    %eax,%eax
  0.08%    0.05%  │  0x00007f3e6c19be11: add    $0x60,%rsp
  0.02%    0.01%  │  0x00007f3e6c19be15: pop    %rbp
  0.08%    0.04%  │  0x00007f3e6c19be16: test   %eax,0x15ef81e4(%rip)        # 0x00007f3e82094000
                  │                                                ;   {poll_return}
  0.30%    0.26%  │  0x00007f3e6c19be1c: retq   
                  ↘  0x00007f3e6c19be1d: mov    %r10d,0x10(%rdi)
                     0x00007f3e6c19be21: mov    %rdi,%r10
                     0x00007f3e6c19be24: shr    $0x9,%r10
                     0x00007f3e6c19be28: mov    %r12b,0x0(%r13,%r10,1)  ;*putfield inst
                                                                   ; - com.google.re2j.Inst$MatchInst::add@41 (line 101)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
                     0x00007f3e6c19be2d: jmpq   0x00007f3e6c19ba34  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
....................................................................................................
 31.54%   32.94%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 566 (823 bytes) 

                                      0x00007f3e6c1b19d0: and    $0x4,%r10d         ;*iand
                                                                                    ; - com.google.re2j.Machine::match@147 (line 208)
                                      0x00007f3e6c1b19d4: mov    %r10d,0x14(%rsp)
                                      0x00007f3e6c1b19d9: mov    %r13,%r10
                                      0x00007f3e6c1b19dc: shl    $0x3,%r10          ;*getfield q1
                                                                                    ; - com.google.re2j.Machine::match@53 (line 188)
                                      0x00007f3e6c1b19e0: mov    %r10,0x50(%rsp)
                                      0x00007f3e6c1b19e5: mov    %ebx,0x34(%rsp)
                                      0x00007f3e6c1b19e9: xor    %eax,%eax
                                      0x00007f3e6c1b19eb: xor    %r11d,%r11d
           0.00%                      0x00007f3e6c1b19ee: mov    %r11d,0x58(%rsp)
                  ╭                   0x00007f3e6c1b19f3: jmpq   0x00007f3e6c1b1b6d
  0.02%    0.01%  │    ↗              0x00007f3e6c1b19f8: mov    0x14(%rsp),%ecx
  0.01%    0.00%  │╭   │              0x00007f3e6c1b19fc: jmpq   0x00007f3e6c1b1bb1
  0.10%    0.08%  ││   │     ↗        0x00007f3e6c1b1a01: or     $0x20,%ecx         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                  ││   │     │                                                      ; - com.google.re2j.Machine::match@323 (line 241)
  0.01%    0.01%  ││   │     │        0x00007f3e6c1b1a04: mov    %ecx,0x5c(%rsp)    ;*iload_2
                  ││   │     │                                                      ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                  ││   │     │                                                      ; - com.google.re2j.Machine::match@323 (line 241)
  0.11%    0.10%  ││   │     │↗       0x00007f3e6c1b1a08: mov    0x1c(%rsp),%r11d
  0.24%    0.22%  ││   │     ││       0x00007f3e6c1b1a0d: cmp    %r8d,%r11d
                  ││╭  │     ││       0x00007f3e6c1b1a10: je     0x00007f3e6c1b1d37  ;*if_icmpne
                  │││  │     ││                                                     ; - com.google.re2j.Machine::match@348 (line 242)
  0.17%    0.21%  │││  │     ││       0x00007f3e6c1b1a16: xor    %r10d,%r10d
  0.04%    0.07%  │││  │     ││    ↗  0x00007f3e6c1b1a19: mov    0x38(%rsp),%rsi
  0.07%    0.01%  │││  │     ││    │  0x00007f3e6c1b1a1e: mov    0x20(%rsp),%rdx
  0.18%    0.13%  │││  │     ││    │  0x00007f3e6c1b1a23: mov    0x50(%rsp),%rcx
  0.12%    0.17%  │││  │     ││    │  0x00007f3e6c1b1a28: mov    %r11d,%r8d
  0.03%    0.05%  │││  │     ││    │  0x00007f3e6c1b1a2b: mov    0x58(%rsp),%r9d
  0.05%    0.03%  │││  │     ││    │  0x00007f3e6c1b1a30: mov    0x5c(%rsp),%r11d
  0.20%    0.26%  │││  │     ││    │  0x00007f3e6c1b1a35: mov    %r11d,(%rsp)
  0.19%    0.24%  │││  │     ││    │  0x00007f3e6c1b1a39: mov    0x40(%rsp),%ebx
  0.04%    0.03%  │││  │     ││    │  0x00007f3e6c1b1a3d: mov    %ebx,0x8(%rsp)
  0.04%    0.08%  │││  │     ││    │  0x00007f3e6c1b1a41: mov    %r10d,0x10(%rsp)
  0.24%    0.22%  │││  │     ││    │  0x00007f3e6c1b1a46: nop
  0.12%    0.15%  │││  │     ││    │  0x00007f3e6c1b1a47: callq  0x00007f3e6bfa8020  ; OopMap{[24]=NarrowOop [32]=Oop [56]=Oop [72]=Oop [80]=Oop off=620}
                  │││  │     ││    │                                                ;*invokespecial step
                  │││  │     ││    │                                                ; - com.google.re2j.Machine::match@356 (line 242)
                  │││  │     ││    │                                                ;   {optimized virtual_call}
  0.32%    0.13%  │││  │     ││    │  0x00007f3e6c1b1a4c: mov    0x38(%rsp),%r10
  0.04%    0.05%  │││  │     ││    │  0x00007f3e6c1b1a51: movzbl 0x10(%r10),%eax    ;*getfield matched
                  │││  │     ││    │                                                ; - com.google.re2j.Machine::match@376 (line 246)
  0.01%    0.04%  │││  │     ││    │  0x00007f3e6c1b1a56: mov    0x28(%rsp),%r9d
  0.46%    0.21%  │││  │     ││    │  0x00007f3e6c1b1a5b: test   %r9d,%r9d
                  │││╭ │     ││    │  0x00007f3e6c1b1a5e: je     0x00007f3e6c1b1d42  ;*ifne
                  ││││ │     ││    │                                                ; - com.google.re2j.Machine::match@361 (line 243)
                  ││││ │     ││    │  0x00007f3e6c1b1a64: mov    0x28(%r10),%edi    ;*getfield matchcap
                  ││││ │     ││    │                                                ; - com.google.re2j.Machine::match@368 (line 246)
  0.03%    0.04%  ││││ │     ││    │  0x00007f3e6c1b1a68: mov    0xc(%r12,%rdi,8),%ebp  ;*arraylength
                  ││││ │     ││    │                                                ; - com.google.re2j.Machine::match@371 (line 246)
                  ││││ │     ││    │                                                ; implicit exception: dispatches to 0x00007f3e6c1b2b01
  0.06%    0.15%  ││││ │     ││    │  0x00007f3e6c1b1a6d: test   %ebp,%ebp
                  ││││ │     ││    │  0x00007f3e6c1b1a6f: jne    0x00007f3e6c1b21c9  ;*ifne
                  ││││ │     ││    │                                                ; - com.google.re2j.Machine::match@372 (line 246)
  0.42%    0.17%  ││││ │     ││    │  0x00007f3e6c1b1a75: test   %eax,%eax
                  ││││ │     ││    │  0x00007f3e6c1b1a77: jne    0x00007f3e6c1b22bd  ;*ifeq
                  ││││ │     ││    │                                                ; - com.google.re2j.Machine::match@379 (line 246)
                  ││││ │     ││    │  0x00007f3e6c1b1a7d: mov    0x2c(%rsp),%ebx
  0.04%    0.03%  ││││ │     ││    │  0x00007f3e6c1b1a81: cmp    $0xffffffff,%ebx
                  ││││ │     ││    │  0x00007f3e6c1b1a84: je     0x00007f3e6c1b1d94  ;*if_icmpeq
                  ││││ │     ││    │                                                ; - com.google.re2j.Machine::match@401 (line 254)
  0.01%    0.01%  ││││ │     ││    │  0x00007f3e6c1b1a8a: mov    0x48(%rsp),%r9
  0.31%    0.41%  ││││ │     ││    │  0x00007f3e6c1b1a8f: mov    0x10(%r9),%r10d    ;*getfield end
                  ││││ │     ││    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                  ││││ │     ││    │                                                ; - com.google.re2j.Machine::match@409 (line 255)
           0.00%  ││││ │     ││    │  0x00007f3e6c1b1a93: mov    0x30(%rsp),%r11d
  0.02%    0.02%  ││││ │     ││    │  0x00007f3e6c1b1a98: add    0x58(%rsp),%r11d
  0.01%    0.02%  ││││ │     ││    │  0x00007f3e6c1b1a9d: add    0xc(%r9),%r11d     ;*iadd
                  ││││ │     ││    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                  ││││ │     ││    │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.36%    0.41%  ││││ │     ││    │  0x00007f3e6c1b1aa1: cmp    %r10d,%r11d
                  ││││╭│     ││    │  0x00007f3e6c1b1aa4: jge    0x00007f3e6c1b1d1f  ;*if_icmpge
                  ││││││     ││    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                  ││││││     ││    │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.01%    0.01%  ││││││     ││    │  0x00007f3e6c1b1aaa: mov    %r11d,%r10d
  0.04%    0.01%  ││││││     ││    │  0x00007f3e6c1b1aad: mov    0x14(%r9),%ebp     ;*getfield str
                  ││││││     ││    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                  ││││││     ││    │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.03%    0.04%  ││││││     ││    │  0x00007f3e6c1b1ab1: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f3e6c1b2b11
  0.35%    0.53%  ││││││     ││    │  0x00007f3e6c1b1ab6: cmp    $0xf80002da,%r11d  ;   {metadata(&apos;java/lang/String&apos;)}
                  ││││││     ││    │  0x00007f3e6c1b1abd: jne    0x00007f3e6c1b20a1
  0.02%    0.04%  ││││││     ││    │  0x00007f3e6c1b1ac3: lea    (%r12,%rbp,8),%rcx  ;*invokeinterface charAt
                  ││││││     ││    │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  ││││││     ││    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  ││││││     ││    │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.05%    0.01%  ││││││     ││    │  0x00007f3e6c1b1ac7: test   %r10d,%r10d
                  ││││││     ││    │  0x00007f3e6c1b1aca: jl     0x00007f3e6c1b2215  ;*iflt
                  ││││││     ││    │                                                ; - java.lang.String::charAt@1 (line 657)
                  ││││││     ││    │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  ││││││     ││    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  ││││││     ││    │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.01%    0.02%  ││││││     ││    │  0x00007f3e6c1b1ad0: mov    %r10d,%edx
  0.33%    0.41%  ││││││     ││    │  0x00007f3e6c1b1ad3: mov    0xc(%rcx),%r13d    ;*getfield value
                  ││││││     ││    │                                                ; - java.lang.String::charAt@6 (line 657)
                  ││││││     ││    │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  ││││││     ││    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  ││││││     ││    │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.03%    0.05%  ││││││     ││    │  0x00007f3e6c1b1ad7: mov    0xc(%r12,%r13,8),%ebp  ;*arraylength
                  ││││││     ││    │                                                ; - java.lang.String::charAt@9 (line 657)
                  ││││││     ││    │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  ││││││     ││    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  ││││││     ││    │                                                ; - com.google.re2j.Machine::match@409 (line 255)
                  ││││││     ││    │                                                ; implicit exception: dispatches to 0x00007f3e6c1b2b25
  0.62%    0.81%  ││││││     ││    │  0x00007f3e6c1b1adc: cmp    %ebp,%r10d
                  ││││││     ││    │  0x00007f3e6c1b1adf: jge    0x00007f3e6c1b2311  ;*if_icmplt
                  ││││││     ││    │                                                ; - java.lang.String::charAt@10 (line 657)
                  ││││││     ││    │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  ││││││     ││    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  ││││││     ││    │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.32%    0.42%  ││││││     ││    │  0x00007f3e6c1b1ae5: cmp    %ebp,%r10d
                  ││││││     ││    │  0x00007f3e6c1b1ae8: jae    0x00007f3e6c1b2021
  0.08%    0.13%  ││││││     ││    │  0x00007f3e6c1b1aee: lea    (%r12,%r13,8),%r10
                  ││││││     ││    │  0x00007f3e6c1b1af2: movzwl 0x10(%r10,%rdx,2),%r8d  ;*caload
                  ││││││     ││    │                                                ; - java.lang.String::charAt@27 (line 660)
                  ││││││     ││    │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  ││││││     ││    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  ││││││     ││    │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.13%    0.10%  ││││││     ││    │  0x00007f3e6c1b1af8: cmp    $0xd800,%r8d
                  ││││││     ││    │  0x00007f3e6c1b1aff: jge    0x00007f3e6c1b237d  ;*if_icmplt
                  ││││││     ││    │                                                ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                  ││││││     ││    │                                                ; - java.lang.Character::codePointAt@9 (line 4867)
                  ││││││     ││    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  ││││││     ││    │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.33%    0.37%  ││││││     ││    │  0x00007f3e6c1b1b05: shl    $0x3,%r8d          ;*ishl
                  ││││││     ││    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                  ││││││     ││    │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.06%    0.08%  ││││││     ││    │  0x00007f3e6c1b1b09: mov    %r8d,%r11d
  0.01%           ││││││     ││    │  0x00007f3e6c1b1b0c: or     $0x1,%r11d
  0.33%    0.38%  ││││││     ││    │  0x00007f3e6c1b1b10: and    $0x7,%r8d
  0.05%    0.05%  ││││││     ││    │  0x00007f3e6c1b1b14: sar    $0x3,%r11d         ;*ishr
                  ││││││     ││    │                                                ; - com.google.re2j.Machine::match@417 (line 256)
  0.36%    0.40%  ││││││     ││    │  0x00007f3e6c1b1b18: or     $0x1,%r8d          ;*aload
                  ││││││     ││    │                                                ; - com.google.re2j.Machine::match@427 (line 259)
  0.03%    0.02%  ││││││     ││  ↗ │  0x00007f3e6c1b1b1c: mov    %r9,0x48(%rsp)     ; OopMap{r9=Oop rdi=NarrowOop [32]=Oop [56]=Oop [72]=Oop [80]=Oop off=833}
                  ││││││     ││  │ │                                                ;*goto
                  ││││││     ││  │ │                                                ; - com.google.re2j.Machine::match@439 (line 262)
  0.02%    0.01%  ││││││     ││  │ │  0x00007f3e6c1b1b21: test   %eax,0x15ee24d9(%rip)        # 0x00007f3e82094000
                  ││││││     ││  │ │                                                ;*goto
                  ││││││     ││  │ │                                                ; - com.google.re2j.Machine::match@439 (line 262)
                  ││││││     ││  │ │                                                ;   {poll}
  0.05%    0.02%  ││││││     ││  │ │  0x00007f3e6c1b1b27: mov    0x38(%rsp),%r10
  0.41%    0.43%  ││││││     ││  │ │  0x00007f3e6c1b1b2c: mov    0x14(%r10),%r10d   ;*getfield re2
                  ││││││     ││  │ │                                                ; - com.google.re2j.Machine::match@169 (line 216)
  0.01%    0.01%  ││││││     ││  │ │  0x00007f3e6c1b1b30: vmovd  %r10d,%xmm4
  0.01%    0.01%  ││││││     ││  │ │  0x00007f3e6c1b1b35: mov    0x50(%rsp),%r10
  0.02%    0.03%  ││││││     ││  │ │  0x00007f3e6c1b1b3a: mov    %r10,%r9
  0.35%    0.43%  ││││││     ││  │ │  0x00007f3e6c1b1b3d: shr    $0x3,%r9
  0.01%    0.00%  ││││││     ││  │ │  0x00007f3e6c1b1b41: mov    %r9d,0x18(%rsp)
  0.02%    0.02%  ││││││     ││  │ │  0x00007f3e6c1b1b46: mov    0x5c(%rsp),%r9d
  0.03%    0.03%  ││││││     ││  │ │  0x00007f3e6c1b1b4b: mov    0x20(%rsp),%r10
  0.34%    0.41%  ││││││     ││  │ │  0x00007f3e6c1b1b50: mov    %r10,0x50(%rsp)
  0.02%    0.02%  ││││││     ││  │ │  0x00007f3e6c1b1b55: mov    0x30(%rsp),%r10d
  0.01%    0.01%  ││││││     ││  │ │  0x00007f3e6c1b1b5a: mov    %r10d,0x28(%rsp)
  0.01%    0.03%  ││││││     ││  │ │  0x00007f3e6c1b1b5f: mov    %r8d,0x30(%rsp)
  0.33%    0.43%  ││││││     ││  │ │  0x00007f3e6c1b1b64: mov    %r11d,0x2c(%rsp)
  0.02%    0.00%  ││││││     ││  │ │  0x00007f3e6c1b1b69: vmovd  %edi,%xmm2         ;*aload
                  ││││││     ││  │ │                                                ; - com.google.re2j.Machine::match@136 (line 207)
  0.01%    0.01%  ↘│││││     ││  │ │  0x00007f3e6c1b1b6d: mov    0x18(%rsp),%r10d
  0.03%    0.05%   │││││     ││  │ │  0x00007f3e6c1b1b72: movzbl 0x18(%r12,%r10,8),%r10d  ; implicit exception: dispatches to 0x00007f3e6c1b2ab1
  0.37%    0.48%   │││││     ││  │ │  0x00007f3e6c1b1b78: test   %r10d,%r10d
                   ││││╰     ││  │ │  0x00007f3e6c1b1b7b: je     0x00007f3e6c1b19f8  ;*ifeq
                   ││││      ││  │ │                                                ; - com.google.re2j.Machine::match@141 (line 207)
  0.02%    0.02%   ││││      ││  │ │  0x00007f3e6c1b1b81: mov    0x14(%rsp),%ecx
  0.00%    0.00%   ││││      ││  │ │  0x00007f3e6c1b1b85: test   %ecx,%ecx
                   ││││      ││  │ │  0x00007f3e6c1b1b87: jne    0x00007f3e6c1b23fd  ;*ifeq
                   ││││      ││  │ │                                                ; - com.google.re2j.Machine::match@148 (line 208)
  0.01%    0.00%   ││││      ││  │ │  0x00007f3e6c1b1b8d: test   %eax,%eax
                   ││││      ││  │ │  0x00007f3e6c1b1b8f: jne    0x00007f3e6c1b245d  ;*ifeq
                   ││││      ││  │ │                                                ; - com.google.re2j.Machine::match@162 (line 212)
  0.24%    0.31%   ││││      ││  │ │  0x00007f3e6c1b1b95: vmovd  %xmm4,%r10d
  0.01%    0.02%   ││││      ││  │ │  0x00007f3e6c1b1b9a: mov    0x24(%r12,%r10,8),%r10d  ;*getfield prefix
                   ││││      ││  │ │                                                ; - com.google.re2j.Machine::match@172 (line 216)
                   ││││      ││  │ │                                                ; implicit exception: dispatches to 0x00007f3e6c1b2b35
  0.00%    0.00%   ││││      ││  │ │  0x00007f3e6c1b1b9f: mov    0xc(%r12,%r10,8),%r11d  ;*getfield value
                   ││││      ││  │ │                                                ; - java.lang.String::isEmpty@1 (line 635)
                   ││││      ││  │ │                                                ; - com.google.re2j.Machine::match@175 (line 216)
                   ││││      ││  │ │                                                ; implicit exception: dispatches to 0x00007f3e6c1b2b45
  0.05%    0.02%   ││││      ││  │ │  0x00007f3e6c1b1ba4: mov    0xc(%r12,%r11,8),%ebp  ;*arraylength
                   ││││      ││  │ │                                                ; - java.lang.String::isEmpty@4 (line 635)
                   ││││      ││  │ │                                                ; - com.google.re2j.Machine::match@175 (line 216)
                   ││││      ││  │ │                                                ; implicit exception: dispatches to 0x00007f3e6c1b2b55
  0.52%    0.57%   ││││      ││  │ │  0x00007f3e6c1b1ba9: test   %ebp,%ebp
                   ││││      ││  │ │  0x00007f3e6c1b1bab: jne    0x00007f3e6c1b23dd  ;*aload_0
                   ││││      ││  │ │                                                ; - com.google.re2j.Machine::match@267 (line 233)
  0.35%    0.35%   ↘│││      ││  │ │  0x00007f3e6c1b1bb1: test   %eax,%eax
                    │││      ││  │ │  0x00007f3e6c1b1bb3: jne    0x00007f3e6c1b2126  ;*ifne
                    │││      ││  │ │                                                ; - com.google.re2j.Machine::match@271 (line 233)
                    │││      ││  │ │  0x00007f3e6c1b1bb9: mov    0x58(%rsp),%ebx
  0.00%             │││      ││  │ │  0x00007f3e6c1b1bbd: test   %ebx,%ebx
                    │││ ╭    ││  │ │  0x00007f3e6c1b1bbf: je     0x00007f3e6c1b1d2d  ;*ifeq
                    │││ │    ││  │ │                                                ; - com.google.re2j.Machine::match@275 (line 233)
  0.07%    0.05%    │││ │    ││  │ │  0x00007f3e6c1b1bc5: mov    0x40(%rsp),%r8d
  0.34%    0.47%    │││ │    ││  │ │  0x00007f3e6c1b1bca: test   %r8d,%r8d
                    │││ │    ││  │ │  0x00007f3e6c1b1bcd: jne    0x00007f3e6c1b2171  ;*aload_0
                    │││ │    ││  │ │                                                ; - com.google.re2j.Machine::match@282 (line 236)
                    │││ │    ││  │↗│  0x00007f3e6c1b1bd3: vmovd  %xmm2,%r10d
                    │││ │    ││  │││  0x00007f3e6c1b1bd8: mov    0xc(%r12,%r10,8),%ebp  ;*arraylength
                    │││ │    ││  │││                                                ; - com.google.re2j.Machine::match@286 (line 236)
                    │││ │    ││  │││                                                ; implicit exception: dispatches to 0x00007f3e6c1b2ac1
  0.08%    0.07%    │││ │    ││  │││  0x00007f3e6c1b1bdd: test   %ebp,%ebp
                    │││ │    ││  │││  0x00007f3e6c1b1bdf: jg     0x00007f3e6c1b2299  ;*ifle
                    │││ │    ││  │││                                                ; - com.google.re2j.Machine::match@287 (line 236)
  0.38%    0.36%    │││ │    ││  │││  0x00007f3e6c1b1be5: mov    0x38(%rsp),%rdx
                    │││ │    ││  │││  0x00007f3e6c1b1bea: mov    0x18(%rdx),%edi    ;*getfield prog
                    │││ │    ││  │││                                                ; - com.google.re2j.Machine::match@298 (line 239)
  0.01%    0.00%    │││ │    ││  │││  0x00007f3e6c1b1bed: mov    0x1c(%r12,%rdi,8),%ebp  ;*getfield startInst
                    │││ │    ││  │││                                                ; - com.google.re2j.Machine::match@301 (line 239)
                    │││ │    ││  │││                                                ; implicit exception: dispatches to 0x00007f3e6c1b2ad1
  0.09%    0.05%    │││ │    ││  │││  0x00007f3e6c1b1bf2: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f3e6c1b2ae1
  0.48%    0.56%    │││ │    ││  │││  0x00007f3e6c1b1bf7: cmp    $0xf8019a53,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$Alt5Inst&apos;)}
                    │││ │    ││  │││  0x00007f3e6c1b1bfe: jne    0x00007f3e6c1b1fd5  ;*invokevirtual add
                    │││ │    ││  │││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.04%    0.06%    │││ │    ││  │││  0x00007f3e6c1b1c04: mov    %rax,-0x8(%rsp)
  0.00%             │││ │    ││  │││  0x00007f3e6c1b1c09: mov    0x58(%rsp),%eax
  0.02%    0.03%    │││ │    ││  │││  0x00007f3e6c1b1c0d: mov    %eax,0x1c(%rsp)
  0.31%    0.30%    │││ │    ││  │││  0x00007f3e6c1b1c11: mov    -0x8(%rsp),%rax
  0.10%    0.05%    │││ │    ││  │││  0x00007f3e6c1b1c16: mov    %ecx,0x14(%rsp)
                    │││ │    ││  │││  0x00007f3e6c1b1c1a: mov    %r8d,0x40(%rsp)    ;*ifle
                    │││ │    ││  │││                                                ; - com.google.re2j.Machine::match@287 (line 236)
  0.01%    0.03%    │││ │    ││  │││  0x00007f3e6c1b1c1f: lea    (%r12,%rbp,8),%rsi  ;*invokevirtual add
                    │││ │    ││  │││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.31%    0.27%    │││ │    ││  │││  0x00007f3e6c1b1c23: mov    0x18(%rsp),%r8d
  0.07%    0.03%    │││ │    ││  │││  0x00007f3e6c1b1c28: lea    (%r12,%r8,8),%r11  ;*aload
                    │││ │    ││  │││                                                ; - com.google.re2j.Machine::match@136 (line 207)
                    │││ │    ││  │││  0x00007f3e6c1b1c2c: mov    %r11,0x20(%rsp)
  0.02%    0.03%    │││ │    ││  │││  0x00007f3e6c1b1c31: mov    %r10,%r8
  0.31%    0.27%    │││ │    ││  │││  0x00007f3e6c1b1c34: shl    $0x3,%r8           ;*getfield matchcap
                    │││ │    ││  │││                                                ; - com.google.re2j.Machine::match@283 (line 236)
  0.05%    0.04%    │││ │    ││  │││  0x00007f3e6c1b1c38: mov    %r11,%rdx
  0.00%             │││ │    ││  │││  0x00007f3e6c1b1c3b: mov    0x58(%rsp),%ecx
  0.06%    0.06%    │││ │    ││  │││  0x00007f3e6c1b1c3f: xor    %edi,%edi
  0.34%    0.34%    │││ │    ││  │││  0x00007f3e6c1b1c41: mov    0x38(%rsp),%r10
  0.06%    0.07%    │││ │    ││  │││  0x00007f3e6c1b1c46: mov    %r10,(%rsp)
           0.01%    │││ │    ││  │││  0x00007f3e6c1b1c4a: nop
  0.04%    0.04%    │││ │    ││  │││  0x00007f3e6c1b1c4b: callq  0x00007f3e6bfa8020  ; OopMap{[24]=NarrowOop [32]=Oop [56]=Oop [72]=Oop [80]=Oop off=1136}
                    │││ │    ││  │││                                                ;*invokevirtual add
                    │││ │    ││  │││                                                ; - com.google.re2j.Machine::match@315 (line 239)
                    │││ │    ││  │││                                                ;   {optimized virtual_call}
  0.09%    0.09%    │││ │    ││  │││  0x00007f3e6c1b1c50: mov    0x34(%rsp),%r11d
  0.11%    0.13%    │││ │    ││  │││  0x00007f3e6c1b1c55: test   %r11d,%r11d
                    │││ │╭   ││  │││  0x00007f3e6c1b1c58: jl     0x00007f3e6c1b1d0d  ;*ifge
                    │││ ││   ││  │││                                                ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                    │││ ││   ││  │││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.29%    0.41%    │││ ││   ││  │││  0x00007f3e6c1b1c5e: xor    %ecx,%ecx          ;*iload_0
                    │││ ││   ││  │││                                                ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                    │││ ││   ││  │││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.07%    0.16%    │││ ││   ││↗ │││  0x00007f3e6c1b1c60: cmp    $0xa,%r11d
                    │││ ││   │││ │││  0x00007f3e6c1b1c64: je     0x00007f3e6c1b1da9  ;*iload_1
                    │││ ││   │││ │││                                                ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                    │││ ││   │││ │││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.01%    0.04%    │││ ││   │││ │││  0x00007f3e6c1b1c6a: mov    0x2c(%rsp),%r8d
  0.02%    0.07%    │││ ││   │││ │││  0x00007f3e6c1b1c6f: test   %r8d,%r8d
                    │││ ││╭  │││ │││  0x00007f3e6c1b1c72: jl     0x00007f3e6c1b1d17  ;*iload_1
                    │││ │││  │││ │││                                                ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                    │││ │││  │││ │││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.25%    0.27%    │││ │││  │││↗│││  0x00007f3e6c1b1c78: cmp    $0xa,%r8d
                    │││ │││  │││││││  0x00007f3e6c1b1c7c: je     0x00007f3e6c1b1db1  ;*iload_0
                    │││ │││  │││││││                                                ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                    │││ │││  │││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.07%    0.07%    │││ │││  │││││││  0x00007f3e6c1b1c82: mov    0x34(%rsp),%edi
  0.00%    0.03%    │││ │││  │││││││  0x00007f3e6c1b1c86: mov    %rax,-0x8(%rsp)
  0.09%    0.06%    │││ │││  │││││││  0x00007f3e6c1b1c8b: mov    0x2c(%rsp),%eax
  0.25%    0.29%    │││ │││  │││││││  0x00007f3e6c1b1c8f: mov    %eax,0x34(%rsp)
  0.05%    0.12%    │││ │││  │││││││  0x00007f3e6c1b1c93: mov    -0x8(%rsp),%rax
  0.12%    0.05%    │││ │││  │││││││  0x00007f3e6c1b1c98: mov    0x48(%rsp),%r10
  0.08%    0.05%    │││ │││  │││││││  0x00007f3e6c1b1c9d: mov    0x10(%r10),%r8d    ;*getfield end
                    │││ │││  │││││││                                                ; - com.google.re2j.MachineInput$UTF16Input::endPos@1 (line 221)
                    │││ │││  │││││││                                                ; - com.google.re2j.Machine::match@345 (line 242)
  0.30%    0.34%    │││ │││  │││││││  0x00007f3e6c1b1ca1: mov    0x58(%rsp),%r10d
  0.06%    0.06%    │││ │││  │││││││  0x00007f3e6c1b1ca6: add    0x28(%rsp),%r10d   ;*iadd
                    │││ │││  │││││││                                                ; - com.google.re2j.Machine::match@337 (line 242)
  0.03%    0.01%    │││ │││  │││││││  0x00007f3e6c1b1cab: mov    %r10d,0x58(%rsp)
  0.11%    0.08%    │││ │││  │││││││  0x00007f3e6c1b1cb0: add    $0xffffffbf,%r11d
  0.29%    0.27%    │││ │││  │││││││  0x00007f3e6c1b1cb4: mov    0x2c(%rsp),%r9d
  0.05%    0.07%    │││ │││  │││││││  0x00007f3e6c1b1cb9: add    $0xffffffbf,%r9d
  0.01%    0.03%    │││ │││  │││││││  0x00007f3e6c1b1cbd: cmp    $0x1a,%r11d
                    │││ │││╭ │││││││  0x00007f3e6c1b1cc1: jb     0x00007f3e6c1b1cd4  ;*if_icmple
                    │││ ││││ │││││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                    │││ ││││ │││││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    │││ ││││ │││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.05%    0.06%    │││ ││││ │││││││  0x00007f3e6c1b1cc3: mov    %edi,%r10d
  0.29%    0.22%    │││ ││││ │││││││  0x00007f3e6c1b1cc6: add    $0xffffff9f,%r10d
  0.06%    0.06%    │││ ││││ │││││││  0x00007f3e6c1b1cca: cmp    $0x1a,%r10d
                    │││ ││││ │││││││  0x00007f3e6c1b1cce: jae    0x00007f3e6c1b1db9  ;*iconst_1
                    │││ ││││ │││││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                    │││ ││││ │││││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    │││ ││││ │││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.02%    0.01%    │││ │││↘ │││││││  0x00007f3e6c1b1cd4: mov    $0x1,%ebp          ;*ireturn
                    │││ │││  │││││││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                    │││ │││  │││││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    │││ │││  │││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.08%    0.10%    │││ │││  │││││││  0x00007f3e6c1b1cd9: cmp    $0x1a,%r9d
                    │││ │││ ╭│││││││  0x00007f3e6c1b1cdd: jb     0x00007f3e6c1b1cf2  ;*if_icmple
                    │││ │││ ││││││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                    │││ │││ ││││││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    │││ │││ ││││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.15%    0.25%    │││ │││ ││││││││  0x00007f3e6c1b1cdf: mov    0x2c(%rsp),%r10d
  0.06%    0.09%    │││ │││ ││││││││  0x00007f3e6c1b1ce4: add    $0xffffff9f,%r10d
  0.08%    0.08%    │││ │││ ││││││││  0x00007f3e6c1b1ce8: cmp    $0x1a,%r10d
                    │││ │││ ││││││││  0x00007f3e6c1b1cec: jae    0x00007f3e6c1b1dde  ;*iconst_1
                    │││ │││ ││││││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                    │││ │││ ││││││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    │││ │││ ││││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.04%    0.05%    │││ │││ ↘│││││││  0x00007f3e6c1b1cf2: mov    $0x1,%r11d         ;*ireturn
                    │││ │││  │││││││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                    │││ │││  │││││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    │││ │││  │││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.23%    0.27%    │││ │││  │││││││  0x00007f3e6c1b1cf8: cmp    %r11d,%ebp
                    │││ │││  ╰││││││  0x00007f3e6c1b1cfb: je     0x00007f3e6c1b1a01  ;*if_icmpeq
                    │││ │││   ││││││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                    │││ │││   ││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.02%    0.01%    │││ │││   ││││││  0x00007f3e6c1b1d01: or     $0x10,%ecx         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                    │││ │││   ││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.06%    0.04%    │││ │││   ││││││  0x00007f3e6c1b1d04: mov    %ecx,0x5c(%rsp)
  0.04%    0.05%    │││ │││   ╰│││││  0x00007f3e6c1b1d08: jmpq   0x00007f3e6c1b1a08
           0.00%    │││ │↘│    │││││  0x00007f3e6c1b1d0d: mov    $0x5,%ecx
                    │││ │ │    ╰││││  0x00007f3e6c1b1d12: jmpq   0x00007f3e6c1b1c60
                    │││ │ ↘     ││││  0x00007f3e6c1b1d17: or     $0xa,%ecx          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@27 (line 180)
                    │││ │       ││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
                    │││ │       ╰│││  0x00007f3e6c1b1d1a: jmpq   0x00007f3e6c1b1c78
  0.01%    0.02%    ││↘ │        │││  0x00007f3e6c1b1d1f: mov    $0xffffffff,%r11d
  0.01%             ││  │        │││  0x00007f3e6c1b1d25: xor    %r8d,%r8d
                    ││  │        ╰││  0x00007f3e6c1b1d28: jmpq   0x00007f3e6c1b1b1c
                    ││  ↘         ││  0x00007f3e6c1b1d2d: mov    0x40(%rsp),%r8d
                    ││            ╰│  0x00007f3e6c1b1d32: jmpq   0x00007f3e6c1b1bd3
                    ↘│             │  0x00007f3e6c1b1d37: mov    $0x1,%r10d
                     │             ╰  0x00007f3e6c1b1d3d: jmpq   0x00007f3e6c1b1a19
                     ↘                0x00007f3e6c1b1d42: mov    0x50(%rsp),%r10
                                      0x00007f3e6c1b1d47: mov    %r10,0x18(%rsp)
                                      0x00007f3e6c1b1d4c: mov    0xc(%r10),%ebx     ;*getfield size
                                                                                    ; - com.google.re2j.Machine::freeQueue@1 (line 148)
                                                                                    ; - com.google.re2j.Machine::freeQueue@3 (line 144)
....................................................................................................
 17.43%   18.77%  <total for region 3>

....[Hottest Regions]...............................................................................
 46.24%   45.16%         C2, level 4  com.google.re2j.Machine::step, version 526 (736 bytes) 
 31.54%   32.94%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 532 (1276 bytes) 
 17.43%   18.77%         C2, level 4  com.google.re2j.Machine::match, version 566 (823 bytes) 
  1.05%    0.18%         C2, level 4  com.google.re2j.Machine::init, version 567 (361 bytes) 
  0.44%    0.47%         C2, level 4  com.google.re2j.Machine::match, version 566 (126 bytes) 
  0.18%    0.18%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.12%    0.06%         C2, level 4  com.google.re2j.Machine::init, version 567 (8 bytes) 
  0.12%    0.01%         C2, level 4  com.google.re2j.Machine::init, version 567 (18 bytes) 
  0.11%    0.01%   [kernel.kallsyms]  [unknown] (39 bytes) 
  0.08%    0.07%         C2, level 4  com.google.re2j.Machine::match, version 566 (268 bytes) 
  0.08%    0.05%         C2, level 4  com.google.re2j.RE2::match, version 578 (8 bytes) 
  0.08%    0.07%         C2, level 4  com.google.re2j.RE2::match, version 578 (30 bytes) 
  0.06%    0.00%   [kernel.kallsyms]  [unknown] (27 bytes) 
  0.06%    0.04%         C2, level 4  com.google.re2j.RE2::match, version 578 (33 bytes) 
  0.05%    0.00%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.05%    0.02%         C2, level 4  com.google.re2j.RE2::match, version 578 (0 bytes) 
  0.05%    0.02%         C2, level 4  java.util.Collections::shuffle, version 585 (47 bytes) 
  0.05%    0.00%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.05%    0.01%              [vdso]  [unknown] (16 bytes) 
  0.04%    0.01%         C2, level 4  com.google.re2j.RE2::match, version 578 (88 bytes) 
  2.11%    1.89%  <...other 456 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 46.24%   45.17%         C2, level 4  com.google.re2j.Machine::step, version 526 
 31.54%   32.94%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 532 
 18.01%   19.35%         C2, level 4  com.google.re2j.Machine::match, version 566 
  1.38%    0.26%         C2, level 4  com.google.re2j.Machine::init, version 567 
  1.21%    1.08%   [kernel.kallsyms]  [unknown] 
  0.45%    0.21%         C2, level 4  com.google.re2j.RE2::match, version 578 
  0.12%    0.05%         C2, level 4  java.util.Collections::shuffle, version 585 
  0.07%    0.03%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 628 
  0.05%    0.06%      hsdis-amd64.so  [unknown] 
  0.05%    0.01%              [vdso]  [unknown] 
  0.04%    0.00%           libjvm.so  GenericTaskQueueSet<OverflowTaskQueue<StarTask, (MemoryType)1, 131072u>, (MemoryType)1>::steal_best_of_2 
  0.04%    0.06%        libc-2.26.so  vfprintf 
  0.03%    0.01%           libjvm.so  fileStream::write 
  0.03%    0.03%           libjvm.so  xmlTextStream::write 
  0.03%    0.02%        libc-2.26.so  __strchr_avx2 
  0.02%    0.07%           libjvm.so  PSPromotionManager::copy_to_survivor_space<false> 
  0.02%    0.01%           libjvm.so  SpinPause 
  0.02%    0.00%           libjvm.so  InstanceKlass::oop_push_contents 
  0.02%    0.02%           libjvm.so  StringTable::unlink_or_oops_do 
  0.02%    0.01%              [vdso]  __vdso_clock_gettime 
  0.59%    0.34%  <...other 87 warm methods...>
....................................................................................................
100.00%   99.75%  <totals>

....[Distribution by Source]........................................................................
 97.85%   98.02%         C2, level 4
  1.21%    1.08%   [kernel.kallsyms]
  0.50%    0.51%           libjvm.so
  0.17%    0.22%        libc-2.26.so
  0.07%    0.01%  libpthread-2.26.so
  0.07%    0.02%              [vdso]
  0.06%    0.06%      hsdis-amd64.so
  0.05%    0.01%         interpreter
  0.01%    0.03%        runtime stub
  0.01%    0.01%         C1, level 3
  0.00%    0.00%      perf-22067.map
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                 Mode  Cnt      Score     Error  Units
Re2jRegex.testExp2       thrpt   20  14652.574 ± 447.846  ops/s
Re2jRegex.testExp2:·asm  thrpt             NaN              ---
