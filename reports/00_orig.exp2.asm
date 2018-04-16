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
# Warmup Iteration   1: 1560.072 ops/s
# Warmup Iteration   2: 2635.078 ops/s
# Warmup Iteration   3: 2706.636 ops/s
# Warmup Iteration   4: 2747.348 ops/s
# Warmup Iteration   5: 2738.886 ops/s
# Warmup Iteration   6: 2711.527 ops/s
# Warmup Iteration   7: 2739.229 ops/s
# Warmup Iteration   8: 2646.957 ops/s
# Warmup Iteration   9: 2594.340 ops/s
# Warmup Iteration  10: 2606.335 ops/s
# Warmup Iteration  11: 2545.426 ops/s
# Warmup Iteration  12: 2590.580 ops/s
# Warmup Iteration  13: 2608.263 ops/s
# Warmup Iteration  14: 2610.727 ops/s
# Warmup Iteration  15: 2607.751 ops/s
# Warmup Iteration  16: 2614.927 ops/s
# Warmup Iteration  17: 2737.109 ops/s
# Warmup Iteration  18: 2762.054 ops/s
# Warmup Iteration  19: 2772.996 ops/s
# Warmup Iteration  20: 2763.776 ops/s
Iteration   1: 2778.662 ops/s
Iteration   2: 2739.713 ops/s
Iteration   3: 2749.102 ops/s
Iteration   4: 2723.822 ops/s
Iteration   5: 2772.431 ops/s
Iteration   6: 2729.462 ops/s
Iteration   7: 2734.023 ops/s
Iteration   8: 2739.356 ops/s
Iteration   9: 2746.437 ops/s
Iteration  10: 2746.980 ops/s
Iteration  11: 2735.629 ops/s
Iteration  12: 2738.442 ops/s
Iteration  13: 2747.407 ops/s
Iteration  14: 2745.340 ops/s
Iteration  15: 2777.748 ops/s
Iteration  16: 2811.630 ops/s
Iteration  17: 2807.816 ops/s
Iteration  18: 2815.382 ops/s
Iteration  19: 2819.322 ops/s
Iteration  20: 2822.978 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  2764.084 ±(99.9%) 29.310 ops/s [Average]
  (min, avg, max) = (2723.822, 2764.084, 2822.978), stdev = 33.754
  CI (99.9%): [2734.774, 2793.395] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2:·asm":
