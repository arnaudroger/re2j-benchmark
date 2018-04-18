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
# Warmup Iteration   1: 1369.601 ops/s
# Warmup Iteration   2: 2547.487 ops/s
# Warmup Iteration   3: 2582.838 ops/s
# Warmup Iteration   4: 2583.078 ops/s
# Warmup Iteration   5: 2584.354 ops/s
# Warmup Iteration   6: 2580.400 ops/s
# Warmup Iteration   7: 2582.382 ops/s
# Warmup Iteration   8: 2575.290 ops/s
# Warmup Iteration   9: 1957.902 ops/s
# Warmup Iteration  10: 2546.798 ops/s
# Warmup Iteration  11: 2502.078 ops/s
# Warmup Iteration  12: 2568.201 ops/s
# Warmup Iteration  13: 2567.919 ops/s
# Warmup Iteration  14: 2567.953 ops/s
# Warmup Iteration  15: 2568.254 ops/s
# Warmup Iteration  16: 2567.809 ops/s
# Warmup Iteration  17: 2588.345 ops/s
# Warmup Iteration  18: 2579.200 ops/s
# Warmup Iteration  19: 2574.177 ops/s
# Warmup Iteration  20: 2573.774 ops/s
Iteration   1: 2574.073 ops/s
Iteration   2: 2574.502 ops/s
Iteration   3: 2574.714 ops/s
Iteration   4: 2574.147 ops/s
Iteration   5: 2586.616 ops/s
Iteration   6: 2602.418 ops/s
Iteration   7: 2612.585 ops/s
Iteration   8: 2609.117 ops/s
Iteration   9: 2613.934 ops/s
Iteration  10: 2614.057 ops/s
Iteration  11: 2614.096 ops/s
Iteration  12: 2613.591 ops/s
Iteration  13: 2613.871 ops/s
Iteration  14: 2614.654 ops/s
Iteration  15: 2561.799 ops/s
Iteration  16: 2451.594 ops/s
Iteration  17: 2277.669 ops/s
Iteration  18: 2605.688 ops/s
Iteration  19: 2605.450 ops/s
Iteration  20: 2605.914 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  2575.024 ±(99.9%) 68.791 ops/s [Average]
  (min, avg, max) = (2277.669, 2575.024, 2614.654), stdev = 79.220
  CI (99.9%): [2506.233, 2643.816] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2:·asm":
PrintAssembly processed: 194917 total address lines.
Perf output processed (skipped 23.282 seconds):
 Column 1: cycles (20674 events)
 Column 2: instructions (20658 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 503 (307 bytes) 

                                                                        ; - com.google.re2j.Machine::step@293 (line 300)
                          0x00007fe77921ff1e: mov    0x28(%rsp),%r10
                          0x00007fe77921ff23: movb   $0x1,0xc(%r10)     ;*putfield matched
                                                                        ; - com.google.re2j.Machine::step@298 (line 302)
                          0x00007fe77921ff28: mov    0x20(%rsp),%ecx
                          0x00007fe77921ff2c: jmpq   0x00007fe77921f9ac
                          0x00007fe77921ff31: mov    %r8d,0x84(%rsp)
                          0x00007fe77921ff39: mov    %r14d,0x8c(%rsp)
                          0x00007fe77921ff41: mov    %r9,%r13
                          0x00007fe77921ff44: jmpq   0x00007fe77921f9f5
  0.27%    0.30%     ↗    0x00007fe77921ff49: cmp    $0x3f,%r8d
                     │    0x00007fe77921ff4d: jge    0x00007fe779220829  ;*if_icmpge
                     │                                                  ; - com.google.re2j.Unicode::simpleFold@48 (line 215)
                     │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 57)
                     │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
           0.00%     │    0x00007fe77921ff53: cmp    $0x3f,%r8d
                     │    0x00007fe77921ff57: jae    0x00007fe779220671
  0.00%    0.01%     │    0x00007fe77921ff5d: mov    0x10(%r9,%r8,4),%ebp  ;*aaload
                     │                                                  ; - com.google.re2j.Unicode::simpleFold@55 (line 215)
                     │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 57)
                     │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
  0.21%    0.19%     │    0x00007fe77921ff62: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007fe779220e09
  0.25%    0.30%     │    0x00007fe77921ff67: test   %r11d,%r11d
                     │    0x00007fe77921ff6a: jbe    0x00007fe7792206c1
  0.00%              │    0x00007fe77921ff70: mov    0x10(%r12,%rbp,8),%ebp  ;*iaload
                     │                                                  ; - com.google.re2j.Unicode::simpleFold@57 (line 215)
                     │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 57)
                     │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
                     │    0x00007fe77921ff75: cmp    %r14d,%ebp
                     │    0x00007fe77921ff78: je     0x00007fe779220879  ;*if_icmpne
                     │                                                  ; - com.google.re2j.Unicode::simpleFold@59 (line 215)
                     │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 57)
                     │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
  0.19%    0.18%     │    0x00007fe77921ff7e: mov    %r14d,%r8d
  0.24%    0.32%     │    0x00007fe77921ff81: cmp    $0x7f,%r8d
                     │    0x00007fe77921ff85: jg     0x00007fe7792208c5  ;*if_icmpgt
                     │                                                  ; - com.google.re2j.Unicode::toLower@3 (line 177)
                     │                                                  ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                     │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 57)
                     │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
                     │    0x00007fe77921ff8b: cmp    $0x41,%r8d
                     │    0x00007fe77921ff8f: jl     0x00007fe7792207d9  ;*if_icmpgt
                     │                                                  ; - com.google.re2j.Unicode::toLower@9 (line 178)
                     │                                                  ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                     │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 57)
                     │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
  0.01%              │    0x00007fe77921ff95: cmp    $0x5a,%r8d
                  ╭  │    0x00007fe77921ff99: jg     0x00007fe77921ffa7  ;*if_icmpgt
                  │  │                                                  ; - com.google.re2j.Unicode::toLower@15 (line 178)
                  │  │                                                  ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                  │  │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  │  │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
                  │  │    0x00007fe77921ff9b: mov    %r8d,%r10d
                  │  │    0x00007fe77921ff9e: add    $0x20,%r10d        ;*iinc
                  │  │                                                  ; - com.google.re2j.Unicode::toLower@18 (line 179)
                  │  │                                                  ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                  │  │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  │  │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
                  │  │    0x00007fe77921ffa2: cmp    %r8d,%r10d
                  │╭ │    0x00007fe77921ffa5: jne    0x00007fe77921ffc2  ;*if_icmpeq
                  ││ │                                                  ; - com.google.re2j.Unicode::simpleFold@77 (line 224)
                  ││ │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  ││ │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
  0.19%    0.27%  ↘│ │    0x00007fe77921ffa7: cmp    $0x61,%r8d
                   │ │    0x00007fe77921ffab: jl     0x00007fe779220b1d  ;*if_icmpgt
                   │ │                                                  ; - com.google.re2j.Unicode::toUpper@9 (line 167)
                   │ │                                                  ; - com.google.re2j.Unicode::simpleFold@83 (line 227)
                   │ │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 57)
                   │ │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
  0.25%    0.31%   │ │    0x00007fe77921ffb1: cmp    $0x7a,%r8d
                   │ │    0x00007fe77921ffb5: jg     0x00007fe779220b69  ;*if_icmpgt
                   │ │                                                  ; - com.google.re2j.Unicode::toUpper@15 (line 167)
                   │ │                                                  ; - com.google.re2j.Unicode::simpleFold@83 (line 227)
                   │ │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 57)
                   │ │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
           0.00%   │ │    0x00007fe77921ffbb: mov    %r8d,%r10d
                   │ │    0x00007fe77921ffbe: add    $0xffffffe0,%r10d  ; OopMap{r9=Oop rbx=NarrowOop rdi=NarrowOop rdx=NarrowOop r13=Oop xmm0=Oop [8]=Oop [24]=Oop [40]=Oop off=1698}
                   │ │                                                  ;*goto
                   │ │                                                  ; - com.google.re2j.Inst::matchRune@54 (line 57)
                   │ │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
  0.16%    0.20%   ↘ │    0x00007fe77921ffc2: test   %eax,0x18b6c038(%rip)        # 0x00007fe791d8c000
                     │                                                  ;*goto
                     │                                                  ; - com.google.re2j.Inst::matchRune@54 (line 57)
                     │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
                     │                                                  ;   {poll}
  0.20%    0.19%     │    0x00007fe77921ffc8: cmp    %eax,%r10d
                     │    0x00007fe77921ffcb: je     0x00007fe77921fdfa  ;*if_icmpeq
                     │                                                  ; - com.google.re2j.Inst::matchRune@39 (line 56)
                     │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
                     │    0x00007fe77921ffd1: mov    %eax,%r11d         ;*iload_1
                     │                                                  ; - com.google.re2j.Inst::matchRune@42 (line 58)
                     │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
  0.04%    0.03%     │    0x00007fe77921ffd4: cmp    %r10d,%ecx
                     │    0x00007fe77921ffd7: je     0x00007fe7792202c3  ;*if_icmpne
                     │                                                  ; - com.google.re2j.Inst::matchRune@44 (line 58)
                     │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
  0.12%    0.25%     │    0x00007fe77921ffdd: mov    %r10d,%r14d
  0.25%    0.30%     │    0x00007fe77921ffe0: mov    %r11d,%eax
  0.00%              │    0x00007fe77921ffe3: mov    $0x1f,%r8d
  0.04%    0.03%     │    0x00007fe77921ffe9: mov    $0x1f,%r10d
  0.15%    0.22%     │    0x00007fe77921ffef: xor    %r11d,%r11d
  0.21%    0.38%     │    0x00007fe77921fff2: mov    $0x3f,%esi
                     │    0x00007fe77921fff7: mov    %r11d,0x20(%rsp)
  0.04%    0.05%     │    0x00007fe77921fffc: vmovd  %esi,%xmm1
  0.10%    0.25%    ╭│    0x00007fe779220000: jmp    0x00007fe77922003f
  0.69%    0.75%    ││↗   0x00007fe779220002: mov    0x20(%rsp),%r8d    ; OopMap{r9=Oop rbx=NarrowOop rdi=NarrowOop rdx=NarrowOop r13=Oop xmm0=Oop [8]=Oop [24]=Oop [40]=Oop off=1767}
                    │││                                                 ;*goto
                    │││                                                 ; - com.google.re2j.Unicode::simpleFold@40 (line 214)
                    │││                                                 ; - com.google.re2j.Inst::matchRune@50 (line 57)
                    │││                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.62%    0.83%    │││↗  0x00007fe779220007: test   %eax,0x18b6bff3(%rip)        # 0x00007fe791d8c000
                    ││││                                                ;*goto
                    ││││                                                ; - com.google.re2j.Unicode::simpleFold@40 (line 214)
                    ││││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                    ││││                                                ; - com.google.re2j.Machine::step@308 (line 306)
                    ││││                                                ;   {poll}
  0.79%    0.87%    ││││  0x00007fe77922000d: cmp    %r10d,%r8d
                    │╰││  0x00007fe779220010: jge    0x00007fe77921ff49  ;*if_icmpge
                    │ ││                                                ; - com.google.re2j.Unicode::simpleFold@9 (line 207)
                    │ ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                    │ ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.39%    0.48%    │ ││  0x00007fe779220016: mov    %r8d,0x20(%rsp)
  0.64%    0.77%    │ ││  0x00007fe77922001b: vmovd  %r10d,%xmm1
  0.51%    0.76%    │ ││  0x00007fe779220020: mov    %r10d,%r11d
  0.63%    0.71%    │ ││  0x00007fe779220023: sub    %r8d,%r11d         ;*isub
                    │ ││                                                ; - com.google.re2j.Unicode::simpleFold@15 (line 208)
                    │ ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                    │ ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.47%    0.50%    │ ││  0x00007fe779220026: mov    %r11d,%r8d
  0.81%    0.81%    │ ││  0x00007fe779220029: sar    $0x1f,%r8d
  0.53%    0.65%    │ ││  0x00007fe77922002d: shr    $0x1f,%r8d
  0.58%    0.88%    │ ││  0x00007fe779220031: add    %r11d,%r8d
  0.41%    0.54%    │ ││  0x00007fe779220034: sar    %r8d
  0.62%    0.78%    │ ││  0x00007fe779220037: mov    0x20(%rsp),%r10d
  0.73%    0.67%    │ ││  0x00007fe77922003c: add    %r8d,%r10d         ;*idiv
                    │ ││                                                ; - com.google.re2j.Unicode::simpleFold@17 (line 208)
                    │ ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                    │ ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.77%    1.12%    ↘ ││  0x00007fe77922003f: cmp    $0x3f,%r10d
                      ││  0x00007fe779220043: jae    0x00007fe7792203dd
  0.54%    0.54%      ││  0x00007fe779220049: movslq 0x20(%rsp),%r11
  0.79%    1.02%      ││  0x00007fe77922004e: movslq %r8d,%r8
  0.72%    0.76%      ││  0x00007fe779220051: add    %r8,%r11
  0.93%    0.95%      ││  0x00007fe779220054: mov    0x10(%r9,%r11,4),%ebp  ;*aaload
                      ││                                                ; - com.google.re2j.Unicode::simpleFold@24 (line 209)
                      ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                      ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.55%    0.48%      ││  0x00007fe779220059: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007fe779220d15
  2.69%    2.99%      ││  0x00007fe77922005e: test   %r11d,%r11d
                      ││  0x00007fe779220061: jbe    0x00007fe779220435  ;*iaload
                      ││                                                ; - com.google.re2j.Unicode::simpleFold@26 (line 209)
                      ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                      ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  1.61%    1.89%      ││  0x00007fe779220067: mov    0x10(%r12,%rbp,8),%r11d
  0.38%    0.55%      ││  0x00007fe77922006c: cmp    %r14d,%r11d
                      ╰│  0x00007fe77922006f: jge    0x00007fe779220002  ;*if_icmpge
                       │                                                ; - com.google.re2j.Unicode::simpleFold@28 (line 209)
                       │                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                       │                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.35%    0.51%       │  0x00007fe779220071: mov    %r10d,%r8d
  0.05%    0.01%       │  0x00007fe779220074: inc    %r8d               ;*iadd
                       │                                                ; - com.google.re2j.Unicode::simpleFold@33 (line 210)
                       │                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                       │                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.13%    0.22%       │  0x00007fe779220077: vmovd  %xmm1,%r10d
  0.03%    0.04%       ╰  0x00007fe77922007c: jmp    0x00007fe779220007
                          0x00007fe77922007e: mov    %r10d,%r9d
                          0x00007fe779220081: sar    %r9d
                          0x00007fe779220084: add    %r10d,%r9d         ;*iadd
                                                                        ; - java.util.ArrayList::grow@10 (line 255)
                                                                        ; - java.util.ArrayList::ensureExplicitCapacity@22 (line 235)
                                                                        ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                                        ; - java.util.ArrayList::add@7 (line 458)
                                                                        ; - com.google.re2j.Machine::step@410 (line 329)
                          0x00007fe779220087: mov    %r9d,%edi
                          0x00007fe77922008a: sub    %esi,%edi
