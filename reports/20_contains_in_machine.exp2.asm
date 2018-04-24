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
# Warmup Iteration   1: 11312.877 ops/s
# Warmup Iteration   2: 20739.496 ops/s
# Warmup Iteration   3: 20752.081 ops/s
# Warmup Iteration   4: 20567.350 ops/s
# Warmup Iteration   5: 20734.609 ops/s
# Warmup Iteration   6: 19766.977 ops/s
# Warmup Iteration   7: 20713.951 ops/s
# Warmup Iteration   8: 20808.706 ops/s
# Warmup Iteration   9: 20805.514 ops/s
# Warmup Iteration  10: 20840.869 ops/s
# Warmup Iteration  11: 20824.117 ops/s
# Warmup Iteration  12: 20839.268 ops/s
# Warmup Iteration  13: 20841.748 ops/s
# Warmup Iteration  14: 20839.610 ops/s
# Warmup Iteration  15: 20799.599 ops/s
# Warmup Iteration  16: 20825.555 ops/s
# Warmup Iteration  17: 19998.625 ops/s
# Warmup Iteration  18: 19987.801 ops/s
# Warmup Iteration  19: 19990.466 ops/s
# Warmup Iteration  20: 19985.647 ops/s
Iteration   1: 19980.470 ops/s
Iteration   2: 19996.346 ops/s
Iteration   3: 19995.089 ops/s
Iteration   4: 20324.081 ops/s
Iteration   5: 20380.041 ops/s
Iteration   6: 20397.607 ops/s
Iteration   7: 20389.330 ops/s
Iteration   8: 20386.550 ops/s
Iteration   9: 20390.916 ops/s
Iteration  10: 20386.803 ops/s
Iteration  11: 20403.368 ops/s
Iteration  12: 20623.292 ops/s
Iteration  13: 20808.874 ops/s
Iteration  14: 20812.762 ops/s
Iteration  15: 20775.095 ops/s
Iteration  16: 20796.067 ops/s
Iteration  17: 20808.658 ops/s
Iteration  18: 20808.116 ops/s
Iteration  19: 20809.618 ops/s
Iteration  20: 20768.392 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  20502.074 ±(99.9%) 253.815 ops/s [Average]
  (min, avg, max) = (19980.470, 20502.074, 20812.762), stdev = 292.294
  CI (99.9%): [20248.259, 20755.889] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2:·asm":
