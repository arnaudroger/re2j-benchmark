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
# Warmup Iteration   1: 3460.287 ops/s
# Warmup Iteration   2: 9231.171 ops/s
# Warmup Iteration   3: 9352.812 ops/s
# Warmup Iteration   4: 9365.596 ops/s
# Warmup Iteration   5: 9338.994 ops/s
# Warmup Iteration   6: 9254.030 ops/s
# Warmup Iteration   7: 9369.260 ops/s
# Warmup Iteration   8: 8730.098 ops/s
# Warmup Iteration   9: 8971.111 ops/s
# Warmup Iteration  10: 9412.420 ops/s
# Warmup Iteration  11: 9147.870 ops/s
# Warmup Iteration  12: 9413.411 ops/s
# Warmup Iteration  13: 9343.636 ops/s
# Warmup Iteration  14: 9414.915 ops/s
# Warmup Iteration  15: 9422.099 ops/s
# Warmup Iteration  16: 9430.884 ops/s
# Warmup Iteration  17: 8848.052 ops/s
# Warmup Iteration  18: 9217.969 ops/s
# Warmup Iteration  19: 9303.866 ops/s
# Warmup Iteration  20: 9348.644 ops/s
Iteration   1: 9350.399 ops/s
Iteration   2: 9354.569 ops/s
Iteration   3: 8708.110 ops/s
Iteration   4: 9355.169 ops/s
Iteration   5: 9355.392 ops/s
Iteration   6: 9352.961 ops/s
Iteration   7: 9352.870 ops/s
Iteration   8: 9351.719 ops/s
Iteration   9: 8571.689 ops/s
Iteration  10: 9355.180 ops/s
Iteration  11: 9354.157 ops/s
Iteration  12: 9354.650 ops/s
Iteration  13: 9354.979 ops/s
Iteration  14: 9352.978 ops/s
Iteration  15: 9024.578 ops/s
Iteration  16: 9344.574 ops/s
Iteration  17: 9342.273 ops/s
Iteration  18: 9348.349 ops/s
Iteration  19: 9300.726 ops/s
Iteration  20: 9312.279 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  9259.880 ±(99.9%) 195.737 ops/s [Average]
  (min, avg, max) = (8571.689, 9259.880, 9355.392), stdev = 225.412
  CI (99.9%): [9064.143, 9455.618] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine:·asm":
