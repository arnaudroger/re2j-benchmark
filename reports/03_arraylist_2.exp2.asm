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
# Warmup Iteration   1: 1758.303 ops/s
# Warmup Iteration   2: 2691.147 ops/s
# Warmup Iteration   3: 2697.633 ops/s
# Warmup Iteration   4: 2698.822 ops/s
# Warmup Iteration   5: 2703.339 ops/s
# Warmup Iteration   6: 2699.512 ops/s
# Warmup Iteration   7: 2700.341 ops/s
# Warmup Iteration   8: 2698.770 ops/s
# Warmup Iteration   9: 2705.001 ops/s
# Warmup Iteration  10: 2705.063 ops/s
# Warmup Iteration  11: 2710.717 ops/s
# Warmup Iteration  12: 2708.264 ops/s
# Warmup Iteration  13: 2708.122 ops/s
# Warmup Iteration  14: 2703.472 ops/s
# Warmup Iteration  15: 2708.943 ops/s
# Warmup Iteration  16: 2710.257 ops/s
# Warmup Iteration  17: 2698.836 ops/s
# Warmup Iteration  18: 2694.036 ops/s
# Warmup Iteration  19: 2698.370 ops/s
# Warmup Iteration  20: 2704.811 ops/s
Iteration   1: 2704.809 ops/s
Iteration   2: 2703.940 ops/s
Iteration   3: 2704.049 ops/s
Iteration   4: 2505.364 ops/s
Iteration   5: 2702.105 ops/s
Iteration   6: 2709.412 ops/s
Iteration   7: 2706.047 ops/s
Iteration   8: 2705.286 ops/s
Iteration   9: 2704.063 ops/s
Iteration  10: 2524.037 ops/s
Iteration  11: 2707.257 ops/s
Iteration  12: 2707.181 ops/s
Iteration  13: 2710.622 ops/s
Iteration  14: 2710.622 ops/s
Iteration  15: 2710.457 ops/s
Iteration  16: 2502.935 ops/s
Iteration  17: 2709.878 ops/s
Iteration  18: 2710.227 ops/s
Iteration  19: 2702.171 ops/s
Iteration  20: 2705.516 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  2677.299 ±(99.9%) 62.453 ops/s [Average]
  (min, avg, max) = (2502.935, 2677.299, 2710.622), stdev = 71.921
  CI (99.9%): [2614.846, 2739.752] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2:·asm":
