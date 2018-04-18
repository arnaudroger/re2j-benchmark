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
# Warmup Iteration   1: 1302.387 ops/s
# Warmup Iteration   2: 2504.349 ops/s
# Warmup Iteration   3: 2551.582 ops/s
# Warmup Iteration   4: 2551.367 ops/s
# Warmup Iteration   5: 2550.995 ops/s
# Warmup Iteration   6: 2551.572 ops/s
# Warmup Iteration   7: 2551.119 ops/s
# Warmup Iteration   8: 2551.620 ops/s
# Warmup Iteration   9: 2555.965 ops/s
# Warmup Iteration  10: 2561.433 ops/s
# Warmup Iteration  11: 2564.931 ops/s
# Warmup Iteration  12: 2566.004 ops/s
# Warmup Iteration  13: 2566.112 ops/s
# Warmup Iteration  14: 2566.329 ops/s
# Warmup Iteration  15: 2565.694 ops/s
# Warmup Iteration  16: 2565.780 ops/s
# Warmup Iteration  17: 2565.663 ops/s
# Warmup Iteration  18: 2560.571 ops/s
# Warmup Iteration  19: 2561.647 ops/s
# Warmup Iteration  20: 2561.055 ops/s
Iteration   1: 2561.627 ops/s
Iteration   2: 2561.229 ops/s
Iteration   3: 2530.924 ops/s
Iteration   4: 2560.813 ops/s
Iteration   5: 2561.849 ops/s
Iteration   6: 2562.488 ops/s
Iteration   7: 2557.415 ops/s
Iteration   8: 2559.792 ops/s
Iteration   9: 2564.534 ops/s
Iteration  10: 2564.614 ops/s
Iteration  11: 2545.895 ops/s
Iteration  12: 2564.876 ops/s
Iteration  13: 2564.413 ops/s
Iteration  14: 2564.509 ops/s
Iteration  15: 2564.397 ops/s
Iteration  16: 2563.754 ops/s
Iteration  17: 2557.129 ops/s
Iteration  18: 2559.264 ops/s
Iteration  19: 2559.271 ops/s
Iteration  20: 2559.422 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  2559.411 ±(99.9%) 6.921 ops/s [Average]
  (min, avg, max) = (2530.924, 2559.411, 2564.876), stdev = 7.971
  CI (99.9%): [2552.489, 2566.332] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2:·asm":
