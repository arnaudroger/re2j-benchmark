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
# Warmup Iteration   1: 5448.600 ops/s
# Warmup Iteration   2: 12358.268 ops/s
# Warmup Iteration   3: 12421.553 ops/s
# Warmup Iteration   4: 12439.509 ops/s
# Warmup Iteration   5: 12129.315 ops/s
# Warmup Iteration   6: 12183.943 ops/s
# Warmup Iteration   7: 12702.244 ops/s
# Warmup Iteration   8: 12628.907 ops/s
# Warmup Iteration   9: 12751.536 ops/s
# Warmup Iteration  10: 12880.950 ops/s
# Warmup Iteration  11: 12607.462 ops/s
# Warmup Iteration  12: 12620.744 ops/s
# Warmup Iteration  13: 12809.418 ops/s
# Warmup Iteration  14: 12831.082 ops/s
# Warmup Iteration  15: 12867.848 ops/s
# Warmup Iteration  16: 12807.438 ops/s
# Warmup Iteration  17: 12801.331 ops/s
# Warmup Iteration  18: 12728.766 ops/s
# Warmup Iteration  19: 12912.828 ops/s
# Warmup Iteration  20: 12884.054 ops/s
Iteration   1: 12952.128 ops/s
Iteration   2: 12909.080 ops/s
Iteration   3: 12779.276 ops/s
Iteration   4: 12765.613 ops/s
Iteration   5: 12861.834 ops/s
Iteration   6: 12952.244 ops/s
Iteration   7: 12771.101 ops/s
Iteration   8: 12740.098 ops/s
Iteration   9: 12823.690 ops/s
Iteration  10: 12968.257 ops/s
Iteration  11: 12928.288 ops/s
Iteration  12: 12923.259 ops/s
Iteration  13: 12860.851 ops/s
Iteration  14: 12948.460 ops/s
Iteration  15: 12958.827 ops/s
Iteration  16: 12850.348 ops/s
Iteration  17: 12878.450 ops/s
Iteration  18: 12869.922 ops/s
Iteration  19: 12906.794 ops/s
Iteration  20: 12921.630 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jRegex.testExp2":
  12878.508 ±(99.9%) 61.750 ops/s [Average]
  (min, avg, max) = (12740.098, 12878.508, 12968.257), stdev = 71.111
  CI (99.9%): [12816.758, 12940.257] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jRegex.testExp2:·asm":