PrintAssembly processed: 192157 total address lines.
Perf output processed (skipped 23.349 seconds):
 Column 1: cycles (20892 events)
 Column 2: instructions (20866 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 495 (366 bytes) 

                           0x00007f372cbe26c8: mov    0x28(%rsp),%r8
                           0x00007f372cbe26cd: movb   $0x1,0x10(%r8)     ;*putfield matched
                                                                         ; - com.google.re2j.Machine::step@284 (line 306)
                           0x00007f372cbe26d2: mov    0x20(%rsp),%r9d
                           0x00007f372cbe26d7: jmpq   0x00007f372cbe224d
                           0x00007f372cbe26dc: mov    %r10d,0x74(%rsp)
                           0x00007f372cbe26e1: mov    %eax,0x7c(%rsp)
                           0x00007f372cbe26e5: mov    %ebx,%edi
                           0x00007f372cbe26e7: mov    %r11,%r13
                           0x00007f372cbe26ea: jmpq   0x00007f372cbe2289
  0.39%    0.45%      ↗    0x00007f372cbe26ef: cmp    $0x3f,%r8d
                      │    0x00007f372cbe26f3: jge    0x00007f372cbe2cb5  ;*if_icmpge
                      │                                                  ; - com.google.re2j.Unicode::simpleFold@48 (line 215)
                      │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 57)
                      │                                                  ; - com.google.re2j.Machine::step@294 (line 310)
                      │    0x00007f372cbe26f9: cmp    $0x3f,%r8d
                      │    0x00007f372cbe26fd: jae    0x00007f372cbe2b1d
  0.03%    0.03%      │    0x00007f372cbe2703: mov    0x10(%r9,%r8,4),%ebp  ;*aaload
                      │                                                  ; - com.google.re2j.Unicode::simpleFold@55 (line 215)
                      │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 57)
                      │                                                  ; - com.google.re2j.Machine::step@294 (line 310)
  0.04%    0.04%      │    0x00007f372cbe2708: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f372cbe31a5
  0.34%    0.49%      │    0x00007f372cbe270d: test   %r11d,%r11d
                      │    0x00007f372cbe2710: jbe    0x00007f372cbe2b65
                      │    0x00007f372cbe2716: mov    0x10(%r12,%rbp,8),%ebp  ;*iaload
                      │                                                  ; - com.google.re2j.Unicode::simpleFold@57 (line 215)
                      │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 57)
                      │                                                  ; - com.google.re2j.Machine::step@294 (line 310)
  0.03%    0.01%      │    0x00007f372cbe271b: cmp    0x20(%rsp),%ebp
                      │    0x00007f372cbe271f: je     0x00007f372cbe2cfd  ;*if_icmpne
                      │                                                  ; - com.google.re2j.Unicode::simpleFold@59 (line 215)
                      │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 57)
                      │                                                  ; - com.google.re2j.Machine::step@294 (line 310)
  0.05%    0.06%      │    0x00007f372cbe2725: mov    0x20(%rsp),%r8d
  0.35%    0.45%      │    0x00007f372cbe272a: cmp    $0x7f,%r8d
                      │    0x00007f372cbe272e: jg     0x00007f372cbe2d39  ;*if_icmpgt
                      │                                                  ; - com.google.re2j.Unicode::toLower@3 (line 177)
                      │                                                  ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                      │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 57)
                      │                                                  ; - com.google.re2j.Machine::step@294 (line 310)
                      │    0x00007f372cbe2734: cmp    $0x41,%r8d
                      │    0x00007f372cbe2738: jl     0x00007f372cbe2c65  ;*if_icmpgt
                      │                                                  ; - com.google.re2j.Unicode::toLower@9 (line 178)
                      │                                                  ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                      │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 57)
                      │                                                  ; - com.google.re2j.Machine::step@294 (line 310)
  0.02%    0.00%      │    0x00007f372cbe273e: cmp    $0x5a,%r8d
                  ╭   │    0x00007f372cbe2742: jg     0x00007f372cbe2750  ;*if_icmpgt
                  │   │                                                  ; - com.google.re2j.Unicode::toLower@15 (line 178)
                  │   │                                                  ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                  │   │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  │   │                                                  ; - com.google.re2j.Machine::step@294 (line 310)
                  │   │    0x00007f372cbe2744: mov    %r8d,%r10d
                  │   │    0x00007f372cbe2747: add    $0x20,%r10d        ;*iinc
                  │   │                                                  ; - com.google.re2j.Unicode::toLower@18 (line 179)
                  │   │                                                  ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                  │   │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  │   │                                                  ; - com.google.re2j.Machine::step@294 (line 310)
                  │   │    0x00007f372cbe274b: cmp    %r8d,%r10d
                  │╭  │    0x00007f372cbe274e: jne    0x00007f372cbe276b  ;*if_icmpeq
                  ││  │                                                  ; - com.google.re2j.Unicode::simpleFold@77 (line 224)
                  ││  │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  ││  │                                                  ; - com.google.re2j.Machine::step@294 (line 310)
  0.08%    0.07%  ↘│  │    0x00007f372cbe2750: cmp    $0x61,%r8d
                   │  │    0x00007f372cbe2754: jl     0x00007f372cbe2f7d  ;*if_icmpgt
                   │  │                                                  ; - com.google.re2j.Unicode::toUpper@9 (line 167)
                   │  │                                                  ; - com.google.re2j.Unicode::simpleFold@83 (line 227)
                   │  │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 57)
                   │  │                                                  ; - com.google.re2j.Machine::step@294 (line 310)
  0.46%    0.43%   │  │    0x00007f372cbe275a: cmp    $0x7a,%r8d
                   │  │    0x00007f372cbe275e: jg     0x00007f372cbe2fc5  ;*if_icmpgt
                   │  │                                                  ; - com.google.re2j.Unicode::toUpper@15 (line 167)
                   │  │                                                  ; - com.google.re2j.Unicode::simpleFold@83 (line 227)
                   │  │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 57)
                   │  │                                                  ; - com.google.re2j.Machine::step@294 (line 310)
                   │  │    0x00007f372cbe2764: mov    %r8d,%r10d
  0.01%    0.02%   │  │    0x00007f372cbe2767: add    $0xffffffe0,%r10d  ; OopMap{r9=Oop rbx=NarrowOop rdi=NarrowOop rsi=Oop r13=Oop r14=NarrowOop [8]=Oop [24]=Oop [40]=Oop off=1451}
                   │  │                                                  ;*goto
                   │  │                                                  ; - com.google.re2j.Inst::matchRune@54 (line 57)
                   │  │                                                  ; - com.google.re2j.Machine::step@294 (line 310)
  0.05%    0.07%   ↘  │    0x00007f372cbe276b: test   %eax,0x1601588f(%rip)        # 0x00007f3742bf8000
                      │                                                  ;*goto
                      │                                                  ; - com.google.re2j.Inst::matchRune@54 (line 57)
                      │                                                  ; - com.google.re2j.Machine::step@294 (line 310)
                      │                                                  ;   {poll}
  0.41%    0.48%      │    0x00007f372cbe2771: cmp    %eax,%r10d
                      │    0x00007f372cbe2774: je     0x00007f372cbe2619  ;*if_icmpeq
                      │                                                  ; - com.google.re2j.Inst::matchRune@39 (line 56)
                      │                                                  ; - com.google.re2j.Machine::step@294 (line 310)
                      │    0x00007f372cbe277a: mov    %eax,%r11d         ;*iload_1
                      │                                                  ; - com.google.re2j.Inst::matchRune@42 (line 58)
                      │                                                  ; - com.google.re2j.Machine::step@294 (line 310)
  0.25%    0.36%      │    0x00007f372cbe277d: cmp    %r10d,%ecx
  0.21%    0.34%    ╭ │    0x00007f372cbe2780: je     0x00007f372cbe284f  ;*if_icmpne
                    │ │                                                  ; - com.google.re2j.Inst::matchRune@44 (line 58)
                    │ │                                                  ; - com.google.re2j.Machine::step@294 (line 310)
  0.00%    0.00%    │ │    0x00007f372cbe2786: mov    %r10d,0x20(%rsp)
  0.01%    0.01%    │ │    0x00007f372cbe278b: mov    %r11d,%eax
  0.24%    0.31%    │ │    0x00007f372cbe278e: mov    $0x1f,%r11d
  0.23%    0.35%    │ │    0x00007f372cbe2794: mov    $0x1f,%r10d
                    │ │    0x00007f372cbe279a: xor    %r8d,%r8d
  0.00%    0.01%    │ │    0x00007f372cbe279d: mov    $0x3f,%edx
  0.25%    0.40%    │ │    0x00007f372cbe27a2: mov    %r8d,0x30(%rsp)
  0.27%    0.22%    │╭│    0x00007f372cbe27a7: jmp    0x00007f372cbe27e6
                    │││    0x00007f372cbe27a9: nopl   0x0(%rax)
  0.76%    1.02%    │││↗   0x00007f372cbe27b0: mov    0x30(%rsp),%r8d    ; OopMap{r9=Oop rbx=NarrowOop rdi=NarrowOop rsi=Oop r13=Oop r14=NarrowOop [8]=Oop [24]=Oop [40]=Oop off=1525}
                    ││││                                                 ;*goto
                    ││││                                                 ; - com.google.re2j.Unicode::simpleFold@40 (line 214)
                    ││││                                                 ; - com.google.re2j.Inst::matchRune@50 (line 57)
                    ││││                                                 ; - com.google.re2j.Machine::step@294 (line 310)
  0.74%    1.04%    ││││↗  0x00007f372cbe27b5: test   %eax,0x16015845(%rip)        # 0x00007f3742bf8000
                    │││││                                                ;*goto
                    │││││                                                ; - com.google.re2j.Unicode::simpleFold@40 (line 214)
                    │││││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                    │││││                                                ; - com.google.re2j.Machine::step@294 (line 310)
                    │││││                                                ;   {poll}
  0.65%    0.79%    │││││  0x00007f372cbe27bb: cmp    %r10d,%r8d
                    ││╰││  0x00007f372cbe27be: jge    0x00007f372cbe26ef  ;*if_icmpge
                    ││ ││                                                ; - com.google.re2j.Unicode::simpleFold@9 (line 207)
                    ││ ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                    ││ ││                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.58%    0.71%    ││ ││  0x00007f372cbe27c4: mov    %r8d,0x30(%rsp)
  0.58%    0.75%    ││ ││  0x00007f372cbe27c9: mov    %r10d,%edx
  0.60%    0.87%    ││ ││  0x00007f372cbe27cc: sub    %r8d,%r10d         ;*isub
                    ││ ││                                                ; - com.google.re2j.Unicode::simpleFold@15 (line 208)
                    ││ ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                    ││ ││                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.54%    0.74%    ││ ││  0x00007f372cbe27cf: mov    %r10d,%r11d
  0.49%    0.66%    ││ ││  0x00007f372cbe27d2: sar    $0x1f,%r11d
  0.57%    0.92%    ││ ││  0x00007f372cbe27d6: shr    $0x1f,%r11d
  0.72%    0.76%    ││ ││  0x00007f372cbe27da: add    %r10d,%r11d
  0.53%    0.68%    ││ ││  0x00007f372cbe27dd: sar    %r11d
  0.48%    0.62%    ││ ││  0x00007f372cbe27e0: mov    %r8d,%r10d
  0.59%    0.60%    ││ ││  0x00007f372cbe27e3: add    %r11d,%r10d        ;*idiv
                    ││ ││                                                ; - com.google.re2j.Unicode::simpleFold@17 (line 208)
                    ││ ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                    ││ ││                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.62%    0.76%    │↘ ││  0x00007f372cbe27e6: cmp    $0x3f,%r10d
                    │  ││  0x00007f372cbe27ea: jae    0x00007f372cbe28e9
  0.57%    0.69%    │  ││  0x00007f372cbe27f0: movslq 0x30(%rsp),%r8
  1.02%    1.32%    │  ││  0x00007f372cbe27f5: movslq %r11d,%r11
  0.79%    1.02%    │  ││  0x00007f372cbe27f8: add    %r11,%r8
  0.73%    0.81%    │  ││  0x00007f372cbe27fb: mov    0x10(%r9,%r8,4),%ebp  ;*aaload
                    │  ││                                                ; - com.google.re2j.Unicode::simpleFold@24 (line 209)
                    │  ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                    │  ││                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.72%    0.76%    │  ││  0x00007f372cbe2800: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f372cbe30dd
  1.45%    1.93%    │  ││  0x00007f372cbe2805: test   %r11d,%r11d
                    │  ││  0x00007f372cbe2808: jbe    0x00007f372cbe2935  ;*iaload
                    │  ││                                                ; - com.google.re2j.Unicode::simpleFold@26 (line 209)
                    │  ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                    │  ││                                                ; - com.google.re2j.Machine::step@294 (line 310)
  1.07%    1.44%    │  ││  0x00007f372cbe280e: mov    0x10(%r12,%rbp,8),%r8d
  0.48%    0.65%    │  ││  0x00007f372cbe2813: cmp    0x20(%rsp),%r8d
                    │  ╰│  0x00007f372cbe2818: jge    0x00007f372cbe27b0  ;*if_icmpge
                    │   │                                                ; - com.google.re2j.Unicode::simpleFold@28 (line 209)
                    │   │                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                    │   │                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.39%    0.41%    │   │  0x00007f372cbe281a: mov    %r10d,%r8d
  0.15%    0.23%    │   │  0x00007f372cbe281d: inc    %r8d               ;*iadd
                    │   │                                                ; - com.google.re2j.Unicode::simpleFold@33 (line 210)
                    │   │                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                    │   │                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.12%    0.25%    │   │  0x00007f372cbe2820: mov    %edx,%r10d
  0.01%    0.03%    │   ╰  0x00007f372cbe2823: jmp    0x00007f372cbe27b5
  0.02%    0.00%    │      0x00007f372cbe2825: xor    %r10d,%r10d
                    │      0x00007f372cbe2828: mov    0x20(%rsp),%r9d
                    │      0x00007f372cbe282d: mov    0x7c(%rsp),%eax
  0.00%    0.01%    │      0x00007f372cbe2831: jmpq   0x00007f372cbe232e
                    │      0x00007f372cbe2836: mov    0x80(%rsp),%ecx
                    │      0x00007f372cbe283d: test   %ecx,%ecx
                    │      0x00007f372cbe283f: jne    0x00007f372cbe2465  ;*ifne
                    │                                                    ; - com.google.re2j.Machine::step@160 (line 287)
                    │      0x00007f372cbe2845: mov    0x20(%rsp),%r9d
                    │      0x00007f372cbe284a: jmpq   0x00007f372cbe224d
  0.01%    0.01%    ↘      0x00007f372cbe284f: mov    %ecx,0x20(%rsp)
  0.04%    0.04%           0x00007f372cbe2853: jmpq   0x00007f372cbe2289
  0.00%    0.00%           0x00007f372cbe2858: mov    %r10d,0x74(%rsp)
  0.00%                    0x00007f372cbe285d: mov    %eax,0x7c(%rsp)
                           0x00007f372cbe2861: mov    %ebx,%edi
                           0x00007f372cbe2863: mov    %r11,%r13
                           0x00007f372cbe2866: jmpq   0x00007f372cbe2289
                           0x00007f372cbe286b: mov    $0xffffffe4,%esi
                           0x00007f372cbe2870: mov    0x8(%rsp),%rbp
                           0x00007f372cbe2875: mov    %r11d,0x7c(%rsp)
                           0x00007f372cbe287a: mov    %r10d,0x8(%rsp)
                           0x00007f372cbe287f: mov    0x10(%rsp),%r11d
                           0x00007f372cbe2884: mov    %r11d,0xc(%rsp)
                           0x00007f372cbe2889: mov    0x14(%rsp),%r10d