PrintAssembly processed: 199393 total address lines.
Perf output processed (skipped 23.401 seconds):
 Column 1: cycles (20865 events)
 Column 2: instructions (20861 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 503 (351 bytes) 

                      # parm4:    rdi       = int
                      # parm5:    [sp+0x70]   = &apos;com/google/re2j/Machine$Thread&apos;  (sp of caller)
                      0x00007f85c121c1c0: mov    0x8(%rsi),%r10d    ;   {no_reloc}
                      0x00007f85c121c1c4: shl    $0x3,%r10
                      0x00007f85c121c1c8: cmp    %r10,%rax
                      0x00007f85c121c1cb: jne    0x00007f85c1045e20  ;   {runtime_call}
                      0x00007f85c121c1d1: data16 xchg %ax,%ax
                      0x00007f85c121c1d4: nopl   0x0(%rax,%rax,1)
                      0x00007f85c121c1dc: data16 data16 xchg %ax,%ax
                    [Verified Entry Point]
  0.87%    1.00%      0x00007f85c121c1e0: mov    %eax,-0x14000(%rsp)
  0.08%    0.06%      0x00007f85c121c1e7: push   %rbp
  0.53%    0.48%      0x00007f85c121c1e8: sub    $0x60,%rsp         ;*synchronization entry
                                                                    ; - com.google.re2j.Machine::add@-1 (line 341)
  0.33%    0.26%      0x00007f85c121c1ec: mov    %edi,0x28(%rsp)
  0.05%    0.03%      0x00007f85c121c1f0: mov    %r9,0x20(%rsp)
  0.54%    0.47%      0x00007f85c121c1f5: mov    %r8d,0x1c(%rsp)
  0.36%    0.41%      0x00007f85c121c1fa: mov    %rsi,0x8(%rsp)
  0.04%    0.01%      0x00007f85c121c1ff: test   %ecx,%ecx
                      0x00007f85c121c201: je     0x00007f85c121c495  ;*ifne
                                                                    ; - com.google.re2j.Machine::add@1 (line 341)
  0.01%    0.01%      0x00007f85c121c207: mov    %rdx,0x40(%rsp)
  0.49%    0.42%      0x00007f85c121c20c: mov    0x14(%rdx),%r8d    ;*getfield sparse
                                                                    ; - com.google.re2j.Machine$Queue::contains@1 (line 48)
                                                                    ; - com.google.re2j.Machine::add@9 (line 344)
                                                                    ; implicit exception: dispatches to 0x00007f85c121c949
  0.32%    0.39%      0x00007f85c121c210: mov    0xc(%r12,%r8,8),%ebx  ; implicit exception: dispatches to 0x00007f85c121c95d
  0.04%    0.01%      0x00007f85c121c215: cmp    %ebx,%ecx
                      0x00007f85c121c217: jae    0x00007f85c121c35d  ;*iaload
                                                                    ; - com.google.re2j.Machine$Queue::contains@5 (line 48)
                                                                    ; - com.google.re2j.Machine::add@9 (line 344)
  0.05%    0.03%      0x00007f85c121c21d: mov    0x10(%rdx),%r9d    ;*getfield dense
                                                                    ; - com.google.re2j.Machine$Queue::contains@18 (line 52)
                                                                    ; - com.google.re2j.Machine::add@9 (line 344)
  0.46%    0.43%      0x00007f85c121c221: mov    0xc(%rdx),%r10d    ;*getfield size
                                                                    ; - com.google.re2j.Machine$Queue::contains@9 (line 49)
                                                                    ; - com.google.re2j.Machine::add@9 (line 344)
  0.24%    0.17%      0x00007f85c121c225: lea    (%r12,%r8,8),%rdi
  0.05%    0.02%      0x00007f85c121c229: mov    0x10(%rdi,%rcx,4),%ebp  ;*iaload
                                                                    ; - com.google.re2j.Machine$Queue::contains@5 (line 48)
                                                                    ; - com.google.re2j.Machine::add@9 (line 344)
  0.03%    0.02%      0x00007f85c121c22d: cmp    %r10d,%ebp
                  ╭   0x00007f85c121c230: jl     0x00007f85c121c324  ;*invokevirtual contains
                  │                                                 ; - com.google.re2j.Machine::add@9 (line 344)
  0.66%    0.64%  │↗  0x00007f85c121c236: mov    %r10d,%r11d
  0.27%    0.21%  ││  0x00007f85c121c239: inc    %r11d
  0.05%    0.03%  ││  0x00007f85c121c23c: mov    0x40(%rsp),%rdx
  0.11%    0.08%  ││  0x00007f85c121c241: mov    %r11d,0xc(%rdx)    ;*putfield size
                  ││                                                ; - com.google.re2j.Machine$Queue::add@8 (line 59)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.75%    0.58%  ││  0x00007f85c121c245: cmp    %ebx,%ecx
                  ││  0x00007f85c121c247: jae    0x00007f85c121c399
  0.24%    0.33%  ││  0x00007f85c121c24d: mov    %r10d,0x10(%rdi,%rcx,4)  ;*iastore
                  ││                                                ; - com.google.re2j.Machine$Queue::add@18 (line 60)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.02%    0.03%  ││  0x00007f85c121c252: mov    0xc(%r12,%r9,8),%r8d  ; implicit exception: dispatches to 0x00007f85c121c971
  0.03%    0.04%  ││  0x00007f85c121c257: cmp    %r8d,%r10d
                  ││  0x00007f85c121c25a: jae    0x00007f85c121c3e5
  0.54%    0.46%  ││  0x00007f85c121c260: lea    (%r12,%r9,8),%r11
  0.25%    0.38%  ││  0x00007f85c121c264: mov    0x10(%r11,%r10,4),%ebx  ;*aaload
                  ││                                                ; - com.google.re2j.Machine$Queue::add@24 (line 61)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.02%    0.03%  ││  0x00007f85c121c269: test   %ebx,%ebx
                  ││  0x00007f85c121c26b: je     0x00007f85c121c4bd  ;*ifnonnull
                  ││                                                ; - com.google.re2j.Machine$Queue::add@27 (line 62)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.03%    0.01%  ││  0x00007f85c121c271: mov    %ecx,0xc(%r12,%rbx,8)  ;*putfield pc
                  ││                                                ; - com.google.re2j.Machine$Queue::add@52 (line 66)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.70%    0.57%  ││  0x00007f85c121c276: mov    0x14(%rsi),%r11d   ;*getfield prog
                  ││                                                ; - com.google.re2j.Machine::add@26 (line 348)
  0.18%    0.24%  ││  0x00007f85c121c27a: mov    %r12d,0x10(%r12,%rbx,8)  ;*putfield thread
                  ││                                                ; - com.google.re2j.Machine$Queue::add@47 (line 65)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.16%    0.13%  ││  0x00007f85c121c27f: mov    0x14(%r12,%r11,8),%ebp  ;*getfield inst
                  ││                                                ; - com.google.re2j.Prog::getInst@1 (line 29)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 348)
                  ││                                                ; implicit exception: dispatches to 0x00007f85c121c985
  0.02%    0.01%  ││  0x00007f85c121c284: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f85c121c999
  0.56%    0.41%  ││  0x00007f85c121c289: cmp    $0xf8002f22,%r10d  ;   {metadata(&apos;java/util/ArrayList&apos;)}
                  ││  0x00007f85c121c290: jne    0x00007f85c121c469
  0.24%    0.20%  ││  0x00007f85c121c296: lea    (%r12,%rbp,8),%r11  ;*invokeinterface get
                  ││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.07%    0.06%  ││  0x00007f85c121c29a: mov    0x10(%r11),%ebp    ;*getfield size
                  ││                                                ; - java.util.ArrayList::rangeCheck@2 (line 652)
                  ││                                                ; - java.util.ArrayList::get@2 (line 429)
                  ││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.02%    0.03%  ││  0x00007f85c121c29e: cmp    %ebp,%ecx
                  ││  0x00007f85c121c2a0: jge    0x00007f85c121c501  ;*if_icmplt
                  ││                                                ; - java.util.ArrayList::rangeCheck@5 (line 652)
                  ││                                                ; - java.util.ArrayList::get@2 (line 429)
                  ││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.55%    0.37%  ││  0x00007f85c121c2a6: mov    0x14(%r11),%ebp    ;*getfield elementData
                  ││                                                ; - java.util.ArrayList::elementData@1 (line 418)
                  ││                                                ; - java.util.ArrayList::get@7 (line 431)
                  ││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.14%    0.24%  ││  0x00007f85c121c2aa: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f85c121c9ad
  0.46%    0.48%  ││  0x00007f85c121c2af: cmp    %r10d,%ecx
                  ││  0x00007f85c121c2b2: jae    0x00007f85c121c42d
  0.45%    0.43%  ││  0x00007f85c121c2b8: lea    (%r12,%rbp,8),%r10
  0.42%    0.38%  ││  0x00007f85c121c2bc: mov    0x10(%r10,%rcx,4),%ebp  ;*aaload
                  ││                                                ; - java.util.ArrayList::elementData@5 (line 418)
                  ││                                                ; - java.util.ArrayList::get@7 (line 431)
                  ││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.10%    0.09%  ││  0x00007f85c121c2c1: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f85c121c9c1
  2.00%    1.94%  ││  0x00007f85c121c2c6: cmp    $0xf80197c3,%r11d  ;   {metadata(&apos;com/google/re2j/Inst&apos;)}
                  ││  0x00007f85c121c2cd: jne    0x00007f85c121c555
  0.64%    0.55%  ││  0x00007f85c121c2d3: lea    (%r12,%rbp,8),%r10  ;*checkcast
                  ││                                                ; - com.google.re2j.Prog::getInst@10 (line 29)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.15%    0.11%  ││  0x00007f85c121c2d7: mov    %r10,0x38(%rsp)
  0.00%    0.00%  ││  0x00007f85c121c2dc: mov    0xc(%r10),%r8d     ;*getfield op
                  ││                                                ; - com.google.re2j.Inst::op@1 (line 42)
                  ││                                                ; - com.google.re2j.Machine::add@37 (line 349)
  0.02%    0.03%  ││  0x00007f85c121c2e0: mov    %r8d,%r10d
  0.65%    0.46%  ││  0x00007f85c121c2e3: add    $0xfffffff7,%r10d
  0.17%    0.07%  ││  0x00007f85c121c2e7: mov    $0x8,%r9d
           0.00%  ││  0x00007f85c121c2ed: cmp    $0x3,%r10d
  0.56%    0.45%  ││  0x00007f85c121c2f1: cmovb  %r9d,%r8d          ;*invokevirtual op
                  ││                                                ; - com.google.re2j.Machine::add@37 (line 349)
  1.28%    1.29%  ││  0x00007f85c121c2f5: mov    %r8d,%r11d
                  ││  0x00007f85c121c2f8: dec    %r11d
  0.70%    0.65%  ││  0x00007f85c121c2fb: cmp    $0xb,%r11d
                  ││  0x00007f85c121c2ff: jae    0x00007f85c121c459  ;*tableswitch
                  ││                                                ; - com.google.re2j.Machine::add@40 (line 349)
  0.77%    0.75%  ││  0x00007f85c121c305: mov    0x38(%rsp),%r10
  0.08%    0.04%  ││  0x00007f85c121c30a: mov    0x10(%r10),%ecx    ;*getfield out
                  ││                                                ; - com.google.re2j.Machine::add@193 (line 369)
  0.00%           ││  0x00007f85c121c30e: mov    0x14(%r10),%r11d   ;*getfield arg
                  ││                                                ; - com.google.re2j.Machine::add@156 (line 363)
  0.00%    0.00%  ││  0x00007f85c121c312: movslq %r8d,%r8
  0.66%    0.82%  ││  0x00007f85c121c315: movabs $0x7f85c121c160,%r10  ;   {section_word}
  0.06%    0.09%  ││  0x00007f85c121c31f: jmpq   *-0x8(%r10,%r8,8)  ;*tableswitch
                  ││                                                ; - com.google.re2j.Machine::add@40 (line 349)
  0.10%    0.08%  ↘│  0x00007f85c121c324: mov    0xc(%r12,%r9,8),%edx  ; implicit exception: dispatches to 0x00007f85c121ca51
  0.04%    0.03%   │  0x00007f85c121c329: cmp    %edx,%ebp
                   │  0x00007f85c121c32b: jae    0x00007f85c121c53d
  0.04%    0.01%   │  0x00007f85c121c331: lea    (%r12,%r9,8),%r11
           0.00%   │  0x00007f85c121c335: mov    0x10(%r11,%rbp,4),%r11d  ;*aaload
                   │                                                ; - com.google.re2j.Machine$Queue::contains@22 (line 52)
                   │                                                ; - com.google.re2j.Machine::add@9 (line 344)
  0.11%    0.11%   │  0x00007f85c121c33a: mov    0xc(%r12,%r11,8),%ebp  ;*getfield pc
                   │                                                ; - com.google.re2j.Machine$Queue::contains@29 (line 53)
                   │                                                ; - com.google.re2j.Machine::add@9 (line 344)
                   │                                                ; implicit exception: dispatches to 0x00007f85c121ca71
  0.18%    0.24%   │  0x00007f85c121c33f: cmp    %ecx,%ebp
                   ╰  0x00007f85c121c341: jne    0x00007f85c121c236  ;*if_icmpne
                                                                    ; - com.google.re2j.Machine$Queue::contains@33 (line 53)
                                                                    ; - com.google.re2j.Machine::add@9 (line 344)
                      0x00007f85c121c347: mov    $0xffffff65,%esi
                      0x00007f85c121c34c: mov    %ecx,0x2c(%rsp)
                      0x00007f85c121c350: data16 xchg %ax,%ax
                      0x00007f85c121c353: callq  0x00007f85c10051a0  ; OopMap{[112]=Oop [8]=Oop [32]=Oop [64]=Oop off=408}