PrintAssembly processed: 197398 total address lines.
Perf output processed (skipped 23.298 seconds):
 Column 1: cycles (20684 events)
 Column 2: instructions (20717 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 530 (1202 bytes) 

                                                                                              ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                                                                                              ; - com.google.re2j.Machine::match@121 (line 205)
                                                0x00007f2e7923a7ae: mov    %r10d,%r9d
                                                0x00007f2e7923a7b1: add    $0xffffffbf,%r9d
                                                0x00007f2e7923a7b5: cmp    $0x1a,%r9d
                  ╭                             0x00007f2e7923a7b9: jb     0x00007f2e7923a7cc  ;*if_icmple
                  │                                                                           ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │                                                                           ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                                           ; - com.google.re2j.Machine::match@121 (line 205)
                  │                             0x00007f2e7923a7bb: mov    %r10d,%r8d
           0.00%  │                             0x00007f2e7923a7be: add    $0xffffff9f,%r8d
                  │                             0x00007f2e7923a7c2: cmp    $0x1a,%r8d
                  │                             0x00007f2e7923a7c6: jae    0x00007f2e7923b13b  ;*iconst_1
                  │                                                                           ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │                                                                           ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                                           ; - com.google.re2j.Machine::match@121 (line 205)
                  ↘                             0x00007f2e7923a7cc: or     $0x10,%r11d        ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                                                                                              ; - com.google.re2j.Machine::match@121 (line 205)
  0.00%                                         0x00007f2e7923a7d0: mov    %r11d,0x38(%rsp)   ;*iload_2
                                                                                              ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                                              ; - com.google.re2j.Machine::match@121 (line 205)
           0.00%                                0x00007f2e7923a7d5: mov    0x40(%rsp),%r11
                                                0x00007f2e7923a7da: movzbl 0x11(%r11),%r8d    ;*getfield captures
                                                                                              ; - com.google.re2j.Machine::match@283 (line 240)
  0.00%    0.00%                                0x00007f2e7923a7df: mov    0x48(%rsp),%r9d
                                                0x00007f2e7923a7e4: and    $0x4,%r9d          ;*iand
                                                                                              ; - com.google.re2j.Machine::match@147 (line 212)
  0.00%                                         0x00007f2e7923a7e8: mov    %r9d,0x4c(%rsp)
                                                0x00007f2e7923a7ed: mov    %rcx,%r11
           0.00%                                0x00007f2e7923a7f0: shl    $0x3,%r11          ;*getfield q1
                                                                                              ; - com.google.re2j.Machine::match@53 (line 192)
  0.00%    0.00%                                0x00007f2e7923a7f4: mov    %r11,0x20(%rsp)
                                                0x00007f2e7923a7f9: vmovd  %r8d,%xmm6
                                                0x00007f2e7923a7fe: xor    %eax,%eax
                                                0x00007f2e7923a800: mov    $0x1,%r11d
           0.00%                                0x00007f2e7923a806: xor    %r9d,%r9d
           0.00%                                0x00007f2e7923a809: mov    %r11d,0x14(%rsp)
                                                0x00007f2e7923a80e: mov    %r9d,0x64(%rsp)
                   ╭                            0x00007f2e7923a813: jmpq   0x00007f2e7923aa50
  0.00%            │ ↗                          0x00007f2e7923a818: mov    $0x5,%r11d
                   │╭│                          0x00007f2e7923a81e: jmp    0x00007f2e7923a85d  ;*ifeq
                   │││                                                                        ; - com.google.re2j.Machine::match@286 (line 240)
  0.25%    0.16%   │││              ↗           0x00007f2e7923a820: mov    %rdi,%r8
           0.00%   │││              │           0x00007f2e7923a823: shl    $0x3,%r8           ;*getfield matchcap
                   │││              │                                                         ; - com.google.re2j.Machine::match@307 (line 243)
  0.02%    0.01%   │││              │           0x00007f2e7923a827: mov    %r10,%rsi
  0.09%    0.05%   │││              │           0x00007f2e7923a82a: mov    0x18(%rsp),%rdx
  0.23%    0.16%   │││              │           0x00007f2e7923a82f: mov    0x64(%rsp),%ecx
  0.00%            │││              │           0x00007f2e7923a833: mov    0x38(%rsp),%r9d
           0.01%   │││              │           0x00007f2e7923a838: xor    %edi,%edi
  0.11%    0.08%   │││              │           0x00007f2e7923a83a: mov    0x40(%rsp),%r10
  0.18%    0.23%   │││              │           0x00007f2e7923a83f: mov    %r10,(%rsp)
  0.00%            │││              │           0x00007f2e7923a843: vmovss %xmm6,0x8(%rsp)
  0.00%    0.00%   │││              │           0x00007f2e7923a849: xchg   %ax,%ax
  0.12%    0.05%   │││              │           0x00007f2e7923a84b: callq  0x00007f2e79046020  ; OopMap{[24]=Oop [32]=Oop [52]=NarrowOop [64]=Oop [80]=Oop off=656}
                   │││              │                                                         ;*invokevirtual add
                   │││              │                                                         ; - com.google.re2j.Machine::match@318 (line 243)
                   │││              │                                                         ;   {optimized virtual_call}
  0.02%    0.06%   │││              │↗          0x00007f2e7923a850: mov    0x5c(%rsp),%r10d
  0.27%    0.30%   │││              ││          0x00007f2e7923a855: test   %r10d,%r10d
                   ││╰              ││          0x00007f2e7923a858: jl     0x00007f2e7923a818  ;*ifge
                   ││               ││                                                        ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                   ││               ││                                                        ; - com.google.re2j.Machine::match@326 (line 245)
  0.07%    0.09%   ││               ││          0x00007f2e7923a85a: xor    %r11d,%r11d        ;*iload_0
                   ││               ││                                                        ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                   ││               ││                                                        ; - com.google.re2j.Machine::match@326 (line 245)
  0.25%    0.27%   │↘               ││          0x00007f2e7923a85d: cmp    $0xa,%r10d
                   │  ╭             ││          0x00007f2e7923a861: je     0x00007f2e7923ac53  ;*iload_1
                   │  │             ││                                                        ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                   │  │             ││                                                        ; - com.google.re2j.Machine::match@326 (line 245)
  0.18%    0.20%   │  │             ││     ↗    0x00007f2e7923a867: mov    0x2c(%rsp),%r8d
  0.10%    0.08%   │  │             ││     │    0x00007f2e7923a86c: test   %r8d,%r8d
                   │  │╭            ││     │    0x00007f2e7923a86f: jl     0x00007f2e7923abe2  ;*iload_1
                   │  ││            ││     │                                                  ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                   │  ││            ││     │                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.09%    0.10%   │  ││            ││↗    │    0x00007f2e7923a875: cmp    $0xa,%r8d
                   │  ││╭           │││    │    0x00007f2e7923a879: je     0x00007f2e7923ac5c  ;*iload_0
                   │  │││           │││    │                                                  ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                   │  │││           │││    │                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.26%    0.21%   │  │││           │││    │↗   0x00007f2e7923a87f: mov    0x5c(%rsp),%ecx
  0.20%    0.23%   │  │││           │││    ││   0x00007f2e7923a883: add    $0xffffffbf,%ecx
  0.10%    0.06%   │  │││           │││    ││   0x00007f2e7923a886: cmp    $0x1a,%ecx
                   │  │││╭          │││    ││   0x00007f2e7923a889: jb     0x00007f2e7923a89e  ;*if_icmple
                   │  ││││          │││    ││                                                 ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                   │  ││││          │││    ││                                                 ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   │  ││││          │││    ││                                                 ; - com.google.re2j.Machine::match@326 (line 245)
  0.10%    0.08%   │  ││││          │││    ││   0x00007f2e7923a88b: mov    0x5c(%rsp),%r9d
  0.24%    0.21%   │  ││││          │││    ││   0x00007f2e7923a890: add    $0xffffff9f,%r9d
  0.17%    0.24%   │  ││││          │││    ││   0x00007f2e7923a894: cmp    $0x1a,%r9d
                   │  ││││          │││    ││   0x00007f2e7923a898: jae    0x00007f2e7923af31  ;*iconst_1
                   │  ││││          │││    ││                                                 ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                   │  ││││          │││    ││                                                 ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   │  ││││          │││    ││                                                 ; - com.google.re2j.Machine::match@326 (line 245)
  0.05%    0.10%   │  │││↘          │││    ││   0x00007f2e7923a89e: mov    $0x1,%ebp          ;*ireturn
                   │  │││           │││    ││                                                 ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                   │  │││           │││    ││                                                 ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   │  │││           │││    ││                                                 ; - com.google.re2j.Machine::match@326 (line 245)
  0.12%    0.11%   │  │││           │││    ││   0x00007f2e7923a8a3: mov    %r11d,%r9d
  0.27%    0.16%   │  │││           │││    ││   0x00007f2e7923a8a6: add    $0xffffffbf,%r8d
  0.16%    0.21%   │  │││           │││    ││   0x00007f2e7923a8aa: cmp    $0x1a,%r8d
                   │  │││ ╭         │││    ││   0x00007f2e7923a8ae: jb     0x00007f2e7923a8c3  ;*if_icmple
                   │  │││ │         │││    ││                                                 ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                   │  │││ │         │││    ││                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   │  │││ │         │││    ││                                                 ; - com.google.re2j.Machine::match@326 (line 245)
  0.11%    0.07%   │  │││ │         │││    ││   0x00007f2e7923a8b0: mov    0x2c(%rsp),%r11d
  0.09%    0.09%   │  │││ │         │││    ││   0x00007f2e7923a8b5: add    $0xffffff9f,%r11d
  0.22%    0.22%   │  │││ │         │││    ││   0x00007f2e7923a8b9: cmp    $0x1a,%r11d
                   │  │││ │         │││    ││   0x00007f2e7923a8bd: jae    0x00007f2e7923af52  ;*iconst_1
                   │  │││ │         │││    ││                                                 ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                   │  │││ │         │││    ││                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   │  │││ │         │││    ││                                                 ; - com.google.re2j.Machine::match@326 (line 245)
  0.18%    0.19%   │  │││ ↘         │││    ││   0x00007f2e7923a8c3: mov    $0x1,%r8d          ;*ireturn
                   │  │││           │││    ││                                                 ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                   │  │││           │││    ││                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   │  │││           │││    ││                                                 ; - com.google.re2j.Machine::match@326 (line 245)
  0.29%    0.25%   │  │││           │││    ││   0x00007f2e7923a8c9: cmp    %r8d,%ebp
                   │  │││  ╭        │││    ││   0x00007f2e7923a8cc: je     0x00007f2e7923a8d9  ;*if_icmpeq
                   │  │││  │        │││    ││                                                 ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                   │  │││  │        │││    ││                                                 ; - com.google.re2j.Machine::match@326 (line 245)
  0.05%    0.04%   │  │││  │        │││    ││   0x00007f2e7923a8ce: or     $0x10,%r9d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                   │  │││  │        │││    ││                                                 ; - com.google.re2j.Machine::match@326 (line 245)
  0.04%    0.01%   │  │││  │        │││    ││   0x00007f2e7923a8d2: mov    %r9d,0x38(%rsp)
  0.09%    0.12%   │  │││  │╭       │││    ││   0x00007f2e7923a8d7: jmp    0x00007f2e7923a8e2
  0.11%    0.10%   │  │││  ↘│       │││    ││   0x00007f2e7923a8d9: or     $0x20,%r9d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                   │  │││   │       │││    ││                                                 ; - com.google.re2j.Machine::match@326 (line 245)
  0.25%    0.15%   │  │││   │       │││    ││   0x00007f2e7923a8dd: mov    %r9d,0x38(%rsp)    ;*iload_2
                   │  │││   │       │││    ││                                                 ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   │  │││   │       │││    ││                                                 ; - com.google.re2j.Machine::match@326 (line 245)
  0.19%    0.29%   │  │││   ↘       │││    ││   0x00007f2e7923a8e2: mov    0x50(%rsp),%r11
  0.57%    0.38%   │  │││           │││    ││   0x00007f2e7923a8e7: mov    0x10(%r11),%r8d    ;*getfield end
                   │  │││           │││    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::endPos@1 (line 221)
                   │  │││           │││    ││                                                 ; - com.google.re2j.Machine::match@348 (line 246)
  0.57%    0.25%   │  │││           │││    ││   0x00007f2e7923a8eb: mov    0x64(%rsp),%r9d
  0.12%    0.20%   │  │││           │││    ││   0x00007f2e7923a8f0: cmp    %r8d,%r9d
                   │  │││    ╭      │││    ││   0x00007f2e7923a8f3: je     0x00007f2e7923abeb  ;*if_icmpne
                   │  │││    │      │││    ││                                                 ; - com.google.re2j.Machine::match@351 (line 246)
  0.37%    0.19%   │  │││    │      │││    ││   0x00007f2e7923a8f9: xor    %eax,%eax          ;*invokevirtual endPos
                   │  │││    │      │││    ││                                                 ; - com.google.re2j.Machine::match@348 (line 246)
  0.06%    0.12%   │  │││    │      │││↗   ││   0x00007f2e7923a8fb: add    0x28(%rsp),%r9d    ;*iadd
                   │  │││    │      ││││   ││                                                 ; - com.google.re2j.Machine::match@340 (line 246)
  0.12%    0.05%   │  │││    │      ││││   ││   0x00007f2e7923a900: mov    %r9d,0x64(%rsp)
  0.18%    0.23%   │  │││    │      ││││   ││   0x00007f2e7923a905: mov    0x40(%rsp),%rsi
  0.27%    0.18%   │  │││    │      ││││   ││   0x00007f2e7923a90a: mov    0x18(%rsp),%rdx
  0.10%    0.07%   │  │││    │      ││││   ││   0x00007f2e7923a90f: mov    0x20(%rsp),%rcx
  0.08%    0.09%   │  │││    │      ││││   ││   0x00007f2e7923a914: mov    0x58(%rsp),%r8d
  0.19%    0.21%   │  │││    │      ││││   ││   0x00007f2e7923a919: mov    0x5c(%rsp),%edi
  0.24%    0.17%   │  │││    │      ││││   ││   0x00007f2e7923a91d: mov    0x38(%rsp),%r10d
  0.10%    0.10%   │  │││    │      ││││   ││   0x00007f2e7923a922: mov    %r10d,(%rsp)
  0.11%    0.13%   │  │││    │      ││││   ││   0x00007f2e7923a926: mov    0x3c(%rsp),%r11d
  0.19%    0.16%   │  │││    │      ││││   ││   0x00007f2e7923a92b: mov    %r11d,0x8(%rsp)
  0.25%    0.16%   │  │││    │      ││││   ││   0x00007f2e7923a930: mov    %eax,0x10(%rsp)
  0.11%    0.09%   │  │││    │      ││││   ││   0x00007f2e7923a934: data16 xchg %ax,%ax
  0.09%    0.08%   │  │││    │      ││││   ││   0x00007f2e7923a937: callq  0x00007f2e79046020  ; OopMap{[24]=Oop [32]=Oop [52]=NarrowOop [64]=Oop [80]=Oop off=892}
                   │  │││    │      ││││   ││                                                 ;*invokespecial step
                   │  │││    │      ││││   ││                                                 ; - com.google.re2j.Machine::match@359 (line 246)
                   │  │││    │      ││││   ││                                                 ;   {optimized virtual_call}
  0.30%    0.42%   │  │││    │      ││││   ││   0x00007f2e7923a93c: mov    0x40(%rsp),%r10
  0.27%    0.35%   │  │││    │      ││││   ││   0x00007f2e7923a941: movzbl 0x11(%r10),%r9d    ;*getfield captures
                   │  │││    │      ││││   ││                                                 ; - com.google.re2j.Machine::match@371 (line 250)
  0.04%    0.02%   │  │││    │      ││││   ││   0x00007f2e7923a946: movzbl 0x10(%r10),%eax    ;*getfield matched
                   │  │││    │      ││││   ││                                                 ; - com.google.re2j.Machine::match@378 (line 250)
  0.29%    0.41%   │  │││    │      ││││   ││   0x00007f2e7923a94b: mov    0x28(%rsp),%r11d
  0.29%    0.31%   │  │││    │      ││││   ││   0x00007f2e7923a950: test   %r11d,%r11d
                   │  │││    │╭     ││││   ││   0x00007f2e7923a953: je     0x00007f2e7923abf5  ;*ifne
                   │  │││    ││     ││││   ││                                                 ; - com.google.re2j.Machine::match@364 (line 247)
  0.00%            │  │││    ││     ││││   ││   0x00007f2e7923a959: test   %r9d,%r9d
                   │  │││    ││     ││││   ││   0x00007f2e7923a95c: jne    0x00007f2e7923b331  ;*ifne
                   │  │││    ││     ││││   ││                                                 ; - com.google.re2j.Machine::match@374 (line 250)
  0.01%    0.01%   │  │││    ││     ││││   ││   0x00007f2e7923a962: test   %eax,%eax
                   │  │││    ││     ││││   ││   0x00007f2e7923a964: jne    0x00007f2e7923b4c5  ;*ifeq
                   │  │││    ││     ││││   ││                                                 ; - com.google.re2j.Machine::match@381 (line 250)
  0.39%    0.43%   │  │││    ││     ││││   ││   0x00007f2e7923a96a: mov    0x50(%rsp),%r10
  0.23%    0.28%   │  │││    ││     ││││   ││   0x00007f2e7923a96f: mov    0x10(%r10),%r11d   ;*getfield end
                   │  │││    ││     ││││   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                   │  │││    ││     ││││   ││                                                 ; - com.google.re2j.Machine::match@411 (line 259)
  0.02%    0.03%   │  │││    ││     ││││   ││   0x00007f2e7923a973: mov    %r11d,0x68(%rsp)
  0.01%    0.00%   │  │││    ││     ││││   ││   0x00007f2e7923a978: mov    0xc(%r10),%r13d    ;*getfield start
                   │  │││    ││     ││││   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                   │  │││    ││     ││││   ││                                                 ; - com.google.re2j.Machine::match@411 (line 259)
  0.36%    0.37%   │  │││    ││     ││││   ││   0x00007f2e7923a97c: mov    0x14(%r10),%r14d   ;*getfield str
                   │  │││    ││     ││││   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                   │  │││    ││     ││││   ││                                                 ; - com.google.re2j.Machine::match@411 (line 259)
  0.26%    0.35%   │  │││    ││     ││││   ││   0x00007f2e7923a980: mov    0x2c(%rsp),%r10d
                   │  │││    ││     ││││   ││   0x00007f2e7923a985: cmp    $0xffffffff,%r10d
                   │  │││    ││╭    ││││   ││   0x00007f2e7923a989: je     0x00007f2e7923ac35  ;*if_icmpeq
                   │  │││    │││    ││││   ││                                                 ; - com.google.re2j.Machine::match@403 (line 258)
  0.01%    0.00%   │  │││    │││    ││││   ││   0x00007f2e7923a98f: mov    0x30(%rsp),%ecx
  0.30%    0.38%   │  │││    │││    ││││   ││   0x00007f2e7923a993: add    0x64(%rsp),%ecx
  0.25%    0.32%   │  │││    │││    ││││   ││   0x00007f2e7923a997: add    %r13d,%ecx         ;*iadd
                   │  │││    │││    ││││   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                   │  │││    │││    ││││   ││                                                 ; - com.google.re2j.Machine::match@411 (line 259)
  0.00%    0.01%   │  │││    │││    ││││   ││   0x00007f2e7923a99a: cmp    %r11d,%ecx
                   │  │││    │││╭   ││││   ││   0x00007f2e7923a99d: jge    0x00007f2e7923ac45  ;*if_icmpge
                   │  │││    ││││   ││││   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                   │  │││    ││││   ││││   ││                                                 ; - com.google.re2j.Machine::match@411 (line 259)
  0.04%    0.02%   │  │││    ││││   ││││   ││   0x00007f2e7923a9a3: mov    0x8(%r12,%r14,8),%r11d  ; implicit exception: dispatches to 0x00007f2e7923c67d
  0.35%    0.36%   │  │││    ││││   ││││   ││   0x00007f2e7923a9a8: cmp    $0xf80002da,%r11d  ;   {metadata(&apos;java/lang/String&apos;)}
                   │  │││    ││││   ││││   ││   0x00007f2e7923a9af: jne    0x00007f2e7923b215
  0.25%    0.26%   │  │││    ││││   ││││   ││   0x00007f2e7923a9b5: lea    (%r12,%r14,8),%rbx  ;*invokeinterface charAt
                   │  │││    ││││   ││││   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │  │││    ││││   ││││   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │  │││    ││││   ││││   ││                                                 ; - com.google.re2j.Machine::match@411 (line 259)
                   │  │││    ││││   ││││   ││   0x00007f2e7923a9b9: test   %ecx,%ecx
                   │  │││    ││││   ││││   ││   0x00007f2e7923a9bb: jl     0x00007f2e7923b381  ;*iflt
                   │  │││    ││││   ││││   ││                                                 ; - java.lang.String::charAt@1 (line 657)
                   │  │││    ││││   ││││   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │  │││    ││││   ││││   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │  │││    ││││   ││││   ││                                                 ; - com.google.re2j.Machine::match@411 (line 259)
  0.02%    0.01%   │  │││    ││││   ││││   ││   0x00007f2e7923a9c1: mov    0xc(%rbx),%edi     ;*getfield value
                   │  │││    ││││   ││││   ││                                                 ; - java.lang.String::charAt@6 (line 657)
                   │  │││    ││││   ││││   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │  │││    ││││   ││││   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │  │││    ││││   ││││   ││                                                 ; - com.google.re2j.Machine::match@411 (line 259)
  0.29%    0.27%   │  │││    ││││   ││││   ││   0x00007f2e7923a9c4: mov    0xc(%r12,%rdi,8),%ebp  ;*arraylength
                   │  │││    ││││   ││││   ││                                                 ; - java.lang.String::charAt@9 (line 657)
                   │  │││    ││││   ││││   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │  │││    ││││   ││││   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │  │││    ││││   ││││   ││                                                 ; - com.google.re2j.Machine::match@411 (line 259)
                   │  │││    ││││   ││││   ││                                                 ; implicit exception: dispatches to 0x00007f2e7923c691
  1.41%    1.30%   │  │││    ││││   ││││   ││   0x00007f2e7923a9c9: cmp    %ebp,%ecx
                   │  │││    ││││   ││││   ││   0x00007f2e7923a9cb: jge    0x00007f2e7923b5dd  ;*if_icmplt
                   │  │││    ││││   ││││   ││                                                 ; - java.lang.String::charAt@10 (line 657)
                   │  │││    ││││   ││││   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │  │││    ││││   ││││   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │  │││    ││││   ││││   ││                                                 ; - com.google.re2j.Machine::match@411 (line 259)
  0.67%    0.52%   │  │││    ││││   ││││   ││   0x00007f2e7923a9d1: cmp    %ebp,%ecx
                   │  │││    ││││   ││││   ││   0x00007f2e7923a9d3: jae    0x00007f2e7923b194
  0.12%    0.18%   │  │││    ││││   ││││   ││   0x00007f2e7923a9d9: lea    (%r12,%rdi,8),%r10
  0.03%    0.00%   │  │││    ││││   ││││   ││   0x00007f2e7923a9dd: movzwl 0x10(%r10,%rcx,2),%r8d  ;*caload
                   │  │││    ││││   ││││   ││                                                 ; - java.lang.String::charAt@27 (line 660)
                   │  │││    ││││   ││││   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │  │││    ││││   ││││   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │  │││    ││││   ││││   ││                                                 ; - com.google.re2j.Machine::match@411 (line 259)
  0.08%    0.06%   │  │││    ││││   ││││   ││   0x00007f2e7923a9e3: cmp    $0xd800,%r8d
                   │  │││    ││││   ││││   ││   0x00007f2e7923a9ea: jge    0x00007f2e7923b655  ;*if_icmplt
                   │  │││    ││││   ││││   ││                                                 ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   │  │││    ││││   ││││   ││                                                 ; - java.lang.Character::codePointAt@9 (line 4867)
                   │  │││    ││││   ││││   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │  │││    ││││   ││││   ││                                                 ; - com.google.re2j.Machine::match@411 (line 259)
  0.48%    0.55%   │  │││    ││││   ││││   ││   0x00007f2e7923a9f0: shl    $0x3,%r8d          ;*ishl
                   │  │││    ││││   ││││   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                   │  │││    ││││   ││││   ││                                                 ; - com.google.re2j.Machine::match@411 (line 259)
  0.09%    0.13%   │  │││    ││││   ││││   ││   0x00007f2e7923a9f4: mov    %r8d,%r11d
  0.04%    0.00%   │  │││    ││││   ││││   ││   0x00007f2e7923a9f7: or     $0x1,%r11d
  0.33%    0.31%   │  │││    ││││   ││││   ││   0x00007f2e7923a9fb: and    $0x7,%r8d
  0.18%    0.23%   │  │││    ││││   ││││   ││   0x00007f2e7923a9ff: sar    $0x3,%r11d         ;*ishr
                   │  │││    ││││   ││││   ││                                                 ; - com.google.re2j.Machine::match@419 (line 260)
  0.25%    0.41%   │  │││    ││││   ││││   ││   0x00007f2e7923aa03: or     $0x1,%r8d          ; OopMap{r14=NarrowOop [24]=Oop [32]=Oop [64]=Oop [80]=Oop off=1095}
                   │  │││    ││││   ││││   ││                                                 ;*goto
                   │  │││    ││││   ││││   ││                                                 ; - com.google.re2j.Machine::match@441 (line 266)
  0.04%            │  │││    ││││   ││││ ↗↗││   0x00007f2e7923aa07: test   %eax,0x18a635f3(%rip)        # 0x00007f2e91c9e000
                   │  │││    ││││   ││││ ││││                                                 ;*goto
                   │  │││    ││││   ││││ ││││                                                 ; - com.google.re2j.Machine::match@441 (line 266)
                   │  │││    ││││   ││││ ││││                                                 ;   {poll}
  0.07%    0.05%   │  │││    ││││   ││││ ││││   0x00007f2e7923aa0d: mov    0x40(%rsp),%r10
  0.21%    0.24%   │  │││    ││││   ││││ ││││   0x00007f2e7923aa12: mov    0x28(%r10),%edi    ;*getfield matchcap
                   │  │││    ││││   ││││ ││││                                                 ; - com.google.re2j.Machine::match@307 (line 243)
  0.32%    0.38%   │  │││    ││││   ││││ ││││   0x00007f2e7923aa16: mov    0x14(%r10),%esi    ;*getfield re2
                   │  │││    ││││   ││││ ││││                                                 ; - com.google.re2j.Machine::match@169 (line 220)
  0.04%    0.02%   │  │││    ││││   ││││ ││││   0x00007f2e7923aa1a: mov    0x20(%rsp),%r10
  0.05%    0.03%   │  │││    ││││   ││││ ││││   0x00007f2e7923aa1f: shr    $0x3,%r10
  0.25%    0.25%   │  │││    ││││   ││││ ││││   0x00007f2e7923aa23: mov    %r10d,0x34(%rsp)
  0.39%    0.40%   │  │││    ││││   ││││ ││││   0x00007f2e7923aa28: mov    0x2c(%rsp),%r10d
  0.02%    0.03%   │  │││    ││││   ││││ ││││   0x00007f2e7923aa2d: mov    %r11d,0x2c(%rsp)
  0.02%    0.03%   │  │││    ││││   ││││ ││││   0x00007f2e7923aa32: mov    0x18(%rsp),%r11
  0.27%    0.32%   │  │││    ││││   ││││ ││││   0x00007f2e7923aa37: mov    %r11,0x20(%rsp)
  0.34%    0.44%   │  │││    ││││   ││││ ││││   0x00007f2e7923aa3c: vmovd  %r9d,%xmm6
  0.02%    0.03%   │  │││    ││││   ││││ ││││   0x00007f2e7923aa41: mov    0x30(%rsp),%r9d
  0.02%    0.03%   │  │││    ││││   ││││ ││││   0x00007f2e7923aa46: mov    %r9d,0x28(%rsp)
  0.21%    0.27%   │  │││    ││││   ││││ ││││   0x00007f2e7923aa4b: mov    %r8d,0x30(%rsp)
  0.35%    0.43%   ↘  │││    ││││   ││││ ││││   0x00007f2e7923aa50: mov    0x34(%rsp),%r11d
  0.03%    0.05%      │││    ││││   ││││ ││││   0x00007f2e7923aa55: movzbl 0x18(%r12,%r11,8),%r11d  ; implicit exception: dispatches to 0x00007f2e7923c642
  0.06%    0.08%      │││    ││││   ││││ ││││   0x00007f2e7923aa5b: mov    0x34(%rsp),%r8d
  0.26%    0.25%      │││    ││││   ││││ ││││   0x00007f2e7923aa60: shl    $0x3,%r8           ;*aload
                      │││    ││││   ││││ ││││                                                 ; - com.google.re2j.Machine::match@136 (line 211)
  0.27%    0.40%      │││    ││││   ││││ ││││   0x00007f2e7923aa64: mov    %r8,0x18(%rsp)
  0.04%    0.08%      │││    ││││   ││││ ││││   0x00007f2e7923aa69: test   %r11d,%r11d
                      │││    ││││╭  ││││ ││││   0x00007f2e7923aa6c: je     0x00007f2e7923aab0  ;*ifeq
                      │││    │││││  ││││ ││││                                                 ; - com.google.re2j.Machine::match@141 (line 211)
  0.02%    0.01%      │││    │││││  ││││ ││││   0x00007f2e7923aa6e: mov    0x4c(%rsp),%r11d
  0.10%    0.10%      │││    │││││  ││││ ││││   0x00007f2e7923aa73: test   %r11d,%r11d
                      │││    │││││  ││││ ││││   0x00007f2e7923aa76: jne    0x00007f2e7923b809  ;*ifeq
                      │││    │││││  ││││ ││││                                                 ; - com.google.re2j.Machine::match@148 (line 212)
  0.12%    0.21%      │││    │││││  ││││ ││││   0x00007f2e7923aa7c: test   %eax,%eax
                      │││    │││││  ││││ ││││   0x00007f2e7923aa7e: jne    0x00007f2e7923b865  ;*ifeq
                      │││    │││││  ││││ ││││                                                 ; - com.google.re2j.Machine::match@162 (line 216)
  0.00%               │││    │││││  ││││ ││││   0x00007f2e7923aa84: mov    0x24(%r12,%rsi,8),%r11d  ;*getfield prefix
                      │││    │││││  ││││ ││││                                                 ; - com.google.re2j.Machine::match@172 (line 220)
                      │││    │││││  ││││ ││││                                                 ; implicit exception: dispatches to 0x00007f2e7923c6b5
           0.01%      │││    │││││  ││││ ││││   0x00007f2e7923aa89: mov    %r11d,%r8d
  0.10%    0.12%      │││    │││││  ││││ ││││   0x00007f2e7923aa8c: mov    0xc(%r12,%r11,8),%r11d  ;*getfield value
                      │││    │││││  ││││ ││││                                                 ; - java.lang.String::isEmpty@1 (line 635)
                      │││    │││││  ││││ ││││                                                 ; - com.google.re2j.Machine::match@175 (line 220)
                      │││    │││││  ││││ ││││                                                 ; implicit exception: dispatches to 0x00007f2e7923c6c5
  0.14%    0.23%      │││    │││││  ││││ ││││   0x00007f2e7923aa91: vmovd  %r11d,%xmm0
  0.01%    0.00%      │││    │││││  ││││ ││││   0x00007f2e7923aa96: mov    0xc(%r12,%r11,8),%r11d  ;*arraylength
                      │││    │││││  ││││ ││││                                                 ; - java.lang.String::isEmpty@4 (line 635)
                      │││    │││││  ││││ ││││                                                 ; - com.google.re2j.Machine::match@175 (line 220)
                      │││    │││││  ││││ ││││                                                 ; implicit exception: dispatches to 0x00007f2e7923c6d5
  0.43%    0.43%      │││    │││││  ││││ ││││   0x00007f2e7923aa9b: mov    %r11d,0x58(%rsp)
  0.26%    0.20%      │││    │││││  ││││ ││││   0x00007f2e7923aaa0: test   %r11d,%r11d
                      │││    │││││  ││││ ││││   0x00007f2e7923aaa3: jne    0x00007f2e7923ad25  ;*ifne
                      │││    │││││  ││││ ││││                                                 ; - com.google.re2j.Machine::match@178 (line 220)
  0.04%    0.02%      │││    │││││  ││││ ││││   0x00007f2e7923aaa9: mov    %r10d,0x5c(%rsp)
                      │││    │││││╭ ││││ ││││   0x00007f2e7923aaae: jmp    0x00007f2e7923aab5
  0.04%    0.02%      │││    ││││↘│ ││││ ││││   0x00007f2e7923aab0: mov    %r10d,0x5c(%rsp)   ;*aload_0
                      │││    ││││ │ ││││ ││││                                                 ; - com.google.re2j.Machine::match@267 (line 237)
  0.09%    0.18%      │││    ││││ ↘ ││││ ││││   0x00007f2e7923aab5: test   %eax,%eax
                      │││    ││││   ││││ ││││   0x00007f2e7923aab7: jne    0x00007f2e7923b27d  ;*ifne
                      │││    ││││   ││││ ││││                                                 ; - com.google.re2j.Machine::match@271 (line 237)
  0.50%    0.40%      │││    ││││   ││││ ││││   0x00007f2e7923aabd: mov    0x64(%rsp),%r11d
  0.12%    0.12%      │││    ││││   ││││ ││││   0x00007f2e7923aac2: test   %r11d,%r11d
                      │││    ││││  ╭││││ ││││   0x00007f2e7923aac5: je     0x00007f2e7923ac65  ;*ifeq
                      │││    ││││  │││││ ││││                                                 ; - com.google.re2j.Machine::match@275 (line 237)
  0.02%    0.04%      │││    ││││  │││││ ││││   0x00007f2e7923aacb: mov    0x3c(%rsp),%r9d
  0.09%    0.14%      │││    ││││  │││││ ││││   0x00007f2e7923aad0: test   %r9d,%r9d
                      │││    ││││  │││││ ││││   0x00007f2e7923aad3: jne    0x00007f2e7923b2d1  ;*aload_0
                      │││    ││││  │││││ ││││                                                 ; - com.google.re2j.Machine::match@282 (line 240)
  0.43%    0.31%      │││    ││││  │││││ ││││↗  0x00007f2e7923aad9: vmovd  %xmm6,%r10d
  0.07%    0.07%      │││    ││││  │││││ │││││  0x00007f2e7923aade: test   %r10d,%r10d
                      │││    ││││  │││││ │││││  0x00007f2e7923aae1: jne    0x00007f2e7923b46d  ;*ifeq
                      │││    ││││  │││││ │││││                                                ; - com.google.re2j.Machine::match@286 (line 240)
  0.01%    0.03%      │││    ││││  │││││ │││││  0x00007f2e7923aae7: mov    %rax,-0x8(%rsp)
  0.15%    0.17%      │││    ││││  │││││ │││││  0x00007f2e7923aaec: mov    0x64(%rsp),%eax
  0.48%    0.32%      │││    ││││  │││││ │││││  0x00007f2e7923aaf0: mov    %eax,0x58(%rsp)
  0.07%    0.06%      │││    ││││  │││││ │││││  0x00007f2e7923aaf4: mov    -0x8(%rsp),%rax
  0.15%    0.08%      │││    ││││  │││││ │││││  0x00007f2e7923aaf9: mov    %r9d,0x3c(%rsp)
  0.15%    0.18%      │││    ││││  │││││ │││││  0x00007f2e7923aafe: mov    0x40(%rsp),%r10
  0.33%    0.31%      │││    ││││  │││││ │││││  0x00007f2e7923ab03: mov    0x18(%r10),%r8d    ;*getfield prog
                      │││    ││││  │││││ │││││                                                ; - com.google.re2j.Machine::match@297 (line 243)
  0.09%    0.06%      │││    ││││  │││││ │││││  0x00007f2e7923ab07: mov    0x1c(%r12,%r8,8),%ebp  ;*getfield startInst
                      │││    ││││  │││││ │││││                                                ; - com.google.re2j.Machine::match@300 (line 243)
                      │││    ││││  │││││ │││││                                                ; implicit exception: dispatches to 0x00007f2e7923c651
  0.12%    0.12%      │││    ││││  │││││ │││││  0x00007f2e7923ab0c: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007f2e7923c661
  1.33%    1.36%      │││    ││││  │││││ │││││  0x00007f2e7923ab11: lea    (%r12,%rbp,8),%r10
  0.14%    0.07%      │││    ││││  │││││ │││││  0x00007f2e7923ab15: cmp    $0xf8019a09,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$Alt5Inst&apos;)}
                      │││    ││││  │╰│││ │││││  0x00007f2e7923ab1c: je     0x00007f2e7923a820
  0.25%    0.22%      │││    ││││  │ │││ │││││  0x00007f2e7923ab22: cmp    $0xf8019909,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                      │││    ││││  │ │││ │││││  0x00007f2e7923ab29: jne    0x00007f2e7923b515  ;*invokevirtual add
                      │││    ││││  │ │││ │││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.12%    0.10%      │││    ││││  │ │││ │││││  0x00007f2e7923ab2f: mov    0x18(%r10),%ecx    ;*getfield pc
                      │││    ││││  │ │││ │││││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                      │││    ││││  │ │││ │││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.04%    0.06%      │││    ││││  │ │││ │││││  0x00007f2e7923ab33: cmp    $0x40,%ecx
                      │││    ││││  │ │││ │││││  0x00007f2e7923ab36: jg     0x00007f2e7923b6c1  ;*if_icmpgt
                      │││    ││││  │ │││ │││││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                      │││    ││││  │ │││ │││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                      │││    ││││  │ │││ │││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.16%    0.16%      │││    ││││  │ │││ │││││  0x00007f2e7923ab3c: mov    %r10,%r9
  0.02%    0.03%      │││    ││││  │ │││ │││││  0x00007f2e7923ab3f: mov    $0x1,%ebx
  0.02%    0.03%      │││    ││││  │ │││ │││││  0x00007f2e7923ab44: mov    %ecx,%r10d
  0.03%    0.02%      │││    ││││  │ │││ │││││  0x00007f2e7923ab47: shl    %cl,%rbx           ;*lshl
                      │││    ││││  │ │││ │││││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                      │││    ││││  │ │││ │││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                      │││    ││││  │ │││ │││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.54%    0.34%      │││    ││││  │ │││ │││││  0x00007f2e7923ab4a: mov    0x34(%rsp),%r8d
  0.00%    0.00%      │││    ││││  │ │││ │││││  0x00007f2e7923ab4f: mov    0x10(%r12,%r8,8),%rcx  ;*getfield pcsl
                      │││    ││││  │ │││ │││││                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                      │││    ││││  │ │││ │││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                      │││    ││││  │ │││ │││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.02%    0.00%      │││    ││││  │ │││ │││││  0x00007f2e7923ab54: mov    %rcx,%r8
  0.02%    0.04%      │││    ││││  │ │││ │││││  0x00007f2e7923ab57: and    %rbx,%r8           ;*land
                      │││    ││││  │ │││ │││││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                      │││    ││││  │ │││ │││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                      │││    ││││  │ │││ │││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.27%    0.24%      │││    ││││  │ │││ │││││  0x00007f2e7923ab5a: test   %r8,%r8
                      │││    ││││  │ │││ │││││  0x00007f2e7923ab5d: jne    0x00007f2e7923b721  ;*ifeq
                      │││    ││││  │ │││ │││││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                      │││    ││││  │ │││ │││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.01%    0.01%      │││    ││││  │ │││ │││││  0x00007f2e7923ab63: cmp    $0x40,%r10d
                      │││    ││││  │ │││ │││││  0x00007f2e7923ab67: jge    0x00007f2e7923b7a9  ;*if_icmpge
                      │││    ││││  │ │││ │││││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                      │││    ││││  │ │││ │││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                      │││    ││││  │ │││ │││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.01%    0.01%      │││    ││││  │ │││ │││││  0x00007f2e7923ab6d: mov    0x34(%rsp),%r11d
  0.04%    0.02%      │││    ││││  │ │││ │││││  0x00007f2e7923ab72: mov    %r12b,0x18(%r12,%r11,8)  ;*putfield empty
                      │││    ││││  │ │││ │││││                                                ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                      │││    ││││  │ │││ │││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                      │││    ││││  │ │││ │││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.25%    0.21%      │││    ││││  │ │││ │││││  0x00007f2e7923ab77: mov    0x20(%r12,%r11,8),%r8d  ;*getfield denseThreadsInstructions
                      │││    ││││  │ │││ │││││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                      │││    ││││  │ │││ │││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                      │││    ││││  │ │││ │││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.02%    0.01%      │││    ││││  │ │││ │││││  0x00007f2e7923ab7c: mov    0xc(%r12,%r11,8),%ebp  ;*getfield size
                      │││    ││││  │ │││ │││││                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                      │││    ││││  │ │││ │││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                      │││    ││││  │ │││ │││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.02%    0.02%      │││    ││││  │ │││ │││││  0x00007f2e7923ab81: or     %rcx,%rbx
  0.03%    0.02%      │││    ││││  │ │││ │││││  0x00007f2e7923ab84: mov    %rbx,0x10(%r12,%r11,8)  ;*putfield pcsl
                      │││    ││││  │ │││ │││││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                      │││    ││││  │ │││ │││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                      │││    ││││  │ │││ │││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.22%    0.24%      │││    ││││  │ │││ │││││  0x00007f2e7923ab89: mov    %ebp,%r11d
           0.01%      │││    ││││  │ │││ │││││  0x00007f2e7923ab8c: inc    %r11d
  0.03%    0.02%      │││    ││││  │ │││ │││││  0x00007f2e7923ab8f: mov    0x34(%rsp),%ecx
  0.02%    0.05%      │││    ││││  │ │││ │││││  0x00007f2e7923ab93: mov    %r11d,0xc(%r12,%rcx,8)  ;*putfield size
                      │││    ││││  │ │││ │││││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                      │││    ││││  │ │││ │││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                      │││    ││││  │ │││ │││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.26%    0.38%      │││    ││││  │ │││ │││││  0x00007f2e7923ab98: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x00007f2e7923c6a1
  0.02%    0.04%      │││    ││││  │ │││ │││││  0x00007f2e7923ab9d: cmp    %r11d,%ebp
                      │││    ││││  │ │││ │││││  0x00007f2e7923aba0: jae    0x00007f2e7923b3fd
  0.05%    0.09%      │││    ││││  │ │││ │││││  0x00007f2e7923aba6: mov    0x8(%r12,%r8,8),%r11d
  0.05%    0.03%      │││    ││││  │ │││ │││││  0x00007f2e7923abab: cmp    $0xf8019807,%r11d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                      │││    ││││  │ │││ │││││  0x00007f2e7923abb2: jne    0x00007f2e7923b56d
  0.23%    0.25%      │││    ││││  │ │││ │││││  0x00007f2e7923abb8: mov    %r9,%r11
  0.00%    0.00%      │││    ││││  │ │││ │││││  0x00007f2e7923abbb: shr    $0x3,%r11          ;*aastore
                      │││    ││││  │ │││ │││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                      │││    ││││  │ │││ │││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                      │││    ││││  │ │││ │││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.02%    0.04%      │││    ││││  │ │││ │││││  0x00007f2e7923abbf: lea    (%r12,%r8,8),%r10  ;*getfield denseThreadsInstructions
                      │││    ││││  │ │││ │││││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                      │││    ││││  │ │││ │││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                      │││    ││││  │ │││ │││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.02%    0.02%      │││    ││││  │ │││ │││││  0x00007f2e7923abc3: lea    0x10(%r10,%rbp,4),%r10
  0.28%    0.21%      │││    ││││  │ │││ │││││  0x00007f2e7923abc8: mov    %r11d,(%r10)
  0.10%    0.13%      │││    ││││  │ │││ │││││  0x00007f2e7923abcb: shr    $0x9,%r10
  0.02%    0.02%      │││    ││││  │ │││ │││││  0x00007f2e7923abcf: movabs $0x7f2e8a6a6000,%r11
  0.04%    0.03%      │││    ││││  │ │││ │││││  0x00007f2e7923abd9: mov    %r12b,(%r11,%r10,1)  ;*aastore
                      │││    ││││  │ │││ │││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                      │││    ││││  │ │││ │││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                      │││    ││││  │ │││ │││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.52%    0.57%      │││    ││││  │ ╰││ │││││  0x00007f2e7923abdd: jmpq   0x00007f2e7923a850
  0.00%    0.00%      │↘│    ││││  │  ││ │││││  0x00007f2e7923abe2: or     $0xa,%r11d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@27 (line 180)
                      │ │    ││││  │  ││ │││││                                                ; - com.google.re2j.Machine::match@326 (line 245)
                      │ │    ││││  │  ╰│ │││││  0x00007f2e7923abe6: jmpq   0x00007f2e7923a875
  0.01%    0.01%      │ │    ↘│││  │   │ │││││  0x00007f2e7923abeb: mov    $0x1,%eax
  0.00%               │ │     │││  │   ╰ │││││  0x00007f2e7923abf0: jmpq   0x00007f2e7923a8fb
                      │ │     ↘││  │     │││││  0x00007f2e7923abf5: test   %r9d,%r9d
                      │ │      ││  │     │││││  0x00007f2e7923abf8: jne    0x00007f2e7923b0ba  ;*getfield matched
                      │ │      ││  │     │││││                                                ; - com.google.re2j.Machine::match@451 (line 268)
  0.01%               │ │      ││  │     │││││  0x00007f2e7923abfe: mov    0x20(%rsp),%r11
  0.00%               │ │      ││  │     │││││  0x00007f2e7923ac03: movzbl 0x18(%r11),%r10d   ; implicit exception: dispatches to 0x00007f2e7923c73d
  0.00%    0.01%      │ │      ││  │     │││││  0x00007f2e7923ac08: test   %r10d,%r10d
                      │ │      ││  │    ╭│││││  0x00007f2e7923ac0b: jne    0x00007f2e7923ac26  ;*ifeq
                      │ │      ││  │    ││││││                                                ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                      │ │      ││  │    ││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                      │ │      ││  │    ││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                      │ │      ││  │    ││││││                                                ; - com.google.re2j.Machine::match@447 (line 267)
                      │ │      ││  │    ││││││  0x00007f2e7923ac0d: movb   $0x1,0x18(%r11)    ;*putfield empty
                      │ │      ││  │    ││││││                                                ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                      │ │      ││  │    ││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                      │ │      ││  │    ││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                      │ │      ││  │    ││││││                                                ; - com.google.re2j.Machine::match@447 (line 267)
                      │ │      ││  │    ││││││  0x00007f2e7923ac12: mov    0x1c(%r11),%ebp    ;*getfield pcs
                      │ │      ││  │    ││││││                                                ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                      │ │      ││  │    ││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                      │ │      ││  │    ││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                      │ │      ││  │    ││││││                                                ; - com.google.re2j.Machine::match@447 (line 267)
           0.00%      │ │      ││  │    ││││││  0x00007f2e7923ac16: mov    %r12d,0xc(%r11)    ;*putfield size
                      │ │      ││  │    ││││││                                                ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                      │ │      ││  │    ││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                      │ │      ││  │    ││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                      │ │      ││  │    ││││││                                                ; - com.google.re2j.Machine::match@447 (line 267)
           0.00%      │ │      ││  │    ││││││  0x00007f2e7923ac1a: mov    %r12,0x10(%r11)    ;*putfield pcsl
                      │ │      ││  │    ││││││                                                ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                      │ │      ││  │    ││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                      │ │      ││  │    ││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                      │ │      ││  │    ││││││                                                ; - com.google.re2j.Machine::match@447 (line 267)
                      │ │      ││  │    ││││││  0x00007f2e7923ac1e: test   %ebp,%ebp
                      │ │      ││  │    ││││││  0x00007f2e7923ac20: jne    0x00007f2e7923bfcd  ;*if_icmpne
                      │ │      ││  │    ││││││                                                ; - com.google.re2j.Machine::match@12 (line 183)
                      │ │      ││  │    ↘│││││  0x00007f2e7923ac26: add    $0x80,%rsp
                      │ │      ││  │     │││││  0x00007f2e7923ac2d: pop    %rbp
                      │ │      ││  │     │││││  0x00007f2e7923ac2e: test   %eax,0x18a633cc(%rip)        # 0x00007f2e91c9e000
                      │ │      ││  │     │││││                                                ;   {poll_return}
                      │ │      ││  │     │││││  0x00007f2e7923ac34: retq   
                      │ │      ↘│  │     │││││  0x00007f2e7923ac35: mov    0x30(%rsp),%r8d
  0.02%    0.00%      │ │       │  │     │││││  0x00007f2e7923ac3a: mov    $0xffffffff,%r11d
  0.00%               │ │       │  │     ╰││││  0x00007f2e7923ac40: jmpq   0x00007f2e7923aa07
  0.01%               │ │       ↘  │      ││││  0x00007f2e7923ac45: xor    %r8d,%r8d
  0.01%    0.00%      │ │          │      ││││  0x00007f2e7923ac48: mov    $0xffffffff,%r11d
  0.01%    0.01%      │ │          │      ╰│││  0x00007f2e7923ac4e: jmpq   0x00007f2e7923aa07
  0.00%               ↘ │          │       │││  0x00007f2e7923ac53: or     $0x1,%r11d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@18 (line 177)
                        │          │       │││                                                ; - com.google.re2j.Machine::match@326 (line 245)
                        │          │       ╰││  0x00007f2e7923ac57: jmpq   0x00007f2e7923a867
  0.00%    0.01%        ↘          │        ││  0x00007f2e7923ac5c: or     $0x2,%r11d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@37 (line 183)
                                   │        ││                                                ; - com.google.re2j.Machine::match@326 (line 245)
           0.00%                   │        ╰│  0x00007f2e7923ac60: jmpq   0x00007f2e7923a87f
                                   ↘         │  0x00007f2e7923ac65: mov    0x3c(%rsp),%r9d
                                             ╰  0x00007f2e7923ac6a: jmpq   0x00007f2e7923aad9
                                                0x00007f2e7923ac6f: nop
           0.01%                                0x00007f2e7923ac70: mov    %r10d,%r11d
                                                0x00007f2e7923ac73: jmpq   0x00007f2e7923ae81
                                                0x00007f2e7923ac78: add    $0x2,%r11d
                                                0x00007f2e7923ac7c: mov    %r11d,%r10d
                                                0x00007f2e7923ac7f: inc    %r10d
                                                0x00007f2e7923ac82: jmp    0x00007f2e7923ac94
                                                0x00007f2e7923ac84: mov    %r11d,%r10d
                                                0x00007f2e7923ac87: add    $0x2,%r10d
                                                0x00007f2e7923ac8b: jmp    0x00007f2e7923ac91
                                                0x00007f2e7923ac8d: add    $0x2,%r11d
                                                0x00007f2e7923ac91: inc    %r11d              ;*iinc
