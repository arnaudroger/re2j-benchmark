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
# Warmup Iteration   1: 2106.303 ops/s
# Warmup Iteration   2: 3584.168 ops/s
# Warmup Iteration   3: 3601.166 ops/s
# Warmup Iteration   4: 3707.334 ops/s
# Warmup Iteration   5: 3698.939 ops/s
# Warmup Iteration   6: 3677.170 ops/s
# Warmup Iteration   7: 3676.610 ops/s
# Warmup Iteration   8: 3708.748 ops/s
# Warmup Iteration   9: 3705.955 ops/s
# Warmup Iteration  10: 3596.629 ops/s
# Warmup Iteration  11: 3667.395 ops/s
# Warmup Iteration  12: 3700.774 ops/s
# Warmup Iteration  13: 3703.611 ops/s
# Warmup Iteration  14: 3694.477 ops/s
# Warmup Iteration  15: 3717.769 ops/s
# Warmup Iteration  16: 3690.988 ops/s
# Warmup Iteration  17: 3679.020 ops/s
# Warmup Iteration  18: 3673.128 ops/s
# Warmup Iteration  19: 3653.423 ops/s
# Warmup Iteration  20: 3428.501 ops/s
Iteration   1: 3645.687 ops/s
Iteration   2: 3690.517 ops/s
Iteration   3: 3697.966 ops/s
Iteration   4: 3695.939 ops/s
Iteration   5: 3699.414 ops/s
Iteration   6: 3668.758 ops/s
Iteration   7: 3695.096 ops/s
Iteration   8: 3705.369 ops/s
Iteration   9: 3568.338 ops/s
Iteration  10: 3670.649 ops/s
Iteration  11: 3645.775 ops/s
Iteration  12: 3682.269 ops/s
Iteration  13: 3686.866 ops/s
Iteration  14: 3691.429 ops/s
Iteration  15: 3685.333 ops/s
Iteration  16: 3631.442 ops/s
Iteration  17: 3651.766 ops/s
Iteration  18: 3654.875 ops/s
Iteration  19: 3651.326 ops/s
Iteration  20: 3646.465 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  3668.264 ±(99.9%) 28.283 ops/s [Average]
  (min, avg, max) = (3568.338, 3668.264, 3705.369), stdev = 32.571
  CI (99.9%): [3639.981, 3696.547] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2:·asm":
