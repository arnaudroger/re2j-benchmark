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
# Warmup Iteration   1: 2692.935 ops/s
# Warmup Iteration   2: 6159.366 ops/s
# Warmup Iteration   3: 6542.734 ops/s
# Warmup Iteration   4: 6425.955 ops/s
# Warmup Iteration   5: 6627.155 ops/s
# Warmup Iteration   6: 6646.738 ops/s
# Warmup Iteration   7: 6634.321 ops/s
# Warmup Iteration   8: 6616.744 ops/s
# Warmup Iteration   9: 6571.379 ops/s
# Warmup Iteration  10: 6601.509 ops/s
# Warmup Iteration  11: 6362.451 ops/s
# Warmup Iteration  12: 6379.144 ops/s
# Warmup Iteration  13: 6617.533 ops/s
# Warmup Iteration  14: 6573.168 ops/s
# Warmup Iteration  15: 6646.385 ops/s
# Warmup Iteration  16: 6602.213 ops/s
# Warmup Iteration  17: 6558.734 ops/s
# Warmup Iteration  18: 6470.186 ops/s
# Warmup Iteration  19: 6400.332 ops/s
# Warmup Iteration  20: 6466.521 ops/s
Iteration   1: 6598.972 ops/s
Iteration   2: 6548.969 ops/s
Iteration   3: 6555.319 ops/s
Iteration   4: 6334.142 ops/s
Iteration   5: 6576.536 ops/s
Iteration   6: 6592.582 ops/s
Iteration   7: 6587.056 ops/s
Iteration   8: 6507.784 ops/s
Iteration   9: 6466.237 ops/s
Iteration  10: 6488.015 ops/s
Iteration  11: 6511.317 ops/s
Iteration  12: 6498.182 ops/s
Iteration  13: 6500.087 ops/s
Iteration  14: 6459.574 ops/s
Iteration  15: 6494.337 ops/s
Iteration  16: 6489.744 ops/s
Iteration  17: 6506.101 ops/s
Iteration  18: 6492.024 ops/s
Iteration  19: 6425.093 ops/s
Iteration  20: 6484.666 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  6505.837 ±(99.9%) 53.929 ops/s [Average]
  (min, avg, max) = (6334.142, 6505.837, 6598.972), stdev = 62.105
  CI (99.9%): [6451.908, 6559.766] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine:·asm":