PrintAssembly processed: 214024 total address lines.
Perf output processed (skipped 23.070 seconds):
 Column 1: cycles (20646 events)
 Column 2: instructions (20617 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 536 (462 bytes) 

                      # parm4:    rdi       = int
                      # parm5:    [sp+0x70]   = &apos;com/google/re2j/Machine$Thread&apos;  (sp of caller)
                      0x00007fe5849f19c0: mov    0x8(%rsi),%r10d    ;   {no_reloc}
                      0x00007fe5849f19c4: shl    $0x3,%r10
                      0x00007fe5849f19c8: cmp    %r10,%rax
                      0x00007fe5849f19cb: jne    0x00007fe5847f2e20  ;   {runtime_call}
                      0x00007fe5849f19d1: data16 xchg %ax,%ax
                      0x00007fe5849f19d4: nopl   0x0(%rax,%rax,1)
                      0x00007fe5849f19dc: data16 data16 xchg %ax,%ax
                    [Verified Entry Point]
  0.33%    0.46%      0x00007fe5849f19e0: mov    %eax,-0x14000(%rsp)
  0.41%    0.29%      0x00007fe5849f19e7: push   %rbp
  0.07%    0.17%      0x00007fe5849f19e8: sub    $0x60,%rsp         ;*synchronization entry
                                                                    ; - com.google.re2j.Machine::add@-1 (line 341)
  0.33%    0.46%      0x00007fe5849f19ec: mov    %edi,0x28(%rsp)
  0.34%    0.09%      0x00007fe5849f19f0: mov    %r9,0x20(%rsp)
  0.11%    0.15%      0x00007fe5849f19f5: mov    %r8d,0x1c(%rsp)
  0.25%    0.49%      0x00007fe5849f19fa: mov    %rsi,0x8(%rsp)
  0.04%    0.03%      0x00007fe5849f19ff: mov    %ecx,0x30(%rsp)
  0.29%    0.12%      0x00007fe5849f1a03: test   %ecx,%ecx
                      0x00007fe5849f1a05: je     0x00007fe5849f1dd1  ;*ifne
                                                                    ; - com.google.re2j.Machine::add@1 (line 341)
  0.13%    0.16%      0x00007fe5849f1a0b: mov    %rdx,0x48(%rsp)
  0.31%    0.36%      0x00007fe5849f1a10: mov    0x14(%rdx),%r8d    ;*getfield sparse
                                                                    ; - com.google.re2j.Machine$Queue::contains@1 (line 48)
                                                                    ; - com.google.re2j.Machine::add@9 (line 344)
                                                                    ; implicit exception: dispatches to 0x00007fe5849f22a1
  0.04%    0.05%      0x00007fe5849f1a14: mov    0xc(%r12,%r8,8),%ecx  ; implicit exception: dispatches to 0x00007fe5849f22b5
  0.28%    0.20%      0x00007fe5849f1a19: mov    0x30(%rsp),%r10d
  0.17%    0.22%      0x00007fe5849f1a1e: cmp    %ecx,%r10d
                      0x00007fe5849f1a21: jae    0x00007fe5849f1c3c  ;*iaload
                                                                    ; - com.google.re2j.Machine$Queue::contains@5 (line 48)
                                                                    ; - com.google.re2j.Machine::add@9 (line 344)
  0.31%    0.18%      0x00007fe5849f1a27: mov    0x10(%rdx),%r9d    ;*getfield dense
                                                                    ; - com.google.re2j.Machine$Queue::contains@18 (line 52)
                                                                    ; - com.google.re2j.Machine::add@9 (line 344)
  0.03%    0.05%      0x00007fe5849f1a2b: mov    0xc(%rdx),%r11d    ;*getfield size
                                                                    ; - com.google.re2j.Machine$Queue::contains@9 (line 49)
                                                                    ; - com.google.re2j.Machine::add@9 (line 344)
  0.30%    0.17%      0x00007fe5849f1a2f: lea    (%r12,%r8,8),%rbx
  0.09%    0.11%      0x00007fe5849f1a33: mov    0x30(%rsp),%edi
  0.34%    0.41%      0x00007fe5849f1a37: mov    0x10(%rbx,%rdi,4),%ebp  ;*iaload
                                                                    ; - com.google.re2j.Machine$Queue::contains@5 (line 48)
                                                                    ; - com.google.re2j.Machine::add@9 (line 344)
  0.13%    0.07%      0x00007fe5849f1a3b: cmp    %r11d,%ebp
                  ╭   0x00007fe5849f1a3e: jl     0x00007fe5849f1b92  ;*invokevirtual contains
                  │                                                 ; - com.google.re2j.Machine::add@9 (line 344)
  0.37%    0.20%  │↗  0x00007fe5849f1a44: mov    %r11d,%r10d
  0.09%    0.08%  ││  0x00007fe5849f1a47: inc    %r10d
  0.26%    0.36%  ││  0x00007fe5849f1a4a: mov    %r10d,0xc(%rdx)    ;*putfield size
                  ││                                                ; - com.google.re2j.Machine$Queue::add@8 (line 59)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.04%    0.05%  ││  0x00007fe5849f1a4e: mov    0x30(%rsp),%edi
  0.28%    0.10%  ││  0x00007fe5849f1a52: cmp    %ecx,%edi
                  ││  0x00007fe5849f1a54: jae    0x00007fe5849f1c75
  0.10%    0.10%  ││  0x00007fe5849f1a5a: mov    %r11d,0x10(%rbx,%rdi,4)  ;*iastore
                  ││                                                ; - com.google.re2j.Machine$Queue::add@18 (line 60)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.24%    0.33%  ││  0x00007fe5849f1a5f: mov    0xc(%r12,%r9,8),%r8d  ; implicit exception: dispatches to 0x00007fe5849f22c9
  0.04%    0.05%  ││  0x00007fe5849f1a64: cmp    %r8d,%r11d
                  ││  0x00007fe5849f1a67: jae    0x00007fe5849f1cbd  ;*aaload
                  ││                                                ; - com.google.re2j.Machine$Queue::add@24 (line 61)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.29%    0.09%  ││  0x00007fe5849f1a6d: lea    (%r12,%r9,8),%r10  ;*getfield dense
                  ││                                                ; - com.google.re2j.Machine$Queue::contains@18 (line 52)
                  ││                                                ; - com.google.re2j.Machine::add@9 (line 344)
  0.11%    0.11%  ││  0x00007fe5849f1a71: mov    %r10,0x40(%rsp)
  0.30%    0.34%  ││  0x00007fe5849f1a76: lea    0x10(%r10,%r11,4),%rbp
  0.03%    0.05%  ││  0x00007fe5849f1a7b: mov    0x0(%rbp),%r10d    ;*aaload
                  ││                                                ; - com.google.re2j.Machine$Queue::add@24 (line 61)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.31%    0.25%  ││  0x00007fe5849f1a7f: test   %r10d,%r10d
                  ││  0x00007fe5849f1a82: je     0x00007fe5849f1bc9  ;*ifnonnull
                  ││                                                ; - com.google.re2j.Machine$Queue::add@27 (line 62)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.09%    0.13%  ││  0x00007fe5849f1a88: lea    (%r12,%r10,8),%rbx  ;*aload_3
                  ││                                                ; - com.google.re2j.Machine$Queue::add@45 (line 65)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.29%    0.25%  ││  0x00007fe5849f1a8c: mov    0x30(%rsp),%r11d
  0.02%    0.03%  ││  0x00007fe5849f1a91: mov    %r11d,0xc(%rbx)    ;*putfield pc
                  ││                                                ; - com.google.re2j.Machine$Queue::add@52 (line 66)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.36%    0.32%  ││  0x00007fe5849f1a95: mov    0x8(%rsp),%r10
  0.12%    0.16%  ││  0x00007fe5849f1a9a: mov    0x14(%r10),%r10d   ;*getfield prog
                  ││                                                ; - com.google.re2j.Machine::add@26 (line 348)
  0.35%    0.38%  ││  0x00007fe5849f1a9e: mov    %r12d,0x10(%rbx)   ;*putfield thread
                  ││                                                ; - com.google.re2j.Machine$Queue::add@47 (line 65)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.06%    0.08%  ││  0x00007fe5849f1aa2: mov    0x14(%r12,%r10,8),%ebp  ;*getfield inst
                  ││                                                ; - com.google.re2j.Prog::getInst@1 (line 29)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 348)
                  ││                                                ; implicit exception: dispatches to 0x00007fe5849f22dd
  0.36%    0.48%  ││  0x00007fe5849f1aa7: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007fe5849f22f1
  0.41%    0.48%  ││  0x00007fe5849f1aac: cmp    $0xf8002f22,%r11d  ;   {metadata(&apos;java/util/ArrayList&apos;)}
                  ││  0x00007fe5849f1ab3: jne    0x00007fe5849f1d95
  0.41%    0.41%  ││  0x00007fe5849f1ab9: lea    (%r12,%rbp,8),%r10  ;*invokeinterface get
                  ││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.02%    0.03%  ││  0x00007fe5849f1abd: mov    0x10(%r10),%ebp    ;*getfield size
                  ││                                                ; - java.util.ArrayList::rangeCheck@2 (line 652)
                  ││                                                ; - java.util.ArrayList::get@2 (line 429)
                  ││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.23%    0.17%  ││  0x00007fe5849f1ac1: mov    0x30(%rsp),%r11d
  0.06%    0.05%  ││  0x00007fe5849f1ac6: cmp    %ebp,%r11d
                  ││  0x00007fe5849f1ac9: jge    0x00007fe5849f1df9  ;*if_icmplt
                  ││                                                ; - java.util.ArrayList::rangeCheck@5 (line 652)
                  ││                                                ; - java.util.ArrayList::get@2 (line 429)
                  ││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.43%    0.46%  ││  0x00007fe5849f1acf: mov    0x14(%r10),%ebp    ;*getfield elementData
                  ││                                                ; - java.util.ArrayList::elementData@1 (line 418)
                  ││                                                ; - java.util.ArrayList::get@7 (line 431)
                  ││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.01%    0.03%  ││  0x00007fe5849f1ad3: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007fe5849f2305
  0.83%    0.60%  ││  0x00007fe5849f1ad8: mov    0x30(%rsp),%r8d
  0.04%    0.04%  ││  0x00007fe5849f1add: cmp    %r11d,%r8d
                  ││  0x00007fe5849f1ae0: jae    0x00007fe5849f1d05
  0.63%    0.49%  ││  0x00007fe5849f1ae6: lea    (%r12,%rbp,8),%r10
  0.01%    0.02%  ││  0x00007fe5849f1aea: mov    0x10(%r10,%r8,4),%ebp  ;*aaload
                  ││                                                ; - java.util.ArrayList::elementData@5 (line 418)
                  ││                                                ; - java.util.ArrayList::get@7 (line 431)
                  ││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.27%    0.05%  ││  0x00007fe5849f1aef: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007fe5849f2319
  0.90%    0.92%  ││  0x00007fe5849f1af4: cmp    $0xf8019844,%r10d  ;   {metadata(&apos;com/google/re2j/Inst&apos;)}
                  ││  0x00007fe5849f1afb: jne    0x00007fe5849f1e84
  0.47%    0.43%  ││  0x00007fe5849f1b01: lea    (%r12,%rbp,8),%r10  ;*checkcast
                  ││                                                ; - com.google.re2j.Prog::getInst@10 (line 29)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.01%           ││  0x00007fe5849f1b05: mov    %r10,0x38(%rsp)
  0.23%    0.00%  ││  0x00007fe5849f1b0a: mov    0x14(%r10),%r11d   ;*getfield op
                  ││                                                ; - com.google.re2j.Inst::op@4 (line 44)
                  ││                                                ; - com.google.re2j.Machine::add@40 (line 349)
  0.02%    0.05%  ││  0x00007fe5849f1b0e: mov    0xc(%r12,%r11,8),%ebp  ;*getfield ordinal
                  ││                                                ; - java.lang.Enum::ordinal@1 (line 103)
                  ││                                                ; - com.google.re2j.Inst::op@7 (line 44)
                  ││                                                ; - com.google.re2j.Machine::add@40 (line 349)
                  ││                                                ; implicit exception: dispatches to 0x00007fe5849f2349
  1.69%    1.56%  ││  0x00007fe5849f1b13: cmp    $0xb,%ebp
                  ││  0x00007fe5849f1b16: jae    0x00007fe5849f1d35  ;*iaload
                  ││                                                ; - com.google.re2j.Inst::op@10 (line 44)
                  ││                                                ; - com.google.re2j.Machine::add@40 (line 349)
  0.42%    0.42%  ││  0x00007fe5849f1b1c: mov    %r11,%r10
  0.12%    0.20%  ││  0x00007fe5849f1b1f: shl    $0x3,%r10
  0.01%    0.00%  ││  0x00007fe5849f1b23: movabs $0x76dd29db0,%r11  ;   {oop(a &apos;com/google/re2j/Inst$Op&apos;)}
  0.15%    0.14%  ││  0x00007fe5849f1b2d: movabs $0x76dd36728,%r8   ;   {oop([I)}
  0.43%    0.53%  ││  0x00007fe5849f1b37: mov    0x10(%r8,%rbp,4),%r8d
  2.09%    1.95%  ││  0x00007fe5849f1b3c: dec    %r8d
  0.57%    0.51%  ││  0x00007fe5849f1b3f: cmp    $0x3,%r8d
  0.57%    0.57%  ││  0x00007fe5849f1b43: cmovb  %r11,%r10          ;*invokevirtual ordinal
                  ││                                                ; - com.google.re2j.Machine::add@43 (line 349)
  1.16%    1.12%  ││  0x00007fe5849f1b47: mov    0xc(%r10),%ebp     ;*getfield ordinal
                  ││                                                ; - java.lang.Enum::ordinal@1 (line 103)
                  ││                                                ; - com.google.re2j.Machine::add@43 (line 349)
  2.91%    2.70%  ││  0x00007fe5849f1b4b: cmp    $0xb,%ebp
                  ││  0x00007fe5849f1b4e: jae    0x00007fe5849f1d5d
  0.51%    0.40%  ││  0x00007fe5849f1b54: movabs $0x76dd58e08,%r10  ;   {oop([I)}
                  ││  0x00007fe5849f1b5e: mov    0x10(%r10,%rbp,4),%r11d  ;*iaload
                  ││                                                ; - com.google.re2j.Machine::add@46 (line 349)
  2.72%    1.91%  ││  0x00007fe5849f1b63: mov    %r11d,%r8d
                  ││  0x00007fe5849f1b66: dec    %r8d
  0.63%    0.41%  ││  0x00007fe5849f1b69: cmp    $0xb,%r8d
                  ││  0x00007fe5849f1b6d: jae    0x00007fe5849f1d85  ;*tableswitch
                  ││                                                ; - com.google.re2j.Machine::add@47 (line 349)
  0.65%    0.26%  ││  0x00007fe5849f1b73: mov    0x38(%rsp),%r10
  0.03%    0.05%  ││  0x00007fe5849f1b78: mov    0xc(%r10),%ecx     ;*getfield out
                  ││                                                ; - com.google.re2j.Machine::add@249 (line 376)
                  ││  0x00007fe5849f1b7c: mov    0x10(%r10),%r10d   ;*getfield arg
                  ││                                                ; - com.google.re2j.Machine::add@217 (line 373)
  0.01%    0.01%  ││  0x00007fe5849f1b80: movslq %r11d,%r11
  0.69%    0.28%  ││  0x00007fe5849f1b83: movabs $0x7fe5849f1960,%r8  ;   {section_word}
  0.06%    0.06%  ││  0x00007fe5849f1b8d: jmpq   *-0x8(%r8,%r11,8)  ;*tableswitch
                  ││                                                ; - com.google.re2j.Machine::add@47 (line 349)
  0.05%    0.01%  ↘│  0x00007fe5849f1b92: mov    0xc(%r12,%r9,8),%r10d  ; implicit exception: dispatches to 0x00007fe5849f23c1
  0.02%    0.01%   │  0x00007fe5849f1b97: cmp    %r10d,%ebp
                   │  0x00007fe5849f1b9a: jae    0x00007fe5849f1e45
  0.04%    0.07%   │  0x00007fe5849f1ba0: lea    (%r12,%r9,8),%r10
  0.02%    0.00%   │  0x00007fe5849f1ba4: mov    0x10(%r10,%rbp,4),%r10d  ;*aaload
                   │                                                ; - com.google.re2j.Machine$Queue::contains@22 (line 52)
                   │                                                ; - com.google.re2j.Machine::add@9 (line 344)
  0.04%    0.01%   │  0x00007fe5849f1ba9: mov    0xc(%r12,%r10,8),%ebp  ;*getfield pc
                   │                                                ; - com.google.re2j.Machine$Queue::contains@29 (line 53)
                   │                                                ; - com.google.re2j.Machine::add@9 (line 344)
                   │                                                ; implicit exception: dispatches to 0x00007fe5849f23e1
  0.04%    0.06%   │  0x00007fe5849f1bae: cmp    %edi,%ebp
                   ╰  0x00007fe5849f1bb0: jne    0x00007fe5849f1a44  ;*if_icmpne
                                                                    ; - com.google.re2j.Machine$Queue::contains@33 (line 53)
                                                                    ; - com.google.re2j.Machine::add@9 (line 344)
                      0x00007fe5849f1bb6: mov    $0xffffff65,%esi
                      0x00007fe5849f1bbb: mov    %edi,0x2c(%rsp)
                      0x00007fe5849f1bbf: callq  0x00007fe5847b21a0  ; OopMap{[112]=Oop [8]=Oop [32]=Oop [72]=Oop off=516}
                                                                    ;*if_icmpne
....................................................................................................
 29.06%   25.70%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 545 (369 bytes) 

                           0x00007fe5849fdf3a: mov    %r8d,0x24(%rsp)
                           0x00007fe5849fdf3f: mov    %ecx,0x30(%rsp)
                           0x00007fe5849fdf43: mov    %edx,0x34(%rsp)
                           0x00007fe5849fdf47: callq  0x00007fe5847b21a0  ; OopMap{rbp=NarrowOop [8]=Oop [24]=Oop [32]=NarrowOop [36]=NarrowOop [40]=Oop [52]=NarrowOop off=1612}
                                                                         ;*invokeinterface add
                                                                         ; - com.google.re2j.Machine::step@279 (line 297)
                                                                         ;   {runtime_call}
                           0x00007fe5849fdf4c: callq  0x00007fe599645c50  ;*invokeinterface add
                                                                         ; - com.google.re2j.Machine::step@279 (line 297)
                                                                         ;   {runtime_call}
  0.20%    0.26%      ↗    0x00007fe5849fdf51: mov    0x30(%rsp),%r8d
  0.13%    0.16%      │    0x00007fe5849fdf56: cmp    $0x3f,%r10d
                      │    0x00007fe5849fdf5a: jge    0x00007fe5849fe985  ;*if_icmpge
                      │                                                  ; - com.google.re2j.Unicode::simpleFold@48 (line 215)
                      │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 67)
                      │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
  0.00%    0.02%      │    0x00007fe5849fdf60: cmp    $0x3f,%r10d
                      │    0x00007fe5849fdf64: jae    0x00007fe5849fe7d1
  0.01%               │    0x00007fe5849fdf6a: mov    0x10(%r9,%r10,4),%ebp  ;*aaload
                      │                                                  ; - com.google.re2j.Unicode::simpleFold@55 (line 215)
                      │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 67)
                      │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
  0.26%    0.24%      │    0x00007fe5849fdf6f: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007fe5849fef61
  0.22%    0.17%      │    0x00007fe5849fdf74: test   %r11d,%r11d
                      │    0x00007fe5849fdf77: jbe    0x00007fe5849fe81d
  0.09%    0.06%      │    0x00007fe5849fdf7d: mov    0x10(%r12,%rbp,8),%ebp  ;*iaload
                      │                                                  ; - com.google.re2j.Unicode::simpleFold@57 (line 215)
                      │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 67)
                      │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
  0.01%               │    0x00007fe5849fdf82: cmp    0x20(%rsp),%ebp
                      │    0x00007fe5849fdf86: je     0x00007fe5849fe9d1  ;*if_icmpne
                      │                                                  ; - com.google.re2j.Unicode::simpleFold@59 (line 215)
                      │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 67)
                      │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
  0.38%    0.38%      │    0x00007fe5849fdf8c: mov    0x20(%rsp),%r8d
  0.02%    0.01%      │    0x00007fe5849fdf91: cmp    $0x7f,%r8d
                      │    0x00007fe5849fdf95: jg     0x00007fe5849fea0d  ;*if_icmpgt
                      │                                                  ; - com.google.re2j.Unicode::toLower@3 (line 177)
                      │                                                  ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                      │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 67)
                      │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
  0.00%               │    0x00007fe5849fdf9b: cmp    $0x41,%r8d
                      │    0x00007fe5849fdf9f: jl     0x00007fe5849fe935  ;*if_icmpgt
                      │                                                  ; - com.google.re2j.Unicode::toLower@9 (line 178)
                      │                                                  ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                      │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 67)
                      │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
  0.01%               │    0x00007fe5849fdfa5: cmp    $0x5a,%r8d
                  ╭   │    0x00007fe5849fdfa9: jg     0x00007fe5849fdfb7  ;*if_icmpgt
                  │   │                                                  ; - com.google.re2j.Unicode::toLower@15 (line 178)
                  │   │                                                  ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                  │   │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 67)
                  │   │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
                  │   │    0x00007fe5849fdfab: mov    %r8d,%r10d
                  │   │    0x00007fe5849fdfae: add    $0x20,%r10d        ;*iinc
                  │   │                                                  ; - com.google.re2j.Unicode::toLower@18 (line 179)
                  │   │                                                  ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                  │   │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 67)
                  │   │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
                  │   │    0x00007fe5849fdfb2: cmp    %r8d,%r10d
                  │╭  │    0x00007fe5849fdfb5: jne    0x00007fe5849fdfd2  ;*if_icmpeq
                  ││  │                                                  ; - com.google.re2j.Unicode::simpleFold@77 (line 224)
                  ││  │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 67)
                  ││  │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
  0.35%    0.34%  ↘│  │    0x00007fe5849fdfb7: cmp    $0x61,%r8d
                   │  │    0x00007fe5849fdfbb: jl     0x00007fe5849fec69  ;*if_icmpgt
                   │  │                                                  ; - com.google.re2j.Unicode::toUpper@9 (line 167)
                   │  │                                                  ; - com.google.re2j.Unicode::simpleFold@83 (line 227)
                   │  │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 67)
                   │  │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
  0.01%    0.01%   │  │    0x00007fe5849fdfc1: cmp    $0x7a,%r8d
                   │  │    0x00007fe5849fdfc5: jg     0x00007fe5849fecb5  ;*if_icmpgt
                   │  │                                                  ; - com.google.re2j.Unicode::toUpper@15 (line 167)
                   │  │                                                  ; - com.google.re2j.Unicode::simpleFold@83 (line 227)
                   │  │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 67)
                   │  │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
  0.00%    0.00%   │  │    0x00007fe5849fdfcb: mov    %r8d,%r10d
  0.01%            │  │    0x00007fe5849fdfce: add    $0xffffffe0,%r10d  ; OopMap{r9=Oop rdi=NarrowOop rdx=NarrowOop rsi=NarrowOop rax=Oop r13=Oop [8]=Oop [24]=Oop [40]=Oop off=1746}
                   │  │                                                  ;*goto
                   │  │                                                  ; - com.google.re2j.Inst::matchRune@54 (line 67)
                   │  │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
  0.25%    0.31%   ↘  │    0x00007fe5849fdfd2: test   %eax,0x15f5a028(%rip)        # 0x00007fe59a958000
                      │                                                  ;*goto
                      │                                                  ; - com.google.re2j.Inst::matchRune@54 (line 67)
                      │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
                      │                                                  ;   {poll}
  0.00%    0.02%      │    0x00007fe5849fdfd8: cmp    %r14d,%r10d
                      │    0x00007fe5849fdfdb: je     0x00007fe5849fde2c  ;*if_icmpeq
                      │                                                  ; - com.google.re2j.Inst::matchRune@39 (line 66)
                      │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
                      │    0x00007fe5849fdfe1: mov    %r14d,%r11d        ;*iload_1
                      │                                                  ; - com.google.re2j.Inst::matchRune@42 (line 68)
                      │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
  0.00%    0.02%      │    0x00007fe5849fdfe4: cmp    %r10d,%ecx
                    ╭ │    0x00007fe5849fdfe7: je     0x00007fe5849fe0be  ;*if_icmpne
                    │ │                                                  ; - com.google.re2j.Inst::matchRune@44 (line 68)
                    │ │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
  0.17%    0.18%    │ │    0x00007fe5849fdfed: mov    %r10d,0x20(%rsp)
  0.20%    0.32%    │ │    0x00007fe5849fdff2: mov    %r11d,%r14d
                    │ │    0x00007fe5849fdff5: mov    $0x1f,%ebx
  0.01%    0.01%    │ │    0x00007fe5849fdffa: mov    $0x1f,%r8d
  0.15%    0.18%    │ │    0x00007fe5849fe000: xor    %r10d,%r10d
  0.29%    0.46%    │ │    0x00007fe5849fe003: mov    $0x3f,%r11d
                    │ │    0x00007fe5849fe009: mov    %r10d,0x30(%rsp)
  0.00%    0.01%    │ │    0x00007fe5849fe00e: vmovd  %r11d,%xmm1
  0.11%    0.29%    │╭│    0x00007fe5849fe013: jmp    0x00007fe5849fe05c
  0.02%    0.05%    │││ ↗  0x00007fe5849fe015: inc    %r8d               ;*iadd
                    │││ │                                                ; - com.google.re2j.Unicode::simpleFold@33 (line 210)
                    │││ │                                                ; - com.google.re2j.Inst::matchRune@50 (line 67)
                    │││ │                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.04%    0.04%    │││ │  0x00007fe5849fe018: mov    %r8d,0x30(%rsp)
  0.05%    0.14%    │││ │  0x00007fe5849fe01d: vmovd  %xmm1,%r8d         ; OopMap{r9=Oop rdi=NarrowOop rdx=NarrowOop rsi=NarrowOop rax=Oop r13=Oop [8]=Oop [24]=Oop [40]=Oop off=1826}
                    │││ │                                                ;*goto
                    │││ │                                                ; - com.google.re2j.Unicode::simpleFold@40 (line 214)
                    │││ │                                                ; - com.google.re2j.Inst::matchRune@50 (line 67)
                    │││ │                                                ; - com.google.re2j.Machine::step@308 (line 306)
  1.17%    1.60%    │││↗│  0x00007fe5849fe022: test   %eax,0x15f59fd8(%rip)        # 0x00007fe59a958000
                    │││││                                                ;*goto
                    │││││                                                ; - com.google.re2j.Unicode::simpleFold@40 (line 214)
                    │││││                                                ; - com.google.re2j.Inst::matchRune@50 (line 67)
                    │││││                                                ; - com.google.re2j.Machine::step@308 (line 306)
                    │││││                                                ;   {poll}
  0.30%    0.68%    │││││  0x00007fe5849fe028: mov    0x30(%rsp),%r10d
  0.37%    0.52%    │││││  0x00007fe5849fe02d: cmp    %r8d,%r10d
                    ││╰││  0x00007fe5849fe030: jge    0x00007fe5849fdf51  ;*if_icmpge
                    ││ ││                                                ; - com.google.re2j.Unicode::simpleFold@9 (line 207)
                    ││ ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 67)
                    ││ ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.48%    0.65%    ││ ││  0x00007fe5849fe036: mov    %r8d,%r10d
  0.66%    0.99%    ││ ││  0x00007fe5849fe039: sub    0x30(%rsp),%r10d   ;*isub
                    ││ ││                                                ; - com.google.re2j.Unicode::simpleFold@15 (line 208)
                    ││ ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 67)
                    ││ ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.36%    0.50%    ││ ││  0x00007fe5849fe03e: mov    %r10d,%ebx
  0.35%    0.47%    ││ ││  0x00007fe5849fe041: sar    $0x1f,%ebx
  0.42%    0.73%    ││ ││  0x00007fe5849fe044: shr    $0x1f,%ebx
  0.69%    1.13%    ││ ││  0x00007fe5849fe047: add    %r10d,%ebx
  0.32%    0.40%    ││ ││  0x00007fe5849fe04a: sar    %ebx               ;*idiv
                    ││ ││                                                ; - com.google.re2j.Unicode::simpleFold@17 (line 208)
                    ││ ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 67)
                    ││ ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.40%    0.54%    ││ ││  0x00007fe5849fe04c: mov    0x30(%rsp),%r11d
  0.46%    0.65%    ││ ││  0x00007fe5849fe051: add    %ebx,%r11d         ;*iadd
                    ││ ││                                                ; - com.google.re2j.Unicode::simpleFold@18 (line 208)
                    ││ ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 67)
                    ││ ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.85%    1.01%    ││ ││  0x00007fe5849fe054: vmovd  %r8d,%xmm1
  0.33%    0.45%    ││ ││  0x00007fe5849fe059: mov    %r11d,%r8d         ;*idiv
                    ││ ││                                                ; - com.google.re2j.Unicode::simpleFold@17 (line 208)
                    ││ ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 67)
                    ││ ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.56%    0.81%    │↘ ││  0x00007fe5849fe05c: cmp    $0x3f,%r8d
                    │  ││  0x00007fe5849fe060: jae    0x00007fe5849fe46d
  0.52%    0.72%    │  ││  0x00007fe5849fe066: movslq 0x30(%rsp),%r10
  0.89%    1.36%    │  ││  0x00007fe5849fe06b: movslq %ebx,%r11
  0.40%    0.58%    │  ││  0x00007fe5849fe06e: add    %r11,%r10
  0.52%    0.76%    │  ││  0x00007fe5849fe071: mov    0x10(%r9,%r10,4),%ebp  ;*aaload
                    │  ││                                                ; - com.google.re2j.Unicode::simpleFold@24 (line 209)
                    │  ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 67)
                    │  ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.65%    0.81%    │  ││  0x00007fe5849fe076: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007fe5849fee5d
  2.38%    3.46%    │  ││  0x00007fe5849fe07b: test   %r11d,%r11d
                    │  ││  0x00007fe5849fe07e: jbe    0x00007fe5849fe4c1  ;*iaload
                    │  ││                                                ; - com.google.re2j.Unicode::simpleFold@26 (line 209)
                    │  ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 67)
                    │  ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  1.05%    1.39%    │  ││  0x00007fe5849fe084: mov    0x10(%r12,%rbp,8),%r10d
  0.50%    0.65%    │  ││  0x00007fe5849fe089: cmp    0x20(%rsp),%r10d
                    │  ╰│  0x00007fe5849fe08e: jge    0x00007fe5849fe022  ;*if_icmpge
                    │   │                                                ; - com.google.re2j.Unicode::simpleFold@28 (line 209)
                    │   │                                                ; - com.google.re2j.Inst::matchRune@50 (line 67)
                    │   │                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.55%    0.66%    │   ╰  0x00007fe5849fe090: jmp    0x00007fe5849fe015
  0.01%             │      0x00007fe5849fe092: xor    %r11d,%r11d
                    │      0x00007fe5849fe095: mov    0x20(%rsp),%ecx
                    │      0x00007fe5849fe099: mov    0x9c(%rsp),%r14d
  0.02%             │      0x00007fe5849fe0a1: jmpq   0x00007fe5849fdaca
                    │      0x00007fe5849fe0a6: mov    0xa0(%rsp),%edx
                    │      0x00007fe5849fe0ad: test   %edx,%edx
                    │      0x00007fe5849fe0af: jne    0x00007fe5849fdc25  ;*ifne
                    │                                                    ; - com.google.re2j.Machine::step@168 (line 282)
                    │      0x00007fe5849fe0b5: mov    0x20(%rsp),%ecx
                    │      0x00007fe5849fe0b9: jmpq   0x00007fe5849fd987
  0.03%    0.02%    ↘      0x00007fe5849fe0be: mov    %ecx,0x20(%rsp)
  0.06%    0.07%           0x00007fe5849fe0c2: mov    %edx,%r8d
                           0x00007fe5849fe0c5: jmpq   0x00007fe5849fd9d4
                           0x00007fe5849fe0ca: mov    %r11d,%ebx
                           0x00007fe5849fe0cd: sar    %ebx
                           0x00007fe5849fe0cf: add    %r11d,%ebx         ;*iadd
                                                                         ; - java.util.ArrayList::grow@10 (line 255)
                                                                         ; - java.util.ArrayList::ensureExplicitCapacity@22 (line 235)
                                                                         ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                                         ; - java.util.ArrayList::add@7 (line 458)
                                                                         ; - com.google.re2j.Machine::step@410 (line 329)
                           0x00007fe5849fe0d2: mov    %ebx,%r8d
