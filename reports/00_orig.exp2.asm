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
# Warmup Iteration   1: 1122.017 ops/s
# Warmup Iteration   2: 2211.349 ops/s
# Warmup Iteration   3: 2193.226 ops/s
# Warmup Iteration   4: 2228.432 ops/s
# Warmup Iteration   5: 2032.379 ops/s
# Warmup Iteration   6: 2210.243 ops/s
# Warmup Iteration   7: 2210.363 ops/s
# Warmup Iteration   8: 2210.320 ops/s
# Warmup Iteration   9: 2207.757 ops/s
# Warmup Iteration  10: 2225.359 ops/s
# Warmup Iteration  11: 2040.734 ops/s
# Warmup Iteration  12: 2240.403 ops/s
# Warmup Iteration  13: 2242.128 ops/s
# Warmup Iteration  14: 2243.593 ops/s
# Warmup Iteration  15: 2243.203 ops/s
# Warmup Iteration  16: 2242.953 ops/s
# Warmup Iteration  17: 2046.525 ops/s
# Warmup Iteration  18: 2241.172 ops/s
# Warmup Iteration  19: 2241.563 ops/s
# Warmup Iteration  20: 2241.139 ops/s
Iteration   1: 2234.166 ops/s
Iteration   2: 2237.151 ops/s
Iteration   3: 2023.446 ops/s
Iteration   4: 2236.642 ops/s
Iteration   5: 2236.912 ops/s
Iteration   6: 2236.997 ops/s
Iteration   7: 2234.877 ops/s
Iteration   8: 2237.316 ops/s
Iteration   9: 2031.066 ops/s
Iteration  10: 2236.573 ops/s
Iteration  11: 2225.702 ops/s
Iteration  12: 2234.383 ops/s
Iteration  13: 2258.704 ops/s
Iteration  14: 2253.087 ops/s
Iteration  15: 2253.546 ops/s
Iteration  16: 2253.452 ops/s
Iteration  17: 2253.030 ops/s
Iteration  18: 2270.087 ops/s
Iteration  19: 2250.966 ops/s
Iteration  20: 2253.103 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  2222.560 ±(99.9%) 58.784 ops/s [Average]
  (min, avg, max) = (2023.446, 2222.560, 2270.087), stdev = 67.696
  CI (99.9%): [2163.776, 2281.344] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2:·asm":
