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
# Warmup Iteration   1: 5258.302 ops/s
# Warmup Iteration   2: 11234.532 ops/s
# Warmup Iteration   3: 11516.309 ops/s
# Warmup Iteration   4: 11446.525 ops/s
# Warmup Iteration   5: 11552.318 ops/s
# Warmup Iteration   6: 11494.546 ops/s
# Warmup Iteration   7: 11431.550 ops/s
# Warmup Iteration   8: 11361.284 ops/s
# Warmup Iteration   9: 11451.996 ops/s
# Warmup Iteration  10: 11458.869 ops/s
# Warmup Iteration  11: 11484.635 ops/s
# Warmup Iteration  12: 11540.675 ops/s
# Warmup Iteration  13: 11572.770 ops/s
# Warmup Iteration  14: 11493.061 ops/s
# Warmup Iteration  15: 11542.638 ops/s
# Warmup Iteration  16: 11444.771 ops/s
# Warmup Iteration  17: 11569.591 ops/s
# Warmup Iteration  18: 11572.579 ops/s
# Warmup Iteration  19: 11519.880 ops/s
# Warmup Iteration  20: 11590.927 ops/s
Iteration   1: 11601.950 ops/s
Iteration   2: 11532.592 ops/s
Iteration   3: 11541.483 ops/s
Iteration   4: 11445.580 ops/s
Iteration   5: 11613.050 ops/s
Iteration   6: 11638.767 ops/s
Iteration   7: 11605.823 ops/s
Iteration   8: 11549.022 ops/s
Iteration   9: 11535.518 ops/s
Iteration  10: 11636.406 ops/s
Iteration  11: 11610.349 ops/s
Iteration  12: 11415.867 ops/s
Iteration  13: 11620.749 ops/s
Iteration  14: 11562.589 ops/s
Iteration  15: 11593.608 ops/s
Iteration  16: 11612.217 ops/s
Iteration  17: 11614.338 ops/s
Iteration  18: 11604.915 ops/s
Iteration  19: 11525.207 ops/s
Iteration  20: 11630.824 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  11574.543 ±(99.9%) 53.251 ops/s [Average]
  (min, avg, max) = (11415.867, 11574.543, 11638.767), stdev = 61.324
  CI (99.9%): [11521.292, 11627.793] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine:·asm":