....................................................................................................
 20.89%   24.90%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 503 (465 bytes) 

                                                                     ;*invokespecial add
                                                                     ; - com.google.re2j.Machine::step@394 (line 325)
                                                                     ;   {optimized virtual_call}
                       0x00007fe77921fa20: test   %rax,%rax
                       0x00007fe77921fa23: je     0x00007fe7792202af
                       0x00007fe77921fa29: mov    %rax,0x48(%rsp)
                       0x00007fe77921fa2e: mov    0x20(%rsp),%ecx
                       0x00007fe77921fa32: mov    0x84(%rsp),%r8d
                       0x00007fe77921fa3a: mov    0x8c(%rsp),%r14d   ;*aload
                                                                     ; - com.google.re2j.Machine::step@399 (line 327)
  0.49%    0.26%       0x00007fe77921fa42: mov    0x28(%rsp),%r10
                       0x00007fe77921fa47: mov    0x20(%r10),%ebp    ;*getfield pool
                                                                     ; - com.google.re2j.Machine::step@405 (line 329)
  0.02%    0.01%       0x00007fe77921fa4b: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007fe779220d35
  0.06%    0.04%       0x00007fe77921fa50: cmp    $0xf8002f22,%r10d  ;   {metadata(&apos;java/util/ArrayList&apos;)}
                       0x00007fe77921fa57: jne    0x00007fe7792204c1
  0.44%    0.22%       0x00007fe77921fa5d: lea    (%r12,%rbp,8),%r11  ;*invokeinterface add
                                                                     ; - com.google.re2j.Machine::step@410 (line 329)
                       0x00007fe77921fa61: mov    0x14(%r11),%ebx    ;*getfield elementData
                                                                     ; - java.util.ArrayList::ensureCapacityInternal@1 (line 223)
                                                                     ; - java.util.ArrayList::add@7 (line 458)
                                                                     ; - com.google.re2j.Machine::step@410 (line 329)
  0.02%    0.02%       0x00007fe77921fa65: mov    0x10(%r11),%ebp    ;*getfield size
                                                                     ; - java.util.ArrayList::add@16 (line 459)
                                                                     ; - com.google.re2j.Machine::step@410 (line 329)
  0.03%    0.01%       0x00007fe77921fa69: mov    %ebp,%edi
  0.45%    0.29%       0x00007fe77921fa6b: inc    %edi               ;*iadd
                                                                     ; - java.util.ArrayList::add@21 (line 459)
                                                                     ; - com.google.re2j.Machine::step@410 (line 329)
  0.00%    0.01%       0x00007fe77921fa6d: cmp    $0xed9f0db7,%ebx   ;   {oop(a &apos;java/lang/Object&apos;[0] )}
                       0x00007fe77921fa73: je     0x00007fe779220283  ;*if_acmpne
                                                                     ; - java.util.ArrayList::ensureCapacityInternal@7 (line 223)
                                                                     ; - java.util.ArrayList::add@7 (line 458)
                                                                     ; - com.google.re2j.Machine::step@410 (line 329)
           0.01%       0x00007fe77921fa79: mov    %edi,%esi          ;*aload_0
                                                                     ; - java.util.ArrayList::ensureCapacityInternal@17 (line 227)
                                                                     ; - java.util.ArrayList::add@7 (line 458)
                                                                     ; - com.google.re2j.Machine::step@410 (line 329)
  0.01%    0.02%       0x00007fe77921fa7b: mov    0xc(%r11),%r9d     ;*getfield modCount
                                                                     ; - java.util.ArrayList::ensureExplicitCapacity@2 (line 231)
                                                                     ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                                     ; - java.util.ArrayList::add@7 (line 458)
                                                                     ; - com.google.re2j.Machine::step@410 (line 329)
  0.51%    0.38%       0x00007fe77921fa7f: inc    %r9d
  0.00%    0.01%       0x00007fe77921fa82: mov    %r9d,0xc(%r11)     ;*putfield modCount
                                                                     ; - java.util.ArrayList::ensureExplicitCapacity@7 (line 231)
                                                                     ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                                     ; - java.util.ArrayList::add@7 (line 458)
                                                                     ; - com.google.re2j.Machine::step@410 (line 329)
  0.01%                0x00007fe77921fa86: mov    0xc(%r12,%rbx,8),%r10d  ;*arraylength
                                                                     ; - java.util.ArrayList::ensureExplicitCapacity@15 (line 234)
                                                                     ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                                     ; - java.util.ArrayList::add@7 (line 458)
                                                                     ; - com.google.re2j.Machine::step@410 (line 329)
                                                                     ; implicit exception: dispatches to 0x00007fe779220d45
  0.22%    0.25%       0x00007fe77921fa8b: mov    %esi,%edx
  0.39%    0.47%       0x00007fe77921fa8d: sub    %r10d,%edx
  0.17%    0.17%       0x00007fe77921fa90: test   %edx,%edx
                       0x00007fe77921fa92: jg     0x00007fe77922007e  ;*ifle
                                                                     ; - java.util.ArrayList::ensureExplicitCapacity@17 (line 234)
                                                                     ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                                     ; - java.util.ArrayList::add@7 (line 458)
                                                                     ; - com.google.re2j.Machine::step@410 (line 329)
  0.12%    0.14%       0x00007fe77921fa98: mov    %edi,0x10(%r11)    ;*putfield size
                                                                     ; - java.util.ArrayList::add@22 (line 459)
                                                                     ; - com.google.re2j.Machine::step@410 (line 329)
           0.00%       0x00007fe77921fa9c: mov    %rbx,%r11
  0.38%    0.40%       0x00007fe77921fa9f: shl    $0x3,%r11          ;*return
                                                                     ; - java.util.ArrayList::ensureExplicitCapacity@25 (line 236)
                                                                     ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                                     ; - java.util.ArrayList::add@7 (line 458)
                                                                     ; - com.google.re2j.Machine::step@410 (line 329)
                       0x00007fe77921faa3: mov    0xc(%r11),%r9d
  0.08%    0.10%       0x00007fe77921faa7: cmp    %r9d,%ebp
                       0x00007fe77921faaa: jae    0x00007fe77922047d
  0.00%    0.06%       0x00007fe77921fab0: mov    0x8(%r11),%r9d
  0.35%    0.37%       0x00007fe77921fab4: cmp    $0xf80022f5,%r9d   ;   {metadata(&apos;java/lang/Object&apos;[])}
                       0x00007fe77921fabb: jne    0x00007fe7792204fd
  0.03%    0.01%       0x00007fe77921fac1: lea    0x10(%r11,%rbp,4),%r10
  0.05%    0.09%       0x00007fe77921fac6: mov    0x48(%rsp),%r11
  0.02%    0.01%       0x00007fe77921facb: mov    %r11,%r8
  0.38%    0.38%       0x00007fe77921face: shr    $0x3,%r8
  0.01%    0.01%       0x00007fe77921fad2: mov    %r8d,(%r10)
  0.14%    0.13%       0x00007fe77921fad5: shr    $0x9,%r10
  0.01%    0.00%       0x00007fe77921fad9: movabs $0x7fe78a794000,%r11
  0.30%    0.29%       0x00007fe77921fae3: mov    %r12b,(%r11,%r10,1)  ;*aastore
                                                                     ; - java.util.ArrayList::add@26 (line 459)
                                                                     ; - com.google.re2j.Machine::step@410 (line 329)
  0.26%    0.15%       0x00007fe77921fae7: xor    %r10d,%r10d        ; OopMap{[8]=Oop [24]=Oop [40]=Oop off=458}
                                                                     ;*goto
                                                                     ; - com.google.re2j.Machine::step@419 (line 264)
  0.08%    0.04%   ↗   0x00007fe77921faea: test   %eax,0x18b6c510(%rip)        # 0x00007fe791d8c000
                   │                                                 ;*goto
                   │                                                 ; - com.google.re2j.Machine::step@419 (line 264)
                   │                                                 ;   {poll}
  0.12%    0.09%   │   0x00007fe77921faf0: mov    0x8(%rsp),%r10
  0.52%    0.32%   │   0x00007fe77921faf5: mov    0xc(%r10),%r10d
  0.22%    0.23%   │   0x00007fe77921faf9: cmp    %r10d,%r14d
                   │   0x00007fe77921fafc: jge    0x00007fe77921fce4
  0.10%    0.02%   │   0x00007fe77921fb02: mov    %ecx,0x20(%rsp)
  0.13%    0.14%   │   0x00007fe77921fb06: mov    %r14d,%r8d         ;*aload_1
                   │                                                 ; - com.google.re2j.Machine::step@21 (line 265)
  0.43%    0.36%   │   0x00007fe77921fb09: mov    0x8(%rsp),%r10
  0.21%    0.23%   │   0x00007fe77921fb0e: mov    0x10(%r10),%r10d   ;*getfield dense
                   │                                                 ; - com.google.re2j.Machine::step@22 (line 265)
  0.16%    0.12%   │   0x00007fe77921fb12: mov    0xc(%r12,%r10,8),%r9d  ; implicit exception: dispatches to 0x00007fe779220cdd
  0.55%    0.38%   │   0x00007fe77921fb17: cmp    %r9d,%r8d
                   │   0x00007fe77921fb1a: jae    0x00007fe779220355
  0.40%    0.48%   │   0x00007fe77921fb20: shl    $0x3,%r10
  0.19%    0.16%   │   0x00007fe77921fb24: mov    0x10(%r10,%r8,4),%r10d  ;*aaload
                   │                                                 ; - com.google.re2j.Machine::step@27 (line 265)
  0.14%    0.18%   │   0x00007fe77921fb29: mov    0x10(%r12,%r10,8),%r11d  ;*getfield thread
                   │                                                 ; - com.google.re2j.Machine::step@40 (line 269)
                   │                                                 ; implicit exception: dispatches to 0x00007fe779220d65
  1.04%    1.21%   │   0x00007fe77921fb2e: mov    %r8d,%r14d
  0.15%    0.27%   │   0x00007fe77921fb31: inc    %r14d              ;*iadd
                   │                                                 ; - com.google.re2j.Machine::step@241 (line 293)
  0.16%    0.10%   │   0x00007fe77921fb34: test   %r11d,%r11d
                  ╭│   0x00007fe77921fb37: jne    0x00007fe77921fb44  ;*ifnonnull
                  ││                                                 ; - com.google.re2j.Machine::step@47 (line 270)
  0.13%    0.14%  ││   0x00007fe77921fb39: mov    0x24(%rsp),%r10d
  0.09%    0.06%  ││   0x00007fe77921fb3e: mov    0x20(%rsp),%ecx
  0.09%    0.06%  │╰   0x00007fe77921fb42: jmp    0x00007fe77921faea
  0.25%    0.34%  ↘    0x00007fe77921fb44: mov    0x24(%rsp),%r10d
  0.02%    0.05%       0x00007fe77921fb49: test   %r10d,%r10d
                       0x00007fe77921fb4c: jne    0x00007fe779220615  ;*ifeq
                                                                     ; - com.google.re2j.Machine::step@55 (line 273)
  0.08%    0.23%       0x00007fe77921fb52: mov    0x10(%r12,%r11,8),%r10d  ;*getfield inst
                                                                     ; - com.google.re2j.Machine::step@107 (line 278)
  1.61%    1.73%       0x00007fe77921fb57: mov    0x18(%r12,%r10,8),%edi  ;*getfield runes
                                                                     ; - com.google.re2j.Machine::step@320 (line 310)
                                                                     ; implicit exception: dispatches to 0x00007fe779220d25
  2.06%    2.54%       0x00007fe77921fb5c: mov    0xc(%r12,%r10,8),%ecx  ;*getfield op
                                                                     ; - com.google.re2j.Machine::step@117 (line 280)
  0.08%    0.08%       0x00007fe77921fb61: mov    0xc(%r12,%r11,8),%edx  ;*getfield cap
                                                                     ; - com.google.re2j.Machine::step@176 (line 287)
                       0x00007fe77921fb66: lea    (%r12,%r11,8),%r9  ;*getfield thread
                                                                     ; - com.google.re2j.Machine::step@40 (line 269)
           0.01%       0x00007fe77921fb6a: cmp    $0x9,%ecx
                       0x00007fe77921fb6d: je     0x00007fe77921f98d
  0.50%    0.48%       0x00007fe77921fb73: cmp    $0x9,%ecx
                       0x00007fe77921fb76: jg     0x00007fe77921f9b6
  0.12%    0.20%       0x00007fe77921fb7c: cmp    $0x7,%ecx
                       0x00007fe77921fb7f: je     0x00007fe779220661  ;*tableswitch
                                                                     ; - com.google.re2j.Machine::step@120 (line 280)
  0.48%    0.47%       0x00007fe77921fb85: lea    (%r12,%r10,8),%rbx  ;*getfield inst
                                                                     ; - com.google.re2j.Machine::step@107 (line 278)
  0.01%    0.01%       0x00007fe77921fb89: cmp    $0x7,%ecx
                    ╭  0x00007fe77921fb8c: jle    0x00007fe77921fc18  ;*tableswitch
                    │                                                ; - com.google.re2j.Machine::step@120 (line 280)
  0.41%    0.44%    │  0x00007fe77921fb92: mov    0xc(%r12,%rdi,8),%ebp  ;*arraylength
                    │                                                ; - com.google.re2j.Inst::matchRune@4 (line 49)
                    │                                                ; - com.google.re2j.Machine::step@308 (line 306)
                    │                                                ; implicit exception: dispatches to 0x00007fe779220e19
  0.83%    0.91%    │  0x00007fe77921fb97: cmp    $0x1,%ebp
                    │  0x00007fe77921fb9a: jne    0x00007fe779220915  ;*if_icmpne
                    │                                                ; - com.google.re2j.Inst::matchRune@6 (line 49)
                    │                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.45%    0.41%    │  0x00007fe77921fba0: test   %ebp,%ebp
                    │  0x00007fe77921fba2: jbe    0x00007fe779220755
  0.08%    0.07%    │  0x00007fe77921fba8: mov    0x10(%r12,%rdi,8),%edi  ;*iaload
                    │                                                ; - com.google.re2j.Inst::matchRune@14 (line 50)
                    │                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.00%    0.00%    │  0x00007fe77921fbad: mov    0x20(%rsp),%ecx
                    │  0x00007fe77921fbb1: cmp    %edi,%ecx
                    │  0x00007fe77921fbb3: je     0x00007fe7792202cf  ;*if_icmpne
                    │                                                ; - com.google.re2j.Inst::matchRune@18 (line 51)
                    │                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.30%    0.39%    │  0x00007fe77921fbb9: mov    $0x1,%ebp
  0.02%    0.03%    │  0x00007fe77921fbbe: and    0x14(%r12,%r10,8),%ebp  ;*iand
                    │                                                ; - com.google.re2j.Inst::matchRune@28 (line 54)
                    │                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.01%             │  0x00007fe77921fbc3: test   %ebp,%ebp
                    │  0x00007fe77921fbc5: je     0x00007fe779220a05  ;*ifeq
                    │                                                ; - com.google.re2j.Inst::matchRune@29 (line 54)
                    │                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.00%    0.01%    │  0x00007fe77921fbcb: mov    %edi,0x20(%rsp)
  0.38%    0.41%    │  0x00007fe77921fbcf: vmovq  %rbx,%xmm0
  0.02%    0.01%    │  0x00007fe77921fbd4: mov    %r9,%r13
                    │  0x00007fe77921fbd7: mov    %r10d,%edi
  0.00%    0.01%    │  0x00007fe77921fbda: mov    %r14d,0x8c(%rsp)
  0.38%    0.40%    │  0x00007fe77921fbe2: mov    %r11d,%ebx
  0.02%    0.00%    │  0x00007fe77921fbe5: mov    %r8d,0x84(%rsp)
                    │  0x00007fe77921fbed: movabs $0x76dd0c420,%r9   ;   {oop(a {type array int}[63] )}
  0.00%             │  0x00007fe77921fbf7: mov    $0x1f,%eax
  0.43%    0.18%    │  0x00007fe77921fbfc: mov    $0x1f,%r8d
  0.03%             │  0x00007fe77921fc02: xor    %r10d,%r10d
                    │  0x00007fe77921fc05: mov    $0x3f,%r11d
                    │  0x00007fe77921fc0b: mov    %r10d,0x30(%rsp)
  0.47%    0.19%    │  0x00007fe77921fc10: mov    %r11d,%r14d
  0.00%             │  0x00007fe77921fc13: jmpq   0x00007fe77921fd32
                    ↘  0x00007fe77921fc18: cmp    $0x6,%ecx
                       0x00007fe77921fc1b: jne    0x00007fe779220661  ;*tableswitch
                                                                     ; - com.google.re2j.Machine::step@120 (line 280)
                       0x00007fe77921fc21: mov    0x88(%rsp),%edi
                       0x00007fe77921fc28: cmp    $0x2,%edi
                       0x00007fe77921fc2b: je     0x00007fe779220297  ;*aload
                                                                     ; - com.google.re2j.Machine::step@174 (line 287)
                       0x00007fe77921fc31: mov    0xc(%r12,%rdx,8),%eax  ;*arraylength
                                                                     ; - com.google.re2j.Machine::step@179 (line 287)
                                                                     ; implicit exception: dispatches to 0x00007fe779220e39
