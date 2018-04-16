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
# Warmup Iteration   1: 1828.533 ops/s
# Warmup Iteration   2: 3161.801 ops/s
# Warmup Iteration   3: 3228.050 ops/s
# Warmup Iteration   4: 3267.945 ops/s
# Warmup Iteration   5: 3271.806 ops/s
# Warmup Iteration   6: 3268.059 ops/s
# Warmup Iteration   7: 3246.311 ops/s
# Warmup Iteration   8: 3270.743 ops/s
# Warmup Iteration   9: 3280.043 ops/s
# Warmup Iteration  10: 3278.834 ops/s
# Warmup Iteration  11: 3265.529 ops/s
# Warmup Iteration  12: 3270.916 ops/s
# Warmup Iteration  13: 3268.246 ops/s
# Warmup Iteration  14: 3273.158 ops/s
# Warmup Iteration  15: 3298.192 ops/s
# Warmup Iteration  16: 3293.077 ops/s
# Warmup Iteration  17: 3260.568 ops/s
# Warmup Iteration  18: 3271.494 ops/s
# Warmup Iteration  19: 3283.255 ops/s
# Warmup Iteration  20: 3270.771 ops/s
Iteration   1: 3280.678 ops/s
Iteration   2: 3262.624 ops/s
Iteration   3: 3272.064 ops/s
Iteration   4: 3268.804 ops/s
Iteration   5: 3281.321 ops/s
Iteration   6: 3279.690 ops/s
Iteration   7: 3271.295 ops/s
Iteration   8: 3277.700 ops/s
Iteration   9: 3264.515 ops/s
Iteration  10: 3316.752 ops/s
Iteration  11: 3311.726 ops/s
Iteration  12: 3278.411 ops/s
Iteration  13: 3308.233 ops/s
Iteration  14: 3316.324 ops/s
Iteration  15: 3311.321 ops/s
Iteration  16: 3289.183 ops/s
Iteration  17: 3265.280 ops/s
Iteration  18: 3286.264 ops/s
Iteration  19: 3293.382 ops/s
Iteration  20: 3025.644 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  3273.061 ±(99.9%) 52.904 ops/s [Average]
  (min, avg, max) = (3025.644, 3273.061, 3316.752), stdev = 60.924
  CI (99.9%): [3220.157, 3325.965] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2:·asm":
