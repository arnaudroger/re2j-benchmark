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
# Warmup Iteration   1: 1817.703 ops/s
# Warmup Iteration   2: 3152.559 ops/s
# Warmup Iteration   3: 3115.082 ops/s
# Warmup Iteration   4: 3166.297 ops/s
# Warmup Iteration   5: 3176.495 ops/s
# Warmup Iteration   6: 3172.724 ops/s
# Warmup Iteration   7: 3158.408 ops/s
# Warmup Iteration   8: 3191.948 ops/s
# Warmup Iteration   9: 3189.088 ops/s
# Warmup Iteration  10: 3190.335 ops/s
# Warmup Iteration  11: 3180.493 ops/s
# Warmup Iteration  12: 3193.036 ops/s
# Warmup Iteration  13: 3187.930 ops/s
# Warmup Iteration  14: 3187.017 ops/s
# Warmup Iteration  15: 3185.873 ops/s
# Warmup Iteration  16: 3198.830 ops/s
# Warmup Iteration  17: 3172.903 ops/s
# Warmup Iteration  18: 3201.089 ops/s
# Warmup Iteration  19: 3203.775 ops/s
# Warmup Iteration  20: 3173.495 ops/s
Iteration   1: 3148.982 ops/s
Iteration   2: 2966.705 ops/s
Iteration   3: 3159.852 ops/s
Iteration   4: 3179.460 ops/s
Iteration   5: 3181.065 ops/s
Iteration   6: 3210.083 ops/s
Iteration   7: 3209.511 ops/s
Iteration   8: 3177.221 ops/s
Iteration   9: 3138.978 ops/s
Iteration  10: 3186.619 ops/s
Iteration  11: 3178.420 ops/s
Iteration  12: 3190.048 ops/s
Iteration  13: 3168.418 ops/s
Iteration  14: 3165.509 ops/s
Iteration  15: 3125.002 ops/s
Iteration  16: 3127.069 ops/s
Iteration  17: 3189.389 ops/s
Iteration  18: 3193.386 ops/s
Iteration  19: 3191.201 ops/s
Iteration  20: 3202.306 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  3164.461 ±(99.9%) 45.737 ops/s [Average]
  (min, avg, max) = (2966.705, 3164.461, 3210.083), stdev = 52.671
  CI (99.9%): [3118.724, 3210.198] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2:·asm":