PrintAssembly processed: 193113 total address lines.
Perf output processed (skipped 23.281 seconds):
 Column 1: cycles (20722 events)
 Column 2: instructions (20728 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 537 (1312 bytes) 

                                                                                                    ; - com.google.re2j.Machine::match@326 (line 222)
           0.00%                                      0x00007fefe923a253: mov    %r10,0x88(%rsp)
                                                      0x00007fefe923a25b: mov    0x78(%rsp),%r11d
                                                      0x00007fefe923a260: and    $0x4,%r11d         ;*iand
                                                                                                    ; - com.google.re2j.Machine::match@160 (line 191)
                                                      0x00007fefe923a264: mov    %r11d,0x34(%rsp)
                                                      0x00007fefe923a269: mov    %rdx,%r10
                                                      0x00007fefe923a26c: shl    $0x3,%r10          ;*getfield q1
                                                                                                    ; - com.google.re2j.Machine::match@66 (line 171)
                                                      0x00007fefe923a270: mov    %r10,0x68(%rsp)
  0.01%    0.00%                                      0x00007fefe923a275: xor    %eax,%eax
                                                      0x00007fefe923a277: xor    %r11d,%r11d
                                                      0x00007fefe923a27a: mov    %r11d,0xc(%rsp)
  0.00%           ╭                                   0x00007fefe923a27f: jmpq   0x00007fefe923a4e5
  0.36%    0.40%  │  ↗↗↗                              0x00007fefe923a284: mov    0x2c(%r12,%rdi,8),%ebp  ;*getfield outInst
                  │  │││                                                                            ; - com.google.re2j.Machine::step@203 (line 298)
                  │  │││                                                                            ; - com.google.re2j.Machine::match@367 (line 225)
  0.25%    0.19%  │  │││                              0x00007fefe923a289: mov    0x8(%r12,%rbp,8),%edi  ; implicit exception: dispatches to 0x00007fefe923b985
  0.28%    0.33%  │  │││                              0x00007fefe923a28e: cmp    $0xf8019909,%edi   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  │││                              0x00007fefe923a294: jne    0x00007fefe923b01d
  0.13%    0.17%  │  │││                              0x00007fefe923a29a: lea    (%r12,%rbp,8),%rdx  ;*invokevirtual add
                  │  │││                                                                            ; - com.google.re2j.Machine::step@218 (line 298)
                  │  │││                                                                            ; - com.google.re2j.Machine::match@367 (line 225)
  0.00%    0.00%  │  │││                              0x00007fefe923a29e: mov    0x18(%rdx),%ecx    ;*getfield pc
                  │  │││                                                                            ; - com.google.re2j.Inst$MatchInst::add@3 (line 144)
                  │  │││                                                                            ; - com.google.re2j.Machine::step@218 (line 298)
                  │  │││                                                                            ; - com.google.re2j.Machine::match@367 (line 225)
  0.01%    0.01%  │  │││                              0x00007fefe923a2a1: cmp    $0x40,%ecx
                  │  │││                              0x00007fefe923a2a4: jge    0x00007fefe923b215  ;*if_icmpge
                  │  │││                                                                            ; - com.google.re2j.Machine::containsOrAdd@3 (line 312)
                  │  │││                                                                            ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │  │││                                                                            ; - com.google.re2j.Machine::step@218 (line 298)
                  │  │││                                                                            ; - com.google.re2j.Machine::match@367 (line 225)
  0.09%    0.14%  │  │││                              0x00007fefe923a2aa: mov    $0x1,%edi
  0.03%    0.06%  │  │││                              0x00007fefe923a2af: shl    %cl,%rdi           ;*lshl
                  │  │││                                                                            ; - com.google.re2j.Machine::containsOrAdd@8 (line 313)
                  │  │││                                                                            ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │  │││                                                                            ; - com.google.re2j.Machine::step@218 (line 298)
                  │  │││                                                                            ; - com.google.re2j.Machine::match@367 (line 225)
  0.28%    0.24%  │  │││                              0x00007fefe923a2b2: mov    %rdi,%rcx
           0.01%  │  │││                              0x00007fefe923a2b5: and    %r11,%rcx          ;*land
                  │  │││                                                                            ; - com.google.re2j.Machine::containsOrAdd@15 (line 314)
                  │  │││                                                                            ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │  │││                                                                            ; - com.google.re2j.Machine::step@218 (line 298)
                  │  │││                                                                            ; - com.google.re2j.Machine::match@367 (line 225)
           0.01%  │  │││                              0x00007fefe923a2b8: test   %rcx,%rcx
                  │  │││                              0x00007fefe923a2bb: jne    0x00007fefe923b161  ;*ifne
                  │  │││                                                                            ; - com.google.re2j.Machine::containsOrAdd@18 (line 314)
                  │  │││                                                                            ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │  │││                                                                            ; - com.google.re2j.Machine::step@218 (line 298)
                  │  │││                                                                            ; - com.google.re2j.Machine::match@367 (line 225)
  0.11%    0.14%  │  │││                              0x00007fefe923a2c1: or     %r11,%rdi
  0.01%    0.02%  │  │││                              0x00007fefe923a2c4: mov    0x70(%rsp),%r11
  0.01%    0.01%  │  │││                              0x00007fefe923a2c9: mov    %rdi,0x10(%r11)    ;*putfield pcsl
                  │  │││                                                                            ; - com.google.re2j.Machine::containsOrAdd@28 (line 315)
                  │  │││                                                                            ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │  │││                                                                            ; - com.google.re2j.Machine::step@218 (line 298)
                  │  │││                                                                            ; - com.google.re2j.Machine::match@367 (line 225)
  0.04%    0.07%  │  │││                              0x00007fefe923a2cd: mov    0x68(%rsp),%r11
  0.05%    0.02%  │  │││                              0x00007fefe923a2d2: mov    0x10(%r11),%edi    ;*getfield denseThreadsInstructions
                  │  │││                                                                            ; - com.google.re2j.Machine$Queue::addThread@1 (line 40)
                  │  │││                                                                            ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                  │  │││                                                                            ; - com.google.re2j.Machine::step@218 (line 298)
                  │  │││                                                                            ; - com.google.re2j.Machine::match@367 (line 225)
                  │  │││                                                                            ; implicit exception: dispatches to 0x00007fefe923b9a1
  0.03%    0.01%  │  │││                              0x00007fefe923a2d6: mov    0xc(%r11),%ebp     ;*getfield size
                  │  │││                                                                            ; - com.google.re2j.Machine$Queue::addThread@6 (line 40)
                  │  │││                                                                            ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                  │  │││                                                                            ; - com.google.re2j.Machine::step@218 (line 298)
                  │  │││                                                                            ; - com.google.re2j.Machine::match@367 (line 225)
  0.01%    0.01%  │  │││                              0x00007fefe923a2da: mov    %ebp,%r11d
  0.03%    0.07%  │  │││                              0x00007fefe923a2dd: inc    %r11d
  0.05%    0.01%  │  │││                              0x00007fefe923a2e0: mov    0x68(%rsp),%rcx
  0.04%    0.03%  │  │││                              0x00007fefe923a2e5: mov    %r11d,0xc(%rcx)    ;*putfield size
                  │  │││                                                                            ; - com.google.re2j.Machine$Queue::addThread@12 (line 40)
                  │  │││                                                                            ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                  │  │││                                                                            ; - com.google.re2j.Machine::step@218 (line 298)
                  │  │││                                                                            ; - com.google.re2j.Machine::match@367 (line 225)
  0.03%    0.02%  │  │││                              0x00007fefe923a2e9: mov    0xc(%r12,%rdi,8),%ecx  ; implicit exception: dispatches to 0x00007fefe923b9b5
  0.11%    0.05%  │  │││                              0x00007fefe923a2ee: cmp    %ecx,%ebp
                  │  │││                              0x00007fefe923a2f0: jae    0x00007fefe923af69
  0.10%    0.04%  │  │││                              0x00007fefe923a2f6: mov    0x8(%r12,%rdi,8),%r11d
  0.04%    0.04%  │  │││                              0x00007fefe923a2fb: cmp    $0xf8019807,%r11d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                  │  │││                              0x00007fefe923a302: jne    0x00007fefe923b0b1  ;*aastore
                  │  │││                                                                            ; - com.google.re2j.Machine$Queue::addThread@16 (line 40)
                  │  │││                                                                            ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                  │  │││                                                                            ; - com.google.re2j.Machine::step@218 (line 298)
                  │  │││                                                                            ; - com.google.re2j.Machine::match@367 (line 225)
  0.01%    0.01%  │  │││                              0x00007fefe923a308: lea    (%r12,%rdi,8),%r11  ;*getfield denseThreadsInstructions
                  │  │││                                                                            ; - com.google.re2j.Machine$Queue::addThread@1 (line 40)
                  │  │││                                                                            ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                  │  │││                                                                            ; - com.google.re2j.Machine::step@218 (line 298)
                  │  │││                                                                            ; - com.google.re2j.Machine::match@367 (line 225)
  0.04%    0.03%  │  │││                              0x00007fefe923a30c: lea    0x10(%r11,%rbp,4),%r11
  0.06%    0.01%  │  │││                              0x00007fefe923a311: mov    %rdx,%rcx
  0.03%    0.03%  │  │││                              0x00007fefe923a314: shr    $0x3,%rcx
  0.02%    0.00%  │  │││                              0x00007fefe923a318: mov    %ecx,(%r11)
  0.14%    0.16%  │  │││                              0x00007fefe923a31b: shr    $0x9,%r11
  0.04%    0.01%  │  │││                              0x00007fefe923a31f: movabs $0x7feff8fa7000,%rcx
  0.02%    0.02%  │  │││                              0x00007fefe923a329: mov    %r12b,(%rcx,%r11,1)  ;*aastore
                  │  │││                                                                            ; - com.google.re2j.Machine$Queue::addThread@16 (line 40)
                  │  │││                                                                            ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                  │  │││                                                                            ; - com.google.re2j.Machine::step@218 (line 298)
                  │  │││                                                                            ; - com.google.re2j.Machine::match@367 (line 225)
  0.16%    0.12%  │╭ │││                              0x00007fefe923a32d: jmpq   0x00007fefe923a3ae
  0.82%    1.05%  ││ │││↗                             0x00007fefe923a332: mov    0x70(%rsp),%r11
  0.56%    0.66%  ││ ││││                             0x00007fefe923a337: mov    0x10(%r11),%r11    ;*iload
                  ││ ││││                                                                           ; - com.google.re2j.Machine::step@47 (line 270)
                  ││ ││││                                                                           ; - com.google.re2j.Machine::match@367 (line 225)
  1.68%    1.87%  ││ ││││               ↗             0x00007fefe923a33b: mov    0x10(%rbx,%r10,4),%edi  ;*aaload
                  ││ ││││               │                                                           ; - com.google.re2j.Machine::step@103 (line 280)
                  ││ ││││               │                                                           ; - com.google.re2j.Machine::match@367 (line 225)
  0.62%    0.76%  ││ ││││               │             0x00007fefe923a340: mov    0xc(%r12,%rdi,8),%edx  ;*getfield op
                  ││ ││││               │                                                           ; - com.google.re2j.Machine::step@108 (line 282)
                  ││ ││││               │                                                           ; - com.google.re2j.Machine::match@367 (line 225)
                  ││ ││││               │                                                           ; implicit exception: dispatches to 0x00007fefe923b901
  1.65%    1.96%  ││ ││││               │             0x00007fefe923a345: cmp    $0x6,%edx
                  ││╭││││               │             0x00007fefe923a348: je     0x00007fefe923a77d  ;*if_icmpne
                  │││││││               │                                                           ; - com.google.re2j.Machine::step@113 (line 282)
                  │││││││               │                                                           ; - com.google.re2j.Machine::match@367 (line 225)
  1.24%    1.52%  │││││││               │             0x00007fefe923a34e: cmp    $0xa,%edx
                  │││╰│││               │             0x00007fefe923a351: je     0x00007fefe923a284  ;*if_icmpne
                  │││ │││               │                                                           ; - com.google.re2j.Inst::matchRune@6 (line 90)
                  │││ │││               │                                                           ; - com.google.re2j.Machine::step@195 (line 297)
                  │││ │││               │                                                           ; - com.google.re2j.Machine::match@367 (line 225)
  1.61%    1.41%  │││ │││               │             0x00007fefe923a357: cmp    $0xb,%edx
                  │││ │││               │             0x00007fefe923a35a: je     0x00007fefe923a88d  ;*if_icmpne
                  │││ │││               │                                                           ; - com.google.re2j.Inst::matchRune@17 (line 94)
                  │││ │││               │                                                           ; - com.google.re2j.Machine::step@195 (line 297)
                  │││ │││               │                                                           ; - com.google.re2j.Machine::match@367 (line 225)
  1.47%    1.61%  │││ │││               │             0x00007fefe923a360: cmp    $0x9,%edx
                  │││ │││               │             0x00007fefe923a363: je     0x00007fefe923a931  ;*if_icmpne
                  │││ │││               │                                                           ; - com.google.re2j.Inst::matchRune@38 (line 98)
                  │││ │││               │                                                           ; - com.google.re2j.Machine::step@195 (line 297)
                  │││ │││               │                                                           ; - com.google.re2j.Machine::match@367 (line 225)
  1.35%    1.54%  │││ │││               │             0x00007fefe923a369: cmp    $0xc,%edx
                  │││ │││               │             0x00007fefe923a36c: jne    0x00007fefe923a7ea  ;*if_icmpne
                  │││ │││               │                                                           ; - com.google.re2j.Inst::matchRune@61 (line 102)
                  │││ │││               │                                                           ; - com.google.re2j.Machine::step@195 (line 297)
                  │││ │││               │                                                           ; - com.google.re2j.Machine::match@367 (line 225)
  1.28%    1.56%  │││ │││               │             0x00007fefe923a372: mov    0x1c(%r12,%rdi,8),%edx  ;*getfield f0
                  │││ │││               │                                                           ; - com.google.re2j.Inst::matchRune@65 (line 103)
                  │││ │││               │                                                           ; - com.google.re2j.Machine::step@195 (line 297)
                  │││ │││               │                                                           ; - com.google.re2j.Machine::match@367 (line 225)
  0.90%    0.88%  │││ │││               │             0x00007fefe923a377: cmp    0x60(%rsp),%edx
                  │││ ╰││               │             0x00007fefe923a37b: je     0x00007fefe923a284  ;*if_icmpeq
                  │││  ││               │                                                           ; - com.google.re2j.Inst::matchRune@69 (line 103)
                  │││  ││               │                                                           ; - com.google.re2j.Machine::step@195 (line 297)
                  │││  ││               │                                                           ; - com.google.re2j.Machine::match@367 (line 225)
  1.62%    1.82%  │││  ││               │             0x00007fefe923a381: mov    0x20(%r12,%rdi,8),%ecx  ;*getfield f1
                  │││  ││               │                                                           ; - com.google.re2j.Inst::matchRune@73 (line 103)
                  │││  ││               │                                                           ; - com.google.re2j.Machine::step@195 (line 297)
                  │││  ││               │                                                           ; - com.google.re2j.Machine::match@367 (line 225)
  0.72%    0.92%  │││  ││               │             0x00007fefe923a386: cmp    0x60(%rsp),%ecx
                  │││  ╰│               │             0x00007fefe923a38a: je     0x00007fefe923a284  ;*if_icmpeq
                  │││   │               │                                                           ; - com.google.re2j.Inst::matchRune@77 (line 103)
                  │││   │               │                                                           ; - com.google.re2j.Machine::step@195 (line 297)
                  │││   │               │                                                           ; - com.google.re2j.Machine::match@367 (line 225)
  1.72%    1.88%  │││   │               │             0x00007fefe923a390: mov    0x24(%r12,%rdi,8),%edx  ;*getfield f2
                  │││   │               │                                                           ; - com.google.re2j.Inst::matchRune@81 (line 103)
                  │││   │               │                                                           ; - com.google.re2j.Machine::step@195 (line 297)
                  │││   │               │                                                           ; - com.google.re2j.Machine::match@367 (line 225)
  0.97%    1.22%  │││   │               │             0x00007fefe923a395: cmp    0x60(%rsp),%edx
                  │││   │               │             0x00007fefe923a399: je     0x00007fefe923a9d5  ;*if_icmpeq
                  │││   │               │                                                           ; - com.google.re2j.Inst::matchRune@85 (line 103)
                  │││   │               │                                                           ; - com.google.re2j.Machine::step@195 (line 297)
                  │││   │               │                                                           ; - com.google.re2j.Machine::match@367 (line 225)
  1.23%    1.44%  │││   │               │             0x00007fefe923a39f: mov    0x28(%r12,%rdi,8),%eax  ;*getfield f3
                  │││   │               │                                                           ; - com.google.re2j.Inst::matchRune@89 (line 103)
                  │││   │               │                                                           ; - com.google.re2j.Machine::step@195 (line 297)
                  │││   │               │                                                           ; - com.google.re2j.Machine::match@367 (line 225)
  0.61%    0.87%  │││   │               │             0x00007fefe923a3a4: cmp    0x60(%rsp),%eax
                  │││   │               │             0x00007fefe923a3a8: je     0x00007fefe923aa7d  ;*aload
                  │││   │               │                                                           ; - com.google.re2j.Machine::step@223 (line 301)
                  │││   │               │                                                           ; - com.google.re2j.Machine::match@367 (line 225)
  1.44%    1.55%  │↘│   │               │             0x00007fefe923a3ae: inc    %r10d              ;*iinc
                  │ │   │               │                                                           ; - com.google.re2j.Machine::step@234 (line 267)
                  │ │   │               │                                                           ; - com.google.re2j.Machine::match@367 (line 225)
  0.78%    0.82%  │ │   │               │             0x00007fefe923a3b1: cmp    %r14d,%r10d
                  │ │   ╰               │             0x00007fefe923a3b4: jl     0x00007fefe923a332  ;*if_icmpge
                  │ │                   │                                                           ; - com.google.re2j.Machine::step@44 (line 267)
                  │ │                   │                                                           ; - com.google.re2j.Machine::match@367 (line 225)
  0.18%    0.21%  │ │                  ↗│             0x00007fefe923a3ba: mov    0x70(%rsp),%r10
  0.15%    0.18%  │ │                  ││             0x00007fefe923a3bf: movzbl 0x18(%r10),%eax
  0.42%    0.67%  │ │                  ││             0x00007fefe923a3c4: mov    0x40(%rsp),%r10d
  0.01%    0.07%  │ │                  ││             0x00007fefe923a3c9: mov    %r12d,0xc(%r12,%r10,8)  ;*getfield matched
                  │ │                  ││                                                           ; - com.google.re2j.Machine::match@386 (line 229)
  0.59%    0.82%  │ │                  ││          ↗  0x00007fefe923a3ce: mov    0x70(%rsp),%r10
  0.10%    0.10%  │ │                  ││          │  0x00007fefe923a3d3: movzbl 0x19(%r10),%ebp    ;*getfield captures
                  │ │                  ││          │                                                ; - com.google.re2j.Machine::match@379 (line 229)
  0.29%    0.39%  │ │                  ││          │  0x00007fefe923a3d8: mov    0x28(%rsp),%r11d
  0.03%    0.06%  │ │                  ││          │  0x00007fefe923a3dd: test   %r11d,%r11d
                  │ │    ╭             ││          │  0x00007fefe923a3e0: je     0x00007fefe923a6dc  ;*ifne
                  │ │    │             ││          │                                                ; - com.google.re2j.Machine::match@372 (line 226)
  0.36%    0.33%  │ │    │             ││          │  0x00007fefe923a3e6: test   %ebp,%ebp
                  │ │    │             ││          │  0x00007fefe923a3e8: jne    0x00007fefe923ac6d  ;*ifne
                  │ │    │             ││          │                                                ; - com.google.re2j.Machine::match@382 (line 229)
  0.12%    0.09%  │ │    │             ││          │  0x00007fefe923a3ee: test   %eax,%eax
                  │ │    │             ││          │  0x00007fefe923a3f0: jne    0x00007fefe923add5  ;*ifeq
                  │ │    │             ││          │                                                ; - com.google.re2j.Machine::match@389 (line 229)
  0.23%    0.28%  │ │    │             ││          │  0x00007fefe923a3f6: mov    0x2c(%rsp),%r10d
  0.17%    0.25%  │ │    │             ││          │  0x00007fefe923a3fb: cmp    $0xffffffff,%r10d
                  │ │    │╭            ││          │  0x00007fefe923a3ff: je     0x00007fefe923a6fc  ;*if_icmpeq
                  │ │    ││            ││          │                                                ; - com.google.re2j.Machine::match@411 (line 237)
  0.37%    0.36%  │ │    ││            ││          │  0x00007fefe923a405: mov    0x80(%rsp),%r10
  0.12%    0.12%  │ │    ││            ││          │  0x00007fefe923a40d: mov    0x10(%r10),%r10d   ;*getfield end
                  │ │    ││            ││          │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                  │ │    ││            ││          │                                                ; - com.google.re2j.Machine::match@419 (line 238)
  0.88%    1.24%  │ │    ││            ││          │  0x00007fefe923a411: mov    0x30(%rsp),%ecx
  0.00%    0.01%  │ │    ││            ││          │  0x00007fefe923a415: add    %r8d,%ecx
  0.23%    0.21%  │ │    ││            ││          │  0x00007fefe923a418: mov    0x80(%rsp),%r11
  0.05%    0.11%  │ │    ││            ││          │  0x00007fefe923a420: add    0xc(%r11),%ecx     ;*iadd
                  │ │    ││            ││          │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                  │ │    ││            ││          │                                                ; - com.google.re2j.Machine::match@419 (line 238)
  0.59%    0.52%  │ │    ││            ││          │  0x00007fefe923a424: cmp    %r10d,%ecx
                  │ │    ││╭           ││          │  0x00007fefe923a427: jge    0x00007fefe923a70b  ;*if_icmpge
                  │ │    │││           ││          │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                  │ │    │││           ││          │                                                ; - com.google.re2j.Machine::match@419 (line 238)
  0.45%    0.60%  │ │    │││           ││          │  0x00007fefe923a42d: mov    0x14(%r11),%ebp    ;*getfield str
                  │ │    │││           ││          │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                  │ │    │││           ││          │                                                ; - com.google.re2j.Machine::match@419 (line 238)
  0.14%    0.21%  │ │    │││           ││          │  0x00007fefe923a431: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007fefe923b931
  0.86%    1.05%  │ │    │││           ││          │  0x00007fefe923a436: cmp    $0xf80002da,%r10d  ;   {metadata(&apos;java/lang/String&apos;)}
                  │ │    │││           ││          │  0x00007fefe923a43d: jne    0x00007fefe923ab61
  0.47%    0.68%  │ │    │││           ││          │  0x00007fefe923a443: lea    (%r12,%rbp,8),%rbx  ;*invokeinterface charAt
                  │ │    │││           ││          │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │ │    │││           ││          │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │ │    │││           ││          │                                                ; - com.google.re2j.Machine::match@419 (line 238)
  0.07%    0.08%  │ │    │││           ││          │  0x00007fefe923a447: test   %ecx,%ecx
                  │ │    │││           ││          │  0x00007fefe923a449: jl     0x00007fefe923aca9  ;*iflt
                  │ │    │││           ││          │                                                ; - java.lang.String::charAt@1 (line 657)
                  │ │    │││           ││          │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │ │    │││           ││          │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │ │    │││           ││          │                                                ; - com.google.re2j.Machine::match@419 (line 238)
  0.06%    0.04%  │ │    │││           ││          │  0x00007fefe923a44f: mov    0xc(%rbx),%edi     ;*getfield value
                  │ │    │││           ││          │                                                ; - java.lang.String::charAt@6 (line 657)
                  │ │    │││           ││          │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │ │    │││           ││          │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │ │    │││           ││          │                                                ; - com.google.re2j.Machine::match@419 (line 238)
  0.30%    0.26%  │ │    │││           ││          │  0x00007fefe923a452: mov    0xc(%r12,%rdi,8),%ebp  ;*arraylength
                  │ │    │││           ││          │                                                ; - java.lang.String::charAt@9 (line 657)
                  │ │    │││           ││          │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │ │    │││           ││          │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │ │    │││           ││          │                                                ; - com.google.re2j.Machine::match@419 (line 238)
                  │ │    │││           ││          │                                                ; implicit exception: dispatches to 0x00007fefe923b945
  3.24%    3.64%  │ │    │││           ││          │  0x00007fefe923a457: cmp    %ebp,%ecx
                  │ │    │││           ││          │  0x00007fefe923a459: jge    0x00007fefe923ae19  ;*if_icmplt
                  │ │    │││           ││          │                                                ; - java.lang.String::charAt@10 (line 657)
                  │ │    │││           ││          │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │ │    │││           ││          │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │ │    │││           ││          │                                                ; - com.google.re2j.Machine::match@419 (line 238)
  0.63%    0.75%  │ │    │││           ││          │  0x00007fefe923a45f: cmp    %ebp,%ecx
                  │ │    │││           ││          │  0x00007fefe923a461: jae    0x00007fefe923ab11
  0.09%    0.08%  │ │    │││           ││          │  0x00007fefe923a467: lea    (%r12,%rdi,8),%r10
                  │ │    │││           ││          │  0x00007fefe923a46b: movzwl 0x10(%r10,%rcx,2),%r10d  ;*caload
                  │ │    │││           ││          │                                                ; - java.lang.String::charAt@27 (line 660)
                  │ │    │││           ││          │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │ │    │││           ││          │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │ │    │││           ││          │                                                ; - com.google.re2j.Machine::match@419 (line 238)
  0.04%    0.03%  │ │    │││           ││          │  0x00007fefe923a471: cmp    $0xd800,%r10d
                  │ │    │││           ││          │  0x00007fefe923a478: jge    0x00007fefe923ae5d  ;*if_icmplt
                  │ │    │││           ││          │                                                ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                  │ │    │││           ││          │                                                ; - java.lang.Character::codePointAt@9 (line 4867)
                  │ │    │││           ││          │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │ │    │││           ││          │                                                ; - com.google.re2j.Machine::match@419 (line 238)
  0.64%    0.68%  │ │    │││           ││          │  0x00007fefe923a47e: shl    $0x3,%r10d         ;*ishl
                  │ │    │││           ││          │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                  │ │    │││           ││          │                                                ; - com.google.re2j.Machine::match@419 (line 238)
  0.06%    0.01%  │ │    │││           ││          │  0x00007fefe923a482: mov    %r10d,%ebx
                  │ │    │││           ││          │  0x00007fefe923a485: and    $0x7,%ebx
  0.61%    0.70%  │ │    │││           ││          │  0x00007fefe923a488: or     $0x1,%r10d
  0.13%    0.09%  │ │    │││           ││          │  0x00007fefe923a48c: or     $0x1,%ebx          ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                  │ │    │││           ││          │                                                ; - com.google.re2j.Machine::match@419 (line 238)
  0.49%    0.57%  │ │    │││           ││          │  0x00007fefe923a48f: sar    $0x3,%r10d         ; OopMap{[16]=Oop [56]=NarrowOop [104]=Oop [112]=Oop [128]=Oop [136]=Oop off=1171}
                  │ │    │││           ││          │                                                ;*goto
                  │ │    │││           ││          │                                                ; - com.google.re2j.Machine::match@449 (line 245)
  0.00%    0.00%  │ │    │││           ││  ↗↗      │  0x00007fefe923a493: test   %eax,0x17364b67(%rip)        # 0x00007ff00059f000
                  │ │    │││           ││  ││      │                                                ;*goto
                  │ │    │││           ││  ││      │                                                ; - com.google.re2j.Machine::match@449 (line 245)
                  │ │    │││           ││  ││      │                                                ;   {poll}
  0.00%    0.01%  │ │    │││           ││  ││      │  0x00007fefe923a499: mov    0x70(%rsp),%r11
  0.07%    0.08%  │ │    │││           ││  ││      │  0x00007fefe923a49e: mov    0x1c(%r11),%r14d   ;*getfield re2
                  │ │    │││           ││  ││      │                                                ; - com.google.re2j.Machine::match@182 (line 199)
  0.61%    0.70%  │ │    │││           ││  ││      │  0x00007fefe923a4a2: mov    0x30(%r11),%r11d   ;*getfield matchcap
                  │ │    │││           ││  ││      │                                                ; - com.google.re2j.Machine::match@315 (line 222)
  0.00%    0.01%  │ │    │││           ││  ││      │  0x00007fefe923a4a6: mov    0x68(%rsp),%rcx
  0.01%           │ │    │││           ││  ││      │  0x00007fefe923a4ab: mov    %rcx,%rdi
  0.07%    0.09%  │ │    │││           ││  ││      │  0x00007fefe923a4ae: shr    $0x3,%rdi
  0.55%    0.56%  │ │    │││           ││  ││      │  0x00007fefe923a4b2: mov    %edi,0x40(%rsp)
  0.01%    0.01%  │ │    │││           ││  ││      │  0x00007fefe923a4b6: mov    0x30(%rsp),%edi
           0.00%  │ │    │││           ││  ││      │  0x00007fefe923a4ba: mov    %edi,0x28(%rsp)
  0.07%    0.07%  │ │    │││           ││  ││      │  0x00007fefe923a4be: mov    %r8d,0xc(%rsp)
  0.68%    0.50%  │ │    │││           ││  ││      │  0x00007fefe923a4c3: mov    %ebx,0x30(%rsp)
  0.02%    0.03%  │ │    │││           ││  ││      │  0x00007fefe923a4c7: mov    0x2c(%rsp),%r8d
  0.00%    0.01%  │ │    │││           ││  ││      │  0x00007fefe923a4cc: mov    %r8d,0x60(%rsp)
  0.06%    0.05%  │ │    │││           ││  ││      │  0x00007fefe923a4d1: mov    %r10d,0x2c(%rsp)
  0.64%    0.42%  │ │    │││           ││  ││      │  0x00007fefe923a4d6: mov    0x10(%rsp),%r10
  0.02%    0.04%  │ │    │││           ││  ││      │  0x00007fefe923a4db: mov    %r10,0x68(%rsp)
  0.01%    0.00%  │ │    │││           ││  ││      │  0x00007fefe923a4e0: vmovd  %r11d,%xmm2        ;*aload
                  │ │    │││           ││  ││      │                                                ; - com.google.re2j.Machine::match@149 (line 190)
  0.08%    0.08%  ↘ │    │││           ││  ││      │  0x00007fefe923a4e5: mov    0x40(%rsp),%r10d
  0.48%    0.34%    │    │││           ││  ││      │  0x00007fefe923a4ea: mov    0xc(%r12,%r10,8),%r10d  ; implicit exception: dispatches to 0x00007fefe923b911
  0.07%    0.09%    │    │││           ││  ││      │  0x00007fefe923a4ef: test   %r10d,%r10d
                    │    │││╭          ││  ││      │  0x00007fefe923a4f2: jne    0x00007fefe923a521  ;*ifne
                    │    ││││          ││  ││      │                                                ; - com.google.re2j.Machine::match@154 (line 190)
  0.03%    0.02%    │    ││││          ││  ││      │  0x00007fefe923a4f4: mov    0x34(%rsp),%r10d
  0.07%    0.04%    │    ││││          ││  ││      │  0x00007fefe923a4f9: test   %r10d,%r10d
                    │    ││││          ││  ││      │  0x00007fefe923a4fc: jne    0x00007fefe923aecd  ;*ifeq
                    │    ││││          ││  ││      │                                                ; - com.google.re2j.Machine::match@161 (line 191)
  0.42%    0.25%    │    ││││          ││  ││      │  0x00007fefe923a502: test   %eax,%eax
                    │    ││││          ││  ││      │  0x00007fefe923a504: jne    0x00007fefe923af19  ;*ifeq
                    │    ││││          ││  ││      │                                                ; - com.google.re2j.Machine::match@175 (line 195)
                    │    ││││          ││  ││      │  0x00007fefe923a50a: mov    0x24(%r12,%r14,8),%r10d  ;*getfield prefix
                    │    ││││          ││  ││      │                                                ; - com.google.re2j.Machine::match@185 (line 199)
                    │    ││││          ││  ││      │                                                ; implicit exception: dispatches to 0x00007fefe923b955
  0.05%    0.01%    │    ││││          ││  ││      │  0x00007fefe923a50f: mov    0xc(%r12,%r10,8),%r11d  ;*getfield value
                    │    ││││          ││  ││      │                                                ; - java.lang.String::isEmpty@1 (line 635)
                    │    ││││          ││  ││      │                                                ; - com.google.re2j.Machine::match@188 (line 199)
                    │    ││││          ││  ││      │                                                ; implicit exception: dispatches to 0x00007fefe923b965
  0.04%    0.03%    │    ││││          ││  ││      │  0x00007fefe923a514: mov    0xc(%r12,%r11,8),%ebp  ;*arraylength
                    │    ││││          ││  ││      │                                                ; - java.lang.String::isEmpty@4 (line 635)
                    │    ││││          ││  ││      │                                                ; - com.google.re2j.Machine::match@188 (line 199)
                    │    ││││          ││  ││      │                                                ; implicit exception: dispatches to 0x00007fefe923b975
  0.51%    0.27%    │    ││││          ││  ││      │  0x00007fefe923a519: test   %ebp,%ebp
                    │    ││││          ││  ││      │  0x00007fefe923a51b: jne    0x00007fefe923aead  ;*iload_3
                    │    ││││          ││  ││      │                                                ; - com.google.re2j.Machine::match@280 (line 216)
  0.04%    0.03%    │    │││↘          ││  ││      │  0x00007fefe923a521: test   %eax,%eax
                    │    │││           ││  ││      │  0x00007fefe923a523: jne    0x00007fefe923ac25  ;*ifne
                    │    │││           ││  ││      │                                                ; - com.google.re2j.Machine::match@292 (line 216)
  0.05%    0.05%    │    │││           ││  ││      │  0x00007fefe923a529: mov    0x70(%rsp),%r10
  0.19%    0.14%    │    │││           ││  ││      │  0x00007fefe923a52e: movzbl 0x19(%r10),%r11d   ;*getfield captures
                    │    │││           ││  ││      │                                                ; - com.google.re2j.Machine::match@296 (line 219)
  0.49%    0.33%    │    │││           ││  ││      │  0x00007fefe923a533: test   %r11d,%r11d
                    │    │││           ││  ││      │  0x00007fefe923a536: jne    0x00007fefe923acf5  ;*ifeq
                    │    │││           ││  ││      │                                                ; - com.google.re2j.Machine::match@299 (line 219)
  0.04%    0.02%    │    │││           ││  ││      │  0x00007fefe923a53c: vmovd  %xmm2,%r8d
  0.04%    0.02%    │    │││           ││  ││      │  0x00007fefe923a541: shl    $0x3,%r8           ;*getfield matchcap
                    │    │││           ││  ││      │                                                ; - com.google.re2j.Machine::match@315 (line 222)
  0.16%    0.10%    │    │││           ││  ││      │  0x00007fefe923a545: mov    0x40(%rsp),%ecx
  0.50%    0.24%    │    │││           ││  ││      │  0x00007fefe923a549: lea    (%r12,%rcx,8),%r10  ;*aload
                    │    │││           ││  ││      │                                                ; - com.google.re2j.Machine::match@149 (line 190)
  0.05%    0.02%    │    │││           ││  ││      │  0x00007fefe923a54d: mov    %r10,0x10(%rsp)
  0.03%    0.03%    │    │││           ││  ││      │  0x00007fefe923a552: mov    0x88(%rsp),%rsi
  0.12%    0.13%    │    │││           ││  ││      │  0x00007fefe923a55a: mov    %r10,%rdx
  0.45%    0.09%    │    │││           ││  ││      │  0x00007fefe923a55d: mov    0xc(%rsp),%ecx
  0.02%    0.01%    │    │││           ││  ││      │  0x00007fefe923a561: xor    %edi,%edi
  0.05%    0.02%    │    │││           ││  ││      │  0x00007fefe923a563: mov    0x70(%rsp),%r10
  0.23%    0.10%    │    │││           ││  ││      │  0x00007fefe923a568: mov    %r10,(%rsp)
  0.49%    0.06%    │    │││           ││  ││      │  0x00007fefe923a56c: mov    %r11d,0x8(%rsp)
  0.02%    0.01%    │    │││           ││  ││      │  0x00007fefe923a571: xchg   %ax,%ax
  0.09%    0.01%    │    │││           ││  ││      │  0x00007fefe923a573: callq  0x00007fefe9046020  ; OopMap{[16]=Oop [56]=NarrowOop [64]=NarrowOop [104]=Oop [112]=Oop [128]=Oop [136]=Oop off=1400}
                    │    │││           ││  ││      │                                                ;*invokevirtual add
                    │    │││           ││  ││      │                                                ; - com.google.re2j.Machine::match@326 (line 222)
                    │    │││           ││  ││      │                                                ;   {optimized virtual_call}
  0.54%    0.54%    │    │││           ││  ││      │  0x00007fefe923a578: mov    0x60(%rsp),%r11d
  0.25%    0.28%    │    │││           ││  ││      │  0x00007fefe923a57d: test   %r11d,%r11d
  0.10%    0.13%    │    │││ ╭         ││  ││      │  0x00007fefe923a580: jl     0x00007fefe923a6c8  ;*ifge
                    │    │││ │         ││  ││      │                                                ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                    │    │││ │         ││  ││      │                                                ; - com.google.re2j.Machine::match@334 (line 224)
  0.38%    0.37%    │    │││ │         ││  ││      │  0x00007fefe923a586: xor    %r9d,%r9d          ;*iload_0
                    │    │││ │         ││  ││      │                                                ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                    │    │││ │         ││  ││      │                                                ; - com.google.re2j.Machine::match@334 (line 224)
  0.06%    0.06%    │    │││ │         ││↗ ││      │  0x00007fefe923a589: cmp    $0xa,%r11d
                    │    │││ │╭        │││ ││      │  0x00007fefe923a58d: je     0x00007fefe923a718  ;*iload_1
                    │    │││ ││        │││ ││      │                                                ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                    │    │││ ││        │││ ││      │                                                ; - com.google.re2j.Machine::match@334 (line 224)
  0.18%    0.23%    │    │││ ││        │││ ││↗     │  0x00007fefe923a593: mov    0x2c(%rsp),%r11d
  0.17%    0.17%    │    │││ ││        │││ │││     │  0x00007fefe923a598: test   %r11d,%r11d
                    │    │││ ││╭       │││ │││     │  0x00007fefe923a59b: jl     0x00007fefe923a6d3  ;*iload_1
                    │    │││ │││       │││ │││     │                                                ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                    │    │││ │││       │││ │││     │                                                ; - com.google.re2j.Machine::match@334 (line 224)
  0.37%    0.46%    │    │││ │││       │││↗│││     │  0x00007fefe923a5a1: cmp    $0xa,%r11d
                    │    │││ │││╭      │││││││     │  0x00007fefe923a5a5: je     0x00007fefe923a721  ;*iload_0
                    │    │││ ││││      │││││││     │                                                ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                    │    │││ ││││      │││││││     │                                                ; - com.google.re2j.Machine::match@334 (line 224)
  0.04%    0.02%    │    │││ ││││      │││││││↗    │  0x00007fefe923a5ab: mov    0x60(%rsp),%r10d
  0.21%    0.20%    │    │││ ││││      ││││││││    │  0x00007fefe923a5b0: add    $0xffffffbf,%r10d
  0.13%    0.10%    │    │││ ││││      ││││││││    │  0x00007fefe923a5b4: cmp    $0x1a,%r10d
                    │    │││ ││││╭     ││││││││    │  0x00007fefe923a5b8: jb     0x00007fefe923a5cd  ;*if_icmple
                    │    │││ │││││     ││││││││    │                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                    │    │││ │││││     ││││││││    │                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    │    │││ │││││     ││││││││    │                                                ; - com.google.re2j.Machine::match@334 (line 224)
  0.38%    0.31%    │    │││ │││││     ││││││││    │  0x00007fefe923a5ba: mov    0x60(%rsp),%r11d
  0.02%    0.04%    │    │││ │││││     ││││││││    │  0x00007fefe923a5bf: add    $0xffffff9f,%r11d
  0.21%    0.25%    │    │││ │││││     ││││││││    │  0x00007fefe923a5c3: cmp    $0x1a,%r11d
                    │    │││ │││││╭    ││││││││    │  0x00007fefe923a5c7: jae    0x00007fefe923a72a  ;*iconst_1
                    │    │││ ││││││    ││││││││    │                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                    │    │││ ││││││    ││││││││    │                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    │    │││ ││││││    ││││││││    │                                                ; - com.google.re2j.Machine::match@334 (line 224)
  0.08%    0.14%    │    │││ ││││↘│    ││││││││↗   │  0x00007fefe923a5cd: mov    $0x1,%ebp          ;*ireturn
                    │    │││ ││││ │    │││││││││   │                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                    │    │││ ││││ │    │││││││││   │                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    │    │││ ││││ │    │││││││││   │                                                ; - com.google.re2j.Machine::match@334 (line 224)
  0.25%    0.44%    │    │││ ││││ │    │││││││││↗  │  0x00007fefe923a5d2: mov    0x2c(%rsp),%r10d
  0.06%    0.06%    │    │││ ││││ │    ││││││││││  │  0x00007fefe923a5d7: add    $0xffffffbf,%r10d
  0.33%    0.29%    │    │││ ││││ │    ││││││││││  │  0x00007fefe923a5db: cmp    $0x1a,%r10d
                    │    │││ ││││ │╭   ││││││││││  │  0x00007fefe923a5df: jb     0x00007fefe923a5f4  ;*if_icmple
                    │    │││ ││││ ││   ││││││││││  │                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                    │    │││ ││││ ││   ││││││││││  │                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    │    │││ ││││ ││   ││││││││││  │                                                ; - com.google.re2j.Machine::match@334 (line 224)
  0.12%    0.13%    │    │││ ││││ ││   ││││││││││  │  0x00007fefe923a5e1: mov    0x2c(%rsp),%r11d
  0.33%    0.32%    │    │││ ││││ ││   ││││││││││  │  0x00007fefe923a5e6: add    $0xffffff9f,%r11d
  0.04%    0.04%    │    │││ ││││ ││   ││││││││││  │  0x00007fefe923a5ea: cmp    $0x1a,%r11d
                    │    │││ ││││ ││╭  ││││││││││  │  0x00007fefe923a5ee: jae    0x00007fefe923a753  ;*iconst_1
                    │    │││ ││││ │││  ││││││││││  │                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                    │    │││ ││││ │││  ││││││││││  │                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    │    │││ ││││ │││  ││││││││││  │                                                ; - com.google.re2j.Machine::match@334 (line 224)
  0.20%    0.19%    │    │││ ││││ │↘│  ││││││││││↗ │  0x00007fefe923a5f4: mov    $0x1,%r10d         ;*ireturn
                    │    │││ ││││ │ │  │││││││││││ │                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                    │    │││ ││││ │ │  │││││││││││ │                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    │    │││ ││││ │ │  │││││││││││ │                                                ; - com.google.re2j.Machine::match@334 (line 224)
  0.18%    0.16%    │    │││ ││││ │ │  │││││││││││↗│  0x00007fefe923a5fa: cmp    %r10d,%ebp
                    │    │││ ││││ │ │╭ │││││││││││││  0x00007fefe923a5fd: je     0x00007fefe923a605  ;*if_icmpeq
                    │    │││ ││││ │ ││ │││││││││││││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                    │    │││ ││││ │ ││ │││││││││││││                                                ; - com.google.re2j.Machine::match@334 (line 224)
  0.02%    0.08%    │    │││ ││││ │ ││ │││││││││││││  0x00007fefe923a5ff: or     $0x10,%r9d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                    │    │││ ││││ │ ││ │││││││││││││                                                ; - com.google.re2j.Machine::match@334 (line 224)
  0.02%    0.03%    │    │││ ││││ │ ││╭│││││││││││││  0x00007fefe923a603: jmp    0x00007fefe923a609
  0.30%    0.32%    │    │││ ││││ │ │↘││││││││││││││  0x00007fefe923a605: or     $0x20,%r9d         ;*iload_2
                    │    │││ ││││ │ │ ││││││││││││││                                                ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                    │    │││ ││││ │ │ ││││││││││││││                                                ; - com.google.re2j.Machine::match@334 (line 224)
  0.14%    0.13%    │    │││ ││││ │ │ ↘│││││││││││││  0x00007fefe923a609: mov    0x70(%rsp),%r10
  0.19%    0.15%    │    │││ ││││ │ │  │││││││││││││  0x00007fefe923a60e: mov    0x1c(%r10),%r10d   ;*getfield re2
                    │    │││ ││││ │ │  │││││││││││││                                                ; - com.google.re2j.Machine::step@1 (line 260)
                    │    │││ ││││ │ │  │││││││││││││                                                ; - com.google.re2j.Machine::match@367 (line 225)
  0.28%    0.26%    │    │││ ││││ │ │  │││││││││││││  0x00007fefe923a612: movzbl 0x18(%r12,%r10,8),%r13d  ;*getfield longest
                    │    │││ ││││ │ │  │││││││││││││                                                ; - com.google.re2j.Machine::step@4 (line 260)
                    │    │││ ││││ │ │  │││││││││││││                                                ; - com.google.re2j.Machine::match@367 (line 225)
                    │    │││ ││││ │ │  │││││││││││││                                                ; implicit exception: dispatches to 0x00007fefe923b921
  0.46%    0.36%    │    │││ ││││ │ │  │││││││││││││  0x00007fefe923a618: mov    0x70(%rsp),%r10
  0.17%    0.14%    │    │││ ││││ │ │  │││││││││││││  0x00007fefe923a61d: mov    %r12,0x10(%r10)    ;*putfield pcsl
                    │    │││ ││││ │ │  │││││││││││││                                                ; - com.google.re2j.Machine::clearContains@2 (line 328)
                    │    │││ ││││ │ │  │││││││││││││                                                ; - com.google.re2j.Machine::step@34 (line 265)
                    │    │││ ││││ │ │  │││││││││││││                                                ; - com.google.re2j.Machine::match@367 (line 225)
  0.16%    0.13%    │    │││ ││││ │ │  │││││││││││││  0x00007fefe923a621: mov    0xc(%rsp),%r8d
  0.14%    0.17%    │    │││ ││││ │ │  │││││││││││││  0x00007fefe923a626: add    0x28(%rsp),%r8d    ;*iadd
                    │    │││ ││││ │ │  │││││││││││││                                                ; - com.google.re2j.Machine::match@348 (line 225)
  0.40%    0.40%    │    │││ ││││ │ │  │││││││││││││  0x00007fefe923a62b: mov    0x40(%rsp),%r11d
  0.15%    0.15%    │    │││ ││││ │ │  │││││││││││││  0x00007fefe923a630: mov    0x10(%r12,%r11,8),%r10d  ;*getfield denseThreadsInstructions
                    │    │││ ││││ │ │  │││││││││││││                                                ; - com.google.re2j.Machine::step@22 (line 263)
                    │    │││ ││││ │ │  │││││││││││││                                                ; - com.google.re2j.Machine::match@367 (line 225)
  0.15%    0.17%    │    │││ ││││ │ │  │││││││││││││  0x00007fefe923a635: vmovd  %r10d,%xmm0
  0.11%    0.18%    │    │││ ││││ │ │  │││││││││││││  0x00007fefe923a63a: mov    0xc(%r12,%r11,8),%r14d  ;*getfield size
                    │    │││ ││││ │ │  │││││││││││││                                                ; - com.google.re2j.Machine::step@10 (line 261)
                    │    │││ ││││ │ │  │││││││││││││                                                ; - com.google.re2j.Machine::match@367 (line 225)
  0.33%    0.30%    │    │││ ││││ │ │  │││││││││││││  0x00007fefe923a63f: mov    0x70(%rsp),%r10
  0.14%    0.12%    │    │││ ││││ │ │  │││││││││││││  0x00007fefe923a644: mov    0x34(%r10),%ecx    ;*getfield pcs
                    │    │││ ││││ │ │  │││││││││││││                                                ; - com.google.re2j.Machine::clearContains@6 (line 329)
                    │    │││ ││││ │ │  │││││││││││││                                                ; - com.google.re2j.Machine::step@34 (line 265)
                    │    │││ ││││ │ │  │││││││││││││                                                ; - com.google.re2j.Machine::match@367 (line 225)
  0.12%    0.14%    │    │││ ││││ │ │  │││││││││││││  0x00007fefe923a648: movzbl 0x19(%r10),%ebx    ;*getfield captures
                    │    │││ ││││ │ │  │││││││││││││                                                ; - com.google.re2j.Machine::step@16 (line 262)
                    │    │││ ││││ │ │  │││││││││││││                                                ; - com.google.re2j.Machine::match@367 (line 225)
  0.14%    0.07%    │    │││ ││││ │ │  │││││││││││││  0x00007fefe923a64d: mov    0x14(%r12,%r11,8),%r11d  ;*getfield denseThreadsCapture
                    │    │││ ││││ │ │  │││││││││││││                                                ; - com.google.re2j.Machine::step@28 (line 264)
                    │    │││ ││││ │ │  │││││││││││││                                                ; - com.google.re2j.Machine::match@367 (line 225)
  0.31%    0.37%    │    │││ ││││ │ │  │││││││││││││  0x00007fefe923a652: vmovd  %r11d,%xmm1
  0.13%    0.06%    │    │││ ││││ │ │  │││││││││││││  0x00007fefe923a657: mov    0x80(%rsp),%r10
  0.10%    0.11%    │    │││ ││││ │ │  │││││││││││││  0x00007fefe923a65f: mov    0x10(%r10),%r10d
  0.21%    0.14%    │    │││ ││││ │ │  │││││││││││││  0x00007fefe923a663: mov    0xc(%rsp),%r11d
  0.31%    0.40%    │    │││ ││││ │ │  │││││││││││││  0x00007fefe923a668: mov    $0x1,%edx
  0.09%    0.12%    │    │││ ││││ │ │  │││││││││││││  0x00007fefe923a66d: xor    %edi,%edi
  0.13%    0.10%    │    │││ ││││ │ │  │││││││││││││  0x00007fefe923a66f: cmp    %r10d,%r11d
  0.16%    0.07%    │    │││ ││││ │ │  │││││││││││││  0x00007fefe923a672: cmovne %edi,%edx          ;*invokespecial step
                    │    │││ ││││ │ │  │││││││││││││                                                ; - com.google.re2j.Machine::match@367 (line 225)
  0.49%    0.37%    │    │││ ││││ │ │  │││││││││││││  0x00007fefe923a675: vmovd  %edx,%xmm3
  0.18%    0.14%    │    │││ ││││ │ │  │││││││││││││  0x00007fefe923a679: test   %ecx,%ecx
                    │    │││ ││││ │ │  │││││││││││││  0x00007fefe923a67b: jne    0x00007fefe923ad39  ;*ifnull
                    │    │││ ││││ │ │  │││││││││││││                                                ; - com.google.re2j.Machine::clearContains@9 (line 329)
                    │    │││ ││││ │ │  │││││││││││││                                                ; - com.google.re2j.Machine::step@34 (line 265)
                    │    │││ ││││ │ │  │││││││││││││                                                ; - com.google.re2j.Machine::match@367 (line 225)
  0.10%    0.06%    │    │││ ││││ │ │  │││││││││││││  0x00007fefe923a681: test   %r14d,%r14d
                    │    │││ ││││ │ │  ╰││││││││││││  0x00007fefe923a684: jle    0x00007fefe923a3ba  ;*if_icmpge
                    │    │││ ││││ │ │   ││││││││││││                                                ; - com.google.re2j.Machine::step@44 (line 267)
                    │    │││ ││││ │ │   ││││││││││││                                                ; - com.google.re2j.Machine::match@367 (line 225)
  0.26%    0.35%    │    │││ ││││ │ │   ││││││││││││  0x00007fefe923a68a: test   %ebx,%ebx
                    │    │││ ││││ │ │   ││││││││││││  0x00007fefe923a68c: jne    0x00007fefe923aba1  ;*iload
                    │    │││ ││││ │ │   ││││││││││││                                                ; - com.google.re2j.Machine::step@47 (line 270)
                    │    │││ ││││ │ │   ││││││││││││                                                ; - com.google.re2j.Machine::match@367 (line 225)
  0.16%    0.10%    │    │││ ││││ │ │   ││││││││││││  0x00007fefe923a692: vmovd  %xmm0,%r10d
  0.22%    0.15%    │    │││ ││││ │ │   ││││││││││││  0x00007fefe923a697: mov    0xc(%r12,%r10,8),%r10d  ;*aaload
                    │    │││ ││││ │ │   ││││││││││││                                                ; - com.google.re2j.Machine::step@103 (line 280)
                    │    │││ ││││ │ │   ││││││││││││                                                ; - com.google.re2j.Machine::match@367 (line 225)
                    │    │││ ││││ │ │   ││││││││││││                                                ; implicit exception: dispatches to 0x00007fefe923aba1
  0.10%    0.08%    │    │││ ││││ │ │   ││││││││││││  0x00007fefe923a69c: test   %r10d,%r10d
                    │    │││ ││││ │ │   ││││││││││││  0x00007fefe923a69f: jbe    0x00007fefe923aba1
  0.29%    0.21%    │    │││ ││││ │ │   ││││││││││││  0x00007fefe923a6a5: mov    %r14d,%r11d
  0.10%    0.09%    │    │││ ││││ │ │   ││││││││││││  0x00007fefe923a6a8: dec    %r11d
  0.17%    0.12%    │    │││ ││││ │ │   ││││││││││││  0x00007fefe923a6ab: cmp    %r10d,%r11d
                    │    │││ ││││ │ │   ││││││││││││  0x00007fefe923a6ae: jae    0x00007fefe923aba1  ;*iload
                    │    │││ ││││ │ │   ││││││││││││                                                ; - com.google.re2j.Machine::step@47 (line 270)
                    │    │││ ││││ │ │   ││││││││││││                                                ; - com.google.re2j.Machine::match@367 (line 225)
  0.11%    0.10%    │    │││ ││││ │ │   ││││││││││││  0x00007fefe923a6b4: vmovd  %xmm0,%r11d
  0.28%    0.28%    │    │││ ││││ │ │   ││││││││││││  0x00007fefe923a6b9: lea    (%r12,%r11,8),%rbx
  0.11%    0.10%    │    │││ ││││ │ │   ││││││││││││  0x00007fefe923a6bd: xor    %r11d,%r11d
  0.22%    0.09%    │    │││ ││││ │ │   ││││││││││││  0x00007fefe923a6c0: xor    %r10d,%r10d
  0.10%    0.13%    │    │││ ││││ │ │   ╰│││││││││││  0x00007fefe923a6c3: jmpq   0x00007fefe923a33b
                    │    │││ ↘│││ │ │    │││││││││││  0x00007fefe923a6c8: mov    $0x5,%r9d
                    │    │││  │││ │ │    ╰││││││││││  0x00007fefe923a6ce: jmpq   0x00007fefe923a589
           0.00%    │    │││  │↘│ │ │     ││││││││││  0x00007fefe923a6d3: or     $0xa,%r9d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@27 (line 180)
                    │    │││  │ │ │ │     ││││││││││                                                ; - com.google.re2j.Machine::match@334 (line 224)
                    │    │││  │ │ │ │     ╰│││││││││  0x00007fefe923a6d7: jmpq   0x00007fefe923a5a1
  0.00%    0.01%    │    ↘││  │ │ │ │      │││││││││  0x00007fefe923a6dc: test   %ebp,%ebp
                    │     ││  │ │ │ │      │││││││││  0x00007fefe923a6de: jne    0x00007fefe923b715  ;*ifeq
                    │     ││  │ │ │ │      │││││││││                                                ; - com.google.re2j.Machine::freeQueue@4 (line 125)
                    │     ││  │ │ │ │      │││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 121)
                    │     ││  │ │ │ │      │││││││││                                                ; - com.google.re2j.Machine::match@455 (line 246)
           0.00%    │     ││  │ │ │ │      │││││││││  0x00007fefe923a6e4: mov    0x68(%rsp),%r10
  0.00%    0.00%    │     ││  │ │ │ │      │││││││││  0x00007fefe923a6e9: mov    %r12d,0xc(%r10)    ;*if_icmpne
                    │     ││  │ │ │ │      │││││││││                                                ; - com.google.re2j.Machine::match@12 (line 158)
                    │     ││  │ │ │ │      │││││││││                                                ; implicit exception: dispatches to 0x00007fefe923ba31
  0.01%    0.00%    │     ││  │ │ │ │      │││││││││  0x00007fefe923a6ed: add    $0xc0,%rsp
                    │     ││  │ │ │ │      │││││││││  0x00007fefe923a6f4: pop    %rbp
  0.01%             │     ││  │ │ │ │      │││││││││  0x00007fefe923a6f5: test   %eax,0x17364905(%rip)        # 0x00007ff00059f000
                    │     ││  │ │ │ │      │││││││││                                                ;   {poll_return}
           0.00%    │     ││  │ │ │ │      │││││││││  0x00007fefe923a6fb: retq   
  0.01%    0.00%    │     ↘│  │ │ │ │      │││││││││  0x00007fefe923a6fc: mov    0x30(%rsp),%ebx
           0.01%    │      │  │ │ │ │      │││││││││  0x00007fefe923a700: mov    $0xffffffff,%r10d
           0.01%    │      │  │ │ │ │      ╰││││││││  0x00007fefe923a706: jmpq   0x00007fefe923a493
  0.02%    0.02%    │      ↘  │ │ │ │       ││││││││  0x00007fefe923a70b: mov    $0xffffffff,%r10d
                    │         │ │ │ │       ││││││││  0x00007fefe923a711: xor    %ebx,%ebx
                    │         │ │ │ │       ╰│││││││  0x00007fefe923a713: jmpq   0x00007fefe923a493
           0.00%    │         ↘ │ │ │        │││││││  0x00007fefe923a718: or     $0x1,%r9d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@18 (line 177)
                    │           │ │ │        │││││││                                                ; - com.google.re2j.Machine::match@334 (line 224)
           0.01%    │           │ │ │        ╰││││││  0x00007fefe923a71c: jmpq   0x00007fefe923a593
                    │           ↘ │ │         ││││││  0x00007fefe923a721: or     $0x2,%r9d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@37 (line 183)
                    │             │ │         ││││││                                                ; - com.google.re2j.Machine::match@334 (line 224)
  0.01%             │             │ │         ╰│││││  0x00007fefe923a725: jmpq   0x00007fefe923a5ab
  0.01%    0.03%    │             ↘ │          │││││  0x00007fefe923a72a: mov    0x60(%rsp),%r10d
  0.12%    0.08%    │               │          │││││  0x00007fefe923a72f: add    $0xffffffd0,%r10d
  0.01%    0.02%    │               │          │││││  0x00007fefe923a733: cmp    $0xa,%r10d
                    │               │          ╰││││  0x00007fefe923a737: jb     0x00007fefe923a5cd  ;*if_icmple
                    │               │           ││││                                                ; - com.google.re2j.Utils::isWordRune@33 (line 149)
                    │               │           ││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    │               │           ││││                                                ; - com.google.re2j.Machine::match@334 (line 224)
  0.03%    0.06%    │               │           ││││  0x00007fefe923a73d: mov    0x60(%rsp),%r11d
  0.03%    0.01%    │               │           ││││  0x00007fefe923a742: cmp    $0x5f,%r11d
                    │               │           ││││  0x00007fefe923a746: je     0x00007fefe923b855  ;*if_icmpne
                    │               │           ││││                                                ; - com.google.re2j.Utils::isWordRune@39 (line 149)
                    │               │           ││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    │               │           ││││                                                ; - com.google.re2j.Machine::match@334 (line 224)
  0.04%    0.09%    │               │           ││││  0x00007fefe923a74c: xor    %ebp,%ebp
  0.00%             │               │           ╰│││  0x00007fefe923a74e: jmpq   0x00007fefe923a5d2
  0.08%    0.08%    │               ↘            │││  0x00007fefe923a753: mov    0x2c(%rsp),%r10d
  0.11%    0.16%    │                            │││  0x00007fefe923a758: add    $0xffffffd0,%r10d
  0.07%    0.05%    │                            │││  0x00007fefe923a75c: cmp    $0xa,%r10d
                    │                            ╰││  0x00007fefe923a760: jb     0x00007fefe923a5f4  ;*if_icmple
                    │                             ││                                                ; - com.google.re2j.Utils::isWordRune@33 (line 149)
                    │                             ││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    │                             ││                                                ; - com.google.re2j.Machine::match@334 (line 224)
  0.04%    0.02%    │                             ││  0x00007fefe923a766: mov    0x2c(%rsp),%r10d
  0.02%    0.04%    │                             ││  0x00007fefe923a76b: cmp    $0x5f,%r10d
                    │                             ││  0x00007fefe923a76f: je     0x00007fefe923b88d  ;*if_icmpne
                    │                             ││                                                ; - com.google.re2j.Utils::isWordRune@39 (line 149)
                    │                             ││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    │                             ││                                                ; - com.google.re2j.Machine::match@334 (line 224)
  0.01%    0.04%    │                             ││  0x00007fefe923a775: xor    %r10d,%r10d
  0.06%    0.05%    │                             ╰│  0x00007fefe923a778: jmpq   0x00007fefe923a5fa
                    ↘                              │  0x00007fefe923a77d: mov    0x70(%rsp),%r11
                                                   │  0x00007fefe923a782: movb   $0x1,0x18(%r11)    ;*putfield matched
                                                   │                                                ; - com.google.re2j.Machine::step@175 (line 290)
                                                   │                                                ; - com.google.re2j.Machine::match@367 (line 225)
                                                   │  0x00007fefe923a787: test   %r13d,%r13d
                                                   │  0x00007fefe923a78a: jne    0x00007fefe923b7d5  ;*iload
                                                   │                                                ; - com.google.re2j.Machine::step@47 (line 270)
                                                   │                                                ; - com.google.re2j.Machine::match@367 (line 225)
                                                   │  0x00007fefe923a790: mov    0x40(%rsp),%r11d
  0.00%                                            │  0x00007fefe923a795: mov    %r12d,0xc(%r12,%r11,8)  ;*putfield size
                                                   │                                                ; - com.google.re2j.Machine$Queue::clear@2 (line 43)
                                                   │                                                ; - com.google.re2j.Machine::freeQueue@26 (line 131)
                                                   │                                                ; - com.google.re2j.Machine::step@187 (line 293)
                                                   │                                                ; - com.google.re2j.Machine::match@367 (line 225)
                                                   │  0x00007fefe923a79a: mov    $0x1,%eax
                                                   ╰  0x00007fefe923a79f: jmpq   0x00007fefe923a3ce
                                                      0x00007fefe923a7a4: mov    $0xf,%r9d
                                                      0x00007fefe923a7aa: jmpq   0x00007fefe923a1ec
                                                      0x00007fefe923a7af: mov    $0xffffffff,%r8d
                                                      0x00007fefe923a7b5: xor    %r11d,%r11d
