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
# Warmup Iteration   1: 8871.017 ops/s
# Warmup Iteration   2: 14010.551 ops/s
# Warmup Iteration   3: 14666.032 ops/s
# Warmup Iteration   4: 14439.745 ops/s
# Warmup Iteration   5: 14523.202 ops/s
# Warmup Iteration   6: 14396.427 ops/s
# Warmup Iteration   7: 14418.004 ops/s
# Warmup Iteration   8: 14836.755 ops/s
# Warmup Iteration   9: 14459.140 ops/s
# Warmup Iteration  10: 13884.890 ops/s
# Warmup Iteration  11: 14558.633 ops/s
# Warmup Iteration  12: 14807.208 ops/s
# Warmup Iteration  13: 14713.449 ops/s
# Warmup Iteration  14: 14654.582 ops/s
# Warmup Iteration  15: 14808.640 ops/s
# Warmup Iteration  16: 14721.064 ops/s
# Warmup Iteration  17: 14149.783 ops/s
# Warmup Iteration  18: 14373.826 ops/s
# Warmup Iteration  19: 14685.631 ops/s
# Warmup Iteration  20: 14804.111 ops/s
Iteration   1: 14653.339 ops/s
Iteration   2: 14624.782 ops/s
Iteration   3: 14610.497 ops/s
Iteration   4: 14430.296 ops/s
Iteration   5: 14510.939 ops/s
Iteration   6: 14654.921 ops/s
Iteration   7: 14577.926 ops/s
Iteration   8: 14634.424 ops/s
Iteration   9: 14598.419 ops/s
Iteration  10: 14623.462 ops/s
Iteration  11: 14659.056 ops/s
Iteration  12: 14711.479 ops/s
Iteration  13: 14681.627 ops/s
Iteration  14: 14563.819 ops/s
Iteration  15: 14707.584 ops/s
Iteration  16: 14595.157 ops/s
Iteration  17: 14620.286 ops/s
Iteration  18: 14687.362 ops/s
Iteration  19: 14606.180 ops/s
Iteration  20: 14695.662 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  14622.361 ±(99.9%) 59.184 ops/s [Average]
  (min, avg, max) = (14430.296, 14622.361, 14711.479), stdev = 68.156
  CI (99.9%): [14563.177, 14681.545] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2:·asm":