PrintAssembly processed: 212487 total address lines.
Perf output processed (skipped 22.821 seconds):
 Column 1: cycles (20398 events)
 Column 2: instructions (20384 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 583 (410 bytes) 

                                                                      ; - com.google.re2j.Machine::alloc@43 (line 138)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                                                      ; - com.google.re2j.Machine::match@315 (line 239)
                        0x00007f089d26beec: mov    0x24(%r11),%edi    ;*aaload
                                                                      ; - com.google.re2j.Machine::alloc@25 (line 134)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                                                      ; - com.google.re2j.Machine::match@315 (line 239)
                        0x00007f089d26bef0: mov    %rax,0x90(%rsp)
                  ╭     0x00007f089d26bef8: jmp    0x00007f089d26bf0c
                  │     0x00007f089d26befa: nopw   0x0(%rax,%rax,1)
  0.93%    0.89%  │  ↗  0x00007f089d26bf00: xor    %r11d,%r11d        ;*invokevirtual add
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │  │                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.09%    0.11%  │ ↗│  0x00007f089d26bf03: test   %r11d,%r11d
                  │ ││  0x00007f089d26bf06: jne    0x00007f089d26be8b  ;*arraylength
                  │ ││                                                ; - com.google.re2j.Machine::alloc@38 (line 136)
                  │ ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │ ││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.17%    0.17%  ↘ ││  0x00007f089d26bf0c: mov    0xc(%r12,%rdi,8),%ecx  ;*goto
                    ││                                                ; - com.google.re2j.Machine::match@126 (line 201)
                    ││                                                ; implicit exception: dispatches to 0x00007f089d26e121
  0.25%    0.39%    ││  0x00007f089d26bf11: cmp    %ecx,%r8d
                    ││  0x00007f089d26bf14: jge    0x00007f089d26cb59  ;*ifne
                    ││                                                ; - java.lang.String::indexOf@8 (line 1757)
                    ││                                                ; - java.lang.String::indexOf@21 (line 1718)
                    ││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                    ││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                    ││                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.77%    0.82%    ││  0x00007f089d26bf1a: mov    %r8d,%r11d
  0.08%    0.12%    ││  0x00007f089d26bf1d: inc    %r11d
  0.14%    0.15%    ││  0x00007f089d26bf20: mov    0x78(%rsp),%r9
  0.26%    0.39%    ││  0x00007f089d26bf25: mov    %r11d,0xc(%r9)     ;*invokestatic indexOf
                    ││                                                ; - java.lang.String::indexOf@21 (line 1718)
                    ││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                    ││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                    ││                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.95%    0.53%    ││  0x00007f089d26bf29: cmp    %ecx,%r8d
                    ││  0x00007f089d26bf2c: jae    0x00007f089d26cac1  ;*ireturn
                    ││                                                ; - java.lang.String::indexOf@16 (line 1757)
                    ││                                                ; - java.lang.String::indexOf@21 (line 1718)
                    ││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                    ││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                    ││                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.02%    0.06%    ││  0x00007f089d26bf32: mov    0x74(%rsp),%r9d
  0.19%    0.14%    ││  0x00007f089d26bf37: mov    0xc(%r12,%r9,8),%ecx  ;*getfield longest
                    ││                                                ; - com.google.re2j.Machine::step@4 (line 276)
                    ││                                                ; - com.google.re2j.Machine::match@356 (line 242)
  0.31%    0.32%    ││  0x00007f089d26bf3c: mov    0x90(%rsp),%r11
  0.78%    0.56%    ││  0x00007f089d26bf44: mov    %r11,%r9
  0.04%    0.08%    ││  0x00007f089d26bf47: shr    $0x3,%r9
  0.12%    0.12%    ││  0x00007f089d26bf4b: lea    (%r12,%rdi,8),%r11  ;*aload_1
                    ││                                                ; - com.google.re2j.Machine::freeQueue@18 (line 152)
                    ││                                                ; - com.google.re2j.Machine::step@174 (line 295)
                    ││                                                ; - com.google.re2j.Machine::match@356 (line 242)
  0.22%    0.32%    ││  0x00007f089d26bf4f: lea    0x10(%r11,%r8,4),%r11  ;*caload
                    ││                                                ; - java.lang.String::charAt@27 (line 660)
                    ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                    ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                    ││                                                ; - com.google.re2j.Machine::match@249 (line 228)
  0.88%    0.44%    ││  0x00007f089d26bf54: mov    %r9d,(%r11)
  0.06%    0.08%    ││  0x00007f089d26bf57: shr    $0x9,%r11
  0.16%    0.13%    ││  0x00007f089d26bf5b: movabs $0x7f08ae3fd000,%r8
  0.23%    0.21%    ││  0x00007f089d26bf65: mov    %r12b,(%r8,%r11,1)  ; OopMap{[8]=Oop [48]=Oop [88]=Oop [116]=NarrowOop [120]=Oop off=2025}
                    ││                                                ;*goto
                    ││                                                ; - com.google.re2j.Machine::step@232 (line 277)
                    ││                                                ; - com.google.re2j.Machine::match@356 (line 242)
  1.28%    0.75%    ││  0x00007f089d26bf69: test   %eax,0x18789091(%rip)        # 0x00007f08b59f5000
                    ││                                                ;*synchronization entry
                    ││                                                ; - java.lang.Character::codePointAt@-1 (line 4866)
                    ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                    ││                                                ; - com.google.re2j.Machine::match@249 (line 228)
                    ││                                                ;   {poll}
  0.05%    0.07%    ││  0x00007f089d26bf6f: mov    0x8c(%rsp),%r8d
  0.14%    0.12%    ││  0x00007f089d26bf77: cmp    %r10d,%r8d
                    ││  0x00007f089d26bf7a: jge    0x00007f089d26b9d8  ;*caload
                    ││                                                ; - java.lang.String::charAt@27 (line 660)
                    ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                    ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                    ││                                                ; - com.google.re2j.Machine::match@226 (line 225)
  0.12%    0.11%    ││  0x00007f089d26bf80: mov    %ecx,%r10d
  0.97%    0.63%    ││  0x00007f089d26bf83: mov    %r8d,0x98(%rsp)    ;*if_icmple
                    ││                                                ; - com.google.re2j.Utils::isWordRune@33 (line 149)
                    ││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    ││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.10%    0.13%    ││  0x00007f089d26bf8b: mov    0x74(%rsp),%r8d
  0.22%    0.20%    ││  0x00007f089d26bf90: mov    0x20(%r12,%r8,8),%r13d  ;*if_icmpne
                    ││                                                ; - java.lang.String::indexOf@134 (line 1779)
                    ││                                                ; - java.lang.String::indexOf@21 (line 1718)
                    ││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                    ││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                    ││                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.27%    0.19%    ││  0x00007f089d26bf95: mov    0xc(%r12,%r13,8),%r8d  ; implicit exception: dispatches to 0x00007f089d26e0f1
  1.53%    1.12%    ││  0x00007f089d26bf9a: mov    0x98(%rsp),%r11d
  0.24%    0.22%    ││  0x00007f089d26bfa2: cmp    %r8d,%r11d
                    ││  0x00007f089d26bfa5: jae    0x00007f089d26c998
  0.60%    0.53%    ││  0x00007f089d26bfab: lea    (%r12,%r13,8),%r11
  0.16%    0.10%    ││  0x00007f089d26bfaf: mov    0x98(%rsp),%r9d
  1.07%    0.59%    ││  0x00007f089d26bfb7: mov    0x10(%r11,%r9,4),%r8d  ;*arraylength
                    ││                                                ; - java.lang.String::indexOf@9 (line 1718)
                    ││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                    ││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                    ││                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.42%    0.36%    ││  0x00007f089d26bfbc: mov    %r8d,0x88(%rsp)
  0.47%    0.52%    ││  0x00007f089d26bfc4: mov    0x10(%r12,%r8,8),%edx  ;*ifge
                    ││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@22 (line 205)
                    ││                                                ; - com.google.re2j.Machine::match@206 (line 220)
                    ││                                                ; implicit exception: dispatches to 0x00007f089d26e101
  3.76%    4.20%    ││  0x00007f089d26bfc9: mov    0xc(%r12,%rdx,8),%r9d  ; implicit exception: dispatches to 0x00007f089d26e111
  6.98%    8.40%    ││  0x00007f089d26bfce: mov    0xc(%r12,%r8,8),%ebx  ;*if_icmpne
                    ││                                                ; - java.lang.String::indexOf@134 (line 1779)
                    ││                                                ; - java.lang.String::indexOf@21 (line 1718)
                    ││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                    ││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                    ││                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.01%    0.02%    ││  0x00007f089d26bfd3: mov    0x78(%rsp),%r11
  0.01%    0.02%    ││  0x00007f089d26bfd8: mov    0xc(%r11),%r8d     ;*goto
                    ││                                                ; - com.google.re2j.Machine::match@126 (line 201)
                    ││  0x00007f089d26bfdc: mov    0x24(%r11),%edi    ;*aaload
                    ││                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                    ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    ││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  1.55%    2.12%    ││  0x00007f089d26bfe0: mov    0x88(%rsp),%ecx
  0.08%    0.03%    ││  0x00007f089d26bfe7: lea    (%r12,%rcx,8),%r11  ;*aload_1
                    ││                                                ; - com.google.re2j.Machine::freeQueue@18 (line 152)
                    ││                                                ; - com.google.re2j.Machine::step@174 (line 295)
                    ││                                                ; - com.google.re2j.Machine::match@356 (line 242)
  0.01%    0.01%    ││  0x00007f089d26bfeb: mov    %r11,0x90(%rsp)
  0.01%    0.00%    ││  0x00007f089d26bff3: mov    0x98(%rsp),%r11d
  1.60%    2.18%    ││  0x00007f089d26bffb: inc    %r11d              ;*invokestatic isWordRune
                    ││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    ││                                                ; - com.google.re2j.Machine::match@121 (line 201)
  0.00%    0.02%    ││  0x00007f089d26bffe: mov    %r11d,0x8c(%rsp)
  0.01%    0.01%    ││  0x00007f089d26c006: cmp    $0x6,%r9d
                    ││  0x00007f089d26c00a: je     0x00007f089d26c6b7  ;*invokestatic codePointAt
                    ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                    ││                                                ; - com.google.re2j.Machine::match@249 (line 228)
  0.00%    0.00%    ││  0x00007f089d26c010: mov    0x8(%r12,%rdx,8),%r9d
  1.57%    2.06%    ││  0x00007f089d26c015: cmp    $0xf8019993,%r9d   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                    ││  0x00007f089d26c01c: jne    0x00007f089d26ca21  ;*arraylength
                    ││                                                ; - java.lang.String::indexOf@19 (line 1718)
                    ││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                    ││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                    ││                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.03%    0.03%    ││  0x00007f089d26c022: lea    (%r12,%rdx,8),%r9
  0.01%    0.01%    ││  0x00007f089d26c026: mov    0xc(%r9),%r11d     ;*if_icmpeq
                    ││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                    ││                                                ; - com.google.re2j.Machine::match@121 (line 201)
  0.01%    0.00%    ││  0x00007f089d26c02a: cmp    $0xa,%r11d
                    ││  0x00007f089d26c02e: je     0x00007f089d26be8b  ;*invokeinterface charAt
                    ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                    ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                    ││                                                ; - com.google.re2j.Machine::match@249 (line 228)
  1.50%    1.84%    ││  0x00007f089d26c034: cmp    $0xb,%r11d
                    ││  0x00007f089d26c038: je     0x00007f089d26cbf1  ;*invokevirtual indexOf
                    ││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                    ││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                    ││                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.02%    0.05%    ││  0x00007f089d26c03e: mov    0x20(%r9),%ecx     ;*ifle
                    ││                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                    ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    ││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.09%    0.16%    ││  0x00007f089d26c042: cmp    $0x9,%r11d
                   ╭││  0x00007f089d26c046: jne    0x00007f089d26c05d  ;*invokeinterface charAt
                   │││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││                                                ; - com.google.re2j.Machine::match@249 (line 228)
  0.12%    0.10%   │││  0x00007f089d26c048: cmp    0x84(%rsp),%ecx
                   │││  0x00007f089d26c04f: je     0x00007f089d26c167  ;*ifnonnull
                   │││                                                ; - com.google.re2j.Inst$MatchInst::add@24 (line 98)
                   │││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.38%    0.52%   │││  0x00007f089d26c055: xor    %r11d,%r11d
  0.02%    0.01%   │╰│  0x00007f089d26c058: jmpq   0x00007f089d26bf03
  0.20%    0.36%   ↘ │  0x00007f089d26c05d: cmp    $0xc,%r11d
                     │  0x00007f089d26c061: jne    0x00007f089d26cc99  ;*invokestatic indexOf
                     │                                                ; - java.lang.String::indexOf@21 (line 1718)
                     │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                     │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                     │                                                ; - com.google.re2j.Machine::match@206 (line 220)
  1.05%    1.23%     │  0x00007f089d26c067: cmp    0x84(%rsp),%ecx
                     │  0x00007f089d26c06e: je     0x00007f089d26b9cd
  0.43%    0.37%     │  0x00007f089d26c074: mov    0x24(%r9),%ecx     ;*invokevirtual add
                     │                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.02%    0.04%     │  0x00007f089d26c078: cmp    0x84(%rsp),%ecx
                     │  0x00007f089d26c07f: je     0x00007f089d26b9cd  ;*invokeinterface charAt
                     │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                     │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                     │                                                ; - com.google.re2j.Machine::match@249 (line 228)
  0.93%    1.00%     │  0x00007f089d26c085: mov    0x28(%r9),%ecx     ;*invokestatic emptyOpContext
                     │                                                ; - com.google.re2j.Machine::match@121 (line 201)
  0.31%    0.39%     │  0x00007f089d26c089: cmp    0x84(%rsp),%ecx
                     │  0x00007f089d26c090: je     0x00007f089d26cd6f  ;*invokestatic indexOf
                     │                                                ; - java.lang.String::indexOf@21 (line 1718)
                     │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                     │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                     │                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.58%    0.65%     │  0x00007f089d26c096: mov    0x2c(%r9),%ecx     ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                     │                                                ; - com.google.re2j.Machine::match@121 (line 201)
  0.02%    0.02%     │  0x00007f089d26c09a: cmp    0x84(%rsp),%ecx
                     ╰  0x00007f089d26c0a1: jne    0x00007f089d26bf00  ;*invokeinterface charAt
                                                                      ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                      ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                      ; - com.google.re2j.Machine::match@249 (line 228)
                        0x00007f089d26c0a7: mov    $0xffffff65,%esi   ;*synchronization entry
                                                                      ; - com.google.re2j.Machine::step@-1 (line 276)
                                                                      ; - com.google.re2j.Machine::match@356 (line 242)
                        0x00007f089d26c0ac: mov    0x78(%rsp),%rbp
                        0x00007f089d26c0b1: mov    0x30(%rsp),%r10
....................................................................................................
 35.64%   37.53%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 583 (1583 bytes) 

                                                                               ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                               ; - com.google.re2j.Machine::match@96 (line 195)
                                 0x00007f089d26b89a: cmp    $0xd800,%r10d
                                 0x00007f089d26b8a1: jge    0x00007f089d26d921
                                 0x00007f089d26b8a7: shl    $0x3,%r10d         ;*aload_0
                                                                               ; - java.lang.String::indexOf@60 (line 1771)
                                                                               ; - java.lang.String::indexOf@21 (line 1718)
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                                                                               ; - com.google.re2j.Machine::match@206 (line 220)
  0.00%                          0x00007f089d26b8ab: mov    %r10d,%r8d
                                 0x00007f089d26b8ae: and    $0x7,%r8d
                                 0x00007f089d26b8b2: or     $0x1,%r10d         ;*ifeq
                                                                               ; - com.google.re2j.Machine::match@141 (line 207)
                                 0x00007f089d26b8b6: mov    %r10d,%esi
  0.00%    0.00%                 0x00007f089d26b8b9: or     $0x1,%r8d          ;*synchronization entry
                                                                               ; - com.google.re2j.Machine::match@-1 (line 178)
                                 0x00007f089d26b8bd: mov    %r8d,0x38(%rsp)
                                 0x00007f089d26b8c2: sar    $0x3,%r10d
                                 0x00007f089d26b8c6: vmovd  %r10d,%xmm3
  0.00%    0.00%                 0x00007f089d26b8cb: mov    %esi,%r10d
                                 0x00007f089d26b8ce: cmp    $0xfffffff8,%r10d
                                 0x00007f089d26b8d2: je     0x00007f089d26d4b4  ;*aastore
                                                                               ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                                                                               ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                               ; - com.google.re2j.Machine::match@315 (line 239)
                                 0x00007f089d26b8d8: vmovd  %xmm1,%r8d
                                 0x00007f089d26b8dd: add    0x38(%rsp),%r8d
  0.01%    0.01%                 0x00007f089d26b8e2: add    0x14(%rsp),%r8d    ;*invokeinterface charAt
                                                                               ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                               ; - com.google.re2j.Machine::match@96 (line 195)
  0.01%                          0x00007f089d26b8e7: cmp    0x10(%rsp),%r8d
                                 0x00007f089d26b8ec: jge    0x00007f089d26c84c  ;*invokeinterface charAt
                                                                               ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                               ; - com.google.re2j.Machine::match@226 (line 225)
           0.00%                 0x00007f089d26b8f2: test   %r8d,%r8d
                                 0x00007f089d26b8f5: jl     0x00007f089d26d7f1  ;*ifeq
                                                                               ; - com.google.re2j.Machine::match@141 (line 207)
           0.01%                 0x00007f089d26b8fb: cmp    %ecx,%r8d
                                 0x00007f089d26b8fe: jge    0x00007f089d26d961  ;*iand
                                                                               ; - com.google.re2j.Machine::match@147 (line 208)
                                 0x00007f089d26b904: cmp    %ecx,%r8d
                                 0x00007f089d26b907: jae    0x00007f089d26d549  ;*ifeq
                                                                               ; - com.google.re2j.Machine::match@148 (line 208)
                                 0x00007f089d26b90d: movzwl 0x10(%r11,%r8,2),%ecx  ;*getfield value
                                                                               ; - java.lang.String::charAt@6 (line 657)
                                                                               ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                               ; - com.google.re2j.Machine::match@96 (line 195)
  0.00%                          0x00007f089d26b913: cmp    $0xd800,%ecx
                                 0x00007f089d26b919: jge    0x00007f089d26d9b1  ;*ifeq
                                                                               ; - com.google.re2j.Machine::match@148 (line 208)
           0.00%                 0x00007f089d26b91f: shl    $0x3,%ecx          ;*invokeinterface charAt
                                                                               ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                               ; - com.google.re2j.Machine::match@226 (line 225)
                                 0x00007f089d26b922: mov    %ecx,%r10d
                                 0x00007f089d26b925: or     $0x1,%r10d
                                 0x00007f089d26b929: and    $0x7,%ecx
                                 0x00007f089d26b92c: sar    $0x3,%r10d         ;*invokevirtual addThread
                                                                               ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                               ; - com.google.re2j.Machine::match@315 (line 239)
  0.00%                          0x00007f089d26b930: or     $0x1,%ecx          ;*arraylength
                                                                               ; - java.lang.String::charAt@9 (line 657)
                                                                               ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                               ; - com.google.re2j.Machine::match@96 (line 195)
                                 0x00007f089d26b933: vmovd  %xmm1,%r11d
                                 0x00007f089d26b938: test   %r11d,%r11d
                                 0x00007f089d26b93b: jne    0x00007f089d26d7b5  ;*ifeq
                                                                               ; - com.google.re2j.Machine::match@148 (line 208)
                                 0x00007f089d26b941: vmovd  %xmm3,%r11d
           0.00%                 0x00007f089d26b946: test   %r11d,%r11d
                                 0x00007f089d26b949: jl     0x00007f089d26c833  ;*if_icmplt
                                                                               ; - java.lang.String::charAt@10 (line 657)
                                                                               ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                               ; - com.google.re2j.Machine::match@249 (line 228)
                                 0x00007f089d26b94f: mov    %r10d,0x44(%rsp)
                                 0x00007f089d26b954: mov    %ecx,0x3c(%rsp)
  0.01%    0.00%                 0x00007f089d26b958: mov    %r11d,0x40(%rsp)
                                 0x00007f089d26b95d: mov    $0x5,%r9d          ;*ifeq
                                                                               ; - com.google.re2j.Machine::match@148 (line 208)
                                 0x00007f089d26b963: mov    0x40(%rsp),%r10d
                                 0x00007f089d26b968: cmp    $0xa,%r10d
                                 0x00007f089d26b96c: je     0x00007f089d26c859  ;*arraylength
                                                                               ; - java.lang.String::charAt@9 (line 657)
                                                                               ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                               ; - com.google.re2j.Machine::match@96 (line 195)
  0.00%                          0x00007f089d26b972: mov    0x40(%rsp),%r11d
                                 0x00007f089d26b977: add    $0xffffffbf,%r11d
                                 0x00007f089d26b97b: cmp    $0x1a,%r11d
                  ╭              0x00007f089d26b97f: jb     0x00007f089d26b98f
                  │              0x00007f089d26b981: add    $0xffffff9f,%r10d
  0.00%           │              0x00007f089d26b985: cmp    $0x1a,%r10d
                  │              0x00007f089d26b989: jae    0x00007f089d26c96d  ;*aload_0
                  │                                                            ; - java.lang.String::indexOf@60 (line 1771)
                  │                                                            ; - java.lang.String::indexOf@21 (line 1718)
                  │                                                            ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                  │                                                            ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                  │                                                            ; - com.google.re2j.Machine::match@206 (line 220)
  0.01%           ↘              0x00007f089d26b98f: or     $0x10,%r9d         ;*arraylength
                                                                               ; - java.lang.String::charAt@9 (line 657)
                                                                               ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                               ; - com.google.re2j.Machine::match@96 (line 195)
  0.00%    0.00%                 0x00007f089d26b993: mov    0x20(%rsp),%r10d
  0.00%                          0x00007f089d26b998: and    $0x4,%r10d         ;*getfield value
                                                                               ; - java.lang.String::charAt@23 (line 660)
                                                                               ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                               ; - com.google.re2j.Machine::match@96 (line 195)
                                 0x00007f089d26b99c: mov    %r10d,0x4c(%rsp)
                                 0x00007f089d26b9a1: mov    %r13,%r10
  0.00%    0.00%                 0x00007f089d26b9a4: shl    $0x3,%r10          ;*invokeinterface charAt
                                                                               ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                               ; - com.google.re2j.Machine::match@96 (line 195)
                                 0x00007f089d26b9a8: mov    %r10,0x58(%rsp)
  0.01%    0.01%                 0x00007f089d26b9ad: xor    %r10d,%r10d
                                 0x00007f089d26b9b0: xor    %ecx,%ecx
                                 0x00007f089d26b9b2: mov    $0x1,%r11d
                                 0x00007f089d26b9b8: mov    %r11d,0xb0(%rsp)
           0.00%   ╭             0x00007f089d26b9c0: jmpq   0x00007f089d26bb3c
  0.04%    0.00%   │          ↗  0x00007f089d26b9c5: mov    %r10d,%ecx
  0.00%    0.01%   │          │  0x00007f089d26b9c8: jmpq   0x00007f089d26bf69  ;*invokevirtual add
                   │          │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                   │          │                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.28%    0.21%   │          │  0x00007f089d26b9cd: mov    $0x1,%r11d
  0.17%    0.16%   │          │  0x00007f089d26b9d3: jmpq   0x00007f089d26bf03
  0.13%    0.08%   │          │  0x00007f089d26b9d8: mov    0x30(%rsp),%r11
  0.13%    0.04%   │          │  0x00007f089d26b9dd: mov    0x10(%r11),%r8d    ;*putfield cap
                   │          │                                                ; - com.google.re2j.Machine$Thread::&lt;init&gt;@8 (line 21)
                   │          │                                                ; - com.google.re2j.Machine::alloc@39 (line 136)
                   │          │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                   │          │                                                ; - com.google.re2j.Machine::match@315 (line 239)
                   │          │  0x00007f089d26b9e1: mov    0x78(%rsp),%r10
  0.06%    0.01%   │          │  0x00007f089d26b9e6: mov    0x14(%r10),%ebx    ;*invokevirtual alloc
                   │          │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                   │          │                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.14%    0.08%   │          │  0x00007f089d26b9ea: mov    0x74(%rsp),%r9d
  0.14%    0.02%   │          │  0x00007f089d26b9ef: movzbl 0x18(%r12,%r9,8),%r10d
  0.01%    0.01%   │          │  0x00007f089d26b9f5: test   %r10d,%r10d
                   │╭         │  0x00007f089d26b9f8: jne    0x00007f089d26ba17  ;*iflt
                   ││         │                                                ; - java.lang.String::charAt@1 (line 657)
                   ││         │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   ││         │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   ││         │                                                ; - com.google.re2j.Machine::match@249 (line 228)
  0.05%    0.02%   ││         │  0x00007f089d26b9fa: mov    %r12,0x10(%r12,%r9,8)  ;*ifge
                   ││         │                                                ; - java.lang.String::indexOf@19 (line 1759)
                   ││         │                                                ; - java.lang.String::indexOf@21 (line 1718)
                   ││         │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   ││         │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   ││         │                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.16%    0.07%   ││         │  0x00007f089d26b9ff: mov    0x1c(%r12,%r9,8),%ebp  ;*invokestatic indexOf
                   ││         │                                                ; - java.lang.String::indexOf@21 (line 1718)
                   ││         │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   ││         │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   ││         │                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.16%    0.03%   ││         │  0x00007f089d26ba04: movb   $0x1,0x18(%r12,%r9,8)
  0.01%    0.01%   ││         │  0x00007f089d26ba0a: mov    %r12d,0xc(%r12,%r9,8)
  0.04%    0.01%   ││         │  0x00007f089d26ba0f: test   %ebp,%ebp
                   ││         │  0x00007f089d26ba11: jne    0x00007f089d26d18d  ;*invokevirtual isEmpty
                   ││         │                                                ; - com.google.re2j.Machine::match@175 (line 216)
  0.14%    0.05%   │↘         │  0x00007f089d26ba17: mov    0x38(%rsp),%r10d
  0.18%    0.02%   │          │  0x00007f089d26ba1c: test   %r10d,%r10d
                   │          │  0x00007f089d26ba1f: je     0x00007f089d26c194  ;*caload
                   │          │                                                ; - java.lang.String::indexOf@82 (line 1772)
                   │          │                                                ; - java.lang.String::indexOf@21 (line 1718)
                   │          │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   │          │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   │          │                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.01%    0.02%   │          │  0x00007f089d26ba25: mov    %r11,0x30(%rsp)
  0.05%    0.02%   │          │  0x00007f089d26ba2a: mov    0x78(%rsp),%r11
  0.14%    0.03%   │          │  0x00007f089d26ba2f: mov    0x28(%r11),%r11d   ;*ifne
                   │          │                                                ; - com.google.re2j.Machine::match@271 (line 233)
  0.17%    0.11%   │          │  0x00007f089d26ba33: mov    %r11d,0x48(%rsp)
  0.01%    0.00%   │          │  0x00007f089d26ba38: mov    0xc(%r12,%r11,8),%ebp  ;*aload
                   │          │                                                ; - com.google.re2j.Machine::match@136 (line 207)
                   │          │                                                ; implicit exception: dispatches to 0x00007f089d26e191
  0.10%    0.05%   │          │  0x00007f089d26ba3d: test   %ebp,%ebp
                   │          │  0x00007f089d26ba3f: jne    0x00007f089d26cfa9  ;*ifge
                   │          │                                                ; - java.lang.String::indexOf@19 (line 1759)
                   │          │                                                ; - java.lang.String::indexOf@21 (line 1718)
                   │          │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   │          │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   │          │                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.18%    0.09%   │          │  0x00007f089d26ba45: mov    0x78(%rsp),%r11
  0.11%    0.14%   │          │  0x00007f089d26ba4a: movzbl 0x10(%r11),%ecx    ;*aload
                   │          │                                                ; - com.google.re2j.Machine::match@136 (line 207)
           0.01%   │          │  0x00007f089d26ba4f: test   %ecx,%ecx
                   │          │  0x00007f089d26ba51: jne    0x00007f089d26d151  ;*ifge
                   │          │                                                ; - java.lang.String::indexOf@19 (line 1759)
                   │          │                                                ; - java.lang.String::indexOf@21 (line 1718)
                   │          │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   │          │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   │          │                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.07%    0.04%   │          │  0x00007f089d26ba57: mov    0x30(%rsp),%r10
  0.16%    0.08%   │          │  0x00007f089d26ba5c: mov    0xc(%r10),%r10d    ;*getfield prefixRune
                   │          │                                                ; - com.google.re2j.Machine::match@187 (line 216)
  0.11%    0.13%   │          │  0x00007f089d26ba60: mov    %r10d,0x14(%rsp)
  0.00%    0.04%   │          │  0x00007f089d26ba65: mov    0x30(%rsp),%r10
  0.06%    0.05%   │          │  0x00007f089d26ba6a: mov    0x14(%r10),%r14d   ;*invokevirtual step
                   │          │                                                ; - com.google.re2j.Machine::match@226 (line 225)
  0.19%    0.28%   │          │  0x00007f089d26ba6e: mov    0x40(%rsp),%r10d
  0.11%    0.15%   │          │  0x00007f089d26ba73: cmp    $0xffffffff,%r10d
                   │          │  0x00007f089d26ba77: je     0x00007f089d26c377  ;*invokeinterface charAt
                   │          │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │          │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │          │                                                ; - com.google.re2j.Machine::match@249 (line 228)
  0.03%    0.02%   │          │  0x00007f089d26ba7d: mov    0x3c(%rsp),%edi
  0.04%    0.06%   │          │  0x00007f089d26ba81: add    0x60(%rsp),%edi
  0.14%    0.29%   │          │  0x00007f089d26ba85: add    0x14(%rsp),%edi    ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                   │          │                                                ; - com.google.re2j.Machine::match@96 (line 195)
  0.22%    0.39%   │          │  0x00007f089d26ba89: cmp    %r8d,%edi
                   │          │  0x00007f089d26ba8c: jge    0x00007f089d26c386  ;*iflt
                   │          │                                                ; - java.lang.String::charAt@1 (line 657)
                   │          │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │          │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │          │                                                ; - com.google.re2j.Machine::match@249 (line 228)
  0.14%    0.23%   │          │  0x00007f089d26ba92: mov    0x8(%r12,%r14,8),%r10d  ; implicit exception: dispatches to 0x00007f089d26e1a1
  0.07%    0.07%   │          │  0x00007f089d26ba97: cmp    $0xf80002da,%r10d  ;   {metadata(&apos;java/lang/String&apos;)}
                   │          │  0x00007f089d26ba9e: jne    0x00007f089d26ce61  ;*ifne
                   │          │                                                ; - java.lang.String::indexOf@27 (line 1762)
                   │          │                                                ; - java.lang.String::indexOf@21 (line 1718)
                   │          │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   │          │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   │          │                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.24%    0.18%   │          │  0x00007f089d26baa4: lea    (%r12,%r14,8),%rdx  ;*invokevirtual step
                   │          │                                                ; - com.google.re2j.Machine::match@96 (line 195)
  0.03%    0.06%   │          │  0x00007f089d26baa8: test   %edi,%edi
                   │          │  0x00007f089d26baaa: jl     0x00007f089d26cfe1  ;*ifne
                   │          │                                                ; - java.lang.String::indexOf@27 (line 1762)
                   │          │                                                ; - java.lang.String::indexOf@21 (line 1718)
                   │          │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   │          │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   │          │                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.11%    0.18%   │          │  0x00007f089d26bab0: mov    0xc(%rdx),%r10d    ;*caload
                   │          │                                                ; - java.lang.String::indexOf@129 (line 1779)
                   │          │                                                ; - java.lang.String::indexOf@21 (line 1718)
                   │          │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   │          │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   │          │                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.03%    0.02%   │          │  0x00007f089d26bab4: mov    0xc(%r12,%r10,8),%ebp  ;*aload
                   │          │                                                ; - com.google.re2j.Machine::match@136 (line 207)
                   │          │                                                ; implicit exception: dispatches to 0x00007f089d26e1b5
  1.01%    1.68%   │          │  0x00007f089d26bab9: cmp    %ebp,%edi
                   │          │  0x00007f089d26babb: jge    0x00007f089d26d1c1  ;*caload
                   │          │                                                ; - java.lang.String::indexOf@36 (line 1766)
                   │          │                                                ; - java.lang.String::indexOf@21 (line 1718)
                   │          │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   │          │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   │          │                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.39%    0.47%   │          │  0x00007f089d26bac1: cmp    %ebp,%edi
                   │          │  0x00007f089d26bac3: jae    0x00007f089d26ce15  ;*instanceof
                   │          │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@1 (line 224)
                   │          │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   │          │                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.15%    0.17%   │          │  0x00007f089d26bac9: shl    $0x3,%r10
                   │          │  0x00007f089d26bacd: movzwl 0x10(%r10,%rdi,2),%r11d  ;*ishr
                   │          │                                                ; - com.google.re2j.Machine::match@104 (line 196)
  0.12%    0.10%   │          │  0x00007f089d26bad3: cmp    $0xd800,%r11d
                   │          │  0x00007f089d26bada: jge    0x00007f089d26d205  ;*getfield prefixRune
                   │          │                                                ; - com.google.re2j.Machine::match@187 (line 216)
  0.30%    0.53%   │          │  0x00007f089d26bae0: shl    $0x3,%r11d         ;*ifne
                   │          │                                                ; - com.google.re2j.Machine::match@279 (line 233)
  0.01%    0.03%   │          │  0x00007f089d26bae4: mov    %r11d,%edx
           0.01%   │          │  0x00007f089d26bae7: and    $0x7,%edx
  0.20%    0.34%   │          │  0x00007f089d26baea: or     $0x1,%r11d
  0.08%    0.16%   │          │  0x00007f089d26baee: or     $0x1,%edx          ;*synchronization entry
                   │          │                                                ; - com.google.re2j.Machine::match@-1 (line 178)
  0.20%    0.26%   │          │  0x00007f089d26baf1: sar    $0x3,%r11d         ; OopMap{rbx=NarrowOop r14=NarrowOop [8]=Oop [48]=Oop [72]=NarrowOop [88]=Oop [120]=Oop off=885}
                   │          │                                                ;*goto
                   │          │                                                ; - com.google.re2j.Machine::match@439 (line 262)
  0.00%            │          │  0x00007f089d26baf5: test   %eax,0x18789505(%rip)        # 0x00007f08b59f5000
                   │          │                                                ;*caload
                   │          │                                                ; - java.lang.String::indexOf@63 (line 1771)
                   │          │                                                ; - java.lang.String::indexOf@21 (line 1718)
                   │          │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   │          │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   │          │                                                ; - com.google.re2j.Machine::match@206 (line 220)
                   │          │                                                ;   {poll}
  0.01%    0.01%   │          │  0x00007f089d26bafb: mov    0x58(%rsp),%r10
  0.16%    0.19%   │          │  0x00007f089d26bb00: mov    %r10,%r9
  0.18%    0.29%   │          │  0x00007f089d26bb03: shr    $0x3,%r9           ;*invokespecial freeQueue
                   │          │                                                ; - com.google.re2j.Machine::freeQueue@15 (line 150)
                   │          │                                                ; - com.google.re2j.Machine::step@174 (line 295)
                   │          │                                                ; - com.google.re2j.Machine::match@356 (line 242)
  0.01%    0.02%   │          │  0x00007f089d26bb07: mov    %r9d,0x74(%rsp)
  0.02%            │          │  0x00007f089d26bb0c: mov    0x68(%rsp),%r9d
  0.13%    0.16%   │          │  0x00007f089d26bb11: mov    %r11d,0x44(%rsp)
  0.22%    0.25%   │          │  0x00007f089d26bb16: mov    0x8(%rsp),%r10
           0.01%   │          │  0x00007f089d26bb1b: mov    %r10,0x58(%rsp)
  0.02%    0.00%   │          │  0x00007f089d26bb20: mov    0x3c(%rsp),%r10d
  0.16%    0.21%   │          │  0x00007f089d26bb25: mov    %r10d,0x38(%rsp)
  0.16%    0.30%   │          │  0x00007f089d26bb2a: mov    %edx,0x3c(%rsp)
           0.01%   │          │  0x00007f089d26bb2e: mov    0x60(%rsp),%r10d
  0.01%    0.01%   │          │  0x00007f089d26bb33: vmovd  %ebx,%xmm5
  0.10%    0.16%   │          │  0x00007f089d26bb37: mov    %r8d,0x10(%rsp)    ;*if_icmplt
                   │          │                                                ; - java.lang.String::charAt@10 (line 657)
                   │          │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │          │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │          │                                                ; - com.google.re2j.Machine::match@96 (line 195)
  0.14%    0.29%   ↘          │  0x00007f089d26bb3c: mov    0x74(%rsp),%r8d
  0.01%    0.00%              │  0x00007f089d26bb41: movzbl 0x18(%r12,%r8,8),%ebx  ; implicit exception: dispatches to 0x00007f089d26e131
  0.02%    0.01%              │  0x00007f089d26bb47: mov    0x78(%rsp),%r11
  0.12%    0.17%              │  0x00007f089d26bb4c: mov    0x24(%r11),%r11d   ;*invokestatic indexOf
                              │                                                ; - java.lang.String::indexOf@21 (line 1718)
                              │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                              │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                              │                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.17%    0.25%              │  0x00007f089d26bb50: mov    %r11d,%r13d
                              │  0x00007f089d26bb53: mov    0x78(%rsp),%r11
  0.01%    0.01%              │  0x00007f089d26bb58: mov    0xc(%r11),%r11d    ;*instanceof
                              │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@1 (line 224)
                              │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                              │                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.09%    0.17%              │  0x00007f089d26bb5c: vmovd  %r11d,%xmm1
  0.23%    0.18%              │  0x00007f089d26bb61: lea    (%r12,%r8,8),%r11  ;*getfield poolSize
                              │                                                ; - com.google.re2j.Machine::freeQueue@60 (line 161)
                              │                                                ; - com.google.re2j.Machine::freeQueue@15 (line 150)
                              │                                                ; - com.google.re2j.Machine::step@174 (line 295)
                              │                                                ; - com.google.re2j.Machine::match@356 (line 242)
           0.00%              │  0x00007f089d26bb65: mov    %r11,0x8(%rsp)
  0.00%    0.01%              │  0x00007f089d26bb6a: test   %ebx,%ebx
                     ╭        │  0x00007f089d26bb6c: je     0x00007f089d26bbb5  ;*iflt
                     │        │                                                ; - java.lang.String::charAt@1 (line 657)
                     │        │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                     │        │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                     │        │                                                ; - com.google.re2j.Machine::match@226 (line 225)
  0.08%    0.07%     │        │  0x00007f089d26bb6e: mov    0x4c(%rsp),%r8d
  0.07%    0.07%     │        │  0x00007f089d26bb73: test   %r8d,%r8d
                     │        │  0x00007f089d26bb76: jne    0x00007f089d26d3c1
                     │        │  0x00007f089d26bb7c: test   %ecx,%ecx
                     │        │  0x00007f089d26bb7e: jne    0x00007f089d26d409  ;*ifeq
                     │        │                                                ; - com.google.re2j.Machine::match@162 (line 212)
                     │        │  0x00007f089d26bb84: vmovd  %xmm5,%r8d
  0.06%    0.05%     │        │  0x00007f089d26bb89: mov    0x24(%r12,%r8,8),%r11d  ;*ireturn
                     │        │                                                ; - java.lang.String::isEmpty@13 (line 635)
                     │        │                                                ; - com.google.re2j.Machine::match@175 (line 216)
                     │        │                                                ; implicit exception: dispatches to 0x00007f089d26e1e9
  0.07%    0.11%     │        │  0x00007f089d26bb8e: mov    %r11d,%ebx
  0.00%              │        │  0x00007f089d26bb91: mov    0xc(%r12,%r11,8),%r11d  ;*caload
                     │        │                                                ; - java.lang.String::indexOf@82 (line 1772)
                     │        │                                                ; - java.lang.String::indexOf@21 (line 1718)
                     │        │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                     │        │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                     │        │                                                ; - com.google.re2j.Machine::match@206 (line 220)
                     │        │                                                ; implicit exception: dispatches to 0x00007f089d26e1f9
                     │        │  0x00007f089d26bb96: vmovd  %r11d,%xmm0
  0.07%    0.08%     │        │  0x00007f089d26bb9b: mov    0xc(%r12,%r11,8),%r11d  ;*ifne
                     │        │                                                ; - com.google.re2j.Machine::match@115 (line 200)
                     │        │                                                ; implicit exception: dispatches to 0x00007f089d26e209
  0.07%    0.09%     │        │  0x00007f089d26bba0: mov    %r11d,0x50(%rsp)
                     │        │  0x00007f089d26bba5: test   %r11d,%r11d
                     │        │  0x00007f089d26bba8: jne    0x00007f089d26c45d  ;*getfield value
                     │        │                                                ; - java.lang.String::charAt@23 (line 660)
                     │        │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                     │        │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                     │        │                                                ; - com.google.re2j.Machine::match@226 (line 225)
                     │        │  0x00007f089d26bbae: mov    %r10d,0x18(%rsp)
  0.08%    0.10%     │╭       │  0x00007f089d26bbb3: jmp    0x00007f089d26bbba
  0.05%    0.06%     ↘│       │  0x00007f089d26bbb5: mov    %r10d,0x18(%rsp)   ;*if_icmpgt
                      │       │                                                ; - com.google.re2j.Utils::isWordRune@15 (line 149)
                      │       │                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                      │       │                                                ; - com.google.re2j.Machine::match@121 (line 201)
  0.15%    0.17%      ↘       │  0x00007f089d26bbba: test   %ecx,%ecx
                              │  0x00007f089d26bbbc: jne    0x00007f089d26cf09  ;*invokespecial indexOf
                              │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                              │                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.02%                       │  0x00007f089d26bbc2: mov    0x18(%rsp),%r10d
  0.08%    0.03%              │  0x00007f089d26bbc7: test   %r10d,%r10d
                       ╭      │  0x00007f089d26bbca: je     0x00007f089d26bbda  ;*if_icmplt
                       │      │                                                ; - java.lang.Character::charCount@3 (line 4818)
                       │      │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@26 (line 188)
                       │      │                                                ; - com.google.re2j.Machine::match@226 (line 225)
  0.21%    0.16%       │      │  0x00007f089d26bbcc: mov    0x64(%rsp),%r11d
  0.25%    0.21%       │      │  0x00007f089d26bbd1: test   %r11d,%r11d
                       │      │  0x00007f089d26bbd4: jne    0x00007f089d26cf59  ;*aload_0
                       │      │                                                ; - java.lang.String::indexOf@126 (line 1779)
                       │      │                                                ; - java.lang.String::indexOf@21 (line 1718)
                       │      │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                       │      │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                       │      │                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.00%                ↘      │  0x00007f089d26bbda: mov    0x48(%rsp),%r10d
  0.01%    0.03%              │  0x00007f089d26bbdf: mov    0xc(%r12,%r10,8),%r11d  ;*if_icmpgt
                              │                                                ; - com.google.re2j.Utils::isWordRune@27 (line 149)
                              │                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                              │                                                ; - com.google.re2j.Machine::match@121 (line 201)
                              │                                                ; implicit exception: dispatches to 0x00007f089d26e141
  0.15%    0.09%              │  0x00007f089d26bbe4: mov    %r11d,0x50(%rsp)
  0.21%    0.20%              │  0x00007f089d26bbe9: test   %r11d,%r11d
                              │  0x00007f089d26bbec: jg     0x00007f089d26d0bd  ;*synchronization entry
                              │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@-1 (line 224)
                              │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                              │                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.00%    0.01%              │  0x00007f089d26bbf2: mov    0x78(%rsp),%r10
  0.01%    0.02%              │  0x00007f089d26bbf7: mov    0x18(%r10),%r10d   ;*getfield matchcap
                              │                                                ; - com.google.re2j.Machine::match@308 (line 239)
  0.16%    0.10%              │  0x00007f089d26bbfb: mov    0x1c(%r12,%r10,8),%ebp  ;*aload_0
                              │                                                ; - java.lang.String::indexOf@126 (line 1779)
                              │                                                ; - java.lang.String::indexOf@21 (line 1718)
                              │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                              │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                              │                                                ; - com.google.re2j.Machine::match@206 (line 220)
                              │                                                ; implicit exception: dispatches to 0x00007f089d26e151
  0.34%    0.27%              │  0x00007f089d26bc00: mov    0x8(%r12,%rbp,8),%r8d  ;*invokevirtual add
                              │                                                ; - com.google.re2j.Machine::match@315 (line 239)
                              │                                                ; implicit exception: dispatches to 0x00007f089d26e161
  0.60%    0.53%              │  0x00007f089d26bc05: lea    (%r12,%rbp,8),%r11
  0.00%                       │  0x00007f089d26bc09: cmp    $0xf8019a53,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$Alt5Inst&apos;)}
                        ╭     │  0x00007f089d26bc10: je     0x00007f089d26bd27  ;*invokestatic indexOf
                        │     │                                                ; - java.lang.String::indexOf@21 (line 1718)
                        │     │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                        │     │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                        │     │                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.13%    0.12%        │     │  0x00007f089d26bc16: cmp    $0xf8019993,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                        │     │  0x00007f089d26bc1d: jne    0x00007f089d26d109
  0.05%    0.02%        │     │  0x00007f089d26bc23: mov    0x18(%r11),%ecx    ;*if_icmpne
                        │     │                                                ; - com.google.re2j.Utils::isWordRune@39 (line 149)
                        │     │                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                        │     │                                                ; - com.google.re2j.Machine::match@121 (line 201)
  0.14%    0.19%        │     │  0x00007f089d26bc27: cmp    $0x40,%ecx
                        │     │  0x00007f089d26bc2a: jg     0x00007f089d26d255  ;*instanceof
                        │     │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@1 (line 224)
                        │     │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                        │     │                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.08%    0.15%        │     │  0x00007f089d26bc30: mov    %r11,0x68(%rsp)
  0.02%                 │     │  0x00007f089d26bc35: mov    $0x1,%r10d
  0.04%    0.01%        │     │  0x00007f089d26bc3b: shl    %cl,%r10
  0.22%    0.26%        │     │  0x00007f089d26bc3e: mov    0x74(%rsp),%r11d
  0.03%                 │     │  0x00007f089d26bc43: mov    0x10(%r12,%r11,8),%r11  ;*aload_0
                        │     │                                                ; - java.lang.String::indexOf@79 (line 1772)
                        │     │                                                ; - java.lang.String::indexOf@21 (line 1718)
                        │     │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                        │     │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                        │     │                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.01%    0.00%        │     │  0x00007f089d26bc48: mov    %r10,%r8
           0.00%        │     │  0x00007f089d26bc4b: and    %r11,%r8           ;*invokestatic charCount
                        │     │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@26 (line 188)
                        │     │                                                ; - com.google.re2j.Machine::match@249 (line 228)
  0.19%    0.15%        │     │  0x00007f089d26bc4e: test   %r8,%r8
                        │     │  0x00007f089d26bc51: jne    0x00007f089d26d2cd  ;*instanceof
                        │     │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@1 (line 224)
                        │     │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                        │     │                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.02%    0.01%        │     │  0x00007f089d26bc57: cmp    $0x40,%ecx
                        │     │  0x00007f089d26bc5a: jge    0x00007f089d26d34d
                        │     │  0x00007f089d26bc60: mov    0x74(%rsp),%r9d
  0.00%                 │     │  0x00007f089d26bc65: mov    %r12b,0x18(%r12,%r9,8)  ;*invokestatic isHighSurrogate
                        │     │                                                ; - java.lang.Character::codePointAt@9 (line 4867)
                        │     │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                        │     │                                                ; - com.google.re2j.Machine::match@96 (line 195)
  0.16%    0.16%        │     │  0x00007f089d26bc6a: or     %r11,%r10
  0.02%    0.03%        │     │  0x00007f089d26bc6d: mov    %r10,0x10(%r12,%r9,8)  ;*synchronization entry
                        │     │                                                ; - java.lang.Character::isHighSurrogate@-1 (line 4729)
                        │     │                                                ; - java.lang.Character::codePointAt@9 (line 4867)
                        │     │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                        │     │                                                ; - com.google.re2j.Machine::match@96 (line 195)
           0.00%        │     │  0x00007f089d26bc72: vmovd  %xmm1,%r11d
                        │     │  0x00007f089d26bc77: test   %r11d,%r11d
                        │     │  0x00007f089d26bc7a: jle    0x00007f089d26c862  ;*if_icmpeq
                        │     │                                                ; - java.lang.String::indexOf@66 (line 1771)
                        │     │                                                ; - java.lang.String::indexOf@21 (line 1718)
                        │     │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                        │     │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                        │     │                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.15%    0.16%        │     │  0x00007f089d26bc80: mov    %r11d,%ebp
  0.01%    0.02%        │     │  0x00007f089d26bc83: dec    %ebp               ;*invokestatic isWordRune
                        │     │                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                        │     │                                                ; - com.google.re2j.Machine::match@121 (line 201)
  0.00%                 │     │  0x00007f089d26bc85: mov    0x78(%rsp),%r10
  0.01%    0.00%        │     │  0x00007f089d26bc8a: mov    %ebp,0xc(%r10)
  0.12%    0.13%        │     │  0x00007f089d26bc8e: mov    0xc(%r12,%r13,8),%r10d  ; implicit exception: dispatches to 0x00007f089d26e1d9
  0.03%    0.01%        │     │  0x00007f089d26bc93: cmp    %r10d,%ebp
                        │     │  0x00007f089d26bc96: jae    0x00007f089d26d061  ;*instanceof
                        │     │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@1 (line 224)
                        │     │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                        │     │                                                ; - com.google.re2j.Machine::match@206 (line 220)
                        │     │  0x00007f089d26bc9c: lea    (%r12,%r13,8),%r10
                        │     │  0x00007f089d26bca0: mov    0xc(%r10,%r11,4),%r11d  ;*invokevirtual step
                        │     │                                                ; - com.google.re2j.Machine::match@249 (line 228)
  0.12%    0.19%        │     │  0x00007f089d26bca5: test   %r11d,%r11d
                        │     │  0x00007f089d26bca8: je     0x00007f089d26d0a9  ;*invokevirtual add
                        │     │                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.03%    0.03%        │     │  0x00007f089d26bcae: mov    %r11,%r9
                        │     │  0x00007f089d26bcb1: shl    $0x3,%r9           ;*putfield inst
                        │     │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                        │     │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                        │     │                                                ; - com.google.re2j.Machine::match@315 (line 239)
                        │     │  0x00007f089d26bcb5: mov    0x74(%rsp),%r11d
  0.16%    0.13%        │     │  0x00007f089d26bcba: mov    0x20(%r12,%r11,8),%r8d  ;*caload
                        │     │                                                ; - java.lang.String::indexOf@129 (line 1779)
                        │     │                                                ; - java.lang.String::indexOf@21 (line 1718)
                        │     │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                        │     │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                        │     │                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.01%    0.02%        │     │  0x00007f089d26bcbf: mov    0xc(%r12,%r11,8),%ebp  ;*bipush
                        │     │                                                ; - com.google.re2j.Utils::isWordRune@12 (line 149)
                        │     │                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                        │     │                                                ; - com.google.re2j.Machine::match@121 (line 201)
                        │     │  0x00007f089d26bcc4: mov    %r9,%r10
  0.00%    0.00%        │     │  0x00007f089d26bcc7: mov    %ebp,%ecx
  0.13%    0.07%        │     │  0x00007f089d26bcc9: inc    %ecx
  0.02%    0.01%        │     │  0x00007f089d26bccb: mov    %ecx,0xc(%r12,%r11,8)  ;*ifeq
                        │     │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@4 (line 224)
                        │     │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                        │     │                                                ; - com.google.re2j.Machine::match@206 (line 220)
                        │     │  0x00007f089d26bcd0: shr    $0x9,%r10
                        │     │  0x00007f089d26bcd4: movabs $0x7f08ae3fd000,%r11
  0.16%    0.12%        │     │  0x00007f089d26bcde: mov    %r12b,(%r11,%r10,1)  ;*instanceof
                        │     │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@1 (line 224)
                        │     │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                        │     │                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.07%    0.03%        │     │  0x00007f089d26bce2: mov    0x68(%rsp),%r10
  0.00%                 │     │  0x00007f089d26bce7: shr    $0x3,%r10          ;*caload
                        │     │                                                ; - java.lang.String::indexOf@129 (line 1779)
                        │     │                                                ; - java.lang.String::indexOf@21 (line 1718)
                        │     │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                        │     │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                        │     │                                                ; - com.google.re2j.Machine::match@206 (line 220)
                        │     │  0x00007f089d26bceb: mov    %r10d,0x10(%r9)    ;*instanceof
                        │     │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@1 (line 224)
                        │     │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                        │     │                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.14%    0.07%        │     │  0x00007f089d26bcef: mov    0xc(%r12,%r8,8),%r10d  ;*if_icmplt
                        │     │                                                ; - java.lang.Character::charCount@3 (line 4818)
                        │     │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@26 (line 188)
                        │     │                                                ; - com.google.re2j.Machine::match@249 (line 228)
                        │     │                                                ; implicit exception: dispatches to 0x00007f089d26e1c5
  0.02%    0.02%        │     │  0x00007f089d26bcf4: cmp    %r10d,%ebp
                        │     │  0x00007f089d26bcf7: jae    0x00007f089d26d029  ;*ifeq
                        │     │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@4 (line 224)
                        │     │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                        │     │                                                ; - com.google.re2j.Machine::match@206 (line 220)
                        │     │  0x00007f089d26bcfd: mov    %r9,%r10
                        │     │  0x00007f089d26bd00: shr    $0x3,%r10
  0.08%    0.07%        │     │  0x00007f089d26bd04: lea    (%r12,%r8,8),%r11  ;*synchronization entry
                        │     │                                                ; - com.google.re2j.Machine::freeQueue@-1 (line 148)
                        │     │                                                ; - com.google.re2j.Machine::step@174 (line 295)
                        │     │                                                ; - com.google.re2j.Machine::match@356 (line 242)
  0.04%    0.01%        │     │  0x00007f089d26bd08: lea    0x10(%r11,%rbp,4),%r11  ;*getfield start
                        │     │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                        │     │                                                ; - com.google.re2j.Machine::match@249 (line 228)
  0.00%                 │     │  0x00007f089d26bd0d: mov    %r10d,(%r11)
  0.02%    0.03%        │     │  0x00007f089d26bd10: mov    %r11,%r10
  0.14%    0.07%        │     │  0x00007f089d26bd13: shr    $0x9,%r10
  0.03%    0.01%        │     │  0x00007f089d26bd17: movabs $0x7f08ae3fd000,%r11
                        │     │  0x00007f089d26bd21: mov    %r12b,(%r11,%r10,1)  ;*caload
                        │     │                                                ; - java.lang.String::indexOf@133 (line 1779)
                        │     │                                                ; - java.lang.String::indexOf@21 (line 1718)
                        │     │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                        │     │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                        │     │                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.02%    0.05%        │╭    │  0x00007f089d26bd25: jmp    0x00007f089d26bd50  ;*invokevirtual isEmpty
                        ││    │                                                ; - com.google.re2j.Machine::match@175 (line 216)
  0.11%    0.03%        ↘│    │  0x00007f089d26bd27: mov    0x48(%rsp),%r10d
  0.06%    0.04%         │    │  0x00007f089d26bd2c: mov    %r10,%r8
                         │    │  0x00007f089d26bd2f: shl    $0x3,%r8           ;*if_icmpgt
                         │    │                                                ; - com.google.re2j.Utils::isWordRune@27 (line 149)
                         │    │                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                         │    │                                                ; - com.google.re2j.Machine::match@121 (line 201)
  0.00%    0.01%         │    │  0x00007f089d26bd33: mov    %r11,%rsi
  0.07%    0.05%         │    │  0x00007f089d26bd36: mov    0x8(%rsp),%rdx
  0.06%    0.07%         │    │  0x00007f089d26bd3b: mov    0x18(%rsp),%ecx
                         │    │  0x00007f089d26bd3f: xor    %edi,%edi
           0.00%         │    │  0x00007f089d26bd41: mov    0x78(%rsp),%r10
  0.07%    0.09%         │    │  0x00007f089d26bd46: mov    %r10,(%rsp)
  0.07%    0.10%         │    │  0x00007f089d26bd4a: nop
                         │    │  0x00007f089d26bd4b: callq  0x00007f089d046020  ; OopMap{[8]=Oop [48]=Oop [88]=Oop [116]=NarrowOop [120]=Oop off=1488}
                         │    │                                                ;*invokevirtual add
                         │    │                                                ; - com.google.re2j.Machine::match@315 (line 239)
                         │    │                                                ;   {optimized virtual_call}
  0.17%    0.05%         ↘    │  0x00007f089d26bd50: mov    0x40(%rsp),%r11d
  0.15%    0.21%              │  0x00007f089d26bd55: test   %r11d,%r11d
                              │  0x00007f089d26bd58: jl     0x00007f089d26c153  ;*synchronization entry
                              │                                                ; - com.google.re2j.Inst$MatchInst::add@-1 (line 93)
                              │                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.05%    0.06%              │  0x00007f089d26bd5e: xor    %r9d,%r9d          ;*if_icmpge
                              │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                              │                                                ; - com.google.re2j.Machine::match@249 (line 228)
  0.02%    0.05%              │  0x00007f089d26bd61: cmp    $0xa,%r11d
                              │  0x00007f089d26bd65: je     0x00007f089d26c393  ;*caload
                              │                                                ; - java.lang.String::indexOf@133 (line 1779)
                              │                                                ; - java.lang.String::indexOf@21 (line 1718)
                              │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                              │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                              │                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.17%    0.19%              │  0x00007f089d26bd6b: mov    0x44(%rsp),%r10d
  0.08%    0.07%              │  0x00007f089d26bd70: test   %r10d,%r10d
                              │  0x00007f089d26bd73: jl     0x00007f089d26c15e  ;*getfield value
                              │                                                ; - java.lang.String::indexOf@1 (line 1718)
                              │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                              │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                              │                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.05%    0.05%              │  0x00007f089d26bd79: cmp    $0xa,%r10d
                              │  0x00007f089d26bd7d: je     0x00007f089d26c39c  ;*if_icmple
                              │                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                              │                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                              │                                                ; - com.google.re2j.Machine::match@121 (line 201)
  0.04%    0.05%              │  0x00007f089d26bd83: mov    %rax,-0x8(%rsp)
  0.19%    0.18%              │  0x00007f089d26bd88: mov    0x44(%rsp),%eax
  0.08%    0.07%              │  0x00007f089d26bd8c: mov    %eax,0x40(%rsp)
  0.03%    0.06%              │  0x00007f089d26bd90: mov    -0x8(%rsp),%rax
  0.12%    0.10%              │  0x00007f089d26bd95: mov    %r11d,0x84(%rsp)
  0.22%    0.19%              │  0x00007f089d26bd9d: mov    0x30(%rsp),%r10
  0.07%    0.11%              │  0x00007f089d26bda2: mov    0x10(%r10),%r8d    ;*ifeq
                              │                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                              │                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.13%    0.20%              │  0x00007f089d26bda6: mov    0x78(%rsp),%r10
  0.04%    0.03%              │  0x00007f089d26bdab: mov    0x14(%r10),%ebx    ;*ishr
                              │                                                ; - com.google.re2j.Machine::match@257 (line 229)
  0.25%    0.30%              │  0x00007f089d26bdaf: add    $0xffffffbf,%r11d
  0.07%    0.04%              │  0x00007f089d26bdb3: mov    0x44(%rsp),%ecx
  0.09%    0.05%              │  0x00007f089d26bdb7: add    $0xffffffbf,%ecx
  0.02%    0.03%              │  0x00007f089d26bdba: cmp    $0x1a,%r11d
                          ╭   │  0x00007f089d26bdbe: jb     0x00007f089d26bdd6  ;*ishl
                          │   │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                          │   │                                                ; - com.google.re2j.Machine::match@249 (line 228)
  0.14%    0.12%          │   │  0x00007f089d26bdc0: mov    0x84(%rsp),%r10d
  0.09%    0.08%          │   │  0x00007f089d26bdc8: add    $0xffffff9f,%r10d
  0.05%    0.08%          │   │  0x00007f089d26bdcc: cmp    $0x1a,%r10d
                          │   │  0x00007f089d26bdd0: jae    0x00007f089d26c66e  ;*caload
                          │   │                                                ; - java.lang.String::indexOf@133 (line 1779)
                          │   │                                                ; - java.lang.String::indexOf@21 (line 1718)
                          │   │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                          │   │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                          │   │                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.02%    0.03%          ↘   │  0x00007f089d26bdd6: mov    $0x1,%ebp          ;*if_icmpgt
                              │                                                ; - com.google.re2j.Utils::isWordRune@15 (line 149)
                              │                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                              │                                                ; - com.google.re2j.Machine::match@121 (line 201)
  0.14%    0.31%              │  0x00007f089d26bddb: cmp    $0x1a,%ecx
                           ╭  │  0x00007f089d26bdde: jb     0x00007f089d26bdf3  ;*getfield pcsl
                           │  │                                                ; - com.google.re2j.Machine$Queue::add@8 (line 57)
                           │  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                           │  │                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.08%    0.09%           │  │  0x00007f089d26bde0: mov    0x44(%rsp),%r10d
  0.09%    0.10%           │  │  0x00007f089d26bde5: add    $0xffffff9f,%r10d
  0.06%    0.06%           │  │  0x00007f089d26bde9: cmp    $0x1a,%r10d
                           │  │  0x00007f089d26bded: jae    0x00007f089d26c644  ;*ifle
                           │  │                                                ; - com.google.re2j.Machine::match@287 (line 236)
  0.11%    0.21%           ↘  │  0x00007f089d26bdf3: mov    $0x1,%r11d         ;*if_icmpgt
                              │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                              │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                              │                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.10%    0.17%              │  0x00007f089d26bdf9: cmp    %r11d,%ebp
                            ╭ │  0x00007f089d26bdfc: je     0x00007f089d26be09  ;*caload
                            │ │                                                ; - java.lang.String::charAt@27 (line 660)
                            │ │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                            │ │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                            │ │                                                ; - com.google.re2j.Machine::match@226 (line 225)
  0.04%    0.06%            │ │  0x00007f089d26bdfe: or     $0x10,%r9d
  0.00%    0.02%            │ │  0x00007f089d26be02: mov    %r9d,0x68(%rsp)
  0.10%    0.08%            │╭│  0x00007f089d26be07: jmp    0x00007f089d26be12
  0.04%    0.09%            ↘││  0x00007f089d26be09: or     $0x20,%r9d
  0.00%    0.04%             ││  0x00007f089d26be0d: mov    %r9d,0x68(%rsp)    ;*ishl
                             ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                             ││                                                ; - com.google.re2j.Machine::match@96 (line 195)
  0.21%    0.29%             ↘│  0x00007f089d26be12: mov    0x18(%rsp),%r11d
  0.09%    0.10%              │  0x00007f089d26be17: cmp    %r8d,%r11d
                              │  0x00007f089d26be1a: je     0x00007f089d26c172  ;*invokestatic codePointAt
                              │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                              │                                                ; - com.google.re2j.Machine::match@249 (line 228)
  0.09%    0.08%              │  0x00007f089d26be20: mov    %rax,-0x8(%rsp)
  0.16%    0.13%              │  0x00007f089d26be25: mov    0x18(%rsp),%eax
  0.25%    0.24%              │  0x00007f089d26be29: mov    %eax,0x70(%rsp)
  0.10%    0.15%              │  0x00007f089d26be2d: mov    -0x8(%rsp),%rax
  0.13%    0.11%              │  0x00007f089d26be32: xor    %r10d,%r10d
  0.05%    0.05%              │  0x00007f089d26be35: mov    %r10d,0x6c(%rsp)
  0.19%    0.22%              │  0x00007f089d26be3a: movzbl 0x18(%r12,%rbx,8),%r10d  ;*if_icmpgt
                              │                                                ; - com.google.re2j.Utils::isWordRune@15 (line 149)
                              │                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                              │                                                ; - com.google.re2j.Machine::match@121 (line 201)
                              │                                                ; implicit exception: dispatches to 0x00007f089d26e181
  0.08%    0.07%              │  0x00007f089d26be40: mov    %r10d,0x80(%rsp)
  0.07%    0.11%              │  0x00007f089d26be48: mov    0x74(%rsp),%r10d
  0.05%    0.04%              │  0x00007f089d26be4d: mov    0xc(%r12,%r10,8),%r10d  ;*invokevirtual contains
                              │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                              │                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.35%    0.20%              │  0x00007f089d26be52: mov    0x70(%rsp),%r9d
  0.12%    0.11%              │  0x00007f089d26be57: add    0x38(%rsp),%r9d    ;*isub
                              │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@33 (line 189)
                              │                                                ; - com.google.re2j.Machine::match@96 (line 195)
  0.15%    0.08%              │  0x00007f089d26be5c: mov    %r9d,0x60(%rsp)
  0.10%    0.04%              │  0x00007f089d26be61: test   %r10d,%r10d
                              │  0x00007f089d26be64: jle    0x00007f089d26c149  ;*caload
                              │                                                ; - java.lang.String::charAt@27 (line 660)
                              │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                              │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                              │                                                ; - com.google.re2j.Machine::match@226 (line 225)
  0.18%    0.11%              │  0x00007f089d26be6a: mov    0x80(%rsp),%r11d
  0.07%    0.12%              │  0x00007f089d26be72: test   %r11d,%r11d
                              │  0x00007f089d26be75: jne    0x00007f089d26cea9  ;*synchronization entry
                              │                                                ; - com.google.re2j.Machine::match@-1 (line 178)
  0.07%    0.07%              │  0x00007f089d26be7b: xor    %r8d,%r8d
  0.06%    0.06%              │  0x00007f089d26be7e: mov    %r8d,0x98(%rsp)
  0.11%    0.10%              │  0x00007f089d26be86: jmpq   0x00007f089d26bf8b  ;*invokestatic indexOf
                              │                                                ; - java.lang.String::indexOf@21 (line 1718)
                              │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                              │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                              │                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.26%    0.21%              │  0x00007f089d26be8b: mov    0x1c(%r9),%r11d
  0.08%    0.01%              │  0x00007f089d26be8f: mov    %rbx,%r8
                              │  0x00007f089d26be92: shl    $0x3,%r8           ;*invokevirtual indexOf
                              │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                              │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                              │                                                ; - com.google.re2j.Machine::match@206 (line 220)
                              │  0x00007f089d26be96: mov    %r11,%rsi
  0.21%    0.18%              │  0x00007f089d26be99: shl    $0x3,%rsi          ;*if_icmpgt
                              │                                                ; - java.lang.String::indexOf@76 (line 1772)
                              │                                                ; - java.lang.String::indexOf@21 (line 1718)
                              │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                              │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                              │                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.04%    0.00%              │  0x00007f089d26be9d: mov    0x58(%rsp),%rdx
  0.01%                       │  0x00007f089d26bea2: mov    0x60(%rsp),%ecx
                              │  0x00007f089d26bea6: mov    0x68(%rsp),%r9d
  0.22%    0.17%              │  0x00007f089d26beab: mov    0x90(%rsp),%rdi
                              │  0x00007f089d26beb3: mov    0x78(%rsp),%r10
  0.03%                       │  0x00007f089d26beb8: mov    %r10,(%rsp)
  0.04%                       │  0x00007f089d26bebc: mov    0x64(%rsp),%ebp
  0.20%    0.19%              │  0x00007f089d26bec0: nop
           0.00%              │  0x00007f089d26bec1: movabs $0xffffffffffffffff,%rax
                              │  0x00007f089d26becb: callq  0x00007f089d046220  ; OopMap{[8]=Oop [48]=Oop [88]=Oop [116]=NarrowOop [120]=Oop off=1872}
                              │                                                ;*invokevirtual add
                              │                                                ; - com.google.re2j.Machine::step@213 (line 300)
                              │                                                ; - com.google.re2j.Machine::match@356 (line 242)
                              │                                                ;   {virtual_call}
  0.02%    0.00%              │  0x00007f089d26bed0: mov    0x74(%rsp),%r11d
  0.06%    0.09%              │  0x00007f089d26bed5: mov    0xc(%r12,%r11,8),%r10d
  0.14%    0.18%              │  0x00007f089d26beda: test   %rax,%rax
                              ╰  0x00007f089d26bedd: je     0x00007f089d26b9c5  ;*new
                                                                               ; - com.google.re2j.Machine::alloc@30 (line 136)
                                                                               ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                                                               ; - com.google.re2j.Machine::match@315 (line 239)
                                 0x00007f089d26bee3: mov    0x78(%rsp),%r11
                                 0x00007f089d26bee8: mov    0xc(%r11),%r8d     ;*aload_2
                                                                               ; - com.google.re2j.Machine::alloc@43 (line 138)
                                                                               ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                                                               ; - com.google.re2j.Machine::match@315 (line 239)
                                 0x00007f089d26beec: mov    0x24(%r11),%edi    ;*aaload