PrintAssembly processed: 213736 total address lines.
Perf output processed (skipped 23.078 seconds):
 Column 1: cycles (20592 events)
 Column 2: instructions (20586 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 544 (363 bytes) 

                                                                        ; - java.util.ArrayList::grow@41 (line 261)
                                                                        ; - java.util.ArrayList::ensureExplicitCapacity@22 (line 235)
                                                                        ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                                        ; - java.util.ArrayList::add@7 (line 458)
                                                                        ; - com.google.re2j.Machine::step@279 (line 297)
                          0x00007f36cd24b180: jmpq   0x00007f36cd24aeb7
                          0x00007f36cd24b185: mov    %r8d,0xa4(%rsp)
                          0x00007f36cd24b18d: mov    %r14d,0xac(%rsp)
                          0x00007f36cd24b195: mov    %r9,%r13
                          0x00007f36cd24b198: jmpq   0x00007f36cd24aa51
  0.24%    0.21%     ↗    0x00007f36cd24b19d: mov    0x20(%rsp),%r8d
           0.00%     │    0x00007f36cd24b1a2: cmp    $0x3f,%r10d
                     │    0x00007f36cd24b1a6: jge    0x00007f36cd24bca1  ;*if_icmpge
                     │                                                  ; - com.google.re2j.Unicode::simpleFold@48 (line 215)
                     │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 57)
                     │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
  0.06%    0.08%     │    0x00007f36cd24b1ac: cmp    $0x3f,%r10d
                     │    0x00007f36cd24b1b0: jae    0x00007f36cd24bae9
  0.16%    0.14%     │    0x00007f36cd24b1b6: mov    0x10(%r9,%r10,4),%ebp  ;*aaload
                     │                                                  ; - com.google.re2j.Unicode::simpleFold@55 (line 215)
                     │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 57)
                     │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
  0.26%    0.21%     │    0x00007f36cd24b1bb: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f36cd24c31d
  0.09%    0.07%     │    0x00007f36cd24b1c0: test   %r11d,%r11d
                     │    0x00007f36cd24b1c3: jbe    0x00007f36cd24bb39
  0.18%    0.10%     │    0x00007f36cd24b1c9: mov    0x10(%r12,%rbp,8),%ebp  ;*iaload
                     │                                                  ; - com.google.re2j.Unicode::simpleFold@57 (line 215)
                     │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 57)
                     │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
  0.18%    0.16%     │    0x00007f36cd24b1ce: cmp    %r14d,%ebp
                     │    0x00007f36cd24b1d1: je     0x00007f36cd24bcf1  ;*if_icmpne
                     │                                                  ; - com.google.re2j.Unicode::simpleFold@59 (line 215)
                     │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 57)
                     │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
  0.25%    0.25%     │    0x00007f36cd24b1d7: mov    %r14d,%r8d
                     │    0x00007f36cd24b1da: cmp    $0x7f,%r8d
                     │    0x00007f36cd24b1de: jg     0x00007f36cd24bd41  ;*if_icmpgt
                     │                                                  ; - com.google.re2j.Unicode::toLower@3 (line 177)
                     │                                                  ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                     │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 57)
                     │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
  0.04%    0.06%     │    0x00007f36cd24b1e4: cmp    $0x41,%r8d
                     │    0x00007f36cd24b1e8: jl     0x00007f36cd24bc51  ;*if_icmpgt
                     │                                                  ; - com.google.re2j.Unicode::toLower@9 (line 178)
                     │                                                  ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                     │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 57)
                     │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
  0.15%    0.12%     │    0x00007f36cd24b1ee: cmp    $0x5a,%r8d
                  ╭  │    0x00007f36cd24b1f2: jg     0x00007f36cd24b200  ;*if_icmpgt
                  │  │                                                  ; - com.google.re2j.Unicode::toLower@15 (line 178)
                  │  │                                                  ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                  │  │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  │  │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
                  │  │    0x00007f36cd24b1f4: mov    %r8d,%r10d
                  │  │    0x00007f36cd24b1f7: add    $0x20,%r10d        ;*iinc
                  │  │                                                  ; - com.google.re2j.Unicode::toLower@18 (line 179)
                  │  │                                                  ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                  │  │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  │  │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
                  │  │    0x00007f36cd24b1fb: cmp    %r8d,%r10d
                  │╭ │    0x00007f36cd24b1fe: jne    0x00007f36cd24b21b  ;*if_icmpeq
                  ││ │                                                  ; - com.google.re2j.Unicode::simpleFold@77 (line 224)
                  ││ │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  ││ │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
  0.33%    0.22%  ↘│ │    0x00007f36cd24b200: cmp    $0x61,%r8d
                   │ │    0x00007f36cd24b204: jl     0x00007f36cd24bf9d  ;*if_icmpgt
                   │ │                                                  ; - com.google.re2j.Unicode::toUpper@9 (line 167)
                   │ │                                                  ; - com.google.re2j.Unicode::simpleFold@83 (line 227)
                   │ │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 57)
                   │ │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
                   │ │    0x00007f36cd24b20a: cmp    $0x7a,%r8d
                   │ │    0x00007f36cd24b20e: jg     0x00007f36cd24bfe9  ;*if_icmpgt
                   │ │                                                  ; - com.google.re2j.Unicode::toUpper@15 (line 167)
                   │ │                                                  ; - com.google.re2j.Unicode::simpleFold@83 (line 227)
                   │ │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 57)
                   │ │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
  0.03%    0.03%   │ │    0x00007f36cd24b214: mov    %r8d,%r10d
  0.14%    0.11%   │ │    0x00007f36cd24b217: add    $0xffffffe0,%r10d  ; OopMap{r9=Oop rdi=NarrowOop rdx=NarrowOop rax=NarrowOop r13=Oop xmm0=Oop [8]=Oop [24]=Oop [40]=Oop off=2171}
                   │ │                                                  ;*goto
                   │ │                                                  ; - com.google.re2j.Inst::matchRune@54 (line 57)
                   │ │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
  0.27%    0.24%   ↘ │    0x00007f36cd24b21b: test   %eax,0x189b1ddf(%rip)        # 0x00007f36e5bfd000
                     │                                                  ;*goto
                     │                                                  ; - com.google.re2j.Inst::matchRune@54 (line 57)
                     │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
                     │                                                  ;   {poll}
  0.00%    0.00%     │    0x00007f36cd24b221: cmp    %ebx,%r10d
                     │    0x00007f36cd24b224: je     0x00007f36cd24ae98  ;*if_icmpeq
                     │                                                  ; - com.google.re2j.Inst::matchRune@39 (line 56)
                     │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
                     │    0x00007f36cd24b22a: mov    %ebx,%r11d         ;*iload_1
                     │                                                  ; - com.google.re2j.Inst::matchRune@42 (line 58)
                     │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
  0.01%    0.01%     │    0x00007f36cd24b22d: cmp    %r10d,%ecx
                     │    0x00007f36cd24b230: je     0x00007f36cd24b5d0  ;*if_icmpne
                     │                                                  ; - com.google.re2j.Inst::matchRune@44 (line 58)
                     │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
  0.20%    0.22%     │    0x00007f36cd24b236: mov    %r10d,%r14d
  0.34%    0.42%     │    0x00007f36cd24b239: mov    %r11d,%ebx
                     │    0x00007f36cd24b23c: mov    $0x1f,%esi
  0.01%    0.01%     │    0x00007f36cd24b241: mov    $0x1f,%r8d
  0.17%    0.23%     │    0x00007f36cd24b247: xor    %r10d,%r10d
  0.26%    0.40%     │    0x00007f36cd24b24a: mov    $0x3f,%r11d
                     │    0x00007f36cd24b250: mov    %r10d,0x20(%rsp)
  0.01%    0.03%     │    0x00007f36cd24b255: vmovd  %r11d,%xmm2
  0.16%    0.25%    ╭│    0x00007f36cd24b25a: jmp    0x00007f36cd24b2aa
  0.03%    0.03%    ││ ↗  0x00007f36cd24b25c: inc    %r8d               ;*iadd
                    ││ │                                                ; - com.google.re2j.Unicode::simpleFold@33 (line 210)
                    ││ │                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                    ││ │                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.26%    0.22%    ││ │  0x00007f36cd24b25f: mov    %r8d,0x20(%rsp)
  0.06%    0.10%    ││ │  0x00007f36cd24b264: vmovd  %xmm2,%r8d
  0.31%    0.39%    ││ │  0x00007f36cd24b269: nopl   0x0(%rax)          ; OopMap{r9=Oop rdi=NarrowOop rdx=NarrowOop rax=NarrowOop r13=Oop xmm0=Oop [8]=Oop [24]=Oop [40]=Oop off=2256}
                    ││ │                                                ;*goto
                    ││ │                                                ; - com.google.re2j.Unicode::simpleFold@40 (line 214)
                    ││ │                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                    ││ │                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.80%    0.89%    ││↗│  0x00007f36cd24b270: test   %eax,0x189b1d8a(%rip)        # 0x00007f36e5bfd000
                    ││││                                                ;*goto
                    ││││                                                ; - com.google.re2j.Unicode::simpleFold@40 (line 214)
                    ││││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                    ││││                                                ; - com.google.re2j.Machine::step@308 (line 306)
                    ││││                                                ;   {poll}
  0.52%    0.91%    ││││  0x00007f36cd24b276: mov    0x20(%rsp),%r10d
  0.74%    0.85%    ││││  0x00007f36cd24b27b: cmp    %r8d,%r10d
                    │╰││  0x00007f36cd24b27e: jge    0x00007f36cd24b19d  ;*if_icmpge
                    │ ││                                                ; - com.google.re2j.Unicode::simpleFold@9 (line 207)
                    │ ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                    │ ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.67%    0.85%    │ ││  0x00007f36cd24b284: mov    %r8d,%r10d
  0.56%    0.81%    │ ││  0x00007f36cd24b287: sub    0x20(%rsp),%r10d   ;*isub
                    │ ││                                                ; - com.google.re2j.Unicode::simpleFold@15 (line 208)
                    │ ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                    │ ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.54%    0.80%    │ ││  0x00007f36cd24b28c: mov    %r10d,%esi
  0.45%    0.60%    │ ││  0x00007f36cd24b28f: sar    $0x1f,%esi
  0.72%    0.77%    │ ││  0x00007f36cd24b292: shr    $0x1f,%esi
  0.56%    0.73%    │ ││  0x00007f36cd24b295: add    %r10d,%esi
  0.52%    0.64%    │ ││  0x00007f36cd24b298: sar    %esi               ;*idiv
                    │ ││                                                ; - com.google.re2j.Unicode::simpleFold@17 (line 208)
                    │ ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                    │ ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.45%    0.53%    │ ││  0x00007f36cd24b29a: mov    0x20(%rsp),%r11d
  0.64%    0.85%    │ ││  0x00007f36cd24b29f: add    %esi,%r11d         ;*iadd
                    │ ││                                                ; - com.google.re2j.Unicode::simpleFold@18 (line 208)
                    │ ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                    │ ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.68%    0.60%    │ ││  0x00007f36cd24b2a2: vmovd  %r8d,%xmm2
  0.54%    0.58%    │ ││  0x00007f36cd24b2a7: mov    %r11d,%r8d         ;*idiv
                    │ ││                                                ; - com.google.re2j.Unicode::simpleFold@17 (line 208)
                    │ ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                    │ ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.71%    1.11%    ↘ ││  0x00007f36cd24b2aa: cmp    $0x3f,%r8d
                      ││  0x00007f36cd24b2ae: jae    0x00007f36cd24b6bd
  0.67%    0.92%      ││  0x00007f36cd24b2b4: movslq %esi,%r10
  0.65%    0.95%      ││  0x00007f36cd24b2b7: movslq 0x20(%rsp),%r11
  0.81%    0.83%      ││  0x00007f36cd24b2bc: add    %r10,%r11
  0.71%    0.85%      ││  0x00007f36cd24b2bf: mov    0x10(%r9,%r11,4),%ebp  ;*aaload
                      ││                                                ; - com.google.re2j.Unicode::simpleFold@24 (line 209)
                      ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                      ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  1.22%    1.23%      ││  0x00007f36cd24b2c4: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f36cd24c1d5
  3.53%    3.78%      ││  0x00007f36cd24b2c9: test   %r11d,%r11d
                      ││  0x00007f36cd24b2cc: jbe    0x00007f36cd24b715  ;*iaload
                      ││                                                ; - com.google.re2j.Unicode::simpleFold@26 (line 209)
                      ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                      ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  1.28%    1.62%      ││  0x00007f36cd24b2d2: mov    0x10(%r12,%rbp,8),%r11d
  0.52%    0.67%      ││  0x00007f36cd24b2d7: cmp    %r14d,%r11d
                      ╰│  0x00007f36cd24b2da: jge    0x00007f36cd24b270  ;*if_icmpge
                       │                                                ; - com.google.re2j.Unicode::simpleFold@28 (line 209)
                       │                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                       │                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.32%    0.37%       ╰  0x00007f36cd24b2dc: jmpq   0x00007f36cd24b25c
                          0x00007f36cd24b2e1: mov    0xb0(%rsp),%edx
                          0x00007f36cd24b2e8: test   %edx,%edx
                          0x00007f36cd24b2ea: jne    0x00007f36cd24acb7  ;*ifne
                                                                        ; - com.google.re2j.Machine::step@168 (line 282)
                          0x00007f36cd24b2f0: mov    0x20(%rsp),%ecx
                          0x00007f36cd24b2f4: jmpq   0x00007f36cd24aa2e
  0.03%    0.00%          0x00007f36cd24b2f9: xor    %r11d,%r11d
                          0x00007f36cd24b2fc: mov    0x20(%rsp),%ecx
                          0x00007f36cd24b300: mov    0xac(%rsp),%r14d
  0.01%    0.02%          0x00007f36cd24b308: jmpq   0x00007f36cd24ab46
                          0x00007f36cd24b30d: mov    %r11d,%r9d
                          0x00007f36cd24b310: sar    %r9d
                          0x00007f36cd24b313: add    %r11d,%r9d         ;*iadd
                                                                        ; - java.util.ArrayList::grow@10 (line 255)
                                                                        ; - java.util.ArrayList::ensureExplicitCapacity@22 (line 235)
                                                                        ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                                        ; - java.util.ArrayList::add@7 (line 458)
                                                                        ; - com.google.re2j.Machine::step@410 (line 329)
                          0x00007f36cd24b316: mov    %r9d,%r10d
                          0x00007f36cd24b319: sub    %esi,%r10d
