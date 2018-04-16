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
# Warmup Iteration   1: 4768.443 ops/s
# Warmup Iteration   2: 11538.944 ops/s
# Warmup Iteration   3: 11929.520 ops/s
# Warmup Iteration   4: 11978.993 ops/s
# Warmup Iteration   5: 12001.012 ops/s
# Warmup Iteration   6: 11881.470 ops/s
# Warmup Iteration   7: 11715.508 ops/s
# Warmup Iteration   8: 11966.149 ops/s
# Warmup Iteration   9: 12009.957 ops/s
# Warmup Iteration  10: 11952.903 ops/s
# Warmup Iteration  11: 11985.148 ops/s
# Warmup Iteration  12: 12037.174 ops/s
# Warmup Iteration  13: 11870.913 ops/s
# Warmup Iteration  14: 12013.721 ops/s
# Warmup Iteration  15: 11992.399 ops/s
# Warmup Iteration  16: 12023.594 ops/s
# Warmup Iteration  17: 12003.307 ops/s
# Warmup Iteration  18: 11739.090 ops/s
# Warmup Iteration  19: 11972.804 ops/s
# Warmup Iteration  20: 11215.044 ops/s
Iteration   1: 11945.998 ops/s
Iteration   2: 12004.395 ops/s
Iteration   3: 11955.920 ops/s
Iteration   4: 11959.287 ops/s
Iteration   5: 11986.770 ops/s
Iteration   6: 12028.277 ops/s
Iteration   7: 11979.508 ops/s
Iteration   8: 11846.296 ops/s
Iteration   9: 11914.989 ops/s
Iteration  10: 12005.831 ops/s
Iteration  11: 12034.432 ops/s
Iteration  12: 12023.859 ops/s
Iteration  13: 11964.638 ops/s
Iteration  14: 11963.084 ops/s
Iteration  15: 11941.352 ops/s
Iteration  16: 12013.226 ops/s
Iteration  17: 11890.131 ops/s
Iteration  18: 11891.637 ops/s
Iteration  19: 12040.035 ops/s
Iteration  20: 11993.565 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  11969.161 ±(99.9%) 45.965 ops/s [Average]
  (min, avg, max) = (11846.296, 11969.161, 12040.035), stdev = 52.933
  CI (99.9%): [11923.196, 12015.126] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine:·asm":
