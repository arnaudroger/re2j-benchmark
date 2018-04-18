# JMH version: 1.19
# VM version: JDK 1.8.0_131, VM 25.131-b11
# VM invoker: /usr/lib/jvm/java-8-oracle/jre/bin/java
# VM options: <none>
# Warmup: 20 iterations, 1 s each
# Measurement: 20 iterations, 1 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Throughput, ops/time
# Benchmark: com.github.arnaudroger.re2j.Re2jFindRegex.testExp1

# Run progress: 0.00% complete, ETA 00:00:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2721.595 ops/s
# Warmup Iteration   2: 5191.999 ops/s
# Warmup Iteration   3: 5317.398 ops/s
# Warmup Iteration   4: 5326.845 ops/s
# Warmup Iteration   5: 5297.975 ops/s
# Warmup Iteration   6: 5319.491 ops/s
# Warmup Iteration   7: 5329.707 ops/s
# Warmup Iteration   8: 5328.536 ops/s
# Warmup Iteration   9: 5328.843 ops/s
# Warmup Iteration  10: 5313.459 ops/s
# Warmup Iteration  11: 5214.252 ops/s
# Warmup Iteration  12: 5215.406 ops/s
# Warmup Iteration  13: 5259.389 ops/s
# Warmup Iteration  14: 5273.845 ops/s
# Warmup Iteration  15: 5278.510 ops/s
# Warmup Iteration  16: 5346.102 ops/s
# Warmup Iteration  17: 5088.169 ops/s
# Warmup Iteration  18: 5090.786 ops/s
# Warmup Iteration  19: 5090.864 ops/s
# Warmup Iteration  20: 5088.020 ops/s
Iteration   1: 5158.337 ops/s
Iteration   2: 5341.443 ops/s
Iteration   3: 5339.801 ops/s
Iteration   4: 5348.150 ops/s
Iteration   5: 5348.161 ops/s
Iteration   6: 5335.846 ops/s
Iteration   7: 5347.602 ops/s
Iteration   8: 5353.485 ops/s
Iteration   9: 5352.542 ops/s
Iteration  10: 5353.475 ops/s
Iteration  11: 5353.821 ops/s
Iteration  12: 5301.975 ops/s
Iteration  13: 5354.097 ops/s
Iteration  14: 5353.767 ops/s
Iteration  15: 5354.557 ops/s
Iteration  16: 5354.848 ops/s
Iteration  17: 5261.708 ops/s
Iteration  18: 5245.699 ops/s
Iteration  19: 5245.082 ops/s
Iteration  20: 5245.700 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  5317.505 ±(99.9%) 48.386 ops/s [Average]
  (min, avg, max) = (5158.337, 5317.505, 5354.848), stdev = 55.722
  CI (99.9%): [5269.118, 5365.891] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1:·asm":