PrintAssembly processed: 195461 total address lines.
Perf output processed (skipped 22.561 seconds):
 Column 1: cycles (20577 events)
 Column 2: instructions (20558 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 539 (1099 bytes) 

                                        0x00007f5491243d45: test   %r11d,%r11d
                                        0x00007f5491243d48: jne    0x00007f5491245229  ;*ifne
                                                                                      ; - com.google.re2j.Machine::match@115 (line 204)
                                        0x00007f5491243d4e: test   %r10d,%r10d
                                        0x00007f5491243d51: jl     0x00007f5491244634  ;*ifge
                                                                                      ; - com.google.re2j.Utils::emptyOpContext@21 (line 179)
                                                                                      ; - com.google.re2j.Machine::match@121 (line 205)
                                        0x00007f5491243d57: mov    $0x5,%r9d          ;*iload_1
                                                                                      ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                                                                                      ; - com.google.re2j.Machine::match@121 (line 205)
  0.00%    0.00%                        0x00007f5491243d5d: cmp    $0xa,%r10d
                                        0x00007f5491243d61: je     0x00007f549124465a  ;*iload_0
                                                                                      ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                                                                                      ; - com.google.re2j.Machine::match@121 (line 205)
                                        0x00007f5491243d67: mov    %r10d,%r8d
                                        0x00007f5491243d6a: add    $0xffffffbf,%r8d
                                        0x00007f5491243d6e: cmp    $0x1a,%r8d
                  ╭                     0x00007f5491243d72: jb     0x00007f5491243d85  ;*if_icmple
                  │                                                                   ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │                                                                   ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                                   ; - com.google.re2j.Machine::match@121 (line 205)
  0.01%    0.01%  │                     0x00007f5491243d74: mov    %r10d,%r11d
                  │                     0x00007f5491243d77: add    $0xffffff9f,%r11d
                  │                     0x00007f5491243d7b: cmp    $0x1a,%r11d
                  │                     0x00007f5491243d7f: jae    0x00007f5491244669  ;*iconst_1
                  │                                                                   ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │                                                                   ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                                   ; - com.google.re2j.Machine::match@121 (line 205)
                  ↘                     0x00007f5491243d85: or     $0x10,%r9d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                                                                                      ; - com.google.re2j.Machine::match@121 (line 205)
  0.00%                                 0x00007f5491243d89: mov    %r9d,0x38(%rsp)    ;*iload_2
                                                                                      ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                                      ; - com.google.re2j.Machine::match@121 (line 205)
           0.00%                        0x00007f5491243d8e: mov    0x40(%rsp),%r11
                                        0x00007f5491243d93: movzbl 0x11(%r11),%r8d    ;*getfield captures
                                                                                      ; - com.google.re2j.Machine::match@283 (line 240)
                                        0x00007f5491243d98: mov    0x48(%rsp),%r11d
                                        0x00007f5491243d9d: and    $0x4,%r11d         ;*iand
                                                                                      ; - com.google.re2j.Machine::match@147 (line 212)
                                        0x00007f5491243da1: mov    %r11d,0x4c(%rsp)
                                        0x00007f5491243da6: mov    %rcx,%r11
                                        0x00007f5491243da9: shl    $0x3,%r11          ;*getfield q1
                                                                                      ; - com.google.re2j.Machine::match@53 (line 192)
           0.00%                        0x00007f5491243dad: mov    %r11,0x20(%rsp)
  0.00%                                 0x00007f5491243db2: xor    %eax,%eax
           0.00%                        0x00007f5491243db4: mov    $0x1,%r11d
                                        0x00007f5491243dba: xor    %ecx,%ecx
  0.01%                                 0x00007f5491243dbc: mov    %r11d,0x14(%rsp)
                                        0x00007f5491243dc1: mov    %ecx,0x64(%rsp)
                   ╭                    0x00007f5491243dc5: jmpq   0x00007f549124400c
                   │   ↗                0x00007f5491243dca: or     $0xa,%r11d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@27 (line 180)
                   │   │                                                              ; - com.google.re2j.Machine::match@322 (line 245)
                   │╭  │                0x00007f5491243dce: jmp    0x00007f5491243e21
  0.00%            ││ ↗│                0x00007f5491243dd0: mov    $0x5,%r11d
                   ││╭││                0x00007f5491243dd6: jmp    0x00007f5491243e0d  ;*ifeq
                   │││││                                                              ; - com.google.re2j.Machine::match@286 (line 240)
  0.22%    0.24%   │││││          ↗     0x00007f5491243dd8: mov    %rdi,%r8
  0.03%    0.03%   │││││          │     0x00007f5491243ddb: shl    $0x3,%r8           ;*getfield matchcap
                   │││││          │                                                   ; - com.google.re2j.Machine::match@307 (line 243)
  0.00%    0.00%   │││││          │     0x00007f5491243ddf: mov    %r10,%rsi
  0.01%            │││││          │     0x00007f5491243de2: mov    0x18(%rsp),%rdx
  0.21%    0.26%   │││││          │     0x00007f5491243de7: mov    0x64(%rsp),%ecx
  0.03%    0.06%   │││││          │     0x00007f5491243deb: mov    0x38(%rsp),%r9d
  0.00%    0.00%   │││││          │     0x00007f5491243df0: xor    %edi,%edi
  0.00%    0.00%   │││││          │     0x00007f5491243df2: mov    0x40(%rsp),%r10
  0.20%    0.21%   │││││          │     0x00007f5491243df7: mov    %r10,(%rsp)
  0.04%    0.04%   │││││          │     0x00007f5491243dfb: callq  0x00007f5491046020  ; OopMap{[24]=Oop [32]=Oop [48]=NarrowOop [64]=Oop [80]=Oop off=640}
                   │││││          │                                                   ;*invokevirtual add
                   │││││          │                                                   ; - com.google.re2j.Machine::match@314 (line 243)
                   │││││          │                                                   ;   {optimized virtual_call}
  0.02%    0.03%   │││││          │↗    0x00007f5491243e00: mov    0x58(%rsp),%r10d
  0.17%    0.20%   │││││          ││    0x00007f5491243e05: test   %r10d,%r10d
                   │││╰│          ││    0x00007f5491243e08: jl     0x00007f5491243dd0  ;*ifge
                   │││ │          ││                                                  ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                   │││ │          ││                                                  ; - com.google.re2j.Machine::match@322 (line 245)
  0.13%    0.11%   │││ │          ││    0x00007f5491243e0a: xor    %r11d,%r11d        ;*iload_0
                   │││ │          ││                                                  ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                   │││ │          ││                                                  ; - com.google.re2j.Machine::match@322 (line 245)
  0.31%    0.31%   ││↘ │          ││    0x00007f5491243e0d: cmp    $0xa,%r10d
                   ││  │          ││    0x00007f5491243e11: je     0x00007f54912441e3  ;*iload_1
                   ││  │          ││                                                  ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                   ││  │          ││                                                  ; - com.google.re2j.Machine::match@322 (line 245)
  0.14%    0.17%   ││  │          ││    0x00007f5491243e17: mov    0x2c(%rsp),%r9d
  0.06%    0.04%   ││  │          ││    0x00007f5491243e1c: test   %r9d,%r9d
                   ││  ╰          ││    0x00007f5491243e1f: jl     0x00007f5491243dca  ;*iload_1
                   ││             ││                                                  ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                   ││             ││                                                  ; - com.google.re2j.Machine::match@322 (line 245)
  0.13%    0.11%   │↘             ││    0x00007f5491243e21: cmp    $0xa,%r9d
                   │              ││    0x00007f5491243e25: je     0x00007f54912441ec  ;*iload_0
                   │              ││                                                  ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                   │              ││                                                  ; - com.google.re2j.Machine::match@322 (line 245)
  0.30%    0.41%   │              ││    0x00007f5491243e2b: mov    0x58(%rsp),%ecx
  0.12%    0.14%   │              ││    0x00007f5491243e2f: add    $0xffffffbf,%ecx
  0.06%    0.08%   │              ││    0x00007f5491243e32: cmp    $0x1a,%ecx
                   │    ╭         ││    0x00007f5491243e35: jb     0x00007f5491243e4a  ;*if_icmple
                   │    │         ││                                                  ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                   │    │         ││                                                  ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   │    │         ││                                                  ; - com.google.re2j.Machine::match@322 (line 245)
  0.14%    0.20%   │    │         ││    0x00007f5491243e37: mov    0x58(%rsp),%r8d
  0.31%    0.41%   │    │         ││    0x00007f5491243e3c: add    $0xffffff9f,%r8d
  0.08%    0.16%   │    │         ││    0x00007f5491243e40: cmp    $0x1a,%r8d
                   │    │         ││    0x00007f5491243e44: jae    0x00007f54912444b1  ;*iconst_1
                   │    │         ││                                                  ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                   │    │         ││                                                  ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   │    │         ││                                                  ; - com.google.re2j.Machine::match@322 (line 245)
  0.03%    0.06%   │    ↘         ││    0x00007f5491243e4a: mov    $0x1,%ebp          ;*ireturn
                   │              ││                                                  ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                   │              ││                                                  ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   │              ││                                                  ; - com.google.re2j.Machine::match@322 (line 245)
  0.14%    0.13%   │              ││    0x00007f5491243e4f: mov    %r11d,%r8d
  0.24%    0.32%   │              ││    0x00007f5491243e52: add    $0xffffffbf,%r9d
  0.11%    0.12%   │              ││    0x00007f5491243e56: cmp    $0x1a,%r9d
                   │     ╭        ││    0x00007f5491243e5a: jb     0x00007f5491243e6f  ;*if_icmple
                   │     │        ││                                                  ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                   │     │        ││                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   │     │        ││                                                  ; - com.google.re2j.Machine::match@322 (line 245)
  0.04%    0.07%   │     │        ││    0x00007f5491243e5c: mov    0x2c(%rsp),%r11d
  0.15%    0.13%   │     │        ││    0x00007f5491243e61: add    $0xffffff9f,%r11d
  0.27%    0.29%   │     │        ││    0x00007f5491243e65: cmp    $0x1a,%r11d
                   │     │        ││    0x00007f5491243e69: jae    0x00007f54912444d2  ;*iconst_1
                   │     │        ││                                                  ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                   │     │        ││                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   │     │        ││                                                  ; - com.google.re2j.Machine::match@322 (line 245)
  0.12%    0.09%   │     ↘        ││    0x00007f5491243e6f: mov    $0x1,%r9d          ;*ireturn
                   │              ││                                                  ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                   │              ││                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   │              ││                                                  ; - com.google.re2j.Machine::match@322 (line 245)
  0.26%    0.26%   │              ││    0x00007f5491243e75: cmp    %r9d,%ebp
                   │      ╭       ││    0x00007f5491243e78: je     0x00007f5491243e85  ;*if_icmpeq
                   │      │       ││                                                  ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                   │      │       ││                                                  ; - com.google.re2j.Machine::match@322 (line 245)
  0.04%    0.06%   │      │       ││    0x00007f5491243e7a: or     $0x10,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                   │      │       ││                                                  ; - com.google.re2j.Machine::match@322 (line 245)
  0.01%    0.01%   │      │       ││    0x00007f5491243e7e: mov    %r8d,0x38(%rsp)
  0.07%    0.10%   │      │╭      ││    0x00007f5491243e83: jmp    0x00007f5491243e8e
  0.14%    0.19%   │      ↘│      ││    0x00007f5491243e85: or     $0x20,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                   │       │      ││                                                  ; - com.google.re2j.Machine::match@322 (line 245)
  0.22%    0.16%   │       │      ││    0x00007f5491243e89: mov    %r8d,0x38(%rsp)    ;*iload_2
                   │       │      ││                                                  ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   │       │      ││                                                  ; - com.google.re2j.Machine::match@322 (line 245)
  0.22%    0.27%   │       ↘      ││    0x00007f5491243e8e: mov    0x50(%rsp),%r11
  0.09%    0.09%   │              ││    0x00007f5491243e93: mov    0x10(%r11),%r8d    ;*getfield end
                   │              ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::endPos@1 (line 221)
                   │              ││                                                  ; - com.google.re2j.Machine::match@344 (line 246)
  0.47%    0.43%   │              ││    0x00007f5491243e97: mov    0x64(%rsp),%ecx
  0.22%    0.18%   │              ││    0x00007f5491243e9b: cmp    %r8d,%ecx
                   │        ╭     ││    0x00007f5491243e9e: je     0x00007f549124417b  ;*if_icmpne
                   │        │     ││                                                  ; - com.google.re2j.Machine::match@347 (line 246)
  0.34%    0.25%   │        │     ││    0x00007f5491243ea4: xor    %eax,%eax          ;*invokespecial step
                   │        │     ││                                                  ; - com.google.re2j.Machine::match@355 (line 246)
  0.08%    0.10%   │        │     ││↗   0x00007f5491243ea6: mov    %rax,-0x8(%rsp)
  0.13%    0.12%   │        │     │││   0x00007f5491243eab: mov    0x64(%rsp),%eax
  0.18%    0.21%   │        │     │││   0x00007f5491243eaf: mov    %eax,0x58(%rsp)
  0.23%    0.12%   │        │     │││   0x00007f5491243eb3: mov    -0x8(%rsp),%rax    ;*invokevirtual endPos
                   │        │     │││                                                 ; - com.google.re2j.Machine::match@344 (line 246)
  0.20%    0.18%   │        │     │││   0x00007f5491243eb8: add    0x28(%rsp),%ecx    ;*iadd
                   │        │     │││                                                 ; - com.google.re2j.Machine::match@336 (line 246)
  0.08%    0.13%   │        │     │││   0x00007f5491243ebc: mov    %ecx,0x64(%rsp)
  0.25%    0.17%   │        │     │││   0x00007f5491243ec0: mov    0x40(%rsp),%rsi
  0.15%    0.16%   │        │     │││   0x00007f5491243ec5: mov    0x18(%rsp),%rdx
  0.19%    0.06%   │        │     │││   0x00007f5491243eca: mov    0x20(%rsp),%rcx
  0.14%    0.10%   │        │     │││   0x00007f5491243ecf: mov    0x58(%rsp),%r8d
  0.23%    0.14%   │        │     │││   0x00007f5491243ed4: mov    0x64(%rsp),%r9d
  0.82%    0.28%   │        │     │││   0x00007f5491243ed9: mov    %r10d,%edi
  0.09%    0.04%   │        │     │││   0x00007f5491243edc: mov    0x38(%rsp),%r10d
  0.11%    0.08%   │        │     │││   0x00007f5491243ee1: mov    %r10d,(%rsp)
  0.23%    0.19%   │        │     │││   0x00007f5491243ee5: mov    0x3c(%rsp),%r11d
  0.20%    0.21%   │        │     │││   0x00007f5491243eea: mov    %r11d,0x8(%rsp)
  0.05%    0.07%   │        │     │││   0x00007f5491243eef: mov    %eax,0x10(%rsp)
  0.12%    0.09%   │        │     │││   0x00007f5491243ef3: callq  0x00007f5491046020  ; OopMap{[24]=Oop [32]=Oop [48]=NarrowOop [64]=Oop [80]=Oop off=888}
                   │        │     │││                                                 ;*invokespecial step
                   │        │     │││                                                 ; - com.google.re2j.Machine::match@355 (line 246)
                   │        │     │││                                                 ;   {optimized virtual_call}
  0.36%    0.44%   │        │     │││   0x00007f5491243ef8: mov    0x40(%rsp),%r10
  0.23%    0.25%   │        │     │││   0x00007f5491243efd: movzbl 0x11(%r10),%r8d    ;*getfield captures
                   │        │     │││                                                 ; - com.google.re2j.Machine::match@367 (line 250)
  0.00%    0.00%   │        │     │││   0x00007f5491243f02: movzbl 0x10(%r10),%eax    ;*getfield matched
                   │        │     │││                                                 ; - com.google.re2j.Machine::match@374 (line 250)
  0.41%    0.39%   │        │     │││   0x00007f5491243f07: mov    0x28(%rsp),%r10d
  0.25%    0.29%   │        │     │││   0x00007f5491243f0c: test   %r10d,%r10d
                   │        │╭    │││   0x00007f5491243f0f: je     0x00007f5491244195  ;*ifne
                   │        ││    │││                                                 ; - com.google.re2j.Machine::match@360 (line 247)
  0.00%            │        ││    │││   0x00007f5491243f15: test   %r8d,%r8d
                   │        ││    │││   0x00007f5491243f18: jne    0x00007f5491244851  ;*ifne
                   │        ││    │││                                                 ; - com.google.re2j.Machine::match@370 (line 250)
                   │        ││    │││   0x00007f5491243f1e: test   %eax,%eax
                   │        ││    │││   0x00007f5491243f20: jne    0x00007f5491244ab9  ;*ifeq
                   │        ││    │││                                                 ; - com.google.re2j.Machine::match@377 (line 250)
  0.28%    0.38%   │        ││    │││   0x00007f5491243f26: mov    0x50(%rsp),%r10
  0.24%    0.25%   │        ││    │││   0x00007f5491243f2b: mov    0x10(%r10),%r10d   ;*getfield end
                   │        ││    │││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                   │        ││    │││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.00%    0.01%   │        ││    │││   0x00007f5491243f2f: mov    %r10d,0x68(%rsp)
  0.01%    0.00%   │        ││    │││   0x00007f5491243f34: mov    0x50(%rsp),%r10
  0.33%    0.47%   │        ││    │││   0x00007f5491243f39: mov    0xc(%r10),%r13d    ;*getfield start
                   │        ││    │││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                   │        ││    │││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.23%    0.21%   │        ││    │││   0x00007f5491243f3d: mov    0x14(%r10),%r14d   ;*getfield str
                   │        ││    │││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                   │        ││    │││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.00%    0.00%   │        ││    │││   0x00007f5491243f41: mov    0x2c(%rsp),%r11d
  0.00%    0.01%   │        ││    │││   0x00007f5491243f46: cmp    $0xffffffff,%r11d
                   │        ││╭   │││   0x00007f5491243f4a: je     0x00007f5491244185  ;*if_icmpeq
                   │        │││   │││                                                 ; - com.google.re2j.Machine::match@399 (line 258)
  0.35%    0.45%   │        │││   │││   0x00007f5491243f50: mov    0x34(%rsp),%ecx
  0.23%    0.24%   │        │││   │││   0x00007f5491243f54: add    0x64(%rsp),%ecx
                   │        │││   │││   0x00007f5491243f58: add    %r13d,%ecx         ;*iadd
                   │        │││   │││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                   │        │││   │││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
                   │        │││   │││   0x00007f5491243f5b: cmp    0x68(%rsp),%ecx
                   │        │││   │││   0x00007f5491243f5f: jge    0x00007f54912441d5  ;*if_icmpge
                   │        │││   │││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                   │        │││   │││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.47%    0.55%   │        │││   │││   0x00007f5491243f65: mov    0x8(%r12,%r14,8),%r11d  ; implicit exception: dispatches to 0x00007f5491245b95
  0.22%    0.27%   │        │││   │││   0x00007f5491243f6a: cmp    $0xf80002da,%r11d  ;   {metadata(&apos;java/lang/String&apos;)}
                   │        │││   │││   0x00007f5491243f71: jne    0x00007f5491244745
  0.01%    0.00%   │        │││   │││   0x00007f5491243f77: lea    (%r12,%r14,8),%rbx  ;*invokeinterface charAt
                   │        │││   │││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │        │││   │││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │        │││   │││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
                   │        │││   │││   0x00007f5491243f7b: test   %ecx,%ecx
                   │        │││   │││   0x00007f5491243f7d: jl     0x00007f54912448a5  ;*iflt
                   │        │││   │││                                                 ; - java.lang.String::charAt@1 (line 657)
                   │        │││   │││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │        │││   │││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │        │││   │││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.35%    0.39%   │        │││   │││   0x00007f5491243f83: mov    0xc(%rbx),%r9d     ;*getfield value
                   │        │││   │││                                                 ; - java.lang.String::charAt@6 (line 657)
                   │        │││   │││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │        │││   │││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │        │││   │││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.17%    0.25%   │        │││   │││   0x00007f5491243f87: mov    0xc(%r12,%r9,8),%ebp  ;*arraylength
                   │        │││   │││                                                 ; - java.lang.String::charAt@9 (line 657)
                   │        │││   │││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │        │││   │││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │        │││   │││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
                   │        │││   │││                                                 ; implicit exception: dispatches to 0x00007f5491245ba9
  0.98%    1.10%   │        │││   │││   0x00007f5491243f8c: cmp    %ebp,%ecx
                   │        │││   │││   0x00007f5491243f8e: jge    0x00007f5491244b0d  ;*if_icmplt
                   │        │││   │││                                                 ; - java.lang.String::charAt@10 (line 657)
                   │        │││   │││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │        │││   │││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │        │││   │││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.46%    0.43%   │        │││   │││   0x00007f5491243f94: cmp    %ebp,%ecx
                   │        │││   │││   0x00007f5491243f96: jae    0x00007f54912446c5
  0.24%    0.10%   │        │││   │││   0x00007f5491243f9c: lea    (%r12,%r9,8),%r10
  0.04%    0.02%   │        │││   │││   0x00007f5491243fa0: movzwl 0x10(%r10,%rcx,2),%r9d  ;*caload
                   │        │││   │││                                                 ; - java.lang.String::charAt@27 (line 660)
                   │        │││   │││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │        │││   │││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │        │││   │││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.05%    0.05%   │        │││   │││   0x00007f5491243fa6: cmp    $0xd800,%r9d
                   │        │││   │││   0x00007f5491243fad: jge    0x00007f5491244b85  ;*if_icmplt
                   │        │││   │││                                                 ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   │        │││   │││                                                 ; - java.lang.Character::codePointAt@9 (line 4867)
                   │        │││   │││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │        │││   │││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.41%    0.41%   │        │││   │││   0x00007f5491243fb3: shl    $0x3,%r9d          ;*ishl
                   │        │││   │││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                   │        │││   │││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.29%    0.20%   │        │││   │││   0x00007f5491243fb7: mov    %r9d,%r11d
  0.01%    0.01%   │        │││   │││   0x00007f5491243fba: or     $0x1,%r11d
  0.49%    0.49%   │        │││   │││   0x00007f5491243fbe: and    $0x7,%r9d
  0.18%    0.23%   │        │││   │││   0x00007f5491243fc2: sar    $0x3,%r11d         ;*ishr
                   │        │││   │││                                                 ; - com.google.re2j.Machine::match@415 (line 260)
  0.34%    0.43%   │        │││   │││   0x00007f5491243fc6: or     $0x1,%r9d          ; OopMap{r14=NarrowOop [24]=Oop [32]=Oop [64]=Oop [80]=Oop off=1098}
                   │        │││   │││                                                 ;*goto
                   │        │││   │││                                                 ; - com.google.re2j.Machine::match@437 (line 266)
  0.07%    0.16%   │        │││   │││↗  0x00007f5491243fca: test   %eax,0x16ba2030(%rip)        # 0x00007f54a7de6000
                   │        │││   ││││                                                ;*goto
                   │        │││   ││││                                                ; - com.google.re2j.Machine::match@437 (line 266)
                   │        │││   ││││                                                ;   {poll}
  0.01%            │        │││   ││││  0x00007f5491243fd0: mov    0x40(%rsp),%r10
  0.07%    0.10%   │        │││   ││││  0x00007f5491243fd5: mov    0x28(%r10),%edi    ;*getfield matchcap
                   │        │││   ││││                                                ; - com.google.re2j.Machine::match@307 (line 243)
  0.39%    0.52%   │        │││   ││││  0x00007f5491243fd9: mov    0x14(%r10),%esi    ;*getfield re2
                   │        │││   ││││                                                ; - com.google.re2j.Machine::match@169 (line 220)
  0.12%    0.14%   │        │││   ││││  0x00007f5491243fdd: mov    0x20(%rsp),%r10
                   │        │││   ││││  0x00007f5491243fe2: shr    $0x3,%r10
  0.07%    0.12%   │        │││   ││││  0x00007f5491243fe6: mov    %r10d,0x30(%rsp)
  0.42%    0.44%   │        │││   ││││  0x00007f5491243feb: mov    0x2c(%rsp),%r10d
  0.12%    0.10%   │        │││   ││││  0x00007f5491243ff0: mov    %r11d,0x2c(%rsp)
  0.00%            │        │││   ││││  0x00007f5491243ff5: mov    0x18(%rsp),%r11
  0.10%    0.13%   │        │││   ││││  0x00007f5491243ffa: mov    %r11,0x20(%rsp)
  0.41%    0.55%   │        │││   ││││  0x00007f5491243fff: mov    0x34(%rsp),%ecx
  0.11%    0.11%   │        │││   ││││  0x00007f5491244003: mov    %ecx,0x28(%rsp)
  0.01%            │        │││   ││││  0x00007f5491244007: mov    %r9d,0x34(%rsp)
  0.09%    0.10%   ↘        │││   ││││  0x00007f549124400c: mov    0x30(%rsp),%r9d
  0.41%    0.60%            │││   ││││  0x00007f5491244011: movzbl 0x18(%r12,%r9,8),%r9d  ; implicit exception: dispatches to 0x00007f5491245b62
  0.10%    0.16%            │││   ││││  0x00007f5491244017: mov    0x30(%rsp),%r11d
           0.00%            │││   ││││  0x00007f549124401c: shl    $0x3,%r11          ;*aload
                            │││   ││││                                                ; - com.google.re2j.Machine::match@136 (line 211)
  0.08%    0.06%            │││   ││││  0x00007f5491244020: mov    %r11,0x18(%rsp)
  0.36%    0.47%            │││   ││││  0x00007f5491244025: test   %r9d,%r9d
                            │││╭  ││││  0x00007f5491244028: je     0x00007f549124406c  ;*ifeq
                            ││││  ││││                                                ; - com.google.re2j.Machine::match@141 (line 211)
  0.08%    0.13%            ││││  ││││  0x00007f549124402a: mov    0x4c(%rsp),%r9d
                            ││││  ││││  0x00007f549124402f: test   %r9d,%r9d
                            ││││  ││││  0x00007f5491244032: jne    0x00007f5491244d2d  ;*ifeq
                            ││││  ││││                                                ; - com.google.re2j.Machine::match@148 (line 212)
  0.04%    0.08%            ││││  ││││  0x00007f5491244038: test   %eax,%eax
                            ││││  ││││  0x00007f549124403a: jne    0x00007f5491244d89  ;*ifeq
                            ││││  ││││                                                ; - com.google.re2j.Machine::match@162 (line 216)
  0.14%    0.13%            ││││  ││││  0x00007f5491244040: mov    0x24(%r12,%rsi,8),%r11d  ;*getfield prefix
                            ││││  ││││                                                ; - com.google.re2j.Machine::match@172 (line 220)
                            ││││  ││││                                                ; implicit exception: dispatches to 0x00007f5491245bcd
  0.07%    0.11%            ││││  ││││  0x00007f5491244045: mov    %r11d,%ecx
                            ││││  ││││  0x00007f5491244048: mov    0xc(%r12,%r11,8),%r11d  ;*getfield value
                            ││││  ││││                                                ; - java.lang.String::isEmpty@1 (line 635)
                            ││││  ││││                                                ; - com.google.re2j.Machine::match@175 (line 220)
                            ││││  ││││                                                ; implicit exception: dispatches to 0x00007f5491245bdd
  0.03%    0.07%            ││││  ││││  0x00007f549124404d: vmovd  %r11d,%xmm1
  0.14%    0.13%            ││││  ││││  0x00007f5491244052: mov    0xc(%r12,%r11,8),%r11d  ;*arraylength
                            ││││  ││││                                                ; - java.lang.String::isEmpty@4 (line 635)
                            ││││  ││││                                                ; - com.google.re2j.Machine::match@175 (line 220)
                            ││││  ││││                                                ; implicit exception: dispatches to 0x00007f5491245bed
  0.13%    0.19%            ││││  ││││  0x00007f5491244057: mov    %r11d,0x58(%rsp)
  0.08%    0.13%            ││││  ││││  0x00007f549124405c: test   %r11d,%r11d
                            ││││  ││││  0x00007f549124405f: jne    0x00007f549124429f  ;*ifne
                            ││││  ││││                                                ; - com.google.re2j.Machine::match@178 (line 220)
  0.02%    0.06%            ││││  ││││  0x00007f5491244065: mov    %r10d,0x58(%rsp)
  0.04%    0.06%            ││││╭ ││││  0x00007f549124406a: jmp    0x00007f5491244071
  0.01%    0.01%            │││↘│ ││││  0x00007f549124406c: mov    %r10d,0x58(%rsp)   ;*aload_0
                            │││ │ ││││                                                ; - com.google.re2j.Machine::match@267 (line 237)
  0.05%    0.09%            │││ ↘ ││││  0x00007f5491244071: test   %eax,%eax
                            │││   ││││  0x00007f5491244073: jne    0x00007f54912447ad  ;*ifne
                            │││   ││││                                                ; - com.google.re2j.Machine::match@271 (line 237)
  0.17%    0.18%            │││   ││││  0x00007f5491244079: mov    0x64(%rsp),%r10d
  0.34%    0.33%            │││   ││││  0x00007f549124407e: test   %r10d,%r10d
                            │││  ╭││││  0x00007f5491244081: je     0x00007f5491244091  ;*ifeq
                            │││  │││││                                                ; - com.google.re2j.Machine::match@275 (line 237)
  0.12%    0.06%            │││  │││││  0x00007f5491244083: mov    0x3c(%rsp),%r11d
  0.04%    0.09%            │││  │││││  0x00007f5491244088: test   %r11d,%r11d
                            │││  │││││  0x00007f549124408b: jne    0x00007f5491244801  ;*aload_0
                            │││  │││││                                                ; - com.google.re2j.Machine::match@282 (line 240)
  0.16%    0.12%            │││  ↘││││  0x00007f5491244091: test   %r8d,%r8d
                            │││   ││││  0x00007f5491244094: jne    0x00007f5491244991  ;*ifeq
                            │││   ││││                                                ; - com.google.re2j.Machine::match@286 (line 240)
  0.29%    0.35%            │││   ││││  0x00007f549124409a: mov    0x40(%rsp),%r10
  0.13%    0.12%            │││   ││││  0x00007f549124409f: mov    0x18(%r10),%r11d   ;*getfield prog
                            │││   ││││                                                ; - com.google.re2j.Machine::match@297 (line 243)
  0.06%    0.07%            │││   ││││  0x00007f54912440a3: mov    0x1c(%r12,%r11,8),%ebp  ;*getfield startInst
                            │││   ││││                                                ; - com.google.re2j.Machine::match@300 (line 243)
                            │││   ││││                                                ; implicit exception: dispatches to 0x00007f5491245b71
  0.15%    0.17%            │││   ││││  0x00007f54912440a8: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f5491245b81
  1.02%    0.96%            │││   ││││  0x00007f54912440ad: lea    (%r12,%rbp,8),%r10
  0.03%    0.01%            │││   ││││  0x00007f54912440b1: cmp    $0xf8019a09,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$Alt5Inst&apos;)}
                            │││   ╰│││  0x00007f54912440b8: je     0x00007f5491243dd8
  0.18%    0.34%            │││    │││  0x00007f54912440be: cmp    $0xf8019909,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                            │││    │││  0x00007f54912440c5: jne    0x00007f54912449e5  ;*invokevirtual add
                            │││    │││                                                ; - com.google.re2j.Machine::match@314 (line 243)
  0.02%    0.02%            │││    │││  0x00007f54912440cb: mov    0x18(%r10),%ecx    ;*getfield pc
                            │││    │││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                            │││    │││                                                ; - com.google.re2j.Machine::match@314 (line 243)
  0.05%    0.08%            │││    │││  0x00007f54912440cf: cmp    $0x40,%ecx
                            │││    │││  0x00007f54912440d2: jg     0x00007f5491244bf1  ;*if_icmpgt
                            │││    │││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                            │││    │││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                            │││    │││                                                ; - com.google.re2j.Machine::match@314 (line 243)
  0.26%    0.30%            │││    │││  0x00007f54912440d8: mov    %r10,%r9
  0.01%                     │││    │││  0x00007f54912440db: mov    $0x1,%ebx
  0.01%    0.00%            │││    │││  0x00007f54912440e0: shl    %cl,%rbx           ;*lshl
                            │││    │││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                            │││    │││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                            │││    │││                                                ; - com.google.re2j.Machine::match@314 (line 243)
  0.52%    0.46%            │││    │││  0x00007f54912440e3: mov    0x30(%rsp),%r11d
                            │││    │││  0x00007f54912440e8: mov    0x10(%r12,%r11,8),%r10  ;*getfield pcsl
                            │││    │││                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                            │││    │││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                            │││    │││                                                ; - com.google.re2j.Machine::match@314 (line 243)
  0.02%                     │││    │││  0x00007f54912440ed: mov    %r10,%r11
  0.01%                     │││    │││  0x00007f54912440f0: and    %rbx,%r11          ;*land
                            │││    │││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                            │││    │││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                            │││    │││                                                ; - com.google.re2j.Machine::match@314 (line 243)
  0.27%    0.23%            │││    │││  0x00007f54912440f3: test   %r11,%r11
                            │││    │││  0x00007f54912440f6: jne    0x00007f5491244c5d  ;*ifeq
                            │││    │││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                            │││    │││                                                ; - com.google.re2j.Machine::match@314 (line 243)
                            │││    │││  0x00007f54912440fc: cmp    $0x40,%ecx
                            │││    │││  0x00007f54912440ff: jge    0x00007f5491244cc1  ;*if_icmpge
                            │││    │││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                            │││    │││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                            │││    │││                                                ; - com.google.re2j.Machine::match@314 (line 243)
  0.01%                     │││    │││  0x00007f5491244105: mov    0x30(%rsp),%r11d
                            │││    │││  0x00007f549124410a: mov    %r12b,0x18(%r12,%r11,8)  ;*putfield empty
                            │││    │││                                                ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                            │││    │││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                            │││    │││                                                ; - com.google.re2j.Machine::match@314 (line 243)
  0.22%    0.22%            │││    │││  0x00007f549124410f: mov    0x20(%r12,%r11,8),%r8d  ;*getfield denseThreadsInstructions
                            │││    │││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                            │││    │││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                            │││    │││                                                ; - com.google.re2j.Machine::match@314 (line 243)
                            │││    │││  0x00007f5491244114: mov    0xc(%r12,%r11,8),%ebp  ;*getfield size
                            │││    │││                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                            │││    │││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                            │││    │││                                                ; - com.google.re2j.Machine::match@314 (line 243)
  0.01%                     │││    │││  0x00007f5491244119: or     %r10,%rbx
  0.00%                     │││    │││  0x00007f549124411c: mov    %rbx,0x10(%r12,%r11,8)  ;*putfield pcsl
                            │││    │││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                            │││    │││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                            │││    │││                                                ; - com.google.re2j.Machine::match@314 (line 243)
  0.38%    0.29%            │││    │││  0x00007f5491244121: mov    %ebp,%r11d
                            │││    │││  0x00007f5491244124: inc    %r11d
  0.02%    0.00%            │││    │││  0x00007f5491244127: mov    0x30(%rsp),%r10d
  0.00%                     │││    │││  0x00007f549124412c: mov    %r11d,0xc(%r12,%r10,8)  ;*putfield size
                            │││    │││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                            │││    │││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                            │││    │││                                                ; - com.google.re2j.Machine::match@314 (line 243)
  0.25%    0.25%            │││    │││  0x00007f5491244131: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x00007f5491245bb9
  0.00%                     │││    │││  0x00007f5491244136: cmp    %r11d,%ebp
                            │││    │││  0x00007f5491244139: jae    0x00007f5491244921
  0.02%    0.02%            │││    │││  0x00007f549124413f: mov    0x8(%r12,%r8,8),%r11d
  0.01%                     │││    │││  0x00007f5491244144: cmp    $0xf8019807,%r11d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                            │││    │││  0x00007f549124414b: jne    0x00007f5491244a49
  0.31%    0.34%            │││    │││  0x00007f5491244151: mov    %r9,%r11
                            │││    │││  0x00007f5491244154: shr    $0x3,%r11          ;*aastore
                            │││    │││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                            │││    │││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                            │││    │││                                                ; - com.google.re2j.Machine::match@314 (line 243)
  0.02%                     │││    │││  0x00007f5491244158: lea    (%r12,%r8,8),%r10  ;*getfield denseThreadsInstructions
                            │││    │││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                            │││    │││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                            │││    │││                                                ; - com.google.re2j.Machine::match@314 (line 243)
                            │││    │││  0x00007f549124415c: lea    0x10(%r10,%rbp,4),%r10
  0.23%    0.27%            │││    │││  0x00007f5491244161: mov    %r11d,(%r10)
  0.00%    0.00%            │││    │││  0x00007f5491244164: shr    $0x9,%r10
  0.02%    0.01%            │││    │││  0x00007f5491244168: movabs $0x7f548d1ff000,%r11
                            │││    │││  0x00007f5491244172: mov    %r12b,(%r11,%r10,1)  ;*aastore
                            │││    │││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                            │││    │││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                            │││    │││                                                ; - com.google.re2j.Machine::match@314 (line 243)
  0.38%    0.51%            │││    ╰││  0x00007f5491244176: jmpq   0x00007f5491243e00
  0.00%                     ↘││     ││  0x00007f549124417b: mov    $0x1,%eax
  0.00%                      ││     ╰│  0x00007f5491244180: jmpq   0x00007f5491243ea6
  0.00%    0.01%             │↘      │  0x00007f5491244185: mov    0x34(%rsp),%r9d
  0.01%                      │       │  0x00007f549124418a: mov    $0xffffffff,%r11d
                             │       ╰  0x00007f5491244190: jmpq   0x00007f5491243fca
                             ↘          0x00007f5491244195: test   %r8d,%r8d
                                        0x00007f5491244198: jne    0x00007f549124448d  ;*getfield matched
                                                                                      ; - com.google.re2j.Machine::match@447 (line 268)
                                        0x00007f549124419e: mov    0x20(%rsp),%r11
  0.00%    0.00%                        0x00007f54912441a3: movzbl 0x18(%r11),%r10d   ; implicit exception: dispatches to 0x00007f5491245c55
           0.01%                        0x00007f54912441a8: test   %r10d,%r10d
                                        0x00007f54912441ab: jne    0x00007f54912441c6  ;*ifeq
                                                                                      ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                                                                                      ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                                                                                      ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                                                                                      ; - com.google.re2j.Machine::match@443 (line 267)
                                        0x00007f54912441ad: movb   $0x1,0x18(%r11)    ;*putfield empty
                                                                                      ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                                                                                      ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                                                                                      ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                                                                                      ; - com.google.re2j.Machine::match@443 (line 267)