....................................................................................................
 18.94%   18.56%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 503 (229 bytes) 

                       0x00007fe77921fcc6: mov    0x40(%rsp),%rbx    ;*iload
                                                                     ; - com.google.re2j.Machine::step@233 (line 291)
                       0x00007fe77921fccb: mov    0x8(%rsp),%rcx
                       0x00007fe77921fcd0: mov    0xc(%rcx),%ecx
                       0x00007fe77921fcd3: cmp    %ecx,%r14d
                       0x00007fe77921fcd6: jge    0x00007fe77921ff15  ;*if_icmpge
                                                                     ; - com.google.re2j.Machine::step@250 (line 293)
                       0x00007fe77921fcdc: mov    %r14d,%ecx
                       0x00007fe77921fcdf: jmpq   0x00007fe77921fe8c  ;*if_icmpge
                                                                     ; - com.google.re2j.Machine::step@18 (line 264)
           0.01%       0x00007fe77921fce4: mov    0x8(%rsp),%r10
                       0x00007fe77921fce9: mov    %r12d,0xc(%r10)    ;*getfield size
                                                                     ; - com.google.re2j.Machine::step@15 (line 264)
  0.08%    0.06%       0x00007fe77921fced: add    $0x70,%rsp
  0.02%    0.02%       0x00007fe77921fcf1: pop    %rbp
  0.01%    0.00%       0x00007fe77921fcf2: test   %eax,0x18b6c308(%rip)        # 0x00007fe791d8c000
                                                                     ;   {poll_return}
           0.00%       0x00007fe77921fcf8: retq   
                       0x00007fe77921fcf9: nopl   0x0(%rax)
  0.77%    1.03%   ↗   0x00007fe77921fd00: mov    0x30(%rsp),%r11d   ; OopMap{r9=Oop rbx=NarrowOop rdi=NarrowOop rdx=NarrowOop r13=Oop xmm0=Oop [8]=Oop [24]=Oop [40]=Oop off=997}
                   │                                                 ;*goto
                   │                                                 ; - com.google.re2j.Unicode::simpleFold@40 (line 214)
                   │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 55)
                   │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.82%    0.71%   │↗  0x00007fe77921fd05: test   %eax,0x18b6c2f5(%rip)        # 0x00007fe791d8c000
                   ││                                                ;*goto
                   ││                                                ; - com.google.re2j.Unicode::simpleFold@40 (line 214)
                   ││                                                ; - com.google.re2j.Inst::matchRune@33 (line 55)
                   ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
                   ││                                                ;   {poll}
  0.70%    0.58%   ││  0x00007fe77921fd0b: cmp    %r8d,%r11d
                  ╭││  0x00007fe77921fd0e: jge    0x00007fe77921fd71  ;*if_icmpge
                  │││                                                ; - com.google.re2j.Unicode::simpleFold@9 (line 207)
                  │││                                                ; - com.google.re2j.Inst::matchRune@33 (line 55)
                  │││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.44%    0.50%  │││  0x00007fe77921fd10: mov    %r8d,%r10d
  0.61%    0.79%  │││  0x00007fe77921fd13: mov    %r8d,%r14d
  0.79%    0.51%  │││  0x00007fe77921fd16: mov    %r11d,0x30(%rsp)
  0.56%    0.29%  │││  0x00007fe77921fd1b: sub    %r11d,%r10d        ;*isub
                  │││                                                ; - com.google.re2j.Unicode::simpleFold@15 (line 208)
                  │││                                                ; - com.google.re2j.Inst::matchRune@33 (line 55)
                  │││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.52%    0.41%  │││  0x00007fe77921fd1e: mov    %r10d,%eax
  0.61%    0.68%  │││  0x00007fe77921fd21: sar    $0x1f,%eax
  0.78%    0.47%  │││  0x00007fe77921fd24: shr    $0x1f,%eax
  0.50%    0.20%  │││  0x00007fe77921fd27: add    %r10d,%eax
  0.49%    0.46%  │││  0x00007fe77921fd2a: sar    %eax
  0.72%    0.69%  │││  0x00007fe77921fd2c: mov    %r11d,%r8d
  0.75%    0.60%  │││  0x00007fe77921fd2f: add    %eax,%r8d          ;*idiv
                  │││                                                ; - com.google.re2j.Unicode::simpleFold@17 (line 208)
                  │││                                                ; - com.google.re2j.Inst::matchRune@33 (line 55)
                  │││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.45%    0.19%  │││  0x00007fe77921fd32: cmp    $0x3f,%r8d
                  │││  0x00007fe77921fd36: jae    0x00007fe779220541
  0.56%    0.61%  │││  0x00007fe77921fd3c: movslq 0x30(%rsp),%r10
  1.14%    0.99%  │││  0x00007fe77921fd41: movslq %eax,%r11
  0.86%    0.80%  │││  0x00007fe77921fd44: add    %r11,%r10
  0.46%    0.86%  │││  0x00007fe77921fd47: mov    0x10(%r9,%r10,4),%ebp  ;*aaload
                  │││                                                ; - com.google.re2j.Unicode::simpleFold@24 (line 209)
                  │││                                                ; - com.google.re2j.Inst::matchRune@33 (line 55)
                  │││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.50%    0.51%  │││  0x00007fe77921fd4c: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007fe779220d55
  1.49%    1.56%  │││  0x00007fe77921fd51: test   %r10d,%r10d
                  │││  0x00007fe77921fd54: jbe    0x00007fe77922058d  ;*iaload
                  │││                                                ; - com.google.re2j.Unicode::simpleFold@26 (line 209)
                  │││                                                ; - com.google.re2j.Inst::matchRune@33 (line 55)
                  │││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.89%    1.26%  │││  0x00007fe77921fd5a: mov    0x10(%r12,%rbp,8),%r10d
  0.56%    0.84%  │││  0x00007fe77921fd5f: cmp    0x20(%rsp),%r10d
                  │╰│  0x00007fe77921fd64: jge    0x00007fe77921fd00  ;*if_icmpge
                  │ │                                                ; - com.google.re2j.Unicode::simpleFold@28 (line 209)
                  │ │                                                ; - com.google.re2j.Inst::matchRune@33 (line 55)
                  │ │                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.08%    0.12%  │ │  0x00007fe77921fd66: mov    %r8d,%r11d
  0.02%    0.00%  │ │  0x00007fe77921fd69: inc    %r11d              ;*iadd
                  │ │                                                ; - com.google.re2j.Unicode::simpleFold@33 (line 210)
                  │ │                                                ; - com.google.re2j.Inst::matchRune@33 (line 55)
                  │ │                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.09%    0.22%  │ │  0x00007fe77921fd6c: mov    %r14d,%r8d
  0.00%    0.01%  │ ╰  0x00007fe77921fd6f: jmp    0x00007fe77921fd05
  0.24%    0.32%  ↘    0x00007fe77921fd71: cmp    $0x3f,%r11d
                       0x00007fe77921fd75: jge    0x00007fe779220a51  ;*if_icmpge
                                                                     ; - com.google.re2j.Unicode::simpleFold@48 (line 215)
                                                                     ; - com.google.re2j.Inst::matchRune@33 (line 55)
                                                                     ; - com.google.re2j.Machine::step@308 (line 306)
                       0x00007fe77921fd7b: cmp    $0x3f,%r11d
                       0x00007fe77921fd7f: jae    0x00007fe77922070d
  0.03%    0.04%       0x00007fe77921fd85: mov    0x10(%r9,%r11,4),%ebp  ;*aaload
                                                                     ; - com.google.re2j.Unicode::simpleFold@55 (line 215)
                                                                     ; - com.google.re2j.Inst::matchRune@33 (line 55)
                                                                     ; - com.google.re2j.Machine::step@308 (line 306)
  0.15%    0.22%       0x00007fe77921fd8a: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007fe779220e29
  0.30%    0.29%       0x00007fe77921fd8f: test   %r10d,%r10d
                       0x00007fe77921fd92: jbe    0x00007fe7792207a1
  0.00%                0x00007fe77921fd98: mov    0x10(%r12,%rbp,8),%ebp  ;*iaload
                                                                     ; - com.google.re2j.Unicode::simpleFold@57 (line 215)
                                                                     ; - com.google.re2j.Inst::matchRune@33 (line 55)
                                                                     ; - com.google.re2j.Machine::step@308 (line 306)
  0.04%    0.02%       0x00007fe77921fd9d: cmp    0x20(%rsp),%ebp
                       0x00007fe77921fda1: je     0x00007fe779220a99  ;*if_icmpne
                                                                     ; - com.google.re2j.Unicode::simpleFold@59 (line 215)
                                                                     ; - com.google.re2j.Inst::matchRune@33 (line 55)
                                                                     ; - com.google.re2j.Machine::step@308 (line 306)
  0.13%    0.15%       0x00007fe77921fda7: mov    0x20(%rsp),%r11d
  0.24%    0.32%       0x00007fe77921fdac: cmp    $0x7f,%r11d
                       0x00007fe77921fdb0: jg     0x00007fe779220ad1  ;*if_icmpgt
                                                                     ; - com.google.re2j.Unicode::toLower@3 (line 177)
                                                                     ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                                                                     ; - com.google.re2j.Inst::matchRune@33 (line 55)
                                                                     ; - com.google.re2j.Machine::step@308 (line 306)
                       0x00007fe77921fdb6: cmp    $0x41,%r11d
                       0x00007fe77921fdba: jl     0x00007fe77922094d  ;*if_icmpgt
                                                                     ; - com.google.re2j.Unicode::toLower@9 (line 178)
                                                                     ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                                                                     ; - com.google.re2j.Inst::matchRune@33 (line 55)
                                                                     ; - com.google.re2j.Machine::step@308 (line 306)
  0.02%    0.01%       0x00007fe77921fdc0: cmp    $0x5a,%r11d
                       0x00007fe77921fdc4: jg     0x00007fe77921fdd6  ;*if_icmpgt
                                                                     ; - com.google.re2j.Unicode::toLower@15 (line 178)
                                                                     ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                                                                     ; - com.google.re2j.Inst::matchRune@33 (line 55)
                                                                     ; - com.google.re2j.Machine::step@308 (line 306)
  0.17%    0.21%       0x00007fe77921fdc6: mov    %r11d,%r10d
  0.27%    0.30%       0x00007fe77921fdc9: add    $0x20,%r10d        ;*iinc
                                                                     ; - com.google.re2j.Unicode::toLower@18 (line 179)
                                                                     ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                                                                     ; - com.google.re2j.Inst::matchRune@33 (line 55)
                                                                     ; - com.google.re2j.Machine::step@308 (line 306)
                       0x00007fe77921fdcd: cmp    %r11d,%r10d
                       0x00007fe77921fdd0: jne    0x00007fe77921ffd4  ;*if_icmpeq
                                                                     ; - com.google.re2j.Unicode::simpleFold@77 (line 224)
                                                                     ; - com.google.re2j.Inst::matchRune@33 (line 55)
                                                                     ; - com.google.re2j.Machine::step@308 (line 306)
                       0x00007fe77921fdd6: cmp    $0x61,%r11d