PrintAssembly processed: 203775 total address lines.
Perf output processed (skipped 22.931 seconds):
 Column 1: cycles (20541 events)
 Column 2: instructions (20528 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 518 (674 bytes) 

                             # parm6:    [sp+0x78]   = int
                             # parm7:    [sp+0x80]   = boolean
                             0x00007fa089232400: mov    0x8(%rsi),%r10d
                             0x00007fa089232404: shl    $0x3,%r10
                             0x00007fa089232408: cmp    %r10,%rax
                             0x00007fa08923240b: jne    0x00007fa089045e20  ;   {runtime_call}
                             0x00007fa089232411: data16 xchg %ax,%ax
                             0x00007fa089232414: nopl   0x0(%rax,%rax,1)
                             0x00007fa08923241c: data16 data16 xchg %ax,%ax
                           [Verified Entry Point]
  0.13%    0.17%             0x00007fa089232420: mov    %eax,-0x14000(%rsp)
  0.23%    0.27%             0x00007fa089232427: push   %rbp
  0.06%    0.05%             0x00007fa089232428: sub    $0x60,%rsp         ;*synchronization entry
                                                                           ; - com.google.re2j.Machine::step@-1 (line 276)
  0.14%    0.16%             0x00007fa08923242c: mov    %edi,0x18(%rsp)
  0.18%    0.24%             0x00007fa089232430: mov    %r9d,0x14(%rsp)
  0.09%    0.08%             0x00007fa089232435: mov    %r8d,0x10(%rsp)
  0.11%    0.09%             0x00007fa08923243a: mov    %rcx,0x8(%rsp)
  0.06%    0.07%             0x00007fa08923243f: vmovq  %rdx,%xmm0
  0.18%    0.20%             0x00007fa089232444: vmovq  %rsi,%xmm1
  0.04%    0.05%             0x00007fa089232449: mov    0x14(%rsi),%r10d   ;*getfield re2
                                                                           ; - com.google.re2j.Machine::step@1 (line 276)
  0.12%    0.09%             0x00007fa08923244d: movzbl 0x18(%r12,%r10,8),%r11d  ;*getfield longest
                                                                           ; - com.google.re2j.Machine::step@4 (line 276)
                                                                           ; implicit exception: dispatches to 0x00007fa089232fed
  0.04%    0.08%             0x00007fa089232453: vmovd  %r11d,%xmm3
  0.13%    0.18%             0x00007fa089232458: mov    0xc(%rdx),%ecx     ;*getfield size
                                                                           ; - com.google.re2j.Machine::step@15 (line 277)
                                                                           ; implicit exception: dispatches to 0x00007fa089232ffd
  0.04%    0.08%             0x00007fa08923245b: test   %ecx,%ecx
                  ╭          0x00007fa08923245d: jle    0x00007fa0892325ae  ;*if_icmpge
                  │                                                        ; - com.google.re2j.Machine::step@18 (line 277)
  0.14%    0.06%  │          0x00007fa089232463: test   %r11d,%r11d
                  │          0x00007fa089232466: jne    0x00007fa089232b61
  0.10%    0.08%  │          0x00007fa08923246c: xor    %r10d,%r10d
  0.24%    0.19%  │╭         0x00007fa08923246f: jmp    0x00007fa089232487
  1.52%    1.14%  ││    ↗    0x00007fa089232471: mov    %r10d,%ecx
  0.02%    0.06%  ││    │    0x00007fa089232474: mov    %r11,0x8(%rsp)
  0.10%    0.09%  ││    │    0x00007fa089232479: mov    %ebx,0x78(%rsp)
  0.02%    0.05%  ││    │    0x00007fa08923247d: mov    %edi,0x80(%rsp)
  1.54%    0.96%  ││    │    0x00007fa089232484: mov    %edx,%r10d         ;*getfield size
                  ││    │                                                  ; - com.google.re2j.Machine::step@15 (line 277)
  0.10%    0.15%  │↘    │    0x00007fa089232487: vmovq  %xmm0,%r11
  0.26%    0.16%  │     │    0x00007fa08923248c: mov    0x20(%r11),%r8d    ;*getfield denseThreads
                  │     │                                                  ; - com.google.re2j.Machine::step@22 (line 278)
  0.10%    0.11%  │     │    0x00007fa089232490: mov    0xc(%r12,%r8,8),%r9d  ; implicit exception: dispatches to 0x00007fa089232fa9
  1.66%    1.03%  │     │    0x00007fa089232495: cmp    %r9d,%r10d
                  │     │    0x00007fa089232498: jae    0x00007fa0892328e9
  0.15%    0.13%  │     │    0x00007fa08923249e: lea    (%r12,%r8,8),%r11
  0.22%    0.16%  │     │    0x00007fa0892324a2: mov    0x10(%r11,%r10,4),%r8d  ;*aaload
                  │     │                                                  ; - com.google.re2j.Machine::step@27 (line 278)
  0.13%    0.13%  │     │    0x00007fa0892324a7: mov    0x10(%r12,%r8,8),%edi  ;*getfield inst
                  │     │                                                  ; - com.google.re2j.Machine::step@78 (line 283)
                  │     │                                                  ; implicit exception: dispatches to 0x00007fa089232fbd
  3.14%    2.34%  │     │    0x00007fa0892324ac: mov    0xc(%r12,%rdi,8),%eax  ; implicit exception: dispatches to 0x00007fa089232fcd
  6.10%    7.04%  │     │    0x00007fa0892324b1: mov    0xc(%r12,%r8,8),%r14d  ;*getfield cap
                  │     │                                                  ; - com.google.re2j.Machine::step@106 (line 289)
  0.14%    0.14%  │     │    0x00007fa0892324b6: vmovq  %xmm1,%r11
  0.00%    0.00%  │     │    0x00007fa0892324bb: mov    0xc(%r11),%r9d     ;*getfield poolSize
                  │     │                                                  ; - com.google.re2j.Machine::free@1 (line 167)
                  │     │                                                  ; - com.google.re2j.Machine::step@226 (line 303)
  0.36%    0.16%  │     │    0x00007fa0892324bf: mov    0x24(%r11),%r11d   ;*getfield pool
                  │     │                                                  ; - com.google.re2j.Machine::free@5 (line 167)
                  │     │                                                  ; - com.google.re2j.Machine::step@226 (line 303)
  1.73%    1.42%  │     │    0x00007fa0892324c3: mov    %r10d,%edx
  0.09%    0.09%  │     │    0x00007fa0892324c6: inc    %edx               ;*iadd
                  │     │                                                  ; - com.google.re2j.Machine::step@173 (line 295)
  0.00%    0.02%  │     │    0x00007fa0892324c8: lea    (%r12,%r8,8),%rsi  ;*aaload
                  │     │                                                  ; - com.google.re2j.Machine::step@27 (line 278)
  0.26%    0.37%  │     │    0x00007fa0892324cc: cmp    $0x6,%eax
                  │ ╭   │    0x00007fa0892324cf: je     0x00007fa0892326c7  ;*if_icmpne
                  │ │   │                                                  ; - com.google.re2j.Machine::step@90 (line 285)
  1.55%    2.04%  │ │   │    0x00007fa0892324d5: mov    0x8(%r12,%rdi,8),%ebx
  0.07%    0.10%  │ │   │    0x00007fa0892324da: cmp    $0xf8019993,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │ │   │    0x00007fa0892324e0: jne    0x00007fa089232931
  0.09%    0.12%  │ │   │    0x00007fa0892324e6: shl    $0x3,%rdi          ;*invokevirtual matchRune
                  │ │   │                                                  ; - com.google.re2j.Machine::step@189 (line 299)
  0.22%    0.35%  │ │   │    0x00007fa0892324ea: mov    0xc(%rdi),%ebp     ;*getfield op
                  │ │   │                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@1 (line 134)
                  │ │   │                                                  ; - com.google.re2j.Machine::step@189 (line 299)
  1.64%    1.93%  │ │   │    0x00007fa0892324ed: cmp    $0xa,%ebp
                  │ │╭  │    0x00007fa0892324f0: je     0x00007fa0892325e2  ;*if_icmpne
                  │ ││  │                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@6 (line 134)
                  │ ││  │                                                  ; - com.google.re2j.Machine::step@189 (line 299)
  0.23%    0.21%  │ ││  │    0x00007fa0892324f6: cmp    $0xb,%ebp
                  │ ││  │    0x00007fa0892324f9: je     0x00007fa089232a0d  ;*if_icmpne
                  │ ││  │                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@17 (line 138)
                  │ ││  │                                                  ; - com.google.re2j.Machine::step@189 (line 299)
  0.38%    0.46%  │ ││  │    0x00007fa0892324ff: cmp    $0x9,%ebp
                  │ ││  │    0x00007fa089232502: je     0x00007fa089232a4d  ;*if_icmpne
                  │ ││  │                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@38 (line 142)
                  │ ││  │                                                  ; - com.google.re2j.Machine::step@189 (line 299)
  1.35%    1.87%  │ ││  │    0x00007fa089232508: cmp    $0xc,%ebp
                  │ ││  │    0x00007fa08923250b: jne    0x00007fa0892329cd  ;*if_icmpne
                  │ ││  │                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@61 (line 146)
                  │ ││  │                                                  ; - com.google.re2j.Machine::step@189 (line 299)
  0.87%    1.28%  │ ││  │    0x00007fa089232511: mov    0x20(%rdi),%eax    ;*getfield f0
                  │ ││  │                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@65 (line 147)
                  │ ││  │                                                  ; - com.google.re2j.Machine::step@189 (line 299)
  0.11%    0.05%  │ ││  │    0x00007fa089232514: cmp    0x18(%rsp),%eax
                  │ ││╭ │    0x00007fa089232518: je     0x00007fa0892325e2  ;*if_icmpeq
                  │ │││ │                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@69 (line 147)
                  │ │││ │                                                  ; - com.google.re2j.Machine::step@189 (line 299)
  1.49%    1.66%  │ │││ │    0x00007fa08923251e: mov    0x24(%rdi),%ebx    ;*getfield f1
                  │ │││ │                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@73 (line 147)
                  │ │││ │                                                  ; - com.google.re2j.Machine::step@189 (line 299)
  0.18%    0.25%  │ │││ │    0x00007fa089232521: cmp    0x18(%rsp),%ebx
                  │ │││╭│    0x00007fa089232525: je     0x00007fa0892325e2  ;*if_icmpeq
                  │ │││││                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@77 (line 147)
                  │ │││││                                                  ; - com.google.re2j.Machine::step@189 (line 299)
  1.79%    2.21%  │ │││││    0x00007fa08923252b: mov    0x28(%rdi),%ebp    ;*getfield f2
                  │ │││││                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@81 (line 147)
                  │ │││││                                                  ; - com.google.re2j.Machine::step@189 (line 299)
  0.10%    0.10%  │ │││││    0x00007fa08923252e: cmp    0x18(%rsp),%ebp
                  │ │││││    0x00007fa089232532: je     0x00007fa089232ae1  ;*if_icmpeq
                  │ │││││                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@85 (line 147)
                  │ │││││                                                  ; - com.google.re2j.Machine::step@189 (line 299)
  1.19%    1.15%  │ │││││    0x00007fa089232538: mov    0x2c(%rdi),%ebp    ;*getfield f3
                  │ │││││                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@89 (line 147)
                  │ │││││                                                  ; - com.google.re2j.Machine::step@189 (line 299)
  0.10%    0.14%  │ │││││    0x00007fa08923253b: cmp    0x18(%rsp),%ebp
                  │ │││││    0x00007fa08923253f: je     0x00007fa089232b21  ;*if_icmpne
                  │ │││││                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@93 (line 147)
                  │ │││││                                                  ; - com.google.re2j.Machine::step@189 (line 299)
  1.86%    1.60%  │ │││││    0x00007fa089232545: mov    0x78(%rsp),%ebx
  0.05%    0.03%  │ │││││    0x00007fa089232549: mov    0x80(%rsp),%edi    ;*getfield size
                  │ │││││                                                  ; - com.google.re2j.Machine::step@15 (line 277)
  0.18%    0.18%  │ │││││    0x00007fa089232550: mov    0xc(%r12,%r11,8),%ebp  ;*arraylength
                  │ │││││                                                  ; - com.google.re2j.Machine::free@8 (line 167)
                  │ │││││                                                  ; - com.google.re2j.Machine::step@226 (line 303)
                  │ │││││                                                  ; implicit exception: dispatches to 0x00007fa089232fdd
  0.05%    0.09%  │ │││││    0x00007fa089232555: cmp    %ebp,%r9d
                  │ │││││    0x00007fa089232558: jge    0x00007fa089232a8d  ;*if_icmplt
                  │ │││││                                                  ; - com.google.re2j.Machine::free@9 (line 167)
                  │ │││││                                                  ; - com.google.re2j.Machine::step@226 (line 303)
  2.04%    1.96%  │ │││││    0x00007fa08923255e: mov    %r9d,%esi
  0.04%    0.07%  │ │││││    0x00007fa089232561: inc    %esi
  0.11%    0.13%  │ │││││    0x00007fa089232563: vmovq  %xmm1,%rax
  0.05%    0.09%  │ │││││    0x00007fa089232568: mov    %esi,0xc(%rax)     ;*putfield poolSize
                  │ │││││                                                  ; - com.google.re2j.Machine::free@45 (line 170)
                  │ │││││                                                  ; - com.google.re2j.Machine::step@226 (line 303)
  1.76%    1.89%  │ │││││    0x00007fa08923256b: cmp    %ebp,%r9d
                  │ │││││    0x00007fa08923256e: jae    0x00007fa08923296d  ;*aastore
                  │ │││││                                                  ; - com.google.re2j.Machine::free@49 (line 170)
                  │ │││││                                                  ; - com.google.re2j.Machine::step@226 (line 303)
  0.06%    0.04%  │ │││││    0x00007fa089232574: vmovq  %xmm0,%r10
  0.18%    0.10%  │ │││││    0x00007fa089232579: mov    0xc(%r10),%r10d    ;*getfield size
                  │ │││││                                                  ; - com.google.re2j.Machine::step@15 (line 277)
  0.08%    0.08%  │ │││││    0x00007fa08923257d: shl    $0x3,%r11          ;*getfield pool
                  │ │││││                                                  ; - com.google.re2j.Machine::free@5 (line 167)
                  │ │││││                                                  ; - com.google.re2j.Machine::step@226 (line 303)
  1.63%    1.85%  │ │││││    0x00007fa089232581: lea    0x10(%r11,%r9,4),%r11
  0.03%    0.03%  │ │││││    0x00007fa089232586: mov    %r8d,(%r11)
  0.15%    0.16%  │ │││││    0x00007fa089232589: shr    $0x9,%r11
  0.05%    0.06%  │ │││││    0x00007fa08923258d: movabs $0x7fa098a6f000,%r8
  1.97%    1.40%  │ │││││    0x00007fa089232597: mov    %r12b,(%r8,%r11,1)  ;*aastore
                  │ │││││                                                  ; - com.google.re2j.Machine::free@49 (line 170)
                  │ │││││                                                  ; - com.google.re2j.Machine::step@226 (line 303)
  0.08%    0.12%  │ │││││    0x00007fa08923259b: mov    0x8(%rsp),%r11     ; OopMap{r11=Oop xmm0=Oop xmm1=Oop off=416}
                  │ │││││                                                  ;*goto
                  │ │││││                                                  ; - com.google.re2j.Machine::step@232 (line 277)
  0.17%    0.17%  │ │││││ ↗  0x00007fa0892325a0: test   %eax,0x16e34a5a(%rip)        # 0x00007fa0a0067000
                  │ │││││ │                                                ;*goto
                  │ │││││ │                                                ; - com.google.re2j.Machine::step@232 (line 277)
                  │ │││││ │                                                ;   {poll}
  0.07%    0.06%  │ │││││ │  0x00007fa0892325a6: cmp    %ecx,%edx
                  │ ││││╰ │  0x00007fa0892325a8: jl     0x00007fa089232471  ;*if_icmpge
                  │ ││││  │                                                ; - com.google.re2j.Machine::step@18 (line 277)
  0.39%    0.24%  ↘ ││││  │  0x00007fa0892325ae: vmovq  %xmm0,%r10
  0.01%    0.00%    ││││  │  0x00007fa0892325b3: movzbl 0x18(%r10),%r11d
  0.04%    0.01%    ││││  │  0x00007fa0892325b8: test   %r11d,%r11d
                    ││││ ╭│  0x00007fa0892325bb: jne    0x00007fa0892325d6  ;*ifeq
                    ││││ ││                                                ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                    ││││ ││                                                ; - com.google.re2j.Machine::step@236 (line 306)
  0.04%    0.06%    ││││ ││  0x00007fa0892325bd: mov    %r12d,0xc(%r10)    ;*putfield size
                    ││││ ││                                                ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                    ││││ ││                                                ; - com.google.re2j.Machine::step@236 (line 306)
  0.29%    0.19%    ││││ ││  0x00007fa0892325c1: mov    0x1c(%r10),%ebp    ;*getfield pcs
                    ││││ ││                                                ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                    ││││ ││                                                ; - com.google.re2j.Machine::step@236 (line 306)
           0.00%    ││││ ││  0x00007fa0892325c5: movb   $0x1,0x18(%r10)    ;*putfield empty
                    ││││ ││                                                ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                    ││││ ││                                                ; - com.google.re2j.Machine::step@236 (line 306)
  0.02%             ││││ ││  0x00007fa0892325ca: mov    %r12,0x10(%r10)    ;*putfield pcsl
                    ││││ ││                                                ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                    ││││ ││                                                ; - com.google.re2j.Machine::step@236 (line 306)
  0.02%    0.03%    ││││ ││  0x00007fa0892325ce: test   %ebp,%ebp
                    ││││ ││  0x00007fa0892325d0: jne    0x00007fa089232b89  ;*getfield size
                    ││││ ││                                                ; - com.google.re2j.Machine::step@15 (line 277)
  0.36%    0.23%    ││││ ↘│  0x00007fa0892325d6: add    $0x60,%rsp
                    ││││  │  0x00007fa0892325da: pop    %rbp
  0.04%    0.03%    ││││  │  0x00007fa0892325db: test   %eax,0x16e34a1f(%rip)        # 0x00007fa0a0067000
                    ││││  │                                                ;   {poll_return}
  0.03%    0.04%    ││││  │  0x00007fa0892325e1: retq   
  0.27%    0.40%    │↘↘↘  │  0x00007fa0892325e2: mov    0x1c(%rdi),%r11d   ;*getfield outInst
                    │     │                                                ; - com.google.re2j.Machine::step@197 (line 300)
  0.32%    0.23%    │     │  0x00007fa0892325e6: mov    0x8(%r12,%r11,8),%ebx  ; implicit exception: dispatches to 0x00007fa08923300d
  0.37%    0.18%    │     │  0x00007fa0892325eb: lea    (%r12,%r11,8),%r9
                    │     │  0x00007fa0892325ef: xor    %edi,%edi
                    │     │  0x00007fa0892325f1: mov    $0x1,%eax
           0.00%    │     │  0x00007fa0892325f6: cmp    $0xf8019993,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                    │     │  0x00007fa0892325fc: jne    0x00007fa089232820  ;*invokevirtual add
                    │     │                                                ; - com.google.re2j.Machine::step@213 (line 300)
  0.09%    0.08%    │     │  0x00007fa089232602: mov    0x18(%r9),%ebx     ;*getfield pc
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │     │  0x00007fa089232606: mov    0x8(%rsp),%r11
                    │     │  0x00007fa08923260b: mov    0x10(%r11),%rbp    ;*getfield pcsl
                    │     │                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │     │                                                ; implicit exception: dispatches to 0x00007fa08923302d
  0.01%             │     │  0x00007fa08923260f: cmp    $0x40,%ebx
                    │     │  0x00007fa089232612: jg     0x00007fa089232bed  ;*if_icmpgt
                    │     │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.06%    0.05%    │     │  0x00007fa089232618: mov    %ebx,%ecx
                    │     │  0x00007fa08923261a: shl    %cl,%rax           ;*lshl
                    │     │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.19%    0.11%    │     │  0x00007fa08923261d: mov    %rbp,%rcx
                    │     │  0x00007fa089232620: and    %rax,%rcx          ;*land
                    │     │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │     │  0x00007fa089232623: test   %rcx,%rcx
                    │     │  0x00007fa089232626: jne    0x00007fa089232c39  ;*ifeq
                    │     │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.07%    0.04%    │     │  0x00007fa08923262c: cmp    $0x40,%ebx
                    │     │  0x00007fa08923262f: jge    0x00007fa089232c9d  ;*if_icmpge
                    │     │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%    0.00%    │     │  0x00007fa089232635: mov    %r12b,0x18(%r11)   ;*putfield empty
                    │     │                                                ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%             │     │  0x00007fa089232639: or     %rbp,%rax
                    │     │  0x00007fa08923263c: mov    %rax,0x10(%r11)    ;*putfield pcsl
                    │     │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.07%    0.02%    │     │  0x00007fa089232640: mov    %rsi,%rbx
  0.01%    0.00%    │     │  0x00007fa089232643: mov    %r9,%rcx
  0.01%             │     │  0x00007fa089232646: shr    $0x3,%rcx
                    │     │  0x00007fa08923264a: mov    %ecx,0x10(%r12,%r8,8)
  0.05%    0.01%    │     │  0x00007fa08923264f: shr    $0x9,%rbx
  0.01%             │     │  0x00007fa089232653: movabs $0x7fa098a6f000,%r9
  0.01%    0.00%    │     │  0x00007fa08923265d: mov    %r12b,(%r9,%rbx,1)  ;*putfield inst
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@41 (line 101)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │     │  0x00007fa089232661: mov    0xc(%r12,%r14,8),%ebp  ;*arraylength
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@45 (line 103)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │     │                                                ; implicit exception: dispatches to 0x00007fa089233041
  0.08%    0.02%    │     │  0x00007fa089232666: test   %ebp,%ebp
                    │     │  0x00007fa089232668: jg     0x00007fa089232ce9  ;*ifle
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │     │  0x00007fa08923266e: mov    0x20(%r11),%ecx    ;*getfield denseThreads
                    │     │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%             │     │  0x00007fa089232672: mov    0xc(%r11),%ebp     ;*getfield size
                    │     │                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │     │  0x00007fa089232676: mov    %ebp,%r9d
  0.07%    0.03%    │     │  0x00007fa089232679: inc    %r9d
  0.01%    0.00%    │     │  0x00007fa08923267c: mov    %r9d,0xc(%r11)     ;*putfield size
                    │     │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.03%    0.00%    │     │  0x00007fa089232680: mov    0xc(%r12,%rcx,8),%ebx  ; implicit exception: dispatches to 0x00007fa089233051
  0.02%             │     │  0x00007fa089232685: cmp    %ebx,%ebp
                    │     │  0x00007fa089232687: jae    0x00007fa089232ba1  ;*aastore
                    │     │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.10%    0.06%    │     │  0x00007fa08923268d: lea    (%r12,%rcx,8),%r10  ;*getfield denseThreads
                    │     │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
           0.01%    │     │  0x00007fa089232691: lea    0x10(%r10,%rbp,4),%r10
                    │     │  0x00007fa089232696: mov    %r8d,(%r10)
  0.13%    0.00%    │     │  0x00007fa089232699: shr    $0x9,%r10
  0.05%    0.07%    │     │  0x00007fa08923269d: movabs $0x7fa098a6f000,%r8
  0.02%    0.01%    │     │  0x00007fa0892326a7: mov    %r12b,(%r8,%r10,1)  ;*synchronization entry
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.03%    0.01%    │     │  0x00007fa0892326ab: vmovq  %xmm0,%r10
           0.00%    │     │  0x00007fa0892326b0: mov    0xc(%r10),%ecx     ;*getfield size
                    │     │                                                ; - com.google.re2j.Machine::step@15 (line 277)
  0.02%    0.08%    │     │  0x00007fa0892326b4: mov    %ecx,%r10d
  0.01%    0.01%    │     │  0x00007fa0892326b7: mov    0x78(%rsp),%ebx
  0.03%    0.03%    │     │  0x00007fa0892326bb: mov    0x80(%rsp),%edi
  0.00%             │     ╰  0x00007fa0892326c2: jmpq   0x00007fa0892325a0
                    ↘        0x00007fa0892326c7: mov    0x78(%rsp),%ebx
                             0x00007fa0892326cb: cmp    $0x2,%ebx
                             0x00007fa0892326ce: je     0x00007fa0892328d5  ;*if_icmpne
                                                                           ; - com.google.re2j.Machine::step@96 (line 288)
                             0x00007fa0892326d4: mov    0x80(%rsp),%edi    ;*aload
                                                                           ; - com.google.re2j.Machine::step@104 (line 289)
                             0x00007fa0892326db: mov    0xc(%r12,%r14,8),%ebp  ;*arraylength
                                                                           ; - com.google.re2j.Machine::step@109 (line 289)
                                                                           ; implicit exception: dispatches to 0x00007fa08923309d
                             0x00007fa0892326e0: test   %ebp,%ebp
....................................................................................................
 45.08%   44.29%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Inst$Alt5Inst::add, version 525 (1276 bytes) 

                     # parm4:    rdi:rdi   = &apos;com/google/re2j/Machine$Thread&apos;
                     # parm5:    [sp+0x70]   = &apos;com/google/re2j/Machine&apos;  (sp of caller)
                     0x00007fa08923b040: mov    0x8(%rsi),%r10d
                     0x00007fa08923b044: shl    $0x3,%r10
                     0x00007fa08923b048: cmp    %r10,%rax
                     0x00007fa08923b04b: jne    0x00007fa089045e20  ;   {runtime_call}
                     0x00007fa08923b051: data16 xchg %ax,%ax
                     0x00007fa08923b054: nopl   0x0(%rax,%rax,1)
                     0x00007fa08923b05c: data16 data16 xchg %ax,%ax
                   [Verified Entry Point]
  0.37%    0.32%     0x00007fa08923b060: mov    %eax,-0x14000(%rsp)
  0.07%    0.04%     0x00007fa08923b067: push   %rbp
  0.11%    0.12%     0x00007fa08923b068: sub    $0x60,%rsp         ;*synchronization entry
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@-1 (line 273)
  0.26%    0.25%     0x00007fa08923b06c: vmovq  %rsi,%xmm9
  0.03%    0.03%     0x00007fa08923b071: vmovd  %ecx,%xmm1
  0.16%    0.08%     0x00007fa08923b075: mov    0x18(%rsi),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@2 (line 273)
  0.27%    0.29%     0x00007fa08923b078: mov    0x10(%rdx),%r10    ;*getfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 273)
                                                                   ; implicit exception: dispatches to 0x00007fa08923bd09
  0.02%    0.03%     0x00007fa08923b07c: cmp    $0x40,%ecx
                     0x00007fa08923b07f: jg     0x00007fa08923b8b5  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 273)
  0.04%    0.03%     0x00007fa08923b085: mov    $0x1,%r14d
  0.14%    0.13%     0x00007fa08923b08b: mov    $0x1,%ebx
  0.24%    0.18%     0x00007fa08923b090: shl    %cl,%rbx           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 273)
  0.18%    0.15%     0x00007fa08923b093: mov    %r10,%r11
  0.23%    0.22%     0x00007fa08923b096: and    %rbx,%r11          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 273)
  0.01%    0.01%     0x00007fa08923b099: test   %r11,%r11
                     0x00007fa08923b09c: jne    0x00007fa08923b8e9  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 273)
  0.01%    0.03%     0x00007fa08923b0a2: cmp    $0x40,%ecx
                     0x00007fa08923b0a5: jge    0x00007fa08923b92d  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 276)
  0.13%    0.10%     0x00007fa08923b0ab: mov    %r12b,0x18(%rdx)   ;*putfield empty
                                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 276)
  0.24%    0.26%     0x00007fa08923b0af: mov    0x1c(%rsi),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@23 (line 278)
  0.02%    0.02%     0x00007fa08923b0b2: or     %r10,%rbx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 276)
  0.04%    0.03%     0x00007fa08923b0b5: mov    %rbx,0x10(%rdx)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 276)
  0.09%    0.12%     0x00007fa08923b0b9: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007fa08923bd1d
  0.22%    0.33%     0x00007fa08923b0be: cmp    $0xf8019993,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                     0x00007fa08923b0c5: jne    0x00007fa08923b6a5
  0.03%    0.01%     0x00007fa08923b0cb: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.01%    0.02%     0x00007fa08923b0cf: mov    0x18(%r11),%r10d   ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.07%    0.14%     0x00007fa08923b0d3: cmp    $0x40,%r10d
                     0x00007fa08923b0d7: jg     0x00007fa08923b961  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.22%    0.38%     0x00007fa08923b0dd: mov    $0x1,%esi
  0.00%    0.02%     0x00007fa08923b0e2: mov    %r10d,%ecx
  0.02%    0.02%     0x00007fa08923b0e5: shl    %cl,%rsi           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.43%    0.49%     0x00007fa08923b0e8: mov    %rbx,%rcx
  0.04%    0.01%     0x00007fa08923b0eb: and    %rsi,%rcx          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.11%    0.16%     0x00007fa08923b0ee: test   %rcx,%rcx
                     0x00007fa08923b0f1: jne    0x00007fa08923b9a1  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.24%    0.16%     0x00007fa08923b0f7: cmp    $0x40,%r10d
                     0x00007fa08923b0fb: jge    0x00007fa08923b9e9  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.01%    0.01%     0x00007fa08923b101: or     %rsi,%rbx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.03%    0.07%     0x00007fa08923b104: mov    %rbx,0x10(%rdx)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.07%    0.14%     0x00007fa08923b108: mov    %r11,%r10
  0.21%    0.13%     0x00007fa08923b10b: shr    $0x3,%r10          ;*putfield inst
                                                                   ; - com.google.re2j.Machine::alloc@45 (line 138)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.01%    0.01%     0x00007fa08923b10f: movabs $0x7fa098a6f000,%r13
  0.03%    0.05%     0x00007fa08923b119: test   %rdi,%rdi
                  ╭  0x00007fa08923b11c: jne    0x00007fa08923b55d  ;*ifnonnull
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@24 (line 98)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.08%    0.14%  │  0x00007fa08923b122: mov    0x70(%rsp),%rdi
  0.27%    0.46%  │  0x00007fa08923b127: mov    0xc(%rdi),%ecx     ;*getfield poolSize
                  │                                                ; - com.google.re2j.Machine::alloc@1 (line 132)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
                  │                                                ; implicit exception: dispatches to 0x00007fa08923be29
  0.01%    0.01%  │  0x00007fa08923b12a: test   %ecx,%ecx
                  │  0x00007fa08923b12c: jle    0x00007fa08923b87d  ;*ifle
                  │                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.06%    0.05%  │  0x00007fa08923b132: vmovd  %ecx,%xmm0
  0.08%    0.19%  │  0x00007fa08923b136: mov    %r11,%rax
  0.30%    0.38%  │  0x00007fa08923b139: mov    0x24(%rdi),%r11d   ;*getfield pool
                  │                                                ; - com.google.re2j.Machine::alloc@18 (line 134)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.02%    0.00%  │  0x00007fa08923b13d: mov    %ecx,%ebp
  0.03%    0.02%  │  0x00007fa08923b13f: dec    %ebp               ;*isub
                  │                                                ; - com.google.re2j.Machine::alloc@13 (line 133)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.09%    0.14%  │  0x00007fa08923b141: mov    %ebp,0xc(%rdi)     ;*putfield poolSize
                  │                                                ; - com.google.re2j.Machine::alloc@14 (line 133)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.20%    0.35%  │  0x00007fa08923b144: mov    0xc(%r12,%r11,8),%ecx  ; implicit exception: dispatches to 0x00007fa08923be3d
  0.00%    0.00%  │  0x00007fa08923b149: cmp    %ecx,%ebp
                  │  0x00007fa08923b14b: jae    0x00007fa08923b781
  0.10%    0.11%  │  0x00007fa08923b151: lea    (%r12,%r11,8),%rcx
  0.11%    0.11%  │  0x00007fa08923b155: vmovd  %xmm0,%r11d
  0.24%    0.30%  │  0x00007fa08923b15a: mov    0xc(%rcx,%r11,4),%ecx  ;*aaload
                  │                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.02%    0.01%  │  0x00007fa08923b15f: mov    %r10d,0x10(%r12,%rcx,8)  ;*putfield inst
                  │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
                  │                                                ; implicit exception: dispatches to 0x00007fa08923be4d
  1.75%    1.68%  │  0x00007fa08923b164: lea    (%r12,%rcx,8),%rdi  ;*aaload
                  │                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.01%           │  0x00007fa08923b168: mov    %rdi,%r10
  0.02%    0.05%  │  0x00007fa08923b16b: shr    $0x9,%r10
                  │  0x00007fa08923b16f: mov    %r12b,0x0(%r13,%r10,1)  ;*aload_3
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@44 (line 103)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.87%    0.93%  │  0x00007fa08923b174: mov    0xc(%r8),%ebp      ;*arraylength
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@45 (line 103)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
                  │                                                ; implicit exception: dispatches to 0x00007fa08923bd45
  0.00%           │  0x00007fa08923b178: test   %ebp,%ebp
                  │  0x00007fa08923b17a: jg     0x00007fa08923ba29  ;*ifle
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.02%    0.04%  │  0x00007fa08923b180: mov    0xc(%rdx),%ecx     ;*getfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
                  │  0x00007fa08923b183: mov    0x20(%rdx),%r10d   ;*getfield denseThreads
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.33%    0.39%  │  0x00007fa08923b187: vmovd  %r10d,%xmm0
  0.01%           │  0x00007fa08923b18c: mov    %ecx,0x20(%rsp)
  0.02%    0.03%  │  0x00007fa08923b190: inc    %ecx               ;*iadd
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
                  │  0x00007fa08923b192: mov    %ecx,0xc(%rdx)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.31%    0.51%  │  0x00007fa08923b195: vmovd  %ecx,%xmm3
  0.00%    0.00%  │  0x00007fa08923b199: mov    0xc(%r12,%r10,8),%r11d  ; implicit exception: dispatches to 0x00007fa08923bd55
  0.03%    0.02%  │  0x00007fa08923b19e: mov    0x20(%rsp),%ecx
  0.43%    0.11%  │  0x00007fa08923b1a2: cmp    %r11d,%ecx
                  │  0x00007fa08923b1a5: jae    0x00007fa08923b572  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.34%    0.45%  │  0x00007fa08923b1ab: vmovq  %xmm9,%r10
                  │  0x00007fa08923b1b0: mov    0x20(%r10),%ebp    ;*getfield inst2
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@41 (line 279)
  0.04%           │  0x00007fa08923b1b4: mov    %rdi,%r10
                  │  0x00007fa08923b1b7: shr    $0x3,%r10          ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.45%    0.44%  │  0x00007fa08923b1bb: vmovd  %xmm0,%ecx
                  │  0x00007fa08923b1bf: lea    (%r12,%rcx,8),%rdi  ;*getfield denseThreads
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.02%    0.04%  │  0x00007fa08923b1c3: mov    0x20(%rsp),%esi
  0.01%           │  0x00007fa08923b1c7: lea    0x10(%rdi,%rsi,4),%rcx
  0.44%    0.50%  │  0x00007fa08923b1cc: mov    %r10d,(%rcx)
  0.09%    0.04%  │  0x00007fa08923b1cf: mov    %rcx,%r10
  0.02%    0.01%  │  0x00007fa08923b1d2: shr    $0x9,%r10
                  │  0x00007fa08923b1d6: mov    %r12b,0x0(%r13,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.43%    0.50%  │  0x00007fa08923b1db: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007fa08923bd69
  0.03%    0.03%  │  0x00007fa08923b1e0: cmp    $0xf8019993,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │  0x00007fa08923b1e7: jne    0x00007fa08923b6d5
  0.02%    0.02%  │  0x00007fa08923b1ed: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
                  │  0x00007fa08923b1f1: vmovq  %r10,%xmm2
  0.34%    0.45%  │  0x00007fa08923b1f6: mov    0x18(%r10),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.02%    0.01%  │  0x00007fa08923b1fa: mov    %ecx,%eax
  0.01%    0.01%  │  0x00007fa08923b1fc: cmp    $0x40,%ecx
                  │  0x00007fa08923b1ff: jg     0x00007fa08923ba59  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
                  │  0x00007fa08923b205: mov    $0x1,%r10d
  0.37%    0.38%  │  0x00007fa08923b20b: shl    %cl,%r10           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.06%    0.04%  │  0x00007fa08923b20e: mov    %rbx,%rcx
  0.34%    0.36%  │  0x00007fa08923b211: and    %r10,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.00%    0.03%  │  0x00007fa08923b214: test   %rcx,%rcx
                  │  0x00007fa08923b217: jne    0x00007fa08923ba91  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.02%    0.03%  │  0x00007fa08923b21d: mov    %eax,%ecx
                  │  0x00007fa08923b21f: cmp    $0x40,%ecx
                  │  0x00007fa08923b222: jge    0x00007fa08923bad5  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.36%    0.34%  │  0x00007fa08923b228: or     %r10,%rbx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
           0.04%  │  0x00007fa08923b22b: mov    %rbx,0x10(%rdx)    ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.02%    0.01%  │  0x00007fa08923b22f: mov    0x70(%rsp),%r10
                  │  0x00007fa08923b234: mov    0xc(%r10),%ecx     ;*getfield poolSize
                  │                                                ; - com.google.re2j.Machine::alloc@1 (line 132)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
                  │                                                ; implicit exception: dispatches to 0x00007fa08923bd8d
  0.41%    0.28%  │  0x00007fa08923b238: vmovd  %ecx,%xmm5
  0.02%    0.02%  │  0x00007fa08923b23c: test   %ecx,%ecx
                  │  0x00007fa08923b23e: jle    0x00007fa08923b7b5  ;*ifle
                  │                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.02%    0.03%  │  0x00007fa08923b244: mov    0x24(%r10),%ecx    ;*getfield pool
                  │                                                ; - com.google.re2j.Machine::alloc@18 (line 134)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
                  │  0x00007fa08923b248: vmovd  %ecx,%xmm4
  0.43%    0.18%  │  0x00007fa08923b24c: vmovd  %xmm5,%ecx
  0.03%    0.01%  │  0x00007fa08923b250: dec    %ecx               ;*isub
                  │                                                ; - com.google.re2j.Machine::alloc@13 (line 133)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.04%    0.04%  │  0x00007fa08923b252: vmovd  %ecx,%xmm6
  0.01%    0.01%  │  0x00007fa08923b256: mov    %ecx,0xc(%r10)     ;*putfield poolSize
                  │                                                ; - com.google.re2j.Machine::alloc@14 (line 133)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.37%    0.05%  │  0x00007fa08923b25a: vmovd  %xmm4,%ecx
  0.02%    0.00%  │  0x00007fa08923b25e: mov    0xc(%r12,%rcx,8),%esi  ; implicit exception: dispatches to 0x00007fa08923bda1
  0.08%    0.02%  │  0x00007fa08923b263: vmovd  %xmm6,%r10d
                  │  0x00007fa08923b268: cmp    %esi,%r10d
                  │  0x00007fa08923b26b: jae    0x00007fa08923b5a5
  0.33%    0.09%  │  0x00007fa08923b271: lea    (%r12,%rcx,8),%rax
  0.01%    0.00%  │  0x00007fa08923b275: vmovd  %xmm5,%r10d
  0.02%    0.01%  │  0x00007fa08923b27a: mov    0xc(%rax,%r10,4),%r10d  ;*aaload
                  │                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.01%    0.00%  │  0x00007fa08923b27f: vmovd  %r10d,%xmm8
  0.34%    0.07%  │  0x00007fa08923b284: test   %r10d,%r10d
                  │  0x00007fa08923b287: je     0x00007fa08923b5dd  ;*putfield inst
                  │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.01%    0.02%  │  0x00007fa08923b28d: vmovd  %r9d,%xmm12
  0.02%    0.02%  │  0x00007fa08923b292: vmovq  %r8,%xmm10
                  │  0x00007fa08923b297: vmovq  %rdx,%xmm7
  0.33%    0.27%  │  0x00007fa08923b29c: shl    $0x3,%r10
  0.02%           │  0x00007fa08923b2a0: mov    0x20(%rsp),%r8d
  0.00%    0.01%  │  0x00007fa08923b2a5: add    $0x2,%r8d
                  │  0x00007fa08923b2a9: mov    %r8d,0xc(%rdx)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.43%    0.06%  │  0x00007fa08923b2ad: mov    0x20(%rsp),%r8d
  0.03%    0.02%  │  0x00007fa08923b2b2: add    $0x4,%r8d          ;*iadd
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.02%    0.03%  │  0x00007fa08923b2b6: shr    $0x9,%r10
  0.00%           │  0x00007fa08923b2ba: mov    %r12b,0x0(%r13,%r10,1)
  1.04%    1.13%  │  0x00007fa08923b2bf: vmovq  %xmm2,%r10
           0.01%  │  0x00007fa08923b2c4: mov    %r10,%rcx
                  │  0x00007fa08923b2c7: shr    $0x3,%rcx
                  │  0x00007fa08923b2cb: vmovd  %xmm8,%r10d
  0.36%    0.47%  │  0x00007fa08923b2d0: mov    %ecx,0x10(%r12,%r10,8)  ;*putfield inst
                  │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.07%    0.10%  │  0x00007fa08923b2d5: cmp    %r11d,%r8d
                  │  0x00007fa08923b2d8: jae    0x00007fa08923b5f1  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
                  │  0x00007fa08923b2de: vmovq  %xmm9,%r10
                  │  0x00007fa08923b2e3: mov    0x24(%r10),%ebp    ;*getfield inst3
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@59 (line 280)
  0.33%    0.40%  │  0x00007fa08923b2e7: movslq 0x20(%rsp),%r10
  0.02%    0.04%  │  0x00007fa08923b2ec: lea    (%rdi,%r10,4),%r11  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
                  │  0x00007fa08923b2f0: mov    %r11,%r9
                  │  0x00007fa08923b2f3: add    $0x14,%r9
  0.35%    0.46%  │  0x00007fa08923b2f7: vmovd  %xmm8,%r10d
  0.04%    0.04%  │  0x00007fa08923b2fc: mov    %r10d,(%r9)
  0.00%           │  0x00007fa08923b2ff: mov    %r9,%r10
                  │  0x00007fa08923b302: shr    $0x9,%r10
  0.34%    0.37%  │  0x00007fa08923b306: mov    %r12b,0x0(%r13,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.03%    0.04%  │  0x00007fa08923b30b: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007fa08923bdb5
  0.00%    0.00%  │  0x00007fa08923b310: cmp    $0xf8019993,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │  0x00007fa08923b317: jne    0x00007fa08923b701
                  │  0x00007fa08923b31d: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.36%    0.39%  │  0x00007fa08923b321: vmovq  %r10,%xmm0
  0.05%    0.05%  │  0x00007fa08923b326: mov    0x18(%r10),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
                  │  0x00007fa08923b32a: cmp    $0x40,%ecx
                  │  0x00007fa08923b32d: jg     0x00007fa08923bb0d  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
                  │  0x00007fa08923b333: mov    $0x1,%r10d
  0.35%    0.39%  │  0x00007fa08923b339: shl    %cl,%r10           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.02%    0.05%  │  0x00007fa08923b33c: mov    %rbx,%r9
  0.39%    0.44%  │  0x00007fa08923b33f: and    %r10,%r9           ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.03%    0.06%  │  0x00007fa08923b342: test   %r9,%r9
                  │  0x00007fa08923b345: jne    0x00007fa08923bb49  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.01%           │  0x00007fa08923b34b: cmp    $0x40,%ecx
                  │  0x00007fa08923b34e: jge    0x00007fa08923bb91  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
                  │  0x00007fa08923b354: or     %r10,%rbx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.32%    0.29%  │  0x00007fa08923b357: mov    %rbx,0x10(%rdx)    ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.05%    0.05%  │  0x00007fa08923b35b: vmovd  %xmm6,%ecx
  0.00%    0.01%  │  0x00007fa08923b35f: test   %ecx,%ecx
                  │  0x00007fa08923b361: jle    0x00007fa08923b7e9  ;*ifle
                  │                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
                  │  0x00007fa08923b367: vmovd  %xmm5,%r9d
  0.36%    0.52%  │  0x00007fa08923b36c: add    $0xfffffffc,%r9d   ;*isub
                  │                                                ; - com.google.re2j.Machine::alloc@13 (line 133)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.05%    0.05%  │  0x00007fa08923b370: vmovd  %xmm5,%r10d
  0.01%    0.00%  │  0x00007fa08923b375: add    $0xfffffffe,%r10d  ;*isub
                  │                                                ; - com.google.re2j.Machine::alloc@13 (line 133)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
                  │  0x00007fa08923b379: vmovd  %r10d,%xmm3
  0.39%    0.51%  │  0x00007fa08923b37e: mov    0x70(%rsp),%rcx
  0.04%    0.07%  │  0x00007fa08923b383: mov    %r10d,0xc(%rcx)    ;*putfield poolSize
                  │                                                ; - com.google.re2j.Machine::alloc@14 (line 133)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.01%    0.03%  │  0x00007fa08923b387: cmp    %esi,%r9d
                  │  0x00007fa08923b38a: jae    0x00007fa08923b62d
                  │  0x00007fa08923b390: mov    0x10(%rax,%r10,4),%r10d  ;*aaload
                  │                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.44%    0.49%  │  0x00007fa08923b395: test   %r10d,%r10d
                  │  0x00007fa08923b398: je     0x00007fa08923b669  ;*putfield inst
                  │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.02%    0.05%  │  0x00007fa08923b39e: mov    %r11,%rcx
  0.00%           │  0x00007fa08923b3a1: add    $0x18,%rcx
                  │  0x00007fa08923b3a5: mov    %r10d,(%rcx)       ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.35%    0.31%  │  0x00007fa08923b3a8: vmovq  %xmm9,%rdx
  0.02%    0.05%  │  0x00007fa08923b3ad: mov    0x28(%rdx),%ebp    ;*getfield inst4
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 281)
  0.01%    0.00%  │  0x00007fa08923b3b0: lea    (%r12,%r10,8),%rdx
                  │  0x00007fa08923b3b4: vmovq  %xmm0,%rsi
  0.42%    0.33%  │  0x00007fa08923b3b9: shr    $0x3,%rsi
  0.02%    0.02%  │  0x00007fa08923b3bd: mov    %esi,0x10(%r12,%r10,8)  ;*putfield inst
                  │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.16%    0.13%  │  0x00007fa08923b3c2: mov    0x20(%rsp),%r10d
                  │  0x00007fa08923b3c7: add    $0x3,%r10d
  0.30%    0.38%  │  0x00007fa08923b3cb: vmovq  %xmm7,%rsi
  0.03%    0.02%  │  0x00007fa08923b3d0: mov    %r10d,0xc(%rsi)    ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.06%    0.10%  │  0x00007fa08923b3d4: shr    $0x9,%rdx
                  │  0x00007fa08923b3d8: mov    %r12b,0x0(%r13,%rdx,1)  ;*putfield inst
                  │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.39%    0.29%  │  0x00007fa08923b3dd: mov    %rcx,%r10
  0.02%    0.04%  │  0x00007fa08923b3e0: shr    $0x9,%r10
  0.04%    0.01%  │  0x00007fa08923b3e4: mov    %r12b,0x0(%r13,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.00%           │  0x00007fa08923b3e9: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007fa08923bdd9
  0.35%    0.21%  │  0x00007fa08923b3ee: cmp    $0xf8019993,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │  0x00007fa08923b3f5: jne    0x00007fa08923b72d
  0.05%    0.05%  │  0x00007fa08923b3fb: lea    (%r12,%rbp,8),%rdx  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.03%    0.03%  │  0x00007fa08923b3ff: mov    0x18(%rdx),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
           0.00%  │  0x00007fa08923b402: vmovd  %ecx,%xmm2
  0.32%    0.29%  │  0x00007fa08923b406: cmp    $0x40,%ecx
                  │  0x00007fa08923b409: jg     0x00007fa08923bbcd  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.03%    0.02%  │  0x00007fa08923b40f: mov    $0x1,%r10d
  0.02%    0.02%  │  0x00007fa08923b415: shl    %cl,%r10           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.35%    0.40%  │  0x00007fa08923b418: mov    %rbx,%rcx
  0.02%    0.02%  │  0x00007fa08923b41b: and    %r10,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
                  │  0x00007fa08923b41e: test   %rcx,%rcx
                  │  0x00007fa08923b421: jne    0x00007fa08923bc09  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.44%    0.48%  │  0x00007fa08923b427: vmovd  %xmm2,%ecx
  0.06%    0.05%  │  0x00007fa08923b42b: cmp    $0x40,%ecx
                  │  0x00007fa08923b42e: jge    0x00007fa08923bc51  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.03%    0.03%  │  0x00007fa08923b434: or     %r10,%rbx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
           0.01%  │  0x00007fa08923b437: mov    %rbx,0x10(%rsi)    ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.40%    0.32%  │  0x00007fa08923b43b: vmovd  %xmm3,%ecx
  0.02%    0.03%  │  0x00007fa08923b43f: test   %ecx,%ecx
                  │  0x00007fa08923b441: jle    0x00007fa08923b821  ;*ifle
                  │                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.04%    0.01%  │  0x00007fa08923b447: vmovd  %xmm5,%ecx
                  │  0x00007fa08923b44b: add    $0xfffffffd,%ecx   ;*isub
                  │                                                ; - com.google.re2j.Machine::alloc@13 (line 133)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.40%    0.31%  │  0x00007fa08923b44e: vmovd  %ecx,%xmm0
  0.05%    0.03%  │  0x00007fa08923b452: mov    0x70(%rsp),%r10
  0.04%    0.04%  │  0x00007fa08923b457: mov    %ecx,0xc(%r10)     ;*putfield poolSize
                  │                                                ; - com.google.re2j.Machine::alloc@14 (line 133)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.16%    0.21%  │  0x00007fa08923b45b: mov    0x10(%rax,%rcx,4),%esi  ;*aaload
                  │                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.26%    0.35%  │  0x00007fa08923b45f: test   %esi,%esi
                  │  0x00007fa08923b461: je     0x00007fa08923b67d  ;*putfield inst
                  │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.02%    0.06%  │  0x00007fa08923b467: vmovq  %xmm7,%r10
  0.02%    0.03%  │  0x00007fa08923b46c: mov    %r8d,0xc(%r10)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.06%    0.13%  │  0x00007fa08923b470: vmovq  %xmm9,%r10
  0.26%    0.44%  │  0x00007fa08923b475: mov    0x2c(%r10),%ebp    ;*getfield inst5
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@95 (line 282)
  0.01%    0.01%  │  0x00007fa08923b479: mov    %r11,%r8
  0.04%    0.01%  │  0x00007fa08923b47c: add    $0x1c,%r8
  0.10%    0.08%  │  0x00007fa08923b480: mov    %esi,(%r8)         ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.26%    0.14%  │  0x00007fa08923b483: mov    %rdx,%r10
  0.01%    0.02%  │  0x00007fa08923b486: shr    $0x3,%r10
  0.04%    0.03%  │  0x00007fa08923b48a: mov    %r10d,0x10(%r12,%rsi,8)
  0.06%    0.13%  │  0x00007fa08923b48f: mov    %r8,%r10
  0.27%    0.40%  │  0x00007fa08923b492: lea    (%r12,%rsi,8),%r8
  0.02%    0.05%  │  0x00007fa08923b496: shr    $0x9,%r10
  0.02%    0.04%  │  0x00007fa08923b49a: shr    $0x9,%r8
  0.11%    0.09%  │  0x00007fa08923b49e: mov    %r12b,0x0(%r13,%r8,1)  ;*putfield inst
                  │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.32%    0.41%  │  0x00007fa08923b4a3: mov    %r12b,0x0(%r13,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.03%    0.05%  │  0x00007fa08923b4a8: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007fa08923be01
  0.00%    0.01%  │  0x00007fa08923b4ad: cmp    $0xf8019993,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │  0x00007fa08923b4b3: jne    0x00007fa08923b759
  0.08%    0.08%  │  0x00007fa08923b4b9: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.29%    0.30%  │  0x00007fa08923b4bd: mov    0x18(%r10),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.00%    0.06%  │  0x00007fa08923b4c1: cmp    $0x40,%ecx
                  │  0x00007fa08923b4c4: jg     0x00007fa08923bc8d  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.02%    0.02%  │  0x00007fa08923b4ca: mov    %r10,%r8
  0.09%    0.09%  │  0x00007fa08923b4cd: shl    %cl,%r14           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.33%    0.39%  │  0x00007fa08923b4d0: mov    %rbx,%r10
  0.10%    0.09%  │  0x00007fa08923b4d3: and    %r14,%r10          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.29%    0.41%  │  0x00007fa08923b4d6: test   %r10,%r10
                  │  0x00007fa08923b4d9: jne    0x00007fa08923bcb1  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.03%    0.03%  │  0x00007fa08923b4df: cmp    $0x40,%ecx
                  │  0x00007fa08923b4e2: jge    0x00007fa08923bce5  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.02%    0.01%  │  0x00007fa08923b4e8: or     %r14,%rbx
  0.10%    0.08%  │  0x00007fa08923b4eb: vmovq  %xmm7,%rcx
  0.24%    0.34%  │  0x00007fa08923b4f0: mov    %rbx,0x10(%rcx)    ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.03%    0.02%  │  0x00007fa08923b4f4: vmovd  %xmm0,%r10d
  0.03%    0.02%  │  0x00007fa08923b4f9: test   %r10d,%r10d
                  │  0x00007fa08923b4fc: jle    0x00007fa08923b859  ;*ifle
                  │                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.09%    0.05%  │  0x00007fa08923b502: mov    0x70(%rsp),%r10
  0.32%    0.22%  │  0x00007fa08923b507: mov    %r9d,0xc(%r10)     ;*putfield poolSize
                  │                                                ; - com.google.re2j.Machine::alloc@14 (line 133)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.09%    0.08%  │  0x00007fa08923b50b: mov    0x10(%rax,%r9,4),%r9d  ;*aaload
                  │                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.03%    0.04%  │  0x00007fa08923b510: test   %r9d,%r9d
                  │  0x00007fa08923b513: je     0x00007fa08923b691  ;*putfield inst
                  │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.04%    0.06%  │  0x00007fa08923b519: add    $0x20,%r11
  0.19%    0.20%  │  0x00007fa08923b51d: mov    %r9d,(%r11)        ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.05%    0.07%  │  0x00007fa08923b520: shr    $0x3,%r8
  0.02%    0.03%  │  0x00007fa08923b524: mov    %r8d,0x10(%r12,%r9,8)  ;*putfield inst
                  │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.06%    0.08%  │  0x00007fa08923b529: mov    %r11,%r10
  0.21%    0.29%  │  0x00007fa08923b52c: mov    0x20(%rsp),%r11d
  0.06%    0.05%  │  0x00007fa08923b531: add    $0x5,%r11d
  0.05%    0.02%  │  0x00007fa08923b535: mov    %r11d,0xc(%rcx)    ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.04%    0.09%  │  0x00007fa08923b539: shr    $0x9,%r10
  0.29%    0.28%  │  0x00007fa08923b53d: lea    (%r12,%r9,8),%r11
  0.07%    0.06%  │  0x00007fa08923b541: shr    $0x9,%r11
  0.01%    0.03%  │  0x00007fa08923b545: mov    %r12b,0x0(%r13,%r11,1)  ;*putfield inst
                  │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.05%    0.07%  │  0x00007fa08923b54a: mov    %r12b,0x0(%r13,%r10,1)  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 273)
  0.24%    0.25%  │  0x00007fa08923b54f: xor    %eax,%eax
  0.07%    0.06%  │  0x00007fa08923b551: add    $0x60,%rsp
  0.04%    0.03%  │  0x00007fa08923b555: pop    %rbp
  0.09%    0.16%  │  0x00007fa08923b556: test   %eax,0x16e2baa4(%rip)        # 0x00007fa0a0067000
                  │                                                ;   {poll_return}
  0.18%    0.20%  │  0x00007fa08923b55c: retq   
                  ↘  0x00007fa08923b55d: mov    %r10d,0x10(%rdi)
                     0x00007fa08923b561: mov    %rdi,%r10
                     0x00007fa08923b564: shr    $0x9,%r10
                     0x00007fa08923b568: mov    %r12b,0x0(%r13,%r10,1)  ;*putfield inst
                                                                   ; - com.google.re2j.Inst$MatchInst::add@41 (line 101)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
                     0x00007fa08923b56d: jmpq   0x00007fa08923b174  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
....................................................................................................
 32.45%   33.39%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 565 (867 bytes) 

                                                                                    ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                                                                                    ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                                                                                    ; - com.google.re2j.Machine::match@121 (line 201)
                                      0x00007fa089254e2f: mov    %ebx,%r8d
                                      0x00007fa089254e32: add    $0xffffff9f,%r8d
                                      0x00007fa089254e36: cmp    $0x1a,%r8d
                                      0x00007fa089254e3a: jae    0x00007fa08925531c  ;*iconst_1
                                                                                    ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                                                                                    ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                                                                                    ; - com.google.re2j.Machine::match@121 (line 201)
  0.00%    0.01%                      0x00007fa089254e40: or     $0x10,%r9d         ;*iload_2
                                                                                    ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                                    ; - com.google.re2j.Machine::match@121 (line 201)
                                      0x00007fa089254e44: mov    %r10d,0x30(%rsp)
  0.01%    0.00%                      0x00007fa089254e49: mov    %ecx,0x2c(%rsp)
                                      0x00007fa089254e4d: mov    0x44(%rsp),%r10d
                                      0x00007fa089254e52: and    $0x4,%r10d         ;*iand
                                                                                    ; - com.google.re2j.Machine::match@147 (line 208)
                                      0x00007fa089254e56: mov    %r10d,0x14(%rsp)
                                      0x00007fa089254e5b: mov    %r13,%r10
                                      0x00007fa089254e5e: shl    $0x3,%r10          ;*getfield q1
                                                                                    ; - com.google.re2j.Machine::match@53 (line 188)
           0.01%                      0x00007fa089254e62: mov    %r10,0x50(%rsp)
                                      0x00007fa089254e67: mov    %ebx,0x34(%rsp)
                                      0x00007fa089254e6b: xor    %eax,%eax
                                      0x00007fa089254e6d: xor    %r11d,%r11d
  0.00%                               0x00007fa089254e70: mov    %r11d,0x58(%rsp)
                  ╭                   0x00007fa089254e75: jmpq   0x00007fa089255024
                  │                   0x00007fa089254e7a: nopw   0x0(%rax,%rax,1)
  0.19%    0.24%  │         ↗         0x00007fa089254e80: or     $0x20,%r11d        ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                  │         │                                                       ; - com.google.re2j.Machine::match@323 (line 241)
  0.04%    0.07%  │         │         0x00007fa089254e84: mov    %r11d,0x5c(%rsp)   ;*iload_2
                  │         │                                                       ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                  │         │                                                       ; - com.google.re2j.Machine::match@323 (line 241)
  0.13%    0.12%  │         │↗        0x00007fa089254e89: mov    0x48(%rsp),%r8
  0.05%    0.07%  │         ││        0x00007fa089254e8e: mov    0x10(%r8),%r11d    ;*getfield end
                  │         ││                                                      ; - com.google.re2j.MachineInput$UTF16Input::endPos@1 (line 221)
                  │         ││                                                      ; - com.google.re2j.Machine::match@345 (line 242)
  0.25%    0.30%  │         ││        0x00007fa089254e92: mov    0x58(%rsp),%ecx
  0.06%    0.06%  │         ││        0x00007fa089254e96: cmp    %r11d,%ecx
                  │╭        ││        0x00007fa089254e99: je     0x00007fa0892551b5  ;*if_icmpne
                  ││        ││                                                      ; - com.google.re2j.Machine::match@348 (line 242)
  0.13%    0.13%  ││        ││        0x00007fa089254e9f: xor    %r11d,%r11d        ;*invokespecial step
                  ││        ││                                                      ; - com.google.re2j.Machine::match@356 (line 242)
  0.06%    0.05%  ││        ││     ↗  0x00007fa089254ea2: mov    %rax,-0x8(%rsp)
  0.18%    0.21%  ││        ││     │  0x00007fa089254ea7: mov    0x58(%rsp),%eax
  0.04%    0.06%  ││        ││     │  0x00007fa089254eab: mov    %eax,0x1c(%rsp)
  0.08%    0.06%  ││        ││     │  0x00007fa089254eaf: mov    -0x8(%rsp),%rax
  0.11%    0.11%  ││        ││     │  0x00007fa089254eb4: add    0x28(%rsp),%ecx    ;*iadd
                  ││        ││     │                                                ; - com.google.re2j.Machine::match@337 (line 242)
  0.22%    0.25%  ││        ││     │  0x00007fa089254eb8: mov    %ecx,0x58(%rsp)
  0.10%    0.09%  ││        ││     │  0x00007fa089254ebc: mov    0x38(%rsp),%rsi
  0.07%    0.08%  ││        ││     │  0x00007fa089254ec1: mov    0x20(%rsp),%rdx
  0.12%    0.04%  ││        ││     │  0x00007fa089254ec6: mov    0x50(%rsp),%rcx
  0.16%    0.15%  ││        ││     │  0x00007fa089254ecb: mov    0x1c(%rsp),%r8d
  0.09%    0.08%  ││        ││     │  0x00007fa089254ed0: mov    0x58(%rsp),%r9d
  0.23%    0.14%  ││        ││     │  0x00007fa089254ed5: mov    0x34(%rsp),%edi
  0.08%    0.07%  ││        ││     │  0x00007fa089254ed9: mov    0x5c(%rsp),%ebx
  0.16%    0.28%  ││        ││     │  0x00007fa089254edd: mov    %ebx,(%rsp)
  0.08%    0.07%  ││        ││     │  0x00007fa089254ee0: mov    0x40(%rsp),%r10d
  0.08%    0.15%  ││        ││     │  0x00007fa089254ee5: mov    %r10d,0x8(%rsp)
  0.07%    0.06%  ││        ││     │  0x00007fa089254eea: mov    %r11d,0x10(%rsp)
  0.20%    0.25%  ││        ││     │  0x00007fa089254eef: callq  0x00007fa089046020  ; OopMap{[24]=NarrowOop [32]=Oop [56]=Oop [72]=Oop [80]=Oop off=660}
                  ││        ││     │                                                ;*invokespecial step
                  ││        ││     │                                                ; - com.google.re2j.Machine::match@356 (line 242)
                  ││        ││     │                                                ;   {optimized virtual_call}
  0.37%    0.19%  ││        ││     │  0x00007fa089254ef4: mov    0x38(%rsp),%r10
  0.03%    0.04%  ││        ││     │  0x00007fa089254ef9: movzbl 0x10(%r10),%eax    ;*getfield matched
                  ││        ││     │                                                ; - com.google.re2j.Machine::match@376 (line 246)
  0.06%    0.03%  ││        ││     │  0x00007fa089254efe: mov    0x28(%rsp),%r11d
  0.32%    0.16%  ││        ││     │  0x00007fa089254f03: test   %r11d,%r11d
                  ││╭       ││     │  0x00007fa089254f06: je     0x00007fa0892551c0  ;*ifne
                  │││       ││     │                                                ; - com.google.re2j.Machine::match@361 (line 243)
  0.00%           │││       ││     │  0x00007fa089254f0c: mov    0x28(%r10),%ebx    ;*getfield matchcap
                  │││       ││     │                                                ; - com.google.re2j.Machine::match@368 (line 246)
  0.04%    0.05%  │││       ││     │  0x00007fa089254f10: mov    0xc(%r12,%rbx,8),%ebp  ;*arraylength
                  │││       ││     │                                                ; - com.google.re2j.Machine::match@371 (line 246)
                  │││       ││     │                                                ; implicit exception: dispatches to 0x00007fa089255dbd
  0.12%    0.10%  │││       ││     │  0x00007fa089254f15: test   %ebp,%ebp
                  │││       ││     │  0x00007fa089254f17: jne    0x00007fa089255501  ;*ifne
                  │││       ││     │                                                ; - com.google.re2j.Machine::match@372 (line 246)
  0.34%    0.24%  │││       ││     │  0x00007fa089254f1d: test   %eax,%eax
                  │││       ││     │  0x00007fa089254f1f: jne    0x00007fa0892555f1  ;*ifeq
                  │││       ││     │                                                ; - com.google.re2j.Machine::match@379 (line 246)
                  │││       ││     │  0x00007fa089254f25: mov    0x2c(%rsp),%ecx
  0.03%    0.03%  │││       ││     │  0x00007fa089254f29: cmp    $0xffffffff,%ecx
                  │││       ││     │  0x00007fa089254f2c: je     0x00007fa089255208  ;*if_icmpeq
                  │││       ││     │                                                ; - com.google.re2j.Machine::match@401 (line 254)
  0.01%    0.02%  │││       ││     │  0x00007fa089254f32: mov    0x48(%rsp),%r8
  0.40%    0.37%  │││       ││     │  0x00007fa089254f37: mov    0x10(%r8),%r11d    ;*getfield end
                  │││       ││     │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                  │││       ││     │                                                ; - com.google.re2j.Machine::match@409 (line 255)
           0.00%  │││       ││     │  0x00007fa089254f3b: mov    0x30(%rsp),%r10d
  0.02%    0.04%  │││       ││     │  0x00007fa089254f40: add    0x58(%rsp),%r10d
           0.01%  │││       ││     │  0x00007fa089254f45: add    0xc(%r8),%r10d     ;*iadd
                  │││       ││     │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                  │││       ││     │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.37%    0.40%  │││       ││     │  0x00007fa089254f49: cmp    %r11d,%r10d
                  │││╭      ││     │  0x00007fa089254f4c: jge    0x00007fa08925519d  ;*if_icmpge
                  ││││      ││     │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                  ││││      ││     │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.01%           ││││      ││     │  0x00007fa089254f52: mov    0x14(%r8),%ebp     ;*getfield str
                  ││││      ││     │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                  ││││      ││     │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.03%    0.03%  ││││      ││     │  0x00007fa089254f56: mov    0x8(%r12,%rbp,8),%r9d  ; implicit exception: dispatches to 0x00007fa089255dcd
  0.08%    0.08%  ││││      ││     │  0x00007fa089254f5b: cmp    $0xf80002da,%r9d   ;   {metadata(&apos;java/lang/String&apos;)}
                  ││││      ││     │  0x00007fa089254f62: jne    0x00007fa089255409
  0.38%    0.46%  ││││      ││     │  0x00007fa089254f68: lea    (%r12,%rbp,8),%r9  ;*invokeinterface charAt
                  ││││      ││     │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  ││││      ││     │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  ││││      ││     │                                                ; - com.google.re2j.Machine::match@409 (line 255)
           0.01%  ││││      ││     │  0x00007fa089254f6c: test   %r10d,%r10d
                  ││││      ││     │  0x00007fa089254f6f: jl     0x00007fa08925554d  ;*iflt
                  ││││      ││     │                                                ; - java.lang.String::charAt@1 (line 657)
                  ││││      ││     │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  ││││      ││     │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  ││││      ││     │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.02%    0.02%  ││││      ││     │  0x00007fa089254f75: mov    %r9,%rdi
  0.02%    0.05%  ││││      ││     │  0x00007fa089254f78: mov    %r10d,%r9d
  0.36%    0.56%  ││││      ││     │  0x00007fa089254f7b: mov    0xc(%rdi),%edx     ;*getfield value
                  ││││      ││     │                                                ; - java.lang.String::charAt@6 (line 657)
                  ││││      ││     │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  ││││      ││     │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  ││││      ││     │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.00%           ││││      ││     │  0x00007fa089254f7e: mov    0xc(%r12,%rdx,8),%ebp  ;*arraylength
                  ││││      ││     │                                                ; - java.lang.String::charAt@9 (line 657)
                  ││││      ││     │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  ││││      ││     │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  ││││      ││     │                                                ; - com.google.re2j.Machine::match@409 (line 255)
                  ││││      ││     │                                                ; implicit exception: dispatches to 0x00007fa089255de1
  0.89%    0.83%  ││││      ││     │  0x00007fa089254f83: cmp    %ebp,%r10d
                  ││││      ││     │  0x00007fa089254f86: jge    0x00007fa089255645  ;*if_icmplt
                  ││││      ││     │                                                ; - java.lang.String::charAt@10 (line 657)
                  ││││      ││     │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  ││││      ││     │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  ││││      ││     │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.35%    0.56%  ││││      ││     │  0x00007fa089254f8c: cmp    %ebp,%r10d
                  ││││      ││     │  0x00007fa089254f8f: jae    0x00007fa089255389
  0.15%    0.09%  ││││      ││     │  0x00007fa089254f95: lea    (%r12,%rdx,8),%r10
                  ││││      ││     │  0x00007fa089254f99: movzwl 0x10(%r10,%r9,2),%r11d  ;*caload
                  ││││      ││     │                                                ; - java.lang.String::charAt@27 (line 660)
                  ││││      ││     │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  ││││      ││     │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  ││││      ││     │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.06%    0.10%  ││││      ││     │  0x00007fa089254f9f: cmp    $0xd800,%r11d
                  ││││      ││     │  0x00007fa089254fa6: jge    0x00007fa0892556b1  ;*if_icmplt
                  ││││      ││     │                                                ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                  ││││      ││     │                                                ; - java.lang.Character::codePointAt@9 (line 4867)
                  ││││      ││     │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  ││││      ││     │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.36%    0.44%  ││││      ││     │  0x00007fa089254fac: shl    $0x3,%r11d         ;*ishl
                  ││││      ││     │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                  ││││      ││     │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.05%    0.04%  ││││      ││     │  0x00007fa089254fb0: mov    %r11d,%r10d
  0.00%           ││││      ││     │  0x00007fa089254fb3: or     $0x1,%r10d
  0.25%    0.35%  ││││      ││     │  0x00007fa089254fb7: and    $0x7,%r11d
  0.11%    0.12%  ││││      ││     │  0x00007fa089254fbb: sar    $0x3,%r10d         ;*ishr
                  ││││      ││     │                                                ; - com.google.re2j.Machine::match@417 (line 256)
  0.29%    0.36%  ││││      ││     │  0x00007fa089254fbf: or     $0x1,%r11d         ;*aload
                  ││││      ││     │                                                ; - com.google.re2j.Machine::match@427 (line 259)
  0.00%           ││││      ││   ↗ │  0x00007fa089254fc3: mov    %r8,0x48(%rsp)
  0.02%    0.03%  ││││      ││   │ │  0x00007fa089254fc8: mov    %rax,-0x8(%rsp)
  0.12%    0.08%  ││││      ││   │ │  0x00007fa089254fcd: mov    0x2c(%rsp),%eax
  0.25%    0.39%  ││││      ││   │ │  0x00007fa089254fd1: mov    %eax,0x34(%rsp)
           0.00%  ││││      ││   │ │  0x00007fa089254fd5: mov    -0x8(%rsp),%rax    ; OopMap{r8=Oop rbx=NarrowOop [32]=Oop [56]=Oop [72]=Oop [80]=Oop off=890}
                  ││││      ││   │ │                                                ;*goto
                  ││││      ││   │ │                                                ; - com.google.re2j.Machine::match@439 (line 262)
  0.04%    0.02%  ││││      ││   │ │  0x00007fa089254fda: test   %eax,0x16e12020(%rip)        # 0x00007fa0a0067000
                  ││││      ││   │ │                                                ;*goto
                  ││││      ││   │ │                                                ; - com.google.re2j.Machine::match@439 (line 262)
                  ││││      ││   │ │                                                ;   {poll}
  0.12%    0.12%  ││││      ││   │ │  0x00007fa089254fe0: mov    0x38(%rsp),%r8
  0.19%    0.36%  ││││      ││   │ │  0x00007fa089254fe5: mov    0x14(%r8),%r9d     ;*getfield re2
                  ││││      ││   │ │                                                ; - com.google.re2j.Machine::match@169 (line 216)
  0.01%    0.00%  ││││      ││   │ │  0x00007fa089254fe9: vmovd  %r9d,%xmm4
  0.01%    0.00%  ││││      ││   │ │  0x00007fa089254fee: mov    0x50(%rsp),%r8
  0.09%    0.07%  ││││      ││   │ │  0x00007fa089254ff3: mov    %r8,%r9
  0.28%    0.36%  ││││      ││   │ │  0x00007fa089254ff6: shr    $0x3,%r9
  0.01%           ││││      ││   │ │  0x00007fa089254ffa: mov    %r9d,0x18(%rsp)
  0.02%           ││││      ││   │ │  0x00007fa089254fff: mov    0x5c(%rsp),%r9d
  0.11%    0.13%  ││││      ││   │ │  0x00007fa089255004: mov    0x20(%rsp),%r8
  0.28%    0.38%  ││││      ││   │ │  0x00007fa089255009: mov    %r8,0x50(%rsp)
  0.00%           ││││      ││   │ │  0x00007fa08925500e: mov    0x30(%rsp),%ecx
                  ││││      ││   │ │  0x00007fa089255012: mov    %ecx,0x28(%rsp)
  0.12%    0.12%  ││││      ││   │ │  0x00007fa089255016: mov    %r11d,0x30(%rsp)
  0.33%    0.37%  ││││      ││   │ │  0x00007fa08925501b: mov    %r10d,0x2c(%rsp)
  0.01%    0.01%  ││││      ││   │ │  0x00007fa089255020: vmovd  %ebx,%xmm3         ;*aload
                  ││││      ││   │ │                                                ; - com.google.re2j.Machine::match@136 (line 207)
  0.01%    0.00%  ↘│││      ││   │ │  0x00007fa089255024: mov    0x18(%rsp),%r10d
  0.16%    0.11%   │││      ││   │ │  0x00007fa089255029: movzbl 0x18(%r12,%r10,8),%r10d  ; implicit exception: dispatches to 0x00007fa089255d6d
  0.27%    0.33%   │││      ││   │ │  0x00007fa08925502f: test   %r10d,%r10d
                   │││╭     ││   │ │  0x00007fa089255032: je     0x00007fa089255183  ;*ifeq
                   ││││     ││   │ │                                                ; - com.google.re2j.Machine::match@141 (line 207)
  0.00%    0.00%   ││││     ││   │ │  0x00007fa089255038: mov    0x14(%rsp),%ecx
           0.01%   ││││     ││   │ │  0x00007fa08925503c: test   %ecx,%ecx
                   ││││     ││   │ │  0x00007fa08925503e: jne    0x00007fa089255731  ;*ifeq
                   ││││     ││   │ │                                                ; - com.google.re2j.Machine::match@148 (line 208)
  0.06%    0.10%   ││││     ││   │ │  0x00007fa089255044: test   %eax,%eax
                   ││││     ││   │ │  0x00007fa089255046: jne    0x00007fa089255791  ;*ifeq
                   ││││     ││   │ │                                                ; - com.google.re2j.Machine::match@162 (line 212)
  0.21%    0.29%   ││││     ││   │ │  0x00007fa08925504c: vmovd  %xmm4,%r10d
  0.01%            ││││     ││   │ │  0x00007fa089255051: mov    0x24(%r12,%r10,8),%r10d  ;*getfield prefix
                   ││││     ││   │ │                                                ; - com.google.re2j.Machine::match@172 (line 216)
                   ││││     ││   │ │                                                ; implicit exception: dispatches to 0x00007fa089255df1
  0.00%            ││││     ││   │ │  0x00007fa089255056: mov    0xc(%r12,%r10,8),%r11d  ;*getfield value
                   ││││     ││   │ │                                                ; - java.lang.String::isEmpty@1 (line 635)
                   ││││     ││   │ │                                                ; - com.google.re2j.Machine::match@175 (line 216)
                   ││││     ││   │ │                                                ; implicit exception: dispatches to 0x00007fa089255e01
  0.09%    0.09%   ││││     ││   │ │  0x00007fa08925505b: mov    0xc(%r12,%r11,8),%ebp  ;*arraylength
                   ││││     ││   │ │                                                ; - java.lang.String::isEmpty@4 (line 635)
                   ││││     ││   │ │                                                ; - com.google.re2j.Machine::match@175 (line 216)
                   ││││     ││   │ │                                                ; implicit exception: dispatches to 0x00007fa089255e11
  0.43%    0.57%   ││││     ││   │ │  0x00007fa089255060: test   %ebp,%ebp
                   ││││     ││   │ │  0x00007fa089255062: jne    0x00007fa089255711  ;*aload_0
                   ││││     ││   │ │                                                ; - com.google.re2j.Machine::match@267 (line 233)
  0.33%    0.36%   ││││     ││↗  │ │  0x00007fa089255068: test   %eax,%eax
                   ││││     │││  │ │  0x00007fa08925506a: jne    0x00007fa08925545d  ;*ifne
                   ││││     │││  │ │                                                ; - com.google.re2j.Machine::match@271 (line 233)
                   ││││     │││  │ │  0x00007fa089255070: mov    0x58(%rsp),%ebx
  0.02%    0.03%   ││││     │││  │ │  0x00007fa089255074: test   %ebx,%ebx
                   ││││╭    │││  │ │  0x00007fa089255076: je     0x00007fa0892551ab  ;*ifeq
                   │││││    │││  │ │                                                ; - com.google.re2j.Machine::match@275 (line 233)
  0.08%    0.10%   │││││    │││  │ │  0x00007fa08925507c: mov    0x40(%rsp),%r8d
  0.28%    0.32%   │││││    │││  │ │  0x00007fa089255081: test   %r8d,%r8d
                   │││││    │││  │ │  0x00007fa089255084: jne    0x00007fa0892554a9  ;*aload_0
                   │││││    │││  │ │                                                ; - com.google.re2j.Machine::match@282 (line 236)
                   │││││    │││  │↗│  0x00007fa08925508a: vmovd  %xmm3,%r10d
  0.02%    0.05%   │││││    │││  │││  0x00007fa08925508f: mov    0xc(%r12,%r10,8),%ebp  ;*arraylength
                   │││││    │││  │││                                                ; - com.google.re2j.Machine::match@286 (line 236)
                   │││││    │││  │││                                                ; implicit exception: dispatches to 0x00007fa089255d7d
  0.11%    0.09%   │││││    │││  │││  0x00007fa089255094: test   %ebp,%ebp
                   │││││    │││  │││  0x00007fa089255096: jg     0x00007fa0892555cd  ;*ifle
                   │││││    │││  │││                                                ; - com.google.re2j.Machine::match@287 (line 236)
  0.23%    0.25%   │││││    │││  │││  0x00007fa08925509c: mov    0x38(%rsp),%rdx
                   │││││    │││  │││  0x00007fa0892550a1: mov    0x18(%rdx),%edi    ;*getfield prog
                   │││││    │││  │││                                                ; - com.google.re2j.Machine::match@298 (line 239)
  0.01%    0.03%   │││││    │││  │││  0x00007fa0892550a4: mov    0x1c(%r12,%rdi,8),%ebp  ;*getfield startInst
                   │││││    │││  │││                                                ; - com.google.re2j.Machine::match@301 (line 239)
                   │││││    │││  │││                                                ; implicit exception: dispatches to 0x00007fa089255d8d
  0.14%    0.08%   │││││    │││  │││  0x00007fa0892550a9: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007fa089255d9d
  0.28%    0.26%   │││││    │││  │││  0x00007fa0892550ae: cmp    $0xf8019a53,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$Alt5Inst&apos;)}
                   │││││    │││  │││  0x00007fa0892550b5: jne    0x00007fa08925533f  ;*invokevirtual add
                   │││││    │││  │││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.00%    0.01%   │││││    │││  │││  0x00007fa0892550bb: mov    %ecx,0x14(%rsp)
  0.02%    0.01%   │││││    │││  │││  0x00007fa0892550bf: mov    %r8d,0x40(%rsp)    ;*ifle
                   │││││    │││  │││                                                ; - com.google.re2j.Machine::match@287 (line 236)
  0.06%    0.07%   │││││    │││  │││  0x00007fa0892550c4: lea    (%r12,%rbp,8),%rsi  ;*invokevirtual add
                   │││││    │││  │││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.27%    0.19%   │││││    │││  │││  0x00007fa0892550c8: mov    0x18(%rsp),%r11d
  0.01%    0.03%   │││││    │││  │││  0x00007fa0892550cd: shl    $0x3,%r11          ;*aload
                   │││││    │││  │││                                                ; - com.google.re2j.Machine::match@136 (line 207)
  0.02%    0.01%   │││││    │││  │││  0x00007fa0892550d1: mov    %r11,0x20(%rsp)
  0.14%    0.03%   │││││    │││  │││  0x00007fa0892550d6: mov    %r10,%r8
  0.23%    0.21%   │││││    │││  │││  0x00007fa0892550d9: shl    $0x3,%r8           ;*getfield matchcap
                   │││││    │││  │││                                                ; - com.google.re2j.Machine::match@283 (line 236)
  0.00%    0.04%   │││││    │││  │││  0x00007fa0892550dd: mov    %r11,%rdx
  0.04%    0.02%   │││││    │││  │││  0x00007fa0892550e0: mov    0x58(%rsp),%ecx
  0.09%    0.06%   │││││    │││  │││  0x00007fa0892550e4: xor    %edi,%edi
  0.19%    0.22%   │││││    │││  │││  0x00007fa0892550e6: mov    0x38(%rsp),%r10
  0.01%    0.00%   │││││    │││  │││  0x00007fa0892550eb: mov    %r10,(%rsp)
  0.02%    0.01%   │││││    │││  │││  0x00007fa0892550ef: callq  0x00007fa089046020  ; OopMap{[24]=NarrowOop [32]=Oop [56]=Oop [72]=Oop [80]=Oop off=1172}
                   │││││    │││  │││                                                ;*invokevirtual add
                   │││││    │││  │││                                                ; - com.google.re2j.Machine::match@315 (line 239)
                   │││││    │││  │││                                                ;   {optimized virtual_call}
  0.07%    0.07%   │││││    │││  │││  0x00007fa0892550f4: mov    0x34(%rsp),%r10d
  0.13%    0.13%   │││││    │││  │││  0x00007fa0892550f9: test   %r10d,%r10d
                   │││││╭   │││  │││  0x00007fa0892550fc: jl     0x00007fa089255192  ;*ifge
                   ││││││   │││  │││                                                ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                   ││││││   │││  │││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.24%    0.36%   ││││││   │││  │││  0x00007fa089255102: xor    %r11d,%r11d        ;*iload_0
                   ││││││   │││  │││                                                ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                   ││││││   │││  │││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.07%    0.09%   ││││││   │││ ↗│││  0x00007fa089255105: cmp    $0xa,%r10d
                   ││││││   │││ ││││  0x00007fa089255109: je     0x00007fa08925521d  ;*iload_1
                   ││││││   │││ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                   ││││││   │││ ││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.03%    0.03%   ││││││   │││ ││││  0x00007fa08925510f: mov    0x2c(%rsp),%r9d
  0.09%    0.06%   ││││││   │││ ││││  0x00007fa089255114: test   %r9d,%r9d
                   ││││││╭  │││ ││││  0x00007fa089255117: jl     0x00007fa08925518c  ;*iload_1
                   │││││││  │││ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                   │││││││  │││ ││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.25%    0.32%   │││││││  │││↗││││  0x00007fa089255119: cmp    $0xa,%r9d
                   │││││││  ││││││││  0x00007fa08925511d: je     0x00007fa089255226  ;*iload_0
                   │││││││  ││││││││                                                ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                   │││││││  ││││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.09%    0.07%   │││││││  ││││││││  0x00007fa089255123: mov    0x34(%rsp),%r8d
  0.03%    0.01%   │││││││  ││││││││  0x00007fa089255128: add    $0xffffffbf,%r8d
  0.07%    0.04%   │││││││  ││││││││  0x00007fa08925512c: cmp    $0x1a,%r8d
                   │││││││╭ ││││││││  0x00007fa089255130: jb     0x00007fa089255142  ;*if_icmple
                   ││││││││ ││││││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                   ││││││││ ││││││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   ││││││││ ││││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.20%    0.31%   ││││││││ ││││││││  0x00007fa089255132: mov    0x34(%rsp),%ecx
  0.08%    0.04%   ││││││││ ││││││││  0x00007fa089255136: add    $0xffffff9f,%ecx
  0.05%    0.06%   ││││││││ ││││││││  0x00007fa089255139: cmp    $0x1a,%ecx
                   ││││││││ ││││││││  0x00007fa08925513c: jae    0x00007fa08925522f  ;*iconst_1
                   ││││││││ ││││││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                   ││││││││ ││││││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   ││││││││ ││││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.04%    0.08%   │││││││↘ ││││││││  0x00007fa089255142: mov    $0x1,%ebp          ;*ireturn
                   │││││││  ││││││││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                   │││││││  ││││││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   │││││││  ││││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.22%    0.25%   │││││││  ││││││││  0x00007fa089255147: mov    0x2c(%rsp),%r8d
  0.07%    0.07%   │││││││  ││││││││  0x00007fa08925514c: add    $0xffffffbf,%r8d
  0.03%    0.05%   │││││││  ││││││││  0x00007fa089255150: cmp    $0x1a,%r8d
                   │││││││ ╭││││││││  0x00007fa089255154: jb     0x00007fa089255166  ;*if_icmple
                   │││││││ │││││││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                   │││││││ │││││││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   │││││││ │││││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.11%    0.13%   │││││││ │││││││││  0x00007fa089255156: mov    0x2c(%rsp),%ecx
  0.21%    0.19%   │││││││ │││││││││  0x00007fa08925515a: add    $0xffffff9f,%ecx
  0.08%    0.07%   │││││││ │││││││││  0x00007fa08925515d: cmp    $0x1a,%ecx
                   │││││││ │││││││││  0x00007fa089255160: jae    0x00007fa089255253  ;*iconst_1
                   │││││││ │││││││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                   │││││││ │││││││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   │││││││ │││││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.02%    0.05%   │││││││ ↘││││││││  0x00007fa089255166: mov    $0x1,%r8d          ;*ireturn
                   │││││││  ││││││││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                   │││││││  ││││││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   │││││││  ││││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.17%    0.18%   │││││││  ││││││││  0x00007fa08925516c: cmp    %r8d,%ebp
                   │││││││  ╰│││││││  0x00007fa08925516f: je     0x00007fa089254e80  ;*if_icmpeq
                   │││││││   │││││││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                   │││││││   │││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.03%    0.05%   │││││││   │││││││  0x00007fa089255175: or     $0x10,%r11d        ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                   │││││││   │││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
           0.04%   │││││││   │││││││  0x00007fa089255179: mov    %r11d,0x5c(%rsp)
  0.07%    0.08%   │││││││   ╰││││││  0x00007fa08925517e: jmpq   0x00007fa089254e89
  0.00%            │││↘│││    ││││││  0x00007fa089255183: mov    0x14(%rsp),%ecx
  0.00%    0.00%   │││ │││    ╰│││││  0x00007fa089255187: jmpq   0x00007fa089255068
  0.00%    0.01%   │││ ││↘     │││││  0x00007fa08925518c: or     $0xa,%r11d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@27 (line 180)
                   │││ ││      │││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
                   │││ ││      ╰││││  0x00007fa089255190: jmp    0x00007fa089255119
           0.00%   │││ │↘       ││││  0x00007fa089255192: mov    $0x5,%r11d
                   │││ │        ╰│││  0x00007fa089255198: jmpq   0x00007fa089255105
  0.00%            ││↘ │         │││  0x00007fa08925519d: mov    $0xffffffff,%r10d
  0.00%    0.00%   ││  │         │││  0x00007fa0892551a3: xor    %r11d,%r11d
                   ││  │         ╰││  0x00007fa0892551a6: jmpq   0x00007fa089254fc3
                   ││  ↘          ││  0x00007fa0892551ab: mov    0x40(%rsp),%r8d
                   ││             ╰│  0x00007fa0892551b0: jmpq   0x00007fa08925508a
                   ↘│              │  0x00007fa0892551b5: mov    $0x1,%r11d
                    │              ╰  0x00007fa0892551bb: jmpq   0x00007fa089254ea2
                    ↘                 0x00007fa0892551c0: mov    0x50(%rsp),%r10
           0.00%                      0x00007fa0892551c5: mov    0xc(%r10),%ebx     ;*getfield size
                                                                                    ; - com.google.re2j.Machine::freeQueue@1 (line 148)
                                                                                    ; - com.google.re2j.Machine::freeQueue@3 (line 144)
                                                                                    ; - com.google.re2j.Machine::match@445 (line 263)