PrintAssembly processed: 214355 total address lines.
Perf output processed (skipped 23.192 seconds):
 Column 1: cycles (20436 events)
 Column 2: instructions (20503 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 596 (1516 bytes) 

                                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                            ; - com.google.re2j.Machine::match@69 (line 195)
                                              0x00007fc50926f471: test   %r10d,%r10d
                                              0x00007fc50926f474: jl     0x00007fc509270a6d  ;*iflt
                                                                                            ; - java.lang.String::charAt@1 (line 657)
                                                                                            ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                            ; - com.google.re2j.Machine::match@69 (line 195)
                                              0x00007fc50926f47a: vmovd  %r10d,%xmm2
                                              0x00007fc50926f47f: mov    %rdx,0x50(%rsp)
  0.00%                                       0x00007fc50926f484: mov    %edi,0x28(%rsp)
  0.00%                                       0x00007fc50926f488: mov    %ebx,0x4c(%rsp)
                                              0x00007fc50926f48c: mov    %r8d,0x48(%rsp)
                                              0x00007fc50926f491: mov    %r9d,0x3c(%rsp)
  0.00%                                       0x00007fc50926f496: mov    %r11,0x40(%rsp)
                                              0x00007fc50926f49b: mov    0xc(%rax),%r10d    ;*getfield value
                                                                                            ; - java.lang.String::charAt@6 (line 657)
                                                                                            ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                            ; - com.google.re2j.Machine::match@69 (line 195)
                                              0x00007fc50926f49f: mov    %r10d,%ebx
                                              0x00007fc50926f4a2: mov    0xc(%r12,%r10,8),%r10d  ;*arraylength
                                                                                            ; - java.lang.String::charAt@9 (line 657)
                                                                                            ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                            ; - com.google.re2j.Machine::match@69 (line 195)
                                                                                            ; implicit exception: dispatches to 0x00007fc5092714e5
  0.01%                                       0x00007fc50926f4a7: mov    %r10d,%r9d
                                              0x00007fc50926f4aa: vmovd  %xmm2,%r10d
                                              0x00007fc50926f4af: cmp    %r9d,%r10d
                                              0x00007fc50926f4b2: jge    0x00007fc509270c21  ;*if_icmplt
                                                                                            ; - java.lang.String::charAt@10 (line 657)
                                                                                            ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                            ; - com.google.re2j.Machine::match@69 (line 195)
                                              0x00007fc50926f4b8: cmp    %r9d,%r10d
                                              0x00007fc50926f4bb: jae    0x00007fc5092706d9
  0.00%                                       0x00007fc50926f4c1: mov    %ebx,%r10d
                                              0x00007fc50926f4c4: lea    (%r12,%r10,8),%r8
                                              0x00007fc50926f4c8: vmovd  %xmm2,%r10d
                                              0x00007fc50926f4cd: movzwl 0x10(%r8,%r10,2),%r11d  ;*caload
                                                                                            ; - java.lang.String::charAt@27 (line 660)
                                                                                            ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                            ; - com.google.re2j.Machine::match@69 (line 195)
           0.00%                              0x00007fc50926f4d3: cmp    $0xd800,%r11d
                                              0x00007fc50926f4da: jge    0x00007fc509270c75  ;*if_icmplt
                                                                                            ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                                            ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                            ; - com.google.re2j.Machine::match@69 (line 195)
                                              0x00007fc50926f4e0: shl    $0x3,%r11d         ;*ishl
                                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                                                                                            ; - com.google.re2j.Machine::match@69 (line 195)
                                              0x00007fc50926f4e4: mov    %r11d,%r10d
                                              0x00007fc50926f4e7: and    $0x7,%r10d
  0.01%                                       0x00007fc50926f4eb: or     $0x1,%r11d
                                              0x00007fc50926f4ef: vmovd  %r11d,%xmm1
                                              0x00007fc50926f4f4: or     $0x1,%r10d         ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                                                                                            ; - com.google.re2j.Machine::match@69 (line 195)
                                              0x00007fc50926f4f8: mov    %r10d,0x2c(%rsp)
           0.00%                              0x00007fc50926f4fd: mov    %r11d,%r10d
                                              0x00007fc50926f500: sar    $0x3,%r10d         ;*ishr
                                                                                            ; - com.google.re2j.Machine::match@77 (line 196)
                                              0x00007fc50926f504: cmp    $0xfffffff8,%r11d
                                              0x00007fc50926f508: je     0x00007fc509270679  ;*if_icmpeq
                                                                                            ; - com.google.re2j.Machine::match@97 (line 200)
                                              0x00007fc50926f50e: vmovd  %xmm0,%r11d
                                              0x00007fc50926f513: add    0x2c(%rsp),%r11d
  0.03%    0.03%                              0x00007fc50926f518: add    0x70(%rsp),%r11d   ;*iadd
                                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                                                                                            ; - com.google.re2j.Machine::match@105 (line 201)
           0.01%                              0x00007fc50926f51d: mov    %r11d,%edi
                                              0x00007fc50926f520: cmp    %ebp,%r11d
                                              0x00007fc50926f523: jge    0x00007fc50926fef5  ;*if_icmpge
                                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                                                                                            ; - com.google.re2j.Machine::match@105 (line 201)
  0.01%    0.00%                              0x00007fc50926f529: test   %r11d,%r11d
                                              0x00007fc50926f52c: jl     0x00007fc509270b11  ;*iflt
                                                                                            ; - java.lang.String::charAt@1 (line 657)
                                                                                            ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                            ; - com.google.re2j.Machine::match@105 (line 201)
  0.01%    0.01%                              0x00007fc50926f532: cmp    %r9d,%r11d
                                              0x00007fc50926f535: jge    0x00007fc509270cd5  ;*if_icmplt
                                                                                            ; - java.lang.String::charAt@10 (line 657)
                                                                                            ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                            ; - com.google.re2j.Machine::match@105 (line 201)
  0.00%    0.00%                              0x00007fc50926f53b: cmp    %r9d,%r11d
                                              0x00007fc50926f53e: jae    0x00007fc509270729
  0.00%    0.00%                              0x00007fc50926f544: movzwl 0x10(%r8,%r11,2),%r11d  ;*caload
                                                                                            ; - java.lang.String::charAt@27 (line 660)
                                                                                            ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                            ; - com.google.re2j.Machine::match@105 (line 201)
  0.02%                                       0x00007fc50926f54a: cmp    $0xd800,%r11d
                                              0x00007fc50926f551: jge    0x00007fc509270d41  ;*if_icmplt
                                                                                            ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                                            ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                            ; - com.google.re2j.Machine::match@105 (line 201)
  0.00%    0.01%                              0x00007fc50926f557: shl    $0x3,%r11d         ;*ishl
                                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                                                                                            ; - com.google.re2j.Machine::match@105 (line 201)
                                              0x00007fc50926f55b: mov    %r11d,%r9d
                                              0x00007fc50926f55e: and    $0x7,%r9d
  0.01%                                       0x00007fc50926f562: or     $0x1,%r11d
                                              0x00007fc50926f566: or     $0x1,%r9d          ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                                                                                            ; - com.google.re2j.Machine::match@105 (line 201)
  0.01%                                       0x00007fc50926f56a: mov    %r9d,0x30(%rsp)
           0.00%                              0x00007fc50926f56f: sar    $0x3,%r11d         ;*ishr
                                                                                            ; - com.google.re2j.Machine::match@113 (line 202)
                                              0x00007fc50926f573: mov    %r11d,0x38(%rsp)   ;*iand
                                                                                            ; - com.google.re2j.Machine::match@120 (line 203)
           0.01%                              0x00007fc50926f578: vmovd  %xmm0,%r11d
                                              0x00007fc50926f57d: test   %r11d,%r11d
                                              0x00007fc50926f580: jne    0x00007fc509270ab1  ;*ifne
                                                                                            ; - com.google.re2j.Machine::match@124 (line 206)
                                              0x00007fc50926f586: test   %r10d,%r10d
                                              0x00007fc50926f589: jl     0x00007fc50926fee7  ;*ifge
                                                                                            ; - com.google.re2j.Utils::emptyOpContext@21 (line 179)
                                                                                            ; - com.google.re2j.Machine::match@130 (line 207)
                                              0x00007fc50926f58f: mov    $0x5,%r11d         ;*iload_1
                                                                                            ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                                                                                            ; - com.google.re2j.Machine::match@130 (line 207)
  0.00%    0.01%                              0x00007fc50926f595: cmp    $0xa,%r10d
                                              0x00007fc50926f599: je     0x00007fc50926ff0d  ;*iload_0
                                                                                            ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                                                                                            ; - com.google.re2j.Machine::match@130 (line 207)
                                              0x00007fc50926f59f: mov    %r10d,%r9d
                                              0x00007fc50926f5a2: add    $0xffffffbf,%r9d
                                              0x00007fc50926f5a6: cmp    $0x1a,%r9d
                  ╭                           0x00007fc50926f5aa: jb     0x00007fc50926f5bd  ;*if_icmple
                  │                                                                         ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │                                                                         ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                                         ; - com.google.re2j.Machine::match@130 (line 207)
  0.00%    0.00%  │                           0x00007fc50926f5ac: mov    %r10d,%r8d
                  │                           0x00007fc50926f5af: add    $0xffffff9f,%r8d
                  │                           0x00007fc50926f5b3: cmp    $0x1a,%r8d
                  │                           0x00007fc50926f5b7: jae    0x00007fc50926ff1c  ;*iconst_1
                  │                                                                         ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │                                                                         ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                                         ; - com.google.re2j.Machine::match@130 (line 207)
                  ↘                           0x00007fc50926f5bd: or     $0x10,%r11d        ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                                                                                            ; - com.google.re2j.Machine::match@130 (line 207)
  0.01%    0.00%                              0x00007fc50926f5c1: mov    %r11d,0x34(%rsp)   ;*iload_2
                                                                                            ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                                            ; - com.google.re2j.Machine::match@130 (line 207)
           0.02%                              0x00007fc50926f5c6: mov    0x3c(%rsp),%r11d
                                              0x00007fc50926f5cb: test   %r11d,%r11d
                                              0x00007fc50926f5ce: jne    0x00007fc50927080d  ;*aload
                                                                                            ; - com.google.re2j.Machine::match@145 (line 213)
           0.01%                              0x00007fc50926f5d4: mov    0x4c(%rsp),%r8d
  0.00%                                       0x00007fc50926f5d9: mov    0x8(%r12,%r8,8),%r8d  ;*invokevirtual add
                                                                                            ; - com.google.re2j.Machine::match@322 (line 245)
                                                                                            ; implicit exception: dispatches to 0x00007fc50927080d
                                              0x00007fc50926f5de: mov    %r8d,0x14(%rsp)
                                              0x00007fc50926f5e3: mov    0x40(%rsp),%r11
                                              0x00007fc50926f5e8: movzbl 0x11(%r11),%ebx    ;*getfield captures
                                                                                            ; - com.google.re2j.Machine::match@292 (line 242)
                                              0x00007fc50926f5ed: mov    0x4c(%rsp),%r11d
                                              0x00007fc50926f5f2: shl    $0x3,%r11
  0.01%                                       0x00007fc50926f5f6: mov    %r11,0x18(%rsp)
                                              0x00007fc50926f5fb: mov    0x48(%rsp),%r8d
                                              0x00007fc50926f600: and    $0x4,%r8d          ;*iand
                                                                                            ; - com.google.re2j.Machine::match@156 (line 214)
                                              0x00007fc50926f604: mov    %r8d,0x58(%rsp)
                                              0x00007fc50926f609: mov    %rcx,%r11
                                              0x00007fc50926f60c: shl    $0x3,%r11          ;*getfield q1
                                                                                            ; - com.google.re2j.Machine::match@62 (line 194)
  0.01%                                       0x00007fc50926f610: vmovd  %ebx,%xmm2
                                              0x00007fc50926f614: mov    %r11,0x68(%rsp)
                                              0x00007fc50926f619: xor    %eax,%eax
                                              0x00007fc50926f61b: mov    $0x1,%r11d
  0.00%                                       0x00007fc50926f621: xor    %r9d,%r9d
                                              0x00007fc50926f624: mov    %r11d,0x78(%rsp)
  0.00%                                       0x00007fc50926f629: mov    %r9d,0x64(%rsp)
                   ╭                          0x00007fc50926f62e: jmpq   0x00007fc50926f873
  0.05%    0.03%   │              ↗           0x00007fc50926f633: mov    0x18(%rsp),%rbp    ;*ifeq
                   │              │                                                         ; - com.google.re2j.Machine::match@295 (line 242)
  0.21%    0.04%   │              │           0x00007fc50926f638: mov    %r14,%r8
  0.01%    0.01%   │              │           0x00007fc50926f63b: shl    $0x3,%r8           ;*getfield matchcap
                   │              │                                                         ; - com.google.re2j.Machine::match@311 (line 245)
  0.03%    0.00%   │              │           0x00007fc50926f63f: mov    %rbp,%rsi
  0.04%            │              │           0x00007fc50926f642: mov    0x20(%rsp),%rdx
  0.23%    0.02%   │              │           0x00007fc50926f647: mov    0x5c(%rsp),%ecx
  0.04%    0.00%   │              │           0x00007fc50926f64b: mov    0x34(%rsp),%r9d
  0.04%            │              │           0x00007fc50926f650: xor    %edi,%edi
  0.07%    0.01%   │              │           0x00007fc50926f652: mov    0x40(%rsp),%r10
  0.24%    0.12%   │              │           0x00007fc50926f657: mov    %r10,(%rsp)
  0.04%    0.03%   │              │           0x00007fc50926f65b: vmovss %xmm2,0x8(%rsp)
  0.01%    0.01%   │              │           0x00007fc50926f661: xchg   %ax,%ax
  0.06%    0.02%   │              │           0x00007fc50926f663: callq  0x00007fc509046020  ; OopMap{rbp=Oop [24]=Oop [32]=Oop [40]=NarrowOop [64]=Oop [76]=NarrowOop [80]=Oop [104]=Oop off=712}
                   │              │                                                         ;*invokevirtual add
                   │              │                                                         ; - com.google.re2j.Machine::match@322 (line 245)
                   │              │                                                         ;   {optimized virtual_call}
  0.04%    0.04%   │              │           0x00007fc50926f668: mov    %rbp,0x70(%rsp)    ;*synchronization entry
                   │              │                                                         ; - com.google.re2j.Machine::match@-1 (line 182)
  0.42%    0.38%   │              │↗          0x00007fc50926f66d: mov    0x60(%rsp),%r11d
  0.13%    0.18%   │              ││          0x00007fc50926f672: test   %r11d,%r11d
                   │╭             ││          0x00007fc50926f675: jl     0x00007fc50926f9de  ;*ifge
                   ││             ││                                                        ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                   ││             ││                                                        ; - com.google.re2j.Machine::match@330 (line 247)
  0.06%    0.05%   ││             ││          0x00007fc50926f67b: xor    %r8d,%r8d          ;*iload_0
                   ││             ││                                                        ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                   ││             ││                                                        ; - com.google.re2j.Machine::match@330 (line 247)
  0.26%    0.30%   ││             ││↗         0x00007fc50926f67e: cmp    $0xa,%r11d
                   ││╭            │││         0x00007fc50926f682: je     0x00007fc50926fa58  ;*iload_1
                   │││            │││                                                       ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                   │││            │││                                                       ; - com.google.re2j.Machine::match@330 (line 247)
  0.19%    0.21%   │││            │││     ↗   0x00007fc50926f688: mov    0x38(%rsp),%r11d
  0.13%    0.18%   │││            │││     │   0x00007fc50926f68d: test   %r11d,%r11d
                   │││╭           │││     │   0x00007fc50926f690: jl     0x00007fc50926f9e9  ;*iload_1
                   ││││           │││     │                                                 ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                   ││││           │││     │                                                 ; - com.google.re2j.Machine::match@330 (line 247)
  0.02%    0.05%   ││││           │││↗    │   0x00007fc50926f696: cmp    $0xa,%r11d
                   ││││╭          ││││    │   0x00007fc50926f69a: je     0x00007fc50926fa61  ;*iload_0
                   │││││          ││││    │                                                 ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                   │││││          ││││    │                                                 ; - com.google.re2j.Machine::match@330 (line 247)
  0.24%    0.29%   │││││          ││││    │↗  0x00007fc50926f6a0: mov    0x60(%rsp),%r10d
  0.20%    0.24%   │││││          ││││    ││  0x00007fc50926f6a5: add    $0xffffffbf,%r10d
  0.11%    0.11%   │││││          ││││    ││  0x00007fc50926f6a9: cmp    $0x1a,%r10d
                   │││││╭         ││││    ││  0x00007fc50926f6ad: jb     0x00007fc50926f6c2  ;*if_icmple
                   ││││││         ││││    ││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                   ││││││         ││││    ││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   ││││││         ││││    ││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.04%    0.07%   ││││││         ││││    ││  0x00007fc50926f6af: mov    0x60(%rsp),%r11d
  0.23%    0.29%   ││││││         ││││    ││  0x00007fc50926f6b4: add    $0xffffff9f,%r11d
  0.14%    0.20%   ││││││         ││││    ││  0x00007fc50926f6b8: cmp    $0x1a,%r11d
                   ││││││         ││││    ││  0x00007fc50926f6bc: jae    0x00007fc50926fe6d  ;*iconst_1
                   ││││││         ││││    ││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                   ││││││         ││││    ││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   ││││││         ││││    ││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.15%    0.11%   │││││↘         ││││    ││  0x00007fc50926f6c2: mov    $0x1,%ebp          ;*ireturn
                   │││││          ││││    ││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                   │││││          ││││    ││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   │││││          ││││    ││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.07%    0.08%   │││││          ││││    ││  0x00007fc50926f6c7: mov    0x38(%rsp),%r10d
  0.27%    0.22%   │││││          ││││    ││  0x00007fc50926f6cc: add    $0xffffffbf,%r10d
  0.18%    0.18%   │││││          ││││    ││  0x00007fc50926f6d0: cmp    $0x1a,%r10d
                   │││││ ╭        ││││    ││  0x00007fc50926f6d4: jb     0x00007fc50926f6e9  ;*if_icmple
                   │││││ │        ││││    ││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                   │││││ │        ││││    ││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   │││││ │        ││││    ││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.18%    0.17%   │││││ │        ││││    ││  0x00007fc50926f6d6: mov    0x38(%rsp),%r11d
  0.10%    0.12%   │││││ │        ││││    ││  0x00007fc50926f6db: add    $0xffffff9f,%r11d
  0.27%    0.25%   │││││ │        ││││    ││  0x00007fc50926f6df: cmp    $0x1a,%r11d
                   │││││ │        ││││    ││  0x00007fc50926f6e3: jae    0x00007fc50926fe96  ;*iconst_1
                   │││││ │        ││││    ││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                   │││││ │        ││││    ││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   │││││ │        ││││    ││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.33%    0.23%   │││││ ↘        ││││    ││  0x00007fc50926f6e9: mov    $0x1,%r10d         ;*ireturn
                   │││││          ││││    ││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                   │││││          ││││    ││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   │││││          ││││    ││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.29%    0.29%   │││││          ││││    ││  0x00007fc50926f6ef: cmp    %r10d,%ebp
                   │││││  ╭       ││││    ││  0x00007fc50926f6f2: jne    0x00007fc50926f6ff  ;*if_icmpeq
                   │││││  │       ││││    ││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                   │││││  │       ││││    ││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.08%    0.09%   │││││  │       ││││    ││  0x00007fc50926f6f4: or     $0x20,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                   │││││  │       ││││    ││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.17%    0.25%   │││││  │       ││││    ││  0x00007fc50926f6f8: mov    %r8d,0x34(%rsp)
  0.21%    0.29%   │││││  │╭      ││││    ││  0x00007fc50926f6fd: jmp    0x00007fc50926f708
  0.15%    0.12%   │││││  ↘│      ││││    ││  0x00007fc50926f6ff: or     $0x10,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                   │││││   │      ││││    ││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.02%    0.02%   │││││   │      ││││    ││  0x00007fc50926f703: mov    %r8d,0x34(%rsp)    ;*iload_2
                   │││││   │      ││││    ││                                                ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   │││││   │      ││││    ││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.19%    0.17%   │││││   ↘      ││││    ││  0x00007fc50926f708: mov    0x50(%rsp),%r10
  0.35%    0.21%   │││││          ││││    ││  0x00007fc50926f70d: mov    0x10(%r10),%r10d   ;*getfield end
                   │││││          ││││    ││                                                ; - com.google.re2j.MachineInput$UTF16Input::endPos@1 (line 221)
                   │││││          ││││    ││                                                ; - com.google.re2j.Machine::match@352 (line 248)
  0.68%    0.47%   │││││          ││││    ││  0x00007fc50926f711: mov    0x5c(%rsp),%r8d
  0.13%    0.19%   │││││          ││││    ││  0x00007fc50926f716: cmp    %r10d,%r8d
                   │││││    ╭     ││││    ││  0x00007fc50926f719: je     0x00007fc50926f9f2  ;*if_icmpne
                   │││││    │     ││││    ││                                                ; - com.google.re2j.Machine::match@355 (line 248)
  0.36%    0.21%   │││││    │     ││││    ││  0x00007fc50926f71f: xor    %r11d,%r11d        ;*invokevirtual endPos
                   │││││    │     ││││    ││                                                ; - com.google.re2j.Machine::match@352 (line 248)
  0.06%    0.07%   │││││    │     ││││↗   ││  0x00007fc50926f722: mov    0x5c(%rsp),%r10d
  0.19%    0.23%   │││││    │     │││││   ││  0x00007fc50926f727: add    0x2c(%rsp),%r10d   ;*iadd
                   │││││    │     │││││   ││                                                ; - com.google.re2j.Machine::match@344 (line 248)
  0.13%    0.16%   │││││    │     │││││   ││  0x00007fc50926f72c: mov    %r10d,0x64(%rsp)
  0.22%    0.20%   │││││    │     │││││   ││  0x00007fc50926f731: mov    0x40(%rsp),%rsi
  0.05%    0.05%   │││││    │     │││││   ││  0x00007fc50926f736: mov    0x20(%rsp),%rdx
  0.18%    0.21%   │││││    │     │││││   ││  0x00007fc50926f73b: mov    0x68(%rsp),%rcx
  0.16%    0.12%   │││││    │     │││││   ││  0x00007fc50926f740: mov    %r10d,%r9d
  0.27%    0.12%   │││││    │     │││││   ││  0x00007fc50926f743: mov    0x60(%rsp),%edi
  0.04%    0.06%   │││││    │     │││││   ││  0x00007fc50926f747: mov    0x34(%rsp),%ebx
  0.19%    0.18%   │││││    │     │││││   ││  0x00007fc50926f74b: mov    %ebx,(%rsp)
  0.17%    0.23%   │││││    │     │││││   ││  0x00007fc50926f74e: xor    %r10d,%r10d
  0.19%    0.13%   │││││    │     │││││   ││  0x00007fc50926f751: mov    %r10d,0x8(%rsp)
  0.01%    0.10%   │││││    │     │││││   ││  0x00007fc50926f756: mov    %r11d,0x10(%rsp)
  0.18%    0.20%   │││││    │     │││││   ││  0x00007fc50926f75b: callq  0x00007fc509046020  ; OopMap{[24]=Oop [32]=Oop [40]=NarrowOop [64]=Oop [76]=NarrowOop [80]=Oop [104]=Oop [112]=Oop off=960}
                   │││││    │     │││││   ││                                                ;*invokespecial step
                   │││││    │     │││││   ││                                                ; - com.google.re2j.Machine::match@363 (line 248)
                   │││││    │     │││││   ││                                                ;   {optimized virtual_call}
  0.10%    0.06%   │││││    │     │││││   ││  0x00007fc50926f760: mov    0x40(%rsp),%r10
  0.50%    0.56%   │││││    │     │││││   ││  0x00007fc50926f765: movzbl 0x11(%r10),%ebx    ;*getfield captures
                   │││││    │     │││││   ││                                                ; - com.google.re2j.Machine::match@375 (line 252)
  0.55%    0.72%   │││││    │     │││││   ││  0x00007fc50926f76a: movzbl 0x10(%r10),%eax    ;*getfield matched
                   │││││    │     │││││   ││                                                ; - com.google.re2j.Machine::match@382 (line 252)
  0.08%    0.09%   │││││    │     │││││   ││  0x00007fc50926f76f: mov    0x2c(%rsp),%r10d
  0.50%    0.46%   │││││    │     │││││   ││  0x00007fc50926f774: test   %r10d,%r10d
                   │││││    │╭    │││││   ││  0x00007fc50926f777: je     0x00007fc50926fa0c  ;*ifne
                   │││││    ││    │││││   ││                                                ; - com.google.re2j.Machine::match@368 (line 249)
           0.00%   │││││    ││    │││││   ││  0x00007fc50926f77d: test   %ebx,%ebx
                   │││││    ││    │││││   ││  0x00007fc50926f77f: jne    0x00007fc5092700a1  ;*ifne
                   │││││    ││    │││││   ││                                                ; - com.google.re2j.Machine::match@378 (line 252)
  0.13%    0.15%   │││││    ││    │││││   ││  0x00007fc50926f785: test   %eax,%eax
                   │││││    ││    │││││   ││  0x00007fc50926f787: jne    0x00007fc509270225  ;*ifeq
                   │││││    ││    │││││   ││                                                ; - com.google.re2j.Machine::match@385 (line 252)
  0.17%    0.13%   │││││    ││    │││││   ││  0x00007fc50926f78d: mov    0x50(%rsp),%r10
  0.38%    0.49%   │││││    ││    │││││   ││  0x00007fc50926f792: mov    0x10(%r10),%r11d   ;*getfield end
                   │││││    ││    │││││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                   │││││    ││    │││││   ││                                                ; - com.google.re2j.Machine::match@415 (line 261)
  0.01%    0.02%   │││││    ││    │││││   ││  0x00007fc50926f796: mov    0xc(%r10),%r8d     ;*getfield start
                   │││││    ││    │││││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                   │││││    ││    │││││   ││                                                ; - com.google.re2j.Machine::match@415 (line 261)
  0.05%    0.11%   │││││    ││    │││││   ││  0x00007fc50926f79a: mov    0x14(%r10),%r13d   ;*getfield str
                   │││││    ││    │││││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                   │││││    ││    │││││   ││                                                ; - com.google.re2j.Machine::match@415 (line 261)
  0.16%    0.14%   │││││    ││    │││││   ││  0x00007fc50926f79e: mov    0x38(%rsp),%r9d
  0.37%    0.51%   │││││    ││    │││││   ││  0x00007fc50926f7a3: cmp    $0xffffffff,%r9d
                   │││││    ││╭   │││││   ││  0x00007fc50926f7a7: je     0x00007fc50926f9fd  ;*if_icmpeq
                   │││││    │││   │││││   ││                                                ; - com.google.re2j.Machine::match@407 (line 260)
  0.00%    0.01%   │││││    │││   │││││   ││  0x00007fc50926f7ad: mov    0x30(%rsp),%ecx
  0.06%    0.13%   │││││    │││   │││││   ││  0x00007fc50926f7b1: add    0x64(%rsp),%ecx
  0.12%    0.13%   │││││    │││   │││││   ││  0x00007fc50926f7b5: add    %r8d,%ecx          ;*iadd
                   │││││    │││   │││││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                   │││││    │││   │││││   ││                                                ; - com.google.re2j.Machine::match@415 (line 261)
  0.46%    0.56%   │││││    │││   │││││   ││  0x00007fc50926f7b8: cmp    %r11d,%ecx
                   │││││    │││╭  │││││   ││  0x00007fc50926f7bb: jge    0x00007fc50926fa4b  ;*if_icmpge
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.Machine::match@415 (line 261)
  0.01%    0.02%   │││││    ││││  │││││   ││  0x00007fc50926f7c1: mov    0x8(%r12,%r13,8),%r10d  ; implicit exception: dispatches to 0x00007fc509271429
  0.52%    0.60%   │││││    ││││  │││││   ││  0x00007fc50926f7c6: cmp    $0xf80002da,%r10d  ;   {metadata(&apos;java/lang/String&apos;)}
                   │││││    ││││  │││││   ││  0x00007fc50926f7cd: jne    0x00007fc50926ffdd
  0.38%    0.46%   │││││    ││││  │││││   ││  0x00007fc50926f7d3: lea    (%r12,%r13,8),%rdi  ;*invokeinterface charAt
                   │││││    ││││  │││││   ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.Machine::match@415 (line 261)
  0.20%    0.21%   │││││    ││││  │││││   ││  0x00007fc50926f7d7: test   %ecx,%ecx
                   │││││    ││││  │││││   ││  0x00007fc50926f7d9: jl     0x00007fc5092700f5  ;*iflt
                   │││││    ││││  │││││   ││                                                ; - java.lang.String::charAt@1 (line 657)
                   │││││    ││││  │││││   ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.Machine::match@415 (line 261)
  0.00%            │││││    ││││  │││││   ││  0x00007fc50926f7df: mov    0xc(%rdi),%r14d    ;*getfield value
                   │││││    ││││  │││││   ││                                                ; - java.lang.String::charAt@6 (line 657)
                   │││││    ││││  │││││   ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.Machine::match@415 (line 261)
  0.19%    0.26%   │││││    ││││  │││││   ││  0x00007fc50926f7e3: mov    0xc(%r12,%r14,8),%ebp  ;*arraylength
                   │││││    ││││  │││││   ││                                                ; - java.lang.String::charAt@9 (line 657)
                   │││││    ││││  │││││   ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.Machine::match@415 (line 261)
                   │││││    ││││  │││││   ││                                                ; implicit exception: dispatches to 0x00007fc50927143d
  2.39%    3.18%   │││││    ││││  │││││   ││  0x00007fc50926f7e8: cmp    %ebp,%ecx
                   │││││    ││││  │││││   ││  0x00007fc50926f7ea: jge    0x00007fc509270329  ;*if_icmplt
                   │││││    ││││  │││││   ││                                                ; - java.lang.String::charAt@10 (line 657)
                   │││││    ││││  │││││   ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.Machine::match@415 (line 261)
  0.67%    0.77%   │││││    ││││  │││││   ││  0x00007fc50926f7f0: cmp    %ebp,%ecx
                   │││││    ││││  │││││   ││  0x00007fc50926f7f2: jae    0x00007fc50926ff76
  0.26%    0.34%   │││││    ││││  │││││   ││  0x00007fc50926f7f8: lea    (%r12,%r14,8),%r10
  0.03%    0.02%   │││││    ││││  │││││   ││  0x00007fc50926f7fc: movzwl 0x10(%r10,%rcx,2),%r9d  ;*caload
                   │││││    ││││  │││││   ││                                                ; - java.lang.String::charAt@27 (line 660)
                   │││││    ││││  │││││   ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.Machine::match@415 (line 261)
  0.05%    0.08%   │││││    ││││  │││││   ││  0x00007fc50926f802: cmp    $0xd800,%r9d
                   │││││    ││││  │││││   ││  0x00007fc50926f809: jge    0x00007fc50927039d  ;*if_icmplt
                   │││││    ││││  │││││   ││                                                ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   │││││    ││││  │││││   ││                                                ; - java.lang.Character::codePointAt@9 (line 4867)
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.Machine::match@415 (line 261)
  0.71%    0.67%   │││││    ││││  │││││   ││  0x00007fc50926f80f: shl    $0x3,%r9d          ;*ishl
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.Machine::match@415 (line 261)
  0.40%    0.45%   │││││    ││││  │││││   ││  0x00007fc50926f813: mov    %r9d,%ecx
  0.00%    0.01%   │││││    ││││  │││││   ││  0x00007fc50926f816: or     $0x1,%ecx
  0.46%    0.63%   │││││    ││││  │││││   ││  0x00007fc50926f819: and    $0x7,%r9d
  0.11%    0.09%   │││││    ││││  │││││   ││  0x00007fc50926f81d: sar    $0x3,%ecx          ;*ishr
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.Machine::match@423 (line 262)
  0.59%    0.63%   │││││    ││││  │││││   ││  0x00007fc50926f820: or     $0x1,%r9d          ; OopMap{r13=NarrowOop [24]=Oop [32]=Oop [64]=Oop [76]=NarrowOop [80]=Oop [104]=Oop [112]=Oop off=1156}
                   │││││    ││││  │││││   ││                                                ;*goto
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.Machine::match@445 (line 268)
  0.02%    0.02%   │││││    ││││  │││││↗ ↗││  0x00007fc50926f824: test   %eax,0x1803a7d6(%rip)        # 0x00007fc5212aa000
                   │││││    ││││  ││││││ │││                                                ;*goto
                   │││││    ││││  ││││││ │││                                                ; - com.google.re2j.Machine::match@445 (line 268)
                   │││││    ││││  ││││││ │││                                                ;   {poll}
  0.03%    0.00%   │││││    ││││  ││││││ │││  0x00007fc50926f82a: mov    0x40(%rsp),%r10
  0.05%    0.08%   │││││    ││││  ││││││ │││  0x00007fc50926f82f: mov    0x28(%r10),%r14d   ;*getfield matchcap
                   │││││    ││││  ││││││ │││                                                ; - com.google.re2j.Machine::match@311 (line 245)
  0.53%    0.52%   │││││    ││││  ││││││ │││  0x00007fc50926f833: mov    0x14(%r10),%esi    ;*getfield re2
                   │││││    ││││  ││││││ │││                                                ; - com.google.re2j.Machine::match@178 (line 222)
           0.01%   │││││    ││││  ││││││ │││  0x00007fc50926f837: mov    0x68(%rsp),%r10
  0.02%    0.02%   │││││    ││││  ││││││ │││  0x00007fc50926f83c: shr    $0x3,%r10
  0.15%    0.07%   │││││    ││││  ││││││ │││  0x00007fc50926f840: mov    %r10d,0x28(%rsp)
  0.45%    0.66%   │││││    ││││  ││││││ │││  0x00007fc50926f845: mov    0x38(%rsp),%r10d
  0.01%    0.00%   │││││    ││││  ││││││ │││  0x00007fc50926f84a: vmovd  %ebx,%xmm2
                   │││││    ││││  ││││││ │││  0x00007fc50926f84e: mov    0x20(%rsp),%rbx
  0.07%    0.13%   │││││    ││││  ││││││ │││  0x00007fc50926f853: mov    %rbx,0x68(%rsp)
  0.46%    0.47%   │││││    ││││  ││││││ │││  0x00007fc50926f858: mov    0x30(%rsp),%edi
  0.01%    0.00%   │││││    ││││  ││││││ │││  0x00007fc50926f85c: mov    %edi,0x2c(%rsp)
  0.01%            │││││    ││││  ││││││ │││  0x00007fc50926f860: mov    %r9d,0x30(%rsp)
  0.15%    0.10%   │││││    ││││  ││││││ │││  0x00007fc50926f865: mov    %ecx,0x38(%rsp)
  0.66%    0.46%   │││││    ││││  ││││││ │││  0x00007fc50926f869: mov    %r8d,0x70(%rsp)
  0.01%            │││││    ││││  ││││││ │││  0x00007fc50926f86e: mov    %r11d,0x74(%rsp)
  0.01%    0.00%   ↘││││    ││││  ││││││ │││  0x00007fc50926f873: mov    0x28(%rsp),%r11d
  0.06%    0.10%    ││││    ││││  ││││││ │││  0x00007fc50926f878: movzbl 0x18(%r12,%r11,8),%r11d  ; implicit exception: dispatches to 0x00007fc50927141a
  0.49%    0.58%    ││││    ││││  ││││││ │││  0x00007fc50926f87e: mov    0x28(%rsp),%r8d
  0.01%             ││││    ││││  ││││││ │││  0x00007fc50926f883: shl    $0x3,%r8           ;*aload
                    ││││    ││││  ││││││ │││                                                ; - com.google.re2j.Machine::match@145 (line 213)
  0.00%    0.00%    ││││    ││││  ││││││ │││  0x00007fc50926f887: mov    %r8,0x20(%rsp)
  0.09%    0.09%    ││││    ││││  ││││││ │││  0x00007fc50926f88c: test   %r11d,%r11d
                    ││││    ││││╭ ││││││ │││  0x00007fc50926f88f: je     0x00007fc50926f8dd  ;*ifeq
                    ││││    │││││ ││││││ │││                                                ; - com.google.re2j.Machine::match@150 (line 213)
  0.27%    0.26%    ││││    │││││ ││││││ │││  0x00007fc50926f891: mov    0x58(%rsp),%r11d
                    ││││    │││││ ││││││ │││  0x00007fc50926f896: test   %r11d,%r11d
                    ││││    │││││ ││││││ │││  0x00007fc50926f899: jne    0x00007fc509270531  ;*ifeq
                    ││││    │││││ ││││││ │││                                                ; - com.google.re2j.Machine::match@157 (line 214)
                    ││││    │││││ ││││││ │││  0x00007fc50926f89f: test   %eax,%eax
                    ││││    │││││ ││││││ │││  0x00007fc50926f8a1: jne    0x00007fc50927058d  ;*ifeq
                    ││││    │││││ ││││││ │││                                                ; - com.google.re2j.Machine::match@171 (line 218)
  0.01%    0.02%    ││││    │││││ ││││││ │││  0x00007fc50926f8a7: mov    0x24(%r12,%rsi,8),%r11d  ;*getfield prefix
                    ││││    │││││ ││││││ │││                                                ; - com.google.re2j.Machine::match@181 (line 222)
                    ││││    │││││ ││││││ │││                                                ; implicit exception: dispatches to 0x00007fc50927145d
  0.23%    0.28%    ││││    │││││ ││││││ │││  0x00007fc50926f8ac: mov    %r11d,%r8d
           0.00%    ││││    │││││ ││││││ │││  0x00007fc50926f8af: mov    0xc(%r12,%r11,8),%r11d  ;*getfield value
                    ││││    │││││ ││││││ │││                                                ; - java.lang.String::isEmpty@1 (line 635)
                    ││││    │││││ ││││││ │││                                                ; - com.google.re2j.Machine::match@184 (line 222)
                    ││││    │││││ ││││││ │││                                                ; implicit exception: dispatches to 0x00007fc50927146d
  0.00%    0.00%    ││││    │││││ ││││││ │││  0x00007fc50926f8b4: vmovd  %r11d,%xmm0
  0.03%    0.03%    ││││    │││││ ││││││ │││  0x00007fc50926f8b9: mov    0xc(%r12,%r11,8),%r11d  ;*arraylength
                    ││││    │││││ ││││││ │││                                                ; - java.lang.String::isEmpty@4 (line 635)
                    ││││    │││││ ││││││ │││                                                ; - com.google.re2j.Machine::match@184 (line 222)
                    ││││    │││││ ││││││ │││                                                ; implicit exception: dispatches to 0x00007fc50927147d
  0.24%    0.23%    ││││    │││││ ││││││ │││  0x00007fc50926f8be: mov    %r11d,0x5c(%rsp)
  0.03%    0.02%    ││││    │││││ ││││││ │││  0x00007fc50926f8c3: test   %r11d,%r11d
                    ││││    │││││ ││││││ │││  0x00007fc50926f8c6: jne    0x00007fc50926fb20  ;*ifne
                    ││││    │││││ ││││││ │││                                                ; - com.google.re2j.Machine::match@187 (line 222)
                    ││││    │││││ ││││││ │││  0x00007fc50926f8cc: mov    %r10d,0x60(%rsp)
  0.01%    0.02%    ││││    │││││ ││││││ │││  0x00007fc50926f8d1: mov    0x64(%rsp),%r11d
  0.23%    0.12%    ││││    │││││ ││││││ │││  0x00007fc50926f8d6: mov    %r11d,0x5c(%rsp)
  0.07%    0.00%    ││││    │││││╭││││││ │││  0x00007fc50926f8db: jmp    0x00007fc50926f8ec
  0.28%    0.24%    ││││    ││││↘│││││││ │││  0x00007fc50926f8dd: mov    %r10d,0x60(%rsp)
                    ││││    ││││ │││││││ │││  0x00007fc50926f8e2: mov    0x64(%rsp),%r10d
  0.01%    0.00%    ││││    ││││ │││││││ │││  0x00007fc50926f8e7: mov    %r10d,0x5c(%rsp)   ;*iload_3
                    ││││    ││││ │││││││ │││                                                ; - com.google.re2j.Machine::match@276 (line 239)
  0.08%    0.08%    ││││    ││││ ↘││││││ │││  0x00007fc50926f8ec: test   %eax,%eax
                    ││││    ││││  ││││││ │││  0x00007fc50926f8ee: jne    0x00007fc509270041  ;*ifne
                    ││││    ││││  ││││││ │││                                                ; - com.google.re2j.Machine::match@288 (line 239)
  0.30%    0.31%    ││││    ││││  ││││││ │││  0x00007fc50926f8f4: vmovd  %xmm2,%r11d
  0.19%    0.07%    ││││    ││││  ││││││ │││  0x00007fc50926f8f9: test   %r11d,%r11d
                    ││││    ││││  ││││││ │││  0x00007fc50926f8fc: jne    0x00007fc5092701c5  ;*ifeq
                    ││││    ││││  ││││││ │││                                                ; - com.google.re2j.Machine::match@295 (line 242)
  0.01%    0.00%    ││││    ││││  ││││││ │││  0x00007fc50926f902: mov    0x14(%rsp),%r10d
  0.09%    0.03%    ││││    ││││  ││││││ │││  0x00007fc50926f907: cmp    $0xf8019a09,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$Alt5Inst&apos;)}
                    ││││    ││││  ╰│││││ │││  0x00007fc50926f90e: je     0x00007fc50926f633
  0.22%    0.16%    ││││    ││││   │││││ │││  0x00007fc50926f914: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                    ││││    ││││   │││││ │││  0x00007fc50926f91b: jne    0x00007fc509270279
  0.00%             ││││    ││││   │││││ │││  0x00007fc50926f921: mov    0x18(%rsp),%r10    ;*invokevirtual add
                    ││││    ││││   │││││ │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.00%             ││││    ││││   │││││ │││  0x00007fc50926f926: mov    %r10,0x70(%rsp)
  0.03%    0.03%    ││││    ││││   │││││ │││  0x00007fc50926f92b: mov    0x18(%r10),%ecx    ;*getfield pc
                    ││││    ││││   │││││ │││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                    ││││    ││││   │││││ │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.20%    0.12%    ││││    ││││   │││││ │││  0x00007fc50926f92f: cmp    $0x40,%ecx
                    ││││    ││││   │││││ │││  0x00007fc50926f932: jg     0x00007fc509270401  ;*if_icmpgt
                    ││││    ││││   │││││ │││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                    ││││    ││││   │││││ │││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                    ││││    ││││   │││││ │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
                    ││││    ││││   │││││ │││  0x00007fc50926f938: mov    $0x1,%r9d
  0.00%    0.01%    ││││    ││││   │││││ │││  0x00007fc50926f93e: shl    %cl,%r9            ;*lshl
                    ││││    ││││   │││││ │││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                    ││││    ││││   │││││ │││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                    ││││    ││││   │││││ │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.37%    0.18%    ││││    ││││   │││││ │││  0x00007fc50926f941: mov    0x28(%rsp),%r11d
  0.02%    0.00%    ││││    ││││   │││││ │││  0x00007fc50926f946: mov    0x10(%r12,%r11,8),%r10  ;*getfield pcsl
                    ││││    ││││   │││││ │││                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                    ││││    ││││   │││││ │││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                    ││││    ││││   │││││ │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.05%    0.01%    ││││    ││││   │││││ │││  0x00007fc50926f94b: mov    %r10,%r11
  0.28%    0.08%    ││││    ││││   │││││ │││  0x00007fc50926f94e: and    %r9,%r11           ;*land
                    ││││    ││││   │││││ │││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                    ││││    ││││   │││││ │││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                    ││││    ││││   │││││ │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
           0.00%    ││││    ││││   │││││ │││  0x00007fc50926f951: test   %r11,%r11
                    ││││    ││││   │││││ │││  0x00007fc50926f954: jne    0x00007fc50927045d  ;*ifeq
                    ││││    ││││   │││││ │││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                    ││││    ││││   │││││ │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
           0.01%    ││││    ││││   │││││ │││  0x00007fc50926f95a: cmp    $0x40,%ecx
                    ││││    ││││   │││││ │││  0x00007fc50926f95d: jge    0x00007fc5092704d5  ;*if_icmpge
                    ││││    ││││   │││││ │││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                    ││││    ││││   │││││ │││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                    ││││    ││││   │││││ │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.04%    0.01%    ││││    ││││   │││││ │││  0x00007fc50926f963: mov    0x28(%rsp),%r11d
  0.27%    0.05%    ││││    ││││   │││││ │││  0x00007fc50926f968: mov    %r12b,0x18(%r12,%r11,8)  ;*putfield empty
                    ││││    ││││   │││││ │││                                                ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                    ││││    ││││   │││││ │││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                    ││││    ││││   │││││ │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.00%    0.02%    ││││    ││││   │││││ │││  0x00007fc50926f96d: mov    0x20(%r12,%r11,8),%r8d  ;*getfield denseThreadsInstructions
                    ││││    ││││   │││││ │││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                    ││││    ││││   │││││ │││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                    ││││    ││││   │││││ │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.00%    0.01%    ││││    ││││   │││││ │││  0x00007fc50926f972: mov    0xc(%r12,%r11,8),%ebp  ;*getfield size
                    ││││    ││││   │││││ │││                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                    ││││    ││││   │││││ │││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                    ││││    ││││   │││││ │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.04%             ││││    ││││   │││││ │││  0x00007fc50926f977: or     %r10,%r9
  0.21%    0.07%    ││││    ││││   │││││ │││  0x00007fc50926f97a: mov    %r9,0x10(%r12,%r11,8)  ;*putfield pcsl
                    ││││    ││││   │││││ │││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                    ││││    ││││   │││││ │││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                    ││││    ││││   │││││ │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.01%    0.00%    ││││    ││││   │││││ │││  0x00007fc50926f97f: mov    %ebp,%r11d
  0.01%    0.01%    ││││    ││││   │││││ │││  0x00007fc50926f982: inc    %r11d
  0.04%    0.00%    ││││    ││││   │││││ │││  0x00007fc50926f985: mov    0x28(%rsp),%r10d
  0.16%    0.21%    ││││    ││││   │││││ │││  0x00007fc50926f98a: mov    %r11d,0xc(%r12,%r10,8)  ;*putfield size
                    ││││    ││││   │││││ │││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                    ││││    ││││   │││││ │││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                    ││││    ││││   │││││ │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
           0.00%    ││││    ││││   │││││ │││  0x00007fc50926f98f: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x00007fc50927144d
  0.02%    0.07%    ││││    ││││   │││││ │││  0x00007fc50926f994: cmp    %r11d,%ebp
                    ││││    ││││   │││││ │││  0x00007fc50926f997: jae    0x00007fc509270159
  0.13%    0.10%    ││││    ││││   │││││ │││  0x00007fc50926f99d: mov    0x8(%r12,%r8,8),%r11d
  0.25%    0.15%    ││││    ││││   │││││ │││  0x00007fc50926f9a2: cmp    $0xf8019807,%r11d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                    ││││    ││││   │││││ │││  0x00007fc50926f9a9: jne    0x00007fc5092702bd
  0.01%    0.00%    ││││    ││││   │││││ │││  0x00007fc50926f9af: mov    0x70(%rsp),%r10
           0.01%    ││││    ││││   │││││ │││  0x00007fc50926f9b4: mov    %r10,%r11
  0.07%    0.10%    ││││    ││││   │││││ │││  0x00007fc50926f9b7: shr    $0x3,%r11          ;*aastore
                    ││││    ││││   │││││ │││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                    ││││    ││││   │││││ │││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                    ││││    ││││   │││││ │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.22%    0.13%    ││││    ││││   │││││ │││  0x00007fc50926f9bb: lea    (%r12,%r8,8),%r10  ;*getfield denseThreadsInstructions
                    ││││    ││││   │││││ │││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                    ││││    ││││   │││││ │││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                    ││││    ││││   │││││ │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.01%    0.00%    ││││    ││││   │││││ │││  0x00007fc50926f9bf: lea    0x10(%r10,%rbp,4),%r10
  0.01%    0.00%    ││││    ││││   │││││ │││  0x00007fc50926f9c4: mov    %r11d,(%r10)
  0.32%    0.32%    ││││    ││││   │││││ │││  0x00007fc50926f9c7: shr    $0x9,%r10
  0.16%    0.07%    ││││    ││││   │││││ │││  0x00007fc50926f9cb: movabs $0x7fc519cb2000,%r11
           0.00%    ││││    ││││   │││││ │││  0x00007fc50926f9d5: mov    %r12b,(%r11,%r10,1)  ;*aastore
                    ││││    ││││   │││││ │││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                    ││││    ││││   │││││ │││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                    ││││    ││││   │││││ │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.28%    0.26%    ││││    ││││   ╰││││ │││  0x00007fc50926f9d9: jmpq   0x00007fc50926f66d
                    ↘│││    ││││    ││││ │││  0x00007fc50926f9de: mov    $0x5,%r8d
                     │││    ││││    ╰│││ │││  0x00007fc50926f9e4: jmpq   0x00007fc50926f67e
                     │↘│    ││││     │││ │││  0x00007fc50926f9e9: or     $0xa,%r8d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@27 (line 180)
                     │ │    ││││     │││ │││                                                ; - com.google.re2j.Machine::match@330 (line 247)
                     │ │    ││││     ╰││ │││  0x00007fc50926f9ed: jmpq   0x00007fc50926f696
  0.01%    0.00%     │ │    ↘│││      ││ │││  0x00007fc50926f9f2: mov    $0x1,%r11d
                     │ │     │││      ╰│ │││  0x00007fc50926f9f8: jmpq   0x00007fc50926f722
                     │ │     │↘│       │ │││  0x00007fc50926f9fd: mov    0x30(%rsp),%r9d
  0.00%    0.00%     │ │     │ │       │ │││  0x00007fc50926fa02: mov    $0xffffffff,%ecx
           0.00%     │ │     │ │       ╰ │││  0x00007fc50926fa07: jmpq   0x00007fc50926f824
                     │ │     ↘ │         │││  0x00007fc50926fa0c: test   %ebx,%ebx
                     │ │       │         │││  0x00007fc50926fa0e: jne    0x00007fc50926fe57  ;*getfield matched
                     │ │       │         │││                                                ; - com.google.re2j.Machine::match@455 (line 270)
  0.00%              │ │       │         │││  0x00007fc50926fa14: mov    0x68(%rsp),%r11
                     │ │       │         │││  0x00007fc50926fa19: movzbl 0x18(%r11),%r10d   ; implicit exception: dispatches to 0x00007fc5092714f5
                     │ │       │         │││  0x00007fc50926fa1e: test   %r10d,%r10d
                     │ │       │        ╭│││  0x00007fc50926fa21: jne    0x00007fc50926fa3c  ;*ifeq
                     │ │       │        ││││                                                ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                     │ │       │        ││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                     │ │       │        ││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                     │ │       │        ││││                                                ; - com.google.re2j.Machine::match@451 (line 269)
                     │ │       │        ││││  0x00007fc50926fa23: movb   $0x1,0x18(%r11)    ;*putfield empty
                     │ │       │        ││││                                                ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                     │ │       │        ││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                     │ │       │        ││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                     │ │       │        ││││                                                ; - com.google.re2j.Machine::match@451 (line 269)
                     │ │       │        ││││  0x00007fc50926fa28: mov    0x1c(%r11),%ebp    ;*getfield pcs
                     │ │       │        ││││                                                ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                     │ │       │        ││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                     │ │       │        ││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                     │ │       │        ││││                                                ; - com.google.re2j.Machine::match@451 (line 269)
           0.00%     │ │       │        ││││  0x00007fc50926fa2c: mov    %r12d,0xc(%r11)    ;*putfield size
                     │ │       │        ││││                                                ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                     │ │       │        ││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                     │ │       │        ││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                     │ │       │        ││││                                                ; - com.google.re2j.Machine::match@451 (line 269)
           0.00%     │ │       │        ││││  0x00007fc50926fa30: mov    %r12,0x10(%r11)    ;*putfield pcsl
                     │ │       │        ││││                                                ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                     │ │       │        ││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                     │ │       │        ││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                     │ │       │        ││││                                                ; - com.google.re2j.Machine::match@451 (line 269)
                     │ │       │        ││││  0x00007fc50926fa34: test   %ebp,%ebp
                     │ │       │        ││││  0x00007fc50926fa36: jne    0x00007fc509270da5  ;*if_icmpne
                     │ │       │        ││││                                                ; - com.google.re2j.Machine::match@12 (line 183)
           0.01%     │ │       │        ↘│││  0x00007fc50926fa3c: add    $0x90,%rsp
           0.01%     │ │       │         │││  0x00007fc50926fa43: pop    %rbp
                     │ │       │         │││  0x00007fc50926fa44: test   %eax,0x1803a5b6(%rip)        # 0x00007fc5212aa000
                     │ │       │         │││                                                ;   {poll_return}
                     │ │       │         │││  0x00007fc50926fa4a: retq   
  0.03%    0.01%     │ │       ↘         │││  0x00007fc50926fa4b: mov    $0xffffffff,%ecx
  0.02%    0.00%     │ │                 │││  0x00007fc50926fa50: xor    %r9d,%r9d
                     │ │                 ╰││  0x00007fc50926fa53: jmpq   0x00007fc50926f824
                     ↘ │                  ││  0x00007fc50926fa58: or     $0x1,%r8d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@18 (line 177)
                       │                  ││                                                ; - com.google.re2j.Machine::match@330 (line 247)
                       │                  ╰│  0x00007fc50926fa5c: jmpq   0x00007fc50926f688
  0.00%                ↘                   │  0x00007fc50926fa61: or     $0x2,%r8d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@37 (line 183)
                                           │                                                ; - com.google.re2j.Machine::match@330 (line 247)
                                           ╰  0x00007fc50926fa65: jmpq   0x00007fc50926f6a0
                                              0x00007fc50926fa6a: nopw   0x0(%rax,%rax,1)
           0.00%                              0x00007fc50926fa70: mov    %r9d,%r10d
                                              0x00007fc50926fa73: jmpq   0x00007fc50926fc77
                                              0x00007fc50926fa78: add    $0x2,%r10d
                                              0x00007fc50926fa7c: mov    %r10d,%r9d
                                              0x00007fc50926fa7f: inc    %r9d
                                              0x00007fc50926fa82: jmp    0x00007fc50926fa94
                                              0x00007fc50926fa84: mov    %r10d,%r9d
                                              0x00007fc50926fa87: add    $0x2,%r9d
                                              0x00007fc50926fa8b: jmp    0x00007fc50926fa91
                                              0x00007fc50926fa8d: add    $0x2,%r10d
                                              0x00007fc50926fa91: inc    %r10d              ;*iinc