....................................................................................................
 21.94%   22.65%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Inst$Alt5Inst::add, version 539 (1820 bytes) 

                     # parm4:    rdi:rdi   = &apos;com/google/re2j/Machine$Thread&apos;
                     # parm5:    [sp+0xb0]   = &apos;com/google/re2j/Machine&apos;  (sp of caller)
                     0x00007f089d2483a0: mov    0x8(%rsi),%r10d
                     0x00007f089d2483a4: shl    $0x3,%r10
                     0x00007f089d2483a8: cmp    %r10,%rax
                     0x00007f089d2483ab: jne    0x00007f089d045e20  ;   {runtime_call}
                     0x00007f089d2483b1: data16 xchg %ax,%ax
                     0x00007f089d2483b4: nopl   0x0(%rax,%rax,1)
                     0x00007f089d2483bc: data16 data16 xchg %ax,%ax
                   [Verified Entry Point]
  0.11%    0.12%     0x00007f089d2483c0: mov    %eax,-0x14000(%rsp)
  0.08%    0.06%     0x00007f089d2483c7: push   %rbp
                     0x00007f089d2483c8: sub    $0xa0,%rsp         ;*synchronization entry
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@-1 (line 273)
  0.15%    0.26%     0x00007f089d2483cf: mov    %rdi,%rax
                     0x00007f089d2483d2: mov    %r9d,0x38(%rsp)
  0.01%              0x00007f089d2483d7: mov    %r8,0x30(%rsp)
  0.12%    0.14%     0x00007f089d2483dc: mov    %ecx,0x28(%rsp)
  0.07%    0.10%     0x00007f089d2483e0: mov    %rsi,0x40(%rsp)
                     0x00007f089d2483e5: mov    0x18(%rsi),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@2 (line 273)
  0.01%    0.01%     0x00007f089d2483e8: vmovq  %rdx,%xmm0
  0.07%    0.11%     0x00007f089d2483ed: mov    0x10(%rdx),%r8     ;*getfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 273)
                                                                   ; implicit exception: dispatches to 0x00007f089d24991e
  0.08%    0.14%     0x00007f089d2483f1: cmp    $0x40,%ecx
                     0x00007f089d2483f4: jg     0x00007f089d249315  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 273)
  0.00%              0x00007f089d2483fa: mov    $0x1,%r11d
  0.00%              0x00007f089d248400: shl    %cl,%r11           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 273)
  0.20%    0.23%     0x00007f089d248403: mov    %r8,%r10
                     0x00007f089d248406: and    %r11,%r10          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 273)
  0.14%    0.14%     0x00007f089d248409: test   %r10,%r10
                     0x00007f089d24840c: jne    0x00007f089d248b03  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 273)
  0.07%    0.08%     0x00007f089d248412: xor    %ebp,%ebp          ;*ireturn
                                                                   ; - com.google.re2j.Machine$Queue::contains@24 (line 47)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 273)
                     0x00007f089d248414: test   %r10,%r10
                     0x00007f089d248417: jne    0x00007f089d249341  ;*ifeq
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@8 (line 273)
  0.03%    0.00%     0x00007f089d24841d: cmp    $0x40,%ecx
                     0x00007f089d248420: jge    0x00007f089d24935d  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 276)
  0.15%    0.14%     0x00007f089d248426: mov    %r12b,0x18(%rdx)   ;*putfield empty
                                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 276)
  0.07%    0.09%     0x00007f089d24842a: mov    0x1c(%rsi),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@23 (line 278)
                     0x00007f089d24842d: or     %r8,%r11           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 276)
  0.00%    0.01%     0x00007f089d248430: mov    %r11,0x10(%rdx)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 276)
  0.08%    0.09%     0x00007f089d248434: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007f089d249931
  0.08%    0.08%     0x00007f089d248439: cmp    $0xf8019993,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
  0.00%              0x00007f089d248440: jne    0x00007f089d2491dd
  0.01%    0.01%     0x00007f089d248446: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.08%    0.22%     0x00007f089d24844a: mov    0x18(%r10),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.06%    0.12%     0x00007f089d24844e: cmp    $0x40,%ecx
                     0x00007f089d248451: jg     0x00007f089d249389  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
                     0x00007f089d248457: mov    $0x1,%r8d
  0.00%    0.01%     0x00007f089d24845d: shl    %cl,%r8            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.14%    0.25%     0x00007f089d248460: mov    %r11,%r9
  0.00%    0.01%     0x00007f089d248463: and    %r8,%r9            ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.12%    0.13%     0x00007f089d248466: test   %r9,%r9
                     0x00007f089d248469: jne    0x00007f089d248b0d  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.10%    0.09%     0x00007f089d24846f: xor    %ebp,%ebp          ;*ireturn
                                                                   ; - com.google.re2j.Machine$Queue::contains@24 (line 47)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.00%              0x00007f089d248471: test   %r9,%r9
                     0x00007f089d248474: jne    0x00007f089d2493d1  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.02%    0.01%     0x00007f089d24847a: cmp    $0x40,%ecx
                     0x00007f089d24847d: jge    0x00007f089d249419  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.10%    0.15%     0x00007f089d248483: or     %r8,%r11           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.03%    0.13%     0x00007f089d248486: mov    %r11,0x10(%rdx)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
                     0x00007f089d24848a: mov    %r10,%r8
           0.03%     0x00007f089d24848d: shr    $0x3,%r8           ;*putfield inst
                                                                   ; - com.google.re2j.Machine::alloc@45 (line 138)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.10%    0.22%     0x00007f089d248491: mov    $0xf8019cb7,%r9d   ;   {metadata(&apos;com/google/re2j/Machine$Thread&apos;)}
  0.05%    0.13%     0x00007f089d248497: shl    $0x3,%r9
                     0x00007f089d24849b: mov    %r9,(%rsp)
  0.01%    0.01%     0x00007f089d24849f: test   %rdi,%rdi
                  ╭  0x00007f089d2484a2: jne    0x00007f089d248add  ;*ifnonnull
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@24 (line 98)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.10%    0.14%  │  0x00007f089d2484a8: mov    0xb0(%rsp),%r14
  0.05%    0.09%  │  0x00007f089d2484b0: mov    0xc(%r14),%ecx     ;*getfield poolSize
                  │                                                ; - com.google.re2j.Machine::alloc@1 (line 132)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
                  │                                                ; implicit exception: dispatches to 0x00007f089d249a29
                  │  0x00007f089d2484b4: test   %ecx,%ecx
                  │  0x00007f089d2484b6: jle    0x00007f089d248f6b  ;*ifle
                  │                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.01%    0.01%  │  0x00007f089d2484bc: mov    0x24(%r14),%edi    ;*getfield pool
                  │                                                ; - com.google.re2j.Machine::alloc@18 (line 134)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.11%    0.11%  │  0x00007f089d2484c0: mov    %ecx,%ebp
  0.10%    0.08%  │  0x00007f089d2484c2: dec    %ebp               ;*isub
                  │                                                ; - com.google.re2j.Machine::alloc@13 (line 133)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
                  │  0x00007f089d2484c4: mov    %ebp,0xc(%r14)     ;*putfield poolSize
                  │                                                ; - com.google.re2j.Machine::alloc@14 (line 133)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.01%    0.01%  │  0x00007f089d2484c8: mov    0xc(%r12,%rdi,8),%ebx  ; implicit exception: dispatches to 0x00007f089d249a3d
  0.16%    0.19%  │  0x00007f089d2484cd: cmp    %ebx,%ebp
                  │  0x00007f089d2484cf: jae    0x00007f089d2492c1
  0.08%    0.18%  │  0x00007f089d2484d5: lea    (%r12,%rdi,8),%r9
                  │  0x00007f089d2484d9: mov    0xc(%r9,%rcx,4),%r9d  ;*aaload
                  │                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
                  │  0x00007f089d2484de: test   %r9d,%r9d
                  │  0x00007f089d2484e1: je     0x00007f089d249301  ;*putfield inst
                  │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.11%    0.14%  │  0x00007f089d2484e7: mov    %r9,%rax
  0.06%    0.06%  │  0x00007f089d2484ea: shl    $0x3,%rax          ;*aload_2
                  │                                                ; - com.google.re2j.Machine::alloc@43 (line 138)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.04%    0.02%  │  0x00007f089d2484ee: mov    %r8d,0x10(%rax)
  1.54%    1.84%  │  0x00007f089d2484f2: mov    %rax,%r10
                  │  0x00007f089d2484f5: shr    $0x9,%r10
  0.00%           │  0x00007f089d2484f9: movabs $0x7f08ae3fd000,%r8
                  │  0x00007f089d248503: mov    %r12b,(%r8,%r10,1)  ;*aload_3
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@44 (line 103)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.22%    0.36%  │  0x00007f089d248507: mov    0x30(%rsp),%r9
                  │  0x00007f089d24850c: mov    0xc(%r9),%ebp      ;*arraylength
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@45 (line 103)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
                  │                                                ; implicit exception: dispatches to 0x00007f089d249949
  0.00%           │  0x00007f089d248510: test   %ebp,%ebp
                  │  0x00007f089d248512: jg     0x00007f089d249465  ;*ifle
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
                  │  0x00007f089d248518: vmovq  %xmm0,%r10
  0.15%    0.18%  │  0x00007f089d24851d: mov    0xc(%r10),%ebx     ;*getfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
                  │  0x00007f089d248521: mov    0x20(%r10),%edx    ;*getfield denseThreads
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.00%           │  0x00007f089d248525: mov    %ebx,%esi
                  │  0x00007f089d248527: inc    %esi               ;*iadd
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.19%    0.26%  │  0x00007f089d248529: mov    %esi,0xc(%r10)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
                  │  0x00007f089d24852d: mov    0xc(%r12,%rdx,8),%edi  ; implicit exception: dispatches to 0x00007f089d249959
                  │  0x00007f089d248532: cmp    %edi,%ebx
                  │  0x00007f089d248534: jae    0x00007f089d249056  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
                  │  0x00007f089d24853a: mov    0x40(%rsp),%r10
  0.19%    0.21%  │  0x00007f089d24853f: mov    0x20(%r10),%r8d    ;*getfield inst2
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@41 (line 279)
  0.01%           │  0x00007f089d248543: mov    %rax,%r10
                  │  0x00007f089d248546: shr    $0x3,%r10          ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
                  │  0x00007f089d24854a: lea    (%r12,%rdx,8),%rax  ;*getfield denseThreads
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.13%    0.28%  │  0x00007f089d24854e: lea    0x10(%rax,%rbx,4),%rcx
           0.00%  │  0x00007f089d248553: mov    %r10d,(%rcx)
  0.00%           │  0x00007f089d248556: mov    %rcx,%r10
  0.00%    0.00%  │  0x00007f089d248559: shr    $0x9,%r10
  0.14%    0.25%  │  0x00007f089d24855d: movabs $0x7f08ae3fd000,%rcx
           0.01%  │  0x00007f089d248567: mov    %r12b,(%rcx,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
           0.01%  │  0x00007f089d24856b: mov    0x8(%r12,%r8,8),%r10d  ; implicit exception: dispatches to 0x00007f089d249975
  0.92%    0.47%  │  0x00007f089d248570: cmp    $0xf8019993,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │  0x00007f089d248577: jne    0x00007f089d249205
  0.14%    0.12%  │  0x00007f089d24857d: lea    (%r12,%r8,8),%rbp  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
                  │  0x00007f089d248581: mov    0x18(%rbp),%r10d   ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.01%    0.02%  │  0x00007f089d248585: cmp    $0x40,%r10d
                  │  0x00007f089d248589: jg     0x00007f089d249495  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.02%    0.01%  │  0x00007f089d24858f: mov    $0x1,%r13d
  0.11%    0.10%  │  0x00007f089d248595: mov    %r10d,%ecx
                  │  0x00007f089d248598: shl    %cl,%r13           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.22%    0.09%  │  0x00007f089d24859b: mov    %r11,%r8
                  │  0x00007f089d24859e: and    %r13,%r8           ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
                  │  0x00007f089d2485a1: test   %r8,%r8
                  │  0x00007f089d2485a4: jne    0x00007f089d248b17  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.04%           │  0x00007f089d2485aa: mov    %rbp,0x48(%rsp)
  0.16%    0.10%  │  0x00007f089d2485af: mov    %rax,0x8(%rsp)
                  │  0x00007f089d2485b4: mov    %edi,0xb4(%rsp)
  0.00%           │  0x00007f089d2485bb: mov    %esi,0x1c(%rsp)
  0.02%           │  0x00007f089d2485bf: mov    %edx,0x18(%rsp)
  0.18%    0.12%  │  0x00007f089d2485c3: mov    %ebx,0xb0(%rsp)
                  │  0x00007f089d2485ca: vmovq  %xmm0,%r9
                  │  0x00007f089d2485cf: xor    %ebp,%ebp          ;*ireturn
                  │                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 47)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.02%           │  0x00007f089d2485d1: test   %r8,%r8
                  │  0x00007f089d2485d4: jne    0x00007f089d2494e1  ;*ifeq
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.19%    0.11%  │  0x00007f089d2485da: cmp    $0x40,%r10d
                  │  0x00007f089d2485de: jge    0x00007f089d249519  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
                  │  0x00007f089d2485e4: or     %r13,%r11          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.00%    0.00%  │  0x00007f089d2485e7: mov    %r11,0x10(%r9)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.03%    0.00%  │  0x00007f089d2485eb: mov    0xc(%r14),%ebp     ;*getfield poolSize
                  │                                                ; - com.google.re2j.Machine::alloc@1 (line 132)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
                  │                                                ; implicit exception: dispatches to 0x00007f089d249991
  0.16%    0.20%  │  0x00007f089d2485ef: mov    %r11,0x10(%rsp)
                  │  0x00007f089d2485f4: mov    %r14,0x58(%rsp)
                  │  0x00007f089d2485f9: mov    %r9,0x50(%rsp)
  0.02%    0.01%  │  0x00007f089d2485fe: mov    0x24(%r14),%r10d   ;*getfield pool
                  │                                                ; - com.google.re2j.Machine::alloc@18 (line 134)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.16%    0.14%  │  0x00007f089d248602: mov    %r10d,0x2c(%rsp)
                  │  0x00007f089d248607: mov    0x28(%r14),%r11d   ;*getfield matchcap
                  │                                                ; - com.google.re2j.Machine::alloc@35 (line 136)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.00%           │  0x00007f089d24860b: mov    %r11d,0x20(%rsp)
  0.02%    0.02%  │  0x00007f089d248610: test   %ebp,%ebp
                  │  0x00007f089d248612: jle    0x00007f089d248b65  ;*ifle
                  │                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.15%    0.14%  │  0x00007f089d248618: mov    %ebp,%r10d
                  │  0x00007f089d24861b: dec    %r10d              ;*isub
                  │                                                ; - com.google.re2j.Machine::alloc@13 (line 133)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
                  │  0x00007f089d24861e: mov    %r10d,0x3c(%rsp)
  0.03%    0.00%  │  0x00007f089d248623: mov    0x3c(%rsp),%r11d
  0.17%    0.12%  │  0x00007f089d248628: mov    %r11d,0xc(%r14)    ;*putfield poolSize
                  │                                                ; - com.google.re2j.Machine::alloc@14 (line 133)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.00%           │  0x00007f089d24862c: mov    0x2c(%rsp),%r10d
  0.01%    0.00%  │  0x00007f089d248631: mov    0xc(%r12,%r10,8),%r10d  ; implicit exception: dispatches to 0x00007f089d2499dd
  0.01%    0.02%  │  0x00007f089d248636: cmp    %r10d,%r11d
                  │  0x00007f089d248639: jae    0x00007f089d249109
  0.19%    0.05%  │  0x00007f089d24863f: mov    0x2c(%rsp),%r11d
  0.00%    0.00%  │  0x00007f089d248644: lea    (%r12,%r11,8),%r10
                  │  0x00007f089d248648: mov    0xc(%r10,%rbp,4),%r11d
  0.03%    0.03%  │  0x00007f089d24864d: mov    %r11,%rbp
  0.20%    0.06%  │  0x00007f089d248650: shl    $0x3,%rbp          ;*aaload
                  │                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
                  │  0x00007f089d248654: mov    %rbp,0x60(%rsp)    ;*getfield poolSize
                  │                                                ; - com.google.re2j.Machine::alloc@1 (line 132)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.00%           │  0x00007f089d248659: mov    0x60(%rsp),%rbp
  0.09%    0.12%  │  0x00007f089d24865e: test   %rbp,%rbp
                  │  0x00007f089d248661: je     0x00007f089d249081  ;*putfield inst
                  │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.13%    0.07%  │  0x00007f089d248667: mov    %rbp,%r8
                  │  0x00007f089d24866a: mov    0xb0(%rsp),%r10d
  0.01%           │  0x00007f089d248672: add    $0x2,%r10d         ;*iadd
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.01%    0.01%  │  0x00007f089d248676: mov    %r10d,0x24(%rsp)
  0.14%    0.07%  │  0x00007f089d24867b: mov    0x50(%rsp),%r10
                  │  0x00007f089d248680: mov    0x24(%rsp),%r11d
  0.14%    0.04%  │  0x00007f089d248685: mov    %r11d,0xc(%r10)    ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.02%    0.02%  │  0x00007f089d248689: shr    $0x9,%r8
  0.18%    0.08%  │  0x00007f089d24868d: movabs $0x7f08ae3fd000,%r10
                  │  0x00007f089d248697: mov    %r12b,(%r10,%r8,1)
  0.22%    0.25%  │  0x00007f089d24869b: mov    0x48(%rsp),%r10
  0.02%           │  0x00007f089d2486a0: shr    $0x3,%r10
  0.14%    0.01%  │  0x00007f089d2486a4: mov    %r10d,0x10(%rbp)   ;*putfield inst
                  │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.04%    0.06%  │  0x00007f089d2486a8: mov    0x1c(%rsp),%ebp
  0.03%    0.04%  │  0x00007f089d2486ac: cmp    0xb4(%rsp),%ebp
                  │  0x00007f089d2486b3: jae    0x00007f089d249091  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.02%    0.00%  │  0x00007f089d2486b9: mov    0x40(%rsp),%r10
  0.14%    0.01%  │  0x00007f089d2486be: mov    0x24(%r10),%r10d   ;*getfield inst3
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@59 (line 280)
  0.03%    0.04%  │  0x00007f089d2486c2: mov    %r10d,%ecx
  0.01%    0.06%  │  0x00007f089d2486c5: mov    0x60(%rsp),%r10
  0.03%    0.02%  │  0x00007f089d2486ca: mov    %r10,%r11
  0.12%    0.04%  │  0x00007f089d2486cd: shr    $0x3,%r11
  0.00%    0.01%  │  0x00007f089d2486d1: movslq 0xb0(%rsp),%r10
  0.07%    0.02%  │  0x00007f089d2486d9: mov    0x8(%rsp),%r8
                  │  0x00007f089d2486de: lea    (%r8,%r10,4),%r10  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.09%    0.19%  │  0x00007f089d2486e2: mov    %r10,0x48(%rsp)
  0.02%    0.03%  │  0x00007f089d2486e7: add    $0x14,%r10
  0.07%    0.05%  │  0x00007f089d2486eb: mov    %r11d,(%r10)
  0.01%           │  0x00007f089d2486ee: shr    $0x9,%r10
  0.08%    0.04%  │  0x00007f089d2486f2: movabs $0x7f08ae3fd000,%r11
  0.01%    0.02%  │  0x00007f089d2486fc: mov    %r12b,(%r11,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.09%    0.05%  │  0x00007f089d248700: mov    %ecx,%r10d
  0.02%    0.00%  │  0x00007f089d248703: mov    0x8(%r12,%r10,8),%r10d  ; implicit exception: dispatches to 0x00007f089d2499a1
  0.14%    0.17%  │  0x00007f089d248708: cmp    $0xf8019993,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │  0x00007f089d24870f: jne    0x00007f089d24923d
  0.00%    0.03%  │  0x00007f089d248715: mov    %ecx,%r10d
  0.06%    0.05%  │  0x00007f089d248718: shl    $0x3,%r10          ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
           0.01%  │  0x00007f089d24871c: mov    %r10,0x60(%rsp)
  0.13%    0.07%  │  0x00007f089d248721: mov    0x18(%r10),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.03%    0.02%  │  0x00007f089d248725: cmp    $0x40,%ecx
                  │  0x00007f089d248728: jg     0x00007f089d249561  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.02%    0.06%  │  0x00007f089d24872e: mov    $0x1,%r10d
  0.00%    0.01%  │  0x00007f089d248734: shl    %cl,%r10           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.13%    0.26%  │  0x00007f089d248737: mov    0x10(%rsp),%r11
           0.03%  │  0x00007f089d24873c: and    %r10,%r11          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.10%    0.19%  │  0x00007f089d24873f: test   %r11,%r11
                  │  0x00007f089d248742: jne    0x00007f089d248b46  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.03%    0.01%  │  0x00007f089d248748: xor    %ebp,%ebp          ;*ireturn
                  │                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 47)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.05%    0.04%  │  0x00007f089d24874a: test   %r11,%r11
                  │  0x00007f089d24874d: jne    0x00007f089d2495ad  ;*ifeq
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.01%    0.00%  │  0x00007f089d248753: cmp    $0x40,%ecx
                  │  0x00007f089d248756: jge    0x00007f089d2495ed  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.09%    0.11%  │  0x00007f089d24875c: mov    0x10(%rsp),%r11
  0.02%    0.03%  │  0x00007f089d248761: or     %r10,%r11          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.05%    0.05%  │  0x00007f089d248764: mov    %r11,0x10(%rsp)
  0.02%    0.02%  │  0x00007f089d248769: mov    0x50(%rsp),%r10
  0.09%    0.11%  │  0x00007f089d24876e: mov    %r11,0x10(%r10)    ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.02%    0.02%  │  0x00007f089d248772: mov    0x3c(%rsp),%r10d
  0.04%    0.02%  │  0x00007f089d248777: test   %r10d,%r10d
                  │  0x00007f089d24877a: jle    0x00007f089d248c7a  ;*ifle
                  │                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.01%    0.01%  │  0x00007f089d248780: mov    0x3c(%rsp),%r11d
  0.12%    0.12%  │  0x00007f089d248785: dec    %r11d              ;*isub
                  │                                                ; - com.google.re2j.Machine::alloc@13 (line 133)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.03%    0.03%  │  0x00007f089d248788: mov    %r11d,0x68(%rsp)
  0.01%    0.02%  │  0x00007f089d24878d: mov    0x58(%rsp),%r10
           0.00%  │  0x00007f089d248792: mov    %r11d,0xc(%r10)    ;*putfield poolSize
                  │                                                ; - com.google.re2j.Machine::alloc@14 (line 133)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.11%    0.13%  │  0x00007f089d248796: mov    0x2c(%rsp),%r11d
  0.02%    0.01%  │  0x00007f089d24879b: mov    0xc(%r12,%r11,8),%r10d  ; implicit exception: dispatches to 0x00007f089d2499f1
  0.04%    0.01%  │  0x00007f089d2487a0: mov    0x68(%rsp),%r11d
  0.07%    0.02%  │  0x00007f089d2487a5: cmp    %r10d,%r11d
                  │  0x00007f089d2487a8: jae    0x00007f089d24913d
  0.09%    0.20%  │  0x00007f089d2487ae: mov    0x2c(%rsp),%r11d
  0.03%    0.01%  │  0x00007f089d2487b3: lea    (%r12,%r11,8),%r10
  0.04%    0.02%  │  0x00007f089d2487b7: mov    0x3c(%rsp),%r11d
  0.01%    0.02%  │  0x00007f089d2487bc: mov    0xc(%r10,%r11,4),%r11d
  0.16%    0.14%  │  0x00007f089d2487c1: mov    %r11,%r10
  0.03%    0.01%  │  0x00007f089d2487c4: shl    $0x3,%r10          ;*aaload
                  │                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.04%    0.02%  │  0x00007f089d2487c8: mov    %r10,0x70(%rsp)    ;*aload_2
                  │                                                ; - com.google.re2j.Machine::alloc@43 (line 138)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.00%    0.02%  │  0x00007f089d2487cd: mov    0x70(%rsp),%r10
  0.29%    0.27%  │  0x00007f089d2487d2: test   %r10,%r10
                  │  0x00007f089d2487d5: je     0x00007f089d2490a1  ;*putfield inst
                  │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.03%    0.03%  │  0x00007f089d2487db: mov    0xb0(%rsp),%r11d
  0.05%           │  0x00007f089d2487e3: add    $0x3,%r11d         ;*iadd
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.00%    0.00%  │  0x00007f089d2487e7: mov    %r11d,0x1c(%rsp)
  0.16%    0.12%  │  0x00007f089d2487ec: mov    0x50(%rsp),%r11
  0.01%    0.03%  │  0x00007f089d2487f1: mov    0x1c(%rsp),%r9d
  0.10%    0.02%  │  0x00007f089d2487f6: mov    %r9d,0xc(%r11)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.02%    0.02%  │  0x00007f089d2487fa: shr    $0x9,%r10
  0.11%    0.11%  │  0x00007f089d2487fe: movabs $0x7f08ae3fd000,%r11
  0.00%           │  0x00007f089d248808: mov    %r12b,(%r11,%r10,1)
  0.28%    0.23%  │  0x00007f089d24880c: mov    0x60(%rsp),%r10
  0.02%           │  0x00007f089d248811: shr    $0x3,%r10
  0.08%    0.12%  │  0x00007f089d248815: mov    0x70(%rsp),%r11
  0.01%           │  0x00007f089d24881a: mov    %r10d,0x10(%r11)   ;*putfield inst
                  │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.18%    0.16%  │  0x00007f089d24881e: mov    0x24(%rsp),%r10d
  0.01%           │  0x00007f089d248823: cmp    0xb4(%rsp),%r10d
                  │  0x00007f089d24882b: jae    0x00007f089d2490b5
  0.08%    0.10%  │  0x00007f089d248831: mov    0x48(%rsp),%r10
  0.00%    0.00%  │  0x00007f089d248836: add    $0x18,%r10         ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.09%    0.08%  │  0x00007f089d24883a: mov    0x40(%rsp),%r11
           0.00%  │  0x00007f089d24883f: mov    0x28(%r11),%ebp    ;*getfield inst4
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 281)
  0.16%    0.17%  │  0x00007f089d248843: mov    0x70(%rsp),%r11
  0.02%    0.01%  │  0x00007f089d248848: shr    $0x3,%r11
  0.05%    0.07%  │  0x00007f089d24884c: mov    %r11d,(%r10)
  0.00%    0.00%  │  0x00007f089d24884f: shr    $0x9,%r10
  0.11%    0.11%  │  0x00007f089d248853: movabs $0x7f08ae3fd000,%r11
  0.01%    0.00%  │  0x00007f089d24885d: mov    %r12b,(%r11,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.07%    0.11%  │  0x00007f089d248861: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f089d2499b5
  0.34%    0.44%  │  0x00007f089d248866: cmp    $0xf8019993,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │  0x00007f089d24886d: jne    0x00007f089d249285
  0.09%    0.21%  │  0x00007f089d248873: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.00%    0.00%  │  0x00007f089d248877: mov    %r10,0x60(%rsp)
  0.03%    0.02%  │  0x00007f089d24887c: mov    0x18(%r10),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.07%    0.03%  │  0x00007f089d248880: cmp    $0x40,%ecx
                  │  0x00007f089d248883: jg     0x00007f089d249639  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.13%    0.22%  │  0x00007f089d248889: mov    $0x1,%r10d
  0.03%    0.00%  │  0x00007f089d24888f: shl    %cl,%r10           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.33%    0.35%  │  0x00007f089d248892: mov    0x10(%rsp),%r11
  0.00%    0.00%  │  0x00007f089d248897: and    %r10,%r11          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.04%    0.03%  │  0x00007f089d24889a: test   %r11,%r11
                  │  0x00007f089d24889d: jne    0x00007f089d248b50  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.02%    0.02%  │  0x00007f089d2488a3: xor    %ebp,%ebp          ;*ireturn
                  │                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 47)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.16%    0.14%  │  0x00007f089d2488a5: test   %r11,%r11
                  │  0x00007f089d2488a8: jne    0x00007f089d249685  ;*ifeq
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.05%    0.04%  │  0x00007f089d2488ae: cmp    $0x40,%ecx
                  │  0x00007f089d2488b1: jge    0x00007f089d2496c5  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.09%    0.08%  │  0x00007f089d2488b7: mov    0x10(%rsp),%r11
  0.00%           │  0x00007f089d2488bc: or     %r10,%r11          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.05%    0.08%  │  0x00007f089d2488bf: mov    %r11,0x10(%rsp)
  0.04%    0.04%  │  0x00007f089d2488c4: mov    0x50(%rsp),%r10
  0.08%    0.12%  │  0x00007f089d2488c9: mov    %r11,0x10(%r10)    ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.00%    0.00%  │  0x00007f089d2488cd: mov    0x68(%rsp),%r11d
  0.04%    0.07%  │  0x00007f089d2488d2: test   %r11d,%r11d
                  │  0x00007f089d2488d5: jle    0x00007f089d248d7d  ;*ifle
                  │                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.04%    0.03%  │  0x00007f089d2488db: mov    0x68(%rsp),%r10d
  0.08%    0.06%  │  0x00007f089d2488e0: dec    %r10d              ;*isub
                  │                                                ; - com.google.re2j.Machine::alloc@13 (line 133)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.01%    0.00%  │  0x00007f089d2488e3: mov    0x58(%rsp),%r11
  0.05%    0.08%  │  0x00007f089d2488e8: mov    %r10d,0xc(%r11)    ;*putfield poolSize
                  │                                                ; - com.google.re2j.Machine::alloc@14 (line 133)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.05%    0.04%  │  0x00007f089d2488ec: mov    0x2c(%rsp),%r11d
  0.12%    0.10%  │  0x00007f089d2488f1: mov    0xc(%r12,%r11,8),%r8d  ; implicit exception: dispatches to 0x00007f089d249a05
  0.00%    0.01%  │  0x00007f089d2488f6: cmp    %r8d,%r10d
                  │  0x00007f089d2488f9: jae    0x00007f089d249179
  0.07%    0.07%  │  0x00007f089d2488ff: shl    $0x3,%r11
  0.04%    0.03%  │  0x00007f089d248903: mov    0x68(%rsp),%r8d
  0.04%    0.07%  │  0x00007f089d248908: mov    0xc(%r11,%r8,4),%r11d
  0.01%           │  0x00007f089d24890d: shl    $0x3,%r11          ;*aaload
                  │                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.09%    0.07%  │  0x00007f089d248911: mov    %r11,0x70(%rsp)    ;*aload_2
                  │                                                ; - com.google.re2j.Machine::alloc@43 (line 138)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.01%    0.03%  │  0x00007f089d248916: mov    0x70(%rsp),%r11
  0.09%    0.07%  │  0x00007f089d24891b: test   %r11,%r11
                  │  0x00007f089d24891e: je     0x00007f089d2490d1  ;*putfield inst
                  │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
           0.01%  │  0x00007f089d248924: mov    0xb0(%rsp),%r8d
  0.03%    0.08%  │  0x00007f089d24892c: add    $0x4,%r8d          ;*iadd
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.04%    0.02%  │  0x00007f089d248930: mov    %r8d,0x24(%rsp)
  0.11%    0.09%  │  0x00007f089d248935: mov    0x50(%rsp),%r8
  0.01%    0.01%  │  0x00007f089d24893a: mov    0x24(%rsp),%ecx
  0.28%    0.17%  │  0x00007f089d24893e: mov    %ecx,0xc(%r8)      ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.04%    0.06%  │  0x00007f089d248942: shr    $0x9,%r11
  0.10%    0.05%  │  0x00007f089d248946: movabs $0x7f08ae3fd000,%r8
  0.01%    0.01%  │  0x00007f089d248950: mov    %r12b,(%r8,%r11,1)
  0.22%    0.19%  │  0x00007f089d248954: mov    0x60(%rsp),%r11
  0.02%    0.03%  │  0x00007f089d248959: mov    %r11,%r8
  0.08%    0.03%  │  0x00007f089d24895c: shr    $0x3,%r8
                  │  0x00007f089d248960: mov    0x70(%rsp),%r11
  0.07%    0.10%  │  0x00007f089d248965: mov    %r8d,0x10(%r11)    ;*putfield inst
                  │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.06%    0.02%  │  0x00007f089d248969: mov    0x1c(%rsp),%r11d
  0.04%    0.04%  │  0x00007f089d24896e: cmp    0xb4(%rsp),%r11d
                  │  0x00007f089d248976: jae    0x00007f089d2490e5
  0.01%           │  0x00007f089d24897c: mov    0x48(%rsp),%r11
  0.11%    0.05%  │  0x00007f089d248981: add    $0x1c,%r11         ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.03%    0.02%  │  0x00007f089d248985: mov    0x40(%rsp),%r8
  0.04%    0.01%  │  0x00007f089d24898a: mov    0x2c(%r8),%ebp     ;*getfield inst5
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@95 (line 282)
           0.00%  │  0x00007f089d24898e: mov    0x70(%rsp),%r8
  0.10%    0.09%  │  0x00007f089d248993: mov    %r8,%r9
  0.03%    0.03%  │  0x00007f089d248996: shr    $0x3,%r9
  0.04%    0.03%  │  0x00007f089d24899a: mov    %r9d,(%r11)
  0.01%           │  0x00007f089d24899d: shr    $0x9,%r11
  0.07%    0.09%  │  0x00007f089d2489a1: movabs $0x7f08ae3fd000,%r8
  0.03%    0.04%  │  0x00007f089d2489ab: mov    %r12b,(%r8,%r11,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.05%    0.03%  │  0x00007f089d2489af: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f089d2499c9
           0.00%  │  0x00007f089d2489b4: cmp    $0xf8019993,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │  0x00007f089d2489bb: jne    0x00007f089d2492b1
  0.11%    0.07%  │  0x00007f089d2489c1: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.03%    0.02%  │  0x00007f089d2489c5: mov    %r11,0x38(%rsp)
  0.05%    0.04%  │  0x00007f089d2489ca: mov    0x18(%r11),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
                  │  0x00007f089d2489ce: cmp    $0x40,%ecx
                  │  0x00007f089d2489d1: jg     0x00007f089d249711  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.09%    0.10%  │  0x00007f089d2489d7: mov    $0x1,%r9d
  0.04%    0.03%  │  0x00007f089d2489dd: shl    %cl,%r9            ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.12%    0.12%  │  0x00007f089d2489e0: mov    0x10(%rsp),%r11
  0.02%    0.00%  │  0x00007f089d2489e5: and    %r9,%r11           ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.03%    0.01%  │  0x00007f089d2489e8: test   %r11,%r11
                  │  0x00007f089d2489eb: jne    0x00007f089d248b5a  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
                  │  0x00007f089d2489f1: xor    %r8d,%r8d          ;*ireturn
                  │                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 47)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.05%    0.07%  │  0x00007f089d2489f4: test   %r11,%r11
                  │  0x00007f089d2489f7: jne    0x00007f089d249729  ;*ifeq
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.03%    0.07%  │  0x00007f089d2489fd: cmp    $0x40,%ecx
  0.02%    0.01%  │  0x00007f089d248a00: jge    0x00007f089d249745  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.01%    0.00%  │  0x00007f089d248a06: mov    0x10(%rsp),%r11
  0.05%    0.12%  │  0x00007f089d248a0b: or     %r9,%r11
  0.05%    0.05%  │  0x00007f089d248a0e: mov    0x50(%rsp),%r8
  0.10%    0.05%  │  0x00007f089d248a13: mov    %r11,0x10(%r8)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.02%    0.02%  │  0x00007f089d248a17: test   %r10d,%r10d
                  │  0x00007f089d248a1a: jle    0x00007f089d248e7e  ;*ifle
                  │                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.09%    0.11%  │  0x00007f089d248a20: mov    %r10d,%ebp
  0.04%    0.07%  │  0x00007f089d248a23: dec    %ebp               ;*isub
                  │                                                ; - com.google.re2j.Machine::alloc@13 (line 133)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.06%    0.08%  │  0x00007f089d248a25: mov    0x58(%rsp),%r11
  0.03%    0.01%  │  0x00007f089d248a2a: mov    %ebp,0xc(%r11)     ;*putfield poolSize
                  │                                                ; - com.google.re2j.Machine::alloc@14 (line 133)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.08%    0.09%  │  0x00007f089d248a2e: mov    0x2c(%rsp),%r11d
  0.05%    0.08%  │  0x00007f089d248a33: mov    0xc(%r12,%r11,8),%r9d  ; implicit exception: dispatches to 0x00007f089d249a19
  0.07%    0.05%  │  0x00007f089d248a38: cmp    %r9d,%ebp
                  │  0x00007f089d248a3b: jae    0x00007f089d2491b9
  0.00%    0.02%  │  0x00007f089d248a41: shl    $0x3,%r11
  0.06%    0.06%  │  0x00007f089d248a45: mov    0xc(%r11,%r10,4),%r10d  ;*aaload
                  │                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.03%    0.08%  │  0x00007f089d248a4a: test   %r10d,%r10d
                  │  0x00007f089d248a4d: je     0x00007f089d2491c9  ;*putfield inst
                  │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.06%    0.02%  │  0x00007f089d248a53: mov    %r10,%r11
  0.00%    0.01%  │  0x00007f089d248a56: shl    $0x3,%r11          ;*aload_2
                  │                                                ; - com.google.re2j.Machine::alloc@43 (line 138)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.06%    0.10%  │  0x00007f089d248a5a: mov    %r11,%r10
  0.05%    0.07%  │  0x00007f089d248a5d: mov    0xb0(%rsp),%r8d
  0.07%    0.06%  │  0x00007f089d248a65: add    $0x5,%r8d
  0.01%    0.01%  │  0x00007f089d248a69: mov    0x50(%rsp),%r9
  0.05%    0.07%  │  0x00007f089d248a6e: mov    %r8d,0xc(%r9)      ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.05%    0.08%  │  0x00007f089d248a72: shr    $0x9,%r10
  0.08%    0.07%  │  0x00007f089d248a76: movabs $0x7f08ae3fd000,%r8
  0.01%    0.01%  │  0x00007f089d248a80: mov    %r12b,(%r8,%r10,1)
  0.12%    0.15%  │  0x00007f089d248a84: mov    0x38(%rsp),%r10
  0.04%    0.08%  │  0x00007f089d248a89: shr    $0x3,%r10
  0.03%    0.04%  │  0x00007f089d248a8d: mov    %r10d,0x10(%r11)   ;*putfield inst
                  │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.02%    0.05%  │  0x00007f089d248a91: mov    0x24(%rsp),%r8d
  0.06%    0.06%  │  0x00007f089d248a96: cmp    0xb4(%rsp),%r8d
                  │  0x00007f089d248a9e: jae    0x00007f089d2490f5
  0.06%    0.07%  │  0x00007f089d248aa4: mov    0x48(%rsp),%r8
  0.05%    0.07%  │  0x00007f089d248aa9: add    $0x20,%r8
  0.02%    0.03%  │  0x00007f089d248aad: mov    %r11,%r10
  0.08%    0.07%  │  0x00007f089d248ab0: shr    $0x3,%r10
  0.03%    0.07%  │  0x00007f089d248ab4: mov    %r10d,(%r8)
  0.05%    0.06%  │  0x00007f089d248ab7: mov    %r8,%r10
  0.02%    0.03%  │  0x00007f089d248aba: shr    $0x9,%r10
  0.09%    0.11%  │  0x00007f089d248abe: movabs $0x7f08ae3fd000,%r11
  0.04%    0.03%  │  0x00007f089d248ac8: mov    %r12b,(%r11,%r10,1)  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 273)
  0.04%    0.05%  │  0x00007f089d248acc: xor    %eax,%eax
  0.01%    0.02%  │  0x00007f089d248ace: add    $0xa0,%rsp
  0.06%    0.16%  │  0x00007f089d248ad5: pop    %rbp
  0.04%    0.08%  │  0x00007f089d248ad6: test   %eax,0x187ac524(%rip)        # 0x00007f08b59f5000
                  │                                                ;   {poll_return}
  0.04%    0.06%  │  0x00007f089d248adc: retq   
                  ↘  0x00007f089d248add: mov    %r8d,0x10(%rdi)
                     0x00007f089d248ae1: mov    %rdi,%r10
                     0x00007f089d248ae4: shr    $0x9,%r10
                     0x00007f089d248ae8: movabs $0x7f08ae3fd000,%r8
                     0x00007f089d248af2: mov    %r12b,(%r8,%r10,1)  ;*putfield inst
                                                                   ; - com.google.re2j.Inst$MatchInst::add@41 (line 101)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
                     0x00007f089d248af6: mov    0xb0(%rsp),%r14
                     0x00007f089d248afe: jmpq   0x00007f089d248507
