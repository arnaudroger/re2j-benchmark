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
# Warmup Iteration   1: 5860.123 ops/s
# Warmup Iteration   2: 11690.207 ops/s
# Warmup Iteration   3: 11669.094 ops/s
# Warmup Iteration   4: 11784.086 ops/s
# Warmup Iteration   5: 10990.332 ops/s
# Warmup Iteration   6: 11592.582 ops/s
# Warmup Iteration   7: 8940.166 ops/s
# Warmup Iteration   8: 11713.848 ops/s
# Warmup Iteration   9: 11829.800 ops/s
# Warmup Iteration  10: 11330.637 ops/s
# Warmup Iteration  11: 11500.201 ops/s
# Warmup Iteration  12: 11692.103 ops/s
# Warmup Iteration  13: 11556.931 ops/s
# Warmup Iteration  14: 10826.660 ops/s
# Warmup Iteration  15: 10838.871 ops/s
# Warmup Iteration  16: 11425.540 ops/s
# Warmup Iteration  17: 11571.323 ops/s
# Warmup Iteration  18: 11596.222 ops/s
# Warmup Iteration  19: 10848.865 ops/s
# Warmup Iteration  20: 10760.669 ops/s
Iteration   1: 10209.723 ops/s
Iteration   2: 11695.423 ops/s
Iteration   3: 11629.603 ops/s
Iteration   4: 11554.919 ops/s
Iteration   5: 11546.661 ops/s
Iteration   6: 10845.459 ops/s
Iteration   7: 10140.932 ops/s
Iteration   8: 11702.433 ops/s
Iteration   9: 10918.866 ops/s
Iteration  10: 10521.528 ops/s
Iteration  11: 10941.206 ops/s
Iteration  12: 10632.934 ops/s
Iteration  13: 10964.315 ops/s
Iteration  14: 11792.406 ops/s
Iteration  15: 10887.043 ops/s
Iteration  16: 10845.980 ops/s
Iteration  17: 10864.845 ops/s
Iteration  18: 10823.623 ops/s
Iteration  19: 10997.237 ops/s
Iteration  20: 10850.852 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  11018.299 ±(99.9%) 421.230 ops/s [Average]
  (min, avg, max) = (10140.932, 11018.299, 11792.406), stdev = 485.089
  CI (99.9%): [10597.069, 11439.530] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine:·asm":