....................................................................................................
 29.31%   28.84%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 544 (318 bytes) 

                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                    ; - com.google.re2j.Machine::step@214 (line 319)
                                                                    ;   {optimized virtual_call}
                      0x00007fc509245324: test   %rax,%rax
                      0x00007fc509245327: jne    0x00007fc509246211  ;*ifnull
                                                                    ; - com.google.re2j.Machine::step@221 (line 322)
                      0x00007fc50924532d: mov    0x30(%rsp),%r11
                  ╭   0x00007fc509245332: jmp    0x00007fc5092453a3
  0.05%    0.09%  │   0x00007fc509245334: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │   0x00007fc50924533a: jne    0x00007fc509245c61  ;*invokevirtual add
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 282)
  0.03%    0.05%  │   0x00007fc509245340: mov    0x18(%rbx),%ecx    ;*getfield pc
                  │                                                 ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 282)
  0.15%    0.17%  │   0x00007fc509245343: cmp    $0x40,%ecx
                  │   0x00007fc509245346: jg     0x00007fc5092460d1  ;*if_icmpgt
                  │                                                 ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 282)
  0.03%    0.03%  │   0x00007fc50924534c: mov    $0x1,%edi
  0.08%    0.07%  │   0x00007fc509245351: shl    %cl,%rdi           ;*lshl
                  │                                                 ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 282)
  0.23%    0.25%  │   0x00007fc509245354: mov    %rdx,%r10
  0.08%    0.07%  │   0x00007fc509245357: and    %rdi,%r10          ;*land
                  │                                                 ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 282)
  0.08%    0.04%  │   0x00007fc50924535a: test   %r10,%r10
                  │   0x00007fc50924535d: jne    0x00007fc509246135  ;*ifeq
                  │                                                 ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 282)
  0.12%    0.15%  │   0x00007fc509245363: cmp    $0x40,%ecx
                  │   0x00007fc509245366: jge    0x00007fc5092461ad  ;*if_icmpge
                  │                                                 ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 282)
  0.03%    0.05%  │   0x00007fc50924536c: or     %rdi,%rdx
  0.07%    0.08%  │   0x00007fc50924536f: mov    0x30(%rsp),%r11
  0.06%    0.04%  │   0x00007fc509245374: mov    %rdx,0x10(%r11)    ;*putfield pcsl
                  │                                                 ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 282)
  0.15%    0.11%  │   0x00007fc509245378: add    $0x18,%r8
  0.04%    0.03%  │   0x00007fc50924537c: mov    %rbx,%r10
  0.05%    0.10%  │   0x00007fc50924537f: shr    $0x3,%r10
  0.04%    0.06%  │   0x00007fc509245383: mov    %r10d,(%r8)        ;*aastore
                  │                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 282)
  0.18%    0.10%  │   0x00007fc509245386: mov    %r8,%r10
  0.05%    0.02%  │   0x00007fc509245389: add    $0x3,%r13d
  0.04%    0.11%  │   0x00007fc50924538d: mov    %r13d,0xc(%r11)    ;*putfield size
                  │                                                 ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 282)
  0.03%    0.03%  │   0x00007fc509245391: shr    $0x9,%r10
  0.13%    0.13%  │   0x00007fc509245395: movabs $0x7fc519cb2000,%r8
  0.01%    0.04%  │   0x00007fc50924539f: mov    %r12b,(%r8,%r10,1)  ;*synchronization entry
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 282)
  0.18%    0.18%  ↘   0x00007fc5092453a3: mov    0x28(%rsp),%r13
  0.03%    0.06%      0x00007fc5092453a8: mov    0xac(%rsp),%r9d
  0.14%    0.17%      0x00007fc5092453b0: mov    0xc(%rsp),%r14d
  0.03%    0.02%      0x00007fc5092453b5: mov    0x38(%rsp),%rbx
  0.10%    0.03%      0x00007fc5092453ba: mov    0xa4(%rsp),%edi
  0.03%               0x00007fc5092453c1: mov    0x44(%rsp),%r10d   ;*synchronization entry
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.17%    0.09%      0x00007fc5092453c6: mov    0xa8(%rsp),%r8d
  0.05%    0.04%      0x00007fc5092453ce: mov    0xb0(%rsp),%edx    ;*aload
                                                                    ; - com.google.re2j.Machine::step@219 (line 322)
  1.27%    1.40%      0x00007fc5092453d5: inc    %r10d              ;*iinc
                                                                    ; - com.google.re2j.Machine::step@230 (line 288)
  0.24%    0.18%      0x00007fc5092453d8: cmp    %r9d,%r10d
                      0x00007fc5092453db: jge    0x00007fc5092454c5
  1.17%    1.22%      0x00007fc5092453e1: mov    %r11,%rax
  0.12%    0.08%      0x00007fc5092453e4: mov    %r8d,0xa8(%rsp)
  1.06%    0.99%      0x00007fc5092453ec: mov    %edx,0xb0(%rsp)    ;*iload
                                                                    ; - com.google.re2j.Machine::step@43 (line 291)
  0.40%    0.50%      0x00007fc5092453f3: mov    0x10(%rbx,%r10,4),%ecx  ;*aaload
                                                                    ; - com.google.re2j.Machine::step@99 (line 301)
  1.12%    1.17%      0x00007fc5092453f8: mov    0xc(%r12,%rcx,8),%r8d  ;*getfield op
                                                                    ; - com.google.re2j.Machine::step@104 (line 303)
                                                                    ; implicit exception: dispatches to 0x00007fc509246271
  1.32%    1.30%      0x00007fc5092453fd: cmp    $0x6,%r8d
                      0x00007fc509245401: je     0x00007fc50924550d  ;*if_icmpne
                                                                    ; - com.google.re2j.Machine::step@109 (line 303)
  1.80%    1.90%      0x00007fc509245407: cmp    $0xa,%r8d
                      0x00007fc50924540b: je     0x00007fc509244fbf  ;*if_icmpne
                                                                    ; - com.google.re2j.Inst::matchRune@6 (line 90)
                                                                    ; - com.google.re2j.Machine::step@191 (line 318)
  0.80%    0.78%      0x00007fc509245411: cmp    $0xb,%r8d
                      0x00007fc509245415: je     0x00007fc509245565  ;*if_icmpne
                                                                    ; - com.google.re2j.Inst::matchRune@17 (line 94)
                                                                    ; - com.google.re2j.Machine::step@191 (line 318)
  1.85%    1.67%      0x00007fc50924541b: mov    0x1c(%r12,%rcx,8),%r11d  ;*getfield f0
                                                                    ; - com.google.re2j.Inst::matchRune@42 (line 99)
                                                                    ; - com.google.re2j.Machine::step@191 (line 318)
  0.04%    0.03%      0x00007fc509245420: cmp    $0x9,%r8d
                   ╭  0x00007fc509245424: jne    0x00007fc509245439  ;*if_icmpne
                   │                                                ; - com.google.re2j.Inst::matchRune@38 (line 98)
                   │                                                ; - com.google.re2j.Machine::step@191 (line 318)
  0.21%    0.16%   │  0x00007fc509245426: cmp    0x18(%rsp),%r11d
                   │  0x00007fc50924542b: je     0x00007fc509245502  ;*if_icmpne
                   │                                                ; - com.google.re2j.Inst::matchRune@46 (line 99)
                   │                                                ; - com.google.re2j.Machine::step@191 (line 318)
  0.12%    0.07%   │  0x00007fc509245431: xor    %r11d,%r11d
  0.32%    0.35%   │  0x00007fc509245434: jmpq   0x00007fc509244f13
  0.78%    0.66%   ↘  0x00007fc509245439: cmp    $0xc,%r8d
                      0x00007fc50924543d: jne    0x00007fc509245599  ;*if_icmpne
                                                                    ; - com.google.re2j.Inst::matchRune@61 (line 102)
                                                                    ; - com.google.re2j.Machine::step@191 (line 318)
  1.48%    1.52%      0x00007fc509245443: cmp    0x18(%rsp),%r11d
                      0x00007fc509245448: je     0x00007fc5092454f7  ;*if_icmpeq
                                                                    ; - com.google.re2j.Inst::matchRune@69 (line 103)
                                                                    ; - com.google.re2j.Machine::step@191 (line 318)
  1.21%    1.12%      0x00007fc50924544e: mov    0x20(%r12,%rcx,8),%r11d  ;*getfield f1
                                                                    ; - com.google.re2j.Inst::matchRune@73 (line 103)
                                                                    ; - com.google.re2j.Machine::step@191 (line 318)
  0.03%               0x00007fc509245453: cmp    0x18(%rsp),%r11d
                      0x00007fc509245458: je     0x00007fc5092454f7  ;*if_icmpeq
                                                                    ; - com.google.re2j.Inst::matchRune@77 (line 103)
                                                                    ; - com.google.re2j.Machine::step@191 (line 318)
  1.72%    1.78%      0x00007fc50924545e: mov    0x24(%r12,%rcx,8),%ebp  ;*getfield f2
                                                                    ; - com.google.re2j.Inst::matchRune@81 (line 103)
                                                                    ; - com.google.re2j.Machine::step@191 (line 318)
  0.25%    0.22%      0x00007fc509245463: cmp    0x18(%rsp),%ebp
                      0x00007fc509245467: je     0x00007fc5092455cd  ;*if_icmpeq
                                                                    ; - com.google.re2j.Inst::matchRune@85 (line 103)
                                                                    ; - com.google.re2j.Machine::step@191 (line 318)
  1.61%    1.91%      0x00007fc50924546d: mov    0x28(%r12,%rcx,8),%ebp  ;*getfield f3
                                                                    ; - com.google.re2j.Inst::matchRune@89 (line 103)
                                                                    ; - com.google.re2j.Machine::step@191 (line 318)
  0.02%    0.01%      0x00007fc509245472: cmp    0x18(%rsp),%ebp
                      0x00007fc509245476: jne    0x00007fc509244f10  ;*if_icmpne
                                                                    ; - com.google.re2j.Inst::matchRune@93 (line 103)
                                                                    ; - com.google.re2j.Machine::step@191 (line 318)
                      0x00007fc50924547c: mov    $0xffffff65,%esi
                      0x00007fc509245481: mov    %r10d,0xa4(%rsp)
                      0x00007fc509245489: mov    %ecx,0xac(%rsp)
                      0x00007fc509245490: mov    %r13,0x28(%rsp)
                      0x00007fc509245495: mov    %rax,0x30(%rsp)