....................................................................................................
 19.75%   18.48%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 514 (213 bytes) 

                        0x00007f85c122b65e: add    $0x20,%r10d        ;*iinc
                                                                      ; - com.google.re2j.Unicode::toLower@18 (line 179)
                                                                      ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                                                                      ; - com.google.re2j.Inst::matchRune@50 (line 65)
                                                                      ; - com.google.re2j.Machine::step@308 (line 306)
                        0x00007f85c122b662: cmp    %r8d,%r10d
                  ╭     0x00007f85c122b665: jne    0x00007f85c122b682  ;*if_icmpeq
                  │                                                   ; - com.google.re2j.Unicode::simpleFold@77 (line 224)
                  │                                                   ; - com.google.re2j.Inst::matchRune@50 (line 65)
                  │                                                   ; - com.google.re2j.Machine::step@308 (line 306)
  0.20%    0.28%  │     0x00007f85c122b667: cmp    $0x61,%r8d
                  │     0x00007f85c122b66b: jl     0x00007f85c122c1e5  ;*if_icmpgt
                  │                                                   ; - com.google.re2j.Unicode::toUpper@9 (line 167)
                  │                                                   ; - com.google.re2j.Unicode::simpleFold@83 (line 227)
                  │                                                   ; - com.google.re2j.Inst::matchRune@50 (line 65)
                  │                                                   ; - com.google.re2j.Machine::step@308 (line 306)
  0.26%    0.31%  │     0x00007f85c122b671: cmp    $0x7a,%r8d
                  │     0x00007f85c122b675: jg     0x00007f85c122c231  ;*if_icmpgt
                  │                                                   ; - com.google.re2j.Unicode::toUpper@15 (line 167)
                  │                                                   ; - com.google.re2j.Unicode::simpleFold@83 (line 227)
                  │                                                   ; - com.google.re2j.Inst::matchRune@50 (line 65)
                  │                                                   ; - com.google.re2j.Machine::step@308 (line 306)
                  │     0x00007f85c122b67b: mov    %r8d,%r10d
  0.00%           │     0x00007f85c122b67e: add    $0xffffffe0,%r10d  ; OopMap{r9=Oop rbx=NarrowOop rdi=NarrowOop rdx=NarrowOop r13=Oop xmm0=Oop [8]=Oop [24]=Oop [40]=Oop off=1698}
                  │                                                   ;*goto
                  │                                                   ; - com.google.re2j.Inst::matchRune@54 (line 65)
                  │                                                   ; - com.google.re2j.Machine::step@308 (line 306)
  0.14%    0.24%  ↘     0x00007f85c122b682: test   %eax,0x180f7978(%rip)        # 0x00007f85d9323000
                                                                      ;*goto
                                                                      ; - com.google.re2j.Inst::matchRune@54 (line 65)
                                                                      ; - com.google.re2j.Machine::step@308 (line 306)
                                                                      ;   {poll}
  0.28%    0.21%        0x00007f85c122b688: cmp    %eax,%r10d
                        0x00007f85c122b68b: je     0x00007f85c122b4cb  ;*if_icmpeq
                                                                      ; - com.google.re2j.Inst::matchRune@39 (line 64)
                                                                      ; - com.google.re2j.Machine::step@308 (line 306)
                        0x00007f85c122b691: mov    %eax,%r11d         ;*iload_1
                                                                      ; - com.google.re2j.Inst::matchRune@42 (line 66)
                                                                      ; - com.google.re2j.Machine::step@308 (line 306)
  0.02%    0.04%        0x00007f85c122b694: cmp    %r10d,%ecx
                        0x00007f85c122b697: je     0x00007f85c122b98a  ;*if_icmpne
                                                                      ; - com.google.re2j.Inst::matchRune@44 (line 66)
                                                                      ; - com.google.re2j.Machine::step@308 (line 306)
  0.25%    0.26%        0x00007f85c122b69d: mov    %r10d,%r14d
  0.21%    0.30%        0x00007f85c122b6a0: mov    %r11d,%eax
                        0x00007f85c122b6a3: mov    $0x1f,%r8d
  0.01%    0.03%        0x00007f85c122b6a9: mov    $0x1f,%r10d
  0.26%    0.29%        0x00007f85c122b6af: xor    %r11d,%r11d
  0.23%    0.34%        0x00007f85c122b6b2: mov    $0x3f,%esi
                        0x00007f85c122b6b7: mov    %r11d,0x20(%rsp)
  0.00%    0.04%        0x00007f85c122b6bc: vmovd  %esi,%xmm1
  0.22%    0.31%   ╭    0x00007f85c122b6c0: jmp    0x00007f85c122b6ff
  0.69%    0.95%   │↗   0x00007f85c122b6c2: mov    0x20(%rsp),%r8d    ; OopMap{r9=Oop rbx=NarrowOop rdi=NarrowOop rdx=NarrowOop r13=Oop xmm0=Oop [8]=Oop [24]=Oop [40]=Oop off=1767}
                   ││                                                 ;*goto
                   ││                                                 ; - com.google.re2j.Unicode::simpleFold@40 (line 214)
                   ││                                                 ; - com.google.re2j.Inst::matchRune@50 (line 65)
                   ││                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.69%    0.93%   ││↗  0x00007f85c122b6c7: test   %eax,0x180f7933(%rip)        # 0x00007f85d9323000
                   │││                                                ;*goto
                   │││                                                ; - com.google.re2j.Unicode::simpleFold@40 (line 214)
                   │││                                                ; - com.google.re2j.Inst::matchRune@50 (line 65)
                   │││                                                ; - com.google.re2j.Machine::step@308 (line 306)
                   │││                                                ;   {poll}
  0.58%    0.94%   │││  0x00007f85c122b6cd: cmp    %r10d,%r8d
                   │││  0x00007f85c122b6d0: jge    0x00007f85c122b609  ;*if_icmpge
                   │││                                                ; - com.google.re2j.Unicode::simpleFold@9 (line 207)
                   │││                                                ; - com.google.re2j.Inst::matchRune@50 (line 65)
                   │││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.54%    0.67%   │││  0x00007f85c122b6d6: mov    %r8d,0x20(%rsp)
  0.68%    0.77%   │││  0x00007f85c122b6db: vmovd  %r10d,%xmm1
  0.56%    0.82%   │││  0x00007f85c122b6e0: mov    %r10d,%r11d
  0.56%    0.64%   │││  0x00007f85c122b6e3: sub    %r8d,%r11d         ;*isub
                   │││                                                ; - com.google.re2j.Unicode::simpleFold@15 (line 208)
                   │││                                                ; - com.google.re2j.Inst::matchRune@50 (line 65)
                   │││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.48%    0.70%   │││  0x00007f85c122b6e6: mov    %r11d,%r8d
  0.58%    0.73%   │││  0x00007f85c122b6e9: sar    $0x1f,%r8d
  0.61%    0.64%   │││  0x00007f85c122b6ed: shr    $0x1f,%r8d
  0.54%    0.64%   │││  0x00007f85c122b6f1: add    %r11d,%r8d
  0.41%    0.69%   │││  0x00007f85c122b6f4: sar    %r8d
  0.58%    0.57%   │││  0x00007f85c122b6f7: mov    0x20(%rsp),%r10d
  0.62%    0.66%   │││  0x00007f85c122b6fc: add    %r8d,%r10d         ;*idiv
                   │││                                                ; - com.google.re2j.Unicode::simpleFold@17 (line 208)
                   │││                                                ; - com.google.re2j.Inst::matchRune@50 (line 65)
                   │││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.68%    0.94%   ↘││  0x00007f85c122b6ff: cmp    $0x3f,%r10d
                    ││  0x00007f85c122b703: jae    0x00007f85c122ba5d
  0.48%    0.74%    ││  0x00007f85c122b709: movslq 0x20(%rsp),%r11
  0.69%    0.90%    ││  0x00007f85c122b70e: movslq %r8d,%r8
  0.79%    0.88%    ││  0x00007f85c122b711: add    %r8,%r11
  0.70%    1.05%    ││  0x00007f85c122b714: mov    0x10(%r9,%r11,4),%ebp  ;*aaload
                    ││                                                ; - com.google.re2j.Unicode::simpleFold@24 (line 209)
                    ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 65)
                    ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.51%    0.55%    ││  0x00007f85c122b719: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f85c122c3b9
  1.86%    2.33%    ││  0x00007f85c122b71e: test   %r11d,%r11d
                    ││  0x00007f85c122b721: jbe    0x00007f85c122bab5  ;*iaload
                    ││                                                ; - com.google.re2j.Unicode::simpleFold@26 (line 209)
                    ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 65)
                    ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  1.62%    1.73%    ││  0x00007f85c122b727: mov    0x10(%r12,%rbp,8),%r11d
  0.47%    0.63%    ││  0x00007f85c122b72c: cmp    %r14d,%r11d
                    ╰│  0x00007f85c122b72f: jge    0x00007f85c122b6c2  ;*if_icmpge
                     │                                                ; - com.google.re2j.Unicode::simpleFold@28 (line 209)
                     │                                                ; - com.google.re2j.Inst::matchRune@50 (line 65)
                     │                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.45%    0.52%     │  0x00007f85c122b731: mov    %r10d,%r8d
  0.01%    0.02%     │  0x00007f85c122b734: inc    %r8d               ;*iadd
                     │                                                ; - com.google.re2j.Unicode::simpleFold@33 (line 210)
                     │                                                ; - com.google.re2j.Inst::matchRune@50 (line 65)
                     │                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.13%    0.17%     │  0x00007f85c122b737: vmovd  %xmm1,%r10d
  0.02%    0.04%     ╰  0x00007f85c122b73c: jmp    0x00007f85c122b6c7
                        0x00007f85c122b73e: mov    %r10d,%r11d
                        0x00007f85c122b741: sar    %r11d
                        0x00007f85c122b744: add    %r10d,%r11d        ;*iadd
                                                                      ; - java.util.ArrayList::grow@10 (line 255)
                                                                      ; - java.util.ArrayList::ensureExplicitCapacity@22 (line 235)
                                                                      ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                                      ; - java.util.ArrayList::add@7 (line 458)
                                                                      ; - com.google.re2j.Machine::step@410 (line 329)
                        0x00007f85c122b747: mov    %r11d,%ebx
                        0x00007f85c122b74a: sub    %esi,%ebx