....................................................................................................
 17.90%   17.89%  <total for region 3>

....[Hottest Region 4]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 491 (322 bytes) 

                      # parm4:    rdi       = int
                      # parm5:    [sp+0x70]   = &apos;com/google/re2j/Machine$Thread&apos;  (sp of caller)
                      0x00007fe779216480: mov    0x8(%rsi),%r10d    ;   {no_reloc}
                      0x00007fe779216484: shl    $0x3,%r10
                      0x00007fe779216488: cmp    %r10,%rax
                      0x00007fe77921648b: jne    0x00007fe779045e20  ;   {runtime_call}
                      0x00007fe779216491: data16 xchg %ax,%ax
                      0x00007fe779216494: nopl   0x0(%rax,%rax,1)
                      0x00007fe77921649c: data16 data16 xchg %ax,%ax
                    [Verified Entry Point]
  0.81%    0.89%      0x00007fe7792164a0: mov    %eax,-0x14000(%rsp)
  0.10%    0.18%      0x00007fe7792164a7: push   %rbp
  0.54%    0.52%      0x00007fe7792164a8: sub    $0x60,%rsp         ;*synchronization entry
                                                                    ; - com.google.re2j.Machine::add@-1 (line 341)
  0.36%    0.41%      0x00007fe7792164ac: mov    %edi,0x28(%rsp)
  0.09%    0.09%      0x00007fe7792164b0: mov    %r9,0x20(%rsp)
  0.50%    0.58%      0x00007fe7792164b5: mov    %r8d,0x1c(%rsp)
  0.28%    0.28%      0x00007fe7792164ba: mov    %rsi,0x8(%rsp)
  0.09%    0.03%      0x00007fe7792164bf: test   %ecx,%ecx
                      0x00007fe7792164c1: je     0x00007fe779216735  ;*ifne
                                                                    ; - com.google.re2j.Machine::add@1 (line 341)
  0.01%    0.02%      0x00007fe7792164c7: mov    %rdx,0x40(%rsp)
  0.46%    0.57%      0x00007fe7792164cc: mov    0x14(%rdx),%r9d    ;*getfield sparse
                                                                    ; - com.google.re2j.Machine$Queue::contains@1 (line 48)
                                                                    ; - com.google.re2j.Machine::add@9 (line 344)
                                                                    ; implicit exception: dispatches to 0x00007fe779216bf1
  0.36%    0.24%      0x00007fe7792164d0: mov    0xc(%r12,%r9,8),%edi  ; implicit exception: dispatches to 0x00007fe779216c05
  0.16%    0.14%      0x00007fe7792164d5: cmp    %edi,%ecx
                      0x00007fe7792164d7: jae    0x00007fe7792165fd  ;*iaload
                                                                    ; - com.google.re2j.Machine$Queue::contains@5 (line 48)
                                                                    ; - com.google.re2j.Machine::add@9 (line 344)
  0.07%    0.03%      0x00007fe7792164dd: mov    0x10(%rdx),%ebx    ;*getfield dense
                                                                    ; - com.google.re2j.Machine$Queue::contains@18 (line 52)
                                                                    ; - com.google.re2j.Machine::add@9 (line 344)
  0.53%    0.50%      0x00007fe7792164e0: mov    0xc(%rdx),%r11d    ;*getfield size
                                                                    ; - com.google.re2j.Machine$Queue::contains@9 (line 49)
                                                                    ; - com.google.re2j.Machine::add@9 (line 344)
  0.20%    0.17%      0x00007fe7792164e4: lea    (%r12,%r9,8),%r8
  0.08%    0.07%      0x00007fe7792164e8: mov    0x10(%r8,%rcx,4),%ebp  ;*iaload
                                                                    ; - com.google.re2j.Machine$Queue::contains@5 (line 48)
                                                                    ; - com.google.re2j.Machine::add@9 (line 344)
  0.11%    0.11%      0x00007fe7792164ed: cmp    %r11d,%ebp
                  ╭   0x00007fe7792164f0: jl     0x00007fe7792165c6  ;*invokevirtual contains
                  │                                                 ; - com.google.re2j.Machine::add@9 (line 344)
  0.63%    0.54%  │↗  0x00007fe7792164f6: mov    %r11d,%r10d
  0.21%    0.24%  ││  0x00007fe7792164f9: inc    %r10d
  0.09%    0.05%  ││  0x00007fe7792164fc: mov    %r10d,0xc(%rdx)    ;*putfield size
                  ││                                                ; - com.google.re2j.Machine$Queue::add@8 (line 59)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.05%    0.06%  ││  0x00007fe779216500: cmp    %edi,%ecx
                  ││  0x00007fe779216502: jae    0x00007fe77921663d
  0.52%    0.55%  ││  0x00007fe779216508: mov    %r11d,0x10(%r8,%rcx,4)  ;*iastore
                  ││                                                ; - com.google.re2j.Machine$Queue::add@18 (line 60)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.19%    0.39%  ││  0x00007fe77921650d: mov    0xc(%r12,%rbx,8),%r10d  ; implicit exception: dispatches to 0x00007fe779216c19
  0.07%    0.10%  ││  0x00007fe779216512: cmp    %r10d,%r11d
                  ││  0x00007fe779216515: jae    0x00007fe779216689
  0.04%    0.04%  ││  0x00007fe77921651b: lea    (%r12,%rbx,8),%r10
  0.54%    0.50%  ││  0x00007fe77921651f: mov    0x10(%r10,%r11,4),%r13d  ;*aaload
                  ││                                                ; - com.google.re2j.Machine$Queue::add@24 (line 61)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.21%    0.35%  ││  0x00007fe779216524: test   %r13d,%r13d
                  ││  0x00007fe779216527: je     0x00007fe77921675d  ;*ifnonnull
                  ││                                                ; - com.google.re2j.Machine$Queue::add@27 (line 62)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.07%    0.07%  ││  0x00007fe77921652d: mov    %ecx,0xc(%r12,%r13,8)  ;*putfield pc
                  ││                                                ; - com.google.re2j.Machine$Queue::add@52 (line 66)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.60%    0.57%  ││  0x00007fe779216532: mov    0x14(%rsi),%r10d   ;*getfield prog
                  ││                                                ; - com.google.re2j.Machine::add@26 (line 348)
  0.52%    0.47%  ││  0x00007fe779216536: mov    %r12d,0x10(%r12,%r13,8)  ;*putfield thread
                  ││                                                ; - com.google.re2j.Machine$Queue::add@47 (line 65)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.34%    0.41%  ││  0x00007fe77921653b: mov    0x14(%r12,%r10,8),%ebp  ;*getfield inst
                  ││                                                ; - com.google.re2j.Prog::getInst@1 (line 29)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 348)
                  ││                                                ; implicit exception: dispatches to 0x00007fe779216c2d
  0.07%    0.07%  ││  0x00007fe779216540: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007fe779216c41
  0.09%    0.10%  ││  0x00007fe779216545: cmp    $0xf8002f22,%r11d  ;   {metadata(&apos;java/util/ArrayList&apos;)}
                  ││  0x00007fe77921654c: jne    0x00007fe779216709
  0.47%    0.53%  ││  0x00007fe779216552: lea    (%r12,%rbp,8),%r10  ;*invokeinterface get
                  ││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.21%    0.16%  ││  0x00007fe779216556: mov    0x10(%r10),%ebp    ;*getfield size
                  ││                                                ; - java.util.ArrayList::rangeCheck@2 (line 652)
                  ││                                                ; - java.util.ArrayList::get@2 (line 429)
                  ││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.10%    0.04%  ││  0x00007fe77921655a: cmp    %ebp,%ecx
                  ││  0x00007fe77921655c: jge    0x00007fe7792167a5  ;*if_icmplt
                  ││                                                ; - java.util.ArrayList::rangeCheck@5 (line 652)
                  ││                                                ; - java.util.ArrayList::get@2 (line 429)
                  ││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.09%    0.10%  ││  0x00007fe779216562: mov    0x14(%r10),%ebp    ;*getfield elementData
                  ││                                                ; - java.util.ArrayList::elementData@1 (line 418)
                  ││                                                ; - java.util.ArrayList::get@7 (line 431)
                  ││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.46%    0.41%  ││  0x00007fe779216566: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007fe779216c55
  0.45%    0.43%  ││  0x00007fe77921656b: cmp    %r11d,%ecx
                  ││  0x00007fe77921656e: jae    0x00007fe7792166cd
  0.41%    0.30%  ││  0x00007fe779216574: lea    (%r12,%rbp,8),%r10
  0.04%    0.04%  ││  0x00007fe779216578: mov    0x10(%r10,%rcx,4),%ebp  ;*aaload
                  ││                                                ; - java.util.ArrayList::elementData@5 (line 418)
                  ││                                                ; - java.util.ArrayList::get@7 (line 431)
                  ││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.37%    0.39%  ││  0x00007fe77921657d: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007fe779216c69
  1.56%    1.34%  ││  0x00007fe779216582: cmp    $0xf80197c3,%r10d  ;   {metadata(&apos;com/google/re2j/Inst&apos;)}
                  ││  0x00007fe779216589: jne    0x00007fe7792167f9
  0.64%    0.50%  ││  0x00007fe77921658f: lea    (%r12,%rbp,8),%r10  ;*checkcast
                  ││                                                ; - com.google.re2j.Prog::getInst@10 (line 29)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.01%    0.01%  ││  0x00007fe779216593: mov    %r10,0x38(%rsp)
  0.15%    0.07%  ││  0x00007fe779216598: mov    0xc(%r10),%r8d     ;*getfield op
                  ││                                                ; - com.google.re2j.Machine::add@37 (line 349)
  0.54%    0.36%  ││  0x00007fe77921659c: mov    %r8d,%r11d
  0.22%    0.21%  ││  0x00007fe77921659f: dec    %r11d
  0.43%    0.33%  ││  0x00007fe7792165a2: cmp    $0xb,%r11d
                  ││  0x00007fe7792165a6: jae    0x00007fe7792166f9  ;*tableswitch
                  ││                                                ; - com.google.re2j.Machine::add@40 (line 349)
  0.63%    0.66%  ││  0x00007fe7792165ac: mov    0x10(%r10),%ecx    ;*getfield out
                  ││                                                ; - com.google.re2j.Machine::add@193 (line 369)
  0.02%    0.01%  ││  0x00007fe7792165b0: mov    0x14(%r10),%r11d   ;*getfield arg
                  ││                                                ; - com.google.re2j.Machine::add@156 (line 363)
  0.07%    0.08%  ││  0x00007fe7792165b4: movslq %r8d,%r8
  0.01%    0.02%  ││  0x00007fe7792165b7: movabs $0x7fe779216420,%r10  ;   {section_word}
  0.74%    0.54%  ││  0x00007fe7792165c1: jmpq   *-0x8(%r10,%r8,8)  ;*tableswitch
                  ││                                                ; - com.google.re2j.Machine::add@40 (line 349)
  0.06%    0.06%  ↘│  0x00007fe7792165c6: mov    0xc(%r12,%rbx,8),%r10d  ; implicit exception: dispatches to 0x00007fe779216d01
  0.06%    0.01%   │  0x00007fe7792165cb: cmp    %r10d,%ebp
                   │  0x00007fe7792165ce: jae    0x00007fe7792167e1
  0.03%    0.02%   │  0x00007fe7792165d4: lea    (%r12,%rbx,8),%r10
  0.01%    0.00%   │  0x00007fe7792165d8: mov    0x10(%r10,%rbp,4),%r10d  ;*aaload
                   │                                                ; - com.google.re2j.Machine$Queue::contains@22 (line 52)
                   │                                                ; - com.google.re2j.Machine::add@9 (line 344)
  0.13%    0.09%   │  0x00007fe7792165dd: mov    0xc(%r12,%r10,8),%ebp  ;*getfield pc
                   │                                                ; - com.google.re2j.Machine$Queue::contains@29 (line 53)
                   │                                                ; - com.google.re2j.Machine::add@9 (line 344)
                   │                                                ; implicit exception: dispatches to 0x00007fe779216d21
  0.17%    0.26%   │  0x00007fe7792165e2: cmp    %ecx,%ebp
                   ╰  0x00007fe7792165e4: jne    0x00007fe7792164f6  ;*if_icmpne
                                                                    ; - com.google.re2j.Machine$Queue::contains@33 (line 53)
                                                                    ; - com.google.re2j.Machine::add@9 (line 344)
                      0x00007fe7792165ea: mov    $0xffffff65,%esi
                      0x00007fe7792165ef: mov    %ecx,0x2c(%rsp)
                      0x00007fe7792165f3: callq  0x00007fe7790051a0  ; OopMap{[112]=Oop [8]=Oop [32]=Oop [64]=Oop off=376}
                                                                    ;*if_icmpne