PrintAssembly processed: 212215 total address lines.
Perf output processed (skipped 23.121 seconds):
 Column 1: cycles (20719 events)
 Column 2: instructions (20690 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 598 (1214 bytes) 

                                                0x00007f1f69270018: jl     0x00007f1f69270997  ;*ifge
                                                                                              ; - com.google.re2j.Utils::emptyOpContext@21 (line 179)
                                                                                              ; - com.google.re2j.Machine::match@121 (line 205)
                                                0x00007f1f6927001e: mov    $0x5,%r11d         ;*iload_1
                                                                                              ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                                                                                              ; - com.google.re2j.Machine::match@121 (line 205)
                                                0x00007f1f69270024: cmp    $0xa,%r10d
                                                0x00007f1f69270028: je     0x00007f1f692709bd  ;*iload_0
                                                                                              ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                                                                                              ; - com.google.re2j.Machine::match@121 (line 205)
           0.02%                                0x00007f1f6927002e: mov    %r10d,%r9d
                                                0x00007f1f69270031: add    $0xffffffbf,%r9d
           0.00%                                0x00007f1f69270035: cmp    $0x1a,%r9d
                  ╭                             0x00007f1f69270039: jb     0x00007f1f6927004c  ;*if_icmple
                  │                                                                           ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │                                                                           ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                                           ; - com.google.re2j.Machine::match@121 (line 205)
                  │                             0x00007f1f6927003b: mov    %r10d,%r8d
  0.00%           │                             0x00007f1f6927003e: add    $0xffffff9f,%r8d
                  │                             0x00007f1f69270042: cmp    $0x1a,%r8d
                  │                             0x00007f1f69270046: jae    0x00007f1f692709cc  ;*iconst_1
                  │                                                                           ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │                                                                           ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                                           ; - com.google.re2j.Machine::match@121 (line 205)
                  ↘                             0x00007f1f6927004c: or     $0x10,%r11d        ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                                                                                              ; - com.google.re2j.Machine::match@121 (line 205)
  0.00%                                         0x00007f1f69270050: mov    %r11d,0x38(%rsp)   ;*iload_2
                                                                                              ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                                              ; - com.google.re2j.Machine::match@121 (line 205)
           0.00%                                0x00007f1f69270055: mov    0x40(%rsp),%r11
  0.01%                                         0x00007f1f6927005a: movzbl 0x11(%r11),%r8d    ;*getfield captures
                                                                                              ; - com.google.re2j.Machine::match@283 (line 240)
  0.01%    0.00%                                0x00007f1f6927005f: mov    0x48(%rsp),%r9d
  0.00%    0.00%                                0x00007f1f69270064: and    $0x4,%r9d          ;*iand
                                                                                              ; - com.google.re2j.Machine::match@147 (line 212)
  0.00%    0.01%                                0x00007f1f69270068: mov    %r9d,0x4c(%rsp)
                                                0x00007f1f6927006d: mov    %rcx,%r11
                                                0x00007f1f69270070: shl    $0x3,%r11          ;*getfield q1
                                                                                              ; - com.google.re2j.Machine::match@53 (line 192)
                                                0x00007f1f69270074: mov    %r11,0x20(%rsp)
           0.00%                                0x00007f1f69270079: vmovd  %r8d,%xmm6
                                                0x00007f1f6927007e: xor    %eax,%eax
                                                0x00007f1f69270080: mov    $0x1,%r11d
  0.00%                                         0x00007f1f69270086: xor    %r9d,%r9d
           0.00%                                0x00007f1f69270089: mov    %r11d,0x14(%rsp)
                                                0x00007f1f6927008e: mov    %r9d,0x64(%rsp)
                   ╭                            0x00007f1f69270093: jmpq   0x00007f1f692702cc  ;*ifeq
                   │                                                                          ; - com.google.re2j.Machine::match@286 (line 240)
  0.25%    0.16%   │               ↗            0x00007f1f69270098: mov    %rdi,%r8
                   │               │            0x00007f1f6927009b: shl    $0x3,%r8           ;*getfield matchcap
                   │               │                                                          ; - com.google.re2j.Machine::match@307 (line 243)
  0.03%    0.02%   │               │            0x00007f1f6927009f: mov    %r10,%rsi
  0.05%    0.06%   │               │            0x00007f1f692700a2: mov    0x18(%rsp),%rdx
  0.20%    0.18%   │               │            0x00007f1f692700a7: mov    0x64(%rsp),%ecx
                   │               │            0x00007f1f692700ab: mov    0x38(%rsp),%r9d
  0.04%    0.03%   │               │            0x00007f1f692700b0: xor    %edi,%edi
  0.08%    0.07%   │               │            0x00007f1f692700b2: mov    0x40(%rsp),%r10
  0.24%    0.22%   │               │            0x00007f1f692700b7: mov    %r10,(%rsp)
                   │               │            0x00007f1f692700bb: vmovss %xmm6,0x8(%rsp)
  0.01%    0.04%   │               │            0x00007f1f692700c1: xchg   %ax,%ax
  0.06%    0.05%   │               │            0x00007f1f692700c3: callq  0x00007f1f69046020  ; OopMap{[24]=Oop [32]=Oop [52]=NarrowOop [64]=Oop [80]=Oop off=648}
                   │               │                                                          ;*invokevirtual add
                   │               │                                                          ; - com.google.re2j.Machine::match@318 (line 243)
                   │               │                                                          ;   {optimized virtual_call}
  0.05%    0.05%   │               │↗           0x00007f1f692700c8: mov    0x5c(%rsp),%r10d
  0.26%    0.32%   │               ││           0x00007f1f692700cd: test   %r10d,%r10d
                   │╭              ││           0x00007f1f692700d0: jl     0x00007f1f6927045e  ;*ifge
                   ││              ││                                                         ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                   ││              ││                                                         ; - com.google.re2j.Machine::match@326 (line 245)
  0.10%    0.06%   ││              ││           0x00007f1f692700d6: xor    %r11d,%r11d        ;*iload_0
                   ││              ││                                                         ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                   ││              ││                                                         ; - com.google.re2j.Machine::match@326 (line 245)
  0.28%    0.24%   ││              ││↗          0x00007f1f692700d9: cmp    $0xa,%r10d
                   ││╭             │││          0x00007f1f692700dd: je     0x00007f1f692704da  ;*iload_1
                   │││             │││                                                        ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                   │││             │││                                                        ; - com.google.re2j.Machine::match@326 (line 245)
  0.19%    0.14%   │││             │││     ↗    0x00007f1f692700e3: mov    0x2c(%rsp),%r8d
  0.12%    0.08%   │││             │││     │    0x00007f1f692700e8: test   %r8d,%r8d
                   │││╭            │││     │    0x00007f1f692700eb: jl     0x00007f1f69270469  ;*iload_1
                   ││││            │││     │                                                  ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                   ││││            │││     │                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.08%    0.05%   ││││            │││↗    │    0x00007f1f692700f1: cmp    $0xa,%r8d
                   ││││╭           ││││    │    0x00007f1f692700f5: je     0x00007f1f692704e3  ;*iload_0
                   │││││           ││││    │                                                  ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                   │││││           ││││    │                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.25%    0.21%   │││││           ││││    │↗   0x00007f1f692700fb: mov    0x5c(%rsp),%ecx
  0.23%    0.20%   │││││           ││││    ││   0x00007f1f692700ff: add    $0xffffffbf,%ecx
  0.09%    0.10%   │││││           ││││    ││   0x00007f1f69270102: cmp    $0x1a,%ecx
                   │││││╭          ││││    ││   0x00007f1f69270105: jb     0x00007f1f6927011a  ;*if_icmple
                   ││││││          ││││    ││                                                 ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                   ││││││          ││││    ││                                                 ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   ││││││          ││││    ││                                                 ; - com.google.re2j.Machine::match@326 (line 245)
  0.07%    0.09%   ││││││          ││││    ││   0x00007f1f69270107: mov    0x5c(%rsp),%r9d
  0.31%    0.22%   ││││││          ││││    ││   0x00007f1f6927010c: add    $0xffffff9f,%r9d
  0.19%    0.18%   ││││││          ││││    ││   0x00007f1f69270110: cmp    $0x1a,%r9d
                   ││││││          ││││    ││   0x00007f1f69270114: jae    0x00007f1f69270925  ;*iconst_1
                   ││││││          ││││    ││                                                 ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                   ││││││          ││││    ││                                                 ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   ││││││          ││││    ││                                                 ; - com.google.re2j.Machine::match@326 (line 245)
  0.08%    0.10%   │││││↘          ││││    ││   0x00007f1f6927011a: mov    $0x1,%ebp          ;*ireturn
                   │││││           ││││    ││                                                 ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                   │││││           ││││    ││                                                 ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   │││││           ││││    ││                                                 ; - com.google.re2j.Machine::match@326 (line 245)
  0.10%    0.10%   │││││           ││││    ││   0x00007f1f6927011f: mov    %r11d,%r9d
  0.22%    0.18%   │││││           ││││    ││   0x00007f1f69270122: add    $0xffffffbf,%r8d
  0.12%    0.22%   │││││           ││││    ││   0x00007f1f69270126: cmp    $0x1a,%r8d
                   │││││ ╭         ││││    ││   0x00007f1f6927012a: jb     0x00007f1f6927013f  ;*if_icmple
                   │││││ │         ││││    ││                                                 ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                   │││││ │         ││││    ││                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   │││││ │         ││││    ││                                                 ; - com.google.re2j.Machine::match@326 (line 245)
  0.10%    0.11%   │││││ │         ││││    ││   0x00007f1f6927012c: mov    0x2c(%rsp),%r11d
  0.09%    0.09%   │││││ │         ││││    ││   0x00007f1f69270131: add    $0xffffff9f,%r11d
  0.19%    0.15%   │││││ │         ││││    ││   0x00007f1f69270135: cmp    $0x1a,%r11d
                   │││││ │         ││││    ││   0x00007f1f69270139: jae    0x00007f1f69270946  ;*iconst_1
                   │││││ │         ││││    ││                                                 ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                   │││││ │         ││││    ││                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   │││││ │         ││││    ││                                                 ; - com.google.re2j.Machine::match@326 (line 245)
  0.17%    0.13%   │││││ ↘         ││││    ││   0x00007f1f6927013f: mov    $0x1,%r8d          ;*ireturn
                   │││││           ││││    ││                                                 ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                   │││││           ││││    ││                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   │││││           ││││    ││                                                 ; - com.google.re2j.Machine::match@326 (line 245)
  0.28%    0.23%   │││││           ││││    ││   0x00007f1f69270145: cmp    %r8d,%ebp
                   │││││  ╭        ││││    ││   0x00007f1f69270148: je     0x00007f1f69270155  ;*if_icmpeq
                   │││││  │        ││││    ││                                                 ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                   │││││  │        ││││    ││                                                 ; - com.google.re2j.Machine::match@326 (line 245)
  0.11%    0.06%   │││││  │        ││││    ││   0x00007f1f6927014a: or     $0x10,%r9d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                   │││││  │        ││││    ││                                                 ; - com.google.re2j.Machine::match@326 (line 245)
  0.08%    0.06%   │││││  │        ││││    ││   0x00007f1f6927014e: mov    %r9d,0x38(%rsp)
  0.16%    0.11%   │││││  │╭       ││││    ││   0x00007f1f69270153: jmp    0x00007f1f6927015e
  0.08%    0.11%   │││││  ↘│       ││││    ││   0x00007f1f69270155: or     $0x20,%r9d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                   │││││   │       ││││    ││                                                 ; - com.google.re2j.Machine::match@326 (line 245)
  0.15%    0.16%   │││││   │       ││││    ││   0x00007f1f69270159: mov    %r9d,0x38(%rsp)    ;*iload_2
                   │││││   │       ││││    ││                                                 ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   │││││   │       ││││    ││                                                 ; - com.google.re2j.Machine::match@326 (line 245)
  0.23%    0.30%   │││││   ↘       ││││    ││   0x00007f1f6927015e: mov    0x50(%rsp),%r11
  0.59%    0.46%   │││││           ││││    ││   0x00007f1f69270163: mov    0x10(%r11),%r8d    ;*getfield end
                   │││││           ││││    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::endPos@1 (line 221)
                   │││││           ││││    ││                                                 ; - com.google.re2j.Machine::match@348 (line 246)
  0.54%    0.28%   │││││           ││││    ││   0x00007f1f69270167: mov    0x64(%rsp),%r9d
  0.22%    0.19%   │││││           ││││    ││   0x00007f1f6927016c: cmp    %r8d,%r9d
                   │││││    ╭      ││││    ││   0x00007f1f6927016f: je     0x00007f1f69270472  ;*if_icmpne
                   │││││    │      ││││    ││                                                 ; - com.google.re2j.Machine::match@351 (line 246)
  0.39%    0.19%   │││││    │      ││││    ││   0x00007f1f69270175: xor    %eax,%eax          ;*invokevirtual endPos
                   │││││    │      ││││    ││                                                 ; - com.google.re2j.Machine::match@348 (line 246)
  0.09%    0.11%   │││││    │      ││││↗   ││   0x00007f1f69270177: add    0x28(%rsp),%r9d    ;*iadd
                   │││││    │      │││││   ││                                                 ; - com.google.re2j.Machine::match@340 (line 246)
  0.08%    0.06%   │││││    │      │││││   ││   0x00007f1f6927017c: mov    %r9d,0x64(%rsp)
  0.19%    0.20%   │││││    │      │││││   ││   0x00007f1f69270181: mov    0x40(%rsp),%rsi
  0.28%    0.14%   │││││    │      │││││   ││   0x00007f1f69270186: mov    0x18(%rsp),%rdx
  0.06%    0.11%   │││││    │      │││││   ││   0x00007f1f6927018b: mov    0x20(%rsp),%rcx
  0.05%    0.06%   │││││    │      │││││   ││   0x00007f1f69270190: mov    0x58(%rsp),%r8d
  0.16%    0.23%   │││││    │      │││││   ││   0x00007f1f69270195: mov    0x5c(%rsp),%edi
  0.25%    0.16%   │││││    │      │││││   ││   0x00007f1f69270199: mov    0x38(%rsp),%r10d
  0.13%    0.10%   │││││    │      │││││   ││   0x00007f1f6927019e: mov    %r10d,(%rsp)
  0.09%    0.08%   │││││    │      │││││   ││   0x00007f1f692701a2: mov    0x3c(%rsp),%r11d
  0.19%    0.16%   │││││    │      │││││   ││   0x00007f1f692701a7: mov    %r11d,0x8(%rsp)
  0.30%    0.27%   │││││    │      │││││   ││   0x00007f1f692701ac: mov    %eax,0x10(%rsp)
  0.10%    0.14%   │││││    │      │││││   ││   0x00007f1f692701b0: data16 xchg %ax,%ax
  0.08%    0.08%   │││││    │      │││││   ││   0x00007f1f692701b3: callq  0x00007f1f69046020  ; OopMap{[24]=Oop [32]=Oop [52]=NarrowOop [64]=Oop [80]=Oop off=888}
                   │││││    │      │││││   ││                                                 ;*invokespecial step
                   │││││    │      │││││   ││                                                 ; - com.google.re2j.Machine::match@359 (line 246)
                   │││││    │      │││││   ││                                                 ;   {optimized virtual_call}
  0.34%    0.45%   │││││    │      │││││   ││   0x00007f1f692701b8: mov    0x40(%rsp),%r10
  0.30%    0.23%   │││││    │      │││││   ││   0x00007f1f692701bd: movzbl 0x11(%r10),%r9d    ;*getfield captures
                   │││││    │      │││││   ││                                                 ; - com.google.re2j.Machine::match@371 (line 250)
  0.08%    0.07%   │││││    │      │││││   ││   0x00007f1f692701c2: movzbl 0x10(%r10),%eax    ;*getfield matched
                   │││││    │      │││││   ││                                                 ; - com.google.re2j.Machine::match@378 (line 250)
  0.39%    0.42%   │││││    │      │││││   ││   0x00007f1f692701c7: mov    0x28(%rsp),%r11d
  0.23%    0.25%   │││││    │      │││││   ││   0x00007f1f692701cc: test   %r11d,%r11d
                   │││││    │╭     │││││   ││   0x00007f1f692701cf: je     0x00007f1f6927047c  ;*ifne
                   │││││    ││     │││││   ││                                                 ; - com.google.re2j.Machine::match@364 (line 247)
                   │││││    ││     │││││   ││   0x00007f1f692701d5: test   %r9d,%r9d
                   │││││    ││     │││││   ││   0x00007f1f692701d8: jne    0x00007f1f69270bc1  ;*ifne
                   │││││    ││     │││││   ││                                                 ; - com.google.re2j.Machine::match@374 (line 250)
  0.00%    0.01%   │││││    ││     │││││   ││   0x00007f1f692701de: test   %eax,%eax
                   │││││    ││     │││││   ││   0x00007f1f692701e0: jne    0x00007f1f69270e1d  ;*ifeq
                   │││││    ││     │││││   ││                                                 ; - com.google.re2j.Machine::match@381 (line 250)
  0.36%    0.43%   │││││    ││     │││││   ││   0x00007f1f692701e6: mov    0x50(%rsp),%r10
  0.28%    0.32%   │││││    ││     │││││   ││   0x00007f1f692701eb: mov    0x10(%r10),%r11d   ;*getfield end
                   │││││    ││     │││││   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                   │││││    ││     │││││   ││                                                 ; - com.google.re2j.Machine::match@411 (line 259)
  0.11%    0.11%   │││││    ││     │││││   ││   0x00007f1f692701ef: mov    %r11d,0x68(%rsp)
  0.01%    0.02%   │││││    ││     │││││   ││   0x00007f1f692701f4: mov    0xc(%r10),%r13d    ;*getfield start
                   │││││    ││     │││││   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                   │││││    ││     │││││   ││                                                 ; - com.google.re2j.Machine::match@411 (line 259)
  0.26%    0.35%   │││││    ││     │││││   ││   0x00007f1f692701f8: mov    0x14(%r10),%r14d   ;*getfield str
                   │││││    ││     │││││   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                   │││││    ││     │││││   ││                                                 ; - com.google.re2j.Machine::match@411 (line 259)
  0.25%    0.29%   │││││    ││     │││││   ││   0x00007f1f692701fc: mov    0x2c(%rsp),%r10d
  0.02%    0.00%   │││││    ││     │││││   ││   0x00007f1f69270201: cmp    $0xffffffff,%r10d
                   │││││    ││╭    │││││   ││   0x00007f1f69270205: je     0x00007f1f692704bc  ;*if_icmpeq
                   │││││    │││    │││││   ││                                                 ; - com.google.re2j.Machine::match@403 (line 258)
  0.02%    0.01%   │││││    │││    │││││   ││   0x00007f1f6927020b: mov    0x30(%rsp),%ecx
  0.24%    0.38%   │││││    │││    │││││   ││   0x00007f1f6927020f: add    0x64(%rsp),%ecx
  0.28%    0.41%   │││││    │││    │││││   ││   0x00007f1f69270213: add    %r13d,%ecx         ;*iadd
                   │││││    │││    │││││   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                   │││││    │││    │││││   ││                                                 ; - com.google.re2j.Machine::match@411 (line 259)
  0.02%    0.04%   │││││    │││    │││││   ││   0x00007f1f69270216: cmp    %r11d,%ecx
                   │││││    │││╭   │││││   ││   0x00007f1f69270219: jge    0x00007f1f692704cc  ;*if_icmpge
                   │││││    ││││   │││││   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                   │││││    ││││   │││││   ││                                                 ; - com.google.re2j.Machine::match@411 (line 259)
  0.06%    0.09%   │││││    ││││   │││││   ││   0x00007f1f6927021f: mov    0x8(%r12,%r14,8),%r11d  ; implicit exception: dispatches to 0x00007f1f69271f0d
  0.41%    0.62%   │││││    ││││   │││││   ││   0x00007f1f69270224: cmp    $0xf80002da,%r11d  ;   {metadata(&apos;java/lang/String&apos;)}
                   │││││    ││││   │││││   ││   0x00007f1f6927022b: jne    0x00007f1f69270aa5
  0.36%    0.36%   │││││    ││││   │││││   ││   0x00007f1f69270231: lea    (%r12,%r14,8),%rbx  ;*invokeinterface charAt
                   │││││    ││││   │││││   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││││    ││││   │││││   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││    ││││   │││││   ││                                                 ; - com.google.re2j.Machine::match@411 (line 259)
  0.01%            │││││    ││││   │││││   ││   0x00007f1f69270235: test   %ecx,%ecx
                   │││││    ││││   │││││   ││   0x00007f1f69270237: jl     0x00007f1f69270c11  ;*iflt
                   │││││    ││││   │││││   ││                                                 ; - java.lang.String::charAt@1 (line 657)
                   │││││    ││││   │││││   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││││    ││││   │││││   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││    ││││   │││││   ││                                                 ; - com.google.re2j.Machine::match@411 (line 259)
  0.01%    0.03%   │││││    ││││   │││││   ││   0x00007f1f6927023d: mov    0xc(%rbx),%edi     ;*getfield value
                   │││││    ││││   │││││   ││                                                 ; - java.lang.String::charAt@6 (line 657)
                   │││││    ││││   │││││   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││││    ││││   │││││   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││    ││││   │││││   ││                                                 ; - com.google.re2j.Machine::match@411 (line 259)
  0.36%    0.44%   │││││    ││││   │││││   ││   0x00007f1f69270240: mov    0xc(%r12,%rdi,8),%ebp  ;*arraylength
                   │││││    ││││   │││││   ││                                                 ; - java.lang.String::charAt@9 (line 657)
                   │││││    ││││   │││││   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││││    ││││   │││││   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││    ││││   │││││   ││                                                 ; - com.google.re2j.Machine::match@411 (line 259)
                   │││││    ││││   │││││   ││                                                 ; implicit exception: dispatches to 0x00007f1f69271f21
  1.75%    1.91%   │││││    ││││   │││││   ││   0x00007f1f69270245: cmp    %ebp,%ecx
                   │││││    ││││   │││││   ││   0x00007f1f69270247: jge    0x00007f1f69270e6d  ;*if_icmplt
                   │││││    ││││   │││││   ││                                                 ; - java.lang.String::charAt@10 (line 657)
                   │││││    ││││   │││││   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││││    ││││   │││││   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││    ││││   │││││   ││                                                 ; - com.google.re2j.Machine::match@411 (line 259)
  0.59%    0.60%   │││││    ││││   │││││   ││   0x00007f1f6927024d: cmp    %ebp,%ecx
                   │││││    ││││   │││││   ││   0x00007f1f6927024f: jae    0x00007f1f69270a25
  0.21%    0.18%   │││││    ││││   │││││   ││   0x00007f1f69270255: lea    (%r12,%rdi,8),%r10
  0.03%    0.01%   │││││    ││││   │││││   ││   0x00007f1f69270259: movzwl 0x10(%r10,%rcx,2),%r8d  ;*caload
                   │││││    ││││   │││││   ││                                                 ; - java.lang.String::charAt@27 (line 660)
                   │││││    ││││   │││││   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││││    ││││   │││││   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││    ││││   │││││   ││                                                 ; - com.google.re2j.Machine::match@411 (line 259)
  0.12%    0.08%   │││││    ││││   │││││   ││   0x00007f1f6927025f: cmp    $0xd800,%r8d
                   │││││    ││││   │││││   ││   0x00007f1f69270266: jge    0x00007f1f69270ee5  ;*if_icmplt
                   │││││    ││││   │││││   ││                                                 ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   │││││    ││││   │││││   ││                                                 ; - java.lang.Character::codePointAt@9 (line 4867)
                   │││││    ││││   │││││   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││    ││││   │││││   ││                                                 ; - com.google.re2j.Machine::match@411 (line 259)
  0.53%    0.42%   │││││    ││││   │││││   ││   0x00007f1f6927026c: shl    $0x3,%r8d          ;*ishl
                   │││││    ││││   │││││   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                   │││││    ││││   │││││   ││                                                 ; - com.google.re2j.Machine::match@411 (line 259)
  0.12%    0.12%   │││││    ││││   │││││   ││   0x00007f1f69270270: mov    %r8d,%r11d
  0.02%    0.02%   │││││    ││││   │││││   ││   0x00007f1f69270273: or     $0x1,%r11d
  0.24%    0.23%   │││││    ││││   │││││   ││   0x00007f1f69270277: and    $0x7,%r8d
  0.29%    0.31%   │││││    ││││   │││││   ││   0x00007f1f6927027b: sar    $0x3,%r11d         ;*ishr
                   │││││    ││││   │││││   ││                                                 ; - com.google.re2j.Machine::match@419 (line 260)
  0.25%    0.26%   │││││    ││││   │││││   ││   0x00007f1f6927027f: or     $0x1,%r8d          ; OopMap{r14=NarrowOop [24]=Oop [32]=Oop [64]=Oop [80]=Oop off=1091}
                   │││││    ││││   │││││   ││                                                 ;*goto
                   │││││    ││││   │││││   ││                                                 ; - com.google.re2j.Machine::match@441 (line 266)
  0.04%    0.02%   │││││    ││││   │││││ ↗↗││   0x00007f1f69270283: test   %eax,0x16e0dd77(%rip)        # 0x00007f1f8007e000
                   │││││    ││││   │││││ ││││                                                 ;*goto
                   │││││    ││││   │││││ ││││                                                 ; - com.google.re2j.Machine::match@441 (line 266)
                   │││││    ││││   │││││ ││││                                                 ;   {poll}
  0.03%    0.03%   │││││    ││││   │││││ ││││   0x00007f1f69270289: mov    0x40(%rsp),%r10
  0.26%    0.31%   │││││    ││││   │││││ ││││   0x00007f1f6927028e: mov    0x28(%r10),%edi    ;*getfield matchcap
                   │││││    ││││   │││││ ││││                                                 ; - com.google.re2j.Machine::match@307 (line 243)
  0.21%    0.25%   │││││    ││││   │││││ ││││   0x00007f1f69270292: mov    0x14(%r10),%esi    ;*getfield re2
                   │││││    ││││   │││││ ││││                                                 ; - com.google.re2j.Machine::match@169 (line 220)
  0.02%    0.02%   │││││    ││││   │││││ ││││   0x00007f1f69270296: mov    0x20(%rsp),%r10
  0.03%    0.04%   │││││    ││││   │││││ ││││   0x00007f1f6927029b: shr    $0x3,%r10
  0.35%    0.34%   │││││    ││││   │││││ ││││   0x00007f1f6927029f: mov    %r10d,0x34(%rsp)
  0.27%    0.30%   │││││    ││││   │││││ ││││   0x00007f1f692702a4: mov    0x2c(%rsp),%r10d
  0.04%    0.04%   │││││    ││││   │││││ ││││   0x00007f1f692702a9: mov    %r11d,0x2c(%rsp)
  0.02%    0.03%   │││││    ││││   │││││ ││││   0x00007f1f692702ae: mov    0x18(%rsp),%r11
  0.28%    0.30%   │││││    ││││   │││││ ││││   0x00007f1f692702b3: mov    %r11,0x20(%rsp)
  0.27%    0.34%   │││││    ││││   │││││ ││││   0x00007f1f692702b8: vmovd  %r9d,%xmm6
  0.04%    0.03%   │││││    ││││   │││││ ││││   0x00007f1f692702bd: mov    0x30(%rsp),%r9d
  0.10%    0.03%   │││││    ││││   │││││ ││││   0x00007f1f692702c2: mov    %r9d,0x28(%rsp)
  0.23%    0.31%   │││││    ││││   │││││ ││││   0x00007f1f692702c7: mov    %r8d,0x30(%rsp)
  0.22%    0.30%   ↘││││    ││││   │││││ ││││   0x00007f1f692702cc: mov    0x34(%rsp),%r11d
  0.02%    0.05%    ││││    ││││   │││││ ││││   0x00007f1f692702d1: movzbl 0x18(%r12,%r11,8),%r11d  ; implicit exception: dispatches to 0x00007f1f69271ed2
  0.12%    0.10%    ││││    ││││   │││││ ││││   0x00007f1f692702d7: mov    0x34(%rsp),%r8d
  0.26%    0.29%    ││││    ││││   │││││ ││││   0x00007f1f692702dc: shl    $0x3,%r8           ;*aload
                    ││││    ││││   │││││ ││││                                                 ; - com.google.re2j.Machine::match@136 (line 211)
  0.22%    0.25%    ││││    ││││   │││││ ││││   0x00007f1f692702e0: mov    %r8,0x18(%rsp)
  0.04%    0.03%    ││││    ││││   │││││ ││││   0x00007f1f692702e5: test   %r11d,%r11d
                    ││││    ││││╭  │││││ ││││   0x00007f1f692702e8: je     0x00007f1f6927032c  ;*ifeq
                    ││││    │││││  │││││ ││││                                                 ; - com.google.re2j.Machine::match@141 (line 211)
  0.05%    0.02%    ││││    │││││  │││││ ││││   0x00007f1f692702ea: mov    0x4c(%rsp),%r11d
  0.09%    0.14%    ││││    │││││  │││││ ││││   0x00007f1f692702ef: test   %r11d,%r11d
                    ││││    │││││  │││││ ││││   0x00007f1f692702f2: jne    0x00007f1f69271099  ;*ifeq
                    ││││    │││││  │││││ ││││                                                 ; - com.google.re2j.Machine::match@148 (line 212)
  0.06%    0.08%    ││││    │││││  │││││ ││││   0x00007f1f692702f8: test   %eax,%eax
                    ││││    │││││  │││││ ││││   0x00007f1f692702fa: jne    0x00007f1f692710f5  ;*ifeq
                    ││││    │││││  │││││ ││││                                                 ; - com.google.re2j.Machine::match@162 (line 216)
  0.01%    0.01%    ││││    │││││  │││││ ││││   0x00007f1f69270300: mov    0x24(%r12,%rsi,8),%r11d  ;*getfield prefix
                    ││││    │││││  │││││ ││││                                                 ; - com.google.re2j.Machine::match@172 (line 220)
                    ││││    │││││  │││││ ││││                                                 ; implicit exception: dispatches to 0x00007f1f69271f45
  0.03%    0.04%    ││││    │││││  │││││ ││││   0x00007f1f69270305: mov    %r11d,%r8d
  0.13%    0.13%    ││││    │││││  │││││ ││││   0x00007f1f69270308: mov    0xc(%r12,%r11,8),%r11d  ;*getfield value
                    ││││    │││││  │││││ ││││                                                 ; - java.lang.String::isEmpty@1 (line 635)
                    ││││    │││││  │││││ ││││                                                 ; - com.google.re2j.Machine::match@175 (line 220)
                    ││││    │││││  │││││ ││││                                                 ; implicit exception: dispatches to 0x00007f1f69271f55
  0.14%    0.07%    ││││    │││││  │││││ ││││   0x00007f1f6927030d: vmovd  %r11d,%xmm0
  0.05%    0.06%    ││││    │││││  │││││ ││││   0x00007f1f69270312: mov    0xc(%r12,%r11,8),%r11d  ;*arraylength
                    ││││    │││││  │││││ ││││                                                 ; - java.lang.String::isEmpty@4 (line 635)
                    ││││    │││││  │││││ ││││                                                 ; - com.google.re2j.Machine::match@175 (line 220)
                    ││││    │││││  │││││ ││││                                                 ; implicit exception: dispatches to 0x00007f1f69271f65
  0.21%    0.21%    ││││    │││││  │││││ ││││   0x00007f1f69270317: mov    %r11d,0x58(%rsp)
  0.22%    0.15%    ││││    │││││  │││││ ││││   0x00007f1f6927031c: test   %r11d,%r11d
                    ││││    │││││  │││││ ││││   0x00007f1f6927031f: jne    0x00007f1f692705b5  ;*ifne
                    ││││    │││││  │││││ ││││                                                 ; - com.google.re2j.Machine::match@178 (line 220)
  0.03%    0.02%    ││││    │││││  │││││ ││││   0x00007f1f69270325: mov    %r10d,0x5c(%rsp)
  0.02%    0.01%    ││││    │││││╭ │││││ ││││   0x00007f1f6927032a: jmp    0x00007f1f69270331
  0.02%    0.00%    ││││    ││││↘│ │││││ ││││   0x00007f1f6927032c: mov    %r10d,0x5c(%rsp)   ;*aload_0
                    ││││    ││││ │ │││││ ││││                                                 ; - com.google.re2j.Machine::match@267 (line 237)
  0.18%    0.15%    ││││    ││││ ↘ │││││ ││││   0x00007f1f69270331: test   %eax,%eax
                    ││││    ││││   │││││ ││││   0x00007f1f69270333: jne    0x00007f1f69270b0d  ;*ifne
                    ││││    ││││   │││││ ││││                                                 ; - com.google.re2j.Machine::match@271 (line 237)
  0.40%    0.31%    ││││    ││││   │││││ ││││   0x00007f1f69270339: mov    0x64(%rsp),%r11d
  0.03%    0.02%    ││││    ││││   │││││ ││││   0x00007f1f6927033e: test   %r11d,%r11d
                    ││││    ││││  ╭│││││ ││││   0x00007f1f69270341: je     0x00007f1f692704ec  ;*ifeq
                    ││││    ││││  ││││││ ││││                                                 ; - com.google.re2j.Machine::match@275 (line 237)
  0.02%    0.04%    ││││    ││││  ││││││ ││││   0x00007f1f69270347: mov    0x3c(%rsp),%r9d
  0.18%    0.22%    ││││    ││││  ││││││ ││││   0x00007f1f6927034c: test   %r9d,%r9d
                    ││││    ││││  ││││││ ││││   0x00007f1f6927034f: jne    0x00007f1f69270b61  ;*aload_0
                    ││││    ││││  ││││││ ││││                                                 ; - com.google.re2j.Machine::match@282 (line 240)
  0.33%    0.19%    ││││    ││││  ││││││ ││││↗  0x00007f1f69270355: vmovd  %xmm6,%r10d
  0.04%    0.01%    ││││    ││││  ││││││ │││││  0x00007f1f6927035a: test   %r10d,%r10d
                    ││││    ││││  ││││││ │││││  0x00007f1f6927035d: jne    0x00007f1f69270cfd  ;*ifeq
                    ││││    ││││  ││││││ │││││                                                ; - com.google.re2j.Machine::match@286 (line 240)
  0.01%    0.01%    ││││    ││││  ││││││ │││││  0x00007f1f69270363: mov    %rax,-0x8(%rsp)
  0.17%    0.20%    ││││    ││││  ││││││ │││││  0x00007f1f69270368: mov    0x64(%rsp),%eax
  0.32%    0.24%    ││││    ││││  ││││││ │││││  0x00007f1f6927036c: mov    %eax,0x58(%rsp)
  0.05%    0.00%    ││││    ││││  ││││││ │││││  0x00007f1f69270370: mov    -0x8(%rsp),%rax
  0.14%    0.09%    ││││    ││││  ││││││ │││││  0x00007f1f69270375: mov    %r9d,0x3c(%rsp)
  0.21%    0.23%    ││││    ││││  ││││││ │││││  0x00007f1f6927037a: mov    0x40(%rsp),%r10
  0.32%    0.25%    ││││    ││││  ││││││ │││││  0x00007f1f6927037f: mov    0x18(%r10),%r8d    ;*getfield prog
                    ││││    ││││  ││││││ │││││                                                ; - com.google.re2j.Machine::match@297 (line 243)
  0.08%    0.05%    ││││    ││││  ││││││ │││││  0x00007f1f69270383: mov    0x1c(%r12,%r8,8),%ebp  ;*getfield startInst
                    ││││    ││││  ││││││ │││││                                                ; - com.google.re2j.Machine::match@300 (line 243)
                    ││││    ││││  ││││││ │││││                                                ; implicit exception: dispatches to 0x00007f1f69271ee1
  0.28%    0.34%    ││││    ││││  ││││││ │││││  0x00007f1f69270388: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007f1f69271ef1
  1.64%    1.43%    ││││    ││││  ││││││ │││││  0x00007f1f6927038d: lea    (%r12,%rbp,8),%r10
  0.12%    0.05%    ││││    ││││  ││││││ │││││  0x00007f1f69270391: cmp    $0xf8019a09,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$Alt5Inst&apos;)}
                    ││││    ││││  │╰││││ │││││  0x00007f1f69270398: je     0x00007f1f69270098
  0.17%    0.22%    ││││    ││││  │ ││││ │││││  0x00007f1f6927039e: cmp    $0xf8019909,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                    ││││    ││││  │ ││││ │││││  0x00007f1f692703a5: jne    0x00007f1f69270d55  ;*invokevirtual add
                    ││││    ││││  │ ││││ │││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.06%    0.16%    ││││    ││││  │ ││││ │││││  0x00007f1f692703ab: mov    0x18(%r10),%ecx    ;*getfield pc
                    ││││    ││││  │ ││││ │││││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                    ││││    ││││  │ ││││ │││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.02%    0.03%    ││││    ││││  │ ││││ │││││  0x00007f1f692703af: cmp    $0x40,%ecx
                    ││││    ││││  │ ││││ │││││  0x00007f1f692703b2: jg     0x00007f1f69270f51  ;*if_icmpgt
                    ││││    ││││  │ ││││ │││││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                    ││││    ││││  │ ││││ │││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                    ││││    ││││  │ ││││ │││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.24%    0.20%    ││││    ││││  │ ││││ │││││  0x00007f1f692703b8: mov    %r10,%r9
  0.01%    0.01%    ││││    ││││  │ ││││ │││││  0x00007f1f692703bb: mov    $0x1,%ebx
  0.01%    0.04%    ││││    ││││  │ ││││ │││││  0x00007f1f692703c0: mov    %ecx,%r10d
  0.01%    0.03%    ││││    ││││  │ ││││ │││││  0x00007f1f692703c3: shl    %cl,%rbx           ;*lshl
                    ││││    ││││  │ ││││ │││││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                    ││││    ││││  │ ││││ │││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                    ││││    ││││  │ ││││ │││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.49%    0.48%    ││││    ││││  │ ││││ │││││  0x00007f1f692703c6: mov    0x34(%rsp),%r8d
  0.01%    0.01%    ││││    ││││  │ ││││ │││││  0x00007f1f692703cb: mov    0x10(%r12,%r8,8),%rcx  ;*getfield pcsl
                    ││││    ││││  │ ││││ │││││                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                    ││││    ││││  │ ││││ │││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                    ││││    ││││  │ ││││ │││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.02%    0.03%    ││││    ││││  │ ││││ │││││  0x00007f1f692703d0: mov    %rcx,%r8
  0.03%    0.01%    ││││    ││││  │ ││││ │││││  0x00007f1f692703d3: and    %rbx,%r8           ;*land
                    ││││    ││││  │ ││││ │││││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                    ││││    ││││  │ ││││ │││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                    ││││    ││││  │ ││││ │││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.19%    0.28%    ││││    ││││  │ ││││ │││││  0x00007f1f692703d6: test   %r8,%r8
                    ││││    ││││  │ ││││ │││││  0x00007f1f692703d9: jne    0x00007f1f69270fb1  ;*ifeq
                    ││││    ││││  │ ││││ │││││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                    ││││    ││││  │ ││││ │││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.02%    0.02%    ││││    ││││  │ ││││ │││││  0x00007f1f692703df: cmp    $0x40,%r10d
                    ││││    ││││  │ ││││ │││││  0x00007f1f692703e3: jge    0x00007f1f69271039  ;*if_icmpge
                    ││││    ││││  │ ││││ │││││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                    ││││    ││││  │ ││││ │││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                    ││││    ││││  │ ││││ │││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.02%    0.05%    ││││    ││││  │ ││││ │││││  0x00007f1f692703e9: mov    0x34(%rsp),%r11d
  0.01%    0.05%    ││││    ││││  │ ││││ │││││  0x00007f1f692703ee: mov    %r12b,0x18(%r12,%r11,8)  ;*putfield empty
                    ││││    ││││  │ ││││ │││││                                                ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                    ││││    ││││  │ ││││ │││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                    ││││    ││││  │ ││││ │││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.26%    0.33%    ││││    ││││  │ ││││ │││││  0x00007f1f692703f3: mov    0x20(%r12,%r11,8),%r8d  ;*getfield denseThreadsInstructions
                    ││││    ││││  │ ││││ │││││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                    ││││    ││││  │ ││││ │││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                    ││││    ││││  │ ││││ │││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.02%    0.01%    ││││    ││││  │ ││││ │││││  0x00007f1f692703f8: mov    0xc(%r12,%r11,8),%ebp  ;*getfield size
                    ││││    ││││  │ ││││ │││││                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                    ││││    ││││  │ ││││ │││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                    ││││    ││││  │ ││││ │││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.02%    0.00%    ││││    ││││  │ ││││ │││││  0x00007f1f692703fd: or     %rcx,%rbx
  0.02%    0.01%    ││││    ││││  │ ││││ │││││  0x00007f1f69270400: mov    %rbx,0x10(%r12,%r11,8)  ;*putfield pcsl
                    ││││    ││││  │ ││││ │││││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                    ││││    ││││  │ ││││ │││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                    ││││    ││││  │ ││││ │││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.28%    0.26%    ││││    ││││  │ ││││ │││││  0x00007f1f69270405: mov    %ebp,%r11d
  0.00%             ││││    ││││  │ ││││ │││││  0x00007f1f69270408: inc    %r11d
  0.01%    0.01%    ││││    ││││  │ ││││ │││││  0x00007f1f6927040b: mov    0x34(%rsp),%ecx
  0.03%    0.02%    ││││    ││││  │ ││││ │││││  0x00007f1f6927040f: mov    %r11d,0xc(%r12,%rcx,8)  ;*putfield size
                    ││││    ││││  │ ││││ │││││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                    ││││    ││││  │ ││││ │││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                    ││││    ││││  │ ││││ │││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.34%    0.26%    ││││    ││││  │ ││││ │││││  0x00007f1f69270414: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x00007f1f69271f31
  0.07%    0.04%    ││││    ││││  │ ││││ │││││  0x00007f1f69270419: cmp    %r11d,%ebp
                    ││││    ││││  │ ││││ │││││  0x00007f1f6927041c: jae    0x00007f1f69270c8d
  0.09%    0.05%    ││││    ││││  │ ││││ │││││  0x00007f1f69270422: mov    0x8(%r12,%r8,8),%r11d
  0.02%    0.04%    ││││    ││││  │ ││││ │││││  0x00007f1f69270427: cmp    $0xf8019807,%r11d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                    ││││    ││││  │ ││││ │││││  0x00007f1f6927042e: jne    0x00007f1f69270dad
  0.20%    0.24%    ││││    ││││  │ ││││ │││││  0x00007f1f69270434: mov    %r9,%r11
  0.01%    0.00%    ││││    ││││  │ ││││ │││││  0x00007f1f69270437: shr    $0x3,%r11          ;*aastore
                    ││││    ││││  │ ││││ │││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                    ││││    ││││  │ ││││ │││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                    ││││    ││││  │ ││││ │││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.03%    0.04%    ││││    ││││  │ ││││ │││││  0x00007f1f6927043b: lea    (%r12,%r8,8),%r10  ;*getfield denseThreadsInstructions
                    ││││    ││││  │ ││││ │││││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                    ││││    ││││  │ ││││ │││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                    ││││    ││││  │ ││││ │││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.02%    0.01%    ││││    ││││  │ ││││ │││││  0x00007f1f6927043f: lea    0x10(%r10,%rbp,4),%r10
  0.23%    0.27%    ││││    ││││  │ ││││ │││││  0x00007f1f69270444: mov    %r11d,(%r10)
  0.14%    0.10%    ││││    ││││  │ ││││ │││││  0x00007f1f69270447: shr    $0x9,%r10
  0.06%    0.02%    ││││    ││││  │ ││││ │││││  0x00007f1f6927044b: movabs $0x7f1f78a86000,%r11
  0.01%    0.01%    ││││    ││││  │ ││││ │││││  0x00007f1f69270455: mov    %r12b,(%r11,%r10,1)  ;*aastore
                    ││││    ││││  │ ││││ │││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                    ││││    ││││  │ ││││ │││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                    ││││    ││││  │ ││││ │││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.51%    0.37%    ││││    ││││  │ ╰│││ │││││  0x00007f1f69270459: jmpq   0x00007f1f692700c8
  0.00%    0.00%    ↘│││    ││││  │  │││ │││││  0x00007f1f6927045e: mov    $0x5,%r11d
                     │││    ││││  │  ╰││ │││││  0x00007f1f69270464: jmpq   0x00007f1f692700d9
           0.01%     │↘│    ││││  │   ││ │││││  0x00007f1f69270469: or     $0xa,%r11d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@27 (line 180)
                     │ │    ││││  │   ││ │││││                                                ; - com.google.re2j.Machine::match@326 (line 245)
                     │ │    ││││  │   ╰│ │││││  0x00007f1f6927046d: jmpq   0x00007f1f692700f1
                     │ │    ↘│││  │    │ │││││  0x00007f1f69270472: mov    $0x1,%eax
                     │ │     │││  │    ╰ │││││  0x00007f1f69270477: jmpq   0x00007f1f69270177
           0.01%     │ │     ↘││  │      │││││  0x00007f1f6927047c: test   %r9d,%r9d
                     │ │      ││  │      │││││  0x00007f1f6927047f: jne    0x00007f1f69270901  ;*getfield matched
                     │ │      ││  │      │││││                                                ; - com.google.re2j.Machine::match@451 (line 268)
           0.00%     │ │      ││  │      │││││  0x00007f1f69270485: mov    0x20(%rsp),%r11
  0.00%              │ │      ││  │      │││││  0x00007f1f6927048a: movzbl 0x18(%r11),%r10d   ; implicit exception: dispatches to 0x00007f1f69271fcd
  0.00%              │ │      ││  │      │││││  0x00007f1f6927048f: test   %r10d,%r10d
                     │ │      ││  │     ╭│││││  0x00007f1f69270492: jne    0x00007f1f692704ad  ;*ifeq
                     │ │      ││  │     ││││││                                                ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                     │ │      ││  │     ││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                     │ │      ││  │     ││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                     │ │      ││  │     ││││││                                                ; - com.google.re2j.Machine::match@447 (line 267)
           0.00%     │ │      ││  │     ││││││  0x00007f1f69270494: movb   $0x1,0x18(%r11)    ;*putfield empty
                     │ │      ││  │     ││││││                                                ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                     │ │      ││  │     ││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                     │ │      ││  │     ││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                     │ │      ││  │     ││││││                                                ; - com.google.re2j.Machine::match@447 (line 267)
           0.00%     │ │      ││  │     ││││││  0x00007f1f69270499: mov    0x1c(%r11),%ebp    ;*getfield pcs
                     │ │      ││  │     ││││││                                                ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                     │ │      ││  │     ││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                     │ │      ││  │     ││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                     │ │      ││  │     ││││││                                                ; - com.google.re2j.Machine::match@447 (line 267)
           0.00%     │ │      ││  │     ││││││  0x00007f1f6927049d: mov    %r12d,0xc(%r11)    ;*putfield size
                     │ │      ││  │     ││││││                                                ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                     │ │      ││  │     ││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                     │ │      ││  │     ││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                     │ │      ││  │     ││││││                                                ; - com.google.re2j.Machine::match@447 (line 267)
                     │ │      ││  │     ││││││  0x00007f1f692704a1: mov    %r12,0x10(%r11)    ;*putfield pcsl
                     │ │      ││  │     ││││││                                                ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                     │ │      ││  │     ││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                     │ │      ││  │     ││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                     │ │      ││  │     ││││││                                                ; - com.google.re2j.Machine::match@447 (line 267)
                     │ │      ││  │     ││││││  0x00007f1f692704a5: test   %ebp,%ebp
                     │ │      ││  │     ││││││  0x00007f1f692704a7: jne    0x00007f1f6927185d  ;*if_icmpne
                     │ │      ││  │     ││││││                                                ; - com.google.re2j.Machine::match@12 (line 183)
                     │ │      ││  │     ↘│││││  0x00007f1f692704ad: add    $0x80,%rsp
           0.00%     │ │      ││  │      │││││  0x00007f1f692704b4: pop    %rbp
  0.00%    0.01%     │ │      ││  │      │││││  0x00007f1f692704b5: test   %eax,0x16e0db45(%rip)        # 0x00007f1f8007e000
                     │ │      ││  │      │││││                                                ;   {poll_return}
  0.00%              │ │      ││  │      │││││  0x00007f1f692704bb: retq   
                     │ │      ↘│  │      │││││  0x00007f1f692704bc: mov    0x30(%rsp),%r8d
  0.00%              │ │       │  │      │││││  0x00007f1f692704c1: mov    $0xffffffff,%r11d
  0.00%              │ │       │  │      ╰││││  0x00007f1f692704c7: jmpq   0x00007f1f69270283
  0.01%    0.02%     │ │       ↘  │       ││││  0x00007f1f692704cc: xor    %r8d,%r8d
  0.01%              │ │          │       ││││  0x00007f1f692704cf: mov    $0xffffffff,%r11d
  0.01%    0.01%     │ │          │       ╰│││  0x00007f1f692704d5: jmpq   0x00007f1f69270283
                     ↘ │          │        │││  0x00007f1f692704da: or     $0x1,%r11d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@18 (line 177)
                       │          │        │││                                                ; - com.google.re2j.Machine::match@326 (line 245)
                       │          │        ╰││  0x00007f1f692704de: jmpq   0x00007f1f692700e3
           0.00%       ↘          │         ││  0x00007f1f692704e3: or     $0x2,%r11d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@37 (line 183)
                                  │         ││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.01%    0.01%                  │         ╰│  0x00007f1f692704e7: jmpq   0x00007f1f692700fb
  0.00%    0.01%                  ↘          │  0x00007f1f692704ec: mov    0x3c(%rsp),%r9d
                                             ╰  0x00007f1f692704f1: jmpq   0x00007f1f69270355
                                                0x00007f1f692704f6: data16 nopw 0x0(%rax,%rax,1)
                                                0x00007f1f69270500: mov    %r10d,%r11d
                                                0x00007f1f69270503: jmpq   0x00007f1f69270711
                                                0x00007f1f69270508: add    $0x2,%r11d
                                                0x00007f1f6927050c: mov    %r11d,%r10d
                                                0x00007f1f6927050f: inc    %r10d
           0.00%                                0x00007f1f69270512: jmp    0x00007f1f69270524
                                                0x00007f1f69270514: mov    %r11d,%r10d
                                                0x00007f1f69270517: add    $0x2,%r10d