PrintAssembly processed: 207602 total address lines.
Perf output processed (skipped 23.763 seconds):
 Column 1: cycles (20580 events)
 Column 2: instructions (20559 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 530 (679 bytes) 

                             # parm6:    [sp+0x78]   = int
                             # parm7:    [sp+0x80]   = boolean
                             0x00007f1cb5237c00: mov    0x8(%rsi),%r10d
                             0x00007f1cb5237c04: shl    $0x3,%r10
                             0x00007f1cb5237c08: cmp    %r10,%rax
                             0x00007f1cb5237c0b: jne    0x00007f1cb5045e20  ;   {runtime_call}
                             0x00007f1cb5237c11: data16 xchg %ax,%ax
                             0x00007f1cb5237c14: nopl   0x0(%rax,%rax,1)
                             0x00007f1cb5237c1c: data16 data16 xchg %ax,%ax
                           [Verified Entry Point]
  0.22%    0.17%             0x00007f1cb5237c20: mov    %eax,-0x14000(%rsp)
  0.12%    0.14%             0x00007f1cb5237c27: push   %rbp
  0.22%    0.13%             0x00007f1cb5237c28: sub    $0x60,%rsp         ;*synchronization entry
                                                                           ; - com.google.re2j.Machine::step@-1 (line 276)
  0.14%    0.16%             0x00007f1cb5237c2c: mov    %edi,0x18(%rsp)
  0.12%    0.10%             0x00007f1cb5237c30: mov    %r9d,0x14(%rsp)
  0.11%    0.10%             0x00007f1cb5237c35: mov    %r8d,0x10(%rsp)
  0.04%    0.13%             0x00007f1cb5237c3a: mov    %rcx,0x8(%rsp)
  0.12%    0.09%             0x00007f1cb5237c3f: vmovq  %rdx,%xmm0
  0.07%    0.06%             0x00007f1cb5237c44: vmovq  %rsi,%xmm1
  0.07%    0.10%             0x00007f1cb5237c49: mov    0x14(%rsi),%r10d   ;*getfield re2
                                                                           ; - com.google.re2j.Machine::step@1 (line 276)
  0.07%    0.10%             0x00007f1cb5237c4d: movzbl 0x18(%r12,%r10,8),%r11d  ;*getfield longest
                                                                           ; - com.google.re2j.Machine::step@4 (line 276)
                                                                           ; implicit exception: dispatches to 0x00007f1cb52387f1
  0.08%    0.07%             0x00007f1cb5237c53: vmovd  %r11d,%xmm3
  0.06%    0.05%             0x00007f1cb5237c58: mov    0xc(%rdx),%ecx     ;*getfield size
                                                                           ; - com.google.re2j.Machine::step@15 (line 277)
                                                                           ; implicit exception: dispatches to 0x00007f1cb5238801
  0.09%    0.06%             0x00007f1cb5237c5b: test   %ecx,%ecx
                  ╭          0x00007f1cb5237c5d: jle    0x00007f1cb5237dae  ;*if_icmpge
                  │                                                        ; - com.google.re2j.Machine::step@18 (line 277)
  0.13%    0.07%  │          0x00007f1cb5237c63: test   %r11d,%r11d
                  │          0x00007f1cb5237c66: jne    0x00007f1cb5238365
  0.10%    0.05%  │          0x00007f1cb5237c6c: xor    %r10d,%r10d
  0.08%    0.15%  │╭         0x00007f1cb5237c6f: jmp    0x00007f1cb5237c87
  1.37%    0.92%  ││   ↗     0x00007f1cb5237c71: mov    %r10d,%ecx
  0.06%    0.03%  ││   │     0x00007f1cb5237c74: mov    %r11,0x8(%rsp)
  0.19%    0.12%  ││   │     0x00007f1cb5237c79: mov    %ebx,0x78(%rsp)
  0.03%    0.05%  ││   │     0x00007f1cb5237c7d: mov    %edi,0x80(%rsp)
  1.24%    0.96%  ││   │     0x00007f1cb5237c84: mov    %edx,%r10d         ;*getfield size
                  ││   │                                                   ; - com.google.re2j.Machine::step@15 (line 277)
  0.16%    0.14%  │↘   │     0x00007f1cb5237c87: vmovq  %xmm0,%r11
  0.21%    0.16%  │    │     0x00007f1cb5237c8c: mov    0x20(%r11),%r8d    ;*getfield denseThreads
                  │    │                                                   ; - com.google.re2j.Machine::step@22 (line 278)
  0.14%    0.15%  │    │     0x00007f1cb5237c90: mov    0xc(%r12,%r8,8),%r9d  ; implicit exception: dispatches to 0x00007f1cb52387ad
  1.25%    0.88%  │    │     0x00007f1cb5237c95: cmp    %r9d,%r10d
                  │    │     0x00007f1cb5237c98: jae    0x00007f1cb52380ec
  0.17%    0.12%  │    │     0x00007f1cb5237c9e: lea    (%r12,%r8,8),%r11
  0.24%    0.24%  │    │     0x00007f1cb5237ca2: mov    0x10(%r11,%r10,4),%r8d  ;*aaload
                  │    │                                                   ; - com.google.re2j.Machine::step@27 (line 278)
  0.14%    0.16%  │    │     0x00007f1cb5237ca7: mov    0x10(%r12,%r8,8),%edi  ;*getfield inst
                  │    │                                                   ; - com.google.re2j.Machine::step@78 (line 283)
                  │    │                                                   ; implicit exception: dispatches to 0x00007f1cb52387c1
  2.83%    1.77%  │    │     0x00007f1cb5237cac: mov    0xc(%r12,%rdi,8),%eax  ; implicit exception: dispatches to 0x00007f1cb52387d1
  4.64%    5.69%  │    │     0x00007f1cb5237cb1: mov    0xc(%r12,%r8,8),%r14d  ;*getfield cap
                  │    │                                                   ; - com.google.re2j.Machine::step@106 (line 289)
  0.06%    0.06%  │    │     0x00007f1cb5237cb6: vmovq  %xmm1,%r11
           0.02%  │    │     0x00007f1cb5237cbb: mov    0xc(%r11),%r9d     ;*getfield poolSize
                  │    │                                                   ; - com.google.re2j.Machine::free@1 (line 167)
                  │    │                                                   ; - com.google.re2j.Machine::step@226 (line 303)
  0.34%    0.26%  │    │     0x00007f1cb5237cbf: mov    0x24(%r11),%r11d   ;*getfield pool
                  │    │                                                   ; - com.google.re2j.Machine::free@5 (line 167)
                  │    │                                                   ; - com.google.re2j.Machine::step@226 (line 303)
  1.53%    1.26%  │    │     0x00007f1cb5237cc3: mov    %r10d,%edx
  0.06%    0.04%  │    │     0x00007f1cb5237cc6: inc    %edx               ;*iadd
                  │    │                                                   ; - com.google.re2j.Machine::step@173 (line 295)
  0.01%    0.02%  │    │     0x00007f1cb5237cc8: lea    (%r12,%r8,8),%rsi  ;*aaload
                  │    │                                                   ; - com.google.re2j.Machine::step@27 (line 278)
  0.36%    0.38%  │    │     0x00007f1cb5237ccc: cmp    $0x6,%eax
                  │    │     0x00007f1cb5237ccf: je     0x00007f1cb5237f7c  ;*if_icmpne
                  │    │                                                   ; - com.google.re2j.Machine::step@90 (line 285)
  1.54%    1.72%  │    │     0x00007f1cb5237cd5: mov    0x8(%r12,%rdi,8),%ebx
  0.11%    0.09%  │    │     0x00007f1cb5237cda: cmp    $0xf8019992,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │    │     0x00007f1cb5237ce0: jne    0x00007f1cb5238135
  0.06%    0.07%  │    │     0x00007f1cb5237ce6: shl    $0x3,%rdi          ;*invokevirtual matchRune
                  │    │                                                   ; - com.google.re2j.Machine::step@189 (line 299)
  0.26%    0.26%  │    │     0x00007f1cb5237cea: mov    0xc(%rdi),%ebp     ;*getfield op
                  │    │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@1 (line 134)
                  │    │                                                   ; - com.google.re2j.Machine::step@189 (line 299)
  1.47%    1.68%  │    │     0x00007f1cb5237ced: cmp    $0xa,%ebp
                  │ ╭  │     0x00007f1cb5237cf0: je     0x00007f1cb5237de2  ;*if_icmpne
                  │ │  │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@6 (line 134)
                  │ │  │                                                   ; - com.google.re2j.Machine::step@189 (line 299)
  0.28%    0.35%  │ │  │     0x00007f1cb5237cf6: cmp    $0xb,%ebp
                  │ │  │     0x00007f1cb5237cf9: je     0x00007f1cb5238211  ;*if_icmpne
                  │ │  │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@17 (line 138)
                  │ │  │                                                   ; - com.google.re2j.Machine::step@189 (line 299)
  0.32%    0.36%  │ │  │     0x00007f1cb5237cff: cmp    $0x9,%ebp
                  │ │  │     0x00007f1cb5237d02: je     0x00007f1cb5238251  ;*if_icmpne
                  │ │  │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@38 (line 142)
                  │ │  │                                                   ; - com.google.re2j.Machine::step@189 (line 299)
  1.15%    1.56%  │ │  │     0x00007f1cb5237d08: cmp    $0xc,%ebp
                  │ │  │     0x00007f1cb5237d0b: jne    0x00007f1cb52381d1  ;*if_icmpne
                  │ │  │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@61 (line 146)
                  │ │  │                                                   ; - com.google.re2j.Machine::step@189 (line 299)
  0.88%    1.05%  │ │  │     0x00007f1cb5237d11: mov    0x20(%rdi),%eax    ;*getfield f0
                  │ │  │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@65 (line 147)
                  │ │  │                                                   ; - com.google.re2j.Machine::step@189 (line 299)
  0.06%    0.03%  │ │  │     0x00007f1cb5237d14: cmp    0x18(%rsp),%eax
                  │ │╭ │     0x00007f1cb5237d18: je     0x00007f1cb5237de2  ;*if_icmpeq
                  │ ││ │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@69 (line 147)
                  │ ││ │                                                   ; - com.google.re2j.Machine::step@189 (line 299)
  1.55%    1.76%  │ ││ │     0x00007f1cb5237d1e: mov    0x24(%rdi),%ebx    ;*getfield f1
                  │ ││ │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@73 (line 147)
                  │ ││ │                                                   ; - com.google.re2j.Machine::step@189 (line 299)
  0.14%    0.17%  │ ││ │     0x00007f1cb5237d21: cmp    0x18(%rsp),%ebx
                  │ ││╭│     0x00007f1cb5237d25: je     0x00007f1cb5237de2  ;*if_icmpeq
                  │ ││││                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@77 (line 147)
                  │ ││││                                                   ; - com.google.re2j.Machine::step@189 (line 299)
  1.75%    1.93%  │ ││││     0x00007f1cb5237d2b: mov    0x28(%rdi),%ebp    ;*getfield f2
                  │ ││││                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@81 (line 147)
                  │ ││││                                                   ; - com.google.re2j.Machine::step@189 (line 299)
  0.16%    0.14%  │ ││││     0x00007f1cb5237d2e: cmp    0x18(%rsp),%ebp
                  │ ││││     0x00007f1cb5237d32: je     0x00007f1cb52382e5  ;*if_icmpeq
                  │ ││││                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@85 (line 147)
                  │ ││││                                                   ; - com.google.re2j.Machine::step@189 (line 299)
  0.91%    1.05%  │ ││││     0x00007f1cb5237d38: mov    0x2c(%rdi),%ebp    ;*getfield f3
                  │ ││││                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@89 (line 147)
                  │ ││││                                                   ; - com.google.re2j.Machine::step@189 (line 299)
  0.05%    0.06%  │ ││││     0x00007f1cb5237d3b: cmp    0x18(%rsp),%ebp
                  │ ││││     0x00007f1cb5237d3f: je     0x00007f1cb5238325  ;*if_icmpne
                  │ ││││                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@93 (line 147)
                  │ ││││                                                   ; - com.google.re2j.Machine::step@189 (line 299)
  1.60%    1.72%  │ ││││     0x00007f1cb5237d45: mov    0x78(%rsp),%ebx
  0.03%    0.03%  │ ││││     0x00007f1cb5237d49: mov    0x80(%rsp),%edi    ;*getfield size
                  │ ││││                                                   ; - com.google.re2j.Machine::step@15 (line 277)
  0.13%    0.21%  │ ││││     0x00007f1cb5237d50: mov    0xc(%r12,%r11,8),%ebp  ;*arraylength
                  │ ││││                                                   ; - com.google.re2j.Machine::free@8 (line 167)
                  │ ││││                                                   ; - com.google.re2j.Machine::step@226 (line 303)
                  │ ││││                                                   ; implicit exception: dispatches to 0x00007f1cb52387e1
  0.06%    0.06%  │ ││││     0x00007f1cb5237d55: cmp    %ebp,%r9d
                  │ ││││     0x00007f1cb5237d58: jge    0x00007f1cb5238291  ;*if_icmplt
                  │ ││││                                                   ; - com.google.re2j.Machine::free@9 (line 167)
                  │ ││││                                                   ; - com.google.re2j.Machine::step@226 (line 303)
  1.72%    1.66%  │ ││││     0x00007f1cb5237d5e: mov    %r9d,%esi
  0.05%    0.00%  │ ││││     0x00007f1cb5237d61: inc    %esi
  0.14%    0.20%  │ ││││     0x00007f1cb5237d63: vmovq  %xmm1,%rax
  0.05%    0.03%  │ ││││     0x00007f1cb5237d68: mov    %esi,0xc(%rax)     ;*putfield poolSize
                  │ ││││                                                   ; - com.google.re2j.Machine::free@45 (line 170)
                  │ ││││                                                   ; - com.google.re2j.Machine::step@226 (line 303)
  1.60%    1.49%  │ ││││     0x00007f1cb5237d6b: cmp    %ebp,%r9d
                  │ ││││     0x00007f1cb5237d6e: jae    0x00007f1cb5238171  ;*aastore
                  │ ││││                                                   ; - com.google.re2j.Machine::free@49 (line 170)
                  │ ││││                                                   ; - com.google.re2j.Machine::step@226 (line 303)
  0.02%    0.02%  │ ││││     0x00007f1cb5237d74: vmovq  %xmm0,%r10
  0.13%    0.18%  │ ││││     0x00007f1cb5237d79: mov    0xc(%r10),%r10d    ;*getfield size
                  │ ││││                                                   ; - com.google.re2j.Machine::step@15 (line 277)
  0.04%    0.08%  │ ││││     0x00007f1cb5237d7d: shl    $0x3,%r11          ;*getfield pool
                  │ ││││                                                   ; - com.google.re2j.Machine::free@5 (line 167)
                  │ ││││                                                   ; - com.google.re2j.Machine::step@226 (line 303)
  1.48%    1.62%  │ ││││     0x00007f1cb5237d81: lea    0x10(%r11,%r9,4),%r11
  0.01%    0.03%  │ ││││     0x00007f1cb5237d86: mov    %r8d,(%r11)
  0.30%    0.19%  │ ││││     0x00007f1cb5237d89: shr    $0x9,%r11
  0.07%    0.08%  │ ││││     0x00007f1cb5237d8d: movabs $0x7f1cc5f78000,%r8
  1.69%    1.33%  │ ││││     0x00007f1cb5237d97: mov    %r12b,(%r8,%r11,1)  ;*aastore
                  │ ││││                                                   ; - com.google.re2j.Machine::free@49 (line 170)
                  │ ││││                                                   ; - com.google.re2j.Machine::step@226 (line 303)
  0.16%    0.09%  │ ││││     0x00007f1cb5237d9b: mov    0x8(%rsp),%r11     ; OopMap{r11=Oop xmm0=Oop xmm1=Oop off=416}
                  │ ││││                                                   ;*goto
                  │ ││││                                                   ; - com.google.re2j.Machine::step@232 (line 277)
  0.28%    0.18%  │ ││││  ↗  0x00007f1cb5237da0: test   %eax,0x1833825a(%rip)        # 0x00007f1ccd570000
                  │ ││││  │                                                ;*goto
                  │ ││││  │                                                ; - com.google.re2j.Machine::step@232 (line 277)
                  │ ││││  │                                                ;   {poll}
  0.06%    0.08%  │ ││││  │  0x00007f1cb5237da6: cmp    %ecx,%edx
                  │ │││╰  │  0x00007f1cb5237da8: jl     0x00007f1cb5237c71  ;*if_icmpge
                  │ │││   │                                                ; - com.google.re2j.Machine::step@18 (line 277)
  0.34%    0.22%  ↘ │││   │  0x00007f1cb5237dae: vmovq  %xmm0,%r10
  0.00%    0.00%    │││   │  0x00007f1cb5237db3: movzbl 0x18(%r10),%r11d
  0.01%    0.01%    │││   │  0x00007f1cb5237db8: test   %r11d,%r11d
                    │││ ╭ │  0x00007f1cb5237dbb: jne    0x00007f1cb5237dd6  ;*ifeq
                    │││ │ │                                                ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                    │││ │ │                                                ; - com.google.re2j.Machine::step@236 (line 306)
  0.02%    0.01%    │││ │ │  0x00007f1cb5237dbd: mov    %r12d,0xc(%r10)    ;*putfield size
                    │││ │ │                                                ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                    │││ │ │                                                ; - com.google.re2j.Machine::step@236 (line 306)
  0.27%    0.21%    │││ │ │  0x00007f1cb5237dc1: mov    0x1c(%r10),%ebp    ;*getfield pcs
                    │││ │ │                                                ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                    │││ │ │                                                ; - com.google.re2j.Machine::step@236 (line 306)
                    │││ │ │  0x00007f1cb5237dc5: movb   $0x1,0x18(%r10)    ;*putfield empty
                    │││ │ │                                                ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                    │││ │ │                                                ; - com.google.re2j.Machine::step@236 (line 306)
  0.04%    0.00%    │││ │ │  0x00007f1cb5237dca: mov    %r12,0x10(%r10)    ;*putfield pcsl
                    │││ │ │                                                ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                    │││ │ │                                                ; - com.google.re2j.Machine::step@236 (line 306)
  0.03%    0.00%    │││ │ │  0x00007f1cb5237dce: test   %ebp,%ebp
                    │││ │ │  0x00007f1cb5237dd0: jne    0x00007f1cb523838d  ;*getfield size
                    │││ │ │                                                ; - com.google.re2j.Machine::step@15 (line 277)
  0.29%    0.14%    │││ ↘ │  0x00007f1cb5237dd6: add    $0x60,%rsp
  0.00%             │││   │  0x00007f1cb5237dda: pop    %rbp
  0.01%    0.01%    │││   │  0x00007f1cb5237ddb: test   %eax,0x1833821f(%rip)        # 0x00007f1ccd570000
                    │││   │                                                ;   {poll_return}
  0.02%    0.01%    │││   │  0x00007f1cb5237de1: retq   
  0.50%    0.35%    ↘↘↘   │  0x00007f1cb5237de2: mov    0x1c(%rdi),%r11d   ;*getfield outInst
                          │                                                ; - com.google.re2j.Machine::step@197 (line 300)
  0.29%    0.20%          │  0x00007f1cb5237de6: mov    0x8(%r12,%r11,8),%ebx  ; implicit exception: dispatches to 0x00007f1cb5238811
  0.32%    0.23%          │  0x00007f1cb5237deb: lea    (%r12,%r11,8),%r9
                          │  0x00007f1cb5237def: xor    %edi,%edi
                          │  0x00007f1cb5237df1: mov    $0x1,%eax
                          │  0x00007f1cb5237df6: cmp    $0xf8019992,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                         ╭│  0x00007f1cb5237dfc: jne    0x00007f1cb5237ec7  ;*invokevirtual add
                         ││                                                ; - com.google.re2j.Machine::step@213 (line 300)
  0.07%    0.06%         ││  0x00007f1cb5237e02: mov    0x18(%r9),%ebx     ;*getfield pc
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
           0.00%         ││  0x00007f1cb5237e06: mov    0x8(%rsp),%r11
                         ││  0x00007f1cb5237e0b: mov    0x10(%r11),%rbp    ;*getfield pcsl
                         ││                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                         ││                                                ; implicit exception: dispatches to 0x00007f1cb5238831
  0.01%                  ││  0x00007f1cb5237e0f: cmp    $0x40,%ebx
                         ││  0x00007f1cb5237e12: jg     0x00007f1cb52383f1  ;*if_icmpgt
                         ││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.06%    0.05%         ││  0x00007f1cb5237e18: mov    %ebx,%ecx
                         ││  0x00007f1cb5237e1a: shl    %cl,%rax           ;*lshl
                         ││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.16%    0.10%         ││  0x00007f1cb5237e1d: mov    %rbp,%rcx
                         ││  0x00007f1cb5237e20: and    %rax,%rcx          ;*land
                         ││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                         ││  0x00007f1cb5237e23: test   %rcx,%rcx
                         ││  0x00007f1cb5237e26: jne    0x00007f1cb523843d  ;*ifeq
                         ││                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.03%    0.05%         ││  0x00007f1cb5237e2c: cmp    $0x40,%ebx
                         ││  0x00007f1cb5237e2f: jge    0x00007f1cb52384a1  ;*if_icmpge
                         ││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%    0.00%         ││  0x00007f1cb5237e35: mov    %r12b,0x18(%r11)   ;*putfield empty
                         ││                                                ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.04%                  ││  0x00007f1cb5237e39: or     %rbp,%rax
                         ││  0x00007f1cb5237e3c: mov    %rax,0x10(%r11)    ;*putfield pcsl
                         ││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.06%    0.02%         ││  0x00007f1cb5237e40: mov    %rsi,%rbx
  0.01%    0.00%         ││  0x00007f1cb5237e43: mov    %r9,%rcx
  0.00%                  ││  0x00007f1cb5237e46: shr    $0x3,%rcx
                         ││  0x00007f1cb5237e4a: mov    %ecx,0x10(%r12,%r8,8)
  0.05%    0.02%         ││  0x00007f1cb5237e4f: shr    $0x9,%rbx
  0.00%                  ││  0x00007f1cb5237e53: movabs $0x7f1cc5f78000,%r9
  0.00%                  ││  0x00007f1cb5237e5d: mov    %r12b,(%r9,%rbx,1)  ;*putfield inst
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@41 (line 101)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                         ││  0x00007f1cb5237e61: mov    0xc(%r12,%r14,8),%ebp  ;*arraylength
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@45 (line 103)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                         ││                                                ; implicit exception: dispatches to 0x00007f1cb5238845
  0.07%    0.06%         ││  0x00007f1cb5237e66: test   %ebp,%ebp
                         ││  0x00007f1cb5237e68: jg     0x00007f1cb52384ed  ;*ifle
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%    0.00%         ││  0x00007f1cb5237e6e: mov    0x20(%r11),%ecx    ;*getfield denseThreads
                         ││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%                  ││  0x00007f1cb5237e72: mov    0xc(%r11),%ebp     ;*getfield size
                         ││                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                         ││  0x00007f1cb5237e76: mov    %ebp,%r9d
  0.06%    0.04%         ││  0x00007f1cb5237e79: inc    %r9d
  0.02%    0.02%         ││  0x00007f1cb5237e7c: mov    %r9d,0xc(%r11)     ;*putfield size
                         ││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%                  ││  0x00007f1cb5237e80: mov    0xc(%r12,%rcx,8),%ebx  ; implicit exception: dispatches to 0x00007f1cb5238855
  0.01%                  ││  0x00007f1cb5237e85: cmp    %ebx,%ebp
                         ││  0x00007f1cb5237e87: jae    0x00007f1cb52383a5  ;*aastore
                         ││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.07%    0.03%         ││  0x00007f1cb5237e8d: lea    (%r12,%rcx,8),%r10  ;*getfield denseThreads
                         ││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%    0.00%         ││  0x00007f1cb5237e91: lea    0x10(%r10,%rbp,4),%r10
           0.00%         ││  0x00007f1cb5237e96: mov    %r8d,(%r10)
  0.10%    0.01%         ││  0x00007f1cb5237e99: shr    $0x9,%r10
  0.08%    0.04%         ││  0x00007f1cb5237e9d: movabs $0x7f1cc5f78000,%r8
  0.02%    0.01%         ││  0x00007f1cb5237ea7: mov    %r12b,(%r8,%r10,1)  ;*synchronization entry
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.03%    0.03%         ││  0x00007f1cb5237eab: vmovq  %xmm0,%r10
                         ││  0x00007f1cb5237eb0: mov    0xc(%r10),%ecx     ;*getfield size
                         ││                                                ; - com.google.re2j.Machine::step@15 (line 277)
  0.03%    0.04%         ││  0x00007f1cb5237eb4: mov    %ecx,%r10d
           0.00%         ││  0x00007f1cb5237eb7: mov    0x78(%rsp),%ebx
  0.03%    0.01%         ││  0x00007f1cb5237ebb: mov    0x80(%rsp),%edi
                         │╰  0x00007f1cb5237ec2: jmpq   0x00007f1cb5237da0
  0.00%    0.00%         ↘   0x00007f1cb5237ec7: cmp    $0xf801990c,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                             0x00007f1cb5237ecd: jne    0x00007f1cb5238585  ;*invokevirtual add
                                                                           ; - com.google.re2j.Machine::step@213 (line 300)
                             0x00007f1cb5237ed3: mov    0x18(%r9),%ebx     ;*getfield pc
                                                                           ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                                                                           ; - com.google.re2j.Machine::step@213 (line 300)
                             0x00007f1cb5237ed7: mov    0x8(%rsp),%r11
                             0x00007f1cb5237edc: mov    0x10(%r11),%rbp    ;*getfield pcsl
                                                                           ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                                                                           ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                           ; - com.google.re2j.Machine::step@213 (line 300)
....................................................................................................
 40.47%   38.79%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Inst$AltInst::add, version 527 (1006 bytes) 

                        0x00007f1cb5240408: movabs $0x7f1cc5f78000,%r11
                        0x00007f1cb5240412: mov    %r12b,(%r11,%r10,1)  ;*aastore
                                                                      ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                      ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                        0x00007f1cb5240416: mov    %rbx,%rdx
                        0x00007f1cb5240419: mov    0xa0(%rsp),%r10
                        0x00007f1cb5240421: mov    %r8d,%edi
                  ╭     0x00007f1cb5240424: jmpq   0x00007f1cb5240716  ;*invokevirtual add
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.23%    0.13%  │     0x00007f1cb5240429: mov    0x18(%r10),%ecx    ;*getfield pc
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@2 (line 187)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.27%    0.24%  │     0x00007f1cb524042d: cmp    $0x40,%ecx
                  │     0x00007f1cb5240430: jg     0x00007f1cb5240b39  ;*if_icmpgt
                  │                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.12%    0.14%  │     0x00007f1cb5240436: mov    $0x1,%r9d
  0.15%    0.12%  │     0x00007f1cb524043c: shl    %cl,%r9            ;*lshl
                  │                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.67%    0.75%  │     0x00007f1cb524043f: mov    %rbx,%rsi
  0.11%    0.16%  │     0x00007f1cb5240442: and    %r9,%rsi           ;*land
                  │                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.33%    0.41%  │     0x00007f1cb5240445: test   %rsi,%rsi
                  │     0x00007f1cb5240448: jne    0x00007f1cb5240b81  ;*ifeq
                  │                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.27%    0.18%  │     0x00007f1cb524044e: cmp    $0x40,%ecx
                  │     0x00007f1cb5240451: jge    0x00007f1cb5240bcd  ;*if_icmpge
                  │                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.15%    0.09%  │     0x00007f1cb5240457: mov    0x1c(%r10),%ebp    ;*getfield outInst
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@23 (line 192)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.15%    0.15%  │     0x00007f1cb524045b: or     %r9,%rbx           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.25%    0.29%  │     0x00007f1cb524045e: mov    %rbx,0x10(%rax)    ;*putfield pcsl
                  │                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.30%    0.32%  │     0x00007f1cb5240462: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f1cb52411f5
  0.08%    0.13%  │     0x00007f1cb5240467: lea    (%r12,%rbp,8),%r9
  0.13%    0.15%  │     0x00007f1cb524046b: cmp    $0xf8019843,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$AltInst&apos;)}
                  │╭    0x00007f1cb5240471: je     0x00007f1cb52405a4
  0.06%    0.05%  ││    0x00007f1cb5240477: cmp    $0xf8019992,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  ││    0x00007f1cb524047d: jne    0x00007f1cb5240e05  ;*invokevirtual add
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.13%    0.16%  ││    0x00007f1cb5240483: mov    0x18(%r9),%ecx     ;*getfield pc
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.05%    0.07%  ││    0x00007f1cb5240487: cmp    $0x40,%ecx
                  ││    0x00007f1cb524048a: jg     0x00007f1cb524102d  ;*if_icmpgt
                  ││                                                  ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.07%    0.07%  ││    0x00007f1cb5240490: mov    $0x1,%esi
  0.07%    0.09%  ││    0x00007f1cb5240495: shl    %cl,%rsi           ;*lshl
                  ││                                                  ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.19%    0.37%  ││    0x00007f1cb5240498: mov    %rbx,%rbp
  0.03%    0.05%  ││    0x00007f1cb524049b: and    %rsi,%rbp          ;*land
                  ││                                                  ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.19%    0.18%  ││    0x00007f1cb524049e: test   %rbp,%rbp
                  ││    0x00007f1cb52404a1: jne    0x00007f1cb524107d  ;*ifeq
                  ││                                                  ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.08%    0.06%  ││    0x00007f1cb52404a7: cmp    $0x40,%ecx
                  ││    0x00007f1cb52404aa: jge    0x00007f1cb52410d5  ;*if_icmpge
                  ││                                                  ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.04%    0.06%  ││    0x00007f1cb52404b0: or     %rsi,%rbx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.05%    0.08%  ││    0x00007f1cb52404b3: mov    %rbx,0x10(%rax)    ;*putfield pcsl
                  ││                                                  ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.16%    0.21%  ││    0x00007f1cb52404b7: mov    %r9,%rcx
  0.06%    0.04%  ││    0x00007f1cb52404ba: shr    $0x3,%rcx          ;*putfield inst
                  ││                                                  ; - com.google.re2j.Machine::alloc@45 (line 138)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.07%    0.06%  ││    0x00007f1cb52404be: test   %rdi,%rdi
                  ││    0x00007f1cb52404c1: jne    0x00007f1cb524085b  ;*ifnonnull
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@24 (line 98)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.07%    0.06%  ││    0x00007f1cb52404c7: mov    0xa0(%rsp),%r14
  0.16%    0.17%  ││    0x00007f1cb52404cf: mov    0xc(%r14),%edi     ;*getfield poolSize
                  ││                                                  ; - com.google.re2j.Machine::alloc@1 (line 132)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  ││                                                  ; implicit exception: dispatches to 0x00007f1cb524131d
  0.04%    0.05%  ││    0x00007f1cb52404d3: test   %edi,%edi
                  ││    0x00007f1cb52404d5: jle    0x00007f1cb5240fd9  ;*ifle
                  ││                                                  ; - com.google.re2j.Machine::alloc@4 (line 132)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.04%    0.02%  ││    0x00007f1cb52404db: vmovd  %edi,%xmm2
  0.02%    0.05%  ││    0x00007f1cb52404df: mov    %r9,%rdi
  0.22%    0.17%  ││    0x00007f1cb52404e2: vmovd  %r8d,%xmm1
  0.04%    0.02%  ││    0x00007f1cb52404e7: mov    %r10,%r8
  0.04%    0.05%  ││    0x00007f1cb52404ea: mov    %r11d,%r9d
  0.07%    0.02%  ││    0x00007f1cb52404ed: mov    0x24(%r14),%r10d   ;*getfield pool
                  ││                                                  ; - com.google.re2j.Machine::alloc@18 (line 134)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.20%    0.15%  ││    0x00007f1cb52404f1: vmovd  %r10d,%xmm3
  0.03%    0.05%  ││    0x00007f1cb52404f6: vmovd  %xmm2,%ebp
  0.05%    0.03%  ││    0x00007f1cb52404fa: dec    %ebp               ;*isub
                  ││                                                  ; - com.google.re2j.Machine::alloc@13 (line 133)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.05%    0.05%  ││    0x00007f1cb52404fc: mov    %ebp,0xc(%r14)     ;*putfield poolSize
                  ││                                                  ; - com.google.re2j.Machine::alloc@14 (line 133)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.17%    0.25%  ││    0x00007f1cb5240500: vmovd  %xmm3,%r10d
  0.06%    0.06%  ││    0x00007f1cb5240505: mov    0xc(%r12,%r10,8),%r10d  ; implicit exception: dispatches to 0x00007f1cb5241331
  0.07%    0.07%  ││    0x00007f1cb524050a: cmp    %r10d,%ebp
                  ││    0x00007f1cb524050d: jae    0x00007f1cb5240e4d
  0.07%    0.09%  ││    0x00007f1cb5240513: vmovd  %xmm3,%r10d
  0.24%    0.22%  ││    0x00007f1cb5240518: lea    (%r12,%r10,8),%r11
  0.04%    0.06%  ││    0x00007f1cb524051c: vmovd  %xmm2,%r10d
  0.05%    0.04%  ││    0x00007f1cb5240521: mov    0xc(%r11,%r10,4),%r11d  ;*aaload
                  ││                                                  ; - com.google.re2j.Machine::alloc@25 (line 134)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.05%    0.02%  ││    0x00007f1cb5240526: mov    %ecx,0x10(%r12,%r11,8)  ;*putfield inst
                  ││                                                  ; - com.google.re2j.Machine::alloc@45 (line 138)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  ││                                                  ; implicit exception: dispatches to 0x00007f1cb5241341
  1.27%    1.60%  ││    0x00007f1cb524052b: lea    (%r12,%r11,8),%rdi  ;*aaload
                  ││                                                  ; - com.google.re2j.Machine::alloc@25 (line 134)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  ││    0x00007f1cb524052f: mov    %rdi,%r10
  0.00%    0.00%  ││    0x00007f1cb5240532: shr    $0x9,%r10
  0.01%    0.03%  ││    0x00007f1cb5240536: movabs $0x7f1cc5f78000,%r11
  0.41%    0.42%  ││    0x00007f1cb5240540: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                  ││                                                  ; - com.google.re2j.Machine::alloc@45 (line 138)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.59%    0.66%  ││    0x00007f1cb5240544: mov    %r9d,%r11d
                  ││    0x00007f1cb5240547: mov    %r8,%r10
  0.00%    0.00%  ││    0x00007f1cb524054a: vmovd  %xmm1,%r8d         ;*aload_3
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@44 (line 103)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.09%    0.09%  ││    0x00007f1cb524054f: mov    0x58(%rsp),%r14
  0.35%    0.34%  ││    0x00007f1cb5240554: mov    0xc(%r14),%ebp     ;*arraylength
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@45 (line 103)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  ││                                                  ; implicit exception: dispatches to 0x00007f1cb52412f1
           0.00%  ││    0x00007f1cb5240558: test   %ebp,%ebp
                  ││    0x00007f1cb524055a: jg     0x00007f1cb5241125  ;*ifle
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.01%    0.01%  ││    0x00007f1cb5240560: mov    %r8d,0xc(%rax)     ;*putfield size
                  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.05%    0.07%  ││    0x00007f1cb5240564: vmovd  %xmm0,%ecx
  0.31%    0.30%  ││    0x00007f1cb5240568: mov    0xc(%r12,%rcx,8),%ecx  ; implicit exception: dispatches to 0x00007f1cb5241301
                  ││    0x00007f1cb524056d: cmp    %ecx,%r11d
                  ││    0x00007f1cb5240570: jae    0x00007f1cb5240dbd
  0.00%           ││    0x00007f1cb5240576: mov    %rdi,%rcx
  0.07%    0.09%  ││    0x00007f1cb5240579: shr    $0x3,%rcx          ;*aastore
                  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.31%    0.34%  ││    0x00007f1cb524057d: vmovd  %xmm0,%esi
                  ││    0x00007f1cb5240581: lea    (%r12,%rsi,8),%r11  ;*getfield denseThreads
                  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
           0.01%  ││    0x00007f1cb5240585: lea    0x10(%r11,%rdx,1),%r11
  0.04%    0.08%  ││    0x00007f1cb524058a: mov    %ecx,(%r11)
  0.28%    0.36%  ││    0x00007f1cb524058d: shr    $0x9,%r11
                  ││    0x00007f1cb5240591: movabs $0x7f1cc5f78000,%r9
  0.00%           ││    0x00007f1cb524059b: mov    %r12b,(%r9,%r11,1)  ;*aastore
                  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.10%    0.13%  ││    0x00007f1cb524059f: xor    %r11d,%r11d
  0.30%    0.26%  ││╭   0x00007f1cb52405a2: jmp    0x00007f1cb5240610
  0.23%    0.22%  │↘│   0x00007f1cb52405a4: mov    %r10,0x18(%rsp)
  0.04%    0.01%  │ │   0x00007f1cb52405a9: mov    %r13,0x10(%rsp)
  0.03%    0.10%  │ │   0x00007f1cb52405ae: mov    %rax,0x8(%rsp)     ;*invokevirtual add
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.05%    0.07%  │ │   0x00007f1cb52405b3: mov    %r9,%rsi           ;*invokevirtual add
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.18%    0.24%  │ │   0x00007f1cb52405b6: mov    %rax,%rdx
  0.06%    0.06%  │ │   0x00007f1cb52405b9: mov    0x30(%rsp),%ecx
  0.06%    0.06%  │ │   0x00007f1cb52405bd: mov    0x58(%rsp),%r8
  0.06%    0.05%  │ │   0x00007f1cb52405c2: mov    0x54(%rsp),%r9d
  0.20%    0.23%  │ │   0x00007f1cb52405c7: mov    0xa0(%rsp),%r10
  0.05%    0.07%  │ │   0x00007f1cb52405cf: mov    %r10,(%rsp)
  0.03%    0.04%  │ │   0x00007f1cb52405d3: mov    %ecx,0x20(%rsp)
  0.09%    0.04%  │ │   0x00007f1cb52405d7: mov    %r8,0x28(%rsp)
  0.18%    0.21%  │ │   0x00007f1cb52405dc: mov    %r9d,0x24(%rsp)
  0.06%    0.06%  │ │   0x00007f1cb52405e1: xchg   %ax,%ax
  0.03%    0.05%  │ │   0x00007f1cb52405e3: callq  0x00007f1cb5046020  ; OopMap{[160]=Oop [8]=Oop [16]=Oop [24]=Oop [40]=Oop [88]=Oop off=904}
                  │ │                                                 ;*invokevirtual add
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                 ;   {optimized virtual_call}
                  │ │   0x00007f1cb52405e8: mov    %rax,%r11
  0.06%    0.08%  │ │   0x00007f1cb52405eb: mov    0x8(%rsp),%rax
  0.29%    0.33%  │ │   0x00007f1cb52405f0: mov    0xc(%rax),%r8d     ;*getfield size
                  │ │                                                 ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                  │ │                                                 ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.01%    0.00%  │ │   0x00007f1cb52405f4: mov    0x10(%rax),%rbx    ;*getfield pcsl
                  │ │                                                 ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                  │ │                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.04%    0.05%  │ │   0x00007f1cb52405f8: mov    0x20(%rax),%r9d    ;*getfield denseThreads
                  │ │                                                 ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                  │ │                                                 ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.19%    0.18%  │ │   0x00007f1cb52405fc: vmovd  %r9d,%xmm0
  0.15%    0.19%  │ │   0x00007f1cb5240601: mov    0x10(%rsp),%r13
           0.00%  │ │   0x00007f1cb5240606: mov    0x28(%rsp),%r14
  0.07%    0.06%  │ │   0x00007f1cb524060b: mov    0x18(%rsp),%r10    ;*getfield size
                  │ │                                                 ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                  │ │                                                 ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.19%    0.25%  │ ↘   0x00007f1cb5240610: mov    0x20(%r10),%ebp    ;*getfield argInst
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@41 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.09%    0.12%  │     0x00007f1cb5240614: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f1cb524120d
  0.08%    0.08%  │     0x00007f1cb5240619: cmp    $0xf8019992,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │     0x00007f1cb5240620: jne    0x00007f1cb5240929
  0.41%    0.39%  │     0x00007f1cb5240626: lea    (%r12,%rbp,8),%r9  ;*invokevirtual add
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.17%    0.15%  │     0x00007f1cb524062a: mov    0x18(%r9),%ecx     ;*getfield pc
                  │                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.11%    0.14%  │     0x00007f1cb524062e: cmp    $0x40,%ecx
                  │     0x00007f1cb5240631: jg     0x00007f1cb5240c15  ;*if_icmpgt
                  │                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                  │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.08%    0.07%  │     0x00007f1cb5240637: mov    $0x1,%edx
  0.29%    0.44%  │     0x00007f1cb524063c: shl    %cl,%rdx           ;*lshl
                  │                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                  │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.40%    0.50%  │     0x00007f1cb524063f: mov    %rdx,%r10
  0.32%    0.37%  │     0x00007f1cb5240642: and    %rbx,%r10          ;*land
                  │                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                  │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.16%    0.25%  │     0x00007f1cb5240645: test   %r10,%r10
                  │     0x00007f1cb5240648: jne    0x00007f1cb5240c59  ;*ifeq
                  │                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                  │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.16%    0.17%  │     0x00007f1cb524064e: cmp    $0x40,%ecx
                  │     0x00007f1cb5240651: jge    0x00007f1cb5240ca1  ;*if_icmpge
                  │                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                  │                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.08%    0.12%  │     0x00007f1cb5240657: mov    %r12b,0x18(%rax)   ;*putfield empty
                  │                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                  │                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.36%    0.37%  │     0x00007f1cb524065b: or     %rbx,%rdx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                  │                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.12%    0.08%  │     0x00007f1cb524065e: mov    %rdx,0x10(%rax)    ;*putfield pcsl
                  │                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                  │                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.14%    0.11%  │     0x00007f1cb5240662: mov    %r9,%rsi
  0.08%    0.06%  │     0x00007f1cb5240665: shr    $0x3,%rsi          ;*putfield inst
                  │                                                   ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │                                                   ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.32%    0.19%  │     0x00007f1cb5240669: test   %r11,%r11
                  │  ╭  0x00007f1cb524066c: jne    0x00007f1cb5240818  ;*ifnonnull
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@24 (line 98)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.14%    0.22%  │  │  0x00007f1cb5240672: mov    0xa0(%rsp),%r10
  0.14%    0.18%  │  │  0x00007f1cb524067a: mov    0xc(%r10),%edi     ;*getfield poolSize
                  │  │                                                ; - com.google.re2j.Machine::alloc@1 (line 132)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │  │                                                ; implicit exception: dispatches to 0x00007f1cb5241255
  0.04%    0.03%  │  │  0x00007f1cb524067e: test   %edi,%edi
  0.34%    0.28%  │  │  0x00007f1cb5240680: jle    0x00007f1cb5240b05  ;*ifle
                  │  │                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.16%    0.20%  │  │  0x00007f1cb5240686: mov    0x24(%r10),%r11d   ;*getfield pool
                  │  │                                                ; - com.google.re2j.Machine::alloc@18 (line 134)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.11%    0.23%  │  │  0x00007f1cb524068a: mov    %edi,%ebp
  0.11%    0.02%  │  │  0x00007f1cb524068c: dec    %ebp               ;*isub
                  │  │                                                ; - com.google.re2j.Machine::alloc@13 (line 133)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.35%    0.35%  │  │  0x00007f1cb524068e: mov    %ebp,0xc(%r10)     ;*putfield poolSize
                  │  │                                                ; - com.google.re2j.Machine::alloc@14 (line 133)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.16%    0.23%  │  │  0x00007f1cb5240692: mov    0xc(%r12,%r11,8),%ecx  ; implicit exception: dispatches to 0x00007f1cb5241269
  0.17%    0.17%  │  │  0x00007f1cb5240697: cmp    %ecx,%ebp
                  │  │  0x00007f1cb5240699: jae    0x00007f1cb5240959
  0.10%    0.04%  │  │  0x00007f1cb524069f: shl    $0x3,%r11
  0.31%    0.21%  │  │  0x00007f1cb52406a3: mov    0xc(%r11,%rdi,4),%ecx  ;*aaload
                  │  │                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.12%    0.25%  │  │  0x00007f1cb52406a8: mov    %esi,0x10(%r12,%rcx,8)  ;*putfield inst
                  │  │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │  │                                                ; implicit exception: dispatches to 0x00007f1cb5241279
  0.68%    0.56%  │  │  0x00007f1cb52406ad: lea    (%r12,%rcx,8),%r11  ;*aaload
                  │  │                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.08%    0.02%  │  │  0x00007f1cb52406b1: mov    %r11,%r9
  0.19%    0.09%  │  │  0x00007f1cb52406b4: shr    $0x9,%r9
  0.14%    0.18%  │  │  0x00007f1cb52406b8: movabs $0x7f1cc5f78000,%rcx
  0.29%    0.27%  │  │  0x00007f1cb52406c2: mov    %r12b,(%rcx,%r9,1)  ;*aload_3
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@44 (line 103)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.46%    0.42%  │  │  0x00007f1cb52406c6: mov    0xc(%r14),%r9d     ;*arraylength
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@45 (line 103)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │  │                                                ; implicit exception: dispatches to 0x00007f1cb5241229
  0.16%    0.05%  │  │  0x00007f1cb52406ca: test   %r9d,%r9d
                  │  │  0x00007f1cb52406cd: jg     0x00007f1cb5240ce5  ;*ifle
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.12%    0.10%  │  │  0x00007f1cb52406d3: mov    %r8d,%edi
  0.17%    0.18%  │  │  0x00007f1cb52406d6: inc    %edi               ;*iadd
                  │  │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 65)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.26%    0.26%  │  │  0x00007f1cb52406d8: mov    %edi,0xc(%rax)     ;*putfield size
                  │  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.12%    0.11%  │  │  0x00007f1cb52406db: vmovd  %xmm0,%ecx
  0.08%    0.18%  │  │  0x00007f1cb52406df: mov    0xc(%r12,%rcx,8),%ecx  ; implicit exception: dispatches to 0x00007f1cb5241239
  0.14%    0.21%  │  │  0x00007f1cb52406e4: cmp    %ecx,%r8d
                  │  │  0x00007f1cb52406e7: jae    0x00007f1cb52408f5
  0.32%    0.19%  │  │  0x00007f1cb52406ed: mov    %r11,%rcx
  0.16%    0.04%  │  │  0x00007f1cb52406f0: shr    $0x3,%rcx          ;*aastore
                  │  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.09%    0.11%  │  │  0x00007f1cb52406f4: vmovd  %xmm0,%esi
  0.24%    0.24%  │  │  0x00007f1cb52406f8: lea    (%r12,%rsi,8),%r11  ;*getfield denseThreads
                  │  │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.26%    0.26%  │  │  0x00007f1cb52406fc: lea    0x10(%r11,%r8,4),%r11
  0.16%    0.17%  │  │  0x00007f1cb5240701: mov    %ecx,(%r11)
  0.09%    0.07%  │  │  0x00007f1cb5240704: shr    $0x9,%r11
  0.20%    0.15%  │  │  0x00007f1cb5240708: movabs $0x7f1cc5f78000,%r8
  0.27%    0.30%  │  │  0x00007f1cb5240712: mov    %r12b,(%r8,%r11,1)  ;*getfield size
                  │  │                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.17%    0.25%  ↘  │  0x00007f1cb5240716: mov    0x20(%r13),%ebp    ;*getfield argInst
                     │                                                ; - com.google.re2j.Inst$AltInst::add@41 (line 193)
  0.09%    0.11%     │  0x00007f1cb524071a: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007f1cb524119d
  0.18%    0.18%     │  0x00007f1cb524071f: cmp    $0xf8019992,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                     │  0x00007f1cb5240726: jne    0x00007f1cb52408d1
  0.25%    0.32%     │  0x00007f1cb524072c: lea    (%r12,%rbp,8),%rbx  ;*invokevirtual add
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.16%    0.27%     │  0x00007f1cb5240730: mov    0x18(%rbx),%ecx    ;*getfield pc
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.10%    0.12%     │  0x00007f1cb5240733: cmp    $0x40,%ecx
                     │  0x00007f1cb5240736: jg     0x00007f1cb5240a4d  ;*if_icmpgt
                     │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.12%    0.20%     │  0x00007f1cb524073c: mov    $0x1,%r8d
  0.33%    0.37%     │  0x00007f1cb5240742: shl    %cl,%r8            ;*lshl
                     │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.39%    0.40%     │  0x00007f1cb5240745: mov    %r8,%r11
  0.30%    0.27%     │  0x00007f1cb5240748: and    %rdx,%r11          ;*land
                     │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.12%    0.18%     │  0x00007f1cb524074b: test   %r11,%r11
                     │  0x00007f1cb524074e: jne    0x00007f1cb5240a79  ;*ifeq
                     │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.14%    0.07%     │  0x00007f1cb5240754: cmp    $0x40,%ecx
                     │  0x00007f1cb5240757: jge    0x00007f1cb5240ab5  ;*if_icmpge
                     │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.17%    0.29%     │  0x00007f1cb524075d: mov    %r12b,0x18(%rax)   ;*putfield empty
                     │                                                ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.21%    0.28%     │  0x00007f1cb5240761: or     %rdx,%r8
  0.14%    0.14%     │  0x00007f1cb5240764: mov    %r8,0x10(%rax)     ;*putfield pcsl
                     │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.12%    0.10%     │  0x00007f1cb5240768: mov    0xc(%r10),%r11d    ;*getfield poolSize
                     │                                                ; - com.google.re2j.Machine::alloc@1 (line 132)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                     │                                                ; implicit exception: dispatches to 0x00007f1cb52411b9
  0.10%    0.25%     │  0x00007f1cb524076c: test   %r11d,%r11d
                     │  0x00007f1cb524076f: jle    0x00007f1cb5240995  ;*ifle
                     │                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.27%    0.34%     │  0x00007f1cb5240775: mov    0x24(%r10),%ecx    ;*getfield pool
                     │                                                ; - com.google.re2j.Machine::alloc@18 (line 134)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.19%    0.28%     │  0x00007f1cb5240779: mov    %r11d,%ebp
  0.10%    0.15%     │  0x00007f1cb524077c: dec    %ebp               ;*isub
                     │                                                ; - com.google.re2j.Machine::alloc@13 (line 133)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.10%    0.21%     │  0x00007f1cb524077e: mov    %ebp,0xc(%r10)     ;*putfield poolSize
                     │                                                ; - com.google.re2j.Machine::alloc@14 (line 133)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.29%    0.30%     │  0x00007f1cb5240782: mov    0xc(%r12,%rcx,8),%r10d  ; implicit exception: dispatches to 0x00007f1cb52411cd
  0.19%    0.12%     │  0x00007f1cb5240787: cmp    %r10d,%ebp
                     │  0x00007f1cb524078a: jae    0x00007f1cb5240878
  0.08%    0.07%     │  0x00007f1cb5240790: lea    (%r12,%rcx,8),%r10
  0.14%    0.22%     │  0x00007f1cb5240794: mov    0xc(%r10,%r11,4),%ebp  ;*aaload
                     │                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.28%    0.36%     │  0x00007f1cb5240799: test   %ebp,%ebp
                     │  0x00007f1cb524079b: je     0x00007f1cb524089d
  0.17%    0.24%     │  0x00007f1cb52407a1: lea    (%r12,%rbp,8),%r10
  0.10%    0.14%     │  0x00007f1cb52407a5: mov    %rbx,%r8
  0.16%    0.24%     │  0x00007f1cb52407a8: shr    $0x3,%r8
  0.33%    0.36%     │  0x00007f1cb52407ac: mov    %r8d,0x10(%r12,%rbp,8)
  0.20%    0.26%     │  0x00007f1cb52407b1: shr    $0x9,%r10
  0.06%    0.08%     │  0x00007f1cb52407b5: movabs $0x7f1cc5f78000,%r11
  0.19%    0.20%     │  0x00007f1cb52407bf: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                     │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.40%    0.42%     │  0x00007f1cb52407c3: test   %r9d,%r9d
                     │  0x00007f1cb52407c6: jg     0x00007f1cb5240ae1  ;*ifle
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.20%    0.26%     │  0x00007f1cb52407cc: mov    %edi,%r11d
  0.05%    0.12%     │  0x00007f1cb52407cf: inc    %r11d
  0.15%    0.07%     │  0x00007f1cb52407d2: mov    %r11d,0xc(%rax)    ;*putfield size
                     │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.35%    0.32%     │  0x00007f1cb52407d6: vmovd  %xmm0,%r10d
  0.19%    0.17%     │  0x00007f1cb52407db: mov    0xc(%r12,%r10,8),%r11d  ; implicit exception: dispatches to 0x00007f1cb52411dd
  0.06%    0.12%     │  0x00007f1cb52407e0: cmp    %r11d,%edi
                     │  0x00007f1cb52407e3: jae    0x00007f1cb52408b1  ;*aastore
                     │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.17%    0.11%     │  0x00007f1cb52407e9: shl    $0x3,%r10          ;*getfield denseThreads
                     │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.30%    0.28%     │  0x00007f1cb52407ed: lea    0x10(%r10,%rdi,4),%r10
  0.15%    0.19%     │  0x00007f1cb52407f2: mov    %ebp,(%r10)
  0.10%    0.16%     │  0x00007f1cb52407f5: shr    $0x9,%r10
  0.15%    0.09%     │  0x00007f1cb52407f9: movabs $0x7f1cc5f78000,%r11
  0.36%    0.27%     │  0x00007f1cb5240803: mov    %r12b,(%r11,%r10,1)  ;*if_icmpgt
                     │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
  0.18%    0.15%     │  0x00007f1cb5240807: xor    %eax,%eax
  0.08%    0.07%     │  0x00007f1cb5240809: add    $0x90,%rsp
  0.08%    0.17%     │  0x00007f1cb5240810: pop    %rbp
  0.25%    0.18%     │  0x00007f1cb5240811: test   %eax,0x1832f7e9(%rip)        # 0x00007f1ccd570000
                     │                                                ;   {poll_return}
  0.15%    0.21%     │  0x00007f1cb5240817: retq   
                     ↘  0x00007f1cb5240818: mov    %esi,0x10(%r11)
                        0x00007f1cb524081c: mov    %r11,%r10
                        0x00007f1cb524081f: shr    $0x9,%r10
                        0x00007f1cb5240823: movabs $0x7f1cc5f78000,%r9
                        0x00007f1cb524082d: mov    %r12b,(%r9,%r10,1)  ;*putfield inst
                                                                      ; - com.google.re2j.Inst$MatchInst::add@41 (line 101)
                                                                      ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                        0x00007f1cb5240831: mov    0xa0(%rsp),%r10