....................................................................................................
 21.67%   22.36%  <total for region 3>

....[Hottest Regions]...............................................................................
 35.64%   37.53%         C2, level 4  com.google.re2j.Machine::match, version 583 (410 bytes) 
 21.94%   22.65%         C2, level 4  com.google.re2j.Machine::match, version 583 (1583 bytes) 
 21.67%   22.36%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 539 (1820 bytes) 
  5.97%    7.69%         C2, level 4  com.google.re2j.Inst$Alt2Inst::add, version 532 (542 bytes) 
  2.90%    1.87%         C2, level 4  com.google.re2j.Inst$Alt2Inst::add, version 532 (215 bytes) 
  2.60%    1.79%         C2, level 4  com.google.re2j.Inst$Alt2Inst::add, version 532 (290 bytes) 
  1.93%    1.33%         C2, level 4  com.google.re2j.Inst$Alt2Inst::add, version 532 (181 bytes) 
  1.54%    0.69%         C1, level 3  sun.invoke.util.VerifyType::isNullConversion, version 196 (14 bytes) 
  0.96%    0.17%         C2, level 4  com.google.re2j.Machine::init, version 564 (312 bytes) 
  0.57%    0.83%         C2, level 4  com.google.re2j.Machine::match, version 583 (162 bytes) 
  0.54%    0.41%         C2, level 4  com.google.re2j.Inst$MatchInst::add, version 520 (98 bytes) 
  0.54%    0.19%         C2, level 4  com.google.re2j.Inst$MatchInst::add, version 520 (125 bytes) 
  0.20%    0.19%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.17%    0.03%         C2, level 4  com.google.re2j.Machine::init, version 564 (34 bytes) 
  0.16%    0.02%         C2, level 4  com.google.re2j.Machine::init, version 564 (43 bytes) 
  0.12%    0.01%   [kernel.kallsyms]  [unknown] (39 bytes) 
  0.08%    0.05%         C2, level 4  com.google.re2j.Pattern::find, version 576 (0 bytes) 
  0.07%    0.03%   [kernel.kallsyms]  [unknown] (43 bytes) 
  0.06%    0.06%         C2, level 4  com.google.re2j.Pattern::find, version 576 (23 bytes) 
  0.06%    0.01%   [kernel.kallsyms]  [unknown] (28 bytes) 
  2.26%    2.08%  <...other 415 warm regions...>
