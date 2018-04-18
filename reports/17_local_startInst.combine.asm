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
# Warmup Iteration   1: 2547.888 ops/s
# Warmup Iteration   2: 9056.352 ops/s
# Warmup Iteration   3: 9307.428 ops/s
# Warmup Iteration   4: 9301.690 ops/s
# Warmup Iteration   5: 9300.008 ops/s
# Warmup Iteration   6: 9306.467 ops/s
# Warmup Iteration   7: 9302.786 ops/s
# Warmup Iteration   8: 9281.266 ops/s
# Warmup Iteration   9: 9289.486 ops/s
# Warmup Iteration  10: 9331.483 ops/s
# Warmup Iteration  11: 9333.778 ops/s
# Warmup Iteration  12: 9342.229 ops/s
# Warmup Iteration  13: 9054.937 ops/s
# Warmup Iteration  14: 9344.720 ops/s
# Warmup Iteration  15: 9346.327 ops/s
# Warmup Iteration  16: 9346.704 ops/s
# Warmup Iteration  17: 9340.143 ops/s
# Warmup Iteration  18: 9334.945 ops/s
# Warmup Iteration  19: 9323.183 ops/s
# Warmup Iteration  20: 9343.823 ops/s
Iteration   1: 9346.189 ops/s
Iteration   2: 9348.302 ops/s
Iteration   3: 9350.172 ops/s
Iteration   4: 9348.772 ops/s
Iteration   5: 9319.093 ops/s
Iteration   6: 9349.317 ops/s
Iteration   7: 9111.253 ops/s
Iteration   8: 9347.911 ops/s
Iteration   9: 9321.440 ops/s
Iteration  10: 9335.302 ops/s
Iteration  11: 9341.062 ops/s
Iteration  12: 9342.840 ops/s
Iteration  13: 9343.202 ops/s
Iteration  14: 9341.364 ops/s
Iteration  15: 9340.885 ops/s
Iteration  16: 9341.034 ops/s
Iteration  17: 9339.811 ops/s
Iteration  18: 9320.439 ops/s
Iteration  19: 9339.918 ops/s
Iteration  20: 9345.160 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  9328.673 ±(99.9%) 45.179 ops/s [Average]
  (min, avg, max) = (9111.253, 9328.673, 9350.172), stdev = 52.029
  CI (99.9%): [9283.494, 9373.853] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine:·asm":