PrintAssembly processed: 211427 total address lines.
Perf output processed (skipped 23.109 seconds):
 Column 1: cycles (20495 events)
 Column 2: instructions (20506 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 546 (385 bytes) 

                           0x00007f9a4d250685: mov    0x28(%rsp),%r10
                           0x00007f9a4d25068a: movb   $0x1,0xc(%r10)     ;*putfield matched
                                                                         ; - com.google.re2j.Machine::step@298 (line 302)
                           0x00007f9a4d25068f: mov    0x20(%rsp),%ecx
                           0x00007f9a4d250693: jmpq   0x00007f9a4d24ff2e
                           0x00007f9a4d250698: mov    %r8d,0xa4(%rsp)
                           0x00007f9a4d2506a0: mov    %r14d,0xac(%rsp)
                           0x00007f9a4d2506a8: mov    %edi,%esi
                           0x00007f9a4d2506aa: mov    %r9,%rax
                           0x00007f9a4d2506ad: jmpq   0x00007f9a4d24ff53
  0.35%    0.29%      ↗    0x00007f9a4d2506b2: mov    0x30(%rsp),%r8d
                      │    0x00007f9a4d2506b7: cmp    $0x3f,%r10d
                      │    0x00007f9a4d2506bb: jge    0x00007f9a4d25119d  ;*if_icmpge
                      │                                                  ; - com.google.re2j.Unicode::simpleFold@48 (line 215)
                      │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 65)
                      │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
  0.01%    0.01%      │    0x00007f9a4d2506c1: cmp    $0x3f,%r10d
                      │    0x00007f9a4d2506c5: jae    0x00007f9a4d250ff9
  0.17%    0.12%      │    0x00007f9a4d2506cb: mov    0x10(%r9,%r10,4),%ebp  ;*aaload
                      │                                                  ; - com.google.re2j.Unicode::simpleFold@55 (line 215)
                      │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 65)
                      │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
  0.26%    0.27%      │    0x00007f9a4d2506d0: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f9a4d251801
  0.00%    0.07%      │    0x00007f9a4d2506d5: test   %r11d,%r11d
                      │    0x00007f9a4d2506d8: jbe    0x00007f9a4d251045
  0.09%    0.03%      │    0x00007f9a4d2506de: mov    0x10(%r12,%rbp,8),%ebp  ;*iaload
                      │                                                  ; - com.google.re2j.Unicode::simpleFold@57 (line 215)
                      │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 65)
                      │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
  0.12%    0.07%      │    0x00007f9a4d2506e3: cmp    0x20(%rsp),%ebp
                      │    0x00007f9a4d2506e7: je     0x00007f9a4d2511e9  ;*if_icmpne
                      │                                                  ; - com.google.re2j.Unicode::simpleFold@59 (line 215)
                      │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 65)
                      │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
  0.31%    0.25%      │    0x00007f9a4d2506ed: mov    0x20(%rsp),%r8d
                      │    0x00007f9a4d2506f2: cmp    $0x7f,%r8d
                      │    0x00007f9a4d2506f6: jg     0x00007f9a4d251225  ;*if_icmpgt
                      │                                                  ; - com.google.re2j.Unicode::toLower@3 (line 177)
                      │                                                  ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                      │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 65)
                      │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
  0.00%    0.01%      │    0x00007f9a4d2506fc: cmp    $0x41,%r8d
  0.12%    0.09%      │    0x00007f9a4d250700: jl     0x00007f9a4d25114d  ;*if_icmpgt
                      │                                                  ; - com.google.re2j.Unicode::toLower@9 (line 178)
                      │                                                  ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                      │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 65)
                      │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
  0.30%    0.24%      │    0x00007f9a4d250706: cmp    $0x5a,%r8d
                  ╭   │    0x00007f9a4d25070a: jg     0x00007f9a4d250718  ;*if_icmpgt
                  │   │                                                  ; - com.google.re2j.Unicode::toLower@15 (line 178)
                  │   │                                                  ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                  │   │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 65)
                  │   │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
                  │   │    0x00007f9a4d25070c: mov    %r8d,%r10d
                  │   │    0x00007f9a4d25070f: add    $0x20,%r10d        ;*iinc
                  │   │                                                  ; - com.google.re2j.Unicode::toLower@18 (line 179)
                  │   │                                                  ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                  │   │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 65)
                  │   │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
                  │   │    0x00007f9a4d250713: cmp    %r8d,%r10d
                  │╭  │    0x00007f9a4d250716: jne    0x00007f9a4d250733  ;*if_icmpeq
                  ││  │                                                  ; - com.google.re2j.Unicode::simpleFold@77 (line 224)
                  ││  │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 65)
                  ││  │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
                  ↘│  │    0x00007f9a4d250718: cmp    $0x61,%r8d
                   │  │    0x00007f9a4d25071c: jl     0x00007f9a4d251481  ;*if_icmpgt
                   │  │                                                  ; - com.google.re2j.Unicode::toUpper@9 (line 167)
                   │  │                                                  ; - com.google.re2j.Unicode::simpleFold@83 (line 227)
                   │  │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 65)
                   │  │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
  0.01%            │  │    0x00007f9a4d250722: cmp    $0x7a,%r8d
                   │  │    0x00007f9a4d250726: jg     0x00007f9a4d2514cd  ;*if_icmpgt
                   │  │                                                  ; - com.google.re2j.Unicode::toUpper@15 (line 167)
                   │  │                                                  ; - com.google.re2j.Unicode::simpleFold@83 (line 227)
                   │  │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 65)
                   │  │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
  0.11%    0.15%   │  │    0x00007f9a4d25072c: mov    %r8d,%r10d
  0.33%    0.23%   │  │    0x00007f9a4d25072f: add    $0xffffffe0,%r10d  ; OopMap{r9=Oop rdi=NarrowOop rdx=NarrowOop rsi=NarrowOop rax=Oop r13=Oop [8]=Oop [24]=Oop [40]=Oop off=2195}
                   │  │                                                  ;*goto
                   │  │                                                  ; - com.google.re2j.Inst::matchRune@54 (line 65)
                   │  │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
  0.00%            ↘  │    0x00007f9a4d250733: test   %eax,0x18ada8c7(%rip)        # 0x00007f9a65d2b000
                      │                                                  ;*goto
                      │                                                  ; - com.google.re2j.Inst::matchRune@54 (line 65)
                      │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
                      │                                                  ;   {poll}
  0.03%    0.01%      │    0x00007f9a4d250739: cmp    %r14d,%r10d
                      │    0x00007f9a4d25073c: je     0x00007f9a4d25038c  ;*if_icmpeq
                      │                                                  ; - com.google.re2j.Inst::matchRune@39 (line 64)
                      │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
                      │    0x00007f9a4d250742: mov    %r14d,%r11d        ;*iload_1
                      │                                                  ; - com.google.re2j.Inst::matchRune@42 (line 66)
                      │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
  0.06%    0.17%      │    0x00007f9a4d250745: cmp    %r10d,%ecx
                    ╭ │    0x00007f9a4d250748: je     0x00007f9a4d25082f  ;*if_icmpne
                    │ │                                                  ; - com.google.re2j.Inst::matchRune@44 (line 66)
                    │ │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
  0.10%    0.19%    │ │    0x00007f9a4d25074e: mov    %r10d,0x20(%rsp)
  0.20%    0.20%    │ │    0x00007f9a4d250753: mov    %r11d,%r14d
                    │ │    0x00007f9a4d250756: mov    $0x1f,%ebx
  0.12%    0.13%    │ │    0x00007f9a4d25075b: mov    $0x1f,%r8d
  0.16%    0.15%    │ │    0x00007f9a4d250761: xor    %r10d,%r10d
  0.14%    0.16%    │ │    0x00007f9a4d250764: mov    $0x3f,%r11d
                    │ │    0x00007f9a4d25076a: mov    %r10d,0x30(%rsp)
  0.12%    0.10%    │ │    0x00007f9a4d25076f: vmovd  %r11d,%xmm1
  0.11%    0.23%    │╭│    0x00007f9a4d250774: jmp    0x00007f9a4d2507ca
  0.04%    0.06%    │││ ↗  0x00007f9a4d250776: inc    %r8d               ;*iadd
                    │││ │                                                ; - com.google.re2j.Unicode::simpleFold@33 (line 210)
                    │││ │                                                ; - com.google.re2j.Inst::matchRune@50 (line 65)
                    │││ │                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.01%    0.02%    │││ │  0x00007f9a4d250779: mov    %r8d,0x30(%rsp)
  0.03%    0.05%    │││ │  0x00007f9a4d25077e: vmovd  %xmm1,%r8d
  0.64%    0.54%    │││ │  0x00007f9a4d250783: nopw   0x0(%rax,%rax,1)
  0.02%    0.02%    │││ │  0x00007f9a4d25078c: data16 data16 xchg %ax,%ax  ; OopMap{r9=Oop rdi=NarrowOop rdx=NarrowOop rsi=NarrowOop rax=Oop r13=Oop [8]=Oop [24]=Oop [40]=Oop off=2288}
                    │││ │                                                ;*goto
                    │││ │                                                ; - com.google.re2j.Unicode::simpleFold@40 (line 214)
                    │││ │                                                ; - com.google.re2j.Inst::matchRune@50 (line 65)
                    │││ │                                                ; - com.google.re2j.Machine::step@308 (line 306)
  1.10%    1.28%    │││↗│  0x00007f9a4d250790: test   %eax,0x18ada86a(%rip)        # 0x00007f9a65d2b000
                    │││││                                                ;*goto
                    │││││                                                ; - com.google.re2j.Unicode::simpleFold@40 (line 214)
                    │││││                                                ; - com.google.re2j.Inst::matchRune@50 (line 65)
                    │││││                                                ; - com.google.re2j.Machine::step@308 (line 306)
                    │││││                                                ;   {poll}
  0.30%    0.41%    │││││  0x00007f9a4d250796: mov    0x30(%rsp),%r10d
  0.93%    1.19%    │││││  0x00007f9a4d25079b: cmp    %r8d,%r10d
                    ││╰││  0x00007f9a4d25079e: jge    0x00007f9a4d2506b2  ;*if_icmpge
                    ││ ││                                                ; - com.google.re2j.Unicode::simpleFold@9 (line 207)
                    ││ ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 65)
                    ││ ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.37%    0.51%    ││ ││  0x00007f9a4d2507a4: mov    %r8d,%r10d
  0.86%    0.98%    ││ ││  0x00007f9a4d2507a7: sub    0x30(%rsp),%r10d   ;*isub
                    ││ ││                                                ; - com.google.re2j.Unicode::simpleFold@15 (line 208)
                    ││ ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 65)
                    ││ ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.28%    0.33%    ││ ││  0x00007f9a4d2507ac: mov    %r10d,%ebx
  0.78%    0.98%    ││ ││  0x00007f9a4d2507af: sar    $0x1f,%ebx
  0.44%    0.57%    ││ ││  0x00007f9a4d2507b2: shr    $0x1f,%ebx
  0.79%    1.12%    ││ ││  0x00007f9a4d2507b5: add    %r10d,%ebx
  0.29%    0.32%    ││ ││  0x00007f9a4d2507b8: sar    %ebx               ;*idiv
                    ││ ││                                                ; - com.google.re2j.Unicode::simpleFold@17 (line 208)
                    ││ ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 65)
                    ││ ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.75%    0.99%    ││ ││  0x00007f9a4d2507ba: mov    0x30(%rsp),%r11d
  0.41%    0.59%    ││ ││  0x00007f9a4d2507bf: add    %ebx,%r11d         ;*iadd
                    ││ ││                                                ; - com.google.re2j.Unicode::simpleFold@18 (line 208)
                    ││ ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 65)
                    ││ ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.93%    0.98%    ││ ││  0x00007f9a4d2507c2: vmovd  %r8d,%xmm1
  0.27%    0.35%    ││ ││  0x00007f9a4d2507c7: mov    %r11d,%r8d         ;*idiv
                    ││ ││                                                ; - com.google.re2j.Unicode::simpleFold@17 (line 208)
                    ││ ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 65)
                    ││ ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.99%    1.09%    │↘ ││  0x00007f9a4d2507ca: cmp    $0x3f,%r8d
                    │  ││  0x00007f9a4d2507ce: jae    0x00007f9a4d250c25
  0.47%    0.52%    │  ││  0x00007f9a4d2507d4: movslq %ebx,%r10
  0.95%    1.17%    │  ││  0x00007f9a4d2507d7: movslq 0x30(%rsp),%r11
  0.57%    0.52%    │  ││  0x00007f9a4d2507dc: add    %r10,%r11
  0.94%    1.05%    │  ││  0x00007f9a4d2507df: mov    0x10(%r9,%r11,4),%ebp  ;*aaload
                    │  ││                                                ; - com.google.re2j.Unicode::simpleFold@24 (line 209)
                    │  ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 65)
                    │  ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.67%    0.69%    │  ││  0x00007f9a4d2507e4: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f9a4d2516dd
  3.19%    3.79%    │  ││  0x00007f9a4d2507e9: test   %r11d,%r11d
                    │  ││  0x00007f9a4d2507ec: jbe    0x00007f9a4d250c79  ;*iaload
                    │  ││                                                ; - com.google.re2j.Unicode::simpleFold@26 (line 209)
                    │  ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 65)
                    │  ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  1.51%    1.97%    │  ││  0x00007f9a4d2507f2: mov    0x10(%r12,%rbp,8),%r10d
  0.46%    0.70%    │  ││  0x00007f9a4d2507f7: cmp    0x20(%rsp),%r10d
                    │  ╰│  0x00007f9a4d2507fc: jge    0x00007f9a4d250790  ;*if_icmpge
                    │   │                                                ; - com.google.re2j.Unicode::simpleFold@28 (line 209)
                    │   │                                                ; - com.google.re2j.Inst::matchRune@50 (line 65)
                    │   │                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.59%    0.63%    │   ╰  0x00007f9a4d2507fe: jmpq   0x00007f9a4d250776
                    │      0x00007f9a4d250803: mov    0xb0(%rsp),%edx
                    │      0x00007f9a4d25080a: test   %edx,%edx
                    │      0x00007f9a4d25080c: jne    0x00007f9a4d2501bd  ;*ifne
                    │                                                    ; - com.google.re2j.Machine::step@168 (line 282)
                    │      0x00007f9a4d250812: mov    0x20(%rsp),%ecx
                    │      0x00007f9a4d250816: jmpq   0x00007f9a4d24ff2e
  0.01%    0.01%    │      0x00007f9a4d25081b: xor    %r11d,%r11d
                    │      0x00007f9a4d25081e: mov    0x20(%rsp),%ecx
                    │      0x00007f9a4d250822: mov    0xac(%rsp),%r14d
  0.01%             │      0x00007f9a4d25082a: jmpq   0x00007f9a4d25004a
  0.02%    0.02%    ↘      0x00007f9a4d25082f: mov    %ecx,0x20(%rsp)
  0.07%    0.09%           0x00007f9a4d250833: mov    %edx,%r10d
                           0x00007f9a4d250836: jmpq   0x00007f9a4d24ff53
                           0x00007f9a4d25083b: mov    %r11d,%r9d
                           0x00007f9a4d25083e: sar    %r9d
                           0x00007f9a4d250841: add    %r11d,%r9d         ;*iadd
                                                                         ; - java.util.ArrayList::grow@10 (line 255)
                                                                         ; - java.util.ArrayList::ensureExplicitCapacity@22 (line 235)
                                                                         ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                                         ; - java.util.ArrayList::add@7 (line 458)
                                                                         ; - com.google.re2j.Machine::step@410 (line 329)
                           0x00007f9a4d250844: mov    %r9d,%r10d