PrintAssembly processed: 213970 total address lines.
Perf output processed (skipped 23.045 seconds):
 Column 1: cycles (20458 events)
 Column 2: instructions (20519 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 554 (318 bytes) 

                           0x00007f357d249b48: mov    0x28(%rsp),%r8
                           0x00007f357d249b4d: movb   $0x1,0x10(%r8)     ;*putfield matched
                                                                         ; - com.google.re2j.Machine::step@284 (line 306)
                           0x00007f357d249b52: mov    0x20(%rsp),%r9d
                           0x00007f357d249b57: jmpq   0x00007f357d2496cd
                           0x00007f357d249b5c: mov    %r10d,0x74(%rsp)
                           0x00007f357d249b61: mov    %eax,0x7c(%rsp)
                           0x00007f357d249b65: mov    %ebx,%edi
                           0x00007f357d249b67: mov    %r11,%r13
                           0x00007f357d249b6a: jmpq   0x00007f357d249709
  0.28%    0.42%      ↗    0x00007f357d249b6f: cmp    $0x3f,%r8d
                      │    0x00007f357d249b73: jge    0x00007f357d24a135  ;*if_icmpge
                      │                                                  ; - com.google.re2j.Unicode::simpleFold@48 (line 215)
                      │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 57)
                      │                                                  ; - com.google.re2j.Machine::step@294 (line 310)
                      │    0x00007f357d249b79: cmp    $0x3f,%r8d
                      │    0x00007f357d249b7d: jae    0x00007f357d249f9d
  0.09%    0.09%      │    0x00007f357d249b83: mov    0x10(%r9,%r8,4),%ebp  ;*aaload
                      │                                                  ; - com.google.re2j.Unicode::simpleFold@55 (line 215)
                      │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 57)
                      │                                                  ; - com.google.re2j.Machine::step@294 (line 310)
  0.09%    0.12%      │    0x00007f357d249b88: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f357d24a625
  0.43%    0.38%      │    0x00007f357d249b8d: test   %r11d,%r11d
                      │    0x00007f357d249b90: jbe    0x00007f357d249fe5
                      │    0x00007f357d249b96: mov    0x10(%r12,%rbp,8),%ebp  ;*iaload
                      │                                                  ; - com.google.re2j.Unicode::simpleFold@57 (line 215)
                      │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 57)
                      │                                                  ; - com.google.re2j.Machine::step@294 (line 310)
  0.08%    0.07%      │    0x00007f357d249b9b: cmp    0x20(%rsp),%ebp
                      │    0x00007f357d249b9f: je     0x00007f357d24a17d  ;*if_icmpne
                      │                                                  ; - com.google.re2j.Unicode::simpleFold@59 (line 215)
                      │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 57)
                      │                                                  ; - com.google.re2j.Machine::step@294 (line 310)
  0.11%    0.07%      │    0x00007f357d249ba5: mov    0x20(%rsp),%r8d
  0.29%    0.41%      │    0x00007f357d249baa: cmp    $0x7f,%r8d
                      │    0x00007f357d249bae: jg     0x00007f357d24a1b9  ;*if_icmpgt
                      │                                                  ; - com.google.re2j.Unicode::toLower@3 (line 177)
                      │                                                  ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                      │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 57)
                      │                                                  ; - com.google.re2j.Machine::step@294 (line 310)
                      │    0x00007f357d249bb4: cmp    $0x41,%r8d
                      │    0x00007f357d249bb8: jl     0x00007f357d24a0e5  ;*if_icmpgt
                      │                                                  ; - com.google.re2j.Unicode::toLower@9 (line 178)
                      │                                                  ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                      │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 57)
                      │                                                  ; - com.google.re2j.Machine::step@294 (line 310)
  0.08%    0.09%      │    0x00007f357d249bbe: cmp    $0x5a,%r8d
                  ╭   │    0x00007f357d249bc2: jg     0x00007f357d249bd0  ;*if_icmpgt
                  │   │                                                  ; - com.google.re2j.Unicode::toLower@15 (line 178)
                  │   │                                                  ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                  │   │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  │   │                                                  ; - com.google.re2j.Machine::step@294 (line 310)
                  │   │    0x00007f357d249bc4: mov    %r8d,%r10d
                  │   │    0x00007f357d249bc7: add    $0x20,%r10d        ;*iinc
                  │   │                                                  ; - com.google.re2j.Unicode::toLower@18 (line 179)
                  │   │                                                  ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                  │   │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  │   │                                                  ; - com.google.re2j.Machine::step@294 (line 310)
                  │   │    0x00007f357d249bcb: cmp    %r8d,%r10d
                  │╭  │    0x00007f357d249bce: jne    0x00007f357d249beb  ;*if_icmpeq
                  ││  │                                                  ; - com.google.re2j.Unicode::simpleFold@77 (line 224)
                  ││  │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  ││  │                                                  ; - com.google.re2j.Machine::step@294 (line 310)
  0.09%    0.11%  ↘│  │    0x00007f357d249bd0: cmp    $0x61,%r8d
                   │  │    0x00007f357d249bd4: jl     0x00007f357d24a3fd  ;*if_icmpgt
                   │  │                                                  ; - com.google.re2j.Unicode::toUpper@9 (line 167)
                   │  │                                                  ; - com.google.re2j.Unicode::simpleFold@83 (line 227)
                   │  │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 57)
                   │  │                                                  ; - com.google.re2j.Machine::step@294 (line 310)
  0.37%    0.35%   │  │    0x00007f357d249bda: cmp    $0x7a,%r8d
                   │  │    0x00007f357d249bde: jg     0x00007f357d24a445  ;*if_icmpgt
                   │  │                                                  ; - com.google.re2j.Unicode::toUpper@15 (line 167)
                   │  │                                                  ; - com.google.re2j.Unicode::simpleFold@83 (line 227)
                   │  │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 57)
                   │  │                                                  ; - com.google.re2j.Machine::step@294 (line 310)
                   │  │    0x00007f357d249be4: mov    %r8d,%r10d
  0.12%    0.10%   │  │    0x00007f357d249be7: add    $0xffffffe0,%r10d  ; OopMap{r9=Oop rbx=NarrowOop rdi=NarrowOop rsi=Oop r13=Oop r14=NarrowOop [8]=Oop [24]=Oop [40]=Oop off=1451}
                   │  │                                                  ;*goto
                   │  │                                                  ; - com.google.re2j.Inst::matchRune@54 (line 57)
                   │  │                                                  ; - com.google.re2j.Machine::step@294 (line 310)
  0.09%    0.09%   ↘  │    0x00007f357d249beb: test   %eax,0x168b740f(%rip)        # 0x00007f3593b01000
                      │                                                  ;*goto
                      │                                                  ; - com.google.re2j.Inst::matchRune@54 (line 57)
                      │                                                  ; - com.google.re2j.Machine::step@294 (line 310)
                      │                                                  ;   {poll}
  0.36%    0.39%      │    0x00007f357d249bf1: cmp    %eax,%r10d
                      │    0x00007f357d249bf4: je     0x00007f357d249a99  ;*if_icmpeq
                      │                                                  ; - com.google.re2j.Inst::matchRune@39 (line 56)
                      │                                                  ; - com.google.re2j.Machine::step@294 (line 310)
                      │    0x00007f357d249bfa: mov    %eax,%r11d         ;*iload_1
                      │                                                  ; - com.google.re2j.Inst::matchRune@42 (line 58)
                      │                                                  ; - com.google.re2j.Machine::step@294 (line 310)
  0.27%    0.38%      │    0x00007f357d249bfd: cmp    %r10d,%ecx
  0.22%    0.31%    ╭ │    0x00007f357d249c00: je     0x00007f357d249ccf  ;*if_icmpne
                    │ │                                                  ; - com.google.re2j.Inst::matchRune@44 (line 58)
                    │ │                                                  ; - com.google.re2j.Machine::step@294 (line 310)
                    │ │    0x00007f357d249c06: mov    %r10d,0x20(%rsp)
  0.02%    0.02%    │ │    0x00007f357d249c0b: mov    %r11d,%eax
  0.29%    0.37%    │ │    0x00007f357d249c0e: mov    $0x1f,%r11d
  0.28%    0.27%    │ │    0x00007f357d249c14: mov    $0x1f,%r10d
                    │ │    0x00007f357d249c1a: xor    %r8d,%r8d
           0.01%    │ │    0x00007f357d249c1d: mov    $0x3f,%edx
  0.28%    0.38%    │ │    0x00007f357d249c22: mov    %r8d,0x30(%rsp)
  0.21%    0.26%    │╭│    0x00007f357d249c27: jmp    0x00007f357d249c66
                    │││    0x00007f357d249c29: nopl   0x0(%rax)
  0.89%    1.16%    │││↗   0x00007f357d249c30: mov    0x30(%rsp),%r8d    ; OopMap{r9=Oop rbx=NarrowOop rdi=NarrowOop rsi=Oop r13=Oop r14=NarrowOop [8]=Oop [24]=Oop [40]=Oop off=1525}
                    ││││                                                 ;*goto
                    ││││                                                 ; - com.google.re2j.Unicode::simpleFold@40 (line 214)
                    ││││                                                 ; - com.google.re2j.Inst::matchRune@50 (line 57)
                    ││││                                                 ; - com.google.re2j.Machine::step@294 (line 310)
  0.90%    1.05%    ││││↗  0x00007f357d249c35: test   %eax,0x168b73c5(%rip)        # 0x00007f3593b01000
                    │││││                                                ;*goto
                    │││││                                                ; - com.google.re2j.Unicode::simpleFold@40 (line 214)
                    │││││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                    │││││                                                ; - com.google.re2j.Machine::step@294 (line 310)
                    │││││                                                ;   {poll}
  0.75%    0.92%    │││││  0x00007f357d249c3b: cmp    %r10d,%r8d
                    ││╰││  0x00007f357d249c3e: jge    0x00007f357d249b6f  ;*if_icmpge
                    ││ ││                                                ; - com.google.re2j.Unicode::simpleFold@9 (line 207)
                    ││ ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                    ││ ││                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.61%    0.78%    ││ ││  0x00007f357d249c44: mov    %r8d,0x30(%rsp)
  0.77%    0.77%    ││ ││  0x00007f357d249c49: mov    %r10d,%edx
  0.53%    0.83%    ││ ││  0x00007f357d249c4c: sub    %r8d,%r10d         ;*isub
                    ││ ││                                                ; - com.google.re2j.Unicode::simpleFold@15 (line 208)
                    ││ ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                    ││ ││                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.55%    0.77%    ││ ││  0x00007f357d249c4f: mov    %r10d,%r11d
  0.49%    0.70%    ││ ││  0x00007f357d249c52: sar    $0x1f,%r11d
  0.72%    0.67%    ││ ││  0x00007f357d249c56: shr    $0x1f,%r11d
  0.58%    0.75%    ││ ││  0x00007f357d249c5a: add    %r10d,%r11d
  0.62%    0.81%    ││ ││  0x00007f357d249c5d: sar    %r11d
  0.63%    0.65%    ││ ││  0x00007f357d249c60: mov    %r8d,%r10d
  0.78%    0.63%    ││ ││  0x00007f357d249c63: add    %r11d,%r10d        ;*idiv
                    ││ ││                                                ; - com.google.re2j.Unicode::simpleFold@17 (line 208)
                    ││ ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                    ││ ││                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.62%    0.70%    │↘ ││  0x00007f357d249c66: cmp    $0x3f,%r10d
                    │  ││  0x00007f357d249c6a: jae    0x00007f357d249d69
  0.60%    0.83%    │  ││  0x00007f357d249c70: movslq 0x30(%rsp),%r8
  1.13%    1.15%    │  ││  0x00007f357d249c75: movslq %r11d,%r11
  0.84%    1.13%    │  ││  0x00007f357d249c78: add    %r11,%r8
  0.63%    0.71%    │  ││  0x00007f357d249c7b: mov    0x10(%r9,%r8,4),%ebp  ;*aaload
                    │  ││                                                ; - com.google.re2j.Unicode::simpleFold@24 (line 209)
                    │  ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                    │  ││                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.66%    0.74%    │  ││  0x00007f357d249c80: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f357d24a55d
  1.53%    1.58%    │  ││  0x00007f357d249c85: test   %r11d,%r11d
                    │  ││  0x00007f357d249c88: jbe    0x00007f357d249db5  ;*iaload
                    │  ││                                                ; - com.google.re2j.Unicode::simpleFold@26 (line 209)
                    │  ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                    │  ││                                                ; - com.google.re2j.Machine::step@294 (line 310)
  1.21%    1.38%    │  ││  0x00007f357d249c8e: mov    0x10(%r12,%rbp,8),%r8d
  1.32%    1.51%    │  ││  0x00007f357d249c93: cmp    0x20(%rsp),%r8d
                    │  ╰│  0x00007f357d249c98: jge    0x00007f357d249c30  ;*if_icmpge
                    │   │                                                ; - com.google.re2j.Unicode::simpleFold@28 (line 209)
                    │   │                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                    │   │                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.28%    0.37%    │   │  0x00007f357d249c9a: mov    %r10d,%r8d
  0.19%    0.25%    │   │  0x00007f357d249c9d: inc    %r8d               ;*iadd
                    │   │                                                ; - com.google.re2j.Unicode::simpleFold@33 (line 210)
                    │   │                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                    │   │                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.18%    0.19%    │   │  0x00007f357d249ca0: mov    %edx,%r10d
  0.01%    0.02%    │   ╰  0x00007f357d249ca3: jmp    0x00007f357d249c35
                    │      0x00007f357d249ca5: xor    %r10d,%r10d
                    │      0x00007f357d249ca8: mov    0x20(%rsp),%r9d
  0.03%    0.02%    │      0x00007f357d249cad: mov    0x7c(%rsp),%eax
                    │      0x00007f357d249cb1: jmpq   0x00007f357d2497ae
                    │      0x00007f357d249cb6: mov    0x80(%rsp),%ecx
                    │      0x00007f357d249cbd: test   %ecx,%ecx
                    │      0x00007f357d249cbf: jne    0x00007f357d2498e5  ;*ifne
                    │                                                    ; - com.google.re2j.Machine::step@160 (line 287)
                    │      0x00007f357d249cc5: mov    0x20(%rsp),%r9d
                    │      0x00007f357d249cca: jmpq   0x00007f357d2496cd
  0.01%    0.02%    ↘      0x00007f357d249ccf: mov    %ecx,0x20(%rsp)
  0.05%    0.07%           0x00007f357d249cd3: jmpq   0x00007f357d249709
           0.00%           0x00007f357d249cd8: mov    %r10d,0x74(%rsp)