PrintAssembly processed: 198682 total address lines.
Perf output processed (skipped 23.440 seconds):
 Column 1: cycles (20697 events)
 Column 2: instructions (20690 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 546 (1208 bytes) 

                                                                                   ; - java.lang.String::charAt@27 (line 660)
                                                                                   ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                   ; - com.google.re2j.Machine::match@105 (line 201)
                                     0x00007f1a88c137ca: cmp    $0xd800,%r11d
                                     0x00007f1a88c137d1: jge    0x00007f1a88c14fbd  ;*if_icmplt
                                                                                   ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                                   ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                   ; - com.google.re2j.Machine::match@105 (line 201)
  0.01%    0.00%                     0x00007f1a88c137d7: shl    $0x3,%r11d         ;*ishl
                                                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                                                                                   ; - com.google.re2j.Machine::match@105 (line 201)
                                     0x00007f1a88c137db: mov    %r11d,%r9d
                                     0x00007f1a88c137de: and    $0x7,%r9d
                                     0x00007f1a88c137e2: or     $0x1,%r11d
  0.01%    0.00%                     0x00007f1a88c137e6: or     $0x1,%r9d          ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                                                                                   ; - com.google.re2j.Machine::match@105 (line 201)
                                     0x00007f1a88c137ea: mov    %r9d,0x30(%rsp)
                                     0x00007f1a88c137ef: sar    $0x3,%r11d         ;*ishr
                                                                                   ; - com.google.re2j.Machine::match@113 (line 202)
                                     0x00007f1a88c137f3: mov    %r11d,0x38(%rsp)   ;*iand
                                                                                   ; - com.google.re2j.Machine::match@120 (line 203)
           0.01%                     0x00007f1a88c137f8: vmovd  %xmm0,%r11d
                                     0x00007f1a88c137fd: test   %r11d,%r11d
                                     0x00007f1a88c13800: jne    0x00007f1a88c14d2d  ;*ifne
                                                                                   ; - com.google.re2j.Machine::match@124 (line 206)
                                     0x00007f1a88c13806: test   %r10d,%r10d
                                     0x00007f1a88c13809: jl     0x00007f1a88c14164  ;*ifge
                                                                                   ; - com.google.re2j.Utils::emptyOpContext@21 (line 179)
                                                                                   ; - com.google.re2j.Machine::match@130 (line 207)
                                     0x00007f1a88c1380f: mov    $0x5,%r11d         ;*iload_1
                                                                                   ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                                                                                   ; - com.google.re2j.Machine::match@130 (line 207)
  0.00%    0.01%                     0x00007f1a88c13815: cmp    $0xa,%r10d
                                     0x00007f1a88c13819: je     0x00007f1a88c1418a  ;*iload_0
                                                                                   ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                                                                                   ; - com.google.re2j.Machine::match@130 (line 207)
                                     0x00007f1a88c1381f: mov    %r10d,%r9d
                                     0x00007f1a88c13822: add    $0xffffffbf,%r9d
                                     0x00007f1a88c13826: cmp    $0x1a,%r9d
                  ╭                  0x00007f1a88c1382a: jb     0x00007f1a88c1383d  ;*if_icmple
                  │                                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │                                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                                ; - com.google.re2j.Machine::match@130 (line 207)
  0.00%    0.00%  │                  0x00007f1a88c1382c: mov    %r10d,%r8d
                  │                  0x00007f1a88c1382f: add    $0xffffff9f,%r8d
                  │                  0x00007f1a88c13833: cmp    $0x1a,%r8d
                  │                  0x00007f1a88c13837: jae    0x00007f1a88c14199  ;*iconst_1
                  │                                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │                                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                                ; - com.google.re2j.Machine::match@130 (line 207)
                  ↘                  0x00007f1a88c1383d: or     $0x10,%r11d        ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                                                                                   ; - com.google.re2j.Machine::match@130 (line 207)
  0.00%                              0x00007f1a88c13841: mov    %r11d,0x34(%rsp)   ;*iload_2
                                                                                   ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                                   ; - com.google.re2j.Machine::match@130 (line 207)
                                     0x00007f1a88c13846: mov    0x3c(%rsp),%r11d
                                     0x00007f1a88c1384b: test   %r11d,%r11d
                                     0x00007f1a88c1384e: jne    0x00007f1a88c14a89  ;*aload
                                                                                   ; - com.google.re2j.Machine::match@145 (line 213)
                                     0x00007f1a88c13854: mov    0x4c(%rsp),%r8d
  0.01%    0.01%                     0x00007f1a88c13859: mov    0x8(%r12,%r8,8),%r8d  ;*invokevirtual add
                                                                                   ; - com.google.re2j.Machine::match@322 (line 245)
                                                                                   ; implicit exception: dispatches to 0x00007f1a88c14a89
                                     0x00007f1a88c1385e: mov    %r8d,0x14(%rsp)
  0.00%                              0x00007f1a88c13863: mov    0x40(%rsp),%r11
                                     0x00007f1a88c13868: movzbl 0x11(%r11),%ebx    ;*getfield captures
                                                                                   ; - com.google.re2j.Machine::match@292 (line 242)
                                     0x00007f1a88c1386d: mov    0x4c(%rsp),%r11d
  0.00%                              0x00007f1a88c13872: shl    $0x3,%r11
                                     0x00007f1a88c13876: mov    %r11,0x18(%rsp)
                                     0x00007f1a88c1387b: mov    0x48(%rsp),%r8d
  0.00%                              0x00007f1a88c13880: and    $0x4,%r8d          ;*iand
                                                                                   ; - com.google.re2j.Machine::match@156 (line 214)
                                     0x00007f1a88c13884: mov    %r8d,0x58(%rsp)
           0.00%                     0x00007f1a88c13889: mov    %rcx,%r11
  0.00%                              0x00007f1a88c1388c: shl    $0x3,%r11          ;*getfield q1
                                                                                   ; - com.google.re2j.Machine::match@62 (line 194)
                                     0x00007f1a88c13890: vmovd  %ebx,%xmm2
                                     0x00007f1a88c13894: mov    %r11,0x68(%rsp)
  0.00%    0.00%                     0x00007f1a88c13899: xor    %eax,%eax
                                     0x00007f1a88c1389b: mov    $0x1,%r11d
  0.00%    0.00%                     0x00007f1a88c138a1: xor    %r9d,%r9d
                                     0x00007f1a88c138a4: mov    %r11d,0x78(%rsp)
                                     0x00007f1a88c138a9: mov    %r9d,0x64(%rsp)
                   ╭                 0x00007f1a88c138ae: jmpq   0x00007f1a88c13af3
  0.12%    0.04%   │          ↗      0x00007f1a88c138b3: mov    0x18(%rsp),%rbp    ;*ifeq
                   │          │                                                    ; - com.google.re2j.Machine::match@295 (line 242)
  0.15%    0.03%   │          │      0x00007f1a88c138b8: mov    %r14,%r8
  0.04%    0.01%   │          │      0x00007f1a88c138bb: shl    $0x3,%r8           ;*getfield matchcap
                   │          │                                                    ; - com.google.re2j.Machine::match@311 (line 245)
  0.02%    0.01%   │          │      0x00007f1a88c138bf: mov    %rbp,%rsi
  0.14%    0.03%   │          │      0x00007f1a88c138c2: mov    0x20(%rsp),%rdx
  0.12%    0.03%   │          │      0x00007f1a88c138c7: mov    0x5c(%rsp),%ecx
  0.03%    0.01%   │          │      0x00007f1a88c138cb: mov    0x34(%rsp),%r9d
  0.02%    0.01%   │          │      0x00007f1a88c138d0: xor    %edi,%edi
  0.13%    0.01%   │          │      0x00007f1a88c138d2: mov    0x40(%rsp),%r10
  0.14%    0.11%   │          │      0x00007f1a88c138d7: mov    %r10,(%rsp)
  0.02%    0.02%   │          │      0x00007f1a88c138db: vmovss %xmm2,0x8(%rsp)
  0.03%            │          │      0x00007f1a88c138e1: xchg   %ax,%ax
  0.12%    0.02%   │          │      0x00007f1a88c138e3: callq  0x00007f1a88a0d020  ; OopMap{rbp=Oop [24]=Oop [32]=Oop [40]=NarrowOop [64]=Oop [76]=NarrowOop [80]=Oop [104]=Oop off=712}
                   │          │                                                    ;*invokevirtual add
                   │          │                                                    ; - com.google.re2j.Machine::match@322 (line 245)
                   │          │                                                    ;   {optimized virtual_call}
  0.03%    0.03%   │          │      0x00007f1a88c138e8: mov    %rbp,0x70(%rsp)    ;*synchronization entry
                   │          │                                                    ; - com.google.re2j.Machine::match@-1 (line 182)
  0.27%    0.27%   │          │↗     0x00007f1a88c138ed: mov    0x60(%rsp),%r11d
  0.20%    0.10%   │          ││     0x00007f1a88c138f2: test   %r11d,%r11d
                   │╭         ││     0x00007f1a88c138f5: jl     0x00007f1a88c13c5e  ;*ifge
                   ││         ││                                                   ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                   ││         ││                                                   ; - com.google.re2j.Machine::match@330 (line 247)
  0.03%    0.02%   ││         ││     0x00007f1a88c138fb: xor    %r8d,%r8d          ;*iload_0
                   ││         ││                                                   ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                   ││         ││                                                   ; - com.google.re2j.Machine::match@330 (line 247)
  0.27%    0.24%   ││         ││↗    0x00007f1a88c138fe: cmp    $0xa,%r11d
                   ││         │││    0x00007f1a88c13902: je     0x00007f1a88c13cd8  ;*iload_1
                   ││         │││                                                  ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                   ││         │││                                                  ; - com.google.re2j.Machine::match@330 (line 247)
  0.17%    0.17%   ││         │││    0x00007f1a88c13908: mov    0x38(%rsp),%r11d
  0.16%    0.15%   ││         │││    0x00007f1a88c1390d: test   %r11d,%r11d
                   ││╭        │││    0x00007f1a88c13910: jl     0x00007f1a88c13c69  ;*iload_1
                   │││        │││                                                  ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                   │││        │││                                                  ; - com.google.re2j.Machine::match@330 (line 247)
  0.04%    0.05%   │││        │││↗   0x00007f1a88c13916: cmp    $0xa,%r11d
                   │││        ││││   0x00007f1a88c1391a: je     0x00007f1a88c13ce1  ;*iload_0
                   │││        ││││                                                 ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                   │││        ││││                                                 ; - com.google.re2j.Machine::match@330 (line 247)
  0.20%    0.24%   │││        ││││   0x00007f1a88c13920: mov    0x60(%rsp),%r10d
  0.23%    0.25%   │││        ││││   0x00007f1a88c13925: add    $0xffffffbf,%r10d
  0.19%    0.14%   │││        ││││   0x00007f1a88c13929: cmp    $0x1a,%r10d
                   │││╭       ││││   0x00007f1a88c1392d: jb     0x00007f1a88c13942  ;*if_icmple
                   ││││       ││││                                                 ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                   ││││       ││││                                                 ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   ││││       ││││                                                 ; - com.google.re2j.Machine::match@330 (line 247)
  0.04%    0.05%   ││││       ││││   0x00007f1a88c1392f: mov    0x60(%rsp),%r11d
  0.15%    0.31%   ││││       ││││   0x00007f1a88c13934: add    $0xffffff9f,%r11d
  0.17%    0.23%   ││││       ││││   0x00007f1a88c13938: cmp    $0x1a,%r11d
                   ││││       ││││   0x00007f1a88c1393c: jae    0x00007f1a88c13fad  ;*iconst_1
                   ││││       ││││                                                 ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                   ││││       ││││                                                 ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   ││││       ││││                                                 ; - com.google.re2j.Machine::match@330 (line 247)
  0.11%    0.14%   │││↘       ││││   0x00007f1a88c13942: mov    $0x1,%ebp          ;*ireturn
                   │││        ││││                                                 ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                   │││        ││││                                                 ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   │││        ││││                                                 ; - com.google.re2j.Machine::match@330 (line 247)
  0.10%    0.08%   │││        ││││   0x00007f1a88c13947: mov    0x38(%rsp),%r10d
  0.21%    0.31%   │││        ││││   0x00007f1a88c1394c: add    $0xffffffbf,%r10d
  0.20%    0.19%   │││        ││││   0x00007f1a88c13950: cmp    $0x1a,%r10d
                   │││ ╭      ││││   0x00007f1a88c13954: jb     0x00007f1a88c13969  ;*if_icmple
                   │││ │      ││││                                                 ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                   │││ │      ││││                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   │││ │      ││││                                                 ; - com.google.re2j.Machine::match@330 (line 247)
  0.16%    0.17%   │││ │      ││││   0x00007f1a88c13956: mov    0x38(%rsp),%r11d
  0.05%    0.10%   │││ │      ││││   0x00007f1a88c1395b: add    $0xffffff9f,%r11d
  0.23%    0.25%   │││ │      ││││   0x00007f1a88c1395f: cmp    $0x1a,%r11d
                   │││ │      ││││   0x00007f1a88c13963: jae    0x00007f1a88c13fd6  ;*iconst_1
                   │││ │      ││││                                                 ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                   │││ │      ││││                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   │││ │      ││││                                                 ; - com.google.re2j.Machine::match@330 (line 247)
  0.19%    0.22%   │││ ↘      ││││   0x00007f1a88c13969: mov    $0x1,%r10d         ;*ireturn
                   │││        ││││                                                 ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                   │││        ││││                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   │││        ││││                                                 ; - com.google.re2j.Machine::match@330 (line 247)
  0.24%    0.42%   │││        ││││   0x00007f1a88c1396f: cmp    %r10d,%ebp
                   │││  ╭     ││││   0x00007f1a88c13972: je     0x00007f1a88c1397f  ;*if_icmpeq
                   │││  │     ││││                                                 ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                   │││  │     ││││                                                 ; - com.google.re2j.Machine::match@330 (line 247)
  0.01%    0.04%   │││  │     ││││   0x00007f1a88c13974: or     $0x10,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                   │││  │     ││││                                                 ; - com.google.re2j.Machine::match@330 (line 247)
  0.04%    0.03%   │││  │     ││││   0x00007f1a88c13978: mov    %r8d,0x34(%rsp)
  0.10%    0.08%   │││  │╭    ││││   0x00007f1a88c1397d: jmp    0x00007f1a88c13988
  0.09%    0.08%   │││  ↘│    ││││   0x00007f1a88c1397f: or     $0x20,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                   │││   │    ││││                                                 ; - com.google.re2j.Machine::match@330 (line 247)
  0.17%    0.25%   │││   │    ││││   0x00007f1a88c13983: mov    %r8d,0x34(%rsp)    ;*iload_2
                   │││   │    ││││                                                 ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   │││   │    ││││                                                 ; - com.google.re2j.Machine::match@330 (line 247)
  0.35%    0.36%   │││   ↘    ││││   0x00007f1a88c13988: mov    0x50(%rsp),%r10
  0.19%    0.25%   │││        ││││   0x00007f1a88c1398d: mov    0x10(%r10),%r10d   ;*getfield end
                   │││        ││││                                                 ; - com.google.re2j.MachineInput$UTF16Input::endPos@1 (line 221)
                   │││        ││││                                                 ; - com.google.re2j.Machine::match@352 (line 248)
  0.61%    0.31%   │││        ││││   0x00007f1a88c13991: mov    0x5c(%rsp),%r8d
  0.14%    0.24%   │││        ││││   0x00007f1a88c13996: cmp    %r10d,%r8d
                   │││    ╭   ││││   0x00007f1a88c13999: je     0x00007f1a88c13c72  ;*if_icmpne
                   │││    │   ││││                                                 ; - com.google.re2j.Machine::match@355 (line 248)
  0.40%    0.43%   │││    │   ││││   0x00007f1a88c1399f: xor    %r11d,%r11d        ;*invokevirtual endPos
                   │││    │   ││││                                                 ; - com.google.re2j.Machine::match@352 (line 248)
  0.09%    0.15%   │││    │   ││││↗  0x00007f1a88c139a2: mov    0x5c(%rsp),%r10d
  0.05%    0.02%   │││    │   │││││  0x00007f1a88c139a7: add    0x2c(%rsp),%r10d   ;*iadd
                   │││    │   │││││                                                ; - com.google.re2j.Machine::match@344 (line 248)
  0.15%    0.16%   │││    │   │││││  0x00007f1a88c139ac: mov    %r10d,0x64(%rsp)
  0.29%    0.19%   │││    │   │││││  0x00007f1a88c139b1: mov    0x40(%rsp),%rsi
  0.14%    0.14%   │││    │   │││││  0x00007f1a88c139b6: mov    0x20(%rsp),%rdx
  0.02%    0.05%   │││    │   │││││  0x00007f1a88c139bb: mov    0x68(%rsp),%rcx
  0.17%    0.16%   │││    │   │││││  0x00007f1a88c139c0: mov    %r10d,%r9d
  0.32%    0.27%   │││    │   │││││  0x00007f1a88c139c3: mov    0x60(%rsp),%edi
  0.13%    0.08%   │││    │   │││││  0x00007f1a88c139c7: mov    0x34(%rsp),%ebx
  0.02%    0.06%   │││    │   │││││  0x00007f1a88c139cb: mov    %ebx,(%rsp)
  0.14%    0.13%   │││    │   │││││  0x00007f1a88c139ce: xor    %r10d,%r10d
  0.33%    0.26%   │││    │   │││││  0x00007f1a88c139d1: mov    %r10d,0x8(%rsp)
  0.15%    0.14%   │││    │   │││││  0x00007f1a88c139d6: mov    %r11d,0x10(%rsp)
  0.03%    0.04%   │││    │   │││││  0x00007f1a88c139db: callq  0x00007f1a88a0d020  ; OopMap{[24]=Oop [32]=Oop [40]=NarrowOop [64]=Oop [76]=NarrowOop [80]=Oop [104]=Oop [112]=Oop off=960}
                   │││    │   │││││                                                ;*invokespecial step
                   │││    │   │││││                                                ; - com.google.re2j.Machine::match@363 (line 248)
                   │││    │   │││││                                                ;   {optimized virtual_call}
  0.14%    0.10%   │││    │   │││││  0x00007f1a88c139e0: mov    0x40(%rsp),%r10
  0.52%    0.65%   │││    │   │││││  0x00007f1a88c139e5: movzbl 0x11(%r10),%ebx    ;*getfield captures
                   │││    │   │││││                                                ; - com.google.re2j.Machine::match@375 (line 252)
  0.07%    0.05%   │││    │   │││││  0x00007f1a88c139ea: movzbl 0x10(%r10),%eax    ;*getfield matched
                   │││    │   │││││                                                ; - com.google.re2j.Machine::match@382 (line 252)
  0.11%    0.20%   │││    │   │││││  0x00007f1a88c139ef: mov    0x2c(%rsp),%r10d
  0.43%    0.49%   │││    │   │││││  0x00007f1a88c139f4: test   %r10d,%r10d
                   │││    │╭  │││││  0x00007f1a88c139f7: je     0x00007f1a88c13c7d  ;*ifne
                   │││    ││  │││││                                                ; - com.google.re2j.Machine::match@368 (line 249)
           0.01%   │││    ││  │││││  0x00007f1a88c139fd: test   %ebx,%ebx
                   │││    ││  │││││  0x00007f1a88c139ff: jne    0x00007f1a88c1431d  ;*ifne
                   │││    ││  │││││                                                ; - com.google.re2j.Machine::match@378 (line 252)
  0.02%    0.01%   │││    ││  │││││  0x00007f1a88c13a05: test   %eax,%eax
                   │││    ││  │││││  0x00007f1a88c13a07: jne    0x00007f1a88c14551  ;*ifeq
                   │││    ││  │││││                                                ; - com.google.re2j.Machine::match@385 (line 252)
  0.18%    0.17%   │││    ││  │││││  0x00007f1a88c13a0d: mov    0x50(%rsp),%r10
  0.40%    0.50%   │││    ││  │││││  0x00007f1a88c13a12: mov    0x10(%r10),%r11d   ;*getfield end
                   │││    ││  │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                   │││    ││  │││││                                                ; - com.google.re2j.Machine::match@415 (line 261)
  0.07%    0.03%   │││    ││  │││││  0x00007f1a88c13a16: mov    0xc(%r10),%r8d     ;*getfield start
                   │││    ││  │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                   │││    ││  │││││                                                ; - com.google.re2j.Machine::match@415 (line 261)
           0.00%   │││    ││  │││││  0x00007f1a88c13a1a: mov    0x14(%r10),%r13d   ;*getfield str
                   │││    ││  │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                   │││    ││  │││││                                                ; - com.google.re2j.Machine::match@415 (line 261)
  0.26%    0.27%   │││    ││  │││││  0x00007f1a88c13a1e: mov    0x38(%rsp),%r9d
  0.32%    0.49%   │││    ││  │││││  0x00007f1a88c13a23: cmp    $0xffffffff,%r9d
                   │││    ││  │││││  0x00007f1a88c13a27: je     0x00007f1a88c13cbc  ;*if_icmpeq
                   │││    ││  │││││                                                ; - com.google.re2j.Machine::match@407 (line 260)
  0.00%    0.00%   │││    ││  │││││  0x00007f1a88c13a2d: mov    0x30(%rsp),%ecx
  0.00%            │││    ││  │││││  0x00007f1a88c13a31: add    0x64(%rsp),%ecx
  0.25%    0.17%   │││    ││  │││││  0x00007f1a88c13a35: add    %r8d,%ecx          ;*iadd
                   │││    ││  │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                   │││    ││  │││││                                                ; - com.google.re2j.Machine::match@415 (line 261)
  0.31%    0.36%   │││    ││  │││││  0x00007f1a88c13a38: cmp    %r11d,%ecx
                   │││    ││  │││││  0x00007f1a88c13a3b: jge    0x00007f1a88c13ccb  ;*if_icmpge
                   │││    ││  │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                   │││    ││  │││││                                                ; - com.google.re2j.Machine::match@415 (line 261)
  0.02%    0.01%   │││    ││  │││││  0x00007f1a88c13a41: mov    0x8(%r12,%r13,8),%r10d  ; implicit exception: dispatches to 0x00007f1a88c156a5
  2.01%    2.14%   │││    ││  │││││  0x00007f1a88c13a46: cmp    $0xf80002da,%r10d  ;   {metadata(&apos;java/lang/String&apos;)}
                   │││    ││  │││││  0x00007f1a88c13a4d: jne    0x00007f1a88c14259
  0.57%    0.63%   │││    ││  │││││  0x00007f1a88c13a53: lea    (%r12,%r13,8),%rdi  ;*invokeinterface charAt
                   │││    ││  │││││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││    ││  │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││    ││  │││││                                                ; - com.google.re2j.Machine::match@415 (line 261)
  0.05%    0.11%   │││    ││  │││││  0x00007f1a88c13a57: test   %ecx,%ecx
                   │││    ││  │││││  0x00007f1a88c13a59: jl     0x00007f1a88c14371  ;*iflt
                   │││    ││  │││││                                                ; - java.lang.String::charAt@1 (line 657)
                   │││    ││  │││││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││    ││  │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││    ││  │││││                                                ; - com.google.re2j.Machine::match@415 (line 261)
           0.00%   │││    ││  │││││  0x00007f1a88c13a5f: mov    0xc(%rdi),%r14d    ;*getfield value
                   │││    ││  │││││                                                ; - java.lang.String::charAt@6 (line 657)
                   │││    ││  │││││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││    ││  │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││    ││  │││││                                                ; - com.google.re2j.Machine::match@415 (line 261)
  0.23%    0.20%   │││    ││  │││││  0x00007f1a88c13a63: mov    0xc(%r12,%r14,8),%ebp  ;*arraylength
                   │││    ││  │││││                                                ; - java.lang.String::charAt@9 (line 657)
                   │││    ││  │││││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││    ││  │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││    ││  │││││                                                ; - com.google.re2j.Machine::match@415 (line 261)
                   │││    ││  │││││                                                ; implicit exception: dispatches to 0x00007f1a88c156b9
  2.74%    3.28%   │││    ││  │││││  0x00007f1a88c13a68: cmp    %ebp,%ecx
                   │││    ││  │││││  0x00007f1a88c13a6a: jge    0x00007f1a88c145a5  ;*if_icmplt
                   │││    ││  │││││                                                ; - java.lang.String::charAt@10 (line 657)
                   │││    ││  │││││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││    ││  │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││    ││  │││││                                                ; - com.google.re2j.Machine::match@415 (line 261)
  0.56%    0.71%   │││    ││  │││││  0x00007f1a88c13a70: cmp    %ebp,%ecx
                   │││    ││  │││││  0x00007f1a88c13a72: jae    0x00007f1a88c141f3
  0.29%    0.47%   │││    ││  │││││  0x00007f1a88c13a78: lea    (%r12,%r14,8),%r10
                   │││    ││  │││││  0x00007f1a88c13a7c: movzwl 0x10(%r10,%rcx,2),%r9d  ;*caload
                   │││    ││  │││││                                                ; - java.lang.String::charAt@27 (line 660)
                   │││    ││  │││││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││    ││  │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││    ││  │││││                                                ; - com.google.re2j.Machine::match@415 (line 261)
  0.05%    0.04%   │││    ││  │││││  0x00007f1a88c13a82: cmp    $0xd800,%r9d
                   │││    ││  │││││  0x00007f1a88c13a89: jge    0x00007f1a88c14619  ;*if_icmplt
                   │││    ││  │││││                                                ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   │││    ││  │││││                                                ; - java.lang.Character::codePointAt@9 (line 4867)
                   │││    ││  │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││    ││  │││││                                                ; - com.google.re2j.Machine::match@415 (line 261)
  0.53%    0.57%   │││    ││  │││││  0x00007f1a88c13a8f: shl    $0x3,%r9d          ;*ishl
                   │││    ││  │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                   │││    ││  │││││                                                ; - com.google.re2j.Machine::match@415 (line 261)
  0.43%    0.38%   │││    ││  │││││  0x00007f1a88c13a93: mov    %r9d,%ecx
                   │││    ││  │││││  0x00007f1a88c13a96: or     $0x1,%ecx
  0.43%    0.54%   │││    ││  │││││  0x00007f1a88c13a99: and    $0x7,%r9d
  0.16%    0.18%   │││    ││  │││││  0x00007f1a88c13a9d: sar    $0x3,%ecx          ;*ishr
                   │││    ││  │││││                                                ; - com.google.re2j.Machine::match@423 (line 262)
  0.40%    0.49%   │││    ││  │││││  0x00007f1a88c13aa0: or     $0x1,%r9d          ; OopMap{r13=NarrowOop [24]=Oop [32]=Oop [64]=Oop [76]=NarrowOop [80]=Oop [104]=Oop [112]=Oop off=1156}
                   │││    ││  │││││                                                ;*goto
                   │││    ││  │││││                                                ; - com.google.re2j.Machine::match@445 (line 268)
  0.00%            │││    ││  │││││  0x00007f1a88c13aa4: test   %eax,0x15e43556(%rip)        # 0x00007f1a9ea57000
                   │││    ││  │││││                                                ;*goto
                   │││    ││  │││││                                                ; - com.google.re2j.Machine::match@445 (line 268)
                   │││    ││  │││││                                                ;   {poll}
  0.02%            │││    ││  │││││  0x00007f1a88c13aaa: mov    0x40(%rsp),%r10
  0.11%    0.14%   │││    ││  │││││  0x00007f1a88c13aaf: mov    0x28(%r10),%r14d   ;*getfield matchcap
                   │││    ││  │││││                                                ; - com.google.re2j.Machine::match@311 (line 245)
  0.44%    0.48%   │││    ││  │││││  0x00007f1a88c13ab3: mov    0x14(%r10),%esi    ;*getfield re2
                   │││    ││  │││││                                                ; - com.google.re2j.Machine::match@178 (line 222)
  0.01%    0.02%   │││    ││  │││││  0x00007f1a88c13ab7: mov    0x68(%rsp),%r10
           0.00%   │││    ││  │││││  0x00007f1a88c13abc: shr    $0x3,%r10
  0.08%    0.15%   │││    ││  │││││  0x00007f1a88c13ac0: mov    %r10d,0x28(%rsp)
  0.43%    0.56%   │││    ││  │││││  0x00007f1a88c13ac5: mov    0x38(%rsp),%r10d
  0.00%            │││    ││  │││││  0x00007f1a88c13aca: vmovd  %ebx,%xmm2
                   │││    ││  │││││  0x00007f1a88c13ace: mov    0x20(%rsp),%rbx
  0.20%    0.14%   │││    ││  │││││  0x00007f1a88c13ad3: mov    %rbx,0x68(%rsp)
  0.43%    0.32%   │││    ││  │││││  0x00007f1a88c13ad8: mov    0x30(%rsp),%edi
  0.00%    0.00%   │││    ││  │││││  0x00007f1a88c13adc: mov    %edi,0x2c(%rsp)
           0.00%   │││    ││  │││││  0x00007f1a88c13ae0: mov    %r9d,0x30(%rsp)
  0.20%    0.13%   │││    ││  │││││  0x00007f1a88c13ae5: mov    %ecx,0x38(%rsp)
  0.46%    0.23%   │││    ││  │││││  0x00007f1a88c13ae9: mov    %r8d,0x70(%rsp)
  0.00%            │││    ││  │││││  0x00007f1a88c13aee: mov    %r11d,0x74(%rsp)
  0.00%    0.01%   ↘││    ││  │││││  0x00007f1a88c13af3: mov    0x28(%rsp),%r11d
  0.18%    0.08%    ││    ││  │││││  0x00007f1a88c13af8: movzbl 0x18(%r12,%r11,8),%r11d  ; implicit exception: dispatches to 0x00007f1a88c15696
  0.53%    0.22%    ││    ││  │││││  0x00007f1a88c13afe: mov    0x28(%rsp),%r8d
           0.00%    ││    ││  │││││  0x00007f1a88c13b03: shl    $0x3,%r8           ;*aload
                    ││    ││  │││││                                                ; - com.google.re2j.Machine::match@145 (line 213)
                    ││    ││  │││││  0x00007f1a88c13b07: mov    %r8,0x20(%rsp)
  0.14%    0.04%    ││    ││  │││││  0x00007f1a88c13b0c: test   %r11d,%r11d
                    ││    ││╭ │││││  0x00007f1a88c13b0f: je     0x00007f1a88c13b5d  ;*ifeq
                    ││    │││ │││││                                                ; - com.google.re2j.Machine::match@150 (line 213)
  0.20%    0.08%    ││    │││ │││││  0x00007f1a88c13b11: mov    0x58(%rsp),%r11d
  0.00%             ││    │││ │││││  0x00007f1a88c13b16: test   %r11d,%r11d
                    ││    │││ │││││  0x00007f1a88c13b19: jne    0x00007f1a88c147ad  ;*ifeq
                    ││    │││ │││││                                                ; - com.google.re2j.Machine::match@157 (line 214)
           0.00%    ││    │││ │││││  0x00007f1a88c13b1f: test   %eax,%eax
                    ││    │││ │││││  0x00007f1a88c13b21: jne    0x00007f1a88c14809  ;*ifeq
                    ││    │││ │││││                                                ; - com.google.re2j.Machine::match@171 (line 218)
  0.09%    0.01%    ││    │││ │││││  0x00007f1a88c13b27: mov    0x24(%r12,%rsi,8),%r11d  ;*getfield prefix
                    ││    │││ │││││                                                ; - com.google.re2j.Machine::match@181 (line 222)
                    ││    │││ │││││                                                ; implicit exception: dispatches to 0x00007f1a88c156d9
  0.19%    0.14%    ││    │││ │││││  0x00007f1a88c13b2c: mov    %r11d,%r8d
           0.00%    ││    │││ │││││  0x00007f1a88c13b2f: mov    0xc(%r12,%r11,8),%r11d  ;*getfield value
                    ││    │││ │││││                                                ; - java.lang.String::isEmpty@1 (line 635)
                    ││    │││ │││││                                                ; - com.google.re2j.Machine::match@184 (line 222)
                    ││    │││ │││││                                                ; implicit exception: dispatches to 0x00007f1a88c156e9
  0.01%    0.00%    ││    │││ │││││  0x00007f1a88c13b34: vmovd  %r11d,%xmm0
  0.15%    0.07%    ││    │││ │││││  0x00007f1a88c13b39: mov    0xc(%r12,%r11,8),%r11d  ;*arraylength
                    ││    │││ │││││                                                ; - java.lang.String::isEmpty@4 (line 635)
                    ││    │││ │││││                                                ; - com.google.re2j.Machine::match@184 (line 222)
                    ││    │││ │││││                                                ; implicit exception: dispatches to 0x00007f1a88c156f9
  0.16%    0.14%    ││    │││ │││││  0x00007f1a88c13b3e: mov    %r11d,0x5c(%rsp)
  0.02%    0.01%    ││    │││ │││││  0x00007f1a88c13b43: test   %r11d,%r11d
                    ││    │││ │││││  0x00007f1a88c13b46: jne    0x00007f1a88c13da0  ;*ifne
                    ││    │││ │││││                                                ; - com.google.re2j.Machine::match@187 (line 222)
           0.00%    ││    │││ │││││  0x00007f1a88c13b4c: mov    %r10d,0x60(%rsp)
  0.10%    0.07%    ││    │││ │││││  0x00007f1a88c13b51: mov    0x64(%rsp),%r11d
  0.17%    0.06%    ││    │││ │││││  0x00007f1a88c13b56: mov    %r11d,0x5c(%rsp)
  0.02%    0.02%    ││    │││╭│││││  0x00007f1a88c13b5b: jmp    0x00007f1a88c13b6c
  0.26%    0.12%    ││    ││↘││││││  0x00007f1a88c13b5d: mov    %r10d,0x60(%rsp)
                    ││    ││ ││││││  0x00007f1a88c13b62: mov    0x64(%rsp),%r10d
                    ││    ││ ││││││  0x00007f1a88c13b67: mov    %r10d,0x5c(%rsp)   ;*iload_3
                    ││    ││ ││││││                                                ; - com.google.re2j.Machine::match@276 (line 239)
  0.08%    0.04%    ││    ││ ↘│││││  0x00007f1a88c13b6c: test   %eax,%eax
                    ││    ││  │││││  0x00007f1a88c13b6e: jne    0x00007f1a88c142bd  ;*ifne
                    ││    ││  │││││                                                ; - com.google.re2j.Machine::match@288 (line 239)
  0.40%    0.15%    ││    ││  │││││  0x00007f1a88c13b74: vmovd  %xmm2,%r11d
  0.16%    0.04%    ││    ││  │││││  0x00007f1a88c13b79: test   %r11d,%r11d
                    ││    ││  │││││  0x00007f1a88c13b7c: jne    0x00007f1a88c14441  ;*ifeq
                    ││    ││  │││││                                                ; - com.google.re2j.Machine::match@295 (line 242)
  0.01%    0.01%    ││    ││  │││││  0x00007f1a88c13b82: mov    0x14(%rsp),%r10d
  0.07%    0.02%    ││    ││  │││││  0x00007f1a88c13b87: cmp    $0xf8019a09,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$Alt5Inst&apos;)}
                    ││    ││  ╰││││  0x00007f1a88c13b8e: je     0x00007f1a88c138b3
  0.26%    0.09%    ││    ││   ││││  0x00007f1a88c13b94: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                    ││    ││   ││││  0x00007f1a88c13b9b: jne    0x00007f1a88c144a1
  0.00%    0.00%    ││    ││   ││││  0x00007f1a88c13ba1: mov    0x18(%rsp),%r10    ;*invokevirtual add
                    ││    ││   ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
                    ││    ││   ││││  0x00007f1a88c13ba6: mov    %r10,0x70(%rsp)
  0.03%    0.05%    ││    ││   ││││  0x00007f1a88c13bab: mov    0x18(%r10),%ecx    ;*getfield pc
                    ││    ││   ││││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                    ││    ││   ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.24%    0.06%    ││    ││   ││││  0x00007f1a88c13baf: cmp    $0x40,%ecx
                    ││    ││   ││││  0x00007f1a88c13bb2: jg     0x00007f1a88c1467d  ;*if_icmpgt
                    ││    ││   ││││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                    ││    ││   ││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                    ││    ││   ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.00%             ││    ││   ││││  0x00007f1a88c13bb8: mov    $0x1,%r9d
                    ││    ││   ││││  0x00007f1a88c13bbe: shl    %cl,%r9            ;*lshl
                    ││    ││   ││││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                    ││    ││   ││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                    ││    ││   ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.28%    0.07%    ││    ││   ││││  0x00007f1a88c13bc1: mov    0x28(%rsp),%r11d
                    ││    ││   ││││  0x00007f1a88c13bc6: mov    0x10(%r12,%r11,8),%r10  ;*getfield pcsl
                    ││    ││   ││││                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                    ││    ││   ││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                    ││    ││   ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.03%             ││    ││   ││││  0x00007f1a88c13bcb: mov    %r10,%r11
  0.23%             ││    ││   ││││  0x00007f1a88c13bce: and    %r9,%r11           ;*land
                    ││    ││   ││││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                    ││    ││   ││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                    ││    ││   ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
                    ││    ││   ││││  0x00007f1a88c13bd1: test   %r11,%r11
                    ││    ││   ││││  0x00007f1a88c13bd4: jne    0x00007f1a88c146d9  ;*ifeq
                    ││    ││   ││││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                    ││    ││   ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
                    ││    ││   ││││  0x00007f1a88c13bda: cmp    $0x40,%ecx
                    ││    ││   ││││  0x00007f1a88c13bdd: jge    0x00007f1a88c14751  ;*if_icmpge
                    ││    ││   ││││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                    ││    ││   ││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                    ││    ││   ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.03%    0.00%    ││    ││   ││││  0x00007f1a88c13be3: mov    0x28(%rsp),%r11d
  0.25%    0.07%    ││    ││   ││││  0x00007f1a88c13be8: mov    %r12b,0x18(%r12,%r11,8)  ;*putfield empty
                    ││    ││   ││││                                                ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                    ││    ││   ││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                    ││    ││   ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.01%             ││    ││   ││││  0x00007f1a88c13bed: mov    0x20(%r12,%r11,8),%r8d  ;*getfield denseThreadsInstructions
                    ││    ││   ││││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                    ││    ││   ││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                    ││    ││   ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
                    ││    ││   ││││  0x00007f1a88c13bf2: mov    0xc(%r12,%r11,8),%ebp  ;*getfield size
                    ││    ││   ││││                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                    ││    ││   ││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                    ││    ││   ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.02%             ││    ││   ││││  0x00007f1a88c13bf7: or     %r10,%r9
  0.29%    0.08%    ││    ││   ││││  0x00007f1a88c13bfa: mov    %r9,0x10(%r12,%r11,8)  ;*putfield pcsl
                    ││    ││   ││││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                    ││    ││   ││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                    ││    ││   ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
                    ││    ││   ││││  0x00007f1a88c13bff: mov    %ebp,%r11d
                    ││    ││   ││││  0x00007f1a88c13c02: inc    %r11d
  0.07%    0.01%    ││    ││   ││││  0x00007f1a88c13c05: mov    0x28(%rsp),%r10d
  0.19%    0.29%    ││    ││   ││││  0x00007f1a88c13c0a: mov    %r11d,0xc(%r12,%r10,8)  ;*putfield size
                    ││    ││   ││││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                    ││    ││   ││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                    ││    ││   ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
                    ││    ││   ││││  0x00007f1a88c13c0f: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x00007f1a88c156c9
  0.08%    0.01%    ││    ││   ││││  0x00007f1a88c13c14: cmp    %r11d,%ebp
                    ││    ││   ││││  0x00007f1a88c13c17: jae    0x00007f1a88c143d5
  0.10%    0.11%    ││    ││   ││││  0x00007f1a88c13c1d: mov    0x8(%r12,%r8,8),%r11d
  0.17%    0.19%    ││    ││   ││││  0x00007f1a88c13c22: cmp    $0xf8019807,%r11d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                    ││    ││   ││││  0x00007f1a88c13c29: jne    0x00007f1a88c144e5
           0.01%    ││    ││   ││││  0x00007f1a88c13c2f: mov    0x70(%rsp),%r10
                    ││    ││   ││││  0x00007f1a88c13c34: mov    %r10,%r11
  0.09%    0.08%    ││    ││   ││││  0x00007f1a88c13c37: shr    $0x3,%r11          ;*aastore
                    ││    ││   ││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                    ││    ││   ││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                    ││    ││   ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.18%    0.14%    ││    ││   ││││  0x00007f1a88c13c3b: lea    (%r12,%r8,8),%r10  ;*getfield denseThreadsInstructions
                    ││    ││   ││││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                    ││    ││   ││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                    ││    ││   ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
                    ││    ││   ││││  0x00007f1a88c13c3f: lea    0x10(%r10,%rbp,4),%r10
                    ││    ││   ││││  0x00007f1a88c13c44: mov    %r11d,(%r10)
  0.36%    0.24%    ││    ││   ││││  0x00007f1a88c13c47: shr    $0x9,%r10
  0.13%    0.06%    ││    ││   ││││  0x00007f1a88c13c4b: movabs $0x7f1a843f5000,%r11
                    ││    ││   ││││  0x00007f1a88c13c55: mov    %r12b,(%r11,%r10,1)  ;*aastore
                    ││    ││   ││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                    ││    ││   ││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                    ││    ││   ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.29%    0.31%    ││    ││   ╰│││  0x00007f1a88c13c59: jmpq   0x00007f1a88c138ed
  0.01%    0.00%    ↘│    ││    │││  0x00007f1a88c13c5e: mov    $0x5,%r8d
                     │    ││    ╰││  0x00007f1a88c13c64: jmpq   0x00007f1a88c138fe
           0.01%     ↘    ││     ││  0x00007f1a88c13c69: or     $0xa,%r8d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@27 (line 180)
                          ││     ││                                                ; - com.google.re2j.Machine::match@330 (line 247)
                          ││     ╰│  0x00007f1a88c13c6d: jmpq   0x00007f1a88c13916
  0.01%    0.01%          ↘│      │  0x00007f1a88c13c72: mov    $0x1,%r11d
                           │      ╰  0x00007f1a88c13c78: jmpq   0x00007f1a88c139a2
                           ↘         0x00007f1a88c13c7d: test   %ebx,%ebx
                                     0x00007f1a88c13c7f: jne    0x00007f1a88c1412a  ;*getfield matched
                                                                                   ; - com.google.re2j.Machine::match@455 (line 270)
                                     0x00007f1a88c13c85: mov    0x68(%rsp),%r11
                                     0x00007f1a88c13c8a: movzbl 0x18(%r11),%r10d   ; implicit exception: dispatches to 0x00007f1a88c15771
  0.00%                              0x00007f1a88c13c8f: test   %r10d,%r10d
                                     0x00007f1a88c13c92: jne    0x00007f1a88c13cad  ;*ifeq
                                                                                   ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                                                                                   ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                                                                                   ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                                                                                   ; - com.google.re2j.Machine::match@451 (line 269)
                                     0x00007f1a88c13c94: movb   $0x1,0x18(%r11)    ;*putfield empty
                                                                                   ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                                                                                   ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                                                                                   ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                                                                                   ; - com.google.re2j.Machine::match@451 (line 269)