....................................................................................................
 23.07%   27.12%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 536 (322 bytes) 

                      # parm4:    rdi       = int
                      # parm5:    [sp+0x70]   = &apos;com/google/re2j/Machine$Thread&apos;  (sp of caller)
                      0x00007f36cd23f9c0: mov    0x8(%rsi),%r10d    ;   {no_reloc}
                      0x00007f36cd23f9c4: shl    $0x3,%r10
                      0x00007f36cd23f9c8: cmp    %r10,%rax
                      0x00007f36cd23f9cb: jne    0x00007f36cd045e20  ;   {runtime_call}
                      0x00007f36cd23f9d1: data16 xchg %ax,%ax
                      0x00007f36cd23f9d4: nopl   0x0(%rax,%rax,1)
                      0x00007f36cd23f9dc: data16 data16 xchg %ax,%ax
                    [Verified Entry Point]
  0.85%    1.01%      0x00007f36cd23f9e0: mov    %eax,-0x14000(%rsp)
  0.04%    0.06%      0x00007f36cd23f9e7: push   %rbp
  0.48%    0.47%      0x00007f36cd23f9e8: sub    $0x60,%rsp         ;*synchronization entry
                                                                    ; - com.google.re2j.Machine::add@-1 (line 341)
  0.38%    0.49%      0x00007f36cd23f9ec: mov    %edi,0x28(%rsp)
  0.06%    0.02%      0x00007f36cd23f9f0: mov    %r9,0x20(%rsp)
  0.38%    0.52%      0x00007f36cd23f9f5: mov    %r8d,0x1c(%rsp)
  0.33%    0.49%      0x00007f36cd23f9fa: mov    %rsi,0x8(%rsp)
  0.06%    0.03%      0x00007f36cd23f9ff: test   %ecx,%ecx
                      0x00007f36cd23fa01: je     0x00007f36cd23fc75  ;*ifne
                                                                    ; - com.google.re2j.Machine::add@1 (line 341)
  0.02%    0.02%      0x00007f36cd23fa07: mov    %rdx,0x40(%rsp)
  0.43%    0.48%      0x00007f36cd23fa0c: mov    0x14(%rdx),%r9d    ;*getfield sparse
                                                                    ; - com.google.re2j.Machine$Queue::contains@1 (line 48)
                                                                    ; - com.google.re2j.Machine::add@9 (line 344)
                                                                    ; implicit exception: dispatches to 0x00007f36cd240131
  0.37%    0.27%      0x00007f36cd23fa10: mov    0xc(%r12,%r9,8),%edi  ; implicit exception: dispatches to 0x00007f36cd240145
  0.12%    0.10%      0x00007f36cd23fa15: cmp    %edi,%ecx
                      0x00007f36cd23fa17: jae    0x00007f36cd23fb3d  ;*iaload
                                                                    ; - com.google.re2j.Machine$Queue::contains@5 (line 48)
                                                                    ; - com.google.re2j.Machine::add@9 (line 344)
  0.05%    0.07%      0x00007f36cd23fa1d: mov    0x10(%rdx),%ebx    ;*getfield dense
                                                                    ; - com.google.re2j.Machine$Queue::contains@18 (line 52)
                                                                    ; - com.google.re2j.Machine::add@9 (line 344)
  0.41%    0.33%      0x00007f36cd23fa20: mov    0xc(%rdx),%r11d    ;*getfield size
                                                                    ; - com.google.re2j.Machine$Queue::contains@9 (line 49)
                                                                    ; - com.google.re2j.Machine::add@9 (line 344)
  0.24%    0.28%      0x00007f36cd23fa24: lea    (%r12,%r9,8),%r8
  0.04%    0.04%      0x00007f36cd23fa28: mov    0x10(%r8,%rcx,4),%ebp  ;*iaload
                                                                    ; - com.google.re2j.Machine$Queue::contains@5 (line 48)
                                                                    ; - com.google.re2j.Machine::add@9 (line 344)
  0.05%    0.05%      0x00007f36cd23fa2d: cmp    %r11d,%ebp
                  ╭   0x00007f36cd23fa30: jl     0x00007f36cd23fb06  ;*invokevirtual contains
                  │                                                 ; - com.google.re2j.Machine::add@9 (line 344)
  0.54%    0.41%  │↗  0x00007f36cd23fa36: mov    %r11d,%r10d
  0.28%    0.34%  ││  0x00007f36cd23fa39: inc    %r10d
  0.03%    0.08%  ││  0x00007f36cd23fa3c: mov    %r10d,0xc(%rdx)    ;*putfield size
                  ││                                                ; - com.google.re2j.Machine$Queue::add@8 (line 59)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.05%    0.03%  ││  0x00007f36cd23fa40: cmp    %edi,%ecx
                  ││  0x00007f36cd23fa42: jae    0x00007f36cd23fb7d
  0.41%    0.47%  ││  0x00007f36cd23fa48: mov    %r11d,0x10(%r8,%rcx,4)  ;*iastore
                  ││                                                ; - com.google.re2j.Machine$Queue::add@18 (line 60)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.24%    0.27%  ││  0x00007f36cd23fa4d: mov    0xc(%r12,%rbx,8),%r10d  ; implicit exception: dispatches to 0x00007f36cd240159
  0.08%    0.07%  ││  0x00007f36cd23fa52: cmp    %r10d,%r11d
                  ││  0x00007f36cd23fa55: jae    0x00007f36cd23fbc9
  0.06%    0.05%  ││  0x00007f36cd23fa5b: lea    (%r12,%rbx,8),%r10
  0.53%    0.35%  ││  0x00007f36cd23fa5f: mov    0x10(%r10,%r11,4),%r13d  ;*aaload
                  ││                                                ; - com.google.re2j.Machine$Queue::add@24 (line 61)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.32%    0.36%  ││  0x00007f36cd23fa64: test   %r13d,%r13d
                  ││  0x00007f36cd23fa67: je     0x00007f36cd23fc9d  ;*ifnonnull
                  ││                                                ; - com.google.re2j.Machine$Queue::add@27 (line 62)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.06%    0.07%  ││  0x00007f36cd23fa6d: mov    %ecx,0xc(%r12,%r13,8)  ;*putfield pc
                  ││                                                ; - com.google.re2j.Machine$Queue::add@52 (line 66)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.40%    0.22%  ││  0x00007f36cd23fa72: mov    0x14(%rsi),%r10d   ;*getfield prog
                  ││                                                ; - com.google.re2j.Machine::add@26 (line 348)
  0.42%    0.38%  ││  0x00007f36cd23fa76: mov    %r12d,0x10(%r12,%r13,8)  ;*putfield thread
                  ││                                                ; - com.google.re2j.Machine$Queue::add@47 (line 65)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.36%    0.35%  ││  0x00007f36cd23fa7b: mov    0x14(%r12,%r10,8),%ebp  ;*getfield inst
                  ││                                                ; - com.google.re2j.Prog::getInst@1 (line 29)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 348)
                  ││                                                ; implicit exception: dispatches to 0x00007f36cd24016d
  0.02%    0.04%  ││  0x00007f36cd23fa80: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f36cd240181
  0.14%    0.19%  ││  0x00007f36cd23fa85: cmp    $0xf8002f22,%r11d  ;   {metadata(&apos;java/util/ArrayList&apos;)}
                  ││  0x00007f36cd23fa8c: jne    0x00007f36cd23fc49
  0.45%    0.51%  ││  0x00007f36cd23fa92: lea    (%r12,%rbp,8),%r10  ;*invokeinterface get
                  ││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.21%    0.25%  ││  0x00007f36cd23fa96: mov    0x10(%r10),%ebp    ;*getfield size
                  ││                                                ; - java.util.ArrayList::rangeCheck@2 (line 652)
                  ││                                                ; - java.util.ArrayList::get@2 (line 429)
                  ││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.40%    0.26%  ││  0x00007f36cd23fa9a: cmp    %ebp,%ecx
                  ││  0x00007f36cd23fa9c: jge    0x00007f36cd23fce5  ;*if_icmplt
                  ││                                                ; - java.util.ArrayList::rangeCheck@5 (line 652)
                  ││                                                ; - java.util.ArrayList::get@2 (line 429)
                  ││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.21%    0.15%  ││  0x00007f36cd23faa2: mov    0x14(%r10),%ebp    ;*getfield elementData
                  ││                                                ; - java.util.ArrayList::elementData@1 (line 418)
                  ││                                                ; - java.util.ArrayList::get@7 (line 431)
                  ││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.37%    0.37%  ││  0x00007f36cd23faa6: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f36cd240195
  0.69%    0.77%  ││  0x00007f36cd23faab: cmp    %r11d,%ecx
                  ││  0x00007f36cd23faae: jae    0x00007f36cd23fc0d
  0.49%    0.40%  ││  0x00007f36cd23fab4: lea    (%r12,%rbp,8),%r10
  0.08%    0.09%  ││  0x00007f36cd23fab8: mov    0x10(%r10,%rcx,4),%ebp  ;*aaload
                  ││                                                ; - java.util.ArrayList::elementData@5 (line 418)
                  ││                                                ; - java.util.ArrayList::get@7 (line 431)
                  ││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.36%    0.27%  ││  0x00007f36cd23fabd: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f36cd2401a9
  1.94%    1.76%  ││  0x00007f36cd23fac2: cmp    $0xf80197c3,%r10d  ;   {metadata(&apos;com/google/re2j/Inst&apos;)}
                  ││  0x00007f36cd23fac9: jne    0x00007f36cd23fd39
  0.63%    0.60%  ││  0x00007f36cd23facf: lea    (%r12,%rbp,8),%r10  ;*checkcast
                  ││                                                ; - com.google.re2j.Prog::getInst@10 (line 29)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.02%    0.01%  ││  0x00007f36cd23fad3: mov    %r10,0x38(%rsp)
  0.17%    0.02%  ││  0x00007f36cd23fad8: mov    0xc(%r10),%r8d     ;*getfield op
                  ││                                                ; - com.google.re2j.Machine::add@37 (line 349)
  0.50%    0.43%  ││  0x00007f36cd23fadc: mov    %r8d,%r11d
  0.23%    0.22%  ││  0x00007f36cd23fadf: dec    %r11d
  0.47%    0.39%  ││  0x00007f36cd23fae2: cmp    $0xb,%r11d
                  ││  0x00007f36cd23fae6: jae    0x00007f36cd23fc39  ;*tableswitch
                  ││                                                ; - com.google.re2j.Machine::add@40 (line 349)
  0.73%    0.54%  ││  0x00007f36cd23faec: mov    0x10(%r10),%ecx    ;*getfield out
                  ││                                                ; - com.google.re2j.Machine::add@193 (line 369)
  0.01%    0.01%  ││  0x00007f36cd23faf0: mov    0x14(%r10),%r11d   ;*getfield arg
                  ││                                                ; - com.google.re2j.Machine::add@156 (line 363)
  0.06%    0.06%  ││  0x00007f36cd23faf4: movslq %r8d,%r8
  0.02%    0.00%  ││  0x00007f36cd23faf7: movabs $0x7f36cd23f960,%r10  ;   {section_word}
  0.75%    0.52%  ││  0x00007f36cd23fb01: jmpq   *-0x8(%r10,%r8,8)  ;*tableswitch
                  ││                                                ; - com.google.re2j.Machine::add@40 (line 349)
  0.07%    0.05%  ↘│  0x00007f36cd23fb06: mov    0xc(%r12,%rbx,8),%r10d  ; implicit exception: dispatches to 0x00007f36cd240241
  0.06%    0.06%   │  0x00007f36cd23fb0b: cmp    %r10d,%ebp
                   │  0x00007f36cd23fb0e: jae    0x00007f36cd23fd21
  0.02%    0.01%   │  0x00007f36cd23fb14: lea    (%r12,%rbx,8),%r10
  0.01%    0.01%   │  0x00007f36cd23fb18: mov    0x10(%r10,%rbp,4),%r10d  ;*aaload
                   │                                                ; - com.google.re2j.Machine$Queue::contains@22 (line 52)
                   │                                                ; - com.google.re2j.Machine::add@9 (line 344)
  0.06%    0.05%   │  0x00007f36cd23fb1d: mov    0xc(%r12,%r10,8),%ebp  ;*getfield pc
                   │                                                ; - com.google.re2j.Machine$Queue::contains@29 (line 53)
                   │                                                ; - com.google.re2j.Machine::add@9 (line 344)
                   │                                                ; implicit exception: dispatches to 0x00007f36cd240261
  0.21%    0.20%   │  0x00007f36cd23fb22: cmp    %ecx,%ebp
                   ╰  0x00007f36cd23fb24: jne    0x00007f36cd23fa36  ;*if_icmpne
                                                                    ; - com.google.re2j.Machine$Queue::contains@33 (line 53)
                                                                    ; - com.google.re2j.Machine::add@9 (line 344)
                      0x00007f36cd23fb2a: mov    $0xffffff65,%esi
                      0x00007f36cd23fb2f: mov    %ecx,0x2c(%rsp)
                      0x00007f36cd23fb33: callq  0x00007f36cd0051a0  ; OopMap{[112]=Oop [8]=Oop [32]=Oop [64]=Oop off=376}
                                                                    ;*if_icmpne
