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
# Warmup Iteration   1: 4962.180 ops/s
# Warmup Iteration   2: 11484.066 ops/s
# Warmup Iteration   3: 11797.208 ops/s
# Warmup Iteration   4: 11780.984 ops/s
# Warmup Iteration   5: 11761.762 ops/s
# Warmup Iteration   6: 11618.504 ops/s
# Warmup Iteration   7: 11687.677 ops/s
# Warmup Iteration   8: 11819.965 ops/s
# Warmup Iteration   9: 11811.012 ops/s
# Warmup Iteration  10: 11765.509 ops/s
# Warmup Iteration  11: 11626.841 ops/s
# Warmup Iteration  12: 11834.467 ops/s
# Warmup Iteration  13: 11850.280 ops/s
# Warmup Iteration  14: 11836.075 ops/s
# Warmup Iteration  15: 10829.624 ops/s
# Warmup Iteration  16: 11524.676 ops/s
# Warmup Iteration  17: 11758.347 ops/s
# Warmup Iteration  18: 11856.315 ops/s
# Warmup Iteration  19: 11829.999 ops/s
# Warmup Iteration  20: 11879.007 ops/s
Iteration   1: 11445.812 ops/s
Iteration   2: 11852.630 ops/s
Iteration   3: 11794.639 ops/s
Iteration   4: 11760.772 ops/s
Iteration   5: 11788.118 ops/s
Iteration   6: 11814.100 ops/s
Iteration   7: 11279.112 ops/s
Iteration   8: 11806.948 ops/s
Iteration   9: 11850.228 ops/s
Iteration  10: 11843.305 ops/s
Iteration  11: 11728.925 ops/s
Iteration  12: 11817.344 ops/s
Iteration  13: 11839.238 ops/s
Iteration  14: 11572.318 ops/s
Iteration  15: 11843.920 ops/s
Iteration  16: 11517.432 ops/s
Iteration  17: 11831.906 ops/s
Iteration  18: 11528.699 ops/s
Iteration  19: 10669.279 ops/s
Iteration  20: 11867.271 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  11672.600 ±(99.9%) 250.366 ops/s [Average]
  (min, avg, max) = (10669.279, 11672.600, 11867.271), stdev = 288.322
  CI (99.9%): [11422.234, 11922.966] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine:·asm":