....................................................................................................
 18.35%   25.32%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 545 (494 bytes) 

                                                                     ;*invokespecial add
                                                                     ; - com.google.re2j.Machine::step@394 (line 325)
                                                                     ;   {optimized virtual_call}
                       0x00007fe5849fda00: test   %rax,%rax
                       0x00007fe5849fda03: je     0x00007fe5849fe092
                       0x00007fe5849fda09: mov    %rax,0x50(%rsp)
                       0x00007fe5849fda0e: mov    0x20(%rsp),%ecx
                       0x00007fe5849fda12: mov    0x94(%rsp),%r10d
                       0x00007fe5849fda1a: mov    0x9c(%rsp),%r14d   ;*aload
                                                                     ; - com.google.re2j.Machine::step@399 (line 327)
  0.36%    0.40%       0x00007fe5849fda22: mov    0x28(%rsp),%r11
                       0x00007fe5849fda27: mov    0x20(%r11),%ebp    ;*getfield pool
                                                                     ; - com.google.re2j.Machine::step@405 (line 329)
           0.00%       0x00007fe5849fda2b: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007fe5849fee8d
  0.01%                0x00007fe5849fda30: cmp    $0xf8002f22,%r11d  ;   {metadata(&apos;java/util/ArrayList&apos;)}
                       0x00007fe5849fda37: jne    0x00007fe5849fe58d
  0.37%    0.34%       0x00007fe5849fda3d: lea    (%r12,%rbp,8),%r9  ;*invokeinterface add
                                                                     ; - com.google.re2j.Machine::step@410 (line 329)
                       0x00007fe5849fda41: mov    0x14(%r9),%edx     ;*getfield elementData
                                                                     ; - java.util.ArrayList::ensureCapacityInternal@1 (line 223)
                                                                     ; - java.util.ArrayList::add@7 (line 458)
                                                                     ; - com.google.re2j.Machine::step@410 (line 329)
                       0x00007fe5849fda45: mov    0x10(%r9),%ebp     ;*getfield size
                                                                     ; - java.util.ArrayList::add@16 (line 459)
                                                                     ; - com.google.re2j.Machine::step@410 (line 329)
  0.00%    0.00%       0x00007fe5849fda49: mov    %ebp,%ebx
  0.41%    0.42%       0x00007fe5849fda4b: inc    %ebx               ;*iadd
                                                                     ; - java.util.ArrayList::add@21 (line 459)
                                                                     ; - com.google.re2j.Machine::step@410 (line 329)
                       0x00007fe5849fda4d: cmp    $0xed9f0db7,%edx   ;   {oop(a &apos;java/lang/Object&apos;[0] )}
                       0x00007fe5849fda53: je     0x00007fe5849fe373  ;*if_acmpne
                                                                     ; - java.util.ArrayList::ensureCapacityInternal@7 (line 223)
                                                                     ; - java.util.ArrayList::add@7 (line 458)
                                                                     ; - com.google.re2j.Machine::step@410 (line 329)
                       0x00007fe5849fda59: mov    %ebx,%esi          ;*aload_0
                                                                     ; - java.util.ArrayList::ensureCapacityInternal@17 (line 227)
                                                                     ; - java.util.ArrayList::add@7 (line 458)
                                                                     ; - com.google.re2j.Machine::step@410 (line 329)
           0.00%       0x00007fe5849fda5b: mov    0xc(%r9),%r8d      ;*getfield modCount
                                                                     ; - java.util.ArrayList::ensureExplicitCapacity@2 (line 231)
                                                                     ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                                     ; - java.util.ArrayList::add@7 (line 458)
                                                                     ; - com.google.re2j.Machine::step@410 (line 329)
  0.44%    0.32%       0x00007fe5849fda5f: inc    %r8d
                       0x00007fe5849fda62: mov    %r8d,0xc(%r9)      ;*putfield modCount
                                                                     ; - java.util.ArrayList::ensureExplicitCapacity@7 (line 231)
                                                                     ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                                     ; - java.util.ArrayList::add@7 (line 458)
                                                                     ; - com.google.re2j.Machine::step@410 (line 329)
  0.00%                0x00007fe5849fda66: mov    0xc(%r12,%rdx,8),%r11d  ;*arraylength
                                                                     ; - java.util.ArrayList::ensureExplicitCapacity@15 (line 234)
                                                                     ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                                     ; - java.util.ArrayList::add@7 (line 458)
                                                                     ; - com.google.re2j.Machine::step@410 (line 329)
                                                                     ; implicit exception: dispatches to 0x00007fe5849fee9d
  0.01%    0.01%       0x00007fe5849fda6b: mov    %esi,%edi
  0.38%    0.40%       0x00007fe5849fda6d: sub    %r11d,%edi
  0.00%                0x00007fe5849fda70: test   %edi,%edi
                       0x00007fe5849fda72: jg     0x00007fe5849fe0ca  ;*ifle
                                                                     ; - java.util.ArrayList::ensureExplicitCapacity@17 (line 234)
                                                                     ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                                     ; - java.util.ArrayList::add@7 (line 458)
                                                                     ; - com.google.re2j.Machine::step@410 (line 329)
  0.00%                0x00007fe5849fda78: mov    %ebx,0x10(%r9)     ;*putfield size
                                                                     ; - java.util.ArrayList::add@22 (line 459)
                                                                     ; - com.google.re2j.Machine::step@410 (line 329)
                       0x00007fe5849fda7c: mov    %rdx,%r11
  0.41%    0.25%       0x00007fe5849fda7f: shl    $0x3,%r11          ;*return
                                                                     ; - java.util.ArrayList::ensureExplicitCapacity@25 (line 236)
                                                                     ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                                     ; - java.util.ArrayList::add@7 (line 458)
                                                                     ; - com.google.re2j.Machine::step@410 (line 329)
                       0x00007fe5849fda83: mov    0xc(%r11),%r9d
                       0x00007fe5849fda87: cmp    %r9d,%ebp
                       0x00007fe5849fda8a: jae    0x00007fe5849fe549
           0.01%       0x00007fe5849fda90: mov    0x8(%r11),%r9d
  0.35%    0.33%       0x00007fe5849fda94: cmp    $0xf80022f5,%r9d   ;   {metadata(&apos;java/lang/Object&apos;[])}
                       0x00007fe5849fda9b: jne    0x00007fe5849fe5c9
  0.02%    0.00%       0x00007fe5849fdaa1: lea    0x10(%r11,%rbp,4),%r10
                       0x00007fe5849fdaa6: mov    0x50(%rsp),%r11
           0.01%       0x00007fe5849fdaab: mov    %r11,%r8
  0.35%    0.27%       0x00007fe5849fdaae: shr    $0x3,%r8
  0.00%    0.00%       0x00007fe5849fdab2: mov    %r8d,(%r10)
                       0x00007fe5849fdab5: shr    $0x9,%r10
  0.01%                0x00007fe5849fdab9: movabs $0x7fe5801db000,%r11
  0.35%    0.33%       0x00007fe5849fdac3: mov    %r12b,(%r11,%r10,1)  ;*aastore
                                                                     ; - java.util.ArrayList::add@26 (line 459)
                                                                     ; - com.google.re2j.Machine::step@410 (line 329)
  0.02%    0.03%       0x00007fe5849fdac7: xor    %r11d,%r11d        ; OopMap{[8]=Oop [24]=Oop [40]=Oop off=458}
                                                                     ;*goto
                                                                     ; - com.google.re2j.Machine::step@419 (line 264)
  0.10%    0.06%   ↗   0x00007fe5849fdaca: test   %eax,0x15f5a530(%rip)        # 0x00007fe59a958000
                   │                                                 ;*goto
                   │                                                 ; - com.google.re2j.Machine::step@419 (line 264)
                   │                                                 ;   {poll}
  0.07%    0.12%   │   0x00007fe5849fdad0: mov    0x8(%rsp),%r10
  0.43%    0.37%   │   0x00007fe5849fdad5: mov    0xc(%r10),%r11d
  0.17%    0.13%   │   0x00007fe5849fdad9: cmp    %r11d,%r14d
                   │   0x00007fe5849fdadc: jge    0x00007fe5849fdd16
  0.10%    0.06%   │   0x00007fe5849fdae2: mov    %ecx,0x20(%rsp)
  0.07%    0.09%   │   0x00007fe5849fdae6: mov    %r14d,%r10d        ;*aload_1
                   │                                                 ; - com.google.re2j.Machine::step@21 (line 265)
  0.45%    0.34%   │   0x00007fe5849fdae9: mov    0x8(%rsp),%r11
  0.19%    0.09%   │   0x00007fe5849fdaee: mov    0x10(%r11),%r8d    ;*getfield dense
                   │                                                 ; - com.google.re2j.Machine::step@22 (line 265)
  0.21%    0.24%   │   0x00007fe5849fdaf2: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x00007fe5849fee25
  0.23%    0.18%   │   0x00007fe5849fdaf7: cmp    %r11d,%r10d
                   │   0x00007fe5849fdafa: jae    0x00007fe5849fe3e4
  0.31%    0.43%   │   0x00007fe5849fdb00: lea    (%r12,%r8,8),%r11
  0.12%    0.09%   │   0x00007fe5849fdb04: mov    0x10(%r11,%r10,4),%r9d  ;*aaload
                   │                                                 ; - com.google.re2j.Machine::step@27 (line 265)
  0.11%    0.16%   │   0x00007fe5849fdb09: mov    0x10(%r12,%r9,8),%r11d  ;*getfield thread
                   │                                                 ; - com.google.re2j.Machine::step@40 (line 269)
                   │                                                 ; implicit exception: dispatches to 0x00007fe5849feebd
  0.28%    0.25%   │   0x00007fe5849fdb0e: mov    %r10d,%r14d
  0.29%    0.51%   │   0x00007fe5849fdb11: inc    %r14d              ;*iadd
                   │                                                 ; - com.google.re2j.Machine::step@241 (line 293)
  0.11%    0.09%   │   0x00007fe5849fdb14: test   %r11d,%r11d
                  ╭│   0x00007fe5849fdb17: jne    0x00007fe5849fdb24  ;*ifnonnull
                  ││                                                 ; - com.google.re2j.Machine::step@47 (line 270)
  0.08%    0.11%  ││   0x00007fe5849fdb19: mov    0x24(%rsp),%r11d
  0.06%    0.13%  ││   0x00007fe5849fdb1e: mov    0x20(%rsp),%ecx
  0.05%    0.08%  │╰   0x00007fe5849fdb22: jmp    0x00007fe5849fdaca
  0.06%    0.21%  ↘    0x00007fe5849fdb24: mov    0x24(%rsp),%r9d
  0.02%    0.02%       0x00007fe5849fdb29: test   %r9d,%r9d
                       0x00007fe5849fdb2c: jne    0x00007fe5849fe785  ;*ifeq
                                                                     ; - com.google.re2j.Machine::step@55 (line 273)
  0.27%    0.30%       0x00007fe5849fdb32: mov    0x10(%r12,%r11,8),%r8d  ;*getfield inst
                                                                     ; - com.google.re2j.Machine::step@107 (line 278)
  0.35%    0.58%       0x00007fe5849fdb37: mov    0x14(%r12,%r8,8),%r9d  ;*getfield op
                                                                     ; - com.google.re2j.Machine::step@120 (line 280)
                                                                     ; implicit exception: dispatches to 0x00007fe5849fee6d
  1.65%    2.77%       0x00007fe5849fdb3c: mov    0xc(%r12,%r9,8),%ebp  ;*getfield ordinal
                                                                     ; - java.lang.Enum::ordinal@1 (line 103)
                                                                     ; - com.google.re2j.Machine::step@123 (line 280)
                                                                     ; implicit exception: dispatches to 0x00007fe5849fee7d
  1.92%    2.74%       0x00007fe5849fdb41: cmp    $0xb,%ebp
                       0x00007fe5849fdb44: jae    0x00007fe5849fe505
  0.46%    0.54%       0x00007fe5849fdb4a: movabs $0x76dd58e08,%r9   ;   {oop([I)}
  0.00%                0x00007fe5849fdb54: mov    0x10(%r9,%rbp,4),%ecx  ;*iaload
                                                                     ; - com.google.re2j.Machine::step@126 (line 280)
  1.91%    2.52%       0x00007fe5849fdb59: mov    0x18(%r12,%r8,8),%edx  ;*getfield runes
                                                                     ; - com.google.re2j.Machine::step@320 (line 310)
                       0x00007fe5849fdb5e: mov    0xc(%r12,%r11,8),%edi  ;*getfield cap
                                                                     ; - com.google.re2j.Machine::step@176 (line 287)
                       0x00007fe5849fdb63: lea    (%r12,%r11,8),%r9  ;*getfield thread
                                                                     ; - com.google.re2j.Machine::step@40 (line 269)
  0.01%                0x00007fe5849fdb67: cmp    $0x3,%ecx
                       0x00007fe5849fdb6a: je     0x00007fe5849fdcdd
  0.49%    0.45%       0x00007fe5849fdb70: cmp    $0x3,%ecx
                       0x00007fe5849fdb73: jg     0x00007fe5849fd991  ;*tableswitch
                                                                     ; - com.google.re2j.Machine::step@127 (line 280)
  0.24%    0.13%       0x00007fe5849fdb79: lea    (%r12,%r8,8),%rbx  ;*getfield inst
                                                                     ; - com.google.re2j.Machine::step@107 (line 278)
                       0x00007fe5849fdb7d: cmp    $0x1,%ecx
  0.03%    0.02%    ╭  0x00007fe5849fdb80: je     0x00007fe5849fdc15
  0.39%    0.26%    │  0x00007fe5849fdb86: cmp    $0x1,%ecx
                    │  0x00007fe5849fdb89: jle    0x00007fe5849fe859  ;*tableswitch
                    │                                                ; - com.google.re2j.Machine::step@127 (line 280)
  0.11%    0.06%    │  0x00007fe5849fdb8f: mov    0xc(%r12,%rdx,8),%ebp  ;*arraylength
                    │                                                ; - com.google.re2j.Inst::matchRune@4 (line 59)
                    │                                                ; - com.google.re2j.Machine::step@308 (line 306)
                    │                                                ; implicit exception: dispatches to 0x00007fe5849fef71
                    │  0x00007fe5849fdb94: cmp    $0x1,%ebp
                    │  0x00007fe5849fdb97: jne    0x00007fe5849fea5d  ;*if_icmpne
                    │                                                ; - com.google.re2j.Inst::matchRune@6 (line 59)
                    │                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.01%    0.01%    │  0x00007fe5849fdb9d: test   %ebp,%ebp
                    │  0x00007fe5849fdb9f: jbe    0x00007fe5849fe8b1
  0.25%    0.07%    │  0x00007fe5849fdba5: mov    0x10(%r12,%rdx,8),%edx  ;*iaload
                    │                                                ; - com.google.re2j.Inst::matchRune@14 (line 60)
                    │                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.13%    0.03%    │  0x00007fe5849fdbaa: mov    0x20(%rsp),%ecx
                    │  0x00007fe5849fdbae: cmp    %edx,%ecx
                    │  0x00007fe5849fdbb0: je     0x00007fe5849fe387  ;*if_icmpne
                    │                                                ; - com.google.re2j.Inst::matchRune@18 (line 61)
                    │                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.01%    0.01%    │  0x00007fe5849fdbb6: mov    $0x1,%ebp
  0.27%    0.02%    │  0x00007fe5849fdbbb: and    0x10(%r12,%r8,8),%ebp  ;*iand
                    │                                                ; - com.google.re2j.Inst::matchRune@28 (line 64)
                    │                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.12%    0.03%    │  0x00007fe5849fdbc0: test   %ebp,%ebp
                    │  0x00007fe5849fdbc2: je     0x00007fe5849feb51  ;*ifeq
                    │                                                ; - com.google.re2j.Inst::matchRune@29 (line 64)
                    │                                                ; - com.google.re2j.Machine::step@308 (line 306)
                    │  0x00007fe5849fdbc8: mov    %edx,0x20(%rsp)
  0.01%    0.01%    │  0x00007fe5849fdbcc: mov    %rbx,%r13
  0.28%    0.03%    │  0x00007fe5849fdbcf: mov    %r9,%rax
  0.10%    0.01%    │  0x00007fe5849fdbd2: mov    %edi,%esi
                    │  0x00007fe5849fdbd4: mov    %r8d,%edx
  0.00%    0.04%    │  0x00007fe5849fdbd7: mov    %r14d,0x9c(%rsp)
  0.26%    0.02%    │  0x00007fe5849fdbdf: mov    %r11d,%edi
  0.13%    0.03%    │  0x00007fe5849fdbe2: mov    %r10d,0x94(%rsp)
                    │  0x00007fe5849fdbea: movabs $0x76dd0c628,%r9   ;   {oop(a {type array int}[63] )}
  0.01%    0.03%    │  0x00007fe5849fdbf4: mov    $0x1f,%r10d
  0.27%    0.11%    │  0x00007fe5849fdbfa: mov    $0x1f,%ebx
  0.11%    0.02%    │  0x00007fe5849fdbff: xor    %r11d,%r11d
                    │  0x00007fe5849fdc02: mov    $0x3f,%r8d
  0.02%    0.02%    │  0x00007fe5849fdc08: mov    %r11d,0x30(%rsp)
  0.31%             │  0x00007fe5849fdc0d: mov    %r8d,%r14d
  0.14%             │  0x00007fe5849fdc10: jmpq   0x00007fe5849fdd65
                    ↘  0x00007fe5849fdc15: mov    0x98(%rsp),%ecx
                       0x00007fe5849fdc1c: cmp    $0x2,%ecx
                       0x00007fe5849fdc1f: je     0x00007fe5849fe0a6  ;*aload
                                                                     ; - com.google.re2j.Machine::step@174 (line 287)
                       0x00007fe5849fdc25: mov    0xc(%r12,%rdi,8),%eax  ;*arraylength
                                                                     ; - com.google.re2j.Machine::step@179 (line 287)
                                                                     ; implicit exception: dispatches to 0x00007fe5849fef91
                       0x00007fe5849fdc2a: test   %eax,%eax
                       0x00007fe5849fdc2c: jle    0x00007fe5849fdcc4  ;*ifle
                                                                     ; - com.google.re2j.Machine::step@180 (line 287)
....................................................................................................
 17.26%   17.80%  <total for region 3>

....[Hottest Region 4]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 545 (224 bytes) 

                       0x00007fe5849fdcf3: cmp    %r11d,%ecx
                       0x00007fe5849fdcf6: jne    0x00007fe5849fd987  ;*if_icmpne
                                                                     ; - com.google.re2j.Machine::step@325 (line 310)
                       0x00007fe5849fdcfc: mov    %r10d,0x94(%rsp)
                       0x00007fe5849fdd04: mov    %r14d,0x9c(%rsp)
                       0x00007fe5849fdd0c: mov    %edi,%esi
                       0x00007fe5849fdd0e: mov    %r9,%rax
                       0x00007fe5849fdd11: jmpq   0x00007fe5849fd9d4  ;*if_icmpge
                                                                     ; - com.google.re2j.Machine::step@18 (line 264)
                       0x00007fe5849fdd16: mov    0x8(%rsp),%r10
  0.00%                0x00007fe5849fdd1b: mov    %r12d,0xc(%r10)    ;*getfield size
                                                                     ; - com.google.re2j.Machine::step@15 (line 264)
  0.06%    0.09%       0x00007fe5849fdd1f: add    $0x80,%rsp
  0.01%    0.00%       0x00007fe5849fdd26: pop    %rbp
                       0x00007fe5849fdd27: test   %eax,0x15f5a2d3(%rip)        # 0x00007fe59a958000
                                                                     ;   {poll_return}
                       0x00007fe5849fdd2d: retq   
                       0x00007fe5849fdd2e: xchg   %ax,%ax
  0.42%    0.76%   ↗   0x00007fe5849fdd30: mov    0x30(%rsp),%r8d    ; OopMap{r9=Oop rdi=NarrowOop rdx=NarrowOop rsi=NarrowOop rax=Oop r13=Oop [8]=Oop [24]=Oop [40]=Oop off=1077}
                   │                                                 ;*goto
                   │                                                 ; - com.google.re2j.Unicode::simpleFold@40 (line 214)
                   │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 65)
                   │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.63%    0.79%   │↗  0x00007fe5849fdd35: test   %eax,0x15f5a2c5(%rip)        # 0x00007fe59a958000
                   ││                                                ;*goto
                   ││                                                ; - com.google.re2j.Unicode::simpleFold@40 (line 214)
                   ││                                                ; - com.google.re2j.Inst::matchRune@33 (line 65)
                   ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
                   ││                                                ;   {poll}
  0.67%    0.54%   ││  0x00007fe5849fdd3b: cmp    %ebx,%r8d
                  ╭││  0x00007fe5849fdd3e: jge    0x00007fe5849fdda3  ;*if_icmpge
                  │││                                                ; - com.google.re2j.Unicode::simpleFold@9 (line 207)
                  │││                                                ; - com.google.re2j.Inst::matchRune@33 (line 65)
                  │││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.37%    0.40%  │││  0x00007fe5849fdd40: mov    %r8d,0x30(%rsp)
  0.38%    0.59%  │││  0x00007fe5849fdd45: mov    %ebx,%r14d
  0.61%    0.59%  │││  0x00007fe5849fdd48: mov    %ebx,%r11d
  0.52%    0.51%  │││  0x00007fe5849fdd4b: sub    %r8d,%r11d         ;*isub
                  │││                                                ; - com.google.re2j.Unicode::simpleFold@15 (line 208)
                  │││                                                ; - com.google.re2j.Inst::matchRune@33 (line 65)
                  │││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.43%    0.46%  │││  0x00007fe5849fdd4e: mov    %r11d,%r10d
  0.44%    0.48%  │││  0x00007fe5849fdd51: sar    $0x1f,%r10d
  0.61%    0.56%  │││  0x00007fe5849fdd55: shr    $0x1f,%r10d
  0.59%    0.68%  │││  0x00007fe5849fdd59: add    %r11d,%r10d
  0.40%    0.43%  │││  0x00007fe5849fdd5c: sar    %r10d
  0.42%    0.44%  │││  0x00007fe5849fdd5f: mov    %r8d,%ebx
  0.69%    0.44%  │││  0x00007fe5849fdd62: add    %r10d,%ebx         ;*idiv
                  │││                                                ; - com.google.re2j.Unicode::simpleFold@17 (line 208)
                  │││                                                ; - com.google.re2j.Inst::matchRune@33 (line 65)
                  │││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.43%    0.59%  │││  0x00007fe5849fdd65: cmp    $0x3f,%ebx
                  │││  0x00007fe5849fdd68: jae    0x00007fe5849fe60d
  0.42%    0.73%  │││  0x00007fe5849fdd6e: movslq 0x30(%rsp),%r11
  0.74%    0.72%  │││  0x00007fe5849fdd73: movslq %r10d,%r10
  0.88%    0.59%  │││  0x00007fe5849fdd76: add    %r10,%r11
  0.63%    0.74%  │││  0x00007fe5849fdd79: mov    0x10(%r9,%r11,4),%ebp  ;*aaload
                  │││                                                ; - com.google.re2j.Unicode::simpleFold@24 (line 209)
                  │││                                                ; - com.google.re2j.Inst::matchRune@33 (line 65)
                  │││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.39%    0.52%  │││  0x00007fe5849fdd7e: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007fe5849feead
  0.74%    0.55%  │││  0x00007fe5849fdd83: test   %r11d,%r11d
                  │││  0x00007fe5849fdd86: jbe    0x00007fe5849fe659  ;*iaload
                  │││                                                ; - com.google.re2j.Unicode::simpleFold@26 (line 209)
                  │││                                                ; - com.google.re2j.Inst::matchRune@33 (line 65)
                  │││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.78%    0.58%  │││  0x00007fe5849fdd8c: mov    0x10(%r12,%rbp,8),%r11d
  0.45%    0.71%  │││  0x00007fe5849fdd91: cmp    0x20(%rsp),%r11d
                  │╰│  0x00007fe5849fdd96: jge    0x00007fe5849fdd30  ;*if_icmpge
                  │ │                                                ; - com.google.re2j.Unicode::simpleFold@28 (line 209)
                  │ │                                                ; - com.google.re2j.Inst::matchRune@33 (line 65)
                  │ │                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.01%    0.03%  │ │  0x00007fe5849fdd98: mov    %ebx,%r8d
  0.00%    0.00%  │ │  0x00007fe5849fdd9b: inc    %r8d               ;*iadd
                  │ │                                                ; - com.google.re2j.Unicode::simpleFold@33 (line 210)
                  │ │                                                ; - com.google.re2j.Inst::matchRune@33 (line 65)
                  │ │                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.16%    0.23%  │ │  0x00007fe5849fdd9e: mov    %r14d,%ebx
  0.03%    0.06%  │ ╰  0x00007fe5849fdda1: jmp    0x00007fe5849fdd35
  0.25%    0.37%  ↘    0x00007fe5849fdda3: cmp    $0x3f,%r8d
                       0x00007fe5849fdda7: jge    0x00007fe5849feb9d  ;*if_icmpge
                                                                     ; - com.google.re2j.Unicode::simpleFold@48 (line 215)
                                                                     ; - com.google.re2j.Inst::matchRune@33 (line 65)
                                                                     ; - com.google.re2j.Machine::step@308 (line 306)
                       0x00007fe5849fddad: cmp    $0x3f,%r8d
                       0x00007fe5849fddb1: jae    0x00007fe5849fe869
  0.01%    0.01%       0x00007fe5849fddb7: mov    0x10(%r9,%r8,4),%ebp  ;*aaload
                                                                     ; - com.google.re2j.Unicode::simpleFold@55 (line 215)
                                                                     ; - com.google.re2j.Inst::matchRune@33 (line 65)
                                                                     ; - com.google.re2j.Machine::step@308 (line 306)
  0.15%    0.16%       0x00007fe5849fddbc: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007fe5849fef81
  0.23%    0.30%       0x00007fe5849fddc1: test   %r11d,%r11d
                       0x00007fe5849fddc4: jbe    0x00007fe5849fe8fd
  0.01%    0.01%       0x00007fe5849fddca: mov    0x10(%r12,%rbp,8),%ebp  ;*iaload
                                                                     ; - com.google.re2j.Unicode::simpleFold@57 (line 215)
                                                                     ; - com.google.re2j.Inst::matchRune@33 (line 65)
                                                                     ; - com.google.re2j.Machine::step@308 (line 306)
  0.00%    0.00%       0x00007fe5849fddcf: cmp    0x20(%rsp),%ebp
                       0x00007fe5849fddd3: je     0x00007fe5849febe5  ;*if_icmpne
                                                                     ; - com.google.re2j.Unicode::simpleFold@59 (line 215)
                                                                     ; - com.google.re2j.Inst::matchRune@33 (line 65)
                                                                     ; - com.google.re2j.Machine::step@308 (line 306)
  0.14%    0.17%       0x00007fe5849fddd9: mov    0x20(%rsp),%r11d
  0.35%    0.30%       0x00007fe5849fddde: cmp    $0x7f,%r11d
                       0x00007fe5849fdde2: jg     0x00007fe5849fec1d  ;*if_icmpgt
                                                                     ; - com.google.re2j.Unicode::toLower@3 (line 177)
                                                                     ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                                                                     ; - com.google.re2j.Inst::matchRune@33 (line 65)
                                                                     ; - com.google.re2j.Machine::step@308 (line 306)
                       0x00007fe5849fdde8: cmp    $0x41,%r11d
                       0x00007fe5849fddec: jl     0x00007fe5849fea95  ;*if_icmpgt
                                                                     ; - com.google.re2j.Unicode::toLower@9 (line 178)
                                                                     ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                                                                     ; - com.google.re2j.Inst::matchRune@33 (line 65)
                                                                     ; - com.google.re2j.Machine::step@308 (line 306)
  0.00%    0.01%       0x00007fe5849fddf2: cmp    $0x5a,%r11d
                       0x00007fe5849fddf6: jg     0x00007fe5849fde08  ;*if_icmpgt
                                                                     ; - com.google.re2j.Unicode::toLower@15 (line 178)
                                                                     ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                                                                     ; - com.google.re2j.Inst::matchRune@33 (line 65)
                                                                     ; - com.google.re2j.Machine::step@308 (line 306)
  0.12%    0.13%       0x00007fe5849fddf8: mov    %r11d,%r10d
  0.21%    0.46%       0x00007fe5849fddfb: add    $0x20,%r10d        ;*iinc
                                                                     ; - com.google.re2j.Unicode::toLower@18 (line 179)
                                                                     ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                                                                     ; - com.google.re2j.Inst::matchRune@33 (line 65)
                                                                     ; - com.google.re2j.Machine::step@308 (line 306)
                       0x00007fe5849fddff: cmp    %r11d,%r10d
                       0x00007fe5849fde02: jne    0x00007fe5849fdfe4  ;*if_icmpeq
                                                                     ; - com.google.re2j.Unicode::simpleFold@77 (line 224)
                                                                     ; - com.google.re2j.Inst::matchRune@33 (line 65)
                                                                     ; - com.google.re2j.Machine::step@308 (line 306)
                       0x00007fe5849fde08: cmp    $0x61,%r11d