....................................................................................................
 18.67%   23.52%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 514 (465 bytes) 

                                                                     ;*invokespecial add
                                                                     ; - com.google.re2j.Machine::step@394 (line 325)
                                                                     ;   {optimized virtual_call}
  0.00%                0x00007f85c122b0e0: test   %rax,%rax
                       0x00007f85c122b0e3: je     0x00007f85c122b976
                       0x00007f85c122b0e9: mov    %rax,0x48(%rsp)
                       0x00007f85c122b0ee: mov    0x20(%rsp),%ecx
                       0x00007f85c122b0f2: mov    0x84(%rsp),%r8d
                       0x00007f85c122b0fa: mov    0x8c(%rsp),%r14d   ;*aload
                                                                     ; - com.google.re2j.Machine::step@399 (line 327)
  0.52%    0.25%       0x00007f85c122b102: mov    0x28(%rsp),%r10
                       0x00007f85c122b107: mov    0x20(%r10),%ebp    ;*getfield pool
                                                                     ; - com.google.re2j.Machine::step@405 (line 329)
                       0x00007f85c122b10b: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f85c122c3d9
  0.02%    0.01%       0x00007f85c122b110: cmp    $0xf8002f22,%r10d  ;   {metadata(&apos;java/util/ArrayList&apos;)}
                       0x00007f85c122b117: jne    0x00007f85c122bb41
  0.43%    0.26%       0x00007f85c122b11d: lea    (%r12,%rbp,8),%r9  ;*invokeinterface add
                                                                     ; - com.google.re2j.Machine::step@410 (line 329)
                       0x00007f85c122b121: mov    0x14(%r9),%edi     ;*getfield elementData
                                                                     ; - java.util.ArrayList::ensureCapacityInternal@1 (line 223)
                                                                     ; - java.util.ArrayList::add@7 (line 458)
                                                                     ; - com.google.re2j.Machine::step@410 (line 329)
                       0x00007f85c122b125: mov    0x10(%r9),%ebp     ;*getfield size
                                                                     ; - java.util.ArrayList::add@16 (line 459)
                                                                     ; - com.google.re2j.Machine::step@410 (line 329)
  0.01%    0.02%       0x00007f85c122b129: mov    %ebp,%ebx
  0.36%    0.32%       0x00007f85c122b12b: inc    %ebx               ;*iadd
                                                                     ; - java.util.ArrayList::add@21 (line 459)
                                                                     ; - com.google.re2j.Machine::step@410 (line 329)
                       0x00007f85c122b12d: cmp    $0xed9f0db7,%edi   ;   {oop(a &apos;java/lang/Object&apos;[0] )}
                       0x00007f85c122b133: je     0x00007f85c122b94a  ;*if_acmpne
                                                                     ; - java.util.ArrayList::ensureCapacityInternal@7 (line 223)
                                                                     ; - java.util.ArrayList::add@7 (line 458)
                                                                     ; - com.google.re2j.Machine::step@410 (line 329)
                       0x00007f85c122b139: mov    %ebx,%esi          ;*aload_0
                                                                     ; - java.util.ArrayList::ensureCapacityInternal@17 (line 227)
                                                                     ; - java.util.ArrayList::add@7 (line 458)
                                                                     ; - com.google.re2j.Machine::step@410 (line 329)
  0.00%    0.02%       0x00007f85c122b13b: mov    0xc(%r9),%r11d     ;*getfield modCount
                                                                     ; - java.util.ArrayList::ensureExplicitCapacity@2 (line 231)
                                                                     ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                                     ; - java.util.ArrayList::add@7 (line 458)
                                                                     ; - com.google.re2j.Machine::step@410 (line 329)
  0.43%    0.43%       0x00007f85c122b13f: inc    %r11d
                       0x00007f85c122b142: mov    %r11d,0xc(%r9)     ;*putfield modCount
                                                                     ; - java.util.ArrayList::ensureExplicitCapacity@7 (line 231)
                                                                     ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                                     ; - java.util.ArrayList::add@7 (line 458)
                                                                     ; - com.google.re2j.Machine::step@410 (line 329)
  0.00%                0x00007f85c122b146: mov    0xc(%r12,%rdi,8),%r10d  ;*arraylength
                                                                     ; - java.util.ArrayList::ensureExplicitCapacity@15 (line 234)
                                                                     ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                                     ; - java.util.ArrayList::add@7 (line 458)
                                                                     ; - com.google.re2j.Machine::step@410 (line 329)
                                                                     ; implicit exception: dispatches to 0x00007f85c122c3e9
  0.01%    0.01%       0x00007f85c122b14b: mov    %esi,%edx
  0.45%    0.57%       0x00007f85c122b14d: sub    %r10d,%edx
  0.01%    0.00%       0x00007f85c122b150: test   %edx,%edx
                       0x00007f85c122b152: jg     0x00007f85c122b73e  ;*ifle
                                                                     ; - java.util.ArrayList::ensureExplicitCapacity@17 (line 234)
                                                                     ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                                     ; - java.util.ArrayList::add@7 (line 458)
                                                                     ; - com.google.re2j.Machine::step@410 (line 329)
  0.02%    0.04%       0x00007f85c122b158: mov    %ebx,0x10(%r9)     ;*putfield size
                                                                     ; - java.util.ArrayList::add@22 (line 459)
                                                                     ; - com.google.re2j.Machine::step@410 (line 329)
                       0x00007f85c122b15c: mov    %rdi,%r11
  0.43%    0.46%       0x00007f85c122b15f: shl    $0x3,%r11          ;*return
                                                                     ; - java.util.ArrayList::ensureExplicitCapacity@25 (line 236)
                                                                     ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                                     ; - java.util.ArrayList::add@7 (line 458)
                                                                     ; - com.google.re2j.Machine::step@410 (line 329)
                       0x00007f85c122b163: mov    0xc(%r11),%r9d
  0.02%    0.02%       0x00007f85c122b167: cmp    %r9d,%ebp
                       0x00007f85c122b16a: jae    0x00007f85c122bafd
  0.01%    0.02%       0x00007f85c122b170: mov    0x8(%r11),%r9d
  0.37%    0.48%       0x00007f85c122b174: cmp    $0xf80022f5,%r9d   ;   {metadata(&apos;java/lang/Object&apos;[])}
                       0x00007f85c122b17b: jne    0x00007f85c122bb7d
  0.01%    0.01%       0x00007f85c122b181: lea    0x10(%r11,%rbp,4),%r10
  0.01%    0.01%       0x00007f85c122b186: mov    0x48(%rsp),%r11
  0.00%    0.00%       0x00007f85c122b18b: mov    %r11,%r8
  0.47%    0.37%       0x00007f85c122b18e: shr    $0x3,%r8
  0.00%    0.00%       0x00007f85c122b192: mov    %r8d,(%r10)
  0.00%    0.01%       0x00007f85c122b195: shr    $0x9,%r10
  0.00%    0.00%       0x00007f85c122b199: movabs $0x7f85d1d2b000,%r11
  0.38%    0.39%       0x00007f85c122b1a3: mov    %r12b,(%r11,%r10,1)  ;*aastore
                                                                     ; - java.util.ArrayList::add@26 (line 459)
                                                                     ; - com.google.re2j.Machine::step@410 (line 329)
  0.00%    0.01%       0x00007f85c122b1a7: xor    %r10d,%r10d
  0.00%    0.00%  ╭    0x00007f85c122b1aa: jmp    0x00007f85c122b1b5
  0.26%    0.16%  │↗   0x00007f85c122b1ac: mov    0x24(%rsp),%r10d
  0.00%    0.02%  ││   0x00007f85c122b1b1: mov    0x20(%rsp),%ecx    ; OopMap{[8]=Oop [24]=Oop [40]=Oop off=469}
                  ││                                                 ;*goto
                  ││                                                 ; - com.google.re2j.Machine::step@419 (line 264)
  0.15%    0.08%  ↘│   0x00007f85c122b1b5: test   %eax,0x180f7e45(%rip)        # 0x00007f85d9323000
                   │                                                 ;*goto
                   │                                                 ; - com.google.re2j.Machine::step@419 (line 264)
                   │                                                 ;   {poll}
  0.45%    0.42%   │   0x00007f85c122b1bb: mov    0x8(%rsp),%r10
  0.18%    0.10%   │   0x00007f85c122b1c0: mov    0xc(%r10),%r10d
  0.02%    0.03%   │   0x00007f85c122b1c4: cmp    %r10d,%r14d
                   │   0x00007f85c122b1c7: jge    0x00007f85c122b3bc
  0.16%    0.05%   │   0x00007f85c122b1cd: mov    %ecx,0x20(%rsp)
  0.28%    0.36%   │   0x00007f85c122b1d1: mov    %r14d,%r8d         ;*aload_1
                   │                                                 ; - com.google.re2j.Machine::step@21 (line 265)
  0.17%    0.21%   │   0x00007f85c122b1d4: mov    0x8(%rsp),%r10
  0.09%    0.11%   │   0x00007f85c122b1d9: mov    0x10(%r10),%r10d   ;*getfield dense
                   │                                                 ; - com.google.re2j.Machine::step@22 (line 265)
  0.29%    0.14%   │   0x00007f85c122b1dd: mov    0xc(%r12,%r10,8),%r9d  ; implicit exception: dispatches to 0x00007f85c122c3a5
  0.59%    0.68%   │   0x00007f85c122b1e2: cmp    %r9d,%r8d
                   │   0x00007f85c122b1e5: jae    0x00007f85c122ba1d
  0.29%    0.23%   │   0x00007f85c122b1eb: shl    $0x3,%r10
  0.04%    0.04%   │   0x00007f85c122b1ef: mov    0x10(%r10,%r8,4),%r10d  ;*aaload
                   │                                                 ; - com.google.re2j.Machine::step@27 (line 265)
  0.27%    0.26%   │   0x00007f85c122b1f4: mov    0x10(%r12,%r10,8),%r11d  ;*getfield thread
                   │                                                 ; - com.google.re2j.Machine::step@40 (line 269)
                   │                                                 ; implicit exception: dispatches to 0x00007f85c122c409
  1.27%    1.84%   │   0x00007f85c122b1f9: mov    %r8d,%r14d
  0.17%    0.12%   │   0x00007f85c122b1fc: inc    %r14d              ;*iadd
                   │                                                 ; - com.google.re2j.Machine::step@241 (line 293)
  0.00%    0.03%   │   0x00007f85c122b1ff: test   %r11d,%r11d
                   ╰   0x00007f85c122b202: je     0x00007f85c122b1ac  ;*ifnonnull
                                                                     ; - com.google.re2j.Machine::step@47 (line 270)
  0.35%    0.52%       0x00007f85c122b204: mov    0x24(%rsp),%r10d
  0.09%    0.18%       0x00007f85c122b209: test   %r10d,%r10d
                       0x00007f85c122b20c: jne    0x00007f85c122bcdd  ;*ifeq
                                                                     ; - com.google.re2j.Machine::step@55 (line 273)
  0.03%    0.02%       0x00007f85c122b212: mov    0x10(%r12,%r11,8),%r10d  ;*getfield inst
                                                                     ; - com.google.re2j.Machine::step@107 (line 278)
  1.73%    2.34%       0x00007f85c122b217: mov    0x18(%r12,%r10,8),%edi  ;*getfield runes
                                                                     ; - com.google.re2j.Machine::step@320 (line 310)
                                                                     ; implicit exception: dispatches to 0x00007f85c122c3c9
  2.14%    2.95%       0x00007f85c122b21c: mov    0xc(%r12,%r10,8),%ecx  ;*getfield op
                                                                     ; - com.google.re2j.Machine::step@117 (line 280)
  0.06%    0.04%       0x00007f85c122b221: mov    0xc(%r12,%r11,8),%edx  ;*getfield cap
                                                                     ; - com.google.re2j.Machine::step@176 (line 287)
                       0x00007f85c122b226: lea    (%r12,%r11,8),%r9  ;*getfield thread
                                                                     ; - com.google.re2j.Machine::step@40 (line 269)
  0.00%                0x00007f85c122b22a: cmp    $0x9,%ecx
                       0x00007f85c122b22d: je     0x00007f85c122b04d
  0.50%    0.56%       0x00007f85c122b233: cmp    $0x9,%ecx
                       0x00007f85c122b236: jg     0x00007f85c122b076
  0.12%    0.15%       0x00007f85c122b23c: cmp    $0x7,%ecx
                       0x00007f85c122b23f: je     0x00007f85c122bd29  ;*tableswitch
                                                                     ; - com.google.re2j.Machine::step@120 (line 280)
  0.42%    0.45%       0x00007f85c122b245: lea    (%r12,%r10,8),%rbx  ;*getfield inst
                                                                     ; - com.google.re2j.Machine::step@107 (line 278)
                       0x00007f85c122b249: cmp    $0x7,%ecx
                    ╭  0x00007f85c122b24c: jle    0x00007f85c122b2d8  ;*tableswitch
                    │                                                ; - com.google.re2j.Machine::step@120 (line 280)
  0.53%    0.54%    │  0x00007f85c122b252: mov    0xc(%r12,%rdi,8),%ebp  ;*arraylength
                    │                                                ; - com.google.re2j.Inst::matchRune@4 (line 57)
                    │                                                ; - com.google.re2j.Machine::step@308 (line 306)
                    │                                                ; implicit exception: dispatches to 0x00007f85c122c4e1
  0.87%    0.82%    │  0x00007f85c122b257: cmp    $0x1,%ebp
                    │  0x00007f85c122b25a: jne    0x00007f85c122bfdd  ;*if_icmpne
                    │                                                ; - com.google.re2j.Inst::matchRune@6 (line 57)
                    │                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.58%    0.33%    │  0x00007f85c122b260: test   %ebp,%ebp
                    │  0x00007f85c122b262: jbe    0x00007f85c122be1d
  0.09%    0.11%    │  0x00007f85c122b268: mov    0x10(%r12,%rdi,8),%edi  ;*iaload
                    │                                                ; - com.google.re2j.Inst::matchRune@14 (line 58)
                    │                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.00%             │  0x00007f85c122b26d: mov    0x20(%rsp),%ecx
                    │  0x00007f85c122b271: cmp    %edi,%ecx
                    │  0x00007f85c122b273: je     0x00007f85c122b996  ;*if_icmpne
                    │                                                ; - com.google.re2j.Inst::matchRune@18 (line 59)
                    │                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.43%    0.46%    │  0x00007f85c122b279: mov    $0x1,%ebp
                    │  0x00007f85c122b27e: and    0x14(%r12,%r10,8),%ebp  ;*iand
                    │                                                ; - com.google.re2j.Inst::matchRune@28 (line 62)
                    │                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.00%             │  0x00007f85c122b283: test   %ebp,%ebp
                    │  0x00007f85c122b285: je     0x00007f85c122c0cd  ;*ifeq
                    │                                                ; - com.google.re2j.Inst::matchRune@29 (line 62)
                    │                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.00%             │  0x00007f85c122b28b: mov    %edi,0x20(%rsp)
  0.39%    0.45%    │  0x00007f85c122b28f: vmovq  %rbx,%xmm0
  0.01%    0.01%    │  0x00007f85c122b294: mov    %r9,%r13
  0.00%             │  0x00007f85c122b297: mov    %r10d,%edi
                    │  0x00007f85c122b29a: mov    %r14d,0x8c(%rsp)
  0.47%    0.26%    │  0x00007f85c122b2a2: mov    %r11d,%ebx
  0.01%    0.00%    │  0x00007f85c122b2a5: mov    %r8d,0x84(%rsp)
                    │  0x00007f85c122b2ad: movabs $0x76dd0c420,%r9   ;   {oop(a {type array int}[63] )}
                    │  0x00007f85c122b2b7: mov    $0x1f,%eax
  0.48%    0.12%    │  0x00007f85c122b2bc: mov    $0x1f,%r8d
  0.01%    0.01%    │  0x00007f85c122b2c2: xor    %r10d,%r10d
                    │  0x00007f85c122b2c5: mov    $0x3f,%r11d
                    │  0x00007f85c122b2cb: mov    %r10d,0x30(%rsp)
  0.52%    0.07%    │  0x00007f85c122b2d0: mov    %r11d,%r14d
           0.00%    │  0x00007f85c122b2d3: jmpq   0x00007f85c122b403
                    ↘  0x00007f85c122b2d8: cmp    $0x6,%ecx
                       0x00007f85c122b2db: jne    0x00007f85c122bd29  ;*tableswitch
                                                                     ; - com.google.re2j.Machine::step@120 (line 280)
                       0x00007f85c122b2e1: mov    0x88(%rsp),%edi
                       0x00007f85c122b2e8: cmp    $0x2,%edi
                       0x00007f85c122b2eb: je     0x00007f85c122b95e  ;*aload
                                                                     ; - com.google.re2j.Machine::step@174 (line 287)
                       0x00007f85c122b2f1: mov    0xc(%r12,%rdx,8),%eax  ;*arraylength
                                                                     ; - com.google.re2j.Machine::step@179 (line 287)
                                                                     ; implicit exception: dispatches to 0x00007f85c122c501