PrintAssembly processed: 193780 total address lines.
Perf output processed (skipped 23.323 seconds):
 Column 1: cycles (20822 events)
 Column 2: instructions (20809 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 490 (462 bytes) 

                      # parm4:    rdi       = int
                      # parm5:    [sp+0x70]   = &apos;com/google/re2j/Machine$Thread&apos;  (sp of caller)
                      0x00007f658d2122c0: mov    0x8(%rsi),%r10d    ;   {no_reloc}
                      0x00007f658d2122c4: shl    $0x3,%r10
                      0x00007f658d2122c8: cmp    %r10,%rax
                      0x00007f658d2122cb: jne    0x00007f658d045e20  ;   {runtime_call}
                      0x00007f658d2122d1: data16 xchg %ax,%ax
                      0x00007f658d2122d4: nopl   0x0(%rax,%rax,1)
                      0x00007f658d2122dc: data16 data16 xchg %ax,%ax
                    [Verified Entry Point]
  0.37%    0.49%      0x00007f658d2122e0: mov    %eax,-0x14000(%rsp)
  0.40%    0.10%      0x00007f658d2122e7: push   %rbp
  0.14%    0.15%      0x00007f658d2122e8: sub    $0x60,%rsp         ;*synchronization entry
                                                                    ; - com.google.re2j.Machine::add@-1 (line 341)
  0.25%    0.46%      0x00007f658d2122ec: mov    %edi,0x28(%rsp)
  0.29%    0.12%      0x00007f658d2122f0: mov    %r9,0x20(%rsp)
  0.13%    0.12%      0x00007f658d2122f5: mov    %r8d,0x1c(%rsp)
  0.26%    0.50%      0x00007f658d2122fa: mov    %rsi,0x8(%rsp)
  0.03%    0.05%      0x00007f658d2122ff: mov    %ecx,0x30(%rsp)
  0.36%    0.10%      0x00007f658d212303: test   %ecx,%ecx
                      0x00007f658d212305: je     0x00007f658d2126d1  ;*ifne
                                                                    ; - com.google.re2j.Machine::add@1 (line 341)
  0.10%    0.12%      0x00007f658d21230b: mov    %rdx,0x48(%rsp)
  0.28%    0.43%      0x00007f658d212310: mov    0x14(%rdx),%r8d    ;*getfield sparse
                                                                    ; - com.google.re2j.Machine$Queue::contains@1 (line 48)
                                                                    ; - com.google.re2j.Machine::add@9 (line 344)
                                                                    ; implicit exception: dispatches to 0x00007f658d212ba1
  0.03%    0.01%      0x00007f658d212314: mov    0xc(%r12,%r8,8),%ecx  ; implicit exception: dispatches to 0x00007f658d212bb5
  0.26%    0.14%      0x00007f658d212319: mov    0x30(%rsp),%r10d
  0.19%    0.21%      0x00007f658d21231e: cmp    %ecx,%r10d
                      0x00007f658d212321: jae    0x00007f658d21253c  ;*iaload
                                                                    ; - com.google.re2j.Machine$Queue::contains@5 (line 48)
                                                                    ; - com.google.re2j.Machine::add@9 (line 344)
  0.25%    0.20%      0x00007f658d212327: mov    0x10(%rdx),%r9d    ;*getfield dense
                                                                    ; - com.google.re2j.Machine$Queue::contains@18 (line 52)
                                                                    ; - com.google.re2j.Machine::add@9 (line 344)
  0.02%    0.03%      0x00007f658d21232b: mov    0xc(%rdx),%r11d    ;*getfield size
                                                                    ; - com.google.re2j.Machine$Queue::contains@9 (line 49)
                                                                    ; - com.google.re2j.Machine::add@9 (line 344)
  0.28%    0.24%      0x00007f658d21232f: lea    (%r12,%r8,8),%rbx
  0.11%    0.11%      0x00007f658d212333: mov    0x30(%rsp),%edi
  0.30%    0.32%      0x00007f658d212337: mov    0x10(%rbx,%rdi,4),%ebp  ;*iaload
                                                                    ; - com.google.re2j.Machine$Queue::contains@5 (line 48)
                                                                    ; - com.google.re2j.Machine::add@9 (line 344)
  0.08%    0.09%      0x00007f658d21233b: cmp    %r11d,%ebp
                  ╭   0x00007f658d21233e: jl     0x00007f658d212492  ;*invokevirtual contains
                  │                                                 ; - com.google.re2j.Machine::add@9 (line 344)
  0.40%    0.22%  │↗  0x00007f658d212344: mov    %r11d,%r10d
  0.08%    0.02%  ││  0x00007f658d212347: inc    %r10d
  0.33%    0.37%  ││  0x00007f658d21234a: mov    %r10d,0xc(%rdx)    ;*putfield size
                  ││                                                ; - com.google.re2j.Machine$Queue::add@8 (line 59)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.03%    0.05%  ││  0x00007f658d21234e: mov    0x30(%rsp),%edi
  0.32%    0.13%  ││  0x00007f658d212352: cmp    %ecx,%edi
                  ││  0x00007f658d212354: jae    0x00007f658d212575
  0.10%    0.10%  ││  0x00007f658d21235a: mov    %r11d,0x10(%rbx,%rdi,4)  ;*iastore
                  ││                                                ; - com.google.re2j.Machine$Queue::add@18 (line 60)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.30%    0.40%  ││  0x00007f658d21235f: mov    0xc(%r12,%r9,8),%r8d  ; implicit exception: dispatches to 0x00007f658d212bc9
  0.02%    0.03%  ││  0x00007f658d212364: cmp    %r8d,%r11d
                  ││  0x00007f658d212367: jae    0x00007f658d2125bd  ;*aaload
                  ││                                                ; - com.google.re2j.Machine$Queue::add@24 (line 61)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.35%    0.16%  ││  0x00007f658d21236d: lea    (%r12,%r9,8),%r10  ;*getfield dense
                  ││                                                ; - com.google.re2j.Machine$Queue::contains@18 (line 52)
                  ││                                                ; - com.google.re2j.Machine::add@9 (line 344)
  0.10%    0.11%  ││  0x00007f658d212371: mov    %r10,0x40(%rsp)
  0.29%    0.35%  ││  0x00007f658d212376: lea    0x10(%r10,%r11,4),%rbp
  0.02%    0.07%  ││  0x00007f658d21237b: mov    0x0(%rbp),%r10d    ;*aaload
                  ││                                                ; - com.google.re2j.Machine$Queue::add@24 (line 61)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.32%    0.21%  ││  0x00007f658d21237f: test   %r10d,%r10d
                  ││  0x00007f658d212382: je     0x00007f658d2124c9  ;*ifnonnull
                  ││                                                ; - com.google.re2j.Machine$Queue::add@27 (line 62)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.08%    0.13%  ││  0x00007f658d212388: lea    (%r12,%r10,8),%rbx  ;*aload_3
                  ││                                                ; - com.google.re2j.Machine$Queue::add@45 (line 65)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.26%    0.27%  ││  0x00007f658d21238c: mov    0x30(%rsp),%r11d
  0.03%    0.02%  ││  0x00007f658d212391: mov    %r11d,0xc(%rbx)    ;*putfield pc
                  ││                                                ; - com.google.re2j.Machine$Queue::add@52 (line 66)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.49%    0.45%  ││  0x00007f658d212395: mov    0x8(%rsp),%r10
  0.10%    0.10%  ││  0x00007f658d21239a: mov    0x14(%r10),%r10d   ;*getfield prog
                  ││                                                ; - com.google.re2j.Machine::add@26 (line 348)
  0.33%    0.39%  ││  0x00007f658d21239e: mov    %r12d,0x10(%rbx)   ;*putfield thread
                  ││                                                ; - com.google.re2j.Machine$Queue::add@47 (line 65)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.03%    0.05%  ││  0x00007f658d2123a2: mov    0x14(%r12,%r10,8),%ebp  ;*getfield inst
                  ││                                                ; - com.google.re2j.Prog::getInst@1 (line 29)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 348)
                  ││                                                ; implicit exception: dispatches to 0x00007f658d212bdd
  0.39%    0.45%  ││  0x00007f658d2123a7: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f658d212bf1
  0.38%    0.40%  ││  0x00007f658d2123ac: cmp    $0xf8002f22,%r11d  ;   {metadata(&apos;java/util/ArrayList&apos;)}
                  ││  0x00007f658d2123b3: jne    0x00007f658d212695
  0.38%    0.37%  ││  0x00007f658d2123b9: lea    (%r12,%rbp,8),%r10  ;*invokeinterface get
                  ││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.01%    0.04%  ││  0x00007f658d2123bd: mov    0x10(%r10),%ebp    ;*getfield size
                  ││                                                ; - java.util.ArrayList::rangeCheck@2 (line 652)
                  ││                                                ; - java.util.ArrayList::get@2 (line 429)
                  ││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.29%    0.15%  ││  0x00007f658d2123c1: mov    0x30(%rsp),%r11d
  0.09%    0.02%  ││  0x00007f658d2123c6: cmp    %ebp,%r11d
                  ││  0x00007f658d2123c9: jge    0x00007f658d2126f9  ;*if_icmplt
                  ││                                                ; - java.util.ArrayList::rangeCheck@5 (line 652)
                  ││                                                ; - java.util.ArrayList::get@2 (line 429)
                  ││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.53%    0.39%  ││  0x00007f658d2123cf: mov    0x14(%r10),%ebp    ;*getfield elementData
                  ││                                                ; - java.util.ArrayList::elementData@1 (line 418)
                  ││                                                ; - java.util.ArrayList::get@7 (line 431)
                  ││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.05%    0.04%  ││  0x00007f658d2123d3: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f658d212c05
  0.75%    0.52%  ││  0x00007f658d2123d8: mov    0x30(%rsp),%r8d
  0.07%    0.04%  ││  0x00007f658d2123dd: cmp    %r11d,%r8d
                  ││  0x00007f658d2123e0: jae    0x00007f658d212605
  0.49%    0.36%  ││  0x00007f658d2123e6: lea    (%r12,%rbp,8),%r10
           0.01%  ││  0x00007f658d2123ea: mov    0x10(%r10,%r8,4),%ebp  ;*aaload
                  ││                                                ; - java.util.ArrayList::elementData@5 (line 418)
                  ││                                                ; - java.util.ArrayList::get@7 (line 431)
                  ││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.27%    0.03%  ││  0x00007f658d2123ef: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f658d212c19
  0.82%    0.70%  ││  0x00007f658d2123f4: cmp    $0xf8019844,%r10d  ;   {metadata(&apos;com/google/re2j/Inst&apos;)}
                  ││  0x00007f658d2123fb: jne    0x00007f658d212784
  0.42%    0.43%  ││  0x00007f658d212401: lea    (%r12,%rbp,8),%r10  ;*checkcast
                  ││                                                ; - com.google.re2j.Prog::getInst@10 (line 29)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.00%           ││  0x00007f658d212405: mov    %r10,0x38(%rsp)
  0.22%    0.05%  ││  0x00007f658d21240a: mov    0x14(%r10),%r11d   ;*getfield op
                  ││                                                ; - com.google.re2j.Inst::op@4 (line 44)
                  ││                                                ; - com.google.re2j.Machine::add@40 (line 349)
  0.04%    0.03%  ││  0x00007f658d21240e: mov    0xc(%r12,%r11,8),%ebp  ;*getfield ordinal
                  ││                                                ; - java.lang.Enum::ordinal@1 (line 103)
                  ││                                                ; - com.google.re2j.Inst::op@7 (line 44)
                  ││                                                ; - com.google.re2j.Machine::add@40 (line 349)
                  ││                                                ; implicit exception: dispatches to 0x00007f658d212c49
  1.24%    1.30%  ││  0x00007f658d212413: cmp    $0xb,%ebp
                  ││  0x00007f658d212416: jae    0x00007f658d212635  ;*iaload
                  ││                                                ; - com.google.re2j.Inst::op@10 (line 44)
                  ││                                                ; - com.google.re2j.Machine::add@40 (line 349)
  0.28%    0.21%  ││  0x00007f658d21241c: mov    %r11,%r10
  0.29%    0.25%  ││  0x00007f658d21241f: shl    $0x3,%r10
                  ││  0x00007f658d212423: movabs $0x76dd29db8,%r11  ;   {oop(a &apos;com/google/re2j/Inst$Op&apos;)}
  0.16%    0.18%  ││  0x00007f658d21242d: movabs $0x76dd36730,%r8   ;   {oop([I)}
  0.26%    0.33%  ││  0x00007f658d212437: mov    0x10(%r8,%rbp,4),%r8d
  1.80%    1.48%  ││  0x00007f658d21243c: dec    %r8d
  0.39%    0.38%  ││  0x00007f658d21243f: cmp    $0x3,%r8d
  0.67%    0.65%  ││  0x00007f658d212443: cmovb  %r11,%r10          ;*invokevirtual ordinal
                  ││                                                ; - com.google.re2j.Machine::add@43 (line 349)
  1.25%    1.19%  ││  0x00007f658d212447: mov    0xc(%r10),%ebp     ;*getfield ordinal
                  ││                                                ; - java.lang.Enum::ordinal@1 (line 103)
                  ││                                                ; - com.google.re2j.Machine::add@43 (line 349)
  2.80%    2.84%  ││  0x00007f658d21244b: cmp    $0xb,%ebp
                  ││  0x00007f658d21244e: jae    0x00007f658d21265d
  0.68%    0.59%  ││  0x00007f658d212454: movabs $0x76dd58e10,%r10  ;   {oop([I)}
                  ││  0x00007f658d21245e: mov    0x10(%r10,%rbp,4),%r11d  ;*iaload
                  ││                                                ; - com.google.re2j.Machine::add@46 (line 349)
  2.93%    2.56%  ││  0x00007f658d212463: mov    %r11d,%r8d
                  ││  0x00007f658d212466: dec    %r8d
  0.71%    0.48%  ││  0x00007f658d212469: cmp    $0xb,%r8d
                  ││  0x00007f658d21246d: jae    0x00007f658d212685  ;*tableswitch
                  ││                                                ; - com.google.re2j.Machine::add@47 (line 349)
  0.67%    0.48%  ││  0x00007f658d212473: mov    0x38(%rsp),%r10
  0.02%    0.03%  ││  0x00007f658d212478: mov    0xc(%r10),%ecx     ;*getfield out
                  ││                                                ; - com.google.re2j.Machine::add@249 (line 376)
                  ││  0x00007f658d21247c: mov    0x10(%r10),%r10d   ;*getfield arg
                  ││                                                ; - com.google.re2j.Machine::add@217 (line 373)
  0.01%    0.01%  ││  0x00007f658d212480: movslq %r11d,%r11
  0.71%    0.40%  ││  0x00007f658d212483: movabs $0x7f658d212260,%r8  ;   {section_word}
  0.04%    0.07%  ││  0x00007f658d21248d: jmpq   *-0x8(%r8,%r11,8)  ;*tableswitch
                  ││                                                ; - com.google.re2j.Machine::add@47 (line 349)
  0.04%    0.01%  ↘│  0x00007f658d212492: mov    0xc(%r12,%r9,8),%r10d  ; implicit exception: dispatches to 0x00007f658d212cc1
  0.01%    0.01%   │  0x00007f658d212497: cmp    %r10d,%ebp
                   │  0x00007f658d21249a: jae    0x00007f658d212745
  0.02%    0.09%   │  0x00007f658d2124a0: lea    (%r12,%r9,8),%r10
  0.01%    0.01%   │  0x00007f658d2124a4: mov    0x10(%r10,%rbp,4),%r10d  ;*aaload
                   │                                                ; - com.google.re2j.Machine$Queue::contains@22 (line 52)
                   │                                                ; - com.google.re2j.Machine::add@9 (line 344)
  0.07%    0.03%   │  0x00007f658d2124a9: mov    0xc(%r12,%r10,8),%ebp  ;*getfield pc
                   │                                                ; - com.google.re2j.Machine$Queue::contains@29 (line 53)
                   │                                                ; - com.google.re2j.Machine::add@9 (line 344)
                   │                                                ; implicit exception: dispatches to 0x00007f658d212ce1
  0.03%    0.11%   │  0x00007f658d2124ae: cmp    %edi,%ebp
                   ╰  0x00007f658d2124b0: jne    0x00007f658d212344  ;*if_icmpne
                                                                    ; - com.google.re2j.Machine$Queue::contains@33 (line 53)
                                                                    ; - com.google.re2j.Machine::add@9 (line 344)
                      0x00007f658d2124b6: mov    $0xffffff65,%esi
                      0x00007f658d2124bb: mov    %edi,0x2c(%rsp)
                      0x00007f658d2124bf: callq  0x00007f658d0051a0  ; OopMap{[112]=Oop [8]=Oop [32]=Oop [72]=Oop off=516}
                                                                    ;*if_icmpne
....................................................................................................
 28.48%   25.39%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 503 (496 bytes) 

                                                                     ;*invokespecial add
                                                                     ; - com.google.re2j.Machine::step@394 (line 325)
                                                                     ;   {optimized virtual_call}
                       0x00007f658d221138: test   %rax,%rax
                       0x00007f658d22113b: je     0x00007f658d2219c7
                       0x00007f658d221141: mov    %rax,0x48(%rsp)
                       0x00007f658d221146: mov    0x20(%rsp),%ecx
                       0x00007f658d22114a: mov    0x84(%rsp),%r10d
                       0x00007f658d221152: mov    0x8c(%rsp),%r14d   ;*aload
                                                                     ; - com.google.re2j.Machine::step@399 (line 327)
  0.16%    0.12%       0x00007f658d22115a: mov    0x28(%rsp),%r11
  0.00%                0x00007f658d22115f: mov    0x20(%r11),%ebp    ;*getfield pool
                                                                     ; - com.google.re2j.Machine::step@405 (line 329)
  0.01%                0x00007f658d221163: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007f658d2224e1
  0.33%    0.24%       0x00007f658d221168: cmp    $0xf8002f22,%r8d   ;   {metadata(&apos;java/util/ArrayList&apos;)}
                       0x00007f658d22116f: jne    0x00007f658d221c4d
  0.11%    0.14%       0x00007f658d221175: lea    (%r12,%rbp,8),%r8  ;*invokeinterface add
                                                                     ; - com.google.re2j.Machine::step@410 (line 329)
  0.00%                0x00007f658d221179: mov    0x14(%r8),%ebx     ;*getfield elementData
                                                                     ; - java.util.ArrayList::ensureCapacityInternal@1 (line 223)
                                                                     ; - java.util.ArrayList::add@7 (line 458)
                                                                     ; - com.google.re2j.Machine::step@410 (line 329)
                       0x00007f658d22117d: mov    0x10(%r8),%ebp     ;*getfield size
                                                                     ; - java.util.ArrayList::add@16 (line 459)
                                                                     ; - com.google.re2j.Machine::step@410 (line 329)
  0.32%    0.27%       0x00007f658d221181: mov    %ebp,%r9d
  0.09%    0.12%       0x00007f658d221184: inc    %r9d               ;*iadd
                                                                     ; - java.util.ArrayList::add@21 (line 459)
                                                                     ; - com.google.re2j.Machine::step@410 (line 329)
                       0x00007f658d221187: cmp    $0xed9f0db7,%ebx   ;   {oop(a &apos;java/lang/Object&apos;[0] )}
                       0x00007f658d22118d: je     0x00007f658d2219b1  ;*if_acmpne
                                                                     ; - java.util.ArrayList::ensureCapacityInternal@7 (line 223)
                                                                     ; - java.util.ArrayList::add@7 (line 458)
                                                                     ; - com.google.re2j.Machine::step@410 (line 329)
                       0x00007f658d221193: mov    %r9d,%esi          ;*aload_0
                                                                     ; - java.util.ArrayList::ensureCapacityInternal@17 (line 227)
                                                                     ; - java.util.ArrayList::add@7 (line 458)
                                                                     ; - com.google.re2j.Machine::step@410 (line 329)
  0.25%    0.27%       0x00007f658d221196: mov    0xc(%r8),%r11d     ;*getfield modCount
                                                                     ; - java.util.ArrayList::ensureExplicitCapacity@2 (line 231)
                                                                     ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                                     ; - java.util.ArrayList::add@7 (line 458)
                                                                     ; - com.google.re2j.Machine::step@410 (line 329)
  0.17%    0.16%       0x00007f658d22119a: inc    %r11d
  0.01%                0x00007f658d22119d: mov    %r11d,0xc(%r8)     ;*putfield modCount
                                                                     ; - java.util.ArrayList::ensureExplicitCapacity@7 (line 231)
                                                                     ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                                     ; - java.util.ArrayList::add@7 (line 458)
                                                                     ; - com.google.re2j.Machine::step@410 (line 329)
                       0x00007f658d2211a1: mov    0xc(%r12,%rbx,8),%edi  ;*arraylength
                                                                     ; - java.util.ArrayList::ensureExplicitCapacity@15 (line 234)
                                                                     ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                                     ; - java.util.ArrayList::add@7 (line 458)
                                                                     ; - com.google.re2j.Machine::step@410 (line 329)
                                                                     ; implicit exception: dispatches to 0x00007f658d2224f1
  0.34%    0.29%       0x00007f658d2211a6: mov    %esi,%r11d
  0.12%    0.09%       0x00007f658d2211a9: sub    %edi,%r11d
  0.01%    0.01%       0x00007f658d2211ac: test   %r11d,%r11d
                       0x00007f658d2211af: jg     0x00007f658d2217af  ;*ifle
                                                                     ; - java.util.ArrayList::ensureExplicitCapacity@17 (line 234)
                                                                     ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                                     ; - java.util.ArrayList::add@7 (line 458)
                                                                     ; - com.google.re2j.Machine::step@410 (line 329)
  0.01%                0x00007f658d2211b5: mov    %r9d,0x10(%r8)     ;*putfield size
                                                                     ; - java.util.ArrayList::add@22 (line 459)
                                                                     ; - com.google.re2j.Machine::step@410 (line 329)
  0.19%    0.27%       0x00007f658d2211b9: mov    %rbx,%r8
  0.09%    0.08%       0x00007f658d2211bc: shl    $0x3,%r8           ;*return
                                                                     ; - java.util.ArrayList::ensureExplicitCapacity@25 (line 236)
                                                                     ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                                     ; - java.util.ArrayList::add@7 (line 458)
                                                                     ; - com.google.re2j.Machine::step@410 (line 329)
  0.00%    0.00%       0x00007f658d2211c0: mov    0xc(%r8),%r11d
  0.00%    0.03%       0x00007f658d2211c4: cmp    %r11d,%ebp
                       0x00007f658d2211c7: jae    0x00007f658d221c09
  0.26%    0.19%       0x00007f658d2211cd: mov    0x8(%r8),%r11d
  0.13%    0.10%       0x00007f658d2211d1: cmp    $0xf80022f5,%r11d  ;   {metadata(&apos;java/lang/Object&apos;[])}
                       0x00007f658d2211d8: jne    0x00007f658d221c89
  0.00%                0x00007f658d2211de: lea    0x10(%r8,%rbp,4),%r10
  0.00%    0.00%       0x00007f658d2211e3: mov    0x48(%rsp),%r11
  0.22%    0.15%       0x00007f658d2211e8: shr    $0x3,%r11
  0.09%    0.10%       0x00007f658d2211ec: mov    %r11d,(%r10)
  0.01%    0.01%       0x00007f658d2211ef: shr    $0x9,%r10
           0.01%       0x00007f658d2211f3: movabs $0x7f659d620000,%r11
  0.22%    0.19%       0x00007f658d2211fd: mov    %r12b,(%r11,%r10,1)  ;*aastore
                                                                     ; - java.util.ArrayList::add@26 (line 459)
                                                                     ; - com.google.re2j.Machine::step@410 (line 329)
  0.13%    0.10%       0x00007f658d221201: xor    %r10d,%r10d        ; OopMap{[8]=Oop [24]=Oop [40]=Oop off=452}
                                                                     ;*goto
                                                                     ; - com.google.re2j.Machine::step@419 (line 264)
  0.09%    0.07%   ↗   0x00007f658d221204: test   %eax,0x179f6df6(%rip)        # 0x00007f65a4c18000
                   │                                                 ;*goto
                   │                                                 ; - com.google.re2j.Machine::step@419 (line 264)
                   │                                                 ;   {poll}
  0.09%    0.08%   │   0x00007f658d22120a: mov    0x8(%rsp),%r10
  0.38%    0.33%   │   0x00007f658d22120f: mov    0xc(%r10),%r10d
  0.24%    0.17%   │   0x00007f658d221213: cmp    %r10d,%r14d
                   │   0x00007f658d221216: jge    0x00007f658d22144d
  0.05%    0.08%   │   0x00007f658d22121c: mov    %ecx,0x20(%rsp)
  0.07%    0.10%   │   0x00007f658d221220: mov    %r14d,%r10d        ;*aload_1
                   │                                                 ; - com.google.re2j.Machine::step@21 (line 265)
  0.30%    0.28%   │   0x00007f658d221223: mov    0x8(%rsp),%r11
  0.22%    0.28%   │   0x00007f658d221228: mov    0x10(%r11),%r11d   ;*getfield dense
                   │                                                 ; - com.google.re2j.Machine::step@22 (line 265)
  0.25%    0.20%   │   0x00007f658d22122c: mov    0xc(%r12,%r11,8),%r9d  ; implicit exception: dispatches to 0x00007f658d222479
  0.26%    0.19%   │   0x00007f658d221231: cmp    %r9d,%r10d
                   │   0x00007f658d221234: jae    0x00007f658d221a9d
  0.35%    0.33%   │   0x00007f658d22123a: shl    $0x3,%r11
  0.25%    0.28%   │   0x00007f658d22123e: mov    0x10(%r11,%r10,4),%r8d  ;*aaload
                   │                                                 ; - com.google.re2j.Machine::step@27 (line 265)
  0.15%    0.16%   │   0x00007f658d221243: mov    0x10(%r12,%r8,8),%r11d  ;*getfield thread
                   │                                                 ; - com.google.re2j.Machine::step@40 (line 269)
                   │                                                 ; implicit exception: dispatches to 0x00007f658d222511
  0.37%    0.30%   │   0x00007f658d221248: mov    %r10d,%r14d
  0.28%    0.35%   │   0x00007f658d22124b: inc    %r14d              ;*iadd
                   │                                                 ; - com.google.re2j.Machine::step@241 (line 293)
  0.21%    0.23%   │   0x00007f658d22124e: test   %r11d,%r11d
                  ╭│   0x00007f658d221251: jne    0x00007f658d22125e  ;*ifnonnull
                  ││                                                 ; - com.google.re2j.Machine::step@47 (line 270)
  0.05%    0.08%  ││   0x00007f658d221253: mov    0x24(%rsp),%r10d
  0.06%    0.09%  ││   0x00007f658d221258: mov    0x20(%rsp),%ecx
  0.06%    0.02%  │╰   0x00007f658d22125c: jmp    0x00007f658d221204
  0.05%    0.16%  ↘    0x00007f658d22125e: mov    0x24(%rsp),%r8d
  0.00%    0.02%       0x00007f658d221263: test   %r8d,%r8d
                       0x00007f658d221266: jne    0x00007f658d221dad  ;*ifeq
                                                                     ; - com.google.re2j.Machine::step@55 (line 273)
  0.21%    0.25%       0x00007f658d22126c: mov    0x10(%r12,%r11,8),%r8d  ;*getfield inst
                                                                     ; - com.google.re2j.Machine::step@107 (line 278)
  0.47%    0.72%       0x00007f658d221271: mov    0x14(%r12,%r8,8),%ecx  ;*getfield op
                                                                     ; - com.google.re2j.Machine::step@120 (line 280)
                                                                     ; implicit exception: dispatches to 0x00007f658d2224c1
  1.55%    2.23%       0x00007f658d221276: mov    0xc(%r12,%rcx,8),%ebp  ;*getfield ordinal
                                                                     ; - java.lang.Enum::ordinal@1 (line 103)
                                                                     ; - com.google.re2j.Machine::step@123 (line 280)
                                                                     ; implicit exception: dispatches to 0x00007f658d2224d1
  1.92%    2.46%       0x00007f658d22127b: cmp    $0xb,%ebp
                       0x00007f658d22127e: jae    0x00007f658d221bc5
  0.35%    0.55%       0x00007f658d221284: movabs $0x76dd58e10,%r9   ;   {oop([I)}
  0.01%    0.00%       0x00007f658d22128e: mov    0x10(%r9,%rbp,4),%esi  ;*iaload
                                                                     ; - com.google.re2j.Machine::step@126 (line 280)
  2.37%    2.77%       0x00007f658d221293: mov    0x18(%r12,%r8,8),%ecx  ;*getfield runes
                                                                     ; - com.google.re2j.Machine::step@320 (line 310)
                       0x00007f658d221298: mov    0xc(%r12,%r11,8),%edi  ;*getfield cap
                                                                     ; - com.google.re2j.Machine::step@176 (line 287)
                       0x00007f658d22129d: lea    (%r12,%r11,8),%r9  ;*getfield thread
                                                                     ; - com.google.re2j.Machine::step@40 (line 269)
  0.01%                0x00007f658d2212a1: cmp    $0x3,%esi
                       0x00007f658d2212a4: je     0x00007f658d221417
  0.41%    0.35%       0x00007f658d2212aa: cmp    $0x3,%esi
                       0x00007f658d2212ad: jg     0x00007f658d2210ce  ;*tableswitch
                                                                     ; - com.google.re2j.Machine::step@127 (line 280)
  0.12%    0.09%       0x00007f658d2212b3: lea    (%r12,%r8,8),%rbx  ;*getfield inst
                                                                     ; - com.google.re2j.Machine::step@107 (line 278)
                       0x00007f658d2212b7: cmp    $0x1,%esi
                    ╭  0x00007f658d2212ba: je     0x00007f658d22134f
  0.42%    0.18%    │  0x00007f658d2212c0: cmp    $0x1,%esi
                    │  0x00007f658d2212c3: jle    0x00007f658d221e95  ;*tableswitch
                    │                                                ; - com.google.re2j.Machine::step@127 (line 280)
  0.11%    0.04%    │  0x00007f658d2212c9: mov    0xc(%r12,%rcx,8),%ebp  ;*arraylength
                    │                                                ; - com.google.re2j.Inst::matchRune@4 (line 59)
                    │                                                ; - com.google.re2j.Machine::step@308 (line 306)
                    │                                                ; implicit exception: dispatches to 0x00007f658d2225c5
  0.01%    0.00%    │  0x00007f658d2212ce: cmp    $0x1,%ebp
                    │  0x00007f658d2212d1: jne    0x00007f658d2220ad  ;*if_icmpne
                    │                                                ; - com.google.re2j.Inst::matchRune@6 (line 59)
                    │                                                ; - com.google.re2j.Machine::step@308 (line 306)
                    │  0x00007f658d2212d7: test   %ebp,%ebp
                    │  0x00007f658d2212d9: jbe    0x00007f658d221eed
  0.29%    0.05%    │  0x00007f658d2212df: mov    0x10(%r12,%rcx,8),%edx  ;*iaload
                    │                                                ; - com.google.re2j.Inst::matchRune@14 (line 60)
                    │                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.13%    0.05%    │  0x00007f658d2212e4: mov    0x20(%rsp),%ecx
  0.01%             │  0x00007f658d2212e8: cmp    %edx,%ecx
                    │  0x00007f658d2212ea: je     0x00007f658d2219ff  ;*if_icmpne
                    │                                                ; - com.google.re2j.Inst::matchRune@18 (line 61)
                    │                                                ; - com.google.re2j.Machine::step@308 (line 306)
                    │  0x00007f658d2212f0: mov    $0x1,%ebp
  0.24%    0.06%    │  0x00007f658d2212f5: and    0x10(%r12,%r8,8),%ebp  ;*iand
                    │                                                ; - com.google.re2j.Inst::matchRune@28 (line 64)
                    │                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.13%    0.04%    │  0x00007f658d2212fa: test   %ebp,%ebp
                    │  0x00007f658d2212fc: je     0x00007f658d2221a1  ;*ifeq
                    │                                                ; - com.google.re2j.Inst::matchRune@29 (line 64)
                    │                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.01%             │  0x00007f658d221302: mov    %edx,0x20(%rsp)
                    │  0x00007f658d221306: vmovq  %rbx,%xmm0
  0.29%    0.04%    │  0x00007f658d22130b: mov    %r9,%r13
  0.13%    0.05%    │  0x00007f658d22130e: mov    %r8d,%eax
  0.01%    0.00%    │  0x00007f658d221311: mov    %r14d,0x8c(%rsp)
                    │  0x00007f658d221319: mov    %r11d,%edx
  0.22%    0.10%    │  0x00007f658d22131c: mov    %r10d,0x84(%rsp)
  0.13%    0.00%    │  0x00007f658d221324: movabs $0x76dd0c630,%r9   ;   {oop(a {type array int}[63] )}
  0.00%             │  0x00007f658d22132e: mov    $0x1f,%r10d
                    │  0x00007f658d221334: mov    $0x1f,%ebx
  0.25%    0.02%    │  0x00007f658d221339: xor    %r11d,%r11d
  0.11%    0.00%    │  0x00007f658d22133c: mov    $0x3f,%r8d
  0.01%             │  0x00007f658d221342: mov    %r11d,%r14d
                    │  0x00007f658d221345: vmovd  %r8d,%xmm1
  0.26%    0.00%    │  0x00007f658d22134a: jmpq   0x00007f658d221494
                    ↘  0x00007f658d22134f: mov    0x88(%rsp),%edx
                       0x00007f658d221356: cmp    $0x2,%edx
                       0x00007f658d221359: je     0x00007f658d2219db  ;*aload
                                                                     ; - com.google.re2j.Machine::step@174 (line 287)
                       0x00007f658d22135f: mov    0xc(%r12,%rdi,8),%eax  ;*arraylength
                                                                     ; - com.google.re2j.Machine::step@179 (line 287)
                                                                     ; implicit exception: dispatches to 0x00007f658d2225e5
                       0x00007f658d221364: test   %eax,%eax
                       0x00007f658d221366: jle    0x00007f658d2213fe  ;*ifle
                                                                     ; - com.google.re2j.Machine::step@180 (line 287)
....................................................................................................
 17.24%   16.81%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 503 (312 bytes) 

                          0x00007f658d22165e: mov    %r8d,0x24(%rsp)
                          0x00007f658d221663: mov    %ecx,0x30(%rsp)
                          0x00007f658d221667: mov    %edi,0x34(%rsp)
                          0x00007f658d22166b: callq  0x00007f658d0051a0  ; OopMap{rbp=NarrowOop [8]=Oop [24]=Oop [32]=NarrowOop [36]=NarrowOop [40]=Oop [52]=NarrowOop off=1584}
                                                                        ;*invokeinterface add
                                                                        ; - com.google.re2j.Machine::step@279 (line 297)
                                                                        ;   {runtime_call}
                          0x00007f658d221670: callq  0x00007f65a3905c50  ;*invokeinterface add
                                                                        ; - com.google.re2j.Machine::step@279 (line 297)
                                                                        ;   {runtime_call}
  0.15%    0.19%     ↗    0x00007f658d221675: mov    0x20(%rsp),%r8d
  0.13%    0.15%     │    0x00007f658d22167a: cmp    $0x3f,%r10d
                     │    0x00007f658d22167e: jge    0x00007f658d221fc1  ;*if_icmpge
                     │                                                  ; - com.google.re2j.Unicode::simpleFold@48 (line 215)
                     │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 67)
                     │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
  0.01%    0.01%     │    0x00007f658d221684: cmp    $0x3f,%r10d
                     │    0x00007f658d221688: jae    0x00007f658d221df9
  0.11%    0.10%     │    0x00007f658d22168e: mov    0x10(%r9,%r10,4),%ebp  ;*aaload
                     │                                                  ; - com.google.re2j.Unicode::simpleFold@55 (line 215)
                     │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 67)
                     │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
  0.12%    0.21%     │    0x00007f658d221693: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f658d2225b5
  0.19%    0.26%     │    0x00007f658d221698: test   %r11d,%r11d
                     │    0x00007f658d22169b: jbe    0x00007f658d221e49
  0.11%    0.18%     │    0x00007f658d2216a1: mov    0x10(%r12,%rbp,8),%ebp  ;*iaload
                     │                                                  ; - com.google.re2j.Unicode::simpleFold@57 (line 215)
                     │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 67)
                     │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
  0.11%    0.08%     │    0x00007f658d2216a6: cmp    %r14d,%ebp
                     │    0x00007f658d2216a9: je     0x00007f658d222011  ;*if_icmpne
                     │                                                  ; - com.google.re2j.Unicode::simpleFold@59 (line 215)
                     │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 67)
                     │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
  0.23%    0.31%     │    0x00007f658d2216af: mov    %r14d,%r8d
  0.00%    0.01%     │    0x00007f658d2216b2: cmp    $0x7f,%r8d
                     │    0x00007f658d2216b6: jg     0x00007f658d22205d  ;*if_icmpgt
                     │                                                  ; - com.google.re2j.Unicode::toLower@3 (line 177)
                     │                                                  ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                     │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 67)
                     │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
  0.01%    0.02%     │    0x00007f658d2216bc: cmp    $0x41,%r8d
  0.04%    0.13%     │    0x00007f658d2216c0: jl     0x00007f658d221f71  ;*if_icmpgt
                     │                                                  ; - com.google.re2j.Unicode::toLower@9 (line 178)
                     │                                                  ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                     │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 67)
                     │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
  0.23%    0.26%     │    0x00007f658d2216c6: cmp    $0x5a,%r8d
                  ╭  │    0x00007f658d2216ca: jg     0x00007f658d2216d8  ;*if_icmpgt
                  │  │                                                  ; - com.google.re2j.Unicode::toLower@15 (line 178)
                  │  │                                                  ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                  │  │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 67)
                  │  │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
                  │  │    0x00007f658d2216cc: mov    %r8d,%r10d
                  │  │    0x00007f658d2216cf: add    $0x20,%r10d        ;*iinc
                  │  │                                                  ; - com.google.re2j.Unicode::toLower@18 (line 179)
                  │  │                                                  ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                  │  │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 67)
                  │  │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
                  │  │    0x00007f658d2216d3: cmp    %r8d,%r10d
                  │╭ │    0x00007f658d2216d6: jne    0x00007f658d2216f3  ;*if_icmpeq
                  ││ │                                                  ; - com.google.re2j.Unicode::simpleFold@77 (line 224)
                  ││ │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 67)
                  ││ │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
  0.01%    0.00%  ↘│ │    0x00007f658d2216d8: cmp    $0x61,%r8d
                   │ │    0x00007f658d2216dc: jl     0x00007f658d2222b9  ;*if_icmpgt
                   │ │                                                  ; - com.google.re2j.Unicode::toUpper@9 (line 167)
                   │ │                                                  ; - com.google.re2j.Unicode::simpleFold@83 (line 227)
                   │ │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 67)
                   │ │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
  0.03%    0.03%   │ │    0x00007f658d2216e2: cmp    $0x7a,%r8d
                   │ │    0x00007f658d2216e6: jg     0x00007f658d222305  ;*if_icmpgt
                   │ │                                                  ; - com.google.re2j.Unicode::toUpper@15 (line 167)
                   │ │                                                  ; - com.google.re2j.Unicode::simpleFold@83 (line 227)
                   │ │                                                  ; - com.google.re2j.Inst::matchRune@50 (line 67)
                   │ │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
  0.11%    0.10%   │ │    0x00007f658d2216ec: mov    %r8d,%r10d
  0.25%    0.28%   │ │    0x00007f658d2216ef: add    $0xffffffe0,%r10d  ; OopMap{r9=Oop rdi=NarrowOop rdx=NarrowOop rax=NarrowOop r13=Oop xmm0=Oop [8]=Oop [24]=Oop [40]=Oop off=1715}
                   │ │                                                  ;*goto
                   │ │                                                  ; - com.google.re2j.Inst::matchRune@54 (line 67)
                   │ │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
  0.02%    0.00%   ↘ │    0x00007f658d2216f3: test   %eax,0x179f6907(%rip)        # 0x00007f65a4c18000
                     │                                                  ;*goto
                     │                                                  ; - com.google.re2j.Inst::matchRune@54 (line 67)
                     │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
                     │                                                  ;   {poll}
  0.01%    0.05%     │    0x00007f658d2216f9: cmp    %ebx,%r10d
                     │    0x00007f658d2216fc: je     0x00007f658d22155a  ;*if_icmpeq
                     │                                                  ; - com.google.re2j.Inst::matchRune@39 (line 66)
                     │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
                     │    0x00007f658d221702: mov    %ebx,%r11d         ;*iload_1
                     │                                                  ; - com.google.re2j.Inst::matchRune@42 (line 68)
                     │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
  0.01%              │    0x00007f658d221705: cmp    %r10d,%ecx
                     │    0x00007f658d221708: je     0x00007f658d2219f3  ;*if_icmpne
                     │                                                  ; - com.google.re2j.Inst::matchRune@44 (line 68)
                     │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
           0.03%     │    0x00007f658d22170e: mov    %r10d,%r14d
  0.31%    0.57%     │    0x00007f658d221711: mov    %r11d,%ebx
                     │    0x00007f658d221714: mov    $0x1f,%esi
  0.01%              │    0x00007f658d221719: mov    $0x1f,%r8d
  0.00%    0.00%     │    0x00007f658d22171f: xor    %r10d,%r10d
  0.35%    0.66%     │    0x00007f658d221722: mov    $0x3f,%r11d
                     │    0x00007f658d221728: mov    %r10d,0x20(%rsp)
  0.01%    0.01%     │    0x00007f658d22172d: vmovd  %r11d,%xmm1
  0.01%             ╭│    0x00007f658d221732: jmp    0x00007f658d22177b
  0.01%    0.02%    ││ ↗  0x00007f658d221734: inc    %r8d               ;*iadd
                    ││ │                                                ; - com.google.re2j.Unicode::simpleFold@33 (line 210)
                    ││ │                                                ; - com.google.re2j.Inst::matchRune@50 (line 67)
                    ││ │                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.08%    0.08%    ││ │  0x00007f658d221737: mov    %r8d,0x20(%rsp)
  0.24%    0.41%    ││ │  0x00007f658d22173c: vmovd  %xmm1,%r8d         ; OopMap{r9=Oop rdi=NarrowOop rdx=NarrowOop rax=NarrowOop r13=Oop xmm0=Oop [8]=Oop [24]=Oop [40]=Oop off=1793}
                    ││ │                                                ;*goto
                    ││ │                                                ; - com.google.re2j.Unicode::simpleFold@40 (line 214)
                    ││ │                                                ; - com.google.re2j.Inst::matchRune@50 (line 67)
                    ││ │                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.77%    0.94%    ││↗│  0x00007f658d221741: test   %eax,0x179f68b9(%rip)        # 0x00007f65a4c18000
                    ││││                                                ;*goto
                    ││││                                                ; - com.google.re2j.Unicode::simpleFold@40 (line 214)
                    ││││                                                ; - com.google.re2j.Inst::matchRune@50 (line 67)
                    ││││                                                ; - com.google.re2j.Machine::step@308 (line 306)
                    ││││                                                ;   {poll}
  0.39%    0.81%    ││││  0x00007f658d221747: mov    0x20(%rsp),%r10d
  0.63%    0.88%    ││││  0x00007f658d22174c: cmp    %r8d,%r10d
                    │╰││  0x00007f658d22174f: jge    0x00007f658d221675  ;*if_icmpge
                    │ ││                                                ; - com.google.re2j.Unicode::simpleFold@9 (line 207)
                    │ ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 67)
                    │ ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.57%    0.87%    │ ││  0x00007f658d221755: mov    %r8d,%r10d
  0.61%    0.74%    │ ││  0x00007f658d221758: sub    0x20(%rsp),%r10d   ;*isub
                    │ ││                                                ; - com.google.re2j.Unicode::simpleFold@15 (line 208)
                    │ ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 67)
                    │ ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.42%    0.65%    │ ││  0x00007f658d22175d: mov    %r10d,%esi
  0.28%    0.53%    │ ││  0x00007f658d221760: sar    $0x1f,%esi
  0.62%    0.78%    │ ││  0x00007f658d221763: shr    $0x1f,%esi
  0.52%    0.78%    │ ││  0x00007f658d221766: add    %r10d,%esi
  0.41%    0.47%    │ ││  0x00007f658d221769: sar    %esi               ;*idiv
                    │ ││                                                ; - com.google.re2j.Unicode::simpleFold@17 (line 208)
                    │ ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 67)
                    │ ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.43%    0.56%    │ ││  0x00007f658d22176b: mov    0x20(%rsp),%r11d
  0.57%    0.85%    │ ││  0x00007f658d221770: add    %esi,%r11d         ;*iadd
                    │ ││                                                ; - com.google.re2j.Unicode::simpleFold@18 (line 208)
                    │ ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 67)
                    │ ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.54%    0.66%    │ ││  0x00007f658d221773: vmovd  %r8d,%xmm1
  0.43%    0.51%    │ ││  0x00007f658d221778: mov    %r11d,%r8d         ;*idiv
                    │ ││                                                ; - com.google.re2j.Unicode::simpleFold@17 (line 208)
                    │ ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 67)
                    │ ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.70%    0.96%    ↘ ││  0x00007f658d22177b: cmp    $0x3f,%r8d
                      ││  0x00007f658d22177f: jae    0x00007f658d221b25
  0.62%    0.79%      ││  0x00007f658d221785: movslq 0x20(%rsp),%r10
  0.61%    1.01%      ││  0x00007f658d22178a: movslq %esi,%r11
  0.37%    0.62%      ││  0x00007f658d22178d: add    %r11,%r10
  0.76%    0.93%      ││  0x00007f658d221790: mov    0x10(%r9,%r10,4),%ebp  ;*aaload
                      ││                                                ; - com.google.re2j.Unicode::simpleFold@24 (line 209)
                      ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 67)
                      ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.82%    0.94%      ││  0x00007f658d221795: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f658d2224b1
  1.60%    2.38%      ││  0x00007f658d22179a: test   %r11d,%r11d
                      ││  0x00007f658d22179d: jbe    0x00007f658d221b7d  ;*iaload
                      ││                                                ; - com.google.re2j.Unicode::simpleFold@26 (line 209)
                      ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 67)
                      ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.89%    1.29%      ││  0x00007f658d2217a3: mov    0x10(%r12,%rbp,8),%r11d
  0.54%    0.89%      ││  0x00007f658d2217a8: cmp    %r14d,%r11d
                      ╰│  0x00007f658d2217ab: jge    0x00007f658d221741  ;*if_icmpge
                       │                                                ; - com.google.re2j.Unicode::simpleFold@28 (line 209)
                       │                                                ; - com.google.re2j.Inst::matchRune@50 (line 67)
                       │                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.21%    0.35%       ╰  0x00007f658d2217ad: jmp    0x00007f658d221734
                          0x00007f658d2217af: mov    %edi,%r9d
                          0x00007f658d2217b2: sar    %r9d
                          0x00007f658d2217b5: add    %edi,%r9d          ;*iadd
                                                                        ; - java.util.ArrayList::grow@10 (line 255)
                                                                        ; - java.util.ArrayList::ensureExplicitCapacity@22 (line 235)
                                                                        ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                                        ; - java.util.ArrayList::add@7 (line 458)