....................................................................................................
 21.42%   21.47%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Inst$Alt5Inst::add, version 558 (867 bytes) 

                            # parm5:    [sp+0x80]   = &apos;com/google/re2j/Machine&apos;  (sp of caller)
                            # parm6:    [sp+0x88]   = boolean
                            0x00007fc50924a480: mov    0x8(%rsi),%r10d
                            0x00007fc50924a484: shl    $0x3,%r10
                            0x00007fc50924a488: cmp    %r10,%rax
                            0x00007fc50924a48b: jne    0x00007fc509045e20  ;   {runtime_call}
                            0x00007fc50924a491: data16 xchg %ax,%ax
                            0x00007fc50924a494: nopl   0x0(%rax,%rax,1)
                            0x00007fc50924a49c: data16 data16 xchg %ax,%ax
                          [Verified Entry Point]
  0.26%    0.28%            0x00007fc50924a4a0: mov    %eax,-0x14000(%rsp)
  0.11%    0.03%            0x00007fc50924a4a7: push   %rbp
  0.20%    0.17%            0x00007fc50924a4a8: sub    $0x70,%rsp         ;*synchronization entry
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@-1 (line 260)
  0.05%    0.02%            0x00007fc50924a4ac: vmovd  %r9d,%xmm4
  0.05%    0.02%            0x00007fc50924a4b1: vmovq  %r8,%xmm3
  0.21%    0.14%            0x00007fc50924a4b6: vmovq  %rsi,%xmm2
  0.02%    0.03%            0x00007fc50924a4bb: mov    %ecx,%r13d
  0.02%    0.00%            0x00007fc50924a4be: mov    0x18(%rsi),%ecx    ;*getfield pc
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@2 (line 260)
  0.06%    0.04%            0x00007fc50924a4c1: mov    0x10(%rdx),%r11    ;*getfield pcsl
                                                                          ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
                                                                          ; implicit exception: dispatches to 0x00007fc50924adc5
  0.24%    0.11%            0x00007fc50924a4c5: cmp    $0x40,%ecx
                            0x00007fc50924a4c8: jg     0x00007fc50924a9d5  ;*if_icmpgt
                                                                          ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.02%    0.02%            0x00007fc50924a4ce: mov    $0x1,%esi
  0.02%    0.02%            0x00007fc50924a4d3: mov    $0x1,%r9d
  0.03%    0.11%            0x00007fc50924a4d9: shl    %cl,%r9            ;*lshl
                                                                          ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.32%    0.31%            0x00007fc50924a4dc: mov    %r11,%r10
  0.07%    0.08%            0x00007fc50924a4df: and    %r9,%r10           ;*land
                                                                          ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.22%    0.16%            0x00007fc50924a4e2: test   %r10,%r10
                  ╭         0x00007fc50924a4e5: jne    0x00007fc50924a804  ;*ifeq
                  │                                                       ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                       ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.03%    0.01%  │         0x00007fc50924a4eb: xor    %ebp,%ebp          ;*ireturn
                  │                                                       ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  │                                                       ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.02%    0.03%  │   ↗     0x00007fc50924a4ed: test   %r10,%r10
                  │   │     0x00007fc50924a4f0: jne    0x00007fc50924aa09  ;*ifeq
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@8 (line 260)
  0.07%    0.05%  │   │     0x00007fc50924a4f6: cmp    $0x40,%ecx
                  │   │     0x00007fc50924a4f9: jge    0x00007fc50924aa39  ;*if_icmpge
                  │   │                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.25%    0.24%  │   │     0x00007fc50924a4ff: mov    %r12b,0x18(%rdx)   ;*putfield empty
                  │   │                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.02%    0.02%  │   │     0x00007fc50924a503: vmovq  %xmm2,%r10
  0.02%    0.02%  │   │     0x00007fc50924a508: mov    0x2c(%r10),%ebp    ;*getfield outInst
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@23 (line 265)
  0.07%    0.05%  │   │     0x00007fc50924a50c: or     %r11,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.26%    0.22%  │   │     0x00007fc50924a50f: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  │   │                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.02%    0.03%  │   │     0x00007fc50924a513: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007fc50924add9
  0.10%    0.12%  │   │     0x00007fc50924a518: cmp    $0xf8019909,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │   │     0x00007fc50924a51f: jne    0x00007fc50924a8b9
  0.10%    0.09%  │   │     0x00007fc50924a525: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.21%    0.20%  │   │     0x00007fc50924a529: mov    0x18(%r11),%ecx    ;*getfield pc
                  │   │                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.02%    0.02%  │   │     0x00007fc50924a52d: cmp    $0x40,%ecx
                  │   │     0x00007fc50924a530: jg     0x00007fc50924aa6d  ;*if_icmpgt
                  │   │                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │   │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.02%    0.06%  │   │     0x00007fc50924a536: mov    $0x1,%r10d
  0.10%    0.11%  │   │     0x00007fc50924a53c: shl    %cl,%r10           ;*lshl
                  │   │                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │   │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.31%    0.36%  │   │     0x00007fc50924a53f: mov    %r9,%r8
  0.08%    0.09%  │   │     0x00007fc50924a542: and    %r10,%r8           ;*land
                  │   │                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │   │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.19%    0.35%  │   │     0x00007fc50924a545: test   %r8,%r8
                  │╭  │     0x00007fc50924a548: jne    0x00007fc50924a80e  ;*ifeq
                  ││  │                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  ││  │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││  │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.02%    0.05%  ││  │     0x00007fc50924a54e: xor    %ebp,%ebp          ;*ireturn
                  ││  │                                                   ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  ││  │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││  │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.03%    0.07%  ││  │↗    0x00007fc50924a550: test   %r8,%r8
                  ││  ││    0x00007fc50924a553: jne    0x00007fc50924aaa9  ;*ifeq
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.14%    0.09%  ││  ││    0x00007fc50924a559: cmp    $0x40,%ecx
                  ││  ││    0x00007fc50924a55c: jge    0x00007fc50924aadd  ;*if_icmpge
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.19%    0.23%  ││  ││    0x00007fc50924a562: or     %r10,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.01%    0.00%  ││  ││    0x00007fc50924a565: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.01%    0.05%  ││  ││    0x00007fc50924a569: mov    0x88(%rsp),%r8d
  0.10%    0.13%  ││  ││    0x00007fc50924a571: test   %r8d,%r8d
                  ││  ││    0x00007fc50924a574: jne    0x00007fc50924ab1d  ;*ifeq
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@24 (line 149)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.23%    0.23%  ││  ││    0x00007fc50924a57a: mov    0xc(%rdx),%ecx     ;*getfield size
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.04%    0.02%  ││  ││    0x00007fc50924a57d: mov    0x20(%rdx),%ebx    ;*getfield denseThreadsInstructions
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.04%    0.04%  ││  ││    0x00007fc50924a580: mov    %ecx,%edi
  0.08%    0.15%  ││  ││    0x00007fc50924a582: inc    %edi               ;*iadd
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.13%    0.24%  ││  ││    0x00007fc50924a584: mov    %edi,0xc(%rdx)     ;*putfield size
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.01%    0.01%  ││  ││    0x00007fc50924a587: mov    0xc(%r12,%rbx,8),%r10d  ; implicit exception: dispatches to 0x00007fc50924ae01
  0.06%    0.05%  ││  ││    0x00007fc50924a58c: cmp    %r10d,%ecx
                  ││  ││    0x00007fc50924a58f: jae    0x00007fc50924a83d
  0.10%    0.10%  ││  ││    0x00007fc50924a595: vmovd  %edi,%xmm0
  0.21%    0.34%  ││  ││    0x00007fc50924a599: mov    %ebx,%edi
  0.02%    0.04%  ││  ││    0x00007fc50924a59b: mov    %ecx,%eax
  0.03%    0.04%  ││  ││    0x00007fc50924a59d: mov    %r11,%rcx
  0.11%    0.16%  ││  ││    0x00007fc50924a5a0: mov    0x88(%rsp),%r11d
  0.17%    0.20%  ││  ││    0x00007fc50924a5a8: mov    0x8(%r12,%rbx,8),%r8d
  0.03%    0.01%  ││  ││    0x00007fc50924a5ad: cmp    $0xf8019807,%r8d   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                  ││  ││    0x00007fc50924a5b4: jne    0x00007fc50924a8e9  ;*aastore
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.03%    0.04%  ││  ││    0x00007fc50924a5ba: vmovq  %xmm2,%r11
  0.11%    0.10%  ││  ││    0x00007fc50924a5bf: mov    0x34(%r11),%ebp    ;*getfield inst2
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@43 (line 266)
  0.18%    0.20%  ││  ││    0x00007fc50924a5c3: shr    $0x3,%rcx          ;*aastore
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.03%    0.03%  ││  ││    0x00007fc50924a5c7: lea    (%r12,%rbx,8),%r11  ;*getfield denseThreadsInstructions
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.05%    0.03%  ││  ││    0x00007fc50924a5cb: lea    0x10(%r11,%rax,4),%r8
  0.07%    0.10%  ││  ││    0x00007fc50924a5d0: mov    %ecx,(%r8)
  0.16%    0.17%  ││  ││    0x00007fc50924a5d3: mov    %r8,%rcx
  0.02%    0.00%  ││  ││    0x00007fc50924a5d6: shr    $0x9,%rcx
  0.06%    0.02%  ││  ││    0x00007fc50924a5da: movabs $0x7fc519cb2000,%r8
  0.08%    0.04%  ││  ││    0x00007fc50924a5e4: mov    %r12b,(%r8,%rcx,1)  ;*aastore
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.17%    0.13%  ││  ││    0x00007fc50924a5e8: mov    0x8(%r12,%rbp,8),%ebx  ; implicit exception: dispatches to 0x00007fc50924ae1d
  0.03%    0.01%  ││  ││    0x00007fc50924a5ed: cmp    $0xf8019909,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  ││  ││    0x00007fc50924a5f3: jne    0x00007fc50924a929
  0.02%    0.01%  ││  ││    0x00007fc50924a5f9: lea    (%r12,%rbp,8),%r14  ;*invokevirtual add
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.10%    0.10%  ││  ││    0x00007fc50924a5fd: mov    0x18(%r14),%ecx    ;*getfield pc
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.20%    0.19%  ││  ││    0x00007fc50924a601: vmovd  %ecx,%xmm1
  0.01%    0.05%  ││  ││    0x00007fc50924a605: cmp    $0x40,%ecx
                  ││  ││    0x00007fc50924a608: jg     0x00007fc50924ab59  ;*if_icmpgt
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.05%    0.03%  ││  ││    0x00007fc50924a60e: mov    $0x1,%ebx
  0.07%    0.08%  ││  ││    0x00007fc50924a613: shl    %cl,%rbx           ;*lshl
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.23%    0.34%  ││  ││    0x00007fc50924a616: mov    %r9,%rcx
  0.10%    0.12%  ││  ││    0x00007fc50924a619: and    %rbx,%rcx          ;*land
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.19%    0.22%  ││  ││    0x00007fc50924a61c: test   %rcx,%rcx
                  ││╭ ││    0x00007fc50924a61f: jne    0x00007fc50924a818  ;*ifeq
                  │││ ││                                                  ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │││ ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││ ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.02%    0.03%  │││ ││    0x00007fc50924a625: xor    %ebp,%ebp          ;*ireturn
                  │││ ││                                                  ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  │││ ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││ ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.03%    0.01%  │││ ││↗   0x00007fc50924a627: test   %rcx,%rcx
                  │││ │││   0x00007fc50924a62a: jne    0x00007fc50924ab95  ;*ifeq
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.08%    0.04%  │││ │││   0x00007fc50924a630: vmovd  %xmm1,%ecx
  0.18%    0.13%  │││ │││   0x00007fc50924a634: cmp    $0x40,%ecx
                  │││ │││   0x00007fc50924a637: jge    0x00007fc50924abc9  ;*if_icmpge
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.04%    0.03%  │││ │││   0x00007fc50924a63d: or     %rbx,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.04%    0.07%  │││ │││   0x00007fc50924a640: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.10%    0.10%  │││ │││   0x00007fc50924a644: mov    %eax,%ebx
  0.14%    0.32%  │││ │││   0x00007fc50924a646: add    $0x2,%ebx
  0.03%    0.06%  │││ │││   0x00007fc50924a649: mov    %ebx,0xc(%rdx)     ;*putfield size
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.02%    0.05%  │││ │││   0x00007fc50924a64c: mov    %eax,%ebx
  0.10%    0.08%  │││ │││   0x00007fc50924a64e: add    $0x4,%ebx          ;*iadd
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.18%    0.24%  │││ │││   0x00007fc50924a651: cmp    %r10d,%ebx
                  │││ │││   0x00007fc50924a654: jae    0x00007fc50924a87d  ;*aastore
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.02%    0.03%  │││ │││   0x00007fc50924a65a: vmovq  %xmm2,%r10
  0.02%    0.03%  │││ │││   0x00007fc50924a65f: mov    0x38(%r10),%ebp    ;*getfield inst3
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@63 (line 267)
  0.10%    0.06%  │││ │││   0x00007fc50924a663: mov    %r14,%rcx
  0.17%    0.30%  │││ │││   0x00007fc50924a666: shr    $0x3,%rcx          ;*aastore
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.02%    0.04%  │││ │││   0x00007fc50924a66a: movslq %eax,%r10
  0.02%    0.03%  │││ │││   0x00007fc50924a66d: lea    (%r11,%r10,4),%rdi  ;*aastore
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.07%    0.14%  │││ │││   0x00007fc50924a671: mov    %rdi,%r10
  0.17%    0.26%  │││ │││   0x00007fc50924a674: add    $0x14,%r10
  0.02%    0.01%  │││ │││   0x00007fc50924a678: mov    %ecx,(%r10)
  0.03%    0.00%  │││ │││   0x00007fc50924a67b: shr    $0x9,%r10
  0.06%    0.04%  │││ │││   0x00007fc50924a67f: mov    %r12b,(%r8,%r10,1)  ;*aastore
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.17%    0.15%  │││ │││   0x00007fc50924a683: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007fc50924ae45
  0.02%    0.03%  │││ │││   0x00007fc50924a688: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │││ │││   0x00007fc50924a68e: jne    0x00007fc50924a955
  0.01%    0.05%  │││ │││   0x00007fc50924a694: lea    (%r12,%rbp,8),%r14  ;*invokevirtual add
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.07%    0.10%  │││ │││   0x00007fc50924a698: mov    0x18(%r14),%ecx    ;*getfield pc
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.22%    0.35%  │││ │││   0x00007fc50924a69c: vmovd  %ecx,%xmm1
  0.02%    0.04%  │││ │││   0x00007fc50924a6a0: cmp    $0x40,%ecx
                  │││ │││   0x00007fc50924a6a3: jg     0x00007fc50924ac05  ;*if_icmpgt
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.04%    0.06%  │││ │││   0x00007fc50924a6a9: mov    $0x1,%r10d
  0.08%    0.16%  │││ │││   0x00007fc50924a6af: shl    %cl,%r10           ;*lshl
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.26%    0.26%  │││ │││   0x00007fc50924a6b2: mov    %r9,%rcx
  0.08%    0.14%  │││ │││   0x00007fc50924a6b5: and    %r10,%rcx          ;*land
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.18%    0.20%  │││ │││   0x00007fc50924a6b8: test   %rcx,%rcx
                  │││╭│││   0x00007fc50924a6bb: jne    0x00007fc50924a822  ;*ifeq
                  │││││││                                                 ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │││││││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││││││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.01%    0.03%  │││││││   0x00007fc50924a6c1: xor    %ebp,%ebp          ;*ireturn
                  │││││││                                                 ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  │││││││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││││││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.05%    0.05%  │││││││↗  0x00007fc50924a6c3: test   %rcx,%rcx
                  ││││││││  0x00007fc50924a6c6: jne    0x00007fc50924ac41  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.09%    0.09%  ││││││││  0x00007fc50924a6cc: vmovd  %xmm1,%ecx
  0.14%    0.25%  ││││││││  0x00007fc50924a6d0: cmp    $0x40,%ecx
                  ││││││││  0x00007fc50924a6d3: jge    0x00007fc50924ac75  ;*if_icmpge
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.02%           ││││││││  0x00007fc50924a6d9: or     %r10,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.01%    0.05%  ││││││││  0x00007fc50924a6dc: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.07%    0.09%  ││││││││  0x00007fc50924a6e0: vmovq  %xmm2,%r10
  0.24%    0.28%  ││││││││  0x00007fc50924a6e5: mov    0x3c(%r10),%ebp    ;*getfield inst4
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@83 (line 268)
  0.04%    0.01%  ││││││││  0x00007fc50924a6e9: mov    %rdi,%r10
  0.03%    0.03%  ││││││││  0x00007fc50924a6ec: add    $0x18,%r10
  0.08%    0.10%  ││││││││  0x00007fc50924a6f0: mov    %r14,%rcx
  0.14%    0.25%  ││││││││  0x00007fc50924a6f3: shr    $0x3,%rcx
  0.02%    0.02%  ││││││││  0x00007fc50924a6f7: mov    %ecx,(%r10)        ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.01%    0.08%  ││││││││  0x00007fc50924a6fa: mov    %eax,%ecx
  0.09%    0.10%  ││││││││  0x00007fc50924a6fc: add    $0x3,%ecx
  0.21%    0.21%  ││││││││  0x00007fc50924a6ff: mov    %ecx,0xc(%rdx)     ;*putfield size
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.04%    0.02%  ││││││││  0x00007fc50924a702: shr    $0x9,%r10
  0.04%    0.03%  ││││││││  0x00007fc50924a706: mov    %r12b,(%r8,%r10,1)  ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.10%    0.10%  ││││││││  0x00007fc50924a70a: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007fc50924ae6d
  0.18%    0.20%  ││││││││  0x00007fc50924a70f: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  ││││││││  0x00007fc50924a715: jne    0x00007fc50924a981
  0.02%    0.03%  ││││││││  0x00007fc50924a71b: lea    (%r12,%rbp,8),%r14  ;*invokevirtual add
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.00%    0.04%  ││││││││  0x00007fc50924a71f: mov    0x18(%r14),%ecx    ;*getfield pc
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.07%    0.11%  ││││││││  0x00007fc50924a723: vmovd  %ecx,%xmm0
  0.18%    0.27%  ││││││││  0x00007fc50924a727: cmp    $0x40,%ecx
                  ││││││││  0x00007fc50924a72a: jg     0x00007fc50924acb1  ;*if_icmpgt
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.03%    0.03%  ││││││││  0x00007fc50924a730: mov    $0x1,%r10d
  0.02%    0.03%  ││││││││  0x00007fc50924a736: shl    %cl,%r10           ;*lshl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.30%    0.44%  ││││││││  0x00007fc50924a739: mov    %r9,%rcx
  0.02%    0.02%  ││││││││  0x00007fc50924a73c: and    %r10,%rcx          ;*land
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.09%    0.05%  ││││││││  0x00007fc50924a73f: test   %rcx,%rcx
                  ││││││││  0x00007fc50924a742: jne    0x00007fc50924a82c  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.22%    0.11%  ││││││││  0x00007fc50924a748: xor    %ebp,%ebp          ;*ireturn
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.03%    0.02%  ││││││││  0x00007fc50924a74a: test   %rcx,%rcx
                  ││││││││  0x00007fc50924a74d: jne    0x00007fc50924aced  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.02%    0.02%  ││││││││  0x00007fc50924a753: vmovd  %xmm0,%ecx
  0.08%    0.12%  ││││││││  0x00007fc50924a757: cmp    $0x40,%ecx
                  ││││││││  0x00007fc50924a75a: jge    0x00007fc50924ad21  ;*if_icmpge
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.15%    0.33%  ││││││││  0x00007fc50924a760: mov    %ebx,0xc(%rdx)     ;*putfield size
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.02%    0.04%  ││││││││  0x00007fc50924a763: vmovq  %xmm2,%rcx
  0.03%    0.05%  ││││││││  0x00007fc50924a768: mov    0x40(%rcx),%ebp    ;*getfield inst5
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@103 (line 269)
  0.08%    0.15%  ││││││││  0x00007fc50924a76b: mov    %rdi,%rcx
  0.18%    0.24%  ││││││││  0x00007fc50924a76e: add    $0x1c,%rcx         ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.04%    0.05%  ││││││││  0x00007fc50924a772: or     %r10,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.02%    0.04%  ││││││││  0x00007fc50924a775: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.10%    0.09%  ││││││││  0x00007fc50924a779: mov    %r14,%r10
  0.23%    0.22%  ││││││││  0x00007fc50924a77c: shr    $0x3,%r10
  0.04%    0.03%  ││││││││  0x00007fc50924a780: mov    %r10d,(%rcx)
  0.03%    0.07%  ││││││││  0x00007fc50924a783: mov    %rcx,%r10
  0.07%    0.10%  ││││││││  0x00007fc50924a786: shr    $0x9,%r10
  0.20%    0.23%  ││││││││  0x00007fc50924a78a: mov    %r12b,(%r8,%r10,1)  ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.06%    0.05%  ││││││││  0x00007fc50924a78e: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007fc50924ae95
  0.09%    0.03%  ││││││││  0x00007fc50924a793: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  ││││││││  0x00007fc50924a79a: jne    0x00007fc50924a9ad
  0.09%    0.08%  ││││││││  0x00007fc50924a7a0: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.15%    0.20%  ││││││││  0x00007fc50924a7a4: mov    0x18(%r10),%ecx    ;*getfield pc
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.03%    0.05%  ││││││││  0x00007fc50924a7a8: cmp    $0x40,%ecx
                  ││││││││  0x00007fc50924a7ab: jg     0x00007fc50924ad5d  ;*if_icmpgt
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.06%    0.04%  ││││││││  0x00007fc50924a7b1: shl    %cl,%rsi           ;*lshl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.41%    0.38%  ││││││││  0x00007fc50924a7b4: mov    %r9,%rbx
  0.04%    0.03%  ││││││││  0x00007fc50924a7b7: and    %rsi,%rbx          ;*land
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.07%    0.12%  ││││││││  0x00007fc50924a7ba: test   %rbx,%rbx
                  ││││││││  0x00007fc50924a7bd: jne    0x00007fc50924a836  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.17%    0.24%  ││││││││  0x00007fc50924a7bf: xor    %ebp,%ebp          ;*ireturn
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.03%    0.05%  ││││││││  0x00007fc50924a7c1: test   %rbx,%rbx
                  ││││││││  0x00007fc50924a7c4: jne    0x00007fc50924ad81  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.02%    0.03%  ││││││││  0x00007fc50924a7ca: cmp    $0x40,%ecx
                  ││││││││  0x00007fc50924a7cd: jge    0x00007fc50924ada1  ;*if_icmpge
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.07%    0.16%  ││││││││  0x00007fc50924a7d3: or     %rsi,%r9
  0.16%    0.24%  ││││││││  0x00007fc50924a7d6: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.06%    0.04%  ││││││││  0x00007fc50924a7da: add    $0x20,%rdi
  0.05%    0.03%  ││││││││  0x00007fc50924a7de: shr    $0x3,%r10
  0.08%    0.04%  ││││││││  0x00007fc50924a7e2: mov    %r10d,(%rdi)       ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.16%    0.13%  ││││││││  0x00007fc50924a7e5: mov    %rdi,%r10
  0.03%    0.05%  ││││││││  0x00007fc50924a7e8: add    $0x5,%eax
  0.03%    0.05%  ││││││││  0x00007fc50924a7eb: mov    %eax,0xc(%rdx)     ;*putfield size
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.08%    0.12%  ││││││││  0x00007fc50924a7ee: shr    $0x9,%r10
  0.21%    0.26%  ││││││││  0x00007fc50924a7f2: mov    %r12b,(%r8,%r10,1)  ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.06%    0.06%  ││││││││  0x00007fc50924a7f6: xor    %eax,%eax
  0.01%    0.04%  ││││││││  0x00007fc50924a7f8: add    $0x70,%rsp
  0.08%    0.13%  ││││││││  0x00007fc50924a7fc: pop    %rbp
  0.14%    0.26%  ││││││││  0x00007fc50924a7fd: test   %eax,0x1805f7fd(%rip)        # 0x00007fc5212aa000
                  ││││││││                                                ;   {poll_return}
  0.05%    0.06%  ││││││││  0x00007fc50924a803: retq   
                  ↘│││││││  0x00007fc50924a804: mov    $0x1,%ebp
                   │││╰│││  0x00007fc50924a809: jmpq   0x00007fc50924a4ed
                   ↘││ │││  0x00007fc50924a80e: mov    $0x1,%ebp
                    ││ ╰││  0x00007fc50924a813: jmpq   0x00007fc50924a550
                    ↘│  ││  0x00007fc50924a818: mov    $0x1,%ebp
                     │  ╰│  0x00007fc50924a81d: jmpq   0x00007fc50924a627
                     ↘   │  0x00007fc50924a822: mov    $0x1,%ebp
                         ╰  0x00007fc50924a827: jmpq   0x00007fc50924a6c3
                            0x00007fc50924a82c: mov    $0x1,%ebp