....................................................................................................
 18.56%   19.03%  <total for region 3>

....[Hottest Region 4]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 514 (221 bytes) 

                        0x00007f85c122b3a0: mov    0x8(%rsp),%r10
                        0x00007f85c122b3a5: mov    %r12d,0xc(%r10)    ;*putfield size
                                                                      ; - com.google.re2j.Machine::step@293 (line 300)
                        0x00007f85c122b3a9: mov    0x28(%rsp),%r10
                        0x00007f85c122b3ae: movb   $0x1,0xc(%r10)     ;*putfield matched
                                                                      ; - com.google.re2j.Machine::step@298 (line 302)
                        0x00007f85c122b3b3: mov    0x20(%rsp),%ecx
                        0x00007f85c122b3b7: jmpq   0x00007f85c122b06c  ;*if_icmpge
                                                                      ; - com.google.re2j.Machine::step@18 (line 264)
                        0x00007f85c122b3bc: mov    0x8(%rsp),%r10
  0.08%    0.10%        0x00007f85c122b3c1: mov    %r12d,0xc(%r10)    ;*getfield size
                                                                      ; - com.google.re2j.Machine::step@15 (line 264)
           0.00%        0x00007f85c122b3c5: add    $0x70,%rsp
                        0x00007f85c122b3c9: pop    %rbp
                        0x00007f85c122b3ca: test   %eax,0x180f7c30(%rip)        # 0x00007f85d9323000
                                                                      ;   {poll_return}
  0.08%    0.08%        0x00007f85c122b3d0: retq   
  0.69%    0.92%   ↗    0x00007f85c122b3d1: mov    0x30(%rsp),%r11d   ; OopMap{r9=Oop rbx=NarrowOop rdi=NarrowOop rdx=NarrowOop r13=Oop xmm0=Oop [8]=Oop [24]=Oop [40]=Oop off=1014}
                   │                                                  ;*goto
                   │                                                  ; - com.google.re2j.Unicode::simpleFold@40 (line 214)
                   │                                                  ; - com.google.re2j.Inst::matchRune@33 (line 63)
                   │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
  0.93%    0.69%   │↗   0x00007f85c122b3d6: test   %eax,0x180f7c24(%rip)        # 0x00007f85d9323000
                   ││                                                 ;*goto
                   ││                                                 ; - com.google.re2j.Unicode::simpleFold@40 (line 214)
                   ││                                                 ; - com.google.re2j.Inst::matchRune@33 (line 63)
                   ││                                                 ; - com.google.re2j.Machine::step@308 (line 306)
                   ││                                                 ;   {poll}
  0.85%    0.63%   ││   0x00007f85c122b3dc: cmp    %r8d,%r11d
                  ╭││   0x00007f85c122b3df: jge    0x00007f85c122b442  ;*if_icmpge
                  │││                                                 ; - com.google.re2j.Unicode::simpleFold@9 (line 207)
                  │││                                                 ; - com.google.re2j.Inst::matchRune@33 (line 63)
                  │││                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.44%    0.49%  │││   0x00007f85c122b3e1: mov    %r8d,%r10d
  0.51%    0.55%  │││   0x00007f85c122b3e4: mov    %r8d,%r14d
  0.79%    0.48%  │││   0x00007f85c122b3e7: mov    %r11d,0x30(%rsp)
  0.51%    0.24%  │││   0x00007f85c122b3ec: sub    %r11d,%r10d        ;*isub
                  │││                                                 ; - com.google.re2j.Unicode::simpleFold@15 (line 208)
                  │││                                                 ; - com.google.re2j.Inst::matchRune@33 (line 63)
                  │││                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.51%    0.55%  │││   0x00007f85c122b3ef: mov    %r10d,%eax
  0.47%    0.54%  │││   0x00007f85c122b3f2: sar    $0x1f,%eax
  0.83%    0.44%  │││   0x00007f85c122b3f5: shr    $0x1f,%eax
  0.45%    0.08%  │││   0x00007f85c122b3f8: add    %r10d,%eax
  0.41%    0.50%  │││   0x00007f85c122b3fb: sar    %eax
  0.45%    0.55%  │││   0x00007f85c122b3fd: mov    %r11d,%r8d
  0.81%    0.63%  │││   0x00007f85c122b400: add    %eax,%r8d          ;*idiv
                  │││                                                 ; - com.google.re2j.Unicode::simpleFold@17 (line 208)
                  │││                                                 ; - com.google.re2j.Inst::matchRune@33 (line 63)
                  │││                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.56%    0.27%  │││   0x00007f85c122b403: cmp    $0x3f,%r8d
                  │││   0x00007f85c122b407: jae    0x00007f85c122bbc1
  0.53%    0.64%  │││   0x00007f85c122b40d: movslq 0x30(%rsp),%r10
  1.02%    0.88%  │││   0x00007f85c122b412: movslq %eax,%r11
  0.88%    0.96%  │││   0x00007f85c122b415: add    %r11,%r10
  0.60%    0.73%  │││   0x00007f85c122b418: mov    0x10(%r9,%r10,4),%ebp  ;*aaload
                  │││                                                 ; - com.google.re2j.Unicode::simpleFold@24 (line 209)
                  │││                                                 ; - com.google.re2j.Inst::matchRune@33 (line 63)
                  │││                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.47%    0.49%  │││   0x00007f85c122b41d: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f85c122c3f9
  1.13%    0.97%  │││   0x00007f85c122b422: test   %r10d,%r10d
                  │││   0x00007f85c122b425: jbe    0x00007f85c122bc0d  ;*iaload
                  │││                                                 ; - com.google.re2j.Unicode::simpleFold@26 (line 209)
                  │││                                                 ; - com.google.re2j.Inst::matchRune@33 (line 63)
                  │││                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  1.02%    0.95%  │││   0x00007f85c122b42b: mov    0x10(%r12,%rbp,8),%r10d
  0.58%    0.70%  │││   0x00007f85c122b430: cmp    0x20(%rsp),%r10d
                  │╰│   0x00007f85c122b435: jge    0x00007f85c122b3d1  ;*if_icmpge
                  │ │                                                 ; - com.google.re2j.Unicode::simpleFold@28 (line 209)
                  │ │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 63)
                  │ │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.11%    0.06%  │ │   0x00007f85c122b437: mov    %r8d,%r11d
  0.01%    0.02%  │ │   0x00007f85c122b43a: inc    %r11d              ;*iadd
                  │ │                                                 ; - com.google.re2j.Unicode::simpleFold@33 (line 210)
                  │ │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 63)
                  │ │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.16%    0.19%  │ │   0x00007f85c122b43d: mov    %r14d,%r8d
  0.01%    0.01%  │ ╰   0x00007f85c122b440: jmp    0x00007f85c122b3d6
  0.20%    0.26%  ↘     0x00007f85c122b442: cmp    $0x3f,%r11d
                        0x00007f85c122b446: jge    0x00007f85c122c119  ;*if_icmpge
                                                                      ; - com.google.re2j.Unicode::simpleFold@48 (line 215)
                                                                      ; - com.google.re2j.Inst::matchRune@33 (line 63)
                                                                      ; - com.google.re2j.Machine::step@308 (line 306)
                        0x00007f85c122b44c: cmp    $0x3f,%r11d
                        0x00007f85c122b450: jae    0x00007f85c122bdd5
  0.01%    0.02%        0x00007f85c122b456: mov    0x10(%r9,%r11,4),%ebp  ;*aaload
                                                                      ; - com.google.re2j.Unicode::simpleFold@55 (line 215)
                                                                      ; - com.google.re2j.Inst::matchRune@33 (line 63)
                                                                      ; - com.google.re2j.Machine::step@308 (line 306)
  0.22%    0.35%        0x00007f85c122b45b: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f85c122c4f1
  0.23%    0.31%        0x00007f85c122b460: test   %r10d,%r10d
                        0x00007f85c122b463: jbe    0x00007f85c122be69
  0.00%                 0x00007f85c122b469: mov    0x10(%r12,%rbp,8),%ebp  ;*iaload
                                                                      ; - com.google.re2j.Unicode::simpleFold@57 (line 215)
                                                                      ; - com.google.re2j.Inst::matchRune@33 (line 63)
                                                                      ; - com.google.re2j.Machine::step@308 (line 306)
  0.01%    0.01%        0x00007f85c122b46e: cmp    0x20(%rsp),%ebp
                        0x00007f85c122b472: je     0x00007f85c122c161  ;*if_icmpne
                                                                      ; - com.google.re2j.Unicode::simpleFold@59 (line 215)
                                                                      ; - com.google.re2j.Inst::matchRune@33 (line 63)
                                                                      ; - com.google.re2j.Machine::step@308 (line 306)
  0.25%    0.23%        0x00007f85c122b478: mov    0x20(%rsp),%r11d
  0.20%    0.23%        0x00007f85c122b47d: cmp    $0x7f,%r11d
                        0x00007f85c122b481: jg     0x00007f85c122c199  ;*if_icmpgt
                                                                      ; - com.google.re2j.Unicode::toLower@3 (line 177)
                                                                      ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                                                                      ; - com.google.re2j.Inst::matchRune@33 (line 63)
                                                                      ; - com.google.re2j.Machine::step@308 (line 306)
                        0x00007f85c122b487: cmp    $0x41,%r11d
                        0x00007f85c122b48b: jl     0x00007f85c122c015  ;*if_icmpgt
                                                                      ; - com.google.re2j.Unicode::toLower@9 (line 178)
                                                                      ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                                                                      ; - com.google.re2j.Inst::matchRune@33 (line 63)
                                                                      ; - com.google.re2j.Machine::step@308 (line 306)
  0.01%    0.02%        0x00007f85c122b491: cmp    $0x5a,%r11d
                     ╭  0x00007f85c122b495: jg     0x00007f85c122b4a7  ;*if_icmpgt
                     │                                                ; - com.google.re2j.Unicode::toLower@15 (line 178)
                     │                                                ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                     │                                                ; - com.google.re2j.Inst::matchRune@33 (line 63)
                     │                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.26%    0.30%     │  0x00007f85c122b497: mov    %r11d,%r10d
  0.27%    0.29%     │  0x00007f85c122b49a: add    $0x20,%r10d        ;*iinc
                     │                                                ; - com.google.re2j.Unicode::toLower@18 (line 179)
                     │                                                ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                     │                                                ; - com.google.re2j.Inst::matchRune@33 (line 63)
                     │                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.00%              │  0x00007f85c122b49e: cmp    %r11d,%r10d
                     │  0x00007f85c122b4a1: jne    0x00007f85c122b694  ;*if_icmpeq
                     │                                                ; - com.google.re2j.Unicode::simpleFold@77 (line 224)
                     │                                                ; - com.google.re2j.Inst::matchRune@33 (line 63)
                     │                                                ; - com.google.re2j.Machine::step@308 (line 306)
                     ↘  0x00007f85c122b4a7: cmp    $0x61,%r11d
                        0x00007f85c122b4ab: jl     0x00007f85c122c27d  ;*if_icmpgt