....................................................................................................
 22.07%   25.75%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 554 (219 bytes) 

                                                                      ; - com.google.re2j.Machine::step@225 (line 296)
                        0x00007f357d249975: mov    0x8(%rsp),%rcx
                        0x00007f357d24997a: mov    0xc(%rcx),%ecx
                        0x00007f357d24997d: cmp    %ecx,%eax
                        0x00007f357d24997f: jge    0x00007f357d249b3f  ;*if_icmpge
                                                                      ; - com.google.re2j.Machine::step@242 (line 298)
                        0x00007f357d249985: mov    %eax,%ecx
                        0x00007f357d249987: jmpq   0x00007f357d249b13  ;*if_icmpge
                                                                      ; - com.google.re2j.Machine::step@18 (line 270)
                        0x00007f357d24998c: mov    0x8(%rsp),%r10
  0.06%    0.06%        0x00007f357d249991: mov    %r12d,0xc(%r10)    ;*getfield size
                                                                      ; - com.google.re2j.Machine::step@15 (line 270)
  0.05%    0.03%        0x00007f357d249995: add    $0x60,%rsp
                        0x00007f357d249999: pop    %rbp
                        0x00007f357d24999a: test   %eax,0x168b7660(%rip)        # 0x00007f3593b01000
                                                                      ;   {poll_return}
  0.05%    0.08%        0x00007f357d2499a0: retq   
  0.58%    0.85%   ↗    0x00007f357d2499a1: mov    %eax,%r11d         ; OopMap{r9=Oop rbx=NarrowOop rdi=NarrowOop rsi=Oop r13=Oop r14=NarrowOop [8]=Oop [24]=Oop [40]=Oop off=868}
                   │                                                  ;*goto
                   │                                                  ; - com.google.re2j.Unicode::simpleFold@40 (line 214)
                   │                                                  ; - com.google.re2j.Inst::matchRune@33 (line 55)
                   │                                                  ; - com.google.re2j.Machine::step@294 (line 310)
  1.06%    0.96%   │↗   0x00007f357d2499a4: test   %eax,0x168b7656(%rip)        # 0x00007f3593b01000
                   ││                                                 ;*goto
                   ││                                                 ; - com.google.re2j.Unicode::simpleFold@40 (line 214)
                   ││                                                 ; - com.google.re2j.Inst::matchRune@33 (line 55)
                   ││                                                 ; - com.google.re2j.Machine::step@294 (line 310)
                   ││                                                 ;   {poll}
  0.83%    0.98%   ││   0x00007f357d2499aa: cmp    %r8d,%r11d
                  ╭││   0x00007f357d2499ad: jge    0x00007f357d249a10  ;*if_icmpge
                  │││                                                 ; - com.google.re2j.Unicode::simpleFold@9 (line 207)
                  │││                                                 ; - com.google.re2j.Inst::matchRune@33 (line 55)
                  │││                                                 ; - com.google.re2j.Machine::step@294 (line 310)
  0.58%    0.56%  │││   0x00007f357d2499af: mov    %r8d,%r10d
  0.56%    0.77%  │││   0x00007f357d2499b2: vmovd  %r8d,%xmm0
  0.96%    0.80%  │││   0x00007f357d2499b7: mov    %r11d,%eax
  0.56%    0.37%  │││   0x00007f357d2499ba: sub    %r11d,%r10d        ;*isub
                  │││                                                 ; - com.google.re2j.Unicode::simpleFold@15 (line 208)
                  │││                                                 ; - com.google.re2j.Inst::matchRune@33 (line 55)
                  │││                                                 ; - com.google.re2j.Machine::step@294 (line 310)
  0.41%    0.45%  │││   0x00007f357d2499bd: mov    %r10d,%edx
  0.53%    0.61%  │││   0x00007f357d2499c0: sar    $0x1f,%edx
  0.96%    0.58%  │││   0x00007f357d2499c3: shr    $0x1f,%edx
  0.50%    0.18%  │││   0x00007f357d2499c6: add    %r10d,%edx
  0.53%    0.52%  │││   0x00007f357d2499c9: sar    %edx
  0.53%    0.45%  │││   0x00007f357d2499cb: mov    %r11d,%r8d
  1.06%    0.80%  │││   0x00007f357d2499ce: add    %edx,%r8d          ;*idiv
                  │││                                                 ; - com.google.re2j.Unicode::simpleFold@17 (line 208)
                  │││                                                 ; - com.google.re2j.Inst::matchRune@33 (line 55)
                  │││                                                 ; - com.google.re2j.Machine::step@294 (line 310)
  0.60%    0.23%  │││   0x00007f357d2499d1: cmp    $0x3f,%r8d
                  │││   0x00007f357d2499d5: jae    0x00007f357d249e35
  0.61%    0.79%  │││   0x00007f357d2499db: movslq %eax,%r10
  1.20%    1.08%  │││   0x00007f357d2499de: movslq %edx,%r11
  1.05%    1.23%  │││   0x00007f357d2499e1: add    %r11,%r10
  0.61%    0.86%  │││   0x00007f357d2499e4: mov    0x10(%r9,%r10,4),%ebp  ;*aaload
                  │││                                                 ; - com.google.re2j.Unicode::simpleFold@24 (line 209)
                  │││                                                 ; - com.google.re2j.Inst::matchRune@33 (line 55)
                  │││                                                 ; - com.google.re2j.Machine::step@294 (line 310)
  0.52%    0.60%  │││   0x00007f357d2499e9: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f357d24a58d
  1.09%    0.98%  │││   0x00007f357d2499ee: test   %r11d,%r11d
                  │││   0x00007f357d2499f1: jbe    0x00007f357d249e85  ;*iaload
                  │││                                                 ; - com.google.re2j.Unicode::simpleFold@26 (line 209)
                  │││                                                 ; - com.google.re2j.Inst::matchRune@33 (line 55)
                  │││                                                 ; - com.google.re2j.Machine::step@294 (line 310)
  1.14%    1.24%  │││   0x00007f357d2499f7: mov    0x10(%r12,%rbp,8),%r11d
  0.57%    0.83%  │││   0x00007f357d2499fc: cmp    0x20(%rsp),%r11d
                  │╰│   0x00007f357d249a01: jge    0x00007f357d2499a1  ;*if_icmpge
                  │ │                                                 ; - com.google.re2j.Unicode::simpleFold@28 (line 209)
                  │ │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 55)
                  │ │                                                 ; - com.google.re2j.Machine::step@294 (line 310)
  0.04%    0.07%  │ │   0x00007f357d249a03: mov    %r8d,%r11d
  0.00%           │ │   0x00007f357d249a06: inc    %r11d              ;*iadd
                  │ │                                                 ; - com.google.re2j.Unicode::simpleFold@33 (line 210)
                  │ │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 55)
                  │ │                                                 ; - com.google.re2j.Machine::step@294 (line 310)
  0.15%    0.23%  │ │   0x00007f357d249a09: vmovd  %xmm0,%r8d
                  │ ╰   0x00007f357d249a0e: jmp    0x00007f357d2499a4
  0.22%    0.35%  ↘     0x00007f357d249a10: cmp    $0x3f,%r11d
                        0x00007f357d249a14: jge    0x00007f357d24a335  ;*if_icmpge
                                                                      ; - com.google.re2j.Unicode::simpleFold@48 (line 215)
                                                                      ; - com.google.re2j.Inst::matchRune@33 (line 55)
                                                                      ; - com.google.re2j.Machine::step@294 (line 310)
                        0x00007f357d249a1a: cmp    $0x3f,%r11d
                        0x00007f357d249a1e: jae    0x00007f357d24a021
  0.01%    0.02%        0x00007f357d249a24: mov    0x10(%r9,%r11,4),%ebp  ;*aaload
                                                                      ; - com.google.re2j.Unicode::simpleFold@55 (line 215)
                                                                      ; - com.google.re2j.Inst::matchRune@33 (line 55)
                                                                      ; - com.google.re2j.Machine::step@294 (line 310)
  0.35%    0.37%        0x00007f357d249a29: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f357d24a645
  0.27%    0.27%        0x00007f357d249a2e: test   %r10d,%r10d
                        0x00007f357d249a31: jbe    0x00007f357d24a0ad
  0.00%                 0x00007f357d249a37: mov    0x10(%r12,%rbp,8),%ebp  ;*iaload
                                                                      ; - com.google.re2j.Unicode::simpleFold@57 (line 215)
                                                                      ; - com.google.re2j.Inst::matchRune@33 (line 55)
                                                                      ; - com.google.re2j.Machine::step@294 (line 310)
  0.01%    0.02%        0x00007f357d249a3c: cmp    0x20(%rsp),%ebp
  0.30%    0.34%        0x00007f357d249a40: je     0x00007f357d24a379  ;*if_icmpne
                                                                      ; - com.google.re2j.Unicode::simpleFold@59 (line 215)
                                                                      ; - com.google.re2j.Inst::matchRune@33 (line 55)
                                                                      ; - com.google.re2j.Machine::step@294 (line 310)
  0.23%    0.29%        0x00007f357d249a46: mov    0x20(%rsp),%r11d
                        0x00007f357d249a4b: cmp    $0x7f,%r11d
                        0x00007f357d249a4f: jg     0x00007f357d24a3b1  ;*if_icmpgt
                                                                      ; - com.google.re2j.Unicode::toLower@3 (line 177)
                                                                      ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                                                                      ; - com.google.re2j.Inst::matchRune@33 (line 55)
                                                                      ; - com.google.re2j.Machine::step@294 (line 310)
           0.01%        0x00007f357d249a55: cmp    $0x41,%r11d
                        0x00007f357d249a59: jl     0x00007f357d24a23d  ;*if_icmpgt
                                                                      ; - com.google.re2j.Unicode::toLower@9 (line 178)
                                                                      ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                                                                      ; - com.google.re2j.Inst::matchRune@33 (line 55)
                                                                      ; - com.google.re2j.Machine::step@294 (line 310)
  0.22%    0.30%        0x00007f357d249a5f: cmp    $0x5a,%r11d
                     ╭  0x00007f357d249a63: jg     0x00007f357d249a75  ;*if_icmpgt
                     │                                                ; - com.google.re2j.Unicode::toLower@15 (line 178)
                     │                                                ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                     │                                                ; - com.google.re2j.Inst::matchRune@33 (line 55)
                     │                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.31%    0.30%     │  0x00007f357d249a65: mov    %r11d,%r10d
                     │  0x00007f357d249a68: add    $0x20,%r10d        ;*iinc
                     │                                                ; - com.google.re2j.Unicode::toLower@18 (line 179)
                     │                                                ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                     │                                                ; - com.google.re2j.Inst::matchRune@33 (line 55)
                     │                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.02%    0.01%     │  0x00007f357d249a6c: cmp    %r11d,%r10d
                     │  0x00007f357d249a6f: jne    0x00007f357d249bfd  ;*if_icmpeq
                     │                                                ; - com.google.re2j.Unicode::simpleFold@77 (line 224)
                     │                                                ; - com.google.re2j.Inst::matchRune@33 (line 55)
                     │                                                ; - com.google.re2j.Machine::step@294 (line 310)
                     ↘  0x00007f357d249a75: cmp    $0x61,%r11d
                        0x00007f357d249a79: jl     0x00007f357d24a48d  ;*if_icmpgt