....................................................................................................
 30.18%   29.57%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 542 (210 bytes) 

                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Machine::step@206 (line 314)
                                                                   ;   {optimized virtual_call}
                     0x00007f1f6924d430: test   %rax,%rax
                     0x00007f1f6924d433: jne    0x00007f1f6924ea1d
                     0x00007f1f6924d439: mov    0x30(%rsp),%r11    ;*synchronization entry
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.14%    0.24%     0x00007f1f6924d43e: mov    0x10(%rsp),%r13
  0.00%    0.02%     0x00007f1f6924d443: mov    0xa4(%rsp),%edi
  0.03%    0.02%     0x00007f1f6924d44a: mov    0xac(%rsp),%r10d   ;*synchronization entry
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.06%     0x00007f1f6924d452: mov    0xa8(%rsp),%r9d
  0.17%    0.08%     0x00007f1f6924d45a: mov    0xb0(%rsp),%r8d    ;*aload
                                                                   ; - com.google.re2j.Machine::step@211 (line 316)
  0.14%    0.09%     0x00007f1f6924d462: inc    %r10d              ;*iinc
                                                                   ; - com.google.re2j.Machine::step@222 (line 283)
  1.09%    1.12%     0x00007f1f6924d465: cmp    0x38(%rsp),%r10d
                     0x00007f1f6924d46a: jge    0x00007f1f6924d57d
  0.32%    0.30%     0x00007f1f6924d470: mov    %r9d,0xa8(%rsp)
  1.13%    1.23%     0x00007f1f6924d478: mov    %r8d,0xb0(%rsp)    ;*iload
                                                                   ; - com.google.re2j.Machine::step@31 (line 286)
  0.17%    0.19%     0x00007f1f6924d480: mov    0x20(%r13),%r8d    ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine::step@86 (line 296)
  0.93%    0.78%     0x00007f1f6924d484: mov    0xc(%r12,%r8,8),%ecx  ; implicit exception: dispatches to 0x00007f1f6924ec05
  0.54%    0.50%     0x00007f1f6924d489: cmp    %ecx,%r10d
                     0x00007f1f6924d48c: jae    0x00007f1f6924d6c4
  1.10%    1.38%     0x00007f1f6924d492: shl    $0x3,%r8
  0.12%    0.14%     0x00007f1f6924d496: mov    0x10(%r8,%r10,4),%ecx  ;*aaload
                                                                   ; - com.google.re2j.Machine::step@91 (line 296)
  1.26%    1.20%     0x00007f1f6924d49b: mov    0xc(%r12,%rcx,8),%ebp  ;*getfield op
                                                                   ; - com.google.re2j.Machine::step@96 (line 298)
                                                                   ; implicit exception: dispatches to 0x00007f1f6924ec19
  3.40%    3.38%     0x00007f1f6924d4a0: cmp    $0x6,%ebp
                     0x00007f1f6924d4a3: je     0x00007f1f6924d668  ;*if_icmpne
                                                                   ; - com.google.re2j.Machine::step@101 (line 298)
  2.14%    2.15%     0x00007f1f6924d4a9: cmp    $0xa,%ebp
                     0x00007f1f6924d4ac: je     0x00007f1f6924d0a0  ;*if_icmpne
                                                                   ; - com.google.re2j.Inst::matchRune@6 (line 90)
                                                                   ; - com.google.re2j.Machine::step@183 (line 313)
  0.30%    0.29%     0x00007f1f6924d4b2: cmp    $0xb,%ebp
                     0x00007f1f6924d4b5: je     0x00007f1f6924d6f5  ;*if_icmpne
                                                                   ; - com.google.re2j.Inst::matchRune@17 (line 94)
                                                                   ; - com.google.re2j.Machine::step@183 (line 313)
  1.96%    2.10%     0x00007f1f6924d4bb: mov    0x1c(%r12,%rcx,8),%r9d  ;*getfield f0
                                                                   ; - com.google.re2j.Inst::matchRune@42 (line 99)
                                                                   ; - com.google.re2j.Machine::step@183 (line 313)
  0.06%    0.10%     0x00007f1f6924d4c0: cmp    $0x9,%ebp
                  ╭  0x00007f1f6924d4c3: jne    0x00007f1f6924d4d8  ;*if_icmpne
                  │                                                ; - com.google.re2j.Inst::matchRune@38 (line 98)
                  │                                                ; - com.google.re2j.Machine::step@183 (line 313)
  0.40%    0.52%  │  0x00007f1f6924d4c5: cmp    0x20(%rsp),%r9d
                  │  0x00007f1f6924d4ca: je     0x00007f1f6924d65d  ;*if_icmpne
                  │                                                ; - com.google.re2j.Inst::matchRune@46 (line 99)
                  │                                                ; - com.google.re2j.Machine::step@183 (line 313)
  0.25%    0.27%  │  0x00007f1f6924d4d0: xor    %r8d,%r8d
  0.05%    0.09%  │  0x00007f1f6924d4d3: jmpq   0x00007f1f6924d005
  0.99%    1.07%  ↘  0x00007f1f6924d4d8: cmp    $0xc,%ebp
                     0x00007f1f6924d4db: jne    0x00007f1f6924d755  ;*if_icmpne
                                                                   ; - com.google.re2j.Inst::matchRune@61 (line 102)
                                                                   ; - com.google.re2j.Machine::step@183 (line 313)
  1.25%    1.19%     0x00007f1f6924d4e1: cmp    0x20(%rsp),%r9d
                     0x00007f1f6924d4e6: je     0x00007f1f6924d652  ;*if_icmpeq
                                                                   ; - com.google.re2j.Inst::matchRune@69 (line 103)
                                                                   ; - com.google.re2j.Machine::step@183 (line 313)
  0.86%    0.86%     0x00007f1f6924d4ec: mov    0x20(%r12,%rcx,8),%r8d  ;*getfield f1
                                                                   ; - com.google.re2j.Inst::matchRune@73 (line 103)
                                                                   ; - com.google.re2j.Machine::step@183 (line 313)
  0.02%    0.04%     0x00007f1f6924d4f1: cmp    0x20(%rsp),%r8d
                     0x00007f1f6924d4f6: je     0x00007f1f6924d652  ;*if_icmpeq
                                                                   ; - com.google.re2j.Inst::matchRune@77 (line 103)
                                                                   ; - com.google.re2j.Machine::step@183 (line 313)
  1.54%    1.49%     0x00007f1f6924d4fc: mov    0x24(%r12,%rcx,8),%ebp  ;*getfield f2
                                                                   ; - com.google.re2j.Inst::matchRune@81 (line 103)
                                                                   ; - com.google.re2j.Machine::step@183 (line 313)
  0.11%    0.10%     0x00007f1f6924d501: cmp    0x20(%rsp),%ebp
                     0x00007f1f6924d505: je     0x00007f1f6924d7b5  ;*if_icmpeq
                                                                   ; - com.google.re2j.Inst::matchRune@85 (line 103)
                                                                   ; - com.google.re2j.Machine::step@183 (line 313)
  1.39%    1.67%     0x00007f1f6924d50b: mov    0x28(%r12,%rcx,8),%ebp  ;*getfield f3
                                                                   ; - com.google.re2j.Inst::matchRune@89 (line 103)
                                                                   ; - com.google.re2j.Machine::step@183 (line 313)
  0.01%    0.02%     0x00007f1f6924d510: cmp    0x20(%rsp),%ebp
                     0x00007f1f6924d514: jne    0x00007f1f6924d002  ;*if_icmpne
                                                                   ; - com.google.re2j.Inst::matchRune@93 (line 103)
                                                                   ; - com.google.re2j.Machine::step@183 (line 313)
                     0x00007f1f6924d51a: mov    $0xffffff65,%esi
                     0x00007f1f6924d51f: mov    %r13,0x10(%rsp)
                     0x00007f1f6924d524: mov    %r10d,0xa4(%rsp)
                     0x00007f1f6924d52c: mov    %r11,0x30(%rsp)
                     0x00007f1f6924d531: mov    0x18(%rsp),%r11d