....................................................................................................
 29.29%   27.20%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 495 (195 bytes) 

                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Machine::step@214 (line 319)
                                                                   ;   {optimized virtual_call}
                     0x00007f1a88beade0: test   %rax,%rax
                     0x00007f1a88beade3: jne    0x00007f1a88bec285
                     0x00007f1a88beade9: mov    0x48(%rsp),%r11    ;*synchronization entry
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
           0.00%     0x00007f1a88beadee: mov    0x28(%rsp),%r14
  0.06%    0.04%     0x00007f1a88beadf3: mov    0xac(%rsp),%eax
  0.22%    0.25%     0x00007f1a88beadfa: mov    0x30(%rsp),%r13
  0.03%    0.01%     0x00007f1a88beadff: mov    0xa4(%rsp),%r10d   ;*synchronization entry
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.01%              0x00007f1a88beae07: mov    0xa8(%rsp),%r8d
  0.06%    0.07%     0x00007f1a88beae0f: mov    0xb0(%rsp),%ebx    ;*aload
                                                                   ; - com.google.re2j.Machine::step@219 (line 322)
  1.77%    1.81%     0x00007f1a88beae16: inc    %r10d              ;*iinc
                                                                   ; - com.google.re2j.Machine::step@230 (line 288)
  0.34%    0.44%     0x00007f1a88beae19: cmp    %eax,%r10d
                     0x00007f1a88beae1c: jge    0x00007f1a88beaefd
  0.63%    0.58%     0x00007f1a88beae22: mov    %r11,%r9
  0.09%    0.12%     0x00007f1a88beae25: mov    %r8d,0xa8(%rsp)
  1.34%    1.56%     0x00007f1a88beae2d: mov    %ebx,0xb0(%rsp)    ;*iload
                                                                   ; - com.google.re2j.Machine::step@43 (line 291)
  0.44%    0.58%     0x00007f1a88beae34: mov    0x10(%r13,%r10,4),%r8d  ;*aaload
                                                                   ; - com.google.re2j.Machine::step@99 (line 301)
  0.74%    0.90%     0x00007f1a88beae39: mov    0xc(%r12,%r8,8),%r11d  ;*getfield op
                                                                   ; - com.google.re2j.Machine::step@104 (line 303)
                                                                   ; implicit exception: dispatches to 0x00007f1a88bec2f1
  1.30%    1.46%     0x00007f1a88beae3e: cmp    $0x6,%r11d
                     0x00007f1a88beae42: je     0x00007f1a88beaf45  ;*if_icmpne
                                                                   ; - com.google.re2j.Machine::step@109 (line 303)
  2.16%    2.45%     0x00007f1a88beae48: cmp    $0xa,%r11d
                     0x00007f1a88beae4c: je     0x00007f1a88bea95d  ;*if_icmpne
                                                                   ; - com.google.re2j.Inst::matchRune@6 (line 90)
                                                                   ; - com.google.re2j.Machine::step@191 (line 318)
  1.10%    1.23%     0x00007f1a88beae52: cmp    $0xb,%r11d
                     0x00007f1a88beae56: je     0x00007f1a88beaff1  ;*if_icmpne
                                                                   ; - com.google.re2j.Inst::matchRune@17 (line 94)
                                                                   ; - com.google.re2j.Machine::step@191 (line 318)
  1.23%    1.32%     0x00007f1a88beae5c: mov    0x1c(%r12,%r8,8),%ecx  ;*getfield f0
                                                                   ; - com.google.re2j.Inst::matchRune@42 (line 99)
                                                                   ; - com.google.re2j.Machine::step@191 (line 318)
  0.11%    0.12%     0x00007f1a88beae61: cmp    $0x9,%r11d
                  ╭  0x00007f1a88beae65: jne    0x00007f1a88beae79  ;*if_icmpne
                  │                                                ; - com.google.re2j.Inst::matchRune@38 (line 98)
                  │                                                ; - com.google.re2j.Machine::step@191 (line 318)
  0.48%    0.40%  │  0x00007f1a88beae67: cmp    0x18(%rsp),%ecx
                  │  0x00007f1a88beae6b: je     0x00007f1a88beaf3a  ;*if_icmpne
                  │                                                ; - com.google.re2j.Inst::matchRune@46 (line 99)
                  │                                                ; - com.google.re2j.Machine::step@191 (line 318)
  0.25%    0.12%  │  0x00007f1a88beae71: xor    %r11d,%r11d
           0.00%  │  0x00007f1a88beae74: jmpq   0x00007f1a88bea8b3
  0.83%    0.87%  ↘  0x00007f1a88beae79: cmp    $0xc,%r11d
                     0x00007f1a88beae7d: jne    0x00007f1a88beb021  ;*if_icmpne
                                                                   ; - com.google.re2j.Inst::matchRune@61 (line 102)
                                                                   ; - com.google.re2j.Machine::step@191 (line 318)
  1.28%    1.50%     0x00007f1a88beae83: cmp    0x18(%rsp),%ecx
                     0x00007f1a88beae87: je     0x00007f1a88beaf2f  ;*if_icmpeq
                                                                   ; - com.google.re2j.Inst::matchRune@69 (line 103)
                                                                   ; - com.google.re2j.Machine::step@191 (line 318)
  1.02%    0.97%     0x00007f1a88beae8d: mov    0x20(%r12,%r8,8),%r11d  ;*getfield f1
                                                                   ; - com.google.re2j.Inst::matchRune@73 (line 103)
                                                                   ; - com.google.re2j.Machine::step@191 (line 318)
  0.09%    0.08%     0x00007f1a88beae92: cmp    0x18(%rsp),%r11d
                     0x00007f1a88beae97: je     0x00007f1a88beaf2f  ;*if_icmpeq
                                                                   ; - com.google.re2j.Inst::matchRune@77 (line 103)
                                                                   ; - com.google.re2j.Machine::step@191 (line 318)
  1.55%    1.80%     0x00007f1a88beae9d: mov    0x24(%r12,%r8,8),%ebp  ;*getfield f2
                                                                   ; - com.google.re2j.Inst::matchRune@81 (line 103)
                                                                   ; - com.google.re2j.Machine::step@191 (line 318)
  0.29%    0.37%     0x00007f1a88beaea2: cmp    0x18(%rsp),%ebp
                     0x00007f1a88beaea6: je     0x00007f1a88beb051  ;*if_icmpeq
                                                                   ; - com.google.re2j.Inst::matchRune@85 (line 103)
                                                                   ; - com.google.re2j.Machine::step@191 (line 318)
  1.58%    1.64%     0x00007f1a88beaeac: mov    0x28(%r12,%r8,8),%ebp  ;*getfield f3
                                                                   ; - com.google.re2j.Inst::matchRune@89 (line 103)
                                                                   ; - com.google.re2j.Machine::step@191 (line 318)
  0.05%    0.05%     0x00007f1a88beaeb1: cmp    0x18(%rsp),%ebp
                     0x00007f1a88beaeb5: jne    0x00007f1a88bea8b0  ;*if_icmpne
                                                                   ; - com.google.re2j.Inst::matchRune@93 (line 103)
                                                                   ; - com.google.re2j.Machine::step@191 (line 318)
                     0x00007f1a88beaebb: mov    $0xffffff65,%esi
                     0x00007f1a88beaec0: mov    %r10d,0xa4(%rsp)
                     0x00007f1a88beaec8: mov    %r8d,0xac(%rsp)
                     0x00007f1a88beaed0: mov    %r14,0x28(%rsp)
                     0x00007f1a88beaed5: mov    %r9,0x30(%rsp)