....................................................................................................
 58.88%   61.26%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Inst$Alt5Inst::add, version 506 (808 bytes) 

                     # parm5:    [sp+0x80]   = &apos;com/google/re2j/Machine&apos;  (sp of caller)
                     # parm6:    [sp+0x88]   = boolean
                     0x00007fefe921f7e0: mov    0x8(%rsi),%r10d
                     0x00007fefe921f7e4: shl    $0x3,%r10
                     0x00007fefe921f7e8: cmp    %r10,%rax
                     0x00007fefe921f7eb: jne    0x00007fefe9045e20  ;   {runtime_call}
                     0x00007fefe921f7f1: data16 xchg %ax,%ax
                     0x00007fefe921f7f4: nopl   0x0(%rax,%rax,1)
                     0x00007fefe921f7fc: data16 data16 xchg %ax,%ax
                   [Verified Entry Point]
  0.63%    0.08%     0x00007fefe921f800: mov    %eax,-0x14000(%rsp)
  0.09%    0.08%     0x00007fefe921f807: push   %rbp
  0.14%    0.04%     0x00007fefe921f808: sub    $0x70,%rsp         ;*synchronization entry
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@-1 (line 256)
  0.63%    0.03%     0x00007fefe921f80c: vmovd  %r9d,%xmm6
  0.12%    0.04%     0x00007fefe921f811: vmovq  %r8,%xmm5
  0.12%    0.04%     0x00007fefe921f816: vmovq  %rdx,%xmm4
  0.42%    0.16%     0x00007fefe921f81b: vmovq  %rsi,%xmm3
  0.04%    0.02%     0x00007fefe921f820: mov    %ecx,%r13d
  0.07%    0.07%     0x00007fefe921f823: mov    0x18(%rsi),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@3 (line 256)
  0.12%    0.07%     0x00007fefe921f826: mov    0x80(%rsp),%r10
  0.43%    0.67%     0x00007fefe921f82e: mov    0x10(%r10),%r11    ;*getfield pcsl
                                                                   ; - com.google.re2j.Machine::containsOrAdd@11 (line 314)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@6 (line 256)
                                                                   ; implicit exception: dispatches to 0x00007fefe92200b9
  0.72%    0.57%     0x00007fefe921f832: cmp    $0x40,%ecx
                     0x00007fefe921f835: jge    0x00007fefe921ff01  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine::containsOrAdd@3 (line 312)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@6 (line 256)
  0.01%    0.01%     0x00007fefe921f83b: mov    $0x1,%edx
  0.16%    0.11%     0x00007fefe921f840: shl    %cl,%rdx           ;*lshl
                                                                   ; - com.google.re2j.Machine::containsOrAdd@8 (line 313)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@6 (line 256)
  0.59%    0.55%     0x00007fefe921f843: mov    %rdx,%r8
  0.18%    0.14%     0x00007fefe921f846: and    %r11,%r8           ;*land
                                                                   ; - com.google.re2j.Machine::containsOrAdd@15 (line 314)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@6 (line 256)
  0.49%    0.23%     0x00007fefe921f849: xor    %ebx,%ebx
  0.10%    0.15%     0x00007fefe921f84b: test   %r8,%r8
                     0x00007fefe921f84e: jne    0x00007fefe921fd0d  ;*ifne
                                                                   ; - com.google.re2j.Machine::containsOrAdd@18 (line 314)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@6 (line 256)
  0.04%    0.05%     0x00007fefe921f854: or     %r11,%rdx          ;*lor  ; - com.google.re2j.Machine::containsOrAdd@27 (line 315)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@6 (line 256)
  0.14%    0.15%     0x00007fefe921f857: mov    %rdx,0x10(%r10)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine::containsOrAdd@28 (line 315)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@6 (line 256)
  0.48%    0.57%     0x00007fefe921f85b: mov    0x2c(%rsi),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@16 (line 260)
  0.05%    0.07%     0x00007fefe921f85e: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007fefe92200cd
  0.01%    0.01%     0x00007fefe921f863: cmp    $0xf8019909,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007fefe921f86a: jne    0x00007fefe921fbb9
  0.15%    0.03%     0x00007fefe921f870: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@30 (line 260)
  0.46%    0.50%     0x00007fefe921f874: mov    0x18(%r11),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@3 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@30 (line 260)
  0.03%    0.03%     0x00007fefe921f878: cmp    $0x40,%ecx
                     0x00007fefe921f87b: jge    0x00007fefe921ff39  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine::containsOrAdd@3 (line 312)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@30 (line 260)
  0.01%    0.02%     0x00007fefe921f881: mov    $0x1,%r9d
  0.11%    0.16%     0x00007fefe921f887: shl    %cl,%r9            ;*lshl
                                                                   ; - com.google.re2j.Machine::containsOrAdd@8 (line 313)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@30 (line 260)
  0.61%    0.48%     0x00007fefe921f88a: mov    %rdx,%r8
  0.15%    0.13%     0x00007fefe921f88d: and    %r9,%r8            ;*land
                                                                   ; - com.google.re2j.Machine::containsOrAdd@15 (line 314)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@30 (line 260)
  0.46%    0.43%     0x00007fefe921f890: test   %r8,%r8
                     0x00007fefe921f893: jne    0x00007fefe921fd5d  ;*ifne
                                                                   ; - com.google.re2j.Machine::containsOrAdd@18 (line 314)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@30 (line 260)
  0.02%    0.07%     0x00007fefe921f899: or     %r9,%rdx           ;*lor  ; - com.google.re2j.Machine::containsOrAdd@27 (line 315)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@30 (line 260)
  0.01%    0.03%     0x00007fefe921f89c: mov    %rdx,0x10(%r10)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine::containsOrAdd@28 (line 315)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@30 (line 260)
  0.13%    0.14%     0x00007fefe921f8a0: mov    0x88(%rsp),%r8d
  0.49%    0.50%     0x00007fefe921f8a8: test   %r8d,%r8d
                     0x00007fefe921f8ab: jne    0x00007fefe921ff7d  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@17 (line 148)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@30 (line 260)
  0.06%    0.03%     0x00007fefe921f8b1: vmovq  %xmm4,%r9
  0.04%    0.03%     0x00007fefe921f8b6: mov    0x10(%r9),%edi     ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 40)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@30 (line 260)
                                                                   ; implicit exception: dispatches to 0x00007fefe9220101
  0.55%    0.72%     0x00007fefe921f8ba: mov    0xc(%r9),%r9d      ;*getfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@6 (line 40)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@30 (line 260)
  0.42%    0.54%     0x00007fefe921f8be: mov    %r9d,%ecx
  0.04%    0.02%     0x00007fefe921f8c1: inc    %ecx               ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 40)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@30 (line 260)
  0.02%    0.02%     0x00007fefe921f8c3: vmovq  %xmm4,%rsi
  0.15%    0.25%     0x00007fefe921f8c8: mov    %ecx,0xc(%rsi)     ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 40)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@30 (line 260)
  0.43%    0.61%     0x00007fefe921f8cb: mov    0xc(%r12,%rdi,8),%esi  ; implicit exception: dispatches to 0x00007fefe9220115
  0.49%    0.60%     0x00007fefe921f8d0: cmp    %esi,%r9d
                  ╭  0x00007fefe921f8d3: jae    0x00007fefe921fb29
  0.30%    0.37%  │  0x00007fefe921f8d9: vmovd  %ecx,%xmm1
  0.08%    0.16%  │  0x00007fefe921f8dd: mov    %r9d,%r14d
  0.44%    0.55%  │  0x00007fefe921f8e0: vmovd  %edi,%xmm0
  0.07%    0.06%  │  0x00007fefe921f8e4: mov    0x80(%rsp),%rax
  0.19%    0.20%  │  0x00007fefe921f8ec: mov    0x8(%r12,%rdi,8),%r10d
  0.08%    0.20%  │  0x00007fefe921f8f1: cmp    $0xf8019807,%r10d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                  │  0x00007fefe921f8f8: jne    0x00007fefe921fbf1  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 40)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@30 (line 260)
  0.39%    0.51%  │  0x00007fefe921f8fe: vmovq  %xmm3,%r10
  0.02%    0.03%  │  0x00007fefe921f903: mov    0x34(%r10),%ebp    ;*getfield inst2
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@36 (line 261)
  0.18%    0.15%  │  0x00007fefe921f907: lea    (%r12,%rdi,8),%r9  ;*getfield denseThreadsInstructions
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 40)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@30 (line 260)
  0.08%    0.10%  │  0x00007fefe921f90b: lea    0x10(%r9,%r14,4),%r10
  0.44%    0.35%  │  0x00007fefe921f910: shr    $0x3,%r11
  0.04%    0.01%  │  0x00007fefe921f914: mov    %r11d,(%r10)
  0.36%    0.27%  │  0x00007fefe921f917: shr    $0x9,%r10
  0.07%    0.15%  │  0x00007fefe921f91b: movabs $0x7feff8fa7000,%rdi
  0.35%    0.32%  │  0x00007fefe921f925: mov    %r12b,(%rdi,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 40)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@30 (line 260)
  0.28%    0.18%  │  0x00007fefe921f929: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007fefe9220131
  0.10%    0.05%  │  0x00007fefe921f92e: cmp    $0xf8019909,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007fefe921f935: jne    0x00007fefe921fc39
  0.13%    0.11%  │  0x00007fefe921f93b: lea    (%r12,%rbp,8),%r8  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@50 (line 261)
  0.36%    0.28%  │  0x00007fefe921f93f: mov    0x18(%r8),%ecx     ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@3 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@50 (line 261)
  0.18%    0.13%  │  0x00007fefe921f943: cmp    $0x40,%ecx
                  │  0x00007fefe921f946: jge    0x00007fefe921ffc1  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine::containsOrAdd@3 (line 312)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@50 (line 261)
  0.05%    0.02%  │  0x00007fefe921f94c: mov    $0x1,%r10d
  0.10%    0.06%  │  0x00007fefe921f952: shl    %cl,%r10           ;*lshl
                  │                                                ; - com.google.re2j.Machine::containsOrAdd@8 (line 313)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@50 (line 261)
  0.70%    0.36%  │  0x00007fefe921f955: mov    %rdx,%r11
  0.14%    0.11%  │  0x00007fefe921f958: and    %r10,%r11          ;*land
                  │                                                ; - com.google.re2j.Machine::containsOrAdd@15 (line 314)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@50 (line 261)
  0.34%    0.20%  │  0x00007fefe921f95b: test   %r11,%r11
                  │  0x00007fefe921f95e: jne    0x00007fefe921fdb9  ;*ifne
                  │                                                ; - com.google.re2j.Machine::containsOrAdd@18 (line 314)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@50 (line 261)
  0.14%    0.16%  │  0x00007fefe921f964: or     %r10,%rdx          ;*lor  ; - com.google.re2j.Machine::containsOrAdd@27 (line 315)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@50 (line 261)
  0.04%    0.05%  │  0x00007fefe921f967: vmovq  %rdx,%xmm2
  0.10%    0.15%  │  0x00007fefe921f96c: mov    %rdx,0x10(%rax)    ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine::containsOrAdd@28 (line 315)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@50 (line 261)
  0.33%    0.35%  │  0x00007fefe921f970: mov    %r14d,%r11d
  0.17%    0.11%  │  0x00007fefe921f973: add    $0x2,%r11d
  0.06%    0.04%  │  0x00007fefe921f977: vmovq  %xmm4,%r10
  0.13%    0.13%  │  0x00007fefe921f97c: mov    %r11d,0xc(%r10)    ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 40)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@50 (line 261)
  0.42%    0.42%  │  0x00007fefe921f980: mov    %r14d,%r10d
  0.19%    0.13%  │  0x00007fefe921f983: add    $0x4,%r10d         ;*iadd
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 40)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@90 (line 263)
  0.06%    0.03%  │  0x00007fefe921f987: cmp    %esi,%r10d
                  │  0x00007fefe921f98a: jae    0x00007fefe921fb71  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 40)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@50 (line 261)
  0.12%    0.06%  │  0x00007fefe921f990: vmovq  %xmm3,%r11
  0.37%    0.21%  │  0x00007fefe921f995: mov    0x38(%r11),%ebp    ;*getfield inst3
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@56 (line 262)
  0.13%    0.08%  │  0x00007fefe921f999: shr    $0x3,%r8
  0.05%    0.01%  │  0x00007fefe921f99d: movslq %r14d,%r11
  0.09%    0.15%  │  0x00007fefe921f9a0: lea    (%r9,%r11,4),%rdx  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 40)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@110 (line 264)
  0.41%    0.51%  │  0x00007fefe921f9a4: mov    %rdx,%r11
  0.22%    0.15%  │  0x00007fefe921f9a7: add    $0x14,%r11
  0.07%    0.05%  │  0x00007fefe921f9ab: mov    %r8d,(%r11)
  0.14%    0.13%  │  0x00007fefe921f9ae: shr    $0x9,%r11
  0.33%    0.49%  │  0x00007fefe921f9b2: mov    %r12b,(%rdi,%r11,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 40)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@50 (line 261)
  0.16%    0.14%  │  0x00007fefe921f9b6: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007fefe9220161
  0.04%    0.02%  │  0x00007fefe921f9bb: cmp    $0xf8019909,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007fefe921f9c2: jne    0x00007fefe921fc6d
  0.12%    0.20%  │  0x00007fefe921f9c8: lea    (%r12,%rbp,8),%r8  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@70 (line 262)
  0.36%    0.42%  │  0x00007fefe921f9cc: mov    0x18(%r8),%ecx     ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@3 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@70 (line 262)
  0.15%    0.08%  │  0x00007fefe921f9d0: cmp    $0x40,%ecx
                  │  0x00007fefe921f9d3: jge    0x00007fefe9220005  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine::containsOrAdd@3 (line 312)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@70 (line 262)
  0.08%    0.05%  │  0x00007fefe921f9d9: mov    $0x1,%r11d
  0.09%    0.04%  │  0x00007fefe921f9df: shl    %cl,%r11           ;*lshl
                  │                                                ; - com.google.re2j.Machine::containsOrAdd@8 (line 313)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@70 (line 262)
  0.49%    0.33%  │  0x00007fefe921f9e2: vmovq  %xmm2,%rcx
  0.08%    0.20%  │  0x00007fefe921f9e7: and    %r11,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine::containsOrAdd@15 (line 314)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@70 (line 262)
  0.34%    0.50%  │  0x00007fefe921f9ea: test   %rcx,%rcx
                  │  0x00007fefe921f9ed: jne    0x00007fefe921fe11  ;*ifne
                  │                                                ; - com.google.re2j.Machine::containsOrAdd@18 (line 314)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@70 (line 262)
  0.14%    0.11%  │  0x00007fefe921f9f3: vmovq  %xmm2,%rcx
  0.09%    0.08%  │  0x00007fefe921f9f8: or     %r11,%rcx          ;*lor  ; - com.google.re2j.Machine::containsOrAdd@27 (line 315)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@70 (line 262)
  0.09%    0.11%  │  0x00007fefe921f9fb: mov    %rcx,%rsi
  0.27%    0.50%  │  0x00007fefe921f9fe: mov    %rcx,0x10(%rax)    ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine::containsOrAdd@28 (line 315)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@70 (line 262)
  0.18%    0.10%  │  0x00007fefe921fa02: vmovq  %xmm3,%r11
  0.04%    0.06%  │  0x00007fefe921fa07: mov    0x3c(%r11),%ebp    ;*getfield inst4
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@76 (line 263)
  0.10%    0.11%  │  0x00007fefe921fa0b: mov    %rdx,%rcx
  0.41%    0.35%  │  0x00007fefe921fa0e: add    $0x18,%rcx
  0.19%    0.15%  │  0x00007fefe921fa12: mov    %r8,%r11
  0.06%    0.04%  │  0x00007fefe921fa15: shr    $0x3,%r11
  0.10%    0.15%  │  0x00007fefe921fa19: mov    %r11d,(%rcx)       ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 40)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@70 (line 262)
  0.37%    0.41%  │  0x00007fefe921fa1c: mov    %rcx,%r11
  0.15%    0.21%  │  0x00007fefe921fa1f: mov    %r14d,%r8d
  0.04%    0.03%  │  0x00007fefe921fa22: add    $0x3,%r8d
  0.11%    0.11%  │  0x00007fefe921fa26: vmovq  %xmm4,%rcx
  0.43%    0.40%  │  0x00007fefe921fa2b: mov    %r8d,0xc(%rcx)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 40)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@70 (line 262)
  0.17%    0.26%  │  0x00007fefe921fa2f: shr    $0x9,%r11
  0.07%    0.04%  │  0x00007fefe921fa33: mov    %r12b,(%rdi,%r11,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 40)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@70 (line 262)
  0.16%    0.14%  │  0x00007fefe921fa37: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007fefe9220191
  0.37%    0.53%  │  0x00007fefe921fa3c: cmp    $0xf8019909,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007fefe921fa43: jne    0x00007fefe921fca1
  0.14%    0.15%  │  0x00007fefe921fa49: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@90 (line 263)
  0.04%    0.02%  │  0x00007fefe921fa4d: mov    0x18(%r11),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@3 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@90 (line 263)
  0.10%    0.12%  │  0x00007fefe921fa51: cmp    $0x40,%ecx
                  │  0x00007fefe921fa54: jge    0x00007fefe9220049  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine::containsOrAdd@3 (line 312)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@90 (line 263)
  0.36%    0.35%  │  0x00007fefe921fa5a: mov    $0x1,%r8d
  0.20%    0.13%  │  0x00007fefe921fa60: shl    %cl,%r8            ;*lshl
                  │                                                ; - com.google.re2j.Machine::containsOrAdd@8 (line 313)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@90 (line 263)
  0.56%    0.66%  │  0x00007fefe921fa63: mov    %rsi,%rcx
  0.18%    0.21%  │  0x00007fefe921fa66: and    %r8,%rcx           ;*land
                  │                                                ; - com.google.re2j.Machine::containsOrAdd@15 (line 314)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@90 (line 263)
  0.04%    0.09%  │  0x00007fefe921fa69: test   %rcx,%rcx
                  │  0x00007fefe921fa6c: jne    0x00007fefe921fe69  ;*ifne
                  │                                                ; - com.google.re2j.Machine::containsOrAdd@18 (line 314)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@90 (line 263)
  0.14%    0.12%  │  0x00007fefe921fa72: vmovq  %xmm4,%rcx
  0.34%    0.47%  │  0x00007fefe921fa77: mov    %r10d,0xc(%rcx)    ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 40)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@90 (line 263)
  0.20%    0.16%  │  0x00007fefe921fa7b: vmovq  %xmm3,%r10
  0.08%    0.04%  │  0x00007fefe921fa80: mov    0x40(%r10),%r10d   ;*getfield inst5
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@96 (line 264)
  0.15%    0.05%  │  0x00007fefe921fa84: vmovd  %r10d,%xmm0
  0.45%    0.19%  │  0x00007fefe921fa89: mov    %rdx,%r10
  0.12%    0.13%  │  0x00007fefe921fa8c: add    $0x1c,%r10         ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 40)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@90 (line 263)
  0.04%    0.10%  │  0x00007fefe921fa90: or     %r8,%rsi           ;*lor  ; - com.google.re2j.Machine::containsOrAdd@27 (line 315)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@90 (line 263)
  0.12%    0.11%  │  0x00007fefe921fa93: mov    %rsi,0x10(%rax)    ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine::containsOrAdd@28 (line 315)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@90 (line 263)
  0.40%    0.39%  │  0x00007fefe921fa97: shr    $0x3,%r11
  0.17%    0.23%  │  0x00007fefe921fa9b: mov    %r11d,(%r10)
  0.05%    0.05%  │  0x00007fefe921fa9e: shr    $0x9,%r10
  0.14%    0.10%  │  0x00007fefe921faa2: mov    %r12b,(%rdi,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 40)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@90 (line 263)
  0.31%    0.35%  │  0x00007fefe921faa6: vmovd  %xmm0,%r10d
  0.15%    0.15%  │  0x00007fefe921faab: mov    0x8(%r12,%r10,8),%r10d  ; implicit exception: dispatches to 0x00007fefe92201c1
  0.05%    0.07%  │  0x00007fefe921fab0: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007fefe921fab7: jne    0x00007fefe921fcd5
  0.15%    0.08%  │  0x00007fefe921fabd: vmovd  %xmm0,%r10d
  0.41%    0.47%  │  0x00007fefe921fac2: shl    $0x3,%r10          ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@110 (line 264)
  0.15%    0.18%  │  0x00007fefe921fac6: mov    0x18(%r10),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@3 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@110 (line 264)
  0.09%    0.06%  │  0x00007fefe921faca: cmp    $0x40,%ecx
                  │  0x00007fefe921facd: jge    0x00007fefe922008d  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine::containsOrAdd@3 (line 312)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@110 (line 264)
  0.13%    0.19%  │  0x00007fefe921fad3: mov    $0x1,%r11d
  0.37%    0.41%  │  0x00007fefe921fad9: shl    %cl,%r11           ;*lshl
                  │                                                ; - com.google.re2j.Machine::containsOrAdd@8 (line 313)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@110 (line 264)
  0.42%    0.42%  │  0x00007fefe921fadc: mov    %rsi,%rcx
  0.35%    0.37%  │  0x00007fefe921fadf: and    %r11,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine::containsOrAdd@15 (line 314)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@110 (line 264)
  0.12%    0.14%  │  0x00007fefe921fae2: test   %rcx,%rcx
                  │  0x00007fefe921fae5: jne    0x00007fefe921fec1  ;*ifne
                  │                                                ; - com.google.re2j.Machine::containsOrAdd@18 (line 314)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@110 (line 264)
  0.12%    0.14%  │  0x00007fefe921faeb: mov    %rsi,%r8
  0.06%    0.11%  │  0x00007fefe921faee: or     %r11,%r8
  0.32%    0.40%  │  0x00007fefe921faf1: mov    %r8,0x10(%rax)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine::containsOrAdd@28 (line 315)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@110 (line 264)
  0.16%    0.19%  │  0x00007fefe921faf5: add    $0x20,%rdx
  0.11%    0.14%  │  0x00007fefe921faf9: mov    %r10,%r11
  0.07%    0.12%  │  0x00007fefe921fafc: shr    $0x3,%r11
  0.32%    0.48%  │  0x00007fefe921fb00: mov    %r11d,(%rdx)       ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 40)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@110 (line 264)
  0.15%    0.22%  │  0x00007fefe921fb03: mov    %rdx,%r10
  0.09%    0.13%  │  0x00007fefe921fb06: add    $0x5,%r14d
  0.10%    0.05%  │  0x00007fefe921fb0a: vmovq  %xmm4,%r11
  0.34%    0.14%  │  0x00007fefe921fb0f: mov    %r14d,0xc(%r11)    ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 40)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@110 (line 264)
  0.19%    0.15%  │  0x00007fefe921fb13: shr    $0x9,%r10
  0.14%    0.12%  │  0x00007fefe921fb17: mov    %r12b,(%rdi,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 40)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@110 (line 264)
  0.09%    0.13%  │  0x00007fefe921fb1b: xor    %eax,%eax
  0.30%    0.44%  │  0x00007fefe921fb1d: add    $0x70,%rsp
  0.13%    0.17%  │  0x00007fefe921fb21: pop    %rbp
  0.61%    0.60%  │  0x00007fefe921fb22: test   %eax,0x1737f4d8(%rip)        # 0x00007ff00059f000
                  │                                                ;   {poll_return}
  0.08%    0.07%  │  0x00007fefe921fb28: retq                      ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 40)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@30 (line 260)
                  ↘  0x00007fefe921fb29: mov    $0xffffffe4,%esi
                     0x00007fefe921fb2e: vmovq  %xmm3,%rbp
                     0x00007fefe921fb33: vmovsd %xmm4,0x80(%rsp)
                     0x00007fefe921fb3c: mov    %r13d,0x88(%rsp)
                     0x00007fefe921fb44: vmovsd %xmm5,(%rsp)
                     0x00007fefe921fb49: vmovss %xmm6,0x8(%rsp)