....................................................................................................
 22.91%   26.70%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 538 (351 bytes) 

                      # parm4:    rdi       = int
                      # parm5:    [sp+0x70]   = &apos;com/google/re2j/Machine$Thread&apos;  (sp of caller)
                      0x00007f9a4d23dac0: mov    0x8(%rsi),%r10d    ;   {no_reloc}
                      0x00007f9a4d23dac4: shl    $0x3,%r10
                      0x00007f9a4d23dac8: cmp    %r10,%rax
                      0x00007f9a4d23dacb: jne    0x00007f9a4d045e20  ;   {runtime_call}
                      0x00007f9a4d23dad1: data16 xchg %ax,%ax
                      0x00007f9a4d23dad4: nopl   0x0(%rax,%rax,1)
                      0x00007f9a4d23dadc: data16 data16 xchg %ax,%ax
                    [Verified Entry Point]
  0.83%    0.85%      0x00007f9a4d23dae0: mov    %eax,-0x14000(%rsp)
  0.03%    0.03%      0x00007f9a4d23dae7: push   %rbp
  0.51%    0.46%      0x00007f9a4d23dae8: sub    $0x60,%rsp         ;*synchronization entry
                                                                    ; - com.google.re2j.Machine::add@-1 (line 341)
  0.27%    0.32%      0x00007f9a4d23daec: mov    %edi,0x28(%rsp)
  0.05%    0.02%      0x00007f9a4d23daf0: mov    %r9,0x20(%rsp)
  0.51%    0.47%      0x00007f9a4d23daf5: mov    %r8d,0x1c(%rsp)
  0.32%    0.44%      0x00007f9a4d23dafa: mov    %rsi,0x8(%rsp)
  0.02%    0.02%      0x00007f9a4d23daff: test   %ecx,%ecx
                      0x00007f9a4d23db01: je     0x00007f9a4d23dd95  ;*ifne
                                                                    ; - com.google.re2j.Machine::add@1 (line 341)
           0.01%      0x00007f9a4d23db07: mov    %rdx,0x40(%rsp)
  0.47%    0.48%      0x00007f9a4d23db0c: mov    0x14(%rdx),%r8d    ;*getfield sparse
                                                                    ; - com.google.re2j.Machine$Queue::contains@1 (line 48)
                                                                    ; - com.google.re2j.Machine::add@9 (line 344)
                                                                    ; implicit exception: dispatches to 0x00007f9a4d23e249
  0.33%    0.26%      0x00007f9a4d23db10: mov    0xc(%r12,%r8,8),%ebx  ; implicit exception: dispatches to 0x00007f9a4d23e25d
  0.03%    0.01%      0x00007f9a4d23db15: cmp    %ebx,%ecx
                      0x00007f9a4d23db17: jae    0x00007f9a4d23dc5d  ;*iaload
                                                                    ; - com.google.re2j.Machine$Queue::contains@5 (line 48)
                                                                    ; - com.google.re2j.Machine::add@9 (line 344)
  0.01%    0.01%      0x00007f9a4d23db1d: mov    0x10(%rdx),%r9d    ;*getfield dense
                                                                    ; - com.google.re2j.Machine$Queue::contains@18 (line 52)
                                                                    ; - com.google.re2j.Machine::add@9 (line 344)
  0.50%    0.48%      0x00007f9a4d23db21: mov    0xc(%rdx),%r10d    ;*getfield size
                                                                    ; - com.google.re2j.Machine$Queue::contains@9 (line 49)
                                                                    ; - com.google.re2j.Machine::add@9 (line 344)
  0.39%    0.20%      0x00007f9a4d23db25: lea    (%r12,%r8,8),%rdi
  0.02%    0.03%      0x00007f9a4d23db29: mov    0x10(%rdi,%rcx,4),%ebp  ;*iaload
                                                                    ; - com.google.re2j.Machine$Queue::contains@5 (line 48)
                                                                    ; - com.google.re2j.Machine::add@9 (line 344)
  0.02%    0.01%      0x00007f9a4d23db2d: cmp    %r10d,%ebp
                  ╭   0x00007f9a4d23db30: jl     0x00007f9a4d23dc24  ;*invokevirtual contains
                  │                                                 ; - com.google.re2j.Machine::add@9 (line 344)
  0.59%    0.56%  │↗  0x00007f9a4d23db36: mov    %r10d,%r11d
  0.27%    0.31%  ││  0x00007f9a4d23db39: inc    %r11d
  0.03%    0.02%  ││  0x00007f9a4d23db3c: mov    0x40(%rsp),%rdx
  0.15%    0.05%  ││  0x00007f9a4d23db41: mov    %r11d,0xc(%rdx)    ;*putfield size
                  ││                                                ; - com.google.re2j.Machine$Queue::add@8 (line 59)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.61%    0.53%  ││  0x00007f9a4d23db45: cmp    %ebx,%ecx
                  ││  0x00007f9a4d23db47: jae    0x00007f9a4d23dc99
  0.24%    0.37%  ││  0x00007f9a4d23db4d: mov    %r10d,0x10(%rdi,%rcx,4)  ;*iastore
                  ││                                                ; - com.google.re2j.Machine$Queue::add@18 (line 60)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.03%    0.02%  ││  0x00007f9a4d23db52: mov    0xc(%r12,%r9,8),%r8d  ; implicit exception: dispatches to 0x00007f9a4d23e271
           0.02%  ││  0x00007f9a4d23db57: cmp    %r8d,%r10d
                  ││  0x00007f9a4d23db5a: jae    0x00007f9a4d23dce5
  0.57%    0.42%  ││  0x00007f9a4d23db60: lea    (%r12,%r9,8),%r11
  0.21%    0.31%  ││  0x00007f9a4d23db64: mov    0x10(%r11,%r10,4),%ebx  ;*aaload
                  ││                                                ; - com.google.re2j.Machine$Queue::add@24 (line 61)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.02%           ││  0x00007f9a4d23db69: test   %ebx,%ebx
                  ││  0x00007f9a4d23db6b: je     0x00007f9a4d23ddbd  ;*ifnonnull
                  ││                                                ; - com.google.re2j.Machine$Queue::add@27 (line 62)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.01%    0.01%  ││  0x00007f9a4d23db71: mov    %ecx,0xc(%r12,%rbx,8)  ;*putfield pc
                  ││                                                ; - com.google.re2j.Machine$Queue::add@52 (line 66)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.73%    0.53%  ││  0x00007f9a4d23db76: mov    0x14(%rsi),%r11d   ;*getfield prog
                  ││                                                ; - com.google.re2j.Machine::add@26 (line 348)
  0.19%    0.35%  ││  0x00007f9a4d23db7a: mov    %r12d,0x10(%r12,%rbx,8)  ;*putfield thread
                  ││                                                ; - com.google.re2j.Machine$Queue::add@47 (line 65)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.18%    0.13%  ││  0x00007f9a4d23db7f: mov    0x14(%r12,%r11,8),%ebp  ;*getfield inst
                  ││                                                ; - com.google.re2j.Prog::getInst@1 (line 29)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 348)
                  ││                                                ; implicit exception: dispatches to 0x00007f9a4d23e285
  0.01%    0.00%  ││  0x00007f9a4d23db84: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f9a4d23e299
  0.87%    0.78%  ││  0x00007f9a4d23db89: cmp    $0xf8002f22,%r10d  ;   {metadata(&apos;java/util/ArrayList&apos;)}
                  ││  0x00007f9a4d23db90: jne    0x00007f9a4d23dd69
  0.22%    0.23%  ││  0x00007f9a4d23db96: lea    (%r12,%rbp,8),%r11  ;*invokeinterface get
                  ││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.09%    0.07%  ││  0x00007f9a4d23db9a: mov    0x10(%r11),%ebp    ;*getfield size
                  ││                                                ; - java.util.ArrayList::rangeCheck@2 (line 652)
                  ││                                                ; - java.util.ArrayList::get@2 (line 429)
                  ││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.01%    0.03%  ││  0x00007f9a4d23db9e: cmp    %ebp,%ecx
                  ││  0x00007f9a4d23dba0: jge    0x00007f9a4d23de01  ;*if_icmplt
                  ││                                                ; - java.util.ArrayList::rangeCheck@5 (line 652)
                  ││                                                ; - java.util.ArrayList::get@2 (line 429)
                  ││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.50%    0.28%  ││  0x00007f9a4d23dba6: mov    0x14(%r11),%ebp    ;*getfield elementData
                  ││                                                ; - java.util.ArrayList::elementData@1 (line 418)
                  ││                                                ; - java.util.ArrayList::get@7 (line 431)
                  ││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.25%    0.30%  ││  0x00007f9a4d23dbaa: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f9a4d23e2ad
  0.51%    0.59%  ││  0x00007f9a4d23dbaf: cmp    %r10d,%ecx
                  ││  0x00007f9a4d23dbb2: jae    0x00007f9a4d23dd2d
  0.46%    0.40%  ││  0x00007f9a4d23dbb8: lea    (%r12,%rbp,8),%r10
  0.38%    0.47%  ││  0x00007f9a4d23dbbc: mov    0x10(%r10,%rcx,4),%ebp  ;*aaload
                  ││                                                ; - java.util.ArrayList::elementData@5 (line 418)
                  ││                                                ; - java.util.ArrayList::get@7 (line 431)
                  ││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.18%    0.15%  ││  0x00007f9a4d23dbc1: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f9a4d23e2c1
  1.91%    1.72%  ││  0x00007f9a4d23dbc6: cmp    $0xf80197c3,%r11d  ;   {metadata(&apos;com/google/re2j/Inst&apos;)}
                  ││  0x00007f9a4d23dbcd: jne    0x00007f9a4d23de55
  0.71%    0.48%  ││  0x00007f9a4d23dbd3: lea    (%r12,%rbp,8),%r10  ;*checkcast
                  ││                                                ; - com.google.re2j.Prog::getInst@10 (line 29)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.11%    0.11%  ││  0x00007f9a4d23dbd7: mov    %r10,0x38(%rsp)
  0.02%    0.01%  ││  0x00007f9a4d23dbdc: mov    0xc(%r10),%r8d     ;*getfield op
                  ││                                                ; - com.google.re2j.Inst::op@1 (line 42)
                  ││                                                ; - com.google.re2j.Machine::add@37 (line 349)
  0.01%    0.02%  ││  0x00007f9a4d23dbe0: mov    %r8d,%r10d
  0.62%    0.46%  ││  0x00007f9a4d23dbe3: add    $0xfffffff7,%r10d
  0.24%    0.04%  ││  0x00007f9a4d23dbe7: mov    $0x8,%r9d
  0.00%           ││  0x00007f9a4d23dbed: cmp    $0x3,%r10d
  0.47%    0.39%  ││  0x00007f9a4d23dbf1: cmovb  %r9d,%r8d          ;*invokevirtual op
                  ││                                                ; - com.google.re2j.Machine::add@37 (line 349)
  1.21%    1.15%  ││  0x00007f9a4d23dbf5: mov    %r8d,%r11d
  0.00%    0.01%  ││  0x00007f9a4d23dbf8: dec    %r11d
  0.71%    0.62%  ││  0x00007f9a4d23dbfb: cmp    $0xb,%r11d
                  ││  0x00007f9a4d23dbff: jae    0x00007f9a4d23dd59  ;*tableswitch
                  ││                                                ; - com.google.re2j.Machine::add@40 (line 349)
  0.77%    0.73%  ││  0x00007f9a4d23dc05: mov    0x38(%rsp),%r10
  0.11%    0.01%  ││  0x00007f9a4d23dc0a: mov    0x10(%r10),%ecx    ;*getfield out
                  ││                                                ; - com.google.re2j.Machine::add@193 (line 369)
  0.01%    0.01%  ││  0x00007f9a4d23dc0e: mov    0x14(%r10),%r11d   ;*getfield arg
                  ││                                                ; - com.google.re2j.Machine::add@156 (line 363)
  0.13%    0.11%  ││  0x00007f9a4d23dc12: movslq %r8d,%r8
  0.69%    0.71%  ││  0x00007f9a4d23dc15: movabs $0x7f9a4d23da60,%r10  ;   {section_word}
  0.08%    0.07%  ││  0x00007f9a4d23dc1f: jmpq   *-0x8(%r10,%r8,8)  ;*tableswitch
                  ││                                                ; - com.google.re2j.Machine::add@40 (line 349)
  0.13%    0.08%  ↘│  0x00007f9a4d23dc24: mov    0xc(%r12,%r9,8),%edx  ; implicit exception: dispatches to 0x00007f9a4d23e351
  0.03%    0.02%   │  0x00007f9a4d23dc29: cmp    %edx,%ebp
                   │  0x00007f9a4d23dc2b: jae    0x00007f9a4d23de3d
  0.01%    0.01%   │  0x00007f9a4d23dc31: lea    (%r12,%r9,8),%r11
  0.00%            │  0x00007f9a4d23dc35: mov    0x10(%r11,%rbp,4),%r11d  ;*aaload
                   │                                                ; - com.google.re2j.Machine$Queue::contains@22 (line 52)
                   │                                                ; - com.google.re2j.Machine::add@9 (line 344)
  0.10%    0.08%   │  0x00007f9a4d23dc3a: mov    0xc(%r12,%r11,8),%ebp  ;*getfield pc
                   │                                                ; - com.google.re2j.Machine$Queue::contains@29 (line 53)
                   │                                                ; - com.google.re2j.Machine::add@9 (line 344)
                   │                                                ; implicit exception: dispatches to 0x00007f9a4d23e371
  0.15%    0.20%   │  0x00007f9a4d23dc3f: cmp    %ecx,%ebp
                   ╰  0x00007f9a4d23dc41: jne    0x00007f9a4d23db36  ;*if_icmpne
                                                                    ; - com.google.re2j.Machine$Queue::contains@33 (line 53)
                                                                    ; - com.google.re2j.Machine::add@9 (line 344)
                      0x00007f9a4d23dc47: mov    $0xffffff65,%esi
                      0x00007f9a4d23dc4c: mov    %ecx,0x2c(%rsp)
                      0x00007f9a4d23dc50: data16 xchg %ax,%ax
                      0x00007f9a4d23dc53: callq  0x00007f9a4d0051a0  ; OopMap{[112]=Oop [8]=Oop [32]=Oop [64]=Oop off=408}