....................................................................................................
 19.81%   25.12%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 487 (308 bytes) 

                      # parm4:    rdi       = int
                      # parm5:    [sp+0x70]   = &apos;com/google/re2j/Machine$Thread&apos;  (sp of caller)
                      0x00007f372cbd5540: mov    0x8(%rsi),%r10d    ;   {no_reloc}
                      0x00007f372cbd5544: shl    $0x3,%r10
                      0x00007f372cbd5548: cmp    %r10,%rax
                      0x00007f372cbd554b: jne    0x00007f372ca0ce20  ;   {runtime_call}
                      0x00007f372cbd5551: data16 xchg %ax,%ax
                      0x00007f372cbd5554: nopl   0x0(%rax,%rax,1)
                      0x00007f372cbd555c: data16 data16 xchg %ax,%ax
                    [Verified Entry Point]
  0.70%    0.69%      0x00007f372cbd5560: mov    %eax,-0x14000(%rsp)
  0.17%    0.12%      0x00007f372cbd5567: push   %rbp
  0.71%    0.49%      0x00007f372cbd5568: sub    $0x60,%rsp         ;*synchronization entry
                                                                    ; - com.google.re2j.Machine::add@-1 (line 344)
  0.36%    0.30%      0x00007f372cbd556c: mov    %edi,0x28(%rsp)
  0.29%    0.16%      0x00007f372cbd5570: mov    %r9,0x20(%rsp)
  0.38%    0.43%      0x00007f372cbd5575: mov    %r8d,0x1c(%rsp)
  0.41%    0.29%      0x00007f372cbd557a: mov    %rsi,0x8(%rsp)
  0.05%    0.07%      0x00007f372cbd557f: mov    %ecx,0x30(%rsp)
  0.11%    0.14%      0x00007f372cbd5583: test   %ecx,%ecx
                      0x00007f372cbd5585: je     0x00007f372cbd57fd  ;*ifne
                                                                    ; - com.google.re2j.Machine::add@1 (line 344)
  0.35%    0.29%      0x00007f372cbd558b: mov    %rdx,0x48(%rsp)
  0.33%    0.26%      0x00007f372cbd5590: mov    0x14(%rdx),%r10d   ;*getfield sparse
                                                                    ; - com.google.re2j.Machine$Queue::contains@1 (line 46)
                                                                    ; - com.google.re2j.Machine::add@9 (line 347)
                                                                    ; implicit exception: dispatches to 0x00007f372cbd5bdd
  0.06%    0.03%      0x00007f372cbd5594: mov    0xc(%r12,%r10,8),%r11d  ; implicit exception: dispatches to 0x00007f372cbd5bf1
  0.14%    0.14%      0x00007f372cbd5599: cmp    %r11d,%ecx
                      0x00007f372cbd559c: jae    0x00007f372cbd572a  ;*iaload
                                                                    ; - com.google.re2j.Machine$Queue::contains@5 (line 46)
                                                                    ; - com.google.re2j.Machine::add@9 (line 347)
  0.34%    0.28%      0x00007f372cbd55a2: mov    0x10(%rdx),%r11d   ;*getfield dense
                                                                    ; - com.google.re2j.Machine$Queue::contains@18 (line 50)
                                                                    ; - com.google.re2j.Machine::add@9 (line 347)
  0.47%    0.20%      0x00007f372cbd55a6: mov    0xc(%rdx),%r8d     ;*getfield size
                                                                    ; - com.google.re2j.Machine$Queue::contains@9 (line 47)
                                                                    ; - com.google.re2j.Machine::add@9 (line 347)
  0.07%    0.07%      0x00007f372cbd55aa: lea    (%r12,%r10,8),%rcx
  0.13%    0.08%      0x00007f372cbd55ae: mov    0x30(%rsp),%r9d
  0.36%    0.34%      0x00007f372cbd55b3: mov    0x10(%rcx,%r9,4),%ebp  ;*iaload
                                                                    ; - com.google.re2j.Machine$Queue::contains@5 (line 46)
                                                                    ; - com.google.re2j.Machine::add@9 (line 347)
  0.69%    0.34%      0x00007f372cbd55b8: cmp    %r8d,%ebp
                  ╭   0x00007f372cbd55bb: jl     0x00007f372cbd5678  ;*invokevirtual contains
                  │                                                 ; - com.google.re2j.Machine::add@9 (line 347)
  0.58%    0.47%  │↗  0x00007f372cbd55c1: mov    0x30(%rsp),%r10d
  0.12%    0.05%  ││  0x00007f372cbd55c6: mov    %r8d,0x10(%rcx,%r10,4)  ;*iastore
                  ││                                                ; - com.google.re2j.Machine$Queue::add@18 (line 58)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 350)
  0.36%    0.23%  ││  0x00007f372cbd55cb: mov    %r8d,%r10d
  0.23%    0.15%  ││  0x00007f372cbd55ce: inc    %r10d
  0.30%    0.25%  ││  0x00007f372cbd55d1: mov    %r10d,0xc(%rdx)    ;*putfield size
                  ││                                                ; - com.google.re2j.Machine$Queue::add@8 (line 57)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 350)
  0.04%    0.05%  ││  0x00007f372cbd55d5: mov    0xc(%r12,%r11,8),%r10d  ; implicit exception: dispatches to 0x00007f372cbd5c05
  0.21%    0.36%  ││  0x00007f372cbd55da: cmp    %r10d,%r8d
                  ││  0x00007f372cbd55dd: jae    0x00007f372cbd5761  ;*aaload
                  ││                                                ; - com.google.re2j.Machine$Queue::add@24 (line 59)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 350)
  0.30%    0.17%  ││  0x00007f372cbd55e3: lea    (%r12,%r11,8),%r10  ;*getfield dense
                  ││                                                ; - com.google.re2j.Machine$Queue::contains@18 (line 50)
                  ││                                                ; - com.google.re2j.Machine::add@9 (line 347)
  0.34%    0.21%  ││  0x00007f372cbd55e7: mov    %r10,0x40(%rsp)
  0.05%    0.05%  ││  0x00007f372cbd55ec: lea    0x10(%r10,%r8,4),%rbp
  0.25%    0.31%  ││  0x00007f372cbd55f1: mov    0x0(%rbp),%r9d     ;*aaload
                  ││                                                ; - com.google.re2j.Machine$Queue::add@24 (line 59)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 350)
  0.21%    0.18%  ││  0x00007f372cbd55f5: test   %r9d,%r9d
                  ││  0x00007f372cbd55f8: je     0x00007f372cbd56c1  ;*ifnonnull
                  ││                                                ; - com.google.re2j.Machine$Queue::add@27 (line 60)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 350)
  0.26%    0.27%  ││  0x00007f372cbd55fe: lea    (%r12,%r9,8),%rbx  ;*aload_3
                  ││                                                ; - com.google.re2j.Machine$Queue::add@45 (line 63)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 350)
  0.05%    0.06%  ││  0x00007f372cbd5602: mov    0x30(%rsp),%r11d
  0.25%    0.28%  ││  0x00007f372cbd5607: mov    %r11d,0xc(%rbx)    ;*putfield pc
                  ││                                                ; - com.google.re2j.Machine$Queue::add@52 (line 64)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 350)
  1.39%    1.06%  ││  0x00007f372cbd560b: mov    0x8(%rsp),%r10
  0.17%    0.12%  ││  0x00007f372cbd5610: mov    0x18(%r10),%r11d   ;*getfield prog
                  ││                                                ; - com.google.re2j.Machine::add@26 (line 351)
  0.07%    0.12%  ││  0x00007f372cbd5614: mov    %r12d,0x10(%rbx)   ;*putfield thread
                  ││                                                ; - com.google.re2j.Machine$Queue::add@47 (line 63)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 350)
  0.24%    0.36%  ││  0x00007f372cbd5618: mov    0x18(%r12,%r11,8),%ebp  ;*getfield inst
                  ││                                                ; - com.google.re2j.Prog::getInst@1 (line 30)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 351)
                  ││                                                ; implicit exception: dispatches to 0x00007f372cbd5c19
  0.84%    0.75%  ││  0x00007f372cbd561d: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f372cbd5c2d
  0.67%    0.70%  ││  0x00007f372cbd5622: mov    0x30(%rsp),%r11d
  0.00%    0.00%  ││  0x00007f372cbd5627: cmp    %r10d,%r11d
                  ││  0x00007f372cbd562a: jae    0x00007f372cbd57b1
  0.52%    0.44%  ││  0x00007f372cbd5630: lea    (%r12,%rbp,8),%r10
  0.45%    0.27%  ││  0x00007f372cbd5634: mov    0x10(%r10,%r11,4),%r11d  ;*aaload
                  ││                                                ; - com.google.re2j.Prog::getInst@5 (line 30)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 351)
  0.13%    0.13%  ││  0x00007f372cbd5639: mov    %r11d,0x2c(%rsp)
  0.19%    0.21%  ││  0x00007f372cbd563e: mov    0xc(%r12,%r11,8),%r8d  ;*getfield op
                  ││                                                ; - com.google.re2j.Machine::add@37 (line 352)
                  ││                                                ; implicit exception: dispatches to 0x00007f372cbd5c41
  1.85%    1.50%  ││  0x00007f372cbd5643: mov    %r8d,%r10d
  0.20%    0.05%  ││  0x00007f372cbd5646: dec    %r10d
  0.54%    0.51%  ││  0x00007f372cbd5649: cmp    $0xb,%r10d
                  ││  0x00007f372cbd564d: jae    0x00007f372cbd57ed  ;*tableswitch
                  ││                                                ; - com.google.re2j.Machine::add@40 (line 352)
  0.58%    0.56%  ││  0x00007f372cbd5653: mov    0x10(%r12,%r11,8),%ecx  ;*getfield out
                  ││                                                ; - com.google.re2j.Machine::add@193 (line 372)
  0.06%    0.06%  ││  0x00007f372cbd5658: mov    0x14(%r12,%r11,8),%r11d  ;*getfield arg
                  ││                                                ; - com.google.re2j.Machine::add@156 (line 366)
  0.12%    0.03%  ││  0x00007f372cbd565d: movslq %r8d,%r10
  0.07%    0.10%  ││  0x00007f372cbd5660: mov    0x2c(%rsp),%r9d
  0.42%    0.48%  ││  0x00007f372cbd5665: lea    (%r12,%r9,8),%rax  ;*aaload
                  ││                                                ; - com.google.re2j.Prog::getInst@5 (line 30)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 351)
  0.06%    0.05%  ││  0x00007f372cbd5669: movabs $0x7f372cbd54e0,%r8  ;   {section_word}
  0.10%    0.04%  ││  0x00007f372cbd5673: jmpq   *-0x8(%r8,%r10,8)  ;*tableswitch
                  ││                                                ; - com.google.re2j.Machine::add@40 (line 352)
  0.02%    0.01%  ↘│  0x00007f372cbd5678: mov    0xc(%r12,%r11,8),%r10d  ; implicit exception: dispatches to 0x00007f372cbd5c9d
  0.01%    0.01%   │  0x00007f372cbd567d: cmp    %r10d,%ebp
  0.10%    0.09%   │  0x00007f372cbd5680: jae    0x00007f372cbd5825
  0.02%    0.06%   │  0x00007f372cbd5686: lea    (%r12,%r11,8),%r10
           0.00%   │  0x00007f372cbd568a: mov    0x10(%r10,%rbp,4),%r9d  ;*aaload
                   │                                                ; - com.google.re2j.Machine$Queue::contains@22 (line 50)
                   │                                                ; - com.google.re2j.Machine::add@9 (line 347)
  0.09%    0.12%   │  0x00007f372cbd568f: mov    0xc(%r12,%r9,8),%ebp  ;*getfield pc
                   │                                                ; - com.google.re2j.Machine$Queue::contains@29 (line 51)
                   │                                                ; - com.google.re2j.Machine::add@9 (line 347)
                   │                                                ; implicit exception: dispatches to 0x00007f372cbd5cbd
  0.44%    0.50%   │  0x00007f372cbd5694: cmp    0x30(%rsp),%ebp
                   ╰  0x00007f372cbd5698: jne    0x00007f372cbd55c1  ;*if_icmpne
                                                                    ; - com.google.re2j.Machine$Queue::contains@33 (line 51)
                                                                    ; - com.google.re2j.Machine::add@9 (line 347)
                      0x00007f372cbd569e: mov    $0xffffff65,%esi
                      0x00007f372cbd56a3: mov    %rax,-0x8(%rsp)
                      0x00007f372cbd56a8: mov    0x30(%rsp),%eax
                      0x00007f372cbd56ac: mov    %eax,0x18(%rsp)
