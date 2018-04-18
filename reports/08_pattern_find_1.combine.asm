# JMH version: 1.19
# VM version: JDK 1.8.0_131, VM 25.131-b11
# VM invoker: /usr/lib/jvm/java-8-oracle/jre/bin/java
# VM options: <none>
# Warmup: 20 iterations, 1 s each
# Measurement: 20 iterations, 1 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Throughput, ops/time
# Benchmark: com.github.arnaudroger.re2j.Re2jFindRegex.testCombine

# Run progress: 0.00% complete, ETA 00:00:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1479.004 ops/s
# Warmup Iteration   2: 4905.434 ops/s
# Warmup Iteration   3: 4941.796 ops/s
# Warmup Iteration   4: 4941.935 ops/s
# Warmup Iteration   5: 4932.742 ops/s
# Warmup Iteration   6: 5031.473 ops/s
# Warmup Iteration   7: 5040.591 ops/s
# Warmup Iteration   8: 5040.020 ops/s
# Warmup Iteration   9: 5041.275 ops/s
# Warmup Iteration  10: 5039.705 ops/s
# Warmup Iteration  11: 4873.733 ops/s
# Warmup Iteration  12: 4904.711 ops/s
# Warmup Iteration  13: 4905.222 ops/s
# Warmup Iteration  14: 4948.425 ops/s
# Warmup Iteration  15: 4998.113 ops/s
# Warmup Iteration  16: 5009.129 ops/s
# Warmup Iteration  17: 5018.531 ops/s
# Warmup Iteration  18: 5019.422 ops/s
# Warmup Iteration  19: 5019.176 ops/s
# Warmup Iteration  20: 4125.775 ops/s
Iteration   1: 3001.678 ops/s
Iteration   2: 5016.135 ops/s
Iteration   3: 5028.695 ops/s
Iteration   4: 4983.262 ops/s
Iteration   5: 4870.840 ops/s
Iteration   6: 4050.755 ops/s
Iteration   7: 4912.317 ops/s
Iteration   8: 4997.744 ops/s
Iteration   9: 4998.357 ops/s
Iteration  10: 4997.318 ops/s
Iteration  11: 4997.064 ops/s
Iteration  12: 4306.094 ops/s
Iteration  13: 5038.438 ops/s
Iteration  14: 5036.939 ops/s
Iteration  15: 5036.849 ops/s
Iteration  16: 5036.996 ops/s
Iteration  17: 5028.457 ops/s
Iteration  18: 4483.449 ops/s
Iteration  19: 5049.265 ops/s
Iteration  20: 5049.224 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  4795.994 ±(99.9%) 438.603 ops/s [Average]
  (min, avg, max) = (3001.678, 4795.994, 5049.265), stdev = 505.095
  CI (99.9%): [4357.391, 5234.596] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine:·asm":