....................................................................................................
 19.88%   18.15%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 546 (221 bytes) 

                       0x00007f9a4d250261: mov    0xc(%rcx),%edi
                       0x00007f9a4d250264: cmp    %edi,%r14d
                       0x00007f9a4d250267: jge    0x00007f9a4d25067c  ;*if_icmpge
                                                                     ; - com.google.re2j.Machine::step@250 (line 293)
                       0x00007f9a4d25026d: mov    %r14d,%ecx
                       0x00007f9a4d250270: jmpq   0x00007f9a4d25043d  ;*if_icmpge
                                                                     ; - com.google.re2j.Machine::step@18 (line 264)
                       0x00007f9a4d250275: mov    0x8(%rsp),%r10
                       0x00007f9a4d25027a: mov    %r12d,0xc(%r10)    ;*getfield size
                                                                     ; - com.google.re2j.Machine::step@15 (line 264)
  0.02%    0.03%       0x00007f9a4d25027e: add    $0x90,%rsp
  0.08%    0.06%       0x00007f9a4d250285: pop    %rbp
                       0x00007f9a4d250286: test   %eax,0x18adad74(%rip)        # 0x00007f9a65d2b000
                                                                     ;   {poll_return}
                       0x00007f9a4d25028c: retq   
                       0x00007f9a4d25028d: data16 xchg %ax,%ax
  0.82%    1.07%   ↗   0x00007f9a4d250290: mov    0x30(%rsp),%r8d    ; OopMap{r9=Oop rdi=NarrowOop rdx=NarrowOop rsi=NarrowOop rax=Oop r13=Oop [8]=Oop [24]=Oop [40]=Oop off=1013}
                   │                                                 ;*goto
                   │                                                 ; - com.google.re2j.Unicode::simpleFold@40 (line 214)
                   │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 63)
                   │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.84%    0.72%   │↗  0x00007f9a4d250295: test   %eax,0x18adad65(%rip)        # 0x00007f9a65d2b000
                   ││                                                ;*goto
                   ││                                                ; - com.google.re2j.Unicode::simpleFold@40 (line 214)
                   ││                                                ; - com.google.re2j.Inst::matchRune@33 (line 63)
                   ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
                   ││                                                ;   {poll}
  0.78%    0.74%   ││  0x00007f9a4d25029b: cmp    %ebx,%r8d
                  ╭││  0x00007f9a4d25029e: jge    0x00007f9a4d250303  ;*if_icmpge
                  │││                                                ; - com.google.re2j.Unicode::simpleFold@9 (line 207)
                  │││                                                ; - com.google.re2j.Inst::matchRune@33 (line 63)
                  │││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.41%    0.67%  │││  0x00007f9a4d2502a0: mov    %r8d,0x30(%rsp)
  0.71%    0.67%  │││  0x00007f9a4d2502a5: mov    %ebx,%r14d
  0.61%    0.33%  │││  0x00007f9a4d2502a8: mov    %ebx,%r11d
  0.50%    0.40%  │││  0x00007f9a4d2502ab: sub    %r8d,%r11d         ;*isub
                  │││                                                ; - com.google.re2j.Unicode::simpleFold@15 (line 208)
                  │││                                                ; - com.google.re2j.Inst::matchRune@33 (line 63)
                  │││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.37%    0.44%  │││  0x00007f9a4d2502ae: mov    %r11d,%r10d
  0.84%    0.57%  │││  0x00007f9a4d2502b1: sar    $0x1f,%r10d
  0.53%    0.15%  │││  0x00007f9a4d2502b5: shr    $0x1f,%r10d
  0.47%    0.43%  │││  0x00007f9a4d2502b9: add    %r11d,%r10d
  0.51%    0.60%  │││  0x00007f9a4d2502bc: sar    %r10d
  0.86%    0.73%  │││  0x00007f9a4d2502bf: mov    %r8d,%ebx
  0.62%    0.54%  │││  0x00007f9a4d2502c2: add    %r10d,%ebx         ;*idiv
                  │││                                                ; - com.google.re2j.Unicode::simpleFold@17 (line 208)
                  │││                                                ; - com.google.re2j.Inst::matchRune@33 (line 63)
                  │││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.54%    0.55%  │││  0x00007f9a4d2502c5: cmp    $0x3f,%ebx
                  │││  0x00007f9a4d2502c8: jae    0x00007f9a4d250d81
  0.83%    0.79%  │││  0x00007f9a4d2502ce: movslq %r10d,%r10
  0.87%    1.11%  │││  0x00007f9a4d2502d1: movslq 0x30(%rsp),%r11
  0.59%    0.71%  │││  0x00007f9a4d2502d6: add    %r10,%r11
  0.48%    0.66%  │││  0x00007f9a4d2502d9: mov    0x10(%r9,%r11,4),%ebp  ;*aaload
                  │││                                                ; - com.google.re2j.Unicode::simpleFold@24 (line 209)
                  │││                                                ; - com.google.re2j.Inst::matchRune@33 (line 63)
                  │││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.78%    0.64%  │││  0x00007f9a4d2502de: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f9a4d25172d
  1.20%    1.13%  │││  0x00007f9a4d2502e3: test   %r11d,%r11d
                  │││  0x00007f9a4d2502e6: jbe    0x00007f9a4d250dcd  ;*iaload
                  │││                                                ; - com.google.re2j.Unicode::simpleFold@26 (line 209)
                  │││                                                ; - com.google.re2j.Inst::matchRune@33 (line 63)
                  │││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.81%    1.15%  │││  0x00007f9a4d2502ec: mov    0x10(%r12,%rbp,8),%r11d
  0.52%    0.63%  │││  0x00007f9a4d2502f1: cmp    0x20(%rsp),%r11d
                  │╰│  0x00007f9a4d2502f6: jge    0x00007f9a4d250290  ;*if_icmpge
                  │ │                                                ; - com.google.re2j.Unicode::simpleFold@28 (line 209)
                  │ │                                                ; - com.google.re2j.Inst::matchRune@33 (line 63)
                  │ │                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.10%    0.11%  │ │  0x00007f9a4d2502f8: mov    %ebx,%r8d
  0.08%    0.08%  │ │  0x00007f9a4d2502fb: inc    %r8d               ;*iadd
                  │ │                                                ; - com.google.re2j.Unicode::simpleFold@33 (line 210)
                  │ │                                                ; - com.google.re2j.Inst::matchRune@33 (line 63)
                  │ │                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.07%    0.08%  │ │  0x00007f9a4d2502fe: mov    %r14d,%ebx
  0.00%    0.01%  │ ╰  0x00007f9a4d250301: jmp    0x00007f9a4d250295
  0.22%    0.28%  ↘    0x00007f9a4d250303: cmp    $0x3f,%r8d
                       0x00007f9a4d250307: jge    0x00007f9a4d2513b5  ;*if_icmpge
                                                                     ; - com.google.re2j.Unicode::simpleFold@48 (line 215)
                                                                     ; - com.google.re2j.Inst::matchRune@33 (line 63)
                                                                     ; - com.google.re2j.Machine::step@308 (line 306)
                       0x00007f9a4d25030d: cmp    $0x3f,%r8d
                       0x00007f9a4d250311: jae    0x00007f9a4d251081
  0.12%    0.16%       0x00007f9a4d250317: mov    0x10(%r9,%r8,4),%ebp  ;*aaload
                                                                     ; - com.google.re2j.Unicode::simpleFold@55 (line 215)
                                                                     ; - com.google.re2j.Inst::matchRune@33 (line 63)
                                                                     ; - com.google.re2j.Machine::step@308 (line 306)
  0.14%    0.17%       0x00007f9a4d25031c: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f9a4d251821
  0.22%    0.21%       0x00007f9a4d250321: test   %r11d,%r11d
                       0x00007f9a4d250324: jbe    0x00007f9a4d251115
  0.00%                0x00007f9a4d25032a: mov    0x10(%r12,%rbp,8),%ebp  ;*iaload
                                                                     ; - com.google.re2j.Unicode::simpleFold@57 (line 215)
                                                                     ; - com.google.re2j.Inst::matchRune@33 (line 63)
                                                                     ; - com.google.re2j.Machine::step@308 (line 306)
  0.14%    0.16%       0x00007f9a4d25032f: cmp    0x20(%rsp),%ebp
                       0x00007f9a4d250333: je     0x00007f9a4d2513fd  ;*if_icmpne
                                                                     ; - com.google.re2j.Unicode::simpleFold@59 (line 215)
                                                                     ; - com.google.re2j.Inst::matchRune@33 (line 63)
                                                                     ; - com.google.re2j.Machine::step@308 (line 306)
  0.12%    0.20%       0x00007f9a4d250339: mov    0x20(%rsp),%r11d
  0.24%    0.23%       0x00007f9a4d25033e: cmp    $0x7f,%r11d
                       0x00007f9a4d250342: jg     0x00007f9a4d251435  ;*if_icmpgt
                                                                     ; - com.google.re2j.Unicode::toLower@3 (line 177)
                                                                     ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                                                                     ; - com.google.re2j.Inst::matchRune@33 (line 63)
                                                                     ; - com.google.re2j.Machine::step@308 (line 306)
                       0x00007f9a4d250348: cmp    $0x41,%r11d
                       0x00007f9a4d25034c: jl     0x00007f9a4d2512ad  ;*if_icmpgt
                                                                     ; - com.google.re2j.Unicode::toLower@9 (line 178)
                                                                     ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                                                                     ; - com.google.re2j.Inst::matchRune@33 (line 63)
                                                                     ; - com.google.re2j.Machine::step@308 (line 306)
  0.11%    0.19%       0x00007f9a4d250352: cmp    $0x5a,%r11d
                       0x00007f9a4d250356: jg     0x00007f9a4d250368  ;*if_icmpgt
                                                                     ; - com.google.re2j.Unicode::toLower@15 (line 178)
                                                                     ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                                                                     ; - com.google.re2j.Inst::matchRune@33 (line 63)
                                                                     ; - com.google.re2j.Machine::step@308 (line 306)
  0.12%    0.23%       0x00007f9a4d250358: mov    %r11d,%r10d
  0.22%    0.21%       0x00007f9a4d25035b: add    $0x20,%r10d        ;*iinc
                                                                     ; - com.google.re2j.Unicode::toLower@18 (line 179)
                                                                     ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                                                                     ; - com.google.re2j.Inst::matchRune@33 (line 63)
                                                                     ; - com.google.re2j.Machine::step@308 (line 306)
                       0x00007f9a4d25035f: cmp    %r11d,%r10d
                       0x00007f9a4d250362: jne    0x00007f9a4d250745  ;*if_icmpeq
                                                                     ; - com.google.re2j.Unicode::simpleFold@77 (line 224)
                                                                     ; - com.google.re2j.Inst::matchRune@33 (line 63)
                                                                     ; - com.google.re2j.Machine::step@308 (line 306)
                       0x00007f9a4d250368: cmp    $0x61,%r11d