PrintAssembly processed: 196695 total address lines.
Perf output processed (skipped 23.363 seconds):
 Column 1: cycles (20375 events)
 Column 2: instructions (20414 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 494 (412 bytes) 

                      # parm4:    rdi       = int
                      # parm5:    [sp+0x70]   = &apos;com/google/re2j/Machine$Thread&apos;  (sp of caller)
                      0x00007f7f21214380: mov    0x8(%rsi),%r10d    ;   {no_reloc}
                      0x00007f7f21214384: shl    $0x3,%r10
                      0x00007f7f21214388: cmp    %r10,%rax
                      0x00007f7f2121438b: jne    0x00007f7f21045e20  ;   {runtime_call}
                      0x00007f7f21214391: data16 xchg %ax,%ax
                      0x00007f7f21214394: nopl   0x0(%rax,%rax,1)
                      0x00007f7f2121439c: data16 data16 xchg %ax,%ax
                    [Verified Entry Point]
  0.50%    0.47%      0x00007f7f212143a0: mov    %eax,-0x14000(%rsp)
  0.65%    0.66%      0x00007f7f212143a7: push   %rbp
  0.45%    0.39%      0x00007f7f212143a8: sub    $0x60,%rsp         ;*synchronization entry
                                                                    ; - com.google.re2j.Machine::add@-1 (line 341)
  0.05%    0.08%      0x00007f7f212143ac: mov    %edi,0x28(%rsp)
  0.58%    0.68%      0x00007f7f212143b0: mov    %r9,0x20(%rsp)
  0.56%    0.42%      0x00007f7f212143b5: mov    %r8d,0x1c(%rsp)
           0.01%      0x00007f7f212143ba: mov    %rsi,0x8(%rsp)
  0.06%    0.08%      0x00007f7f212143bf: test   %ecx,%ecx
                      0x00007f7f212143c1: je     0x00007f7f212148fd  ;*ifne
                                                                    ; - com.google.re2j.Machine::add@1 (line 341)
  0.57%    0.68%      0x00007f7f212143c7: mov    %rdx,0x40(%rsp)
  0.51%    0.31%      0x00007f7f212143cc: mov    0x14(%rdx),%r9d    ;*getfield sparse
                                                                    ; - com.google.re2j.Machine$Queue::contains@1 (line 48)
                                                                    ; - com.google.re2j.Machine::add@9 (line 344)
                                                                    ; implicit exception: dispatches to 0x00007f7f21214b05
                      0x00007f7f212143d0: mov    0xc(%r12,%r9,8),%edi  ; implicit exception: dispatches to 0x00007f7f21214b19
  0.07%    0.13%      0x00007f7f212143d5: cmp    %edi,%ecx
                      0x00007f7f212143d7: jae    0x00007f7f21214776  ;*iaload
                                                                    ; - com.google.re2j.Machine$Queue::contains@5 (line 48)
                                                                    ; - com.google.re2j.Machine::add@9 (line 344)
  0.60%    0.54%      0x00007f7f212143dd: mov    0x10(%rdx),%ebx    ;*getfield dense
                                                                    ; - com.google.re2j.Machine$Queue::contains@18 (line 52)
                                                                    ; - com.google.re2j.Machine::add@9 (line 344)
  0.53%    0.49%      0x00007f7f212143e0: mov    0xc(%rdx),%r11d    ;*getfield size
                                                                    ; - com.google.re2j.Machine$Queue::contains@9 (line 49)
                                                                    ; - com.google.re2j.Machine::add@9 (line 344)
                      0x00007f7f212143e4: lea    (%r12,%r9,8),%r8
  0.03%    0.07%      0x00007f7f212143e8: mov    0x10(%r8,%rcx,4),%ebp  ;*iaload
                                                                    ; - com.google.re2j.Machine$Queue::contains@5 (line 48)
                                                                    ; - com.google.re2j.Machine::add@9 (line 344)
  0.67%    0.45%      0x00007f7f212143ed: cmp    %r11d,%ebp
                  ╭   0x00007f7f212143f0: jl     0x00007f7f21214520  ;*iastore
                  │                                                 ; - com.google.re2j.Machine$Queue::add@18 (line 60)
                  │                                                 ; - com.google.re2j.Machine::add@20 (line 347)
  0.56%    0.56%  │↗  0x00007f7f212143f6: mov    %r11d,%r10d
  0.01%    0.00%  ││  0x00007f7f212143f9: inc    %r10d
  0.06%    0.08%  ││  0x00007f7f212143fc: mov    %r10d,0xc(%rdx)    ;*putfield size
                  ││                                                ; - com.google.re2j.Machine$Queue::add@8 (line 59)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.66%    0.28%  ││  0x00007f7f21214400: cmp    %edi,%ecx
                  ││  0x00007f7f21214402: jae    0x00007f7f212147b5
  0.60%    0.21%  ││  0x00007f7f21214408: mov    %r11d,0x10(%r8,%rcx,4)  ;*iastore
                  ││                                                ; - com.google.re2j.Machine$Queue::add@18 (line 60)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 347)
                  ││  0x00007f7f2121440d: mov    0xc(%r12,%rbx,8),%r10d  ; implicit exception: dispatches to 0x00007f7f21214b2d
  0.05%    0.05%  ││  0x00007f7f21214412: cmp    %r10d,%r11d
                  ││  0x00007f7f21214415: jae    0x00007f7f21214801
  0.69%    0.35%  ││  0x00007f7f2121441b: lea    (%r12,%rbx,8),%r10
  0.50%    0.27%  ││  0x00007f7f2121441f: mov    0x10(%r10,%r11,4),%r13d  ;*aaload
                  ││                                                ; - com.google.re2j.Machine$Queue::add@24 (line 61)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.01%    0.01%  ││  0x00007f7f21214424: test   %r13d,%r13d
                  ││  0x00007f7f21214427: je     0x00007f7f21214925  ;*ifnonnull
                  ││                                                ; - com.google.re2j.Machine$Queue::add@27 (line 62)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.07%    0.06%  ││  0x00007f7f2121442d: mov    %ecx,0xc(%r12,%r13,8)  ;*putfield pc
                  ││                                                ; - com.google.re2j.Machine$Queue::add@52 (line 66)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.74%    0.73%  ││  0x00007f7f21214432: mov    0x14(%rsi),%r10d   ;*getfield prog
                  ││                                                ; - com.google.re2j.Machine::add@26 (line 348)
  0.53%    0.28%  ││  0x00007f7f21214436: mov    %r12d,0x10(%r12,%r13,8)  ;*putfield thread
                  ││                                                ; - com.google.re2j.Machine$Queue::add@47 (line 65)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.08%    0.11%  ││  0x00007f7f2121443b: mov    0x14(%r12,%r10,8),%ebp  ;*getfield inst
                  ││                                                ; - com.google.re2j.Prog::getInst@1 (line 29)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 348)
                  ││                                                ; implicit exception: dispatches to 0x00007f7f21214b41
  0.03%    0.08%  ││  0x00007f7f21214440: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f7f21214b55
  0.58%    0.53%  ││  0x00007f7f21214445: cmp    $0xf8002f22,%r11d  ;   {metadata(&apos;java/util/ArrayList&apos;)}
                  ││  0x00007f7f2121444c: jne    0x00007f7f212148d1
  0.53%    0.48%  ││  0x00007f7f21214452: lea    (%r12,%rbp,8),%r11  ;*invokeinterface get
                  ││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.06%    0.05%  ││  0x00007f7f21214456: mov    0x10(%r11),%ebp    ;*getfield size
                  ││                                                ; - java.util.ArrayList::rangeCheck@2 (line 652)
                  ││                                                ; - java.util.ArrayList::get@2 (line 429)
                  ││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.04%    0.02%  ││  0x00007f7f2121445a: cmp    %ebp,%ecx
                  ││  0x00007f7f2121445c: jge    0x00007f7f2121496d  ;*if_icmplt
                  ││                                                ; - java.util.ArrayList::rangeCheck@5 (line 652)
                  ││                                                ; - java.util.ArrayList::get@2 (line 429)
                  ││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.52%    0.48%  ││  0x00007f7f21214462: mov    0x14(%r11),%ebp    ;*getfield elementData
                  ││                                                ; - java.util.ArrayList::elementData@1 (line 418)
                  ││                                                ; - java.util.ArrayList::get@7 (line 431)
                  ││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.46%    0.41%  ││  0x00007f7f21214466: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f7f21214b69
  0.15%    0.16%  ││  0x00007f7f2121446b: cmp    %r11d,%ecx
                  ││  0x00007f7f2121446e: jae    0x00007f7f21214845
  0.24%    0.32%  ││  0x00007f7f21214474: lea    (%r12,%rbp,8),%r10
  0.53%    0.65%  ││  0x00007f7f21214478: mov    0x10(%r10,%rcx,4),%ebp  ;*aaload
                  ││                                                ; - java.util.ArrayList::elementData@5 (line 418)
                  ││                                                ; - java.util.ArrayList::get@7 (line 431)
                  ││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.57%    0.70%  ││  0x00007f7f2121447d: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f7f21214b7d
  0.60%    0.68%  ││  0x00007f7f21214482: cmp    $0xf8019844,%r10d  ;   {metadata(&apos;com/google/re2j/Inst&apos;)}
                  ││  0x00007f7f21214489: jne    0x00007f7f21214ac9
  0.18%    0.23%  ││  0x00007f7f2121448f: lea    (%r12,%rbp,8),%r10  ;*checkcast
                  ││                                                ; - com.google.re2j.Prog::getInst@10 (line 29)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.49%    0.51%  ││  0x00007f7f21214493: mov    %r10,0x38(%rsp)
  0.43%    0.31%  ││  0x00007f7f21214498: mov    0x14(%r10),%r11d   ;*getfield op
                  ││                                                ; - com.google.re2j.Inst::op@4 (line 44)
                  ││                                                ; - com.google.re2j.Machine::add@40 (line 349)
  0.02%    0.03%  ││  0x00007f7f2121449c: mov    0xc(%r12,%r11,8),%ebp  ;*getfield ordinal
                  ││                                                ; - java.lang.Enum::ordinal@1 (line 103)
                  ││                                                ; - com.google.re2j.Inst::op@7 (line 44)
                  ││                                                ; - com.google.re2j.Machine::add@40 (line 349)
                  ││                                                ; implicit exception: dispatches to 0x00007f7f21214bad
  1.06%    1.28%  ││  0x00007f7f212144a1: cmp    $0xb,%ebp
                  ││  0x00007f7f212144a4: jae    0x00007f7f21214871  ;*iaload
                  ││                                                ; - com.google.re2j.Inst::op@10 (line 44)
                  ││                                                ; - com.google.re2j.Machine::add@40 (line 349)
  0.72%    0.64%  ││  0x00007f7f212144aa: mov    %r11,%r10
  0.31%    0.09%  ││  0x00007f7f212144ad: shl    $0x3,%r10
  0.02%    0.02%  ││  0x00007f7f212144b1: movabs $0x76dd36790,%r11  ;   {oop([I)}
  0.04%    0.11%  ││  0x00007f7f212144bb: mov    0x10(%r11,%rbp,4),%r11d
  1.82%    1.72%  ││  0x00007f7f212144c0: dec    %r11d
  0.78%    0.51%  ││  0x00007f7f212144c3: movabs $0x76dd29e18,%r8   ;   {oop(a &apos;com/google/re2j/Inst$Op&apos;)}
  0.02%    0.01%  ││  0x00007f7f212144cd: cmp    $0x3,%r11d
  0.54%    0.74%  ││  0x00007f7f212144d1: cmovb  %r8,%r10           ;*invokevirtual ordinal
                  ││                                                ; - com.google.re2j.Machine::add@43 (line 349)
  1.65%    1.25%  ││  0x00007f7f212144d5: mov    0xc(%r10),%ebp     ;*getfield ordinal
                  ││                                                ; - java.lang.Enum::ordinal@1 (line 103)
                  ││                                                ; - com.google.re2j.Machine::add@43 (line 349)
  3.91%    4.23%  ││  0x00007f7f212144d9: cmp    $0xb,%ebp
                  ││  0x00007f7f212144dc: jae    0x00007f7f21214899
  0.90%    1.04%  ││  0x00007f7f212144e2: movabs $0x76dd58eb8,%r10  ;   {oop([I)}
  0.13%    0.14%  ││  0x00007f7f212144ec: mov    0x10(%r10,%rbp,4),%r10d  ;*iaload
                  ││                                                ; - com.google.re2j.Machine::add@46 (line 349)
  4.58%    5.41%  ││  0x00007f7f212144f1: mov    %r10d,%r11d
                  ││  0x00007f7f212144f4: dec    %r11d
  1.19%    1.35%  ││  0x00007f7f212144f7: cmp    $0xb,%r11d
                  ││  0x00007f7f212144fb: jae    0x00007f7f212148c1  ;*tableswitch
                  ││                                                ; - com.google.re2j.Machine::add@47 (line 349)
  1.24%    1.21%  ││  0x00007f7f21214501: mov    0x38(%rsp),%r11
  0.01%    0.00%  ││  0x00007f7f21214506: mov    0xc(%r11),%ecx     ;*getfield out
                  ││                                                ; - com.google.re2j.Machine::add@279 (line 379)
                  ││  0x00007f7f2121450a: mov    0x10(%r11),%r11d   ;*getfield arg
                  ││                                                ; - com.google.re2j.Machine::add@217 (line 373)
                  ││  0x00007f7f2121450e: movslq %r10d,%r8
  1.25%    1.00%  ││  0x00007f7f21214511: movabs $0x7f7f21214320,%r10  ;   {section_word}
                  ││  0x00007f7f2121451b: jmpq   *-0x8(%r10,%r8,8)  ;*tableswitch
                  ││                                                ; - com.google.re2j.Machine::add@47 (line 349)
  0.00%    0.00%  ↘│  0x00007f7f21214520: mov    0xc(%r12,%rbx,8),%r10d  ; implicit exception: dispatches to 0x00007f7f21214c35
  0.02%    0.01%   │  0x00007f7f21214525: cmp    %r10d,%ebp
                   │  0x00007f7f21214528: jae    0x00007f7f21214ab1
  0.00%            │  0x00007f7f2121452e: lea    (%r12,%rbx,8),%r10
                   │  0x00007f7f21214532: mov    0x10(%r10,%rbp,4),%ebp  ;*aaload
                   │                                                ; - com.google.re2j.Machine$Queue::contains@22 (line 52)
                   │                                                ; - com.google.re2j.Machine::add@9 (line 344)
  0.00%            │  0x00007f7f21214537: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f7f21214c45
  0.00%    0.02%   │  0x00007f7f2121453c: cmp    %ecx,%r10d
                   ╰  0x00007f7f2121453f: jne    0x00007f7f212143f6
                      0x00007f7f21214545: mov    0x70(%rsp),%rax
                      0x00007f7f2121454a: jmpq   0x00007f7f2121474c
                      0x00007f7f2121454f: mov    0x28(%rsp),%r10d
                      0x00007f7f21214554: andn   %r11d,%r10d,%r8d
                      0x00007f7f21214559: test   %r8d,%r8d
                      0x00007f7f2121455c: je     0x00007f7f21214758  ;*ifne
                                                                    ; - com.google.re2j.Machine::add@168 (line 363)
                      0x00007f7f21214562: mov    0x70(%rsp),%rax
                      0x00007f7f21214567: jmpq   0x00007f7f2121474c
....................................................................................................
 36.05%   34.92%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 498 (560 bytes) 

                             # parm6:    [sp+0x98]   = int
                             # parm7:    [sp+0xa0]   = boolean
                             0x00007f7f2121a7a0: mov    0x8(%rsi),%r10d
                             0x00007f7f2121a7a4: shl    $0x3,%r10
                             0x00007f7f2121a7a8: cmp    %r10,%rax
                             0x00007f7f2121a7ab: jne    0x00007f7f21045e20  ;   {runtime_call}
                             0x00007f7f2121a7b1: data16 xchg %ax,%ax
                             0x00007f7f2121a7b4: nopl   0x0(%rax,%rax,1)
                             0x00007f7f2121a7bc: data16 data16 xchg %ax,%ax
                           [Verified Entry Point]
  0.13%    0.18%             0x00007f7f2121a7c0: mov    %eax,-0x14000(%rsp)
  0.07%    0.07%             0x00007f7f2121a7c7: push   %rbp
  0.15%    0.15%             0x00007f7f2121a7c8: sub    $0x80,%rsp         ;*synchronization entry
                                                                           ; - com.google.re2j.Machine::step@-1 (line 263)
  0.03%    0.07%             0x00007f7f2121a7cf: mov    %edi,0x20(%rsp)
  0.02%    0.00%             0x00007f7f2121a7d3: mov    %r9d,0x14(%rsp)
  0.16%    0.17%             0x00007f7f2121a7d8: mov    %rcx,0x18(%rsp)
  0.02%    0.02%             0x00007f7f2121a7dd: mov    %r8d,0x10(%rsp)
  0.06%    0.03%             0x00007f7f2121a7e2: mov    %rdx,0x8(%rsp)
  0.03%    0.04%             0x00007f7f2121a7e7: mov    %rsi,0x28(%rsp)
  0.11%    0.09%             0x00007f7f2121a7ec: mov    0x10(%rsi),%r11d   ;*getfield re2
                                                                           ; - com.google.re2j.Machine::step@1 (line 263)
                             0x00007f7f2121a7f0: movzbl 0x18(%r12,%r11,8),%r10d  ;*getfield longest
                                                                           ; - com.google.re2j.Machine::step@4 (line 263)
                                                                           ; implicit exception: dispatches to 0x00007f7f2121bddd
  0.04%    0.04%             0x00007f7f2121a7f6: mov    %r10d,0x24(%rsp)
  0.03%    0.02%             0x00007f7f2121a7fb: mov    0xc(%rdx),%r10d    ; implicit exception: dispatches to 0x00007f7f2121bded
  0.09%    0.09%             0x00007f7f2121a7ff: test   %r10d,%r10d
                             0x00007f7f2121a802: jle    0x00007f7f2121abb4  ;*if_icmpge
                                                                           ; - com.google.re2j.Machine::step@18 (line 264)
           0.00%             0x00007f7f2121a808: xor    %r11d,%r11d
  0.02%    0.06%  ╭          0x00007f7f2121a80b: jmpq   0x00007f7f2121a8f9
  0.31%    0.47%  │  ↗       0x00007f7f2121a810: mov    0xc(%r12,%rcx,8),%edx  ; implicit exception: dispatches to 0x00007f7f2121bdcd
           0.01%  │  │       0x00007f7f2121a815: test   %edx,%edx
                  │  │       0x00007f7f2121a817: jbe    0x00007f7f2121b5ad  ;*iaload
                  │  │                                                     ; - com.google.re2j.Machine::step@324 (line 310)
                  │  │       0x00007f7f2121a81d: mov    0x10(%r12,%rcx,8),%ebx
  0.01%           │  │       0x00007f7f2121a822: mov    0x20(%rsp),%ecx
  0.32%    0.49%  │  │       0x00007f7f2121a826: cmp    %ebx,%ecx
                  │  │       0x00007f7f2121a828: je     0x00007f7f2121b1d7  ;*goto
                  │  │                                                     ; - com.google.re2j.Machine::step@313 (line 307)
  0.00%           │  │    ↗  0x00007f7f2121a82e: mov    %r9,0x50(%rsp)     ;*aload
                  │  │    │                                                ; - com.google.re2j.Machine::step@399 (line 327)
  0.03%    0.04%  │  │   ↗│  0x00007f7f2121a833: mov    0x28(%rsp),%r10
  0.01%    0.00%  │  │   ││  0x00007f7f2121a838: mov    0x20(%r10),%ebp    ;*getfield pool
                  │  │   ││                                                ; - com.google.re2j.Machine::step@405 (line 329)
  0.43%    0.52%  │  │   ││  0x00007f7f2121a83c: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007f7f2121bd09
  0.01%           │  │   ││  0x00007f7f2121a841: cmp    $0xf8002f22,%r8d   ;   {metadata(&apos;java/util/ArrayList&apos;)}
                  │  │   ││  0x00007f7f2121a848: jne    0x00007f7f2121b451
  0.01%    0.07%  │  │   ││  0x00007f7f2121a84e: lea    (%r12,%rbp,8),%rbx  ;*invokeinterface add
                  │  │   ││                                                ; - com.google.re2j.Machine::step@410 (line 329)
  0.01%    0.01%  │  │   ││  0x00007f7f2121a852: mov    0x14(%rbx),%r8d    ;*getfield elementData
                  │  │   ││                                                ; - java.util.ArrayList::ensureCapacityInternal@1 (line 223)
                  │  │   ││                                                ; - java.util.ArrayList::add@7 (line 458)
                  │  │   ││                                                ; - com.google.re2j.Machine::step@410 (line 329)
  0.46%    0.50%  │  │   ││  0x00007f7f2121a856: mov    0x10(%rbx),%ebp    ;*getfield size
                  │  │   ││                                                ; - java.util.ArrayList::add@2 (line 458)
                  │  │   ││                                                ; - com.google.re2j.Machine::step@410 (line 329)
  0.01%    0.00%  │  │   ││  0x00007f7f2121a859: mov    %ebp,%r10d
  0.04%    0.02%  │  │   ││  0x00007f7f2121a85c: inc    %r10d              ;*iadd
                  │  │   ││                                                ; - java.util.ArrayList::add@6 (line 458)
                  │  │   ││                                                ; - com.google.re2j.Machine::step@410 (line 329)
  0.01%    0.01%  │  │   ││  0x00007f7f2121a85f: cmp    $0xed9f0db7,%r8d   ;   {oop(a &apos;java/lang/Object&apos;[0] )}
                  │  │   ││  0x00007f7f2121a866: je     0x00007f7f2121b1b5  ;*if_acmpne
                  │  │   ││                                                ; - java.util.ArrayList::ensureCapacityInternal@7 (line 223)
                  │  │   ││                                                ; - java.util.ArrayList::add@7 (line 458)
                  │  │   ││                                                ; - com.google.re2j.Machine::step@410 (line 329)
  0.47%    0.33%  │  │   ││  0x00007f7f2121a86c: mov    %r10d,%esi         ;*aload_0
                  │  │   ││                                                ; - java.util.ArrayList::ensureCapacityInternal@17 (line 227)
                  │  │   ││                                                ; - java.util.ArrayList::add@7 (line 458)
                  │  │   ││                                                ; - com.google.re2j.Machine::step@410 (line 329)
  0.01%           │  │   ││  0x00007f7f2121a86f: mov    0xc(%rbx),%r9d     ;*getfield modCount
                  │  │   ││                                                ; - java.util.ArrayList::ensureExplicitCapacity@2 (line 231)
                  │  │   ││                                                ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                  │  │   ││                                                ; - java.util.ArrayList::add@7 (line 458)
                  │  │   ││                                                ; - com.google.re2j.Machine::step@410 (line 329)
  0.00%    0.03%  │  │   ││  0x00007f7f2121a873: inc    %r9d
  0.01%    0.00%  │  │   ││  0x00007f7f2121a876: mov    %r9d,0xc(%rbx)     ;*putfield modCount
                  │  │   ││                                                ; - java.util.ArrayList::ensureExplicitCapacity@7 (line 231)
                  │  │   ││                                                ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                  │  │   ││                                                ; - java.util.ArrayList::add@7 (line 458)
                  │  │   ││                                                ; - com.google.re2j.Machine::step@410 (line 329)
  0.31%    0.38%  │  │   ││  0x00007f7f2121a87a: mov    0xc(%r12,%r8,8),%edi  ;*arraylength
                  │  │   ││                                                ; - java.util.ArrayList::ensureExplicitCapacity@15 (line 234)
                  │  │   ││                                                ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                  │  │   ││                                                ; - java.util.ArrayList::add@7 (line 458)
                  │  │   ││                                                ; - com.google.re2j.Machine::step@410 (line 329)
                  │  │   ││                                                ; implicit exception: dispatches to 0x00007f7f2121bd19
           0.02%  │  │   ││  0x00007f7f2121a87f: mov    %esi,%edx
  0.02%    0.05%  │  │   ││  0x00007f7f2121a881: sub    %edi,%edx
  0.01%    0.03%  │  │   ││  0x00007f7f2121a883: test   %edx,%edx
                  │  │   ││  0x00007f7f2121a885: jg     0x00007f7f2121af08  ;*ifle
                  │  │   ││                                                ; - java.util.ArrayList::ensureExplicitCapacity@17 (line 234)
                  │  │   ││                                                ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                  │  │   ││                                                ; - java.util.ArrayList::add@7 (line 458)
                  │  │   ││                                                ; - com.google.re2j.Machine::step@410 (line 329)
  0.41%    0.40%  │  │   ││  0x00007f7f2121a88b: shl    $0x3,%r8           ;*return
                  │  │   ││                                                ; - java.util.ArrayList::ensureExplicitCapacity@25 (line 236)
                  │  │   ││                                                ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                  │  │   ││                                                ; - java.util.ArrayList::add@7 (line 458)
                  │  │   ││                                                ; - com.google.re2j.Machine::step@410 (line 329)
  0.00%    0.01%  │  │   ││  0x00007f7f2121a88f: mov    %r10d,0x10(%rbx)   ;*putfield size
                  │  │   ││                                                ; - java.util.ArrayList::add@22 (line 459)
                  │  │   ││                                                ; - com.google.re2j.Machine::step@410 (line 329)
  0.04%    0.04%  │  │   ││  0x00007f7f2121a893: mov    0xc(%r8),%r9d      ; implicit exception: dispatches to 0x00007f7f2121bd29
  0.00%    0.02%  │  │   ││  0x00007f7f2121a897: cmp    %r9d,%ebp
                  │  │   ││  0x00007f7f2121a89a: jae    0x00007f7f2121b40d
  0.49%    0.44%  │  │   ││  0x00007f7f2121a8a0: mov    0x8(%r8),%r9d
  0.00%           │  │   ││  0x00007f7f2121a8a4: cmp    $0xf80022f5,%r9d   ;   {metadata(&apos;java/lang/Object&apos;[])}
                  │  │   ││  0x00007f7f2121a8ab: jne    0x00007f7f2121b48d
  0.04%    0.02%  │  │   ││  0x00007f7f2121a8b1: lea    0x10(%r8,%rbp,4),%r10
  0.02%    0.00%  │  │   ││  0x00007f7f2121a8b6: mov    0x50(%rsp),%r11
  0.45%    0.31%  │  │   ││  0x00007f7f2121a8bb: mov    %r11,%r8
                  │  │   ││  0x00007f7f2121a8be: shr    $0x3,%r8
  0.01%    0.04%  │  │   ││  0x00007f7f2121a8c2: mov    %r8d,(%r10)
  0.00%    0.00%  │  │   ││  0x00007f7f2121a8c5: shr    $0x9,%r10
  0.51%    0.31%  │  │   ││  0x00007f7f2121a8c9: movabs $0x7f7f31580000,%r11
                  │  │   ││  0x00007f7f2121a8d3: mov    %r12b,(%r11,%r10,1)  ;*aastore
                  │  │   ││                                                ; - java.util.ArrayList::add@26 (line 459)
                  │  │   ││                                                ; - com.google.re2j.Machine::step@410 (line 329)
  0.05%    0.01%  │  │   ││  0x00007f7f2121a8d7: xor    %r10d,%r10d        ; OopMap{[8]=Oop [24]=Oop [40]=Oop off=314}
                  │  │   ││                                                ;*goto
                  │  │   ││                                                ; - com.google.re2j.Machine::step@419 (line 264)
  0.10%    0.18%  │ ↗│  ↗││  0x00007f7f2121a8da: test   %eax,0x1795d720(%rip)        # 0x00007f7f38b78000
                  │ ││  │││                                                ;*goto
                  │ ││  │││                                                ; - com.google.re2j.Machine::step@419 (line 264)
                  │ ││  │││                                                ;   {poll}
  0.74%    0.48%  │ ││  │││  0x00007f7f2121a8e0: mov    0x8(%rsp),%r10
  0.17%    0.32%  │ ││  │││  0x00007f7f2121a8e5: mov    0xc(%r10),%r10d
  0.26%    0.18%  │ ││  │││  0x00007f7f2121a8e9: cmp    %r10d,%r14d
                  │ ││  │││  0x00007f7f2121a8ec: jge    0x00007f7f2121abb4
  0.08%    0.16%  │ ││  │││  0x00007f7f2121a8f2: mov    %ecx,0x20(%rsp)
  0.53%    0.24%  │ ││  │││  0x00007f7f2121a8f6: mov    %r14d,%r11d        ;*aload_1
                  │ ││  │││                                                ; - com.google.re2j.Machine::step@21 (line 265)
  0.20%    0.21%  ↘ ││  │││  0x00007f7f2121a8f9: mov    0x8(%rsp),%r10
  0.34%    0.24%    ││  │││  0x00007f7f2121a8fe: mov    0x10(%r10),%r8d    ;*getfield dense
                    ││  │││                                                ; - com.google.re2j.Machine::step@22 (line 265)
  0.26%    0.34%    ││  │││  0x00007f7f2121a902: mov    0xc(%r12,%r8,8),%r10d  ; implicit exception: dispatches to 0x00007f7f2121bcc5
  0.72%    0.51%    ││  │││  0x00007f7f2121a907: cmp    %r10d,%r11d
                    ││  │││  0x00007f7f2121a90a: jae    0x00007f7f2121b246
  0.25%    0.27%    ││  │││  0x00007f7f2121a910: lea    (%r12,%r8,8),%r10
  0.36%    0.32%    ││  │││  0x00007f7f2121a914: mov    0x10(%r10,%r11,4),%r9d  ;*aaload
                    ││  │││                                                ; - com.google.re2j.Machine::step@27 (line 265)
  0.12%    0.20%    ││  │││  0x00007f7f2121a919: mov    0x10(%r12,%r9,8),%r8d  ;*getfield thread
                    ││  │││                                                ; - com.google.re2j.Machine::step@40 (line 269)
                    ││  │││                                                ; implicit exception: dispatches to 0x00007f7f2121bd49
  0.61%    1.04%    ││  │││  0x00007f7f2121a91e: mov    %r11d,%r14d
  0.13%    0.26%    ││  │││  0x00007f7f2121a921: inc    %r14d              ;*iadd
                    ││  │││                                                ; - com.google.re2j.Machine::step@241 (line 293)
  0.29%    0.47%    ││  │││  0x00007f7f2121a924: test   %r8d,%r8d
                   ╭││  │││  0x00007f7f2121a927: jne    0x00007f7f2121a934  ;*ifnonnull
                   │││  │││                                                ; - com.google.re2j.Machine::step@47 (line 270)
  0.03%    0.06%   │││  │││  0x00007f7f2121a929: mov    0x24(%rsp),%r10d
  0.18%    0.31%   │││  │││  0x00007f7f2121a92e: mov    0x20(%rsp),%ecx
  0.15%    0.11%   │╰│  │││  0x00007f7f2121a932: jmp    0x00007f7f2121a8da
  0.12%    0.16%   ↘ │  │││  0x00007f7f2121a934: mov    0x24(%rsp),%r10d
  0.35%    0.28%     │  │││  0x00007f7f2121a939: test   %r10d,%r10d
                     │  │││  0x00007f7f2121a93c: jne    0x00007f7f2121b5f9  ;*ifeq
                     │  │││                                                ; - com.google.re2j.Machine::step@55 (line 273)
  0.04%    0.04%     │  │││  0x00007f7f2121a942: mov    0x10(%r12,%r8,8),%r10d  ;*getfield inst
                     │  │││                                                ; - com.google.re2j.Machine::step@107 (line 278)
  0.38%    0.29%     │  │││  0x00007f7f2121a947: mov    0x14(%r12,%r10,8),%r9d  ;*getfield op
                     │  │││                                                ; - com.google.re2j.Machine::step@120 (line 280)
                     │  │││                                                ; implicit exception: dispatches to 0x00007f7f2121bce9
  0.96%    1.35%     │  │││  0x00007f7f2121a94c: mov    0xc(%r12,%r9,8),%ebp  ;*getfield ordinal
                     │  │││                                                ; - java.lang.Enum::ordinal@1 (line 103)
                     │  │││                                                ; - com.google.re2j.Machine::step@123 (line 280)
                     │  │││                                                ; implicit exception: dispatches to 0x00007f7f2121bcf9
  1.58%    1.78%     │  │││  0x00007f7f2121a951: cmp    $0xb,%ebp
                     │  │││  0x00007f7f2121a954: jae    0x00007f7f2121b3c9
  0.50%    0.56%     │  │││  0x00007f7f2121a95a: movabs $0x76dd58eb8,%r9   ;   {oop([I)}
  0.09%    0.07%     │  │││  0x00007f7f2121a964: mov    0x10(%r9,%rbp,4),%edx  ;*iaload
                     │  │││                                                ; - com.google.re2j.Machine::step@126 (line 280)
  2.47%    3.07%     │  │││  0x00007f7f2121a969: mov    0x18(%r12,%r10,8),%ecx  ;*getfield runes
                     │  │││                                                ; - com.google.re2j.Machine::step@320 (line 310)
  0.00%    0.00%     │  │││  0x00007f7f2121a96e: mov    0xc(%r12,%r8,8),%edi  ;*getfield cap
                     │  │││                                                ; - com.google.re2j.Machine::step@176 (line 287)
                     │  │││  0x00007f7f2121a973: lea    (%r12,%r8,8),%r9   ;*getfield thread
                     │  │││                                                ; - com.google.re2j.Machine::step@40 (line 269)
  0.04%    0.02%     │  │││  0x00007f7f2121a977: cmp    $0x3,%edx
                     ╰  │││  0x00007f7f2121a97a: je     0x00007f7f2121a810
  0.43%    0.47%        │││  0x00007f7f2121a980: cmp    $0x3,%edx
                        │││  0x00007f7f2121a983: jle    0x00007f7f2121aa38
  0.06%    0.02%        │││  0x00007f7f2121a989: cmp    $0x5,%edx
                      ╭ │││  0x00007f7f2121a98c: je     0x00007f7f2121aa13
  0.13%    0.11%      │ │││  0x00007f7f2121a992: cmp    $0x5,%edx
                      │ │││  0x00007f7f2121a995: jg     0x00007f7f2121b6e1  ;*tableswitch
                      │ │││                                                ; - com.google.re2j.Machine::step@127 (line 280)
  0.11%    0.09%      │ │││  0x00007f7f2121a99b: mov    %r11d,0x94(%rsp)
                      │ │││  0x00007f7f2121a9a3: mov    %r14d,0x9c(%rsp)
           0.00%      │ │││  0x00007f7f2121a9ab: mov    %r9,%r13           ;*ifeq
                      │ │││                                                ; - com.google.re2j.Machine::step@373 (line 324)
  0.06%    0.03%      │ │││  0x00007f7f2121a9ae: mov    0xc(%r12,%r10,8),%ecx  ;*getfield out
                      │ │││                                                ; - com.google.re2j.Machine::step@380 (line 325)
  0.11%    0.07%      │ │││  0x00007f7f2121a9b3: mov    %rdi,%r9
  0.00%    0.00%      │ │││  0x00007f7f2121a9b6: shl    $0x3,%r9           ;*getfield cap
                      │ │││                                                ; - com.google.re2j.Machine::step@176 (line 287)
           0.00%      │ │││  0x00007f7f2121a9ba: mov    0x28(%rsp),%rsi
  0.04%    0.07%      │ │││  0x00007f7f2121a9bf: mov    0x18(%rsp),%rdx
  0.13%    0.11%      │ │││  0x00007f7f2121a9c4: mov    0x14(%rsp),%r8d
           0.01%      │ │││  0x00007f7f2121a9c9: mov    0x90(%rsp),%edi
                      │ │││  0x00007f7f2121a9d0: mov    %r13,(%rsp)
  0.08%    0.04%      │ │││  0x00007f7f2121a9d4: data16 xchg %ax,%ax
  0.09%    0.17%      │ │││  0x00007f7f2121a9d7: callq  0x00007f7f21046020  ; OopMap{[8]=Oop [24]=Oop [40]=Oop off=572}
                      │ │││                                                ;*invokespecial add
                      │ │││                                                ; - com.google.re2j.Machine::step@394 (line 325)
                      │ │││                                                ;   {optimized virtual_call}
                      │ │││  0x00007f7f2121a9dc: test   %rax,%rax
                      │╭│││  0x00007f7f2121a9df: jne    0x00007f7f2121a9f5  ;*ifnull
                      │││││                                                ; - com.google.re2j.Machine::step@401 (line 327)
  0.01%               │││││  0x00007f7f2121a9e1: xor    %r10d,%r10d
                      │││││  0x00007f7f2121a9e4: mov    0x20(%rsp),%ecx
  0.19%    0.35%      │││││  0x00007f7f2121a9e8: mov    0x9c(%rsp),%r14d
  0.00%               ││╰││  0x00007f7f2121a9f0: jmpq   0x00007f7f2121a8da
                      │↘ ││  0x00007f7f2121a9f5: mov    %rax,0x50(%rsp)
                      │  ││  0x00007f7f2121a9fa: mov    0x20(%rsp),%ecx
                      │  ││  0x00007f7f2121a9fe: mov    0x94(%rsp),%r11d
                      │  ││  0x00007f7f2121aa06: mov    0x9c(%rsp),%r14d
                      │  ╰│  0x00007f7f2121aa0e: jmpq   0x00007f7f2121a833
                      ↘   │  0x00007f7f2121aa13: mov    0x20(%rsp),%ecx
                          │  0x00007f7f2121aa17: cmp    $0xa,%ecx
                          ╰  0x00007f7f2121aa1a: je     0x00007f7f2121a82e  ;*if_icmpeq
                                                                           ; - com.google.re2j.Machine::step@348 (line 318)
                             0x00007f7f2121aa20: mov    %r11d,0x94(%rsp)
....................................................................................................
 19.07%   20.77%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 494 (396 bytes) 

                          0x00007f7f212145b0: mov    %r10,(%rsp)
                          0x00007f7f212145b4: data16 xchg %ax,%ax
                          0x00007f7f212145b7: callq  0x00007f7f21046020  ; OopMap{off=572}
                                                                        ;*invokespecial add
                                                                        ; - com.google.re2j.Machine::add@207 (line 369)
                                                                        ;   {optimized virtual_call}
                  ╭       0x00007f7f212145bc: jmpq   0x00007f7f2121474c
                  │       0x00007f7f212145c1: mov    0x70(%rsp),%rax
                  │╭      0x00007f7f212145c6: jmpq   0x00007f7f2121474c  ;*tableswitch
                  ││                                                    ; - com.google.re2j.Machine::add@47 (line 349)
  1.18%    1.28%  ││      0x00007f7f212145cb: mov    0x1c(%rsp),%r8d
                  ││      0x00007f7f212145d0: mov    0x20(%rsp),%r9
                  ││      0x00007f7f212145d5: mov    0x28(%rsp),%edi
                  ││      0x00007f7f212145d9: mov    0x70(%rsp),%r10
  0.37%    0.26%  ││      0x00007f7f212145de: mov    %r10,(%rsp)
                  ││      0x00007f7f212145e2: mov    %rsi,%rbp
                  ││      0x00007f7f212145e5: xchg   %ax,%ax
                  ││      0x00007f7f212145e7: callq  0x00007f7f21046020  ; OopMap{rbp=Oop [32]=Oop [56]=Oop [64]=Oop off=620}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@131 (line 358)
                  ││                                                    ;   {optimized virtual_call}
                  ││      0x00007f7f212145ec: mov    0x38(%rsp),%r10
  0.28%    0.24%  ││      0x00007f7f212145f1: mov    0x10(%r10),%ecx    ;*getfield arg
                  ││                                                    ; - com.google.re2j.Machine::add@140 (line 359)
           0.00%  ││      0x00007f7f212145f5: mov    %rbp,%rsi
                  ││      0x00007f7f212145f8: mov    0x40(%rsp),%rdx
  0.18%    0.05%  ││      0x00007f7f212145fd: mov    0x1c(%rsp),%r8d
  0.16%    0.21%  ││      0x00007f7f21214602: mov    0x20(%rsp),%r9
                  ││      0x00007f7f21214607: mov    0x28(%rsp),%edi
                  ││      0x00007f7f2121460b: mov    %rax,(%rsp)
  0.20%    0.01%  ││      0x00007f7f2121460f: callq  0x00007f7f21046020  ; OopMap{off=660}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@150 (line 359)
                  ││                                                    ;   {optimized virtual_call}
                  ││╭     0x00007f7f21214614: jmpq   0x00007f7f2121474c  ;*aload
                  │││                                                   ; - com.google.re2j.Machine::add@297 (line 388)
  2.71%    2.15%  │││     0x00007f7f21214619: mov    0x38(%rsp),%r10
                  │││     0x00007f7f2121461e: mov    %r10,%r9
  0.00%    0.01%  │││     0x00007f7f21214621: shr    $0x3,%r9           ;*putfield inst
                  │││                                                   ; - com.google.re2j.Machine::alloc@47 (line 151)
                  │││                                                   ; - com.google.re2j.Machine::add@305 (line 389)
                  │││     0x00007f7f21214625: mov    0x70(%rsp),%rbx
  0.80%    0.48%  │││     0x00007f7f2121462a: test   %rbx,%rbx
                  │││╭    0x00007f7f2121462d: je     0x00007f7f2121464d  ;*ifnonnull
                  ││││                                                  ; - com.google.re2j.Machine::add@299 (line 388)
                  ││││    0x00007f7f2121462f: mov    %r9d,0x10(%rbx)
                  ││││    0x00007f7f21214633: mov    %rbx,%r10
                  ││││    0x00007f7f21214636: shr    $0x9,%r10
  0.16%    0.17%  ││││    0x00007f7f2121463a: movabs $0x7f7f31580000,%r11
                  ││││    0x00007f7f21214644: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                  ││││                                                  ; - com.google.re2j.Machine::add@317 (line 391)
           0.00%  ││││╭   0x00007f7f21214648: jmpq   0x00007f7f212146d8
                  │││↘│   0x00007f7f2121464d: mov    0x20(%rsi),%ebp    ;*getfield pool
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@1 (line 147)
                  │││ │                                                 ; - com.google.re2j.Machine::add@305 (line 389)
  0.00%    0.01%  │││ │   0x00007f7f21214650: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f7f21214bcd
                  │││ │   0x00007f7f21214655: cmp    $0xf8002f22,%r11d  ;   {metadata(&apos;java/util/ArrayList&apos;)}
                  │││ │   0x00007f7f2121465c: jne    0x00007f7f212149d1
  0.53%    0.16%  │││ │   0x00007f7f21214662: lea    (%r12,%rbp,8),%r11  ;*invokeinterface size
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@4 (line 147)
                  │││ │                                                 ; - com.google.re2j.Machine::add@305 (line 389)
                  │││ │   0x00007f7f21214666: mov    0x10(%r11),%ecx    ;*getfield size
                  │││ │                                                 ; - java.util.ArrayList::size@1 (line 278)
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@4 (line 147)
                  │││ │                                                 ; - com.google.re2j.Machine::add@305 (line 389)
           0.00%  │││ │   0x00007f7f2121466a: test   %ecx,%ecx
                  │││ │   0x00007f7f2121466c: jle    0x00007f7f21214a35  ;*ifle
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@11 (line 148)
                  │││ │                                                 ; - com.google.re2j.Machine::add@305 (line 389)
                  │││ │   0x00007f7f21214672: mov    %ecx,%r8d
  0.51%    0.09%  │││ │   0x00007f7f21214675: dec    %r8d               ;*isub
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@20 (line 148)
                  │││ │                                                 ; - com.google.re2j.Machine::add@305 (line 389)
                  │││ │   0x00007f7f21214678: cmp    %ecx,%r8d
                  │││ │   0x00007f7f2121467b: jge    0x00007f7f21214a5d  ;*if_icmplt
                  │││ │                                                 ; - java.util.ArrayList::rangeCheck@5 (line 652)
                  │││ │                                                 ; - java.util.ArrayList::remove@2 (line 492)
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@21 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@305 (line 389)
                  │││ │   0x00007f7f21214681: incl   0xc(%r11)          ;*putfield modCount
                  │││ │                                                 ; - java.util.ArrayList::remove@12 (line 494)
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@21 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@305 (line 389)
  0.48%    0.12%  │││ │   0x00007f7f21214685: mov    0x14(%r11),%ebp    ;*getfield elementData
                  │││ │                                                 ; - java.util.ArrayList::elementData@1 (line 418)
                  │││ │                                                 ; - java.util.ArrayList::remove@17 (line 495)
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@21 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@305 (line 389)
  0.00%    0.00%  │││ │   0x00007f7f21214689: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f7f21214bdd
                  │││ │   0x00007f7f2121468e: cmp    %r10d,%r8d
                  │││ │   0x00007f7f21214691: jae    0x00007f7f212149a9  ;*aaload
                  │││ │                                                 ; - java.util.ArrayList::elementData@5 (line 418)
                  │││ │                                                 ; - java.util.ArrayList::remove@17 (line 495)
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@21 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@305 (line 389)
  0.52%    0.08%  │││ │   0x00007f7f21214697: mov    %r8d,0x10(%r11)    ;*putfield size
                  │││ │                                                 ; - java.util.ArrayList::remove@62 (line 501)
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@21 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@305 (line 389)
                  │││ │   0x00007f7f2121469b: lea    (%r12,%rbp,8),%r10
           0.01%  │││ │   0x00007f7f2121469f: mov    0xc(%r10,%rcx,4),%ebp  ;*aaload
                  │││ │                                                 ; - java.util.ArrayList::elementData@5 (line 418)
                  │││ │                                                 ; - java.util.ArrayList::remove@17 (line 495)
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@21 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@305 (line 389)
                  │││ │   0x00007f7f212146a4: mov    %r12d,0xc(%r10,%rcx,4)  ;*aastore
                  │││ │                                                 ; - java.util.ArrayList::remove@66 (line 501)
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@21 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@305 (line 389)
  0.54%    0.18%  │││ │   0x00007f7f212146a9: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f7f21214bf1
                  │││ │   0x00007f7f212146ae: cmp    $0xf8019c51,%r11d  ;   {metadata(&apos;com/google/re2j/Machine$Thread&apos;)}
                  │││ │   0x00007f7f212146b5: jne    0x00007f7f21214af1
           0.01%  │││ │   0x00007f7f212146bb: lea    (%r12,%rbp,8),%rbx  ;*checkcast
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@26 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@305 (line 389)
                  │││ │   0x00007f7f212146bf: mov    %r9d,0x10(%rbx)
  0.43%    0.40%  │││ │   0x00007f7f212146c3: mov    %rbx,%r10
                  │││ │   0x00007f7f212146c6: shr    $0x9,%r10
  0.00%           │││ │   0x00007f7f212146ca: movabs $0x7f7f31580000,%r11
                  │││ │   0x00007f7f212146d4: mov    %r12b,(%r11,%r10,1)  ;*aload
                  │││ │                                                 ; - com.google.re2j.Machine::add@320 (line 393)
  0.52%    0.03%  │││ ↘   0x00007f7f212146d8: mov    0x20(%rsp),%rdi
  0.18%    0.05%  │││     0x00007f7f212146dd: mov    0xc(%rdi),%r10d    ;*arraylength
                  │││                                                   ; - com.google.re2j.Machine::add@322 (line 393)
                  │││                                                   ; implicit exception: dispatches to 0x00007f7f21214bbd
  0.00%    0.01%  │││     0x00007f7f212146e1: test   %r10d,%r10d
                  │││     0x00007f7f212146e4: jle    0x00007f7f21214a13  ;*ifle
                  │││                                                   ; - com.google.re2j.Machine::add@323 (line 393)
  0.00%    0.00%  │││     0x00007f7f212146ea: mov    0xc(%rbx),%r11d    ;*getfield cap
                  │││                                                   ; - com.google.re2j.Machine::add@328 (line 393)
  0.51%    0.03%  │││     0x00007f7f212146ee: lea    (%r12,%r13,8),%rbp  ;*aaload
                  │││                                                   ; - com.google.re2j.Machine$Queue::add@24 (line 61)
                  │││                                                   ; - com.google.re2j.Machine::add@20 (line 347)
  0.19%    0.10%  │││     0x00007f7f212146f2: mov    %r11,%r8
  0.01%           │││     0x00007f7f212146f5: shl    $0x3,%r8
                  │││     0x00007f7f212146f9: cmp    %rdi,%r8
                  │││  ╭  0x00007f7f212146fc: je     0x00007f7f21214729  ;*if_acmpeq
                  │││  │                                                ; - com.google.re2j.Machine::add@333 (line 393)
  0.47%    0.01%  │││  │  0x00007f7f212146fe: mov    0xc(%r12,%r11,8),%r8d  ; implicit exception: dispatches to 0x00007f7f21214c0d
                  │││  │  0x00007f7f21214703: lea    (%r12,%r11,8),%rcx  ;*getfield cap
                  │││  │                                                ; - com.google.re2j.Machine::add@328 (line 393)
  0.00%           │││  │  0x00007f7f21214707: cmp    %r10d,%r8d
                  │││  │  0x00007f7f2121470a: jb     0x00007f7f212149e5
                  │││  │  0x00007f7f21214710: lea    0x10(%r12,%r11,8),%rsi
  0.52%    0.35%  │││  │  0x00007f7f21214715: add    $0x10,%rdi
                  │││  │  0x00007f7f21214719: movslq %r10d,%rdx
  0.00%    0.00%  │││  │  0x00007f7f2121471c: movabs $0x7f7f21052640,%r10
                  │││  │  0x00007f7f21214726: callq  *%r10              ;*aload
                  │││  │                                                ; - com.google.re2j.Machine::add@351 (line 396)
                  │││  ↘  0x00007f7f21214729: mov    %rbp,%r10
  0.25%    0.12%  │││     0x00007f7f2121472c: mov    %rbx,%r8
                  │││     0x00007f7f2121472f: shr    $0x3,%r8
  0.55%    0.70%  │││     0x00007f7f21214733: mov    %r8d,0x10(%r12,%r13,8)
                  │││     0x00007f7f21214738: shr    $0x9,%r10
  0.16%    0.11%  │││     0x00007f7f2121473c: movabs $0x7f7f31580000,%r11
                  │││     0x00007f7f21214746: mov    %r12b,(%r11,%r10,1)  ;*putfield thread
                  │││                                                   ; - com.google.re2j.Machine::add@355 (line 396)
  0.49%    0.87%  │││     0x00007f7f2121474a: xor    %eax,%eax          ;*synchronization entry
                  │││                                                   ; - com.google.re2j.Machine::add@-1 (line 341)
  0.45%    0.70%  ↘↘↘     0x00007f7f2121474c: add    $0x60,%rsp
  0.14%    0.15%          0x00007f7f21214750: pop    %rbp
  0.50%    0.54%          0x00007f7f21214751: test   %eax,0x179638a9(%rip)        # 0x00007f7f38b78000
                                                                        ;   {poll_return}
  0.44%    0.69%          0x00007f7f21214757: retq                      ;*tableswitch
                                                                        ; - com.google.re2j.Machine::add@47 (line 349)
                          0x00007f7f21214758: mov    0x1c(%rsp),%r8d
                          0x00007f7f2121475d: mov    0x20(%rsp),%r9
                          0x00007f7f21214762: mov    %r10d,%edi
                          0x00007f7f21214765: mov    0x70(%rsp),%r10
                          0x00007f7f2121476a: mov    %r10,(%rsp)
                          0x00007f7f2121476e: nop
                          0x00007f7f2121476f: callq  0x00007f7f21046020  ; OopMap{off=1012}
                                                                        ;*invokespecial add
....................................................................................................
 14.47%   10.46%  <total for region 3>

....[Hottest Regions]...............................................................................
 36.05%   34.92%         C2, level 4  com.google.re2j.Machine::add, version 494 (412 bytes) 
 19.07%   20.77%         C2, level 4  com.google.re2j.Machine::step, version 498 (560 bytes) 
 14.47%   10.46%         C2, level 4  com.google.re2j.Machine::add, version 494 (396 bytes) 
  8.06%   10.33%         C2, level 4  com.google.re2j.Machine::step, version 498 (315 bytes) 
  6.50%    8.31%         C2, level 4  com.google.re2j.Machine::step, version 498 (223 bytes) 
  5.79%    6.96%         C2, level 4  com.google.re2j.Machine::match, version 541 (716 bytes) 
  3.53%    1.97%        runtime stub  StubRoutines::jint_disjoint_arraycopy (116 bytes) 
  1.25%    1.46%         C2, level 4  com.google.re2j.Machine::step, version 498 (151 bytes) 
  0.96%    1.45%         C2, level 4  com.google.re2j.Machine::add, version 494 (39 bytes) 
  0.40%    0.38%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.35%    0.14%         C2, level 4  com.google.re2j.Machine::init, version 550 (204 bytes) 
  0.19%    0.18%         C2, level 4  com.google.re2j.Machine::match, version 541 (98 bytes) 
  0.17%    0.16%         C2, level 4  com.google.re2j.Machine::step, version 498 (26 bytes) 
  0.07%    0.01%   [kernel.kallsyms]  [unknown] (37 bytes) 
  0.07%    0.01%   [kernel.kallsyms]  [unknown] (39 bytes) 
  0.07%    0.04%   [kernel.kallsyms]  [unknown] (26 bytes) 
  0.07%    0.01%   [kernel.kallsyms]  [unknown] (5 bytes) 
  0.07%    0.01%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.06%    0.07%         C2, level 4  com.google.re2j.Machine::step, version 498 (44 bytes) 
  0.05%            [kernel.kallsyms]  [unknown] (27 bytes) 
  2.75%    2.34%  <...other 512 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 51.48%   46.83%         C2, level 4  com.google.re2j.Machine::add, version 494 
 35.10%   41.10%         C2, level 4  com.google.re2j.Machine::step, version 498 
  6.18%    7.32%         C2, level 4  com.google.re2j.Machine::match, version 541 
  3.53%    1.97%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
  1.98%    1.28%   [kernel.kallsyms]  [unknown] 
  0.49%    0.24%         C2, level 4  com.google.re2j.Machine::init, version 550 
  0.16%    0.08%         C2, level 4  com.google.re2j.RE2::doExecute, version 570 
  0.10%    0.04%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 642 
  0.08%    0.04%           libjvm.so  _ZN19GenericTaskQueueSetI17OverflowTaskQueueI8StarTaskL10MemoryType1ELj131072EELS2_1EE15steal_best_of_2EjPiRS1_ 
  0.06%    0.04%      hsdis-amd64.so  [unknown] 
  0.04%    0.01%         C2, level 4  java.util.Collections::shuffle, version 590 
  0.04%    0.06%           libjvm.so  _ZN18PSPromotionManager22copy_to_survivor_spaceILb0EEEP7oopDescS2_ 
  0.04%    0.08%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.04%           libpthread-2.26.so  __libc_write 
  0.03%    0.02%        libc-2.26.so  __strlen_avx2 
  0.03%    0.07%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.02%    0.02%           libjvm.so  _ZN18PSPromotionManager18drain_stacks_depthEb 
  0.02%    0.02%           libjvm.so  _ZN13defaultStream4holdEl 
  0.02%    0.02%        libc-2.26.so  _IO_fwrite 
  0.02%    0.02%           libjvm.so  _ZN13xmlTextStream5writeEPKcm 
  0.52%    0.42%  <...other 82 warm methods...>
....................................................................................................
100.00%   99.73%  <totals>

....[Distribution by Source]........................................................................
 93.56%   95.64%         C2, level 4
  3.54%    1.98%        runtime stub
  1.98%    1.28%   [kernel.kallsyms]
  0.60%    0.69%           libjvm.so
  0.14%    0.29%        libc-2.26.so
  0.07%    0.05%  libpthread-2.26.so
  0.06%    0.04%      hsdis-amd64.so
  0.02%    0.01%         interpreter
  0.01%    0.00%              [vdso]
  0.00%    0.01%         C1, level 3
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                     Mode  Cnt     Score    Error  Units
Re2jFindRegex.testExp1       thrpt   20  5317.505 ± 48.386  ops/s
Re2jFindRegex.testExp1:·asm  thrpt            NaN             ---