....................................................................................................
 17.08%   16.34%  <total for region 4>

....[Hottest Region 5]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 491 (389 bytes) 

                          0x00007fe7792168e9: mov    %r10,(%rsp)
                          0x00007fe7792168ed: xchg   %ax,%ax
                          0x00007fe7792168ef: callq  0x00007fe779046020  ; OopMap{off=1140}
                                                                        ;*invokespecial add
                                                                        ; - com.google.re2j.Machine::add@203 (line 369)
                                                                        ;   {optimized virtual_call}
                  ╭       0x00007fe7792168f4: jmpq   0x00007fe779216a67
                  │       0x00007fe7792168f9: mov    0x70(%rsp),%rax
                  │╭      0x00007fe7792168fe: jmpq   0x00007fe779216a67  ;*tableswitch
                  ││                                                    ; - com.google.re2j.Machine::add@40 (line 349)
  1.56%    1.25%  ││      0x00007fe779216903: mov    0x1c(%rsp),%r8d
                  ││      0x00007fe779216908: mov    0x20(%rsp),%r9
  0.06%           ││      0x00007fe77921690d: mov    0x28(%rsp),%edi
  0.00%           ││      0x00007fe779216911: mov    0x70(%rsp),%r10
  0.30%    0.30%  ││      0x00007fe779216916: mov    %r10,(%rsp)
                  ││      0x00007fe77921691a: mov    %rsi,%rbp
  0.04%    0.00%  ││      0x00007fe77921691d: xchg   %ax,%ax
  0.01%    0.01%  ││      0x00007fe77921691f: callq  0x00007fe779046020  ; OopMap{rbp=Oop [32]=Oop [56]=Oop [64]=Oop off=1188}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@127 (line 358)
                  ││                                                    ;   {optimized virtual_call}
  0.02%    0.01%  ││      0x00007fe779216924: mov    0x38(%rsp),%r10
  0.07%    0.13%  ││      0x00007fe779216929: mov    0x14(%r10),%ecx    ;*getfield arg
                  ││                                                    ; - com.google.re2j.Machine::add@136 (line 359)
  0.28%    0.43%  ││      0x00007fe77921692d: mov    %rbp,%rsi
                  ││      0x00007fe779216930: mov    0x40(%rsp),%rdx
                  ││      0x00007fe779216935: mov    0x1c(%rsp),%r8d
  0.06%    0.13%  ││      0x00007fe77921693a: mov    0x20(%rsp),%r9
  0.34%    0.30%  ││      0x00007fe77921693f: mov    0x28(%rsp),%edi
  0.01%    0.02%  ││      0x00007fe779216943: mov    %rax,(%rsp)
                  ││      0x00007fe779216947: callq  0x00007fe779046020  ; OopMap{off=1228}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@146 (line 359)
                  ││                                                    ;   {optimized virtual_call}
  0.02%    0.02%  ││╭     0x00007fe77921694c: jmpq   0x00007fe779216a67  ;*aload
                  │││                                                   ; - com.google.re2j.Machine::add@293 (line 388)
  1.82%    1.90%  │││     0x00007fe779216951: mov    0x38(%rsp),%r10
  0.00%    0.01%  │││     0x00007fe779216956: shr    $0x3,%r10          ;*putfield inst
                  │││                                                   ; - com.google.re2j.Machine::alloc@47 (line 151)
                  │││                                                   ; - com.google.re2j.Machine::add@301 (line 389)
  0.00%           │││     0x00007fe77921695a: mov    0x70(%rsp),%rbx
  0.01%           │││     0x00007fe77921695f: test   %rbx,%rbx
                  │││╭    0x00007fe779216962: jne    0x00007fe779216a73  ;*ifnonnull
                  ││││                                                  ; - com.google.re2j.Machine::add@295 (line 388)
  0.39%    0.40%  ││││    0x00007fe779216968: mov    0x20(%rsi),%ebp    ;*getfield pool
                  ││││                                                  ; - com.google.re2j.Machine::alloc@1 (line 147)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 389)
  0.01%    0.00%  ││││    0x00007fe77921696b: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007fe779216ca9
  0.00%           ││││    0x00007fe779216970: cmp    $0xf8002f22,%r8d   ;   {metadata(&apos;java/util/ArrayList&apos;)}
                  ││││    0x00007fe779216977: jne    0x00007fe779216ad9
  0.01%    0.01%  ││││    0x00007fe77921697d: lea    (%r12,%rbp,8),%r9  ;*invokeinterface size
                  ││││                                                  ; - com.google.re2j.Machine::alloc@4 (line 147)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 389)
  0.36%    0.44%  ││││    0x00007fe779216981: mov    0x10(%r9),%ecx     ;*getfield size
                  ││││                                                  ; - java.util.ArrayList::size@1 (line 278)
                  ││││                                                  ; - com.google.re2j.Machine::alloc@4 (line 147)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 389)
                  ││││    0x00007fe779216985: test   %ecx,%ecx
                  ││││    0x00007fe779216987: jle    0x00007fe779216b3d  ;*ifle
                  ││││                                                  ; - com.google.re2j.Machine::alloc@11 (line 148)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 389)
                  ││││    0x00007fe77921698d: mov    %ecx,%r8d
  0.01%    0.01%  ││││    0x00007fe779216990: dec    %r8d               ;*isub
                  ││││                                                  ; - com.google.re2j.Machine::alloc@20 (line 148)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 389)
  0.41%    0.37%  ││││    0x00007fe779216993: cmp    %ecx,%r8d
                  ││││    0x00007fe779216996: jge    0x00007fe779216b65  ;*if_icmplt
                  ││││                                                  ; - java.util.ArrayList::rangeCheck@5 (line 652)
                  ││││                                                  ; - java.util.ArrayList::remove@2 (line 492)
                  ││││                                                  ; - com.google.re2j.Machine::alloc@21 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 389)
                  ││││    0x00007fe77921699c: incl   0xc(%r9)           ;*putfield modCount
                  ││││                                                  ; - java.util.ArrayList::remove@12 (line 494)
                  ││││                                                  ; - com.google.re2j.Machine::alloc@21 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 389)
  0.40%    0.46%  ││││    0x00007fe7792169a0: mov    0x14(%r9),%ebp     ;*getfield elementData
                  ││││                                                  ; - java.util.ArrayList::elementData@1 (line 418)
                  ││││                                                  ; - java.util.ArrayList::remove@17 (line 495)
                  ││││                                                  ; - com.google.re2j.Machine::alloc@21 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 389)
                  ││││    0x00007fe7792169a4: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007fe779216cb9
  0.01%           ││││    0x00007fe7792169a9: cmp    %r11d,%r8d
                  ││││    0x00007fe7792169ac: jae    0x00007fe779216aae  ;*aaload
                  ││││                                                  ; - java.util.ArrayList::elementData@5 (line 418)
                  ││││                                                  ; - java.util.ArrayList::remove@17 (line 495)
                  ││││                                                  ; - com.google.re2j.Machine::alloc@21 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 389)
  0.01%    0.00%  ││││    0x00007fe7792169b2: mov    %r8d,0x10(%r9)     ;*putfield size
                  ││││                                                  ; - java.util.ArrayList::remove@62 (line 501)
                  ││││                                                  ; - com.google.re2j.Machine::alloc@21 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 389)
  0.43%    0.39%  ││││    0x00007fe7792169b6: lea    (%r12,%rbp,8),%r11
  0.00%           ││││    0x00007fe7792169ba: mov    0xc(%r11,%rcx,4),%ebp  ;*aaload
                  ││││                                                  ; - java.util.ArrayList::elementData@5 (line 418)
                  ││││                                                  ; - java.util.ArrayList::remove@17 (line 495)
                  ││││                                                  ; - com.google.re2j.Machine::alloc@21 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 389)
  0.00%    0.00%  ││││    0x00007fe7792169bf: mov    %r12d,0xc(%r11,%rcx,4)  ;*aastore
                  ││││                                                  ; - java.util.ArrayList::remove@66 (line 501)
                  ││││                                                  ; - com.google.re2j.Machine::alloc@21 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 389)
  0.02%    0.01%  ││││    0x00007fe7792169c4: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007fe779216ccd
  0.51%    0.27%  ││││    0x00007fe7792169c9: cmp    $0xf8019b16,%r8d   ;   {metadata(&apos;com/google/re2j/Machine$Thread&apos;)}
                  ││││    0x00007fe7792169d0: jne    0x00007fe779216bdd
  0.00%    0.00%  ││││    0x00007fe7792169d6: lea    (%r12,%rbp,8),%rbx  ;*checkcast
                  ││││                                                  ; - com.google.re2j.Machine::alloc@26 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 389)
  0.00%           ││││    0x00007fe7792169da: mov    %r10d,0x10(%rbx)
  0.01%    0.01%  ││││    0x00007fe7792169de: mov    %rbx,%r10
  0.34%    0.20%  ││││    0x00007fe7792169e1: shr    $0x9,%r10
  0.01%           ││││    0x00007fe7792169e5: movabs $0x7fe78a794000,%r11
                  ││││    0x00007fe7792169ef: mov    %r12b,(%r11,%r10,1)  ;*aload
                  ││││                                                  ; - com.google.re2j.Machine::add@316 (line 393)
  0.05%    0.03%  ││││ ↗  0x00007fe7792169f3: mov    0x20(%rsp),%rdi
  0.34%    0.20%  ││││ │  0x00007fe7792169f8: mov    0xc(%rdi),%r10d    ;*arraylength
                  ││││ │                                                ; - com.google.re2j.Machine::add@318 (line 393)
                  ││││ │                                                ; implicit exception: dispatches to 0x00007fe779216c99
  0.02%    0.02%  ││││ │  0x00007fe7792169fc: test   %r10d,%r10d
                  ││││ │  0x00007fe7792169ff: jle    0x00007fe779216b1b  ;*ifle
                  ││││ │                                                ; - com.google.re2j.Machine::add@319 (line 393)
  0.01%    0.01%  ││││ │  0x00007fe779216a05: mov    0xc(%rbx),%r11d    ;*getfield cap
                  ││││ │                                                ; - com.google.re2j.Machine::add@324 (line 393)
  0.02%    0.00%  ││││ │  0x00007fe779216a09: lea    (%r12,%r13,8),%rbp  ;*aaload
                  ││││ │                                                ; - com.google.re2j.Machine$Queue::add@24 (line 61)
                  ││││ │                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.40%    0.23%  ││││ │  0x00007fe779216a0d: mov    %r11,%r8
  0.01%    0.01%  ││││ │  0x00007fe779216a10: shl    $0x3,%r8
                  ││││ │  0x00007fe779216a14: cmp    %rdi,%r8
                  ││││╭│  0x00007fe779216a17: je     0x00007fe779216a44  ;*if_acmpeq
                  ││││││                                                ; - com.google.re2j.Machine::add@329 (line 393)
  0.02%    0.01%  ││││││  0x00007fe779216a19: mov    0xc(%r12,%r11,8),%r8d  ; implicit exception: dispatches to 0x00007fe779216ce9
  0.55%    0.37%  ││││││  0x00007fe779216a1e: lea    (%r12,%r11,8),%rcx  ;*getfield cap
                  ││││││                                                ; - com.google.re2j.Machine::add@324 (line 393)
  0.00%           ││││││  0x00007fe779216a22: cmp    %r10d,%r8d
                  ││││││  0x00007fe779216a25: jb     0x00007fe779216aed
  0.01%    0.01%  ││││││  0x00007fe779216a2b: lea    0x10(%r12,%r11,8),%rsi
  0.00%           ││││││  0x00007fe779216a30: add    $0x10,%rdi
  0.47%    0.24%  ││││││  0x00007fe779216a34: movslq %r10d,%rdx
  0.00%           ││││││  0x00007fe779216a37: movabs $0x7fe779052640,%r10
  0.02%    0.02%  ││││││  0x00007fe779216a41: callq  *%r10              ;*aload
                  ││││││                                                ; - com.google.re2j.Machine::add@347 (line 396)
  0.01%           ││││↘│  0x00007fe779216a44: mov    %rbp,%r10
  0.04%    0.04%  ││││ │  0x00007fe779216a47: mov    %rbx,%r8
  0.02%    0.03%  ││││ │  0x00007fe779216a4a: shr    $0x3,%r8
  0.44%    0.73%  ││││ │  0x00007fe779216a4e: mov    %r8d,0x10(%r12,%r13,8)
                  ││││ │  0x00007fe779216a53: shr    $0x9,%r10
  0.04%    0.04%  ││││ │  0x00007fe779216a57: movabs $0x7fe78a794000,%r11
  0.01%    0.01%  ││││ │  0x00007fe779216a61: mov    %r12b,(%r11,%r10,1)  ;*putfield thread
                  ││││ │                                                ; - com.google.re2j.Machine::add@351 (line 396)
  0.45%    0.54%  ││││ │  0x00007fe779216a65: xor    %eax,%eax          ;*synchronization entry
                  ││││ │                                                ; - com.google.re2j.Machine::add@-1 (line 341)
  0.39%    0.54%  ↘↘↘│ │  0x00007fe779216a67: add    $0x60,%rsp
  0.02%    0.05%     │ │  0x00007fe779216a6b: pop    %rbp
  0.37%    0.30%     │ │  0x00007fe779216a6c: test   %eax,0x18b7558e(%rip)        # 0x00007fe791d8c000
                     │ │                                                ;   {poll_return}
  0.38%    0.36%     │ │  0x00007fe779216a72: retq   
  0.01%    0.01%     ↘ │  0x00007fe779216a73: mov    %r10d,0x10(%rbx)
                       │  0x00007fe779216a77: mov    %rbx,%r10
                       │  0x00007fe779216a7a: shr    $0x9,%r10
                       │  0x00007fe779216a7e: movabs $0x7fe78a794000,%r11
  0.02%    0.02%       │  0x00007fe779216a88: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                       │                                                ; - com.google.re2j.Machine::add@313 (line 391)
                       ╰  0x00007fe779216a8c: jmpq   0x00007fe7792169f3  ;*tableswitch
                                                                        ; - com.google.re2j.Machine::add@40 (line 349)
                          0x00007fe779216a91: mov    0x1c(%rsp),%r8d
                          0x00007fe779216a96: mov    0x20(%rsp),%r9
                          0x00007fe779216a9b: mov    %r10d,%edi
                          0x00007fe779216a9e: mov    0x70(%rsp),%r10
                          0x00007fe779216aa3: mov    %r10,(%rsp)
                          0x00007fe779216aa7: callq  0x00007fe779046020  ; OopMap{off=1580}
                                                                        ;*invokespecial add