....................................................................................................
 17.48%   16.47%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 544 (223 bytes) 

                        0x00007f36cd24ad6b: mov    0x8(%rsp),%r10
                        0x00007f36cd24ad70: mov    %r12d,0xc(%r10)    ;*putfield size
                                                                      ; - com.google.re2j.Machine::step@293 (line 300)
                        0x00007f36cd24ad74: mov    0x28(%rsp),%r10
                        0x00007f36cd24ad79: movb   $0x1,0xc(%r10)     ;*putfield matched
                                                                      ; - com.google.re2j.Machine::step@298 (line 302)
                        0x00007f36cd24ad7e: mov    0x20(%rsp),%ecx
                        0x00007f36cd24ad82: jmpq   0x00007f36cd24aa2e  ;*if_icmpge
                                                                      ; - com.google.re2j.Machine::step@18 (line 264)
                        0x00007f36cd24ad87: mov    0x8(%rsp),%r10
  0.00%                 0x00007f36cd24ad8c: mov    %r12d,0xc(%r10)    ;*getfield size
                                                                      ; - com.google.re2j.Machine::step@15 (line 264)
  0.00%                 0x00007f36cd24ad90: add    $0x90,%rsp
  0.08%    0.13%        0x00007f36cd24ad97: pop    %rbp
                        0x00007f36cd24ad98: test   %eax,0x189b2262(%rip)        # 0x00007f36e5bfd000
                                                                      ;   {poll_return}
                        0x00007f36cd24ad9e: retq   
                        0x00007f36cd24ad9f: nop
  0.57%    0.95%   ↗    0x00007f36cd24ada0: mov    %r14d,%r8d         ; OopMap{r9=Oop rdi=NarrowOop rdx=NarrowOop rax=NarrowOop r13=Oop xmm0=Oop [8]=Oop [24]=Oop [40]=Oop off=1027}
                   │                                                  ;*goto
                   │                                                  ; - com.google.re2j.Unicode::simpleFold@40 (line 214)
                   │                                                  ; - com.google.re2j.Inst::matchRune@33 (line 55)
                   │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
  0.83%    0.83%   │↗   0x00007f36cd24ada3: test   %eax,0x189b2257(%rip)        # 0x00007f36e5bfd000
                   ││                                                 ;*goto
                   ││                                                 ; - com.google.re2j.Unicode::simpleFold@40 (line 214)
                   ││                                                 ; - com.google.re2j.Inst::matchRune@33 (line 55)
                   ││                                                 ; - com.google.re2j.Machine::step@308 (line 306)
                   ││                                                 ;   {poll}
  0.86%    0.80%   ││   0x00007f36cd24ada9: cmp    %ebx,%r8d
                  ╭││   0x00007f36cd24adac: jge    0x00007f36cd24ae0f  ;*if_icmpge
                  │││                                                 ; - com.google.re2j.Unicode::simpleFold@9 (line 207)
                  │││                                                 ; - com.google.re2j.Inst::matchRune@33 (line 55)
                  │││                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.45%    0.49%  │││   0x00007f36cd24adae: mov    %r8d,%r14d
  0.50%    0.74%  │││   0x00007f36cd24adb1: vmovd  %ebx,%xmm1
  0.80%    0.58%  │││   0x00007f36cd24adb5: mov    %ebx,%r8d
  0.57%    0.24%  │││   0x00007f36cd24adb8: sub    %r14d,%r8d         ;*isub
                  │││                                                 ; - com.google.re2j.Unicode::simpleFold@15 (line 208)
                  │││                                                 ; - com.google.re2j.Inst::matchRune@33 (line 55)
                  │││                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.46%    0.44%  │││   0x00007f36cd24adbb: mov    %r8d,%r10d
  0.52%    0.67%  │││   0x00007f36cd24adbe: sar    $0x1f,%r10d
  0.91%    0.42%  │││   0x00007f36cd24adc2: shr    $0x1f,%r10d
  0.58%    0.17%  │││   0x00007f36cd24adc6: add    %r8d,%r10d
  0.42%    0.44%  │││   0x00007f36cd24adc9: sar    %r10d
  0.54%    0.62%  │││   0x00007f36cd24adcc: mov    %r14d,%ebx
  0.76%    0.55%  │││   0x00007f36cd24adcf: add    %r10d,%ebx         ;*idiv
                  │││                                                 ; - com.google.re2j.Unicode::simpleFold@17 (line 208)
                  │││                                                 ; - com.google.re2j.Inst::matchRune@33 (line 55)
                  │││                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.54%    0.35%  │││   0x00007f36cd24add2: cmp    $0x3f,%ebx
                  │││   0x00007f36cd24add5: jae    0x00007f36cd24b821
  0.44%    0.52%  │││   0x00007f36cd24addb: movslq %r10d,%r10
  0.97%    0.92%  │││   0x00007f36cd24adde: movslq %r14d,%r11
  0.79%    0.95%  │││   0x00007f36cd24ade1: add    %r10,%r11
  0.64%    0.79%  │││   0x00007f36cd24ade4: mov    0x10(%r9,%r11,4),%ebp  ;*aaload
                  │││                                                 ; - com.google.re2j.Unicode::simpleFold@24 (line 209)
                  │││                                                 ; - com.google.re2j.Inst::matchRune@33 (line 55)
                  │││                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.46%    0.55%  │││   0x00007f36cd24ade9: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f36cd24c225
  1.18%    1.02%  │││   0x00007f36cd24adee: test   %r10d,%r10d
                  │││   0x00007f36cd24adf1: jbe    0x00007f36cd24b871  ;*iaload
                  │││                                                 ; - com.google.re2j.Unicode::simpleFold@26 (line 209)
                  │││                                                 ; - com.google.re2j.Inst::matchRune@33 (line 55)
                  │││                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.99%    1.01%  │││   0x00007f36cd24adf7: mov    0x10(%r12,%rbp,8),%r10d
  0.58%    0.85%  │││   0x00007f36cd24adfc: cmp    0x20(%rsp),%r10d
                  │╰│   0x00007f36cd24ae01: jge    0x00007f36cd24ada0  ;*if_icmpge
                  │ │                                                 ; - com.google.re2j.Unicode::simpleFold@28 (line 209)
                  │ │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 55)
                  │ │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.06%    0.10%  │ │   0x00007f36cd24ae03: mov    %ebx,%r8d
           0.01%  │ │   0x00007f36cd24ae06: inc    %r8d               ;*iadd
                  │ │                                                 ; - com.google.re2j.Unicode::simpleFold@33 (line 210)
                  │ │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 55)
                  │ │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.14%    0.17%  │ │   0x00007f36cd24ae09: vmovd  %xmm1,%ebx
  0.05%    0.03%  │ ╰   0x00007f36cd24ae0d: jmp    0x00007f36cd24ada3
  0.22%    0.36%  ↘     0x00007f36cd24ae0f: cmp    $0x3f,%r8d
                        0x00007f36cd24ae13: jge    0x00007f36cd24bed1  ;*if_icmpge
                                                                      ; - com.google.re2j.Unicode::simpleFold@48 (line 215)
                                                                      ; - com.google.re2j.Inst::matchRune@33 (line 55)
                                                                      ; - com.google.re2j.Machine::step@308 (line 306)
                        0x00007f36cd24ae19: cmp    $0x3f,%r8d
                        0x00007f36cd24ae1d: jae    0x00007f36cd24bb85
  0.00%    0.03%        0x00007f36cd24ae23: mov    0x10(%r9,%r8,4),%ebp  ;*aaload
                                                                      ; - com.google.re2j.Unicode::simpleFold@55 (line 215)
                                                                      ; - com.google.re2j.Inst::matchRune@33 (line 55)
                                                                      ; - com.google.re2j.Machine::step@308 (line 306)
  0.17%    0.32%        0x00007f36cd24ae28: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f36cd24c33d
  0.33%    0.46%        0x00007f36cd24ae2d: test   %r11d,%r11d
                        0x00007f36cd24ae30: jbe    0x00007f36cd24bc19
  0.01%                 0x00007f36cd24ae36: mov    0x10(%r12,%rbp,8),%ebp  ;*iaload
                                                                      ; - com.google.re2j.Unicode::simpleFold@57 (line 215)
                                                                      ; - com.google.re2j.Inst::matchRune@33 (line 55)
                                                                      ; - com.google.re2j.Machine::step@308 (line 306)
  0.01%    0.01%        0x00007f36cd24ae3b: cmp    0x20(%rsp),%ebp
                        0x00007f36cd24ae3f: je     0x00007f36cd24bf19  ;*if_icmpne
                                                                      ; - com.google.re2j.Unicode::simpleFold@59 (line 215)
                                                                      ; - com.google.re2j.Inst::matchRune@33 (line 55)
                                                                      ; - com.google.re2j.Machine::step@308 (line 306)
  0.19%    0.22%        0x00007f36cd24ae45: mov    0x20(%rsp),%r11d
  0.30%    0.35%        0x00007f36cd24ae4a: cmp    $0x7f,%r11d
                        0x00007f36cd24ae4e: jg     0x00007f36cd24bf51  ;*if_icmpgt
                                                                      ; - com.google.re2j.Unicode::toLower@3 (line 177)
                                                                      ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                                                                      ; - com.google.re2j.Inst::matchRune@33 (line 55)
                                                                      ; - com.google.re2j.Machine::step@308 (line 306)
                        0x00007f36cd24ae54: cmp    $0x41,%r11d
                        0x00007f36cd24ae58: jl     0x00007f36cd24bdc9  ;*if_icmpgt
                                                                      ; - com.google.re2j.Unicode::toLower@9 (line 178)
                                                                      ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                                                                      ; - com.google.re2j.Inst::matchRune@33 (line 55)
                                                                      ; - com.google.re2j.Machine::step@308 (line 306)
           0.01%        0x00007f36cd24ae5e: cmp    $0x5a,%r11d
                     ╭  0x00007f36cd24ae62: jg     0x00007f36cd24ae74  ;*if_icmpgt
                     │                                                ; - com.google.re2j.Unicode::toLower@15 (line 178)
                     │                                                ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                     │                                                ; - com.google.re2j.Inst::matchRune@33 (line 55)
                     │                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.13%    0.21%     │  0x00007f36cd24ae64: mov    %r11d,%r10d
  0.32%    0.37%     │  0x00007f36cd24ae67: add    $0x20,%r10d        ;*iinc
                     │                                                ; - com.google.re2j.Unicode::toLower@18 (line 179)
                     │                                                ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                     │                                                ; - com.google.re2j.Inst::matchRune@33 (line 55)
                     │                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.00%              │  0x00007f36cd24ae6b: cmp    %r11d,%r10d
                     │  0x00007f36cd24ae6e: jne    0x00007f36cd24b22d  ;*if_icmpeq
                     │                                                ; - com.google.re2j.Unicode::simpleFold@77 (line 224)
                     │                                                ; - com.google.re2j.Inst::matchRune@33 (line 55)
                     │                                                ; - com.google.re2j.Machine::step@308 (line 306)
                     ↘  0x00007f36cd24ae74: cmp    $0x61,%r11d
                        0x00007f36cd24ae78: jl     0x00007f36cd24c035  ;*if_icmpgt