PrintAssembly processed: 200390 total address lines.
Perf output processed (skipped 23.340 seconds):
 Column 1: cycles (20504 events)
 Column 2: instructions (20513 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 504 (361 bytes) 

                                                                      ; - com.google.re2j.Machine::free@1 (line 167)
                                                                      ; - com.google.re2j.Machine::step@224 (line 303)
                        0x00007f0c7c7bbd93: mov    0x24(%r10),%r9d    ;*getfield pool
                                                                      ; - com.google.re2j.Machine::free@5 (line 167)
                                                                      ; - com.google.re2j.Machine::step@224 (line 303)
                        0x00007f0c7c7bbd97: mov    0x80(%rsp),%r14d
                        0x00007f0c7c7bbd9f: mov    %ebp,%ebx
                        0x00007f0c7c7bbda1: mov    0x74(%rsp),%r13d
                  ╭     0x00007f0c7c7bbda6: jmp    0x00007f0c7c7bbdc4
                  │     0x00007f0c7c7bbda8: nopl   0x0(%rax,%rax,1)
  0.76%    0.72%  │  ↗  0x00007f0c7c7bbdb0: xor    %r10d,%r10d
  0.03%    0.05%  │ ↗│  0x00007f0c7c7bbdb3: test   %r10d,%r10d
                  │ ││  0x00007f0c7c7bbdb6: jne    0x00007f0c7c7bbd38
  0.50%    0.70%  │ ││  0x00007f0c7c7bbdbc: mov    0x80(%rsp),%r14d   ;*getfield size
                  │ ││                                                ; - com.google.re2j.Machine::step@15 (line 277)
  0.00%    0.02%  ↘ ││  0x00007f0c7c7bbdc4: mov    0xc(%r12,%r9,8),%ebp  ;*arraylength
                    ││                                                ; - com.google.re2j.Machine::free@8 (line 167)
                    ││                                                ; - com.google.re2j.Machine::step@224 (line 303)
                    ││                                                ; implicit exception: dispatches to 0x00007f0c7c7bc499
  0.76%    0.65%    ││  0x00007f0c7c7bbdc9: cmp    %ebp,%ecx
                    ││  0x00007f0c7c7bbdcb: jge    0x00007f0c7c7bc229  ;*if_icmplt
                    ││                                                ; - com.google.re2j.Machine::free@9 (line 167)
                    ││                                                ; - com.google.re2j.Machine::step@224 (line 303)
  0.02%    0.00%    ││  0x00007f0c7c7bbdd1: mov    %ecx,%r11d
  0.51%    0.58%    ││  0x00007f0c7c7bbdd4: inc    %r11d
  0.01%    0.01%    ││  0x00007f0c7c7bbdd7: mov    0x28(%rsp),%r10
  0.76%    0.68%    ││  0x00007f0c7c7bbddc: mov    %r11d,0xc(%r10)    ;*putfield poolSize
                    ││                                                ; - com.google.re2j.Machine::free@45 (line 170)
                    ││                                                ; - com.google.re2j.Machine::step@224 (line 303)
  0.14%    0.06%    ││  0x00007f0c7c7bbde0: cmp    %ebp,%ecx
                    ││  0x00007f0c7c7bbde2: jae    0x00007f0c7c7bc1d1  ;*aastore
                    ││                                                ; - com.google.re2j.Machine::free@49 (line 170)
                    ││                                                ; - com.google.re2j.Machine::step@224 (line 303)
  0.49%    0.69%    ││  0x00007f0c7c7bbde8: mov    0x8(%rsp),%r10
  0.02%    0.01%    ││  0x00007f0c7c7bbded: mov    0xc(%r10),%r10d    ;*getfield size
                    ││                                                ; - com.google.re2j.Machine::step@15 (line 277)
  0.57%    0.52%    ││  0x00007f0c7c7bbdf1: mov    %rax,%r11
  0.03%    0.03%    ││  0x00007f0c7c7bbdf4: shr    $0x3,%r11
  0.56%    0.58%    ││  0x00007f0c7c7bbdf8: lea    (%r12,%r9,8),%r8   ;*getfield pool
                    ││                                                ; - com.google.re2j.Machine::free@5 (line 167)
                    ││                                                ; - com.google.re2j.Machine::step@224 (line 303)
  0.03%    0.00%    ││  0x00007f0c7c7bbdfc: lea    0x10(%r8,%rcx,4),%r8
  0.72%    0.41%    ││  0x00007f0c7c7bbe01: mov    %r11d,(%r8)
  0.07%    0.09%    ││  0x00007f0c7c7bbe04: mov    %r8,%r11
  0.49%    0.54%    ││  0x00007f0c7c7bbe07: shr    $0x9,%r11
  0.04%    0.01%    ││  0x00007f0c7c7bbe0b: movabs $0x7f0c77fd2000,%r8
  0.81%    0.58%    ││  0x00007f0c7c7bbe15: mov    %r12b,(%r8,%r11,1)  ; OopMap{[8]=Oop [16]=Oop [40]=Oop off=345}
                    ││                                                ;*goto
                    ││                                                ; - com.google.re2j.Machine::step@230 (line 277)
  0.14%    0.15%    ││  0x00007f0c7c7bbe19: test   %eax,0x15e821e1(%rip)        # 0x00007f0c9263e000
                    ││                                                ;*goto
                    ││                                                ; - com.google.re2j.Machine::step@230 (line 277)
                    ││                                                ;   {poll}
  0.59%    0.45%    ││  0x00007f0c7c7bbe1f: cmp    %edx,%r13d
                    ││  0x00007f0c7c7bbe22: jge    0x00007f0c7c7bbf55
  0.03%    0.01%    ││  0x00007f0c7c7bbe28: mov    %r10d,%edx
  0.62%    0.41%    ││  0x00007f0c7c7bbe2b: mov    %r14d,0x80(%rsp)
  0.19%    0.18%    ││  0x00007f0c7c7bbe33: mov    %r13d,%ebx         ;*getfield size
                    ││                                                ; - com.google.re2j.Machine::step@15 (line 277)
  0.40%    0.46%    ││  0x00007f0c7c7bbe36: mov    0x8(%rsp),%r10
  0.12%    0.06%    ││  0x00007f0c7c7bbe3b: mov    0x20(%r10),%r10d   ;*getfield denseThreads
                    ││                                                ; - com.google.re2j.Machine::step@22 (line 278)
  0.83%    0.74%    ││  0x00007f0c7c7bbe3f: mov    0xc(%r12,%r10,8),%r8d  ; implicit exception: dispatches to 0x00007f0c7c7bc465
  1.01%    1.23%    ││  0x00007f0c7c7bbe44: cmp    %r8d,%ebx
                    ││  0x00007f0c7c7bbe47: jae    0x00007f0c7c7bc154
  0.81%    0.64%    ││  0x00007f0c7c7bbe4d: shl    $0x3,%r10
  0.03%    0.01%    ││  0x00007f0c7c7bbe51: mov    0x10(%r10,%rbx,4),%r10d  ;*aaload
                    ││                                                ; - com.google.re2j.Machine::step@27 (line 278)
  0.74%    0.53%    ││  0x00007f0c7c7bbe56: mov    0x10(%r12,%r10,8),%r9d  ;*getfield inst
                    ││                                                ; - com.google.re2j.Machine::step@78 (line 283)
                    ││                                                ; implicit exception: dispatches to 0x00007f0c7c7bc479
  3.09%    3.40%    ││  0x00007f0c7c7bbe5b: mov    0x8(%r12,%r9,8),%r8d  ; implicit exception: dispatches to 0x00007f0c7c7bc489
  5.07%    5.58%    ││  0x00007f0c7c7bbe60: lea    (%r12,%r9,8),%r11
  0.00%    0.00%    ││  0x00007f0c7c7bbe64: cmp    $0xf8019992,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                    ││  0x00007f0c7c7bbe6b: jne    0x00007f0c7c7bc112  ;*invokevirtual isMatch
                    ││                                                ; - com.google.re2j.Machine::step@85 (line 285)
  1.15%    1.48%    ││  0x00007f0c7c7bbe71: mov    0xc(%r11),%r9d
  0.09%    0.08%    ││  0x00007f0c7c7bbe75: cmp    $0x6,%r9d
                    ││  0x00007f0c7c7bbe79: je     0x00007f0c7c7bc134  ;*if_icmpne
                    ││                                                ; - com.google.re2j.Inst::isMatch@6 (line 78)
                    ││                                                ; - com.google.re2j.Inst$MatchInst::isMatch@1 (line 82)
                    ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  1.15%    1.44%    ││  0x00007f0c7c7bbe7f: xor    %edi,%edi          ;*synchronization entry
                    ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%             ││  0x00007f0c7c7bbe81: mov    0xc(%r12,%r10,8),%r8d  ;*getfield cap
                    ││                                                ; - com.google.re2j.Machine::step@104 (line 289)
  0.22%    0.23%    ││  0x00007f0c7c7bbe86: mov    0x28(%rsp),%r9
  0.01%    0.01%    ││  0x00007f0c7c7bbe8b: mov    0xc(%r9),%ecx      ;*getfield poolSize
                    ││                                                ; - com.google.re2j.Machine::free@1 (line 167)
                    ││                                                ; - com.google.re2j.Machine::step@224 (line 303)
  1.15%    1.50%    ││  0x00007f0c7c7bbe8f: mov    0x24(%r9),%r9d     ;*getfield pool
                    ││                                                ; - com.google.re2j.Machine::free@5 (line 167)
                    ││                                                ; - com.google.re2j.Machine::step@224 (line 303)
  0.01%    0.00%    ││  0x00007f0c7c7bbe93: mov    %ebx,%r13d
  0.30%    0.28%    ││  0x00007f0c7c7bbe96: inc    %r13d              ;*iadd
                    ││                                                ; - com.google.re2j.Machine::step@171 (line 295)
  0.01%    0.01%    ││  0x00007f0c7c7bbe99: lea    (%r12,%r10,8),%rax  ;*aaload
                    ││                                                ; - com.google.re2j.Machine::step@27 (line 278)
  1.30%    1.38%    ││  0x00007f0c7c7bbe9d: test   %edi,%edi
                    ││  0x00007f0c7c7bbe9f: jne    0x00007f0c7c7bbfb9  ;*ifeq
                    ││                                                ; - com.google.re2j.Machine::step@88 (line 285)
  0.01%    0.00%    ││  0x00007f0c7c7bbea5: mov    0x8(%r11),%esi
  0.20%    0.34%    ││  0x00007f0c7c7bbea9: cmp    $0xf8019992,%esi   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                    ││  0x00007f0c7c7bbeaf: jne    0x00007f0c7c7bc191  ;*invokevirtual matchRune
                    ││                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.01%    0.02%    ││  0x00007f0c7c7bbeb5: mov    0xc(%r11),%ebp     ;*getfield op
                    ││                                                ; - com.google.re2j.Inst$RuneInst::matchRune@1 (line 134)
                    ││                                                ; - com.google.re2j.Machine::step@187 (line 299)
  1.09%    1.18%    ││  0x00007f0c7c7bbeb9: cmp    $0xa,%ebp
                    ││  0x00007f0c7c7bbebc: je     0x00007f0c7c7bbd38  ;*if_icmpne
                    ││                                                ; - com.google.re2j.Inst$RuneInst::matchRune@6 (line 134)
                    ││                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.00%    0.00%    ││  0x00007f0c7c7bbec2: cmp    $0xb,%ebp
                    ││  0x00007f0c7c7bbec5: je     0x00007f0c7c7bc26d  ;*if_icmpne
                    ││                                                ; - com.google.re2j.Inst$RuneInst::matchRune@17 (line 138)
                    ││                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.18%    0.36%    ││  0x00007f0c7c7bbecb: mov    0x20(%r11),%edi    ;*getfield f0
                    ││                                                ; - com.google.re2j.Inst$RuneInst::matchRune@42 (line 143)
                    ││                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.01%    0.03%    ││  0x00007f0c7c7bbecf: cmp    $0x9,%ebp
                   ╭││  0x00007f0c7c7bbed2: jne    0x00007f0c7c7bbee6  ;*if_icmpne
                   │││                                                ; - com.google.re2j.Inst$RuneInst::matchRune@38 (line 142)
                   │││                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.24%    0.35%   │││  0x00007f0c7c7bbed4: cmp    0x20(%rsp),%edi
                   │││  0x00007f0c7c7bbed8: je     0x00007f0c7c7bbfae  ;*if_icmpne
                   │││                                                ; - com.google.re2j.Inst$RuneInst::matchRune@46 (line 143)
                   │││                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.02%    0.01%   │││  0x00007f0c7c7bbede: xor    %r10d,%r10d
  0.08%    0.12%   │╰│  0x00007f0c7c7bbee1: jmpq   0x00007f0c7c7bbdb3
  0.93%    0.97%   ↘ │  0x00007f0c7c7bbee6: cmp    $0xc,%ebp
                     │  0x00007f0c7c7bbee9: jne    0x00007f0c7c7bc2a1  ;*if_icmpne
                     │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@61 (line 146)
                     │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.08%    0.07%     │  0x00007f0c7c7bbeef: cmp    0x20(%rsp),%edi
                     │  0x00007f0c7c7bbef3: je     0x00007f0c7c7bbf8e  ;*if_icmpeq
                     │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@69 (line 147)
                     │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.31%    0.53%     │  0x00007f0c7c7bbef9: mov    0x24(%r11),%edi    ;*getfield f1
                     │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@73 (line 147)
                     │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.02%    0.01%     │  0x00007f0c7c7bbefd: cmp    0x20(%rsp),%edi
                     │  0x00007f0c7c7bbf01: je     0x00007f0c7c7bbf8e  ;*if_icmpeq
                     │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@77 (line 147)
                     │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.78%    0.94%     │  0x00007f0c7c7bbf07: mov    0x28(%r11),%ebp    ;*getfield f2
                     │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@81 (line 147)
                     │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.04%    0.03%     │  0x00007f0c7c7bbf0b: cmp    0x20(%rsp),%ebp
                     │  0x00007f0c7c7bbf0f: je     0x00007f0c7c7bc2d5  ;*if_icmpeq
                     │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@85 (line 147)
                     │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.54%    0.71%     │  0x00007f0c7c7bbf15: mov    0x2c(%r11),%ebp    ;*getfield f3
                     │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@89 (line 147)
                     │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.01%    0.01%     │  0x00007f0c7c7bbf19: cmp    0x20(%rsp),%ebp
                     ╰  0x00007f0c7c7bbf1d: jne    0x00007f0c7c7bbdb0  ;*if_icmpne
                                                                      ; - com.google.re2j.Inst$RuneInst::matchRune@93 (line 147)
                                                                      ; - com.google.re2j.Machine::step@187 (line 299)
                        0x00007f0c7c7bbf23: mov    $0xffffff65,%esi
                        0x00007f0c7c7bbf28: mov    %ebx,0x74(%rsp)
                        0x00007f0c7c7bbf2c: mov    0x18(%rsp),%r9d
                        0x00007f0c7c7bbf31: mov    %r9d,0x7c(%rsp)
                        0x00007f0c7c7bbf36: mov    0x1c(%rsp),%r8d
....................................................................................................
 30.98%   32.90%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Inst$AltInst::add, version 506 (1856 bytes) 

 <region is too big to display, has 1017 lines, but threshold is 1000>
....................................................................................................
 27.27%   29.99%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 548 (1385 bytes) 

                                     0x00007f0c7c7ea419: shl    $0x3,%r11d         ;*ishl
                                                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                                                                                   ; - com.google.re2j.Machine::match@60 (line 189)
                                     0x00007f0c7c7ea41d: mov    %r11d,%r10d
                                     0x00007f0c7c7ea420: and    $0x7,%r10d
                                     0x00007f0c7c7ea424: or     $0x1,%r11d
                                     0x00007f0c7c7ea428: mov    %r11d,%ebp
                                     0x00007f0c7c7ea42b: or     $0x1,%r10d         ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                                                                                   ; - com.google.re2j.Machine::match@60 (line 189)
                                     0x00007f0c7c7ea42f: mov    %r10d,0x28(%rsp)
           0.00%                     0x00007f0c7c7ea434: mov    %r11d,%r10d
                                     0x00007f0c7c7ea437: sar    $0x3,%r10d         ;*ishr
                                                                                   ; - com.google.re2j.Machine::match@68 (line 190)
  0.02%                              0x00007f0c7c7ea43b: cmp    $0xfffffff8,%r11d
                                     0x00007f0c7c7ea43f: je     0x00007f0c7c7eb858  ;*if_icmpeq
                                                                                   ; - com.google.re2j.Machine::match@88 (line 194)
                                     0x00007f0c7c7ea445: vmovd  %xmm0,%r11d
                                     0x00007f0c7c7ea44a: add    0x28(%rsp),%r11d
  0.01%                              0x00007f0c7c7ea44f: add    %r14d,%r11d        ;*iadd
                                                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                                                                                   ; - com.google.re2j.Machine::match@96 (line 195)
  0.00%                              0x00007f0c7c7ea452: mov    %r11d,%edx
                                     0x00007f0c7c7ea455: cmp    0x6c(%rsp),%r11d
                                     0x00007f0c7c7ea45a: jge    0x00007f0c7c7eafdf  ;*if_icmpge
                                                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                                                                                   ; - com.google.re2j.Machine::match@96 (line 195)
  0.00%                              0x00007f0c7c7ea460: test   %r11d,%r11d
                                     0x00007f0c7c7ea463: jl     0x00007f0c7c7ebc61  ;*iflt
                                                                                   ; - java.lang.String::charAt@1 (line 657)
                                                                                   ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                   ; - com.google.re2j.Machine::match@96 (line 195)
                                     0x00007f0c7c7ea469: cmp    %r9d,%r11d
                                     0x00007f0c7c7ea46c: jge    0x00007f0c7c7ebe0d  ;*if_icmplt
                                                                                   ; - java.lang.String::charAt@10 (line 657)
                                                                                   ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                   ; - com.google.re2j.Machine::match@96 (line 195)
  0.01%                              0x00007f0c7c7ea472: cmp    %r9d,%r11d
                                     0x00007f0c7c7ea475: jae    0x00007f0c7c7eb8fd
                                     0x00007f0c7c7ea47b: movzwl 0x10(%r8,%r11,2),%r8d  ;*caload
                                                                                   ; - java.lang.String::charAt@27 (line 660)
                                                                                   ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                   ; - com.google.re2j.Machine::match@96 (line 195)
           0.00%                     0x00007f0c7c7ea481: cmp    $0xd800,%r8d
                                     0x00007f0c7c7ea488: jge    0x00007f0c7c7ebe75  ;*if_icmplt
                                                                                   ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                                   ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                   ; - com.google.re2j.Machine::match@96 (line 195)
           0.00%                     0x00007f0c7c7ea48e: shl    $0x3,%r8d          ;*ishl
                                                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                                                                                   ; - com.google.re2j.Machine::match@96 (line 195)
                                     0x00007f0c7c7ea492: mov    %r8d,%r11d
                                     0x00007f0c7c7ea495: or     $0x1,%r11d
  0.01%    0.00%                     0x00007f0c7c7ea499: and    $0x7,%r8d
                                     0x00007f0c7c7ea49d: sar    $0x3,%r11d         ;*ishr
                                                                                   ; - com.google.re2j.Machine::match@104 (line 196)
           0.00%                     0x00007f0c7c7ea4a1: mov    %r11d,0x2c(%rsp)
                                     0x00007f0c7c7ea4a6: or     $0x1,%r8d          ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                                                                                   ; - com.google.re2j.Machine::match@96 (line 195)
                                     0x00007f0c7c7ea4aa: mov    %r8d,0x38(%rsp)    ;*ishr
                                                                                   ; - com.google.re2j.Machine::match@104 (line 196)
  0.00%    0.00%                     0x00007f0c7c7ea4af: vmovd  %xmm0,%r11d
                                     0x00007f0c7c7ea4b4: test   %r11d,%r11d
                                     0x00007f0c7c7ea4b7: jne    0x00007f0c7c7ebc0d  ;*ifne
                                                                                   ; - com.google.re2j.Machine::match@115 (line 200)
                                     0x00007f0c7c7ea4bd: test   %r10d,%r10d
                                     0x00007f0c7c7ea4c0: jl     0x00007f0c7c7eafd4  ;*ifge
                                                                                   ; - com.google.re2j.Utils::emptyOpContext@21 (line 179)
                                                                                   ; - com.google.re2j.Machine::match@121 (line 201)
                                     0x00007f0c7c7ea4c6: mov    $0x5,%r11d         ;*iload_1
                                                                                   ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                                                                                   ; - com.google.re2j.Machine::match@121 (line 201)
  0.01%                              0x00007f0c7c7ea4cc: cmp    $0xa,%r10d
                                     0x00007f0c7c7ea4d0: je     0x00007f0c7c7eaff7  ;*iload_0
                                                                                   ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                                                                                   ; - com.google.re2j.Machine::match@121 (line 201)
                                     0x00007f0c7c7ea4d6: mov    %r10d,%r8d
                                     0x00007f0c7c7ea4d9: add    $0xffffffbf,%r8d
                                     0x00007f0c7c7ea4dd: cmp    $0x1a,%r8d
                  ╭                  0x00007f0c7c7ea4e1: jb     0x00007f0c7c7ea4f4  ;*if_icmple
                  │                                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │                                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                                ; - com.google.re2j.Machine::match@121 (line 201)
  0.00%           │                  0x00007f0c7c7ea4e3: mov    %r10d,%r9d
                  │                  0x00007f0c7c7ea4e6: add    $0xffffff9f,%r9d
                  │                  0x00007f0c7c7ea4ea: cmp    $0x1a,%r9d
                  │                  0x00007f0c7c7ea4ee: jae    0x00007f0c7c7eb010  ;*iconst_1
                  │                                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │                                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                                ; - com.google.re2j.Machine::match@121 (line 201)
                  ↘                  0x00007f0c7c7ea4f4: or     $0x10,%r11d        ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                                                                                   ; - com.google.re2j.Machine::match@121 (line 201)
  0.00%                              0x00007f0c7c7ea4f8: mov    %r11d,0x4c(%rsp)   ;*iload_2
                                                                                   ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                                   ; - com.google.re2j.Machine::match@121 (line 201)
                                     0x00007f0c7c7ea4fd: mov    0x40(%rsp),%r11
                                     0x00007f0c7c7ea502: mov    0x24(%r11),%ebx    ;*getfield pool
                                                                                   ; - com.google.re2j.Machine::alloc@18 (line 134)
                                                                                   ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                                                                   ; - com.google.re2j.Machine::match@315 (line 239)
           0.01%                     0x00007f0c7c7ea506: mov    0xc(%r11),%r8d     ;*getfield poolSize
                                                                                   ; - com.google.re2j.Machine::alloc@1 (line 132)
                                                                                   ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                                                                   ; - com.google.re2j.Machine::match@315 (line 239)
                                     0x00007f0c7c7ea50a: mov    0x48(%rsp),%r9d
                                     0x00007f0c7c7ea50f: and    $0x4,%r9d          ;*iand
                                                                                   ; - com.google.re2j.Machine::match@147 (line 208)
                                     0x00007f0c7c7ea513: mov    %r9d,0x58(%rsp)
                                     0x00007f0c7c7ea518: mov    %rdi,%r11
  0.00%                              0x00007f0c7c7ea51b: shl    $0x3,%r11          ;*getfield q1
                                                                                   ; - com.google.re2j.Machine::match@53 (line 188)
                                     0x00007f0c7c7ea51f: mov    %r11,0x20(%rsp)
  0.00%                              0x00007f0c7c7ea524: xor    %ecx,%ecx
                                     0x00007f0c7c7ea526: xor    %r11d,%r11d
                                     0x00007f0c7c7ea529: mov    %r11d,0x14(%rsp)
                   ╭                 0x00007f0c7c7ea52e: jmpq   0x00007f0c7c7ea784  ;*ifle
                   │                                                               ; - com.google.re2j.Machine::match@287 (line 236)
  0.03%    0.03%   │          ↗      0x00007f0c7c7ea533: mov    0x30(%rsp),%r11d
  0.02%            │          │      0x00007f0c7c7ea538: mov    %r11,%r8
  0.12%    0.06%   │          │      0x00007f0c7c7ea53b: shl    $0x3,%r8           ;*getfield matchcap
                   │          │                                                    ; - com.google.re2j.Machine::match@283 (line 236)
  0.01%    0.01%   │          │      0x00007f0c7c7ea53f: mov    %r10,%rsi
  0.05%    0.03%   │          │      0x00007f0c7c7ea542: mov    0x18(%rsp),%rdx
  0.03%            │          │      0x00007f0c7c7ea547: mov    0x60(%rsp),%ecx
  0.14%    0.07%   │          │      0x00007f0c7c7ea54b: mov    0x4c(%rsp),%r9d
  0.01%            │          │      0x00007f0c7c7ea550: xor    %edi,%edi
  0.02%    0.03%   │          │      0x00007f0c7c7ea552: mov    0x40(%rsp),%r10
  0.03%    0.01%   │          │      0x00007f0c7c7ea557: mov    %r10,(%rsp)
  0.09%    0.08%   │          │      0x00007f0c7c7ea55b: callq  0x00007f0c7c5ea020  ; OopMap{[24]=Oop [32]=Oop [52]=NarrowOop [64]=Oop [80]=Oop off=640}
                   │          │                                                    ;*invokevirtual add
                   │          │                                                    ; - com.google.re2j.Machine::match@315 (line 239)
                   │          │                                                    ;   {optimized virtual_call}
  0.01%    0.01%   │          │↗     0x00007f0c7c7ea560: mov    0x64(%rsp),%ebx
  0.21%    0.23%   │          ││     0x00007f0c7c7ea564: test   %ebx,%ebx
                   │╭         ││     0x00007f0c7c7ea566: jl     0x00007f0c7c7ea97e  ;*ifge
                   ││         ││                                                   ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                   ││         ││                                                   ; - com.google.re2j.Machine::match@323 (line 241)
  0.08%    0.06%   ││         ││     0x00007f0c7c7ea56c: xor    %r8d,%r8d          ;*iload_0
                   ││         ││                                                   ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                   ││         ││                                                   ; - com.google.re2j.Machine::match@323 (line 241)
  0.08%    0.06%   ││         ││↗    0x00007f0c7c7ea56f: cmp    $0xa,%ebx
                   ││         │││    0x00007f0c7c7ea572: je     0x00007f0c7c7eab95  ;*iload_1
                   ││         │││                                                  ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                   ││         │││                                                  ; - com.google.re2j.Machine::match@323 (line 241)
  0.03%    0.03%   ││         │││    0x00007f0c7c7ea578: mov    0x2c(%rsp),%r10d
  0.19%    0.22%   ││         │││    0x00007f0c7c7ea57d: test   %r10d,%r10d
  0.10%    0.07%   ││╭        │││    0x00007f0c7c7ea580: jl     0x00007f0c7c7ea989  ;*iload_1
                   │││        │││                                                  ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                   │││        │││                                                  ; - com.google.re2j.Machine::match@323 (line 241)
  0.03%    0.06%   │││        │││↗   0x00007f0c7c7ea586: cmp    $0xa,%r10d
                   │││        ││││   0x00007f0c7c7ea58a: je     0x00007f0c7c7eab9e  ;*invokevirtual endPos
                   │││        ││││                                                 ; - com.google.re2j.Machine::match@345 (line 242)
  0.04%    0.05%   │││        ││││   0x00007f0c7c7ea590: mov    0x50(%rsp),%r10
  0.17%    0.24%   │││        ││││   0x00007f0c7c7ea595: mov    0x10(%r10),%ecx    ;*getfield end
                   │││        ││││                                                 ; - com.google.re2j.MachineInput$UTF16Input::endPos@1 (line 221)
                   │││        ││││                                                 ; - com.google.re2j.Machine::match@345 (line 242)
  0.14%    0.07%   │││        ││││   0x00007f0c7c7ea599: mov    0x60(%rsp),%r11d
  0.10%    0.05%   │││        ││││   0x00007f0c7c7ea59e: add    0x28(%rsp),%r11d   ;*iadd
                   │││        ││││                                                 ; - com.google.re2j.Machine::match@337 (line 242)
  0.04%    0.05%   │││        ││││   0x00007f0c7c7ea5a3: mov    %r11d,0x14(%rsp)
  0.18%    0.24%   │││        ││││   0x00007f0c7c7ea5a8: mov    0x64(%rsp),%r10d
  0.09%    0.10%   │││        ││││   0x00007f0c7c7ea5ad: add    $0xffffffbf,%r10d
  0.07%    0.08%   │││        ││││   0x00007f0c7c7ea5b1: mov    0x2c(%rsp),%r11d
  0.04%    0.02%   │││        ││││   0x00007f0c7c7ea5b6: add    $0xffffffbf,%r11d
  0.15%    0.16%   │││        ││││   0x00007f0c7c7ea5ba: cmp    $0x1a,%r10d
                   │││╭       ││││   0x00007f0c7c7ea5be: jb     0x00007f0c7c7ea5d3  ;*if_icmple
                   ││││       ││││                                                 ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                   ││││       ││││                                                 ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   ││││       ││││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.08%    0.04%   ││││       ││││   0x00007f0c7c7ea5c0: mov    0x64(%rsp),%r9d
  0.04%    0.06%   ││││       ││││   0x00007f0c7c7ea5c5: add    $0xffffff9f,%r9d
  0.05%    0.06%   ││││       ││││   0x00007f0c7c7ea5c9: cmp    $0x1a,%r9d
                   ││││       ││││   0x00007f0c7c7ea5cd: jae    0x00007f0c7c7eae59  ;*iconst_1
                   ││││       ││││                                                 ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                   ││││       ││││                                                 ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   ││││       ││││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.18%    0.17%   │││↘       ││││   0x00007f0c7c7ea5d3: mov    $0x1,%ebp          ;*ireturn
                   │││        ││││                                                 ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                   │││        ││││                                                 ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   │││        ││││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.05%    0.13%   │││        ││││   0x00007f0c7c7ea5d8: cmp    $0x1a,%r11d
                   │││ ╭      ││││   0x00007f0c7c7ea5dc: jb     0x00007f0c7c7ea5f1  ;*if_icmple
                   │││ │      ││││                                                 ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                   │││ │      ││││                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   │││ │      ││││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.01%    0.07%   │││ │      ││││   0x00007f0c7c7ea5de: mov    0x2c(%rsp),%r11d
  0.06%    0.06%   │││ │      ││││   0x00007f0c7c7ea5e3: add    $0xffffff9f,%r11d
  0.11%    0.20%   │││ │      ││││   0x00007f0c7c7ea5e7: cmp    $0x1a,%r11d
                   │││ │      ││││   0x00007f0c7c7ea5eb: jae    0x00007f0c7c7eae7c  ;*iconst_1
                   │││ │      ││││                                                 ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                   │││ │      ││││                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   │││ │      ││││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.08%    0.08%   │││ ↘      ││││   0x00007f0c7c7ea5f1: mov    $0x1,%r11d         ;*ireturn
                   │││        ││││                                                 ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                   │││        ││││                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   │││        ││││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.08%    0.13%   │││        ││││   0x00007f0c7c7ea5f7: cmp    %r11d,%ebp
                   │││  ╭     ││││   0x00007f0c7c7ea5fa: je     0x00007f0c7c7ea607  ;*if_icmpeq
                   │││  │     ││││                                                 ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                   │││  │     ││││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.02%    0.03%   │││  │     ││││   0x00007f0c7c7ea5fc: or     $0x10,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                   │││  │     ││││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.03%    0.05%   │││  │     ││││   0x00007f0c7c7ea600: mov    %r8d,0x4c(%rsp)
  0.03%    0.04%   │││  │╭    ││││   0x00007f0c7c7ea605: jmp    0x00007f0c7c7ea610
  0.05%    0.06%   │││  ↘│    ││││   0x00007f0c7c7ea607: or     $0x20,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                   │││   │    ││││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.10%    0.15%   │││   │    ││││   0x00007f0c7c7ea60b: mov    %r8d,0x4c(%rsp)    ;*iload_2
                   │││   │    ││││                                                 ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   │││   │    ││││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.12%    0.15%   │││   ↘    ││││   0x00007f0c7c7ea610: mov    0x60(%rsp),%r11d
  0.09%    0.08%   │││        ││││   0x00007f0c7c7ea615: cmp    %ecx,%r11d
                   │││    ╭   ││││   0x00007f0c7c7ea618: je     0x00007f0c7c7ea992  ;*if_icmpne
                   │││    │   ││││                                                 ; - com.google.re2j.Machine::match@348 (line 242)
  0.05%    0.08%   │││    │   ││││   0x00007f0c7c7ea61e: xor    %r10d,%r10d
  0.16%    0.17%   │││    │   ││││↗  0x00007f0c7c7ea621: mov    0x40(%rsp),%rsi
  0.07%    0.09%   │││    │   │││││  0x00007f0c7c7ea626: mov    0x18(%rsp),%rdx
  0.03%    0.06%   │││    │   │││││  0x00007f0c7c7ea62b: mov    0x20(%rsp),%rcx
  0.06%    0.06%   │││    │   │││││  0x00007f0c7c7ea630: mov    0x60(%rsp),%r8d
  0.21%    0.19%   │││    │   │││││  0x00007f0c7c7ea635: mov    0x14(%rsp),%r9d
  0.05%    0.09%   │││    │   │││││  0x00007f0c7c7ea63a: mov    0x64(%rsp),%edi
  0.07%    0.07%   │││    │   │││││  0x00007f0c7c7ea63e: mov    0x4c(%rsp),%r11d
  0.08%    0.10%   │││    │   │││││  0x00007f0c7c7ea643: mov    %r11d,(%rsp)
  0.19%    0.17%   │││    │   │││││  0x00007f0c7c7ea647: mov    0x3c(%rsp),%ebx
  0.05%    0.06%   │││    │   │││││  0x00007f0c7c7ea64b: mov    %ebx,0x8(%rsp)
  0.12%    0.09%   │││    │   │││││  0x00007f0c7c7ea64f: mov    %r10d,0x10(%rsp)
  0.20%    0.13%   │││    │   │││││  0x00007f0c7c7ea654: data16 xchg %ax,%ax
  0.14%    0.13%   │││    │   │││││  0x00007f0c7c7ea657: callq  0x00007f0c7c5ea020  ; OopMap{[24]=Oop [32]=Oop [52]=NarrowOop [64]=Oop [80]=Oop off=892}
                   │││    │   │││││                                                ;*invokespecial step
                   │││    │   │││││                                                ; - com.google.re2j.Machine::match@356 (line 242)
                   │││    │   │││││                                                ;   {optimized virtual_call}
  0.11%    0.07%   │││    │   │││││  0x00007f0c7c7ea65c: mov    0x40(%rsp),%r10
  0.23%    0.14%   │││    │   │││││  0x00007f0c7c7ea661: mov    0x24(%r10),%ebx    ;*getfield pool
                   │││    │   │││││                                                ; - com.google.re2j.Machine::freeQueue@1 (line 156)
                   │││    │   │││││                                                ; - com.google.re2j.Machine::freeQueue@15 (line 150)
                   │││    │   │││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 144)
                   │││    │   │││││                                                ; - com.google.re2j.Machine::match@445 (line 263)
  0.07%    0.06%   │││    │   │││││  0x00007f0c7c7ea665: mov    0xc(%r10),%r8d     ;*getfield poolSize
                   │││    │   │││││                                                ; - com.google.re2j.Machine::freeQueue@8 (line 157)
                   │││    │   │││││                                                ; - com.google.re2j.Machine::freeQueue@15 (line 150)
                   │││    │   │││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 144)
                   │││    │   │││││                                                ; - com.google.re2j.Machine::match@445 (line 263)
  0.10%    0.09%   │││    │   │││││  0x00007f0c7c7ea669: mov    0x28(%rsp),%r10d
           0.01%   │││    │   │││││  0x00007f0c7c7ea66e: test   %r10d,%r10d
                   │││    │   │││││  0x00007f0c7c7ea671: je     0x00007f0c7c7eaab6  ;*ifne
                   │││    │   │││││                                                ; - com.google.re2j.Machine::match@361 (line 243)
  0.18%    0.13%   │││    │   │││││  0x00007f0c7c7ea677: mov    0x40(%rsp),%r11
  0.02%    0.03%   │││    │   │││││  0x00007f0c7c7ea67c: mov    0x28(%r11),%r11d   ;*getfield matchcap
                   │││    │   │││││                                                ; - com.google.re2j.Machine::match@368 (line 246)
  0.11%    0.15%   │││    │   │││││  0x00007f0c7c7ea680: mov    %r11d,0x30(%rsp)
  0.02%    0.02%   │││    │   │││││  0x00007f0c7c7ea685: mov    0xc(%r12,%r11,8),%ebp  ;*arraylength
                   │││    │   │││││                                                ; - com.google.re2j.Machine::match@371 (line 246)
                   │││    │   │││││                                                ; implicit exception: dispatches to 0x00007f0c7c7ec5c9
  0.28%    0.32%   │││    │   │││││  0x00007f0c7c7ea68a: test   %ebp,%ebp
                   │││    │   │││││  0x00007f0c7c7ea68c: jne    0x00007f0c7c7eb1f9  ;*ifne
                   │││    │   │││││                                                ; - com.google.re2j.Machine::match@372 (line 246)
  0.04%    0.02%   │││    │   │││││  0x00007f0c7c7ea692: mov    0x40(%rsp),%r11
  0.07%    0.17%   │││    │   │││││  0x00007f0c7c7ea697: movzbl 0x10(%r11),%ecx    ;*getfield matched
                   │││    │   │││││                                                ; - com.google.re2j.Machine::match@376 (line 246)
  0.00%    0.00%   │││    │   │││││  0x00007f0c7c7ea69c: test   %ecx,%ecx
                   │││    │   │││││  0x00007f0c7c7ea69e: jne    0x00007f0c7c7eb459  ;*ifeq
                   │││    │   │││││                                                ; - com.google.re2j.Machine::match@379 (line 246)
  0.20%    0.24%   │││    │   │││││  0x00007f0c7c7ea6a4: mov    0x50(%rsp),%r10
  0.03%    0.05%   │││    │   │││││  0x00007f0c7c7ea6a9: mov    0x10(%r10),%r11d   ;*getfield end
                   │││    │   │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                   │││    │   │││││                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.16%    0.11%   │││    │   │││││  0x00007f0c7c7ea6ad: mov    %r11d,0x6c(%rsp)
  0.00%    0.01%   │││    │   │││││  0x00007f0c7c7ea6b2: mov    0xc(%r10),%r14d    ;*getfield start
                   │││    │   │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                   │││    │   │││││                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.16%    0.29%   │││    │   │││││  0x00007f0c7c7ea6b6: mov    0x14(%r10),%r13d   ;*getfield str
                   │││    │   │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                   │││    │   │││││                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.04%    0.05%   │││    │   │││││  0x00007f0c7c7ea6ba: mov    0x2c(%rsp),%r10d
  0.10%    0.16%   │││    │   │││││  0x00007f0c7c7ea6bf: cmp    $0xffffffff,%r10d
                   │││    │   │││││  0x00007f0c7c7ea6c3: je     0x00007f0c7c7eab77  ;*if_icmpeq
                   │││    │   │││││                                                ; - com.google.re2j.Machine::match@401 (line 254)
  0.01%    0.02%   │││    │   │││││  0x00007f0c7c7ea6c9: mov    0x38(%rsp),%edi
  0.17%    0.15%   │││    │   │││││  0x00007f0c7c7ea6cd: add    0x14(%rsp),%edi
  0.03%    0.06%   │││    │   │││││  0x00007f0c7c7ea6d1: add    %r14d,%edi         ;*iadd
                   │││    │   │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                   │││    │   │││││                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.16%    0.24%   │││    │   │││││  0x00007f0c7c7ea6d4: cmp    %r11d,%edi
                   │││    │   │││││  0x00007f0c7c7ea6d7: jge    0x00007f0c7c7eab87  ;*if_icmpge
                   │││    │   │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                   │││    │   │││││                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.01%    0.03%   │││    │   │││││  0x00007f0c7c7ea6dd: mov    0x8(%r12,%r13,8),%r11d  ; implicit exception: dispatches to 0x00007f0c7c7ec5d9
  0.23%    0.42%   │││    │   │││││  0x00007f0c7c7ea6e2: cmp    $0xf80002da,%r11d  ;   {metadata(&apos;java/lang/String&apos;)}
                   │││    │   │││││  0x00007f0c7c7ea6e9: jne    0x00007f0c7c7eb0ed
  0.07%    0.10%   │││    │   │││││  0x00007f0c7c7ea6ef: lea    (%r12,%r13,8),%rdx  ;*invokeinterface charAt
                   │││    │   │││││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││    │   │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││    │   │││││                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.09%    0.12%   │││    │   │││││  0x00007f0c7c7ea6f3: test   %edi,%edi
                   │││    │   │││││  0x00007f0c7c7ea6f5: jl     0x00007f0c7c7eb24d  ;*iflt
                   │││    │   │││││                                                ; - java.lang.String::charAt@1 (line 657)
                   │││    │   │││││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││    │   │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││    │   │││││                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.01%    0.02%   │││    │   │││││  0x00007f0c7c7ea6fb: mov    0xc(%rdx),%r9d     ;*getfield value
                   │││    │   │││││                                                ; - java.lang.String::charAt@6 (line 657)
                   │││    │   │││││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││    │   │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││    │   │││││                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.21%    0.39%   │││    │   │││││  0x00007f0c7c7ea6ff: mov    0xc(%r12,%r9,8),%ebp  ;*arraylength
                   │││    │   │││││                                                ; - java.lang.String::charAt@9 (line 657)
                   │││    │   │││││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││    │   │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││    │   │││││                                                ; - com.google.re2j.Machine::match@409 (line 255)
                   │││    │   │││││                                                ; implicit exception: dispatches to 0x00007f0c7c7ec5ed
  1.06%    1.44%   │││    │   │││││  0x00007f0c7c7ea704: cmp    %ebp,%edi
                   │││    │   │││││  0x00007f0c7c7ea706: jge    0x00007f0c7c7eb4ad  ;*if_icmplt
                   │││    │   │││││                                                ; - java.lang.String::charAt@10 (line 657)
                   │││    │   │││││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││    │   │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││    │   │││││                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.27%    0.36%   │││    │   │││││  0x00007f0c7c7ea70c: cmp    %ebp,%edi
                   │││    │   │││││  0x00007f0c7c7ea70e: jae    0x00007f0c7c7eb06c
  0.10%    0.13%   │││    │   │││││  0x00007f0c7c7ea714: lea    (%r12,%r9,8),%r10
  0.03%    0.02%   │││    │   │││││  0x00007f0c7c7ea718: movzwl 0x10(%r10,%rdi,2),%r9d  ;*caload
                   │││    │   │││││                                                ; - java.lang.String::charAt@27 (line 660)
                   │││    │   │││││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││    │   │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││    │   │││││                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.16%    0.15%   │││    │   │││││  0x00007f0c7c7ea71e: cmp    $0xd800,%r9d
                   │││    │   │││││  0x00007f0c7c7ea725: jge    0x00007f0c7c7eb519  ;*if_icmplt
                   │││    │   │││││                                                ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   │││    │   │││││                                                ; - java.lang.Character::codePointAt@9 (line 4867)
                   │││    │   │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││    │   │││││                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.25%    0.36%   │││    │   │││││  0x00007f0c7c7ea72b: shl    $0x3,%r9d          ;*ishl
                   │││    │   │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                   │││    │   │││││                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.06%    0.12%   │││    │   │││││  0x00007f0c7c7ea72f: mov    %r9d,%r11d
  0.01%    0.02%   │││    │   │││││  0x00007f0c7c7ea732: or     $0x1,%r11d
  0.26%    0.31%   │││    │   │││││  0x00007f0c7c7ea736: and    $0x7,%r9d
  0.10%    0.08%   │││    │   │││││  0x00007f0c7c7ea73a: sar    $0x3,%r11d         ;*ishr
                   │││    │   │││││                                                ; - com.google.re2j.Machine::match@417 (line 256)
  0.25%    0.28%   │││    │   │││││  0x00007f0c7c7ea73e: or     $0x1,%r9d          ; OopMap{rbx=NarrowOop r13=NarrowOop [24]=Oop [32]=Oop [48]=NarrowOop [64]=Oop [80]=Oop off=1122}
                   │││    │   │││││                                                ;*goto
                   │││    │   │││││                                                ; - com.google.re2j.Machine::match@439 (line 262)
  0.04%    0.08%   │││    │   │││││  0x00007f0c7c7ea742: test   %eax,0x15e538b8(%rip)        # 0x00007f0c9263e000
                   │││    │   │││││                                                ;*goto
                   │││    │   │││││                                                ; - com.google.re2j.Machine::match@439 (line 262)
                   │││    │   │││││                                                ;   {poll}
  0.01%    0.02%   │││    │   │││││  0x00007f0c7c7ea748: mov    0x40(%rsp),%r10
  0.06%    0.03%   │││    │   │││││  0x00007f0c7c7ea74d: mov    0x14(%r10),%esi    ;*getfield re2
                   │││    │   │││││                                                ; - com.google.re2j.Machine::match@169 (line 216)
  0.26%    0.24%   │││    │   │││││  0x00007f0c7c7ea751: mov    0x20(%rsp),%r10
  0.04%    0.05%   │││    │   │││││  0x00007f0c7c7ea756: mov    %r10,%rdi
  0.00%    0.00%   │││    │   │││││  0x00007f0c7c7ea759: shr    $0x3,%rdi
  0.04%    0.06%   │││    │   │││││  0x00007f0c7c7ea75d: mov    %edi,0x34(%rsp)
  0.23%    0.25%   │││    │   │││││  0x00007f0c7c7ea761: mov    0x2c(%rsp),%r10d
  0.05%    0.04%   │││    │   │││││  0x00007f0c7c7ea766: mov    %r11d,0x2c(%rsp)
  0.02%    0.02%   │││    │   │││││  0x00007f0c7c7ea76b: mov    0x18(%rsp),%r11
  0.07%    0.03%   │││    │   │││││  0x00007f0c7c7ea770: mov    %r11,0x20(%rsp)
  0.19%    0.22%   │││    │   │││││  0x00007f0c7c7ea775: mov    0x38(%rsp),%r11d
  0.04%    0.06%   │││    │   │││││  0x00007f0c7c7ea77a: mov    %r11d,0x28(%rsp)
  0.04%    0.00%   │││    │   │││││  0x00007f0c7c7ea77f: mov    %r9d,0x38(%rsp)    ;*getfield pool
                   │││    │   │││││                                                ; - com.google.re2j.Machine::alloc@18 (line 134)
                   │││    │   │││││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                   │││    │   │││││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.04%    0.05%   ↘││    │   │││││  0x00007f0c7c7ea784: mov    0x34(%rsp),%r9d
  0.27%    0.31%    ││    │   │││││  0x00007f0c7c7ea789: movzbl 0x18(%r12,%r9,8),%r9d  ; implicit exception: dispatches to 0x00007f0c7c7ec589
  0.14%    0.12%    ││    │   │││││  0x00007f0c7c7ea78f: mov    0x34(%rsp),%r11d
           0.01%    ││    │   │││││  0x00007f0c7c7ea794: shl    $0x3,%r11          ;*aload
                    ││    │   │││││                                                ; - com.google.re2j.Machine::match@136 (line 207)
  0.05%    0.06%    ││    │   │││││  0x00007f0c7c7ea798: mov    %r11,0x18(%rsp)
  0.26%    0.27%    ││    │   │││││  0x00007f0c7c7ea79d: test   %r9d,%r9d
                    ││    │╭  │││││  0x00007f0c7c7ea7a0: je     0x00007f0c7c7ea7ee  ;*ifeq
                    ││    ││  │││││                                                ; - com.google.re2j.Machine::match@141 (line 207)
  0.03%    0.02%    ││    ││  │││││  0x00007f0c7c7ea7a2: mov    0x58(%rsp),%r11d
                    ││    ││  │││││  0x00007f0c7c7ea7a7: test   %r11d,%r11d
                    ││    ││  │││││  0x00007f0c7c7ea7aa: jne    0x00007f0c7c7eb6e5  ;*ifeq
                    ││    ││  │││││                                                ; - com.google.re2j.Machine::match@148 (line 208)
  0.01%    0.00%    ││    ││  │││││  0x00007f0c7c7ea7b0: test   %ecx,%ecx
                    ││    ││  │││││  0x00007f0c7c7ea7b2: jne    0x00007f0c7c7eb739  ;*ifeq
                    ││    ││  │││││                                                ; - com.google.re2j.Machine::match@162 (line 212)
  0.08%    0.09%    ││    ││  │││││  0x00007f0c7c7ea7b8: mov    0x24(%r12,%rsi,8),%r11d  ;*getfield prefix
                    ││    ││  │││││                                                ; - com.google.re2j.Machine::match@172 (line 216)
                    ││    ││  │││││                                                ; implicit exception: dispatches to 0x00007f0c7c7ec621
  0.02%    0.02%    ││    ││  │││││  0x00007f0c7c7ea7bd: mov    %r11d,%edx
  0.00%             ││    ││  │││││  0x00007f0c7c7ea7c0: mov    0xc(%r12,%r11,8),%r11d  ;*getfield value
                    ││    ││  │││││                                                ; - java.lang.String::isEmpty@1 (line 635)
                    ││    ││  │││││                                                ; - com.google.re2j.Machine::match@175 (line 216)
                    ││    ││  │││││                                                ; implicit exception: dispatches to 0x00007f0c7c7ec631
  0.01%    0.02%    ││    ││  │││││  0x00007f0c7c7ea7c5: vmovd  %r11d,%xmm1
  0.07%    0.09%    ││    ││  │││││  0x00007f0c7c7ea7ca: mov    0xc(%r12,%r11,8),%r11d  ;*arraylength
                    ││    ││  │││││                                                ; - java.lang.String::isEmpty@4 (line 635)
                    ││    ││  │││││                                                ; - com.google.re2j.Machine::match@175 (line 216)
                    ││    ││  │││││                                                ; implicit exception: dispatches to 0x00007f0c7c7ec641
  0.06%    0.06%    ││    ││  │││││  0x00007f0c7c7ea7cf: mov    %r11d,0x5c(%rsp)
           0.02%    ││    ││  │││││  0x00007f0c7c7ea7d4: test   %r11d,%r11d
                    ││    ││  │││││  0x00007f0c7c7ea7d7: jne    0x00007f0c7c7eac64  ;*ifne
                    ││    ││  │││││                                                ; - com.google.re2j.Machine::match@178 (line 216)
                    ││    ││  │││││  0x00007f0c7c7ea7dd: mov    %r10d,0x64(%rsp)
  0.09%    0.06%    ││    ││  │││││  0x00007f0c7c7ea7e2: mov    0x14(%rsp),%r10d
  0.01%    0.01%    ││    ││  │││││  0x00007f0c7c7ea7e7: mov    %r10d,0x60(%rsp)
  0.00%    0.01%    ││    ││╭ │││││  0x00007f0c7c7ea7ec: jmp    0x00007f0c7c7ea7fd
  0.05%    0.01%    ││    │↘│ │││││  0x00007f0c7c7ea7ee: mov    %r10d,0x64(%rsp)
  0.01%    0.01%    ││    │ │ │││││  0x00007f0c7c7ea7f3: mov    0x14(%rsp),%r11d
  0.01%    0.04%    ││    │ │ │││││  0x00007f0c7c7ea7f8: mov    %r11d,0x60(%rsp)   ;*aload_0
                    ││    │ │ │││││                                                ; - com.google.re2j.Machine::match@267 (line 233)
  0.15%    0.18%    ││    │ ↘ │││││  0x00007f0c7c7ea7fd: test   %ecx,%ecx
                    ││    │   │││││  0x00007f0c7c7ea7ff: jne    0x00007f0c7c7eb155  ;*ifne
                    ││    │   │││││                                                ; - com.google.re2j.Machine::match@271 (line 233)
  0.20%    0.09%    ││    │   │││││  0x00007f0c7c7ea805: mov    0x60(%rsp),%r10d
  0.41%    0.14%    ││    │   │││││  0x00007f0c7c7ea80a: test   %r10d,%r10d
                    ││    │  ╭│││││  0x00007f0c7c7ea80d: je     0x00007f0c7c7ea81d  ;*ifeq
                    ││    │  ││││││                                                ; - com.google.re2j.Machine::match@275 (line 233)
  0.05%    0.05%    ││    │  ││││││  0x00007f0c7c7ea80f: mov    0x3c(%rsp),%r11d
  0.16%    0.12%    ││    │  ││││││  0x00007f0c7c7ea814: test   %r11d,%r11d
                    ││    │  ││││││  0x00007f0c7c7ea817: jne    0x00007f0c7c7eb1a9  ;*aload_0
                    ││    │  ││││││                                                ; - com.google.re2j.Machine::match@282 (line 236)
  0.17%    0.04%    ││    │  ↘│││││  0x00007f0c7c7ea81d: mov    0x30(%rsp),%r10d
  0.02%    0.02%    ││    │   │││││  0x00007f0c7c7ea822: mov    0xc(%r12,%r10,8),%r11d  ;*arraylength
                    ││    │   │││││                                                ; - com.google.re2j.Machine::match@286 (line 236)
                    ││    │   │││││                                                ; implicit exception: dispatches to 0x00007f0c7c7ec599
  0.08%    0.06%    ││    │   │││││  0x00007f0c7c7ea827: mov    %r11d,0x5c(%rsp)
  0.15%    0.18%    ││    │   │││││  0x00007f0c7c7ea82c: test   %r11d,%r11d
                    ││    │   │││││  0x00007f0c7c7ea82f: jg     0x00007f0c7c7eb395  ;*ifle
                    ││    │   │││││                                                ; - com.google.re2j.Machine::match@287 (line 236)
  0.13%    0.05%    ││    │   │││││  0x00007f0c7c7ea835: mov    0x40(%rsp),%r10
  0.03%    0.01%    ││    │   │││││  0x00007f0c7c7ea83a: mov    0x18(%r10),%r11d   ;*getfield prog
                    ││    │   │││││                                                ; - com.google.re2j.Machine::match@298 (line 239)
  0.03%    0.05%    ││    │   │││││  0x00007f0c7c7ea83e: mov    0x1c(%r12,%r11,8),%ebp  ;*getfield startInst
                    ││    │   │││││                                                ; - com.google.re2j.Machine::match@301 (line 239)
                    ││    │   │││││                                                ; implicit exception: dispatches to 0x00007f0c7c7ec5a9
  0.32%    0.33%    ││    │   │││││  0x00007f0c7c7ea843: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f0c7c7ec5b9
  0.58%    0.51%    ││    │   │││││  0x00007f0c7c7ea848: lea    (%r12,%rbp,8),%r10
  0.02%             ││    │   │││││  0x00007f0c7c7ea84c: cmp    $0xf8019843,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$AltInst&apos;)}
                    ││    │   ╰││││  0x00007f0c7c7ea853: je     0x00007f0c7c7ea533
  0.11%    0.09%    ││    │    ││││  0x00007f0c7c7ea859: cmp    $0xf8019992,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                    ││    │    ││││  0x00007f0c7c7ea860: jne    0x00007f0c7c7eb3f9  ;*invokevirtual add
                    ││    │    ││││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.06%    0.06%    ││    │    ││││  0x00007f0c7c7ea866: mov    0x18(%r10),%r11d   ;*getfield pc
                    ││    │    ││││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                    ││    │    ││││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.01%    0.03%    ││    │    ││││  0x00007f0c7c7ea86a: cmp    $0x40,%r11d
                    ││    │    ││││  0x00007f0c7c7ea86e: jg     0x00007f0c7c7eb585  ;*if_icmpgt
                    ││    │    ││││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                    ││    │    ││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    ││    │    ││││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.14%    0.08%    ││    │    ││││  0x00007f0c7c7ea874: mov    %r11d,%r9d
  0.01%    0.00%    ││    │    ││││  0x00007f0c7c7ea877: mov    %r10,0x68(%rsp)
  0.03%    0.00%    ││    │    ││││  0x00007f0c7c7ea87c: mov    $0x1,%edi
  0.00%             ││    │    ││││  0x00007f0c7c7ea881: mov    %r11d,%ecx
  0.09%    0.08%    ││    │    ││││  0x00007f0c7c7ea884: shl    %cl,%rdi           ;*lshl
                    ││    │    ││││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                    ││    │    ││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    ││    │    ││││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.14%    0.13%    ││    │    ││││  0x00007f0c7c7ea887: mov    0x34(%rsp),%r11d
           0.00%    ││    │    ││││  0x00007f0c7c7ea88c: mov    0x10(%r12,%r11,8),%r10  ;*getfield pcsl
                    ││    │    ││││                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                    ││    │    ││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    ││    │    ││││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.00%    0.00%    ││    │    ││││  0x00007f0c7c7ea891: mov    %r10,%r11
  0.02%    0.01%    ││    │    ││││  0x00007f0c7c7ea894: and    %rdi,%r11          ;*land
                    ││    │    ││││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                    ││    │    ││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    ││    │    ││││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.18%    0.11%    ││    │    ││││  0x00007f0c7c7ea897: test   %r11,%r11
                    ││    │    ││││  0x00007f0c7c7ea89a: jne    0x00007f0c7c7eb006  ;*ifeq
                    ││    │    ││││                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                    ││    │    ││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    ││    │    ││││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.00%    0.01%    ││    │    ││││  0x00007f0c7c7ea8a0: xor    %ebp,%ebp          ;*ireturn
                    ││    │    ││││                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 47)
                    ││    │    ││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    ││    │    ││││                                                ; - com.google.re2j.Machine::match@315 (line 239)
           0.00%    ││    │    ││││  0x00007f0c7c7ea8a2: test   %r11,%r11
                    ││    │    ││││  0x00007f0c7c7ea8a5: jne    0x00007f0c7c7eb5fd  ;*ifeq
                    ││    │    ││││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                    ││    │    ││││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.07%    0.04%    ││    │    ││││  0x00007f0c7c7ea8ab: cmp    $0x40,%r9d
                    ││    │    ││││  0x00007f0c7c7ea8af: jge    0x00007f0c7c7eb669  ;*if_icmpge
                    ││    │    ││││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                    ││    │    ││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    ││    │    ││││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.10%    0.08%    ││    │    ││││  0x00007f0c7c7ea8b5: mov    0x34(%rsp),%r11d
  0.00%             ││    │    ││││  0x00007f0c7c7ea8ba: mov    %r12b,0x18(%r12,%r11,8)  ;*putfield empty
                    ││    │    ││││                                                ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                    ││    │    ││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    ││    │    ││││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.01%             ││    │    ││││  0x00007f0c7c7ea8bf: or     %r10,%rdi
  0.08%    0.07%    ││    │    ││││  0x00007f0c7c7ea8c2: mov    %rdi,0x10(%r12,%r11,8)  ;*putfield pcsl
                    ││    │    ││││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                    ││    │    ││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    ││    │    ││││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.07%    0.08%    ││    │    ││││  0x00007f0c7c7ea8c7: test   %r8d,%r8d
                    ││    │    ││││  0x00007f0c7c7ea8ca: jle    0x00007f0c7c7eaec0  ;*ifle
                    ││    │    ││││                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                    ││    │    ││││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    ││    │    ││││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.01%             ││    │    ││││  0x00007f0c7c7ea8d0: mov    %r8d,%ebp
  0.00%    0.00%    ││    │    ││││  0x00007f0c7c7ea8d3: dec    %ebp               ;*isub
                    ││    │    ││││                                                ; - com.google.re2j.Machine::alloc@13 (line 133)
                    ││    │    ││││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    ││    │    ││││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.07%    0.08%    ││    │    ││││  0x00007f0c7c7ea8d5: mov    0x40(%rsp),%r10
  0.07%    0.06%    ││    │    ││││  0x00007f0c7c7ea8da: mov    %ebp,0xc(%r10)     ;*putfield poolSize
                    ││    │    ││││                                                ; - com.google.re2j.Machine::alloc@14 (line 133)
                    ││    │    ││││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    ││    │    ││││                                                ; - com.google.re2j.Machine::match@315 (line 239)
           0.01%    ││    │    ││││  0x00007f0c7c7ea8de: mov    0xc(%r12,%rbx,8),%r10d  ; implicit exception: dispatches to 0x00007f0c7c7ec611
                    ││    │    ││││  0x00007f0c7c7ea8e3: cmp    %r10d,%ebp
                    ││    │    ││││  0x00007f0c7c7ea8e6: jae    0x00007f0c7c7eb339
  0.05%    0.07%    ││    │    ││││  0x00007f0c7c7ea8ec: lea    (%r12,%rbx,8),%r10
  0.10%    0.07%    ││    │    ││││  0x00007f0c7c7ea8f0: mov    0xc(%r10,%r8,4),%r11d  ;*aaload
                    ││    │    ││││                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                    ││    │    ││││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    ││    │    ││││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.01%    0.01%    ││    │    ││││  0x00007f0c7c7ea8f5: test   %r11d,%r11d
                    ││    │    ││││  0x00007f0c7c7ea8f8: je     0x00007f0c7c7eb381  ;*putfield inst
                    ││    │    ││││                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                    ││    │    ││││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    ││    │    ││││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.00%    0.00%    ││    │    ││││  0x00007f0c7c7ea8fe: mov    %r11,%r9
  0.03%    0.09%    ││    │    ││││  0x00007f0c7c7ea901: shl    $0x3,%r9           ;*aload_2
                    ││    │    ││││                                                ; - com.google.re2j.Machine::alloc@43 (line 138)
                    ││    │    ││││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    ││    │    ││││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.10%    0.06%    ││    │    ││││  0x00007f0c7c7ea905: mov    0x34(%rsp),%r10d
  0.01%    0.01%    ││    │    ││││  0x00007f0c7c7ea90a: mov    0x20(%r12,%r10,8),%r8d  ;*getfield denseThreads
                    ││    │    ││││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                    ││    │    ││││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    ││    │    ││││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.02%    0.00%    ││    │    ││││  0x00007f0c7c7ea90f: mov    0xc(%r12,%r10,8),%ebp  ;*getfield size
                    ││    │    ││││                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                    ││    │    ││││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    ││    │    ││││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.07%    0.05%    ││    │    ││││  0x00007f0c7c7ea914: mov    %r9,%r10
  0.09%    0.06%    ││    │    ││││  0x00007f0c7c7ea917: mov    %ebp,%ecx
  0.01%    0.00%    ││    │    ││││  0x00007f0c7c7ea919: inc    %ecx
                    ││    │    ││││  0x00007f0c7c7ea91b: mov    0x34(%rsp),%ebx
  0.05%    0.08%    ││    │    ││││  0x00007f0c7c7ea91f: mov    %ecx,0xc(%r12,%rbx,8)  ;*putfield size
                    ││    │    ││││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                    ││    │    ││││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    ││    │    ││││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.07%    0.08%    ││    │    ││││  0x00007f0c7c7ea924: shr    $0x9,%r10
  0.00%    0.01%    ││    │    ││││  0x00007f0c7c7ea928: movabs $0x7f0c77fd2000,%r11
                    ││    │    ││││  0x00007f0c7c7ea932: mov    %r12b,(%r11,%r10,1)
  0.07%    0.15%    ││    │    ││││  0x00007f0c7c7ea936: mov    0x68(%rsp),%r10
  0.08%    0.08%    ││    │    ││││  0x00007f0c7c7ea93b: shr    $0x3,%r10
  0.01%    0.00%    ││    │    ││││  0x00007f0c7c7ea93f: mov    %r10d,0x10(%r9)    ;*putfield inst
                    ││    │    ││││                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                    ││    │    ││││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    ││    │    ││││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.02%    0.01%    ││    │    ││││  0x00007f0c7c7ea943: mov    0xc(%r12,%r8,8),%r10d  ; implicit exception: dispatches to 0x00007f0c7c7ec5fd
  0.06%    0.09%    ││    │    ││││  0x00007f0c7c7ea948: cmp    %r10d,%ebp
                    ││    │    ││││  0x00007f0c7c7ea94b: jae    0x00007f0c7c7eb2c9  ;*aastore
                    ││    │    ││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    ││    │    ││││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    ││    │    ││││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.09%    0.06%    ││    │    ││││  0x00007f0c7c7ea951: mov    %r9,%r10
  0.01%             ││    │    ││││  0x00007f0c7c7ea954: shr    $0x3,%r10
  0.01%    0.02%    ││    │    ││││  0x00007f0c7c7ea958: lea    (%r12,%r8,8),%r11  ;*getfield denseThreads
                    ││    │    ││││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                    ││    │    ││││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    ││    │    ││││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.06%    0.04%    ││    │    ││││  0x00007f0c7c7ea95c: lea    0x10(%r11,%rbp,4),%r11
  0.06%    0.08%    ││    │    ││││  0x00007f0c7c7ea961: mov    %r10d,(%r11)
  0.06%    0.02%    ││    │    ││││  0x00007f0c7c7ea964: mov    %r11,%r10
  0.01%    0.00%    ││    │    ││││  0x00007f0c7c7ea967: shr    $0x9,%r10
  0.09%    0.04%    ││    │    ││││  0x00007f0c7c7ea96b: movabs $0x7f0c77fd2000,%r11
  0.07%    0.02%    ││    │    ││││  0x00007f0c7c7ea975: mov    %r12b,(%r11,%r10,1)  ;*aastore
                    ││    │    ││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    ││    │    ││││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    ││    │    ││││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.08%    0.05%    ││    │    ╰│││  0x00007f0c7c7ea979: jmpq   0x00007f0c7c7ea560
                    ↘│    │     │││  0x00007f0c7c7ea97e: mov    $0x5,%r8d
                     │    │     ╰││  0x00007f0c7c7ea984: jmpq   0x00007f0c7c7ea56f
  0.00%              ↘    │      ││  0x00007f0c7c7ea989: or     $0xa,%r8d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@27 (line 180)
                          │      ││                                                ; - com.google.re2j.Machine::match@323 (line 241)
           0.00%          │      ╰│  0x00007f0c7c7ea98d: jmpq   0x00007f0c7c7ea586
                          ↘       │  0x00007f0c7c7ea992: mov    $0x1,%r10d
                                  ╰  0x00007f0c7c7ea998: jmpq   0x00007f0c7c7ea621
  0.00%                              0x00007f0c7c7ea99d: mov    0x64(%rsp),%r10d
                                     0x00007f0c7c7ea9a2: test   %r10d,%r10d
                                     0x00007f0c7c7ea9a5: jl     0x00007f0c7c7eaab6  ;*ifge
                                                                                   ; - com.google.re2j.MachineInput$UTF16Input::index@22 (line 205)
                                                                                   ; - com.google.re2j.Machine::match@206 (line 220)
                                     0x00007f0c7c7ea9ab: sub    0x2c(%rsp),%r10d   ;*isub
                                                                                   ; - com.google.re2j.MachineInput$UTF16Input::index@31 (line 205)
                                                                                   ; - com.google.re2j.Machine::match@206 (line 220)
                                     0x00007f0c7c7ea9b0: test   %r10d,%r10d
                                     0x00007f0c7c7ea9b3: jl     0x00007f0c7c7eaab6  ;*ifge
                                                                                   ; - com.google.re2j.Machine::match@213 (line 221)