....................................................................................................
 17.23%   24.41%  <total for region 3>

....[Hottest Region 4]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 503 (219 bytes) 

                        0x00007f658d221429: mov    0x20(%rsp),%ecx
                        0x00007f658d22142d: cmp    %ebx,%ecx
                        0x00007f658d22142f: jne    0x00007f658d2210c4  ;*if_icmpne
                                                                      ; - com.google.re2j.Machine::step@325 (line 310)
                        0x00007f658d221435: mov    %r10d,0x84(%rsp)
                        0x00007f658d22143d: mov    %r14d,0x8c(%rsp)
                        0x00007f658d221445: mov    %r9,%r13
                        0x00007f658d221448: jmpq   0x00007f658d22110d  ;*if_icmpge
                                                                      ; - com.google.re2j.Machine::step@18 (line 264)
                        0x00007f658d22144d: mov    0x8(%rsp),%r10
  0.00%                 0x00007f658d221452: mov    %r12d,0xc(%r10)    ;*getfield size
                                                                      ; - com.google.re2j.Machine::step@15 (line 264)
  0.06%    0.09%        0x00007f658d221456: add    $0x70,%rsp
  0.03%    0.02%        0x00007f658d22145a: pop    %rbp
                        0x00007f658d22145b: test   %eax,0x179f6b9f(%rip)        # 0x00007f65a4c18000
                                                                      ;   {poll_return}
                        0x00007f658d221461: retq   
  0.50%    0.63%   ↗    0x00007f658d221462: mov    %r14d,%r8d         ; OopMap{r9=Oop rdi=NarrowOop rdx=NarrowOop rax=NarrowOop r13=Oop xmm0=Oop [8]=Oop [24]=Oop [40]=Oop off=1061}
                   │                                                  ;*goto
                   │                                                  ; - com.google.re2j.Unicode::simpleFold@40 (line 214)
                   │                                                  ; - com.google.re2j.Inst::matchRune@33 (line 65)
                   │                                                  ; - com.google.re2j.Machine::step@308 (line 306)
  0.51%    0.79%   │↗   0x00007f658d221465: test   %eax,0x179f6b95(%rip)        # 0x00007f65a4c18000
                   ││                                                 ;*goto
                   ││                                                 ; - com.google.re2j.Unicode::simpleFold@40 (line 214)
                   ││                                                 ; - com.google.re2j.Inst::matchRune@33 (line 65)
                   ││                                                 ; - com.google.re2j.Machine::step@308 (line 306)
                   ││                                                 ;   {poll}
  0.68%    0.65%   ││   0x00007f658d22146b: cmp    %ebx,%r8d
                  ╭││   0x00007f658d22146e: jge    0x00007f658d2214d1  ;*if_icmpge
                  │││                                                 ; - com.google.re2j.Unicode::simpleFold@9 (line 207)
                  │││                                                 ; - com.google.re2j.Inst::matchRune@33 (line 65)
                  │││                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.47%    0.33%  │││   0x00007f658d221470: mov    %r8d,%r14d
  0.38%    0.44%  │││   0x00007f658d221473: vmovd  %ebx,%xmm1
  0.39%    0.58%  │││   0x00007f658d221477: mov    %ebx,%r8d
  0.58%    0.75%  │││   0x00007f658d22147a: sub    %r14d,%r8d         ;*isub
                  │││                                                 ; - com.google.re2j.Unicode::simpleFold@15 (line 208)
                  │││                                                 ; - com.google.re2j.Inst::matchRune@33 (line 65)
                  │││                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.44%    0.45%  │││   0x00007f658d22147d: mov    %r8d,%r10d
  0.47%    0.50%  │││   0x00007f658d221480: sar    $0x1f,%r10d
  0.37%    0.49%  │││   0x00007f658d221484: shr    $0x1f,%r10d
  0.60%    0.46%  │││   0x00007f658d221488: add    %r8d,%r10d
  0.56%    0.57%  │││   0x00007f658d22148b: sar    %r10d
  0.42%    0.48%  │││   0x00007f658d22148e: mov    %r14d,%ebx
  0.35%    0.45%  │││   0x00007f658d221491: add    %r10d,%ebx         ;*idiv
                  │││                                                 ; - com.google.re2j.Unicode::simpleFold@17 (line 208)
                  │││                                                 ; - com.google.re2j.Inst::matchRune@33 (line 65)
                  │││                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.67%    0.62%  │││   0x00007f658d221494: cmp    $0x3f,%ebx
                  │││   0x00007f658d221497: jae    0x00007f658d221ccd
  0.55%    0.76%  │││   0x00007f658d22149d: movslq %r14d,%r11
  0.38%    0.64%  │││   0x00007f658d2214a0: movslq %r10d,%r10
  0.66%    0.63%  │││   0x00007f658d2214a3: add    %r10,%r11
  0.90%    0.61%  │││   0x00007f658d2214a6: mov    0x10(%r9,%r11,4),%ebp  ;*aaload
                  │││                                                 ; - com.google.re2j.Unicode::simpleFold@24 (line 209)
                  │││                                                 ; - com.google.re2j.Inst::matchRune@33 (line 65)
                  │││                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.56%    0.67%  │││   0x00007f658d2214ab: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f658d222501
  0.49%    0.55%  │││   0x00007f658d2214b0: test   %r10d,%r10d
                  │││   0x00007f658d2214b3: jbe    0x00007f658d221d1d  ;*iaload
                  │││                                                 ; - com.google.re2j.Unicode::simpleFold@26 (line 209)
                  │││                                                 ; - com.google.re2j.Inst::matchRune@33 (line 65)
                  │││                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.64%    0.60%  │││   0x00007f658d2214b9: mov    0x10(%r12,%rbp,8),%r10d
  0.83%    0.66%  │││   0x00007f658d2214be: cmp    0x20(%rsp),%r10d
                  │╰│   0x00007f658d2214c3: jge    0x00007f658d221462  ;*if_icmpge
                  │ │                                                 ; - com.google.re2j.Unicode::simpleFold@28 (line 209)
                  │ │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 65)
                  │ │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.07%    0.12%  │ │   0x00007f658d2214c5: mov    %ebx,%r8d
  0.01%           │ │   0x00007f658d2214c8: inc    %r8d               ;*iadd
                  │ │                                                 ; - com.google.re2j.Unicode::simpleFold@33 (line 210)
                  │ │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 65)
                  │ │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.01%           │ │   0x00007f658d2214cb: vmovd  %xmm1,%ebx
  0.10%    0.19%  │ ╰   0x00007f658d2214cf: jmp    0x00007f658d221465
  0.48%    0.49%  ↘     0x00007f658d2214d1: cmp    $0x3f,%r8d
                        0x00007f658d2214d5: jge    0x00007f658d2221ed  ;*if_icmpge
                                                                      ; - com.google.re2j.Unicode::simpleFold@48 (line 215)
                                                                      ; - com.google.re2j.Inst::matchRune@33 (line 65)
                                                                      ; - com.google.re2j.Machine::step@308 (line 306)
                        0x00007f658d2214db: cmp    $0x3f,%r8d
                        0x00007f658d2214df: jae    0x00007f658d221ea5
  0.00%    0.02%        0x00007f658d2214e5: mov    0x10(%r9,%r8,4),%ebp  ;*aaload
                                                                      ; - com.google.re2j.Unicode::simpleFold@55 (line 215)
                                                                      ; - com.google.re2j.Inst::matchRune@33 (line 65)
                                                                      ; - com.google.re2j.Machine::step@308 (line 306)
  0.02%    0.01%        0x00007f658d2214ea: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f658d2225d5
  0.44%    0.46%        0x00007f658d2214ef: test   %r11d,%r11d
                        0x00007f658d2214f2: jbe    0x00007f658d221f39
  0.00%    0.00%        0x00007f658d2214f8: mov    0x10(%r12,%rbp,8),%ebp  ;*iaload
                                                                      ; - com.google.re2j.Unicode::simpleFold@57 (line 215)
                                                                      ; - com.google.re2j.Inst::matchRune@33 (line 65)
                                                                      ; - com.google.re2j.Machine::step@308 (line 306)
           0.00%        0x00007f658d2214fd: cmp    0x20(%rsp),%ebp
                        0x00007f658d221501: je     0x00007f658d222235  ;*if_icmpne
                                                                      ; - com.google.re2j.Unicode::simpleFold@59 (line 215)
                                                                      ; - com.google.re2j.Inst::matchRune@33 (line 65)
                                                                      ; - com.google.re2j.Machine::step@308 (line 306)
  0.00%    0.01%        0x00007f658d221507: mov    0x20(%rsp),%r11d
  0.36%    0.54%        0x00007f658d22150c: cmp    $0x7f,%r11d
                        0x00007f658d221510: jg     0x00007f658d22226d  ;*if_icmpgt
                                                                      ; - com.google.re2j.Unicode::toLower@3 (line 177)
                                                                      ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                                                                      ; - com.google.re2j.Inst::matchRune@33 (line 65)
                                                                      ; - com.google.re2j.Machine::step@308 (line 306)
           0.00%        0x00007f658d221516: cmp    $0x41,%r11d
                        0x00007f658d22151a: jl     0x00007f658d2220e5  ;*if_icmpgt
                                                                      ; - com.google.re2j.Unicode::toLower@9 (line 178)
                                                                      ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                                                                      ; - com.google.re2j.Inst::matchRune@33 (line 65)
                                                                      ; - com.google.re2j.Machine::step@308 (line 306)
  0.01%    0.01%        0x00007f658d221520: cmp    $0x5a,%r11d
                     ╭  0x00007f658d221524: jg     0x00007f658d221536  ;*if_icmpgt
                     │                                                ; - com.google.re2j.Unicode::toLower@15 (line 178)
                     │                                                ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                     │                                                ; - com.google.re2j.Inst::matchRune@33 (line 65)
                     │                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.02%    0.02%     │  0x00007f658d221526: mov    %r11d,%r10d
  0.40%    0.56%     │  0x00007f658d221529: add    $0x20,%r10d        ;*iinc
                     │                                                ; - com.google.re2j.Unicode::toLower@18 (line 179)
                     │                                                ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                     │                                                ; - com.google.re2j.Inst::matchRune@33 (line 65)
                     │                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.00%              │  0x00007f658d22152d: cmp    %r11d,%r10d
                     │  0x00007f658d221530: jne    0x00007f658d221705  ;*if_icmpeq
                     │                                                ; - com.google.re2j.Unicode::simpleFold@77 (line 224)
                     │                                                ; - com.google.re2j.Inst::matchRune@33 (line 65)
                     │                                                ; - com.google.re2j.Machine::step@308 (line 306)
                     ↘  0x00007f658d221536: cmp    $0x61,%r11d
                        0x00007f658d22153a: jl     0x00007f658d222351  ;*if_icmpgt