....................................................................................................
 21.96%   22.70%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Inst$Alt5Inst::add, version 552 (867 bytes) 

                            # parm5:    [sp+0x80]   = &apos;com/google/re2j/Machine&apos;  (sp of caller)
                            # parm6:    [sp+0x88]   = boolean
                            0x00007f1f6924b100: mov    0x8(%rsi),%r10d
                            0x00007f1f6924b104: shl    $0x3,%r10
                            0x00007f1f6924b108: cmp    %r10,%rax
                            0x00007f1f6924b10b: jne    0x00007f1f69045e20  ;   {runtime_call}
                            0x00007f1f6924b111: data16 xchg %ax,%ax
                            0x00007f1f6924b114: nopl   0x0(%rax,%rax,1)
                            0x00007f1f6924b11c: data16 data16 xchg %ax,%ax
                          [Verified Entry Point]
  0.26%    0.18%            0x00007f1f6924b120: mov    %eax,-0x14000(%rsp)
  0.12%    0.09%            0x00007f1f6924b127: push   %rbp
  0.22%    0.25%            0x00007f1f6924b128: sub    $0x70,%rsp         ;*synchronization entry
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@-1 (line 260)
  0.03%    0.00%            0x00007f1f6924b12c: vmovd  %r9d,%xmm4
  0.08%    0.09%            0x00007f1f6924b131: vmovq  %r8,%xmm3
  0.21%    0.24%            0x00007f1f6924b136: vmovq  %rsi,%xmm2
                            0x00007f1f6924b13b: mov    %ecx,%r13d
  0.03%    0.01%            0x00007f1f6924b13e: mov    0x18(%rsi),%ecx    ;*getfield pc
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@2 (line 260)
  0.05%    0.06%            0x00007f1f6924b141: mov    0x10(%rdx),%r11    ;*getfield pcsl
                                                                          ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
                                                                          ; implicit exception: dispatches to 0x00007f1f6924ba45
  0.24%    0.20%            0x00007f1f6924b145: cmp    $0x40,%ecx
                            0x00007f1f6924b148: jg     0x00007f1f6924b655  ;*if_icmpgt
                                                                          ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
           0.00%            0x00007f1f6924b14e: mov    $0x1,%esi
  0.04%    0.02%            0x00007f1f6924b153: mov    $0x1,%r9d
  0.07%    0.05%            0x00007f1f6924b159: shl    %cl,%r9            ;*lshl
                                                                          ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.25%    0.30%            0x00007f1f6924b15c: mov    %r11,%r10
  0.05%    0.04%            0x00007f1f6924b15f: and    %r9,%r10           ;*land
                                                                          ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.18%    0.23%            0x00007f1f6924b162: test   %r10,%r10
                  ╭         0x00007f1f6924b165: jne    0x00007f1f6924b484  ;*ifeq
                  │                                                       ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                       ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
                  │         0x00007f1f6924b16b: xor    %ebp,%ebp          ;*ireturn
                  │                                                       ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  │                                                       ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.04%    0.00%  │   ↗     0x00007f1f6924b16d: test   %r10,%r10
                  │   │     0x00007f1f6924b170: jne    0x00007f1f6924b689  ;*ifeq
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@8 (line 260)
  0.08%    0.05%  │   │     0x00007f1f6924b176: cmp    $0x40,%ecx
                  │   │     0x00007f1f6924b179: jge    0x00007f1f6924b6b9  ;*if_icmpge
                  │   │                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.23%    0.23%  │   │     0x00007f1f6924b17f: mov    %r12b,0x18(%rdx)   ;*putfield empty
                  │   │                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.00%           │   │     0x00007f1f6924b183: vmovq  %xmm2,%r10
  0.01%    0.00%  │   │     0x00007f1f6924b188: mov    0x2c(%r10),%ebp    ;*getfield outInst
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@23 (line 265)
  0.05%    0.07%  │   │     0x00007f1f6924b18c: or     %r11,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.19%    0.29%  │   │     0x00007f1f6924b18f: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  │   │                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.00%           │   │     0x00007f1f6924b193: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f1f6924ba59
  0.04%    0.02%  │   │     0x00007f1f6924b198: cmp    $0xf8019909,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │   │     0x00007f1f6924b19f: jne    0x00007f1f6924b539
  0.04%    0.10%  │   │     0x00007f1f6924b1a5: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.20%    0.28%  │   │     0x00007f1f6924b1a9: mov    0x18(%r11),%ecx    ;*getfield pc
                  │   │                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.00%           │   │     0x00007f1f6924b1ad: cmp    $0x40,%ecx
                  │   │     0x00007f1f6924b1b0: jg     0x00007f1f6924b6ed  ;*if_icmpgt
                  │   │                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │   │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.02%    0.04%  │   │     0x00007f1f6924b1b6: mov    $0x1,%r10d
  0.05%    0.04%  │   │     0x00007f1f6924b1bc: shl    %cl,%r10           ;*lshl
                  │   │                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │   │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.36%    0.33%  │   │     0x00007f1f6924b1bf: mov    %r9,%r8
  0.07%    0.05%  │   │     0x00007f1f6924b1c2: and    %r10,%r8           ;*land
                  │   │                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │   │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.18%    0.16%  │   │     0x00007f1f6924b1c5: test   %r8,%r8
                  │╭  │     0x00007f1f6924b1c8: jne    0x00007f1f6924b48e  ;*ifeq
                  ││  │                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  ││  │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││  │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.05%    0.05%  ││  │     0x00007f1f6924b1ce: xor    %ebp,%ebp          ;*ireturn
                  ││  │                                                   ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  ││  │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││  │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.05%    0.02%  ││  │↗    0x00007f1f6924b1d0: test   %r8,%r8
                  ││  ││    0x00007f1f6924b1d3: jne    0x00007f1f6924b729  ;*ifeq
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.19%    0.15%  ││  ││    0x00007f1f6924b1d9: cmp    $0x40,%ecx
                  ││  ││    0x00007f1f6924b1dc: jge    0x00007f1f6924b75d  ;*if_icmpge
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.05%    0.11%  ││  ││    0x00007f1f6924b1e2: or     %r10,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.02%    0.03%  ││  ││    0x00007f1f6924b1e5: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.03%    0.04%  ││  ││    0x00007f1f6924b1e9: mov    0x88(%rsp),%r8d
  0.17%    0.14%  ││  ││    0x00007f1f6924b1f1: test   %r8d,%r8d
                  ││  ││    0x00007f1f6924b1f4: jne    0x00007f1f6924b79d  ;*ifeq
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@24 (line 149)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.06%    0.05%  ││  ││    0x00007f1f6924b1fa: mov    0xc(%rdx),%ecx     ;*getfield size
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.01%           ││  ││    0x00007f1f6924b1fd: mov    0x20(%rdx),%ebx    ;*getfield denseThreadsInstructions
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.05%    0.02%  ││  ││    0x00007f1f6924b200: mov    %ecx,%edi
  0.24%    0.10%  ││  ││    0x00007f1f6924b202: inc    %edi               ;*iadd
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.10%    0.02%  ││  ││    0x00007f1f6924b204: mov    %edi,0xc(%rdx)     ;*putfield size
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.02%    0.01%  ││  ││    0x00007f1f6924b207: mov    0xc(%r12,%rbx,8),%r10d  ; implicit exception: dispatches to 0x00007f1f6924ba81
  0.03%    0.05%  ││  ││    0x00007f1f6924b20c: cmp    %r10d,%ecx
                  ││  ││    0x00007f1f6924b20f: jae    0x00007f1f6924b4bd
  0.17%    0.21%  ││  ││    0x00007f1f6924b215: vmovd  %edi,%xmm0
  0.05%    0.08%  ││  ││    0x00007f1f6924b219: mov    %ebx,%edi
  0.00%           ││  ││    0x00007f1f6924b21b: mov    %ecx,%eax
  0.06%    0.09%  ││  ││    0x00007f1f6924b21d: mov    %r11,%rcx
  0.20%    0.18%  ││  ││    0x00007f1f6924b220: mov    0x88(%rsp),%r11d
  0.06%    0.09%  ││  ││    0x00007f1f6924b228: mov    0x8(%r12,%rbx,8),%r8d
  0.03%    0.01%  ││  ││    0x00007f1f6924b22d: cmp    $0xf8019807,%r8d   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                  ││  ││    0x00007f1f6924b234: jne    0x00007f1f6924b569  ;*aastore
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.05%    0.03%  ││  ││    0x00007f1f6924b23a: vmovq  %xmm2,%r11
  0.14%    0.20%  ││  ││    0x00007f1f6924b23f: mov    0x34(%r11),%ebp    ;*getfield inst2
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@43 (line 266)
  0.07%    0.08%  ││  ││    0x00007f1f6924b243: shr    $0x3,%rcx          ;*aastore
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.00%    0.02%  ││  ││    0x00007f1f6924b247: lea    (%r12,%rbx,8),%r11  ;*getfield denseThreadsInstructions
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.05%    0.05%  ││  ││    0x00007f1f6924b24b: lea    0x10(%r11,%rax,4),%r8
  0.19%    0.18%  ││  ││    0x00007f1f6924b250: mov    %ecx,(%r8)
  0.14%    0.09%  ││  ││    0x00007f1f6924b253: mov    %r8,%rcx
  0.00%    0.01%  ││  ││    0x00007f1f6924b256: shr    $0x9,%rcx
  0.03%    0.04%  ││  ││    0x00007f1f6924b25a: movabs $0x7f1f78a86000,%r8
  0.18%    0.12%  ││  ││    0x00007f1f6924b264: mov    %r12b,(%r8,%rcx,1)  ;*aastore
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.09%    0.08%  ││  ││    0x00007f1f6924b268: mov    0x8(%r12,%rbp,8),%ebx  ; implicit exception: dispatches to 0x00007f1f6924ba9d
  0.00%           ││  ││    0x00007f1f6924b26d: cmp    $0xf8019909,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  ││  ││    0x00007f1f6924b273: jne    0x00007f1f6924b5a9
  0.03%    0.04%  ││  ││    0x00007f1f6924b279: lea    (%r12,%rbp,8),%r14  ;*invokevirtual add
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.15%    0.16%  ││  ││    0x00007f1f6924b27d: mov    0x18(%r14),%ecx    ;*getfield pc
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.11%    0.11%  ││  ││    0x00007f1f6924b281: vmovd  %ecx,%xmm1
  0.02%    0.03%  ││  ││    0x00007f1f6924b285: cmp    $0x40,%ecx
                  ││  ││    0x00007f1f6924b288: jg     0x00007f1f6924b7d9  ;*if_icmpgt
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.03%    0.05%  ││  ││    0x00007f1f6924b28e: mov    $0x1,%ebx
  0.22%    0.19%  ││  ││    0x00007f1f6924b293: shl    %cl,%rbx           ;*lshl
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.13%    0.19%  ││  ││    0x00007f1f6924b296: mov    %r9,%rcx
  0.16%    0.18%  ││  ││    0x00007f1f6924b299: and    %rbx,%rcx          ;*land
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.11%    0.11%  ││  ││    0x00007f1f6924b29c: test   %rcx,%rcx
                  ││╭ ││    0x00007f1f6924b29f: jne    0x00007f1f6924b498  ;*ifeq
                  │││ ││                                                  ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │││ ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││ ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.02%    0.01%  │││ ││    0x00007f1f6924b2a5: xor    %ebp,%ebp          ;*ireturn
                  │││ ││                                                  ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  │││ ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││ ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.05%    0.04%  │││ ││↗   0x00007f1f6924b2a7: test   %rcx,%rcx
                  │││ │││   0x00007f1f6924b2aa: jne    0x00007f1f6924b815  ;*ifeq
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.21%    0.13%  │││ │││   0x00007f1f6924b2b0: vmovd  %xmm1,%ecx
  0.10%    0.06%  │││ │││   0x00007f1f6924b2b4: cmp    $0x40,%ecx
                  │││ │││   0x00007f1f6924b2b7: jge    0x00007f1f6924b849  ;*if_icmpge
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.01%    0.04%  │││ │││   0x00007f1f6924b2bd: or     %rbx,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.03%    0.05%  │││ │││   0x00007f1f6924b2c0: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.23%    0.38%  │││ │││   0x00007f1f6924b2c4: mov    %eax,%ebx
  0.05%    0.10%  │││ │││   0x00007f1f6924b2c6: add    $0x2,%ebx
  0.01%    0.05%  │││ │││   0x00007f1f6924b2c9: mov    %ebx,0xc(%rdx)     ;*putfield size
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.02%    0.03%  │││ │││   0x00007f1f6924b2cc: mov    %eax,%ebx
  0.21%    0.21%  │││ │││   0x00007f1f6924b2ce: add    $0x4,%ebx          ;*iadd
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.07%    0.09%  │││ │││   0x00007f1f6924b2d1: cmp    %r10d,%ebx
                  │││ │││   0x00007f1f6924b2d4: jae    0x00007f1f6924b4fd  ;*aastore
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.01%    0.04%  │││ │││   0x00007f1f6924b2da: vmovq  %xmm2,%r10
  0.01%    0.03%  │││ │││   0x00007f1f6924b2df: mov    0x38(%r10),%ebp    ;*getfield inst3
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@63 (line 267)
  0.19%    0.28%  │││ │││   0x00007f1f6924b2e3: mov    %r14,%rcx
  0.04%    0.11%  │││ │││   0x00007f1f6924b2e6: shr    $0x3,%rcx          ;*aastore
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.02%    0.02%  │││ │││   0x00007f1f6924b2ea: movslq %eax,%r10
  0.03%    0.03%  │││ │││   0x00007f1f6924b2ed: lea    (%r11,%r10,4),%rdi  ;*aastore
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.20%    0.21%  │││ │││   0x00007f1f6924b2f1: mov    %rdi,%r10
  0.08%    0.09%  │││ │││   0x00007f1f6924b2f4: add    $0x14,%r10
  0.01%    0.02%  │││ │││   0x00007f1f6924b2f8: mov    %ecx,(%r10)
  0.05%    0.03%  │││ │││   0x00007f1f6924b2fb: shr    $0x9,%r10
  0.20%    0.14%  │││ │││   0x00007f1f6924b2ff: mov    %r12b,(%r8,%r10,1)  ;*aastore
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.07%    0.06%  │││ │││   0x00007f1f6924b303: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f1f6924bac5
  0.02%    0.02%  │││ │││   0x00007f1f6924b308: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │││ │││   0x00007f1f6924b30e: jne    0x00007f1f6924b5d5
  0.01%    0.04%  │││ │││   0x00007f1f6924b314: lea    (%r12,%rbp,8),%r14  ;*invokevirtual add
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.17%    0.16%  │││ │││   0x00007f1f6924b318: mov    0x18(%r14),%ecx    ;*getfield pc
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.11%    0.11%  │││ │││   0x00007f1f6924b31c: vmovd  %ecx,%xmm1
  0.02%    0.05%  │││ │││   0x00007f1f6924b320: cmp    $0x40,%ecx
                  │││ │││   0x00007f1f6924b323: jg     0x00007f1f6924b885  ;*if_icmpgt
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.01%    0.04%  │││ │││   0x00007f1f6924b329: mov    $0x1,%r10d
  0.19%    0.31%  │││ │││   0x00007f1f6924b32f: shl    %cl,%r10           ;*lshl
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.19%    0.19%  │││ │││   0x00007f1f6924b332: mov    %r9,%rcx
  0.14%    0.20%  │││ │││   0x00007f1f6924b335: and    %r10,%rcx          ;*land
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.06%    0.12%  │││ │││   0x00007f1f6924b338: test   %rcx,%rcx
                  │││╭│││   0x00007f1f6924b33b: jne    0x00007f1f6924b4a2  ;*ifeq
                  │││││││                                                 ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │││││││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││││││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.04%    0.03%  │││││││   0x00007f1f6924b341: xor    %ebp,%ebp          ;*ireturn
                  │││││││                                                 ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  │││││││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││││││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.04%    0.04%  │││││││↗  0x00007f1f6924b343: test   %rcx,%rcx
                  ││││││││  0x00007f1f6924b346: jne    0x00007f1f6924b8c1  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.20%    0.20%  ││││││││  0x00007f1f6924b34c: vmovd  %xmm1,%ecx
  0.08%    0.12%  ││││││││  0x00007f1f6924b350: cmp    $0x40,%ecx
                  ││││││││  0x00007f1f6924b353: jge    0x00007f1f6924b8f5  ;*if_icmpge
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.04%    0.06%  ││││││││  0x00007f1f6924b359: or     %r10,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.03%    0.07%  ││││││││  0x00007f1f6924b35c: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.20%    0.25%  ││││││││  0x00007f1f6924b360: vmovq  %xmm2,%r10
  0.08%    0.08%  ││││││││  0x00007f1f6924b365: mov    0x3c(%r10),%ebp    ;*getfield inst4
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@83 (line 268)
  0.10%    0.06%  ││││││││  0x00007f1f6924b369: mov    %rdi,%r10
  0.02%    0.02%  ││││││││  0x00007f1f6924b36c: add    $0x18,%r10
  0.19%    0.24%  ││││││││  0x00007f1f6924b370: mov    %r14,%rcx
  0.05%    0.11%  ││││││││  0x00007f1f6924b373: shr    $0x3,%rcx
  0.01%    0.05%  ││││││││  0x00007f1f6924b377: mov    %ecx,(%r10)        ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.08%    0.05%  ││││││││  0x00007f1f6924b37a: mov    %eax,%ecx
  0.15%    0.17%  ││││││││  0x00007f1f6924b37c: add    $0x3,%ecx
  0.07%    0.08%  ││││││││  0x00007f1f6924b37f: mov    %ecx,0xc(%rdx)     ;*putfield size
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.06%    0.07%  ││││││││  0x00007f1f6924b382: shr    $0x9,%r10
  0.03%    0.04%  ││││││││  0x00007f1f6924b386: mov    %r12b,(%r8,%r10,1)  ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.21%    0.22%  ││││││││  0x00007f1f6924b38a: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f1f6924baed
  0.07%    0.05%  ││││││││  0x00007f1f6924b38f: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  ││││││││  0x00007f1f6924b395: jne    0x00007f1f6924b601
  0.04%    0.04%  ││││││││  0x00007f1f6924b39b: lea    (%r12,%rbp,8),%r14  ;*invokevirtual add
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.03%    0.03%  ││││││││  0x00007f1f6924b39f: mov    0x18(%r14),%ecx    ;*getfield pc
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.14%    0.24%  ││││││││  0x00007f1f6924b3a3: vmovd  %ecx,%xmm0
  0.06%    0.07%  ││││││││  0x00007f1f6924b3a7: cmp    $0x40,%ecx
                  ││││││││  0x00007f1f6924b3aa: jg     0x00007f1f6924b931  ;*if_icmpgt
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.03%    0.03%  ││││││││  0x00007f1f6924b3b0: mov    $0x1,%r10d
  0.03%    0.01%  ││││││││  0x00007f1f6924b3b6: shl    %cl,%r10           ;*lshl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.28%    0.40%  ││││││││  0x00007f1f6924b3b9: mov    %r9,%rcx
  0.03%    0.01%  ││││││││  0x00007f1f6924b3bc: and    %r10,%rcx          ;*land
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.16%    0.12%  ││││││││  0x00007f1f6924b3bf: test   %rcx,%rcx
                  ││││││││  0x00007f1f6924b3c2: jne    0x00007f1f6924b4ac  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.12%    0.04%  ││││││││  0x00007f1f6924b3c8: xor    %ebp,%ebp          ;*ireturn
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.05%    0.05%  ││││││││  0x00007f1f6924b3ca: test   %rcx,%rcx
                  ││││││││  0x00007f1f6924b3cd: jne    0x00007f1f6924b96d  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.02%    0.03%  ││││││││  0x00007f1f6924b3d3: vmovd  %xmm0,%ecx
  0.19%    0.27%  ││││││││  0x00007f1f6924b3d7: cmp    $0x40,%ecx
                  ││││││││  0x00007f1f6924b3da: jge    0x00007f1f6924b9a1  ;*if_icmpge
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.08%    0.11%  ││││││││  0x00007f1f6924b3e0: mov    %ebx,0xc(%rdx)     ;*putfield size
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.05%    0.07%  ││││││││  0x00007f1f6924b3e3: vmovq  %xmm2,%rcx
  0.02%    0.04%  ││││││││  0x00007f1f6924b3e8: mov    0x40(%rcx),%ebp    ;*getfield inst5
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@103 (line 269)
  0.22%    0.31%  ││││││││  0x00007f1f6924b3eb: mov    %rdi,%rcx
  0.07%    0.09%  ││││││││  0x00007f1f6924b3ee: add    $0x1c,%rcx         ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.02%    0.02%  ││││││││  0x00007f1f6924b3f2: or     %r10,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.02%    0.01%  ││││││││  0x00007f1f6924b3f5: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.24%    0.20%  ││││││││  0x00007f1f6924b3f9: mov    %r14,%r10
  0.07%    0.09%  ││││││││  0x00007f1f6924b3fc: shr    $0x3,%r10
  0.03%    0.02%  ││││││││  0x00007f1f6924b400: mov    %r10d,(%rcx)
  0.01%    0.02%  ││││││││  0x00007f1f6924b403: mov    %rcx,%r10
  0.22%    0.24%  ││││││││  0x00007f1f6924b406: shr    $0x9,%r10
  0.07%    0.08%  ││││││││  0x00007f1f6924b40a: mov    %r12b,(%r8,%r10,1)  ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.05%    0.01%  ││││││││  0x00007f1f6924b40e: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f1f6924bb15
  0.03%    0.07%  ││││││││  0x00007f1f6924b413: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  ││││││││  0x00007f1f6924b41a: jne    0x00007f1f6924b62d
  0.23%    0.19%  ││││││││  0x00007f1f6924b420: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.06%    0.08%  ││││││││  0x00007f1f6924b424: mov    0x18(%r10),%ecx    ;*getfield pc
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.08%    0.05%  ││││││││  0x00007f1f6924b428: cmp    $0x40,%ecx
                  ││││││││  0x00007f1f6924b42b: jg     0x00007f1f6924b9dd  ;*if_icmpgt
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.07%    0.07%  ││││││││  0x00007f1f6924b431: shl    %cl,%rsi           ;*lshl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.28%    0.29%  ││││││││  0x00007f1f6924b434: mov    %r9,%rbx
  0.02%    0.01%  ││││││││  0x00007f1f6924b437: and    %rsi,%rbx          ;*land
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.11%    0.22%  ││││││││  0x00007f1f6924b43a: test   %rbx,%rbx
                  ││││││││  0x00007f1f6924b43d: jne    0x00007f1f6924b4b6  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.09%    0.10%  ││││││││  0x00007f1f6924b43f: xor    %ebp,%ebp          ;*ireturn
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.05%    0.04%  ││││││││  0x00007f1f6924b441: test   %rbx,%rbx
                  ││││││││  0x00007f1f6924b444: jne    0x00007f1f6924ba01  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.04%    0.02%  ││││││││  0x00007f1f6924b44a: cmp    $0x40,%ecx
                  ││││││││  0x00007f1f6924b44d: jge    0x00007f1f6924ba21  ;*if_icmpge
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.14%    0.20%  ││││││││  0x00007f1f6924b453: or     %rsi,%r9
  0.06%    0.04%  ││││││││  0x00007f1f6924b456: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.04%    0.06%  ││││││││  0x00007f1f6924b45a: add    $0x20,%rdi
  0.02%    0.03%  ││││││││  0x00007f1f6924b45e: shr    $0x3,%r10
  0.14%    0.07%  ││││││││  0x00007f1f6924b462: mov    %r10d,(%rdi)       ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.12%    0.08%  ││││││││  0x00007f1f6924b465: mov    %rdi,%r10
  0.03%    0.03%  ││││││││  0x00007f1f6924b468: add    $0x5,%eax
  0.01%    0.03%  ││││││││  0x00007f1f6924b46b: mov    %eax,0xc(%rdx)     ;*putfield size
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.17%    0.18%  ││││││││  0x00007f1f6924b46e: shr    $0x9,%r10
  0.11%    0.09%  ││││││││  0x00007f1f6924b472: mov    %r12b,(%r8,%r10,1)  ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.08%    0.08%  ││││││││  0x00007f1f6924b476: xor    %eax,%eax
  0.03%    0.02%  ││││││││  0x00007f1f6924b478: add    $0x70,%rsp
  0.15%    0.29%  ││││││││  0x00007f1f6924b47c: pop    %rbp
  0.05%    0.09%  ││││││││  0x00007f1f6924b47d: test   %eax,0x16e32b7d(%rip)        # 0x00007f1f8007e000
                  ││││││││                                                ;   {poll_return}
  0.07%    0.04%  ││││││││  0x00007f1f6924b483: retq   
                  ↘│││││││  0x00007f1f6924b484: mov    $0x1,%ebp
                   │││╰│││  0x00007f1f6924b489: jmpq   0x00007f1f6924b16d
                   ↘││ │││  0x00007f1f6924b48e: mov    $0x1,%ebp
                    ││ ╰││  0x00007f1f6924b493: jmpq   0x00007f1f6924b1d0
                    ↘│  ││  0x00007f1f6924b498: mov    $0x1,%ebp
                     │  ╰│  0x00007f1f6924b49d: jmpq   0x00007f1f6924b2a7
                     ↘   │  0x00007f1f6924b4a2: mov    $0x1,%ebp
                         ╰  0x00007f1f6924b4a7: jmpq   0x00007f1f6924b343
                            0x00007f1f6924b4ac: mov    $0x1,%ebp