....................................................................................................
 19.07%   20.77%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 495 (1013 bytes) 

                     0x00007f1a88bea940: mov    %r11d,(%rdx)
                     0x00007f1a88bea943: shr    $0x9,%r10
                     0x00007f1a88bea947: movabs $0x7f1a843f5000,%r11
                     0x00007f1a88bea951: mov    %r12b,(%r11,%r10,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
                     0x00007f1a88bea955: mov    %r13,%r11
                     0x00007f1a88bea958: jmpq   0x00007f1a88beadee
  0.10%    0.09%     0x00007f1a88bea95d: mov    0x2c(%r12,%r8,8),%r11d  ;*getfield outInst
                                                                   ; - com.google.re2j.Machine::step@199 (line 319)
  0.29%    0.12%     0x00007f1a88bea962: mov    0x8(%r12,%r11,8),%ebx  ; implicit exception: dispatches to 0x00007f1a88bec301
  1.01%    0.87%     0x00007f1a88bea967: lea    (%r12,%r11,8),%r8
  0.00%              0x00007f1a88bea96b: cmp    $0xf8019843,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                  ╭  0x00007f1a88bea971: je     0x00007f1a88beaa27
  0.06%    0.05%  │  0x00007f1a88bea977: cmp    $0xf8019909,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007f1a88bea97d: jne    0x00007f1a88beb771  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
  0.05%    0.04%  │  0x00007f1a88bea983: mov    0x18(%r8),%edx     ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
                  │  0x00007f1a88bea987: mov    %r9,%r11
                  │  0x00007f1a88bea98a: mov    0x10(%r9),%r9      ;*getfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
                  │                                                ; implicit exception: dispatches to 0x00007f1a88bec3c9
  0.06%    0.00%  │  0x00007f1a88bea98e: cmp    $0x40,%edx
                  │  0x00007f1a88bea991: jg     0x00007f1a88bebe51  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
  0.05%    0.01%  │  0x00007f1a88bea997: mov    $0x1,%ebx
                  │  0x00007f1a88bea99c: mov    %edx,%ecx
                  │  0x00007f1a88bea99e: shl    %cl,%rbx           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
  0.15%    0.05%  │  0x00007f1a88bea9a1: mov    %r9,%rcx
                  │  0x00007f1a88bea9a4: and    %rbx,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
  0.00%    0.00%  │  0x00007f1a88bea9a7: test   %rcx,%rcx
                  │  0x00007f1a88bea9aa: jne    0x00007f1a88beafba  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
  0.01%    0.02%  │  0x00007f1a88bea9b0: xor    %ebp,%ebp          ;*ireturn
                  │                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
  0.03%    0.01%  │  0x00007f1a88bea9b2: test   %rcx,%rcx
                  │  0x00007f1a88bea9b5: jne    0x00007f1a88bebed9  ;*ifeq
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
  0.01%    0.03%  │  0x00007f1a88bea9bb: cmp    $0x40,%edx
                  │  0x00007f1a88bea9be: jge    0x00007f1a88bebf49  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
  0.00%           │  0x00007f1a88bea9c4: mov    %r12b,0x18(%r11)   ;*putfield empty
                  │                                                ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
  0.01%    0.01%  │  0x00007f1a88bea9c8: or     %r9,%rbx
  0.05%    0.00%  │  0x00007f1a88bea9cb: mov    %rbx,0x10(%r11)    ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
  0.01%    0.02%  │  0x00007f1a88bea9cf: mov    0x20(%r11),%edx    ;*getfield denseThreadsInstructions
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
  0.00%    0.00%  │  0x00007f1a88bea9d3: mov    0xc(%r11),%ebp     ;*getfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
  0.03%    0.00%  │  0x00007f1a88bea9d7: mov    %ebp,%ecx
  0.01%    0.01%  │  0x00007f1a88bea9d9: inc    %ecx
  0.12%    0.03%  │  0x00007f1a88bea9db: mov    %ecx,0xc(%r11)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
  0.07%    0.01%  │  0x00007f1a88bea9df: mov    0xc(%r12,%rdx,8),%ecx  ; implicit exception: dispatches to 0x00007f1a88bec3dd
  0.03%    0.02%  │  0x00007f1a88bea9e4: cmp    %ecx,%ebp
                  │  0x00007f1a88bea9e6: jae    0x00007f1a88beb6e9
  0.04%    0.03%  │  0x00007f1a88bea9ec: mov    0x8(%r12,%rdx,8),%ecx
  0.02%    0.01%  │  0x00007f1a88bea9f1: cmp    $0xf8019807,%ecx   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                  │  0x00007f1a88bea9f7: jne    0x00007f1a88beb7e5  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
  0.04%    0.00%  │  0x00007f1a88bea9fd: lea    (%r12,%rdx,8),%r9  ;*getfield denseThreadsInstructions
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
                  │  0x00007f1a88beaa01: lea    0x10(%r9,%rbp,4),%r9
  0.04%    0.03%  │  0x00007f1a88beaa06: shr    $0x3,%r8
  0.00%    0.03%  │  0x00007f1a88beaa0a: mov    %r8d,(%r9)
  0.30%    0.11%  │  0x00007f1a88beaa0d: mov    %r9,%r8
  0.00%           │  0x00007f1a88beaa10: shr    $0x9,%r8
                  │  0x00007f1a88beaa14: movabs $0x7f1a843f5000,%r9
  0.00%    0.01%  │  0x00007f1a88beaa1e: mov    %r12b,(%r9,%r8,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
  0.15%    0.12%  │  0x00007f1a88beaa22: jmpq   0x00007f1a88beae07  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
  0.22%    0.27%  ↘  0x00007f1a88beaa27: mov    0x18(%r8),%edx     ;*getfield pc
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.02%    0.01%     0x00007f1a88beaa2b: mov    %r9,%r11
           0.00%     0x00007f1a88beaa2e: mov    0x10(%r9),%r9      ;*getfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
                                                                   ; implicit exception: dispatches to 0x00007f1a88bec335
  0.00%    0.01%     0x00007f1a88beaa32: cmp    $0x40,%edx
                     0x00007f1a88beaa35: jg     0x00007f1a88beb471  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.19%    0.38%     0x00007f1a88beaa3b: mov    $0x1,%ebx
  0.02%    0.00%     0x00007f1a88beaa40: mov    %edx,%ecx
  0.00%              0x00007f1a88beaa42: shl    %cl,%rbx           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.59%    0.62%     0x00007f1a88beaa45: mov    %r9,%rcx
                     0x00007f1a88beaa48: and    %rbx,%rcx
                     0x00007f1a88beaa4b: test   %rcx,%rcx
                     0x00007f1a88beaa4e: jne    0x00007f1a88beae07  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.21%    0.13%     0x00007f1a88beaa54: cmp    $0x40,%edx
                     0x00007f1a88beaa57: jge    0x00007f1a88beb4ed  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.14%    0.07%     0x00007f1a88beaa5d: mov    %r12b,0x18(%r11)   ;*putfield empty
                                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
                     0x00007f1a88beaa61: mov    0x2c(%r8),%ebp     ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
                     0x00007f1a88beaa65: or     %r9,%rbx           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.12%    0.13%     0x00007f1a88beaa68: mov    %rbx,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.14%    0.15%     0x00007f1a88beaa6c: mov    0x8(%r12,%rbp,8),%esi  ; implicit exception: dispatches to 0x00007f1a88bec349
  0.43%    0.34%     0x00007f1a88beaa71: cmp    $0xf8019909,%esi   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007f1a88beaa77: jne    0x00007f1a88beb155
  0.30%    0.30%     0x00007f1a88beaa7d: lea    (%r12,%rbp,8),%r9  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
                     0x00007f1a88beaa81: mov    0x18(%r9),%ecx     ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.01%    0.00%     0x00007f1a88beaa85: cmp    $0x40,%ecx
                     0x00007f1a88beaa88: jg     0x00007f1a88beb569  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.23%    0.23%     0x00007f1a88beaa8e: mov    $0x1,%edi
  0.06%    0.07%     0x00007f1a88beaa93: shl    %cl,%rdi           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.47%    0.62%     0x00007f1a88beaa96: mov    %rbx,%rdx
  0.03%    0.05%     0x00007f1a88beaa99: and    %rdi,%rdx          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
                     0x00007f1a88beaa9c: test   %rdx,%rdx
                     0x00007f1a88beaa9f: jne    0x00007f1a88beaf8a  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.18%    0.22%     0x00007f1a88beaaa5: xor    %ebp,%ebp          ;*ireturn
                                                                   ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.11%    0.04%     0x00007f1a88beaaa7: test   %rdx,%rdx
                     0x00007f1a88beaaaa: jne    0x00007f1a88beb5e9  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.21%    0.22%     0x00007f1a88beaab0: cmp    $0x40,%ecx
                     0x00007f1a88beaab3: jge    0x00007f1a88beb669  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
                     0x00007f1a88beaab9: or     %rdi,%rbx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
                     0x00007f1a88beaabc: mov    %rbx,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.07%    0.05%     0x00007f1a88beaac0: mov    0x20(%r11),%edi    ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.26%    0.24%     0x00007f1a88beaac4: mov    0xc(%r11),%ecx     ;*getfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
                     0x00007f1a88beaac8: mov    %ecx,%edx
                     0x00007f1a88beaaca: inc    %edx               ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.05%    0.04%     0x00007f1a88beaacc: mov    %edx,0xc(%r11)     ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.21%    0.16%     0x00007f1a88beaad0: mov    0xc(%r12,%rdi,8),%esi  ; implicit exception: dispatches to 0x00007f1a88bec35d
                     0x00007f1a88beaad5: cmp    %esi,%ecx
                     0x00007f1a88beaad7: jae    0x00007f1a88beb0d5
           0.01%     0x00007f1a88beaadd: vmovd  %edx,%xmm2
  0.08%    0.09%     0x00007f1a88beaae1: mov    %ecx,0xc(%rsp)
  0.18%    0.12%     0x00007f1a88beaae5: vmovd  %edi,%xmm0
  0.00%              0x00007f1a88beaae9: mov    %r10d,0xa4(%rsp)
           0.00%     0x00007f1a88beaaf1: mov    %r13,0x30(%rsp)
  0.06%    0.02%     0x00007f1a88beaaf6: mov    %eax,0xac(%rsp)
  0.24%    0.06%     0x00007f1a88beaafd: mov    %r11,%r13
                     0x00007f1a88beab00: mov    %r14,0x28(%rsp)
                     0x00007f1a88beab05: mov    0x8(%r12,%rdi,8),%r11d
  0.06%    0.03%     0x00007f1a88beab0a: cmp    $0xf8019807,%r11d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                     0x00007f1a88beab11: jne    0x00007f1a88beb1d1  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.20%    0.15%     0x00007f1a88beab17: mov    0x34(%r8),%r10d    ;*getfield inst2
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@43 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.00%              0x00007f1a88beab1b: mov    %r10d,%ecx
                     0x00007f1a88beab1e: mov    %r9,%r10
  0.07%    0.08%     0x00007f1a88beab21: shr    $0x3,%r10          ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.25%    0.30%     0x00007f1a88beab25: lea    (%r12,%rdi,8),%r9  ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
                     0x00007f1a88beab29: mov    0xc(%rsp),%r11d
                     0x00007f1a88beab2e: lea    0x10(%r9,%r11,4),%r11
  0.12%    0.09%     0x00007f1a88beab33: mov    %r10d,(%r11)
  0.23%    0.18%     0x00007f1a88beab36: mov    %r11,%r10
                     0x00007f1a88beab39: shr    $0x9,%r10
  0.00%    0.00%     0x00007f1a88beab3d: movabs $0x7f1a843f5000,%r11
  0.10%    0.03%     0x00007f1a88beab47: mov    %r12b,(%r11,%r10,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.22%    0.16%     0x00007f1a88beab4b: mov    %ecx,%r10d
                     0x00007f1a88beab4e: mov    0x8(%r12,%r10,8),%r8d  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
                                                                   ; implicit exception: dispatches to 0x00007f1a88bec379
  0.00%    0.00%     0x00007f1a88beab53: movslq 0xc(%rsp),%r10
  0.10%    0.01%     0x00007f1a88beab58: lea    (%r9,%r10,4),%rdi  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.27%    0.20%     0x00007f1a88beab5c: mov    %rdi,%rdx
                     0x00007f1a88beab5f: add    $0x14,%rdx         ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.00%    0.00%     0x00007f1a88beab63: mov    %ecx,%r10d
  0.06%    0.05%     0x00007f1a88beab66: lea    (%r12,%r10,8),%rax
  0.18%    0.21%     0x00007f1a88beab6a: mov    0xc(%rsp),%r10d
  0.01%              0x00007f1a88beab6f: add    $0x2,%r10d         ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
           0.00%     0x00007f1a88beab73: cmp    $0xf8019885,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                     0x00007f1a88beab7a: jne    0x00007f1a88bea8d3  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.08%    0.12%     0x00007f1a88beab80: mov    0x18(%rax),%r11d   ;*getfield pc
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@2 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.16%    0.11%     0x00007f1a88beab84: mov    %r11d,%r14d
                     0x00007f1a88beab87: cmp    $0x40,%r11d
                     0x00007f1a88beab8b: jg     0x00007f1a88beb931  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
                     0x00007f1a88beab91: mov    $0x1,%r8d
  0.04%    0.02%     0x00007f1a88beab97: mov    %r11d,%ecx
  0.20%    0.07%     0x00007f1a88beab9a: shl    %cl,%r8            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.07%    0.04%     0x00007f1a88beab9d: mov    %rbx,%r11
  0.26%    0.16%     0x00007f1a88beaba0: and    %r8,%r11           ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
           0.00%     0x00007f1a88beaba3: test   %r11,%r11
                     0x00007f1a88beaba6: jne    0x00007f1a88beaf94  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
                     0x00007f1a88beabac: xor    %ebp,%ebp          ;*ireturn
                                                                   ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.08%    0.07%     0x00007f1a88beabae: test   %r11,%r11
                     0x00007f1a88beabb1: jne    0x00007f1a88beb9b1  ;*ifeq
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@8 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.20%    0.16%     0x00007f1a88beabb7: mov    %ecx,%r11d
                     0x00007f1a88beabba: cmp    $0x40,%r11d
                     0x00007f1a88beabbe: jge    0x00007f1a88beba01  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
                     0x00007f1a88beabc4: or     %r8,%rbx           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.07%    0.06%     0x00007f1a88beabc7: mov    %rbx,0x10(%r13)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.23%    0.11%     0x00007f1a88beabcb: mov    0x2c(%rax),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@82 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.00%              0x00007f1a88beabce: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007f1a88bec38d
                     0x00007f1a88beabd3: cmp    $0xf8019843,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                     0x00007f1a88beabda: jne    0x00007f1a88beb3bd
  0.09%    0.01%     0x00007f1a88beabe0: lea    (%r12,%rbp,8),%rax  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.19%    0.16%     0x00007f1a88beabe4: mov    0x18(%rax),%r11d   ;*getfield pc
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.00%              0x00007f1a88beabe8: mov    %r11d,%ecx
                     0x00007f1a88beabeb: cmp    $0x40,%r11d
                     0x00007f1a88beabef: jg     0x00007f1a88bebbe9  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.06%    0.10%     0x00007f1a88beabf5: mov    $0x1,%r8d
  0.19%    0.22%     0x00007f1a88beabfb: shl    %cl,%r8            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.07%    0.12%     0x00007f1a88beabfe: mov    %rbx,%r11
  0.20%    0.32%     0x00007f1a88beac01: and    %r8,%r11
           0.00%     0x00007f1a88beac04: test   %r11,%r11
                     0x00007f1a88beac07: jne    0x00007f1a88beafa8  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.00%    0.01%     0x00007f1a88beac0d: mov    %ecx,%r11d
  0.07%    0.11%     0x00007f1a88beac10: cmp    $0x40,%r11d
                     0x00007f1a88beac14: jge    0x00007f1a88bebc69  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.26%    0.26%     0x00007f1a88beac1a: mov    0x2c(%rax),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.00%              0x00007f1a88beac1d: or     %r8,%rbx           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
                     0x00007f1a88beac20: mov    %rbx,0x10(%r13)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.04%    0.06%     0x00007f1a88beac24: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007f1a88bec3a1
  0.21%    0.35%     0x00007f1a88beac29: cmp    $0xf8019909,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007f1a88beac30: jne    0x00007f1a88beb409
  0.01%              0x00007f1a88beac36: lea    (%r12,%rbp,8),%r14  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.00%    0.00%     0x00007f1a88beac3a: mov    0x18(%r14),%r11d   ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.08%    0.08%     0x00007f1a88beac3e: vmovd  %r11d,%xmm1
  0.22%    0.26%     0x00007f1a88beac43: cmp    $0x40,%r11d
                     0x00007f1a88beac47: jg     0x00007f1a88bebce9  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.01%    0.00%     0x00007f1a88beac4d: mov    $0x1,%r8d
  0.01%              0x00007f1a88beac53: mov    %r11d,%ecx
  0.08%    0.10%     0x00007f1a88beac56: shl    %cl,%r8            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.25%    0.28%     0x00007f1a88beac59: mov    %rbx,%r11
  0.09%    0.12%     0x00007f1a88beac5c: and    %r8,%r11           ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.26%    0.31%     0x00007f1a88beac5f: test   %r11,%r11
                     0x00007f1a88beac62: jne    0x00007f1a88beafb0  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.01%    0.01%     0x00007f1a88beac68: xor    %ebp,%ebp          ;*ireturn
                                                                   ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
                     0x00007f1a88beac6a: test   %r11,%r11
                     0x00007f1a88beac6d: jne    0x00007f1a88bebd71  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.10%    0.09%     0x00007f1a88beac73: mov    %ecx,%r11d
  0.21%    0.22%     0x00007f1a88beac76: cmp    $0x40,%r11d
                     0x00007f1a88beac7a: jge    0x00007f1a88bebdcd  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.00%    0.01%     0x00007f1a88beac80: mov    %r10d,0xc(%r13)    ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
           0.00%     0x00007f1a88beac84: or     %r8,%rbx           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.05%    0.06%     0x00007f1a88beac87: mov    %rbx,0x10(%r13)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.16%    0.20%     0x00007f1a88beac8b: cmp    %esi,%r10d
                     0x00007f1a88beac8e: jae    0x00007f1a88beb2c1  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.00%    0.01%     0x00007f1a88beac94: mov    0x34(%rax),%r10d   ;*getfield inst2
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@43 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
                     0x00007f1a88beac98: mov    %rdx,%r8
  0.08%    0.10%     0x00007f1a88beac9b: mov    %r14,%r11
  0.26%    0.26%     0x00007f1a88beac9e: shr    $0x3,%r11
  0.00%    0.00%     0x00007f1a88beaca2: mov    %r11d,(%rdx)
  0.01%    0.01%     0x00007f1a88beaca5: shr    $0x9,%r8
  0.04%    0.05%     0x00007f1a88beaca9: movabs $0x7f1a843f5000,%r11
  0.22%    0.23%     0x00007f1a88beacb3: mov    %r12b,(%r11,%r8,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.02%    0.03%     0x00007f1a88beacb7: mov    0x8(%r12,%r10,8),%r11d  ; implicit exception: dispatches to 0x00007f1a88bec3b5
  0.00%              0x00007f1a88beacbc: lea    (%r12,%r10,8),%r8
  0.08%    0.09%     0x00007f1a88beacc0: cmp    $0xf8019885,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                     0x00007f1a88beacc7: je     0x00007f1a88bead57
  0.27%    0.29%     0x00007f1a88beaccd: cmp    $0xf8019909,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007f1a88beacd4: jne    0x00007f1a88beb86d  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.02%    0.00%     0x00007f1a88beacda: mov    0x18(%r8),%ecx     ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
                     0x00007f1a88beacde: cmp    $0x40,%ecx
                     0x00007f1a88beace1: jg     0x00007f1a88bec121  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.09%    0.14%     0x00007f1a88beace7: mov    $0x1,%r11d
  0.28%    0.32%     0x00007f1a88beaced: shl    %cl,%r11           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.11%    0.06%     0x00007f1a88beacf0: mov    %rbx,%r10
  0.17%    0.09%     0x00007f1a88beacf3: and    %r11,%r10          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.02%    0.01%     0x00007f1a88beacf6: test   %r10,%r10
                     0x00007f1a88beacf9: jne    0x00007f1a88beafce  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
                     0x00007f1a88beacff: mov    %ecx,%edx
  0.06%    0.09%     0x00007f1a88bead01: mov    %r8,%rcx
  0.25%    0.24%     0x00007f1a88bead04: xor    %ebp,%ebp          ;*ireturn
                                                                   ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.02%    0.03%     0x00007f1a88bead06: test   %r10,%r10
                     0x00007f1a88bead09: jne    0x00007f1a88bec199  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
           0.00%     0x00007f1a88bead0f: cmp    $0x40,%edx
                     0x00007f1a88bead12: jge    0x00007f1a88bec20d  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.06%    0.11%     0x00007f1a88bead18: or     %r11,%rbx
  0.22%    0.35%     0x00007f1a88bead1b: mov    %r13,%r11
  0.01%    0.01%     0x00007f1a88bead1e: mov    %rbx,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.00%              0x00007f1a88bead22: add    $0x18,%rdi
  0.05%    0.07%     0x00007f1a88bead26: mov    %rcx,%r10
  0.28%    0.29%     0x00007f1a88bead29: shr    $0x3,%r10
  0.01%    0.02%     0x00007f1a88bead2d: mov    %r10d,(%rdi)       ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.01%    0.02%     0x00007f1a88bead30: mov    %rdi,%r10
  0.07%    0.09%     0x00007f1a88bead33: mov    0xc(%rsp),%r8d
  0.23%    0.34%     0x00007f1a88bead38: add    $0x3,%r8d
  0.01%    0.00%     0x00007f1a88bead3c: mov    %r8d,0xc(%r11)     ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.00%    0.00%     0x00007f1a88bead40: shr    $0x9,%r10
  0.05%    0.11%     0x00007f1a88bead44: movabs $0x7f1a843f5000,%r8
  0.20%    0.13%     0x00007f1a88bead4e: mov    %r12b,(%r8,%r10,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.03%    0.04%     0x00007f1a88bead52: jmpq   0x00007f1a88beadee  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
....................................................................................................
 17.11%   16.04%  <total for region 3>

....[Hottest Region 4]..............................................................................
C2, level 4, com.google.re2j.Inst$Alt5Inst::add, version 512 (867 bytes) 

                            # parm5:    [sp+0x80]   = &apos;com/google/re2j/Machine&apos;  (sp of caller)
                            # parm6:    [sp+0x88]   = boolean
                            0x00007f1a88be2940: mov    0x8(%rsi),%r10d
                            0x00007f1a88be2944: shl    $0x3,%r10
                            0x00007f1a88be2948: cmp    %r10,%rax
                            0x00007f1a88be294b: jne    0x00007f1a88a0ce20  ;   {runtime_call}
                            0x00007f1a88be2951: data16 xchg %ax,%ax
                            0x00007f1a88be2954: nopl   0x0(%rax,%rax,1)
                            0x00007f1a88be295c: data16 data16 xchg %ax,%ax
                          [Verified Entry Point]
  0.18%    0.20%            0x00007f1a88be2960: mov    %eax,-0x14000(%rsp)
  0.10%    0.07%            0x00007f1a88be2967: push   %rbp
  0.16%    0.13%            0x00007f1a88be2968: sub    $0x70,%rsp         ;*synchronization entry
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@-1 (line 260)
  0.06%    0.03%            0x00007f1a88be296c: vmovd  %r9d,%xmm4
  0.14%    0.12%            0x00007f1a88be2971: vmovq  %r8,%xmm3
  0.18%    0.10%            0x00007f1a88be2976: vmovq  %rsi,%xmm2
  0.03%    0.04%            0x00007f1a88be297b: mov    %ecx,%r13d
  0.03%    0.00%            0x00007f1a88be297e: mov    0x18(%rsi),%ecx    ;*getfield pc
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@2 (line 260)
  0.09%    0.13%            0x00007f1a88be2981: mov    0x10(%rdx),%r11    ;*getfield pcsl
                                                                          ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
                                                                          ; implicit exception: dispatches to 0x00007f1a88be3285
  0.12%    0.12%            0x00007f1a88be2985: cmp    $0x40,%ecx
                            0x00007f1a88be2988: jg     0x00007f1a88be2e95  ;*if_icmpgt
                                                                          ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.03%    0.03%            0x00007f1a88be298e: mov    $0x1,%esi
  0.01%                     0x00007f1a88be2993: mov    $0x1,%r9d
  0.08%    0.15%            0x00007f1a88be2999: shl    %cl,%r9            ;*lshl
                                                                          ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.18%    0.20%            0x00007f1a88be299c: mov    %r11,%r10
  0.09%    0.18%            0x00007f1a88be299f: and    %r9,%r10           ;*land
                                                                          ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.16%    0.20%            0x00007f1a88be29a2: test   %r10,%r10
                  ╭         0x00007f1a88be29a5: jne    0x00007f1a88be2cc4  ;*ifeq
                  │                                                       ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                       ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.04%    0.03%  │         0x00007f1a88be29ab: xor    %ebp,%ebp          ;*ireturn
                  │                                                       ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  │                                                       ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.01%    0.02%  │   ↗     0x00007f1a88be29ad: test   %r10,%r10
                  │   │     0x00007f1a88be29b0: jne    0x00007f1a88be2ec9  ;*ifeq
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@8 (line 260)
  0.13%    0.05%  │   │     0x00007f1a88be29b6: cmp    $0x40,%ecx
                  │   │     0x00007f1a88be29b9: jge    0x00007f1a88be2ef9  ;*if_icmpge
                  │   │                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.18%    0.18%  │   │     0x00007f1a88be29bf: mov    %r12b,0x18(%rdx)   ;*putfield empty
                  │   │                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.02%    0.02%  │   │     0x00007f1a88be29c3: vmovq  %xmm2,%r10
  0.00%    0.04%  │   │     0x00007f1a88be29c8: mov    0x2c(%r10),%ebp    ;*getfield outInst
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@23 (line 265)
  0.10%    0.19%  │   │     0x00007f1a88be29cc: or     %r11,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.20%    0.17%  │   │     0x00007f1a88be29cf: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  │   │                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.02%    0.05%  │   │     0x00007f1a88be29d3: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f1a88be3299
  0.03%    0.01%  │   │     0x00007f1a88be29d8: cmp    $0xf8019909,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │   │     0x00007f1a88be29df: jne    0x00007f1a88be2d79
  0.14%    0.15%  │   │     0x00007f1a88be29e5: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.15%    0.15%  │   │     0x00007f1a88be29e9: mov    0x18(%r11),%ecx    ;*getfield pc
                  │   │                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.05%    0.03%  │   │     0x00007f1a88be29ed: cmp    $0x40,%ecx
                  │   │     0x00007f1a88be29f0: jg     0x00007f1a88be2f2d  ;*if_icmpgt
                  │   │                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │   │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.03%    0.03%  │   │     0x00007f1a88be29f6: mov    $0x1,%r10d
  0.09%    0.11%  │   │     0x00007f1a88be29fc: shl    %cl,%r10           ;*lshl
                  │   │                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │   │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.29%    0.30%  │   │     0x00007f1a88be29ff: mov    %r9,%r8
  0.09%    0.15%  │   │     0x00007f1a88be2a02: and    %r10,%r8           ;*land
                  │   │                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │   │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.15%    0.27%  │   │     0x00007f1a88be2a05: test   %r8,%r8
                  │╭  │     0x00007f1a88be2a08: jne    0x00007f1a88be2cce  ;*ifeq
                  ││  │                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  ││  │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││  │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.03%    0.01%  ││  │     0x00007f1a88be2a0e: xor    %ebp,%ebp          ;*ireturn
                  ││  │                                                   ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  ││  │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││  │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.01%    0.03%  ││  │↗    0x00007f1a88be2a10: test   %r8,%r8
                  ││  ││    0x00007f1a88be2a13: jne    0x00007f1a88be2f69  ;*ifeq
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.13%    0.21%  ││  ││    0x00007f1a88be2a19: cmp    $0x40,%ecx
                  ││  ││    0x00007f1a88be2a1c: jge    0x00007f1a88be2f9d  ;*if_icmpge
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.14%    0.13%  ││  ││    0x00007f1a88be2a22: or     %r10,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.03%    0.01%  ││  ││    0x00007f1a88be2a25: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.06%    0.04%  ││  ││    0x00007f1a88be2a29: mov    0x88(%rsp),%r8d
  0.18%    0.19%  ││  ││    0x00007f1a88be2a31: test   %r8d,%r8d
                  ││  ││    0x00007f1a88be2a34: jne    0x00007f1a88be2fdd  ;*ifeq
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@24 (line 149)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.13%    0.15%  ││  ││    0x00007f1a88be2a3a: mov    0xc(%rdx),%ecx     ;*getfield size
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.06%    0.04%  ││  ││    0x00007f1a88be2a3d: mov    0x20(%rdx),%ebx    ;*getfield denseThreadsInstructions
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.04%    0.07%  ││  ││    0x00007f1a88be2a40: mov    %ecx,%edi
  0.12%    0.18%  ││  ││    0x00007f1a88be2a42: inc    %edi               ;*iadd
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.13%    0.19%  ││  ││    0x00007f1a88be2a44: mov    %edi,0xc(%rdx)     ;*putfield size
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.03%    0.03%  ││  ││    0x00007f1a88be2a47: mov    0xc(%r12,%rbx,8),%r10d  ; implicit exception: dispatches to 0x00007f1a88be32c1
  0.05%    0.06%  ││  ││    0x00007f1a88be2a4c: cmp    %r10d,%ecx
                  ││  ││    0x00007f1a88be2a4f: jae    0x00007f1a88be2cfd
  0.16%    0.23%  ││  ││    0x00007f1a88be2a55: vmovd  %edi,%xmm0
  0.10%    0.27%  ││  ││    0x00007f1a88be2a59: mov    %ebx,%edi
  0.03%    0.04%  ││  ││    0x00007f1a88be2a5b: mov    %ecx,%eax
  0.03%    0.02%  ││  ││    0x00007f1a88be2a5d: mov    %r11,%rcx
  0.18%    0.19%  ││  ││    0x00007f1a88be2a60: mov    0x88(%rsp),%r11d
  0.12%    0.12%  ││  ││    0x00007f1a88be2a68: mov    0x8(%r12,%rbx,8),%r8d
  0.03%    0.02%  ││  ││    0x00007f1a88be2a6d: cmp    $0xf8019807,%r8d   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                  ││  ││    0x00007f1a88be2a74: jne    0x00007f1a88be2da9  ;*aastore
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.05%    0.03%  ││  ││    0x00007f1a88be2a7a: vmovq  %xmm2,%r11
  0.15%    0.14%  ││  ││    0x00007f1a88be2a7f: mov    0x34(%r11),%ebp    ;*getfield inst2
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@43 (line 266)
  0.14%    0.16%  ││  ││    0x00007f1a88be2a83: shr    $0x3,%rcx          ;*aastore
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.03%    0.02%  ││  ││    0x00007f1a88be2a87: lea    (%r12,%rbx,8),%r11  ;*getfield denseThreadsInstructions
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.03%    0.02%  ││  ││    0x00007f1a88be2a8b: lea    0x10(%r11,%rax,4),%r8
  0.17%    0.09%  ││  ││    0x00007f1a88be2a90: mov    %ecx,(%r8)
  0.14%    0.14%  ││  ││    0x00007f1a88be2a93: mov    %r8,%rcx
  0.01%    0.02%  ││  ││    0x00007f1a88be2a96: shr    $0x9,%rcx
  0.04%    0.03%  ││  ││    0x00007f1a88be2a9a: movabs $0x7f1a843f5000,%r8
  0.09%    0.05%  ││  ││    0x00007f1a88be2aa4: mov    %r12b,(%r8,%rcx,1)  ;*aastore
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.17%    0.06%  ││  ││    0x00007f1a88be2aa8: mov    0x8(%r12,%rbp,8),%ebx  ; implicit exception: dispatches to 0x00007f1a88be32dd
  0.01%    0.01%  ││  ││    0x00007f1a88be2aad: cmp    $0xf8019909,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  ││  ││    0x00007f1a88be2ab3: jne    0x00007f1a88be2de9
  0.02%    0.03%  ││  ││    0x00007f1a88be2ab9: lea    (%r12,%rbp,8),%r14  ;*invokevirtual add
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.11%    0.08%  ││  ││    0x00007f1a88be2abd: mov    0x18(%r14),%ecx    ;*getfield pc
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.24%    0.29%  ││  ││    0x00007f1a88be2ac1: vmovd  %ecx,%xmm1
  0.07%    0.08%  ││  ││    0x00007f1a88be2ac5: cmp    $0x40,%ecx
                  ││  ││    0x00007f1a88be2ac8: jg     0x00007f1a88be3019  ;*if_icmpgt
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.02%    0.01%  ││  ││    0x00007f1a88be2ace: mov    $0x1,%ebx
  0.13%    0.10%  ││  ││    0x00007f1a88be2ad3: shl    %cl,%rbx           ;*lshl
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.30%    0.37%  ││  ││    0x00007f1a88be2ad6: mov    %r9,%rcx
  0.08%    0.12%  ││  ││    0x00007f1a88be2ad9: and    %rbx,%rcx          ;*land
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.08%    0.14%  ││  ││    0x00007f1a88be2adc: test   %rcx,%rcx
                  ││╭ ││    0x00007f1a88be2adf: jne    0x00007f1a88be2cd8  ;*ifeq
                  │││ ││                                                  ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │││ ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││ ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.05%    0.09%  │││ ││    0x00007f1a88be2ae5: xor    %ebp,%ebp          ;*ireturn
                  │││ ││                                                  ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  │││ ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││ ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.04%    0.05%  │││ ││↗   0x00007f1a88be2ae7: test   %rcx,%rcx
                  │││ │││   0x00007f1a88be2aea: jne    0x00007f1a88be3055  ;*ifeq
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.17%    0.11%  │││ │││   0x00007f1a88be2af0: vmovd  %xmm1,%ecx
  0.10%    0.05%  │││ │││   0x00007f1a88be2af4: cmp    $0x40,%ecx
                  │││ │││   0x00007f1a88be2af7: jge    0x00007f1a88be3089  ;*if_icmpge
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.08%    0.09%  │││ │││   0x00007f1a88be2afd: or     %rbx,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.03%    0.02%  │││ │││   0x00007f1a88be2b00: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.12%    0.11%  │││ │││   0x00007f1a88be2b04: mov    %eax,%ebx
  0.14%    0.20%  │││ │││   0x00007f1a88be2b06: add    $0x2,%ebx
  0.05%    0.09%  │││ │││   0x00007f1a88be2b09: mov    %ebx,0xc(%rdx)     ;*putfield size
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.04%    0.03%  │││ │││   0x00007f1a88be2b0c: mov    %eax,%ebx
  0.09%    0.16%  │││ │││   0x00007f1a88be2b0e: add    $0x4,%ebx          ;*iadd
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.12%    0.17%  │││ │││   0x00007f1a88be2b11: cmp    %r10d,%ebx
                  │││ │││   0x00007f1a88be2b14: jae    0x00007f1a88be2d3d  ;*aastore
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.10%    0.06%  │││ │││   0x00007f1a88be2b1a: vmovq  %xmm2,%r10
  0.02%    0.03%  │││ │││   0x00007f1a88be2b1f: mov    0x38(%r10),%ebp    ;*getfield inst3
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@63 (line 267)
  0.08%    0.13%  │││ │││   0x00007f1a88be2b23: mov    %r14,%rcx
  0.13%    0.15%  │││ │││   0x00007f1a88be2b26: shr    $0x3,%rcx          ;*aastore
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.09%    0.11%  │││ │││   0x00007f1a88be2b2a: movslq %eax,%r10
  0.02%    0.05%  │││ │││   0x00007f1a88be2b2d: lea    (%r11,%r10,4),%rdi  ;*aastore
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.09%    0.18%  │││ │││   0x00007f1a88be2b31: mov    %rdi,%r10
  0.08%    0.15%  │││ │││   0x00007f1a88be2b34: add    $0x14,%r10
  0.07%    0.07%  │││ │││   0x00007f1a88be2b38: mov    %ecx,(%r10)
  0.01%    0.02%  │││ │││   0x00007f1a88be2b3b: shr    $0x9,%r10
  0.14%    0.05%  │││ │││   0x00007f1a88be2b3f: mov    %r12b,(%r8,%r10,1)  ;*aastore
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.14%    0.11%  │││ │││   0x00007f1a88be2b43: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f1a88be3305
  0.07%    0.06%  │││ │││   0x00007f1a88be2b48: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │││ │││   0x00007f1a88be2b4e: jne    0x00007f1a88be2e15
  0.02%    0.04%  │││ │││   0x00007f1a88be2b54: lea    (%r12,%rbp,8),%r14  ;*invokevirtual add
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.11%    0.06%  │││ │││   0x00007f1a88be2b58: mov    0x18(%r14),%ecx    ;*getfield pc
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.14%    0.24%  │││ │││   0x00007f1a88be2b5c: vmovd  %ecx,%xmm1
  0.07%    0.08%  │││ │││   0x00007f1a88be2b60: cmp    $0x40,%ecx
                  │││ │││   0x00007f1a88be2b63: jg     0x00007f1a88be30c5  ;*if_icmpgt
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.02%    0.04%  │││ │││   0x00007f1a88be2b69: mov    $0x1,%r10d
  0.07%    0.13%  │││ │││   0x00007f1a88be2b6f: shl    %cl,%r10           ;*lshl
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.17%    0.29%  │││ │││   0x00007f1a88be2b72: mov    %r9,%rcx
  0.10%    0.12%  │││ │││   0x00007f1a88be2b75: and    %r10,%rcx          ;*land
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.11%    0.17%  │││ │││   0x00007f1a88be2b78: test   %rcx,%rcx
                  │││╭│││   0x00007f1a88be2b7b: jne    0x00007f1a88be2ce2  ;*ifeq
                  │││││││                                                 ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │││││││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││││││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.06%    0.05%  │││││││   0x00007f1a88be2b81: xor    %ebp,%ebp          ;*ireturn
                  │││││││                                                 ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  │││││││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││││││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.01%    0.03%  │││││││↗  0x00007f1a88be2b83: test   %rcx,%rcx
                  ││││││││  0x00007f1a88be2b86: jne    0x00007f1a88be3101  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.07%    0.07%  ││││││││  0x00007f1a88be2b8c: vmovd  %xmm1,%ecx
  0.18%    0.17%  ││││││││  0x00007f1a88be2b90: cmp    $0x40,%ecx
                  ││││││││  0x00007f1a88be2b93: jge    0x00007f1a88be3135  ;*if_icmpge
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.07%    0.04%  ││││││││  0x00007f1a88be2b99: or     %r10,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.02%    0.07%  ││││││││  0x00007f1a88be2b9c: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.09%    0.11%  ││││││││  0x00007f1a88be2ba0: vmovq  %xmm2,%r10
  0.14%    0.13%  ││││││││  0x00007f1a88be2ba5: mov    0x3c(%r10),%ebp    ;*getfield inst4
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@83 (line 268)
  0.08%    0.09%  ││││││││  0x00007f1a88be2ba9: mov    %rdi,%r10
  0.01%    0.02%  ││││││││  0x00007f1a88be2bac: add    $0x18,%r10
  0.10%    0.08%  ││││││││  0x00007f1a88be2bb0: mov    %r14,%rcx
  0.13%    0.20%  ││││││││  0x00007f1a88be2bb3: shr    $0x3,%rcx
  0.07%    0.07%  ││││││││  0x00007f1a88be2bb7: mov    %ecx,(%r10)        ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.03%    0.03%  ││││││││  0x00007f1a88be2bba: mov    %eax,%ecx
  0.08%    0.10%  ││││││││  0x00007f1a88be2bbc: add    $0x3,%ecx
  0.14%    0.14%  ││││││││  0x00007f1a88be2bbf: mov    %ecx,0xc(%rdx)     ;*putfield size
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.09%    0.04%  ││││││││  0x00007f1a88be2bc2: shr    $0x9,%r10
  0.04%    0.03%  ││││││││  0x00007f1a88be2bc6: mov    %r12b,(%r8,%r10,1)  ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.08%    0.10%  ││││││││  0x00007f1a88be2bca: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f1a88be332d
  0.16%    0.15%  ││││││││  0x00007f1a88be2bcf: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  ││││││││  0x00007f1a88be2bd5: jne    0x00007f1a88be2e41
  0.07%    0.07%  ││││││││  0x00007f1a88be2bdb: lea    (%r12,%rbp,8),%r14  ;*invokevirtual add
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.02%    0.03%  ││││││││  0x00007f1a88be2bdf: mov    0x18(%r14),%ecx    ;*getfield pc
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.06%    0.10%  ││││││││  0x00007f1a88be2be3: vmovd  %ecx,%xmm0
  0.12%    0.16%  ││││││││  0x00007f1a88be2be7: cmp    $0x40,%ecx
                  ││││││││  0x00007f1a88be2bea: jg     0x00007f1a88be3171  ;*if_icmpgt
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.07%    0.06%  ││││││││  0x00007f1a88be2bf0: mov    $0x1,%r10d
  0.03%    0.03%  ││││││││  0x00007f1a88be2bf6: shl    %cl,%r10           ;*lshl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.39%    0.42%  ││││││││  0x00007f1a88be2bf9: mov    %r9,%rcx
  0.02%    0.03%  ││││││││  0x00007f1a88be2bfc: and    %r10,%rcx          ;*land
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.13%    0.05%  ││││││││  0x00007f1a88be2bff: test   %rcx,%rcx
                  ││││││││  0x00007f1a88be2c02: jne    0x00007f1a88be2cec  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.13%    0.11%  ││││││││  0x00007f1a88be2c08: xor    %ebp,%ebp          ;*ireturn
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.08%    0.06%  ││││││││  0x00007f1a88be2c0a: test   %rcx,%rcx
                  ││││││││  0x00007f1a88be2c0d: jne    0x00007f1a88be31ad  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.02%    0.03%  ││││││││  0x00007f1a88be2c13: vmovd  %xmm0,%ecx
  0.10%    0.13%  ││││││││  0x00007f1a88be2c17: cmp    $0x40,%ecx
                  ││││││││  0x00007f1a88be2c1a: jge    0x00007f1a88be31e1  ;*if_icmpge
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.13%    0.16%  ││││││││  0x00007f1a88be2c20: mov    %ebx,0xc(%rdx)     ;*putfield size
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.08%    0.08%  ││││││││  0x00007f1a88be2c23: vmovq  %xmm2,%rcx
  0.05%    0.04%  ││││││││  0x00007f1a88be2c28: mov    0x40(%rcx),%ebp    ;*getfield inst5
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@103 (line 269)
  0.08%    0.14%  ││││││││  0x00007f1a88be2c2b: mov    %rdi,%rcx
  0.14%    0.15%  ││││││││  0x00007f1a88be2c2e: add    $0x1c,%rcx         ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.11%    0.07%  ││││││││  0x00007f1a88be2c32: or     %r10,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.03%    0.03%  ││││││││  0x00007f1a88be2c35: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.08%    0.11%  ││││││││  0x00007f1a88be2c39: mov    %r14,%r10
  0.16%    0.18%  ││││││││  0x00007f1a88be2c3c: shr    $0x3,%r10
  0.09%    0.12%  ││││││││  0x00007f1a88be2c40: mov    %r10d,(%rcx)
  0.02%    0.03%  ││││││││  0x00007f1a88be2c43: mov    %rcx,%r10
  0.10%    0.06%  ││││││││  0x00007f1a88be2c46: shr    $0x9,%r10
  0.13%    0.19%  ││││││││  0x00007f1a88be2c4a: mov    %r12b,(%r8,%r10,1)  ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.15%    0.13%  ││││││││  0x00007f1a88be2c4e: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f1a88be3355
  0.01%    0.04%  ││││││││  0x00007f1a88be2c53: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  ││││││││  0x00007f1a88be2c5a: jne    0x00007f1a88be2e6d
  0.13%    0.12%  ││││││││  0x00007f1a88be2c60: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.11%    0.11%  ││││││││  0x00007f1a88be2c64: mov    0x18(%r10),%ecx    ;*getfield pc
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.06%    0.10%  ││││││││  0x00007f1a88be2c68: cmp    $0x40,%ecx
                  ││││││││  0x00007f1a88be2c6b: jg     0x00007f1a88be321d  ;*if_icmpgt
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.01%    0.04%  ││││││││  0x00007f1a88be2c71: shl    %cl,%rsi           ;*lshl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.31%    0.33%  ││││││││  0x00007f1a88be2c74: mov    %r9,%rbx
  0.03%    0.04%  ││││││││  0x00007f1a88be2c77: and    %rsi,%rbx          ;*land
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.06%    0.10%  ││││││││  0x00007f1a88be2c7a: test   %rbx,%rbx
                  ││││││││  0x00007f1a88be2c7d: jne    0x00007f1a88be2cf6  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.14%    0.16%  ││││││││  0x00007f1a88be2c7f: xor    %ebp,%ebp          ;*ireturn
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.11%    0.07%  ││││││││  0x00007f1a88be2c81: test   %rbx,%rbx
                  ││││││││  0x00007f1a88be2c84: jne    0x00007f1a88be3241  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.03%    0.03%  ││││││││  0x00007f1a88be2c8a: cmp    $0x40,%ecx
                  ││││││││  0x00007f1a88be2c8d: jge    0x00007f1a88be3261  ;*if_icmpge
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.10%    0.08%  ││││││││  0x00007f1a88be2c93: or     %rsi,%r9
  0.12%    0.20%  ││││││││  0x00007f1a88be2c96: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.08%    0.09%  ││││││││  0x00007f1a88be2c9a: add    $0x20,%rdi
  0.05%    0.02%  ││││││││  0x00007f1a88be2c9e: shr    $0x3,%r10
  0.08%    0.03%  ││││││││  0x00007f1a88be2ca2: mov    %r10d,(%rdi)       ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.15%    0.10%  ││││││││  0x00007f1a88be2ca5: mov    %rdi,%r10
  0.09%    0.09%  ││││││││  0x00007f1a88be2ca8: add    $0x5,%eax
  0.01%    0.03%  ││││││││  0x00007f1a88be2cab: mov    %eax,0xc(%rdx)     ;*putfield size
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.04%    0.14%  ││││││││  0x00007f1a88be2cae: shr    $0x9,%r10
  0.13%    0.15%  ││││││││  0x00007f1a88be2cb2: mov    %r12b,(%r8,%r10,1)  ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.17%    0.14%  ││││││││  0x00007f1a88be2cb6: xor    %eax,%eax
  0.06%    0.03%  ││││││││  0x00007f1a88be2cb8: add    $0x70,%rsp
  0.08%    0.14%  ││││││││  0x00007f1a88be2cbc: pop    %rbp
  0.11%    0.23%  ││││││││  0x00007f1a88be2cbd: test   %eax,0x15e7433d(%rip)        # 0x00007f1a9ea57000
                  ││││││││                                                ;   {poll_return}
  0.07%    0.12%  ││││││││  0x00007f1a88be2cc3: retq   
                  ↘│││││││  0x00007f1a88be2cc4: mov    $0x1,%ebp
                   │││╰│││  0x00007f1a88be2cc9: jmpq   0x00007f1a88be29ad
                   ↘││ │││  0x00007f1a88be2cce: mov    $0x1,%ebp
                    ││ ╰││  0x00007f1a88be2cd3: jmpq   0x00007f1a88be2a10
                    ↘│  ││  0x00007f1a88be2cd8: mov    $0x1,%ebp
                     │  ╰│  0x00007f1a88be2cdd: jmpq   0x00007f1a88be2ae7
                     ↘   │  0x00007f1a88be2ce2: mov    $0x1,%ebp
                         ╰  0x00007f1a88be2ce7: jmpq   0x00007f1a88be2b83
                            0x00007f1a88be2cec: mov    $0x1,%ebp
....................................................................................................
 16.78%   18.72%  <total for region 4>

....[Hottest Regions]...............................................................................
 29.29%   27.20%         C2, level 4  com.google.re2j.Machine::match, version 546 (1208 bytes) 
 19.07%   20.77%         C2, level 4  com.google.re2j.Machine::step, version 495 (195 bytes) 
 17.11%   16.04%         C2, level 4  com.google.re2j.Machine::step, version 495 (1013 bytes) 
 16.78%   18.72%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 512 (867 bytes) 
  8.69%    8.78%         C2, level 4  com.google.re2j.Machine::step, version 495 (174 bytes) 
  2.68%    2.71%         C2, level 4  com.google.re2j.Machine::step, version 495 (72 bytes) 
  1.30%    1.55%         C2, level 4  com.google.re2j.Machine::match, version 546 (176 bytes) 
  1.29%    1.28%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.13%                  C2, level 4  com.google.re2j.Pattern::find, version 543 (201 bytes) 
  0.13%    0.09%         C2, level 4  com.google.re2j.Pattern::find, version 543 (28 bytes) 
  0.12%    0.00%   [kernel.kallsyms]  [unknown] (50 bytes) 
  0.12%    0.11%         C2, level 4  com.google.re2j.Pattern::find, version 543 (23 bytes) 
  0.12%    0.05%         C2, level 4  com.google.re2j.Pattern::find, version 543 (8 bytes) 
  0.10%    0.01%   [kernel.kallsyms]  [unknown] (1 bytes) 
  0.09%    0.03%         C2, level 4  com.google.re2j.Pattern::find, version 543 (0 bytes) 
  0.08%    0.04%         C2, level 4  java.util.Collections::shuffle, version 580 (146 bytes) 
  0.07%    0.05%         C2, level 4  com.google.re2j.Machine::match, version 546 (83 bytes) 
  0.06%    0.02%         C2, level 4  com.google.re2j.Pattern::find, version 543 (185 bytes) 
  0.05%                  C2, level 4  com.google.re2j.Pattern::find, version 543 (58 bytes) 
  0.04%    0.01%   [kernel.kallsyms]  [unknown] (37 bytes) 
  2.69%    2.54%  <...other 480 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 47.56%   48.31%         C2, level 4  com.google.re2j.Machine::step, version 495 
 30.91%   28.94%         C2, level 4  com.google.re2j.Machine::match, version 546 
 16.78%   18.72%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 512 
  2.52%    2.39%   [kernel.kallsyms]  [unknown] 
  0.80%    0.31%         C2, level 4  com.google.re2j.Pattern::find, version 543 
  0.15%    0.05%         C2, level 4  java.util.Collections::shuffle, version 580 
  0.11%    0.05%      hsdis-amd64.so  decode_instructions 
  0.08%    0.09%        libc-2.26.so  vfprintf 
  0.07%    0.04%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testCombine_jmhTest::testCombine_thrpt_jmhStub, version 622 
  0.04%    0.14%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.04%    0.01%        libc-2.26.so  _IO_fflush 
  0.04%                  C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 561 
  0.04%    0.04%        libc-2.26.so  _IO_fwrite 
  0.04%    0.00%           libjvm.so  _ZN19GenericTaskQueueSetI17OverflowTaskQueueI8StarTaskL10MemoryType1ELj131072EELS2_1EE15steal_best_of_2EjPiRS1_ 
  0.03%    0.05%           libjvm.so  _ZN13xmlTextStream5writeEPKcm 
  0.03%    0.04%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.03%    0.07%           libjvm.so  _ZN12outputStream15update_positionEPKcm 
  0.03%    0.05%        libc-2.26.so  _IO_default_xsputn 
  0.02%    0.02%           libjvm.so  _ZN12outputStream12do_vsnprintfEPcmPKcP13__va_list_tagbRm 
  0.02%           libpthread-2.26.so  __pthread_disable_asynccancel 
  0.65%    0.49%  <...other 87 warm methods...>
....................................................................................................
100.00%   99.81%  <totals>

....[Distribution by Source]........................................................................
 96.31%   96.37%         C2, level 4
  2.52%    2.39%   [kernel.kallsyms]
  0.58%    0.71%           libjvm.so
  0.33%    0.38%        libc-2.26.so
  0.11%    0.06%      hsdis-amd64.so
  0.09%    0.07%  libpthread-2.26.so
  0.02%    0.01%              [vdso]
  0.02%    0.01%         interpreter
  0.01%                  C1, level 3
  0.00%                   ld-2.26.so
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                        Mode  Cnt     Score    Error  Units
Re2jFindRegex.testCombine       thrpt   20  9328.673 ± 45.179  ops/s
Re2jFindRegex.testCombine:·asm  thrpt            NaN             ---
