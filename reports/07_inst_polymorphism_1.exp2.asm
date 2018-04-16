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
# Warmup Iteration   1: 4729.239 ops/s
# Warmup Iteration   2: 9537.415 ops/s
# Warmup Iteration   3: 9797.647 ops/s
# Warmup Iteration   4: 9913.277 ops/s
# Warmup Iteration   5: 9921.762 ops/s
# Warmup Iteration   6: 9916.651 ops/s
# Warmup Iteration   7: 9915.970 ops/s
# Warmup Iteration   8: 9824.583 ops/s
# Warmup Iteration   9: 10020.027 ops/s
# Warmup Iteration  10: 9914.020 ops/s
# Warmup Iteration  11: 9918.997 ops/s
# Warmup Iteration  12: 9861.275 ops/s
# Warmup Iteration  13: 10012.023 ops/s
# Warmup Iteration  14: 10015.796 ops/s
# Warmup Iteration  15: 10065.466 ops/s
# Warmup Iteration  16: 9955.064 ops/s
# Warmup Iteration  17: 9931.745 ops/s
# Warmup Iteration  18: 9993.500 ops/s
# Warmup Iteration  19: 9987.834 ops/s
# Warmup Iteration  20: 10034.772 ops/s
Iteration   1: 9969.758 ops/s
Iteration   2: 9888.665 ops/s
Iteration   3: 9966.383 ops/s
Iteration   4: 9949.517 ops/s
Iteration   5: 10023.686 ops/s
Iteration   6: 10011.088 ops/s
Iteration   7: 9910.009 ops/s
Iteration   8: 9955.811 ops/s
Iteration   9: 9965.294 ops/s
Iteration  10: 10013.434 ops/s
Iteration  11: 10018.880 ops/s
Iteration  12: 9947.332 ops/s
Iteration  13: 10035.200 ops/s
Iteration  14: 9992.362 ops/s
Iteration  15: 9964.446 ops/s
Iteration  16: 9934.011 ops/s
Iteration  17: 9935.096 ops/s
Iteration  18: 10014.989 ops/s
Iteration  19: 10013.982 ops/s
Iteration  20: 10035.250 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  9977.260 ±(99.9%) 37.103 ops/s [Average]
  (min, avg, max) = (9888.665, 9977.260, 10035.250), stdev = 42.728
  CI (99.9%): [9940.157, 10014.363] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2:·asm":