....................................................................................................
 16.32%   17.56%  <total for region 3>

....[Hottest Region 4]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 542 (778 bytes) 

                    0x00007f1f6924d082: shr    $0x3,%r9
                    0x00007f1f6924d086: mov    %r9d,(%rbx)
                    0x00007f1f6924d089: shr    $0x9,%r10
                    0x00007f1f6924d08d: movabs $0x7f1f78a86000,%r8
                    0x00007f1f6924d097: mov    %r12b,(%r8,%r10,1)  ;*aastore
                                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
                    0x00007f1f6924d09b: jmpq   0x00007f1f6924d43e
  0.11%    0.12%    0x00007f1f6924d0a0: mov    0x2c(%r12,%rcx,8),%ecx  ;*getfield outInst
                                                                  ; - com.google.re2j.Machine::step@191 (line 314)
  0.33%    0.24%    0x00007f1f6924d0a5: mov    0x8(%r12,%rcx,8),%ebx  ; implicit exception: dispatches to 0x00007f1f6924ec29
  0.90%    0.83%    0x00007f1f6924d0aa: lea    (%r12,%rcx,8),%r8
  0.02%    0.00%    0x00007f1f6924d0ae: cmp    $0xf8019843,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                    0x00007f1f6924d0b4: jne    0x00007f1f6924d5af  ;*invokevirtual add
                                                                  ; - com.google.re2j.Machine::step@206 (line 314)
  0.21%    0.32%    0x00007f1f6924d0ba: mov    0x18(%r8),%r14d    ;*getfield pc
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.10%    0x00007f1f6924d0be: mov    0x10(%r11),%r9     ;*getfield pcsl
                                                                  ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
                                                                  ; implicit exception: dispatches to 0x00007f1f6924ec5d
  0.02%    0.00%    0x00007f1f6924d0c2: cmp    $0x40,%r14d
                    0x00007f1f6924d0c6: jg     0x00007f1f6924dc39  ;*if_icmpgt
                                                                  ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.20%    0.24%    0x00007f1f6924d0cc: mov    $0x1,%eax
  0.00%    0.00%    0x00007f1f6924d0d1: mov    %r14d,%ecx
  0.06%    0.02%    0x00007f1f6924d0d4: shl    %cl,%rax           ;*lshl
                                                                  ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.56%    0.60%    0x00007f1f6924d0d7: mov    %r9,%rcx
  0.01%    0.02%    0x00007f1f6924d0da: and    %rax,%rcx
  0.01%    0.01%    0x00007f1f6924d0dd: test   %rcx,%rcx
                    0x00007f1f6924d0e0: jne    0x00007f1f6924d452  ;*ifeq
                                                                  ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.12%    0.16%    0x00007f1f6924d0e6: cmp    $0x40,%r14d
                    0x00007f1f6924d0ea: jge    0x00007f1f6924dca5  ;*if_icmpge
                                                                  ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.15%    0.12%    0x00007f1f6924d0f0: mov    %r12b,0x18(%r11)   ;*putfield empty
                                                                  ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%    0.02%    0x00007f1f6924d0f4: mov    0x2c(%r8),%ebp     ;*getfield outInst
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 180)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.02%    0x00007f1f6924d0f8: or     %r9,%rax           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.16%    0.14%    0x00007f1f6924d0fb: mov    %rax,0x10(%r11)    ;*putfield pcsl
                                                                  ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.14%    0.13%    0x00007f1f6924d0ff: mov    0x8(%r12,%rbp,8),%r9d  ; implicit exception: dispatches to 0x00007f1f6924ec71
  0.39%    0.41%    0x00007f1f6924d104: cmp    $0xf8019909,%r9d   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                    0x00007f1f6924d10b: jne    0x00007f1f6924d881
  0.23%    0.22%    0x00007f1f6924d111: lea    (%r12,%rbp,8),%r9  ;*invokevirtual add
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
                    0x00007f1f6924d115: mov    0x18(%r9),%r14d    ;*getfield pc
                                                                  ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.25%    0.30%    0x00007f1f6924d119: cmp    $0x40,%r14d
                    0x00007f1f6924d11d: jg     0x00007f1f6924dd11  ;*if_icmpgt
                                                                  ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.17%    0.28%    0x00007f1f6924d123: mov    $0x1,%ebx
  0.05%    0.05%    0x00007f1f6924d128: mov    %r14d,%ecx
                    0x00007f1f6924d12b: shl    %cl,%rbx           ;*lshl
                                                                  ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.48%    0.50%    0x00007f1f6924d12e: mov    %rax,%rcx
           0.00%    0x00007f1f6924d131: and    %rbx,%rcx          ;*land
                                                                  ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.00%    0x00007f1f6924d134: test   %rcx,%rcx
                    0x00007f1f6924d137: jne    0x00007f1f6924dd81  ;*ifeq
                                                                  ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.07%    0x00007f1f6924d13d: cmp    $0x40,%r14d
                    0x00007f1f6924d141: jge    0x00007f1f6924ddf9  ;*if_icmpge
                                                                  ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.25%    0.25%    0x00007f1f6924d147: or     %rbx,%rax          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%             0x00007f1f6924d14a: mov    %rax,0x10(%r11)    ;*putfield pcsl
                                                                  ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.00%    0x00007f1f6924d14e: mov    0x20(%r11),%edx    ;*getfield denseThreadsInstructions
                                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.05%    0x00007f1f6924d152: mov    0xc(%r11),%ebx     ;*getfield size
                                                                  ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.28%    0.16%    0x00007f1f6924d156: mov    %ebx,%esi
                    0x00007f1f6924d158: inc    %esi               ;*iadd
                                                                  ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%             0x00007f1f6924d15a: mov    %esi,0xc(%r11)     ;*putfield size
                                                                  ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.02%    0x00007f1f6924d15e: mov    0xc(%r12,%rdx,8),%r14d  ; implicit exception: dispatches to 0x00007f1f6924ec85
  0.20%    0.15%    0x00007f1f6924d163: cmp    %r14d,%ebx
                    0x00007f1f6924d166: jae    0x00007f1f6924d815
  0.02%    0.02%    0x00007f1f6924d16c: mov    0x8(%r12,%rdx,8),%ecx
  0.01%    0.03%    0x00007f1f6924d171: cmp    $0xf8019807,%ecx   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                    0x00007f1f6924d177: jne    0x00007f1f6924d8e9  ;*aastore
                                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.03%    0x00007f1f6924d17d: mov    0x34(%r8),%r8d     ;*getfield inst2
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@43 (line 181)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.22%    0.14%    0x00007f1f6924d181: mov    %r9,%rcx
  0.01%    0.00%    0x00007f1f6924d184: shr    $0x3,%rcx          ;*aastore
                                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%    0.03%    0x00007f1f6924d188: lea    (%r12,%rdx,8),%r9  ;*getfield denseThreadsInstructions
                                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.05%    0x00007f1f6924d18c: lea    0x10(%r9,%rbx,4),%rbp
  0.15%    0.15%    0x00007f1f6924d191: mov    %ecx,0x0(%rbp)
  0.08%    0.07%    0x00007f1f6924d194: mov    %rbp,%rcx
  0.02%    0.01%    0x00007f1f6924d197: shr    $0x9,%rcx
  0.03%    0.05%    0x00007f1f6924d19b: movabs $0x7f1f78a86000,%rbp
  0.18%    0.20%    0x00007f1f6924d1a5: mov    %r12b,0x0(%rbp,%rcx,1)  ;*aastore
                                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.04%    0x00007f1f6924d1aa: mov    0x8(%r12,%r8,8),%ecx  ;*invokevirtual add
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
                                                                  ; implicit exception: dispatches to 0x00007f1f6924eca1
  0.01%    0.01%    0x00007f1f6924d1af: vmovd  %r8d,%xmm0
  0.04%    0.05%    0x00007f1f6924d1b4: vmovd  %esi,%xmm2
  0.23%    0.19%    0x00007f1f6924d1b8: vmovd  %edx,%xmm1
  0.03%    0.03%    0x00007f1f6924d1bc: mov    %r10d,0xac(%rsp)
  0.02%    0.03%    0x00007f1f6924d1c4: mov    %edi,0xa4(%rsp)
  0.05%    0.03%    0x00007f1f6924d1cb: mov    %r11,%rdi
  0.22%    0.16%    0x00007f1f6924d1ce: mov    %r13,0x10(%rsp)
  0.05%    0.02%    0x00007f1f6924d1d3: mov    %ebx,%esi
  0.02%    0.01%    0x00007f1f6924d1d5: movslq %ebx,%r10
  0.04%    0.05%    0x00007f1f6924d1d8: lea    (%r9,%r10,4),%r8   ;*aastore
                                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.19%    0.17%    0x00007f1f6924d1dc: mov    %r8,%rbx
  0.05%    0.02%    0x00007f1f6924d1df: add    $0x14,%rbx         ;*aastore
                                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.01%    0x00007f1f6924d1e3: vmovd  %xmm0,%r10d
  0.03%    0.05%    0x00007f1f6924d1e8: lea    (%r12,%r10,8),%r11
  0.18%    0.24%    0x00007f1f6924d1ec: mov    %esi,%r10d
  0.02%    0.02%    0x00007f1f6924d1ef: add    $0x2,%r10d         ;*iadd
                                                                  ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.00%    0x00007f1f6924d1f3: cmp    $0xf8019885,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                    0x00007f1f6924d1f9: jne    0x00007f1f6924d023  ;*invokevirtual add
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.03%    0x00007f1f6924d1ff: mov    %r11,%r13
  0.23%    0.17%    0x00007f1f6924d202: mov    0x18(%r11),%r11d   ;*getfield pc
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@2 (line 461)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.02%    0x00007f1f6924d206: vmovd  %r11d,%xmm0
  0.02%    0.03%    0x00007f1f6924d20b: cmp    $0x40,%r11d
                    0x00007f1f6924d20f: jg     0x00007f1f6924e095  ;*if_icmpgt
                                                                  ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.02%    0x00007f1f6924d215: mov    $0x1,%edx
  0.14%    0.09%    0x00007f1f6924d21a: mov    %r11d,%ecx
  0.01%    0.04%    0x00007f1f6924d21d: shl    %cl,%rdx           ;*lshl
                                                                  ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.28%    0.14%    0x00007f1f6924d220: mov    %rax,%r11
  0.05%    0.03%    0x00007f1f6924d223: and    %rdx,%r11          ;*land
                                                                  ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%             0x00007f1f6924d226: test   %r11,%r11
                    0x00007f1f6924d229: jne    0x00007f1f6924e119  ;*ifeq
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@8 (line 461)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.01%    0x00007f1f6924d22f: mov    %ecx,%r11d
  0.21%    0.03%    0x00007f1f6924d232: cmp    $0x40,%r11d
                    0x00007f1f6924d236: jge    0x00007f1f6924e1ad  ;*if_icmpge
                                                                  ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.05%    0x00007f1f6924d23c: or     %rdx,%rax          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%    0.01%    0x00007f1f6924d23f: mov    %rax,0x10(%rdi)    ;*putfield pcsl
                                                                  ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.02%    0x00007f1f6924d243: mov    0x2c(%r13),%ebp    ;*getfield outInst
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@82 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.18%    0.08%    0x00007f1f6924d247: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f1f6924ecb5
  0.04%    0.03%    0x00007f1f6924d24c: cmp    $0xf8019843,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                    0x00007f1f6924d253: jne    0x00007f1f6924db3d
  0.03%    0.04%    0x00007f1f6924d259: lea    (%r12,%rbp,8),%r13  ;*invokevirtual add
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.04%    0x00007f1f6924d25d: mov    0x18(%r13),%r11d   ;*getfield pc
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 175)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.20%    0.25%    0x00007f1f6924d261: mov    %r11d,%ecx
  0.00%    0.00%    0x00007f1f6924d264: cmp    $0x40,%r11d
                    0x00007f1f6924d268: jg     0x00007f1f6924e3fd  ;*if_icmpgt
                                                                  ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.00%    0x00007f1f6924d26e: mov    $0x1,%edx
  0.02%             0x00007f1f6924d273: shl    %cl,%rdx           ;*lshl
                                                                  ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.27%    0.09%    0x00007f1f6924d276: mov    %rax,%r11
  0.03%    0.03%    0x00007f1f6924d279: and    %rdx,%r11
  0.19%    0.24%    0x00007f1f6924d27c: test   %r11,%r11
                    0x00007f1f6924d27f: jne    0x00007f1f6924d6a9  ;*ifeq
                                                                  ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.02%    0x00007f1f6924d285: mov    %ecx,%r11d
  0.01%    0.02%    0x00007f1f6924d288: cmp    $0x40,%r11d
                    0x00007f1f6924d28c: jge    0x00007f1f6924e481  ;*if_icmpge
                                                                  ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.04%    0x00007f1f6924d292: or     %rdx,%rax          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.19%    0.27%    0x00007f1f6924d295: mov    %rax,0x10(%rdi)    ;*putfield pcsl
                                                                  ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.03%    0x00007f1f6924d299: mov    0x2c(%r13),%ebp    ;*getfield outInst
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 180)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.02%    0x00007f1f6924d29d: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f1f6924ecc9
  0.04%    0.07%    0x00007f1f6924d2a2: cmp    $0xf8019909,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                    0x00007f1f6924d2a9: jne    0x00007f1f6924dbad
  0.21%    0.22%    0x00007f1f6924d2af: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
           0.01%    0x00007f1f6924d2b3: vmovq  %r11,%xmm0
  0.02%    0.06%    0x00007f1f6924d2b8: mov    0x18(%r11),%r11d   ;*getfield pc
                                                                  ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.07%    0.09%    0x00007f1f6924d2bc: vmovd  %r11d,%xmm3
  0.20%    0.33%    0x00007f1f6924d2c1: cmp    $0x40,%r11d
                    0x00007f1f6924d2c5: jg     0x00007f1f6924e505  ;*if_icmpgt
                                                                  ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.00%    0x00007f1f6924d2cb: mov    $0x1,%edx
  0.01%    0.03%    0x00007f1f6924d2d0: mov    %r11d,%ecx
  0.06%    0.08%    0x00007f1f6924d2d3: shl    %cl,%rdx           ;*lshl
                                                                  ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.26%    0.29%    0x00007f1f6924d2d6: mov    %rax,%r11
  0.03%    0.03%    0x00007f1f6924d2d9: and    %rdx,%r11          ;*land
                                                                  ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.22%    0.27%    0x00007f1f6924d2dc: test   %r11,%r11
                    0x00007f1f6924d2df: jne    0x00007f1f6924e591  ;*ifeq
                                                                  ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.01%    0x00007f1f6924d2e5: mov    %ecx,%r11d
  0.03%    0.05%    0x00007f1f6924d2e8: cmp    $0x40,%r11d
                    0x00007f1f6924d2ec: jge    0x00007f1f6924e631  ;*if_icmpge
                                                                  ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.05%    0x00007f1f6924d2f2: mov    %r10d,0xc(%rdi)    ;*putfield size
                                                                  ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.20%    0.21%    0x00007f1f6924d2f6: or     %rdx,%rax          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%             0x00007f1f6924d2f9: mov    %rax,0x10(%rdi)    ;*putfield pcsl
                                                                  ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.05%    0x00007f1f6924d2fd: cmp    %r14d,%r10d
  0.04%    0.04%    0x00007f1f6924d300: jae    0x00007f1f6924da39  ;*aastore
                                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.26%    0.22%    0x00007f1f6924d306: mov    0x34(%r13),%r11d   ;*getfield inst2
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@43 (line 181)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.01%    0x00007f1f6924d30a: mov    %rbx,%rcx
  0.02%    0.05%    0x00007f1f6924d30d: vmovq  %xmm0,%r10
  0.07%    0.03%    0x00007f1f6924d312: shr    $0x3,%r10
  0.18%    0.24%    0x00007f1f6924d316: mov    %r10d,(%rbx)
  0.04%    0.02%    0x00007f1f6924d319: shr    $0x9,%rcx
  0.02%    0.04%    0x00007f1f6924d31d: movabs $0x7f1f78a86000,%r10
  0.04%    0.03%    0x00007f1f6924d327: mov    %r12b,(%r10,%rcx,1)  ;*aastore
                                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.28%    0.25%    0x00007f1f6924d32b: mov    0x8(%r12,%r11,8),%ebx  ; implicit exception: dispatches to 0x00007f1f6924ecdd
  0.04%    0.02%    0x00007f1f6924d330: lea    (%r12,%r11,8),%r10
  0.02%    0.01%    0x00007f1f6924d334: cmp    $0xf8019885,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                    0x00007f1f6924d33a: je     0x00007f1f6924d3af
  0.06%    0.04%    0x00007f1f6924d33c: cmp    $0xf8019909,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                    0x00007f1f6924d342: jne    0x00007f1f6924de69  ;*invokevirtual add
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.22%    0.24%    0x00007f1f6924d348: mov    0x18(%r10),%ecx    ;*getfield pc
                                                                  ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.03%    0x00007f1f6924d34c: cmp    $0x40,%ecx
                    0x00007f1f6924d34f: jg     0x00007f1f6924e851  ;*if_icmpgt
                                                                  ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.03%    0x00007f1f6924d355: mov    $0x1,%r11d
  0.03%    0.05%    0x00007f1f6924d35b: shl    %cl,%r11           ;*lshl
                                                                  ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.17%    0.28%    0x00007f1f6924d35e: mov    %rax,%rbx
  0.05%    0.05%    0x00007f1f6924d361: and    %r11,%rbx          ;*land
                                                                  ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.17%    0.11%    0x00007f1f6924d364: test   %rbx,%rbx
                    0x00007f1f6924d367: jne    0x00007f1f6924e8e5  ;*ifeq
                                                                  ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.02%    0x00007f1f6924d36d: cmp    $0x40,%ecx
                    0x00007f1f6924d370: jge    0x00007f1f6924e989  ;*if_icmpge
                                                                  ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.02%    0x00007f1f6924d376: or     %r11,%rax
  0.02%    0.02%    0x00007f1f6924d379: mov    %rdi,%r11
  0.20%    0.32%    0x00007f1f6924d37c: mov    %rax,0x10(%r11)    ;*putfield pcsl
                                                                  ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.08%    0.03%    0x00007f1f6924d380: add    $0x18,%r8
  0.03%    0.01%    0x00007f1f6924d384: mov    %r10,%r9
  0.04%    0.04%    0x00007f1f6924d387: shr    $0x3,%r9
  0.17%    0.36%    0x00007f1f6924d38b: mov    %r9d,(%r8)         ;*aastore
                                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.12%    0.07%    0x00007f1f6924d38e: mov    %r8,%r10
  0.03%    0.04%    0x00007f1f6924d391: add    $0x3,%esi
  0.05%    0.03%    0x00007f1f6924d394: mov    %esi,0xc(%r11)     ;*putfield size
                                                                  ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.23%    0.27%    0x00007f1f6924d398: shr    $0x9,%r10
  0.03%    0.04%    0x00007f1f6924d39c: movabs $0x7f1f78a86000,%r8
  0.01%    0.02%    0x00007f1f6924d3a6: mov    %r12b,(%r8,%r10,1)  ;*aastore
                                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.07%    0.08%    0x00007f1f6924d3aa: jmpq   0x00007f1f6924d43e  ;*invokevirtual add
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
....................................................................................................
 14.49%   14.54%  <total for region 4>