....................................................................................................
 16.81%   19.57%  <total for region 3>

....[Hottest Region 4]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 544 (790 bytes) 

                     0x00007fc509244fa0: mov    %r11d,(%rdi)
                     0x00007fc509244fa3: shr    $0x9,%r10
                     0x00007fc509244fa7: movabs $0x7fc519cb2000,%r11
                     0x00007fc509244fb1: mov    %r12b,(%r11,%r10,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
                     0x00007fc509244fb5: mov    0x30(%rsp),%r11
                     0x00007fc509244fba: jmpq   0x00007fc5092453a3
  0.21%    0.22%     0x00007fc509244fbf: mov    0x2c(%r12,%rcx,8),%r11d  ;*getfield outInst
                                                                   ; - com.google.re2j.Machine::step@199 (line 319)
  0.25%    0.02%     0x00007fc509244fc4: mov    0x8(%r12,%r11,8),%ecx  ; implicit exception: dispatches to 0x00007fc509246281
  1.03%    0.88%     0x00007fc509244fc9: lea    (%r12,%r11,8),%r8
  0.00%              0x00007fc509244fcd: cmp    $0xf8019843,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                  ╭  0x00007fc509244fd3: je     0x00007fc50924507e
  0.05%    0.02%  │  0x00007fc509244fd9: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007fc509244fdf: jne    0x00007fc509245b7d  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
  0.06%    0.01%  │  0x00007fc509244fe5: mov    0x18(%r8),%ecx     ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
                  │  0x00007fc509244fe9: mov    %rax,%r11
                  │  0x00007fc509244fec: mov    0x10(%rax),%rdx    ;*getfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
                  │                                                ; implicit exception: dispatches to 0x00007fc509246349
  0.03%    0.01%  │  0x00007fc509244ff0: cmp    $0x40,%ecx
                  │  0x00007fc509244ff3: jg     0x00007fc509245f61  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
  0.06%    0.02%  │  0x00007fc509244ff9: mov    $0x1,%esi
                  │  0x00007fc509244ffe: shl    %cl,%rsi           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
  0.11%    0.07%  │  0x00007fc509245001: mov    %rdx,%rax
                  │  0x00007fc509245004: and    %rsi,%rax          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
                  │  0x00007fc509245007: test   %rax,%rax
                  │  0x00007fc50924500a: jne    0x00007fc509245fd9  ;*ifeq
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
  0.09%    0.02%  │  0x00007fc509245010: cmp    $0x40,%ecx
                  │  0x00007fc509245013: jge    0x00007fc509246059  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
  0.02%    0.02%  │  0x00007fc509245019: mov    %r12b,0x18(%r11)   ;*putfield empty
                  │                                                ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
  0.00%           │  0x00007fc50924501d: mov    0x20(%r11),%ecx    ;*getfield denseThreadsInstructions
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
  0.00%           │  0x00007fc509245021: or     %rdx,%rsi
  0.04%    0.02%  │  0x00007fc509245024: mov    %rsi,0x10(%r11)    ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
  0.01%    0.01%  │  0x00007fc509245028: mov    0xc(%r11),%ebp     ;*getfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
                  │  0x00007fc50924502c: mov    %ebp,%esi
                  │  0x00007fc50924502e: inc    %esi
  0.06%    0.03%  │  0x00007fc509245030: mov    %esi,0xc(%r11)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
  0.03%    0.01%  │  0x00007fc509245034: mov    0xc(%r12,%rcx,8),%esi  ; implicit exception: dispatches to 0x00007fc50924635d
  0.02%           │  0x00007fc509245039: cmp    %esi,%ebp
                  │  0x00007fc50924503b: jae    0x00007fc509245b01
  0.03%    0.01%  │  0x00007fc509245041: mov    0x8(%r12,%rcx,8),%esi
  0.01%    0.00%  │  0x00007fc509245046: cmp    $0xf8019807,%esi   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                  │  0x00007fc50924504c: jne    0x00007fc509245be5  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
  0.02%    0.01%  │  0x00007fc509245052: shl    $0x3,%rcx          ;*getfield denseThreadsInstructions
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
                  │  0x00007fc509245056: lea    0x10(%rcx,%rbp,4),%rcx
  0.05%    0.00%  │  0x00007fc50924505b: mov    %r8,%rdx
  0.02%    0.03%  │  0x00007fc50924505e: shr    $0x3,%rdx
  0.03%    0.00%  │  0x00007fc509245062: mov    %edx,(%rcx)
  0.43%    0.13%  │  0x00007fc509245064: mov    %rcx,%r8
                  │  0x00007fc509245067: shr    $0x9,%r8
  0.03%    0.02%  │  0x00007fc50924506b: movabs $0x7fc519cb2000,%rcx
  0.00%    0.01%  │  0x00007fc509245075: mov    %r12b,(%rcx,%r8,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
  0.09%    0.09%  │  0x00007fc509245079: jmpq   0x00007fc5092453c6  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
  0.24%    0.29%  ↘  0x00007fc50924507e: mov    0x18(%r8),%ecx     ;*getfield pc
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.00%    0.00%     0x00007fc509245082: mov    %rax,%r11
  0.00%    0.00%     0x00007fc509245085: mov    0x10(%rax),%rsi    ;*getfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
                                                                   ; implicit exception: dispatches to 0x00007fc5092462b5
           0.01%     0x00007fc509245089: cmp    $0x40,%ecx
                     0x00007fc50924508c: jg     0x00007fc5092458c1  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.33%    0.34%     0x00007fc509245092: mov    $0x1,%edx
  0.02%              0x00007fc509245097: shl    %cl,%rdx           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.66%    0.71%     0x00007fc50924509a: mov    %rsi,%rax
                     0x00007fc50924509d: and    %rdx,%rax
  0.01%    0.01%     0x00007fc5092450a0: test   %rax,%rax
                     0x00007fc5092450a3: jne    0x00007fc5092453c6  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.16%    0.16%     0x00007fc5092450a9: cmp    $0x40,%ecx
                     0x00007fc5092450ac: jge    0x00007fc509245931  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.10%    0.10%     0x00007fc5092450b2: mov    %r12b,0x18(%r11)   ;*putfield empty
                                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.00%              0x00007fc5092450b6: mov    0x2c(%r8),%ebp     ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
                     0x00007fc5092450ba: or     %rsi,%rdx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.17%    0.11%     0x00007fc5092450bd: mov    %rdx,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.14%    0.12%     0x00007fc5092450c1: mov    0x8(%r12,%rbp,8),%esi  ; implicit exception: dispatches to 0x00007fc5092462c9
  0.39%    0.38%     0x00007fc5092450c6: cmp    $0xf8019909,%esi   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007fc5092450cc: jne    0x00007fc509245645
  0.24%    0.23%     0x00007fc5092450d2: lea    (%r12,%rbp,8),%rax  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
                     0x00007fc5092450d6: mov    0x18(%rax),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.14%    0.20%     0x00007fc5092450d9: cmp    $0x40,%ecx
                     0x00007fc5092450dc: jg     0x00007fc50924599d  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.20%    0.31%     0x00007fc5092450e2: mov    $0x1,%esi
  0.09%    0.06%     0x00007fc5092450e7: shl    %cl,%rsi           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.52%    0.64%     0x00007fc5092450ea: mov    %rdx,%rbp
  0.02%    0.00%     0x00007fc5092450ed: and    %rsi,%rbp          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
                     0x00007fc5092450f0: test   %rbp,%rbp
                     0x00007fc5092450f3: jne    0x00007fc509245a11  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.31%    0.25%     0x00007fc5092450f9: cmp    $0x40,%ecx
                     0x00007fc5092450fc: jge    0x00007fc509245a8d  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.08%    0.03%     0x00007fc509245102: mov    %r10d,0x44(%rsp)
  0.02%    0.01%     0x00007fc509245107: mov    %edi,0xa4(%rsp)
                     0x00007fc50924510e: mov    %rbx,0x38(%rsp)
  0.24%    0.24%     0x00007fc509245113: mov    %r14d,0xc(%rsp)
  0.05%    0.05%     0x00007fc509245118: mov    %r9d,0xac(%rsp)
  0.01%    0.00%     0x00007fc509245120: mov    %r11,0x30(%rsp)
                     0x00007fc509245125: mov    %r13,0x28(%rsp)
  0.24%    0.23%     0x00007fc50924512a: or     %rsi,%rdx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.06%    0.02%     0x00007fc50924512d: mov    %rdx,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.00%    0.01%     0x00007fc509245131: mov    0x20(%r11),%r10d   ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
                     0x00007fc509245135: mov    %r10d,%r14d
  0.21%    0.10%     0x00007fc509245138: mov    0xc(%r11),%r10d    ;*getfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.06%    0.02%     0x00007fc50924513c: mov    %r10d,%r13d
  0.00%              0x00007fc50924513f: inc    %r10d              ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
                     0x00007fc509245142: mov    %r10d,0xc(%r11)    ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.19%    0.06%     0x00007fc509245146: vmovd  %r10d,%xmm1
  0.06%    0.02%     0x00007fc50924514b: mov    %r14d,%r10d
  0.01%              0x00007fc50924514e: mov    0xc(%r12,%r10,8),%ebx  ; implicit exception: dispatches to 0x00007fc5092462dd
                     0x00007fc509245153: mov    %r13d,%r10d
  0.27%    0.08%     0x00007fc509245156: cmp    %ebx,%r10d
                     0x00007fc509245159: jae    0x00007fc5092455fd
  0.07%    0.03%     0x00007fc50924515f: mov    %r14d,%r10d
           0.00%     0x00007fc509245162: mov    0x8(%r12,%r10,8),%r10d
                     0x00007fc509245167: cmp    $0xf8019807,%r10d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                     0x00007fc50924516e: jne    0x00007fc5092456b5  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.28%    0.29%     0x00007fc509245174: mov    0x34(%r8),%r10d    ;*getfield inst2
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@43 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.09%    0.07%     0x00007fc509245178: vmovd  %r10d,%xmm0
  0.02%    0.00%     0x00007fc50924517d: mov    %rax,%r11
                     0x00007fc509245180: shr    $0x3,%r11          ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.29%    0.26%     0x00007fc509245184: mov    %r14d,%r10d
  0.07%    0.05%     0x00007fc509245187: lea    (%r12,%r10,8),%r9  ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.01%              0x00007fc50924518b: mov    %r13d,%r10d
                     0x00007fc50924518e: lea    0x10(%r9,%r10,4),%r10
  0.23%    0.03%     0x00007fc509245193: mov    %r11d,(%r10)
  0.05%    0.01%     0x00007fc509245196: shr    $0x9,%r10
  0.01%    0.01%     0x00007fc50924519a: movabs $0x7fc519cb2000,%r11
                     0x00007fc5092451a4: mov    %r12b,(%r11,%r10,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.29%    0.15%     0x00007fc5092451a8: vmovd  %xmm0,%r10d
  0.08%    0.05%     0x00007fc5092451ad: mov    0x8(%r12,%r10,8),%ecx  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
                                                                   ; implicit exception: dispatches to 0x00007fc5092462f9
  0.01%              0x00007fc5092451b2: movslq %r13d,%r10
           0.00%     0x00007fc5092451b5: lea    (%r9,%r10,4),%r8   ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.21%    0.32%     0x00007fc5092451b9: mov    %r8,%rdi
  0.06%    0.10%     0x00007fc5092451bc: add    $0x14,%rdi         ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.01%              0x00007fc5092451c0: vmovd  %xmm0,%r10d
                     0x00007fc5092451c5: lea    (%r12,%r10,8),%r11
  0.24%    0.17%     0x00007fc5092451c9: mov    %r13d,%r10d
  0.06%    0.02%     0x00007fc5092451cc: add    $0x2,%r10d         ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.01%              0x00007fc5092451d0: cmp    $0xf8019885,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                     0x00007fc5092451d6: jne    0x00007fc509244f33  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
                     0x00007fc5092451dc: mov    0x2c(%r11),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@82 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.23%    0.13%     0x00007fc5092451e0: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007fc50924630d
  0.11%    0.04%     0x00007fc5092451e5: cmp    $0xf8019843,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                     0x00007fc5092451ec: jne    0x00007fc50924585d
  0.06%    0.04%     0x00007fc5092451f2: lea    (%r12,%rbp,8),%rax  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
                     0x00007fc5092451f6: mov    0x18(%rax),%r11d   ;*getfield pc
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.16%    0.10%     0x00007fc5092451fa: vmovd  %r11d,%xmm0
  0.09%    0.08%     0x00007fc5092451ff: cmp    $0x40,%r11d
                     0x00007fc509245203: jg     0x00007fc509245e05  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.00%              0x00007fc509245209: mov    $0x1,%esi
                     0x00007fc50924520e: mov    %r11d,%ecx
  0.15%    0.05%     0x00007fc509245211: shl    %cl,%rsi           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.35%    0.14%     0x00007fc509245214: mov    %rdx,%r11
  0.13%    0.11%     0x00007fc509245217: and    %rsi,%r11
  0.04%    0.05%     0x00007fc50924521a: test   %r11,%r11
                     0x00007fc50924521d: jne    0x00007fc50924554a  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.10%    0.04%     0x00007fc509245223: mov    %ecx,%r11d
  0.02%    0.02%     0x00007fc509245226: cmp    $0x40,%r11d
                     0x00007fc50924522a: jge    0x00007fc509245e45  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.17%    0.08%     0x00007fc509245230: or     %rsi,%rdx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.05%    0.01%     0x00007fc509245233: mov    0x30(%rsp),%r11
  0.04%    0.04%     0x00007fc509245238: mov    %rdx,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.04%    0.04%     0x00007fc50924523c: mov    0x2c(%rax),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.17%    0.17%     0x00007fc50924523f: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007fc509246321
  0.20%    0.23%     0x00007fc509245244: cmp    $0xf8019909,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007fc50924524b: jne    0x00007fc50924588d
  0.11%    0.20%     0x00007fc509245251: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
                     0x00007fc509245255: vmovq  %r11,%xmm0
  0.09%    0.15%     0x00007fc50924525a: mov    0x18(%r11),%r11d   ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.07%    0.12%     0x00007fc50924525e: mov    %r11d,%ecx
  0.13%    0.10%     0x00007fc509245261: cmp    $0x40,%r11d
                     0x00007fc509245265: jg     0x00007fc509245e81  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.03%    0.05%     0x00007fc50924526b: mov    $0x1,%esi
  0.09%    0.09%     0x00007fc509245270: shl    %cl,%rsi           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.39%    0.49%     0x00007fc509245273: mov    %rdx,%r11
  0.04%    0.04%     0x00007fc509245276: and    %rsi,%r11          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.01%    0.06%     0x00007fc509245279: test   %r11,%r11
                     0x00007fc50924527c: jne    0x00007fc509245ec5  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.14%    0.18%     0x00007fc509245282: mov    %ecx,%r11d
  0.03%    0.01%     0x00007fc509245285: cmp    $0x40,%r11d
                     0x00007fc509245289: jge    0x00007fc509245f1d  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.05%    0.08%     0x00007fc50924528f: mov    0x30(%rsp),%r11
  0.04%    0.08%     0x00007fc509245294: mov    %r10d,0xc(%r11)    ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.14%    0.15%     0x00007fc509245298: or     %rsi,%rdx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.01%    0.04%     0x00007fc50924529b: mov    %rdx,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.08%    0.07%     0x00007fc50924529f: cmp    %ebx,%r10d
                     0x00007fc5092452a2: jae    0x00007fc5092457dd  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.06%    0.05%     0x00007fc5092452a8: mov    0x34(%rax),%r10d   ;*getfield inst2
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@43 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.15%    0.14%     0x00007fc5092452ac: mov    %rdi,%r11
  0.03%    0.03%     0x00007fc5092452af: vmovq  %xmm0,%rcx
  0.07%    0.12%     0x00007fc5092452b4: shr    $0x3,%rcx
  0.03%    0.09%     0x00007fc5092452b8: mov    %ecx,(%rdi)
  0.15%    0.15%     0x00007fc5092452ba: shr    $0x9,%r11
  0.05%    0.05%     0x00007fc5092452be: movabs $0x7fc519cb2000,%rcx
  0.09%    0.08%     0x00007fc5092452c8: mov    %r12b,(%rcx,%r11,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.04%    0.07%     0x00007fc5092452cc: mov    0x8(%r12,%r10,8),%ecx  ; implicit exception: dispatches to 0x00007fc509246335
  0.16%    0.18%     0x00007fc5092452d1: lea    (%r12,%r10,8),%rbx
  0.03%    0.03%     0x00007fc5092452d5: cmp    $0xf8019885,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                     0x00007fc5092452db: jne    0x00007fc509245334  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
                     0x00007fc5092452dd: mov    0x2c(%rbx),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@82 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
....................................................................................................
 14.68%   12.40%  <total for region 4>

....[Hottest Regions]...............................................................................
 29.31%   28.84%         C2, level 4  com.google.re2j.Machine::match, version 596 (1516 bytes) 
 21.42%   21.47%         C2, level 4  com.google.re2j.Machine::step, version 544 (318 bytes) 
 16.81%   19.57%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 558 (867 bytes) 
 14.68%   12.40%         C2, level 4  com.google.re2j.Machine::step, version 544 (790 bytes) 
  9.28%    9.92%         C2, level 4  com.google.re2j.Machine::step, version 544 (174 bytes) 
  2.95%    2.75%         C2, level 4  com.google.re2j.Machine::step, version 544 (67 bytes) 
  1.51%    1.84%         C2, level 4  com.google.re2j.Machine::match, version 596 (98 bytes) 
  0.89%    0.87%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.32%    0.08%         C2, level 4  com.google.re2j.RE2::match, version 597 (99 bytes) 
  0.16%    0.11%         C2, level 4  com.google.re2j.RE2::match, version 597 (28 bytes) 
  0.12%    0.06%         C2, level 4  com.google.re2j.RE2::match, version 597 (0 bytes) 
  0.10%    0.10%         C2, level 4  com.google.re2j.RE2::match, version 597 (20 bytes) 
  0.09%    0.02%   [kernel.kallsyms]  [unknown] (1 bytes) 
  0.09%    0.03%         C2, level 4  com.google.re2j.RE2::match, version 597 (0 bytes) 
  0.09%    0.00%   [kernel.kallsyms]  [unknown] (37 bytes) 
  0.07%    0.02%         C2, level 4  com.google.re2j.RE2::match, version 597 (131 bytes) 
  0.05%                  C2, level 4  com.google.re2j.RE2::match, version 597 (79 bytes) 
  0.05%    0.00%         C2, level 4  com.google.re2j.RE2::match, version 597 (28 bytes) 
  0.04%    0.01%   [kernel.kallsyms]  [unknown] (28 bytes) 
  0.04%    0.02%   [kernel.kallsyms]  [unknown] (32 bytes) 
  1.94%    1.87%  <...other 406 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 48.33%   46.54%         C2, level 4  com.google.re2j.Machine::step, version 544 
 31.02%   30.83%         C2, level 4  com.google.re2j.Machine::match, version 596 
 16.81%   19.57%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 558 
  1.86%    1.64%   [kernel.kallsyms]  [unknown] 
  1.07%    0.41%         C2, level 4  com.google.re2j.RE2::match, version 597 
  0.06%    0.04%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testCombine_jmhTest::testCombine_thrpt_jmhStub, version 664 
  0.06%    0.05%         C2, level 4  java.util.Collections::shuffle, version 616 
  0.05%    0.05%        libc-2.26.so  vfprintf 
  0.04%    0.03%      hsdis-amd64.so  [unknown] 
  0.03%    0.04%        libc-2.26.so  _IO_fwrite 
  0.02%    0.05%           libjvm.so  RelocIterator::initialize 
  0.02%                  C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 611 
  0.02%    0.05%        libc-2.26.so  __strlen_avx2 
  0.02%    0.00%        libc-2.26.so  __clock_gettime 
  0.02%                  interpreter  method entry point (kind = zerolocals)  
  0.02%    0.01%           libjvm.so  Monitor::unlock 
  0.02%           libpthread-2.26.so  __libc_write 
  0.02%    0.00%              [vdso]  __vdso_clock_gettime 
  0.01%                 libc-2.26.so  _IO_fflush 
  0.01%    0.00%  libpthread-2.26.so  pthread_cond_init@@GLIBC_2.3.2 
  0.46%    0.37%  <...other 69 warm methods...>
....................................................................................................
100.00%   99.70%  <totals>

....[Distribution by Source]........................................................................
 97.38%   97.47%         C2, level 4
  1.86%    1.64%   [kernel.kallsyms]
  0.33%    0.41%           libjvm.so
  0.20%    0.34%        libc-2.26.so
  0.09%    0.08%  libpthread-2.26.so
  0.04%    0.03%      hsdis-amd64.so
  0.04%    0.00%         interpreter
  0.03%    0.02%              [vdso]
  0.01%                             
  0.00%                  C1, level 1
  0.00%    0.00%         C1, level 3
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                        Mode  Cnt      Score    Error  Units
Re2jFindRegex.testCombine       thrpt   20  11969.161 ± 45.965  ops/s
Re2jFindRegex.testCombine:·asm  thrpt             NaN             ---