....................................................................................................
 14.36%   15.72%  <total for region 4>

....[Hottest Region 5]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 536 (390 bytes) 

                          0x00007fe5849f1f9a: mov    %r10,(%rsp)
                          0x00007fe5849f1f9e: nop
                          0x00007fe5849f1f9f: callq  0x00007fe5847f3020  ; OopMap{off=1508}
                                                                        ;*invokespecial add
                                                                        ; - com.google.re2j.Machine::add@207 (line 369)
                                                                        ;   {optimized virtual_call}
                  ╭       0x00007fe5849f1fa4: jmpq   0x00007fe5849f2122
                  │       0x00007fe5849f1fa9: mov    0x70(%rsp),%rax
                  │╭      0x00007fe5849f1fae: jmpq   0x00007fe5849f2122  ;*tableswitch
                  ││                                                    ; - com.google.re2j.Machine::add@47 (line 349)
  1.17%    0.58%  ││      0x00007fe5849f1fb3: mov    0x8(%rsp),%rsi
                  ││      0x00007fe5849f1fb8: mov    0x48(%rsp),%rdx
  0.03%    0.05%  ││      0x00007fe5849f1fbd: mov    0x1c(%rsp),%r8d
                  ││      0x00007fe5849f1fc2: mov    0x20(%rsp),%r9
  0.27%    0.14%  ││      0x00007fe5849f1fc7: mov    0x28(%rsp),%edi
                  ││      0x00007fe5849f1fcb: mov    0x70(%rsp),%r10
  0.04%    0.03%  ││      0x00007fe5849f1fd0: mov    %r10,(%rsp)
                  ││      0x00007fe5849f1fd4: mov    %rsi,%rbp
  0.28%    0.08%  ││      0x00007fe5849f1fd7: callq  0x00007fe5847f3020  ; OopMap{rbp=Oop [32]=Oop [56]=Oop [72]=Oop off=1564}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@131 (line 358)
                  ││                                                    ;   {optimized virtual_call}
  0.00%           ││      0x00007fe5849f1fdc: mov    0x38(%rsp),%r10
  0.07%    0.04%  ││      0x00007fe5849f1fe1: mov    0x10(%r10),%ecx    ;*getfield arg
                  ││                                                    ; - com.google.re2j.Machine::add@140 (line 359)
  0.31%    0.31%  ││      0x00007fe5849f1fe5: mov    %rbp,%rsi
  0.00%           ││      0x00007fe5849f1fe8: mov    0x48(%rsp),%rdx
  0.00%           ││      0x00007fe5849f1fed: mov    0x1c(%rsp),%r8d
  0.08%    0.12%  ││      0x00007fe5849f1ff2: mov    0x20(%rsp),%r9
  0.19%    0.24%  ││      0x00007fe5849f1ff7: mov    0x28(%rsp),%edi
                  ││      0x00007fe5849f1ffb: mov    %rax,(%rsp)
                  ││      0x00007fe5849f1fff: callq  0x00007fe5847f3020  ; OopMap{off=1604}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@150 (line 359)
                  ││                                                    ;   {optimized virtual_call}
                  ││╭     0x00007fe5849f2004: jmpq   0x00007fe5849f2122  ;*aload
                  │││                                                   ; - com.google.re2j.Machine::add@297 (line 388)
  1.71%    0.80%  │││     0x00007fe5849f2009: mov    0x38(%rsp),%r10
  0.00%           │││     0x00007fe5849f200e: mov    %r10,%r9
                  │││     0x00007fe5849f2011: shr    $0x3,%r9           ;*putfield inst
                  │││                                                   ; - com.google.re2j.Machine::alloc@47 (line 151)
                  │││                                                   ; - com.google.re2j.Machine::add@305 (line 389)
  0.00%           │││     0x00007fe5849f2015: mov    0x70(%rsp),%rbp
  0.36%    0.15%  │││     0x00007fe5849f201a: test   %rbp,%rbp
                  │││╭    0x00007fe5849f201d: jne    0x00007fe5849f212e  ;*ifnonnull
                  ││││                                                  ; - com.google.re2j.Machine::add@299 (line 388)
                  ││││    0x00007fe5849f2023: mov    0x8(%rsp),%r10
                  ││││    0x00007fe5849f2028: mov    0x20(%r10),%ebp    ;*getfield pool
                  ││││                                                  ; - com.google.re2j.Machine::alloc@1 (line 147)
                  ││││                                                  ; - com.google.re2j.Machine::add@305 (line 389)
                  ││││    0x00007fe5849f202c: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007fe5849f2369
  0.32%    0.10%  ││││    0x00007fe5849f2031: cmp    $0xf8002f22,%r11d  ;   {metadata(&apos;java/util/ArrayList&apos;)}
                  ││││    0x00007fe5849f2038: jne    0x00007fe5849f219d
                  ││││    0x00007fe5849f203e: lea    (%r12,%rbp,8),%rcx  ;*invokeinterface size
                  ││││                                                  ; - com.google.re2j.Machine::alloc@4 (line 147)
                  ││││                                                  ; - com.google.re2j.Machine::add@305 (line 389)
                  ││││    0x00007fe5849f2042: mov    0x10(%rcx),%r8d    ;*getfield size
                  ││││                                                  ; - java.util.ArrayList::size@1 (line 278)
                  ││││                                                  ; - com.google.re2j.Machine::alloc@4 (line 147)
                  ││││                                                  ; - com.google.re2j.Machine::add@305 (line 389)
                  ││││    0x00007fe5849f2046: test   %r8d,%r8d
                  ││││    0x00007fe5849f2049: jle    0x00007fe5849f21ed  ;*ifle
                  ││││                                                  ; - com.google.re2j.Machine::alloc@11 (line 148)
                  ││││                                                  ; - com.google.re2j.Machine::add@305 (line 389)
  0.41%    0.07%  ││││    0x00007fe5849f204f: mov    %r8d,%r11d
                  ││││    0x00007fe5849f2052: dec    %r11d              ;*isub
                  ││││                                                  ; - com.google.re2j.Machine::alloc@20 (line 148)
                  ││││                                                  ; - com.google.re2j.Machine::add@305 (line 389)
                  ││││    0x00007fe5849f2055: cmp    %r8d,%r11d
                  ││││    0x00007fe5849f2058: jge    0x00007fe5849f2211  ;*if_icmplt
                  ││││                                                  ; - java.util.ArrayList::rangeCheck@5 (line 652)
                  ││││                                                  ; - java.util.ArrayList::remove@2 (line 492)
                  ││││                                                  ; - com.google.re2j.Machine::alloc@21 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@305 (line 389)
                  ││││    0x00007fe5849f205e: incl   0xc(%rcx)          ;*putfield modCount
                  ││││                                                  ; - java.util.ArrayList::remove@12 (line 494)
                  ││││                                                  ; - com.google.re2j.Machine::alloc@21 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@305 (line 389)
  0.36%    0.04%  ││││    0x00007fe5849f2061: mov    0x14(%rcx),%ebp    ;*getfield elementData
                  ││││                                                  ; - java.util.ArrayList::elementData@1 (line 418)
                  ││││                                                  ; - java.util.ArrayList::remove@17 (line 495)
                  ││││                                                  ; - com.google.re2j.Machine::alloc@21 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@305 (line 389)
  0.00%           ││││    0x00007fe5849f2064: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007fe5849f2379
  0.41%    0.06%  ││││    0x00007fe5849f2069: cmp    %r10d,%r11d
                  ││││    0x00007fe5849f206c: jae    0x00007fe5849f2172  ;*aaload
                  ││││                                                  ; - java.util.ArrayList::elementData@5 (line 418)
                  ││││                                                  ; - java.util.ArrayList::remove@17 (line 495)
                  ││││                                                  ; - com.google.re2j.Machine::alloc@21 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@305 (line 389)
                  ││││    0x00007fe5849f2072: mov    %r11d,0x10(%rcx)   ;*putfield size
                  ││││                                                  ; - java.util.ArrayList::remove@62 (line 501)
                  ││││                                                  ; - com.google.re2j.Machine::alloc@21 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@305 (line 389)
                  ││││    0x00007fe5849f2076: lea    (%r12,%rbp,8),%r10
                  ││││    0x00007fe5849f207a: mov    0xc(%r10,%r8,4),%ebp  ;*aaload
                  ││││                                                  ; - java.util.ArrayList::elementData@5 (line 418)
                  ││││                                                  ; - java.util.ArrayList::remove@17 (line 495)
                  ││││                                                  ; - com.google.re2j.Machine::alloc@21 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@305 (line 389)
  0.44%    0.15%  ││││    0x00007fe5849f207f: mov    %r12d,0xc(%r10,%r8,4)  ;*aastore
                  ││││                                                  ; - java.util.ArrayList::remove@66 (line 501)
                  ││││                                                  ; - com.google.re2j.Machine::alloc@21 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@305 (line 389)
                  ││││    0x00007fe5849f2084: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007fe5849f238d
                  ││││    0x00007fe5849f2089: cmp    $0xf8019c51,%r11d  ;   {metadata(&apos;com/google/re2j/Machine$Thread&apos;)}
                  ││││    0x00007fe5849f2090: jne    0x00007fe5849f228d
                  ││││    0x00007fe5849f2096: shl    $0x3,%rbp          ;*checkcast
                  ││││                                                  ; - com.google.re2j.Machine::alloc@26 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@305 (line 389)
  0.28%    0.16%  ││││    0x00007fe5849f209a: mov    %r9d,0x10(%rbp)
                  ││││    0x00007fe5849f209e: mov    %rbp,%r10
           0.01%  ││││    0x00007fe5849f20a1: shr    $0x9,%r10
                  ││││    0x00007fe5849f20a5: movabs $0x7fe5801db000,%r11
  0.37%    0.01%  ││││    0x00007fe5849f20af: mov    %r12b,(%r11,%r10,1)  ;*aload
                  ││││                                                  ; - com.google.re2j.Machine::add@320 (line 393)
                  ││││ ↗  0x00007fe5849f20b3: mov    0x20(%rsp),%rdi
  0.03%           ││││ │  0x00007fe5849f20b8: mov    0xc(%rdi),%r10d    ;*arraylength
                  ││││ │                                                ; - com.google.re2j.Machine::add@322 (line 393)
                  ││││ │                                                ; implicit exception: dispatches to 0x00007fe5849f2359
                  ││││ │  0x00007fe5849f20bc: test   %r10d,%r10d
                  ││││ │  0x00007fe5849f20bf: jle    0x00007fe5849f21d2  ;*ifle
                  ││││ │                                                ; - com.google.re2j.Machine::add@323 (line 393)
  0.27%    0.03%  ││││ │  0x00007fe5849f20c5: mov    0xc(%rbp),%r11d    ;*getfield cap
                  ││││ │                                                ; - com.google.re2j.Machine::add@328 (line 393)
                  ││││ │  0x00007fe5849f20c9: mov    %r11,%r8
  0.00%           ││││ │  0x00007fe5849f20cc: shl    $0x3,%r8
                  ││││ │  0x00007fe5849f20d0: cmp    %rdi,%r8
                  ││││╭│  0x00007fe5849f20d3: je     0x00007fe5849f2100  ;*if_acmpeq
                  ││││││                                                ; - com.google.re2j.Machine::add@333 (line 393)
  0.35%    0.06%  ││││││  0x00007fe5849f20d5: mov    0xc(%r12,%r11,8),%r9d  ; implicit exception: dispatches to 0x00007fe5849f23a9
           0.00%  ││││││  0x00007fe5849f20da: lea    (%r12,%r11,8),%rcx  ;*getfield cap
                  ││││││                                                ; - com.google.re2j.Machine::add@328 (line 393)
           0.00%  ││││││  0x00007fe5849f20de: cmp    %r10d,%r9d
                  ││││││  0x00007fe5849f20e1: jb     0x00007fe5849f21b1
           0.00%  ││││││  0x00007fe5849f20e7: lea    0x10(%r12,%r11,8),%rsi
  0.37%    0.19%  ││││││  0x00007fe5849f20ec: add    $0x10,%rdi
                  ││││││  0x00007fe5849f20f0: movslq %r10d,%rdx
                  ││││││  0x00007fe5849f20f3: movabs $0x7fe5847ff640,%r10
  0.00%    0.00%  ││││││  0x00007fe5849f20fd: callq  *%r10              ;*aload
                  ││││││                                                ; - com.google.re2j.Machine::add@351 (line 396)
                  ││││↘│  0x00007fe5849f2100: mov    %rbx,%r10
                  ││││ │  0x00007fe5849f2103: mov    %rbp,%r11
  0.01%           ││││ │  0x00007fe5849f2106: shr    $0x3,%r11
  0.45%    0.60%  ││││ │  0x00007fe5849f210a: mov    %r11d,0x10(%rbx)
                  ││││ │  0x00007fe5849f210e: shr    $0x9,%r10
           0.01%  ││││ │  0x00007fe5849f2112: movabs $0x7fe5801db000,%r11
  0.02%    0.00%  ││││ │  0x00007fe5849f211c: mov    %r12b,(%r11,%r10,1)  ;*putfield thread
                  ││││ │                                                ; - com.google.re2j.Machine::add@355 (line 396)
  0.42%    0.59%  ││││ │  0x00007fe5849f2120: xor    %eax,%eax          ;*synchronization entry
                  ││││ │                                                ; - com.google.re2j.Machine::add@-1 (line 341)
  0.36%    0.19%  ↘↘↘│ │  0x00007fe5849f2122: add    $0x60,%rsp
                     │ │  0x00007fe5849f2126: pop    %rbp
  0.48%    0.71%     │ │  0x00007fe5849f2127: test   %eax,0x15f65ed3(%rip)        # 0x00007fe59a958000
                     │ │                                                ;   {poll_return}
  0.26%    0.47%     │ │  0x00007fe5849f212d: retq   
                     ↘ │  0x00007fe5849f212e: mov    %r9d,0x10(%rbp)
                       │  0x00007fe5849f2132: mov    %rbp,%r10
                       │  0x00007fe5849f2135: shr    $0x9,%r10
  0.02%                │  0x00007fe5849f2139: movabs $0x7fe5801db000,%r11
                       │  0x00007fe5849f2143: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                       │                                                ; - com.google.re2j.Machine::add@317 (line 391)
                       ╰  0x00007fe5849f2147: jmpq   0x00007fe5849f20b3  ;*tableswitch
                                                                        ; - com.google.re2j.Machine::add@47 (line 349)
                          0x00007fe5849f214c: mov    0x8(%rsp),%rsi
                          0x00007fe5849f2151: mov    0x48(%rsp),%rdx
                          0x00007fe5849f2156: mov    0x1c(%rsp),%r8d
                          0x00007fe5849f215b: mov    0x20(%rsp),%r9
                          0x00007fe5849f2160: mov    %ebx,%edi
                          0x00007fe5849f2162: mov    0x70(%rsp),%r10