....................................................................................................
 17.52%   17.82%  <total for region 3>

....[Hottest Region 4]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 546 (305 bytes) 

                                                                    ;*invokespecial add
                                                                    ; - com.google.re2j.Machine::step@394 (line 325)
                                                                    ;   {optimized virtual_call}
                      0x00007f9a4d24ff80: test   %rax,%rax
                      0x00007f9a4d24ff83: je     0x00007f9a4d25081b
                      0x00007f9a4d24ff89: mov    %rax,0x50(%rsp)
                      0x00007f9a4d24ff8e: mov    0x20(%rsp),%ecx
                      0x00007f9a4d24ff92: mov    0xa4(%rsp),%r8d
                      0x00007f9a4d24ff9a: mov    0xac(%rsp),%r14d   ;*aload
                                                                    ; - com.google.re2j.Machine::step@399 (line 327)
  0.10%    0.10%      0x00007f9a4d24ffa2: mov    0x28(%rsp),%r10
                      0x00007f9a4d24ffa7: mov    0x20(%r10),%ebp    ;*getfield pool
                                                                    ; - com.google.re2j.Machine::step@405 (line 329)
  0.00%               0x00007f9a4d24ffab: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f9a4d2516fd
  0.37%    0.32%      0x00007f9a4d24ffb0: cmp    $0xf8002f22,%r11d  ;   {metadata(&apos;java/util/ArrayList&apos;)}
                      0x00007f9a4d24ffb7: jne    0x00007f9a4d250d01
  0.12%    0.15%      0x00007f9a4d24ffbd: lea    (%r12,%rbp,8),%rbx  ;*invokeinterface add
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
                      0x00007f9a4d24ffc1: mov    0x14(%rbx),%edx    ;*getfield elementData
                                                                    ; - java.util.ArrayList::ensureCapacityInternal@1 (line 223)
                                                                    ; - java.util.ArrayList::add@7 (line 458)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
                      0x00007f9a4d24ffc4: mov    0x10(%rbx),%ebp    ;*getfield size
                                                                    ; - java.util.ArrayList::add@2 (line 458)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
  0.30%    0.26%      0x00007f9a4d24ffc7: mov    %ebp,%r9d
  0.11%    0.12%      0x00007f9a4d24ffca: inc    %r9d               ;*iadd
                                                                    ; - java.util.ArrayList::add@6 (line 458)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
                      0x00007f9a4d24ffcd: cmp    $0xed9f0db7,%edx   ;   {oop(a &apos;java/lang/Object&apos;[0] )}
                      0x00007f9a4d24ffd3: je     0x00007f9a4d250ae8  ;*if_acmpne
                                                                    ; - java.util.ArrayList::ensureCapacityInternal@7 (line 223)
                                                                    ; - java.util.ArrayList::add@7 (line 458)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
                      0x00007f9a4d24ffd9: mov    %r9d,%esi          ;*aload_0
                                                                    ; - java.util.ArrayList::ensureCapacityInternal@17 (line 227)
                                                                    ; - java.util.ArrayList::add@7 (line 458)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
  0.32%    0.36%      0x00007f9a4d24ffdc: mov    0xc(%rbx),%r11d    ;*getfield modCount
                                                                    ; - java.util.ArrayList::ensureExplicitCapacity@2 (line 231)
                                                                    ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                                    ; - java.util.ArrayList::add@7 (line 458)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
  0.12%    0.09%      0x00007f9a4d24ffe0: inc    %r11d
  0.00%               0x00007f9a4d24ffe3: mov    %r11d,0xc(%rbx)    ;*putfield modCount
                                                                    ; - java.util.ArrayList::ensureExplicitCapacity@7 (line 231)
                                                                    ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                                    ; - java.util.ArrayList::add@7 (line 458)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
                      0x00007f9a4d24ffe7: mov    0xc(%r12,%rdx,8),%r11d  ;*arraylength
                                                                    ; - java.util.ArrayList::ensureExplicitCapacity@15 (line 234)
                                                                    ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                                    ; - java.util.ArrayList::add@7 (line 458)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
                                                                    ; implicit exception: dispatches to 0x00007f9a4d25170d
  0.27%    0.30%      0x00007f9a4d24ffec: mov    %esi,%r10d
  0.17%    0.08%      0x00007f9a4d24ffef: sub    %r11d,%r10d
  0.01%               0x00007f9a4d24fff2: test   %r10d,%r10d
                      0x00007f9a4d24fff5: jg     0x00007f9a4d25083b  ;*ifle
                                                                    ; - java.util.ArrayList::ensureExplicitCapacity@17 (line 234)
                                                                    ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                                    ; - java.util.ArrayList::add@7 (line 458)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
  0.00%               0x00007f9a4d24fffb: mov    %rdx,%r11
  0.32%    0.25%      0x00007f9a4d24fffe: shl    $0x3,%r11          ;*return
                                                                    ; - java.util.ArrayList::ensureExplicitCapacity@25 (line 236)
                                                                    ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                                    ; - java.util.ArrayList::add@7 (line 458)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
  0.13%    0.06%      0x00007f9a4d250002: mov    %r9d,0x10(%rbx)    ;*putfield size
                                                                    ; - java.util.ArrayList::add@22 (line 459)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
                      0x00007f9a4d250006: mov    0xc(%r11),%r10d    ; implicit exception: dispatches to 0x00007f9a4d25171d
           0.00%      0x00007f9a4d25000a: cmp    %r10d,%ebp
                      0x00007f9a4d25000d: jae    0x00007f9a4d250cbd
  0.32%    0.24%      0x00007f9a4d250013: mov    0x8(%r11),%r10d
  0.13%    0.04%      0x00007f9a4d250017: cmp    $0xf80022f5,%r10d  ;   {metadata(&apos;java/lang/Object&apos;[])}
                      0x00007f9a4d25001e: jne    0x00007f9a4d250d3d
                      0x00007f9a4d250024: lea    0x10(%r11,%rbp,4),%r10
  0.00%               0x00007f9a4d250029: mov    0x50(%rsp),%r11
  0.30%    0.19%      0x00007f9a4d25002e: shr    $0x3,%r11
  0.09%    0.06%      0x00007f9a4d250032: mov    %r11d,(%r10)
  0.01%               0x00007f9a4d250035: shr    $0x9,%r10
                      0x00007f9a4d250039: movabs $0x7f9a5e733000,%r11
  0.28%    0.14%      0x00007f9a4d250043: mov    %r12b,(%r11,%r10,1)  ;*aastore
                                                                    ; - java.util.ArrayList::add@26 (line 459)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
  0.11%    0.15%      0x00007f9a4d250047: xor    %r11d,%r11d        ; OopMap{[8]=Oop [24]=Oop [40]=Oop off=426}
                                                                    ;*goto
                                                                    ; - com.google.re2j.Machine::step@419 (line 264)
  0.06%    0.03%   ↗  0x00007f9a4d25004a: test   %eax,0x18adafb0(%rip)        # 0x00007f9a65d2b000
                   │                                                ;*goto
                   │                                                ; - com.google.re2j.Machine::step@419 (line 264)
                   │                                                ;   {poll}
  0.10%    0.09%   │  0x00007f9a4d250050: mov    0x8(%rsp),%r10
  0.43%    0.30%   │  0x00007f9a4d250055: mov    0xc(%r10),%r11d
  0.23%    0.25%   │  0x00007f9a4d250059: cmp    %r11d,%r14d
                   │  0x00007f9a4d25005c: jge    0x00007f9a4d250275
  0.07%    0.03%   │  0x00007f9a4d250062: mov    %ecx,0x20(%rsp)
  0.07%    0.09%   │  0x00007f9a4d250066: mov    %r14d,%r8d         ;*aload_1
                   │                                                ; - com.google.re2j.Machine::step@21 (line 265)
  0.49%    0.35%   │  0x00007f9a4d250069: mov    0x8(%rsp),%r10
  0.24%    0.20%   │  0x00007f9a4d25006e: mov    0x10(%r10),%r11d   ;*getfield dense
                   │                                                ; - com.google.re2j.Machine::step@22 (line 265)
  0.19%    0.22%   │  0x00007f9a4d250072: mov    0xc(%r12,%r11,8),%r10d  ; implicit exception: dispatches to 0x00007f9a4d2516a5
  0.40%    0.28%   │  0x00007f9a4d250077: cmp    %r10d,%r8d
                   │  0x00007f9a4d25007a: jae    0x00007f9a4d250b9d
  0.47%    0.39%   │  0x00007f9a4d250080: lea    (%r12,%r11,8),%r10
  0.21%    0.18%   │  0x00007f9a4d250084: mov    0x10(%r10,%r8,4),%r9d  ;*aaload
                   │                                                ; - com.google.re2j.Machine::step@27 (line 265)
  0.10%    0.11%   │  0x00007f9a4d250089: mov    0x10(%r12,%r9,8),%r11d  ;*getfield thread
                   │                                                ; - com.google.re2j.Machine::step@40 (line 269)
                   │                                                ; implicit exception: dispatches to 0x00007f9a4d25173d
  0.58%    0.54%   │  0x00007f9a4d25008e: mov    %r8d,%r14d
  0.39%    0.67%   │  0x00007f9a4d250091: inc    %r14d              ;*iadd
                   │                                                ; - com.google.re2j.Machine::step@241 (line 293)
  0.19%    0.17%   │  0x00007f9a4d250094: test   %r11d,%r11d
                  ╭│  0x00007f9a4d250097: jne    0x00007f9a4d2500a4  ;*ifnonnull
                  ││                                                ; - com.google.re2j.Machine::step@47 (line 270)
  0.13%    0.05%  ││  0x00007f9a4d250099: mov    0x24(%rsp),%r11d
  0.06%    0.08%  ││  0x00007f9a4d25009e: mov    0x20(%rsp),%ecx
  0.12%    0.04%  │╰  0x00007f9a4d2500a2: jmp    0x00007f9a4d25004a
  0.11%    0.20%  ↘   0x00007f9a4d2500a4: mov    0x24(%rsp),%r9d
  0.01%    0.01%      0x00007f9a4d2500a9: test   %r9d,%r9d
                      0x00007f9a4d2500ac: jne    0x00007f9a4d250f85  ;*ifeq
                                                                    ; - com.google.re2j.Machine::step@55 (line 273)
  0.25%    0.41%      0x00007f9a4d2500b2: mov    0x10(%r12,%r11,8),%r10d  ;*getfield inst
                                                                    ; - com.google.re2j.Machine::step@107 (line 278)
  0.69%    1.11%      0x00007f9a4d2500b7: mov    0xc(%r12,%r10,8),%esi  ;*getfield op
                                                                    ; - com.google.re2j.Machine::step@117 (line 280)
                                                                    ; implicit exception: dispatches to 0x00007f9a4d2516ed
  2.04%    2.80%      0x00007f9a4d2500bc: mov    0x18(%r12,%r10,8),%ecx  ;*getfield runes
                                                                    ; - com.google.re2j.Machine::step@320 (line 310)
  0.03%    0.07%      0x00007f9a4d2500c1: mov    0xc(%r12,%r11,8),%edi  ;*getfield cap
                                                                    ; - com.google.re2j.Machine::step@176 (line 287)
  0.02%    0.02%      0x00007f9a4d2500c6: lea    (%r12,%r11,8),%r9  ;*getfield thread
                                                                    ; - com.google.re2j.Machine::step@40 (line 269)
  0.00%               0x00007f9a4d2500ca: cmp    $0x9,%esi
                      0x00007f9a4d2500cd: je     0x00007f9a4d24ff10
  0.45%    0.51%      0x00007f9a4d2500d3: cmp    $0x9,%esi
                      0x00007f9a4d2500d6: jle    0x00007f9a4d250108
                      0x00007f9a4d2500d8: cmp    $0xb,%esi
                      0x00007f9a4d2500db: jne    0x00007f9a4d24ff35  ;*tableswitch
                                                                    ; - com.google.re2j.Machine::step@120 (line 280)
                      0x00007f9a4d2500e1: mov    0x20(%rsp),%ecx
                      0x00007f9a4d2500e5: cmp    $0xa,%ecx
                      0x00007f9a4d2500e8: je     0x00007f9a4d24ff2e  ;*if_icmpeq
                                                                    ; - com.google.re2j.Machine::step@348 (line 318)
                      0x00007f9a4d2500ee: mov    %r8d,0xa4(%rsp)
                      0x00007f9a4d2500f6: mov    %r14d,0xac(%rsp)