....................................................................................................
 17.39%   17.70%  <total for region 3>

....[Hottest Region 4]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 544 (310 bytes) 

                                                                    ;*invokespecial add
                                                                    ; - com.google.re2j.Machine::step@394 (line 325)
                                                                    ;   {optimized virtual_call}
                      0x00007f36cd24aa7c: test   %rax,%rax
                      0x00007f36cd24aa7f: je     0x00007f36cd24b2f9
                      0x00007f36cd24aa85: mov    %rax,0x50(%rsp)
                      0x00007f36cd24aa8a: mov    0x20(%rsp),%ecx
                      0x00007f36cd24aa8e: mov    0xa4(%rsp),%r8d
                      0x00007f36cd24aa96: mov    0xac(%rsp),%r14d   ;*aload
                                                                    ; - com.google.re2j.Machine::step@399 (line 327)
  0.34%    0.31%      0x00007f36cd24aa9e: mov    0x28(%rsp),%r10
                      0x00007f36cd24aaa3: mov    0x20(%r10),%ebp    ;*getfield pool
                                                                    ; - com.google.re2j.Machine::step@405 (line 329)
  0.00%    0.01%      0x00007f36cd24aaa7: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f36cd24c1f5
  0.17%    0.17%      0x00007f36cd24aaac: cmp    $0xf8002f22,%r11d  ;   {metadata(&apos;java/util/ArrayList&apos;)}
                      0x00007f36cd24aab3: jne    0x00007f36cd24b7a1
  0.31%    0.30%      0x00007f36cd24aab9: lea    (%r12,%rbp,8),%rdi  ;*invokeinterface add
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
                      0x00007f36cd24aabd: mov    0x14(%rdi),%edx    ;*getfield elementData
                                                                    ; - java.util.ArrayList::ensureCapacityInternal@1 (line 223)
                                                                    ; - java.util.ArrayList::add@7 (line 458)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
                      0x00007f36cd24aac0: mov    0x10(%rdi),%ebp    ;*getfield size
                                                                    ; - java.util.ArrayList::add@2 (line 458)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
  0.14%    0.14%      0x00007f36cd24aac3: mov    %ebp,%r9d
  0.28%    0.27%      0x00007f36cd24aac6: inc    %r9d               ;*iadd
                                                                    ; - java.util.ArrayList::add@6 (line 458)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
                      0x00007f36cd24aac9: cmp    $0xed9f0db7,%edx   ;   {oop(a &apos;java/lang/Object&apos;[0] )}
                      0x00007f36cd24aacf: je     0x00007f36cd24b5ba  ;*if_acmpne
                                                                    ; - java.util.ArrayList::ensureCapacityInternal@7 (line 223)
                                                                    ; - java.util.ArrayList::add@7 (line 458)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
                      0x00007f36cd24aad5: mov    %r9d,%esi          ;*aload_0
                                                                    ; - java.util.ArrayList::ensureCapacityInternal@17 (line 227)
                                                                    ; - java.util.ArrayList::add@7 (line 458)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
  0.11%    0.10%      0x00007f36cd24aad8: mov    0xc(%rdi),%r11d    ;*getfield modCount
                                                                    ; - java.util.ArrayList::ensureExplicitCapacity@2 (line 231)
                                                                    ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                                    ; - java.util.ArrayList::add@7 (line 458)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
  0.35%    0.21%      0x00007f36cd24aadc: inc    %r11d
                      0x00007f36cd24aadf: mov    %r11d,0xc(%rdi)    ;*putfield modCount
                                                                    ; - java.util.ArrayList::ensureExplicitCapacity@7 (line 231)
                                                                    ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                                    ; - java.util.ArrayList::add@7 (line 458)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
  0.01%    0.00%      0x00007f36cd24aae3: mov    0xc(%r12,%rdx,8),%r11d  ;*arraylength
                                                                    ; - java.util.ArrayList::ensureExplicitCapacity@15 (line 234)
                                                                    ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                                    ; - java.util.ArrayList::add@7 (line 458)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
                                                                    ; implicit exception: dispatches to 0x00007f36cd24c205
  0.19%    0.07%      0x00007f36cd24aae8: mov    %esi,%r10d
  0.25%    0.22%      0x00007f36cd24aaeb: sub    %r11d,%r10d
  0.14%    0.02%      0x00007f36cd24aaee: test   %r10d,%r10d
                      0x00007f36cd24aaf1: jg     0x00007f36cd24b30d  ;*ifle
                                                                    ; - java.util.ArrayList::ensureExplicitCapacity@17 (line 234)
                                                                    ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                                    ; - java.util.ArrayList::add@7 (line 458)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
  0.06%    0.02%      0x00007f36cd24aaf7: mov    %rdx,%r10
  0.11%    0.15%      0x00007f36cd24aafa: shl    $0x3,%r10          ;*return
                                                                    ; - java.util.ArrayList::ensureExplicitCapacity@25 (line 236)
                                                                    ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                                    ; - java.util.ArrayList::add@7 (line 458)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
  0.33%    0.17%      0x00007f36cd24aafe: mov    %r9d,0x10(%rdi)    ;*putfield size
                                                                    ; - java.util.ArrayList::add@22 (line 459)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
  0.00%               0x00007f36cd24ab02: mov    0xc(%r10),%r11d    ; implicit exception: dispatches to 0x00007f36cd24c215
  0.07%    0.02%      0x00007f36cd24ab06: cmp    %r11d,%ebp
                      0x00007f36cd24ab09: jae    0x00007f36cd24b75d
  0.12%    0.12%      0x00007f36cd24ab0f: mov    0x8(%r10),%r11d
  0.28%    0.10%      0x00007f36cd24ab13: cmp    $0xf80022f5,%r11d  ;   {metadata(&apos;java/lang/Object&apos;[])}
                      0x00007f36cd24ab1a: jne    0x00007f36cd24b7dd
  0.01%    0.00%      0x00007f36cd24ab20: lea    0x10(%r10,%rbp,4),%r10
  0.06%    0.01%      0x00007f36cd24ab25: mov    0x50(%rsp),%r11
  0.14%    0.07%      0x00007f36cd24ab2a: shr    $0x3,%r11
  0.25%    0.10%      0x00007f36cd24ab2e: mov    %r11d,(%r10)
  0.04%    0.02%      0x00007f36cd24ab31: shr    $0x9,%r10
  0.01%    0.01%      0x00007f36cd24ab35: movabs $0x7f36de605000,%r11
  0.08%    0.04%      0x00007f36cd24ab3f: mov    %r12b,(%r11,%r10,1)  ;*aastore
                                                                    ; - java.util.ArrayList::add@26 (line 459)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
  0.33%    0.22%      0x00007f36cd24ab43: xor    %r11d,%r11d        ; OopMap{[8]=Oop [24]=Oop [40]=Oop off=422}
                                                                    ;*goto
                                                                    ; - com.google.re2j.Machine::step@419 (line 264)
  0.06%    0.01%   ↗  0x00007f36cd24ab46: test   %eax,0x189b24b4(%rip)        # 0x00007f36e5bfd000
                   │                                                ;*goto
                   │                                                ; - com.google.re2j.Machine::step@419 (line 264)
                   │                                                ;   {poll}
  0.20%    0.12%   │  0x00007f36cd24ab4c: mov    0x8(%rsp),%r10
  0.18%    0.13%   │  0x00007f36cd24ab51: mov    0xc(%r10),%r11d
  0.39%    0.39%   │  0x00007f36cd24ab55: cmp    %r11d,%r14d
                   │  0x00007f36cd24ab58: jge    0x00007f36cd24ad87
  0.07%    0.01%   │  0x00007f36cd24ab5e: mov    %ecx,0x20(%rsp)
  0.16%    0.14%   │  0x00007f36cd24ab62: mov    %r14d,%r8d         ;*aload_1
                   │                                                ; - com.google.re2j.Machine::step@21 (line 265)
  0.22%    0.11%   │  0x00007f36cd24ab65: mov    0x8(%rsp),%r10
  0.37%    0.37%   │  0x00007f36cd24ab6a: mov    0x10(%r10),%r11d   ;*getfield dense
                   │                                                ; - com.google.re2j.Machine::step@22 (line 265)
  0.20%    0.14%   │  0x00007f36cd24ab6e: mov    0xc(%r12,%r11,8),%r10d  ; implicit exception: dispatches to 0x00007f36cd24c1c1
  0.48%    0.35%   │  0x00007f36cd24ab73: cmp    %r10d,%r8d
                   │  0x00007f36cd24ab76: jae    0x00007f36cd24b67e
  0.29%    0.39%   │  0x00007f36cd24ab7c: lea    (%r12,%r11,8),%r10
  0.30%    0.31%   │  0x00007f36cd24ab80: mov    0x10(%r10,%r8,4),%r9d  ;*aaload
                   │                                                ; - com.google.re2j.Machine::step@27 (line 265)
  0.11%    0.15%   │  0x00007f36cd24ab85: mov    0x10(%r12,%r9,8),%r11d  ;*getfield thread
                   │                                                ; - com.google.re2j.Machine::step@40 (line 269)
                   │                                                ; implicit exception: dispatches to 0x00007f36cd24c235
  1.19%    1.30%   │  0x00007f36cd24ab8a: mov    %r8d,%r14d
  0.13%    0.22%   │  0x00007f36cd24ab8d: inc    %r14d              ;*iadd
                   │                                                ; - com.google.re2j.Machine::step@241 (line 293)
  0.18%    0.26%   │  0x00007f36cd24ab90: test   %r11d,%r11d
                  ╭│  0x00007f36cd24ab93: jne    0x00007f36cd24aba0  ;*ifnonnull
                  ││                                                ; - com.google.re2j.Machine::step@47 (line 270)
  0.15%    0.12%  ││  0x00007f36cd24ab95: mov    0x24(%rsp),%r11d
  0.15%    0.08%  ││  0x00007f36cd24ab9a: mov    0x20(%rsp),%ecx
  0.08%    0.04%  │╰  0x00007f36cd24ab9e: jmp    0x00007f36cd24ab46
  0.26%    0.35%  ↘   0x00007f36cd24aba0: mov    0x24(%rsp),%r9d
  0.02%    0.01%      0x00007f36cd24aba5: test   %r9d,%r9d
                      0x00007f36cd24aba8: jne    0x00007f36cd24ba8c  ;*ifeq
                                                                    ; - com.google.re2j.Machine::step@55 (line 273)
  0.13%    0.13%      0x00007f36cd24abae: mov    0x10(%r12,%r11,8),%r10d  ;*getfield inst
                                                                    ; - com.google.re2j.Machine::step@107 (line 278)
  1.16%    1.44%      0x00007f36cd24abb3: mov    0xc(%r12,%r10,8),%esi  ;*getfield op
                                                                    ; - com.google.re2j.Machine::step@117 (line 280)
                                                                    ; implicit exception: dispatches to 0x00007f36cd24c1e5
  2.42%    2.89%      0x00007f36cd24abb8: mov    0x18(%r12,%r10,8),%ecx  ;*getfield runes
                                                                    ; - com.google.re2j.Machine::step@320 (line 310)
  0.03%    0.04%      0x00007f36cd24abbd: mov    0xc(%r12,%r11,8),%edi  ;*getfield cap
                                                                    ; - com.google.re2j.Machine::step@176 (line 287)
                      0x00007f36cd24abc2: lea    (%r12,%r11,8),%r9  ;*getfield thread
                                                                    ; - com.google.re2j.Machine::step@40 (line 269)
           0.01%      0x00007f36cd24abc6: cmp    $0x9,%esi
                      0x00007f36cd24abc9: je     0x00007f36cd24aa10
  0.49%    0.53%      0x00007f36cd24abcf: cmp    $0x9,%esi
                      0x00007f36cd24abd2: jle    0x00007f36cd24ac02
  0.01%               0x00007f36cd24abd4: cmp    $0xb,%esi
                      0x00007f36cd24abd7: jne    0x00007f36cd24aa35  ;*tableswitch
                                                                    ; - com.google.re2j.Machine::step@120 (line 280)
                      0x00007f36cd24abdd: mov    0x20(%rsp),%ecx
                      0x00007f36cd24abe1: cmp    $0xa,%ecx
                      0x00007f36cd24abe4: je     0x00007f36cd24aa2e  ;*if_icmpeq
                                                                    ; - com.google.re2j.Machine::step@348 (line 318)
                      0x00007f36cd24abea: mov    %r8d,0xa4(%rsp)
                      0x00007f36cd24abf2: mov    %r14d,0xac(%rsp)
                      0x00007f36cd24abfa: mov    %r9,%r13
                      0x00007f36cd24abfd: jmpq   0x00007f36cd24aa51