....................................................................................................
 14.44%   15.87%  <total for region 4>

....[Hottest Region 5]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 490 (390 bytes) 

                          0x00007f658d21289a: mov    %r10,(%rsp)
                          0x00007f658d21289e: nop
                          0x00007f658d21289f: callq  0x00007f658d046020  ; OopMap{off=1508}
                                                                        ;*invokespecial add
                                                                        ; - com.google.re2j.Machine::add@207 (line 369)
                                                                        ;   {optimized virtual_call}
                  ╭       0x00007f658d2128a4: jmpq   0x00007f658d212a22
                  │       0x00007f658d2128a9: mov    0x70(%rsp),%rax
                  │╭      0x00007f658d2128ae: jmpq   0x00007f658d212a22  ;*tableswitch
                  ││                                                    ; - com.google.re2j.Machine::add@47 (line 349)
  1.33%    0.85%  ││      0x00007f658d2128b3: mov    0x8(%rsp),%rsi
                  ││      0x00007f658d2128b8: mov    0x48(%rsp),%rdx
  0.01%    0.05%  ││      0x00007f658d2128bd: mov    0x1c(%rsp),%r8d
  0.00%           ││      0x00007f658d2128c2: mov    0x20(%rsp),%r9
  0.33%    0.14%  ││      0x00007f658d2128c7: mov    0x28(%rsp),%edi
                  ││      0x00007f658d2128cb: mov    0x70(%rsp),%r10
  0.02%    0.03%  ││      0x00007f658d2128d0: mov    %r10,(%rsp)
  0.01%           ││      0x00007f658d2128d4: mov    %rsi,%rbp
  0.25%    0.10%  ││      0x00007f658d2128d7: callq  0x00007f658d046020  ; OopMap{rbp=Oop [32]=Oop [56]=Oop [72]=Oop off=1564}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@131 (line 358)
                  ││                                                    ;   {optimized virtual_call}
           0.00%  ││      0x00007f658d2128dc: mov    0x38(%rsp),%r10
  0.09%    0.07%  ││      0x00007f658d2128e1: mov    0x10(%r10),%ecx    ;*getfield arg
                  ││                                                    ; - com.google.re2j.Machine::add@140 (line 359)
  0.20%    0.45%  ││      0x00007f658d2128e5: mov    %rbp,%rsi
           0.00%  ││      0x00007f658d2128e8: mov    0x48(%rsp),%rdx
                  ││      0x00007f658d2128ed: mov    0x1c(%rsp),%r8d
  0.07%    0.11%  ││      0x00007f658d2128f2: mov    0x20(%rsp),%r9
  0.25%    0.24%  ││      0x00007f658d2128f7: mov    0x28(%rsp),%edi
                  ││      0x00007f658d2128fb: mov    %rax,(%rsp)
                  ││      0x00007f658d2128ff: callq  0x00007f658d046020  ; OopMap{off=1604}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@150 (line 359)
                  ││                                                    ;   {optimized virtual_call}
  0.00%           ││╭     0x00007f658d212904: jmpq   0x00007f658d212a22  ;*aload
                  │││                                                   ; - com.google.re2j.Machine::add@297 (line 388)
  1.54%    0.78%  │││     0x00007f658d212909: mov    0x38(%rsp),%r10
                  │││     0x00007f658d21290e: mov    %r10,%r9
                  │││     0x00007f658d212911: shr    $0x3,%r9           ;*putfield inst
                  │││                                                   ; - com.google.re2j.Machine::alloc@47 (line 151)
                  │││                                                   ; - com.google.re2j.Machine::add@305 (line 389)
  0.00%           │││     0x00007f658d212915: mov    0x70(%rsp),%rbp
  0.40%    0.15%  │││     0x00007f658d21291a: test   %rbp,%rbp
                  │││╭    0x00007f658d21291d: jne    0x00007f658d212a2e  ;*ifnonnull
                  ││││                                                  ; - com.google.re2j.Machine::add@299 (line 388)
                  ││││    0x00007f658d212923: mov    0x8(%rsp),%r10
                  ││││    0x00007f658d212928: mov    0x20(%r10),%ebp    ;*getfield pool
                  ││││                                                  ; - com.google.re2j.Machine::alloc@1 (line 147)
                  ││││                                                  ; - com.google.re2j.Machine::add@305 (line 389)
  0.01%           ││││    0x00007f658d21292c: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f658d212c69
  0.39%    0.10%  ││││    0x00007f658d212931: cmp    $0xf8002f22,%r11d  ;   {metadata(&apos;java/util/ArrayList&apos;)}
                  ││││    0x00007f658d212938: jne    0x00007f658d212a9d
                  ││││    0x00007f658d21293e: lea    (%r12,%rbp,8),%rcx  ;*invokeinterface size
                  ││││                                                  ; - com.google.re2j.Machine::alloc@4 (line 147)
                  ││││                                                  ; - com.google.re2j.Machine::add@305 (line 389)
                  ││││    0x00007f658d212942: mov    0x10(%rcx),%r8d    ;*getfield size
                  ││││                                                  ; - java.util.ArrayList::size@1 (line 278)
                  ││││                                                  ; - com.google.re2j.Machine::alloc@4 (line 147)
                  ││││                                                  ; - com.google.re2j.Machine::add@305 (line 389)
  0.00%           ││││    0x00007f658d212946: test   %r8d,%r8d
                  ││││    0x00007f658d212949: jle    0x00007f658d212aed  ;*ifle
                  ││││                                                  ; - com.google.re2j.Machine::alloc@11 (line 148)
                  ││││                                                  ; - com.google.re2j.Machine::add@305 (line 389)
  0.43%    0.08%  ││││    0x00007f658d21294f: mov    %r8d,%r11d
                  ││││    0x00007f658d212952: dec    %r11d              ;*isub
                  ││││                                                  ; - com.google.re2j.Machine::alloc@20 (line 148)
                  ││││                                                  ; - com.google.re2j.Machine::add@305 (line 389)
                  ││││    0x00007f658d212955: cmp    %r8d,%r11d
                  ││││    0x00007f658d212958: jge    0x00007f658d212b11  ;*if_icmplt
                  ││││                                                  ; - java.util.ArrayList::rangeCheck@5 (line 652)
                  ││││                                                  ; - java.util.ArrayList::remove@2 (line 492)
                  ││││                                                  ; - com.google.re2j.Machine::alloc@21 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@305 (line 389)
  0.01%           ││││    0x00007f658d21295e: incl   0xc(%rcx)          ;*putfield modCount
                  ││││                                                  ; - java.util.ArrayList::remove@12 (line 494)
                  ││││                                                  ; - com.google.re2j.Machine::alloc@21 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@305 (line 389)
  0.38%    0.08%  ││││    0x00007f658d212961: mov    0x14(%rcx),%ebp    ;*getfield elementData
                  ││││                                                  ; - java.util.ArrayList::elementData@1 (line 418)
                  ││││                                                  ; - java.util.ArrayList::remove@17 (line 495)
                  ││││                                                  ; - com.google.re2j.Machine::alloc@21 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@305 (line 389)
  0.01%           ││││    0x00007f658d212964: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f658d212c79
  0.37%    0.10%  ││││    0x00007f658d212969: cmp    %r10d,%r11d
                  ││││    0x00007f658d21296c: jae    0x00007f658d212a72  ;*aaload
                  ││││                                                  ; - java.util.ArrayList::elementData@5 (line 418)
                  ││││                                                  ; - java.util.ArrayList::remove@17 (line 495)
                  ││││                                                  ; - com.google.re2j.Machine::alloc@21 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@305 (line 389)
                  ││││    0x00007f658d212972: mov    %r11d,0x10(%rcx)   ;*putfield size
                  ││││                                                  ; - java.util.ArrayList::remove@62 (line 501)
                  ││││                                                  ; - com.google.re2j.Machine::alloc@21 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@305 (line 389)
                  ││││    0x00007f658d212976: lea    (%r12,%rbp,8),%r10
                  ││││    0x00007f658d21297a: mov    0xc(%r10,%r8,4),%ebp  ;*aaload
                  ││││                                                  ; - java.util.ArrayList::elementData@5 (line 418)
                  ││││                                                  ; - java.util.ArrayList::remove@17 (line 495)
                  ││││                                                  ; - com.google.re2j.Machine::alloc@21 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@305 (line 389)
  0.39%    0.18%  ││││    0x00007f658d21297f: mov    %r12d,0xc(%r10,%r8,4)  ;*aastore
                  ││││                                                  ; - java.util.ArrayList::remove@66 (line 501)
                  ││││                                                  ; - com.google.re2j.Machine::alloc@21 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@305 (line 389)
                  ││││    0x00007f658d212984: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f658d212c8d
                  ││││    0x00007f658d212989: cmp    $0xf8019c51,%r11d  ;   {metadata(&apos;com/google/re2j/Machine$Thread&apos;)}
                  ││││    0x00007f658d212990: jne    0x00007f658d212b8d
  0.00%    0.00%  ││││    0x00007f658d212996: shl    $0x3,%rbp          ;*checkcast
                  ││││                                                  ; - com.google.re2j.Machine::alloc@26 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@305 (line 389)
  0.37%    0.27%  ││││    0x00007f658d21299a: mov    %r9d,0x10(%rbp)
                  ││││    0x00007f658d21299e: mov    %rbp,%r10
                  ││││    0x00007f658d2129a1: shr    $0x9,%r10
  0.00%           ││││    0x00007f658d2129a5: movabs $0x7f659d620000,%r11
  0.36%    0.02%  ││││    0x00007f658d2129af: mov    %r12b,(%r11,%r10,1)  ;*aload
                  ││││                                                  ; - com.google.re2j.Machine::add@320 (line 393)
                  ││││ ↗  0x00007f658d2129b3: mov    0x20(%rsp),%rdi
  0.03%           ││││ │  0x00007f658d2129b8: mov    0xc(%rdi),%r10d    ;*arraylength
                  ││││ │                                                ; - com.google.re2j.Machine::add@322 (line 393)
                  ││││ │                                                ; implicit exception: dispatches to 0x00007f658d212c59
  0.01%    0.00%  ││││ │  0x00007f658d2129bc: test   %r10d,%r10d
                  ││││ │  0x00007f658d2129bf: jle    0x00007f658d212ad2  ;*ifle
                  ││││ │                                                ; - com.google.re2j.Machine::add@323 (line 393)
  0.47%    0.04%  ││││ │  0x00007f658d2129c5: mov    0xc(%rbp),%r11d    ;*getfield cap
                  ││││ │                                                ; - com.google.re2j.Machine::add@328 (line 393)
                  ││││ │  0x00007f658d2129c9: mov    %r11,%r8
  0.00%    0.00%  ││││ │  0x00007f658d2129cc: shl    $0x3,%r8
  0.00%    0.00%  ││││ │  0x00007f658d2129d0: cmp    %rdi,%r8
                  ││││╭│  0x00007f658d2129d3: je     0x00007f658d212a00  ;*if_acmpeq
                  ││││││                                                ; - com.google.re2j.Machine::add@333 (line 393)
  0.36%    0.08%  ││││││  0x00007f658d2129d5: mov    0xc(%r12,%r11,8),%r9d  ; implicit exception: dispatches to 0x00007f658d212ca9
  0.01%           ││││││  0x00007f658d2129da: lea    (%r12,%r11,8),%rcx  ;*getfield cap
                  ││││││                                                ; - com.google.re2j.Machine::add@328 (line 393)
                  ││││││  0x00007f658d2129de: cmp    %r10d,%r9d
                  ││││││  0x00007f658d2129e1: jb     0x00007f658d212ab1
  0.00%    0.00%  ││││││  0x00007f658d2129e7: lea    0x10(%r12,%r11,8),%rsi
  0.37%    0.19%  ││││││  0x00007f658d2129ec: add    $0x10,%rdi
                  ││││││  0x00007f658d2129f0: movslq %r10d,%rdx
                  ││││││  0x00007f658d2129f3: movabs $0x7f658d052640,%r10
  0.00%    0.00%  ││││││  0x00007f658d2129fd: callq  *%r10              ;*aload
                  ││││││                                                ; - com.google.re2j.Machine::add@351 (line 396)
           0.00%  ││││↘│  0x00007f658d212a00: mov    %rbx,%r10
                  ││││ │  0x00007f658d212a03: mov    %rbp,%r11
  0.02%    0.00%  ││││ │  0x00007f658d212a06: shr    $0x3,%r11
  0.42%    0.49%  ││││ │  0x00007f658d212a0a: mov    %r11d,0x10(%rbx)
                  ││││ │  0x00007f658d212a0e: shr    $0x9,%r10
  0.00%    0.00%  ││││ │  0x00007f658d212a12: movabs $0x7f659d620000,%r11
  0.02%    0.02%  ││││ │  0x00007f658d212a1c: mov    %r12b,(%r11,%r10,1)  ;*putfield thread
                  ││││ │                                                ; - com.google.re2j.Machine::add@355 (line 396)
  0.38%    0.55%  ││││ │  0x00007f658d212a20: xor    %eax,%eax          ;*synchronization entry
                  ││││ │                                                ; - com.google.re2j.Machine::add@-1 (line 341)
  0.36%    0.15%  ↘↘↘│ │  0x00007f658d212a22: add    $0x60,%rsp
  0.01%    0.02%     │ │  0x00007f658d212a26: pop    %rbp
  0.45%    0.67%     │ │  0x00007f658d212a27: test   %eax,0x17a055d3(%rip)        # 0x00007f65a4c18000
                     │ │                                                ;   {poll_return}
  0.23%    0.48%     │ │  0x00007f658d212a2d: retq   
                     ↘ │  0x00007f658d212a2e: mov    %r9d,0x10(%rbp)
                       │  0x00007f658d212a32: mov    %rbp,%r10
                       │  0x00007f658d212a35: shr    $0x9,%r10
  0.01%                │  0x00007f658d212a39: movabs $0x7f659d620000,%r11
                       │  0x00007f658d212a43: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                       │                                                ; - com.google.re2j.Machine::add@317 (line 391)
                       ╰  0x00007f658d212a47: jmpq   0x00007f658d2129b3  ;*tableswitch
                                                                        ; - com.google.re2j.Machine::add@47 (line 349)
                          0x00007f658d212a4c: mov    0x8(%rsp),%rsi
                          0x00007f658d212a51: mov    0x48(%rsp),%rdx
                          0x00007f658d212a56: mov    0x1c(%rsp),%r8d
                          0x00007f658d212a5b: mov    0x20(%rsp),%r9
                          0x00007f658d212a60: mov    %ebx,%edi
                          0x00007f658d212a62: mov    0x70(%rsp),%r10