....................................................................................................
 32.46%   34.88%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 566 (891 bytes) 

                                                                                     ; - com.google.re2j.Machine::match@121 (line 201)
                                       0x00007f1cb525cad8: mov    $0x5,%r9d          ;*iload_1
                                                                                     ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                                                                                     ; - com.google.re2j.Machine::match@121 (line 201)
                                       0x00007f1cb525cade: cmp    $0xa,%ebx
                                       0x00007f1cb525cae1: je     0x00007f1cb525d0cd  ;*iload_0
                                                                                     ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                                                                                     ; - com.google.re2j.Machine::match@121 (line 201)
                                       0x00007f1cb525cae7: mov    %ebx,%ecx
                                       0x00007f1cb525cae9: add    $0xffffffbf,%ecx
           0.00%                       0x00007f1cb525caec: cmp    $0x1a,%ecx
                  ╭                    0x00007f1cb525caef: jb     0x00007f1cb525cb02  ;*if_icmple
                  │                                                                  ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │                                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                                  ; - com.google.re2j.Machine::match@121 (line 201)
                  │                    0x00007f1cb525caf1: mov    %ebx,%r10d
                  │                    0x00007f1cb525caf4: add    $0xffffff9f,%r10d
                  │                    0x00007f1cb525caf8: cmp    $0x1a,%r10d
                  │                    0x00007f1cb525cafc: jae    0x00007f1cb525d0d6  ;*iconst_1
                  │                                                                  ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │                                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                                  ; - com.google.re2j.Machine::match@121 (line 201)
  0.00%           ↘                    0x00007f1cb525cb02: or     $0x10,%r9d         ;*iload_2
                                                                                     ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                                     ; - com.google.re2j.Machine::match@121 (line 201)
                                       0x00007f1cb525cb06: mov    %r8d,0x30(%rsp)
  0.00%    0.01%                       0x00007f1cb525cb0b: mov    %r11d,0x2c(%rsp)
                                       0x00007f1cb525cb10: mov    0x44(%rsp),%r11d
  0.00%                                0x00007f1cb525cb15: and    $0x4,%r11d         ;*iand
                                                                                     ; - com.google.re2j.Machine::match@147 (line 208)
                                       0x00007f1cb525cb19: mov    %r11d,0x14(%rsp)
  0.00%                                0x00007f1cb525cb1e: mov    %r13,%r10
                                       0x00007f1cb525cb21: shl    $0x3,%r10          ;*getfield q1
                                                                                     ; - com.google.re2j.Machine::match@53 (line 188)
                                       0x00007f1cb525cb25: mov    %r10,0x50(%rsp)
                                       0x00007f1cb525cb2a: mov    %ebx,0x34(%rsp)
                                       0x00007f1cb525cb2e: xor    %eax,%eax
                                       0x00007f1cb525cb30: xor    %r10d,%r10d
                                       0x00007f1cb525cb33: mov    %r10d,0x58(%rsp)
                   ╭                   0x00007f1cb525cb38: jmpq   0x00007f1cb525cce9
           0.00%   │        ↗          0x00007f1cb525cb3d: or     $0xa,%r8d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@27 (line 180)
                   │        │                                                        ; - com.google.re2j.Machine::match@323 (line 241)
                   │╭       │          0x00007f1cb525cb41: jmpq   0x00007f1cb525cde5
                   ││      ↗│          0x00007f1cb525cb46: mov    $0x5,%r8d
                   ││╭     ││          0x00007f1cb525cb4c: jmpq   0x00007f1cb525cdcd
  0.09%    0.08%   │││     ││  ↗       0x00007f1cb525cb51: or     $0x20,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                   │││     ││  │                                                     ; - com.google.re2j.Machine::match@323 (line 241)
  0.04%    0.03%   │││     ││  │       0x00007f1cb525cb55: mov    %r8d,0x5c(%rsp)    ;*iload_2
                   │││     ││  │                                                     ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   │││     ││  │                                                     ; - com.google.re2j.Machine::match@323 (line 241)
  0.16%    0.17%   │││     ││  │↗      0x00007f1cb525cb5a: mov    0x48(%rsp),%r9
  0.13%    0.14%   │││     ││  ││      0x00007f1cb525cb5f: mov    0x10(%r9),%r8d     ;*getfield end
                   │││     ││  ││                                                    ; - com.google.re2j.MachineInput$UTF16Input::endPos@1 (line 221)
                   │││     ││  ││                                                    ; - com.google.re2j.Machine::match@345 (line 242)
  0.19%    0.18%   │││     ││  ││      0x00007f1cb525cb63: mov    0x58(%rsp),%ecx
  0.13%    0.09%   │││     ││  ││      0x00007f1cb525cb67: cmp    %r8d,%ecx
                   │││╭    ││  ││      0x00007f1cb525cb6a: je     0x00007f1cb525ce62  ;*if_icmpne
                   ││││    ││  ││                                                    ; - com.google.re2j.Machine::match@348 (line 242)
  0.17%    0.17%   ││││    ││  ││      0x00007f1cb525cb70: xor    %eax,%eax          ;*invokespecial step
                   ││││    ││  ││                                                    ; - com.google.re2j.Machine::match@356 (line 242)
  0.12%    0.15%   ││││    ││  ││  ↗   0x00007f1cb525cb72: mov    %rax,-0x8(%rsp)
  0.10%    0.09%   ││││    ││  ││  │   0x00007f1cb525cb77: mov    0x58(%rsp),%eax
  0.05%    0.09%   ││││    ││  ││  │   0x00007f1cb525cb7b: mov    %eax,0x1c(%rsp)
  0.13%    0.15%   ││││    ││  ││  │   0x00007f1cb525cb7f: mov    -0x8(%rsp),%rax
  0.26%    0.18%   ││││    ││  ││  │   0x00007f1cb525cb84: add    0x28(%rsp),%ecx    ;*iadd
                   ││││    ││  ││  │                                                 ; - com.google.re2j.Machine::match@337 (line 242)
  0.07%    0.07%   ││││    ││  ││  │   0x00007f1cb525cb88: mov    %ecx,0x58(%rsp)
  0.06%    0.16%   ││││    ││  ││  │   0x00007f1cb525cb8c: mov    0x38(%rsp),%rsi
  0.08%    0.05%   ││││    ││  ││  │   0x00007f1cb525cb91: mov    0x20(%rsp),%rdx
  0.10%    0.12%   ││││    ││  ││  │   0x00007f1cb525cb96: mov    0x50(%rsp),%rcx
  0.06%    0.07%   ││││    ││  ││  │   0x00007f1cb525cb9b: mov    0x1c(%rsp),%r8d
  0.07%    0.10%   ││││    ││  ││  │   0x00007f1cb525cba0: mov    0x58(%rsp),%r9d
  0.22%    0.11%   ││││    ││  ││  │   0x00007f1cb525cba5: mov    0x34(%rsp),%edi
  0.08%    0.11%   ││││    ││  ││  │   0x00007f1cb525cba9: mov    0x5c(%rsp),%r10d
  0.07%    0.09%   ││││    ││  ││  │   0x00007f1cb525cbae: mov    %r10d,(%rsp)
  0.10%    0.09%   ││││    ││  ││  │   0x00007f1cb525cbb2: mov    0x40(%rsp),%r11d
  0.14%    0.10%   ││││    ││  ││  │   0x00007f1cb525cbb7: mov    %r11d,0x8(%rsp)
  0.11%    0.07%   ││││    ││  ││  │   0x00007f1cb525cbbc: mov    %eax,0x10(%rsp)
  0.08%    0.09%   ││││    ││  ││  │   0x00007f1cb525cbc0: data16 xchg %ax,%ax
  0.10%    0.11%   ││││    ││  ││  │   0x00007f1cb525cbc3: callq  0x00007f1cb5046020  ; OopMap{[24]=NarrowOop [32]=Oop [56]=Oop [72]=Oop [80]=Oop off=680}
                   ││││    ││  ││  │                                                 ;*invokespecial step
                   ││││    ││  ││  │                                                 ; - com.google.re2j.Machine::match@356 (line 242)
                   ││││    ││  ││  │                                                 ;   {optimized virtual_call}
  0.33%    0.18%   ││││    ││  ││  │   0x00007f1cb525cbc8: mov    0x38(%rsp),%r10
  0.04%    0.01%   ││││    ││  ││  │   0x00007f1cb525cbcd: movzbl 0x10(%r10),%eax    ;*getfield matched
                   ││││    ││  ││  │                                                 ; - com.google.re2j.Machine::match@376 (line 246)
  0.02%    0.01%   ││││    ││  ││  │   0x00007f1cb525cbd2: mov    0x28(%rsp),%r8d
  0.30%    0.16%   ││││    ││  ││  │   0x00007f1cb525cbd7: test   %r8d,%r8d
                   ││││╭   ││  ││  │   0x00007f1cb525cbda: je     0x00007f1cb525ce80  ;*ifne
                   │││││   ││  ││  │                                                 ; - com.google.re2j.Machine::match@361 (line 243)
  0.00%            │││││   ││  ││  │   0x00007f1cb525cbe0: mov    0x28(%r10),%ebx    ;*getfield matchcap
                   │││││   ││  ││  │                                                 ; - com.google.re2j.Machine::match@368 (line 246)
  0.03%    0.01%   │││││   ││  ││  │   0x00007f1cb525cbe4: mov    0xc(%r12,%rbx,8),%ebp  ;*arraylength
                   │││││   ││  ││  │                                                 ; - com.google.re2j.Machine::match@371 (line 246)
                   │││││   ││  ││  │                                                 ; implicit exception: dispatches to 0x00007f1cb525dbfd
  0.06%    0.10%   │││││   ││  ││  │   0x00007f1cb525cbe9: test   %ebp,%ebp
                   │││││   ││  ││  │   0x00007f1cb525cbeb: jne    0x00007f1cb525d2e5  ;*ifne
                   │││││   ││  ││  │                                                 ; - com.google.re2j.Machine::match@372 (line 246)
  0.30%    0.18%   │││││   ││  ││  │   0x00007f1cb525cbf1: test   %eax,%eax
                   │││││   ││  ││  │   0x00007f1cb525cbf3: jne    0x00007f1cb525d3d5  ;*ifeq
                   │││││   ││  ││  │                                                 ; - com.google.re2j.Machine::match@379 (line 246)
                   │││││   ││  ││  │   0x00007f1cb525cbf9: mov    0x2c(%rsp),%r9d
  0.01%    0.02%   │││││   ││  ││  │   0x00007f1cb525cbfe: cmp    $0xffffffff,%r9d
                   │││││╭  ││  ││  │   0x00007f1cb525cc02: je     0x00007f1cb525ce6c  ;*if_icmpeq
                   ││││││  ││  ││  │                                                 ; - com.google.re2j.Machine::match@401 (line 254)
           0.00%   ││││││  ││  ││  │   0x00007f1cb525cc08: mov    0x48(%rsp),%r8
  0.38%    0.37%   ││││││  ││  ││  │   0x00007f1cb525cc0d: mov    0x10(%r8),%r11d    ;*getfield end
                   ││││││  ││  ││  │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                   ││││││  ││  ││  │                                                 ; - com.google.re2j.Machine::match@409 (line 255)
                   ││││││  ││  ││  │   0x00007f1cb525cc11: mov    0x30(%rsp),%r10d
  0.02%    0.02%   ││││││  ││  ││  │   0x00007f1cb525cc16: add    0x58(%rsp),%r10d
           0.00%   ││││││  ││  ││  │   0x00007f1cb525cc1b: add    0xc(%r8),%r10d     ;*iadd
                   ││││││  ││  ││  │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                   ││││││  ││  ││  │                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.33%    0.36%   ││││││  ││  ││  │   0x00007f1cb525cc1f: cmp    %r11d,%r10d
                   ││││││  ││  ││  │   0x00007f1cb525cc22: jge    0x00007f1cb525d04c  ;*if_icmpge
                   ││││││  ││  ││  │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                   ││││││  ││  ││  │                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.01%    0.00%   ││││││  ││  ││  │   0x00007f1cb525cc28: mov    0x14(%r8),%ebp     ;*getfield str
                   ││││││  ││  ││  │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                   ││││││  ││  ││  │                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.04%    0.03%   ││││││  ││  ││  │   0x00007f1cb525cc2c: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f1cb525dc0d
  0.01%    0.03%   ││││││  ││  ││  │   0x00007f1cb525cc31: cmp    $0xf80002da,%ecx   ;   {metadata(&apos;java/lang/String&apos;)}
                   ││││││  ││  ││  │   0x00007f1cb525cc37: jne    0x00007f1cb525d1bd
  0.32%    0.38%   ││││││  ││  ││  │   0x00007f1cb525cc3d: lea    (%r12,%rbp,8),%r9  ;*invokeinterface charAt
                   ││││││  ││  ││  │                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   ││││││  ││  ││  │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   ││││││  ││  ││  │                                                 ; - com.google.re2j.Machine::match@409 (line 255)
                   ││││││  ││  ││  │   0x00007f1cb525cc41: test   %r10d,%r10d
                   ││││││  ││  ││  │   0x00007f1cb525cc44: jl     0x00007f1cb525d331  ;*iflt
                   ││││││  ││  ││  │                                                 ; - java.lang.String::charAt@1 (line 657)
                   ││││││  ││  ││  │                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   ││││││  ││  ││  │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   ││││││  ││  ││  │                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.01%    0.03%   ││││││  ││  ││  │   0x00007f1cb525cc4a: mov    %r10d,%edi
  0.01%    0.03%   ││││││  ││  ││  │   0x00007f1cb525cc4d: mov    0xc(%r9),%edx      ;*getfield value
                   ││││││  ││  ││  │                                                 ; - java.lang.String::charAt@6 (line 657)
                   ││││││  ││  ││  │                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   ││││││  ││  ││  │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   ││││││  ││  ││  │                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.31%    0.42%   ││││││  ││  ││  │   0x00007f1cb525cc51: mov    0xc(%r12,%rdx,8),%ebp  ;*arraylength
                   ││││││  ││  ││  │                                                 ; - java.lang.String::charAt@9 (line 657)
                   ││││││  ││  ││  │                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   ││││││  ││  ││  │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   ││││││  ││  ││  │                                                 ; - com.google.re2j.Machine::match@409 (line 255)
                   ││││││  ││  ││  │                                                 ; implicit exception: dispatches to 0x00007f1cb525dc21
  0.57%    0.79%   ││││││  ││  ││  │   0x00007f1cb525cc56: cmp    %ebp,%r10d
                   ││││││  ││  ││  │   0x00007f1cb525cc59: jge    0x00007f1cb525d429  ;*if_icmplt
                   ││││││  ││  ││  │                                                 ; - java.lang.String::charAt@10 (line 657)
                   ││││││  ││  ││  │                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   ││││││  ││  ││  │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   ││││││  ││  ││  │                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.36%    0.43%   ││││││  ││  ││  │   0x00007f1cb525cc5f: cmp    %ebp,%r10d
                   ││││││  ││  ││  │   0x00007f1cb525cc62: jae    0x00007f1cb525d141
  0.12%    0.16%   ││││││  ││  ││  │   0x00007f1cb525cc68: lea    (%r12,%rdx,8),%r10
  0.03%    0.03%   ││││││  ││  ││  │   0x00007f1cb525cc6c: movzwl 0x10(%r10,%rdi,2),%ecx  ;*caload
                   ││││││  ││  ││  │                                                 ; - java.lang.String::charAt@27 (line 660)
                   ││││││  ││  ││  │                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   ││││││  ││  ││  │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   ││││││  ││  ││  │                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.00%    0.02%   ││││││  ││  ││  │   0x00007f1cb525cc72: cmp    $0xd800,%ecx
                   ││││││  ││  ││  │   0x00007f1cb525cc78: jge    0x00007f1cb525d495  ;*if_icmplt
                   ││││││  ││  ││  │                                                 ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   ││││││  ││  ││  │                                                 ; - java.lang.Character::codePointAt@9 (line 4867)
                   ││││││  ││  ││  │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   ││││││  ││  ││  │                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.32%    0.30%   ││││││  ││  ││  │   0x00007f1cb525cc7e: shl    $0x3,%ecx          ;*ishl
                   ││││││  ││  ││  │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                   ││││││  ││  ││  │                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.14%    0.14%   ││││││  ││  ││  │   0x00007f1cb525cc81: mov    %ecx,%r10d
  0.03%    0.02%   ││││││  ││  ││  │   0x00007f1cb525cc84: or     $0x1,%r10d
  0.24%    0.33%   ││││││  ││  ││  │   0x00007f1cb525cc88: and    $0x7,%ecx
  0.10%    0.11%   ││││││  ││  ││  │   0x00007f1cb525cc8b: sar    $0x3,%r10d         ;*ishr
                   ││││││  ││  ││  │                                                 ; - com.google.re2j.Machine::match@417 (line 256)
  0.24%    0.35%   ││││││  ││  ││  │   0x00007f1cb525cc8f: or     $0x1,%ecx          ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                   ││││││  ││  ││  │                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.04%    0.04%   ││││││  ││  ││  │   0x00007f1cb525cc92: mov    0x2c(%rsp),%r9d    ;*aload
                   ││││││  ││  ││  │                                                 ; - com.google.re2j.Machine::match@427 (line 259)
  0.01%            ││││││  ││  ││  │↗  0x00007f1cb525cc97: mov    %r8,0x48(%rsp)
  0.07%    0.06%   ││││││  ││  ││  ││  0x00007f1cb525cc9c: mov    %r9d,0x34(%rsp)    ; OopMap{r8=Oop rbx=NarrowOop [32]=Oop [56]=Oop [72]=Oop [80]=Oop off=897}
                   ││││││  ││  ││  ││                                                ;*goto
                   ││││││  ││  ││  ││                                                ; - com.google.re2j.Machine::match@439 (line 262)
  0.24%    0.29%   ││││││  ││  ││  ││  0x00007f1cb525cca1: test   %eax,0x18313359(%rip)        # 0x00007f1ccd570000
                   ││││││  ││  ││  ││                                                ;*goto
                   ││││││  ││  ││  ││                                                ; - com.google.re2j.Machine::match@439 (line 262)
                   ││││││  ││  ││  ││                                                ;   {poll}
  0.04%    0.06%   ││││││  ││  ││  ││  0x00007f1cb525cca7: mov    0x38(%rsp),%r11
  0.00%            ││││││  ││  ││  ││  0x00007f1cb525ccac: mov    0x14(%r11),%r11d   ;*getfield re2
                   ││││││  ││  ││  ││                                                ; - com.google.re2j.Machine::match@169 (line 216)
  0.04%    0.11%   ││││││  ││  ││  ││  0x00007f1cb525ccb0: vmovd  %r11d,%xmm3
  0.19%    0.28%   ││││││  ││  ││  ││  0x00007f1cb525ccb5: mov    0x50(%rsp),%r11
  0.04%    0.06%   ││││││  ││  ││  ││  0x00007f1cb525ccba: shr    $0x3,%r11
  0.00%    0.00%   ││││││  ││  ││  ││  0x00007f1cb525ccbe: mov    %r11d,0x18(%rsp)
  0.04%    0.05%   ││││││  ││  ││  ││  0x00007f1cb525ccc3: mov    0x5c(%rsp),%r9d
  0.24%    0.34%   ││││││  ││  ││  ││  0x00007f1cb525ccc8: mov    0x20(%rsp),%r11
  0.04%    0.07%   ││││││  ││  ││  ││  0x00007f1cb525cccd: mov    %r11,0x50(%rsp)
  0.00%            ││││││  ││  ││  ││  0x00007f1cb525ccd2: mov    0x30(%rsp),%r11d
  0.08%    0.05%   ││││││  ││  ││  ││  0x00007f1cb525ccd7: mov    %r11d,0x28(%rsp)
  0.28%    0.26%   ││││││  ││  ││  ││  0x00007f1cb525ccdc: mov    %ecx,0x30(%rsp)
  0.01%    0.05%   ││││││  ││  ││  ││  0x00007f1cb525cce0: mov    %r10d,0x2c(%rsp)
  0.00%            ││││││  ││  ││  ││  0x00007f1cb525cce5: vmovd  %ebx,%xmm2         ;*aload
                   ││││││  ││  ││  ││                                                ; - com.google.re2j.Machine::match@136 (line 207)
  0.04%    0.06%   ↘│││││  ││  ││  ││  0x00007f1cb525cce9: mov    0x18(%rsp),%r11d
  0.31%    0.26%    │││││  ││  ││  ││  0x00007f1cb525ccee: movzbl 0x18(%r12,%r11,8),%r11d  ; implicit exception: dispatches to 0x00007f1cb525dbad
  0.05%    0.04%    │││││  ││  ││  ││  0x00007f1cb525ccf4: test   %r11d,%r11d
                    │││││╭ ││  ││  ││  0x00007f1cb525ccf7: je     0x00007f1cb525ce4f  ;*ifeq
                    ││││││ ││  ││  ││                                                ; - com.google.re2j.Machine::match@141 (line 207)
  0.00%    0.00%    ││││││ ││  ││  ││  0x00007f1cb525ccfd: mov    0x14(%rsp),%ebx
  0.03%    0.07%    ││││││ ││  ││  ││  0x00007f1cb525cd01: test   %ebx,%ebx
                    ││││││ ││  ││  ││  0x00007f1cb525cd03: jne    0x00007f1cb525d515  ;*ifeq
                    ││││││ ││  ││  ││                                                ; - com.google.re2j.Machine::match@148 (line 208)
  0.22%    0.18%    ││││││ ││  ││  ││  0x00007f1cb525cd09: test   %eax,%eax
                    ││││││ ││  ││  ││  0x00007f1cb525cd0b: jne    0x00007f1cb525d575  ;*ifeq
                    ││││││ ││  ││  ││                                                ; - com.google.re2j.Machine::match@162 (line 212)
  0.02%    0.04%    ││││││ ││  ││  ││  0x00007f1cb525cd11: vmovd  %xmm3,%r10d
  0.00%    0.00%    ││││││ ││  ││  ││  0x00007f1cb525cd16: mov    0x24(%r12,%r10,8),%r11d  ;*getfield prefix
                    ││││││ ││  ││  ││                                                ; - com.google.re2j.Machine::match@172 (line 216)
                    ││││││ ││  ││  ││                                                ; implicit exception: dispatches to 0x00007f1cb525dc31
  0.07%    0.03%    ││││││ ││  ││  ││  0x00007f1cb525cd1b: mov    0xc(%r12,%r11,8),%r10d  ;*getfield value
                    ││││││ ││  ││  ││                                                ; - java.lang.String::isEmpty@1 (line 635)
                    ││││││ ││  ││  ││                                                ; - com.google.re2j.Machine::match@175 (line 216)
                    ││││││ ││  ││  ││                                                ; implicit exception: dispatches to 0x00007f1cb525dc41
  0.20%    0.28%    ││││││ ││  ││  ││  0x00007f1cb525cd20: mov    0xc(%r12,%r10,8),%ebp  ;*arraylength
                    ││││││ ││  ││  ││                                                ; - java.lang.String::isEmpty@4 (line 635)
                    ││││││ ││  ││  ││                                                ; - com.google.re2j.Machine::match@175 (line 216)
                    ││││││ ││  ││  ││                                                ; implicit exception: dispatches to 0x00007f1cb525dc51
  0.28%    0.43%    ││││││ ││  ││  ││  0x00007f1cb525cd25: test   %ebp,%ebp
                    ││││││ ││  ││  ││  0x00007f1cb525cd27: jne    0x00007f1cb525d4f5  ;*aload_0
                    ││││││ ││  ││  ││                                                ; - com.google.re2j.Machine::match@267 (line 233)
  0.24%    0.27%    ││││││ ││  ││↗ ││  0x00007f1cb525cd2d: test   %eax,%eax
                    ││││││ ││  │││ ││  0x00007f1cb525cd2f: jne    0x00007f1cb525d242  ;*ifne
                    ││││││ ││  │││ ││                                                ; - com.google.re2j.Machine::match@271 (line 233)
  0.01%    0.01%    ││││││ ││  │││ ││  0x00007f1cb525cd35: mov    0x58(%rsp),%r11d
  0.11%    0.12%    ││││││ ││  │││ ││  0x00007f1cb525cd3a: test   %r11d,%r11d
                    ││││││╭││  │││ ││  0x00007f1cb525cd3d: je     0x00007f1cb525ce58  ;*ifeq
                    │││││││││  │││ ││                                                ; - com.google.re2j.Machine::match@275 (line 233)
  0.04%    0.04%    │││││││││  │││ ││  0x00007f1cb525cd43: mov    0x40(%rsp),%r8d
  0.22%    0.18%    │││││││││  │││ ││  0x00007f1cb525cd48: test   %r8d,%r8d
                    │││││││││  │││ ││  0x00007f1cb525cd4b: jne    0x00007f1cb525d28d  ;*aload_0
                    │││││││││  │││ ││                                                ; - com.google.re2j.Machine::match@282 (line 236)
  0.01%    0.01%    │││││││││  │││↗││  0x00007f1cb525cd51: vmovd  %xmm2,%r10d
  0.07%    0.09%    │││││││││  ││││││  0x00007f1cb525cd56: mov    0xc(%r12,%r10,8),%ebp  ;*arraylength
                    │││││││││  ││││││                                                ; - com.google.re2j.Machine::match@286 (line 236)
                    │││││││││  ││││││                                                ; implicit exception: dispatches to 0x00007f1cb525dbbd
  0.04%    0.07%    │││││││││  ││││││  0x00007f1cb525cd5b: test   %ebp,%ebp
                    │││││││││  ││││││  0x00007f1cb525cd5d: jg     0x00007f1cb525d3b1  ;*ifle
                    │││││││││  ││││││                                                ; - com.google.re2j.Machine::match@287 (line 236)
  0.21%    0.16%    │││││││││  ││││││  0x00007f1cb525cd63: mov    0x38(%rsp),%rdx
  0.00%    0.04%    │││││││││  ││││││  0x00007f1cb525cd68: mov    0x18(%rdx),%edi    ;*getfield prog
                    │││││││││  ││││││                                                ; - com.google.re2j.Machine::match@298 (line 239)
  0.08%    0.10%    │││││││││  ││││││  0x00007f1cb525cd6b: mov    0x1c(%r12,%rdi,8),%ebp  ;*getfield startInst
                    │││││││││  ││││││                                                ; - com.google.re2j.Machine::match@301 (line 239)
                    │││││││││  ││││││                                                ; implicit exception: dispatches to 0x00007f1cb525dbcd
  0.04%    0.03%    │││││││││  ││││││  0x00007f1cb525cd70: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f1cb525dbdd
  0.29%    0.17%    │││││││││  ││││││  0x00007f1cb525cd75: cmp    $0xf8019843,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$AltInst&apos;)}
                    │││││││││  ││││││  0x00007f1cb525cd7b: jne    0x00007f1cb525d0f6  ;*invokevirtual add
                    │││││││││  ││││││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.05%    0.06%    │││││││││  ││││││  0x00007f1cb525cd81: mov    %ebx,0x14(%rsp)
  0.09%    0.05%    │││││││││  ││││││  0x00007f1cb525cd85: mov    %r8d,0x40(%rsp)    ;*ifle
                    │││││││││  ││││││                                                ; - com.google.re2j.Machine::match@287 (line 236)
  0.01%    0.03%    │││││││││  ││││││  0x00007f1cb525cd8a: lea    (%r12,%rbp,8),%rsi  ;*invokevirtual add
                    │││││││││  ││││││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.17%    0.16%    │││││││││  ││││││  0x00007f1cb525cd8e: mov    0x18(%rsp),%r11d
  0.07%    0.05%    │││││││││  ││││││  0x00007f1cb525cd93: shl    $0x3,%r11          ;*aload
                    │││││││││  ││││││                                                ; - com.google.re2j.Machine::match@136 (line 207)
  0.05%    0.03%    │││││││││  ││││││  0x00007f1cb525cd97: mov    %r11,0x20(%rsp)
  0.01%    0.01%    │││││││││  ││││││  0x00007f1cb525cd9c: mov    %r10,%r8
  0.21%    0.16%    │││││││││  ││││││  0x00007f1cb525cd9f: shl    $0x3,%r8           ;*getfield matchcap
                    │││││││││  ││││││                                                ; - com.google.re2j.Machine::match@283 (line 236)
  0.05%    0.05%    │││││││││  ││││││  0x00007f1cb525cda3: mov    %r11,%rdx
  0.08%    0.02%    │││││││││  ││││││  0x00007f1cb525cda6: mov    0x58(%rsp),%ecx
  0.03%    0.01%    │││││││││  ││││││  0x00007f1cb525cdaa: xor    %edi,%edi
  0.20%    0.19%    │││││││││  ││││││  0x00007f1cb525cdac: mov    0x38(%rsp),%r10
  0.07%    0.06%    │││││││││  ││││││  0x00007f1cb525cdb1: mov    %r10,(%rsp)
  0.06%    0.02%    │││││││││  ││││││  0x00007f1cb525cdb5: xchg   %ax,%ax
  0.01%    0.03%    │││││││││  ││││││  0x00007f1cb525cdb7: callq  0x00007f1cb5046020  ; OopMap{[24]=NarrowOop [32]=Oop [56]=Oop [72]=Oop [80]=Oop off=1180}
                    │││││││││  ││││││                                                ;*invokevirtual add
                    │││││││││  ││││││                                                ; - com.google.re2j.Machine::match@315 (line 239)
                    │││││││││  ││││││                                                ;   {optimized virtual_call}
  0.07%    0.09%    │││││││││  ││││││  0x00007f1cb525cdbc: mov    0x34(%rsp),%r10d
  0.20%    0.27%    │││││││││  ││││││  0x00007f1cb525cdc1: test   %r10d,%r10d
                    │││││││╰│  ││││││  0x00007f1cb525cdc4: jl     0x00007f1cb525cb46  ;*ifge
                    │││││││ │  ││││││                                                ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                    │││││││ │  ││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.07%    0.07%    │││││││ │  ││││││  0x00007f1cb525cdca: xor    %r8d,%r8d          ;*iload_0
                    │││││││ │  ││││││                                                ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                    │││││││ │  ││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.07%    0.14%    │↘│││││ │  ││││││  0x00007f1cb525cdcd: cmp    $0xa,%r10d
                    │ │││││ │  ││││││  0x00007f1cb525cdd1: je     0x00007f1cb525d059  ;*iload_1
                    │ │││││ │  ││││││                                                ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                    │ │││││ │  ││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.08%    0.09%    │ │││││ │  ││││││  0x00007f1cb525cdd7: mov    0x2c(%rsp),%r11d
  0.10%    0.11%    │ │││││ │  ││││││  0x00007f1cb525cddc: test   %r11d,%r11d
                    │ │││││ ╰  ││││││  0x00007f1cb525cddf: jl     0x00007f1cb525cb3d  ;*iload_1
                    │ │││││    ││││││                                                ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                    │ │││││    ││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.08%    0.08%    ↘ │││││    ││││││  0x00007f1cb525cde5: cmp    $0xa,%r11d
                      │││││    ││││││  0x00007f1cb525cde9: je     0x00007f1cb525d062  ;*iload_0
                      │││││    ││││││                                                ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                      │││││    ││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.10%    0.16%      │││││    ││││││  0x00007f1cb525cdef: mov    0x34(%rsp),%r9d
  0.10%    0.12%      │││││    ││││││  0x00007f1cb525cdf4: add    $0xffffffbf,%r9d
  0.11%    0.21%      │││││    ││││││  0x00007f1cb525cdf8: cmp    $0x1a,%r9d
                      │││││  ╭ ││││││  0x00007f1cb525cdfc: jb     0x00007f1cb525ce0e  ;*if_icmple
                      │││││  │ ││││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                      │││││  │ ││││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                      │││││  │ ││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.05%    0.08%      │││││  │ ││││││  0x00007f1cb525cdfe: mov    0x34(%rsp),%ecx
  0.11%    0.08%      │││││  │ ││││││  0x00007f1cb525ce02: add    $0xffffff9f,%ecx
  0.09%    0.07%      │││││  │ ││││││  0x00007f1cb525ce05: cmp    $0x1a,%ecx
                      │││││  │ ││││││  0x00007f1cb525ce08: jae    0x00007f1cb525d06b  ;*iconst_1
                      │││││  │ ││││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                      │││││  │ ││││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                      │││││  │ ││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.14%    0.15%      │││││  ↘ ││││││  0x00007f1cb525ce0e: mov    $0x1,%ebp          ;*ireturn
                      │││││    ││││││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                      │││││    ││││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                      │││││    ││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.06%    0.03%      │││││    ││││││  0x00007f1cb525ce13: mov    0x2c(%rsp),%r9d
  0.04%    0.10%      │││││    ││││││  0x00007f1cb525ce18: add    $0xffffffbf,%r9d
  0.06%    0.08%      │││││    ││││││  0x00007f1cb525ce1c: cmp    $0x1a,%r9d
                      │││││   ╭││││││  0x00007f1cb525ce20: jb     0x00007f1cb525ce32  ;*if_icmple
                      │││││   │││││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                      │││││   │││││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                      │││││   │││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.16%    0.13%      │││││   │││││││  0x00007f1cb525ce22: mov    0x2c(%rsp),%ecx
  0.10%    0.09%      │││││   │││││││  0x00007f1cb525ce26: add    $0xffffff9f,%ecx
  0.08%    0.09%      │││││   │││││││  0x00007f1cb525ce29: cmp    $0x1a,%ecx
                      │││││   │││││││  0x00007f1cb525ce2c: jae    0x00007f1cb525d08f  ;*iconst_1
                      │││││   │││││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                      │││││   │││││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                      │││││   │││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.10%    0.15%      │││││   ↘││││││  0x00007f1cb525ce32: mov    $0x1,%r9d          ;*ireturn
                      │││││    ││││││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                      │││││    ││││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                      │││││    ││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.13%    0.19%      │││││    ││││││  0x00007f1cb525ce38: cmp    %r9d,%ebp
                      │││││    ╰│││││  0x00007f1cb525ce3b: je     0x00007f1cb525cb51  ;*if_icmpeq
                      │││││     │││││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                      │││││     │││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.05%    0.04%      │││││     │││││  0x00007f1cb525ce41: or     $0x10,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                      │││││     │││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.01%    0.04%      │││││     │││││  0x00007f1cb525ce45: mov    %r8d,0x5c(%rsp)
  0.06%    0.04%      │││││     ╰││││  0x00007f1cb525ce4a: jmpq   0x00007f1cb525cb5a
                      │││↘│      ││││  0x00007f1cb525ce4f: mov    0x14(%rsp),%ebx
  0.02%    0.02%      │││ │      ╰│││  0x00007f1cb525ce53: jmpq   0x00007f1cb525cd2d
                      │││ ↘       │││  0x00007f1cb525ce58: mov    0x40(%rsp),%r8d
                      │││         ╰││  0x00007f1cb525ce5d: jmpq   0x00007f1cb525cd51
                      ↘││          ││  0x00007f1cb525ce62: mov    $0x1,%eax
           0.00%       ││          ╰│  0x00007f1cb525ce67: jmpq   0x00007f1cb525cb72
                       │↘           │  0x00007f1cb525ce6c: mov    0x30(%rsp),%ecx
                       │            │  0x00007f1cb525ce70: mov    $0xffffffff,%r10d
                       │            │  0x00007f1cb525ce76: mov    0x48(%rsp),%r8
                       │            ╰  0x00007f1cb525ce7b: jmpq   0x00007f1cb525cc97
                       ↘               0x00007f1cb525ce80: mov    0x50(%rsp),%r10
                                       0x00007f1cb525ce85: mov    %r10,0x18(%rsp)
                                       0x00007f1cb525ce8a: mov    0xc(%r10),%ebx     ;*getfield size
                                                                                     ; - com.google.re2j.Machine::freeQueue@1 (line 148)
                                                                                     ; - com.google.re2j.Machine::freeQueue@3 (line 144)
                                                                                     ; - com.google.re2j.Machine::match@445 (line 263)