PrintAssembly processed: 216680 total address lines.
Perf output processed (skipped 23.163 seconds):
 Column 1: cycles (20530 events)
 Column 2: instructions (20514 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 602 (1326 bytes) 

                                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                            ; - com.google.re2j.Machine::match@105 (line 201)
                                              0x00007f9be9275b70: cmp    %r9d,%r11d
                                              0x00007f9be9275b73: jge    0x00007f9be92772f5  ;*if_icmplt
                                                                                            ; - java.lang.String::charAt@10 (line 657)
                                                                                            ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                            ; - com.google.re2j.Machine::match@105 (line 201)
                                              0x00007f9be9275b79: cmp    %r9d,%r11d
                                              0x00007f9be9275b7c: jae    0x00007f9be9276d45
  0.00%                                       0x00007f9be9275b82: movzwl 0x10(%r8,%r11,2),%r8d  ;*caload
                                                                                            ; - java.lang.String::charAt@27 (line 660)
                                                                                            ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                            ; - com.google.re2j.Machine::match@105 (line 201)
           0.00%                              0x00007f9be9275b88: cmp    $0xd800,%r8d
                                              0x00007f9be9275b8f: jge    0x00007f9be9277365  ;*if_icmplt
                                                                                            ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                                            ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                            ; - com.google.re2j.Machine::match@105 (line 201)
  0.00%    0.00%                              0x00007f9be9275b95: shl    $0x3,%r8d          ;*ishl
                                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                                                                                            ; - com.google.re2j.Machine::match@105 (line 201)
                                              0x00007f9be9275b99: mov    %r8d,%r11d
                                              0x00007f9be9275b9c: and    $0x7,%r11d
  0.00%                                       0x00007f9be9275ba0: or     $0x1,%r8d
                                              0x00007f9be9275ba4: or     $0x1,%r11d         ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                                                                                            ; - com.google.re2j.Machine::match@105 (line 201)
                                              0x00007f9be9275ba8: mov    %r11d,0x30(%rsp)
                                              0x00007f9be9275bad: sar    $0x3,%r8d          ;*ishr
                                                                                            ; - com.google.re2j.Machine::match@113 (line 202)
                                              0x00007f9be9275bb1: mov    %r8d,0x2c(%rsp)    ;*iand
                                                                                            ; - com.google.re2j.Machine::match@120 (line 203)
           0.01%                              0x00007f9be9275bb6: vmovd  %xmm0,%r11d
                                              0x00007f9be9275bbb: test   %r11d,%r11d
                                              0x00007f9be9275bbe: jne    0x00007f9be92770cd  ;*ifne
                                                                                            ; - com.google.re2j.Machine::match@124 (line 206)
                                              0x00007f9be9275bc4: test   %r10d,%r10d
                                              0x00007f9be9275bc7: jl     0x00007f9be92764fb  ;*ifge
                                                                                            ; - com.google.re2j.Utils::emptyOpContext@21 (line 179)
                                                                                            ; - com.google.re2j.Machine::match@130 (line 207)
                                              0x00007f9be9275bcd: mov    $0x5,%r8d          ;*iload_1
                                                                                            ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                                                                                            ; - com.google.re2j.Machine::match@130 (line 207)
  0.01%    0.01%                              0x00007f9be9275bd3: cmp    $0xa,%r10d
                                              0x00007f9be9275bd7: je     0x00007f9be9276521  ;*iload_0
                                                                                            ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                                                                                            ; - com.google.re2j.Machine::match@130 (line 207)
                                              0x00007f9be9275bdd: mov    %r10d,%r9d
                                              0x00007f9be9275be0: add    $0xffffffbf,%r9d
                                              0x00007f9be9275be4: cmp    $0x1a,%r9d
                  ╭                           0x00007f9be9275be8: jb     0x00007f9be9275bfb  ;*if_icmple
                  │                                                                         ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │                                                                         ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                                         ; - com.google.re2j.Machine::match@130 (line 207)
  0.00%    0.02%  │                           0x00007f9be9275bea: mov    %r10d,%r11d
                  │                           0x00007f9be9275bed: add    $0xffffff9f,%r11d
                  │                           0x00007f9be9275bf1: cmp    $0x1a,%r11d
                  │                           0x00007f9be9275bf5: jae    0x00007f9be9276530  ;*iconst_1
                  │                                                                         ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │                                                                         ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                                         ; - com.google.re2j.Machine::match@130 (line 207)
           0.01%  ↘                           0x00007f9be9275bfb: or     $0x10,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                                                                                            ; - com.google.re2j.Machine::match@130 (line 207)
           0.01%                              0x00007f9be9275bff: mov    %r8d,0x38(%rsp)    ;*iload_2
                                                                                            ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                                            ; - com.google.re2j.Machine::match@130 (line 207)
                                              0x00007f9be9275c04: mov    0x3c(%rsp),%r11d
                                              0x00007f9be9275c09: test   %r11d,%r11d
                                              0x00007f9be9275c0c: jne    0x00007f9be9276e2d  ;*aload
                                                                                            ; - com.google.re2j.Machine::match@145 (line 213)
                                              0x00007f9be9275c12: mov    0x4c(%rsp),%r8d
  0.00%                                       0x00007f9be9275c17: mov    0x8(%r12,%r8,8),%r11d  ;*invokevirtual add
                                                                                            ; - com.google.re2j.Machine::match@322 (line 245)
                                                                                            ; implicit exception: dispatches to 0x00007f9be9276e2d
                                              0x00007f9be9275c1c: mov    %r11d,0x14(%rsp)
                                              0x00007f9be9275c21: mov    0x40(%rsp),%r11
  0.00%                                       0x00007f9be9275c26: movzbl 0x11(%r11),%ebx    ;*getfield captures
                                                                                            ; - com.google.re2j.Machine::match@292 (line 242)
  0.00%    0.00%                              0x00007f9be9275c2b: lea    (%r12,%r8,8),%r11
                                              0x00007f9be9275c2f: mov    %r11,0x18(%rsp)
                                              0x00007f9be9275c34: mov    0x48(%rsp),%r8d
                                              0x00007f9be9275c39: and    $0x4,%r8d          ;*iand
                                                                                            ; - com.google.re2j.Machine::match@156 (line 214)
  0.00%                                       0x00007f9be9275c3d: mov    %r8d,0x58(%rsp)
                                              0x00007f9be9275c42: mov    %rcx,%r11
  0.00%                                       0x00007f9be9275c45: shl    $0x3,%r11          ;*getfield q1
                                                                                            ; - com.google.re2j.Machine::match@62 (line 194)
                                              0x00007f9be9275c49: vmovd  %ebx,%xmm3
           0.01%                              0x00007f9be9275c4d: mov    %r11,0x68(%rsp)
  0.00%                                       0x00007f9be9275c52: xor    %r8d,%r8d
  0.00%    0.00%                              0x00007f9be9275c55: mov    %r8d,0x64(%rsp)
                                              0x00007f9be9275c5a: xor    %eax,%eax
  0.00%            ╭                          0x00007f9be9275c5c: jmpq   0x00007f9be9275ea5
  0.02%    0.01%   │              ↗           0x00007f9be9275c61: mov    0x18(%rsp),%rbp    ;*ifeq
                   │              │                                                         ; - com.google.re2j.Machine::match@295 (line 242)
  0.07%    0.03%   │              │           0x00007f9be9275c66: mov    %r14,%r8
  0.17%    0.01%   │              │           0x00007f9be9275c69: shl    $0x3,%r8           ;*getfield matchcap
                   │              │                                                         ; - com.google.re2j.Machine::match@311 (line 245)
                   │              │           0x00007f9be9275c6d: mov    %rbp,%rsi
  0.01%    0.00%   │              │           0x00007f9be9275c70: mov    0x20(%rsp),%rdx
  0.21%    0.05%   │              │           0x00007f9be9275c75: mov    0x5c(%rsp),%ecx
  0.24%    0.05%   │              │           0x00007f9be9275c79: mov    0x38(%rsp),%r9d
  0.01%            │              │           0x00007f9be9275c7e: xor    %edi,%edi
  0.01%    0.00%   │              │           0x00007f9be9275c80: mov    0x40(%rsp),%r10
  0.05%    0.00%   │              │           0x00007f9be9275c85: mov    %r10,(%rsp)
  0.30%    0.10%   │              │           0x00007f9be9275c89: vmovss %xmm3,0x8(%rsp)
  0.00%            │              │           0x00007f9be9275c8f: callq  0x00007f9be9046020  ; OopMap{rbp=Oop [24]=Oop [32]=Oop [52]=NarrowOop [64]=Oop [76]=NarrowOop [80]=Oop [104]=Oop off=692}
                   │              │                                                         ;*invokevirtual add
                   │              │                                                         ; - com.google.re2j.Machine::match@322 (line 245)
                   │              │                                                         ;   {optimized virtual_call}
  0.13%    0.19%   │              │           0x00007f9be9275c94: mov    %rbp,0x70(%rsp)    ;*synchronization entry
                   │              │                                                         ; - com.google.re2j.Machine::match@-1 (line 182)
  0.25%    0.31%   │              │↗          0x00007f9be9275c99: mov    0x60(%rsp),%ebx
  0.10%    0.13%   │              ││          0x00007f9be9275c9d: test   %ebx,%ebx
                   │╭             ││          0x00007f9be9275c9f: jl     0x00007f9be9276016  ;*ifge
                   ││             ││                                                        ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                   ││             ││                                                        ; - com.google.re2j.Machine::match@330 (line 247)
  0.16%    0.21%   ││             ││          0x00007f9be9275ca5: xor    %r8d,%r8d          ;*iload_0
                   ││             ││                                                        ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                   ││             ││                                                        ; - com.google.re2j.Machine::match@330 (line 247)
  0.17%    0.13%   ││             ││↗         0x00007f9be9275ca8: cmp    $0xa,%ebx
                   ││╭            │││         0x00007f9be9275cab: je     0x00007f9be9276090  ;*iload_1
                   │││            │││                                                       ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                   │││            │││                                                       ; - com.google.re2j.Machine::match@330 (line 247)
  0.19%    0.21%   │││            │││     ↗   0x00007f9be9275cb1: mov    0x2c(%rsp),%r10d
  0.08%    0.09%   │││            │││     │   0x00007f9be9275cb6: test   %r10d,%r10d
                   │││╭           │││     │   0x00007f9be9275cb9: jl     0x00007f9be9276021  ;*iload_1
                   ││││           │││     │                                                 ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                   ││││           │││     │                                                 ; - com.google.re2j.Machine::match@330 (line 247)
  0.22%    0.16%   ││││           │││↗    │   0x00007f9be9275cbf: cmp    $0xa,%r10d
                   ││││╭          ││││    │   0x00007f9be9275cc3: je     0x00007f9be9276099  ;*invokevirtual endPos
                   │││││          ││││    │                                                 ; - com.google.re2j.Machine::match@352 (line 248)
  0.16%    0.17%   │││││          ││││    │↗  0x00007f9be9275cc9: mov    0x50(%rsp),%r10
  0.24%    0.19%   │││││          ││││    ││  0x00007f9be9275cce: mov    0x10(%r10),%ecx    ;*getfield end
                   │││││          ││││    ││                                                ; - com.google.re2j.MachineInput$UTF16Input::endPos@1 (line 221)
                   │││││          ││││    ││                                                ; - com.google.re2j.Machine::match@352 (line 248)
  0.16%    0.11%   │││││          ││││    ││  0x00007f9be9275cd2: mov    0x5c(%rsp),%r11d
  0.14%    0.23%   │││││          ││││    ││  0x00007f9be9275cd7: add    0x28(%rsp),%r11d   ;*iadd
                   │││││          ││││    ││                                                ; - com.google.re2j.Machine::match@344 (line 248)
  0.13%    0.15%   │││││          ││││    ││  0x00007f9be9275cdc: mov    %r11d,0x64(%rsp)
  0.18%    0.24%   │││││          ││││    ││  0x00007f9be9275ce1: mov    0x60(%rsp),%r11d
  0.11%    0.09%   │││││          ││││    ││  0x00007f9be9275ce6: add    $0xffffffbf,%r11d
  0.19%    0.19%   │││││          ││││    ││  0x00007f9be9275cea: mov    0x2c(%rsp),%r9d
  0.14%    0.15%   │││││          ││││    ││  0x00007f9be9275cef: add    $0xffffffbf,%r9d
  0.19%    0.19%   │││││          ││││    ││  0x00007f9be9275cf3: cmp    $0x1a,%r11d
                   │││││╭         ││││    ││  0x00007f9be9275cf7: jb     0x00007f9be9275d0c  ;*if_icmple
                   ││││││         ││││    ││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                   ││││││         ││││    ││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   ││││││         ││││    ││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.11%    0.10%   ││││││         ││││    ││  0x00007f9be9275cf9: mov    0x60(%rsp),%r10d
  0.19%    0.09%   ││││││         ││││    ││  0x00007f9be9275cfe: add    $0xffffff9f,%r10d
  0.12%    0.16%   ││││││         ││││    ││  0x00007f9be9275d02: cmp    $0x1a,%r10d
                   ││││││         ││││    ││  0x00007f9be9275d06: jae    0x00007f9be92764b3  ;*iconst_1
                   ││││││         ││││    ││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                   ││││││         ││││    ││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   ││││││         ││││    ││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.21%    0.22%   │││││↘         ││││    ││  0x00007f9be9275d0c: mov    $0x1,%ebp          ;*ireturn
                   │││││          ││││    ││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                   │││││          ││││    ││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   │││││          ││││    ││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.10%    0.13%   │││││          ││││    ││  0x00007f9be9275d11: cmp    $0x1a,%r9d
                   │││││ ╭        ││││    ││  0x00007f9be9275d15: jb     0x00007f9be9275d2a  ;*if_icmple
                   │││││ │        ││││    ││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                   │││││ │        ││││    ││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   │││││ │        ││││    ││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.19%    0.26%   │││││ │        ││││    ││  0x00007f9be9275d17: mov    0x2c(%rsp),%r10d
  0.17%    0.18%   │││││ │        ││││    ││  0x00007f9be9275d1c: add    $0xffffff9f,%r10d
  0.23%    0.27%   │││││ │        ││││    ││  0x00007f9be9275d20: cmp    $0x1a,%r10d
                   │││││ │        ││││    ││  0x00007f9be9275d24: jae    0x00007f9be9276489  ;*iconst_1
                   │││││ │        ││││    ││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                   │││││ │        ││││    ││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   │││││ │        ││││    ││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.17%    0.21%   │││││ ↘        ││││    ││  0x00007f9be9275d2a: mov    $0x1,%r11d         ;*ireturn
                   │││││          ││││    ││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                   │││││          ││││    ││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   │││││          ││││    ││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.34%    0.41%   │││││          ││││    ││  0x00007f9be9275d30: cmp    %r11d,%ebp
                   │││││  ╭       ││││    ││  0x00007f9be9275d33: jne    0x00007f9be9275d40  ;*if_icmpeq
                   │││││  │       ││││    ││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                   │││││  │       ││││    ││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.14%    0.13%   │││││  │       ││││    ││  0x00007f9be9275d35: or     $0x20,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                   │││││  │       ││││    ││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.09%    0.22%   │││││  │       ││││    ││  0x00007f9be9275d39: mov    %r8d,0x38(%rsp)
  0.14%    0.17%   │││││  │╭      ││││    ││  0x00007f9be9275d3e: jmp    0x00007f9be9275d49
  0.11%    0.08%   │││││  ↘│      ││││    ││  0x00007f9be9275d40: or     $0x10,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                   │││││   │      ││││    ││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.01%    0.01%   │││││   │      ││││    ││  0x00007f9be9275d44: mov    %r8d,0x38(%rsp)    ;*iload_2
                   │││││   │      ││││    ││                                                ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   │││││   │      ││││    ││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.22%    0.24%   │││││   ↘      ││││    ││  0x00007f9be9275d49: mov    0x5c(%rsp),%r11d
  0.25%    0.20%   │││││          ││││    ││  0x00007f9be9275d4e: cmp    %ecx,%r11d
                   │││││    ╭     ││││    ││  0x00007f9be9275d51: je     0x00007f9be927602a  ;*if_icmpne
                   │││││    │     ││││    ││                                                ; - com.google.re2j.Machine::match@355 (line 248)
  0.28%    0.20%   │││││    │     ││││    ││  0x00007f9be9275d57: xor    %r10d,%r10d
  0.10%    0.09%   │││││    │     ││││↗   ││  0x00007f9be9275d5a: mov    0x40(%rsp),%rsi
  0.16%    0.16%   │││││    │     │││││   ││  0x00007f9be9275d5f: mov    0x20(%rsp),%rdx
  0.14%    0.15%   │││││    │     │││││   ││  0x00007f9be9275d64: mov    0x68(%rsp),%rcx
  0.27%    0.21%   │││││    │     │││││   ││  0x00007f9be9275d69: mov    0x5c(%rsp),%r8d
  0.09%    0.10%   │││││    │     │││││   ││  0x00007f9be9275d6e: mov    0x64(%rsp),%r9d
  0.11%    0.16%   │││││    │     │││││   ││  0x00007f9be9275d73: mov    0x60(%rsp),%edi
  0.15%    0.20%   │││││    │     │││││   ││  0x00007f9be9275d77: mov    0x38(%rsp),%ebx
  0.25%    0.20%   │││││    │     │││││   ││  0x00007f9be9275d7b: mov    %ebx,(%rsp)
  0.12%    0.14%   │││││    │     │││││   ││  0x00007f9be9275d7e: xor    %r11d,%r11d
  0.19%    0.18%   │││││    │     │││││   ││  0x00007f9be9275d81: mov    %r11d,0x8(%rsp)
  0.23%    0.15%   │││││    │     │││││   ││  0x00007f9be9275d86: mov    %r10d,0x10(%rsp)
  0.20%    0.26%   │││││    │     │││││   ││  0x00007f9be9275d8b: callq  0x00007f9be9046020  ; OopMap{[24]=Oop [32]=Oop [52]=NarrowOop [64]=Oop [76]=NarrowOop [80]=Oop [104]=Oop [112]=Oop off=944}
                   │││││    │     │││││   ││                                                ;*invokespecial step
                   │││││    │     │││││   ││                                                ; - com.google.re2j.Machine::match@363 (line 248)
                   │││││    │     │││││   ││                                                ;   {optimized virtual_call}
  0.04%    0.02%   │││││    │     │││││   ││  0x00007f9be9275d90: mov    0x40(%rsp),%r10
  0.57%    0.63%   │││││    │     │││││   ││  0x00007f9be9275d95: movzbl 0x11(%r10),%ebx    ;*getfield captures
                   │││││    │     │││││   ││                                                ; - com.google.re2j.Machine::match@375 (line 252)
  0.07%    0.10%   │││││    │     │││││   ││  0x00007f9be9275d9a: movzbl 0x10(%r10),%eax    ;*getfield matched
                   │││││    │     │││││   ││                                                ; - com.google.re2j.Machine::match@382 (line 252)
  0.06%    0.05%   │││││    │     │││││   ││  0x00007f9be9275d9f: mov    0x28(%rsp),%r10d
  0.63%    0.58%   │││││    │     │││││   ││  0x00007f9be9275da4: test   %r10d,%r10d
                   │││││    │╭    │││││   ││  0x00007f9be9275da7: je     0x00007f9be9276035  ;*ifne
                   │││││    ││    │││││   ││                                                ; - com.google.re2j.Machine::match@368 (line 249)
  0.00%            │││││    ││    │││││   ││  0x00007f9be9275dad: test   %ebx,%ebx
                   │││││    ││    │││││   ││  0x00007f9be9275daf: jne    0x00007f9be92766c9  ;*ifne
                   │││││    ││    │││││   ││                                                ; - com.google.re2j.Machine::match@378 (line 252)
  0.05%    0.04%   │││││    ││    │││││   ││  0x00007f9be9275db5: test   %eax,%eax
                   │││││    ││    │││││   ││  0x00007f9be9275db7: jne    0x00007f9be9276905  ;*ifeq
                   │││││    ││    │││││   ││                                                ; - com.google.re2j.Machine::match@385 (line 252)
  0.05%    0.03%   │││││    ││    │││││   ││  0x00007f9be9275dbd: mov    0x50(%rsp),%r10
  0.59%    0.56%   │││││    ││    │││││   ││  0x00007f9be9275dc2: mov    0x10(%r10),%r11d   ;*getfield end
                   │││││    ││    │││││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                   │││││    ││    │││││   ││                                                ; - com.google.re2j.Machine::match@415 (line 261)
  0.03%    0.03%   │││││    ││    │││││   ││  0x00007f9be9275dc6: mov    0xc(%r10),%r8d     ;*getfield start
                   │││││    ││    │││││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                   │││││    ││    │││││   ││                                                ; - com.google.re2j.Machine::match@415 (line 261)
  0.03%    0.01%   │││││    ││    │││││   ││  0x00007f9be9275dca: mov    0x14(%r10),%r13d   ;*getfield str
                   │││││    ││    │││││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                   │││││    ││    │││││   ││                                                ; - com.google.re2j.Machine::match@415 (line 261)
  0.06%    0.03%   │││││    ││    │││││   ││  0x00007f9be9275dce: mov    0x2c(%rsp),%r9d
  0.66%    0.66%   │││││    ││    │││││   ││  0x00007f9be9275dd3: cmp    $0xffffffff,%r9d
                   │││││    ││╭   │││││   ││  0x00007f9be9275dd7: je     0x00007f9be9276074  ;*if_icmpeq
                   │││││    │││   │││││   ││                                                ; - com.google.re2j.Machine::match@407 (line 260)
  0.00%    0.00%   │││││    │││   │││││   ││  0x00007f9be9275ddd: mov    0x30(%rsp),%r9d
  0.03%    0.02%   │││││    │││   │││││   ││  0x00007f9be9275de2: add    0x64(%rsp),%r9d
  0.09%    0.08%   │││││    │││   │││││   ││  0x00007f9be9275de7: add    %r8d,%r9d          ;*iadd
                   │││││    │││   │││││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                   │││││    │││   │││││   ││                                                ; - com.google.re2j.Machine::match@415 (line 261)
  0.54%    0.59%   │││││    │││   │││││   ││  0x00007f9be9275dea: cmp    %r11d,%r9d
                   │││││    │││╭  │││││   ││  0x00007f9be9275ded: jge    0x00007f9be9276083  ;*if_icmpge
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.Machine::match@415 (line 261)
  0.04%    0.07%   │││││    ││││  │││││   ││  0x00007f9be9275df3: mov    0x8(%r12,%r13,8),%ecx  ; implicit exception: dispatches to 0x00007f9be9277a29
  0.43%    0.53%   │││││    ││││  │││││   ││  0x00007f9be9275df8: cmp    $0xf80002da,%ecx   ;   {metadata(&apos;java/lang/String&apos;)}
                   │││││    ││││  │││││   ││  0x00007f9be9275dfe: jne    0x00007f9be9276601
  0.40%    0.48%   │││││    ││││  │││││   ││  0x00007f9be9275e04: lea    (%r12,%r13,8),%r10  ;*invokeinterface charAt
                   │││││    ││││  │││││   ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.Machine::match@415 (line 261)
  0.20%    0.22%   │││││    ││││  │││││   ││  0x00007f9be9275e08: test   %r9d,%r9d
                   │││││    ││││  │││││   ││  0x00007f9be9275e0b: jl     0x00007f9be927671d  ;*iflt
                   │││││    ││││  │││││   ││                                                ; - java.lang.String::charAt@1 (line 657)
                   │││││    ││││  │││││   ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.Machine::match@415 (line 261)
  0.01%    0.01%   │││││    ││││  │││││   ││  0x00007f9be9275e11: mov    0xc(%r10),%r14d    ;*getfield value
                   │││││    ││││  │││││   ││                                                ; - java.lang.String::charAt@6 (line 657)
                   │││││    ││││  │││││   ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.Machine::match@415 (line 261)
  0.15%    0.23%   │││││    ││││  │││││   ││  0x00007f9be9275e15: mov    0xc(%r12,%r14,8),%ebp  ;*arraylength
                   │││││    ││││  │││││   ││                                                ; - java.lang.String::charAt@9 (line 657)
                   │││││    ││││  │││││   ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.Machine::match@415 (line 261)
                   │││││    ││││  │││││   ││                                                ; implicit exception: dispatches to 0x00007f9be9277a3d
  3.15%    3.85%   │││││    ││││  │││││   ││  0x00007f9be9275e1a: cmp    %ebp,%r9d
                   │││││    ││││  │││││   ││  0x00007f9be9275e1d: jge    0x00007f9be9276959  ;*if_icmplt
                   │││││    ││││  │││││   ││                                                ; - java.lang.String::charAt@10 (line 657)
                   │││││    ││││  │││││   ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.Machine::match@415 (line 261)
  0.59%    0.75%   │││││    ││││  │││││   ││  0x00007f9be9275e23: cmp    %ebp,%r9d
                   │││││    ││││  │││││   ││  0x00007f9be9275e26: jae    0x00007f9be9276594
  0.44%    0.53%   │││││    ││││  │││││   ││  0x00007f9be9275e2c: lea    (%r12,%r14,8),%rcx
                   │││││    ││││  │││││   ││  0x00007f9be9275e30: movzwl 0x10(%rcx,%r9,2),%ecx  ;*caload
                   │││││    ││││  │││││   ││                                                ; - java.lang.String::charAt@27 (line 660)
                   │││││    ││││  │││││   ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.Machine::match@415 (line 261)
  0.02%    0.01%   │││││    ││││  │││││   ││  0x00007f9be9275e36: cmp    $0xd800,%ecx
                   │││││    ││││  │││││   ││  0x00007f9be9275e3c: jge    0x00007f9be92769d1  ;*if_icmplt
                   │││││    ││││  │││││   ││                                                ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   │││││    ││││  │││││   ││                                                ; - java.lang.Character::codePointAt@9 (line 4867)
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.Machine::match@415 (line 261)
  0.54%    0.59%   │││││    ││││  │││││   ││  0x00007f9be9275e42: shl    $0x3,%ecx          ;*ishl
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.Machine::match@415 (line 261)
  0.36%    0.40%   │││││    ││││  │││││   ││  0x00007f9be9275e45: mov    %ecx,%r9d
                   │││││    ││││  │││││   ││  0x00007f9be9275e48: or     $0x1,%r9d
  0.48%    0.55%   │││││    ││││  │││││   ││  0x00007f9be9275e4c: and    $0x7,%ecx
  0.12%    0.11%   │││││    ││││  │││││   ││  0x00007f9be9275e4f: sar    $0x3,%r9d          ;*ishr
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.Machine::match@423 (line 262)
  0.42%    0.48%   │││││    ││││  │││││   ││  0x00007f9be9275e53: or     $0x1,%ecx          ; OopMap{r13=NarrowOop [24]=Oop [32]=Oop [64]=Oop [76]=NarrowOop [80]=Oop [104]=Oop [112]=Oop off=1142}
                   │││││    ││││  │││││   ││                                                ;*goto
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.Machine::match@445 (line 268)
  0.05%    0.02%   │││││    ││││  │││││ ↗↗││  0x00007f9be9275e56: test   %eax,0x1818d1a4(%rip)        # 0x00007f9c01403000
                   │││││    ││││  │││││ ││││                                                ;*goto
                   │││││    ││││  │││││ ││││                                                ; - com.google.re2j.Machine::match@445 (line 268)
                   │││││    ││││  │││││ ││││                                                ;   {poll}
  0.01%    0.01%   │││││    ││││  │││││ ││││  0x00007f9be9275e5c: mov    0x40(%rsp),%r10
  0.15%    0.11%   │││││    ││││  │││││ ││││  0x00007f9be9275e61: mov    0x28(%r10),%r14d   ;*getfield matchcap
                   │││││    ││││  │││││ ││││                                                ; - com.google.re2j.Machine::match@311 (line 245)
  0.43%    0.51%   │││││    ││││  │││││ ││││  0x00007f9be9275e65: mov    0x14(%r10),%esi    ;*getfield re2
                   │││││    ││││  │││││ ││││                                                ; - com.google.re2j.Machine::match@178 (line 222)
  0.04%    0.02%   │││││    ││││  │││││ ││││  0x00007f9be9275e69: mov    0x68(%rsp),%r10
           0.01%   │││││    ││││  │││││ ││││  0x00007f9be9275e6e: shr    $0x3,%r10
  0.14%    0.11%   │││││    ││││  │││││ ││││  0x00007f9be9275e72: mov    %r10d,0x34(%rsp)
  0.47%    0.51%   │││││    ││││  │││││ ││││  0x00007f9be9275e77: mov    0x2c(%rsp),%r10d
  0.02%    0.03%   │││││    ││││  │││││ ││││  0x00007f9be9275e7c: vmovd  %ebx,%xmm3
                   │││││    ││││  │││││ ││││  0x00007f9be9275e80: mov    0x20(%rsp),%rbx
  0.09%    0.13%   │││││    ││││  │││││ ││││  0x00007f9be9275e85: mov    %rbx,0x68(%rsp)
  0.49%    0.59%   │││││    ││││  │││││ ││││  0x00007f9be9275e8a: mov    0x30(%rsp),%edi
  0.02%    0.03%   │││││    ││││  │││││ ││││  0x00007f9be9275e8e: mov    %edi,0x28(%rsp)
  0.00%    0.00%   │││││    ││││  │││││ ││││  0x00007f9be9275e92: mov    %ecx,0x30(%rsp)
  0.13%    0.17%   │││││    ││││  │││││ ││││  0x00007f9be9275e96: mov    %r9d,0x2c(%rsp)
  0.43%    0.61%   │││││    ││││  │││││ ││││  0x00007f9be9275e9b: mov    %r8d,0x70(%rsp)
  0.03%    0.02%   │││││    ││││  │││││ ││││  0x00007f9be9275ea0: mov    %r11d,0x74(%rsp)
  0.01%            ↘││││    ││││  │││││ ││││  0x00007f9be9275ea5: mov    0x34(%rsp),%r11d
  0.11%    0.12%    ││││    ││││  │││││ ││││  0x00007f9be9275eaa: movzbl 0x18(%r12,%r11,8),%r8d  ; implicit exception: dispatches to 0x00007f9be9277a1a
  0.46%    0.47%    ││││    ││││  │││││ ││││  0x00007f9be9275eb0: shl    $0x3,%r11          ;*aload
                    ││││    ││││  │││││ ││││                                                ; - com.google.re2j.Machine::match@145 (line 213)
  0.03%    0.05%    ││││    ││││  │││││ ││││  0x00007f9be9275eb4: mov    %r11,0x20(%rsp)
  0.01%    0.01%    ││││    ││││  │││││ ││││  0x00007f9be9275eb9: test   %r8d,%r8d
                    ││││    ││││╭ │││││ ││││  0x00007f9be9275ebc: je     0x00007f9be9275f0a  ;*ifeq
                    ││││    │││││ │││││ ││││                                                ; - com.google.re2j.Machine::match@150 (line 213)
  0.03%    0.01%    ││││    │││││ │││││ ││││  0x00007f9be9275ebe: mov    0x58(%rsp),%r8d
  0.28%    0.24%    ││││    │││││ │││││ ││││  0x00007f9be9275ec3: test   %r8d,%r8d
                    ││││    │││││ │││││ ││││  0x00007f9be9275ec6: jne    0x00007f9be9276b4d  ;*ifeq
                    ││││    │││││ │││││ ││││                                                ; - com.google.re2j.Machine::match@157 (line 214)
  0.01%             ││││    │││││ │││││ ││││  0x00007f9be9275ecc: test   %eax,%eax
                    ││││    │││││ │││││ ││││  0x00007f9be9275ece: jne    0x00007f9be9276ba9  ;*ifeq
                    ││││    │││││ │││││ ││││                                                ; - com.google.re2j.Machine::match@171 (line 218)
                    ││││    │││││ │││││ ││││  0x00007f9be9275ed4: mov    0x24(%r12,%rsi,8),%r11d  ;*getfield prefix
                    ││││    │││││ │││││ ││││                                                ; - com.google.re2j.Machine::match@181 (line 222)
                    ││││    │││││ │││││ ││││                                                ; implicit exception: dispatches to 0x00007f9be9277a5d
  0.02%    0.04%    ││││    │││││ │││││ ││││  0x00007f9be9275ed9: mov    %r11d,%ecx
  0.21%    0.16%    ││││    │││││ │││││ ││││  0x00007f9be9275edc: mov    0xc(%r12,%r11,8),%r11d  ;*getfield value
                    ││││    │││││ │││││ ││││                                                ; - java.lang.String::isEmpty@1 (line 635)
                    ││││    │││││ │││││ ││││                                                ; - com.google.re2j.Machine::match@184 (line 222)
                    ││││    │││││ │││││ ││││                                                ; implicit exception: dispatches to 0x00007f9be9277a6d
  0.01%    0.02%    ││││    │││││ │││││ ││││  0x00007f9be9275ee1: vmovd  %r11d,%xmm0
                    ││││    │││││ │││││ ││││  0x00007f9be9275ee6: mov    0xc(%r12,%r11,8),%r11d  ;*arraylength
                    ││││    │││││ │││││ ││││                                                ; - java.lang.String::isEmpty@4 (line 635)
                    ││││    │││││ │││││ ││││                                                ; - com.google.re2j.Machine::match@184 (line 222)
                    ││││    │││││ │││││ ││││                                                ; implicit exception: dispatches to 0x00007f9be9277a7d
  0.09%    0.08%    ││││    │││││ │││││ ││││  0x00007f9be9275eeb: mov    %r11d,0x5c(%rsp)
  0.20%    0.15%    ││││    │││││ │││││ ││││  0x00007f9be9275ef0: test   %r11d,%r11d
                    ││││    │││││ │││││ ││││  0x00007f9be9275ef3: jne    0x00007f9be9276153  ;*ifne
                    ││││    │││││ │││││ ││││                                                ; - com.google.re2j.Machine::match@187 (line 222)
           0.01%    ││││    │││││ │││││ ││││  0x00007f9be9275ef9: mov    %r10d,0x60(%rsp)
                    ││││    │││││ │││││ ││││  0x00007f9be9275efe: mov    0x64(%rsp),%r10d
  0.02%    0.01%    ││││    │││││ │││││ ││││  0x00007f9be9275f03: mov    %r10d,0x5c(%rsp)
  0.24%    0.10%    ││││    │││││╭│││││ ││││  0x00007f9be9275f08: jmp    0x00007f9be9275f19
  0.10%    0.11%    ││││    ││││↘││││││ ││││  0x00007f9be9275f0a: mov    %r10d,0x60(%rsp)
  0.26%    0.19%    ││││    ││││ ││││││ ││││  0x00007f9be9275f0f: mov    0x64(%rsp),%r11d
  0.02%    0.02%    ││││    ││││ ││││││ ││││  0x00007f9be9275f14: mov    %r11d,0x5c(%rsp)   ;*iload_3
                    ││││    ││││ ││││││ ││││                                                ; - com.google.re2j.Machine::match@276 (line 239)
  0.00%    0.00%    ││││    ││││ ↘│││││ ││││  0x00007f9be9275f19: test   %eax,%eax
                    ││││    ││││  │││││ ││││  0x00007f9be9275f1b: jne    0x00007f9be9276669  ;*ifne
                    ││││    ││││  │││││ ││││                                                ; - com.google.re2j.Machine::match@288 (line 239)
  0.09%    0.12%    ││││    ││││  │││││ ││││  0x00007f9be9275f21: vmovd  %xmm3,%r10d
  0.29%    0.25%    ││││    ││││  │││││ ││││  0x00007f9be9275f26: test   %r10d,%r10d
                    ││││    ││││  │││││ ││││  0x00007f9be9275f29: jne    0x00007f9be92767f1  ;*ifeq
                    ││││    ││││  │││││ ││││                                                ; - com.google.re2j.Machine::match@295 (line 242)
  0.27%    0.03%    ││││    ││││  │││││ ││││  0x00007f9be9275f2f: mov    0x14(%rsp),%r11d
                    ││││    ││││  │││││ ││││  0x00007f9be9275f34: cmp    $0xf8019a09,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$Alt5Inst&apos;)}
                    ││││    ││││  ╰││││ ││││  0x00007f9be9275f3b: je     0x00007f9be9275c61
  0.07%    0.05%    ││││    ││││   ││││ ││││  0x00007f9be9275f41: cmp    $0xf8019909,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                    ││││    ││││   ││││ ││││  0x00007f9be9275f48: jne    0x00007f9be9276851
  0.27%    0.17%    ││││    ││││   ││││ ││││  0x00007f9be9275f4e: mov    0x18(%rsp),%r10    ;*invokevirtual add
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.03%             ││││    ││││   ││││ ││││  0x00007f9be9275f53: mov    %r10,0x70(%rsp)
                    ││││    ││││   ││││ ││││  0x00007f9be9275f58: mov    0x18(%r10),%ecx    ;*getfield pc
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.10%    0.06%    ││││    ││││   ││││ ││││  0x00007f9be9275f5c: cmp    $0x40,%ecx
                    ││││    ││││   ││││ ││││  0x00007f9be9275f5f: jg     0x00007f9be9276a35  ;*if_icmpgt
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.23%    0.12%    ││││    ││││   ││││ ││││  0x00007f9be9275f65: mov    $0x1,%r9d
  0.03%             ││││    ││││   ││││ ││││  0x00007f9be9275f6b: shl    %cl,%r9            ;*lshl
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.26%    0.06%    ││││    ││││   ││││ ││││  0x00007f9be9275f6e: mov    0x34(%rsp),%r10d
  0.00%             ││││    ││││   ││││ ││││  0x00007f9be9275f73: mov    0x10(%r12,%r10,8),%rbx  ;*getfield pcsl
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
                    ││││    ││││   ││││ ││││  0x00007f9be9275f78: mov    %rbx,%r10
  0.08%    0.01%    ││││    ││││   ││││ ││││  0x00007f9be9275f7b: and    %r9,%r10           ;*land
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.22%    0.02%    ││││    ││││   ││││ ││││  0x00007f9be9275f7e: test   %r10,%r10
                    ││││    ││││   ││││ ││││  0x00007f9be9275f81: jne    0x00007f9be927655c  ;*ifeq
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.03%    0.01%    ││││    ││││   ││││ ││││  0x00007f9be9275f87: xor    %ebp,%ebp          ;*ireturn
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
                    ││││    ││││   ││││ ││││  0x00007f9be9275f89: test   %r10,%r10
                    ││││    ││││   ││││ ││││  0x00007f9be9275f8c: jne    0x00007f9be9276a91  ;*ifeq
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.06%    0.01%    ││││    ││││   ││││ ││││  0x00007f9be9275f92: cmp    $0x40,%ecx
                    ││││    ││││   ││││ ││││  0x00007f9be9275f95: jge    0x00007f9be9276af1  ;*if_icmpge
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.23%    0.02%    ││││    ││││   ││││ ││││  0x00007f9be9275f9b: mov    0x34(%rsp),%r11d
  0.03%    0.00%    ││││    ││││   ││││ ││││  0x00007f9be9275fa0: mov    %r12b,0x18(%r12,%r11,8)  ;*putfield empty
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.01%    0.01%    ││││    ││││   ││││ ││││  0x00007f9be9275fa5: mov    0x20(%r12,%r11,8),%r8d  ;*getfield denseThreadsInstructions
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.05%    0.02%    ││││    ││││   ││││ ││││  0x00007f9be9275faa: mov    0xc(%r12,%r11,8),%ebp  ;*getfield size
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.15%    0.07%    ││││    ││││   ││││ ││││  0x00007f9be9275faf: or     %rbx,%r9
  0.02%    0.00%    ││││    ││││   ││││ ││││  0x00007f9be9275fb2: mov    %r9,0x10(%r12,%r11,8)  ;*putfield pcsl
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.00%    0.00%    ││││    ││││   ││││ ││││  0x00007f9be9275fb7: mov    %ebp,%r11d
  0.05%    0.01%    ││││    ││││   ││││ ││││  0x00007f9be9275fba: inc    %r11d
  0.20%    0.16%    ││││    ││││   ││││ ││││  0x00007f9be9275fbd: mov    0x34(%rsp),%r9d
  0.01%    0.03%    ││││    ││││   ││││ ││││  0x00007f9be9275fc2: mov    %r11d,0xc(%r12,%r9,8)  ;*putfield size
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.01%    0.01%    ││││    ││││   ││││ ││││  0x00007f9be9275fc7: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x00007f9be9277a4d
  0.04%    0.06%    ││││    ││││   ││││ ││││  0x00007f9be9275fcc: cmp    %r11d,%ebp
                    ││││    ││││   ││││ ││││  0x00007f9be9275fcf: jae    0x00007f9be9276785
  0.20%    0.22%    ││││    ││││   ││││ ││││  0x00007f9be9275fd5: mov    0x8(%r12,%r8,8),%r11d
  0.04%    0.01%    ││││    ││││   ││││ ││││  0x00007f9be9275fda: cmp    $0xf8019807,%r11d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                    ││││    ││││   ││││ ││││  0x00007f9be9275fe1: jne    0x00007f9be9276899
           0.00%    ││││    ││││   ││││ ││││  0x00007f9be9275fe7: mov    0x70(%rsp),%r10
  0.07%    0.08%    ││││    ││││   ││││ ││││  0x00007f9be9275fec: mov    %r10,%r11
  0.23%    0.19%    ││││    ││││   ││││ ││││  0x00007f9be9275fef: shr    $0x3,%r11          ;*aastore
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.01%    0.00%    ││││    ││││   ││││ ││││  0x00007f9be9275ff3: lea    (%r12,%r8,8),%r10  ;*getfield denseThreadsInstructions
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
           0.00%    ││││    ││││   ││││ ││││  0x00007f9be9275ff7: lea    0x10(%r10,%rbp,4),%r10
  0.05%    0.08%    ││││    ││││   ││││ ││││  0x00007f9be9275ffc: mov    %r11d,(%r10)
  0.21%    0.19%    ││││    ││││   ││││ ││││  0x00007f9be9275fff: shr    $0x9,%r10
  0.01%             ││││    ││││   ││││ ││││  0x00007f9be9276003: movabs $0x7f9bf9e0b000,%r11
  0.00%             ││││    ││││   ││││ ││││  0x00007f9be927600d: mov    %r12b,(%r11,%r10,1)  ;*aastore
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.13%    0.14%    ││││    ││││   ╰│││ ││││  0x00007f9be9276011: jmpq   0x00007f9be9275c99
  0.00%    0.00%    ↘│││    ││││    │││ ││││  0x00007f9be9276016: mov    $0x5,%r8d
                     │││    ││││    ╰││ ││││  0x00007f9be927601c: jmpq   0x00007f9be9275ca8
  0.01%    0.00%     │↘│    ││││     ││ ││││  0x00007f9be9276021: or     $0xa,%r8d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@27 (line 180)
                     │ │    ││││     ││ ││││                                                ; - com.google.re2j.Machine::match@330 (line 247)
                     │ │    ││││     ╰│ ││││  0x00007f9be9276025: jmpq   0x00007f9be9275cbf
           0.01%     │ │    ↘│││      │ ││││  0x00007f9be927602a: mov    $0x1,%r10d
                     │ │     │││      ╰ ││││  0x00007f9be9276030: jmpq   0x00007f9be9275d5a
                     │ │     ↘││        ││││  0x00007f9be9276035: test   %ebx,%ebx
                     │ │      ││        ││││  0x00007f9be9276037: jne    0x00007f9be927646b  ;*getfield matched
                     │ │      ││        ││││                                                ; - com.google.re2j.Machine::match@455 (line 270)
  0.00%              │ │      ││        ││││  0x00007f9be927603d: mov    0x68(%rsp),%r10
           0.00%     │ │      ││        ││││  0x00007f9be9276042: movzbl 0x18(%r10),%r11d   ; implicit exception: dispatches to 0x00007f9be9277af5
  0.02%              │ │      ││        ││││  0x00007f9be9276047: test   %r11d,%r11d
                     │ │      ││       ╭││││  0x00007f9be927604a: jne    0x00007f9be9276065  ;*ifeq
                     │ │      ││       │││││                                                ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                     │ │      ││       │││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                     │ │      ││       │││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                     │ │      ││       │││││                                                ; - com.google.re2j.Machine::match@451 (line 269)
                     │ │      ││       │││││  0x00007f9be927604c: movb   $0x1,0x18(%r10)    ;*putfield empty
                     │ │      ││       │││││                                                ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                     │ │      ││       │││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                     │ │      ││       │││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                     │ │      ││       │││││                                                ; - com.google.re2j.Machine::match@451 (line 269)
                     │ │      ││       │││││  0x00007f9be9276051: mov    0x1c(%r10),%ebp    ;*getfield pcs
                     │ │      ││       │││││                                                ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                     │ │      ││       │││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                     │ │      ││       │││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                     │ │      ││       │││││                                                ; - com.google.re2j.Machine::match@451 (line 269)
                     │ │      ││       │││││  0x00007f9be9276055: mov    %r12d,0xc(%r10)    ;*putfield size
                     │ │      ││       │││││                                                ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                     │ │      ││       │││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                     │ │      ││       │││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                     │ │      ││       │││││                                                ; - com.google.re2j.Machine::match@451 (line 269)
                     │ │      ││       │││││  0x00007f9be9276059: mov    %r12,0x10(%r10)    ;*putfield pcsl
                     │ │      ││       │││││                                                ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                     │ │      ││       │││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                     │ │      ││       │││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                     │ │      ││       │││││                                                ; - com.google.re2j.Machine::match@451 (line 269)
  0.01%              │ │      ││       │││││  0x00007f9be927605d: test   %ebp,%ebp
                     │ │      ││       │││││  0x00007f9be927605f: jne    0x00007f9be92773cd  ;*if_icmpne
                     │ │      ││       │││││                                                ; - com.google.re2j.Machine::match@12 (line 183)
           0.00%     │ │      ││       ↘││││  0x00007f9be9276065: add    $0x90,%rsp
  0.00%              │ │      ││        ││││  0x00007f9be927606c: pop    %rbp
                     │ │      ││        ││││  0x00007f9be927606d: test   %eax,0x1818cf8d(%rip)        # 0x00007f9c01403000
                     │ │      ││        ││││                                                ;   {poll_return}
                     │ │      ││        ││││  0x00007f9be9276073: retq   
                     │ │      ↘│        ││││  0x00007f9be9276074: mov    0x30(%rsp),%ecx
           0.00%     │ │       │        ││││  0x00007f9be9276078: mov    $0xffffffff,%r9d
                     │ │       │        ╰│││  0x00007f9be927607e: jmpq   0x00007f9be9275e56
  0.03%    0.02%     │ │       ↘         │││  0x00007f9be9276083: mov    $0xffffffff,%r9d
  0.02%    0.00%     │ │                 │││  0x00007f9be9276089: xor    %ecx,%ecx
                     │ │                 ╰││  0x00007f9be927608b: jmpq   0x00007f9be9275e56
                     ↘ │                  ││  0x00007f9be9276090: or     $0x1,%r8d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@18 (line 177)
                       │                  ││                                                ; - com.google.re2j.Machine::match@330 (line 247)
                       │                  ╰│  0x00007f9be9276094: jmpq   0x00007f9be9275cb1
           0.01%       ↘                   │  0x00007f9be9276099: or     $0x2,%r8d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@37 (line 183)
                                           │                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.01%    0.01%                           ╰  0x00007f9be927609d: jmpq   0x00007f9be9275cc9
                                              0x00007f9be92760a2: data16 nopw 0x0(%rax,%rax,1)
                                              0x00007f9be92760ac: data16 data16 xchg %ax,%ax
  0.00%    0.00%                              0x00007f9be92760b0: mov    %r9d,%r10d
                                              0x00007f9be92760b3: jmpq   0x00007f9be92762aa
                                              0x00007f9be92760b8: add    $0x2,%r10d
                                              0x00007f9be92760bc: mov    %r10d,%r9d
                                              0x00007f9be92760bf: inc    %r9d
                                              0x00007f9be92760c2: jmp    0x00007f9be92760d4
                                              0x00007f9be92760c4: mov    %r10d,%r9d
                                              0x00007f9be92760c7: add    $0x2,%r9d
                                              0x00007f9be92760cb: jmp    0x00007f9be92760d1
                                              0x00007f9be92760cd: add    $0x2,%r10d
                                              0x00007f9be92760d1: inc    %r10d              ;*iinc