....................................................................................................
 13.60%   12.95%  <total for region 4>

....[Hottest Region 5]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 536 (389 bytes) 

                          0x00007f36cd23fe29: mov    %r10,(%rsp)
                          0x00007f36cd23fe2d: xchg   %ax,%ax
                          0x00007f36cd23fe2f: callq  0x00007f36cd046020  ; OopMap{off=1140}
                                                                        ;*invokespecial add
                                                                        ; - com.google.re2j.Machine::add@203 (line 369)
                                                                        ;   {optimized virtual_call}
                  ╭       0x00007f36cd23fe34: jmpq   0x00007f36cd23ffa7
                  │       0x00007f36cd23fe39: mov    0x70(%rsp),%rax
                  │╭      0x00007f36cd23fe3e: jmpq   0x00007f36cd23ffa7  ;*tableswitch
                  ││                                                    ; - com.google.re2j.Machine::add@40 (line 349)
  1.29%    1.42%  ││      0x00007f36cd23fe43: mov    0x1c(%rsp),%r8d
                  ││      0x00007f36cd23fe48: mov    0x20(%rsp),%r9
  0.03%    0.00%  ││      0x00007f36cd23fe4d: mov    0x28(%rsp),%edi
           0.01%  ││      0x00007f36cd23fe51: mov    0x70(%rsp),%r10
  0.31%    0.33%  ││      0x00007f36cd23fe56: mov    %r10,(%rsp)
                  ││      0x00007f36cd23fe5a: mov    %rsi,%rbp
  0.01%    0.03%  ││      0x00007f36cd23fe5d: xchg   %ax,%ax
                  ││      0x00007f36cd23fe5f: callq  0x00007f36cd046020  ; OopMap{rbp=Oop [32]=Oop [56]=Oop [64]=Oop off=1188}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@127 (line 358)
                  ││                                                    ;   {optimized virtual_call}
  0.01%    0.01%  ││      0x00007f36cd23fe64: mov    0x38(%rsp),%r10
  0.07%    0.12%  ││      0x00007f36cd23fe69: mov    0x14(%r10),%ecx    ;*getfield arg
                  ││                                                    ; - com.google.re2j.Machine::add@136 (line 359)
  0.25%    0.36%  ││      0x00007f36cd23fe6d: mov    %rbp,%rsi
  0.02%    0.01%  ││      0x00007f36cd23fe70: mov    0x40(%rsp),%rdx
           0.00%  ││      0x00007f36cd23fe75: mov    0x1c(%rsp),%r8d
  0.07%    0.10%  ││      0x00007f36cd23fe7a: mov    0x20(%rsp),%r9
  0.17%    0.28%  ││      0x00007f36cd23fe7f: mov    0x28(%rsp),%edi
  0.02%    0.01%  ││      0x00007f36cd23fe83: mov    %rax,(%rsp)
  0.00%    0.00%  ││      0x00007f36cd23fe87: callq  0x00007f36cd046020  ; OopMap{off=1228}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@146 (line 359)
                  ││                                                    ;   {optimized virtual_call}
  0.01%    0.00%  ││╭     0x00007f36cd23fe8c: jmpq   0x00007f36cd23ffa7  ;*aload
                  │││                                                   ; - com.google.re2j.Machine::add@293 (line 388)
  1.89%    1.94%  │││     0x00007f36cd23fe91: mov    0x38(%rsp),%r10
  0.00%           │││     0x00007f36cd23fe96: shr    $0x3,%r10          ;*putfield inst
                  │││                                                   ; - com.google.re2j.Machine::alloc@47 (line 151)
                  │││                                                   ; - com.google.re2j.Machine::add@301 (line 389)
  0.00%           │││     0x00007f36cd23fe9a: mov    0x70(%rsp),%rbx
  0.00%    0.00%  │││     0x00007f36cd23fe9f: test   %rbx,%rbx
                  │││╭    0x00007f36cd23fea2: jne    0x00007f36cd23ffb3  ;*ifnonnull
                  ││││                                                  ; - com.google.re2j.Machine::add@295 (line 388)
  0.45%    0.32%  ││││    0x00007f36cd23fea8: mov    0x20(%rsi),%ebp    ;*getfield pool
                  ││││                                                  ; - com.google.re2j.Machine::alloc@1 (line 147)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 389)
  0.00%    0.01%  ││││    0x00007f36cd23feab: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007f36cd2401e9
  0.00%    0.00%  ││││    0x00007f36cd23feb0: cmp    $0xf8002f22,%r8d   ;   {metadata(&apos;java/util/ArrayList&apos;)}
                  ││││    0x00007f36cd23feb7: jne    0x00007f36cd240019
  0.01%           ││││    0x00007f36cd23febd: lea    (%r12,%rbp,8),%r9  ;*invokeinterface size
                  ││││                                                  ; - com.google.re2j.Machine::alloc@4 (line 147)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 389)
  0.44%    0.43%  ││││    0x00007f36cd23fec1: mov    0x10(%r9),%ecx     ;*getfield size
                  ││││                                                  ; - java.util.ArrayList::size@1 (line 278)
                  ││││                                                  ; - com.google.re2j.Machine::alloc@4 (line 147)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 389)
  0.00%    0.00%  ││││    0x00007f36cd23fec5: test   %ecx,%ecx
                  ││││    0x00007f36cd23fec7: jle    0x00007f36cd24007d  ;*ifle
                  ││││                                                  ; - com.google.re2j.Machine::alloc@11 (line 148)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 389)
  0.01%    0.00%  ││││    0x00007f36cd23fecd: mov    %ecx,%r8d
  0.00%           ││││    0x00007f36cd23fed0: dec    %r8d               ;*isub
                  ││││                                                  ; - com.google.re2j.Machine::alloc@20 (line 148)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 389)
  0.49%    0.34%  ││││    0x00007f36cd23fed3: cmp    %ecx,%r8d
                  ││││    0x00007f36cd23fed6: jge    0x00007f36cd2400a5  ;*if_icmplt
                  ││││                                                  ; - java.util.ArrayList::rangeCheck@5 (line 652)
                  ││││                                                  ; - java.util.ArrayList::remove@2 (line 492)
                  ││││                                                  ; - com.google.re2j.Machine::alloc@21 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 389)
                  ││││    0x00007f36cd23fedc: incl   0xc(%r9)           ;*putfield modCount
                  ││││                                                  ; - java.util.ArrayList::remove@12 (line 494)
                  ││││                                                  ; - com.google.re2j.Machine::alloc@21 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 389)
  0.46%    0.38%  ││││    0x00007f36cd23fee0: mov    0x14(%r9),%ebp     ;*getfield elementData
                  ││││                                                  ; - java.util.ArrayList::elementData@1 (line 418)
                  ││││                                                  ; - java.util.ArrayList::remove@17 (line 495)
                  ││││                                                  ; - com.google.re2j.Machine::alloc@21 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 389)
  0.00%           ││││    0x00007f36cd23fee4: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f36cd2401f9
  0.01%           ││││    0x00007f36cd23fee9: cmp    %r11d,%r8d
                  ││││    0x00007f36cd23feec: jae    0x00007f36cd23ffee  ;*aaload
                  ││││                                                  ; - java.util.ArrayList::elementData@5 (line 418)
                  ││││                                                  ; - java.util.ArrayList::remove@17 (line 495)
                  ││││                                                  ; - com.google.re2j.Machine::alloc@21 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 389)
  0.01%           ││││    0x00007f36cd23fef2: mov    %r8d,0x10(%r9)     ;*putfield size
                  ││││                                                  ; - java.util.ArrayList::remove@62 (line 501)
                  ││││                                                  ; - com.google.re2j.Machine::alloc@21 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 389)
  0.40%    0.45%  ││││    0x00007f36cd23fef6: lea    (%r12,%rbp,8),%r11
  0.01%    0.00%  ││││    0x00007f36cd23fefa: mov    0xc(%r11,%rcx,4),%ebp  ;*aaload
                  ││││                                                  ; - java.util.ArrayList::elementData@5 (line 418)
                  ││││                                                  ; - java.util.ArrayList::remove@17 (line 495)
                  ││││                                                  ; - com.google.re2j.Machine::alloc@21 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 389)
                  ││││    0x00007f36cd23feff: mov    %r12d,0xc(%r11,%rcx,4)  ;*aastore
                  ││││                                                  ; - java.util.ArrayList::remove@66 (line 501)
                  ││││                                                  ; - com.google.re2j.Machine::alloc@21 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 389)
  0.01%    0.00%  ││││    0x00007f36cd23ff04: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007f36cd24020d
  0.44%    0.32%  ││││    0x00007f36cd23ff09: cmp    $0xf8019b16,%r8d   ;   {metadata(&apos;com/google/re2j/Machine$Thread&apos;)}
                  ││││    0x00007f36cd23ff10: jne    0x00007f36cd24011d
  0.00%           ││││    0x00007f36cd23ff16: lea    (%r12,%rbp,8),%rbx  ;*checkcast
                  ││││                                                  ; - com.google.re2j.Machine::alloc@26 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 389)
  0.01%           ││││    0x00007f36cd23ff1a: mov    %r10d,0x10(%rbx)
  0.01%    0.01%  ││││    0x00007f36cd23ff1e: mov    %rbx,%r10
  0.47%    0.23%  ││││    0x00007f36cd23ff21: shr    $0x9,%r10
                  ││││    0x00007f36cd23ff25: movabs $0x7f36de605000,%r11
           0.00%  ││││    0x00007f36cd23ff2f: mov    %r12b,(%r11,%r10,1)  ;*aload
                  ││││                                                  ; - com.google.re2j.Machine::add@316 (line 393)
  0.02%    0.00%  ││││ ↗  0x00007f36cd23ff33: mov    0x20(%rsp),%rdi
  0.46%    0.24%  ││││ │  0x00007f36cd23ff38: mov    0xc(%rdi),%r10d    ;*arraylength
                  ││││ │                                                ; - com.google.re2j.Machine::add@318 (line 393)
                  ││││ │                                                ; implicit exception: dispatches to 0x00007f36cd2401d9
  0.03%    0.01%  ││││ │  0x00007f36cd23ff3c: test   %r10d,%r10d
                  ││││ │  0x00007f36cd23ff3f: jle    0x00007f36cd24005b  ;*ifle
                  ││││ │                                                ; - com.google.re2j.Machine::add@319 (line 393)
           0.01%  ││││ │  0x00007f36cd23ff45: mov    0xc(%rbx),%r11d    ;*getfield cap
                  ││││ │                                                ; - com.google.re2j.Machine::add@324 (line 393)
  0.00%    0.01%  ││││ │  0x00007f36cd23ff49: lea    (%r12,%r13,8),%rbp  ;*aaload
                  ││││ │                                                ; - com.google.re2j.Machine$Queue::add@24 (line 61)
                  ││││ │                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.41%    0.24%  ││││ │  0x00007f36cd23ff4d: mov    %r11,%r8
  0.04%           ││││ │  0x00007f36cd23ff50: shl    $0x3,%r8
  0.01%    0.00%  ││││ │  0x00007f36cd23ff54: cmp    %rdi,%r8
                  ││││╭│  0x00007f36cd23ff57: je     0x00007f36cd23ff84  ;*if_acmpeq
                  ││││││                                                ; - com.google.re2j.Machine::add@329 (line 393)
           0.00%  ││││││  0x00007f36cd23ff59: mov    0xc(%r12,%r11,8),%r8d  ; implicit exception: dispatches to 0x00007f36cd240229
  0.46%    0.35%  ││││││  0x00007f36cd23ff5e: lea    (%r12,%r11,8),%rcx  ;*getfield cap
                  ││││││                                                ; - com.google.re2j.Machine::add@324 (line 393)
                  ││││││  0x00007f36cd23ff62: cmp    %r10d,%r8d
                  ││││││  0x00007f36cd23ff65: jb     0x00007f36cd24002d
  0.01%           ││││││  0x00007f36cd23ff6b: lea    0x10(%r12,%r11,8),%rsi
  0.01%           ││││││  0x00007f36cd23ff70: add    $0x10,%rdi
  0.47%    0.17%  ││││││  0x00007f36cd23ff74: movslq %r10d,%rdx
                  ││││││  0x00007f36cd23ff77: movabs $0x7f36cd052640,%r10
           0.00%  ││││││  0x00007f36cd23ff81: callq  *%r10              ;*aload
                  ││││││                                                ; - com.google.re2j.Machine::add@347 (line 396)
  0.00%    0.01%  ││││↘│  0x00007f36cd23ff84: mov    %rbp,%r10
  0.01%    0.01%  ││││ │  0x00007f36cd23ff87: mov    %rbx,%r8
  0.02%    0.01%  ││││ │  0x00007f36cd23ff8a: shr    $0x3,%r8
  0.37%    0.73%  ││││ │  0x00007f36cd23ff8e: mov    %r8d,0x10(%r12,%r13,8)
           0.01%  ││││ │  0x00007f36cd23ff93: shr    $0x9,%r10
  0.00%    0.00%  ││││ │  0x00007f36cd23ff97: movabs $0x7f36de605000,%r11
  0.03%    0.01%  ││││ │  0x00007f36cd23ffa1: mov    %r12b,(%r11,%r10,1)  ;*putfield thread
                  ││││ │                                                ; - com.google.re2j.Machine::add@351 (line 396)
  0.41%    0.63%  ││││ │  0x00007f36cd23ffa5: xor    %eax,%eax          ;*synchronization entry
                  ││││ │                                                ; - com.google.re2j.Machine::add@-1 (line 341)
  0.34%    0.54%  ↘↘↘│ │  0x00007f36cd23ffa7: add    $0x60,%rsp
  0.01%    0.02%     │ │  0x00007f36cd23ffab: pop    %rbp
  0.41%    0.33%     │ │  0x00007f36cd23ffac: test   %eax,0x189bd04e(%rip)        # 0x00007f36e5bfd000
                     │ │                                                ;   {poll_return}
  0.39%    0.47%     │ │  0x00007f36cd23ffb2: retq   
  0.01%    0.01%     ↘ │  0x00007f36cd23ffb3: mov    %r10d,0x10(%rbx)
                       │  0x00007f36cd23ffb7: mov    %rbx,%r10
                       │  0x00007f36cd23ffba: shr    $0x9,%r10
                       │  0x00007f36cd23ffbe: movabs $0x7f36de605000,%r11
  0.02%    0.01%       │  0x00007f36cd23ffc8: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                       │                                                ; - com.google.re2j.Machine::add@313 (line 391)
                       ╰  0x00007f36cd23ffcc: jmpq   0x00007f36cd23ff33  ;*tableswitch
                                                                        ; - com.google.re2j.Machine::add@40 (line 349)
                          0x00007f36cd23ffd1: mov    0x1c(%rsp),%r8d
                          0x00007f36cd23ffd6: mov    0x20(%rsp),%r9
                          0x00007f36cd23ffdb: mov    %r10d,%edi
                          0x00007f36cd23ffde: mov    0x70(%rsp),%r10
                          0x00007f36cd23ffe3: mov    %r10,(%rsp)
                          0x00007f36cd23ffe7: callq  0x00007f36cd046020  ; OopMap{off=1580}
                                                                        ;*invokespecial add