....................................................................................................
 19.35%   19.49%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 554 (449 bytes) 

                        0x00007f357d2496ed: mov    %r11,%r13
                  ╭     0x00007f357d2496f0: jmp    0x00007f357d249709
                  │     0x00007f357d2496f2: cmp    $0xb,%ecx
                  │     0x00007f357d2496f5: jg     0x00007f357d249f8d  ;*tableswitch
                  │                                                   ; - com.google.re2j.Machine::step@114 (line 285)
                  │     0x00007f357d2496fb: mov    %r10d,0x74(%rsp)
                  │     0x00007f357d249700: mov    %eax,0x7c(%rsp)
                  │     0x00007f357d249704: mov    %ebx,%edi
                  │     0x00007f357d249706: mov    %r11,%r13          ;*ifeq
                  │                                                   ; - com.google.re2j.Machine::step@359 (line 328)
  0.00%    0.01%  ↘     0x00007f357d249709: mov    0x10(%r12,%r14,8),%ecx  ;*getfield out
                                                                      ; - com.google.re2j.Machine::step@366 (line 329)
           0.00%        0x00007f357d24970e: mov    %rdi,%r9
                        0x00007f357d249711: shl    $0x3,%r9           ;*getfield cap
                                                                      ; - com.google.re2j.Machine::step@168 (line 292)
           0.00%        0x00007f357d249715: mov    0x28(%rsp),%rsi
  0.00%    0.01%        0x00007f357d24971a: mov    0x18(%rsp),%rdx
  0.00%    0.02%        0x00007f357d24971f: mov    0x14(%rsp),%r8d
                        0x00007f357d249724: mov    0x70(%rsp),%edi
  0.00%    0.00%        0x00007f357d249728: mov    %r13,(%rsp)
  0.04%    0.01%        0x00007f357d24972c: data16 xchg %ax,%ax
                        0x00007f357d24972f: callq  0x00007f357d046020  ; OopMap{[8]=Oop [24]=Oop [40]=Oop off=244}
                                                                      ;*invokespecial add
                                                                      ; - com.google.re2j.Machine::step@380 (line 329)
                                                                      ;   {optimized virtual_call}
                        0x00007f357d249734: mov    %rax,%rcx
  0.01%                 0x00007f357d249737: test   %rax,%rax
                        0x00007f357d24973a: je     0x00007f357d249ca5
                        0x00007f357d249740: mov    0x20(%rsp),%r9d
                        0x00007f357d249745: mov    0x74(%rsp),%r10d
                        0x00007f357d24974a: mov    0x7c(%rsp),%eax    ;*aload
                                                                      ; - com.google.re2j.Machine::step@385 (line 331)
  0.39%    0.39%        0x00007f357d24974e: mov    0x28(%rsp),%r11
                        0x00007f357d249753: mov    0x24(%r11),%ebx    ;*getfield pool
                                                                      ; - com.google.re2j.Machine::free@5 (line 160)
                                                                      ; - com.google.re2j.Machine::step@393 (line 332)
  0.01%    0.00%        0x00007f357d249757: mov    0xc(%r12,%rbx,8),%r11d  ;*arraylength
                                                                      ; - com.google.re2j.Machine::free@8 (line 160)
                                                                      ; - com.google.re2j.Machine::step@393 (line 332)
                                                                      ; implicit exception: dispatches to 0x00007f357d24a57d
  0.10%    0.10%        0x00007f357d24975c: mov    0x28(%rsp),%r8
  0.38%    0.40%        0x00007f357d249761: mov    0xc(%r8),%ebp      ;*getfield poolSize
                                                                      ; - com.google.re2j.Machine::free@1 (line 160)
                                                                      ; - com.google.re2j.Machine::step@393 (line 332)
                        0x00007f357d249765: cmp    %r11d,%ebp
                        0x00007f357d249768: jge    0x00007f357d249f55  ;*if_icmplt
                                                                      ; - com.google.re2j.Machine::free@9 (line 160)
                                                                      ; - com.google.re2j.Machine::step@393 (line 332)
  0.00%                 0x00007f357d24976e: mov    %ebp,%r8d
  0.10%    0.13%        0x00007f357d249771: inc    %r8d
  0.44%    0.52%        0x00007f357d249774: mov    0x28(%rsp),%rdi
                        0x00007f357d249779: mov    %r8d,0xc(%rdi)     ;*putfield poolSize
                                                                      ; - com.google.re2j.Machine::free@45 (line 163)
                                                                      ; - com.google.re2j.Machine::step@393 (line 332)
                        0x00007f357d24977d: cmp    %r11d,%ebp
  0.09%    0.05%        0x00007f357d249780: jae    0x00007f357d249df5  ;*aastore
                                                                      ; - com.google.re2j.Machine::free@49 (line 163)
                                                                      ; - com.google.re2j.Machine::step@393 (line 332)
  0.41%    0.48%        0x00007f357d249786: mov    %rcx,%r11
                        0x00007f357d249789: shr    $0x3,%r11
  0.00%                 0x00007f357d24978d: lea    (%r12,%rbx,8),%r10  ;*getfield pool
                                                                      ; - com.google.re2j.Machine::free@5 (line 160)
                                                                      ; - com.google.re2j.Machine::step@393 (line 332)
  0.10%    0.14%        0x00007f357d249791: lea    0x10(%r10,%rbp,4),%r10
  0.42%    0.64%        0x00007f357d249796: mov    %r11d,(%r10)
  0.01%    0.01%        0x00007f357d249799: shr    $0x9,%r10
                        0x00007f357d24979d: movabs $0x7f35791ff000,%r11
  0.11%    0.05%        0x00007f357d2497a7: mov    %r12b,(%r11,%r10,1)  ;*aastore
                                                                      ; - com.google.re2j.Machine::free@49 (line 163)
                                                                      ; - com.google.re2j.Machine::step@393 (line 332)
  0.44%    0.54%        0x00007f357d2497ab: xor    %r10d,%r10d        ; OopMap{[8]=Oop [24]=Oop [40]=Oop off=366}
                                                                      ;*goto
                                                                      ; - com.google.re2j.Machine::step@399 (line 270)
                    ↗   0x00007f357d2497ae: test   %eax,0x168b784c(%rip)        # 0x00007f3593b01000
                    │                                                 ;*goto
                    │                                                 ; - com.google.re2j.Machine::step@399 (line 270)
                    │                                                 ;   {poll}
  0.33%    0.16%    │   0x00007f357d2497b4: mov    0x8(%rsp),%r10
  0.23%    0.14%    │   0x00007f357d2497b9: mov    0xc(%r10),%r10d
  0.50%    0.58%    │   0x00007f357d2497bd: cmp    %r10d,%eax
                    │   0x00007f357d2497c0: jge    0x00007f357d24998c
  0.38%    0.23%    │   0x00007f357d2497c6: mov    %r9d,0x20(%rsp)
  0.12%    0.09%    │   0x00007f357d2497cb: mov    %eax,%r10d         ;*aload_1
                    │                                                 ; - com.google.re2j.Machine::step@21 (line 271)
  0.43%    0.39%    │   0x00007f357d2497ce: mov    0x8(%rsp),%r11
  0.05%    0.00%    │   0x00007f357d2497d3: mov    0x10(%r11),%r11d   ;*getfield dense
                    │                                                 ; - com.google.re2j.Machine::step@22 (line 271)
  0.43%    0.36%    │   0x00007f357d2497d7: mov    0xc(%r12,%r11,8),%r9d  ; implicit exception: dispatches to 0x00007f357d24a525
  0.50%    0.39%    │   0x00007f357d2497dc: cmp    %r9d,%r10d
                    │   0x00007f357d2497df: jae    0x00007f357d249ceb
  0.47%    0.43%    │   0x00007f357d2497e5: shl    $0x3,%r11
                    │   0x00007f357d2497e9: mov    0x10(%r11,%r10,4),%r11d  ;*aaload
                    │                                                 ; - com.google.re2j.Machine::step@27 (line 271)
  0.42%    0.29%    │   0x00007f357d2497ee: mov    0x10(%r12,%r11,8),%r8d  ;*getfield thread
                    │                                                 ; - com.google.re2j.Machine::step@40 (line 275)
                    │                                                 ; implicit exception: dispatches to 0x00007f357d24a59d
  0.86%    0.68%    │   0x00007f357d2497f3: mov    %r10d,%eax
  0.39%    0.33%    │   0x00007f357d2497f6: inc    %eax               ;*iadd
                    │                                                 ; - com.google.re2j.Machine::step@233 (line 298)
                    │   0x00007f357d2497f8: test   %r8d,%r8d
                   ╭│   0x00007f357d2497fb: jne    0x00007f357d249809  ;*ifnonnull
                   ││                                                 ; - com.google.re2j.Machine::step@47 (line 276)
  0.38%    0.18%   ││   0x00007f357d2497fd: mov    0x24(%rsp),%r10d
  0.04%    0.04%   ││   0x00007f357d249802: mov    0x20(%rsp),%r9d
  0.04%    0.04%   │╰   0x00007f357d249807: jmp    0x00007f357d2497ae
  0.18%    0.14%   ↘    0x00007f357d249809: mov    0x24(%rsp),%r11d
  0.05%    0.09%        0x00007f357d24980e: test   %r11d,%r11d
                        0x00007f357d249811: jne    0x00007f357d249f0d  ;*ifeq
                                                                      ; - com.google.re2j.Machine::step@55 (line 279)
  0.35%    0.50%        0x00007f357d249817: mov    0x10(%r12,%r8,8),%r14d  ;*getfield inst
                                                                      ; - com.google.re2j.Machine::step@101 (line 283)
  0.86%    1.00%        0x00007f357d24981c: mov    0x18(%r12,%r14,8),%edi  ;*getfield runes
                                                                      ; - com.google.re2j.Machine::step@306 (line 314)
                                                                      ; implicit exception: dispatches to 0x00007f357d24a56d
  2.50%    3.19%        0x00007f357d249821: mov    0xc(%r12,%r14,8),%ecx  ;*getfield op
                                                                      ; - com.google.re2j.Machine::step@111 (line 285)
  0.18%    0.13%        0x00007f357d249826: mov    0xc(%r12,%r8,8),%ebx  ;*getfield cap
                                                                      ; - com.google.re2j.Machine::step@168 (line 292)
  0.02%    0.06%        0x00007f357d24982b: lea    (%r12,%r8,8),%r11  ;*getfield thread
                                                                      ; - com.google.re2j.Machine::step@40 (line 275)
                        0x00007f357d24982f: cmp    $0x9,%ecx
                        0x00007f357d249832: je     0x00007f357d2496ad
  0.52%    0.66%        0x00007f357d249838: cmp    $0x9,%ecx
                        0x00007f357d24983b: jg     0x00007f357d2496d2
  0.08%    0.11%        0x00007f357d249841: cmp    $0x7,%ecx
                        0x00007f357d249844: je     0x00007f357d249f8d  ;*tableswitch
                                                                      ; - com.google.re2j.Machine::step@114 (line 285)
  0.48%    0.56%        0x00007f357d24984a: lea    (%r12,%r14,8),%r9  ;*getfield inst
                                                                      ; - com.google.re2j.Machine::step@101 (line 283)
                        0x00007f357d24984e: cmp    $0x7,%ecx
                     ╭  0x00007f357d249851: jle    0x00007f357d2498cf  ;*tableswitch
                     │                                                ; - com.google.re2j.Machine::step@114 (line 285)
  0.46%    0.50%     │  0x00007f357d249853: mov    0xc(%r12,%rdi,8),%ebp  ;*arraylength
                     │                                                ; - com.google.re2j.Inst::matchRune@4 (line 49)
                     │                                                ; - com.google.re2j.Machine::step@294 (line 310)
                     │                                                ; implicit exception: dispatches to 0x00007f357d24a635
  0.90%    0.84%     │  0x00007f357d249858: cmp    $0x1,%ebp
                     │  0x00007f357d24985b: jne    0x00007f357d24a209  ;*if_icmpne
                     │                                                ; - com.google.re2j.Inst::matchRune@6 (line 49)
                     │                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.51%    0.62%     │  0x00007f357d249861: test   %ebp,%ebp
                     │  0x00007f357d249863: jbe    0x00007f357d24a065
  0.16%    0.09%     │  0x00007f357d249869: mov    0x10(%r12,%rdi,8),%edi  ;*iaload
                     │                                                ; - com.google.re2j.Inst::matchRune@14 (line 50)
                     │                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.02%    0.01%     │  0x00007f357d24986e: mov    0x20(%rsp),%ecx
                     │  0x00007f357d249872: cmp    %edi,%ecx
                     │  0x00007f357d249874: je     0x00007f357d249cd8  ;*if_icmpne
                     │                                                ; - com.google.re2j.Inst::matchRune@18 (line 51)
                     │                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.48%    0.53%     │  0x00007f357d24987a: mov    $0x1,%ebp
  0.01%    0.01%     │  0x00007f357d24987f: and    0x14(%r12,%r14,8),%ebp  ;*iand
                     │                                                ; - com.google.re2j.Inst::matchRune@28 (line 54)
                     │                                                ; - com.google.re2j.Machine::step@294 (line 310)
                     │  0x00007f357d249884: test   %ebp,%ebp
                     │  0x00007f357d249886: je     0x00007f357d24a2f1  ;*ifeq
                     │                                                ; - com.google.re2j.Inst::matchRune@29 (line 54)
                     │                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.02%    0.01%     │  0x00007f357d24988c: mov    %edi,0x20(%rsp)
  0.51%    0.52%     │  0x00007f357d249890: mov    %r9,%rsi
  0.01%    0.02%     │  0x00007f357d249893: mov    %r11,%r13
  0.01%    0.00%     │  0x00007f357d249896: mov    %ebx,%edi
  0.00%    0.00%     │  0x00007f357d249898: mov    %eax,0x7c(%rsp)
  0.43%    0.45%     │  0x00007f357d24989c: mov    %r8d,%ebx
  0.00%              │  0x00007f357d24989f: mov    %r10d,0x74(%rsp)
  0.01%              │  0x00007f357d2498a4: movabs $0x76dd0c3b8,%r9   ;   {oop(a {type array int}[63] )}
  0.01%    0.00%     │  0x00007f357d2498ae: mov    $0x1f,%edx
  0.45%    0.45%     │  0x00007f357d2498b3: mov    $0x1f,%r8d
  0.02%    0.01%     │  0x00007f357d2498b9: xor    %r10d,%r10d
  0.01%              │  0x00007f357d2498bc: mov    $0x3f,%r11d
  0.01%    0.00%     │  0x00007f357d2498c2: mov    %r10d,%eax
  0.49%    0.30%     │  0x00007f357d2498c5: vmovd  %r11d,%xmm0
  0.02%    0.00%     │  0x00007f357d2498ca: jmpq   0x00007f357d2499d1
                     ↘  0x00007f357d2498cf: cmp    $0x6,%ecx
                        0x00007f357d2498d2: jne    0x00007f357d249f8d  ;*tableswitch
                                                                      ; - com.google.re2j.Machine::step@114 (line 285)
                        0x00007f357d2498d8: mov    0x78(%rsp),%edi
                        0x00007f357d2498dc: cmp    $0x2,%edi
                        0x00007f357d2498df: je     0x00007f357d249cb6  ;*aload
                                                                      ; - com.google.re2j.Machine::step@166 (line 292)
                        0x00007f357d2498e5: mov    0xc(%r12,%rbx,8),%edx  ;*arraylength
                                                                      ; - com.google.re2j.Machine::step@171 (line 292)
                                                                      ; implicit exception: dispatches to 0x00007f357d24a655