....................................................................................................
 28.63%   28.13%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 548 (195 bytes) 

                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Machine::step@214 (line 319)
                                                                   ;   {optimized virtual_call}
                     0x00007f9be9253920: test   %rax,%rax
                     0x00007f9be9253923: jne    0x00007f9be9254dbd
                     0x00007f9be9253929: mov    0x48(%rsp),%r11    ;*synchronization entry
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.00%    0.00%     0x00007f9be925392e: mov    0x28(%rsp),%r14
  0.12%    0.14%     0x00007f9be9253933: mov    0xac(%rsp),%eax
  0.23%    0.24%     0x00007f9be925393a: mov    0x30(%rsp),%r13
  0.01%    0.01%     0x00007f9be925393f: mov    0xa4(%rsp),%r10d   ;*synchronization entry
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.00%    0.01%     0x00007f9be9253947: mov    0xa8(%rsp),%r8d
  0.09%    0.16%     0x00007f9be925394f: mov    0xb0(%rsp),%ebx    ;*aload
                                                                   ; - com.google.re2j.Machine::step@219 (line 322)
  1.32%    1.57%     0x00007f9be9253956: inc    %r10d              ;*iinc
                                                                   ; - com.google.re2j.Machine::step@230 (line 288)
  0.11%    0.19%     0x00007f9be9253959: cmp    %eax,%r10d
                     0x00007f9be925395c: jge    0x00007f9be9253a3d
  0.98%    0.92%     0x00007f9be9253962: mov    %r11,%r9
  0.08%    0.13%     0x00007f9be9253965: mov    %r8d,0xa8(%rsp)
  1.19%    1.16%     0x00007f9be925396d: mov    %ebx,0xb0(%rsp)    ;*iload
                                                                   ; - com.google.re2j.Machine::step@43 (line 291)
  0.29%    0.34%     0x00007f9be9253974: mov    0x10(%r13,%r10,4),%r8d  ;*aaload
                                                                   ; - com.google.re2j.Machine::step@99 (line 301)
  1.29%    1.30%     0x00007f9be9253979: mov    0xc(%r12,%r8,8),%r11d  ;*getfield op
                                                                   ; - com.google.re2j.Machine::step@104 (line 303)
                                                                   ; implicit exception: dispatches to 0x00007f9be9254e29
  2.27%    2.34%     0x00007f9be925397e: cmp    $0x6,%r11d
                     0x00007f9be9253982: je     0x00007f9be9253a85  ;*if_icmpne
                                                                   ; - com.google.re2j.Machine::step@109 (line 303)
  1.77%    2.20%     0x00007f9be9253988: cmp    $0xa,%r11d
                     0x00007f9be925398c: je     0x00007f9be925349d  ;*if_icmpne
                                                                   ; - com.google.re2j.Inst::matchRune@6 (line 90)
                                                                   ; - com.google.re2j.Machine::step@191 (line 318)
  0.63%    0.79%     0x00007f9be9253992: cmp    $0xb,%r11d
                     0x00007f9be9253996: je     0x00007f9be9253b2a  ;*if_icmpne
                                                                   ; - com.google.re2j.Inst::matchRune@17 (line 94)
                                                                   ; - com.google.re2j.Machine::step@191 (line 318)
  1.47%    1.70%     0x00007f9be925399c: mov    0x1c(%r12,%r8,8),%ecx  ;*getfield f0
                                                                   ; - com.google.re2j.Inst::matchRune@42 (line 99)
                                                                   ; - com.google.re2j.Machine::step@191 (line 318)
  0.04%    0.06%     0x00007f9be92539a1: cmp    $0x9,%r11d
                  ╭  0x00007f9be92539a5: jne    0x00007f9be92539b9  ;*if_icmpne
                  │                                                ; - com.google.re2j.Inst::matchRune@38 (line 98)
                  │                                                ; - com.google.re2j.Machine::step@191 (line 318)
  0.28%    0.19%  │  0x00007f9be92539a7: cmp    0x18(%rsp),%ecx
                  │  0x00007f9be92539ab: je     0x00007f9be9253a7a  ;*if_icmpne
                  │                                                ; - com.google.re2j.Inst::matchRune@46 (line 99)
                  │                                                ; - com.google.re2j.Machine::step@191 (line 318)
  0.04%    0.04%  │  0x00007f9be92539b1: xor    %r11d,%r11d
  0.28%    0.25%  │  0x00007f9be92539b4: jmpq   0x00007f9be92533f3
  0.79%    0.95%  ↘  0x00007f9be92539b9: cmp    $0xc,%r11d
                     0x00007f9be92539bd: jne    0x00007f9be9253b59  ;*if_icmpne
                                                                   ; - com.google.re2j.Inst::matchRune@61 (line 102)
                                                                   ; - com.google.re2j.Machine::step@191 (line 318)
  1.29%    1.40%     0x00007f9be92539c3: cmp    0x18(%rsp),%ecx
                     0x00007f9be92539c7: je     0x00007f9be9253a6f  ;*if_icmpeq
                                                                   ; - com.google.re2j.Inst::matchRune@69 (line 103)
                                                                   ; - com.google.re2j.Machine::step@191 (line 318)
  0.82%    0.94%     0x00007f9be92539cd: mov    0x20(%r12,%r8,8),%r11d  ;*getfield f1
                                                                   ; - com.google.re2j.Inst::matchRune@73 (line 103)
                                                                   ; - com.google.re2j.Machine::step@191 (line 318)
  0.04%    0.06%     0x00007f9be92539d2: cmp    0x18(%rsp),%r11d
                     0x00007f9be92539d7: je     0x00007f9be9253a6f  ;*if_icmpeq
                                                                   ; - com.google.re2j.Inst::matchRune@77 (line 103)
                                                                   ; - com.google.re2j.Machine::step@191 (line 318)
  1.74%    1.84%     0x00007f9be92539dd: mov    0x24(%r12,%r8,8),%ebp  ;*getfield f2
                                                                   ; - com.google.re2j.Inst::matchRune@81 (line 103)
                                                                   ; - com.google.re2j.Machine::step@191 (line 318)
  0.31%    0.31%     0x00007f9be92539e2: cmp    0x18(%rsp),%ebp
                     0x00007f9be92539e6: je     0x00007f9be9253b89  ;*if_icmpeq
                                                                   ; - com.google.re2j.Inst::matchRune@85 (line 103)
                                                                   ; - com.google.re2j.Machine::step@191 (line 318)
  1.72%    1.86%     0x00007f9be92539ec: mov    0x28(%r12,%r8,8),%ebp  ;*getfield f3
                                                                   ; - com.google.re2j.Inst::matchRune@89 (line 103)
                                                                   ; - com.google.re2j.Machine::step@191 (line 318)
  0.03%    0.04%     0x00007f9be92539f1: cmp    0x18(%rsp),%ebp
                     0x00007f9be92539f5: jne    0x00007f9be92533f0  ;*if_icmpne
                                                                   ; - com.google.re2j.Inst::matchRune@93 (line 103)
                                                                   ; - com.google.re2j.Machine::step@191 (line 318)
                     0x00007f9be92539fb: mov    $0xffffff65,%esi
                     0x00007f9be9253a00: mov    %r10d,0xa4(%rsp)
                     0x00007f9be9253a08: mov    %r8d,0xac(%rsp)
                     0x00007f9be9253a10: mov    %r14,0x28(%rsp)
                     0x00007f9be9253a15: mov    %r9,0x30(%rsp)