....................................................................................................
 26.73%   28.12%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 496 (350 bytes) 

                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                    ; - com.google.re2j.Machine::step@202 (line 313)
                                                                    ;   {optimized virtual_call}
                      0x00007f5491220108: test   %rax,%rax
                      0x00007f549122010b: jne    0x00007f5491220db1  ;*ifnull
                                                                    ; - com.google.re2j.Machine::step@209 (line 315)
                      0x00007f5491220111: mov    0x10(%rsp),%r11
                  ╭   0x00007f5491220116: jmp    0x00007f5491220195
  0.05%    0.10%  │   0x00007f5491220118: cmp    $0xf8019909,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │   0x00007f549122011f: jne    0x00007f54912209a5  ;*invokevirtual add
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 280)
  0.08%    0.13%  │   0x00007f5491220125: mov    0x18(%r10),%ecx    ;*getfield pc
                  │                                                 ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 280)
  0.12%    0.20%  │   0x00007f5491220129: cmp    $0x40,%ecx
                  │   0x00007f549122012c: jg     0x00007f5491220d35  ;*if_icmpgt
                  │                                                 ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.03%  │   0x00007f5491220132: mov    $0x1,%r11d
  0.04%    0.03%  │   0x00007f5491220138: shl    %cl,%r11           ;*lshl
                  │                                                 ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 280)
  0.21%    0.19%  │   0x00007f549122013b: mov    %rbx,%rdi
  0.03%    0.04%  │   0x00007f549122013e: and    %r11,%rdi          ;*land
                  │                                                 ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 280)
  0.07%    0.13%  │   0x00007f5491220141: test   %rdi,%rdi
                  │   0x00007f5491220144: jne    0x00007f5491220396  ;*ifeq
                  │                                                 ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 280)
  0.14%    0.18%  │   0x00007f549122014a: xor    %ebp,%ebp          ;*ireturn
                  │                                                 ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  │                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.04%  │   0x00007f549122014c: test   %rdi,%rdi
                  │   0x00007f549122014f: jne    0x00007f5491220d61  ;*ifeq
                  │                                                 ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 280)
  0.09%    0.06%  │   0x00007f5491220155: cmp    $0x40,%ecx
                  │   0x00007f5491220158: jge    0x00007f5491220d85  ;*if_icmpge
                  │                                                 ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 280)
  0.06%    0.14%  │   0x00007f549122015e: or     %r11,%rbx
  0.14%    0.18%  │   0x00007f5491220161: mov    %r13,%r11
  0.04%    0.07%  │   0x00007f5491220164: mov    %rbx,0x10(%r11)    ;*putfield pcsl
                  │                                                 ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.05%  │   0x00007f5491220168: add    $0x18,%r8
  0.09%    0.07%  │   0x00007f549122016c: shr    $0x3,%r10
  0.15%    0.14%  │   0x00007f5491220170: mov    %r10d,(%r8)        ;*aastore
                  │                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.04%  │   0x00007f5491220173: mov    %r8,%r10
  0.05%    0.07%  │   0x00007f5491220176: vmovd  %xmm1,%r8d
  0.04%    0.11%  │   0x00007f549122017b: add    $0x3,%r8d
  0.14%    0.11%  │   0x00007f549122017f: mov    %r8d,0xc(%r11)     ;*putfield size
                  │                                                 ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.00%  │   0x00007f5491220183: shr    $0x9,%r10
  0.05%    0.03%  │   0x00007f5491220187: movabs $0x7f548d1ff000,%r8
  0.08%    0.06%  │   0x00007f5491220191: mov    %r12b,(%r8,%r10,1)  ;*synchronization entry
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 280)
  0.13%    0.12%  ↘   0x00007f5491220195: mov    0x30(%rsp),%rdx
  0.01%    0.04%      0x00007f549122019a: mov    0x9c(%rsp),%r13d
  0.05%    0.02%      0x00007f54912201a2: mov    0x94(%rsp),%r10d   ;*synchronization entry
                                                                    ; - com.google.re2j.Machine::step@-1 (line 280)
  0.08%    0.11%      0x00007f54912201aa: mov    0x98(%rsp),%r8d
  0.11%    0.17%      0x00007f54912201b2: mov    0xa0(%rsp),%ecx    ;*aload
                                                                    ; - com.google.re2j.Machine::step@207 (line 315)
  0.48%    0.42%      0x00007f54912201b9: inc    %r10d              ;*iinc
                                                                    ; - com.google.re2j.Machine::step@218 (line 282)
  1.22%    1.25%      0x00007f54912201bc: cmp    %r13d,%r10d
                      0x00007f54912201bf: jge    0x00007f54912202cd
  0.34%    0.36%      0x00007f54912201c5: mov    %r8d,0x98(%rsp)
  0.66%    0.65%      0x00007f54912201cd: mov    %ecx,0xa0(%rsp)    ;*aload_0
                                                                    ; - com.google.re2j.Machine::step@25 (line 285)
  0.45%    0.56%      0x00007f54912201d4: mov    0x8(%rsp),%r8
  1.12%    0.97%      0x00007f54912201d9: movzbl 0x11(%r8),%r8d     ;*getfield captures
                                                                    ; - com.google.re2j.Machine::step@26 (line 285)
  2.85%    2.80%      0x00007f54912201de: test   %r8d,%r8d
                      0x00007f54912201e1: jne    0x00007f54912203dd  ;*ifne
                                                                    ; - com.google.re2j.Machine::step@29 (line 285)
  1.23%    1.40%      0x00007f54912201e7: mov    0x20(%rdx),%ebp    ;*getfield denseThreadsInstructions
                                                                    ; - com.google.re2j.Machine::step@82 (line 295)
  0.43%    0.43%      0x00007f54912201ea: mov    0xc(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007f5491220dfd
  0.78%    0.69%      0x00007f54912201ef: cmp    %r8d,%r10d
                      0x00007f54912201f2: jae    0x00007f54912203b4
  0.43%    0.51%      0x00007f54912201f8: lea    (%r12,%rbp,8),%r8
  1.41%    1.33%      0x00007f54912201fc: mov    0x10(%r8,%r10,4),%r8d  ;*aaload
                                                                    ; - com.google.re2j.Machine::step@87 (line 295)
  0.45%    0.54%      0x00007f5491220201: mov    0xc(%r12,%r8,8),%ebp  ;*getfield op
                                                                    ; - com.google.re2j.Machine::step@92 (line 297)
                                                                    ; implicit exception: dispatches to 0x00007f5491220e11
  2.25%    2.18%      0x00007f5491220206: cmp    $0x6,%ebp
                      0x00007f5491220209: je     0x00007f5491220313  ;*if_icmpne
                                                                    ; - com.google.re2j.Machine::step@97 (line 297)
  1.07%    1.31%      0x00007f549122020f: cmp    $0xa,%ebp
                      0x00007f5491220212: je     0x00007f549121fd15  ;*if_icmpne
                                                                    ; - com.google.re2j.Inst::matchRune@6 (line 90)
                                                                    ; - com.google.re2j.Machine::step@181 (line 312)
  1.02%    1.00%      0x00007f5491220218: cmp    $0xb,%ebp
                      0x00007f549122021b: je     0x00007f5491220425  ;*if_icmpne
                                                                    ; - com.google.re2j.Inst::matchRune@17 (line 94)
                                                                    ; - com.google.re2j.Machine::step@181 (line 312)
  1.35%    1.60%      0x00007f5491220221: mov    0x1c(%r12,%r8,8),%r9d  ;*getfield f0
                                                                    ; - com.google.re2j.Inst::matchRune@42 (line 99)
                                                                    ; - com.google.re2j.Machine::step@181 (line 312)
  0.37%    0.42%      0x00007f5491220226: cmp    $0x9,%ebp
                   ╭  0x00007f5491220229: jne    0x00007f549122023e  ;*if_icmpne
                   │                                                ; - com.google.re2j.Inst::matchRune@38 (line 98)
                   │                                                ; - com.google.re2j.Machine::step@181 (line 312)
  0.41%    0.45%   │  0x00007f549122022b: cmp    0x20(%rsp),%r9d
                   │  0x00007f5491220230: je     0x00007f5491220308  ;*if_icmpne
                   │                                                ; - com.google.re2j.Inst::matchRune@46 (line 99)
                   │                                                ; - com.google.re2j.Machine::step@181 (line 312)
  0.24%    0.25%   │  0x00007f5491220236: xor    %r9d,%r9d
  0.04%    0.02%   │  0x00007f5491220239: jmpq   0x00007f549121fc73
  0.53%    0.69%   ↘  0x00007f549122023e: cmp    $0xc,%ebp
                      0x00007f5491220241: jne    0x00007f5491220471  ;*if_icmpne
                                                                    ; - com.google.re2j.Inst::matchRune@61 (line 102)
                                                                    ; - com.google.re2j.Machine::step@181 (line 312)
  1.12%    1.40%      0x00007f5491220247: cmp    0x20(%rsp),%r9d
                      0x00007f549122024c: je     0x00007f54912202fd  ;*if_icmpeq
                                                                    ; - com.google.re2j.Inst::matchRune@69 (line 103)
                                                                    ; - com.google.re2j.Machine::step@181 (line 312)
  0.78%    0.71%      0x00007f5491220252: mov    0x20(%r12,%r8,8),%r9d  ;*getfield f1
                                                                    ; - com.google.re2j.Inst::matchRune@73 (line 103)
                                                                    ; - com.google.re2j.Machine::step@181 (line 312)
  0.22%    0.36%      0x00007f5491220257: cmp    0x20(%rsp),%r9d
                      0x00007f549122025c: je     0x00007f54912202fd  ;*if_icmpeq
                                                                    ; - com.google.re2j.Inst::matchRune@77 (line 103)
                                                                    ; - com.google.re2j.Machine::step@181 (line 312)
  1.04%    1.26%      0x00007f5491220262: mov    0x24(%r12,%r8,8),%ebp  ;*getfield f2
                                                                    ; - com.google.re2j.Inst::matchRune@81 (line 103)
                                                                    ; - com.google.re2j.Machine::step@181 (line 312)
  0.50%    0.44%      0x00007f5491220267: cmp    0x20(%rsp),%ebp
                      0x00007f549122026b: je     0x00007f54912204bd  ;*if_icmpeq
                                                                    ; - com.google.re2j.Inst::matchRune@85 (line 103)
                                                                    ; - com.google.re2j.Machine::step@181 (line 312)
  1.26%    1.23%      0x00007f5491220271: mov    0x28(%r12,%r8,8),%ebp  ;*getfield f3
                                                                    ; - com.google.re2j.Inst::matchRune@89 (line 103)
                                                                    ; - com.google.re2j.Machine::step@181 (line 312)
  0.13%    0.20%      0x00007f5491220276: cmp    0x20(%rsp),%ebp
                      0x00007f549122027a: jne    0x00007f549121fc70  ;*if_icmpne
                                                                    ; - com.google.re2j.Inst::matchRune@93 (line 103)
                                                                    ; - com.google.re2j.Machine::step@181 (line 312)
                      0x00007f5491220280: mov    $0xffffff65,%esi
                      0x00007f5491220285: mov    %r10d,0x94(%rsp)
                      0x00007f549122028d: mov    %rdx,0x10(%rsp)
                      0x00007f5491220292: mov    %r11,0x18(%rsp)
                      0x00007f5491220297: mov    0x28(%rsp),%r10d
....................................................................................................
 26.41%   28.11%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Inst$Alt5Inst::add, version 507 (893 bytes) 

                            # parm4:    rdi:rdi   = &apos;[I&apos;
                            # parm5:    [sp+0x70]   = &apos;com/google/re2j/Machine&apos;  (sp of caller)
                            0x00007f549121dd00: mov    0x8(%rsi),%r10d
                            0x00007f549121dd04: shl    $0x3,%r10
                            0x00007f549121dd08: cmp    %r10,%rax
                            0x00007f549121dd0b: jne    0x00007f5491045e20  ;   {runtime_call}
                            0x00007f549121dd11: data16 xchg %ax,%ax
                            0x00007f549121dd14: nopl   0x0(%rax,%rax,1)
                            0x00007f549121dd1c: data16 data16 xchg %ax,%ax
                          [Verified Entry Point]
  0.03%    0.02%            0x00007f549121dd20: mov    %eax,-0x14000(%rsp)
  0.32%    0.23%            0x00007f549121dd27: push   %rbp
  0.01%                     0x00007f549121dd28: sub    $0x60,%rsp         ;*synchronization entry
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@-1 (line 260)
  0.31%    0.18%            0x00007f549121dd2c: vmovd  %r9d,%xmm5
  0.01%    0.02%            0x00007f549121dd31: vmovq  %r8,%xmm4
                            0x00007f549121dd36: vmovq  %rsi,%xmm3
  0.01%    0.00%            0x00007f549121dd3b: mov    %ecx,%r13d
  0.29%    0.23%            0x00007f549121dd3e: mov    0x18(%rsi),%ecx    ;*getfield pc
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@2 (line 260)
  0.02%    0.02%            0x00007f549121dd41: mov    0x10(%rdx),%r11    ;*getfield pcsl
                                                                          ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
                                                                          ; implicit exception: dispatches to 0x00007f549121e699
  0.01%    0.01%            0x00007f549121dd45: cmp    $0x40,%ecx
                            0x00007f549121dd48: jg     0x00007f549121e27d  ;*if_icmpgt
                                                                          ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.02%                     0x00007f549121dd4e: mov    $0x1,%esi
  0.24%    0.33%            0x00007f549121dd53: mov    $0x1,%r9d
  0.01%    0.02%            0x00007f549121dd59: shl    %cl,%r9            ;*lshl
                                                                          ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.29%    0.28%            0x00007f549121dd5c: mov    %r11,%r10
  0.04%    0.02%            0x00007f549121dd5f: and    %r9,%r10           ;*land
                                                                          ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.01%    0.01%            0x00007f549121dd62: test   %r10,%r10
                  ╭         0x00007f549121dd65: jne    0x00007f549121e09e  ;*ifeq
                  │                                                       ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                       ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.01%    0.01%  │         0x00007f549121dd6b: xor    %ebp,%ebp          ;*ireturn
                  │                                                       ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  │                                                       ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.28%    0.24%  │   ↗     0x00007f549121dd6d: test   %r10,%r10
                  │   │     0x00007f549121dd70: jne    0x00007f549121e2b1  ;*ifeq
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@8 (line 260)
  0.03%    0.01%  │   │     0x00007f549121dd76: cmp    $0x40,%ecx
                  │   │     0x00007f549121dd79: jge    0x00007f549121e2e1  ;*if_icmpge
                  │   │                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.01%    0.00%  │   │     0x00007f549121dd7f: mov    %r12b,0x18(%rdx)   ;*putfield empty
                  │   │                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.02%    0.03%  │   │     0x00007f549121dd83: vmovq  %xmm3,%r10
  0.29%    0.31%  │   │     0x00007f549121dd88: mov    0x2c(%r10),%ebp    ;*getfield outInst
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@23 (line 265)
  0.03%    0.02%  │   │     0x00007f549121dd8c: or     %r11,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.01%           │   │     0x00007f549121dd8f: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  │   │                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.00%    0.02%  │   │     0x00007f549121dd93: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f549121e6ad
  0.28%    0.32%  │   │     0x00007f549121dd98: cmp    $0xf8019909,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │   │     0x00007f549121dd9f: jne    0x00007f549121e155
  0.04%    0.04%  │   │     0x00007f549121dda5: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.01%           │   │     0x00007f549121dda9: mov    0x18(%r11),%ecx    ;*getfield pc
                  │   │                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.02%    0.03%  │   │     0x00007f549121ddad: cmp    $0x40,%ecx
                  │   │     0x00007f549121ddb0: jg     0x00007f549121e315  ;*if_icmpgt
                  │   │                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │   │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.26%    0.29%  │   │     0x00007f549121ddb6: mov    $0x1,%r10d
  0.04%    0.03%  │   │     0x00007f549121ddbc: shl    %cl,%r10           ;*lshl
                  │   │                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │   │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.45%    0.39%  │   │     0x00007f549121ddbf: mov    %r9,%r8
  0.04%    0.01%  │   │     0x00007f549121ddc2: and    %r10,%r8           ;*land
                  │   │                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │   │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.01%           │   │     0x00007f549121ddc5: test   %r8,%r8
                  │╭  │     0x00007f549121ddc8: jne    0x00007f549121e0a8  ;*ifeq
                  ││  │                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  ││  │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││  │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.27%    0.27%  ││  │     0x00007f549121ddce: xor    %ebp,%ebp          ;*ireturn
                  ││  │                                                   ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  ││  │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││  │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.07%    0.09%  ││  │↗    0x00007f549121ddd0: test   %r8,%r8
                  ││  ││    0x00007f549121ddd3: jne    0x00007f549121e351  ;*ifeq
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.14%    0.14%  ││  ││    0x00007f549121ddd9: cmp    $0x40,%ecx
                  ││  ││    0x00007f549121dddc: jge    0x00007f549121e385  ;*if_icmpge
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.00%    0.00%  ││  ││    0x00007f549121dde2: or     %r10,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.13%    0.11%  ││  ││    0x00007f549121dde5: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.06%    0.10%  ││  ││    0x00007f549121dde9: mov    0x70(%rsp),%rax
  0.13%    0.12%  ││  ││    0x00007f549121ddee: movzbl 0x11(%rax),%ebp    ;*getfield captures
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@24 (line 149)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
                  ││  ││                                                  ; implicit exception: dispatches to 0x00007f549121e6d5
  0.01%    0.00%  ││  ││    0x00007f549121ddf2: test   %ebp,%ebp
                  ││  ││    0x00007f549121ddf4: jne    0x00007f549121e3c5  ;*ifeq
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@27 (line 149)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.09%    0.08%  ││  ││    0x00007f549121ddfa: mov    0xc(%rdx),%ecx     ;*getfield size
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.09%    0.06%  ││  ││    0x00007f549121ddfd: mov    0x20(%rdx),%ebx    ;*getfield denseThreadsInstructions
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.13%    0.14%  ││  ││    0x00007f549121de00: mov    %ecx,%r8d
  0.00%    0.01%  ││  ││    0x00007f549121de03: inc    %r8d               ;*iadd
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.09%    0.08%  ││  ││    0x00007f549121de06: mov    %r8d,0xc(%rdx)     ;*putfield size
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.11%    0.08%  ││  ││    0x00007f549121de0a: mov    0xc(%r12,%rbx,8),%r10d  ; implicit exception: dispatches to 0x00007f549121e6e5
  0.18%    0.10%  ││  ││    0x00007f549121de0f: cmp    %r10d,%ecx
                  ││  ││    0x00007f549121de12: jae    0x00007f549121e0da
  0.01%           ││  ││    0x00007f549121de18: vmovd  %r8d,%xmm2
  0.10%    0.13%  ││  ││    0x00007f549121de1d: vmovd  %ebx,%xmm0
  0.08%    0.04%  ││  ││    0x00007f549121de21: mov    %ecx,%r14d
  0.22%    0.21%  ││  ││    0x00007f549121de24: mov    %r11,%r8
  0.01%    0.00%  ││  ││    0x00007f549121de27: mov    0x8(%r12,%rbx,8),%r11d
  0.08%    0.07%  ││  ││    0x00007f549121de2c: cmp    $0xf8019807,%r11d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                  ││  ││    0x00007f549121de33: jne    0x00007f549121e185  ;*aastore
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.07%    0.11%  ││  ││    0x00007f549121de39: vmovq  %xmm3,%r11
  0.17%    0.18%  ││  ││    0x00007f549121de3e: mov    0x34(%r11),%ebp    ;*getfield inst2
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@41 (line 266)
  0.01%    0.00%  ││  ││    0x00007f549121de42: mov    %r8,%rcx
  0.07%    0.10%  ││  ││    0x00007f549121de45: shr    $0x3,%rcx          ;*aastore
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.12%    0.09%  ││  ││    0x00007f549121de49: lea    (%r12,%rbx,8),%r11  ;*getfield denseThreadsInstructions
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.20%    0.09%  ││  ││    0x00007f549121de4d: lea    0x10(%r11,%r14,4),%r8
           0.02%  ││  ││    0x00007f549121de52: mov    %ecx,(%r8)
  0.09%    0.04%  ││  ││    0x00007f549121de55: mov    %r8,%rcx
  0.09%    0.05%  ││  ││    0x00007f549121de58: shr    $0x9,%rcx
  0.13%    0.10%  ││  ││    0x00007f549121de5c: movabs $0x7f548d1ff000,%r8
  0.01%           ││  ││    0x00007f549121de66: mov    %r12b,(%r8,%rcx,1)  ;*aastore
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.17%    0.18%  ││  ││    0x00007f549121de6a: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f549121e6fd
  0.04%    0.05%  ││  ││    0x00007f549121de6f: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  ││  ││    0x00007f549121de75: jne    0x00007f549121e1c1
  0.15%    0.17%  ││  ││    0x00007f549121de7b: lea    (%r12,%rbp,8),%rcx  ;*invokevirtual add
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
           0.01%  ││  ││    0x00007f549121de7f: vmovq  %rcx,%xmm1
  0.13%    0.13%  ││  ││    0x00007f549121de84: mov    0x18(%rcx),%ecx    ;*getfield pc
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.29%    0.43%  ││  ││    0x00007f549121de87: mov    %ecx,%edi
  0.12%    0.18%  ││  ││    0x00007f549121de89: cmp    $0x40,%ecx
                  ││  ││    0x00007f549121de8c: jg     0x00007f549121e401  ;*if_icmpgt
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.07%    0.06%  ││  ││    0x00007f549121de92: mov    $0x1,%ebx
  0.06%    0.09%  ││  ││    0x00007f549121de97: shl    %cl,%rbx           ;*lshl
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.30%    0.18%  ││  ││    0x00007f549121de9a: mov    %r9,%rcx
  0.06%    0.12%  ││  ││    0x00007f549121de9d: and    %rbx,%rcx          ;*land
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.06%           ││  ││    0x00007f549121dea0: test   %rcx,%rcx
                  ││╭ ││    0x00007f549121dea3: jne    0x00007f549121e0b2  ;*ifeq
                  │││ ││                                                  ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │││ ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││ ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.16%    0.13%  │││ ││    0x00007f549121dea9: xor    %ebp,%ebp          ;*ireturn
                  │││ ││                                                  ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  │││ ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││ ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.04%    0.02%  │││ ││↗   0x00007f549121deab: test   %rcx,%rcx
                  │││ │││   0x00007f549121deae: jne    0x00007f549121e441  ;*ifeq
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.14%    0.13%  │││ │││   0x00007f549121deb4: mov    %edi,%ecx
  0.05%    0.05%  │││ │││   0x00007f549121deb6: cmp    $0x40,%ecx
                  │││ │││   0x00007f549121deb9: jge    0x00007f549121e479  ;*if_icmpge
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.13%    0.15%  │││ │││   0x00007f549121debf: or     %rbx,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.01%    0.02%  │││ │││   0x00007f549121dec2: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.15%    0.14%  │││ │││   0x00007f549121dec6: mov    %r14d,%ecx
  0.03%    0.07%  │││ │││   0x00007f549121dec9: add    $0x2,%ecx
  0.12%    0.19%  │││ │││   0x00007f549121decc: mov    %ecx,0xc(%rdx)     ;*putfield size
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.02%    0.02%  │││ │││   0x00007f549121decf: mov    %r14d,%edi
  0.14%    0.14%  │││ │││   0x00007f549121ded2: add    $0x4,%edi          ;*iadd
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.06%    0.10%  │││ │││   0x00007f549121ded5: cmp    %r10d,%edi
                  │││ │││   0x00007f549121ded8: jae    0x00007f549121e115  ;*aastore
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.16%    0.13%  │││ │││   0x00007f549121dede: vmovq  %xmm3,%r10
  0.02%    0.03%  │││ │││   0x00007f549121dee3: mov    0x38(%r10),%ebp    ;*getfield inst3
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@59 (line 267)
  0.08%    0.13%  │││ │││   0x00007f549121dee7: vmovq  %xmm1,%r10
  0.05%    0.07%  │││ │││   0x00007f549121deec: mov    %r10,%rcx
  0.13%    0.11%  │││ │││   0x00007f549121deef: shr    $0x3,%rcx          ;*aastore
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.00%    0.03%  │││ │││   0x00007f549121def3: movslq %r14d,%r10
  0.10%    0.14%  │││ │││   0x00007f549121def6: lea    (%r11,%r10,4),%rbx  ;*aastore
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 269)
  0.03%    0.03%  │││ │││   0x00007f549121defa: mov    %rbx,%r10
  0.11%    0.13%  │││ │││   0x00007f549121defd: add    $0x14,%r10
  0.01%    0.01%  │││ │││   0x00007f549121df01: mov    %ecx,(%r10)
  0.18%    0.08%  │││ │││   0x00007f549121df04: shr    $0x9,%r10
  0.06%    0.05%  │││ │││   0x00007f549121df08: mov    %r12b,(%r8,%r10,1)  ;*aastore
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.16%    0.13%  │││ │││   0x00007f549121df0c: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f549121e725
  0.05%    0.03%  │││ │││   0x00007f549121df11: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │││ │││   0x00007f549121df17: jne    0x00007f549121e1f1
  0.13%    0.19%  │││ │││   0x00007f549121df1d: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 267)
  0.06%    0.07%  │││ │││   0x00007f549121df21: vmovq  %r10,%xmm0
  0.13%    0.17%  │││ │││   0x00007f549121df26: mov    0x18(%r10),%ecx    ;*getfield pc
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 267)
  0.01%    0.02%  │││ │││   0x00007f549121df2a: vmovd  %ecx,%xmm2
  0.13%    0.20%  │││ │││   0x00007f549121df2e: cmp    $0x40,%ecx
                  │││ │││   0x00007f549121df31: jg     0x00007f549121e4b9  ;*if_icmpgt
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 267)
  0.05%    0.03%  │││ │││   0x00007f549121df37: mov    $0x1,%r10d
  0.14%    0.10%  │││ │││   0x00007f549121df3d: shl    %cl,%r10           ;*lshl
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 267)
  0.21%    0.33%  │││ │││   0x00007f549121df40: mov    %r9,%rcx
  0.11%    0.11%  │││ │││   0x00007f549121df43: and    %r10,%rcx          ;*land
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 267)
  0.01%    0.03%  │││ │││   0x00007f549121df46: test   %rcx,%rcx
                  │││╭│││   0x00007f549121df49: jne    0x00007f549121e0bc  ;*ifeq
                  │││││││                                                 ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │││││││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││││││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 267)
  0.17%    0.17%  │││││││   0x00007f549121df4f: xor    %ebp,%ebp          ;*ireturn
                  │││││││                                                 ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  │││││││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││││││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 267)
  0.05%    0.07%  │││││││↗  0x00007f549121df51: test   %rcx,%rcx
                  ││││││││  0x00007f549121df54: jne    0x00007f549121e4f9  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 267)
  0.11%    0.18%  ││││││││  0x00007f549121df5a: vmovd  %xmm2,%ecx
  0.02%    0.02%  ││││││││  0x00007f549121df5e: cmp    $0x40,%ecx
                  ││││││││  0x00007f549121df61: jge    0x00007f549121e531  ;*if_icmpge
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 267)
  0.13%    0.10%  ││││││││  0x00007f549121df67: or     %r10,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 267)
  0.04%    0.04%  ││││││││  0x00007f549121df6a: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 267)
  0.15%    0.18%  ││││││││  0x00007f549121df6e: vmovq  %xmm3,%r10
  0.03%    0.01%  ││││││││  0x00007f549121df73: mov    0x3c(%r10),%ebp    ;*getfield inst4
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 268)
  0.14%    0.17%  ││││││││  0x00007f549121df77: mov    %rbx,%r10
  0.04%    0.05%  ││││││││  0x00007f549121df7a: add    $0x18,%r10
  0.10%    0.14%  ││││││││  0x00007f549121df7e: vmovq  %xmm0,%rcx
  0.01%    0.01%  ││││││││  0x00007f549121df83: shr    $0x3,%rcx
  0.17%    0.09%  ││││││││  0x00007f549121df87: mov    %ecx,(%r10)        ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 267)
  0.08%    0.06%  ││││││││  0x00007f549121df8a: mov    %r14d,%ecx
  0.06%    0.14%  ││││││││  0x00007f549121df8d: add    $0x3,%ecx
  0.05%           ││││││││  0x00007f549121df90: mov    %ecx,0xc(%rdx)     ;*putfield size
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 267)
  0.12%    0.08%  ││││││││  0x00007f549121df93: shr    $0x9,%r10
  0.03%    0.09%  ││││││││  0x00007f549121df97: mov    %r12b,(%r8,%r10,1)  ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 267)
  0.12%    0.11%  ││││││││  0x00007f549121df9b: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f549121e74d
  0.01%    0.01%  ││││││││  0x00007f549121dfa0: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  ││││││││  0x00007f549121dfa6: jne    0x00007f549121e221
  0.11%    0.16%  ││││││││  0x00007f549121dfac: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.04%    0.05%  ││││││││  0x00007f549121dfb0: vmovq  %r10,%xmm0
  0.09%    0.16%  ││││││││  0x00007f549121dfb5: mov    0x18(%r10),%ecx    ;*getfield pc
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.02%    0.00%  ││││││││  0x00007f549121dfb9: vmovd  %ecx,%xmm1
  0.15%    0.18%  ││││││││  0x00007f549121dfbd: cmp    $0x40,%ecx
  0.05%    0.07%  ││││││││  0x00007f549121dfc0: jg     0x00007f549121e571  ;*if_icmpgt
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.11%    0.15%  ││││││││  0x00007f549121dfc6: mov    $0x1,%r10d
           0.01%  ││││││││  0x00007f549121dfcc: shl    %cl,%r10           ;*lshl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.29%    0.20%  ││││││││  0x00007f549121dfcf: mov    %r9,%rcx
  0.04%    0.01%  ││││││││  0x00007f549121dfd2: and    %r10,%rcx          ;*land
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.10%    0.15%  ││││││││  0x00007f549121dfd5: test   %rcx,%rcx
                  ││││││││  0x00007f549121dfd8: jne    0x00007f549121e0c6  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.04%    0.07%  ││││││││  0x00007f549121dfde: xor    %ebp,%ebp          ;*ireturn
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.18%    0.18%  ││││││││  0x00007f549121dfe0: test   %rcx,%rcx
                  ││││││││  0x00007f549121dfe3: jne    0x00007f549121e5ad  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.02%    0.05%  ││││││││  0x00007f549121dfe9: vmovd  %xmm1,%ecx
  0.15%    0.16%  ││││││││  0x00007f549121dfed: cmp    $0x40,%ecx
                  ││││││││  0x00007f549121dff0: jge    0x00007f549121e5e5  ;*if_icmpge
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.05%    0.09%  ││││││││  0x00007f549121dff6: mov    %edi,0xc(%rdx)     ;*putfield size
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.12%    0.23%  ││││││││  0x00007f549121dff9: vmovq  %xmm3,%rcx
  0.02%    0.01%  ││││││││  0x00007f549121dffe: mov    0x40(%rcx),%ebp    ;*getfield inst5
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@95 (line 269)
  0.12%    0.16%  ││││││││  0x00007f549121e001: mov    %rbx,%rcx
  0.04%    0.07%  ││││││││  0x00007f549121e004: add    $0x1c,%rcx         ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.11%    0.13%  ││││││││  0x00007f549121e008: or     %r10,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.02%    0.03%  ││││││││  0x00007f549121e00b: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.09%    0.16%  ││││││││  0x00007f549121e00f: vmovq  %xmm0,%r10
  0.05%    0.06%  ││││││││  0x00007f549121e014: shr    $0x3,%r10
  0.09%    0.12%  ││││││││  0x00007f549121e018: mov    %r10d,(%rcx)
  0.02%    0.04%  ││││││││  0x00007f549121e01b: mov    %rcx,%r10
  0.17%    0.07%  ││││││││  0x00007f549121e01e: shr    $0x9,%r10
  0.06%    0.07%  ││││││││  0x00007f549121e022: mov    %r12b,(%r8,%r10,1)  ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.10%    0.17%  ││││││││  0x00007f549121e026: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f549121e775
  0.04%    0.03%  ││││││││  0x00007f549121e02b: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  ││││││││  0x00007f549121e032: jne    0x00007f549121e251
  0.06%    0.14%  ││││││││  0x00007f549121e038: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 269)
  0.06%    0.04%  ││││││││  0x00007f549121e03c: mov    0x18(%r10),%ecx    ;*getfield pc
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 269)
  0.15%    0.12%  ││││││││  0x00007f549121e040: cmp    $0x40,%ecx
                  ││││││││  0x00007f549121e043: jg     0x00007f549121e625  ;*if_icmpgt
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 269)
  0.03%    0.03%  ││││││││  0x00007f549121e049: shl    %cl,%rsi           ;*lshl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 269)
  0.41%    0.34%  ││││││││  0x00007f549121e04c: mov    %r9,%rdi
  0.02%    0.01%  ││││││││  0x00007f549121e04f: and    %rsi,%rdi          ;*land
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 269)
  0.11%    0.14%  ││││││││  0x00007f549121e052: test   %rdi,%rdi
                  ││││││││  0x00007f549121e055: jne    0x00007f549121e0d0  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 269)
  0.08%    0.04%  ││││││││  0x00007f549121e057: xor    %ebp,%ebp          ;*ireturn
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 269)
  0.13%    0.13%  ││││││││  0x00007f549121e059: test   %rdi,%rdi
                  ││││││││  0x00007f549121e05c: jne    0x00007f549121e64d  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 269)
  0.03%    0.04%  ││││││││  0x00007f549121e062: cmp    $0x40,%ecx
                  ││││││││  0x00007f549121e065: jge    0x00007f549121e671  ;*if_icmpge
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 269)
  0.12%    0.13%  ││││││││  0x00007f549121e06b: or     %rsi,%r9
  0.07%    0.00%  ││││││││  0x00007f549121e06e: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 269)
  0.11%    0.08%  ││││││││  0x00007f549121e072: add    $0x20,%rbx
  0.01%    0.02%  ││││││││  0x00007f549121e076: shr    $0x3,%r10
  0.09%    0.10%  ││││││││  0x00007f549121e07a: mov    %r10d,(%rbx)       ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 269)
  0.06%    0.08%  ││││││││  0x00007f549121e07d: mov    %rbx,%r10
  0.10%    0.18%  ││││││││  0x00007f549121e080: add    $0x5,%r14d
  0.02%    0.03%  ││││││││  0x00007f549121e084: mov    %r14d,0xc(%rdx)    ;*putfield size
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 269)
  0.09%    0.18%  ││││││││  0x00007f549121e088: shr    $0x9,%r10
  0.04%    0.08%  ││││││││  0x00007f549121e08c: mov    %r12b,(%r8,%r10,1)  ;*if_icmpgt
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.12%    0.15%  ││││││││  0x00007f549121e090: xor    %eax,%eax
  0.01%    0.04%  ││││││││  0x00007f549121e092: add    $0x60,%rsp
  0.14%    0.16%  ││││││││  0x00007f549121e096: pop    %rbp
  0.06%    0.05%  ││││││││  0x00007f549121e097: test   %eax,0x16bc7f63(%rip)        # 0x00007f54a7de6000
                  ││││││││                                                ;   {poll_return}
  0.13%    0.12%  ││││││││  0x00007f549121e09d: retq   
                  ↘│││││││  0x00007f549121e09e: mov    $0x1,%ebp
                   │││╰│││  0x00007f549121e0a3: jmpq   0x00007f549121dd6d
                   ↘││ │││  0x00007f549121e0a8: mov    $0x1,%ebp
                    ││ ╰││  0x00007f549121e0ad: jmpq   0x00007f549121ddd0
                    ↘│  ││  0x00007f549121e0b2: mov    $0x1,%ebp
                     │  ╰│  0x00007f549121e0b7: jmpq   0x00007f549121deab
                     ↘   │  0x00007f549121e0bc: mov    $0x1,%ebp
                         ╰  0x00007f549121e0c1: jmpq   0x00007f549121df51
                            0x00007f549121e0c6: mov    $0x1,%ebp