PrintAssembly processed: 212013 total address lines.
Perf output processed (skipped 23.083 seconds):
 Column 1: cycles (20421 events)
 Column 2: instructions (20572 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 550 (711 bytes) 

                               # parm6:    [sp+0x78]   = int
                               # parm7:    [sp+0x80]   = boolean
                               0x00007ffb052421a0: mov    0x8(%rsi),%r10d
                               0x00007ffb052421a4: shl    $0x3,%r10
                               0x00007ffb052421a8: cmp    %r10,%rax
                               0x00007ffb052421ab: jne    0x00007ffb05045e20  ;   {runtime_call}
                               0x00007ffb052421b1: data16 xchg %ax,%ax
                               0x00007ffb052421b4: nopl   0x0(%rax,%rax,1)
                               0x00007ffb052421bc: data16 data16 xchg %ax,%ax
                             [Verified Entry Point]
  0.15%    0.19%               0x00007ffb052421c0: mov    %eax,-0x14000(%rsp)
  0.12%    0.08%               0x00007ffb052421c7: push   %rbp
  0.21%    0.12%               0x00007ffb052421c8: sub    $0x60,%rsp         ;*synchronization entry
                                                                             ; - com.google.re2j.Machine::step@-1 (line 276)
  0.11%    0.15%               0x00007ffb052421cc: mov    %edi,0x18(%rsp)
  0.03%    0.01%               0x00007ffb052421d0: mov    %r9d,0x14(%rsp)
  0.15%    0.21%               0x00007ffb052421d5: mov    %r8d,0x10(%rsp)
  0.01%    0.04%               0x00007ffb052421da: mov    %rcx,0x8(%rsp)
  0.08%    0.10%               0x00007ffb052421df: vmovq  %rdx,%xmm0
  0.01%    0.01%               0x00007ffb052421e4: vmovq  %rsi,%xmm1
  0.18%    0.16%               0x00007ffb052421e9: mov    0x14(%rsi),%r11d   ;*getfield re2
                                                                             ; - com.google.re2j.Machine::step@1 (line 276)
  0.03%    0.05%               0x00007ffb052421ed: movzbl 0x18(%r12,%r11,8),%r10d  ;*getfield longest
                                                                             ; - com.google.re2j.Machine::step@4 (line 276)
                                                                             ; implicit exception: dispatches to 0x00007ffb05242e35
  0.07%    0.08%               0x00007ffb052421f3: vmovd  %r10d,%xmm2
  0.01%    0.02%               0x00007ffb052421f8: mov    0xc(%rdx),%ecx     ;*getfield size
                                                                             ; - com.google.re2j.Machine::step@15 (line 277)
                                                                             ; implicit exception: dispatches to 0x00007ffb05242e45
  0.13%    0.13%               0x00007ffb052421fb: test   %ecx,%ecx
                  ╭            0x00007ffb052421fd: jle    0x00007ffb05242377  ;*if_icmpge
                  │                                                          ; - com.google.re2j.Machine::step@18 (line 277)
  0.03%    0.03%  │            0x00007ffb05242203: vmovd  %xmm2,%r11d
  0.13%    0.10%  │            0x00007ffb05242208: test   %r11d,%r11d
                  │            0x00007ffb0524220b: jne    0x00007ffb05242959
  0.03%    0.04%  │            0x00007ffb05242211: xor    %r10d,%r10d
  0.08%    0.07%  │╭           0x00007ffb05242214: jmp    0x00007ffb05242236
                  ││           0x00007ffb05242216: data16 nopw 0x0(%rax,%rax,1)
  0.95%    0.46%  ││    ↗      0x00007ffb05242220: mov    %r10d,%ecx
  0.02%    0.01%  ││    │      0x00007ffb05242223: mov    %r11,0x8(%rsp)
  0.15%    0.09%  ││    │      0x00007ffb05242228: mov    %ebx,0x78(%rsp)
  0.06%    0.01%  ││    │      0x00007ffb0524222c: mov    %edi,0x80(%rsp)
  0.97%    0.27%  ││    │      0x00007ffb05242233: mov    %edx,%r10d         ;*getfield size
                  ││    │                                                    ; - com.google.re2j.Machine::step@15 (line 277)
  0.02%    0.05%  │↘    │      0x00007ffb05242236: vmovq  %xmm0,%r11
  0.22%    0.13%  │     │      0x00007ffb0524223b: mov    0x20(%r11),%r8d    ;*getfield denseThreads
                  │     │                                                    ; - com.google.re2j.Machine::step@22 (line 278)
  0.11%    0.04%  │     │      0x00007ffb0524223f: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x00007ffb05242df1
  1.08%    0.49%  │     │      0x00007ffb05242244: cmp    %r11d,%r10d
                  │     │      0x00007ffb05242247: jae    0x00007ffb052426e2
  0.05%    0.03%  │     │      0x00007ffb0524224d: lea    (%r12,%r8,8),%r11
  0.23%    0.17%  │     │      0x00007ffb05242251: mov    0x10(%r11,%r10,4),%r8d  ;*aaload
                  │     │                                                    ; - com.google.re2j.Machine::step@27 (line 278)
  0.08%    0.10%  │     │      0x00007ffb05242256: mov    0x10(%r12,%r8,8),%r9d  ;*getfield inst
                  │     │                                                    ; - com.google.re2j.Machine::step@78 (line 283)
                  │     │                                                    ; implicit exception: dispatches to 0x00007ffb05242e05
  2.59%    1.58%  │     │      0x00007ffb0524225b: mov    0x8(%r12,%r9,8),%r11d  ; implicit exception: dispatches to 0x00007ffb05242e15
  5.14%    7.00%  │     │      0x00007ffb05242260: lea    (%r12,%r9,8),%rdi
  0.03%    0.02%  │     │      0x00007ffb05242264: cmp    $0xf8019992,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │     │      0x00007ffb0524226b: jne    0x00007ffb052426ac  ;*invokevirtual isMatch
                  │     │                                                    ; - com.google.re2j.Machine::step@85 (line 285)
  1.34%    1.52%  │     │      0x00007ffb05242271: mov    0xc(%rdi),%r9d
  0.22%    0.31%  │     │      0x00007ffb05242275: cmp    $0x6,%r9d
                  │ ╭   │      0x00007ffb05242279: je     0x00007ffb05242493  ;*if_icmpne
                  │ │   │                                                    ; - com.google.re2j.Inst::isMatch@6 (line 78)
                  │ │   │                                                    ; - com.google.re2j.Inst$MatchInst::isMatch@1 (line 82)
                  │ │   │                                                    ; - com.google.re2j.Machine::step@-1 (line 276)
  1.28%    1.73%  │ │   │      0x00007ffb0524227f: xor    %eax,%eax          ;*synchronization entry
                  │ │   │                                                    ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%    0.00%  │ │   │   ↗  0x00007ffb05242281: mov    0xc(%r12,%r8,8),%r14d  ;*getfield cap
                  │ │   │   │                                                ; - com.google.re2j.Machine::step@104 (line 289)
  0.03%    0.05%  │ │   │   │  0x00007ffb05242286: vmovq  %xmm1,%r11
  0.14%    0.08%  │ │   │   │  0x00007ffb0524228b: mov    0xc(%r11),%r9d     ;*getfield poolSize
                  │ │   │   │                                                ; - com.google.re2j.Machine::free@1 (line 167)
                  │ │   │   │                                                ; - com.google.re2j.Machine::step@224 (line 303)
  1.18%    1.70%  │ │   │   │  0x00007ffb0524228f: mov    0x24(%r11),%r11d   ;*getfield pool
                  │ │   │   │                                                ; - com.google.re2j.Machine::free@5 (line 167)
                  │ │   │   │                                                ; - com.google.re2j.Machine::step@224 (line 303)
  0.02%           │ │   │   │  0x00007ffb05242293: mov    %r10d,%edx
  0.02%    0.02%  │ │   │   │  0x00007ffb05242296: inc    %edx               ;*iadd
                  │ │   │   │                                                ; - com.google.re2j.Machine::step@171 (line 295)
  0.07%    0.09%  │ │   │   │  0x00007ffb05242298: lea    (%r12,%r8,8),%rsi  ;*aaload
                  │ │   │   │                                                ; - com.google.re2j.Machine::step@27 (line 278)
  1.43%    1.80%  │ │   │   │  0x00007ffb0524229c: test   %eax,%eax
                  │ │   │   │  0x00007ffb0524229e: jne    0x00007ffb05242553  ;*ifeq
                  │ │   │   │                                                ; - com.google.re2j.Machine::step@88 (line 285)
           0.01%  │ │   │   │  0x00007ffb052422a4: mov    0x8(%rdi),%ebx
  0.03%    0.03%  │ │   │   │  0x00007ffb052422a7: cmp    $0xf8019992,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │ │   │   │  0x00007ffb052422ad: jne    0x00007ffb05242729  ;*invokevirtual matchRune
                  │ │   │   │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.09%    0.12%  │ │   │   │  0x00007ffb052422b3: mov    0xc(%rdi),%ebp     ;*getfield op
                  │ │   │   │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@1 (line 134)
                  │ │   │   │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  1.32%    1.73%  │ │   │   │  0x00007ffb052422b6: cmp    $0xa,%ebp
                  │ │╭  │   │  0x00007ffb052422b9: je     0x00007ffb052423b0  ;*if_icmpne
                  │ ││  │   │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@6 (line 134)
                  │ ││  │   │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.03%    0.01%  │ ││  │   │  0x00007ffb052422bf: cmp    $0xb,%ebp
                  │ ││  │   │  0x00007ffb052422c2: je     0x00007ffb05242805  ;*if_icmpne
                  │ ││  │   │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@17 (line 138)
                  │ ││  │   │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.00%    0.01%  │ ││  │   │  0x00007ffb052422c8: cmp    $0x9,%ebp
                  │ ││  │   │  0x00007ffb052422cb: je     0x00007ffb05242845  ;*if_icmpne
                  │ ││  │   │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@38 (line 142)
                  │ ││  │   │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.44%    0.43%  │ ││  │   │  0x00007ffb052422d1: cmp    $0xc,%ebp
                  │ ││  │   │  0x00007ffb052422d4: jne    0x00007ffb052427c5  ;*if_icmpne
                  │ ││  │   │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@61 (line 146)
                  │ ││  │   │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  1.43%    1.48%  │ ││  │   │  0x00007ffb052422da: mov    0x20(%rdi),%eax    ;*getfield f0
                  │ ││  │   │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@65 (line 147)
                  │ ││  │   │                                                ; - com.google.re2j.Machine::step@187 (line 299)
           0.01%  │ ││  │   │  0x00007ffb052422dd: cmp    0x18(%rsp),%eax
                  │ ││╭ │   │  0x00007ffb052422e1: je     0x00007ffb052423b0  ;*if_icmpeq
                  │ │││ │   │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@69 (line 147)
                  │ │││ │   │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.45%    0.46%  │ │││ │   │  0x00007ffb052422e7: mov    0x24(%rdi),%ebx    ;*getfield f1
                  │ │││ │   │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@73 (line 147)
                  │ │││ │   │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.07%    0.10%  │ │││ │   │  0x00007ffb052422ea: cmp    0x18(%rsp),%ebx
                  │ │││╭│   │  0x00007ffb052422ee: je     0x00007ffb052423b0  ;*if_icmpeq
                  │ │││││   │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@77 (line 147)
                  │ │││││   │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  1.22%    1.50%  │ │││││   │  0x00007ffb052422f4: mov    0x28(%rdi),%ebp    ;*getfield f2
                  │ │││││   │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@81 (line 147)
                  │ │││││   │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.02%    0.01%  │ │││││   │  0x00007ffb052422f7: cmp    0x18(%rsp),%ebp
                  │ │││││   │  0x00007ffb052422fb: je     0x00007ffb052428d9  ;*if_icmpeq
                  │ │││││   │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@85 (line 147)
                  │ │││││   │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.49%    0.54%  │ │││││   │  0x00007ffb05242301: mov    0x2c(%rdi),%ebp    ;*getfield f3
                  │ │││││   │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@89 (line 147)
                  │ │││││   │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.04%    0.04%  │ │││││   │  0x00007ffb05242304: cmp    0x18(%rsp),%ebp
                  │ │││││   │  0x00007ffb05242308: je     0x00007ffb05242919  ;*if_icmpne
                  │ │││││   │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@93 (line 147)
                  │ │││││   │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  1.12%    1.56%  │ │││││   │  0x00007ffb0524230e: mov    0x78(%rsp),%ebx
  0.01%    0.01%  │ │││││   │  0x00007ffb05242312: mov    0x80(%rsp),%edi    ;*getfield size
                  │ │││││   │                                                ; - com.google.re2j.Machine::step@15 (line 277)
  0.23%    0.24%  │ │││││   │  0x00007ffb05242319: mov    0xc(%r12,%r11,8),%ebp  ;*arraylength
                  │ │││││   │                                                ; - com.google.re2j.Machine::free@8 (line 167)
                  │ │││││   │                                                ; - com.google.re2j.Machine::step@224 (line 303)
                  │ │││││   │                                                ; implicit exception: dispatches to 0x00007ffb05242e25
  0.03%    0.02%  │ │││││   │  0x00007ffb0524231e: cmp    %ebp,%r9d
                  │ │││││   │  0x00007ffb05242321: jge    0x00007ffb05242885  ;*if_icmplt
                  │ │││││   │                                                ; - com.google.re2j.Machine::free@9 (line 167)
                  │ │││││   │                                                ; - com.google.re2j.Machine::step@224 (line 303)
  1.17%    1.39%  │ │││││   │  0x00007ffb05242327: mov    %r9d,%esi
  0.00%    0.00%  │ │││││   │  0x00007ffb0524232a: inc    %esi
  0.20%    0.15%  │ │││││   │  0x00007ffb0524232c: vmovq  %xmm1,%rax
  0.07%    0.05%  │ │││││   │  0x00007ffb05242331: mov    %esi,0xc(%rax)     ;*putfield poolSize
                  │ │││││   │                                                ; - com.google.re2j.Machine::free@45 (line 170)
                  │ │││││   │                                                ; - com.google.re2j.Machine::step@224 (line 303)
  1.18%    1.04%  │ │││││   │  0x00007ffb05242334: cmp    %ebp,%r9d
                  │ │││││   │  0x00007ffb05242337: jae    0x00007ffb05242765  ;*aastore
                  │ │││││   │                                                ; - com.google.re2j.Machine::free@49 (line 170)
                  │ │││││   │                                                ; - com.google.re2j.Machine::step@224 (line 303)
           0.00%  │ │││││   │  0x00007ffb0524233d: vmovq  %xmm0,%r10
  0.24%    0.16%  │ │││││   │  0x00007ffb05242342: mov    0xc(%r10),%r10d    ;*getfield size
                  │ │││││   │                                                ; - com.google.re2j.Machine::step@15 (line 277)
  0.04%    0.02%  │ │││││   │  0x00007ffb05242346: shl    $0x3,%r11          ;*getfield pool
                  │ │││││   │                                                ; - com.google.re2j.Machine::free@5 (line 167)
                  │ │││││   │                                                ; - com.google.re2j.Machine::step@224 (line 303)
  1.13%    0.75%  │ │││││   │  0x00007ffb0524234a: lea    0x10(%r11,%r9,4),%r11
  0.00%    0.00%  │ │││││   │  0x00007ffb0524234f: mov    %r8d,(%r11)
  0.18%    0.12%  │ │││││   │  0x00007ffb05242352: shr    $0x9,%r11
  0.04%    0.01%  │ │││││   │  0x00007ffb05242356: movabs $0x7ffb00dee000,%r8
  1.23%    0.49%  │ │││││   │  0x00007ffb05242360: mov    %r12b,(%r8,%r11,1)  ;*aastore
                  │ │││││   │                                                ; - com.google.re2j.Machine::free@49 (line 170)
                  │ │││││   │                                                ; - com.google.re2j.Machine::step@224 (line 303)
  0.04%    0.01%  │ │││││   │  0x00007ffb05242364: mov    0x8(%rsp),%r11     ; OopMap{r11=Oop xmm0=Oop xmm1=Oop off=457}
                  │ │││││   │                                                ;*goto
                  │ │││││   │                                                ; - com.google.re2j.Machine::step@230 (line 277)
  0.25%    0.12%  │ │││││  ↗│  0x00007ffb05242369: test   %eax,0x162f2c91(%rip)        # 0x00007ffb1b535000
                  │ │││││  ││                                                ;*goto
                  │ │││││  ││                                                ; - com.google.re2j.Machine::step@230 (line 277)
                  │ │││││  ││                                                ;   {poll}
  0.02%    0.04%  │ │││││  ││  0x00007ffb0524236f: cmp    %ecx,%edx
                  │ ││││╰  ││  0x00007ffb05242371: jl     0x00007ffb05242220  ;*if_icmpge
                  │ ││││   ││                                                ; - com.google.re2j.Machine::step@18 (line 277)
  0.23%    0.21%  ↘ ││││   ││  0x00007ffb05242377: vmovq  %xmm0,%r10
  0.02%             ││││   ││  0x00007ffb0524237c: movzbl 0x18(%r10),%r10d
  0.06%    0.03%    ││││   ││  0x00007ffb05242381: test   %r10d,%r10d
                    ││││ ╭ ││  0x00007ffb05242384: jne    0x00007ffb052423a4  ;*ifeq
                    ││││ │ ││                                                ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                    ││││ │ ││                                                ; - com.google.re2j.Machine::step@234 (line 306)
  0.01%    0.00%    ││││ │ ││  0x00007ffb05242386: vmovq  %xmm0,%r10
  0.22%    0.17%    ││││ │ ││  0x00007ffb0524238b: mov    %r12d,0xc(%r10)    ;*putfield size
                    ││││ │ ││                                                ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                    ││││ │ ││                                                ; - com.google.re2j.Machine::step@234 (line 306)
                    ││││ │ ││  0x00007ffb0524238f: mov    0x1c(%r10),%ebp    ;*getfield pcs
                    ││││ │ ││                                                ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                    ││││ │ ││                                                ; - com.google.re2j.Machine::step@234 (line 306)
  0.02%    0.02%    ││││ │ ││  0x00007ffb05242393: movb   $0x1,0x18(%r10)    ;*putfield empty
                    ││││ │ ││                                                ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                    ││││ │ ││                                                ; - com.google.re2j.Machine::step@234 (line 306)
           0.00%    ││││ │ ││  0x00007ffb05242398: mov    %r12,0x10(%r10)    ;*putfield pcsl
                    ││││ │ ││                                                ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                    ││││ │ ││                                                ; - com.google.re2j.Machine::step@234 (line 306)
  0.22%    0.13%    ││││ │ ││  0x00007ffb0524239c: test   %ebp,%ebp
                    ││││ │ ││  0x00007ffb0524239e: jne    0x00007ffb0524298b  ;*getfield size
                    ││││ │ ││                                                ; - com.google.re2j.Machine::step@15 (line 277)
  0.00%             ││││ ↘ ││  0x00007ffb052423a4: add    $0x60,%rsp
  0.03%    0.05%    ││││   ││  0x00007ffb052423a8: pop    %rbp
  0.01%    0.01%    ││││   ││  0x00007ffb052423a9: test   %eax,0x162f2c51(%rip)        # 0x00007ffb1b535000
                    ││││   ││                                                ;   {poll_return}
  0.21%    0.09%    ││││   ││  0x00007ffb052423af: retq   
  0.53%    0.41%    │↘↘↘   ││  0x00007ffb052423b0: mov    0x1c(%rdi),%r11d   ;*getfield outInst
                    │      ││                                                ; - com.google.re2j.Machine::step@195 (line 300)
  0.34%    0.36%    │      ││  0x00007ffb052423b4: mov    0x8(%r12,%r11,8),%ebx  ; implicit exception: dispatches to 0x00007ffb05242e55
  0.27%    0.05%    │      ││  0x00007ffb052423b9: lea    (%r12,%r11,8),%r9
                    │      ││  0x00007ffb052423bd: xor    %edi,%edi
                    │      ││  0x00007ffb052423bf: mov    $0x1,%eax
                    │      ││  0x00007ffb052423c4: cmp    $0xf8019992,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                    │     ╭││  0x00007ffb052423ca: jne    0x00007ffb0524249d  ;*invokevirtual add
                    │     │││                                                ; - com.google.re2j.Machine::step@211 (line 300)
  0.08%    0.00%    │     │││  0x00007ffb052423d0: mov    0x18(%r9),%ebx     ;*getfield pc
                    │     │││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                    │     │││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%             │     │││  0x00007ffb052423d4: mov    0x8(%rsp),%r11
                    │     │││  0x00007ffb052423d9: mov    0x10(%r11),%rbp    ;*getfield pcsl
                    │     │││                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                    │     │││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │     │││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │     │││                                                ; implicit exception: dispatches to 0x00007ffb05242e75
  0.06%             │     │││  0x00007ffb052423dd: cmp    $0x40,%ebx
                    │     │││  0x00007ffb052423e0: jg     0x00007ffb05242a39  ;*if_icmpgt
                    │     │││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                    │     │││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │     │││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.03%    0.03%    │     │││  0x00007ffb052423e6: mov    %ebx,%ecx
                    │     │││  0x00007ffb052423e8: shl    %cl,%rax           ;*lshl
                    │     │││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                    │     │││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │     │││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.09%    0.02%    │     │││  0x00007ffb052423eb: mov    %rbp,%rcx
                    │     │││  0x00007ffb052423ee: and    %rax,%rcx          ;*land
                    │     │││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                    │     │││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │     │││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%             │     │││  0x00007ffb052423f1: test   %rcx,%rcx
                    │     │││  0x00007ffb052423f4: jne    0x00007ffb05242a89  ;*ifeq
                    │     │││                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                    │     │││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │     │││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.08%    0.01%    │     │││  0x00007ffb052423fa: cmp    $0x40,%ebx
                    │     │││  0x00007ffb052423fd: jge    0x00007ffb05242ae9  ;*if_icmpge
                    │     │││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                    │     │││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │     │││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
           0.00%    │     │││  0x00007ffb05242403: mov    %r12b,0x18(%r11)   ;*putfield empty
                    │     │││                                                ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                    │     │││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │     │││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.05%             │     │││  0x00007ffb05242407: or     %rbp,%rax
                    │     │││  0x00007ffb0524240a: mov    %rax,0x10(%r11)    ;*putfield pcsl
                    │     │││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                    │     │││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │     │││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.06%    0.00%    │     │││  0x00007ffb0524240e: mov    %rsi,%rbx
                    │     │││  0x00007ffb05242411: mov    %r9,%rcx
  0.00%             │     │││  0x00007ffb05242414: shr    $0x3,%rcx
                    │     │││  0x00007ffb05242418: mov    %ecx,0x10(%r12,%r8,8)
  0.02%    0.01%    │     │││  0x00007ffb0524241d: shr    $0x9,%rbx
  0.00%             │     │││  0x00007ffb05242421: movabs $0x7ffb00dee000,%r9
  0.01%    0.00%    │     │││  0x00007ffb0524242b: mov    %r12b,(%r9,%rbx,1)  ;*putfield inst
                    │     │││                                                ; - com.google.re2j.Inst$MatchInst::add@41 (line 101)
                    │     │││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │     │││  0x00007ffb0524242f: mov    0xc(%r12,%r14,8),%ebp  ;*arraylength
                    │     │││                                                ; - com.google.re2j.Inst$MatchInst::add@45 (line 103)
                    │     │││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │     │││                                                ; implicit exception: dispatches to 0x00007ffb05242e89
  0.03%    0.00%    │     │││  0x00007ffb05242434: test   %ebp,%ebp
                    │     │││  0x00007ffb05242436: jle    0x00007ffb052429ed  ;*ifle
                    │     │││                                                ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                    │     │││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │     │││  0x00007ffb0524243c: mov    0x20(%r11),%r9d    ;*getfield denseThreads
                    │     │││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                    │     │││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │     │││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%             │     │││  0x00007ffb05242440: mov    0xc(%r11),%ebp     ;*getfield size
                    │     │││                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                    │     │││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │     │││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │     │││  0x00007ffb05242444: mov    %ebp,%ebx
  0.04%             │     │││  0x00007ffb05242446: inc    %ebx
  0.01%             │     │││  0x00007ffb05242448: mov    %ebx,0xc(%r11)     ;*putfield size
                    │     │││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                    │     │││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │     │││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%             │     │││  0x00007ffb0524244c: mov    0xc(%r12,%r9,8),%ecx  ; implicit exception: dispatches to 0x00007ffb05242e99
                    │     │││  0x00007ffb05242451: cmp    %ecx,%ebp
                    │     │││  0x00007ffb05242453: jae    0x00007ffb052429a1  ;*aastore
                    │     │││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    │     │││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │     │││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.05%    0.01%    │     │││  0x00007ffb05242459: lea    (%r12,%r9,8),%r10  ;*getfield denseThreads
                    │     │││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                    │     │││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │     │││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │     │││  0x00007ffb0524245d: lea    0x10(%r10,%rbp,4),%r10
  0.01%             │     │││  0x00007ffb05242462: mov    %r8d,(%r10)
  0.14%    0.03%    │     │││  0x00007ffb05242465: shr    $0x9,%r10
  0.03%    0.01%    │     │││  0x00007ffb05242469: movabs $0x7ffb00dee000,%r8
  0.01%    0.00%    │     │││  0x00007ffb05242473: mov    %r12b,(%r8,%r10,1)  ;*synchronization entry
                    │     │││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.16%    0.12%    │     │││  0x00007ffb05242477: vmovq  %xmm0,%r10
           0.00%    │     │││  0x00007ffb0524247c: mov    0xc(%r10),%ecx     ;*getfield size
                    │     │││                                                ; - com.google.re2j.Machine::step@15 (line 277)
  0.01%    0.00%    │     │││  0x00007ffb05242480: mov    %ecx,%r10d
  0.00%             │     │││  0x00007ffb05242483: mov    0x78(%rsp),%ebx
  0.04%    0.04%    │     │││  0x00007ffb05242487: mov    0x80(%rsp),%edi
                    │     │╰│  0x00007ffb0524248e: jmpq   0x00007ffb05242369
                    ↘     │ │  0x00007ffb05242493: mov    $0x1,%eax
                          │ ╰  0x00007ffb05242498: jmpq   0x00007ffb05242281
                          ↘    0x00007ffb0524249d: cmp    $0xf801990c,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                               0x00007ffb052424a3: jne    0x00007ffb05242b85  ;*invokevirtual add
                                                                             ; - com.google.re2j.Machine::step@211 (line 300)
                               0x00007ffb052424a9: mov    0x18(%r9),%ebx     ;*getfield pc
                                                                             ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                                                                             ; - com.google.re2j.Machine::step@211 (line 300)
                               0x00007ffb052424ad: mov    0x8(%rsp),%r11
....................................................................................................
 35.15%   33.93%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Inst$AltInst::add, version 544 (1180 bytes) 

                           0x00007ffb05246e0e: shr    $0x3,%r11
                           0x00007ffb05246e12: mov    %r11d,(%r10)
                           0x00007ffb05246e15: shr    $0x9,%r10
                           0x00007ffb05246e19: movabs $0x7ffb00dee000,%r11
                           0x00007ffb05246e23: mov    %r12b,(%r11,%r10,1)  ;*aastore
                                                                         ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                                                                         ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                         ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ╭        0x00007ffb05246e27: jmpq   0x00007ffb0524717c  ;*invokevirtual add
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.00%    0.00%  │        0x00007ffb05246e2c: mov    0x18(%r10),%ecx    ;*getfield pc
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@2 (line 187)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.40%    0.37%  │        0x00007ffb05246e30: cmp    $0x40,%ecx
                  │        0x00007ffb05246e33: jg     0x00007ffb052476b5  ;*if_icmpgt
                  │                                                      ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.04%    0.03%  │        0x00007ffb05246e39: mov    $0x1,%r11d
  0.03%    0.04%  │        0x00007ffb05246e3f: shl    %cl,%r11           ;*lshl
                  │                                                      ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.47%    0.44%  │        0x00007ffb05246e42: mov    %rbx,%r8
  0.07%    0.02%  │        0x00007ffb05246e45: and    %r11,%r8           ;*land
                  │                                                      ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
           0.01%  │        0x00007ffb05246e48: test   %r8,%r8
                  │        0x00007ffb05246e4b: jne    0x00007ffb05247701  ;*ifeq
                  │                                                      ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.46%    0.78%  │        0x00007ffb05246e51: cmp    $0x40,%ecx
                  │        0x00007ffb05246e54: jge    0x00007ffb05247755  ;*if_icmpge
                  │                                                      ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.05%    0.03%  │        0x00007ffb05246e5a: mov    0x1c(%r10),%ebp    ;*getfield outInst
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@23 (line 192)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.03%    0.04%  │        0x00007ffb05246e5e: or     %r11,%rbx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.00%           │        0x00007ffb05246e61: mov    %rbx,0x10(%rdx)    ;*putfield pcsl
                  │                                                      ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.50%    0.69%  │        0x00007ffb05246e65: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007ffb05247eb5
  0.07%    0.02%  │        0x00007ffb05246e6a: lea    (%r12,%rbp,8),%r13
  0.03%    0.03%  │        0x00007ffb05246e6e: cmp    $0xf8019843,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$AltInst&apos;)}
                  │╭       0x00007ffb05246e75: je     0x00007ffb05246fe6
           0.00%  ││       0x00007ffb05246e7b: cmp    $0xf8019992,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  ││       0x00007ffb05246e82: jne    0x00007ffb05247a11  ;*invokevirtual add
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.21%    0.19%  ││       0x00007ffb05246e88: mov    0x18(%r13),%ecx    ;*getfield pc
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.04%    0.06%  ││       0x00007ffb05246e8c: cmp    $0x40,%ecx
                  ││       0x00007ffb05246e8f: jg     0x00007ffb05247d09  ;*if_icmpgt
                  ││                                                     ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.02%    0.02%  ││       0x00007ffb05246e95: mov    $0x1,%r11d
  0.00%    0.00%  ││       0x00007ffb05246e9b: shl    %cl,%r11           ;*lshl
                  ││                                                     ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.23%    0.51%  ││       0x00007ffb05246e9e: mov    %rbx,%r8
           0.01%  ││       0x00007ffb05246ea1: and    %r11,%r8           ;*land
                  ││                                                     ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.23%    0.30%  ││       0x00007ffb05246ea4: test   %r8,%r8
                  ││       0x00007ffb05246ea7: jne    0x00007ffb05247d59  ;*ifeq
                  ││                                                     ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.02%    0.03%  ││       0x00007ffb05246ead: cmp    $0x40,%ecx
                  ││       0x00007ffb05246eb0: jge    0x00007ffb05247db5  ;*if_icmpge
                  ││                                                     ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.00%    0.02%  ││       0x00007ffb05246eb6: or     %r11,%rbx
                  ││       0x00007ffb05246eb9: mov    %rbx,0x10(%rdx)    ;*putfield pcsl
                  ││                                                     ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.28%    0.30%  ││       0x00007ffb05246ebd: mov    %r13,%r8
  0.02%    0.03%  ││       0x00007ffb05246ec0: shr    $0x3,%r8           ;*putfield inst
                  ││                                                     ; - com.google.re2j.Machine::alloc@45 (line 138)
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  ││       0x00007ffb05246ec4: test   %rdi,%rdi
                  ││       0x00007ffb05246ec7: jne    0x00007ffb0524730d  ;*ifnonnull
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@24 (line 98)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.00%           ││       0x00007ffb05246ecd: mov    0xa0(%rsp),%rbx
  0.21%    0.21%  ││       0x00007ffb05246ed5: mov    0xc(%rbx),%r11d    ;*getfield poolSize
                  ││                                                     ; - com.google.re2j.Machine::alloc@1 (line 132)
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  ││                                                     ; implicit exception: dispatches to 0x00007ffb05248011
  0.05%    0.02%  ││       0x00007ffb05246ed9: test   %r11d,%r11d
                  ││       0x00007ffb05246edc: jle    0x00007ffb05247cb1  ;*ifle
                  ││                                                     ; - com.google.re2j.Machine::alloc@4 (line 132)
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.01%    0.01%  ││       0x00007ffb05246ee2: mov    0x24(%rbx),%ecx    ;*getfield pool
                  ││                                                     ; - com.google.re2j.Machine::alloc@18 (line 134)
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
           0.00%  ││       0x00007ffb05246ee5: mov    %r11d,%ebp
  0.25%    0.22%  ││       0x00007ffb05246ee8: dec    %ebp               ;*isub
                  ││                                                     ; - com.google.re2j.Machine::alloc@13 (line 133)
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.02%    0.02%  ││       0x00007ffb05246eea: mov    %ebp,0xc(%rbx)     ;*putfield poolSize
                  ││                                                     ; - com.google.re2j.Machine::alloc@14 (line 133)
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.02%    0.01%  ││       0x00007ffb05246eed: mov    0xc(%r12,%rcx,8),%r9d  ; implicit exception: dispatches to 0x00007ffb05248025
  0.01%    0.01%  ││       0x00007ffb05246ef2: cmp    %r9d,%ebp
                  ││       0x00007ffb05246ef5: jae    0x00007ffb05247a5d
  0.28%    0.23%  ││       0x00007ffb05246efb: lea    (%r12,%rcx,8),%r9
  0.01%    0.01%  ││       0x00007ffb05246eff: mov    0xc(%r9,%r11,4),%r9d  ;*aaload
                  ││                                                     ; - com.google.re2j.Machine::alloc@25 (line 134)
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.02%    0.01%  ││       0x00007ffb05246f04: mov    %r8d,0x10(%r12,%r9,8)  ;*putfield inst
                  ││                                                     ; - com.google.re2j.Machine::alloc@45 (line 138)
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  ││                                                     ; implicit exception: dispatches to 0x00007ffb05248035
  0.60%    0.61%  ││       0x00007ffb05246f09: lea    (%r12,%r9,8),%rdi  ;*aaload
                  ││                                                     ; - com.google.re2j.Machine::alloc@25 (line 134)
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.14%    0.13%  ││       0x00007ffb05246f0d: mov    %rdi,%r11
                  ││       0x00007ffb05246f10: shr    $0x9,%r11
                  ││       0x00007ffb05246f14: movabs $0x7ffb00dee000,%r8
  0.17%    0.16%  ││       0x00007ffb05246f1e: mov    %r12b,(%r8,%r11,1)  ;*aload_3
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@44 (line 103)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.31%    0.29%  ││       0x00007ffb05246f22: mov    0x58(%rsp),%r11
                  ││       0x00007ffb05246f27: mov    0xc(%r11),%r11d    ;*arraylength
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@45 (line 103)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  ││                                                     ; implicit exception: dispatches to 0x00007ffb05247fe5
  0.01%    0.00%  ││       0x00007ffb05246f2b: test   %r11d,%r11d
                  ││       0x00007ffb05246f2e: jle    0x00007ffb05247c61  ;*ifle
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.01%    0.03%  ││       0x00007ffb05246f34: mov    0xc(%rdi),%r8d     ;*getfield cap
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@51 (line 103)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.27%    0.30%  ││       0x00007ffb05246f38: mov    %r8,%r9
                  ││       0x00007ffb05246f3b: shl    $0x3,%r9
                  ││       0x00007ffb05246f3f: cmp    0x58(%rsp),%r9
                  ││╭      0x00007ffb05246f44: je     0x00007ffb05246f9c  ;*if_acmpeq
                  │││                                                    ; - com.google.re2j.Inst$MatchInst::add@55 (line 103)
                  │││                                                    ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │││                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.02%    0.02%  │││      0x00007ffb05246f46: mov    0xc(%r12,%r8,8),%edx  ; implicit exception: dispatches to 0x00007ffb05248049
  0.47%    0.54%  │││      0x00007ffb05246f4b: lea    (%r12,%r8,8),%rcx  ;*getfield cap
                  │││                                                    ; - com.google.re2j.Inst$MatchInst::add@51 (line 103)
                  │││                                                    ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │││                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │││      0x00007ffb05246f4f: cmp    %r11d,%edx
                  │││      0x00007ffb05246f52: jb     0x00007ffb05247aad
  0.46%    0.55%  │││      0x00007ffb05246f58: mov    %r10,0x20(%rsp)
  0.01%    0.01%  │││      0x00007ffb05246f5d: mov    %rbx,0x8(%rsp)
  0.02%    0.05%  │││      0x00007ffb05246f62: mov    %rdi,0xa0(%rsp)
                  │││      0x00007ffb05246f6a: mov    %r14,%rbp
  0.24%    0.32%  │││      0x00007ffb05246f6d: lea    0x10(%r12,%r8,8),%rsi
  0.01%    0.01%  │││      0x00007ffb05246f72: movslq %r11d,%rdx
  0.04%    0.04%  │││      0x00007ffb05246f75: mov    0x18(%rsp),%rdi
                  │││      0x00007ffb05246f7a: movabs $0x7ffb05052640,%r10
  0.23%    0.30%  │││      0x00007ffb05246f84: callq  *%r10              ;*invokestatic arraycopy
                  │││                                                    ; - com.google.re2j.Inst$MatchInst::add@68 (line 104)
                  │││                                                    ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │││                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │││      0x00007ffb05246f87: mov    %rbp,%r14
  0.01%    0.01%  │││      0x00007ffb05246f8a: mov    0xa0(%rsp),%rdi
  0.22%    0.27%  │││      0x00007ffb05246f92: mov    0x8(%rsp),%rbx
                  │││      0x00007ffb05246f97: mov    0x20(%rsp),%r10    ;*aload_1
                  │││                                                    ; - com.google.re2j.Inst$MatchInst::add@71 (line 106)
                  │││                                                    ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │││                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.02%    0.01%  ││↘      0x00007ffb05246f9c: mov    0xc(%r14),%r9d     ;*getfield size
                  ││                                                     ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.24%    0.14%  ││       0x00007ffb05246fa0: mov    0x20(%r14),%ebp    ;*getfield denseThreads
                  ││                                                     ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.04%    0.05%  ││       0x00007ffb05246fa4: mov    %r9d,%r8d
                  ││       0x00007ffb05246fa7: inc    %r8d
  0.02%    0.02%  ││       0x00007ffb05246faa: mov    %r8d,0xc(%r14)     ;*putfield size
                  ││                                                     ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.29%    0.28%  ││       0x00007ffb05246fae: mov    0xc(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007ffb05247ff5
  0.07%    0.04%  ││       0x00007ffb05246fb3: cmp    %r8d,%r9d
                  ││       0x00007ffb05246fb6: jae    0x00007ffb052479c5  ;*aastore
                  ││                                                     ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.01%    0.01%  ││       0x00007ffb05246fbc: lea    (%r12,%rbp,8),%r11  ;*getfield denseThreads
                  ││                                                     ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.01%    0.01%  ││       0x00007ffb05246fc0: lea    0x10(%r11,%r9,4),%r11
  0.27%    0.15%  ││       0x00007ffb05246fc5: mov    %rdi,%r8
  0.05%    0.03%  ││       0x00007ffb05246fc8: shr    $0x3,%r8
  0.01%    0.00%  ││       0x00007ffb05246fcc: mov    %r8d,(%r11)
  0.22%    0.24%  ││       0x00007ffb05246fcf: shr    $0x9,%r11
  0.16%    0.21%  ││       0x00007ffb05246fd3: movabs $0x7ffb00dee000,%r8
  0.02%    0.03%  ││       0x00007ffb05246fdd: mov    %r12b,(%r8,%r11,1)  ;*aastore
                  ││                                                     ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.07%    0.08%  ││       0x00007ffb05246fe1: xor    %r13d,%r13d
  0.13%    0.11%  ││ ╭     0x00007ffb05246fe4: jmp    0x00007ffb05247035
  0.01%           │↘ │     0x00007ffb05246fe6: mov    %r10,0x20(%rsp)
  0.24%    0.25%  │  │     0x00007ffb05246feb: mov    %rdx,0x8(%rsp)     ;*invokevirtual add
                  │  │                                                   ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.00%    0.01%  │  │     0x00007ffb05246ff0: mov    %r13,%rsi          ;*invokevirtual add
                  │  │                                                   ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                  │  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.01%    0.03%  │  │     0x00007ffb05246ff3: mov    0x30(%rsp),%ecx
  0.00%    0.00%  │  │     0x00007ffb05246ff7: mov    0x58(%rsp),%r8
  0.21%    0.34%  │  │     0x00007ffb05246ffc: mov    0x54(%rsp),%r9d
           0.01%  │  │     0x00007ffb05247001: mov    0xa0(%rsp),%r10
  0.01%    0.02%  │  │     0x00007ffb05247009: mov    %r10,(%rsp)
                  │  │     0x00007ffb0524700d: mov    %ecx,0x28(%rsp)
  0.28%    0.33%  │  │     0x00007ffb05247011: mov    %r8,0x38(%rsp)
  0.02%    0.01%  │  │     0x00007ffb05247016: mov    %r9d,0x2c(%rsp)
  0.02%    0.01%  │  │     0x00007ffb0524701b: callq  0x00007ffb05046020  ; OopMap{[160]=Oop [8]=Oop [16]=Oop [24]=Derived_oop_[56] [32]=Oop [56]=Oop [88]=Oop off=992}
                  │  │                                                   ;*invokevirtual add
                  │  │                                                   ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │  │                                                   ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │  │                                                   ;   {optimized virtual_call}
  0.15%    0.19%  │  │     0x00007ffb05247020: mov    0x8(%rsp),%r14
  0.06%    0.08%  │  │     0x00007ffb05247025: mov    0xa0(%rsp),%rbx
  0.03%    0.08%  │  │     0x00007ffb0524702d: mov    0x20(%rsp),%r10
  0.22%    0.22%  │  │     0x00007ffb05247032: mov    %rax,%r13          ;*synchronization entry
                  │  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.10%    0.14%  │  ↘     0x00007ffb05247035: mov    0x20(%r10),%ebp    ;*getfield argInst
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@41 (line 193)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.14%    0.21%  │        0x00007ffb05247039: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007ffb05247ecd
  0.59%    0.69%  │        0x00007ffb0524703e: cmp    $0xf8019992,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │        0x00007ffb05247045: jne    0x00007ffb052473fd
  0.35%    0.37%  │        0x00007ffb0524704b: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.08%    0.04%  │        0x00007ffb0524704f: mov    0x18(%r10),%ecx    ;*getfield pc
                  │                                                      ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.07%    0.09%  │        0x00007ffb05247053: cmp    $0x40,%ecx
                  │        0x00007ffb05247056: jg     0x00007ffb052477a1  ;*if_icmpgt
                  │                                                      ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                  │                                                      ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.17%    0.23%  │        0x00007ffb0524705c: mov    $0x1,%r11d
  0.20%    0.18%  │        0x00007ffb05247062: shl    %cl,%r11           ;*lshl
                  │                                                      ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                  │                                                      ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.54%    0.78%  │        0x00007ffb05247065: mov    0x10(%r14),%r8     ;*getfield pcsl
                  │                                                      ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                  │                                                      ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.12%    0.20%  │        0x00007ffb05247069: mov    %r8,%r9
  0.12%    0.01%  │        0x00007ffb0524706c: and    %r11,%r9           ;*land
                  │                                                      ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                  │                                                      ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.06%    0.10%  │        0x00007ffb0524706f: test   %r9,%r9
                  │        0x00007ffb05247072: jne    0x00007ffb052477f1  ;*ifeq
                  │                                                      ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                  │                                                      ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.28%    0.32%  │        0x00007ffb05247078: cmp    $0x40,%ecx
                  │        0x00007ffb0524707b: jge    0x00007ffb0524784d  ;*if_icmpge
                  │                                                      ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                  │                                                      ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.10%    0.12%  │        0x00007ffb05247081: mov    %r12b,0x18(%r14)   ;*putfield empty
                  │                                                      ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                  │                                                      ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.13%    0.16%  │        0x00007ffb05247085: or     %r8,%r11
  0.07%    0.07%  │        0x00007ffb05247088: mov    %r11,0x10(%r14)    ;*putfield pcsl
                  │                                                      ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                  │                                                      ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.26%    0.35%  │        0x00007ffb0524708c: mov    %r10,%r8
  0.15%    0.09%  │        0x00007ffb0524708f: shr    $0x3,%r8           ;*putfield inst
                  │                                                      ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │                                                      ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.12%    0.12%  │        0x00007ffb05247093: test   %r13,%r13
                  │   ╭    0x00007ffb05247096: jne    0x00007ffb052472c9  ;*ifnonnull
                  │   │                                                  ; - com.google.re2j.Inst$MatchInst::add@24 (line 98)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.05%    0.04%  │   │    0x00007ffb0524709c: mov    0xc(%rbx),%edi     ;*getfield poolSize
                  │   │                                                  ; - com.google.re2j.Machine::alloc@1 (line 132)
                  │   │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │   │                                                  ; implicit exception: dispatches to 0x00007ffb05247f11
  0.24%    0.27%  │   │    0x00007ffb0524709f: test   %edi,%edi
                  │   │    0x00007ffb052470a1: jle    0x00007ffb05247679  ;*ifle
                  │   │                                                  ; - com.google.re2j.Machine::alloc@4 (line 132)
                  │   │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.10%    0.12%  │   │    0x00007ffb052470a7: mov    0x24(%rbx),%r9d    ;*getfield pool
                  │   │                                                  ; - com.google.re2j.Machine::alloc@18 (line 134)
                  │   │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.15%    0.13%  │   │    0x00007ffb052470ab: mov    %edi,%ebp
  0.03%    0.03%  │   │    0x00007ffb052470ad: dec    %ebp               ;*isub
                  │   │                                                  ; - com.google.re2j.Machine::alloc@13 (line 133)
                  │   │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.33%    0.29%  │   │    0x00007ffb052470af: mov    %ebp,0xc(%rbx)     ;*putfield poolSize
                  │   │                                                  ; - com.google.re2j.Machine::alloc@14 (line 133)
                  │   │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.11%    0.11%  │   │    0x00007ffb052470b2: mov    0xc(%r12,%r9,8),%r11d  ; implicit exception: dispatches to 0x00007ffb05247f25
  0.09%    0.08%  │   │    0x00007ffb052470b7: cmp    %r11d,%ebp
                  │   │    0x00007ffb052470ba: jae    0x00007ffb0524743d
  0.04%    0.04%  │   │    0x00007ffb052470c0: lea    (%r12,%r9,8),%r11
  0.30%    0.31%  │   │    0x00007ffb052470c4: mov    0xc(%r11,%rdi,4),%r9d  ;*aaload
                  │   │                                                  ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │   │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.12%    0.19%  │   │    0x00007ffb052470c9: mov    %r8d,0x10(%r12,%r9,8)  ;*putfield inst
                  │   │                                                  ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │   │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │   │                                                  ; implicit exception: dispatches to 0x00007ffb05247f35
  0.41%    0.41%  │   │    0x00007ffb052470ce: lea    (%r12,%r9,8),%r13  ;*aaload
                  │   │                                                  ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │   │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.02%    0.06%  │   │    0x00007ffb052470d2: mov    %r13,%r10
  0.13%    0.18%  │   │    0x00007ffb052470d5: shr    $0x9,%r10
  0.12%    0.09%  │   │    0x00007ffb052470d9: movabs $0x7ffb00dee000,%r11
  0.28%    0.36%  │   │    0x00007ffb052470e3: mov    %r12b,(%r11,%r10,1)  ;*aload_3
                  │   │                                                  ; - com.google.re2j.Inst$MatchInst::add@44 (line 103)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.47%    0.40%  │   │    0x00007ffb052470e7: mov    0x58(%rsp),%r10
  0.05%    0.06%  │   │    0x00007ffb052470ec: mov    0xc(%r10),%r10d    ;*arraylength
                  │   │                                                  ; - com.google.re2j.Inst$MatchInst::add@45 (line 103)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │   │                                                  ; implicit exception: dispatches to 0x00007ffb05247ee9
  0.14%    0.13%  │   │    0x00007ffb052470f0: test   %r10d,%r10d
                  │   │    0x00007ffb052470f3: jle    0x00007ffb0524763d  ;*ifle
                  │   │                                                  ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.14%    0.22%  │   │    0x00007ffb052470f9: mov    0xc(%r13),%r8d     ;*getfield cap
                  │   │                                                  ; - com.google.re2j.Inst$MatchInst::add@51 (line 103)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.19%    0.26%  │   │    0x00007ffb052470fd: mov    %r8,%r11
  0.13%    0.08%  │   │    0x00007ffb05247100: shl    $0x3,%r11
  0.09%    0.13%  │   │    0x00007ffb05247104: cmp    0x58(%rsp),%r11
                  │   │╭   0x00007ffb05247109: je     0x00007ffb05247137  ;*if_acmpeq
                  │   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@55 (line 103)
                  │   ││                                                 ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │   ││                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.14%    0.20%  │   ││   0x00007ffb0524710b: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x00007ffb05247f49
  0.56%    0.46%  │   ││   0x00007ffb05247110: lea    (%r12,%r8,8),%rcx  ;*getfield cap
                  │   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@51 (line 103)
                  │   ││                                                 ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │   ││                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.07%    0.06%  │   ││   0x00007ffb05247114: cmp    %r10d,%r11d
                  │   ││   0x00007ffb05247117: jb     0x00007ffb05247481
  0.76%    0.56%  │   ││   0x00007ffb0524711d: lea    0x10(%r12,%r8,8),%rsi
  0.03%    0.03%  │   ││   0x00007ffb05247122: movslq %r10d,%rdx
  0.04%    0.04%  │   ││   0x00007ffb05247125: mov    0x18(%rsp),%rdi
  0.10%    0.05%  │   ││   0x00007ffb0524712a: movabs $0x7ffb05052640,%r10
  0.43%    0.39%  │   ││   0x00007ffb05247134: callq  *%r10              ;*aload_1
                  │   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@71 (line 106)
                  │   ││                                                 ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │   ││                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │   │↘   0x00007ffb05247137: mov    0x20(%r14),%r8d    ;*getfield denseThreads
                  │   │                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                  │   │                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.33%    0.36%  │   │    0x00007ffb0524713b: mov    0xc(%r14),%ebp     ;*getfield size
                  │   │                                                  ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                  │   │                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.17%    0.14%  │   │    0x00007ffb0524713f: mov    %ebp,%r10d
  0.09%    0.09%  │   │    0x00007ffb05247142: inc    %r10d
                  │   │    0x00007ffb05247145: mov    %r10d,0xc(%r14)    ;*putfield size
                  │   │                                                  ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                  │   │                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.30%    0.36%  │   │    0x00007ffb05247149: mov    0xc(%r12,%r8,8),%r10d  ; implicit exception: dispatches to 0x00007ffb05247ef9
  0.24%    0.19%  │   │    0x00007ffb0524714e: cmp    %r10d,%ebp
                  │   │    0x00007ffb05247151: jae    0x00007ffb052473c2  ;*aastore
                  │   │                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │   │                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.12%    0.14%  │   │    0x00007ffb05247157: lea    (%r12,%r8,8),%r10  ;*getfield denseThreads
                  │   │                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                  │   │                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │   │    0x00007ffb0524715b: lea    0x10(%r10,%rbp,4),%r10
  0.27%    0.32%  │   │    0x00007ffb05247160: mov    %r13,%r8
  0.15%    0.17%  │   │    0x00007ffb05247163: shr    $0x3,%r8
  0.11%    0.13%  │   │    0x00007ffb05247167: mov    %r8d,(%r10)
  0.02%    0.02%  │   │    0x00007ffb0524716a: shr    $0x9,%r10
  0.28%    0.31%  │   │    0x00007ffb0524716e: movabs $0x7ffb00dee000,%r11
  0.17%    0.18%  │   │    0x00007ffb05247178: mov    %r12b,(%r11,%r10,1)  ;*synchronization entry
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.10%    0.18%  ↘   │    0x00007ffb0524717c: mov    0x10(%rsp),%r10
  0.28%    0.21%      │    0x00007ffb05247181: mov    0x20(%r10),%ebp    ;*getfield argInst
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@41 (line 193)
  0.13%    0.18%      │    0x00007ffb05247185: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007ffb05247e31
  0.31%    0.24%      │    0x00007ffb0524718a: cmp    $0xf8019992,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                      │    0x00007ffb05247191: jne    0x00007ffb05247375
  0.10%    0.11%      │    0x00007ffb05247197: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.21%    0.27%      │    0x00007ffb0524719b: mov    0x18(%r10),%ecx    ;*getfield pc
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.15%    0.16%      │    0x00007ffb0524719f: cmp    $0x40,%ecx
                      │    0x00007ffb052471a2: jg     0x00007ffb052475bd  ;*if_icmpgt
                      │                                                  ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.14%    0.10%      │    0x00007ffb052471a8: mov    $0x1,%r9d
  0.03%    0.02%      │    0x00007ffb052471ae: shl    %cl,%r9            ;*lshl
                      │                                                  ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.71%    0.70%      │    0x00007ffb052471b1: mov    0x10(%r14),%r11    ;*getfield pcsl
                      │                                                  ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.03%    0.03%      │    0x00007ffb052471b5: mov    %r11,%r8
  0.23%    0.19%      │    0x00007ffb052471b8: and    %r9,%r8            ;*land
                      │                                                  ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.18%    0.06%      │    0x00007ffb052471bb: test   %r8,%r8
                      │    0x00007ffb052471be: jne    0x00007ffb052475e1  ;*ifeq
                      │                                                  ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.22%    0.17%      │    0x00007ffb052471c4: cmp    $0x40,%ecx
                      │    0x00007ffb052471c7: jge    0x00007ffb05247619  ;*if_icmpge
                      │                                                  ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.00%    0.02%      │    0x00007ffb052471cd: mov    %r12b,0x18(%r14)   ;*putfield empty
                      │                                                  ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.18%    0.17%      │    0x00007ffb052471d1: or     %r11,%r9
  0.11%    0.10%      │    0x00007ffb052471d4: mov    %r9,0x10(%r14)     ;*putfield pcsl
                      │                                                  ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.25%    0.21%      │    0x00007ffb052471d8: mov    0xc(%rbx),%r8d     ;*getfield poolSize
                      │                                                  ; - com.google.re2j.Machine::alloc@1 (line 132)
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                      │                                                  ; implicit exception: dispatches to 0x00007ffb05247e49
  0.00%    0.01%      │    0x00007ffb052471dc: test   %r8d,%r8d
                      │    0x00007ffb052471df: jle    0x00007ffb052474ed  ;*ifle
                      │                                                  ; - com.google.re2j.Machine::alloc@4 (line 132)
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.20%    0.16%      │    0x00007ffb052471e5: mov    0x24(%rbx),%ecx    ;*getfield pool
                      │                                                  ; - com.google.re2j.Machine::alloc@18 (line 134)
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.07%    0.02%      │    0x00007ffb052471e8: mov    %r8d,%ebp
  0.23%    0.26%      │    0x00007ffb052471eb: dec    %ebp               ;*isub
                      │                                                  ; - com.google.re2j.Machine::alloc@13 (line 133)
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.01%               │    0x00007ffb052471ed: mov    %ebp,0xc(%rbx)     ;*putfield poolSize
                      │                                                  ; - com.google.re2j.Machine::alloc@14 (line 133)
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.25%    0.26%      │    0x00007ffb052471f0: mov    0xc(%r12,%rcx,8),%r11d  ; implicit exception: dispatches to 0x00007ffb05247e5d
  0.10%    0.13%      │    0x00007ffb052471f5: cmp    %r11d,%ebp
                      │    0x00007ffb052471f8: jae    0x00007ffb05247333
  0.21%    0.26%      │    0x00007ffb052471fe: lea    (%r12,%rcx,8),%r11
  0.01%    0.00%      │    0x00007ffb05247202: mov    0xc(%r11,%r8,4),%r13d  ;*aaload
                      │                                                  ; - com.google.re2j.Machine::alloc@25 (line 134)
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.23%    0.20%      │    0x00007ffb05247207: mov    0xc(%r12,%r13,8),%r11d  ;*getfield cap
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@51 (line 103)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                      │                                                  ; implicit exception: dispatches to 0x00007ffb05247e6d
  0.20%    0.13%      │    0x00007ffb0524720c: mov    0x58(%rsp),%r8
  0.22%    0.24%      │    0x00007ffb05247211: mov    0xc(%r8),%r9d      ;*arraylength
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@45 (line 103)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.10%    0.14%      │    0x00007ffb05247215: lea    (%r12,%r13,8),%rbp  ;*aaload
                      │                                                  ; - com.google.re2j.Machine::alloc@25 (line 134)
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.14%    0.13%      │    0x00007ffb05247219: shr    $0x3,%r10
  0.10%    0.06%      │    0x00007ffb0524721d: mov    %r10d,0x10(%r12,%r13,8)
  0.26%    0.26%      │    0x00007ffb05247222: mov    %rbp,%r10
  0.08%    0.05%      │    0x00007ffb05247225: shr    $0x9,%r10
  0.16%    0.10%      │    0x00007ffb05247229: movabs $0x7ffb00dee000,%r8
  0.10%    0.10%      │    0x00007ffb05247233: mov    %r12b,(%r8,%r10,1)  ;*putfield inst
                      │                                                  ; - com.google.re2j.Machine::alloc@45 (line 138)
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.25%    0.27%      │    0x00007ffb05247237: test   %r9d,%r9d
                      │    0x00007ffb0524723a: jle    0x00007ffb05247511  ;*ifle
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.04%    0.03%      │    0x00007ffb05247240: mov    %r11,%r10
  0.16%    0.12%      │    0x00007ffb05247243: shl    $0x3,%r10
  0.10%    0.15%      │    0x00007ffb05247247: cmp    0x58(%rsp),%r10
                      │ ╭  0x00007ffb0524724c: je     0x00007ffb0524727a  ;*if_acmpeq
                      │ │                                                ; - com.google.re2j.Inst$MatchInst::add@55 (line 103)
                      │ │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.27%    0.35%      │ │  0x00007ffb0524724e: mov    0xc(%r12,%r11,8),%r8d  ; implicit exception: dispatches to 0x00007ffb05247e99
  0.09%    0.17%      │ │  0x00007ffb05247253: lea    (%r12,%r11,8),%rcx  ;*getfield cap
                      │ │                                                ; - com.google.re2j.Inst$MatchInst::add@51 (line 103)
                      │ │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.16%    0.07%      │ │  0x00007ffb05247257: cmp    %r9d,%r8d
                      │ │  0x00007ffb0524725a: jb     0x00007ffb05247391
  0.31%    0.24%      │ │  0x00007ffb05247260: lea    0x10(%r12,%r11,8),%rsi
  0.20%    0.24%      │ │  0x00007ffb05247265: movslq %r9d,%rdx
  0.07%    0.06%      │ │  0x00007ffb05247268: mov    0x18(%rsp),%rdi
  0.13%    0.32%      │ │  0x00007ffb0524726d: movabs $0x7ffb05052640,%r10
  0.20%    0.20%      │ │  0x00007ffb05247277: callq  *%r10              ;*aload_1
                      │ │                                                ; - com.google.re2j.Inst$MatchInst::add@71 (line 106)
                      │ │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
           0.00%      │ ↘  0x00007ffb0524727a: mov    0x20(%r14),%r8d    ;*getfield denseThreads
                      │                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.23%    0.19%      │    0x00007ffb0524727e: mov    0xc(%r14),%ebp     ;*getfield size
                      │                                                  ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.08%    0.12%      │    0x00007ffb05247282: mov    %ebp,%r10d
  0.27%    0.16%      │    0x00007ffb05247285: inc    %r10d
                      │    0x00007ffb05247288: mov    %r10d,0xc(%r14)    ;*putfield size
                      │                                                  ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.23%    0.29%      │    0x00007ffb0524728c: mov    0xc(%r12,%r8,8),%r10d  ; implicit exception: dispatches to 0x00007ffb05247e81
  0.09%    0.07%      │    0x00007ffb05247291: cmp    %r10d,%ebp
                      │    0x00007ffb05247294: jae    0x00007ffb05247355  ;*aastore
                      │                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.24%    0.37%      │    0x00007ffb0524729a: lea    (%r12,%r8,8),%r10  ;*getfield denseThreads
                      │                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                      │    0x00007ffb0524729e: lea    0x10(%r10,%rbp,4),%r10
  0.13%    0.16%      │    0x00007ffb052472a3: mov    %r13d,(%r10)
  0.09%    0.12%      │    0x00007ffb052472a6: shr    $0x9,%r10
  0.29%    0.34%      │    0x00007ffb052472aa: movabs $0x7ffb00dee000,%r11
                      │    0x00007ffb052472b4: mov    %r12b,(%r11,%r10,1)  ;*if_icmpgt
                      │                                                  ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
  0.22%    0.26%      │    0x00007ffb052472b8: xor    %eax,%eax
  0.15%    0.09%      │    0x00007ffb052472ba: add    $0x90,%rsp
  0.28%    0.40%      │    0x00007ffb052472c1: pop    %rbp
  0.18%    0.26%      │    0x00007ffb052472c2: test   %eax,0x162edd38(%rip)        # 0x00007ffb1b535000
                      │                                                  ;   {poll_return}
  0.09%    0.10%      │    0x00007ffb052472c8: retq   
                      ↘    0x00007ffb052472c9: mov    %r8d,0x10(%r13)
                           0x00007ffb052472cd: mov    %r13,%r10
                           0x00007ffb052472d0: shr    $0x9,%r10
                           0x00007ffb052472d4: movabs $0x7ffb00dee000,%r11
                           0x00007ffb052472de: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                                                                         ; - com.google.re2j.Inst$MatchInst::add@41 (line 101)
                                                                         ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                                                                         ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                           0x00007ffb052472e2: jmpq   0x00007ffb052470e7
....................................................................................................
 32.65%   34.71%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 589 (1001 bytes) 

                                                                                                  ; - com.google.re2j.Machine::match@121 (line 201)
                                                    0x00007ffb0525a8ae: or     $0x10,%r9d         ;*iload_2
                                                                                                  ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                                                  ; - com.google.re2j.Machine::match@121 (line 201)
                                                    0x00007ffb0525a8b2: mov    %r11d,0x28(%rsp)
                                                    0x00007ffb0525a8b7: mov    %rcx,0x50(%rsp)
                                                    0x00007ffb0525a8bc: xor    %eax,%eax
                                                    0x00007ffb0525a8be: xor    %r11d,%r11d
                  ╭                                 0x00007ffb0525a8c1: jmpq   0x00007ffb0525aa48
                  │                                 0x00007ffb0525a8c6: data16 nopw 0x0(%rax,%rax,1)
  0.03%    0.04%  │              ↗                  0x00007ffb0525a8d0: or     $0x20,%r9d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                  │              │                                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.05%    0.10%  │              │                  0x00007ffb0525a8d4: mov    %r9d,0x34(%rsp)    ;*iload_2
                  │              │                                                                ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                  │              │                                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.02%    0.01%  │              │↗                 0x00007ffb0525a8d9: mov    0x48(%rsp),%r9
  0.13%    0.07%  │              ││                 0x00007ffb0525a8de: mov    0x10(%r9),%r8d     ;*getfield end
                  │              ││                                                               ; - com.google.re2j.MachineInput$UTF16Input::endPos@1 (line 221)
                  │              ││                                                               ; - com.google.re2j.Machine::match@345 (line 242)
  0.19%    0.16%  │              ││                 0x00007ffb0525a8e2: mov    0x1c(%rsp),%ecx
  0.05%    0.10%  │              ││                 0x00007ffb0525a8e6: cmp    %r8d,%ecx
                  │╭             ││                 0x00007ffb0525a8e9: je     0x00007ffb0525abee  ;*if_icmpne
                  ││             ││                                                               ; - com.google.re2j.Machine::match@348 (line 242)
  0.12%    0.06%  ││             ││                 0x00007ffb0525a8ef: xor    %r11d,%r11d        ;*invokespecial step
                  ││             ││                                                               ; - com.google.re2j.Machine::match@356 (line 242)
  0.07%    0.11%  ││             ││    ↗            0x00007ffb0525a8f2: mov    %r10d,0x28(%rsp)
  0.02%    0.01%  ││             ││    │            0x00007ffb0525a8f7: add    0x2c(%rsp),%ecx    ;*iadd
                  ││             ││    │                                                          ; - com.google.re2j.Machine::match@337 (line 242)
  0.17%    0.10%  ││             ││    │            0x00007ffb0525a8fb: mov    %ecx,0x58(%rsp)
  0.03%    0.04%  ││             ││    │            0x00007ffb0525a8ff: mov    0x38(%rsp),%rsi
  0.12%    0.13%  ││             ││    │            0x00007ffb0525a904: mov    0x20(%rsp),%rdx
  0.03%    0.02%  ││             ││    │            0x00007ffb0525a909: mov    0x50(%rsp),%rcx
  0.08%    0.08%  ││             ││    │            0x00007ffb0525a90e: mov    0x1c(%rsp),%r8d
  0.06%    0.01%  ││             ││    │            0x00007ffb0525a913: mov    0x58(%rsp),%r9d
  0.36%    0.17%  ││             ││    │            0x00007ffb0525a918: mov    %ebx,%edi
  0.04%    0.01%  ││             ││    │            0x00007ffb0525a91a: mov    0x34(%rsp),%ebx
  0.10%    0.11%  ││             ││    │            0x00007ffb0525a91e: mov    %ebx,(%rsp)
  0.02%    0.00%  ││             ││    │            0x00007ffb0525a921: mov    0x40(%rsp),%r10d
  0.12%    0.06%  ││             ││    │            0x00007ffb0525a926: mov    %r10d,0x8(%rsp)
  0.02%    0.04%  ││             ││    │            0x00007ffb0525a92b: mov    %r11d,0x10(%rsp)
  0.07%    0.07%  ││             ││    │            0x00007ffb0525a930: data16 xchg %ax,%ax
  0.02%    0.02%  ││             ││    │            0x00007ffb0525a933: callq  0x00007ffb05046020  ; OopMap{[24]=NarrowOop [32]=Oop [56]=Oop [72]=Oop [80]=Oop off=728}
                  ││             ││    │                                                          ;*invokespecial step
                  ││             ││    │                                                          ; - com.google.re2j.Machine::match@356 (line 242)
                  ││             ││    │                                                          ;   {optimized virtual_call}
  0.00%    0.01%  ││             ││    │            0x00007ffb0525a938: mov    0x38(%rsp),%r10
  0.05%    0.04%  ││             ││    │            0x00007ffb0525a93d: movzbl 0x10(%r10),%eax    ;*getfield matched
                  ││             ││    │                                                          ; - com.google.re2j.Machine::match@159 (line 212)
  0.22%    0.08%  ││             ││    │            0x00007ffb0525a942: mov    0x2c(%rsp),%r11d
  0.00%           ││             ││    │            0x00007ffb0525a947: test   %r11d,%r11d
                  ││╭            ││    │            0x00007ffb0525a94a: je     0x00007ffb0525abf9  ;*ifne
                  │││            ││    │                                                          ; - com.google.re2j.Machine::match@361 (line 243)
  0.02%    0.03%  │││            ││    │            0x00007ffb0525a950: mov    0x28(%r10),%r8d    ;*getfield matchcap
                  │││            ││    │                                                          ; - com.google.re2j.Machine::match@368 (line 246)
           0.01%  │││            ││    │            0x00007ffb0525a954: mov    %r8d,0x5c(%rsp)
  0.28%    0.13%  │││            ││    │            0x00007ffb0525a959: mov    0xc(%r12,%r8,8),%ebp  ;*arraylength
                  │││            ││    │                                                          ; - com.google.re2j.Machine::match@371 (line 246)
                  │││            ││    │                                                          ; implicit exception: dispatches to 0x00007ffb0525b979
  0.08%    0.08%  │││            ││    │            0x00007ffb0525a95e: test   %ebp,%ebp
                  │││            ││    │            0x00007ffb0525a960: je     0x00007ffb0525b185  ;*ifne
                  │││            ││    │                                                          ; - com.google.re2j.Machine::match@372 (line 246)
  0.07%    0.05%  │││            ││    │            0x00007ffb0525a966: mov    0x28(%rsp),%r9d
  0.01%    0.01%  │││            ││    │            0x00007ffb0525a96b: cmp    $0xffffffff,%r9d
                  │││╭           ││    │            0x00007ffb0525a96f: je     0x00007ffb0525ac46  ;*if_icmpeq
                  ││││           ││    │                                                          ; - com.google.re2j.Machine::match@401 (line 254)
  0.15%    0.17%  ││││           ││    │            0x00007ffb0525a975: mov    0x48(%rsp),%r8
           0.00%  ││││           ││    │            0x00007ffb0525a97a: mov    0x10(%r8),%r11d    ;*getfield end
                  ││││           ││    │                                                          ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                  ││││           ││    │                                                          ; - com.google.re2j.Machine::match@409 (line 255)
  0.07%    0.08%  ││││           ││    │            0x00007ffb0525a97e: mov    0x30(%rsp),%r10d
           0.00%  ││││           ││    │            0x00007ffb0525a983: add    0x58(%rsp),%r10d
  0.18%    0.25%  ││││           ││    │            0x00007ffb0525a988: add    0xc(%r8),%r10d     ;*iadd
                  ││││           ││    │                                                          ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                  ││││           ││    │                                                          ; - com.google.re2j.Machine::match@409 (line 255)
  0.00%           ││││           ││    │            0x00007ffb0525a98c: cmp    %r11d,%r10d
                  ││││╭          ││    │            0x00007ffb0525a98f: jge    0x00007ffb0525ac5a  ;*if_icmpge
                  │││││          ││    │                                                          ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                  │││││          ││    │                                                          ; - com.google.re2j.Machine::match@409 (line 255)
  0.08%    0.14%  │││││          ││    │            0x00007ffb0525a995: mov    %r9d,%r11d
                  │││││          ││    │            0x00007ffb0525a998: mov    0x14(%r8),%ebp     ;*getfield str
                  │││││          ││    │                                                          ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                  │││││          ││    │                                                          ; - com.google.re2j.Machine::match@409 (line 255)
  0.16%    0.24%  │││││          ││    │            0x00007ffb0525a99c: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007ffb0525b989
  0.05%    0.04%  │││││          ││    │            0x00007ffb0525a9a1: cmp    $0xf80002da,%ecx   ;   {metadata(&apos;java/lang/String&apos;)}
                  │││││          ││    │            0x00007ffb0525a9a7: jne    0x00007ffb0525afa5
  0.09%    0.12%  │││││          ││    │            0x00007ffb0525a9ad: lea    (%r12,%rbp,8),%r9  ;*invokeinterface charAt
                  │││││          ││    │                                                          ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││││          ││    │                                                          ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││││          ││    │                                                          ; - com.google.re2j.Machine::match@409 (line 255)
  0.01%           │││││          ││    │            0x00007ffb0525a9b1: test   %r10d,%r10d
                  │││││          ││    │            0x00007ffb0525a9b4: jl     0x00007ffb0525b111  ;*iflt
                  │││││          ││    │                                                          ; - java.lang.String::charAt@1 (line 657)
                  │││││          ││    │                                                          ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││││          ││    │                                                          ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││││          ││    │                                                          ; - com.google.re2j.Machine::match@409 (line 255)
  0.16%    0.22%  │││││          ││    │            0x00007ffb0525a9ba: mov    %r10d,%ecx
                  │││││          ││    │            0x00007ffb0525a9bd: mov    0xc(%r9),%edi      ;*getfield value
                  │││││          ││    │                                                          ; - java.lang.String::charAt@6 (line 657)
                  │││││          ││    │                                                          ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││││          ││    │                                                          ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││││          ││    │                                                          ; - com.google.re2j.Machine::match@409 (line 255)
  0.12%    0.21%  │││││          ││    │            0x00007ffb0525a9c1: mov    0xc(%r12,%rdi,8),%ebp  ;*arraylength
                  │││││          ││    │                                                          ; - java.lang.String::charAt@9 (line 657)
                  │││││          ││    │                                                          ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││││          ││    │                                                          ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││││          ││    │                                                          ; - com.google.re2j.Machine::match@409 (line 255)
                  │││││          ││    │                                                          ; implicit exception: dispatches to 0x00007ffb0525b99d
  0.82%    1.10%  │││││          ││    │            0x00007ffb0525a9c6: cmp    %ebp,%r10d
                  │││││          ││    │            0x00007ffb0525a9c9: jge    0x00007ffb0525b1d1  ;*if_icmplt
                  │││││          ││    │                                                          ; - java.lang.String::charAt@10 (line 657)
                  │││││          ││    │                                                          ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││││          ││    │                                                          ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││││          ││    │                                                          ; - com.google.re2j.Machine::match@409 (line 255)
  0.27%    0.34%  │││││          ││    │            0x00007ffb0525a9cf: cmp    %ebp,%r10d
                  │││││          ││    │            0x00007ffb0525a9d2: jae    0x00007ffb0525af2d
  0.02%    0.03%  │││││          ││    │            0x00007ffb0525a9d8: lea    (%r12,%rdi,8),%r10
  0.01%           │││││          ││    │            0x00007ffb0525a9dc: movzwl 0x10(%r10,%rcx,2),%r10d  ;*caload
                  │││││          ││    │                                                          ; - java.lang.String::charAt@27 (line 660)
                  │││││          ││    │                                                          ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││││          ││    │                                                          ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││││          ││    │                                                          ; - com.google.re2j.Machine::match@409 (line 255)
  0.01%    0.01%  │││││          ││    │            0x00007ffb0525a9e2: cmp    $0xd800,%r10d
                  │││││          ││    │            0x00007ffb0525a9e9: jge    0x00007ffb0525b22d  ;*if_icmplt
                  │││││          ││    │                                                          ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                  │││││          ││    │                                                          ; - java.lang.Character::codePointAt@9 (line 4867)
                  │││││          ││    │                                                          ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││││          ││    │                                                          ; - com.google.re2j.Machine::match@409 (line 255)
  0.32%    0.45%  │││││          ││    │            0x00007ffb0525a9ef: shl    $0x3,%r10d         ;*ishl
                  │││││          ││    │                                                          ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                  │││││          ││    │                                                          ; - com.google.re2j.Machine::match@409 (line 255)
  0.06%    0.05%  │││││          ││    │            0x00007ffb0525a9f3: mov    %r10d,%ebx
  0.00%    0.01%  │││││          ││    │            0x00007ffb0525a9f6: or     $0x1,%ebx
  0.19%    0.22%  │││││          ││    │            0x00007ffb0525a9f9: and    $0x7,%r10d
  0.03%    0.03%  │││││          ││    │            0x00007ffb0525a9fd: sar    $0x3,%ebx          ;*ishr
                  │││││          ││    │                                                          ; - com.google.re2j.Machine::match@417 (line 256)
  0.19%    0.26%  │││││          ││    │            0x00007ffb0525aa00: or     $0x1,%r10d         ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                  │││││          ││    │                                                          ; - com.google.re2j.Machine::match@409 (line 255)
  0.00%    0.01%  │││││          ││    │            0x00007ffb0525aa04: mov    %r11d,%r9d         ; OopMap{r8=Oop [32]=Oop [56]=Oop [80]=Oop [92]=NarrowOop off=935}
                  │││││          ││    │                                                          ;*goto
                  │││││          ││    │                                                          ; - com.google.re2j.Machine::match@439 (line 262)
  0.00%    0.00%  │││││          ││    │  ↗↗        0x00007ffb0525aa07: test   %eax,0x162da5f3(%rip)        # 0x00007ffb1b535000
                  │││││          ││    │  ││                                                      ;*goto
                  │││││          ││    │  ││                                                      ; - com.google.re2j.Machine::match@439 (line 262)
                  │││││          ││    │  ││                                                      ;   {poll}
  0.04%    0.05%  │││││          ││    │  ││        0x00007ffb0525aa0d: mov    0x50(%rsp),%r11
  0.30%    0.25%  │││││          ││    │  ││        0x00007ffb0525aa12: mov    %r11,%rdx
  0.00%    0.01%  │││││          ││    │  ││        0x00007ffb0525aa15: shr    $0x3,%rdx
  0.00%    0.00%  │││││          ││    │  ││        0x00007ffb0525aa19: mov    %r9d,0x28(%rsp)
  0.04%    0.03%  │││││          ││    │  ││        0x00007ffb0525aa1e: mov    0x34(%rsp),%r9d
  0.23%    0.32%  │││││          ││    │  ││        0x00007ffb0525aa23: mov    %ebx,0x34(%rsp)
  0.00%    0.00%  │││││          ││    │  ││        0x00007ffb0525aa27: mov    0x20(%rsp),%r11
           0.00%  │││││          ││    │  ││        0x00007ffb0525aa2c: mov    %r11,0x50(%rsp)
  0.06%    0.05%  │││││          ││    │  ││        0x00007ffb0525aa31: mov    0x30(%rsp),%ecx
  0.26%    0.31%  │││││          ││    │  ││        0x00007ffb0525aa35: mov    %ecx,0x2c(%rsp)
  0.01%           │││││          ││    │  ││        0x00007ffb0525aa39: mov    %r10d,0x30(%rsp)
  0.00%    0.00%  │││││          ││    │  ││        0x00007ffb0525aa3e: mov    %r8,0x48(%rsp)
  0.05%    0.04%  │││││          ││    │  ││        0x00007ffb0525aa43: mov    0x58(%rsp),%r11d   ;*aload
                  │││││          ││    │  ││                                                      ; - com.google.re2j.Machine::match@136 (line 207)
  0.26%    0.32%  ↘││││          ││    │  ││        0x00007ffb0525aa48: mov    %edx,%ecx
  0.01%            ││││          ││    │  ││        0x00007ffb0525aa4a: movzbl 0x18(%r12,%rdx,8),%r10d  ; implicit exception: dispatches to 0x00007ffb0525b929
                   ││││          ││    │  ││        0x00007ffb0525aa50: test   %r10d,%r10d
                   ││││╭         ││    │  ││        0x00007ffb0525aa53: je     0x00007ffb0525abc2  ;*ifeq
                   │││││         ││    │  ││                                                      ; - com.google.re2j.Machine::match@141 (line 207)
  0.02%    0.03%   │││││         ││    │  ││        0x00007ffb0525aa59: mov    0x14(%rsp),%r10d
  0.16%    0.21%   │││││         ││    │  ││        0x00007ffb0525aa5e: test   %r10d,%r10d
                   │││││         ││    │  ││        0x00007ffb0525aa61: jne    0x00007ffb0525b2bd  ;*ifeq
                   │││││         ││    │  ││                                                      ; - com.google.re2j.Machine::match@148 (line 208)
                   │││││         ││    │  ││        0x00007ffb0525aa67: test   %eax,%eax
                   │││││         ││    │  ││        0x00007ffb0525aa69: jne    0x00007ffb0525b319  ;*ifeq
                   │││││         ││    │  ││                                                      ; - com.google.re2j.Machine::match@162 (line 212)
  0.00%            │││││         ││    │  ││        0x00007ffb0525aa6f: mov    0x38(%rsp),%r8
  0.02%    0.03%   │││││         ││    │  ││        0x00007ffb0525aa74: mov    0x14(%r8),%edi     ;*getfield re2
                   │││││         ││    │  ││                                                      ; - com.google.re2j.Machine::match@169 (line 216)
  0.24%    0.27%   │││││         ││    │  ││        0x00007ffb0525aa78: mov    0x24(%r12,%rdi,8),%ebx  ;*getfield prefix
                   │││││         ││    │  ││                                                      ; - com.google.re2j.Machine::match@172 (line 216)
                   │││││         ││    │  ││                                                      ; implicit exception: dispatches to 0x00007ffb0525b9ad
  0.01%            │││││         ││    │  ││        0x00007ffb0525aa7d: mov    0xc(%r12,%rbx,8),%edi  ;*getfield value
                   │││││         ││    │  ││                                                      ; - java.lang.String::isEmpty@1 (line 635)
                   │││││         ││    │  ││                                                      ; - com.google.re2j.Machine::match@175 (line 216)
                   │││││         ││    │  ││                                                      ; implicit exception: dispatches to 0x00007ffb0525b9bd
  0.31%    0.34%   │││││         ││    │  ││        0x00007ffb0525aa82: mov    0xc(%r12,%rdi,8),%ebp  ;*arraylength
                   │││││         ││    │  ││                                                      ; - java.lang.String::isEmpty@4 (line 635)
                   │││││         ││    │  ││                                                      ; - com.google.re2j.Machine::match@175 (line 216)
                   │││││         ││    │  ││                                                      ; implicit exception: dispatches to 0x00007ffb0525b9cd
  0.98%    0.76%   │││││         ││    │  ││        0x00007ffb0525aa87: test   %ebp,%ebp
                   │││││         ││    │  ││        0x00007ffb0525aa89: jne    0x00007ffb0525b281  ;*aload_0
                   │││││         ││    │  ││                                                      ; - com.google.re2j.Machine::match@267 (line 233)
  0.26%    0.14%   │││││         ││↗   │  ││        0x00007ffb0525aa8f: test   %eax,%eax
                   │││││         │││   │  ││        0x00007ffb0525aa91: jne    0x00007ffb0525b026  ;*ifne
                   │││││         │││   │  ││                                                      ; - com.google.re2j.Machine::match@271 (line 233)
                   │││││         │││   │  ││        0x00007ffb0525aa97: test   %r11d,%r11d
                   │││││╭        │││   │  ││        0x00007ffb0525aa9a: je     0x00007ffb0525abe5  ;*ifeq
                   ││││││        │││   │  ││                                                      ; - com.google.re2j.Machine::match@275 (line 233)
  0.02%    0.02%   ││││││        │││   │  ││        0x00007ffb0525aaa0: mov    0x40(%rsp),%ebx
                   ││││││        │││   │  ││        0x00007ffb0525aaa4: test   %ebx,%ebx
                   ││││││        │││   │  ││        0x00007ffb0525aaa6: jne    0x00007ffb0525b0b9  ;*aload_0
                   ││││││        │││   │  ││                                                      ; - com.google.re2j.Machine::match@282 (line 236)
  0.27%    0.27%   ││││││        │││  ↗│  ││        0x00007ffb0525aaac: mov    0x5c(%rsp),%edx
                   ││││││        │││  ││  ││        0x00007ffb0525aab0: mov    0xc(%r12,%rdx,8),%ebp  ;*arraylength
                   ││││││        │││  ││  ││                                                      ; - com.google.re2j.Machine::match@286 (line 236)
                   ││││││        │││  ││  ││                                                      ; implicit exception: dispatches to 0x00007ffb0525b939
  0.02%    0.05%   ││││││        │││  ││  ││        0x00007ffb0525aab5: test   %ebp,%ebp
                   ││││││        │││  ││  ││        0x00007ffb0525aab7: jle    0x00007ffb0525b075  ;*ifle
                   ││││││        │││  ││  ││                                                      ; - com.google.re2j.Machine::match@287 (line 236)
  0.00%            ││││││        │││  ││  ││        0x00007ffb0525aabd: test   %ebp,%ebp
                   ││││││        │││  ││  ││        0x00007ffb0525aabf: jbe    0x00007ffb0525ae8d
  0.25%    0.23%   ││││││        │││  ││  ││        0x00007ffb0525aac5: mov    %r11d,0x10(%r12,%rdx,8)  ;*iastore
                   ││││││        │││  ││  ││                                                      ; - com.google.re2j.Machine::match@296 (line 237)
           0.00%   ││││││        │││  ││  ││        0x00007ffb0525aaca: mov    0x18(%r8),%edi     ;*getfield prog
                   ││││││        │││  ││  ││                                                      ; - com.google.re2j.Machine::match@298 (line 239)
  0.01%    0.02%   ││││││        │││  ││  ││        0x00007ffb0525aace: mov    0x1c(%r12,%rdi,8),%ebp  ;*getfield startInst
                   ││││││        │││  ││  ││                                                      ; - com.google.re2j.Machine::match@301 (line 239)
                   ││││││        │││  ││  ││                                                      ; implicit exception: dispatches to 0x00007ffb0525b949
                   ││││││        │││  ││  ││        0x00007ffb0525aad3: mov    0x8(%r12,%rbp,8),%edx  ; implicit exception: dispatches to 0x00007ffb0525b959
  0.25%    0.22%   ││││││        │││  ││  ││        0x00007ffb0525aad8: cmp    $0xf8019843,%edx   ;   {metadata(&apos;com/google/re2j/Inst$AltInst&apos;)}
                   ││││││        │││  ││  ││        0x00007ffb0525aade: jne    0x00007ffb0525aee1  ;*invokevirtual add
                   ││││││        │││  ││  ││                                                      ; - com.google.re2j.Machine::match@315 (line 239)
  0.01%    0.01%   ││││││        │││  ││  ││        0x00007ffb0525aae4: mov    %r11d,0x1c(%rsp)
  0.02%    0.02%   ││││││        │││  ││  ││        0x00007ffb0525aae9: mov    %r10d,0x14(%rsp)
           0.00%   ││││││        │││  ││  ││        0x00007ffb0525aaee: mov    %ecx,0x18(%rsp)
  0.21%    0.18%   ││││││        │││  ││  ││        0x00007ffb0525aaf2: mov    %ebx,0x40(%rsp)
  0.01%    0.01%   ││││││        │││  ││  ││        0x00007ffb0525aaf6: mov    %r8,0x38(%rsp)     ;*ifeq
                   ││││││        │││  ││  ││                                                      ; - com.google.re2j.Machine::match@275 (line 233)
  0.03%    0.02%   ││││││        │││  ││  ││        0x00007ffb0525aafb: lea    (%r12,%rbp,8),%rsi  ;*invokevirtual add
                   ││││││        │││  ││  ││                                                      ; - com.google.re2j.Machine::match@315 (line 239)
  0.01%            ││││││        │││  ││  ││        0x00007ffb0525aaff: lea    (%r12,%rcx,8),%r10  ;*aload
                   ││││││        │││  ││  ││                                                      ; - com.google.re2j.Machine::match@136 (line 207)
  0.30%    0.25%   ││││││        │││  ││  ││        0x00007ffb0525ab03: mov    %r10,0x20(%rsp)
  0.01%    0.01%   ││││││        │││  ││  ││        0x00007ffb0525ab08: mov    0x5c(%rsp),%r11d
  0.01%    0.02%   ││││││        │││  ││  ││        0x00007ffb0525ab0d: mov    %r11,%r8
  0.00%            ││││││        │││  ││  ││        0x00007ffb0525ab10: shl    $0x3,%r8           ;*getfield matchcap
                   ││││││        │││  ││  ││                                                      ; - com.google.re2j.Machine::match@283 (line 236)
  0.24%    0.23%   ││││││        │││  ││  ││        0x00007ffb0525ab14: mov    %r10,%rdx
  0.00%    0.01%   ││││││        │││  ││  ││        0x00007ffb0525ab17: mov    0x1c(%rsp),%ecx
  0.05%    0.03%   ││││││        │││  ││  ││        0x00007ffb0525ab1b: xor    %edi,%edi
                   ││││││        │││  ││  ││        0x00007ffb0525ab1d: mov    0x38(%rsp),%r10
  0.33%    0.27%   ││││││        │││  ││  ││        0x00007ffb0525ab22: mov    %r10,(%rsp)
  0.01%    0.01%   ││││││        │││  ││  ││        0x00007ffb0525ab26: nop
  0.01%    0.01%   ││││││        │││  ││  ││        0x00007ffb0525ab27: callq  0x00007ffb05046020  ; OopMap{[24]=NarrowOop [32]=Oop [56]=Oop [72]=Oop [80]=Oop off=1228}
                   ││││││        │││  ││  ││                                                      ;*invokevirtual add
                   ││││││        │││  ││  ││                                                      ; - com.google.re2j.Machine::match@315 (line 239)
                   ││││││        │││  ││  ││                                                      ;   {optimized virtual_call}
  0.12%    0.15%   ││││││        │││  ││  ││        0x00007ffb0525ab2c: mov    0x28(%rsp),%ebx
  0.13%    0.23%   ││││││        │││  ││  ││        0x00007ffb0525ab30: test   %ebx,%ebx
                   ││││││╭       │││  ││  ││        0x00007ffb0525ab32: jl     0x00007ffb0525abd1  ;*ifge
                   │││││││       │││  ││  ││                                                      ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                   │││││││       │││  ││  ││                                                      ; - com.google.re2j.Machine::match@323 (line 241)
  0.02%    0.03%   │││││││       │││  ││  ││        0x00007ffb0525ab38: xor    %r9d,%r9d          ;*iload_0
                   │││││││       │││  ││  ││                                                      ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                   │││││││       │││  ││  ││                                                      ; - com.google.re2j.Machine::match@323 (line 241)
  0.05%    0.10%   │││││││       │││↗ ││  ││        0x00007ffb0525ab3b: cmp    $0xa,%ebx
                   │││││││╭      ││││ ││  ││        0x00007ffb0525ab3e: je     0x00007ffb0525ac67  ;*iload_1
                   ││││││││      ││││ ││  ││                                                      ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                   ││││││││      ││││ ││  ││                                                      ; - com.google.re2j.Machine::match@323 (line 241)
  0.00%            ││││││││      ││││ ││  ││↗       0x00007ffb0525ab44: mov    0x34(%rsp),%r10d
  0.19%    0.17%   ││││││││      ││││ ││  │││       0x00007ffb0525ab49: test   %r10d,%r10d
                   ││││││││╭     ││││ ││  │││       0x00007ffb0525ab4c: jl     0x00007ffb0525abdc  ;*iload_1
                   │││││││││     ││││ ││  │││                                                     ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                   │││││││││     ││││ ││  │││                                                     ; - com.google.re2j.Machine::match@323 (line 241)
  0.05%    0.04%   │││││││││     ││││↗││  │││       0x00007ffb0525ab52: cmp    $0xa,%r10d
                   │││││││││╭    │││││││  │││       0x00007ffb0525ab56: je     0x00007ffb0525ac70  ;*iload_0
                   ││││││││││    │││││││  │││                                                     ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                   ││││││││││    │││││││  │││                                                     ; - com.google.re2j.Machine::match@323 (line 241)
  0.09%    0.09%   ││││││││││    │││││││  │││↗      0x00007ffb0525ab5c: mov    0x28(%rsp),%r8d
  0.01%    0.01%   ││││││││││    │││││││  ││││      0x00007ffb0525ab61: add    $0xffffffbf,%r8d
  0.15%    0.16%   ││││││││││    │││││││  ││││      0x00007ffb0525ab65: cmp    $0x1a,%r8d
                   ││││││││││╭   │││││││  ││││      0x00007ffb0525ab69: jb     0x00007ffb0525ab7e  ;*if_icmple
                   │││││││││││   │││││││  ││││                                                    ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                   │││││││││││   │││││││  ││││                                                    ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   │││││││││││   │││││││  ││││                                                    ; - com.google.re2j.Machine::match@323 (line 241)
  0.05%    0.04%   │││││││││││   │││││││  ││││      0x00007ffb0525ab6b: mov    0x28(%rsp),%r11d
  0.10%    0.12%   │││││││││││   │││││││  ││││      0x00007ffb0525ab70: add    $0xffffff9f,%r11d
  0.01%            │││││││││││   │││││││  ││││      0x00007ffb0525ab74: cmp    $0x1a,%r11d
                   │││││││││││╭  │││││││  ││││      0x00007ffb0525ab78: jae    0x00007ffb0525ac79  ;*iconst_1
                   ││││││││││││  │││││││  ││││                                                    ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                   ││││││││││││  │││││││  ││││                                                    ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   ││││││││││││  │││││││  ││││                                                    ; - com.google.re2j.Machine::match@323 (line 241)
  0.14%    0.15%   ││││││││││↘│  │││││││  ││││↗     0x00007ffb0525ab7e: mov    $0x1,%ebp          ;*ireturn
                   ││││││││││ │  │││││││  │││││                                                   ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                   ││││││││││ │  │││││││  │││││                                                   ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   ││││││││││ │  │││││││  │││││                                                   ; - com.google.re2j.Machine::match@323 (line 241)
  0.04%    0.04%   ││││││││││ │  │││││││  │││││↗    0x00007ffb0525ab83: mov    0x34(%rsp),%r8d
  0.06%    0.16%   ││││││││││ │  │││││││  ││││││    0x00007ffb0525ab88: add    $0xffffffbf,%r8d
  0.03%    0.03%   ││││││││││ │  │││││││  ││││││    0x00007ffb0525ab8c: cmp    $0x1a,%r8d
                   ││││││││││ │╭ │││││││  ││││││    0x00007ffb0525ab90: jb     0x00007ffb0525aba5  ;*if_icmple
                   ││││││││││ ││ │││││││  ││││││                                                  ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                   ││││││││││ ││ │││││││  ││││││                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   ││││││││││ ││ │││││││  ││││││                                                  ; - com.google.re2j.Machine::match@323 (line 241)
  0.17%    0.11%   ││││││││││ ││ │││││││  ││││││    0x00007ffb0525ab92: mov    0x34(%rsp),%r11d
  0.05%    0.03%   ││││││││││ ││ │││││││  ││││││    0x00007ffb0525ab97: add    $0xffffff9f,%r11d
  0.06%    0.12%   ││││││││││ ││ │││││││  ││││││    0x00007ffb0525ab9b: cmp    $0x1a,%r11d
                   ││││││││││ ││╭│││││││  ││││││    0x00007ffb0525ab9f: jae    0x00007ffb0525ac9c  ;*iconst_1
                   ││││││││││ ││││││││││  ││││││                                                  ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                   ││││││││││ ││││││││││  ││││││                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   ││││││││││ ││││││││││  ││││││                                                  ; - com.google.re2j.Machine::match@323 (line 241)
  0.04%    0.03%   ││││││││││ │↘││││││││  ││││││↗   0x00007ffb0525aba5: mov    $0x1,%r8d          ;*ireturn
                   ││││││││││ │ ││││││││  │││││││                                                 ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                   ││││││││││ │ ││││││││  │││││││                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   ││││││││││ │ ││││││││  │││││││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.16%    0.14%   ││││││││││ │ ││││││││  │││││││↗  0x00007ffb0525abab: cmp    %r8d,%ebp
                   ││││││││││ │ │╰││││││  ││││││││  0x00007ffb0525abae: je     0x00007ffb0525a8d0  ;*if_icmpeq
                   ││││││││││ │ │ ││││││  ││││││││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                   ││││││││││ │ │ ││││││  ││││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.03%    0.05%   ││││││││││ │ │ ││││││  ││││││││  0x00007ffb0525abb4: or     $0x10,%r9d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                   ││││││││││ │ │ ││││││  ││││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.00%            ││││││││││ │ │ ││││││  ││││││││  0x00007ffb0525abb8: mov    %r9d,0x34(%rsp)
  0.10%    0.08%   ││││││││││ │ │ ╰│││││  ││││││││  0x00007ffb0525abbd: jmpq   0x00007ffb0525a8d9
  0.01%    0.02%   ││││↘│││││ │ │  │││││  ││││││││  0x00007ffb0525abc2: mov    0x38(%rsp),%r8
  0.02%    0.01%   ││││ │││││ │ │  │││││  ││││││││  0x00007ffb0525abc7: mov    0x14(%rsp),%r10d
                   ││││ │││││ │ │  ╰││││  ││││││││  0x00007ffb0525abcc: jmpq   0x00007ffb0525aa8f
           0.00%   ││││ │↘│││ │ │   ││││  ││││││││  0x00007ffb0525abd1: mov    $0x5,%r9d
                   ││││ │ │││ │ │   ╰│││  ││││││││  0x00007ffb0525abd7: jmpq   0x00007ffb0525ab3b
  0.01%            ││││ │ │↘│ │ │    │││  ││││││││  0x00007ffb0525abdc: or     $0xa,%r9d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@27 (line 180)
                   ││││ │ │ │ │ │    │││  ││││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
                   ││││ │ │ │ │ │    ╰││  ││││││││  0x00007ffb0525abe0: jmpq   0x00007ffb0525ab52
                   ││││ ↘ │ │ │ │     ││  ││││││││  0x00007ffb0525abe5: mov    0x40(%rsp),%ebx
                   ││││   │ │ │ │     ╰│  ││││││││  0x00007ffb0525abe9: jmpq   0x00007ffb0525aaac
                   ↘│││   │ │ │ │      │  ││││││││  0x00007ffb0525abee: mov    $0x1,%r11d
                    │││   │ │ │ │      ╰  ││││││││  0x00007ffb0525abf4: jmpq   0x00007ffb0525a8f2
           0.00%    ↘││   │ │ │ │         ││││││││  0x00007ffb0525abf9: mov    0x50(%rsp),%r10
                     ││   │ │ │ │         ││││││││  0x00007ffb0525abfe: mov    %r10,0x18(%rsp)
                     ││   │ │ │ │         ││││││││  0x00007ffb0525ac03: mov    0xc(%r10),%ebx     ;*getfield size
                     ││   │ │ │ │         ││││││││                                                ; - com.google.re2j.Machine::freeQueue@1 (line 148)
                     ││   │ │ │ │         ││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 144)
                     ││   │ │ │ │         ││││││││                                                ; - com.google.re2j.Machine::match@445 (line 263)
                     ││   │ │ │ │         ││││││││                                                ; implicit exception: dispatches to 0x00007ffb0525ba35
  0.00%              ││   │ │ │ │         ││││││││  0x00007ffb0525ac07: test   %ebx,%ebx
                     ││   │ │ │ │       ╭ ││││││││  0x00007ffb0525ac09: jg     0x00007ffb0525acc1  ;*getfield matched
                     ││   │ │ │ │       │ ││││││││                                                ; - com.google.re2j.Machine::match@449 (line 264)
                     ││   │ │ │ │       │ ││││││││  0x00007ffb0525ac0f: mov    0x18(%rsp),%r10
                     ││   │ │ │ │       │ ││││││││  0x00007ffb0525ac14: movzbl 0x18(%r10),%r11d
  0.00%    0.00%     ││   │ │ │ │       │ ││││││││  0x00007ffb0525ac19: test   %r11d,%r11d
                     ││   │ │ │ │       │╭││││││││  0x00007ffb0525ac1c: jne    0x00007ffb0525ac37  ;*ifeq
                     ││   │ │ │ │       ││││││││││                                                ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                     ││   │ │ │ │       ││││││││││                                                ; - com.google.re2j.Machine::freeQueue@19 (line 152)
                     ││   │ │ │ │       ││││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 144)
                     ││   │ │ │ │       ││││││││││                                                ; - com.google.re2j.Machine::match@445 (line 263)
                     ││   │ │ │ │       ││││││││││  0x00007ffb0525ac1e: movb   $0x1,0x18(%r10)    ;*putfield empty
                     ││   │ │ │ │       ││││││││││                                                ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                     ││   │ │ │ │       ││││││││││                                                ; - com.google.re2j.Machine::freeQueue@19 (line 152)
                     ││   │ │ │ │       ││││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 144)
                     ││   │ │ │ │       ││││││││││                                                ; - com.google.re2j.Machine::match@445 (line 263)
                     ││   │ │ │ │       ││││││││││  0x00007ffb0525ac23: mov    0x1c(%r10),%ebp    ;*getfield pcs
                     ││   │ │ │ │       ││││││││││                                                ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                     ││   │ │ │ │       ││││││││││                                                ; - com.google.re2j.Machine::freeQueue@19 (line 152)
                     ││   │ │ │ │       ││││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 144)
                     ││   │ │ │ │       ││││││││││                                                ; - com.google.re2j.Machine::match@445 (line 263)
                     ││   │ │ │ │       ││││││││││  0x00007ffb0525ac27: mov    %r12,0x10(%r10)    ;*putfield pcsl
                     ││   │ │ │ │       ││││││││││                                                ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                     ││   │ │ │ │       ││││││││││                                                ; - com.google.re2j.Machine::freeQueue@19 (line 152)
                     ││   │ │ │ │       ││││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 144)
                     ││   │ │ │ │       ││││││││││                                                ; - com.google.re2j.Machine::match@445 (line 263)
                     ││   │ │ │ │       ││││││││││  0x00007ffb0525ac2b: mov    %r12d,0xc(%r10)    ;*putfield size
                     ││   │ │ │ │       ││││││││││                                                ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                     ││   │ │ │ │       ││││││││││                                                ; - com.google.re2j.Machine::freeQueue@19 (line 152)
                     ││   │ │ │ │       ││││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 144)
                     ││   │ │ │ │       ││││││││││                                                ; - com.google.re2j.Machine::match@445 (line 263)
                     ││   │ │ │ │       ││││││││││  0x00007ffb0525ac2f: test   %ebp,%ebp
                     ││   │ │ │ │       ││││││││││  0x00007ffb0525ac31: jne    0x00007ffb0525b7c1  ;*if_icmpne
                     ││   │ │ │ │       ││││││││││                                                ; - com.google.re2j.Machine::match@12 (line 179)
  0.00%              ││   │ │ │ │       │↘││││││││  0x00007ffb0525ac37: add    $0x80,%rsp
                     ││   │ │ │ │       │ ││││││││  0x00007ffb0525ac3e: pop    %rbp
                     ││   │ │ │ │       │ ││││││││  0x00007ffb0525ac3f: test   %eax,0x162da3bb(%rip)        # 0x00007ffb1b535000
                     ││   │ │ │ │       │ ││││││││                                                ;   {poll_return}
                     ││   │ │ │ │       │ ││││││││  0x00007ffb0525ac45: retq   
  0.00%              ↘│   │ │ │ │       │ ││││││││  0x00007ffb0525ac46: mov    0x30(%rsp),%r10d
                      │   │ │ │ │       │ ││││││││  0x00007ffb0525ac4b: mov    $0xffffffff,%ebx
                      │   │ │ │ │       │ ││││││││  0x00007ffb0525ac50: mov    0x48(%rsp),%r8
                      │   │ │ │ │       │ ╰│││││││  0x00007ffb0525ac55: jmpq   0x00007ffb0525aa07
  0.02%    0.01%      ↘   │ │ │ │       │  │││││││  0x00007ffb0525ac5a: xor    %r10d,%r10d
  0.01%                   │ │ │ │       │  │││││││  0x00007ffb0525ac5d: mov    $0xffffffff,%ebx
           0.00%          │ │ │ │       │  ╰││││││  0x00007ffb0525ac62: jmpq   0x00007ffb0525aa07
                          ↘ │ │ │       │   ││││││  0x00007ffb0525ac67: or     $0x1,%r9d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@18 (line 177)
                            │ │ │       │   ││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
           0.00%            │ │ │       │   ╰│││││  0x00007ffb0525ac6b: jmpq   0x00007ffb0525ab44
           0.00%            ↘ │ │       │    │││││  0x00007ffb0525ac70: or     $0x2,%r9d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@37 (line 183)
                              │ │       │    │││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.01%                       │ │       │    ╰││││  0x00007ffb0525ac74: jmpq   0x00007ffb0525ab5c
  0.03%    0.02%              ↘ │       │     ││││  0x00007ffb0525ac79: mov    0x28(%rsp),%r8d
  0.01%    0.00%                │       │     ││││  0x00007ffb0525ac7e: add    $0xffffffd0,%r8d
  0.01%    0.02%                │       │     ││││  0x00007ffb0525ac82: cmp    $0xa,%r8d
                                │       │     ╰│││  0x00007ffb0525ac86: jb     0x00007ffb0525ab7e  ;*if_icmple
                                │       │      │││                                                ; - com.google.re2j.Utils::isWordRune@33 (line 149)
                                │       │      │││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                                │       │      │││                                                ; - com.google.re2j.Machine::match@323 (line 241)
                                │       │      │││  0x00007ffb0525ac8c: cmp    $0x5f,%ebx
                                │       │      │││  0x00007ffb0525ac8f: je     0x00007ffb0525b841  ;*if_icmpne
                                │       │      │││                                                ; - com.google.re2j.Utils::isWordRune@39 (line 149)
                                │       │      │││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                                │       │      │││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.03%    0.03%                │       │      │││  0x00007ffb0525ac95: xor    %ebp,%ebp
  0.01%    0.00%                │       │      ╰││  0x00007ffb0525ac97: jmpq   0x00007ffb0525ab83
  0.13%    0.10%                ↘       │       ││  0x00007ffb0525ac9c: mov    0x34(%rsp),%r8d
  0.32%    0.32%                        │       ││  0x00007ffb0525aca1: add    $0xffffffd0,%r8d
  0.04%    0.02%                        │       ││  0x00007ffb0525aca5: cmp    $0xa,%r8d
                                        │       ╰│  0x00007ffb0525aca9: jb     0x00007ffb0525aba5  ;*if_icmple
                                        │        │                                                ; - com.google.re2j.Utils::isWordRune@33 (line 149)
                                        │        │                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                                        │        │                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.04%    0.05%                        │        │  0x00007ffb0525acaf: cmp    $0x5f,%r10d
                                        │        │  0x00007ffb0525acb3: je     0x00007ffb0525b899  ;*if_icmpne
                                        │        │                                                ; - com.google.re2j.Utils::isWordRune@39 (line 149)
                                        │        │                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                                        │        │                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.00%                                 │        │  0x00007ffb0525acb9: xor    %r8d,%r8d
                                        │        ╰  0x00007ffb0525acbc: jmpq   0x00007ffb0525abab
                                        ↘           0x00007ffb0525acc1: mov    0x38(%rsp),%r10
                                                    0x00007ffb0525acc6: mov    0x24(%r10),%r9d    ;*getfield pool
                                                                                                  ; - com.google.re2j.Machine::freeQueue@1 (line 156)
                                                                                                  ; - com.google.re2j.Machine::freeQueue@15 (line 150)
                                                                                                  ; - com.google.re2j.Machine::freeQueue@3 (line 144)
                                                                                                  ; - com.google.re2j.Machine::match@445 (line 263)