....................................................................................................
 29.44%   29.19%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 490 (203 bytes) 

                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Machine::step@206 (line 314)
                                                                   ;   {optimized virtual_call}
                     0x00007f2e7921ff5c: test   %rax,%rax
                     0x00007f2e7921ff5f: jne    0x00007f2e79220ea9
                     0x00007f2e7921ff65: mov    0x30(%rsp),%r11    ;*synchronization entry
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%              0x00007f2e7921ff6a: mov    0x10(%rsp),%rdx
  0.04%    0.05%     0x00007f2e7921ff6f: mov    0xac(%rsp),%r13d
  0.05%    0.07%     0x00007f2e7921ff77: mov    0xa4(%rsp),%r10d   ;*synchronization entry
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.12%    0.24%     0x00007f2e7921ff7f: mov    0xa8(%rsp),%ecx
  0.02%    0.02%     0x00007f2e7921ff86: mov    0xb0(%rsp),%r9d    ;*aload
                                                                   ; - com.google.re2j.Machine::step@211 (line 316)
  0.15%    0.20%     0x00007f2e7921ff8e: inc    %r10d              ;*iinc
                                                                   ; - com.google.re2j.Machine::step@222 (line 283)
  1.13%    1.42%     0x00007f2e7921ff91: cmp    %r13d,%r10d
                     0x00007f2e7921ff94: jge    0x00007f2e79220095
  0.29%    0.29%     0x00007f2e7921ff9a: mov    %ecx,0xa8(%rsp)
  1.00%    0.94%     0x00007f2e7921ffa1: mov    %r9d,0xb0(%rsp)    ;*iload
                                                                   ; - com.google.re2j.Machine::step@31 (line 286)
  0.34%    0.24%     0x00007f2e7921ffa9: mov    0x20(%rdx),%r8d    ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine::step@86 (line 296)
  1.17%    0.98%     0x00007f2e7921ffad: mov    0xc(%r12,%r8,8),%ecx  ; implicit exception: dispatches to 0x00007f2e79220f0d
  0.44%    0.60%     0x00007f2e7921ffb2: cmp    %ecx,%r10d
                     0x00007f2e7921ffb5: jae    0x00007f2e79220178
  1.09%    0.97%     0x00007f2e7921ffbb: shl    $0x3,%r8
  0.28%    0.24%     0x00007f2e7921ffbf: mov    0x10(%r8,%r10,4),%r9d  ;*aaload
                                                                   ; - com.google.re2j.Machine::step@91 (line 296)
  1.14%    1.00%     0x00007f2e7921ffc4: mov    0xc(%r12,%r9,8),%ebp  ;*getfield op
                                                                   ; - com.google.re2j.Machine::step@96 (line 298)
                                                                   ; implicit exception: dispatches to 0x00007f2e79220f21
  3.33%    2.77%     0x00007f2e7921ffc9: cmp    $0x6,%ebp
                     0x00007f2e7921ffcc: je     0x00007f2e792200e3  ;*if_icmpne
                                                                   ; - com.google.re2j.Machine::step@101 (line 298)
  2.33%    2.08%     0x00007f2e7921ffd2: cmp    $0xa,%ebp
                     0x00007f2e7921ffd5: je     0x00007f2e7921fae0  ;*if_icmpne
                                                                   ; - com.google.re2j.Inst::matchRune@6 (line 90)
                                                                   ; - com.google.re2j.Machine::step@183 (line 313)
  0.32%    0.31%     0x00007f2e7921ffdb: cmp    $0xb,%ebp
                     0x00007f2e7921ffde: je     0x00007f2e792201ad  ;*if_icmpne
                                                                   ; - com.google.re2j.Inst::matchRune@17 (line 94)
                                                                   ; - com.google.re2j.Machine::step@183 (line 313)
  1.88%    2.18%     0x00007f2e7921ffe4: mov    0x1c(%r12,%r9,8),%ecx  ;*getfield f0
                                                                   ; - com.google.re2j.Inst::matchRune@42 (line 99)
                                                                   ; - com.google.re2j.Machine::step@183 (line 313)
  0.19%    0.14%     0x00007f2e7921ffe9: cmp    $0x9,%ebp
                  ╭  0x00007f2e7921ffec: jne    0x00007f2e7921ffff  ;*if_icmpne
                  │                                                ; - com.google.re2j.Inst::matchRune@38 (line 98)
                  │                                                ; - com.google.re2j.Machine::step@183 (line 313)
  0.37%    0.46%  │  0x00007f2e7921ffee: cmp    0x20(%rsp),%ecx
                  │  0x00007f2e7921fff2: je     0x00007f2e792200cf  ;*if_icmpne
                  │                                                ; - com.google.re2j.Inst::matchRune@46 (line 99)
                  │                                                ; - com.google.re2j.Machine::step@183 (line 313)
  0.09%    0.10%  │  0x00007f2e7921fff8: xor    %ecx,%ecx
  0.15%    0.20%  │  0x00007f2e7921fffa: jmpq   0x00007f2e7921fa42
  0.93%    0.88%  ↘  0x00007f2e7921ffff: cmp    $0xc,%ebp
                     0x00007f2e79220002: jne    0x00007f2e79220201  ;*if_icmpne
                                                                   ; - com.google.re2j.Inst::matchRune@61 (line 102)
                                                                   ; - com.google.re2j.Machine::step@183 (line 313)
  1.03%    1.00%     0x00007f2e79220008: cmp    0x20(%rsp),%ecx
                     0x00007f2e7922000c: je     0x00007f2e792200c5  ;*if_icmpeq
                                                                   ; - com.google.re2j.Inst::matchRune@69 (line 103)
                                                                   ; - com.google.re2j.Machine::step@183 (line 313)
  0.84%    0.80%     0x00007f2e79220012: mov    0x20(%r12,%r9,8),%ecx  ;*getfield f1
                                                                   ; - com.google.re2j.Inst::matchRune@73 (line 103)
                                                                   ; - com.google.re2j.Machine::step@183 (line 313)
  0.26%    0.30%     0x00007f2e79220017: cmp    0x20(%rsp),%ecx
                     0x00007f2e7922001b: je     0x00007f2e792200c5  ;*if_icmpeq
                                                                   ; - com.google.re2j.Inst::matchRune@77 (line 103)
                                                                   ; - com.google.re2j.Machine::step@183 (line 313)
  1.43%    1.77%     0x00007f2e79220021: mov    0x24(%r12,%r9,8),%ebp  ;*getfield f2
                                                                   ; - com.google.re2j.Inst::matchRune@81 (line 103)
                                                                   ; - com.google.re2j.Machine::step@183 (line 313)
  0.10%    0.14%     0x00007f2e79220026: cmp    0x20(%rsp),%ebp
                     0x00007f2e7922002a: je     0x00007f2e79220255  ;*if_icmpeq
                                                                   ; - com.google.re2j.Inst::matchRune@85 (line 103)
                                                                   ; - com.google.re2j.Machine::step@183 (line 313)
  1.40%    1.45%     0x00007f2e79220030: mov    0x28(%r12,%r9,8),%ebp  ;*getfield f3
                                                                   ; - com.google.re2j.Inst::matchRune@89 (line 103)
                                                                   ; - com.google.re2j.Machine::step@183 (line 313)
  0.06%    0.10%     0x00007f2e79220035: cmp    0x20(%rsp),%ebp
                     0x00007f2e79220039: jne    0x00007f2e7921fa40  ;*if_icmpne
                                                                   ; - com.google.re2j.Inst::matchRune@93 (line 103)
                                                                   ; - com.google.re2j.Machine::step@183 (line 313)
                     0x00007f2e7922003f: mov    $0xffffff65,%esi
                     0x00007f2e79220044: mov    %rdx,0x10(%rsp)
                     0x00007f2e79220049: mov    %r10d,0xa4(%rsp)
                     0x00007f2e79220051: mov    %r11,0x30(%rsp)
                     0x00007f2e79220056: mov    0x18(%rsp),%r11d