....................................................................................................
 17.54%   16.38%  <total for region 4>

....[Hottest Region 5]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 503 (382 bytes) 

                          0x00007f85c121c645: mov    %r10,(%rsp)
                          0x00007f85c121c649: xchg   %ax,%ax
                          0x00007f85c121c64b: callq  0x00007f85c1046020  ; OopMap{off=1168}
                                                                        ;*invokespecial add
                                                                        ; - com.google.re2j.Machine::add@203 (line 369)
                                                                        ;   {optimized virtual_call}
                  ╭       0x00007f85c121c650: jmpq   0x00007f85c121c7c6
                  │       0x00007f85c121c655: mov    0x70(%rsp),%rax
                  │╭      0x00007f85c121c65a: jmpq   0x00007f85c121c7c6  ;*tableswitch
                  ││                                                    ; - com.google.re2j.Machine::add@40 (line 349)
  1.27%    1.22%  ││      0x00007f85c121c65f: mov    0x1c(%rsp),%r8d
                  ││      0x00007f85c121c664: mov    0x20(%rsp),%r9
  0.01%    0.01%  ││      0x00007f85c121c669: mov    0x28(%rsp),%edi
                  ││      0x00007f85c121c66d: mov    0x70(%rsp),%r10
  0.34%    0.32%  ││      0x00007f85c121c672: mov    %r10,(%rsp)
                  ││      0x00007f85c121c676: mov    %rsi,%rbp
  0.01%           ││      0x00007f85c121c679: xchg   %ax,%ax
                  ││      0x00007f85c121c67b: callq  0x00007f85c1046020  ; OopMap{rbp=Oop [32]=Oop [56]=Oop [64]=Oop off=1216}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@127 (line 358)
                  ││                                                    ;   {optimized virtual_call}
           0.00%  ││      0x00007f85c121c680: mov    0x38(%rsp),%r10
  0.07%    0.06%  ││      0x00007f85c121c685: mov    0x14(%r10),%ecx    ;*getfield arg
                  ││                                                    ; - com.google.re2j.Machine::add@136 (line 359)
  0.29%    0.32%  ││      0x00007f85c121c689: mov    %rbp,%rsi
           0.00%  ││      0x00007f85c121c68c: mov    0x40(%rsp),%rdx
                  ││      0x00007f85c121c691: mov    0x1c(%rsp),%r8d
  0.05%    0.09%  ││      0x00007f85c121c696: mov    0x20(%rsp),%r9
  0.27%    0.30%  ││      0x00007f85c121c69b: mov    0x28(%rsp),%edi
           0.01%  ││      0x00007f85c121c69f: mov    %rax,(%rsp)
           0.00%  ││      0x00007f85c121c6a3: callq  0x00007f85c1046020  ; OopMap{off=1256}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@146 (line 359)
                  ││                                                    ;   {optimized virtual_call}
  0.00%    0.01%  ││╭     0x00007f85c121c6a8: jmpq   0x00007f85c121c7c6  ;*aload
                  │││                                                   ; - com.google.re2j.Machine::add@293 (line 388)
  1.90%    1.70%  │││     0x00007f85c121c6ad: mov    0x38(%rsp),%r10
           0.00%  │││     0x00007f85c121c6b2: mov    %r10,%r11
                  │││     0x00007f85c121c6b5: shr    $0x3,%r11          ;*putfield inst
                  │││                                                   ; - com.google.re2j.Machine::alloc@47 (line 151)
                  │││                                                   ; - com.google.re2j.Machine::add@301 (line 389)
                  │││     0x00007f85c121c6b9: mov    0x70(%rsp),%r13
  0.44%    0.34%  │││     0x00007f85c121c6be: test   %r13,%r13
                  │││╭    0x00007f85c121c6c1: jne    0x00007f85c121c7d2  ;*ifnonnull
                  ││││                                                  ; - com.google.re2j.Machine::add@295 (line 388)
                  ││││    0x00007f85c121c6c7: mov    0x20(%rsi),%ebp    ;*getfield pool
                  ││││                                                  ; - com.google.re2j.Machine::alloc@1 (line 147)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 389)
                  ││││    0x00007f85c121c6ca: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007f85c121c9fd
                  ││││    0x00007f85c121c6cf: cmp    $0xf8002f22,%r8d   ;   {metadata(&apos;java/util/ArrayList&apos;)}
                  ││││    0x00007f85c121c6d6: jne    0x00007f85c121c835
  0.40%    0.54%  ││││    0x00007f85c121c6dc: lea    (%r12,%rbp,8),%r9  ;*invokeinterface size
                  ││││                                                  ; - com.google.re2j.Machine::alloc@4 (line 147)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 389)
                  ││││    0x00007f85c121c6e0: mov    0x10(%r9),%ecx     ;*getfield size
                  ││││                                                  ; - java.util.ArrayList::size@1 (line 278)
                  ││││                                                  ; - com.google.re2j.Machine::alloc@4 (line 147)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 389)
  0.00%           ││││    0x00007f85c121c6e4: test   %ecx,%ecx
                  ││││    0x00007f85c121c6e6: jle    0x00007f85c121c895  ;*ifle
                  ││││                                                  ; - com.google.re2j.Machine::alloc@11 (line 148)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 389)
                  ││││    0x00007f85c121c6ec: mov    %ecx,%r8d
  0.43%    0.26%  ││││    0x00007f85c121c6ef: dec    %r8d               ;*isub
                  ││││                                                  ; - com.google.re2j.Machine::alloc@20 (line 148)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 389)
                  ││││    0x00007f85c121c6f2: cmp    %ecx,%r8d
                  ││││    0x00007f85c121c6f5: jge    0x00007f85c121c8bd  ;*if_icmplt
                  ││││                                                  ; - java.util.ArrayList::rangeCheck@5 (line 652)
                  ││││                                                  ; - java.util.ArrayList::remove@2 (line 492)
                  ││││                                                  ; - com.google.re2j.Machine::alloc@21 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 389)
  0.00%           ││││    0x00007f85c121c6fb: incl   0xc(%r9)           ;*putfield modCount
                  ││││                                                  ; - java.util.ArrayList::remove@12 (line 494)
                  ││││                                                  ; - com.google.re2j.Machine::alloc@21 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 389)
  0.41%    0.21%  ││││    0x00007f85c121c6ff: mov    0x14(%r9),%ebp     ;*getfield elementData
                  ││││                                                  ; - java.util.ArrayList::elementData@1 (line 418)
                  ││││                                                  ; - java.util.ArrayList::remove@17 (line 495)
                  ││││                                                  ; - com.google.re2j.Machine::alloc@21 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 389)
                  ││││    0x00007f85c121c703: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f85c121ca0d
                  ││││    0x00007f85c121c708: cmp    %r10d,%r8d
                  ││││    0x00007f85c121c70b: jae    0x00007f85c121c80e  ;*aaload
                  ││││                                                  ; - java.util.ArrayList::elementData@5 (line 418)
                  ││││                                                  ; - java.util.ArrayList::remove@17 (line 495)
                  ││││                                                  ; - com.google.re2j.Machine::alloc@21 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 389)
  0.45%    0.10%  ││││    0x00007f85c121c711: mov    %r8d,0x10(%r9)     ;*putfield size
                  ││││                                                  ; - java.util.ArrayList::remove@62 (line 501)
                  ││││                                                  ; - com.google.re2j.Machine::alloc@21 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 389)
                  ││││    0x00007f85c121c715: lea    (%r12,%rbp,8),%r10
                  ││││    0x00007f85c121c719: mov    0xc(%r10,%rcx,4),%ebp  ;*aaload
                  ││││                                                  ; - java.util.ArrayList::elementData@5 (line 418)
                  ││││                                                  ; - java.util.ArrayList::remove@17 (line 495)
                  ││││                                                  ; - com.google.re2j.Machine::alloc@21 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 389)
                  ││││    0x00007f85c121c71e: mov    %r12d,0xc(%r10,%rcx,4)  ;*aastore
                  ││││                                                  ; - java.util.ArrayList::remove@66 (line 501)
                  ││││                                                  ; - com.google.re2j.Machine::alloc@21 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 389)
  0.37%    0.25%  ││││    0x00007f85c121c723: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007f85c121ca21
                  ││││    0x00007f85c121c728: cmp    $0xf8019b16,%r8d   ;   {metadata(&apos;com/google/re2j/Machine$Thread&apos;)}
                  ││││    0x00007f85c121c72f: jne    0x00007f85c121c935
  0.00%    0.01%  ││││    0x00007f85c121c735: lea    (%r12,%rbp,8),%r13  ;*checkcast
                  ││││                                                  ; - com.google.re2j.Machine::alloc@26 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 389)
                  ││││    0x00007f85c121c739: mov    %r11d,0x10(%r13)
  0.35%    0.41%  ││││    0x00007f85c121c73d: mov    %r13,%r10
                  ││││    0x00007f85c121c740: shr    $0x9,%r10
           0.00%  ││││    0x00007f85c121c744: movabs $0x7f85d1d2b000,%r11
                  ││││    0x00007f85c121c74e: mov    %r12b,(%r11,%r10,1)  ;*aload
                  ││││                                                  ; - com.google.re2j.Machine::add@316 (line 393)
  0.55%    0.27%  ││││ ↗  0x00007f85c121c752: mov    0x20(%rsp),%rdi
  0.02%    0.00%  ││││ │  0x00007f85c121c757: mov    0xc(%rdi),%r10d    ;*arraylength
                  ││││ │                                                ; - com.google.re2j.Machine::add@318 (line 393)
                  ││││ │                                                ; implicit exception: dispatches to 0x00007f85c121c9ed
  0.00%    0.00%  ││││ │  0x00007f85c121c75b: test   %r10d,%r10d
                  ││││ │  0x00007f85c121c75e: jle    0x00007f85c121c872  ;*ifle
                  ││││ │                                                ; - com.google.re2j.Machine::add@319 (line 393)
                  ││││ │  0x00007f85c121c764: mov    0xc(%r13),%r11d    ;*getfield cap
                  ││││ │                                                ; - com.google.re2j.Machine::add@324 (line 393)
  0.46%    0.14%  ││││ │  0x00007f85c121c768: lea    (%r12,%rbx,8),%rbp  ;*aaload
                  ││││ │                                                ; - com.google.re2j.Machine$Queue::add@24 (line 61)
                  ││││ │                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.00%           ││││ │  0x00007f85c121c76c: mov    %r11,%r8
                  ││││ │  0x00007f85c121c76f: shl    $0x3,%r8
           0.00%  ││││ │  0x00007f85c121c773: cmp    %rdi,%r8
                  ││││╭│  0x00007f85c121c776: je     0x00007f85c121c7a3  ;*if_acmpeq
                  ││││││                                                ; - com.google.re2j.Machine::add@329 (line 393)
  0.35%    0.16%  ││││││  0x00007f85c121c778: mov    0xc(%r12,%r11,8),%r8d  ; implicit exception: dispatches to 0x00007f85c121ca39
  0.02%    0.01%  ││││││  0x00007f85c121c77d: lea    (%r12,%r11,8),%rcx  ;*getfield cap
                  ││││││                                                ; - com.google.re2j.Machine::add@324 (line 393)
  0.00%    0.00%  ││││││  0x00007f85c121c781: cmp    %r10d,%r8d
                  ││││││  0x00007f85c121c784: jb     0x00007f85c121c849
  0.05%    0.03%  ││││││  0x00007f85c121c78a: lea    0x10(%r12,%r11,8),%rsi
  0.47%    0.24%  ││││││  0x00007f85c121c78f: add    $0x10,%rdi
                  ││││││  0x00007f85c121c793: movslq %r10d,%rdx
  0.00%           ││││││  0x00007f85c121c796: movabs $0x7f85c1052640,%r10
  0.02%    0.00%  ││││││  0x00007f85c121c7a0: callq  *%r10              ;*aload
                  ││││││                                                ; - com.google.re2j.Machine::add@347 (line 396)
           0.01%  ││││↘│  0x00007f85c121c7a3: mov    %rbp,%r10
  0.05%    0.02%  ││││ │  0x00007f85c121c7a6: mov    %r13,%r8
  0.01%    0.01%  ││││ │  0x00007f85c121c7a9: shr    $0x3,%r8
  0.41%    0.57%  ││││ │  0x00007f85c121c7ad: mov    %r8d,0x10(%r12,%rbx,8)
  0.00%           ││││ │  0x00007f85c121c7b2: shr    $0x9,%r10
  0.03%    0.07%  ││││ │  0x00007f85c121c7b6: movabs $0x7f85d1d2b000,%r11
  0.02%    0.01%  ││││ │  0x00007f85c121c7c0: mov    %r12b,(%r11,%r10,1)  ;*putfield thread
                  ││││ │                                                ; - com.google.re2j.Machine::add@351 (line 396)
  0.46%    0.60%  ││││ │  0x00007f85c121c7c4: xor    %eax,%eax          ;*synchronization entry
                  ││││ │                                                ; - com.google.re2j.Machine::add@-1 (line 341)
  0.33%    0.23%  ↘↘↘│ │  0x00007f85c121c7c6: add    $0x60,%rsp
  0.05%    0.04%     │ │  0x00007f85c121c7ca: pop    %rbp
  0.48%    0.52%     │ │  0x00007f85c121c7cb: test   %eax,0x1810682f(%rip)        # 0x00007f85d9323000
                     │ │                                                ;   {poll_return}
  0.35%    0.50%     │ │  0x00007f85c121c7d1: retq   
                     ↘ │  0x00007f85c121c7d2: mov    %r11d,0x10(%r13)
  0.00%                │  0x00007f85c121c7d6: mov    %r13,%r10
                       │  0x00007f85c121c7d9: shr    $0x9,%r10
  0.02%    0.00%       │  0x00007f85c121c7dd: movabs $0x7f85d1d2b000,%r11
                       │  0x00007f85c121c7e7: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                       │                                                ; - com.google.re2j.Machine::add@313 (line 391)
                       ╰  0x00007f85c121c7eb: jmpq   0x00007f85c121c752  ;*tableswitch
                                                                        ; - com.google.re2j.Machine::add@40 (line 349)
                          0x00007f85c121c7f0: mov    0x1c(%rsp),%r8d
                          0x00007f85c121c7f5: mov    0x20(%rsp),%r9
                          0x00007f85c121c7fa: mov    %r10d,%edi
                          0x00007f85c121c7fd: mov    0x70(%rsp),%r10
                          0x00007f85c121c802: mov    %r10,(%rsp)
                          0x00007f85c121c806: nop