....[Hottest Regions]...............................................................................
 30.18%   29.57%         C2, level 4  com.google.re2j.Machine::match, version 598 (1214 bytes) 
 21.96%   22.70%         C2, level 4  com.google.re2j.Machine::step, version 542 (210 bytes) 
 16.32%   17.56%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 552 (867 bytes) 
 14.49%   14.54%         C2, level 4  com.google.re2j.Machine::step, version 542 (778 bytes) 
  7.39%    7.38%         C2, level 4  com.google.re2j.Machine::step, version 542 (126 bytes) 
  3.57%    2.76%         C2, level 4  com.google.re2j.Machine::step, version 542 (224 bytes) 
  2.31%    2.31%   [kernel.kallsyms]  [unknown] (0 bytes) 
  1.37%    1.38%         C2, level 4  com.google.re2j.Machine::match, version 598 (68 bytes) 
  0.12%    0.09%         C2, level 4  com.google.re2j.Pattern::find, version 588 (28 bytes) 
  0.10%    0.04%         C2, level 4  com.google.re2j.Pattern::find, version 588 (8 bytes) 
  0.10%                  C2, level 4  com.google.re2j.Pattern::find, version 588 (116 bytes) 
  0.09%    0.00%   [kernel.kallsyms]  [unknown] (37 bytes) 
  0.09%    0.06%         C2, level 4  com.google.re2j.Pattern::find, version 588 (28 bytes) 
  0.08%            [kernel.kallsyms]  [unknown] (1 bytes) 
  0.08%                  C2, level 4  com.google.re2j.Pattern::find, version 588 (100 bytes) 
  0.06%    0.06%         C2, level 4  com.google.re2j.Pattern::find, version 588 (8 bytes) 
  0.05%                  C2, level 4  com.google.re2j.Pattern::find, version 588 (31 bytes) 
  0.05%    0.04%         C2, level 4  com.google.re2j.Machine::match, version 598 (109 bytes) 
  0.05%    0.01%         C2, level 4  java.util.Collections::shuffle, version 609 (27 bytes) 
  0.04%    0.02%   [kernel.kallsyms]  [unknown] (28 bytes) 
  1.50%    1.45%  <...other 314 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 47.41%   47.39%         C2, level 4  com.google.re2j.Machine::step, version 542 
 31.79%   31.17%         C2, level 4  com.google.re2j.Machine::match, version 598 
 16.32%   17.56%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 552 
  2.95%    2.82%   [kernel.kallsyms]  [unknown] 
  0.74%    0.27%         C2, level 4  com.google.re2j.Pattern::find, version 588 
  0.10%    0.04%         C2, level 4  java.util.Collections::shuffle, version 609 
  0.04%    0.00%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testCombine_jmhTest::testCombine_thrpt_jmhStub, version 658 
  0.04%    0.01%           libjvm.so  xmlTextStream::write 
  0.04%    0.03%      hsdis-amd64.so  [unknown] 
  0.03%    0.04%        libc-2.26.so  vfprintf 
  0.02%    0.01%           libjvm.so  GenericTaskQueueSet<OverflowTaskQueue<StarTask, (MemoryType)1, 131072u>, (MemoryType)1>::steal_best_of_2 
  0.02%    0.03%           libjvm.so  fileStream::write 
  0.02%    0.03%        libc-2.26.so  __strlen_avx2 
  0.02%           libpthread-2.26.so  __pthread_getspecific 
  0.01%                 libc-2.26.so  _IO_fflush 
  0.01%    0.00%           libjvm.so  Monitor::ILock 
  0.01%                 libc-2.26.so  _IO_str_init_static_internal 
  0.01%    0.01%           libjvm.so  TaskQueueSetSuper::randomParkAndMiller 
  0.01%                  C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 601 
  0.01%                 libc-2.26.so  __stpcpy_ssse3 
  0.37%    0.38%  <...other 55 warm methods...>
....................................................................................................
100.00%   99.80%  <totals>

....[Distribution by Source]........................................................................
 96.41%   96.44%         C2, level 4
  2.95%    2.82%   [kernel.kallsyms]
  0.32%    0.44%           libjvm.so
  0.16%    0.22%        libc-2.26.so
  0.04%    0.01%  libpthread-2.26.so
  0.04%    0.03%      hsdis-amd64.so
  0.03%    0.01%              [vdso]
  0.01%    0.01%         interpreter
  0.01%                  C1, level 3
  0.00%                 runtime stub
  0.00%               perf-25177.map
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:44

Benchmark                        Mode  Cnt      Score     Error  Units
Re2jFindRegex.testCombine       thrpt   20  11018.299 ± 421.230  ops/s
Re2jFindRegex.testCombine:·asm  thrpt             NaN              ---