....................................................................................................
 35.22%   34.04%  <total for region 2>

....[Hottest Regions]...............................................................................
 58.88%   61.26%         C2, level 4  com.google.re2j.Machine::match, version 537 (1312 bytes) 
 35.22%   34.04%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 506 (808 bytes) 
  2.21%    2.20%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.46%    0.05%         C2, level 4  com.google.re2j.RE2::match, version 552 (267 bytes) 
  0.15%    0.13%         C2, level 4  com.google.re2j.Machine::match, version 537 (212 bytes) 
  0.15%    0.13%         C2, level 4  com.google.re2j.RE2::match, version 552 (12 bytes) 
  0.14%    0.10%         C2, level 4  com.google.re2j.RE2::match, version 552 (33 bytes) 
  0.13%    0.08%         C2, level 4  com.google.re2j.RE2::match, version 552 (0 bytes) 
  0.12%    0.06%         C2, level 4  com.google.re2j.RE2::match, version 552 (5 bytes) 
  0.08%    0.07%         C2, level 4  java.util.Collections::shuffle, version 558 (15 bytes) 
  0.07%    0.00%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.06%    0.03%         C2, level 4  com.google.re2j.RE2::match, version 552 (149 bytes) 
  0.05%    0.00%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.05%            [kernel.kallsyms]  [unknown] (3 bytes) 
  0.05%                  C2, level 4  com.google.re2j.RE2::match, version 552 (0 bytes) 
  0.05%    0.00%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 591 (39 bytes) 
  0.04%    0.01%         C2, level 4  java.util.Collections::shuffle, version 558 (121 bytes) 
  0.04%    0.04%         C2, level 4  com.google.re2j.Machine::match, version 537 (53 bytes) 
  0.04%    0.00%         C2, level 4  java.util.Collections::shuffle, version 558 (43 bytes) 
  0.04%                  C2, level 4  com.google.re2j.RE2::match, version 552 (62 bytes) 
  1.94%    1.78%  <...other 368 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 59.15%   61.45%         C2, level 4  com.google.re2j.Machine::match, version 537 
 35.22%   34.04%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 506 
  3.12%    3.00%   [kernel.kallsyms]  [unknown] 
  1.26%    0.45%         C2, level 4  com.google.re2j.RE2::match, version 552 
  0.20%    0.11%         C2, level 4  java.util.Collections::shuffle, version 558 
  0.13%    0.02%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 591 
  0.11%    0.01%              [vdso]  [unknown] 
  0.07%    0.03%      hsdis-amd64.so  decode_instructions 
  0.06%    0.04%           libjvm.so  _ZN19GenericTaskQueueSetI17OverflowTaskQueueI8StarTaskL10MemoryType1ELj131072EELS2_1EE15steal_best_of_2EjPiRS1_ 
  0.04%    0.04%           libjvm.so  _ZN13xmlTextStream5writeEPKcm 
  0.04%    0.10%        libc-2.26.so  vfprintf 
  0.04%    0.07%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.02%    0.05%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.02%                 libc-2.26.so  __clock_gettime 
  0.02%    0.00%           libjvm.so  _ZN2os13javaTimeNanosEv 
  0.02%    0.02%           libjvm.so  _ZN18PSPromotionManager18drain_stacks_depthEb 
  0.01%    0.01%        libc-2.26.so  _IO_file_xsputn@@GLIBC_2.2.5 
  0.01%    0.03%        libc-2.26.so  __strlen_avx2 
  0.01%    0.01%        libc-2.26.so  _IO_fflush 
  0.01%    0.01%           libjvm.so  _ZN13defaultStream4holdEl 
  0.42%    0.26%  <...other 57 warm methods...>
....................................................................................................
100.00%   99.75%  <totals>

....[Distribution by Source]........................................................................
 95.98%   96.07%         C2, level 4
  3.12%    3.00%   [kernel.kallsyms]
  0.46%    0.55%           libjvm.so
  0.17%    0.29%        libc-2.26.so
  0.11%    0.01%              [vdso]
  0.07%    0.04%      hsdis-amd64.so
  0.05%    0.01%  libpthread-2.26.so
  0.02%    0.01%         interpreter
  0.01%    0.01%        runtime stub
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                     Mode  Cnt      Score     Error  Units
Re2jFindRegex.testExp2       thrpt   20  20502.074 ± 253.815  ops/s
Re2jFindRegex.testExp2:·asm  thrpt             NaN              ---