....................................................................................................
 10.18%    6.00%  <total for region 5>

....[Hottest Regions]...............................................................................
 29.06%   25.70%         C2, level 4  com.google.re2j.Machine::add, version 536 (462 bytes) 
 18.35%   25.32%         C2, level 4  com.google.re2j.Machine::step, version 545 (369 bytes) 
 17.26%   17.80%         C2, level 4  com.google.re2j.Machine::step, version 545 (494 bytes) 
 14.36%   15.72%         C2, level 4  com.google.re2j.Machine::step, version 545 (224 bytes) 
 10.18%    6.00%         C2, level 4  com.google.re2j.Machine::add, version 536 (390 bytes) 
  3.20%    3.99%         C2, level 4  com.google.re2j.Machine::match, version 582 (836 bytes) 
  2.44%    1.37%        runtime stub  StubRoutines::jint_disjoint_arraycopy (62 bytes) 
  0.46%    0.32%         C2, level 4  com.google.re2j.Machine::step, version 545 (108 bytes) 
  0.39%    0.00%        runtime stub  StubRoutines::jint_disjoint_arraycopy (0 bytes) 
  0.37%    0.35%         C2, level 4  com.google.re2j.Machine::step, version 545 (19 bytes) 
  0.34%    0.32%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.14%    0.01%   [kernel.kallsyms]  [unknown] (1 bytes) 
  0.14%    0.00%   [kernel.kallsyms]  [unknown] (37 bytes) 
  0.12%    0.16%         C2, level 4  com.google.re2j.Machine::match, version 582 (57 bytes) 
  0.11%    0.04%   [kernel.kallsyms]  [unknown] (22 bytes) 
  0.10%    0.02%         C2, level 4  com.google.re2j.Machine::init, version 592 (56 bytes) 
  0.09%    0.07%         C2, level 4  com.google.re2j.Machine::step, version 545 (59 bytes) 
  0.07%    0.02%   [kernel.kallsyms]  [unknown] (28 bytes) 
  0.07%    0.16%           libjvm.so  RelocIterator::initialize (102 bytes) 
  0.05%    0.01%  libpthread-2.26.so  __libc_write (26 bytes) 
  2.70%    2.61%  <...other 566 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 50.89%   59.60%         C2, level 4  com.google.re2j.Machine::step, version 545 
 39.24%   31.70%         C2, level 4  com.google.re2j.Machine::add, version 536 
  3.38%    4.16%         C2, level 4  com.google.re2j.Machine::match, version 582 
  2.82%    1.37%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
  1.86%    1.34%   [kernel.kallsyms]  [unknown] 
  0.19%    0.06%         C2, level 4  com.google.re2j.Machine::init, version 592 
  0.09%    0.16%           libjvm.so  RelocIterator::initialize 
  0.08%    0.02%         C2, level 4  com.google.re2j.Matcher::find, version 603 
  0.06%    0.05%      hsdis-amd64.so  [unknown] 
  0.05%    0.01%  libpthread-2.26.so  __libc_write 
  0.04%    0.03%         C2, level 4  java.util.Collections::shuffle, version 626 
  0.04%    0.05%        libc-2.26.so  _IO_fwrite 
  0.04%    0.03%           libjvm.so  PSPromotionManager::copy_to_survivor_space<false> 
  0.04%    0.05%           libjvm.so  fileStream::write 
  0.04%    0.02%           libjvm.so  PSPromotionManager::drain_stacks_depth 
  0.03%    0.02%           libjvm.so  xmlTextStream::write 
  0.03%    0.02%           libjvm.so  GenericTaskQueueSet<OverflowTaskQueue<StarTask, (MemoryType)1, 131072u>, (MemoryType)1>::steal_best_of_2 
  0.03%    0.04%           libjvm.so  outputStream::update_position 
  0.03%    0.01%           libjvm.so  Monitor::unlock 
  0.03%    0.02%         C2, level 4  com.github.arnaudroger.re2j.Re2jFindRegex::testExp2, version 627 
  0.98%    0.85%  <...other 131 warm methods...>
....................................................................................................
100.00%   99.63%  <totals>

....[Distribution by Source]........................................................................
 93.87%   95.60%         C2, level 4
  2.83%    1.37%        runtime stub
  1.86%    1.34%   [kernel.kallsyms]
  0.84%    0.97%           libjvm.so
  0.31%    0.53%        libc-2.26.so
  0.14%    0.09%  libpthread-2.26.so
  0.06%    0.06%      hsdis-amd64.so
  0.04%    0.02%         interpreter
  0.02%    0.01%              [vdso]
  0.02%    0.00%         C1, level 3
  0.00%             Unknown, level 0
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:44

Benchmark                     Mode  Cnt     Score    Error  Units
Re2jFindRegex.testExp2       thrpt   20  2764.084 ± 29.310  ops/s
Re2jFindRegex.testExp2:·asm  thrpt            NaN             ---