....................................................................................................
 18.42%   18.69%  <total for region 3>

....[Hottest Region 4]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 545 (266 bytes) 

                      # parm4:    rdi       = int
                      # parm5:    [sp+0x70]   = &apos;com/google/re2j/Machine$Thread&apos;  (sp of caller)
                      0x00007f357d23d9c0: mov    0x8(%rsi),%r10d    ;   {no_reloc}
                      0x00007f357d23d9c4: shl    $0x3,%r10
                      0x00007f357d23d9c8: cmp    %r10,%rax
                      0x00007f357d23d9cb: jne    0x00007f357d045e20  ;   {runtime_call}
                      0x00007f357d23d9d1: data16 xchg %ax,%ax
                      0x00007f357d23d9d4: nopl   0x0(%rax,%rax,1)
                      0x00007f357d23d9dc: data16 data16 xchg %ax,%ax
                    [Verified Entry Point]
  0.65%    0.79%      0x00007f357d23d9e0: mov    %eax,-0x14000(%rsp)
  0.26%    0.28%      0x00007f357d23d9e7: push   %rbp
  0.56%    0.77%      0x00007f357d23d9e8: sub    $0x60,%rsp         ;*synchronization entry
                                                                    ; - com.google.re2j.Machine::add@-1 (line 344)
  0.21%    0.20%      0x00007f357d23d9ec: mov    %edi,0x28(%rsp)
  0.13%    0.13%      0x00007f357d23d9f0: mov    %r9,0x20(%rsp)
  0.78%    0.65%      0x00007f357d23d9f5: mov    %r8d,0x1c(%rsp)
  0.09%    0.10%      0x00007f357d23d9fa: mov    %rsi,0x8(%rsp)
  0.16%    0.09%      0x00007f357d23d9ff: test   %ecx,%ecx
                      0x00007f357d23da01: je     0x00007f357d23dbb9  ;*ifne
                                                                    ; - com.google.re2j.Machine::add@1 (line 344)
  0.13%    0.09%      0x00007f357d23da07: mov    %rdx,0x40(%rsp)
  0.69%    0.63%      0x00007f357d23da0c: mov    0x14(%rdx),%r10d   ;*getfield sparse
                                                                    ; - com.google.re2j.Machine$Queue::contains@1 (line 46)
                                                                    ; - com.google.re2j.Machine::add@9 (line 347)
                                                                    ; implicit exception: dispatches to 0x00007f357d23df71
  0.07%    0.08%      0x00007f357d23da10: mov    0xc(%r12,%r10,8),%r8d  ; implicit exception: dispatches to 0x00007f357d23df85
  0.21%    0.19%      0x00007f357d23da15: cmp    %r8d,%ecx
                      0x00007f357d23da18: jae    0x00007f357d23db05  ;*iaload
                                                                    ; - com.google.re2j.Machine$Queue::contains@5 (line 46)
                                                                    ; - com.google.re2j.Machine::add@9 (line 347)
  0.16%    0.17%      0x00007f357d23da1e: mov    0x10(%rdx),%r9d    ;*getfield dense
                                                                    ; - com.google.re2j.Machine$Queue::contains@18 (line 50)
                                                                    ; - com.google.re2j.Machine::add@9 (line 347)
  0.56%    0.58%      0x00007f357d23da22: mov    0xc(%rdx),%r11d    ;*getfield size
                                                                    ; - com.google.re2j.Machine$Queue::contains@9 (line 47)
                                                                    ; - com.google.re2j.Machine::add@9 (line 347)
  0.08%    0.07%      0x00007f357d23da26: lea    (%r12,%r10,8),%r8
  0.15%    0.11%      0x00007f357d23da2a: mov    0x10(%r8,%rcx,4),%ebp  ;*iaload
                                                                    ; - com.google.re2j.Machine$Queue::contains@5 (line 46)
                                                                    ; - com.google.re2j.Machine::add@9 (line 347)
  0.24%    0.16%      0x00007f357d23da2f: cmp    %r11d,%ebp
                  ╭   0x00007f357d23da32: jl     0x00007f357d23dacf  ;*invokevirtual contains
                  │                                                 ; - com.google.re2j.Machine::add@9 (line 347)
  0.77%    0.89%  │↗  0x00007f357d23da38: mov    %r11d,0x10(%r8,%rcx,4)  ;*iastore
                  ││                                                ; - com.google.re2j.Machine$Queue::add@18 (line 58)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 350)
  0.18%    0.17%  ││  0x00007f357d23da3d: mov    %r11d,%r8d
  0.06%    0.08%  ││  0x00007f357d23da40: inc    %r8d
  0.13%    0.12%  ││  0x00007f357d23da43: mov    %r8d,0xc(%rdx)     ;*putfield size
                  ││                                                ; - com.google.re2j.Machine$Queue::add@8 (line 57)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 350)
  0.70%    0.58%  ││  0x00007f357d23da47: mov    0xc(%r12,%r9,8),%r8d  ; implicit exception: dispatches to 0x00007f357d23df99
  0.13%    0.08%  ││  0x00007f357d23da4c: cmp    %r8d,%r11d
                  ││  0x00007f357d23da4f: jae    0x00007f357d23db41
  0.03%    0.07%  ││  0x00007f357d23da55: lea    (%r12,%r9,8),%r10
  0.08%    0.10%  ││  0x00007f357d23da59: mov    0x10(%r10,%r11,4),%ebx  ;*aaload
                  ││                                                ; - com.google.re2j.Machine$Queue::add@24 (line 59)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 350)
  0.73%    0.82%  ││  0x00007f357d23da5e: test   %ebx,%ebx
                  ││  0x00007f357d23da60: je     0x00007f357d23dbe1  ;*ifnonnull
                  ││                                                ; - com.google.re2j.Machine$Queue::add@27 (line 60)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 350)
  0.08%    0.05%  ││  0x00007f357d23da66: mov    %ecx,0xc(%r12,%rbx,8)  ;*putfield pc
                  ││                                                ; - com.google.re2j.Machine$Queue::add@52 (line 64)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 350)
  0.63%    0.51%  ││  0x00007f357d23da6b: mov    0x18(%rsi),%r11d   ;*getfield prog
                  ││                                                ; - com.google.re2j.Machine::add@26 (line 351)
  0.07%    0.07%  ││  0x00007f357d23da6f: mov    %r12d,0x10(%r12,%rbx,8)  ;*putfield thread
                  ││                                                ; - com.google.re2j.Machine$Queue::add@47 (line 63)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 350)
  0.85%    0.78%  ││  0x00007f357d23da74: mov    0x18(%r12,%r11,8),%ebp  ;*getfield inst
                  ││                                                ; - com.google.re2j.Prog::getInst@1 (line 30)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 351)
                  ││                                                ; implicit exception: dispatches to 0x00007f357d23dfad
  0.03%    0.08%  ││  0x00007f357d23da79: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f357d23dfc1
  0.22%    0.21%  ││  0x00007f357d23da7e: cmp    %r10d,%ecx
                  ││  0x00007f357d23da81: jae    0x00007f357d23db81
  0.19%    0.17%  ││  0x00007f357d23da87: lea    (%r12,%rbp,8),%r10
  0.62%    0.48%  ││  0x00007f357d23da8b: mov    0x10(%r10,%rcx,4),%r10d  ;*aaload
                  ││                                                ; - com.google.re2j.Prog::getInst@5 (line 30)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 351)
  0.13%    0.04%  ││  0x00007f357d23da90: mov    %r10d,0x2c(%rsp)
  0.14%    0.11%  ││  0x00007f357d23da95: mov    0xc(%r12,%r10,8),%r9d  ;*getfield op
                  ││                                                ; - com.google.re2j.Machine::add@37 (line 352)
                  ││                                                ; implicit exception: dispatches to 0x00007f357d23dfd5
  1.49%    1.26%  ││  0x00007f357d23da9a: mov    %r9d,%r11d
  0.41%    0.24%  ││  0x00007f357d23da9d: dec    %r11d
  0.48%    0.50%  ││  0x00007f357d23daa0: cmp    $0xb,%r11d
                  ││  0x00007f357d23daa4: jae    0x00007f357d23dba9  ;*tableswitch
                  ││                                                ; - com.google.re2j.Machine::add@40 (line 352)
  0.59%    0.48%  ││  0x00007f357d23daaa: mov    0x14(%r12,%r10,8),%r10d  ;*getfield arg
                  ││                                                ; - com.google.re2j.Machine::add@156 (line 366)
  0.21%    0.16%  ││  0x00007f357d23daaf: mov    0x2c(%rsp),%r11d
  0.38%    0.34%  ││  0x00007f357d23dab4: mov    0x10(%r12,%r11,8),%ecx  ;*getfield out
                  ││                                                ; - com.google.re2j.Machine::add@193 (line 372)
  0.79%    0.71%  ││  0x00007f357d23dab9: movslq %r9d,%r8
  0.05%    0.09%  ││  0x00007f357d23dabc: lea    (%r12,%r11,8),%rax  ;*aaload
                  ││                                                ; - com.google.re2j.Prog::getInst@5 (line 30)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 351)
  0.03%    0.07%  ││  0x00007f357d23dac0: movabs $0x7f357d23d960,%r11  ;   {section_word}
  0.28%    0.28%  ││  0x00007f357d23daca: jmpq   *-0x8(%r11,%r8,8)  ;*tableswitch
                  ││                                                ; - com.google.re2j.Machine::add@40 (line 352)
  0.12%    0.06%  ↘│  0x00007f357d23dacf: mov    0xc(%r12,%r9,8),%ebx  ; implicit exception: dispatches to 0x00007f357d23e031
  0.02%    0.05%   │  0x00007f357d23dad4: cmp    %ebx,%ebp
                   │  0x00007f357d23dad6: jae    0x00007f357d23dc21
  0.04%    0.05%   │  0x00007f357d23dadc: lea    (%r12,%r9,8),%r10
           0.00%   │  0x00007f357d23dae0: mov    0x10(%r10,%rbp,4),%r10d  ;*aaload
                   │                                                ; - com.google.re2j.Machine$Queue::contains@22 (line 50)
                   │                                                ; - com.google.re2j.Machine::add@9 (line 347)
  0.13%    0.09%   │  0x00007f357d23dae5: mov    0xc(%r12,%r10,8),%ebp  ;*getfield pc
                   │                                                ; - com.google.re2j.Machine$Queue::contains@29 (line 51)
                   │                                                ; - com.google.re2j.Machine::add@9 (line 347)
                   │                                                ; implicit exception: dispatches to 0x00007f357d23e051
  0.35%    0.41%   │  0x00007f357d23daea: cmp    %ecx,%ebp
                   ╰  0x00007f357d23daec: jne    0x00007f357d23da38  ;*if_icmpne
                                                                    ; - com.google.re2j.Machine$Queue::contains@33 (line 51)
                                                                    ; - com.google.re2j.Machine::add@9 (line 347)
                      0x00007f357d23daf2: mov    $0xffffff65,%esi
                      0x00007f357d23daf7: mov    %ecx,0x2c(%rsp)
                      0x00007f357d23dafb: callq  0x00007f357d0051a0  ; OopMap{[112]=Oop [8]=Oop [32]=Oop [64]=Oop off=320}
                                                                    ;*if_icmpne