....................................................................................................
 17.00%   18.34%  <total for region 3>

....[Hottest Regions]...............................................................................
 45.08%   44.29%         C2, level 4  com.google.re2j.Machine::step, version 518 (674 bytes) 
 32.45%   33.39%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 525 (1276 bytes) 
 17.00%   18.34%         C2, level 4  com.google.re2j.Machine::match, version 565 (867 bytes) 
  1.31%    1.31%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.84%    0.11%         C2, level 4  com.google.re2j.Machine::init, version 550 (279 bytes) 
  0.56%    0.60%         C2, level 4  com.google.re2j.Machine::match, version 565 (108 bytes) 
  0.18%    0.03%         C2, level 4  com.google.re2j.Machine::init, version 550 (40 bytes) 
  0.13%    0.06%         C2, level 4  com.google.re2j.Machine::init, version 550 (8 bytes) 
  0.12%            [kernel.kallsyms]  [unknown] (49 bytes) 
  0.10%    0.08%         C2, level 4  com.google.re2j.RE2::match, version 576 (9 bytes) 
  0.09%    0.02%   [kernel.kallsyms]  [unknown] (5 bytes) 
  0.09%    0.09%         C2, level 4  com.google.re2j.RE2::match, version 576 (33 bytes) 
  0.08%    0.03%         C2, level 4  com.google.re2j.Machine::match, version 565 (214 bytes) 
  0.08%    0.05%         C2, level 4  java.util.Collections::shuffle, version 581 (136 bytes) 
  0.05%    0.04%         C2, level 4  com.google.re2j.RE2::match, version 576 (0 bytes) 
  0.05%                  C2, level 4  com.google.re2j.RE2::match, version 576 (14 bytes) 
  0.05%    0.03%         C2, level 4  com.google.re2j.RE2::match, version 576 (0 bytes) 
  0.04%    0.02%   [kernel.kallsyms]  [unknown] (11 bytes) 
  0.04%    0.00%   [kernel.kallsyms]  [unknown] (5 bytes) 
  0.04%    0.06%         C2, level 4  com.google.re2j.Machine::match, version 565 (139 bytes) 
  1.61%    1.43%  <...other 344 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 45.10%   44.29%         C2, level 4  com.google.re2j.Machine::step, version 518 
 32.45%   33.39%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 525 
 17.70%   19.05%         C2, level 4  com.google.re2j.Machine::match, version 565 
  2.09%    1.81%   [kernel.kallsyms]  [unknown] 
  1.21%    0.21%         C2, level 4  com.google.re2j.Machine::init, version 550 
  0.49%    0.28%         C2, level 4  com.google.re2j.RE2::match, version 576 
  0.13%    0.07%         C2, level 4  java.util.Collections::shuffle, version 581 
  0.07%    0.03%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 626 
  0.04%    0.02%      hsdis-amd64.so  [unknown] 
  0.03%    0.00%  libpthread-2.26.so  __libc_write 
  0.03%                       [vdso]  __vdso_clock_gettime 
  0.03%    0.09%           libjvm.so  RelocIterator::initialize 
  0.02%    0.01%        libc-2.26.so  __strlen_avx2 
  0.02%    0.04%           libjvm.so  StringTable::unlink_or_oops_do 
  0.02%    0.05%           libjvm.so  PSPromotionManager::copy_to_survivor_space<false> 
  0.02%                  C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 580 
  0.02%    0.00%  libpthread-2.26.so  __pthread_disable_asynccancel 
  0.02%    0.07%        libc-2.26.so  vfprintf 
  0.02%    0.02%           libjvm.so  GenericTaskQueueSet<OverflowTaskQueue<StarTask, (MemoryType)1, 131072u>, (MemoryType)1>::steal_best_of_2 
  0.02%    0.02%           libjvm.so  outputStream::update_position 
  0.45%    0.30%  <...other 73 warm methods...>
....................................................................................................
100.00%   99.75%  <totals>

....[Distribution by Source]........................................................................
 97.18%   97.33%         C2, level 4
  2.09%    1.81%   [kernel.kallsyms]
  0.38%    0.53%           libjvm.so
  0.15%    0.25%        libc-2.26.so
  0.07%    0.05%  libpthread-2.26.so
  0.04%    0.02%      hsdis-amd64.so
  0.04%                       [vdso]
  0.02%    0.01%         interpreter
  0.01%    0.00%        runtime stub
  0.01%                  C1, level 3
  0.00%               perf-23266.map
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:44

Benchmark                     Mode  Cnt      Score    Error  Units
Re2jFindRegex.testExp2       thrpt   20  14622.361 ± 59.184  ops/s
Re2jFindRegex.testExp2:·asm  thrpt             NaN             ---