....................................................................................................
 15.05%   16.04%  <total for region 3>

....[Hottest Regions]...............................................................................
 40.47%   38.79%         C2, level 4  com.google.re2j.Machine::step, version 530 (679 bytes) 
 32.46%   34.88%         C2, level 4  com.google.re2j.Inst$AltInst::add, version 527 (1006 bytes) 
 15.05%   16.04%         C2, level 4  com.google.re2j.Machine::match, version 566 (891 bytes) 
  6.61%    6.40%         C2, level 4  com.google.re2j.Inst$AltInst::add, version 527 (133 bytes) 
  1.06%    1.06%   [kernel.kallsyms]  [unknown] (6 bytes) 
  0.52%    0.48%         C2, level 4  com.google.re2j.Machine::match, version 566 (114 bytes) 
  0.50%    0.07%         C2, level 4  com.google.re2j.Machine::init, version 571 (199 bytes) 
  0.33%    0.07%         C2, level 4  com.google.re2j.Machine::init, version 571 (67 bytes) 
  0.15%    0.04%         C2, level 4  com.google.re2j.Machine::init, version 571 (78 bytes) 
  0.13%    0.02%         C2, level 4  com.google.re2j.Machine::init, version 571 (39 bytes) 
  0.10%    0.02%   [kernel.kallsyms]  [unknown] (101 bytes) 
  0.10%    0.03%         C2, level 4  com.google.re2j.RE2::match, version 579 (30 bytes) 
  0.06%            [kernel.kallsyms]  [unknown] (37 bytes) 
  0.06%    0.02%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.06%            [kernel.kallsyms]  [unknown] (0 bytes) 
  0.06%    0.03%         C2, level 4  com.google.re2j.RE2::match, version 579 (0 bytes) 
  0.05%    0.01%   [kernel.kallsyms]  [unknown] (62 bytes) 
  0.05%                  C2, level 4  com.google.re2j.Machine::init, version 571 (58 bytes) 
  0.04%    0.06%         C2, level 4  com.google.re2j.RE2::match, version 579 (12 bytes) 
  0.04%    0.00%   [kernel.kallsyms]  [unknown] (26 bytes) 
  2.11%    1.96%  <...other 447 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 40.48%   38.80%         C2, level 4  com.google.re2j.Machine::step, version 530 
 39.07%   41.29%         C2, level 4  com.google.re2j.Inst$AltInst::add, version 527 
 15.64%   16.58%         C2, level 4  com.google.re2j.Machine::match, version 566 
  2.17%    1.83%   [kernel.kallsyms]  [unknown] 
  1.18%    0.20%         C2, level 4  com.google.re2j.Machine::init, version 571 
  0.40%    0.19%         C2, level 4  com.google.re2j.RE2::match, version 579 
  0.10%    0.06%         C2, level 4  java.util.Collections::shuffle, version 585 
  0.07%    0.00%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 634 
  0.05%    0.03%      hsdis-amd64.so  [unknown] 
  0.04%    0.03%           libjvm.so  GenericTaskQueueSet<OverflowTaskQueue<StarTask, (MemoryType)1, 131072u>, (MemoryType)1>::steal_best_of_2 
  0.04%    0.05%           libjvm.so  PSPromotionManager::copy_to_survivor_space<false> 
  0.04%    0.00%              [vdso]  __vdso_clock_gettime 
  0.03%    0.04%        libc-2.26.so  _IO_fwrite 
  0.03%                       [vdso]  [unknown] 
  0.02%    0.05%           libjvm.so  fileStream::write 
  0.02%    0.03%           libjvm.so  xmlTextStream::write 
  0.02%    0.04%           libjvm.so  outputStream::update_position 
  0.02%    0.07%        libc-2.26.so  vfprintf 
  0.01%    0.00%           libjvm.so  TaskQueueSetSuper::randomParkAndMiller 
  0.01%    0.00%           libjvm.so  defaultStream::hold 
  0.55%    0.38%  <...other 87 warm methods...>
....................................................................................................
100.00%   99.70%  <totals>

....[Distribution by Source]........................................................................
 96.95%   97.14%         C2, level 4
  2.17%    1.83%   [kernel.kallsyms]
  0.47%    0.60%           libjvm.so
  0.15%    0.26%        libc-2.26.so
  0.10%    0.06%         interpreter
  0.07%    0.00%              [vdso]
  0.05%    0.03%      hsdis-amd64.so
  0.03%    0.04%  libpthread-2.26.so
  0.01%               perf-21725.map
  0.01%    0.02%         C1, level 3
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                 Mode  Cnt      Score    Error  Units
Re2jRegex.testExp2       thrpt   20  12878.508 ± 61.750  ops/s
Re2jRegex.testExp2:·asm  thrpt             NaN             ---