....................................................................................................
 16.26%   15.29%  <total for region 4>

....[Hottest Region 5]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 545 (323 bytes) 

                          0x00007f357d23dcfe: mov    %r10,(%rsp)
                          0x00007f357d23dd02: nop
                          0x00007f357d23dd03: callq  0x00007f357d046020  ; OopMap{off=840}
                                                                        ;*invokespecial add
                                                                        ; - com.google.re2j.Machine::add@203 (line 372)
                                                                        ;   {optimized virtual_call}
                  ╭       0x00007f357d23dd08: jmpq   0x00007f357d23de3e
                  │       0x00007f357d23dd0d: mov    0x70(%rsp),%rax
                  │╭      0x00007f357d23dd12: jmpq   0x00007f357d23de3e  ;*tableswitch
                  ││                                                    ; - com.google.re2j.Machine::add@40 (line 352)
  0.84%    0.84%  ││      0x00007f357d23dd17: mov    0x1c(%rsp),%r8d
  0.01%    0.00%  ││      0x00007f357d23dd1c: mov    0x20(%rsp),%r9
  0.10%    0.06%  ││      0x00007f357d23dd21: mov    0x70(%rsp),%r10
  0.01%    0.02%  ││      0x00007f357d23dd26: mov    %r10,(%rsp)
  0.33%    0.26%  ││      0x00007f357d23dd2a: mov    %rsi,%rbp
  0.01%           ││      0x00007f357d23dd2d: mov    %rax,0x38(%rsp)
  0.11%    0.07%  ││      0x00007f357d23dd32: nop
  0.01%    0.01%  ││      0x00007f357d23dd33: callq  0x00007f357d046020  ; OopMap{rbp=Oop [32]=Oop [44]=NarrowOop [56]=Oop [64]=Oop off=888}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@127 (line 361)
                  ││                                                    ;   {optimized virtual_call}
  0.02%    0.04%  ││      0x00007f357d23dd38: mov    0x2c(%rsp),%r11d
  0.06%    0.06%  ││      0x00007f357d23dd3d: mov    0x14(%r12,%r11,8),%ecx  ;*getfield arg
                  ││                                                    ; - com.google.re2j.Machine::add@136 (line 362)
  0.29%    0.28%  ││      0x00007f357d23dd42: mov    %rbp,%rsi
  0.02%    0.05%  ││      0x00007f357d23dd45: mov    0x40(%rsp),%rdx
  0.02%    0.00%  ││      0x00007f357d23dd4a: mov    0x1c(%rsp),%r8d
  0.04%    0.08%  ││      0x00007f357d23dd4f: mov    0x20(%rsp),%r9
  0.27%    0.34%  ││      0x00007f357d23dd54: mov    0x28(%rsp),%edi
  0.02%    0.02%  ││      0x00007f357d23dd58: mov    %rax,(%rsp)
  0.01%    0.01%  ││      0x00007f357d23dd5c: data16 xchg %ax,%ax
  0.05%    0.09%  ││      0x00007f357d23dd5f: callq  0x00007f357d046020  ; OopMap{off=932}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@146 (line 362)
                  ││                                                    ;   {optimized virtual_call}
  0.05%    0.03%  ││╭     0x00007f357d23dd64: jmpq   0x00007f357d23de3e  ;*aload
                  │││                                                   ; - com.google.re2j.Machine::add@293 (line 391)
  1.69%    1.45%  │││     0x00007f357d23dd69: mov    0x70(%rsp),%r13
  0.03%    0.02%  │││     0x00007f357d23dd6e: test   %r13,%r13
                  │││╭    0x00007f357d23dd71: jne    0x00007f357d23de4a  ;*ifnonnull
                  ││││                                                  ; - com.google.re2j.Machine::add@295 (line 391)
  0.09%    0.05%  ││││    0x00007f357d23dd77: mov    0xc(%rsi),%r9d     ;*getfield poolSize
                  ││││                                                  ; - com.google.re2j.Machine::alloc@1 (line 148)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 392)
  0.06%    0.02%  ││││    0x00007f357d23dd7b: test   %r9d,%r9d
                  ││││    0x00007f357d23dd7e: jle    0x00007f357d23def1  ;*ifle
                  ││││                                                  ; - com.google.re2j.Machine::alloc@4 (line 148)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 392)
  0.41%    0.38%  ││││    0x00007f357d23dd84: mov    0x24(%rsi),%r8d    ;*getfield pool
                  ││││                                                  ; - com.google.re2j.Machine::alloc@18 (line 150)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 392)
  0.01%    0.01%  ││││    0x00007f357d23dd88: mov    %r9d,%ebp
  0.05%    0.04%  ││││    0x00007f357d23dd8b: dec    %ebp               ;*isub
                  ││││                                                  ; - com.google.re2j.Machine::alloc@13 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 392)
  0.01%    0.02%  ││││    0x00007f357d23dd8d: mov    %ebp,0xc(%rsi)     ;*putfield poolSize
                  ││││                                                  ; - com.google.re2j.Machine::alloc@14 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 392)
  0.31%    0.37%  ││││    0x00007f357d23dd90: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x00007f357d23dff5
  0.01%    0.01%  ││││    0x00007f357d23dd95: cmp    %r11d,%ebp
                  ││││    0x00007f357d23dd98: jae    0x00007f357d23de8a
  0.06%    0.04%  ││││    0x00007f357d23dd9e: lea    (%r12,%r8,8),%r10
  0.04%    0.01%  ││││    0x00007f357d23dda2: mov    0xc(%r10,%r9,4),%r10d  ;*aaload
                  ││││                                                  ; - com.google.re2j.Machine::alloc@25 (line 150)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 392)
  0.46%    0.39%  ││││    0x00007f357d23dda7: mov    0x2c(%rsp),%r8d
  0.01%    0.01%  ││││    0x00007f357d23ddac: mov    %r8d,0x10(%r12,%r10,8)  ;*putfield inst
                  ││││                                                  ; - com.google.re2j.Machine::alloc@45 (line 154)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 392)
                  ││││                                                  ; implicit exception: dispatches to 0x00007f357d23e005
  0.08%    0.14%  ││││    0x00007f357d23ddb1: lea    (%r12,%r10,8),%r13  ;*aaload
                  ││││                                                  ; - com.google.re2j.Machine::alloc@25 (line 150)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 392)
  0.04%    0.02%  ││││    0x00007f357d23ddb5: mov    %r13,%r10
  0.41%    0.33%  ││││    0x00007f357d23ddb8: shr    $0x9,%r10
  0.01%           ││││    0x00007f357d23ddbc: movabs $0x7f35791ff000,%r11
  0.08%    0.04%  ││││    0x00007f357d23ddc6: mov    %r12b,(%r11,%r10,1)  ;*aload
                  ││││                                                  ; - com.google.re2j.Machine::add@316 (line 396)
  0.04%    0.05%  ││││ ↗  0x00007f357d23ddca: mov    0x20(%rsp),%rdi
  0.46%    0.32%  ││││ │  0x00007f357d23ddcf: mov    0xc(%rdi),%r10d    ;*arraylength
                  ││││ │                                                ; - com.google.re2j.Machine::add@318 (line 396)
                  ││││ │                                                ; implicit exception: dispatches to 0x00007f357d23dfe5
  0.02%    0.00%  ││││ │  0x00007f357d23ddd3: test   %r10d,%r10d
                  ││││ │  0x00007f357d23ddd6: jle    0x00007f357d23dece  ;*ifle
                  ││││ │                                                ; - com.google.re2j.Machine::add@319 (line 396)
  0.04%    0.02%  ││││ │  0x00007f357d23dddc: mov    0xc(%r13),%r11d    ;*getfield cap
                  ││││ │                                                ; - com.google.re2j.Machine::add@324 (line 396)
  0.08%    0.05%  ││││ │  0x00007f357d23dde0: lea    (%r12,%rbx,8),%rbp  ;*aaload
                  ││││ │                                                ; - com.google.re2j.Machine$Queue::add@24 (line 59)
                  ││││ │                                                ; - com.google.re2j.Machine::add@20 (line 350)
  0.48%    0.38%  ││││ │  0x00007f357d23dde4: mov    %r11,%r8
  0.01%    0.00%  ││││ │  0x00007f357d23dde7: shl    $0x3,%r8
  0.06%    0.01%  ││││ │  0x00007f357d23ddeb: cmp    %rdi,%r8
                  ││││╭│  0x00007f357d23ddee: je     0x00007f357d23de1b  ;*if_acmpeq
                  ││││││                                                ; - com.google.re2j.Machine::add@329 (line 396)
  0.12%    0.03%  ││││││  0x00007f357d23ddf0: mov    0xc(%r12,%r11,8),%r8d  ; implicit exception: dispatches to 0x00007f357d23e019
  0.53%    0.39%  ││││││  0x00007f357d23ddf5: lea    (%r12,%r11,8),%rcx  ;*getfield cap
                  ││││││                                                ; - com.google.re2j.Machine::add@324 (line 396)
  0.02%    0.00%  ││││││  0x00007f357d23ddf9: cmp    %r10d,%r8d
                  ││││││  0x00007f357d23ddfc: jb     0x00007f357d23dea5
  0.14%    0.10%  ││││││  0x00007f357d23de02: lea    0x10(%r12,%r11,8),%rsi
  0.05%    0.02%  ││││││  0x00007f357d23de07: add    $0x10,%rdi
  0.35%    0.25%  ││││││  0x00007f357d23de0b: movslq %r10d,%rdx
  0.01%           ││││││  0x00007f357d23de0e: movabs $0x7f357d052640,%r10
  0.09%    0.04%  ││││││  0x00007f357d23de18: callq  *%r10              ;*aload
                  ││││││                                                ; - com.google.re2j.Machine::add@347 (line 399)
  0.00%           ││││↘│  0x00007f357d23de1b: mov    %rbp,%r10
  0.08%    0.07%  ││││ │  0x00007f357d23de1e: mov    %r13,%r8
  0.07%    0.06%  ││││ │  0x00007f357d23de21: shr    $0x3,%r8
  0.38%    0.05%  ││││ │  0x00007f357d23de25: mov    %r8d,0x10(%r12,%rbx,8)
                  ││││ │  0x00007f357d23de2a: shr    $0x9,%r10
  0.06%    0.07%  ││││ │  0x00007f357d23de2e: movabs $0x7f35791ff000,%r11
  0.05%    0.07%  ││││ │  0x00007f357d23de38: mov    %r12b,(%r11,%r10,1)  ;*putfield thread
                  ││││ │                                                ; - com.google.re2j.Machine::add@351 (line 399)
  0.41%    0.06%  ││││ │  0x00007f357d23de3c: xor    %eax,%eax          ;*synchronization entry
                  ││││ │                                                ; - com.google.re2j.Machine::add@-1 (line 344)
  0.32%    0.57%  ↘↘↘│ │  0x00007f357d23de3e: add    $0x60,%rsp
  0.11%    0.11%     │ │  0x00007f357d23de42: pop    %rbp
  0.43%    0.52%     │ │  0x00007f357d23de43: test   %eax,0x168c31b7(%rip)        # 0x00007f3593b01000
                     │ │                                                ;   {poll_return}
  0.41%    0.56%     │ │  0x00007f357d23de49: retq   
  0.01%    0.02%     ↘ │  0x00007f357d23de4a: mov    0x2c(%rsp),%r10d
  0.00%                │  0x00007f357d23de4f: mov    %r10d,0x10(%r13)
  0.00%                │  0x00007f357d23de53: mov    %r13,%r10
                       │  0x00007f357d23de56: shr    $0x9,%r10
  0.02%    0.00%       │  0x00007f357d23de5a: movabs $0x7f35791ff000,%r11
                       │  0x00007f357d23de64: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                       │                                                ; - com.google.re2j.Machine::add@313 (line 394)
                       ╰  0x00007f357d23de68: jmpq   0x00007f357d23ddca  ;*tableswitch
                                                                        ; - com.google.re2j.Machine::add@40 (line 352)
                          0x00007f357d23de6d: mov    0x1c(%rsp),%r8d
                          0x00007f357d23de72: mov    0x20(%rsp),%r9
                          0x00007f357d23de77: mov    0x70(%rsp),%r10
                          0x00007f357d23de7c: mov    %r10,(%rsp)
                          0x00007f357d23de80: data16 xchg %ax,%ax
                          0x00007f357d23de83: callq  0x00007f357d046020  ; OopMap{off=1224}