....................................................................................................
 21.94%   21.92%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 490 (1005 bytes) 

                     0x00007f2e7921fac2: shr    $0x3,%r8
                     0x00007f2e7921fac6: mov    %r8d,(%rdx)
                     0x00007f2e7921fac9: shr    $0x9,%r10
                     0x00007f2e7921facd: movabs $0x7f2e8a6a6000,%r8
                     0x00007f2e7921fad7: mov    %r12b,(%r8,%r10,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f2e7921fadb: jmpq   0x00007f2e7921ff6a
  0.21%    0.18%     0x00007f2e7921fae0: mov    0x2c(%r12,%r9,8),%r9d  ;*getfield outInst
                                                                   ; - com.google.re2j.Machine::step@191 (line 314)
  0.26%    0.04%     0x00007f2e7921fae5: mov    0x8(%r12,%r9,8),%ecx  ; implicit exception: dispatches to 0x00007f2e79220f31
  0.92%    0.97%     0x00007f2e7921faea: lea    (%r12,%r9,8),%r8
           0.01%     0x00007f2e7921faee: cmp    $0xf8019843,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                  ╭  0x00007f2e7921faf4: je     0x00007f2e7921fbaa
  0.08%    0.00%  │  0x00007f2e7921fafa: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
  0.00%           │  0x00007f2e7921fb00: jne    0x00007f2e792207a1  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Machine::step@206 (line 314)
  0.07%    0.03%  │  0x00007f2e7921fb06: mov    0x18(%r8),%eax     ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@206 (line 314)
                  │  0x00007f2e7921fb0a: mov    0x10(%r11),%rbx    ;*getfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@206 (line 314)
                  │                                                ; implicit exception: dispatches to 0x00007f2e79220ff9
  0.00%    0.00%  │  0x00007f2e7921fb0e: cmp    $0x40,%eax
                  │  0x00007f2e7921fb11: jg     0x00007f2e79220bb9  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@206 (line 314)
  0.03%           │  0x00007f2e7921fb17: mov    $0x1,%edi
  0.06%    0.02%  │  0x00007f2e7921fb1c: mov    %eax,%ecx
                  │  0x00007f2e7921fb1e: shl    %cl,%rdi           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@206 (line 314)
  0.17%    0.03%  │  0x00007f2e7921fb21: mov    %rbx,%r9
                  │  0x00007f2e7921fb24: and    %rdi,%r9           ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@206 (line 314)
  0.01%    0.00%  │  0x00007f2e7921fb27: test   %r9,%r9
                  │  0x00007f2e7921fb2a: jne    0x00007f2e79220144  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@206 (line 314)
  0.07%    0.02%  │  0x00007f2e7921fb30: xor    %ebp,%ebp          ;*ireturn
                  │                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@206 (line 314)
  0.03%    0.01%  │  0x00007f2e7921fb32: test   %r9,%r9
                  │  0x00007f2e7921fb35: jne    0x00007f2e79220c21  ;*ifeq
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@206 (line 314)
  0.04%    0.02%  │  0x00007f2e7921fb3b: cmp    $0x40,%eax
                  │  0x00007f2e7921fb3e: jge    0x00007f2e79220c6d  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Machine::step@206 (line 314)
  0.01%    0.00%  │  0x00007f2e7921fb44: mov    %r12b,0x18(%r11)   ;*putfield empty
                  │                                                ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Machine::step@206 (line 314)
           0.01%  │  0x00007f2e7921fb48: mov    0x20(%r11),%r9d    ;*getfield denseThreadsInstructions
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Machine::step@206 (line 314)
  0.03%    0.02%  │  0x00007f2e7921fb4c: or     %rbx,%rdi
  0.04%           │  0x00007f2e7921fb4f: mov    %rdi,0x10(%r11)    ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Machine::step@206 (line 314)
           0.00%  │  0x00007f2e7921fb53: mov    0xc(%r11),%ebp     ;*getfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Machine::step@206 (line 314)
           0.00%  │  0x00007f2e7921fb57: mov    %ebp,%ecx
  0.02%    0.04%  │  0x00007f2e7921fb59: inc    %ecx
  0.03%    0.01%  │  0x00007f2e7921fb5b: mov    %ecx,0xc(%r11)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Machine::step@206 (line 314)
  0.01%           │  0x00007f2e7921fb5f: mov    0xc(%r12,%r9,8),%ecx  ; implicit exception: dispatches to 0x00007f2e7922100d
  0.10%    0.00%  │  0x00007f2e7921fb64: cmp    %ecx,%ebp
                  │  0x00007f2e7921fb66: jae    0x00007f2e7922073d
  0.12%    0.00%  │  0x00007f2e7921fb6c: mov    0x8(%r12,%r9,8),%ecx
  0.00%    0.02%  │  0x00007f2e7921fb71: cmp    $0xf8019807,%ecx   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                  │  0x00007f2e7921fb77: jne    0x00007f2e792207f5  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Machine::step@206 (line 314)
  0.01%    0.00%  │  0x00007f2e7921fb7d: shl    $0x3,%r9           ;*getfield denseThreadsInstructions
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Machine::step@206 (line 314)
                  │  0x00007f2e7921fb81: lea    0x10(%r9,%rbp,4),%r9
  0.06%    0.01%  │  0x00007f2e7921fb86: mov    %r8,%rcx
  0.00%    0.02%  │  0x00007f2e7921fb89: shr    $0x3,%rcx
  0.00%    0.00%  │  0x00007f2e7921fb8d: mov    %ecx,(%r9)
  0.29%    0.07%  │  0x00007f2e7921fb90: mov    %r9,%r8
                  │  0x00007f2e7921fb93: shr    $0x9,%r8
  0.01%    0.01%  │  0x00007f2e7921fb97: movabs $0x7f2e8a6a6000,%r9
  0.01%           │  0x00007f2e7921fba1: mov    %r12b,(%r9,%r8,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Machine::step@206 (line 314)
  0.13%    0.07%  │  0x00007f2e7921fba5: jmpq   0x00007f2e7921ff7f  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Machine::step@206 (line 314)
  0.31%    0.36%  ↘  0x00007f2e7921fbaa: mov    0x18(%r8),%eax     ;*getfield pc
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.03%     0x00007f2e7921fbae: mov    0x10(%r11),%r9     ;*getfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                                                                   ; implicit exception: dispatches to 0x00007f2e79220f65
  0.00%    0.01%     0x00007f2e7921fbb2: cmp    $0x40,%eax
                     0x00007f2e7921fbb5: jg     0x00007f2e79220569  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.25%    0.36%     0x00007f2e7921fbbb: mov    $0x1,%ebx
  0.01%    0.02%     0x00007f2e7921fbc0: mov    %eax,%ecx
           0.00%     0x00007f2e7921fbc2: shl    %cl,%rbx           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.51%    0.70%     0x00007f2e7921fbc5: mov    %r9,%rcx
  0.00%              0x00007f2e7921fbc8: and    %rbx,%rcx
  0.00%    0.01%     0x00007f2e7921fbcb: test   %rcx,%rcx
                     0x00007f2e7921fbce: jne    0x00007f2e7921ff7f  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.12%    0.08%     0x00007f2e7921fbd4: cmp    $0x40,%eax
                     0x00007f2e7921fbd7: jge    0x00007f2e792205c5  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.15%    0.19%     0x00007f2e7921fbdd: mov    %r12b,0x18(%r11)   ;*putfield empty
                                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
           0.01%     0x00007f2e7921fbe1: mov    0x2c(%r8),%ebp     ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f2e7921fbe5: or     %r9,%rbx           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.13%    0.11%     0x00007f2e7921fbe8: mov    %rbx,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.15%    0.19%     0x00007f2e7921fbec: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f2e79220f79
  0.48%    0.49%     0x00007f2e7921fbf1: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007f2e7921fbf7: jne    0x00007f2e79220305
  0.29%    0.35%     0x00007f2e7921fbfd: lea    (%r12,%rbp,8),%r9  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
           0.00%     0x00007f2e7921fc01: mov    0x18(%r9),%ecx     ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.19%    0.19%     0x00007f2e7921fc05: cmp    $0x40,%ecx
                     0x00007f2e7921fc08: jg     0x00007f2e79220621  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.21%    0.21%     0x00007f2e7921fc0e: mov    $0x1,%edi
  0.08%    0.07%     0x00007f2e7921fc13: shl    %cl,%rdi           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.51%    0.39%     0x00007f2e7921fc16: mov    %rbx,%rsi
  0.00%    0.01%     0x00007f2e7921fc19: and    %rdi,%rsi          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f2e7921fc1c: test   %rsi,%rsi
                     0x00007f2e7921fc1f: jne    0x00007f2e792200d9  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.21%    0.19%     0x00007f2e7921fc25: xor    %ebp,%ebp          ;*ireturn
                                                                   ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.07%    0.06%     0x00007f2e7921fc27: test   %rsi,%rsi
                     0x00007f2e7921fc2a: jne    0x00007f2e79220681  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.20%    0.17%     0x00007f2e7921fc30: cmp    $0x40,%ecx
                     0x00007f2e7921fc33: jge    0x00007f2e792206dd  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
           0.00%     0x00007f2e7921fc39: or     %rdi,%rbx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.01%     0x00007f2e7921fc3c: mov    %rbx,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.02%     0x00007f2e7921fc40: mov    0x20(%r11),%edi    ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.19%    0.16%     0x00007f2e7921fc44: mov    0xc(%r11),%ecx     ;*getfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f2e7921fc48: mov    %ecx,%ebp
  0.03%    0.01%     0x00007f2e7921fc4a: inc    %ebp               ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.06%     0x00007f2e7921fc4c: mov    %ebp,0xc(%r11)     ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.21%    0.07%     0x00007f2e7921fc50: mov    0xc(%r12,%rdi,8),%eax  ; implicit exception: dispatches to 0x00007f2e79220f8d
                     0x00007f2e7921fc55: cmp    %eax,%ecx
                     0x00007f2e7921fc57: jae    0x00007f2e792202a9
  0.05%    0.01%     0x00007f2e7921fc5d: mov    0x8(%r12,%rdi,8),%esi
  0.06%    0.02%     0x00007f2e7921fc62: cmp    $0xf8019807,%esi   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                     0x00007f2e7921fc68: jne    0x00007f2e79220361  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.20%    0.05%     0x00007f2e7921fc6e: mov    0x34(%r8),%r8d     ;*getfield inst2
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@43 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f2e7921fc72: mov    %r9,%rsi
  0.03%    0.01%     0x00007f2e7921fc75: shr    $0x3,%rsi          ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.06%    0.01%     0x00007f2e7921fc79: lea    (%r12,%rdi,8),%r9  ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.22%    0.17%     0x00007f2e7921fc7d: lea    0x10(%r9,%rcx,4),%r14
  0.00%              0x00007f2e7921fc82: mov    %esi,(%r14)
  0.07%    0.04%     0x00007f2e7921fc85: mov    %r14,%rsi
  0.03%    0.01%     0x00007f2e7921fc88: shr    $0x9,%rsi
  0.18%    0.19%     0x00007f2e7921fc8c: movabs $0x7f2e8a6a6000,%r14
  0.00%              0x00007f2e7921fc96: mov    %r12b,(%r14,%rsi,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.04%     0x00007f2e7921fc9a: mov    0x8(%r12,%r8,8),%esi  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                                                                   ; implicit exception: dispatches to 0x00007f2e79220fa9
  0.04%    0.07%     0x00007f2e7921fc9f: vmovd  %r8d,%xmm1
  0.22%    0.13%     0x00007f2e7921fca4: vmovd  %ebp,%xmm2
  0.00%    0.00%     0x00007f2e7921fca8: vmovd  %edi,%xmm0
  0.02%    0.02%     0x00007f2e7921fcac: mov    %r10d,0xa4(%rsp)
  0.05%    0.05%     0x00007f2e7921fcb4: mov    %r13d,0xac(%rsp)
  0.21%    0.13%     0x00007f2e7921fcbc: mov    %r11,%r13
                     0x00007f2e7921fcbf: mov    %rdx,0x10(%rsp)
           0.02%     0x00007f2e7921fcc4: mov    %ecx,%r14d
  0.06%    0.02%     0x00007f2e7921fcc7: movslq %ecx,%r10
  0.20%    0.24%     0x00007f2e7921fcca: lea    (%r9,%r10,4),%rdi  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%    0.01%     0x00007f2e7921fcce: mov    %rdi,%rdx
  0.05%    0.04%     0x00007f2e7921fcd1: add    $0x14,%rdx         ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.06%     0x00007f2e7921fcd5: shl    $0x3,%r8
  0.16%    0.19%     0x00007f2e7921fcd9: mov    %ecx,%r10d
           0.00%     0x00007f2e7921fcdc: add    $0x2,%r10d         ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.01%     0x00007f2e7921fce0: cmp    $0xf8019885,%esi   ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                     0x00007f2e7921fce6: jne    0x00007f2e7921fa5e  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.09%     0x00007f2e7921fcec: mov    0x18(%r8),%r11d    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@2 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.25%    0.14%     0x00007f2e7921fcf0: cmp    $0x40,%r11d
                     0x00007f2e7921fcf4: jg     0x00007f2e792208b1  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%              0x00007f2e7921fcfa: vmovq  %r8,%xmm1
  0.03%    0.01%     0x00007f2e7921fcff: mov    $0x1,%r8d
  0.03%    0.03%     0x00007f2e7921fd05: mov    %r11d,%ecx
  0.17%    0.09%     0x00007f2e7921fd08: shl    %cl,%r8            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.01%     0x00007f2e7921fd0b: mov    %rbx,%r11
  0.20%    0.06%     0x00007f2e7921fd0e: and    %r8,%r11           ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%              0x00007f2e7921fd11: test   %r11,%r11
                     0x00007f2e7921fd14: jne    0x00007f2e7922011e  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%    0.02%     0x00007f2e7921fd1a: xor    %ebp,%ebp          ;*ireturn
                                                                   ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.02%     0x00007f2e7921fd1c: test   %r11,%r11
                     0x00007f2e7921fd1f: jne    0x00007f2e792208ed  ;*ifeq
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@8 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.15%    0.11%     0x00007f2e7921fd25: mov    %ecx,%r11d
  0.00%              0x00007f2e7921fd28: cmp    $0x40,%r11d
                     0x00007f2e7921fd2c: jge    0x00007f2e79220919  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.00%     0x00007f2e7921fd32: or     %r8,%rbx           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.02%     0x00007f2e7921fd35: mov    %rbx,0x10(%r13)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.16%    0.13%     0x00007f2e7921fd39: vmovq  %xmm1,%r11
  0.01%              0x00007f2e7921fd3e: mov    0x2c(%r11),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@82 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.02%     0x00007f2e7921fd42: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f2e79220fbd
  0.05%    0.05%     0x00007f2e7921fd47: cmp    $0xf8019843,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                     0x00007f2e7921fd4e: jne    0x00007f2e792204fd
  0.15%    0.05%     0x00007f2e7921fd54: lea    (%r12,%rbp,8),%r8  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f2e7921fd58: mov    0x18(%r8),%r11d    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%              0x00007f2e7921fd5c: cmp    $0x40,%r11d
                     0x00007f2e7921fd60: jg     0x00007f2e79220a85  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.06%    0.00%     0x00007f2e7921fd66: mov    %r11d,%ecx
  0.23%    0.12%     0x00007f2e7921fd69: vmovq  %r8,%xmm1
                     0x00007f2e7921fd6e: mov    $0x1,%r8d
  0.02%    0.01%     0x00007f2e7921fd74: shl    %cl,%r8            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.31%    0.24%     0x00007f2e7921fd77: mov    %rbx,%r11
  0.01%    0.03%     0x00007f2e7921fd7a: and    %r8,%r11
  0.07%    0.08%     0x00007f2e7921fd7d: test   %r11,%r11
  0.20%    0.33%     0x00007f2e7921fd80: jne    0x00007f2e79220132  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
           0.01%     0x00007f2e7921fd86: mov    %ecx,%r11d
  0.02%    0.04%     0x00007f2e7921fd89: cmp    $0x40,%r11d
                     0x00007f2e7921fd8d: jge    0x00007f2e79220ac1  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.06%    0.05%     0x00007f2e7921fd93: or     %r8,%rbx           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.22%    0.18%     0x00007f2e7921fd96: mov    %rbx,0x10(%r13)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
           0.01%     0x00007f2e7921fd9a: vmovq  %xmm1,%r11
  0.02%    0.03%     0x00007f2e7921fd9f: mov    0x2c(%r11),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.08%     0x00007f2e7921fda3: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007f2e79220fd1
  0.26%    0.28%     0x00007f2e7921fda8: cmp    $0xf8019909,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007f2e7921fdaf: jne    0x00007f2e79220525
  0.01%    0.04%     0x00007f2e7921fdb5: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.02%     0x00007f2e7921fdb9: vmovq  %r11,%xmm3
  0.05%    0.07%     0x00007f2e7921fdbe: mov    0x18(%r11),%r11d   ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.22%    0.35%     0x00007f2e7921fdc2: vmovd  %r11d,%xmm4
  0.04%    0.08%     0x00007f2e7921fdc7: cmp    $0x40,%r11d
                     0x00007f2e7921fdcb: jg     0x00007f2e79220afd  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
           0.03%     0x00007f2e7921fdd1: mov    $0x1,%r8d
  0.02%    0.03%     0x00007f2e7921fdd7: mov    %r11d,%ecx
  0.16%    0.14%     0x00007f2e7921fdda: shl    %cl,%r8            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.20%    0.20%     0x00007f2e7921fddd: mov    %rbx,%r11
  0.23%    0.18%     0x00007f2e7921fde0: and    %r8,%r11           ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.00%     0x00007f2e7921fde3: test   %r11,%r11
                     0x00007f2e7921fde6: jne    0x00007f2e7922013a  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.07%    0.04%     0x00007f2e7921fdec: xor    %ebp,%ebp          ;*ireturn
                                                                   ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.07%    0.11%     0x00007f2e7921fdee: test   %r11,%r11
                     0x00007f2e7921fdf1: jne    0x00007f2e79220b41  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.23%    0.22%     0x00007f2e7921fdf7: mov    %ecx,%r11d
  0.01%    0.02%     0x00007f2e7921fdfa: cmp    $0x40,%r11d
                     0x00007f2e7921fdfe: jge    0x00007f2e79220b79  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.03%     0x00007f2e7921fe04: mov    %r10d,0xc(%r13)    ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.06%     0x00007f2e7921fe08: or     %r8,%rbx           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.19%    0.14%     0x00007f2e7921fe0b: mov    %rbx,0x10(%r13)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.01%     0x00007f2e7921fe0f: cmp    %eax,%r10d
                     0x00007f2e7921fe12: jae    0x00007f2e79220485  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.05%     0x00007f2e7921fe18: vmovq  %xmm1,%r10
  0.06%    0.06%     0x00007f2e7921fe1d: mov    0x34(%r10),%r11d   ;*getfield inst2
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@43 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.20%    0.27%     0x00007f2e7921fe21: mov    %rdx,%r8
  0.02%    0.01%     0x00007f2e7921fe24: vmovq  %xmm3,%r10
  0.06%    0.06%     0x00007f2e7921fe29: shr    $0x3,%r10
  0.07%    0.04%     0x00007f2e7921fe2d: mov    %r10d,(%rdx)
  0.19%    0.16%     0x00007f2e7921fe30: shr    $0x9,%r8
  0.02%    0.04%     0x00007f2e7921fe34: movabs $0x7f2e8a6a6000,%r10
  0.04%    0.06%     0x00007f2e7921fe3e: mov    %r12b,(%r10,%r8,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.06%    0.09%     0x00007f2e7921fe42: mov    0x8(%r12,%r11,8),%ecx  ; implicit exception: dispatches to 0x00007f2e79220fe5
  0.12%    0.20%     0x00007f2e7921fe47: lea    (%r12,%r11,8),%r10
  0.01%    0.01%     0x00007f2e7921fe4b: cmp    $0xf8019885,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                     0x00007f2e7921fe51: je     0x00007f2e7921fed2
  0.08%    0.05%     0x00007f2e7921fe53: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007f2e7921fe59: jne    0x00007f2e79220859  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.05%     0x00007f2e7921fe5f: mov    0x18(%r10),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.17%    0.13%     0x00007f2e7921fe63: cmp    $0x40,%ecx
                     0x00007f2e7921fe66: jg     0x00007f2e79220d79  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.01%     0x00007f2e7921fe6c: mov    $0x1,%r11d
  0.05%    0.05%     0x00007f2e7921fe72: shl    %cl,%r11           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.19%    0.30%     0x00007f2e7921fe75: mov    %rbx,%r8
  0.04%    0.08%     0x00007f2e7921fe78: and    %r11,%r8           ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.06%    0.05%     0x00007f2e7921fe7b: test   %r8,%r8
                     0x00007f2e7921fe7e: jne    0x00007f2e79220158  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.18%    0.24%     0x00007f2e7921fe84: xor    %ebp,%ebp          ;*ireturn
                                                                   ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.01%     0x00007f2e7921fe86: test   %r8,%r8
                     0x00007f2e7921fe89: jne    0x00007f2e79220de9  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.08%     0x00007f2e7921fe8f: cmp    $0x40,%ecx
                     0x00007f2e7921fe92: jge    0x00007f2e79220e39  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.08%    0.07%     0x00007f2e7921fe98: or     %r11,%rbx
  0.15%    0.19%     0x00007f2e7921fe9b: mov    %r13,%r11
  0.01%    0.03%     0x00007f2e7921fe9e: mov    %rbx,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.09%    0.08%     0x00007f2e7921fea2: add    $0x18,%rdi
  0.03%    0.05%     0x00007f2e7921fea6: mov    %r10,%r8
  0.16%    0.29%     0x00007f2e7921fea9: shr    $0x3,%r8
  0.00%    0.02%     0x00007f2e7921fead: mov    %r8d,(%rdi)        ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.10%    0.10%     0x00007f2e7921feb0: mov    %rdi,%r10
  0.06%    0.06%     0x00007f2e7921feb3: add    $0x3,%r14d
  0.18%    0.10%     0x00007f2e7921feb7: mov    %r14d,0xc(%r11)    ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.02%     0x00007f2e7921febb: shr    $0x9,%r10
  0.06%    0.08%     0x00007f2e7921febf: movabs $0x7f2e8a6a6000,%r8
  0.04%    0.03%     0x00007f2e7921fec9: mov    %r12b,(%r8,%r10,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.18%    0.14%     0x00007f2e7921fecd: jmpq   0x00007f2e7921ff6a  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
....................................................................................................
 16.96%   15.30%  <total for region 3>

....[Hottest Region 4]..............................................................................
C2, level 4, com.google.re2j.Inst$Alt5Inst::add, version 507 (867 bytes) 

                            # parm5:    [sp+0x80]   = &apos;com/google/re2j/Machine&apos;  (sp of caller)
                            # parm6:    [sp+0x88]   = boolean
                            0x00007f2e79223640: mov    0x8(%rsi),%r10d
                            0x00007f2e79223644: shl    $0x3,%r10
                            0x00007f2e79223648: cmp    %r10,%rax
                            0x00007f2e7922364b: jne    0x00007f2e79045e20  ;   {runtime_call}
                            0x00007f2e79223651: data16 xchg %ax,%ax
                            0x00007f2e79223654: nopl   0x0(%rax,%rax,1)
                            0x00007f2e7922365c: data16 data16 xchg %ax,%ax
                          [Verified Entry Point]
  0.23%    0.28%            0x00007f2e79223660: mov    %eax,-0x14000(%rsp)
  0.08%    0.08%            0x00007f2e79223667: push   %rbp
  0.25%    0.25%            0x00007f2e79223668: sub    $0x70,%rsp         ;*synchronization entry
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@-1 (line 260)
  0.00%                     0x00007f2e7922366c: vmovd  %r9d,%xmm4
  0.09%    0.10%            0x00007f2e79223671: vmovq  %r8,%xmm3
  0.29%    0.29%            0x00007f2e79223676: vmovq  %rsi,%xmm2
                            0x00007f2e7922367b: mov    %ecx,%r13d
  0.00%    0.01%            0x00007f2e7922367e: mov    0x18(%rsi),%ecx    ;*getfield pc
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@2 (line 260)
  0.13%    0.05%            0x00007f2e79223681: mov    0x10(%rdx),%r11    ;*getfield pcsl
                                                                          ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
                                                                          ; implicit exception: dispatches to 0x00007f2e79223f85
  0.21%    0.19%            0x00007f2e79223685: cmp    $0x40,%ecx
                            0x00007f2e79223688: jg     0x00007f2e79223b95  ;*if_icmpgt
                                                                          ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
                            0x00007f2e7922368e: mov    $0x1,%esi
  0.00%    0.01%            0x00007f2e79223693: mov    $0x1,%r9d
  0.06%    0.10%            0x00007f2e79223699: shl    %cl,%r9            ;*lshl
                                                                          ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.31%    0.25%            0x00007f2e7922369c: mov    %r11,%r10
  0.06%    0.10%            0x00007f2e7922369f: and    %r9,%r10           ;*land
                                                                          ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.23%    0.16%            0x00007f2e792236a2: test   %r10,%r10
                  ╭         0x00007f2e792236a5: jne    0x00007f2e792239c4  ;*ifeq
                  │                                                       ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                       ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
                  │         0x00007f2e792236ab: xor    %ebp,%ebp          ;*ireturn
                  │                                                       ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  │                                                       ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.00%    0.01%  │   ↗     0x00007f2e792236ad: test   %r10,%r10
                  │   │     0x00007f2e792236b0: jne    0x00007f2e79223bc9  ;*ifeq
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@8 (line 260)
  0.09%    0.12%  │   │     0x00007f2e792236b6: cmp    $0x40,%ecx
                  │   │     0x00007f2e792236b9: jge    0x00007f2e79223bf9  ;*if_icmpge
                  │   │                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.22%    0.27%  │   │     0x00007f2e792236bf: mov    %r12b,0x18(%rdx)   ;*putfield empty
                  │   │                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
                  │   │     0x00007f2e792236c3: vmovq  %xmm2,%r10
  0.01%           │   │     0x00007f2e792236c8: mov    0x2c(%r10),%ebp    ;*getfield outInst
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@23 (line 265)
  0.10%    0.09%  │   │     0x00007f2e792236cc: or     %r11,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.23%    0.26%  │   │     0x00007f2e792236cf: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  │   │                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
                  │   │     0x00007f2e792236d3: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f2e79223f99
  0.01%    0.01%  │   │     0x00007f2e792236d8: cmp    $0xf8019909,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │   │     0x00007f2e792236df: jne    0x00007f2e79223a79
  0.13%    0.06%  │   │     0x00007f2e792236e5: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.22%    0.31%  │   │     0x00007f2e792236e9: mov    0x18(%r11),%ecx    ;*getfield pc
                  │   │                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
                  │   │     0x00007f2e792236ed: cmp    $0x40,%ecx
                  │   │     0x00007f2e792236f0: jg     0x00007f2e79223c2d  ;*if_icmpgt
                  │   │                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │   │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.02%    0.01%  │   │     0x00007f2e792236f6: mov    $0x1,%r10d
  0.08%    0.03%  │   │     0x00007f2e792236fc: shl    %cl,%r10           ;*lshl
                  │   │                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │   │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.28%    0.39%  │   │     0x00007f2e792236ff: mov    %r9,%r8
  0.07%    0.13%  │   │     0x00007f2e79223702: and    %r10,%r8           ;*land
                  │   │                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │   │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.13%    0.18%  │   │     0x00007f2e79223705: test   %r8,%r8
                  │╭  │     0x00007f2e79223708: jne    0x00007f2e792239ce  ;*ifeq
                  ││  │                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  ││  │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││  │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.09%    0.07%  ││  │     0x00007f2e7922370e: xor    %ebp,%ebp          ;*ireturn
                  ││  │                                                   ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  ││  │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││  │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.02%    0.05%  ││  │↗    0x00007f2e79223710: test   %r8,%r8
                  ││  ││    0x00007f2e79223713: jne    0x00007f2e79223c69  ;*ifeq
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.22%    0.21%  ││  ││    0x00007f2e79223719: cmp    $0x40,%ecx
                  ││  ││    0x00007f2e7922371c: jge    0x00007f2e79223c9d  ;*if_icmpge
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.06%    0.02%  ││  ││    0x00007f2e79223722: or     %r10,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
                  ││  ││    0x00007f2e79223725: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.04%    0.02%  ││  ││    0x00007f2e79223729: mov    0x88(%rsp),%r8d
  0.21%    0.18%  ││  ││    0x00007f2e79223731: test   %r8d,%r8d
                  ││  ││    0x00007f2e79223734: jne    0x00007f2e79223cdd  ;*ifeq
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@24 (line 149)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.05%    0.04%  ││  ││    0x00007f2e7922373a: mov    0xc(%rdx),%ecx     ;*getfield size
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.02%    0.00%  ││  ││    0x00007f2e7922373d: mov    0x20(%rdx),%ebx    ;*getfield denseThreadsInstructions
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.03%    0.01%  ││  ││    0x00007f2e79223740: mov    %ecx,%edi
  0.26%    0.15%  ││  ││    0x00007f2e79223742: inc    %edi               ;*iadd
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.07%           ││  ││    0x00007f2e79223744: mov    %edi,0xc(%rdx)     ;*putfield size
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
           0.01%  ││  ││    0x00007f2e79223747: mov    0xc(%r12,%rbx,8),%r10d  ; implicit exception: dispatches to 0x00007f2e79223fc1
  0.03%    0.04%  ││  ││    0x00007f2e7922374c: cmp    %r10d,%ecx
                  ││  ││    0x00007f2e7922374f: jae    0x00007f2e792239fd
  0.23%    0.21%  ││  ││    0x00007f2e79223755: vmovd  %edi,%xmm0
  0.05%    0.03%  ││  ││    0x00007f2e79223759: mov    %ebx,%edi
  0.01%    0.00%  ││  ││    0x00007f2e7922375b: mov    %ecx,%eax
  0.03%    0.04%  ││  ││    0x00007f2e7922375d: mov    %r11,%rcx
  0.26%    0.27%  ││  ││    0x00007f2e79223760: mov    0x88(%rsp),%r11d
  0.06%    0.07%  ││  ││    0x00007f2e79223768: mov    0x8(%r12,%rbx,8),%r8d
  0.01%    0.01%  ││  ││    0x00007f2e7922376d: cmp    $0xf8019807,%r8d   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                  ││  ││    0x00007f2e79223774: jne    0x00007f2e79223aa9  ;*aastore
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.01%    0.04%  ││  ││    0x00007f2e7922377a: vmovq  %xmm2,%r11
  0.24%    0.25%  ││  ││    0x00007f2e7922377f: mov    0x34(%r11),%ebp    ;*getfield inst2
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@43 (line 266)
  0.06%    0.09%  ││  ││    0x00007f2e79223783: shr    $0x3,%rcx          ;*aastore
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
           0.00%  ││  ││    0x00007f2e79223787: lea    (%r12,%rbx,8),%r11  ;*getfield denseThreadsInstructions
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.03%    0.04%  ││  ││    0x00007f2e7922378b: lea    0x10(%r11,%rax,4),%r8
  0.24%    0.23%  ││  ││    0x00007f2e79223790: mov    %ecx,(%r8)
  0.07%    0.05%  ││  ││    0x00007f2e79223793: mov    %r8,%rcx
  0.01%    0.00%  ││  ││    0x00007f2e79223796: shr    $0x9,%rcx
  0.03%    0.01%  ││  ││    0x00007f2e7922379a: movabs $0x7f2e8a6a6000,%r8
  0.19%    0.19%  ││  ││    0x00007f2e792237a4: mov    %r12b,(%r8,%rcx,1)  ;*aastore
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.09%    0.06%  ││  ││    0x00007f2e792237a8: mov    0x8(%r12,%rbp,8),%ebx  ; implicit exception: dispatches to 0x00007f2e79223fdd
  0.01%           ││  ││    0x00007f2e792237ad: cmp    $0xf8019909,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  ││  ││    0x00007f2e792237b3: jne    0x00007f2e79223ae9
  0.04%    0.01%  ││  ││    0x00007f2e792237b9: lea    (%r12,%rbp,8),%r14  ;*invokevirtual add
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.21%    0.14%  ││  ││    0x00007f2e792237bd: mov    0x18(%r14),%ecx    ;*getfield pc
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.13%    0.11%  ││  ││    0x00007f2e792237c1: vmovd  %ecx,%xmm1
  0.01%    0.01%  ││  ││    0x00007f2e792237c5: cmp    $0x40,%ecx
                  ││  ││    0x00007f2e792237c8: jg     0x00007f2e79223d19  ;*if_icmpgt
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.02%    0.02%  ││  ││    0x00007f2e792237ce: mov    $0x1,%ebx
  0.20%    0.20%  ││  ││    0x00007f2e792237d3: shl    %cl,%rbx           ;*lshl
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.13%    0.16%  ││  ││    0x00007f2e792237d6: mov    %r9,%rcx
  0.23%    0.26%  ││  ││    0x00007f2e792237d9: and    %rbx,%rcx          ;*land
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.12%    0.08%  ││  ││    0x00007f2e792237dc: test   %rcx,%rcx
                  ││╭ ││    0x00007f2e792237df: jne    0x00007f2e792239d8  ;*ifeq
                  │││ ││                                                  ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │││ ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││ ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.03%    0.01%  │││ ││    0x00007f2e792237e5: xor    %ebp,%ebp          ;*ireturn
                  │││ ││                                                  ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  │││ ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││ ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.03%    0.03%  │││ ││↗   0x00007f2e792237e7: test   %rcx,%rcx
                  │││ │││   0x00007f2e792237ea: jne    0x00007f2e79223d55  ;*ifeq
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.17%    0.18%  │││ │││   0x00007f2e792237f0: vmovd  %xmm1,%ecx
  0.04%    0.05%  │││ │││   0x00007f2e792237f4: cmp    $0x40,%ecx
                  │││ │││   0x00007f2e792237f7: jge    0x00007f2e79223d89  ;*if_icmpge
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.01%    0.03%  │││ │││   0x00007f2e792237fd: or     %rbx,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.02%    0.02%  │││ │││   0x00007f2e79223800: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.24%    0.25%  │││ │││   0x00007f2e79223804: mov    %eax,%ebx
  0.10%    0.10%  │││ │││   0x00007f2e79223806: add    $0x2,%ebx
  0.00%    0.00%  │││ │││   0x00007f2e79223809: mov    %ebx,0xc(%rdx)     ;*putfield size
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.03%    0.03%  │││ │││   0x00007f2e7922380c: mov    %eax,%ebx
  0.21%    0.25%  │││ │││   0x00007f2e7922380e: add    $0x4,%ebx          ;*iadd
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.09%    0.13%  │││ │││   0x00007f2e79223811: cmp    %r10d,%ebx
                  │││ │││   0x00007f2e79223814: jae    0x00007f2e79223a3d  ;*aastore
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.00%    0.01%  │││ │││   0x00007f2e7922381a: vmovq  %xmm2,%r10
  0.02%    0.03%  │││ │││   0x00007f2e7922381f: mov    0x38(%r10),%ebp    ;*getfield inst3
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@63 (line 267)
  0.22%    0.22%  │││ │││   0x00007f2e79223823: mov    %r14,%rcx
  0.08%    0.09%  │││ │││   0x00007f2e79223826: shr    $0x3,%rcx          ;*aastore
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.01%    0.01%  │││ │││   0x00007f2e7922382a: movslq %eax,%r10
  0.01%    0.02%  │││ │││   0x00007f2e7922382d: lea    (%r11,%r10,4),%rdi  ;*aastore
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.27%    0.23%  │││ │││   0x00007f2e79223831: mov    %rdi,%r10
  0.10%    0.10%  │││ │││   0x00007f2e79223834: add    $0x14,%r10
  0.02%    0.01%  │││ │││   0x00007f2e79223838: mov    %ecx,(%r10)
  0.03%    0.01%  │││ │││   0x00007f2e7922383b: shr    $0x9,%r10
  0.21%    0.13%  │││ │││   0x00007f2e7922383f: mov    %r12b,(%r8,%r10,1)  ;*aastore
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.12%    0.06%  │││ │││   0x00007f2e79223843: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f2e79224005
  0.01%    0.02%  │││ │││   0x00007f2e79223848: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │││ │││   0x00007f2e7922384e: jne    0x00007f2e79223b15
  0.02%    0.01%  │││ │││   0x00007f2e79223854: lea    (%r12,%rbp,8),%r14  ;*invokevirtual add
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.15%    0.22%  │││ │││   0x00007f2e79223858: mov    0x18(%r14),%ecx    ;*getfield pc
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.06%    0.11%  │││ │││   0x00007f2e7922385c: vmovd  %ecx,%xmm1
  0.02%    0.01%  │││ │││   0x00007f2e79223860: cmp    $0x40,%ecx
                  │││ │││   0x00007f2e79223863: jg     0x00007f2e79223dc5  ;*if_icmpgt
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.04%    0.02%  │││ │││   0x00007f2e79223869: mov    $0x1,%r10d
  0.15%    0.30%  │││ │││   0x00007f2e7922386f: shl    %cl,%r10           ;*lshl
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.14%    0.20%  │││ │││   0x00007f2e79223872: mov    %r9,%rcx
  0.17%    0.34%  │││ │││   0x00007f2e79223875: and    %r10,%rcx          ;*land
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.12%    0.11%  │││ │││   0x00007f2e79223878: test   %rcx,%rcx
                  │││╭│││   0x00007f2e7922387b: jne    0x00007f2e792239e2  ;*ifeq
                  │││││││                                                 ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │││││││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││││││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.02%    0.03%  │││││││   0x00007f2e79223881: xor    %ebp,%ebp          ;*ireturn
                  │││││││                                                 ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  │││││││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││││││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.01%    0.02%  │││││││↗  0x00007f2e79223883: test   %rcx,%rcx
                  ││││││││  0x00007f2e79223886: jne    0x00007f2e79223e01  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.23%    0.21%  ││││││││  0x00007f2e7922388c: vmovd  %xmm1,%ecx
  0.08%    0.10%  ││││││││  0x00007f2e79223890: cmp    $0x40,%ecx
                  ││││││││  0x00007f2e79223893: jge    0x00007f2e79223e35  ;*if_icmpge
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.01%    0.03%  ││││││││  0x00007f2e79223899: or     %r10,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.04%    0.02%  ││││││││  0x00007f2e7922389c: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.19%    0.29%  ││││││││  0x00007f2e792238a0: vmovq  %xmm2,%r10
  0.05%    0.11%  ││││││││  0x00007f2e792238a5: mov    0x3c(%r10),%ebp    ;*getfield inst4
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@83 (line 268)
  0.03%    0.04%  ││││││││  0x00007f2e792238a9: mov    %rdi,%r10
  0.02%    0.01%  ││││││││  0x00007f2e792238ac: add    $0x18,%r10
  0.20%    0.25%  ││││││││  0x00007f2e792238b0: mov    %r14,%rcx
  0.09%    0.10%  ││││││││  0x00007f2e792238b3: shr    $0x3,%rcx
  0.03%    0.03%  ││││││││  0x00007f2e792238b7: mov    %ecx,(%r10)        ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.03%    0.06%  ││││││││  0x00007f2e792238ba: mov    %eax,%ecx
  0.14%    0.20%  ││││││││  0x00007f2e792238bc: add    $0x3,%ecx
  0.12%    0.09%  ││││││││  0x00007f2e792238bf: mov    %ecx,0xc(%rdx)     ;*putfield size
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.02%    0.03%  ││││││││  0x00007f2e792238c2: shr    $0x9,%r10
  0.03%    0.02%  ││││││││  0x00007f2e792238c6: mov    %r12b,(%r8,%r10,1)  ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.21%    0.28%  ││││││││  0x00007f2e792238ca: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f2e7922402d
  0.06%    0.09%  ││││││││  0x00007f2e792238cf: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  ││││││││  0x00007f2e792238d5: jne    0x00007f2e79223b41
  0.03%    0.06%  ││││││││  0x00007f2e792238db: lea    (%r12,%rbp,8),%r14  ;*invokevirtual add
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.01%    0.02%  ││││││││  0x00007f2e792238df: mov    0x18(%r14),%ecx    ;*getfield pc
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.16%    0.28%  ││││││││  0x00007f2e792238e3: vmovd  %ecx,%xmm0
  0.05%    0.07%  ││││││││  0x00007f2e792238e7: cmp    $0x40,%ecx
                  ││││││││  0x00007f2e792238ea: jg     0x00007f2e79223e71  ;*if_icmpgt
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.05%    0.03%  ││││││││  0x00007f2e792238f0: mov    $0x1,%r10d
  0.03%    0.03%  ││││││││  0x00007f2e792238f6: shl    %cl,%r10           ;*lshl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.23%    0.38%  ││││││││  0x00007f2e792238f9: mov    %r9,%rcx
  0.02%    0.02%  ││││││││  0x00007f2e792238fc: and    %r10,%rcx          ;*land
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.18%    0.11%  ││││││││  0x00007f2e792238ff: test   %rcx,%rcx
                  ││││││││  0x00007f2e79223902: jne    0x00007f2e792239ec  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.07%    0.04%  ││││││││  0x00007f2e79223908: xor    %ebp,%ebp          ;*ireturn
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.03%    0.06%  ││││││││  0x00007f2e7922390a: test   %rcx,%rcx
                  ││││││││  0x00007f2e7922390d: jne    0x00007f2e79223ead  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.03%    0.04%  ││││││││  0x00007f2e79223913: vmovd  %xmm0,%ecx
  0.22%    0.24%  ││││││││  0x00007f2e79223917: cmp    $0x40,%ecx
                  ││││││││  0x00007f2e7922391a: jge    0x00007f2e79223ee1  ;*if_icmpge
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.08%    0.13%  ││││││││  0x00007f2e79223920: mov    %ebx,0xc(%rdx)     ;*putfield size
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.05%    0.03%  ││││││││  0x00007f2e79223923: vmovq  %xmm2,%rcx
  0.02%    0.03%  ││││││││  0x00007f2e79223928: mov    0x40(%rcx),%ebp    ;*getfield inst5
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@103 (line 269)
  0.14%    0.30%  ││││││││  0x00007f2e7922392b: mov    %rdi,%rcx
  0.06%    0.06%  ││││││││  0x00007f2e7922392e: add    $0x1c,%rcx         ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.03%    0.03%  ││││││││  0x00007f2e79223932: or     %r10,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.03%    0.01%  ││││││││  0x00007f2e79223935: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.17%    0.19%  ││││││││  0x00007f2e79223939: mov    %r14,%r10
  0.06%    0.12%  ││││││││  0x00007f2e7922393c: shr    $0x3,%r10
  0.01%    0.01%  ││││││││  0x00007f2e79223940: mov    %r10d,(%rcx)
  0.02%    0.06%  ││││││││  0x00007f2e79223943: mov    %rcx,%r10
  0.22%    0.24%  ││││││││  0x00007f2e79223946: shr    $0x9,%r10
  0.06%    0.09%  ││││││││  0x00007f2e7922394a: mov    %r12b,(%r8,%r10,1)  ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.03%    0.02%  ││││││││  0x00007f2e7922394e: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f2e79224055
  0.03%    0.01%  ││││││││  0x00007f2e79223953: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  ││││││││  0x00007f2e7922395a: jne    0x00007f2e79223b6d
  0.26%    0.17%  ││││││││  0x00007f2e79223960: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.06%    0.08%  ││││││││  0x00007f2e79223964: mov    0x18(%r10),%ecx    ;*getfield pc
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.04%    0.03%  ││││││││  0x00007f2e79223968: cmp    $0x40,%ecx
                  ││││││││  0x00007f2e7922396b: jg     0x00007f2e79223f1d  ;*if_icmpgt
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.05%    0.08%  ││││││││  0x00007f2e79223971: shl    %cl,%rsi           ;*lshl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.32%    0.42%  ││││││││  0x00007f2e79223974: mov    %r9,%rbx
           0.01%  ││││││││  0x00007f2e79223977: and    %rsi,%rbx          ;*land
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.12%    0.18%  ││││││││  0x00007f2e7922397a: test   %rbx,%rbx
                  ││││││││  0x00007f2e7922397d: jne    0x00007f2e792239f6  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.09%    0.12%  ││││││││  0x00007f2e7922397f: xor    %ebp,%ebp          ;*ireturn
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.05%    0.04%  ││││││││  0x00007f2e79223981: test   %rbx,%rbx
                  ││││││││  0x00007f2e79223984: jne    0x00007f2e79223f41  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.03%    0.03%  ││││││││  0x00007f2e7922398a: cmp    $0x40,%ecx
                  ││││││││  0x00007f2e7922398d: jge    0x00007f2e79223f61  ;*if_icmpge
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.13%    0.30%  ││││││││  0x00007f2e79223993: or     %rsi,%r9
  0.07%    0.10%  ││││││││  0x00007f2e79223996: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.06%    0.04%  ││││││││  0x00007f2e7922399a: add    $0x20,%rdi
  0.02%    0.02%  ││││││││  0x00007f2e7922399e: shr    $0x3,%r10
  0.18%    0.12%  ││││││││  0x00007f2e792239a2: mov    %r10d,(%rdi)       ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.07%    0.05%  ││││││││  0x00007f2e792239a5: mov    %rdi,%r10
  0.05%    0.06%  ││││││││  0x00007f2e792239a8: add    $0x5,%eax
  0.02%    0.04%  ││││││││  0x00007f2e792239ab: mov    %eax,0xc(%rdx)     ;*putfield size
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.16%    0.19%  ││││││││  0x00007f2e792239ae: shr    $0x9,%r10
  0.06%    0.08%  ││││││││  0x00007f2e792239b2: mov    %r12b,(%r8,%r10,1)  ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.08%    0.09%  ││││││││  0x00007f2e792239b6: xor    %eax,%eax
  0.03%    0.05%  ││││││││  0x00007f2e792239b8: add    $0x70,%rsp
  0.22%    0.27%  ││││││││  0x00007f2e792239bc: pop    %rbp
  0.06%    0.10%  ││││││││  0x00007f2e792239bd: test   %eax,0x18a7a63d(%rip)        # 0x00007f2e91c9e000
                  ││││││││                                                ;   {poll_return}
  0.04%    0.05%  ││││││││  0x00007f2e792239c3: retq   
                  ↘│││││││  0x00007f2e792239c4: mov    $0x1,%ebp
                   │││╰│││  0x00007f2e792239c9: jmpq   0x00007f2e792236ad
                   ↘││ │││  0x00007f2e792239ce: mov    $0x1,%ebp
                    ││ ╰││  0x00007f2e792239d3: jmpq   0x00007f2e79223710
                    ↘│  ││  0x00007f2e792239d8: mov    $0x1,%ebp
                     │  ╰│  0x00007f2e792239dd: jmpq   0x00007f2e792237e7
                     ↘   │  0x00007f2e792239e2: mov    $0x1,%ebp
                         ╰  0x00007f2e792239e7: jmpq   0x00007f2e79223883
                            0x00007f2e792239ec: mov    $0x1,%ebp
....................................................................................................
 16.37%   17.98%  <total for region 4>

....[Hottest Regions]...............................................................................
 29.44%   29.19%         C2, level 4  com.google.re2j.Machine::match, version 530 (1202 bytes) 
 21.94%   21.92%         C2, level 4  com.google.re2j.Machine::step, version 490 (203 bytes) 
 16.96%   15.30%         C2, level 4  com.google.re2j.Machine::step, version 490 (1005 bytes) 
 16.37%   17.98%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 507 (867 bytes) 
  6.73%    7.00%         C2, level 4  com.google.re2j.Machine::step, version 490 (121 bytes) 
  2.34%    2.93%         C2, level 4  com.google.re2j.Machine::step, version 490 (58 bytes) 
  2.23%    2.22%   [kernel.kallsyms]  [unknown] (0 bytes) 
  1.32%    1.34%         C2, level 4  com.google.re2j.Machine::match, version 530 (97 bytes) 
  0.12%    0.01%   [kernel.kallsyms]  [unknown] (39 bytes) 
  0.12%    0.10%         C2, level 4  com.google.re2j.Pattern::find, version 540 (28 bytes) 
  0.10%    0.01%   [kernel.kallsyms]  [unknown] (2 bytes) 
  0.10%    0.07%         C2, level 4  com.google.re2j.Pattern::find, version 540 (12 bytes) 
  0.10%    0.04%         C2, level 4  com.google.re2j.Pattern::find, version 540 (0 bytes) 
  0.08%    0.00%         C2, level 4  com.google.re2j.Pattern::find, version 540 (145 bytes) 
  0.06%    0.02%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.06%    0.04%         C2, level 4  com.google.re2j.Pattern::find, version 540 (8 bytes) 
  0.06%    0.01%   [kernel.kallsyms]  [unknown] (8 bytes) 
  0.06%    0.06%         C2, level 4  com.google.re2j.Machine::match, version 530 (207 bytes) 
  0.05%                  C2, level 4  com.google.re2j.Machine::match, version 530 (91 bytes) 
  0.04%    0.02%         C2, level 4  java.util.Collections::shuffle, version 561 (77 bytes) 
  1.72%    1.74%  <...other 345 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 47.98%   47.15%         C2, level 4  com.google.re2j.Machine::step, version 490 
 30.99%   30.76%         C2, level 4  com.google.re2j.Machine::match, version 530 
 16.37%   17.98%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 507 
  3.22%    2.92%   [kernel.kallsyms]  [unknown] 
  0.67%    0.27%         C2, level 4  com.google.re2j.Pattern::find, version 540 
  0.07%    0.04%         C2, level 4  java.util.Collections::shuffle, version 561 
  0.04%    0.04%      hsdis-amd64.so  [unknown] 
  0.03%    0.07%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.03%    0.09%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.03%    0.07%        libc-2.26.so  vfprintf 
  0.03%    0.01%              [vdso]  [unknown] 
  0.02%    0.02%           libjvm.so  _ZN18PSPromotionManager22copy_to_survivor_spaceILb0EEEP7oopDescS2_ 
  0.02%    0.02%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testCombine_jmhTest::testCombine_thrpt_jmhStub, version 615 
  0.02%    0.05%        libc-2.26.so  _IO_fwrite 
  0.02%                  C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 554 
  0.02%    0.00%  libpthread-2.26.so  __libc_write 
  0.01%    0.00%           libjvm.so  _ZN13InstanceKlass17oop_push_contentsEP18PSPromotionManagerP7oopDesc 
  0.01%    0.02%           libjvm.so  _ZN13xmlTextStream5writeEPKcm 
  0.01%    0.00%           libjvm.so  _ZN18PSPromotionManager18drain_stacks_depthEb 
  0.01%    0.00%           libjvm.so  _ZN10Dictionary4findEijP6SymbolP15ClassLoaderData6HandleP6Thread 
  0.37%    0.28%  <...other 61 warm methods...>
....................................................................................................
100.00%   99.80%  <totals>

....[Distribution by Source]........................................................................
 96.14%   96.21%         C2, level 4
  3.22%    2.92%   [kernel.kallsyms]
  0.32%    0.45%           libjvm.so
  0.16%    0.28%        libc-2.26.so
  0.05%    0.04%      hsdis-amd64.so
  0.05%    0.05%  libpthread-2.26.so
  0.03%    0.02%         interpreter
  0.03%    0.01%              [vdso]
  0.01%    0.00%         C1, level 3
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                        Mode  Cnt     Score     Error  Units
Re2jFindRegex.testCombine       thrpt   20  9259.880 ± 195.737  ops/s
Re2jFindRegex.testCombine:·asm  thrpt            NaN              ---