....................................................................................................
 19.06%   16.16%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 495 (219 bytes) 

                                                                      ; - com.google.re2j.Machine::step@225 (line 296)
                        0x00007f372cbe24f5: mov    0x8(%rsp),%rcx
                        0x00007f372cbe24fa: mov    0xc(%rcx),%ecx
                        0x00007f372cbe24fd: cmp    %ecx,%eax
                        0x00007f372cbe24ff: jge    0x00007f372cbe26bf  ;*if_icmpge
                                                                      ; - com.google.re2j.Machine::step@242 (line 298)
                        0x00007f372cbe2505: mov    %eax,%ecx
                        0x00007f372cbe2507: jmpq   0x00007f372cbe2693  ;*if_icmpge
                                                                      ; - com.google.re2j.Machine::step@18 (line 270)
                        0x00007f372cbe250c: mov    0x8(%rsp),%r10
  0.04%    0.02%        0x00007f372cbe2511: mov    %r12d,0xc(%r10)    ;*getfield size
                                                                      ; - com.google.re2j.Machine::step@15 (line 270)
  0.08%    0.05%        0x00007f372cbe2515: add    $0x60,%rsp
                        0x00007f372cbe2519: pop    %rbp
                        0x00007f372cbe251a: test   %eax,0x16015ae0(%rip)        # 0x00007f3742bf8000
                                                                      ;   {poll_return}
  0.04%    0.03%        0x00007f372cbe2520: retq   
  0.55%    0.84%   ↗    0x00007f372cbe2521: mov    %eax,%r11d         ; OopMap{r9=Oop rbx=NarrowOop rdi=NarrowOop rsi=Oop r13=Oop r14=NarrowOop [8]=Oop [24]=Oop [40]=Oop off=868}
                   │                                                  ;*goto
                   │                                                  ; - com.google.re2j.Unicode::simpleFold@40 (line 214)
                   │                                                  ; - com.google.re2j.Inst::matchRune@33 (line 55)
                   │                                                  ; - com.google.re2j.Machine::step@294 (line 310)
  0.99%    0.84%   │↗   0x00007f372cbe2524: test   %eax,0x16015ad6(%rip)        # 0x00007f3742bf8000
                   ││                                                 ;*goto
                   ││                                                 ; - com.google.re2j.Unicode::simpleFold@40 (line 214)
                   ││                                                 ; - com.google.re2j.Inst::matchRune@33 (line 55)
                   ││                                                 ; - com.google.re2j.Machine::step@294 (line 310)
                   ││                                                 ;   {poll}
  0.76%    0.69%   ││   0x00007f372cbe252a: cmp    %r8d,%r11d
                  ╭││   0x00007f372cbe252d: jge    0x00007f372cbe2590  ;*if_icmpge
                  │││                                                 ; - com.google.re2j.Unicode::simpleFold@9 (line 207)
                  │││                                                 ; - com.google.re2j.Inst::matchRune@33 (line 55)
                  │││                                                 ; - com.google.re2j.Machine::step@294 (line 310)
  0.46%    0.55%  │││   0x00007f372cbe252f: mov    %r8d,%r10d
  0.45%    0.61%  │││   0x00007f372cbe2532: vmovd  %r8d,%xmm0
  0.95%    0.74%  │││   0x00007f372cbe2537: mov    %r11d,%eax
  0.53%    0.33%  │││   0x00007f372cbe253a: sub    %r11d,%r10d        ;*isub
                  │││                                                 ; - com.google.re2j.Unicode::simpleFold@15 (line 208)
                  │││                                                 ; - com.google.re2j.Inst::matchRune@33 (line 55)
                  │││                                                 ; - com.google.re2j.Machine::step@294 (line 310)
  0.49%    0.51%  │││   0x00007f372cbe253d: mov    %r10d,%edx
  0.59%    0.64%  │││   0x00007f372cbe2540: sar    $0x1f,%edx
  0.89%    0.57%  │││   0x00007f372cbe2543: shr    $0x1f,%edx
  0.47%    0.11%  │││   0x00007f372cbe2546: add    %r10d,%edx
  0.59%    0.46%  │││   0x00007f372cbe2549: sar    %edx
  0.49%    0.57%  │││   0x00007f372cbe254b: mov    %r11d,%r8d
  0.95%    0.59%  │││   0x00007f372cbe254e: add    %edx,%r8d          ;*idiv
                  │││                                                 ; - com.google.re2j.Unicode::simpleFold@17 (line 208)
                  │││                                                 ; - com.google.re2j.Inst::matchRune@33 (line 55)
                  │││                                                 ; - com.google.re2j.Machine::step@294 (line 310)
  0.51%    0.28%  │││   0x00007f372cbe2551: cmp    $0x3f,%r8d
                  │││   0x00007f372cbe2555: jae    0x00007f372cbe29b5
  0.49%    0.71%  │││   0x00007f372cbe255b: movslq %eax,%r10
  1.02%    0.95%  │││   0x00007f372cbe255e: movslq %edx,%r11
  1.03%    1.06%  │││   0x00007f372cbe2561: add    %r11,%r10
  0.49%    0.80%  │││   0x00007f372cbe2564: mov    0x10(%r9,%r10,4),%ebp  ;*aaload
                  │││                                                 ; - com.google.re2j.Unicode::simpleFold@24 (line 209)
                  │││                                                 ; - com.google.re2j.Inst::matchRune@33 (line 55)
                  │││                                                 ; - com.google.re2j.Machine::step@294 (line 310)
  0.41%    0.53%  │││   0x00007f372cbe2569: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f372cbe310d
  1.11%    0.95%  │││   0x00007f372cbe256e: test   %r11d,%r11d
                  │││   0x00007f372cbe2571: jbe    0x00007f372cbe2a05  ;*iaload
                  │││                                                 ; - com.google.re2j.Unicode::simpleFold@26 (line 209)
                  │││                                                 ; - com.google.re2j.Inst::matchRune@33 (line 55)
                  │││                                                 ; - com.google.re2j.Machine::step@294 (line 310)
  0.91%    1.17%  │││   0x00007f372cbe2577: mov    0x10(%r12,%rbp,8),%r11d
  0.53%    0.92%  │││   0x00007f372cbe257c: cmp    0x20(%rsp),%r11d
                  │╰│   0x00007f372cbe2581: jge    0x00007f372cbe2521  ;*if_icmpge
                  │ │                                                 ; - com.google.re2j.Unicode::simpleFold@28 (line 209)
                  │ │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 55)
                  │ │                                                 ; - com.google.re2j.Machine::step@294 (line 310)
  0.02%    0.03%  │ │   0x00007f372cbe2583: mov    %r8d,%r11d
  0.01%    0.00%  │ │   0x00007f372cbe2586: inc    %r11d              ;*iadd
                  │ │                                                 ; - com.google.re2j.Unicode::simpleFold@33 (line 210)
                  │ │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 55)
                  │ │                                                 ; - com.google.re2j.Machine::step@294 (line 310)
  0.17%    0.29%  │ │   0x00007f372cbe2589: vmovd  %xmm0,%r8d
  0.00%           │ ╰   0x00007f372cbe258e: jmp    0x00007f372cbe2524
  0.26%    0.30%  ↘     0x00007f372cbe2590: cmp    $0x3f,%r11d
                        0x00007f372cbe2594: jge    0x00007f372cbe2eb5  ;*if_icmpge
                                                                      ; - com.google.re2j.Unicode::simpleFold@48 (line 215)
                                                                      ; - com.google.re2j.Inst::matchRune@33 (line 55)
                                                                      ; - com.google.re2j.Machine::step@294 (line 310)
                        0x00007f372cbe259a: cmp    $0x3f,%r11d
                        0x00007f372cbe259e: jae    0x00007f372cbe2ba1
  0.00%    0.01%        0x00007f372cbe25a4: mov    0x10(%r9,%r11,4),%ebp  ;*aaload
                                                                      ; - com.google.re2j.Unicode::simpleFold@55 (line 215)
                                                                      ; - com.google.re2j.Inst::matchRune@33 (line 55)
                                                                      ; - com.google.re2j.Machine::step@294 (line 310)
  0.23%    0.31%        0x00007f372cbe25a9: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f372cbe31c5
  0.35%    0.33%        0x00007f372cbe25ae: test   %r10d,%r10d
                        0x00007f372cbe25b1: jbe    0x00007f372cbe2c2d
           0.01%        0x00007f372cbe25b7: mov    0x10(%r12,%rbp,8),%ebp  ;*iaload
                                                                      ; - com.google.re2j.Unicode::simpleFold@57 (line 215)
                                                                      ; - com.google.re2j.Inst::matchRune@33 (line 55)
                                                                      ; - com.google.re2j.Machine::step@294 (line 310)
  0.01%    0.01%        0x00007f372cbe25bc: cmp    0x20(%rsp),%ebp
  0.30%    0.29%        0x00007f372cbe25c0: je     0x00007f372cbe2ef9  ;*if_icmpne
                                                                      ; - com.google.re2j.Unicode::simpleFold@59 (line 215)
                                                                      ; - com.google.re2j.Inst::matchRune@33 (line 55)
                                                                      ; - com.google.re2j.Machine::step@294 (line 310)
  0.22%    0.29%        0x00007f372cbe25c6: mov    0x20(%rsp),%r11d
                        0x00007f372cbe25cb: cmp    $0x7f,%r11d
                        0x00007f372cbe25cf: jg     0x00007f372cbe2f31  ;*if_icmpgt
                                                                      ; - com.google.re2j.Unicode::toLower@3 (line 177)
                                                                      ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                                                                      ; - com.google.re2j.Inst::matchRune@33 (line 55)
                                                                      ; - com.google.re2j.Machine::step@294 (line 310)
  0.00%    0.00%        0x00007f372cbe25d5: cmp    $0x41,%r11d
                        0x00007f372cbe25d9: jl     0x00007f372cbe2dbd  ;*if_icmpgt
                                                                      ; - com.google.re2j.Unicode::toLower@9 (line 178)
                                                                      ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                                                                      ; - com.google.re2j.Inst::matchRune@33 (line 55)
                                                                      ; - com.google.re2j.Machine::step@294 (line 310)
  0.20%    0.25%        0x00007f372cbe25df: cmp    $0x5a,%r11d
                     ╭  0x00007f372cbe25e3: jg     0x00007f372cbe25f5  ;*if_icmpgt
                     │                                                ; - com.google.re2j.Unicode::toLower@15 (line 178)
                     │                                                ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                     │                                                ; - com.google.re2j.Inst::matchRune@33 (line 55)
                     │                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.22%    0.35%     │  0x00007f372cbe25e5: mov    %r11d,%r10d
                     │  0x00007f372cbe25e8: add    $0x20,%r10d        ;*iinc
                     │                                                ; - com.google.re2j.Unicode::toLower@18 (line 179)
                     │                                                ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                     │                                                ; - com.google.re2j.Inst::matchRune@33 (line 55)
                     │                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.00%    0.01%     │  0x00007f372cbe25ec: cmp    %r11d,%r10d
                     │  0x00007f372cbe25ef: jne    0x00007f372cbe277d  ;*if_icmpeq
                     │                                                ; - com.google.re2j.Unicode::simpleFold@77 (line 224)
                     │                                                ; - com.google.re2j.Inst::matchRune@33 (line 55)
                     │                                                ; - com.google.re2j.Machine::step@294 (line 310)
                     ↘  0x00007f372cbe25f5: cmp    $0x61,%r11d
                        0x00007f372cbe25f9: jl     0x00007f372cbe300d  ;*if_icmpgt