....................................................................................................
 18.26%   18.81%  <total for region 3>

....[Hottest Regions]...............................................................................
 30.98%   32.90%         C2, level 4  com.google.re2j.Machine::step, version 504 (361 bytes) 
 27.27%   29.99%         C2, level 4  com.google.re2j.Inst$AltInst::add, version 506 (1856 bytes) 
 18.26%   18.81%         C2, level 4  com.google.re2j.Machine::match, version 548 (1385 bytes) 
  7.03%    6.35%         C2, level 4  com.google.re2j.Inst$AltInst::add, version 506 (272 bytes) 
  4.10%    2.87%         C2, level 4  com.google.re2j.Machine::step, version 504 (161 bytes) 
  2.43%    3.08%         C2, level 4  com.google.re2j.Inst$AltInst::add, version 506 (281 bytes) 
  1.65%    1.24%         C2, level 4  com.google.re2j.Machine::step, version 504 (89 bytes) 
  0.96%    0.14%         C2, level 4  com.google.re2j.Machine::init, version 541 (299 bytes) 
  0.78%    0.06%         C1, level 3  sun.invoke.util.Wrapper::stackSlots, version 180 (14 bytes) 
  0.76%    0.84%         C2, level 4  com.google.re2j.Machine::match, version 548 (95 bytes) 
  0.69%    0.66%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.54%    0.22%         C2, level 4  com.google.re2j.Inst$MatchInst::add, version 495 (98 bytes) 
  0.54%    0.23%         C2, level 4  com.google.re2j.Inst$MatchInst::add, version 495 (133 bytes) 
  0.34%    0.04%         C2, level 4  com.google.re2j.Inst$AltInst::add, version 506 (25 bytes) 
  0.16%    0.05%         C2, level 4  com.google.re2j.Machine::init, version 541 (79 bytes) 
  0.13%    0.03%         C2, level 4  com.google.re2j.Machine::init, version 541 (47 bytes) 
  0.10%    0.00%   [kernel.kallsyms]  [unknown] (37 bytes) 
  0.09%    0.06%         C2, level 4  com.google.re2j.Pattern::find, version 559 (71 bytes) 
  0.07%    0.03%   [kernel.kallsyms]  [unknown] (2 bytes) 
  0.06%    0.04%         C2, level 4  com.google.re2j.Machine::match, version 548 (134 bytes) 
  3.06%    2.36%  <...other 543 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 37.07%   39.46%         C2, level 4  com.google.re2j.Inst$AltInst::add, version 506 
 36.78%   37.01%         C2, level 4  com.google.re2j.Machine::step, version 504 
 19.25%   19.76%         C2, level 4  com.google.re2j.Machine::match, version 548 
  2.29%    1.63%   [kernel.kallsyms]  [unknown] 
  1.34%    0.22%         C2, level 4  com.google.re2j.Machine::init, version 541 
  1.08%    0.45%         C2, level 4  com.google.re2j.Inst$MatchInst::add, version 495 
  0.78%    0.06%         C1, level 3  sun.invoke.util.Wrapper::stackSlots, version 180 
  0.33%    0.17%         C2, level 4  com.google.re2j.Pattern::find, version 559 
  0.05%    0.04%      hsdis-amd64.so  [unknown] 
  0.05%    0.07%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.04%    0.01%         C2, level 4  java.util.Collections::shuffle, version 586 
  0.04%    0.04%           libjvm.so  _ZN18PSPromotionManager22copy_to_survivor_spaceILb0EEEP7oopDescS2_ 
  0.03%    0.03%           libjvm.so  _ZN13xmlTextStream5writeEPKcm 
  0.03%    0.03%           libjvm.so  _ZN19GenericTaskQueueSetI17OverflowTaskQueueI8StarTaskL10MemoryType1ELj131072EELS2_1EE15steal_best_of_2EjPiRS1_ 
  0.03%    0.01%              [vdso]  [unknown] 
  0.02%    0.03%        libc-2.26.so  __strlen_avx2 
  0.02%    0.01%           libjvm.so  _ZN12outputStream15update_positionEPKcm 
  0.02%    0.08%        libc-2.26.so  vfprintf 
  0.02%    0.01%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testCombine_jmhTest::testCombine_thrpt_jmhStub, version 648 
  0.02%                    libjvm.so  _ZN13defaultStream5writeEPKcm 
  0.69%    0.42%  <...other 99 warm methods...>
....................................................................................................
100.00%   99.57%  <totals>

....[Distribution by Source]........................................................................
 95.94%   97.11%         C2, level 4
  2.29%    1.63%   [kernel.kallsyms]
  0.81%    0.07%         C1, level 3
  0.60%    0.73%           libjvm.so
  0.16%    0.38%        libc-2.26.so
  0.08%    0.02%  libpthread-2.26.so
  0.05%    0.04%      hsdis-amd64.so
  0.03%    0.01%              [vdso]
  0.02%                 runtime stub
  0.01%    0.00%         interpreter
  0.00%                    libzip.so
  0.00%             Unknown, level 0
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                        Mode  Cnt     Score     Error  Units
Re2jFindRegex.testCombine       thrpt   20  4795.994 ± 438.603  ops/s
Re2jFindRegex.testCombine:·asm  thrpt            NaN              ---