....................................................................................................
 99.99%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 58.35%   61.19%         C2, level 4  com.google.re2j.Machine::match, version 583 
 21.67%   22.36%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 539 
 13.40%   12.68%         C2, level 4  com.google.re2j.Inst$Alt2Inst::add, version 532 
  1.54%    0.69%         C1, level 3  sun.invoke.util.VerifyType::isNullConversion, version 196 
  1.33%    0.23%         C2, level 4  com.google.re2j.Machine::init, version 564 
  1.19%    0.95%   [kernel.kallsyms]  [unknown] 
  1.09%    0.60%         C2, level 4  com.google.re2j.Inst$MatchInst::add, version 520 
  0.42%    0.25%         C2, level 4  com.google.re2j.Pattern::find, version 576 
  0.04%    0.03%         C2, level 4  java.util.Collections::shuffle, version 611 
  0.04%    0.05%      hsdis-amd64.so  [unknown] 
  0.03%    0.02%           libjvm.so  xmlTextStream::write 
  0.03%    0.02%           libjvm.so  PSPromotionManager::drain_stacks_depth 
  0.03%    0.04%        libc-2.26.so  _IO_fwrite 
  0.03%    0.05%           libjvm.so  RelocIterator::initialize 
  0.02%    0.01%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testCombine_jmhTest::testCombine_thrpt_jmhStub, version 663 
  0.02%    0.00%           libjvm.so  SpinPause 
  0.02%    0.06%           libjvm.so  PSPromotionManager::copy_to_survivor_space<false> 
  0.02%    0.00%  libpthread-2.26.so  __pthread_disable_asynccancel 
  0.02%    0.01%           libjvm.so  ParallelTaskTerminator::offer_termination 
  0.02%    0.00%           libjvm.so  Monitor::unlock 
  0.64%    0.42%  <...other 81 warm methods...>
....................................................................................................
 99.99%   99.68%  <totals>

....[Distribution by Source]........................................................................
 96.35%   97.34%         C2, level 4
  1.55%    0.69%         C1, level 3
  1.19%    0.95%   [kernel.kallsyms]
  0.52%    0.52%           libjvm.so
  0.13%    0.29%        libc-2.26.so
  0.09%    0.08%  libpthread-2.26.so
  0.05%    0.05%      hsdis-amd64.so
  0.05%    0.02%         interpreter
  0.04%    0.02%              [vdso]
  0.00%    0.01%        runtime stub
....................................................................................................
 99.99%  100.00%  <totals>



# Run complete. Total time: 00:00:44

Benchmark                        Mode  Cnt     Score    Error  Units
Re2jFindRegex.testCombine       thrpt   20  6505.837 ± 53.929  ops/s
Re2jFindRegex.testCombine:·asm  thrpt            NaN             ---