....................................................................................................
 17.83%   18.01%  <total for region 3>

....[Hottest Region 4]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 495 (398 bytes) 

                                                                     ;*invokespecial add
                                                                     ; - com.google.re2j.Machine::step@380 (line 329)
                                                                     ;   {optimized virtual_call}
                       0x00007f372cbe22b4: mov    %rax,%rcx
                       0x00007f372cbe22b7: test   %rax,%rax
                       0x00007f372cbe22ba: je     0x00007f372cbe2825
                       0x00007f372cbe22c0: mov    0x20(%rsp),%r9d
                       0x00007f372cbe22c5: mov    0x74(%rsp),%r10d
                       0x00007f372cbe22ca: mov    0x7c(%rsp),%eax    ;*aload
                                                                     ; - com.google.re2j.Machine::step@385 (line 331)
  0.37%    0.44%       0x00007f372cbe22ce: mov    0x28(%rsp),%r11
  0.00%                0x00007f372cbe22d3: mov    0x24(%r11),%ebx    ;*getfield pool
                                                                     ; - com.google.re2j.Machine::free@5 (line 160)
                                                                     ; - com.google.re2j.Machine::step@393 (line 332)
  0.01%                0x00007f372cbe22d7: mov    0xc(%r12,%rbx,8),%r11d  ;*arraylength
                                                                     ; - com.google.re2j.Machine::free@8 (line 160)
                                                                     ; - com.google.re2j.Machine::step@393 (line 332)
                                                                     ; implicit exception: dispatches to 0x00007f372cbe30fd
  0.05%    0.12%       0x00007f372cbe22dc: mov    0x28(%rsp),%r8
  0.36%    0.41%       0x00007f372cbe22e1: mov    0xc(%r8),%ebp      ;*getfield poolSize
                                                                     ; - com.google.re2j.Machine::free@1 (line 160)
                                                                     ; - com.google.re2j.Machine::step@393 (line 332)
                       0x00007f372cbe22e5: cmp    %r11d,%ebp
                       0x00007f372cbe22e8: jge    0x00007f372cbe2ad5  ;*if_icmplt
                                                                     ; - com.google.re2j.Machine::free@9 (line 160)
                                                                     ; - com.google.re2j.Machine::step@393 (line 332)
           0.01%       0x00007f372cbe22ee: mov    %ebp,%r8d
  0.04%    0.08%       0x00007f372cbe22f1: inc    %r8d
  0.45%    0.51%       0x00007f372cbe22f4: mov    0x28(%rsp),%rdi
                       0x00007f372cbe22f9: mov    %r8d,0xc(%rdi)     ;*putfield poolSize
                                                                     ; - com.google.re2j.Machine::free@45 (line 163)
                                                                     ; - com.google.re2j.Machine::step@393 (line 332)
  0.02%    0.02%       0x00007f372cbe22fd: cmp    %r11d,%ebp
  0.04%    0.05%       0x00007f372cbe2300: jae    0x00007f372cbe2975  ;*aastore
                                                                     ; - com.google.re2j.Machine::free@49 (line 163)
                                                                     ; - com.google.re2j.Machine::step@393 (line 332)
  0.42%    0.45%       0x00007f372cbe2306: mov    %rcx,%r11
                       0x00007f372cbe2309: shr    $0x3,%r11
  0.01%    0.01%       0x00007f372cbe230d: lea    (%r12,%rbx,8),%r10  ;*getfield pool
                                                                     ; - com.google.re2j.Machine::free@5 (line 160)
                                                                     ; - com.google.re2j.Machine::step@393 (line 332)
  0.05%    0.09%       0x00007f372cbe2311: lea    0x10(%r10,%rbp,4),%r10
  0.38%    0.47%       0x00007f372cbe2316: mov    %r11d,(%r10)
  0.03%    0.02%       0x00007f372cbe2319: shr    $0x9,%r10
           0.01%       0x00007f372cbe231d: movabs $0x7f37283f5000,%r11
  0.04%    0.07%       0x00007f372cbe2327: mov    %r12b,(%r11,%r10,1)  ;*aastore
                                                                     ; - com.google.re2j.Machine::free@49 (line 163)
                                                                     ; - com.google.re2j.Machine::step@393 (line 332)
  0.44%    0.50%       0x00007f372cbe232b: xor    %r10d,%r10d        ; OopMap{[8]=Oop [24]=Oop [40]=Oop off=366}
                                                                     ;*goto
                                                                     ; - com.google.re2j.Machine::step@399 (line 270)
                   ↗   0x00007f372cbe232e: test   %eax,0x16015ccc(%rip)        # 0x00007f3742bf8000
                   │                                                 ;*goto
                   │                                                 ; - com.google.re2j.Machine::step@399 (line 270)
                   │                                                 ;   {poll}
  0.30%    0.21%   │   0x00007f372cbe2334: mov    0x8(%rsp),%r10
  0.02%    0.07%   │   0x00007f372cbe2339: mov    0xc(%r10),%r10d
  0.41%    0.57%   │   0x00007f372cbe233d: cmp    %r10d,%eax
  0.01%    0.00%   │   0x00007f372cbe2340: jge    0x00007f372cbe250c
  0.40%    0.22%   │   0x00007f372cbe2346: mov    %r9d,0x20(%rsp)
  0.04%    0.02%   │   0x00007f372cbe234b: mov    %eax,%r10d         ;*aload_1
                   │                                                 ; - com.google.re2j.Machine::step@21 (line 271)
  0.42%    0.41%   │   0x00007f372cbe234e: mov    0x8(%rsp),%r11
           0.00%   │   0x00007f372cbe2353: mov    0x10(%r11),%r11d   ;*getfield dense
                   │                                                 ; - com.google.re2j.Machine::step@22 (line 271)
  0.46%    0.35%   │   0x00007f372cbe2357: mov    0xc(%r12,%r11,8),%r9d  ; implicit exception: dispatches to 0x00007f372cbe30a5
  0.31%    0.24%   │   0x00007f372cbe235c: cmp    %r9d,%r10d
                   │   0x00007f372cbe235f: jae    0x00007f372cbe286b
  0.47%    0.40%   │   0x00007f372cbe2365: shl    $0x3,%r11
                   │   0x00007f372cbe2369: mov    0x10(%r11,%r10,4),%r11d  ;*aaload
                   │                                                 ; - com.google.re2j.Machine::step@27 (line 271)
  0.37%    0.23%   │   0x00007f372cbe236e: mov    0x10(%r12,%r11,8),%r8d  ;*getfield thread
                   │                                                 ; - com.google.re2j.Machine::step@40 (line 275)
                   │                                                 ; implicit exception: dispatches to 0x00007f372cbe311d
  0.63%    0.49%   │   0x00007f372cbe2373: mov    %r10d,%eax
  0.39%    0.37%   │   0x00007f372cbe2376: inc    %eax               ;*iadd
                   │                                                 ; - com.google.re2j.Machine::step@233 (line 298)
                   │   0x00007f372cbe2378: test   %r8d,%r8d
                  ╭│   0x00007f372cbe237b: jne    0x00007f372cbe2389  ;*ifnonnull
                  ││                                                 ; - com.google.re2j.Machine::step@47 (line 276)
  0.29%    0.16%  ││   0x00007f372cbe237d: mov    0x24(%rsp),%r10d
  0.01%           ││   0x00007f372cbe2382: mov    0x20(%rsp),%r9d
  0.06%    0.07%  │╰   0x00007f372cbe2387: jmp    0x00007f372cbe232e
  0.19%    0.20%  ↘    0x00007f372cbe2389: mov    0x24(%rsp),%r11d
  0.03%    0.06%       0x00007f372cbe238e: test   %r11d,%r11d
                       0x00007f372cbe2391: jne    0x00007f372cbe2a8d  ;*ifeq
                                                                     ; - com.google.re2j.Machine::step@55 (line 279)
  0.33%    0.48%       0x00007f372cbe2397: mov    0x10(%r12,%r8,8),%r14d  ;*getfield inst
                                                                     ; - com.google.re2j.Machine::step@101 (line 283)
  0.82%    1.04%       0x00007f372cbe239c: mov    0x18(%r12,%r14,8),%edi  ;*getfield runes
                                                                     ; - com.google.re2j.Machine::step@306 (line 314)
                                                                     ; implicit exception: dispatches to 0x00007f372cbe30ed
  2.44%    3.26%       0x00007f372cbe23a1: mov    0xc(%r12,%r14,8),%ecx  ;*getfield op
                                                                     ; - com.google.re2j.Machine::step@111 (line 285)
  0.07%    0.05%       0x00007f372cbe23a6: mov    0xc(%r12,%r8,8),%ebx  ;*getfield cap
                                                                     ; - com.google.re2j.Machine::step@168 (line 292)
  0.02%    0.01%       0x00007f372cbe23ab: lea    (%r12,%r8,8),%r11  ;*getfield thread
                                                                     ; - com.google.re2j.Machine::step@40 (line 275)
                       0x00007f372cbe23af: cmp    $0x9,%ecx
                       0x00007f372cbe23b2: je     0x00007f372cbe222d
  0.53%    0.68%       0x00007f372cbe23b8: cmp    $0x9,%ecx
                       0x00007f372cbe23bb: jg     0x00007f372cbe2252
  0.08%    0.10%       0x00007f372cbe23c1: cmp    $0x7,%ecx
                       0x00007f372cbe23c4: je     0x00007f372cbe2b0d  ;*tableswitch
                                                                     ; - com.google.re2j.Machine::step@114 (line 285)
  0.55%    0.54%       0x00007f372cbe23ca: lea    (%r12,%r14,8),%r9  ;*getfield inst
                                                                     ; - com.google.re2j.Machine::step@101 (line 283)
                       0x00007f372cbe23ce: cmp    $0x7,%ecx
                    ╭  0x00007f372cbe23d1: jle    0x00007f372cbe244f  ;*tableswitch
                    │                                                ; - com.google.re2j.Machine::step@114 (line 285)
  0.40%    0.44%    │  0x00007f372cbe23d3: mov    0xc(%r12,%rdi,8),%ebp  ;*arraylength
                    │                                                ; - com.google.re2j.Inst::matchRune@4 (line 49)
                    │                                                ; - com.google.re2j.Machine::step@294 (line 310)
                    │                                                ; implicit exception: dispatches to 0x00007f372cbe31b5
  0.92%    0.98%    │  0x00007f372cbe23d8: cmp    $0x1,%ebp
                    │  0x00007f372cbe23db: jne    0x00007f372cbe2d89  ;*if_icmpne
                    │                                                ; - com.google.re2j.Inst::matchRune@6 (line 49)
                    │                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.44%    0.47%    │  0x00007f372cbe23e1: test   %ebp,%ebp
                    │  0x00007f372cbe23e3: jbe    0x00007f372cbe2be5
  0.12%    0.08%    │  0x00007f372cbe23e9: mov    0x10(%r12,%rdi,8),%edi  ;*iaload
                    │                                                ; - com.google.re2j.Inst::matchRune@14 (line 50)
                    │                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.02%    0.00%    │  0x00007f372cbe23ee: mov    0x20(%rsp),%ecx
                    │  0x00007f372cbe23f2: cmp    %edi,%ecx
                    │  0x00007f372cbe23f4: je     0x00007f372cbe2858  ;*if_icmpne
                    │                                                ; - com.google.re2j.Inst::matchRune@18 (line 51)
                    │                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.49%    0.53%    │  0x00007f372cbe23fa: mov    $0x1,%ebp
  0.02%    0.01%    │  0x00007f372cbe23ff: and    0x14(%r12,%r14,8),%ebp  ;*iand
                    │                                                ; - com.google.re2j.Inst::matchRune@28 (line 54)
                    │                                                ; - com.google.re2j.Machine::step@294 (line 310)
                    │  0x00007f372cbe2404: test   %ebp,%ebp
                    │  0x00007f372cbe2406: je     0x00007f372cbe2e71  ;*ifeq
                    │                                                ; - com.google.re2j.Inst::matchRune@29 (line 54)
                    │                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.00%             │  0x00007f372cbe240c: mov    %edi,0x20(%rsp)
  0.49%    0.57%    │  0x00007f372cbe2410: mov    %r9,%rsi
           0.01%    │  0x00007f372cbe2413: mov    %r11,%r13
                    │  0x00007f372cbe2416: mov    %ebx,%edi
           0.01%    │  0x00007f372cbe2418: mov    %eax,0x7c(%rsp)
  0.46%    0.46%    │  0x00007f372cbe241c: mov    %r8d,%ebx
  0.02%    0.00%    │  0x00007f372cbe241f: mov    %r10d,0x74(%rsp)
                    │  0x00007f372cbe2424: movabs $0x76dd0c420,%r9   ;   {oop(a {type array int}[63] )}
                    │  0x00007f372cbe242e: mov    $0x1f,%edx
  0.38%    0.41%    │  0x00007f372cbe2433: mov    $0x1f,%r8d
  0.01%             │  0x00007f372cbe2439: xor    %r10d,%r10d
                    │  0x00007f372cbe243c: mov    $0x3f,%r11d
  0.01%             │  0x00007f372cbe2442: mov    %r10d,%eax
  0.51%    0.38%    │  0x00007f372cbe2445: vmovd  %r11d,%xmm0
  0.01%    0.00%    │  0x00007f372cbe244a: jmpq   0x00007f372cbe2551
                    ↘  0x00007f372cbe244f: cmp    $0x6,%ecx
                       0x00007f372cbe2452: jne    0x00007f372cbe2b0d  ;*tableswitch
                                                                     ; - com.google.re2j.Machine::step@114 (line 285)
                       0x00007f372cbe2458: mov    0x78(%rsp),%edi
           0.00%       0x00007f372cbe245c: cmp    $0x2,%edi
                       0x00007f372cbe245f: je     0x00007f372cbe2836  ;*aload
                                                                     ; - com.google.re2j.Machine::step@166 (line 292)
                       0x00007f372cbe2465: mov    0xc(%r12,%rbx,8),%edx  ;*arraylength
                                                                     ; - com.google.re2j.Machine::step@171 (line 292)
                                                                     ; implicit exception: dispatches to 0x00007f372cbe31d5
                       0x00007f372cbe246a: test   %edx,%edx
                       0x00007f372cbe246c: jle    0x00007f372cbe24f5  ;*ifle
                                                                     ; - com.google.re2j.Machine::step@172 (line 292)
                       0x00007f372cbe2472: cmp    $0x1,%edx
                       0x00007f372cbe2475: jbe    0x00007f372cbe2e09