....................................................................................................
 17.52%   18.08%  <total for region 3>

....[Hottest Region 4]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 496 (865 bytes) 

                     0x00007f549121fcf7: shr    $0x3,%r8
                     0x00007f549121fcfb: mov    %r8d,(%rdi)
                     0x00007f549121fcfe: shr    $0x9,%r10
                     0x00007f549121fd02: movabs $0x7f548d1ff000,%r8
                     0x00007f549121fd0c: mov    %r12b,(%r8,%r10,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f549121fd10: jmpq   0x00007f5491220195
  0.32%    0.35%     0x00007f549121fd15: mov    0x2c(%r12,%r8,8),%r9d  ;*getfield outInst
                                                                   ; - com.google.re2j.Machine::step@189 (line 313)
  0.24%    0.09%     0x00007f549121fd1a: mov    0x8(%r12,%r9,8),%ebx  ; implicit exception: dispatches to 0x00007f5491220e41
  0.41%    0.19%     0x00007f549121fd1f: lea    (%r12,%r9,8),%r8
  0.01%    0.04%     0x00007f549121fd23: cmp    $0xf8019843,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                  ╭  0x00007f549121fd29: je     0x00007f549121fde3
  0.08%    0.03%  │  0x00007f549121fd2f: cmp    $0xf8019909,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007f549121fd35: jne    0x00007f5491220909  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Machine::step@202 (line 313)
  0.11%    0.03%  │  0x00007f549121fd3b: mov    0x18(%r8),%eax     ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@202 (line 313)
                  │  0x00007f549121fd3f: mov    0x10(%r11),%r9     ;*getfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@202 (line 313)
                  │                                                ; implicit exception: dispatches to 0x00007f5491220f01
                  │  0x00007f549121fd43: cmp    $0x40,%eax
                  │  0x00007f549121fd46: jg     0x00007f5491220bc5  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@202 (line 313)
  0.05%    0.06%  │  0x00007f549121fd4c: mov    $0x1,%ebx
  0.02%    0.00%  │  0x00007f549121fd51: mov    %eax,%ecx
                  │  0x00007f549121fd53: shl    %cl,%rbx           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@202 (line 313)
  0.16%    0.06%  │  0x00007f549121fd56: mov    %r9,%rcx
                  │  0x00007f549121fd59: and    %rbx,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@202 (line 313)
                  │  0x00007f549121fd5c: test   %rcx,%rcx
                  │  0x00007f549121fd5f: jne    0x00007f5491220382  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@202 (line 313)
  0.07%    0.01%  │  0x00007f549121fd65: xor    %ebp,%ebp          ;*ireturn
                  │                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@202 (line 313)
  0.02%    0.01%  │  0x00007f549121fd67: test   %rcx,%rcx
                  │  0x00007f549121fd6a: jne    0x00007f5491220c19  ;*ifeq
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@202 (line 313)
  0.02%    0.02%  │  0x00007f549121fd70: cmp    $0x40,%eax
                  │  0x00007f549121fd73: jge    0x00007f5491220c65  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Machine::step@202 (line 313)
  0.03%    0.00%  │  0x00007f549121fd79: mov    %r12b,0x18(%r11)   ;*putfield empty
                  │                                                ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Machine::step@202 (line 313)
  0.01%    0.01%  │  0x00007f549121fd7d: mov    0x20(%r11),%ecx    ;*getfield denseThreadsInstructions
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Machine::step@202 (line 313)
  0.00%    0.00%  │  0x00007f549121fd81: or     %r9,%rbx
  0.01%    0.01%  │  0x00007f549121fd84: mov    %rbx,0x10(%r11)    ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Machine::step@202 (line 313)
  0.04%    0.01%  │  0x00007f549121fd88: mov    0xc(%r11),%ebp     ;*getfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Machine::step@202 (line 313)
  0.01%    0.00%  │  0x00007f549121fd8c: mov    %ebp,%r9d
  0.03%    0.01%  │  0x00007f549121fd8f: inc    %r9d
  0.02%           │  0x00007f549121fd92: mov    %r9d,0xc(%r11)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Machine::step@202 (line 313)
  0.03%    0.00%  │  0x00007f549121fd96: mov    0xc(%r12,%rcx,8),%r9d  ; implicit exception: dispatches to 0x00007f5491220f15
  0.02%    0.01%  │  0x00007f549121fd9b: cmp    %r9d,%ebp
                  │  0x00007f549121fd9e: jae    0x00007f54912208b9
  0.02%    0.01%  │  0x00007f549121fda4: mov    0x8(%r12,%rcx,8),%r9d
  0.03%    0.01%  │  0x00007f549121fda9: cmp    $0xf8019807,%r9d   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                  │  0x00007f549121fdb0: jne    0x00007f5491220955  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Machine::step@202 (line 313)
  0.02%    0.01%  │  0x00007f549121fdb6: lea    (%r12,%rcx,8),%r9  ;*getfield denseThreadsInstructions
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Machine::step@202 (line 313)
           0.01%  │  0x00007f549121fdba: lea    0x10(%r9,%rbp,4),%r9
  0.02%    0.01%  │  0x00007f549121fdbf: mov    %r8,%rcx
  0.02%           │  0x00007f549121fdc2: shr    $0x3,%rcx
  0.04%           │  0x00007f549121fdc6: mov    %ecx,(%r9)
  0.17%    0.03%  │  0x00007f549121fdc9: mov    %r9,%r8
  0.01%    0.01%  │  0x00007f549121fdcc: shr    $0x9,%r8
  0.00%    0.00%  │  0x00007f549121fdd0: movabs $0x7f548d1ff000,%r9
  0.00%           │  0x00007f549121fdda: mov    %r12b,(%r9,%r8,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Machine::step@202 (line 313)
  0.12%    0.05%  │  0x00007f549121fdde: jmpq   0x00007f54912201aa  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Machine::step@202 (line 313)
  0.28%    0.36%  ↘  0x00007f549121fde3: mov    0x18(%r8),%eax     ;*getfield pc
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.02%     0x00007f549121fde7: mov    0x10(%r11),%r9     ;*getfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                                                                   ; implicit exception: dispatches to 0x00007f5491220e59
  0.00%              0x00007f549121fdeb: cmp    $0x40,%eax
                     0x00007f549121fdee: jg     0x00007f549122070d  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.11%    0.10%     0x00007f549121fdf4: mov    $0x1,%ebx
  0.17%    0.13%     0x00007f549121fdf9: mov    %eax,%ecx
  0.00%              0x00007f549121fdfb: shl    %cl,%rbx           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.39%    0.45%     0x00007f549121fdfe: mov    %r9,%rcx
  0.00%              0x00007f549121fe01: and    %rbx,%rcx
                     0x00007f549121fe04: test   %rcx,%rcx
                     0x00007f549121fe07: jne    0x00007f54912201aa  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.07%    0.05%     0x00007f549121fe0d: cmp    $0x40,%eax
                     0x00007f549121fe10: jge    0x00007f5491220761  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.27%    0.23%     0x00007f549121fe16: mov    %r12b,0x18(%r11)   ;*putfield empty
                                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f549121fe1a: mov    0x2c(%r8),%ebp     ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f549121fe1e: or     %r9,%rbx           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.05%     0x00007f549121fe21: mov    %rbx,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.21%    0.26%     0x00007f549121fe25: mov    0x8(%r12,%rbp,8),%r9d  ; implicit exception: dispatches to 0x00007f5491220e6d
  0.32%    0.25%     0x00007f549121fe2a: cmp    $0xf8019909,%r9d   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007f549121fe31: jne    0x00007f5491220561
  0.29%    0.21%     0x00007f549121fe37: lea    (%r12,%rbp,8),%r9  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f549121fe3b: mov    0x18(%r9),%ecx     ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.25%    0.22%     0x00007f549121fe3f: cmp    $0x40,%ecx
                     0x00007f549121fe42: jg     0x00007f54912207b5  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.21%    0.14%     0x00007f549121fe48: mov    $0x1,%edi
  0.05%    0.03%     0x00007f549121fe4d: shl    %cl,%rdi           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.48%    0.46%     0x00007f549121fe50: mov    %rbx,%rsi
  0.02%    0.00%     0x00007f549121fe53: and    %rdi,%rsi          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f549121fe56: test   %rsi,%rsi
                     0x00007f549121fe59: jne    0x00007f5491220352  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.24%    0.10%     0x00007f549121fe5f: xor    %ebp,%ebp          ;*ireturn
                                                                   ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.06%    0.04%     0x00007f549121fe61: test   %rsi,%rsi
                     0x00007f549121fe64: jne    0x00007f549122080d  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.21%    0.15%     0x00007f549121fe6a: cmp    $0x40,%ecx
                     0x00007f549121fe6d: jge    0x00007f5491220861  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f549121fe73: or     %rdi,%rbx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f549121fe76: mov    %rbx,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.05%     0x00007f549121fe7a: mov    0x20(%r11),%edi    ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.22%    0.07%     0x00007f549121fe7e: mov    0xc(%r11),%ecx     ;*getfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f549121fe82: mov    %ecx,%ebp
  0.00%    0.01%     0x00007f549121fe84: inc    %ebp               ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.08%     0x00007f549121fe86: mov    %ebp,0xc(%r11)     ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.25%    0.14%     0x00007f549121fe8a: mov    0xc(%r12,%rdi,8),%eax  ; implicit exception: dispatches to 0x00007f5491220e85
                     0x00007f549121fe8f: cmp    %eax,%ecx
                     0x00007f549121fe91: jae    0x00007f5491220509
  0.01%    0.01%     0x00007f549121fe97: mov    0x8(%r12,%rdi,8),%esi
  0.07%    0.03%     0x00007f549121fe9c: cmp    $0xf8019807,%esi   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                     0x00007f549121fea2: jne    0x00007f54912205b1  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.21%    0.16%     0x00007f549121fea8: mov    0x34(%r8),%r8d     ;*getfield inst2
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@41 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
           0.00%     0x00007f549121feac: mov    %r9,%rsi
  0.00%    0.01%     0x00007f549121feaf: shr    $0x3,%rsi          ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.08%    0.08%     0x00007f549121feb3: lea    (%r12,%rdi,8),%r9  ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.21%    0.25%     0x00007f549121feb7: lea    0x10(%r9,%rcx,4),%r14
           0.00%     0x00007f549121febc: mov    %esi,(%r14)
  0.02%    0.00%     0x00007f549121febf: mov    %r14,%rsi
  0.04%    0.07%     0x00007f549121fec2: shr    $0x9,%rsi
  0.21%    0.26%     0x00007f549121fec6: movabs $0x7f548d1ff000,%r14
  0.00%              0x00007f549121fed0: mov    %r12b,(%r14,%rsi,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.01%     0x00007f549121fed4: mov    0x8(%r12,%r8,8),%esi  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                                                                   ; implicit exception: dispatches to 0x00007f5491220ea1
  0.08%    0.08%     0x00007f549121fed9: vmovd  %r8d,%xmm3
  0.22%    0.32%     0x00007f549121fede: vmovd  %ebp,%xmm0
                     0x00007f549121fee2: mov    %edi,%r14d
  0.01%    0.01%     0x00007f549121fee5: mov    %r10d,0x94(%rsp)
  0.08%    0.06%     0x00007f549121feed: mov    %r13d,0x9c(%rsp)
  0.21%    0.19%     0x00007f549121fef5: mov    %r11,%r13
  0.00%              0x00007f549121fef8: mov    %rdx,0x30(%rsp)
  0.01%    0.01%     0x00007f549121fefd: vmovd  %ecx,%xmm1
  0.05%    0.05%     0x00007f549121ff01: movslq %ecx,%r10
  0.25%    0.30%     0x00007f549121ff04: lea    (%r9,%r10,4),%r8   ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f549121ff08: mov    %r8,%rdi
  0.01%    0.02%     0x00007f549121ff0b: add    $0x14,%rdi         ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.07%    0.05%     0x00007f549121ff0f: vmovd  %xmm3,%r10d
  0.18%    0.17%     0x00007f549121ff14: lea    (%r12,%r10,8),%r11
                     0x00007f549121ff18: mov    %ecx,%r10d
  0.01%    0.00%     0x00007f549121ff1b: add    $0x2,%r10d         ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.06%    0.05%     0x00007f549121ff1f: cmp    $0xf8019885,%esi   ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                     0x00007f549121ff25: jne    0x00007f549121fc90  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.22%    0.15%     0x00007f549121ff2b: mov    0x18(%r11),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@2 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%              0x00007f549121ff2f: cmp    $0x40,%ecx
                     0x00007f549121ff32: jg     0x00007f54912209e9  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.01%     0x00007f549121ff38: vmovq  %r11,%xmm2
  0.07%    0.02%     0x00007f549121ff3d: mov    $0x1,%edx
  0.17%    0.19%     0x00007f549121ff42: shl    %cl,%rdx           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.04%     0x00007f549121ff45: mov    %rbx,%r11
  0.19%    0.06%     0x00007f549121ff48: and    %rdx,%r11          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f549121ff4b: test   %r11,%r11
                     0x00007f549121ff4e: jne    0x00007f549122035c  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%    0.00%     0x00007f549121ff54: xor    %ebp,%ebp          ;*ireturn
                                                                   ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.07%    0.01%     0x00007f549121ff56: test   %r11,%r11
                     0x00007f549121ff59: jne    0x00007f5491220a11  ;*ifeq
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@8 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.18%    0.09%     0x00007f549121ff5f: cmp    $0x40,%ecx
                     0x00007f549121ff62: jge    0x00007f5491220a35  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f549121ff68: vmovq  %xmm2,%r11
  0.00%              0x00007f549121ff6d: mov    0x2c(%r11),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@83 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.02%     0x00007f549121ff71: or     %rdx,%rbx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.22%    0.15%     0x00007f549121ff74: mov    %rbx,0x10(%r13)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f549121ff78: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f5491220eb9
  0.01%    0.00%     0x00007f549121ff7d: cmp    $0xf8019843,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                     0x00007f549121ff83: jne    0x00007f54912206cd
  0.11%    0.06%     0x00007f549121ff89: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.27%    0.05%     0x00007f549121ff8d: mov    0x18(%r11),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
           0.01%     0x00007f549121ff91: cmp    $0x40,%ecx
                     0x00007f549121ff94: jg     0x00007f5491220ad5  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.06%    0.05%     0x00007f549121ff9a: vmovq  %r11,%xmm2
  0.05%    0.00%     0x00007f549121ff9f: mov    $0x1,%edx
  0.15%    0.15%     0x00007f549121ffa4: shl    %cl,%rdx           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.10%    0.12%     0x00007f549121ffa7: mov    %rbx,%r11
  0.17%    0.11%     0x00007f549121ffaa: and    %rdx,%r11
           0.01%     0x00007f549121ffad: test   %r11,%r11
                     0x00007f549121ffb0: jne    0x00007f5491220370  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.02%     0x00007f549121ffb6: cmp    $0x40,%ecx
                     0x00007f549121ffb9: jge    0x00007f5491220b01  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.07%    0.08%     0x00007f549121ffbf: vmovq  %xmm2,%r11
  0.16%    0.24%     0x00007f549121ffc4: mov    0x2c(%r11),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f549121ffc8: or     %rdx,%rbx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.03%     0x00007f549121ffcb: mov    %rbx,0x10(%r13)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.11%    0.10%     0x00007f549121ffcf: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f5491220ed1
  0.42%    0.40%     0x00007f549121ffd4: cmp    $0xf8019909,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007f549121ffdb: jne    0x00007f54912206ed
  0.15%    0.10%     0x00007f549121ffe1: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.01%     0x00007f549121ffe5: vmovq  %r11,%xmm3
  0.05%    0.10%     0x00007f549121ffea: mov    0x18(%r11),%r11d   ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.16%    0.18%     0x00007f549121ffee: vmovd  %r11d,%xmm4
  0.12%    0.16%     0x00007f549121fff3: cmp    $0x40,%r11d
                     0x00007f549121fff7: jg     0x00007f5491220b31  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
           0.02%     0x00007f549121fffd: mov    $0x1,%edx
  0.06%    0.04%     0x00007f5491220002: mov    %r11d,%ecx
  0.10%    0.10%     0x00007f5491220005: shl    %cl,%rdx           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.32%    0.32%     0x00007f5491220008: mov    %rbx,%r11
  0.10%    0.06%     0x00007f549122000b: and    %rdx,%r11          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.05%     0x00007f549122000e: test   %r11,%r11
                     0x00007f5491220011: jne    0x00007f5491220378  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.06%     0x00007f5491220017: xor    %ebp,%ebp          ;*ireturn
                                                                   ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.13%    0.07%     0x00007f5491220019: test   %r11,%r11
                     0x00007f549122001c: jne    0x00007f5491220b69  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.13%    0.12%     0x00007f5491220022: mov    %ecx,%r11d
  0.04%    0.03%     0x00007f5491220025: cmp    $0x40,%r11d
                     0x00007f5491220029: jge    0x00007f5491220b91  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.04%     0x00007f549122002f: mov    %r10d,0xc(%r13)    ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.11%    0.10%     0x00007f5491220033: or     %rdx,%rbx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.14%    0.11%     0x00007f5491220036: mov    %rbx,0x10(%r13)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.03%     0x00007f549122003a: cmp    %eax,%r10d
                     0x00007f549122003d: jae    0x00007f5491220675  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.06%    0.06%     0x00007f5491220043: vmovq  %xmm2,%r10
  0.10%    0.08%     0x00007f5491220048: mov    0x34(%r10),%ecx    ;*getfield inst2
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@41 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.09%    0.13%     0x00007f549122004c: mov    %rdi,%r11
  0.07%    0.05%     0x00007f549122004f: vmovq  %xmm3,%r10
  0.06%    0.05%     0x00007f5491220054: shr    $0x3,%r10
  0.08%    0.12%     0x00007f5491220058: mov    %r10d,(%rdi)
  0.13%    0.11%     0x00007f549122005b: shr    $0x9,%r11
  0.02%    0.03%     0x00007f549122005f: movabs $0x7f548d1ff000,%r10
  0.04%    0.05%     0x00007f5491220069: mov    %r12b,(%r10,%r11,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.11%    0.13%     0x00007f549122006d: mov    0x8(%r12,%rcx,8),%r11d  ; implicit exception: dispatches to 0x00007f5491220ee9
  0.11%    0.15%     0x00007f5491220072: lea    (%r12,%rcx,8),%r10
  0.04%    0.03%     0x00007f5491220076: cmp    $0xf8019885,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                     0x00007f549122007d: jne    0x00007f5491220118  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f5491220083: mov    0x18(%r10),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@2 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
....................................................................................................
 14.37%   11.85%  <total for region 4>

....[Hottest Regions]...............................................................................
 26.73%   28.12%         C2, level 4  com.google.re2j.Machine::match, version 539 (1099 bytes) 
 26.41%   28.11%         C2, level 4  com.google.re2j.Machine::step, version 496 (350 bytes) 
 17.52%   18.08%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 507 (893 bytes) 
 14.37%   11.85%         C2, level 4  com.google.re2j.Machine::step, version 496 (865 bytes) 
  6.62%    6.27%         C2, level 4  com.google.re2j.Machine::step, version 496 (107 bytes) 
  2.44%    2.67%         C2, level 4  com.google.re2j.Machine::step, version 496 (59 bytes) 
  1.59%    1.46%         C2, level 4  com.google.re2j.Machine::match, version 539 (68 bytes) 
  1.14%    1.14%   [kernel.kallsyms]  [unknown] (6 bytes) 
  0.15%    0.08%         C2, level 4  com.google.re2j.Pattern::find, version 555 (28 bytes) 
  0.14%    0.01%         C2, level 4  com.google.re2j.Pattern::find, version 555 (213 bytes) 
  0.12%    0.08%         C2, level 4  com.google.re2j.Pattern::find, version 555 (20 bytes) 
  0.12%    0.07%         C2, level 4  com.google.re2j.Pattern::find, version 555 (8 bytes) 
  0.11%    0.01%   [kernel.kallsyms]  [unknown] (2 bytes) 
  0.10%    0.09%         C2, level 4  com.google.re2j.Machine::match, version 539 (51 bytes) 
  0.09%    0.00%   [kernel.kallsyms]  [unknown] (39 bytes) 
  0.09%    0.05%         C2, level 4  com.google.re2j.Pattern::find, version 555 (8 bytes) 
  0.08%    0.04%           libjvm.so  GenericTaskQueueSet<OverflowTaskQueue<StarTask, (MemoryType)1, 131072u>, (MemoryType)1>::steal_best_of_2 (85 bytes) 
  0.07%    0.06%         C2, level 4  com.google.re2j.Machine::match, version 539 (198 bytes) 
  0.06%    0.01%         C2, level 4  com.google.re2j.Pattern::find, version 555 (164 bytes) 
  0.05%    0.02%   [kernel.kallsyms]  [unknown] (0 bytes) 
  2.01%    1.77%  <...other 408 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 49.84%   48.90%         C2, level 4  com.google.re2j.Machine::step, version 496 
 28.68%   29.85%         C2, level 4  com.google.re2j.Machine::match, version 539 
 17.52%   18.08%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 507 
  1.97%    1.71%   [kernel.kallsyms]  [unknown] 
  0.80%    0.31%         C2, level 4  com.google.re2j.Pattern::find, version 555 
  0.11%    0.05%           libjvm.so  GenericTaskQueueSet<OverflowTaskQueue<StarTask, (MemoryType)1, 131072u>, (MemoryType)1>::steal_best_of_2 
  0.09%    0.04%         C2, level 4  java.util.Collections::shuffle, version 566 
  0.09%    0.01%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testCombine_jmhTest::testCombine_thrpt_jmhStub, version 615 
  0.06%    0.07%           libjvm.so  PSPromotionManager::copy_to_survivor_space<false> 
  0.04%    0.07%           libjvm.so  InstanceKlass::oop_push_contents 
  0.04%    0.05%           libjvm.so  PSPromotionManager::drain_stacks_depth 
  0.04%    0.06%      hsdis-amd64.so  [unknown] 
  0.04%    0.04%        libc-2.26.so  _IO_fwrite 
  0.03%    0.06%        libc-2.26.so  vfprintf 
  0.02%    0.00%        libc-2.26.so  _IO_fflush 
  0.02%    0.00%           libjvm.so  decode_env::handle_event 
  0.02%    0.04%           libjvm.so  xmlTextStream::write 
  0.02%    0.02%           libjvm.so  outputStream::update_position 
  0.02%                       [vdso]  __vdso_clock_gettime 
  0.02%    0.05%           libjvm.so  RelocIterator::initialize 
  0.51%    0.32%  <...other 74 warm methods...>
....................................................................................................
100.00%   99.74%  <totals>

....[Distribution by Source]........................................................................
 97.04%   97.20%         C2, level 4
  1.97%    1.71%   [kernel.kallsyms]
  0.63%    0.64%           libjvm.so
  0.21%    0.30%        libc-2.26.so
  0.04%    0.06%      hsdis-amd64.so
  0.03%    0.06%  libpthread-2.26.so
  0.03%    0.00%              [vdso]
  0.03%    0.01%         interpreter
  0.02%                  C1, level 3
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:44

Benchmark                        Mode  Cnt      Score    Error  Units
Re2jFindRegex.testCombine       thrpt   20  11574.543 ± 53.251  ops/s
Re2jFindRegex.testCombine:·asm  thrpt             NaN             ---