....................................................................................................
 13.75%   13.80%  <total for region 3>

....[Hottest Regions]...............................................................................
 35.15%   33.93%         C2, level 4  com.google.re2j.Machine::step, version 550 (711 bytes) 
 32.65%   34.71%         C2, level 4  com.google.re2j.Inst$AltInst::add, version 544 (1180 bytes) 
 13.75%   13.80%         C2, level 4  com.google.re2j.Machine::match, version 589 (1001 bytes) 
  9.52%   10.21%        runtime stub  StubRoutines::jint_disjoint_arraycopy (128 bytes) 
  4.73%    3.99%         C2, level 4  com.google.re2j.Inst$AltInst::add, version 544 (123 bytes) 
  1.73%    1.70%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.37%    0.11%         C2, level 4  com.google.re2j.Machine::init, version 599 (317 bytes) 
  0.08%    0.02%         C2, level 4  com.google.re2j.Machine::init, version 599 (117 bytes) 
  0.08%    0.04%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 671 (164 bytes) 
  0.07%    0.00%   [kernel.kallsyms]  [unknown] (47 bytes) 
  0.07%    0.01%   [kernel.kallsyms]  [unknown] (2 bytes) 
  0.06%    0.02%         C2, level 4  com.google.re2j.Matcher::find, version 609 (8 bytes) 
  0.05%    0.04%         C2, level 4  com.google.re2j.Matcher::find, version 609 (0 bytes) 
  0.04%    0.02%         C2, level 4  com.google.re2j.Machine::init, version 599 (17 bytes) 
  0.04%    0.04%         C2, level 4  com.google.re2j.Matcher::find, version 609 (28 bytes) 
  0.04%    0.02%         C2, level 4  com.google.re2j.Matcher::find, version 609 (28 bytes) 
  0.04%    0.01%   [kernel.kallsyms]  [unknown] (46 bytes) 
  0.04%    0.00%   [kernel.kallsyms]  [unknown] (32 bytes) 
  0.03%    0.00%         C2, level 4  com.google.re2j.Matcher::find, version 609 (66 bytes) 
  0.03%    0.02%         C2, level 4  java.util.Collections::shuffle, version 617 (0 bytes) 
  1.40%    1.28%  <...other 315 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 37.38%   38.69%         C2, level 4  com.google.re2j.Inst$AltInst::add, version 544 
 35.18%   33.97%         C2, level 4  com.google.re2j.Machine::step, version 550 
 13.82%   13.85%         C2, level 4  com.google.re2j.Machine::match, version 589 
  9.52%   10.21%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
  2.37%    2.23%   [kernel.kallsyms]  [unknown] 
  0.52%    0.15%         C2, level 4  com.google.re2j.Machine::init, version 599 
  0.29%    0.15%         C2, level 4  com.google.re2j.Matcher::find, version 609 
  0.14%    0.05%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 671 
  0.10%    0.03%         C2, level 4  java.util.Collections::shuffle, version 617 
  0.03%    0.01%           libjvm.so  SpinPause 
  0.03%    0.05%        libc-2.26.so  vfprintf 
  0.03%    0.01%              [vdso]  [unknown] 
  0.02%    0.03%      hsdis-amd64.so  [unknown] 
  0.02%    0.06%           libjvm.so  RelocIterator::initialize 
  0.02%                 libc-2.26.so  __strlen_avx2 
  0.02%                    libjvm.so  decode_env::handle_event 
  0.02%    0.00%  libpthread-2.26.so  __pthread_enable_asynccancel 
  0.02%    0.01%  libpthread-2.26.so  __pthread_getspecific 
  0.01%                    libjvm.so  os::javaTimeNanos 
  0.01%    0.02%           libjvm.so  xmlTextStream::write 
  0.42%    0.25%  <...other 70 warm methods...>
....................................................................................................
100.00%   99.81%  <totals>

....[Distribution by Source]........................................................................
 87.46%   86.90%         C2, level 4
  9.54%   10.22%        runtime stub
  2.37%    2.23%   [kernel.kallsyms]
  0.32%    0.34%           libjvm.so
  0.13%    0.18%        libc-2.26.so
  0.06%    0.03%  libpthread-2.26.so
  0.04%    0.02%         interpreter
  0.03%    0.02%              [vdso]
  0.02%    0.04%      hsdis-amd64.so
  0.01%    0.01%         C1, level 3
  0.00%             Unknown, level 0
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:44

Benchmark                     Mode  Cnt     Score    Error  Units
Re2jFindRegex.testExp2       thrpt   20  9977.260 ± 37.103  ops/s
Re2jFindRegex.testExp2:·asm  thrpt            NaN             ---