....................................................................................................
 11.26%    9.65%  <total for region 5>

....[Hottest Regions]...............................................................................
 19.75%   18.48%         C2, level 4  com.google.re2j.Machine::add, version 503 (351 bytes) 
 18.67%   23.52%         C2, level 4  com.google.re2j.Machine::step, version 514 (213 bytes) 
 18.56%   19.03%         C2, level 4  com.google.re2j.Machine::step, version 514 (465 bytes) 
 17.54%   16.38%         C2, level 4  com.google.re2j.Machine::step, version 514 (221 bytes) 
 11.26%    9.65%         C2, level 4  com.google.re2j.Machine::add, version 503 (382 bytes) 
  3.28%    4.03%         C2, level 4  com.google.re2j.Machine::match, version 555 (681 bytes) 
  3.16%    1.51%        runtime stub  StubRoutines::jint_disjoint_arraycopy (128 bytes) 
  1.25%    1.42%         C2, level 4  com.google.re2j.Machine::step, version 514 (56 bytes) 
  1.20%    1.19%   [kernel.kallsyms]  [unknown] (6 bytes) 
  0.59%    0.43%         C2, level 4  com.google.re2j.Machine::step, version 514 (72 bytes) 
  0.43%    0.37%         C2, level 4  com.google.re2j.Machine::step, version 514 (19 bytes) 
  0.25%    0.33%         C2, level 4  com.google.re2j.Machine::match, version 555 (94 bytes) 
  0.19%    0.02%   [kernel.kallsyms]  [unknown] (51 bytes) 
  0.16%    0.04%   [kernel.kallsyms]  [unknown] (71 bytes) 
  0.15%    0.03%         C2, level 4  com.google.re2j.Machine::init, version 572 (72 bytes) 
  0.14%    0.07%         C2, level 4  com.google.re2j.Machine::step, version 514 (40 bytes) 
  0.13%    0.02%   [kernel.kallsyms]  [unknown] (2 bytes) 
  0.12%    0.02%   [kernel.kallsyms]  [unknown] (20 bytes) 
  0.11%    0.16%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ (104 bytes) 
  0.10%    0.03%   [kernel.kallsyms]  [unknown] (27 bytes) 
  2.95%    3.24%  <...other 534 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 57.30%   61.36%         C2, level 4  com.google.re2j.Machine::step, version 514 
 31.00%   28.14%         C2, level 4  com.google.re2j.Machine::add, version 503 
  3.57%    4.39%         C2, level 4  com.google.re2j.Machine::match, version 555 
  3.16%    1.51%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
  3.10%    2.64%   [kernel.kallsyms]  [unknown] 
  0.28%    0.07%         C2, level 4  com.google.re2j.Machine::init, version 572 
  0.13%    0.05%         C2, level 4  com.google.re2j.Matcher::find, version 584 
  0.12%    0.17%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.06%    0.20%        libc-2.26.so  vfprintf 
  0.06%    0.07%           libjvm.so  _ZN13xmlTextStream5writeEPKcm 
  0.06%    0.08%      hsdis-amd64.so  [unknown] 
  0.06%    0.03%           libjvm.so  _ZN19GenericTaskQueueSetI17OverflowTaskQueueI8StarTaskL10MemoryType1ELj131072EELS2_1EE15steal_best_of_2EjPiRS1_ 
  0.05%    0.10%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.04%    0.00%  libpthread-2.26.so  __pthread_disable_asynccancel 
  0.04%    0.05%           libjvm.so  _ZN12outputStream15update_positionEPKcm 
  0.04%    0.10%        libc-2.26.so  _IO_fwrite 
  0.04%    0.04%        libc-2.26.so  __strchrnul_avx2 
  0.03%    0.08%        libc-2.26.so  __strlen_avx2 
  0.03%    0.03%           libjvm.so  _ZN18PSPromotionManager22copy_to_survivor_spaceILb0EEEP7oopDescS2_ 
  0.03%    0.04%        libc-2.26.so  _IO_default_xsputn 
  0.78%    0.50%  <...other 103 warm methods...>
....................................................................................................
100.00%   99.65%  <totals>

....[Distribution by Source]........................................................................
 92.36%   94.05%         C2, level 4
  3.17%    1.52%        runtime stub
  3.10%    2.64%   [kernel.kallsyms]
  0.76%    0.95%           libjvm.so
  0.35%    0.65%        libc-2.26.so
  0.11%    0.08%  libpthread-2.26.so
  0.06%    0.08%      hsdis-amd64.so
  0.04%    0.01%         interpreter
  0.03%    0.02%         C1, level 3
  0.01%                       [vdso]
  0.00%               perf-10330.map
  0.00%             Unknown, level 0
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                     Mode  Cnt     Score   Error  Units
Re2jFindRegex.testExp2       thrpt   20  2559.411 ± 6.921  ops/s
Re2jFindRegex.testExp2:·asm  thrpt            NaN            ---