....................................................................................................
 16.69%   17.86%  <total for region 4>

....[Hottest Region 5]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 487 (333 bytes) 

                          0x00007f372cbd5962: mov    %r10,(%rsp)
                          0x00007f372cbd5966: nop
                          0x00007f372cbd5967: callq  0x00007f372ca0d020  ; OopMap{off=1068}
                                                                        ;*invokespecial add
                                                                        ; - com.google.re2j.Machine::add@203 (line 372)
                                                                        ;   {optimized virtual_call}
                  ╭       0x00007f372cbd596c: jmpq   0x00007f372cbd5aae
                  │       0x00007f372cbd5971: mov    0x70(%rsp),%rax
                  │╭      0x00007f372cbd5976: jmpq   0x00007f372cbd5aae  ;*tableswitch
                  ││                                                    ; - com.google.re2j.Machine::add@40 (line 352)
  2.15%    1.95%  ││      0x00007f372cbd597b: mov    0x8(%rsp),%rsi
  0.61%    0.27%  ││      0x00007f372cbd5980: mov    0x48(%rsp),%rdx
  0.09%    0.00%  ││      0x00007f372cbd5985: mov    0x1c(%rsp),%r8d
  0.03%    0.01%  ││      0x00007f372cbd598a: mov    0x20(%rsp),%r9
  0.34%    0.16%  ││      0x00007f372cbd598f: mov    0x28(%rsp),%edi
  0.00%           ││      0x00007f372cbd5993: mov    0x70(%rsp),%r10
  0.06%    0.01%  ││      0x00007f372cbd5998: mov    %r10,(%rsp)
  0.33%    0.02%  ││      0x00007f372cbd599c: mov    %rsi,%rbp
  0.31%    0.11%  ││      0x00007f372cbd599f: mov    %rax,0x38(%rsp)
  0.05%           ││      0x00007f372cbd59a4: data16 xchg %ax,%ax
                  ││      0x00007f372cbd59a7: callq  0x00007f372ca0d020  ; OopMap{rbp=Oop [32]=Oop [44]=NarrowOop [56]=Oop [72]=Oop off=1132}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@127 (line 361)
                  ││                                                    ;   {optimized virtual_call}
  0.01%    0.02%  ││      0x00007f372cbd59ac: mov    0x2c(%rsp),%r10d
  0.09%    0.10%  ││      0x00007f372cbd59b1: mov    0x14(%r12,%r10,8),%ecx  ;*getfield arg
                  ││                                                    ; - com.google.re2j.Machine::add@136 (line 362)
  0.28%    0.34%  ││      0x00007f372cbd59b6: mov    %rbp,%rsi
  0.01%    0.01%  ││      0x00007f372cbd59b9: mov    0x48(%rsp),%rdx
  0.01%    0.02%  ││      0x00007f372cbd59be: mov    0x1c(%rsp),%r8d
  0.07%    0.04%  ││      0x00007f372cbd59c3: mov    0x20(%rsp),%r9
  0.23%    0.36%  ││      0x00007f372cbd59c8: mov    0x28(%rsp),%edi
  0.02%    0.01%  ││      0x00007f372cbd59cc: mov    %rax,(%rsp)
  0.01%    0.03%  ││      0x00007f372cbd59d0: data16 xchg %ax,%ax
  0.05%    0.05%  ││      0x00007f372cbd59d3: callq  0x00007f372ca0d020  ; OopMap{off=1176}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@146 (line 362)
                  ││                                                    ;   {optimized virtual_call}
  0.03%    0.03%  ││╭     0x00007f372cbd59d8: jmpq   0x00007f372cbd5aae  ;*aload
                  │││                                                   ; - com.google.re2j.Machine::add@293 (line 391)
  1.63%    1.55%  │││     0x00007f372cbd59dd: mov    0x70(%rsp),%rbp
  0.02%    0.02%  │││     0x00007f372cbd59e2: test   %rbp,%rbp
                  │││╭    0x00007f372cbd59e5: jne    0x00007f372cbd5aba  ;*ifnonnull
                  ││││                                                  ; - com.google.re2j.Machine::add@295 (line 391)
  0.01%    0.00%  ││││    0x00007f372cbd59eb: mov    0x8(%rsp),%r10
  0.03%    0.03%  ││││    0x00007f372cbd59f0: mov    0xc(%r10),%r11d    ;*getfield poolSize
                  ││││                                                  ; - com.google.re2j.Machine::alloc@1 (line 148)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 392)
  0.40%    0.32%  ││││    0x00007f372cbd59f4: test   %r11d,%r11d
                  ││││    0x00007f372cbd59f7: jle    0x00007f372cbd5b5d  ;*ifle
                  ││││                                                  ; - com.google.re2j.Machine::alloc@4 (line 148)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 392)
  0.02%    0.03%  ││││    0x00007f372cbd59fd: mov    0x24(%r10),%r8d    ;*getfield pool
                  ││││                                                  ; - com.google.re2j.Machine::alloc@18 (line 150)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 392)
  0.01%    0.01%  ││││    0x00007f372cbd5a01: mov    %r11d,%ebp
  0.01%    0.02%  ││││    0x00007f372cbd5a04: dec    %ebp               ;*isub
                  ││││                                                  ; - com.google.re2j.Machine::alloc@13 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 392)
  0.46%    0.35%  ││││    0x00007f372cbd5a06: mov    %ebp,0xc(%r10)     ;*putfield poolSize
                  ││││                                                  ; - com.google.re2j.Machine::alloc@14 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 392)
  0.03%    0.01%  ││││    0x00007f372cbd5a0a: mov    0xc(%r12,%r8,8),%r10d  ; implicit exception: dispatches to 0x00007f372cbd5c61
  0.01%    0.01%  ││││    0x00007f372cbd5a0f: cmp    %r10d,%ebp
                  ││││    0x00007f372cbd5a12: jae    0x00007f372cbd5b02
  0.01%    0.02%  ││││    0x00007f372cbd5a18: lea    (%r12,%r8,8),%r10
  0.34%    0.31%  ││││    0x00007f372cbd5a1c: mov    0xc(%r10,%r11,4),%r11d  ;*aaload
                  ││││                                                  ; - com.google.re2j.Machine::alloc@25 (line 150)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 392)
  0.01%    0.01%  ││││    0x00007f372cbd5a21: mov    %r9d,0x10(%r12,%r11,8)  ;*putfield inst
                  ││││                                                  ; - com.google.re2j.Machine::alloc@45 (line 154)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 392)
                  ││││                                                  ; implicit exception: dispatches to 0x00007f372cbd5c71
  0.02%    0.02%  ││││    0x00007f372cbd5a26: lea    (%r12,%r11,8),%rbp  ;*aaload
                  ││││                                                  ; - com.google.re2j.Machine::alloc@25 (line 150)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 392)
  0.02%    0.01%  ││││    0x00007f372cbd5a2a: mov    %rbp,%r10
  0.43%    0.46%  ││││    0x00007f372cbd5a2d: shr    $0x9,%r10
  0.00%    0.01%  ││││    0x00007f372cbd5a31: movabs $0x7f37283f5000,%r11
  0.02%    0.02%  ││││    0x00007f372cbd5a3b: mov    %r12b,(%r11,%r10,1)  ;*aload
                  ││││                                                  ; - com.google.re2j.Machine::add@316 (line 396)
  0.07%    0.09%  ││││ ↗  0x00007f372cbd5a3f: mov    0x20(%rsp),%rdi
  0.43%    0.35%  ││││ │  0x00007f372cbd5a44: mov    0xc(%rdi),%r10d    ;*arraylength
                  ││││ │                                                ; - com.google.re2j.Machine::add@318 (line 396)
                  ││││ │                                                ; implicit exception: dispatches to 0x00007f372cbd5c51
  0.01%    0.00%  ││││ │  0x00007f372cbd5a48: test   %r10d,%r10d
                  ││││ │  0x00007f372cbd5a4b: jle    0x00007f372cbd5b42  ;*ifle
                  ││││ │                                                ; - com.google.re2j.Machine::add@319 (line 396)
  0.01%    0.01%  ││││ │  0x00007f372cbd5a51: mov    0xc(%rbp),%r8d     ;*getfield cap
                  ││││ │                                                ; - com.google.re2j.Machine::add@324 (line 396)
  0.07%    0.02%  ││││ │  0x00007f372cbd5a55: mov    %r8,%r11
  0.40%    0.31%  ││││ │  0x00007f372cbd5a58: shl    $0x3,%r11
  0.01%    0.02%  ││││ │  0x00007f372cbd5a5c: cmp    %rdi,%r11
                  ││││╭│  0x00007f372cbd5a5f: je     0x00007f372cbd5a8c  ;*if_acmpeq
                  ││││││                                                ; - com.google.re2j.Machine::add@329 (line 396)
  0.00%    0.00%  ││││││  0x00007f372cbd5a61: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x00007f372cbd5c85
  0.09%    0.07%  ││││││  0x00007f372cbd5a66: lea    (%r12,%r8,8),%rcx  ;*getfield cap
                  ││││││                                                ; - com.google.re2j.Machine::add@324 (line 396)
  0.42%    0.39%  ││││││  0x00007f372cbd5a6a: cmp    %r10d,%r11d
                  ││││││  0x00007f372cbd5a6d: jb     0x00007f372cbd5b1d
  0.10%    0.10%  ││││││  0x00007f372cbd5a73: lea    0x10(%r12,%r8,8),%rsi
  0.00%           ││││││  0x00007f372cbd5a78: add    $0x10,%rdi
  0.06%    0.01%  ││││││  0x00007f372cbd5a7c: movslq %r10d,%rdx
  0.29%    0.18%  ││││││  0x00007f372cbd5a7f: movabs $0x7f372ca19640,%r10
  0.07%    0.09%  ││││││  0x00007f372cbd5a89: callq  *%r10              ;*aload
                  ││││││                                                ; - com.google.re2j.Machine::add@347 (line 399)
                  ││││↘│  0x00007f372cbd5a8c: mov    %rbx,%r10
  0.03%    0.06%  ││││ │  0x00007f372cbd5a8f: mov    %rbp,%r8
  0.08%    0.05%  ││││ │  0x00007f372cbd5a92: shr    $0x3,%r8
  0.43%    0.05%  ││││ │  0x00007f372cbd5a96: mov    %r8d,0x10(%rbx)
  0.00%           ││││ │  0x00007f372cbd5a9a: shr    $0x9,%r10
  0.03%    0.08%  ││││ │  0x00007f372cbd5a9e: movabs $0x7f37283f5000,%r11
  0.08%    0.07%  ││││ │  0x00007f372cbd5aa8: mov    %r12b,(%r11,%r10,1)  ;*putfield thread
                  ││││ │                                                ; - com.google.re2j.Machine::add@351 (line 399)
  0.38%    0.09%  ││││ │  0x00007f372cbd5aac: xor    %eax,%eax          ;*synchronization entry
                  ││││ │                                                ; - com.google.re2j.Machine::add@-1 (line 344)
  0.38%    0.60%  ↘↘↘│ │  0x00007f372cbd5aae: add    $0x60,%rsp
  0.11%    0.12%     │ │  0x00007f372cbd5ab2: pop    %rbp
  0.37%    0.55%     │ │  0x00007f372cbd5ab3: test   %eax,0x16022547(%rip)        # 0x00007f3742bf8000
                     │ │                                                ;   {poll_return}
  0.41%    0.42%     │ │  0x00007f372cbd5ab9: retq   
  0.01%    0.01%     ↘ │  0x00007f372cbd5aba: mov    %r9d,%r11d
                       │  0x00007f372cbd5abd: mov    %r11d,0x10(%rbp)
                       │  0x00007f372cbd5ac1: mov    %rbp,%r10
                       │  0x00007f372cbd5ac4: shr    $0x9,%r10
  0.00%                │  0x00007f372cbd5ac8: movabs $0x7f37283f5000,%r11
                       │  0x00007f372cbd5ad2: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                       │                                                ; - com.google.re2j.Machine::add@313 (line 394)
                       ╰  0x00007f372cbd5ad6: jmpq   0x00007f372cbd5a3f  ;*tableswitch
                                                                        ; - com.google.re2j.Machine::add@40 (line 352)
                          0x00007f372cbd5adb: mov    0x8(%rsp),%rsi
                          0x00007f372cbd5ae0: mov    0x48(%rsp),%rdx
                          0x00007f372cbd5ae5: mov    0x1c(%rsp),%r8d
                          0x00007f372cbd5aea: mov    0x20(%rsp),%r9
                          0x00007f372cbd5aef: mov    0x70(%rsp),%r10
                          0x00007f372cbd5af4: mov    %r10,(%rsp)