....................................................................................................
 19.27%   21.15%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 548 (1013 bytes) 

                     0x00007f9be9253480: mov    %r11d,(%rdx)
                     0x00007f9be9253483: shr    $0x9,%r10
                     0x00007f9be9253487: movabs $0x7f9bf9e0b000,%r11
                     0x00007f9be9253491: mov    %r12b,(%r11,%r10,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
                     0x00007f9be9253495: mov    %r13,%r11
                     0x00007f9be9253498: jmpq   0x00007f9be925392e
  0.22%    0.18%     0x00007f9be925349d: mov    0x2c(%r12,%r8,8),%r11d  ;*getfield outInst
                                                                   ; - com.google.re2j.Machine::step@199 (line 319)
  0.75%    0.68%     0x00007f9be92534a2: mov    0x8(%r12,%r11,8),%ebx  ; implicit exception: dispatches to 0x00007f9be9254e39
  1.22%    1.10%     0x00007f9be92534a7: lea    (%r12,%r11,8),%r8
  0.00%              0x00007f9be92534ab: cmp    $0xf8019843,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                  ╭  0x00007f9be92534b1: je     0x00007f9be9253567
  0.07%    0.03%  │  0x00007f9be92534b7: cmp    $0xf8019909,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007f9be92534bd: jne    0x00007f9be92542a9  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
  0.03%    0.01%  │  0x00007f9be92534c3: mov    0x18(%r8),%edx     ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
                  │  0x00007f9be92534c7: mov    %r9,%r11
                  │  0x00007f9be92534ca: mov    0x10(%r9),%r9      ;*getfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
                  │                                                ; implicit exception: dispatches to 0x00007f9be9254f01
  0.03%    0.02%  │  0x00007f9be92534ce: cmp    $0x40,%edx
                  │  0x00007f9be92534d1: jg     0x00007f9be9254989  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
  0.04%    0.03%  │  0x00007f9be92534d7: mov    $0x1,%ebx
                  │  0x00007f9be92534dc: mov    %edx,%ecx
                  │  0x00007f9be92534de: shl    %cl,%rbx           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
  0.19%    0.09%  │  0x00007f9be92534e1: mov    %r9,%rcx
                  │  0x00007f9be92534e4: and    %rbx,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
  0.00%    0.01%  │  0x00007f9be92534e7: test   %rcx,%rcx
                  │  0x00007f9be92534ea: jne    0x00007f9be9253b07  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
  0.03%    0.02%  │  0x00007f9be92534f0: xor    %ebp,%ebp          ;*ireturn
                  │                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
  0.03%    0.02%  │  0x00007f9be92534f2: test   %rcx,%rcx
                  │  0x00007f9be92534f5: jne    0x00007f9be9254a11  ;*ifeq
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
  0.08%    0.02%  │  0x00007f9be92534fb: cmp    $0x40,%edx
                  │  0x00007f9be92534fe: jge    0x00007f9be9254a81  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
  0.00%           │  0x00007f9be9253504: mov    %r12b,0x18(%r11)   ;*putfield empty
                  │                                                ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
  0.00%           │  0x00007f9be9253508: or     %r9,%rbx
  0.01%    0.00%  │  0x00007f9be925350b: mov    %rbx,0x10(%r11)    ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
  0.05%    0.04%  │  0x00007f9be925350f: mov    0x20(%r11),%edx    ;*getfield denseThreadsInstructions
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
  0.01%    0.02%  │  0x00007f9be9253513: mov    0xc(%r11),%ebp     ;*getfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
  0.03%    0.01%  │  0x00007f9be9253517: mov    %ebp,%ecx
  0.01%    0.01%  │  0x00007f9be9253519: inc    %ecx
  0.11%    0.04%  │  0x00007f9be925351b: mov    %ecx,0xc(%r11)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
  0.05%    0.00%  │  0x00007f9be925351f: mov    0xc(%r12,%rdx,8),%ecx  ; implicit exception: dispatches to 0x00007f9be9254f15
  0.01%    0.00%  │  0x00007f9be9253524: cmp    %ecx,%ebp
                  │  0x00007f9be9253526: jae    0x00007f9be9254221
  0.04%    0.03%  │  0x00007f9be925352c: mov    0x8(%r12,%rdx,8),%ecx
  0.02%    0.00%  │  0x00007f9be9253531: cmp    $0xf8019807,%ecx   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                  │  0x00007f9be9253537: jne    0x00007f9be925431d  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
  0.05%    0.00%  │  0x00007f9be925353d: lea    (%r12,%rdx,8),%r9  ;*getfield denseThreadsInstructions
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
                  │  0x00007f9be9253541: lea    0x10(%r9,%rbp,4),%r9
  0.04%    0.02%  │  0x00007f9be9253546: shr    $0x3,%r8
  0.02%    0.00%  │  0x00007f9be925354a: mov    %r8d,(%r9)
  0.33%    0.10%  │  0x00007f9be925354d: mov    %r9,%r8
                  │  0x00007f9be9253550: shr    $0x9,%r8
           0.00%  │  0x00007f9be9253554: movabs $0x7f9bf9e0b000,%r9
  0.01%    0.01%  │  0x00007f9be925355e: mov    %r12b,(%r9,%r8,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
  0.09%    0.12%  │  0x00007f9be9253562: jmpq   0x00007f9be9253947  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
  0.32%    0.34%  ↘  0x00007f9be9253567: mov    0x18(%r8),%edx     ;*getfield pc
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.01%    0.01%     0x00007f9be925356b: mov    %r9,%r11
                     0x00007f9be925356e: mov    0x10(%r9),%r9      ;*getfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
                                                                   ; implicit exception: dispatches to 0x00007f9be9254e6d
  0.00%    0.00%     0x00007f9be9253572: cmp    $0x40,%edx
                     0x00007f9be9253575: jg     0x00007f9be9253fa9  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.31%    0.29%     0x00007f9be925357b: mov    $0x1,%ebx
           0.01%     0x00007f9be9253580: mov    %edx,%ecx
  0.01%              0x00007f9be9253582: shl    %cl,%rbx           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.64%    0.62%     0x00007f9be9253585: mov    %r9,%rcx
                     0x00007f9be9253588: and    %rbx,%rcx
           0.01%     0x00007f9be925358b: test   %rcx,%rcx
                     0x00007f9be925358e: jne    0x00007f9be9253947  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.17%    0.12%     0x00007f9be9253594: cmp    $0x40,%edx
                     0x00007f9be9253597: jge    0x00007f9be9254025  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.14%    0.15%     0x00007f9be925359d: mov    %r12b,0x18(%r11)   ;*putfield empty
                                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.00%    0.01%     0x00007f9be92535a1: mov    0x2c(%r8),%ebp     ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
                     0x00007f9be92535a5: or     %r9,%rbx           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.17%    0.09%     0x00007f9be92535a8: mov    %rbx,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.13%    0.09%     0x00007f9be92535ac: mov    0x8(%r12,%rbp,8),%esi  ; implicit exception: dispatches to 0x00007f9be9254e81
  0.26%    0.21%     0x00007f9be92535b1: cmp    $0xf8019909,%esi   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007f9be92535b7: jne    0x00007f9be9253c35
  0.30%    0.21%     0x00007f9be92535bd: lea    (%r12,%rbp,8),%r9  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.01%              0x00007f9be92535c1: mov    0x18(%r9),%ecx     ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.04%    0.04%     0x00007f9be92535c5: cmp    $0x40,%ecx
                     0x00007f9be92535c8: jg     0x00007f9be92540a1  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.23%    0.15%     0x00007f9be92535ce: mov    $0x1,%edi
  0.05%    0.04%     0x00007f9be92535d3: shl    %cl,%rdi           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.55%    0.30%     0x00007f9be92535d6: mov    %rbx,%rdx
  0.01%    0.01%     0x00007f9be92535d9: and    %rdi,%rdx          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.00%    0.00%     0x00007f9be92535dc: test   %rdx,%rdx
                     0x00007f9be92535df: jne    0x00007f9be9253ad7  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.20%    0.10%     0x00007f9be92535e5: xor    %ebp,%ebp          ;*ireturn
                                                                   ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.08%    0.03%     0x00007f9be92535e7: test   %rdx,%rdx
                     0x00007f9be92535ea: jne    0x00007f9be9254121  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.18%    0.08%     0x00007f9be92535f0: cmp    $0x40,%ecx
                     0x00007f9be92535f3: jge    0x00007f9be92541a1  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
                     0x00007f9be92535f9: or     %rdi,%rbx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.02%    0.00%     0x00007f9be92535fc: mov    %rbx,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.10%    0.02%     0x00007f9be9253600: mov    0x20(%r11),%edi    ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.17%    0.15%     0x00007f9be9253604: mov    0xc(%r11),%ecx     ;*getfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
           0.00%     0x00007f9be9253608: mov    %ecx,%edx
                     0x00007f9be925360a: inc    %edx               ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.12%    0.06%     0x00007f9be925360c: mov    %edx,0xc(%r11)     ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.19%    0.10%     0x00007f9be9253610: mov    0xc(%r12,%rdi,8),%esi  ; implicit exception: dispatches to 0x00007f9be9254e95
  0.01%              0x00007f9be9253615: cmp    %esi,%ecx
                     0x00007f9be9253617: jae    0x00007f9be9253bb5
  0.00%              0x00007f9be925361d: vmovd  %edx,%xmm2
  0.15%    0.08%     0x00007f9be9253621: mov    %ecx,0xc(%rsp)
  0.19%    0.04%     0x00007f9be9253625: vmovd  %edi,%xmm0
                     0x00007f9be9253629: mov    %r10d,0xa4(%rsp)
  0.03%    0.01%     0x00007f9be9253631: mov    %r13,0x30(%rsp)
  0.11%    0.02%     0x00007f9be9253636: mov    %eax,0xac(%rsp)
  0.19%    0.06%     0x00007f9be925363d: mov    %r11,%r13
           0.00%     0x00007f9be9253640: mov    %r14,0x28(%rsp)
  0.01%    0.00%     0x00007f9be9253645: mov    0x8(%r12,%rdi,8),%r11d
  0.12%    0.02%     0x00007f9be925364a: cmp    $0xf8019807,%r11d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                     0x00007f9be9253651: jne    0x00007f9be9253cb1  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.12%    0.06%     0x00007f9be9253657: mov    0x34(%r8),%r10d    ;*getfield inst2
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@43 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
                     0x00007f9be925365b: mov    %r10d,%ecx
  0.00%              0x00007f9be925365e: mov    %r9,%r10
  0.13%    0.08%     0x00007f9be9253661: shr    $0x3,%r10          ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.19%    0.19%     0x00007f9be9253665: lea    (%r12,%rdi,8),%r9  ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
                     0x00007f9be9253669: mov    0xc(%rsp),%r11d
  0.01%    0.03%     0x00007f9be925366e: lea    0x10(%r9,%r11,4),%r11
  0.11%    0.13%     0x00007f9be9253673: mov    %r10d,(%r11)
  0.23%    0.21%     0x00007f9be9253676: mov    %r11,%r10
                     0x00007f9be9253679: shr    $0x9,%r10
                     0x00007f9be925367d: movabs $0x7f9bf9e0b000,%r11
  0.09%    0.13%     0x00007f9be9253687: mov    %r12b,(%r11,%r10,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.25%    0.04%     0x00007f9be925368b: mov    %ecx,%r10d
                     0x00007f9be925368e: mov    0x8(%r12,%r10,8),%r8d  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
                                                                   ; implicit exception: dispatches to 0x00007f9be9254eb1
                     0x00007f9be9253693: movslq 0xc(%rsp),%r10
  0.15%    0.05%     0x00007f9be9253698: lea    (%r9,%r10,4),%rdi  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.16%    0.15%     0x00007f9be925369c: mov    %rdi,%rdx
                     0x00007f9be925369f: add    $0x14,%rdx         ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
                     0x00007f9be92536a3: mov    %ecx,%r10d
  0.08%    0.11%     0x00007f9be92536a6: lea    (%r12,%r10,8),%rax
  0.16%    0.18%     0x00007f9be92536aa: mov    0xc(%rsp),%r10d
                     0x00007f9be92536af: add    $0x2,%r10d         ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.00%    0.00%     0x00007f9be92536b3: cmp    $0xf8019885,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                     0x00007f9be92536ba: jne    0x00007f9be9253413  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.06%    0.07%     0x00007f9be92536c0: mov    0x18(%rax),%r11d   ;*getfield pc
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@2 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.21%    0.19%     0x00007f9be92536c4: mov    %r11d,%r14d
                     0x00007f9be92536c7: cmp    $0x40,%r11d
                     0x00007f9be92536cb: jg     0x00007f9be9254469  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.01%              0x00007f9be92536d1: mov    $0x1,%r8d
  0.12%    0.08%     0x00007f9be92536d7: mov    %r11d,%ecx
  0.21%    0.12%     0x00007f9be92536da: shl    %cl,%r8            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.09%    0.05%     0x00007f9be92536dd: mov    %rbx,%r11
  0.16%    0.14%     0x00007f9be92536e0: and    %r8,%r11           ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
                     0x00007f9be92536e3: test   %r11,%r11
                     0x00007f9be92536e6: jne    0x00007f9be9253ae1  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
           0.00%     0x00007f9be92536ec: xor    %ebp,%ebp          ;*ireturn
                                                                   ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.10%    0.10%     0x00007f9be92536ee: test   %r11,%r11
                     0x00007f9be92536f1: jne    0x00007f9be92544e9  ;*ifeq
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@8 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.16%    0.15%     0x00007f9be92536f7: mov    %ecx,%r11d
                     0x00007f9be92536fa: cmp    $0x40,%r11d
                     0x00007f9be92536fe: jge    0x00007f9be9254539  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.00%    0.00%     0x00007f9be9253704: or     %r8,%rbx           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.09%    0.08%     0x00007f9be9253707: mov    %rbx,0x10(%r13)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.20%    0.08%     0x00007f9be925370b: mov    0x2c(%rax),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@82 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
                     0x00007f9be925370e: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007f9be9254ec5
  0.01%    0.01%     0x00007f9be9253713: cmp    $0xf8019843,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                     0x00007f9be925371a: jne    0x00007f9be9253ef5
  0.11%              0x00007f9be9253720: lea    (%r12,%rbp,8),%rax  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.22%    0.12%     0x00007f9be9253724: mov    0x18(%rax),%r11d   ;*getfield pc
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
                     0x00007f9be9253728: mov    %r11d,%ecx
  0.01%              0x00007f9be925372b: cmp    $0x40,%r11d
                     0x00007f9be925372f: jg     0x00007f9be9254721  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.07%    0.16%     0x00007f9be9253735: mov    $0x1,%r8d
  0.21%    0.11%     0x00007f9be925373b: shl    %cl,%r8            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.08%    0.20%     0x00007f9be925373e: mov    %rbx,%r11
  0.17%    0.25%     0x00007f9be9253741: and    %r8,%r11
                     0x00007f9be9253744: test   %r11,%r11
                     0x00007f9be9253747: jne    0x00007f9be9253af5  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.01%    0.00%     0x00007f9be925374d: mov    %ecx,%r11d
  0.08%    0.16%     0x00007f9be9253750: cmp    $0x40,%r11d
                     0x00007f9be9253754: jge    0x00007f9be92547a1  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.20%    0.22%     0x00007f9be925375a: mov    0x2c(%rax),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
                     0x00007f9be925375d: or     %r8,%rbx           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.00%    0.00%     0x00007f9be9253760: mov    %rbx,0x10(%r13)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.11%    0.13%     0x00007f9be9253764: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007f9be9254ed9
  0.21%    0.24%     0x00007f9be9253769: cmp    $0xf8019909,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007f9be9253770: jne    0x00007f9be9253f41
  0.01%    0.01%     0x00007f9be9253776: lea    (%r12,%rbp,8),%r14  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
           0.01%     0x00007f9be925377a: mov    0x18(%r14),%r11d   ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.10%    0.13%     0x00007f9be925377e: vmovd  %r11d,%xmm1
  0.24%    0.16%     0x00007f9be9253783: cmp    $0x40,%r11d
                     0x00007f9be9253787: jg     0x00007f9be9254821  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
           0.00%     0x00007f9be925378d: mov    $0x1,%r8d
                     0x00007f9be9253793: mov    %r11d,%ecx
  0.18%    0.10%     0x00007f9be9253796: shl    %cl,%r8            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.19%    0.23%     0x00007f9be9253799: mov    %rbx,%r11
  0.10%    0.13%     0x00007f9be925379c: and    %r8,%r11           ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.18%    0.19%     0x00007f9be925379f: test   %r11,%r11
                     0x00007f9be92537a2: jne    0x00007f9be9253afd  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.00%              0x00007f9be92537a8: xor    %ebp,%ebp          ;*ireturn
                                                                   ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
           0.00%     0x00007f9be92537aa: test   %r11,%r11
                     0x00007f9be92537ad: jne    0x00007f9be92548a9  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.13%    0.13%     0x00007f9be92537b3: mov    %ecx,%r11d
  0.17%    0.23%     0x00007f9be92537b6: cmp    $0x40,%r11d
                     0x00007f9be92537ba: jge    0x00007f9be9254905  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
           0.00%     0x00007f9be92537c0: mov    %r10d,0xc(%r13)    ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.00%    0.01%     0x00007f9be92537c4: or     %r8,%rbx           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.09%    0.11%     0x00007f9be92537c7: mov    %rbx,0x10(%r13)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.18%    0.20%     0x00007f9be92537cb: cmp    %esi,%r10d
                     0x00007f9be92537ce: jae    0x00007f9be9253df9  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
                     0x00007f9be92537d4: mov    0x34(%rax),%r10d   ;*getfield inst2
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@43 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.00%              0x00007f9be92537d8: mov    %rdx,%r8
  0.08%    0.14%     0x00007f9be92537db: mov    %r14,%r11
  0.17%    0.17%     0x00007f9be92537de: shr    $0x3,%r11
  0.00%              0x00007f9be92537e2: mov    %r11d,(%rdx)
  0.00%    0.00%     0x00007f9be92537e5: shr    $0x9,%r8
  0.05%    0.11%     0x00007f9be92537e9: movabs $0x7f9bf9e0b000,%r11
  0.22%    0.26%     0x00007f9be92537f3: mov    %r12b,(%r11,%r8,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.00%    0.02%     0x00007f9be92537f7: mov    0x8(%r12,%r10,8),%r11d  ; implicit exception: dispatches to 0x00007f9be9254eed
           0.00%     0x00007f9be92537fc: lea    (%r12,%r10,8),%r8
  0.12%    0.15%     0x00007f9be9253800: cmp    $0xf8019885,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                     0x00007f9be9253807: je     0x00007f9be9253897
  0.17%    0.29%     0x00007f9be925380d: cmp    $0xf8019909,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007f9be9253814: jne    0x00007f9be92543a5  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.01%    0.00%     0x00007f9be925381a: mov    0x18(%r8),%ecx     ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
           0.01%     0x00007f9be925381e: cmp    $0x40,%ecx
                     0x00007f9be9253821: jg     0x00007f9be9254c59  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.11%    0.18%     0x00007f9be9253827: mov    $0x1,%r11d
  0.18%    0.33%     0x00007f9be925382d: shl    %cl,%r11           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.06%    0.06%     0x00007f9be9253830: mov    %rbx,%r10
  0.17%    0.07%     0x00007f9be9253833: and    %r11,%r10          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.00%    0.00%     0x00007f9be9253836: test   %r10,%r10
                     0x00007f9be9253839: jne    0x00007f9be9253b1b  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
                     0x00007f9be925383f: mov    %ecx,%edx
  0.12%    0.17%     0x00007f9be9253841: mov    %r8,%rcx
  0.17%    0.21%     0x00007f9be9253844: xor    %ebp,%ebp          ;*ireturn
                                                                   ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.01%    0.01%     0x00007f9be9253846: test   %r10,%r10
                     0x00007f9be9253849: jne    0x00007f9be9254cd1  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
                     0x00007f9be925384f: cmp    $0x40,%edx
                     0x00007f9be9253852: jge    0x00007f9be9254d45  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.09%    0.27%     0x00007f9be9253858: or     %r11,%rbx
  0.18%    0.29%     0x00007f9be925385b: mov    %r13,%r11
  0.01%              0x00007f9be925385e: mov    %rbx,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.03%    0.03%     0x00007f9be9253862: add    $0x18,%rdi
  0.12%    0.09%     0x00007f9be9253866: mov    %rcx,%r10
  0.16%    0.27%     0x00007f9be9253869: shr    $0x3,%r10
  0.01%    0.00%     0x00007f9be925386d: mov    %r10d,(%rdi)       ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.01%    0.03%     0x00007f9be9253870: mov    %rdi,%r10
  0.13%    0.20%     0x00007f9be9253873: mov    0xc(%rsp),%r8d
  0.18%    0.27%     0x00007f9be9253878: add    $0x3,%r8d
  0.00%    0.00%     0x00007f9be925387c: mov    %r8d,0xc(%r11)     ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.00%    0.01%     0x00007f9be9253880: shr    $0x9,%r10
  0.10%    0.06%     0x00007f9be9253884: movabs $0x7f9bf9e0b000,%r8
  0.16%    0.11%     0x00007f9be925388e: mov    %r12b,(%r8,%r10,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.04%    0.03%     0x00007f9be9253892: jmpq   0x00007f9be925392e  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
....................................................................................................
 17.92%   15.76%  <total for region 3>

....[Hottest Region 4]..............................................................................
C2, level 4, com.google.re2j.Inst$Alt5Inst::add, version 559 (867 bytes) 

                            # parm5:    [sp+0x80]   = &apos;com/google/re2j/Machine&apos;  (sp of caller)
                            # parm6:    [sp+0x88]   = boolean
                            0x00007f9be9257780: mov    0x8(%rsi),%r10d
                            0x00007f9be9257784: shl    $0x3,%r10
                            0x00007f9be9257788: cmp    %r10,%rax
                            0x00007f9be925778b: jne    0x00007f9be9045e20  ;   {runtime_call}
                            0x00007f9be9257791: data16 xchg %ax,%ax
                            0x00007f9be9257794: nopl   0x0(%rax,%rax,1)
                            0x00007f9be925779c: data16 data16 xchg %ax,%ax
                          [Verified Entry Point]
  0.05%    0.03%            0x00007f9be92577a0: mov    %eax,-0x14000(%rsp)
  0.16%    0.20%            0x00007f9be92577a7: push   %rbp
  0.06%    0.01%            0x00007f9be92577a8: sub    $0x70,%rsp         ;*synchronization entry
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@-1 (line 260)
  0.30%    0.26%            0x00007f9be92577ac: vmovd  %r9d,%xmm4
  0.01%                     0x00007f9be92577b1: vmovq  %r8,%xmm3
  0.03%    0.00%            0x00007f9be92577b6: vmovq  %rsi,%xmm2
  0.05%    0.05%            0x00007f9be92577bb: mov    %ecx,%r13d
  0.23%    0.14%            0x00007f9be92577be: mov    0x18(%rsi),%ecx    ;*getfield pc
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@2 (line 260)
  0.01%    0.01%            0x00007f9be92577c1: mov    0x10(%rdx),%r11    ;*getfield pcsl
                                                                          ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
                                                                          ; implicit exception: dispatches to 0x00007f9be92580c5
  0.02%    0.00%            0x00007f9be92577c5: cmp    $0x40,%ecx
                            0x00007f9be92577c8: jg     0x00007f9be9257cd5  ;*if_icmpgt
                                                                          ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.07%    0.08%            0x00007f9be92577ce: mov    $0x1,%esi
  0.27%    0.19%            0x00007f9be92577d3: mov    $0x1,%r9d
  0.00%    0.00%            0x00007f9be92577d9: shl    %cl,%r9            ;*lshl
                                                                          ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.37%    0.32%            0x00007f9be92577dc: mov    %r11,%r10
  0.01%    0.01%            0x00007f9be92577df: and    %r9,%r10           ;*land
                                                                          ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.02%    0.04%            0x00007f9be92577e2: test   %r10,%r10
                  ╭         0x00007f9be92577e5: jne    0x00007f9be9257b04  ;*ifeq
                  │                                                       ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                       ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.06%    0.04%  │         0x00007f9be92577eb: xor    %ebp,%ebp          ;*ireturn
                  │                                                       ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  │                                                       ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.22%    0.22%  │   ↗     0x00007f9be92577ed: test   %r10,%r10
                  │   │     0x00007f9be92577f0: jne    0x00007f9be9257d09  ;*ifeq
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@8 (line 260)
  0.00%    0.00%  │   │     0x00007f9be92577f6: cmp    $0x40,%ecx
                  │   │     0x00007f9be92577f9: jge    0x00007f9be9257d39  ;*if_icmpge
                  │   │                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.01%    0.02%  │   │     0x00007f9be92577ff: mov    %r12b,0x18(%rdx)   ;*putfield empty
                  │   │                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.05%    0.06%  │   │     0x00007f9be9257803: vmovq  %xmm2,%r10
  0.24%    0.27%  │   │     0x00007f9be9257808: mov    0x2c(%r10),%ebp    ;*getfield outInst
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@23 (line 265)
           0.01%  │   │     0x00007f9be925780c: or     %r11,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.00%    0.01%  │   │     0x00007f9be925780f: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  │   │                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.10%    0.08%  │   │     0x00007f9be9257813: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f9be92580d9
  0.31%    0.21%  │   │     0x00007f9be9257818: cmp    $0xf8019909,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │   │     0x00007f9be925781f: jne    0x00007f9be9257bb9
  0.01%    0.01%  │   │     0x00007f9be9257825: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.02%    0.02%  │   │     0x00007f9be9257829: mov    0x18(%r11),%ecx    ;*getfield pc
                  │   │                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.07%    0.10%  │   │     0x00007f9be925782d: cmp    $0x40,%ecx
                  │   │     0x00007f9be9257830: jg     0x00007f9be9257d6d  ;*if_icmpgt
                  │   │                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │   │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.25%    0.21%  │   │     0x00007f9be9257836: mov    $0x1,%r10d
                  │   │     0x00007f9be925783c: shl    %cl,%r10           ;*lshl
                  │   │                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │   │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.35%    0.40%  │   │     0x00007f9be925783f: mov    %r9,%r8
  0.00%    0.01%  │   │     0x00007f9be9257842: and    %r10,%r8           ;*land
                  │   │                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │   │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.02%    0.01%  │   │     0x00007f9be9257845: test   %r8,%r8
                  │╭  │     0x00007f9be9257848: jne    0x00007f9be9257b0e  ;*ifeq
                  ││  │                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  ││  │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││  │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.07%    0.12%  ││  │     0x00007f9be925784e: xor    %ebp,%ebp          ;*ireturn
                  ││  │                                                   ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  ││  │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││  │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.23%    0.34%  ││  │↗    0x00007f9be9257850: test   %r8,%r8
                  ││  ││    0x00007f9be9257853: jne    0x00007f9be9257da9  ;*ifeq
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.00%    0.01%  ││  ││    0x00007f9be9257859: cmp    $0x40,%ecx
                  ││  ││    0x00007f9be925785c: jge    0x00007f9be9257ddd  ;*if_icmpge
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.02%    0.04%  ││  ││    0x00007f9be9257862: or     %r10,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.08%    0.10%  ││  ││    0x00007f9be9257865: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.24%    0.23%  ││  ││    0x00007f9be9257869: mov    0x88(%rsp),%r8d
  0.02%    0.02%  ││  ││    0x00007f9be9257871: test   %r8d,%r8d
                  ││  ││    0x00007f9be9257874: jne    0x00007f9be9257e1d  ;*ifeq
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@24 (line 149)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.03%    0.02%  ││  ││    0x00007f9be925787a: mov    0xc(%rdx),%ecx     ;*getfield size
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.06%    0.11%  ││  ││    0x00007f9be925787d: mov    0x20(%rdx),%ebx    ;*getfield denseThreadsInstructions
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.19%    0.35%  ││  ││    0x00007f9be9257880: mov    %ecx,%edi
  0.02%    0.02%  ││  ││    0x00007f9be9257882: inc    %edi               ;*iadd
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.02%    0.04%  ││  ││    0x00007f9be9257884: mov    %edi,0xc(%rdx)     ;*putfield size
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.08%    0.09%  ││  ││    0x00007f9be9257887: mov    0xc(%r12,%rbx,8),%r10d  ; implicit exception: dispatches to 0x00007f9be9258101
  0.26%    0.29%  ││  ││    0x00007f9be925788c: cmp    %r10d,%ecx
                  ││  ││    0x00007f9be925788f: jae    0x00007f9be9257b3d
  0.02%    0.04%  ││  ││    0x00007f9be9257895: vmovd  %edi,%xmm0
  0.01%    0.04%  ││  ││    0x00007f9be9257899: mov    %ebx,%edi
  0.09%    0.11%  ││  ││    0x00007f9be925789b: mov    %ecx,%eax
  0.23%    0.32%  ││  ││    0x00007f9be925789d: mov    %r11,%rcx
  0.01%    0.01%  ││  ││    0x00007f9be92578a0: mov    0x88(%rsp),%r11d
  0.03%    0.05%  ││  ││    0x00007f9be92578a8: mov    0x8(%r12,%rbx,8),%r8d
  0.07%    0.06%  ││  ││    0x00007f9be92578ad: cmp    $0xf8019807,%r8d   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                  ││  ││    0x00007f9be92578b4: jne    0x00007f9be9257be9  ;*aastore
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.18%    0.25%  ││  ││    0x00007f9be92578ba: vmovq  %xmm2,%r11
  0.00%    0.01%  ││  ││    0x00007f9be92578bf: mov    0x34(%r11),%ebp    ;*getfield inst2
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@43 (line 266)
  0.03%    0.01%  ││  ││    0x00007f9be92578c3: shr    $0x3,%rcx          ;*aastore
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.07%    0.04%  ││  ││    0x00007f9be92578c7: lea    (%r12,%rbx,8),%r11  ;*getfield denseThreadsInstructions
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.23%    0.20%  ││  ││    0x00007f9be92578cb: lea    0x10(%r11,%rax,4),%r8
  0.03%    0.01%  ││  ││    0x00007f9be92578d0: mov    %ecx,(%r8)
  0.05%    0.04%  ││  ││    0x00007f9be92578d3: mov    %r8,%rcx
  0.07%    0.06%  ││  ││    0x00007f9be92578d6: shr    $0x9,%rcx
  0.18%    0.19%  ││  ││    0x00007f9be92578da: movabs $0x7f9bf9e0b000,%r8
  0.03%    0.01%  ││  ││    0x00007f9be92578e4: mov    %r12b,(%r8,%rcx,1)  ;*aastore
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.05%    0.03%  ││  ││    0x00007f9be92578e8: mov    0x8(%r12,%rbp,8),%ebx  ; implicit exception: dispatches to 0x00007f9be925811d
  0.07%    0.02%  ││  ││    0x00007f9be92578ed: cmp    $0xf8019909,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  ││  ││    0x00007f9be92578f3: jne    0x00007f9be9257c29
  0.19%    0.09%  ││  ││    0x00007f9be92578f9: lea    (%r12,%rbp,8),%r14  ;*invokevirtual add
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.01%           ││  ││    0x00007f9be92578fd: mov    0x18(%r14),%ecx    ;*getfield pc
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.08%    0.10%  ││  ││    0x00007f9be9257901: vmovd  %ecx,%xmm1
  0.06%    0.04%  ││  ││    0x00007f9be9257905: cmp    $0x40,%ecx
                  ││  ││    0x00007f9be9257908: jg     0x00007f9be9257e59  ;*if_icmpgt
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.18%    0.16%  ││  ││    0x00007f9be925790e: mov    $0x1,%ebx
  0.02%    0.00%  ││  ││    0x00007f9be9257913: shl    %cl,%rbx           ;*lshl
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.31%    0.39%  ││  ││    0x00007f9be9257916: mov    %r9,%rcx
  0.02%    0.03%  ││  ││    0x00007f9be9257919: and    %rbx,%rcx          ;*land
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.04%    0.01%  ││  ││    0x00007f9be925791c: test   %rcx,%rcx
                  ││╭ ││    0x00007f9be925791f: jne    0x00007f9be9257b18  ;*ifeq
                  │││ ││                                                  ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │││ ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││ ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.05%    0.06%  │││ ││    0x00007f9be9257925: xor    %ebp,%ebp          ;*ireturn
                  │││ ││                                                  ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  │││ ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││ ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.21%    0.08%  │││ ││↗   0x00007f9be9257927: test   %rcx,%rcx
                  │││ │││   0x00007f9be925792a: jne    0x00007f9be9257e95  ;*ifeq
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.04%    0.02%  │││ │││   0x00007f9be9257930: vmovd  %xmm1,%ecx
  0.04%    0.05%  │││ │││   0x00007f9be9257934: cmp    $0x40,%ecx
                  │││ │││   0x00007f9be9257937: jge    0x00007f9be9257ec9  ;*if_icmpge
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.09%    0.05%  │││ │││   0x00007f9be925793d: or     %rbx,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.20%    0.24%  │││ │││   0x00007f9be9257940: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.03%    0.02%  │││ │││   0x00007f9be9257944: mov    %eax,%ebx
  0.05%    0.10%  │││ │││   0x00007f9be9257946: add    $0x2,%ebx
  0.09%    0.13%  │││ │││   0x00007f9be9257949: mov    %ebx,0xc(%rdx)     ;*putfield size
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.22%    0.36%  │││ │││   0x00007f9be925794c: mov    %eax,%ebx
  0.01%    0.02%  │││ │││   0x00007f9be925794e: add    $0x4,%ebx          ;*iadd
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.04%    0.04%  │││ │││   0x00007f9be9257951: cmp    %r10d,%ebx
                  │││ │││   0x00007f9be9257954: jae    0x00007f9be9257b7d  ;*aastore
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.04%    0.09%  │││ │││   0x00007f9be925795a: vmovq  %xmm2,%r10
  0.19%    0.21%  │││ │││   0x00007f9be925795f: mov    0x38(%r10),%ebp    ;*getfield inst3
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@63 (line 267)
  0.04%    0.02%  │││ │││   0x00007f9be9257963: mov    %r14,%rcx
  0.06%    0.07%  │││ │││   0x00007f9be9257966: shr    $0x3,%rcx          ;*aastore
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.05%    0.09%  │││ │││   0x00007f9be925796a: movslq %eax,%r10
  0.14%    0.26%  │││ │││   0x00007f9be925796d: lea    (%r11,%r10,4),%rdi  ;*aastore
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.02%    0.00%  │││ │││   0x00007f9be9257971: mov    %rdi,%r10
  0.04%    0.02%  │││ │││   0x00007f9be9257974: add    $0x14,%r10
  0.08%    0.05%  │││ │││   0x00007f9be9257978: mov    %ecx,(%r10)
  0.28%    0.16%  │││ │││   0x00007f9be925797b: shr    $0x9,%r10
  0.00%    0.00%  │││ │││   0x00007f9be925797f: mov    %r12b,(%r8,%r10,1)  ;*aastore
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.06%    0.09%  │││ │││   0x00007f9be9257983: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f9be9258145
  0.09%    0.04%  │││ │││   0x00007f9be9257988: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │││ │││   0x00007f9be925798e: jne    0x00007f9be9257c55
  0.16%    0.19%  │││ │││   0x00007f9be9257994: lea    (%r12,%rbp,8),%r14  ;*invokevirtual add
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.01%    0.02%  │││ │││   0x00007f9be9257998: mov    0x18(%r14),%ecx    ;*getfield pc
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.09%    0.11%  │││ │││   0x00007f9be925799c: vmovd  %ecx,%xmm1
  0.11%    0.09%  │││ │││   0x00007f9be92579a0: cmp    $0x40,%ecx
                  │││ │││   0x00007f9be92579a3: jg     0x00007f9be9257f05  ;*if_icmpgt
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.19%    0.26%  │││ │││   0x00007f9be92579a9: mov    $0x1,%r10d
  0.01%    0.03%  │││ │││   0x00007f9be92579af: shl    %cl,%r10           ;*lshl
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.37%    0.43%  │││ │││   0x00007f9be92579b2: mov    %r9,%rcx
  0.02%    0.01%  │││ │││   0x00007f9be92579b5: and    %r10,%rcx          ;*land
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.08%    0.08%  │││ │││   0x00007f9be92579b8: test   %rcx,%rcx
                  │││╭│││   0x00007f9be92579bb: jne    0x00007f9be9257b22  ;*ifeq
                  │││││││                                                 ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │││││││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││││││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.03%    0.07%  │││││││   0x00007f9be92579c1: xor    %ebp,%ebp          ;*ireturn
                  │││││││                                                 ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  │││││││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││││││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.15%    0.18%  │││││││↗  0x00007f9be92579c3: test   %rcx,%rcx
                  ││││││││  0x00007f9be92579c6: jne    0x00007f9be9257f41  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.01%    0.02%  ││││││││  0x00007f9be92579cc: vmovd  %xmm1,%ecx
  0.04%    0.10%  ││││││││  0x00007f9be92579d0: cmp    $0x40,%ecx
                  ││││││││  0x00007f9be92579d3: jge    0x00007f9be9257f75  ;*if_icmpge
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.04%    0.07%  ││││││││  0x00007f9be92579d9: or     %r10,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.20%    0.19%  ││││││││  0x00007f9be92579dc: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.01%    0.01%  ││││││││  0x00007f9be92579e0: vmovq  %xmm2,%r10
  0.01%    0.08%  ││││││││  0x00007f9be92579e5: mov    0x3c(%r10),%ebp    ;*getfield inst4
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@83 (line 268)
  0.07%    0.11%  ││││││││  0x00007f9be92579e9: mov    %rdi,%r10
  0.17%    0.23%  ││││││││  0x00007f9be92579ec: add    $0x18,%r10
  0.01%    0.03%  ││││││││  0x00007f9be92579f0: mov    %r14,%rcx
  0.06%    0.08%  ││││││││  0x00007f9be92579f3: shr    $0x3,%rcx
  0.07%    0.09%  ││││││││  0x00007f9be92579f7: mov    %ecx,(%r10)        ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.16%    0.22%  ││││││││  0x00007f9be92579fa: mov    %eax,%ecx
  0.01%           ││││││││  0x00007f9be92579fc: add    $0x3,%ecx
  0.07%    0.05%  ││││││││  0x00007f9be92579ff: mov    %ecx,0xc(%rdx)     ;*putfield size
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.08%    0.07%  ││││││││  0x00007f9be9257a02: shr    $0x9,%r10
  0.19%    0.20%  ││││││││  0x00007f9be9257a06: mov    %r12b,(%r8,%r10,1)  ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.04%    0.03%  ││││││││  0x00007f9be9257a0a: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f9be925816d
  0.08%    0.05%  ││││││││  0x00007f9be9257a0f: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  ││││││││  0x00007f9be9257a15: jne    0x00007f9be9257c81
  0.10%    0.06%  ││││││││  0x00007f9be9257a1b: lea    (%r12,%rbp,8),%r14  ;*invokevirtual add
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.15%    0.19%  ││││││││  0x00007f9be9257a1f: mov    0x18(%r14),%ecx    ;*getfield pc
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.03%    0.03%  ││││││││  0x00007f9be9257a23: vmovd  %ecx,%xmm0
  0.06%    0.10%  ││││││││  0x00007f9be9257a27: cmp    $0x40,%ecx
                  ││││││││  0x00007f9be9257a2a: jg     0x00007f9be9257fb1  ;*if_icmpgt
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.04%    0.09%  ││││││││  0x00007f9be9257a30: mov    $0x1,%r10d
  0.17%    0.19%  ││││││││  0x00007f9be9257a36: shl    %cl,%r10           ;*lshl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.14%    0.16%  ││││││││  0x00007f9be9257a39: mov    %r9,%rcx
  0.12%    0.13%  ││││││││  0x00007f9be9257a3c: and    %r10,%rcx          ;*land
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.01%    0.01%  ││││││││  0x00007f9be9257a3f: test   %rcx,%rcx
                  ││││││││  0x00007f9be9257a42: jne    0x00007f9be9257b2c  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.03%    0.08%  ││││││││  0x00007f9be9257a48: xor    %ebp,%ebp          ;*ireturn
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.06%    0.06%  ││││││││  0x00007f9be9257a4a: test   %rcx,%rcx
                  ││││││││  0x00007f9be9257a4d: jne    0x00007f9be9257fed  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.16%    0.27%  ││││││││  0x00007f9be9257a53: vmovd  %xmm0,%ecx
  0.01%    0.03%  ││││││││  0x00007f9be9257a57: cmp    $0x40,%ecx
                  ││││││││  0x00007f9be9257a5a: jge    0x00007f9be9258021  ;*if_icmpge
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.10%    0.14%  ││││││││  0x00007f9be9257a60: mov    %ebx,0xc(%rdx)     ;*putfield size
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.08%    0.10%  ││││││││  0x00007f9be9257a63: vmovq  %xmm2,%rcx
  0.20%    0.30%  ││││││││  0x00007f9be9257a68: mov    0x40(%rcx),%ebp    ;*getfield inst5
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@103 (line 269)
  0.01%    0.03%  ││││││││  0x00007f9be9257a6b: mov    %rdi,%rcx
  0.08%    0.10%  ││││││││  0x00007f9be9257a6e: add    $0x1c,%rcx         ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.06%    0.13%  ││││││││  0x00007f9be9257a72: or     %r10,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.14%    0.19%  ││││││││  0x00007f9be9257a75: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.03%    0.01%  ││││││││  0x00007f9be9257a79: mov    %r14,%r10
  0.06%    0.07%  ││││││││  0x00007f9be9257a7c: shr    $0x3,%r10
  0.06%    0.08%  ││││││││  0x00007f9be9257a80: mov    %r10d,(%rcx)
  0.19%    0.24%  ││││││││  0x00007f9be9257a83: mov    %rcx,%r10
  0.00%    0.03%  ││││││││  0x00007f9be9257a86: shr    $0x9,%r10
  0.06%    0.09%  ││││││││  0x00007f9be9257a8a: mov    %r12b,(%r8,%r10,1)  ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.06%    0.12%  ││││││││  0x00007f9be9257a8e: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f9be9258195
  0.11%    0.16%  ││││││││  0x00007f9be9257a93: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  ││││││││  0x00007f9be9257a9a: jne    0x00007f9be9257cad
  0.00%    0.02%  ││││││││  0x00007f9be9257aa0: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.07%    0.07%  ││││││││  0x00007f9be9257aa4: mov    0x18(%r10),%ecx    ;*getfield pc
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.10%    0.06%  ││││││││  0x00007f9be9257aa8: cmp    $0x40,%ecx
                  ││││││││  0x00007f9be9257aab: jg     0x00007f9be925805d  ;*if_icmpgt
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.19%    0.17%  ││││││││  0x00007f9be9257ab1: shl    %cl,%rsi           ;*lshl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.19%    0.22%  ││││││││  0x00007f9be9257ab4: mov    %r9,%rbx
  0.21%    0.08%  ││││││││  0x00007f9be9257ab7: and    %rsi,%rbx          ;*land
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.01%    0.03%  ││││││││  0x00007f9be9257aba: test   %rbx,%rbx
                  ││││││││  0x00007f9be9257abd: jne    0x00007f9be9257b36  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.07%    0.09%  ││││││││  0x00007f9be9257abf: xor    %ebp,%ebp          ;*ireturn
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.07%    0.10%  ││││││││  0x00007f9be9257ac1: test   %rbx,%rbx
                  ││││││││  0x00007f9be9257ac4: jne    0x00007f9be9258081  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.16%    0.23%  ││││││││  0x00007f9be9257aca: cmp    $0x40,%ecx
                  ││││││││  0x00007f9be9257acd: jge    0x00007f9be92580a1  ;*if_icmpge
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.02%    0.04%  ││││││││  0x00007f9be9257ad3: or     %rsi,%r9
  0.07%    0.06%  ││││││││  0x00007f9be9257ad6: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.03%    0.06%  ││││││││  0x00007f9be9257ada: add    $0x20,%rdi
  0.16%    0.14%  ││││││││  0x00007f9be9257ade: shr    $0x3,%r10
  0.04%    0.00%  ││││││││  0x00007f9be9257ae2: mov    %r10d,(%rdi)       ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.09%    0.05%  ││││││││  0x00007f9be9257ae5: mov    %rdi,%r10
  0.05%    0.06%  ││││││││  0x00007f9be9257ae8: add    $0x5,%eax
  0.18%    0.21%  ││││││││  0x00007f9be9257aeb: mov    %eax,0xc(%rdx)     ;*putfield size
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.07%    0.05%  ││││││││  0x00007f9be9257aee: shr    $0x9,%r10
  0.08%    0.10%  ││││││││  0x00007f9be9257af2: mov    %r12b,(%r8,%r10,1)  ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.09%    0.11%  ││││││││  0x00007f9be9257af6: xor    %eax,%eax
  0.13%    0.28%  ││││││││  0x00007f9be9257af8: add    $0x70,%rsp
  0.03%    0.03%  ││││││││  0x00007f9be9257afc: pop    %rbp
  0.09%    0.05%  ││││││││  0x00007f9be9257afd: test   %eax,0x181ab4fd(%rip)        # 0x00007f9c01403000
                  ││││││││                                                ;   {poll_return}
  0.05%    0.09%  ││││││││  0x00007f9be9257b03: retq   
                  ↘│││││││  0x00007f9be9257b04: mov    $0x1,%ebp
                   │││╰│││  0x00007f9be9257b09: jmpq   0x00007f9be92577ed
                   ↘││ │││  0x00007f9be9257b0e: mov    $0x1,%ebp
                    ││ ╰││  0x00007f9be9257b13: jmpq   0x00007f9be9257850
                    ↘│  ││  0x00007f9be9257b18: mov    $0x1,%ebp
                     │  ╰│  0x00007f9be9257b1d: jmpq   0x00007f9be9257927
                     ↘   │  0x00007f9be9257b22: mov    $0x1,%ebp
                         ╰  0x00007f9be9257b27: jmpq   0x00007f9be92579c3
                            0x00007f9be9257b2c: mov    $0x1,%ebp
....................................................................................................
 16.51%   18.15%  <total for region 4>

....[Hottest Regions]...............................................................................
 28.63%   28.13%         C2, level 4  com.google.re2j.Machine::match, version 602 (1326 bytes) 
 19.27%   21.15%         C2, level 4  com.google.re2j.Machine::step, version 548 (195 bytes) 
 17.92%   15.76%         C2, level 4  com.google.re2j.Machine::step, version 548 (1013 bytes) 
 16.51%   18.15%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 559 (867 bytes) 
  9.33%    9.26%         C2, level 4  com.google.re2j.Machine::step, version 548 (174 bytes) 
  2.86%    2.65%         C2, level 4  com.google.re2j.Machine::step, version 548 (67 bytes) 
  1.52%    1.62%         C2, level 4  com.google.re2j.Machine::match, version 602 (72 bytes) 
  1.22%    1.21%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.13%    0.08%         C2, level 4  com.google.re2j.Pattern::find, version 605 (12 bytes) 
  0.12%    0.04%         C2, level 4  com.google.re2j.Pattern::find, version 605 (0 bytes) 
  0.12%    0.04%         C2, level 4  com.google.re2j.Pattern::find, version 605 (0 bytes) 
  0.11%    0.14%         C2, level 4  com.google.re2j.Pattern::find, version 605 (28 bytes) 
  0.09%    0.00%   [kernel.kallsyms]  [unknown] (39 bytes) 
  0.09%    0.01%   [kernel.kallsyms]  [unknown] (17 bytes) 
  0.08%                  C2, level 4  com.google.re2j.Pattern::find, version 605 (80 bytes) 
  0.07%    0.00%         C2, level 4  com.google.re2j.Pattern::find, version 605 (109 bytes) 
  0.07%    0.08%         C2, level 4  com.google.re2j.Machine::match, version 602 (167 bytes) 
  0.05%    0.02%   [kernel.kallsyms]  [unknown] (22 bytes) 
  0.05%                  C2, level 4  com.google.re2j.Machine::match, version 602 (130 bytes) 
  0.05%    0.06%         C2, level 4  com.google.re2j.Machine::match, version 602 (169 bytes) 
  1.72%    1.59%  <...other 357 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 49.38%   48.82%         C2, level 4  com.google.re2j.Machine::step, version 548 
 30.42%   29.99%         C2, level 4  com.google.re2j.Machine::match, version 602 
 16.51%   18.15%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 559 
  1.86%    1.76%   [kernel.kallsyms]  [unknown] 
  0.81%    0.36%         C2, level 4  com.google.re2j.Pattern::find, version 605 
  0.08%    0.02%         C2, level 4  java.util.Collections::shuffle, version 619 
  0.07%    0.01%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testCombine_jmhTest::testCombine_thrpt_jmhStub, version 669 
  0.07%    0.02%           libjvm.so  GenericTaskQueueSet<OverflowTaskQueue<StarTask, (MemoryType)1, 131072u>, (MemoryType)1>::steal_best_of_2 
  0.05%    0.02%      hsdis-amd64.so  [unknown] 
  0.04%    0.03%           libjvm.so  PSPromotionManager::drain_stacks_depth 
  0.04%    0.05%        libc-2.26.so  vfprintf 
  0.03%    0.06%        libc-2.26.so  _IO_fwrite 
  0.03%    0.02%           libjvm.so  xmlTextStream::write 
  0.03%    0.01%        libc-2.26.so  _IO_default_xsputn 
  0.02%    0.05%           libjvm.so  PSPromotionManager::copy_to_survivor_space<false> 
  0.02%    0.05%           libjvm.so  RelocIterator::initialize 
  0.02%                  interpreter  method entry point (kind = zerolocals)  
  0.02%           libpthread-2.26.so  __libc_write 
  0.02%           libpthread-2.26.so  __pthread_disable_asynccancel 
  0.02%                  C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 612 
  0.43%    0.30%  <...other 70 warm methods...>
....................................................................................................
100.00%   99.73%  <totals>

....[Distribution by Source]........................................................................
 97.31%   97.36%         C2, level 4
  1.86%    1.76%   [kernel.kallsyms]
  0.44%    0.56%           libjvm.so
  0.17%    0.25%        libc-2.26.so
  0.07%    0.01%  libpthread-2.26.so
  0.05%    0.02%      hsdis-amd64.so
  0.04%    0.00%         interpreter
  0.02%    0.01%              [vdso]
  0.01%                perf-7890.map
  0.00%                  C1, level 1
  0.00%             Unknown, level 0
  0.00%    0.01%         C1, level 3
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                        Mode  Cnt      Score     Error  Units
Re2jFindRegex.testCombine       thrpt   20  11672.600 ± 250.366  ops/s
Re2jFindRegex.testCombine:·asm  thrpt             NaN              ---