....................................................................................................
 11.76%   12.09%  <total for region 4>

....[Hottest Region 5]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 538 (382 bytes) 

                          0x00007f9a4d23df45: mov    %r10,(%rsp)
                          0x00007f9a4d23df49: xchg   %ax,%ax
                          0x00007f9a4d23df4b: callq  0x00007f9a4d046020  ; OopMap{off=1168}
                                                                        ;*invokespecial add
                                                                        ; - com.google.re2j.Machine::add@203 (line 369)
                                                                        ;   {optimized virtual_call}
                  ╭       0x00007f9a4d23df50: jmpq   0x00007f9a4d23e0c6
                  │       0x00007f9a4d23df55: mov    0x70(%rsp),%rax
                  │╭      0x00007f9a4d23df5a: jmpq   0x00007f9a4d23e0c6  ;*tableswitch
                  ││                                                    ; - com.google.re2j.Machine::add@40 (line 349)
  1.31%    1.26%  ││      0x00007f9a4d23df5f: mov    0x1c(%rsp),%r8d
           0.01%  ││      0x00007f9a4d23df64: mov    0x20(%rsp),%r9
  0.00%           ││      0x00007f9a4d23df69: mov    0x28(%rsp),%edi
                  ││      0x00007f9a4d23df6d: mov    0x70(%rsp),%r10
  0.37%    0.40%  ││      0x00007f9a4d23df72: mov    %r10,(%rsp)
                  ││      0x00007f9a4d23df76: mov    %rsi,%rbp
  0.01%    0.00%  ││      0x00007f9a4d23df79: xchg   %ax,%ax
                  ││      0x00007f9a4d23df7b: callq  0x00007f9a4d046020  ; OopMap{rbp=Oop [32]=Oop [56]=Oop [64]=Oop off=1216}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@127 (line 358)
                  ││                                                    ;   {optimized virtual_call}
  0.00%           ││      0x00007f9a4d23df80: mov    0x38(%rsp),%r10
  0.07%    0.07%  ││      0x00007f9a4d23df85: mov    0x14(%r10),%ecx    ;*getfield arg
                  ││                                                    ; - com.google.re2j.Machine::add@136 (line 359)
  0.30%    0.35%  ││      0x00007f9a4d23df89: mov    %rbp,%rsi
  0.01%           ││      0x00007f9a4d23df8c: mov    0x40(%rsp),%rdx
           0.00%  ││      0x00007f9a4d23df91: mov    0x1c(%rsp),%r8d
  0.08%    0.11%  ││      0x00007f9a4d23df96: mov    0x20(%rsp),%r9
  0.30%    0.27%  ││      0x00007f9a4d23df9b: mov    0x28(%rsp),%edi
  0.00%    0.00%  ││      0x00007f9a4d23df9f: mov    %rax,(%rsp)
  0.00%           ││      0x00007f9a4d23dfa3: callq  0x00007f9a4d046020  ; OopMap{off=1256}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@146 (line 359)
                  ││                                                    ;   {optimized virtual_call}
  0.00%    0.00%  ││╭     0x00007f9a4d23dfa8: jmpq   0x00007f9a4d23e0c6  ;*aload
                  │││                                                   ; - com.google.re2j.Machine::add@293 (line 388)
  1.58%    1.73%  │││     0x00007f9a4d23dfad: mov    0x38(%rsp),%r10
                  │││     0x00007f9a4d23dfb2: mov    %r10,%r11
  0.00%    0.01%  │││     0x00007f9a4d23dfb5: shr    $0x3,%r11          ;*putfield inst
                  │││                                                   ; - com.google.re2j.Machine::alloc@47 (line 151)
                  │││                                                   ; - com.google.re2j.Machine::add@301 (line 389)
  0.01%    0.00%  │││     0x00007f9a4d23dfb9: mov    0x70(%rsp),%r13
  0.47%    0.30%  │││     0x00007f9a4d23dfbe: test   %r13,%r13
                  │││╭    0x00007f9a4d23dfc1: jne    0x00007f9a4d23e0d2  ;*ifnonnull
                  ││││                                                  ; - com.google.re2j.Machine::add@295 (line 388)
  0.00%           ││││    0x00007f9a4d23dfc7: mov    0x20(%rsi),%ebp    ;*getfield pool
                  ││││                                                  ; - com.google.re2j.Machine::alloc@1 (line 147)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 389)
  0.02%           ││││    0x00007f9a4d23dfca: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007f9a4d23e2fd
  0.00%           ││││    0x00007f9a4d23dfcf: cmp    $0xf8002f22,%r8d   ;   {metadata(&apos;java/util/ArrayList&apos;)}
                  ││││    0x00007f9a4d23dfd6: jne    0x00007f9a4d23e135
  0.49%    0.35%  ││││    0x00007f9a4d23dfdc: lea    (%r12,%rbp,8),%r9  ;*invokeinterface size
                  ││││                                                  ; - com.google.re2j.Machine::alloc@4 (line 147)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 389)
  0.00%           ││││    0x00007f9a4d23dfe0: mov    0x10(%r9),%ecx     ;*getfield size
                  ││││                                                  ; - java.util.ArrayList::size@1 (line 278)
                  ││││                                                  ; - com.google.re2j.Machine::alloc@4 (line 147)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 389)
  0.02%           ││││    0x00007f9a4d23dfe4: test   %ecx,%ecx
                  ││││    0x00007f9a4d23dfe6: jle    0x00007f9a4d23e195  ;*ifle
                  ││││                                                  ; - com.google.re2j.Machine::alloc@11 (line 148)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 389)
                  ││││    0x00007f9a4d23dfec: mov    %ecx,%r8d
  0.43%    0.22%  ││││    0x00007f9a4d23dfef: dec    %r8d               ;*isub
                  ││││                                                  ; - com.google.re2j.Machine::alloc@20 (line 148)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 389)
                  ││││    0x00007f9a4d23dff2: cmp    %ecx,%r8d
                  ││││    0x00007f9a4d23dff5: jge    0x00007f9a4d23e1bd  ;*if_icmplt
                  ││││                                                  ; - java.util.ArrayList::rangeCheck@5 (line 652)
                  ││││                                                  ; - java.util.ArrayList::remove@2 (line 492)
                  ││││                                                  ; - com.google.re2j.Machine::alloc@21 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 389)
           0.02%  ││││    0x00007f9a4d23dffb: incl   0xc(%r9)           ;*putfield modCount
                  ││││                                                  ; - java.util.ArrayList::remove@12 (line 494)
                  ││││                                                  ; - com.google.re2j.Machine::alloc@21 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 389)
  0.40%    0.24%  ││││    0x00007f9a4d23dfff: mov    0x14(%r9),%ebp     ;*getfield elementData
                  ││││                                                  ; - java.util.ArrayList::elementData@1 (line 418)
                  ││││                                                  ; - java.util.ArrayList::remove@17 (line 495)
                  ││││                                                  ; - com.google.re2j.Machine::alloc@21 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 389)
  0.00%           ││││    0x00007f9a4d23e003: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f9a4d23e30d
                  ││││    0x00007f9a4d23e008: cmp    %r10d,%r8d
                  ││││    0x00007f9a4d23e00b: jae    0x00007f9a4d23e10e  ;*aaload
                  ││││                                                  ; - java.util.ArrayList::elementData@5 (line 418)
                  ││││                                                  ; - java.util.ArrayList::remove@17 (line 495)
                  ││││                                                  ; - com.google.re2j.Machine::alloc@21 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 389)
  0.34%    0.23%  ││││    0x00007f9a4d23e011: mov    %r8d,0x10(%r9)     ;*putfield size
                  ││││                                                  ; - java.util.ArrayList::remove@62 (line 501)
                  ││││                                                  ; - com.google.re2j.Machine::alloc@21 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 389)
                  ││││    0x00007f9a4d23e015: lea    (%r12,%rbp,8),%r10
  0.00%    0.00%  ││││    0x00007f9a4d23e019: mov    0xc(%r10,%rcx,4),%ebp  ;*aaload
                  ││││                                                  ; - java.util.ArrayList::elementData@5 (line 418)
                  ││││                                                  ; - java.util.ArrayList::remove@17 (line 495)
                  ││││                                                  ; - com.google.re2j.Machine::alloc@21 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 389)
           0.00%  ││││    0x00007f9a4d23e01e: mov    %r12d,0xc(%r10,%rcx,4)  ;*aastore
                  ││││                                                  ; - java.util.ArrayList::remove@66 (line 501)
                  ││││                                                  ; - com.google.re2j.Machine::alloc@21 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 389)
  0.43%    0.23%  ││││    0x00007f9a4d23e023: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007f9a4d23e321
                  ││││    0x00007f9a4d23e028: cmp    $0xf8019b16,%r8d   ;   {metadata(&apos;com/google/re2j/Machine$Thread&apos;)}
                  ││││    0x00007f9a4d23e02f: jne    0x00007f9a4d23e235
  0.02%    0.02%  ││││    0x00007f9a4d23e035: lea    (%r12,%rbp,8),%r13  ;*checkcast
                  ││││                                                  ; - com.google.re2j.Machine::alloc@26 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 389)
                  ││││    0x00007f9a4d23e039: mov    %r11d,0x10(%r13)
  0.52%    0.51%  ││││    0x00007f9a4d23e03d: mov    %r13,%r10
                  ││││    0x00007f9a4d23e040: shr    $0x9,%r10
  0.01%    0.00%  ││││    0x00007f9a4d23e044: movabs $0x7f9a5e733000,%r11
  0.01%    0.00%  ││││    0x00007f9a4d23e04e: mov    %r12b,(%r11,%r10,1)  ;*aload
                  ││││                                                  ; - com.google.re2j.Machine::add@316 (line 393)
  0.40%    0.30%  ││││ ↗  0x00007f9a4d23e052: mov    0x20(%rsp),%rdi
  0.02%           ││││ │  0x00007f9a4d23e057: mov    0xc(%rdi),%r10d    ;*arraylength
                  ││││ │                                                ; - com.google.re2j.Machine::add@318 (line 393)
                  ││││ │                                                ; implicit exception: dispatches to 0x00007f9a4d23e2ed
           0.02%  ││││ │  0x00007f9a4d23e05b: test   %r10d,%r10d
                  ││││ │  0x00007f9a4d23e05e: jle    0x00007f9a4d23e172  ;*ifle
                  ││││ │                                                ; - com.google.re2j.Machine::add@319 (line 393)
                  ││││ │  0x00007f9a4d23e064: mov    0xc(%r13),%r11d    ;*getfield cap
                  ││││ │                                                ; - com.google.re2j.Machine::add@324 (line 393)
  0.46%    0.18%  ││││ │  0x00007f9a4d23e068: lea    (%r12,%rbx,8),%rbp  ;*aaload
                  ││││ │                                                ; - com.google.re2j.Machine$Queue::add@24 (line 61)
                  ││││ │                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.01%    0.00%  ││││ │  0x00007f9a4d23e06c: mov    %r11,%r8
  0.00%    0.00%  ││││ │  0x00007f9a4d23e06f: shl    $0x3,%r8
  0.00%           ││││ │  0x00007f9a4d23e073: cmp    %rdi,%r8
                  ││││╭│  0x00007f9a4d23e076: je     0x00007f9a4d23e0a3  ;*if_acmpeq
                  ││││││                                                ; - com.google.re2j.Machine::add@329 (line 393)
  0.41%    0.13%  ││││││  0x00007f9a4d23e078: mov    0xc(%r12,%r11,8),%r8d  ; implicit exception: dispatches to 0x00007f9a4d23e339
  0.00%           ││││││  0x00007f9a4d23e07d: lea    (%r12,%r11,8),%rcx  ;*getfield cap
                  ││││││                                                ; - com.google.re2j.Machine::add@324 (line 393)
  0.01%    0.04%  ││││││  0x00007f9a4d23e081: cmp    %r10d,%r8d
                  ││││││  0x00007f9a4d23e084: jb     0x00007f9a4d23e149
  0.03%    0.01%  ││││││  0x00007f9a4d23e08a: lea    0x10(%r12,%r11,8),%rsi
  0.46%    0.29%  ││││││  0x00007f9a4d23e08f: add    $0x10,%rdi
                  ││││││  0x00007f9a4d23e093: movslq %r10d,%rdx
  0.02%    0.03%  ││││││  0x00007f9a4d23e096: movabs $0x7f9a4d052640,%r10
  0.00%    0.02%  ││││││  0x00007f9a4d23e0a0: callq  *%r10              ;*aload
                  ││││││                                                ; - com.google.re2j.Machine::add@347 (line 396)
                  ││││↘│  0x00007f9a4d23e0a3: mov    %rbp,%r10
  0.02%    0.01%  ││││ │  0x00007f9a4d23e0a6: mov    %r13,%r8
  0.01%    0.02%  ││││ │  0x00007f9a4d23e0a9: shr    $0x3,%r8
  0.35%    0.56%  ││││ │  0x00007f9a4d23e0ad: mov    %r8d,0x10(%r12,%rbx,8)
                  ││││ │  0x00007f9a4d23e0b2: shr    $0x9,%r10
  0.02%    0.03%  ││││ │  0x00007f9a4d23e0b6: movabs $0x7f9a5e733000,%r11
           0.01%  ││││ │  0x00007f9a4d23e0c0: mov    %r12b,(%r11,%r10,1)  ;*putfield thread
                  ││││ │                                                ; - com.google.re2j.Machine::add@351 (line 396)
  0.43%    0.67%  ││││ │  0x00007f9a4d23e0c4: xor    %eax,%eax          ;*synchronization entry
                  ││││ │                                                ; - com.google.re2j.Machine::add@-1 (line 341)
  0.31%    0.30%  ↘↘↘│ │  0x00007f9a4d23e0c6: add    $0x60,%rsp
  0.04%    0.05%     │ │  0x00007f9a4d23e0ca: pop    %rbp
  0.40%    0.48%     │ │  0x00007f9a4d23e0cb: test   %eax,0x18aecf2f(%rip)        # 0x00007f9a65d2b000
                     │ │                                                ;   {poll_return}
  0.33%    0.39%     │ │  0x00007f9a4d23e0d1: retq   
                     ↘ │  0x00007f9a4d23e0d2: mov    %r11d,0x10(%r13)
                       │  0x00007f9a4d23e0d6: mov    %r13,%r10
                       │  0x00007f9a4d23e0d9: shr    $0x9,%r10
  0.02%                │  0x00007f9a4d23e0dd: movabs $0x7f9a5e733000,%r11
                       │  0x00007f9a4d23e0e7: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                       │                                                ; - com.google.re2j.Machine::add@313 (line 391)
                       ╰  0x00007f9a4d23e0eb: jmpq   0x00007f9a4d23e052  ;*tableswitch
                                                                        ; - com.google.re2j.Machine::add@40 (line 349)
                          0x00007f9a4d23e0f0: mov    0x1c(%rsp),%r8d
                          0x00007f9a4d23e0f5: mov    0x20(%rsp),%r9
                          0x00007f9a4d23e0fa: mov    %r10d,%edi
                          0x00007f9a4d23e0fd: mov    0x70(%rsp),%r10
                          0x00007f9a4d23e102: mov    %r10,(%rsp)
                          0x00007f9a4d23e106: nop