....................................................................................................
 12.65%   10.50%  <total for region 5>

....[Hottest Regions]...............................................................................
 19.81%   25.12%         C2, level 4  com.google.re2j.Machine::step, version 495 (366 bytes) 
 19.06%   16.16%         C2, level 4  com.google.re2j.Machine::add, version 487 (308 bytes) 
 17.83%   18.01%         C2, level 4  com.google.re2j.Machine::step, version 495 (219 bytes) 
 16.69%   17.86%         C2, level 4  com.google.re2j.Machine::step, version 495 (398 bytes) 
 12.65%   10.50%         C2, level 4  com.google.re2j.Machine::add, version 487 (333 bytes) 
  4.04%    4.37%         C2, level 4  com.google.re2j.Machine::match, version 534 (876 bytes) 
  3.14%    2.08%        runtime stub  StubRoutines::jint_disjoint_arraycopy (128 bytes) 
  1.47%    1.44%   [kernel.kallsyms]  [unknown] (6 bytes) 
  0.64%    0.46%         C2, level 4  com.google.re2j.Machine::step, version 495 (72 bytes) 
  0.54%    0.61%         C2, level 4  com.google.re2j.Machine::step, version 495 (9 bytes) 
  0.17%    0.02%   [kernel.kallsyms]  [unknown] (2 bytes) 
  0.16%    0.02%   [kernel.kallsyms]  [unknown] (47 bytes) 
  0.14%    0.03%   [kernel.kallsyms]  [unknown] (28 bytes) 
  0.14%    0.18%         C2, level 4  com.google.re2j.Machine::step, version 495 (95 bytes) 
  0.10%    0.02%   [kernel.kallsyms]  [unknown] (14 bytes) 
  0.10%    0.03%   [kernel.kallsyms]  [unknown] (26 bytes) 
  0.07%    0.02%         C2, level 4  com.google.re2j.Machine::init, version 548 (90 bytes) 
  0.06%    0.12%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ (102 bytes) 
  0.06%    0.00%   [kernel.kallsyms]  [unknown] (59 bytes) 
  0.05%    0.00%   [kernel.kallsyms]  [unknown] (13 bytes) 
  3.07%    2.95%  <...other 581 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 55.67%   62.24%         C2, level 4  com.google.re2j.Machine::step, version 495 
 31.72%   26.66%         C2, level 4  com.google.re2j.Machine::add, version 487 
  4.08%    4.41%         C2, level 4  com.google.re2j.Machine::match, version 534 
  3.83%    2.82%   [kernel.kallsyms]  [unknown] 
  3.14%    2.08%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
  0.15%    0.04%         C2, level 4  com.google.re2j.Machine::init, version 548 
  0.12%    0.06%         C2, level 4  com.google.re2j.Matcher::find, version 558 
  0.10%    0.04%      hsdis-amd64.so  [unknown] 
  0.07%    0.13%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.06%    0.15%        libc-2.26.so  vfprintf 
  0.05%    0.02%         C2, level 4  com.github.arnaudroger.re2j.Re2jFindRegex::testExp2, version 580 
  0.04%    0.08%        libc-2.26.so  _IO_fwrite 
  0.04%    0.06%        libc-2.26.so  __strlen_avx2 
  0.03%    0.04%           libjvm.so  _ZN12outputStream12do_vsnprintfEPcmPKcP13__va_list_tagbRm 
  0.03%    0.06%           libjvm.so  _ZN13xmlTextStream5writeEPKcm 
  0.03%    0.01%           libjvm.so  _ZN7Monitor6unlockEv 
  0.03%    0.07%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.03%    0.01%         C2, level 4  java.util.Collections::shuffle, version 579 
  0.02%    0.01%  libpthread-2.26.so  __pthread_disable_asynccancel 
  0.02%    0.04%           libjvm.so  _ZN12outputStream15update_positionEPKcm 
  0.75%    0.63%  <...other 110 warm methods...>
....................................................................................................
100.00%   99.66%  <totals>

....[Distribution by Source]........................................................................
 91.82%   93.44%         C2, level 4
  3.83%    2.82%   [kernel.kallsyms]
  3.14%    2.08%        runtime stub
  0.59%    0.85%           libjvm.so
  0.32%    0.61%        libc-2.26.so
  0.11%    0.04%      hsdis-amd64.so
  0.09%    0.10%  libpthread-2.26.so
  0.04%    0.03%         interpreter
  0.02%    0.01%              [vdso]
  0.02%    0.02%         C1, level 3
  0.00%             Unknown, level 0
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                     Mode  Cnt     Score    Error  Units
Re2jFindRegex.testExp2       thrpt   20  2677.299 ± 62.453  ops/s
Re2jFindRegex.testExp2:·asm  thrpt            NaN             ---