....................................................................................................
 11.43%   11.02%  <total for region 5>

....[Hottest Regions]...............................................................................
 23.07%   27.12%         C2, level 4  com.google.re2j.Machine::step, version 544 (363 bytes) 
 17.48%   16.47%         C2, level 4  com.google.re2j.Machine::add, version 536 (322 bytes) 
 17.39%   17.70%         C2, level 4  com.google.re2j.Machine::step, version 544 (223 bytes) 
 13.60%   12.95%         C2, level 4  com.google.re2j.Machine::step, version 544 (310 bytes) 
 11.43%   11.02%         C2, level 4  com.google.re2j.Machine::add, version 536 (389 bytes) 
  4.62%    4.61%         C2, level 4  com.google.re2j.Machine::step, version 544 (151 bytes) 
  3.82%    4.03%         C2, level 4  com.google.re2j.Machine::match, version 587 (687 bytes) 
  3.20%    1.47%        runtime stub  StubRoutines::jint_disjoint_arraycopy (128 bytes) 
  0.61%    0.37%         C2, level 4  com.google.re2j.Machine::step, version 544 (75 bytes) 
  0.56%    0.55%   [kernel.kallsyms]  [unknown] (15 bytes) 
  0.52%    0.35%         C2, level 4  com.google.re2j.Machine::step, version 544 (16 bytes) 
  0.31%    0.30%         C2, level 4  com.google.re2j.Machine::match, version 587 (143 bytes) 
  0.24%    0.30%         C2, level 4  com.google.re2j.Machine::step, version 544 (73 bytes) 
  0.19%    0.17%         C2, level 4  com.google.re2j.Machine::step, version 544 (42 bytes) 
  0.13%    0.01%   [kernel.kallsyms]  [unknown] (47 bytes) 
  0.11%    0.01%   [kernel.kallsyms]  [unknown] (1 bytes) 
  0.09%    0.03%         C2, level 4  com.google.re2j.Machine::init, version 596 (18 bytes) 
  0.08%    0.02%   [kernel.kallsyms]  [unknown] (28 bytes) 
  0.07%    0.00%         C2, level 4  com.google.re2j.Machine::init, version 596 (31 bytes) 
  0.07%    0.01%   [kernel.kallsyms]  [unknown] (0 bytes) 
  2.40%    2.51%  <...other 526 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 60.27%   63.59%         C2, level 4  com.google.re2j.Machine::step, version 544 
 28.91%   27.49%         C2, level 4  com.google.re2j.Machine::add, version 536 
  4.18%    4.35%         C2, level 4  com.google.re2j.Machine::match, version 587 
  3.20%    1.47%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
  1.81%    1.41%   [kernel.kallsyms]  [unknown] 
  0.27%    0.07%         C2, level 4  com.google.re2j.Machine::init, version 596 
  0.15%    0.06%         C2, level 4  com.google.re2j.Matcher::find, version 606 
  0.07%    0.07%      hsdis-amd64.so  [unknown] 
  0.06%    0.08%           libjvm.so  RelocIterator::initialize 
  0.04%    0.09%        libc-2.26.so  vfprintf 
  0.04%    0.09%        libc-2.26.so  _IO_fwrite 
  0.03%    0.06%           libjvm.so  fileStream::write 
  0.03%    0.03%           libjvm.so  outputStream::update_position 
  0.02%    0.02%           libjvm.so  xmlTextStream::write 
  0.02%    0.01%         C2, level 4  com.github.arnaudroger.re2j.Re2jFindRegex::testExp2, version 627 
  0.02%    0.02%        libc-2.26.so  __strlen_avx2 
  0.02%    0.02%         C2, level 4  java.util.Collections::shuffle, version 626 
  0.02%    0.01%           libjvm.so  GenericTaskQueueSet<OverflowTaskQueue<StarTask, (MemoryType)1, 131072u>, (MemoryType)1>::steal_best_of_2 
  0.02%    0.01%           libjvm.so  outputStream::print 
  0.02%           libpthread-2.26.so  __libc_write 
  0.80%    0.53%  <...other 121 warm methods...>
....................................................................................................
100.00%   99.52%  <totals>

....[Distribution by Source]........................................................................
 93.83%   95.62%         C2, level 4
  3.20%    1.47%        runtime stub
  1.81%    1.41%   [kernel.kallsyms]
  0.68%    0.84%           libjvm.so
  0.23%    0.47%        libc-2.26.so
  0.08%    0.07%  libpthread-2.26.so
  0.07%    0.07%      hsdis-amd64.so
  0.06%    0.03%         interpreter
  0.01%    0.01%         C1, level 3
  0.01%    0.00%      perf-19591.map
  0.00%                             
  0.00%             Unknown, level 0
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:44

Benchmark                     Mode  Cnt     Score    Error  Units
Re2jFindRegex.testExp2       thrpt   20  3273.061 ± 52.904  ops/s
Re2jFindRegex.testExp2:·asm  thrpt            NaN             ---