....................................................................................................
 11.04%    9.93%  <total for region 5>

....[Hottest Regions]...............................................................................
 22.91%   26.70%         C2, level 4  com.google.re2j.Machine::step, version 546 (385 bytes) 
 19.88%   18.15%         C2, level 4  com.google.re2j.Machine::add, version 538 (351 bytes) 
 17.52%   17.82%         C2, level 4  com.google.re2j.Machine::step, version 546 (221 bytes) 
 11.76%   12.09%         C2, level 4  com.google.re2j.Machine::step, version 546 (305 bytes) 
 11.04%    9.93%         C2, level 4  com.google.re2j.Machine::add, version 538 (382 bytes) 
  4.90%    5.22%         C2, level 4  com.google.re2j.Machine::step, version 546 (151 bytes) 
  3.51%    3.92%         C2, level 4  com.google.re2j.Machine::match, version 587 (725 bytes) 
  3.16%    1.65%        runtime stub  StubRoutines::jint_disjoint_arraycopy (128 bytes) 
  0.61%    0.53%         C2, level 4  com.google.re2j.Machine::step, version 546 (75 bytes) 
  0.59%    0.36%         C2, level 4  com.google.re2j.Machine::step, version 546 (75 bytes) 
  0.44%    0.34%         C2, level 4  com.google.re2j.Machine::step, version 546 (19 bytes) 
  0.37%    0.37%         C2, level 4  com.google.re2j.Machine::match, version 587 (117 bytes) 
  0.27%    0.25%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.16%    0.04%         C2, level 4  com.google.re2j.Machine::init, version 598 (139 bytes) 
  0.11%    0.04%   [kernel.kallsyms]  [unknown] (1 bytes) 
  0.09%    0.01%   [kernel.kallsyms]  [unknown] (22 bytes) 
  0.08%    0.00%   [kernel.kallsyms]  [unknown] (45 bytes) 
  0.07%    0.01%   [kernel.kallsyms]  [unknown] (7 bytes) 
  0.06%    0.16%           libjvm.so  RelocIterator::initialize (93 bytes) 
  0.05%    0.03%   [kernel.kallsyms]  [unknown] (27 bytes) 
  2.42%    2.35%  <...other 534 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 58.76%   63.08%         C2, level 4  com.google.re2j.Machine::step, version 546 
 30.92%   28.08%         C2, level 4  com.google.re2j.Machine::add, version 538 
  3.90%    4.30%         C2, level 4  com.google.re2j.Machine::match, version 587 
  3.16%    1.65%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
  1.53%    1.14%   [kernel.kallsyms]  [unknown] 
  0.25%    0.07%         C2, level 4  com.google.re2j.Machine::init, version 598 
  0.11%    0.03%         C2, level 4  com.google.re2j.Matcher::find, version 606 
  0.06%    0.02%           libjvm.so  GenericTaskQueueSet<OverflowTaskQueue<StarTask, (MemoryType)1, 131072u>, (MemoryType)1>::steal_best_of_2 
  0.06%    0.16%           libjvm.so  RelocIterator::initialize 
  0.05%    0.04%      hsdis-amd64.so  [unknown] 
  0.04%    0.04%        libc-2.26.so  __strlen_avx2 
  0.04%    0.11%        libc-2.26.so  vfprintf 
  0.03%    0.04%           libjvm.so  fileStream::write 
  0.03%           libpthread-2.26.so  __libc_write 
  0.03%    0.05%           libjvm.so  xmlTextStream::write 
  0.03%    0.01%         C2, level 4  com.github.arnaudroger.re2j.Re2jFindRegex::testExp2, version 624 
  0.03%    0.01%         C2, level 4  java.util.Collections::shuffle, version 623 
  0.02%    0.03%        libc-2.26.so  __strchr_avx2 
  0.02%    0.09%        libc-2.26.so  _IO_fwrite 
  0.02%    0.01%        libc-2.26.so  _IO_default_xsputn 
  0.88%    0.55%  <...other 125 warm methods...>
....................................................................................................
100.00%   99.54%  <totals>

....[Distribution by Source]........................................................................
 94.02%   95.60%         C2, level 4
  3.16%    1.65%        runtime stub
  1.53%    1.14%   [kernel.kallsyms]
  0.75%    0.99%           libjvm.so
  0.28%    0.46%        libc-2.26.so
  0.11%    0.05%  libpthread-2.26.so
  0.05%    0.03%         interpreter
  0.05%    0.04%      hsdis-amd64.so
  0.03%    0.00%         C1, level 3
  0.02%    0.01%              [vdso]
  0.00%               perf-19128.map
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:44

Benchmark                     Mode  Cnt     Score    Error  Units
Re2jFindRegex.testExp2       thrpt   20  3164.461 ± 45.737  ops/s
Re2jFindRegex.testExp2:·asm  thrpt            NaN             ---