....................................................................................................
 11.76%   10.95%  <total for region 5>

....[Hottest Regions]...............................................................................
 20.89%   24.90%         C2, level 4  com.google.re2j.Machine::step, version 503 (307 bytes) 
 18.94%   18.56%         C2, level 4  com.google.re2j.Machine::step, version 503 (465 bytes) 
 17.90%   17.89%         C2, level 4  com.google.re2j.Machine::step, version 503 (229 bytes) 
 17.08%   16.34%         C2, level 4  com.google.re2j.Machine::add, version 491 (322 bytes) 
 11.76%   10.95%         C2, level 4  com.google.re2j.Machine::add, version 491 (389 bytes) 
  4.25%    4.49%         C2, level 4  com.google.re2j.Machine::match, version 545 (784 bytes) 
  3.35%    1.56%        runtime stub  StubRoutines::jint_disjoint_arraycopy (128 bytes) 
  0.65%    0.40%         C2, level 4  com.google.re2j.Machine::step, version 503 (72 bytes) 
  0.53%    0.52%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.38%    0.36%         C2, level 4  com.google.re2j.Machine::match, version 545 (67 bytes) 
  0.38%    0.46%         C2, level 4  com.google.re2j.Machine::step, version 503 (11 bytes) 
  0.18%    0.22%         C2, level 4  com.google.re2j.Machine::step, version 503 (40 bytes) 
  0.16%    0.03%         C2, level 4  com.google.re2j.Machine::init, version 560 (83 bytes) 
  0.15%    0.03%   [kernel.kallsyms]  [unknown] (44 bytes) 
  0.13%    0.03%   [kernel.kallsyms]  [unknown] (39 bytes) 
  0.12%    0.03%   [kernel.kallsyms]  [unknown] (27 bytes) 
  0.11%    0.02%   [kernel.kallsyms]  [unknown] (45 bytes) 
  0.09%    0.19%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ (102 bytes) 
  0.09%    0.07%         C2, level 4  com.google.re2j.Machine::step, version 503 (57 bytes) 
  0.08%    0.03%   [kernel.kallsyms]  [unknown] (29 bytes) 
  2.78%    2.91%  <...other 542 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 59.04%   62.54%         C2, level 4  com.google.re2j.Machine::step, version 503 
 28.84%   27.29%         C2, level 4  com.google.re2j.Machine::add, version 491 
  4.67%    4.89%         C2, level 4  com.google.re2j.Machine::match, version 545 
  3.35%    1.56%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
  2.39%    1.95%   [kernel.kallsyms]  [unknown] 
  0.27%    0.07%         C2, level 4  com.google.re2j.Machine::init, version 560 
  0.10%    0.20%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.10%    0.06%         C2, level 4  com.google.re2j.Matcher::find, version 572 
  0.08%    0.06%      hsdis-amd64.so  [unknown] 
  0.08%    0.19%        libc-2.26.so  vfprintf 
  0.06%    0.09%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.05%    0.06%        libc-2.26.so  __strlen_avx2 
  0.04%    0.03%         C2, level 4  com.github.arnaudroger.re2j.Re2jFindRegex::testExp2, version 588 
  0.04%    0.01%        libc-2.26.so  _IO_fflush 
  0.03%    0.09%           libjvm.so  _ZN12outputStream15update_positionEPKcm 
  0.03%    0.04%           libjvm.so  _ZN13xmlTextStream5writeEPKcm 
  0.03%    0.01%  libpthread-2.26.so  __pthread_getspecific 
  0.02%    0.01%        libc-2.26.so  __strchr_avx2 
  0.02%    0.03%        libc-2.26.so  _IO_fwrite 
  0.02%    0.00%         C2, level 4  java.util.Collections::shuffle, version 587 
  0.73%    0.54%  <...other 101 warm methods...>
....................................................................................................
100.00%   99.74%  <totals>

....[Distribution by Source]........................................................................
 93.01%   94.91%         C2, level 4
  3.36%    1.56%        runtime stub
  2.39%    1.95%   [kernel.kallsyms]
  0.61%    0.88%           libjvm.so
  0.38%    0.57%        libc-2.26.so
  0.08%    0.06%      hsdis-amd64.so
  0.08%    0.05%  libpthread-2.26.so
  0.03%    0.01%         C1, level 3
  0.02%                       [vdso]
  0.01%    0.02%         interpreter
  0.01%             Unknown, level 0
  0.00%                   libjava.so
  0.00%               perf-10704.map
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                     Mode  Cnt     Score    Error  Units
Re2jFindRegex.testExp2       thrpt   20  2575.024 ± 68.791  ops/s
Re2jFindRegex.testExp2:·asm  thrpt            NaN             ---