....................................................................................................
 11.05%    9.52%  <total for region 5>

....[Hottest Regions]...............................................................................
 22.07%   25.75%         C2, level 4  com.google.re2j.Machine::step, version 554 (318 bytes) 
 19.35%   19.49%         C2, level 4  com.google.re2j.Machine::step, version 554 (219 bytes) 
 18.42%   18.69%         C2, level 4  com.google.re2j.Machine::step, version 554 (449 bytes) 
 16.26%   15.29%         C2, level 4  com.google.re2j.Machine::add, version 545 (266 bytes) 
 11.05%    9.52%         C2, level 4  com.google.re2j.Machine::add, version 545 (323 bytes) 
  4.55%    4.47%         C2, level 4  com.google.re2j.Machine::match, version 597 (917 bytes) 
  3.55%    2.58%        runtime stub  StubRoutines::jint_disjoint_arraycopy (128 bytes) 
  0.82%    0.53%         C2, level 4  com.google.re2j.Machine::step, version 554 (72 bytes) 
  0.62%    0.61%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.56%    0.59%         C2, level 4  com.google.re2j.Machine::step, version 554 (9 bytes) 
  0.18%    0.22%         C2, level 4  com.google.re2j.Machine::step, version 554 (5 bytes) 
  0.12%    0.02%   [kernel.kallsyms]  [unknown] (39 bytes) 
  0.11%    0.01%   [kernel.kallsyms]  [unknown] (3 bytes) 
  0.08%    0.01%         C2, level 4  com.google.re2j.Machine::init, version 606 (33 bytes) 
  0.06%    0.09%         C2, level 4  com.google.re2j.Machine::step, version 554 (9 bytes) 
  0.04%    0.02%           libjvm.so  PSPromotionManager::copy_to_survivor_space<false> (0 bytes) 
  0.03%    0.01%   [kernel.kallsyms]  [unknown] (39 bytes) 
  0.03%    0.01%   [kernel.kallsyms]  [unknown] (5 bytes) 
  0.03%    0.02%         C2, level 4  com.google.re2j.Machine::init, version 606 (0 bytes) 
  0.03%                  C2, level 4  com.google.re2j.Machine::init, version 606 (22 bytes) 
  2.01%    2.04%  <...other 488 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 61.49%   65.38%         C2, level 4  com.google.re2j.Machine::step, version 554 
 27.31%   24.82%         C2, level 4  com.google.re2j.Machine::add, version 545 
  4.56%    4.49%         C2, level 4  com.google.re2j.Machine::match, version 597 
  3.55%    2.58%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
  1.56%    1.24%   [kernel.kallsyms]  [unknown] 
  0.21%    0.07%         C2, level 4  com.google.re2j.Machine::init, version 606 
  0.09%    0.02%         C2, level 4  com.google.re2j.Matcher::find, version 615 
  0.07%    0.06%           libjvm.so  PSPromotionManager::copy_to_survivor_space<false> 
  0.06%    0.04%           libjvm.so  GenericTaskQueueSet<OverflowTaskQueue<StarTask, (MemoryType)1, 131072u>, (MemoryType)1>::steal_best_of_2 
  0.05%    0.02%      hsdis-amd64.so  [unknown] 
  0.03%    0.00%         C2, level 4  com.github.arnaudroger.re2j.Re2jFindRegex::testExp2, version 636 
  0.03%    0.04%           libjvm.so  PSPromotionManager::drain_stacks_depth 
  0.03%    0.03%           libjvm.so  xmlTextStream::write 
  0.03%                  C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 702 
  0.02%    0.02%        libc-2.26.so  __strlen_avx2 
  0.02%    0.08%        libc-2.26.so  vfprintf 
  0.02%    0.09%        libc-2.26.so  _IO_fwrite 
  0.02%    0.01%           libjvm.so  Monitor::unlock 
  0.02%    0.02%           libjvm.so  InstanceKlass::oop_push_contents 
  0.02%    0.05%           libjvm.so  RelocIterator::initialize 
  0.79%    0.54%  <...other 119 warm methods...>
....................................................................................................
100.00%   99.63%  <totals>

....[Distribution by Source]........................................................................
 93.75%   94.80%         C2, level 4
  3.56%    2.58%        runtime stub
  1.56%    1.24%   [kernel.kallsyms]
  0.73%    0.83%           libjvm.so
  0.17%    0.37%        libc-2.26.so
  0.08%    0.09%  libpthread-2.26.so
  0.05%    0.02%      hsdis-amd64.so
  0.03%    0.01%         interpreter
  0.03%    0.01%         C1, level 3
  0.02%    0.03%              [vdso]
  0.01%               perf-20055.map
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:44

Benchmark                     Mode  Cnt     Score    Error  Units
Re2jFindRegex.testExp2       thrpt   20  3668.264 ± 28.283  ops/s
Re2jFindRegex.testExp2:·asm  thrpt            NaN             ---