....................................................................................................
 10.45%    6.55%  <total for region 5>

....[Hottest Regions]...............................................................................
 28.48%   25.39%         C2, level 4  com.google.re2j.Machine::add, version 490 (462 bytes) 
 17.24%   16.81%         C2, level 4  com.google.re2j.Machine::step, version 503 (496 bytes) 
 17.23%   24.41%         C2, level 4  com.google.re2j.Machine::step, version 503 (312 bytes) 
 14.44%   15.87%         C2, level 4  com.google.re2j.Machine::step, version 503 (219 bytes) 
 10.45%    6.55%         C2, level 4  com.google.re2j.Machine::add, version 490 (390 bytes) 
  3.35%    3.90%         C2, level 4  com.google.re2j.Machine::match, version 539 (862 bytes) 
  2.63%    1.26%        runtime stub  StubRoutines::jint_disjoint_arraycopy (128 bytes) 
  1.09%    1.09%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.77%    0.74%         C2, level 4  com.google.re2j.Machine::step, version 503 (105 bytes) 
  0.42%    0.43%         C2, level 4  com.google.re2j.Machine::step, version 503 (19 bytes) 
  0.17%    0.01%   [kernel.kallsyms]  [unknown] (45 bytes) 
  0.14%    0.01%   [kernel.kallsyms]  [unknown] (1 bytes) 
  0.12%    0.03%   [kernel.kallsyms]  [unknown] (28 bytes) 
  0.11%    0.05%         C2, level 4  com.google.re2j.Machine::init, version 560 (18 bytes) 
  0.10%    0.16%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ (129 bytes) 
  0.09%    0.01%   [kernel.kallsyms]  [unknown] (33 bytes) 
  0.08%    0.14%         C2, level 4  com.google.re2j.Machine::match, version 539 (62 bytes) 
  0.08%    0.04%         C2, level 4  com.google.re2j.Machine::step, version 503 (38 bytes) 
  0.08%    0.06%         C2, level 4  com.google.re2j.Machine::step, version 503 (64 bytes) 
  0.06%    0.06%   [kernel.kallsyms]  [unknown] (74 bytes) 
  2.86%    2.95%  <...other 558 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 50.25%   58.36%         C2, level 4  com.google.re2j.Machine::step, version 503 
 38.93%   31.95%         C2, level 4  com.google.re2j.Machine::add, version 490 
  3.45%    4.05%         C2, level 4  com.google.re2j.Machine::match, version 539 
  3.05%    2.49%   [kernel.kallsyms]  [unknown] 
  2.63%    1.26%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
  0.22%    0.09%         C2, level 4  com.google.re2j.Machine::init, version 560 
  0.12%    0.05%         C2, level 4  com.google.re2j.Matcher::find, version 572 
  0.10%    0.07%      hsdis-amd64.so  disassemble_init_for_target 
  0.10%    0.16%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.06%    0.17%        libc-2.26.so  vfprintf 
  0.05%    0.07%        libc-2.26.so  __strlen_avx2 
  0.04%    0.11%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.03%    0.03%        libc-2.26.so  __strchr_avx2 
  0.03%    0.11%        libc-2.26.so  _IO_fwrite 
  0.03%    0.05%           libjvm.so  _ZN13xmlTextStream5writeEPKcm 
  0.03%    0.01%              [vdso]  [unknown] 
  0.03%    0.01%  libpthread-2.26.so  __pthread_disable_asynccancel 
  0.03%    0.08%           libjvm.so  _ZN12outputStream15update_positionEPKcm 
  0.03%    0.03%         C2, level 4  com.github.arnaudroger.re2j.Re2jFindRegex::testExp2, version 590 
  0.03%    0.04%        libc-2.26.so  _IO_default_xsputn 
  0.73%    0.54%  <...other 104 warm methods...>
....................................................................................................
100.00%   99.74%  <totals>

....[Distribution by Source]........................................................................
 93.06%   94.55%         C2, level 4
  3.05%    2.49%   [kernel.kallsyms]
  2.63%    1.26%        runtime stub
  0.62%    0.82%           libjvm.so
  0.31%    0.64%        libc-2.26.so
  0.12%    0.08%      hsdis-amd64.so
  0.11%    0.12%  libpthread-2.26.so
  0.04%    0.02%         interpreter
  0.03%    0.01%              [vdso]
  0.01%    0.00%         C1, level 3
  0.00%             Unknown, level 0
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                     Mode  Cnt     Score    Error  Units
Re2jFindRegex.testExp2       thrpt   20  2222.560 ± 58.784  ops/s
Re2jFindRegex.testExp2:·asm  thrpt            NaN             ---
