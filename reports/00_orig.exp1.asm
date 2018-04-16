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
# Warmup Iteration   1: 3152.317 ops/s
# Warmup Iteration   2: 5870.854 ops/s
# Warmup Iteration   3: 6075.068 ops/s
# Warmup Iteration   4: 5954.500 ops/s
# Warmup Iteration   5: 6166.890 ops/s
# Warmup Iteration   6: 6150.137 ops/s
# Warmup Iteration   7: 6144.664 ops/s
# Warmup Iteration   8: 6070.072 ops/s
# Warmup Iteration   9: 5863.953 ops/s
# Warmup Iteration  10: 5862.090 ops/s
# Warmup Iteration  11: 5692.607 ops/s
# Warmup Iteration  12: 5506.989 ops/s
# Warmup Iteration  13: 6218.536 ops/s
# Warmup Iteration  14: 6237.872 ops/s
# Warmup Iteration  15: 6193.584 ops/s
# Warmup Iteration  16: 6187.219 ops/s
# Warmup Iteration  17: 6056.415 ops/s
# Warmup Iteration  18: 6051.781 ops/s
# Warmup Iteration  19: 6058.162 ops/s
# Warmup Iteration  20: 5990.721 ops/s
Iteration   1: 6074.373 ops/s
Iteration   2: 5897.640 ops/s
Iteration   3: 6048.261 ops/s
Iteration   4: 6029.524 ops/s
Iteration   5: 6117.317 ops/s
Iteration   6: 6134.242 ops/s
Iteration   7: 6100.284 ops/s
Iteration   8: 6112.934 ops/s
Iteration   9: 6117.360 ops/s
Iteration  10: 6124.352 ops/s
Iteration  11: 6115.097 ops/s
Iteration  12: 6074.134 ops/s
Iteration  13: 6098.572 ops/s
Iteration  14: 6130.338 ops/s
Iteration  15: 6127.726 ops/s
Iteration  16: 6096.977 ops/s
Iteration  17: 6067.570 ops/s
Iteration  18: 6127.381 ops/s
Iteration  19: 6123.866 ops/s
Iteration  20: 6126.336 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  6092.214 ±(99.9%) 47.241 ops/s [Average]
  (min, avg, max) = (5897.640, 6092.214, 6134.242), stdev = 54.403
  CI (99.9%): [6044.973, 6139.455] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1:·asm":
PrintAssembly processed: 216693 total address lines.
Perf output processed (skipped 23.061 seconds):
 Column 1: cycles (20420 events)
 Column 2: instructions (20486 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 545 (416 bytes) 

                     # parm4:    rdi       = int
                     # parm5:    [sp+0x70]   = &apos;com/google/re2j/Machine$Thread&apos;  (sp of caller)
                     0x00007f013d241040: mov    0x8(%rsi),%r10d    ;   {no_reloc}
                     0x00007f013d241044: shl    $0x3,%r10
                     0x00007f013d241048: cmp    %r10,%rax
                     0x00007f013d24104b: jne    0x00007f013d045e20  ;   {runtime_call}
                     0x00007f013d241051: data16 xchg %ax,%ax
                     0x00007f013d241054: nopl   0x0(%rax,%rax,1)
                     0x00007f013d24105c: data16 data16 xchg %ax,%ax
                   [Verified Entry Point]
  0.57%    0.44%     0x00007f013d241060: mov    %eax,-0x14000(%rsp)
  0.48%    0.31%     0x00007f013d241067: push   %rbp
  0.62%    0.43%     0x00007f013d241068: sub    $0x60,%rsp         ;*synchronization entry
                                                                   ; - com.google.re2j.Machine::add@-1 (line 341)
  0.02%    0.05%     0x00007f013d24106c: mov    %edi,0x28(%rsp)
  0.47%    0.31%     0x00007f013d241070: mov    %r9,0x20(%rsp)
  0.60%    0.38%     0x00007f013d241075: mov    %r8d,0x1c(%rsp)
  0.02%    0.01%     0x00007f013d24107a: mov    %rsi,0x8(%rsp)
  0.02%    0.03%     0x00007f013d24107f: mov    %ecx,0x40(%rsp)
  0.50%    0.21%     0x00007f013d241083: test   %ecx,%ecx
                     0x00007f013d241085: je     0x00007f013d24167d  ;*ifne
                                                                   ; - com.google.re2j.Machine::add@1 (line 341)
  0.57%    0.67%     0x00007f013d24108b: mov    %rdx,0x48(%rsp)
  0.01%    0.01%     0x00007f013d241090: mov    0x14(%rdx),%r9d    ;*getfield sparse
                                                                   ; - com.google.re2j.Machine$Queue::contains@1 (line 48)
                                                                   ; - com.google.re2j.Machine::add@9 (line 344)
                                                                   ; implicit exception: dispatches to 0x00007f013d241881
  0.03%    0.03%     0x00007f013d241094: mov    0xc(%r12,%r9,8),%r10d  ; implicit exception: dispatches to 0x00007f013d241895
  0.45%    0.34%     0x00007f013d241099: cmp    %r10d,%ecx
                     0x00007f013d24109c: jae    0x00007f013d2414fe  ;*iaload
                                                                   ; - com.google.re2j.Machine$Queue::contains@5 (line 48)
                                                                   ; - com.google.re2j.Machine::add@9 (line 344)
  0.66%    0.74%     0x00007f013d2410a2: mov    0x10(%rdx),%ecx    ;*getfield dense
                                                                   ; - com.google.re2j.Machine$Queue::contains@18 (line 52)
                                                                   ; - com.google.re2j.Machine::add@9 (line 344)
  0.01%    0.00%     0x00007f013d2410a5: mov    0xc(%rdx),%r8d     ;*getfield size
                                                                   ; - com.google.re2j.Machine$Queue::contains@9 (line 49)
                                                                   ; - com.google.re2j.Machine::add@9 (line 344)
  0.06%    0.06%     0x00007f013d2410a9: lea    (%r12,%r9,8),%rdi
  0.50%    0.39%     0x00007f013d2410ad: mov    0x40(%rsp),%r11d
  1.02%    0.40%     0x00007f013d2410b2: mov    0x10(%rdi,%r11,4),%ebp  ;*iaload
                                                                   ; - com.google.re2j.Machine$Queue::contains@5 (line 48)
                                                                   ; - com.google.re2j.Machine::add@9 (line 344)
  0.09%    0.02%     0x00007f013d2410b7: cmp    %r8d,%ebp
                  ╭  0x00007f013d2410ba: jl     0x00007f013d24120f  ;*iastore
                  │                                                ; - com.google.re2j.Machine$Queue::add@18 (line 60)
                  │                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.07%    0.08%  │  0x00007f013d2410c0: mov    %r8d,%r11d
  0.52%    0.19%  │  0x00007f013d2410c3: inc    %r11d
  0.60%    0.28%  │  0x00007f013d2410c6: mov    %r11d,0xc(%rdx)    ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::add@8 (line 59)
                  │                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.01%    0.03%  │  0x00007f013d2410ca: mov    0x40(%rsp),%ebx
  0.17%    0.07%  │  0x00007f013d2410ce: cmp    %r10d,%ebx
                  │  0x00007f013d2410d1: jae    0x00007f013d24153d
  0.37%    0.21%  │  0x00007f013d2410d7: mov    %r8d,0x10(%rdi,%rbx,4)  ;*iastore
                  │                                                ; - com.google.re2j.Machine$Queue::add@18 (line 60)
                  │                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.52%    0.42%  │  0x00007f013d2410dc: mov    0xc(%r12,%rcx,8),%r10d  ; implicit exception: dispatches to 0x00007f013d2418a9
  0.01%    0.01%  │  0x00007f013d2410e1: cmp    %r10d,%r8d
                  │  0x00007f013d2410e4: jae    0x00007f013d241589  ;*aaload
                  │                                                ; - com.google.re2j.Machine$Queue::add@24 (line 61)
                  │                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.03%    0.04%  │  0x00007f013d2410ea: lea    (%r12,%rcx,8),%r10  ;*getfield dense
                  │                                                ; - com.google.re2j.Machine$Queue::contains@18 (line 52)
                  │                                                ; - com.google.re2j.Machine::add@9 (line 344)
  0.45%    0.17%  │  0x00007f013d2410ee: mov    %r10,0x38(%rsp)
  0.58%    0.72%  │  0x00007f013d2410f3: lea    0x10(%r10,%r8,4),%rbp
  0.01%           │  0x00007f013d2410f8: mov    0x0(%rbp),%r11d    ;*aaload
                  │                                                ; - com.google.re2j.Machine$Queue::add@24 (line 61)
                  │                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.03%    0.05%  │  0x00007f013d2410fc: test   %r11d,%r11d
                  │  0x00007f013d2410ff: je     0x00007f013d241242  ;*ifnonnull
                  │                                                ; - com.google.re2j.Machine$Queue::add@27 (line 62)
                  │                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.45%    0.31%  │  0x00007f013d241105: lea    (%r12,%r11,8),%rbx  ;*aload_3
                  │                                                ; - com.google.re2j.Machine$Queue::add@45 (line 65)
                  │                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.55%    0.68%  │  0x00007f013d241109: mov    0x40(%rsp),%r11d
  0.05%    0.04%  │  0x00007f013d24110e: mov    %r11d,0xc(%rbx)    ;*putfield pc
                  │                                                ; - com.google.re2j.Machine$Queue::add@52 (line 66)
                  │                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.23%    0.09%  │  0x00007f013d241112: mov    0x8(%rsp),%r10
  0.42%    0.28%  │  0x00007f013d241117: mov    0x14(%r10),%r10d   ;*getfield prog
                  │                                                ; - com.google.re2j.Machine::add@26 (line 348)
  0.54%    0.80%  │  0x00007f013d24111b: mov    %r12d,0x10(%rbx)   ;*putfield thread
                  │                                                ; - com.google.re2j.Machine$Queue::add@47 (line 65)
                  │                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.06%    0.10%  │  0x00007f013d24111f: mov    0x14(%r12,%r10,8),%ebp  ;*getfield inst
                  │                                                ; - com.google.re2j.Prog::getInst@1 (line 29)
                  │                                                ; - com.google.re2j.Machine::add@30 (line 348)
                  │                                                ; implicit exception: dispatches to 0x00007f013d2418bd
  0.11%    0.10%  │  0x00007f013d241124: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f013d2418d1
  0.63%    0.73%  │  0x00007f013d241129: cmp    $0xf8002f22,%r11d  ;   {metadata(&apos;java/util/ArrayList&apos;)}
                  │  0x00007f013d241130: jne    0x00007f013d241655
  0.53%    0.67%  │  0x00007f013d241136: lea    (%r12,%rbp,8),%r11  ;*invokeinterface get
                  │                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  │                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.03%    0.04%  │  0x00007f013d24113a: mov    0x10(%r11),%ebp    ;*getfield size
                  │                                                ; - java.util.ArrayList::rangeCheck@2 (line 652)
                  │                                                ; - java.util.ArrayList::get@2 (line 429)
                  │                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  │                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.03%    0.01%  │  0x00007f013d24113e: mov    0x40(%rsp),%r10d
  0.37%    0.29%  │  0x00007f013d241143: cmp    %ebp,%r10d
                  │  0x00007f013d241146: jge    0x00007f013d2416a5  ;*if_icmplt
                  │                                                ; - java.util.ArrayList::rangeCheck@5 (line 652)
                  │                                                ; - java.util.ArrayList::get@2 (line 429)
                  │                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  │                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.74%    0.83%  │  0x00007f013d24114c: mov    0x14(%r11),%ebp    ;*getfield elementData
                  │                                                ; - java.util.ArrayList::elementData@1 (line 418)
                  │                                                ; - java.util.ArrayList::get@7 (line 431)
                  │                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  │                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.04%    0.04%  │  0x00007f013d241150: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f013d2418e5
  0.63%    0.77%  │  0x00007f013d241155: cmp    %r11d,%r10d
                  │  0x00007f013d241158: jae    0x00007f013d2415cd
  0.78%    0.47%  │  0x00007f013d24115e: lea    (%r12,%rbp,8),%r10
  0.43%    0.43%  │  0x00007f013d241162: mov    0x40(%rsp),%r11d
  0.01%    0.01%  │  0x00007f013d241167: mov    0x10(%r10,%r11,4),%ebp  ;*aaload
                  │                                                ; - java.util.ArrayList::elementData@5 (line 418)
                  │                                                ; - java.util.ArrayList::get@7 (line 431)
                  │                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  │                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.02%    0.07%  │  0x00007f013d24116c: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f013d2418f9
  1.09%    1.14%  │  0x00007f013d241171: cmp    $0xf8019844,%r10d  ;   {metadata(&apos;com/google/re2j/Inst&apos;)}
                  │  0x00007f013d241178: jne    0x00007f013d241844
  0.58%    0.80%  │  0x00007f013d24117e: lea    (%r12,%rbp,8),%r10  ;*checkcast
                  │                                                ; - com.google.re2j.Prog::getInst@10 (line 29)
                  │                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.01%           │  0x00007f013d241182: mov    %r10,0x38(%rsp)
  0.01%    0.04%  │  0x00007f013d241187: mov    0x14(%r10),%r11d   ;*getfield op
                  │                                                ; - com.google.re2j.Inst::op@4 (line 44)
                  │                                                ; - com.google.re2j.Machine::add@40 (line 349)
  0.36%    0.09%  │  0x00007f013d24118b: mov    0xc(%r12,%r11,8),%ebp  ;*getfield ordinal
                  │                                                ; - java.lang.Enum::ordinal@1 (line 103)
                  │                                                ; - com.google.re2j.Inst::op@7 (line 44)
                  │                                                ; - com.google.re2j.Machine::add@40 (line 349)
                  │                                                ; implicit exception: dispatches to 0x00007f013d241929
  2.05%    2.39%  │  0x00007f013d241190: cmp    $0xb,%ebp
                  │  0x00007f013d241193: jae    0x00007f013d2415f5  ;*iaload
                  │                                                ; - com.google.re2j.Inst::op@10 (line 44)
                  │                                                ; - com.google.re2j.Machine::add@40 (line 349)
  0.38%    0.51%  │  0x00007f013d241199: mov    %r11,%r10
  0.00%    0.01%  │  0x00007f013d24119c: shl    $0x3,%r10
  0.38%    0.44%  │  0x00007f013d2411a0: movabs $0x76dd36728,%r11  ;   {oop([I)}
  0.34%    0.51%  │  0x00007f013d2411aa: mov    0x10(%r11,%rbp,4),%r11d
  2.23%    2.32%  │  0x00007f013d2411af: dec    %r11d
  0.55%    0.65%  │  0x00007f013d2411b2: movabs $0x76dd29db0,%r8   ;   {oop(a &apos;com/google/re2j/Inst$Op&apos;)}
  0.25%    0.29%  │  0x00007f013d2411bc: cmp    $0x3,%r11d
  0.80%    0.90%  │  0x00007f013d2411c0: cmovb  %r8,%r10           ;*invokevirtual ordinal
                  │                                                ; - com.google.re2j.Machine::add@43 (line 349)
  1.64%    1.53%  │  0x00007f013d2411c4: mov    0xc(%r10),%ebp     ;*getfield ordinal
                  │                                                ; - java.lang.Enum::ordinal@1 (line 103)
                  │                                                ; - com.google.re2j.Machine::add@43 (line 349)
  4.84%    5.14%  │  0x00007f013d2411c8: cmp    $0xb,%ebp
                  │  0x00007f013d2411cb: jae    0x00007f013d24161d
  0.87%    1.17%  │  0x00007f013d2411d1: movabs $0x76dd58e20,%r10  ;   {oop([I)}
  0.00%           │  0x00007f013d2411db: mov    0x10(%r10,%rbp,4),%r10d  ;*iaload
                  │                                                ; - com.google.re2j.Machine::add@46 (line 349)
  4.39%    4.89%  │  0x00007f013d2411e0: mov    %r10d,%r8d
  0.02%    0.01%  │  0x00007f013d2411e3: dec    %r8d
  1.02%    0.87%  │  0x00007f013d2411e6: cmp    $0xb,%r8d
                  │  0x00007f013d2411ea: jae    0x00007f013d241645  ;*tableswitch
                  │                                                ; - com.google.re2j.Machine::add@47 (line 349)
  0.95%    0.88%  │  0x00007f013d2411f0: mov    0x38(%rsp),%r11
                  │  0x00007f013d2411f5: mov    0xc(%r11),%ecx     ;*getfield out
                  │                                                ; - com.google.re2j.Machine::add@279 (line 379)
  0.00%    0.02%  │  0x00007f013d2411f9: mov    0x10(%r11),%r9d    ;*getfield arg
                  │                                                ; - com.google.re2j.Machine::add@217 (line 373)
                  │  0x00007f013d2411fd: movslq %r10d,%r10
  1.05%    1.01%  │  0x00007f013d241200: movabs $0x7f013d240fe0,%r11  ;   {section_word}
                  │  0x00007f013d24120a: jmpq   *-0x8(%r11,%r10,8)  ;*tableswitch
                  │                                                ; - com.google.re2j.Machine::add@47 (line 349)
                  ↘  0x00007f013d24120f: mov    0xc(%r12,%rcx,8),%r11d  ; implicit exception: dispatches to 0x00007f013d2419b1
                     0x00007f013d241214: cmp    %r11d,%ebp
                     0x00007f013d241217: jae    0x00007f013d2417e9
                     0x00007f013d24121d: lea    (%r12,%rcx,8),%r11
           0.00%     0x00007f013d241221: mov    0x10(%r11,%rbp,4),%ebp  ;*aaload
                                                                   ; - com.google.re2j.Machine$Queue::contains@22 (line 52)
                                                                   ; - com.google.re2j.Machine::add@9 (line 344)
                     0x00007f013d241226: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f013d2419c1
....................................................................................................
 40.56%   39.53%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 552 (582 bytes) 

                              # parm6:    [sp+0x98]   = int
                              # parm7:    [sp+0xa0]   = boolean
                              0x00007f013d24e520: mov    0x8(%rsi),%r10d
                              0x00007f013d24e524: shl    $0x3,%r10
                              0x00007f013d24e528: cmp    %r10,%rax
                              0x00007f013d24e52b: jne    0x00007f013d045e20  ;   {runtime_call}
                              0x00007f013d24e531: data16 xchg %ax,%ax
                              0x00007f013d24e534: nopl   0x0(%rax,%rax,1)
                              0x00007f013d24e53c: data16 data16 xchg %ax,%ax
                            [Verified Entry Point]
  0.20%    0.17%              0x00007f013d24e540: mov    %eax,-0x14000(%rsp)
  0.02%    0.02%              0x00007f013d24e547: push   %rbp
  0.09%    0.11%              0x00007f013d24e548: sub    $0x80,%rsp         ;*synchronization entry
                                                                            ; - com.google.re2j.Machine::step@-1 (line 263)
  0.05%    0.03%              0x00007f013d24e54f: mov    %edi,0x20(%rsp)
           0.00%              0x00007f013d24e553: mov    %r9d,0x14(%rsp)
  0.15%    0.15%              0x00007f013d24e558: mov    %rcx,0x18(%rsp)
  0.00%    0.01%              0x00007f013d24e55d: mov    %r8d,0x10(%rsp)
  0.04%    0.01%              0x00007f013d24e562: mov    %rdx,0x8(%rsp)
  0.01%    0.01%              0x00007f013d24e567: mov    %rsi,0x28(%rsp)
  0.11%    0.21%              0x00007f013d24e56c: mov    0x10(%rsi),%r11d   ;*getfield re2
                                                                            ; - com.google.re2j.Machine::step@1 (line 263)
  0.00%    0.01%              0x00007f013d24e570: movzbl 0x18(%r12,%r11,8),%r10d  ;*getfield longest
                                                                            ; - com.google.re2j.Machine::step@4 (line 263)
                                                                            ; implicit exception: dispatches to 0x00007f013d24fb5d
  0.02%    0.05%              0x00007f013d24e576: mov    %r10d,0x24(%rsp)
  0.00%    0.00%              0x00007f013d24e57b: mov    0xc(%rdx),%r10d    ; implicit exception: dispatches to 0x00007f013d24fb6d
  0.08%    0.13%              0x00007f013d24e57f: test   %r10d,%r10d
                              0x00007f013d24e582: jle    0x00007f013d24e934  ;*if_icmpge
                                                                            ; - com.google.re2j.Machine::step@18 (line 264)
           0.02%              0x00007f013d24e588: xor    %r11d,%r11d
  0.03%    0.04%  ╭           0x00007f013d24e58b: jmpq   0x00007f013d24e679
  0.27%    0.44%  │  ↗        0x00007f013d24e590: mov    0xc(%r12,%rcx,8),%edx  ; implicit exception: dispatches to 0x00007f013d24fb4d
  0.01%    0.01%  │  │        0x00007f013d24e595: test   %edx,%edx
                  │  │        0x00007f013d24e597: jbe    0x00007f013d24f32d  ;*iaload
                  │  │                                                      ; - com.google.re2j.Machine::step@324 (line 310)
                  │  │        0x00007f013d24e59d: mov    0x10(%r12,%rcx,8),%ebx
                  │  │        0x00007f013d24e5a2: mov    0x20(%rsp),%ecx
  0.37%    0.41%  │  │        0x00007f013d24e5a6: cmp    %ebx,%ecx
                  │  │        0x00007f013d24e5a8: je     0x00007f013d24ef57  ;*goto
                  │  │                                                      ; - com.google.re2j.Machine::step@313 (line 307)
           0.01%  │  │    ↗   0x00007f013d24e5ae: mov    %r9,0x50(%rsp)     ;*aload
                  │  │    │                                                 ; - com.google.re2j.Machine::step@399 (line 327)
  0.03%    0.06%  │  │   ↗│   0x00007f013d24e5b3: mov    0x28(%rsp),%r10
           0.00%  │  │   ││   0x00007f013d24e5b8: mov    0x20(%r10),%ebp    ;*getfield pool
                  │  │   ││                                                 ; - com.google.re2j.Machine::step@405 (line 329)
  0.34%    0.46%  │  │   ││   0x00007f013d24e5bc: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007f013d24fa89
           0.01%  │  │   ││   0x00007f013d24e5c1: cmp    $0xf8002f22,%r8d   ;   {metadata(&apos;java/util/ArrayList&apos;)}
                  │  │   ││   0x00007f013d24e5c8: jne    0x00007f013d24f12d
  0.02%    0.07%  │  │   ││   0x00007f013d24e5ce: lea    (%r12,%rbp,8),%rbx  ;*invokeinterface add
                  │  │   ││                                                 ; - com.google.re2j.Machine::step@410 (line 329)
  0.01%    0.01%  │  │   ││   0x00007f013d24e5d2: mov    0x14(%rbx),%r8d    ;*getfield elementData
                  │  │   ││                                                 ; - java.util.ArrayList::ensureCapacityInternal@1 (line 223)
                  │  │   ││                                                 ; - java.util.ArrayList::add@7 (line 458)
                  │  │   ││                                                 ; - com.google.re2j.Machine::step@410 (line 329)
  0.38%    0.46%  │  │   ││   0x00007f013d24e5d6: mov    0x10(%rbx),%ebp    ;*getfield size
                  │  │   ││                                                 ; - java.util.ArrayList::add@2 (line 458)
                  │  │   ││                                                 ; - com.google.re2j.Machine::step@410 (line 329)
  0.00%    0.02%  │  │   ││   0x00007f013d24e5d9: mov    %ebp,%r10d
  0.08%    0.07%  │  │   ││   0x00007f013d24e5dc: inc    %r10d              ;*iadd
                  │  │   ││                                                 ; - java.util.ArrayList::add@6 (line 458)
                  │  │   ││                                                 ; - com.google.re2j.Machine::step@410 (line 329)
  0.01%           │  │   ││   0x00007f013d24e5df: cmp    $0xed9f0db7,%r8d   ;   {oop(a &apos;java/lang/Object&apos;[0] )}
                  │  │   ││   0x00007f013d24e5e6: je     0x00007f013d24ef35  ;*if_acmpne
                  │  │   ││                                                 ; - java.util.ArrayList::ensureCapacityInternal@7 (line 223)
                  │  │   ││                                                 ; - java.util.ArrayList::add@7 (line 458)
                  │  │   ││                                                 ; - com.google.re2j.Machine::step@410 (line 329)
  0.38%    0.36%  │  │   ││   0x00007f013d24e5ec: mov    %r10d,%esi         ;*aload_0
                  │  │   ││                                                 ; - java.util.ArrayList::ensureCapacityInternal@17 (line 227)
                  │  │   ││                                                 ; - java.util.ArrayList::add@7 (line 458)
                  │  │   ││                                                 ; - com.google.re2j.Machine::step@410 (line 329)
           0.02%  │  │   ││   0x00007f013d24e5ef: mov    0xc(%rbx),%r9d     ;*getfield modCount
                  │  │   ││                                                 ; - java.util.ArrayList::ensureExplicitCapacity@2 (line 231)
                  │  │   ││                                                 ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                  │  │   ││                                                 ; - java.util.ArrayList::add@7 (line 458)
                  │  │   ││                                                 ; - com.google.re2j.Machine::step@410 (line 329)
  0.04%    0.06%  │  │   ││   0x00007f013d24e5f3: inc    %r9d
  0.00%           │  │   ││   0x00007f013d24e5f6: mov    %r9d,0xc(%rbx)     ;*putfield modCount
                  │  │   ││                                                 ; - java.util.ArrayList::ensureExplicitCapacity@7 (line 231)
                  │  │   ││                                                 ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                  │  │   ││                                                 ; - java.util.ArrayList::add@7 (line 458)
                  │  │   ││                                                 ; - com.google.re2j.Machine::step@410 (line 329)
  0.33%    0.28%  │  │   ││   0x00007f013d24e5fa: mov    0xc(%r12,%r8,8),%edi  ;*arraylength
                  │  │   ││                                                 ; - java.util.ArrayList::ensureExplicitCapacity@15 (line 234)
                  │  │   ││                                                 ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                  │  │   ││                                                 ; - java.util.ArrayList::add@7 (line 458)
                  │  │   ││                                                 ; - com.google.re2j.Machine::step@410 (line 329)
                  │  │   ││                                                 ; implicit exception: dispatches to 0x00007f013d24fa99
  0.01%    0.01%  │  │   ││   0x00007f013d24e5ff: mov    %esi,%edx
  0.04%    0.09%  │  │   ││   0x00007f013d24e601: sub    %edi,%edx
           0.01%  │  │   ││   0x00007f013d24e603: test   %edx,%edx
                  │  │   ││   0x00007f013d24e605: jg     0x00007f013d24ec88  ;*ifle
                  │  │   ││                                                 ; - java.util.ArrayList::ensureExplicitCapacity@17 (line 234)
                  │  │   ││                                                 ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                  │  │   ││                                                 ; - java.util.ArrayList::add@7 (line 458)
                  │  │   ││                                                 ; - com.google.re2j.Machine::step@410 (line 329)
  0.37%    0.27%  │  │   ││   0x00007f013d24e60b: shl    $0x3,%r8           ;*return
                  │  │   ││                                                 ; - java.util.ArrayList::ensureExplicitCapacity@25 (line 236)
                  │  │   ││                                                 ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                  │  │   ││                                                 ; - java.util.ArrayList::add@7 (line 458)
                  │  │   ││                                                 ; - com.google.re2j.Machine::step@410 (line 329)
  0.00%    0.02%  │  │   ││   0x00007f013d24e60f: mov    %r10d,0x10(%rbx)   ;*putfield size
                  │  │   ││                                                 ; - java.util.ArrayList::add@22 (line 459)
                  │  │   ││                                                 ; - com.google.re2j.Machine::step@410 (line 329)
  0.04%    0.08%  │  │   ││   0x00007f013d24e613: mov    0xc(%r8),%r9d      ; implicit exception: dispatches to 0x00007f013d24faa9
  0.00%           │  │   ││   0x00007f013d24e617: cmp    %r9d,%ebp
                  │  │   ││   0x00007f013d24e61a: jae    0x00007f013d24f0e9
  0.34%    0.39%  │  │   ││   0x00007f013d24e620: mov    0x8(%r8),%r9d
  0.02%    0.00%  │  │   ││   0x00007f013d24e624: cmp    $0xf80022f5,%r9d   ;   {metadata(&apos;java/lang/Object&apos;[])}
                  │  │   ││   0x00007f013d24e62b: jne    0x00007f013d24f169
  0.07%    0.05%  │  │   ││   0x00007f013d24e631: lea    0x10(%r8,%rbp,4),%r10
  0.01%    0.01%  │  │   ││   0x00007f013d24e636: mov    0x50(%rsp),%r11
  0.34%    0.28%  │  │   ││   0x00007f013d24e63b: mov    %r11,%r8
  0.00%    0.02%  │  │   ││   0x00007f013d24e63e: shr    $0x3,%r8
  0.06%    0.04%  │  │   ││   0x00007f013d24e642: mov    %r8d,(%r10)
  0.01%    0.00%  │  │   ││   0x00007f013d24e645: shr    $0x9,%r10
  0.48%    0.27%  │  │   ││   0x00007f013d24e649: movabs $0x7f014e012000,%r11
  0.01%    0.01%  │  │   ││   0x00007f013d24e653: mov    %r12b,(%r11,%r10,1)  ;*aastore
                  │  │   ││                                                 ; - java.util.ArrayList::add@26 (line 459)
                  │  │   ││                                                 ; - com.google.re2j.Machine::step@410 (line 329)
  0.04%    0.04%  │  │   ││   0x00007f013d24e657: xor    %r10d,%r10d        ; OopMap{[8]=Oop [24]=Oop [40]=Oop off=314}
                  │  │   ││                                                 ;*goto
                  │  │   ││                                                 ; - com.google.re2j.Machine::step@419 (line 264)
  0.12%    0.21%  │ ↗│  ↗││   0x00007f013d24e65a: test   %eax,0x183bb9a0(%rip)        # 0x00007f015560a000
                  │ ││  │││                                                 ;*goto
                  │ ││  │││                                                 ; - com.google.re2j.Machine::step@419 (line 264)
                  │ ││  │││                                                 ;   {poll}
  0.62%    0.47%  │ ││  │││   0x00007f013d24e660: mov    0x8(%rsp),%r10
  0.17%    0.25%  │ ││  │││   0x00007f013d24e665: mov    0xc(%r10),%r10d
  0.24%    0.21%  │ ││  │││   0x00007f013d24e669: cmp    %r10d,%r14d
                  │ ││  │││   0x00007f013d24e66c: jge    0x00007f013d24e934
  0.05%    0.20%  │ ││  │││   0x00007f013d24e672: mov    %ecx,0x20(%rsp)
  0.43%    0.14%  │ ││  │││   0x00007f013d24e676: mov    %r14d,%r11d        ;*aload_1
                  │ ││  │││                                                 ; - com.google.re2j.Machine::step@21 (line 265)
  0.17%    0.20%  ↘ ││  │││   0x00007f013d24e679: mov    0x8(%rsp),%r10
  0.33%    0.27%    ││  │││   0x00007f013d24e67e: mov    0x10(%r10),%r8d    ;*getfield dense
                    ││  │││                                                 ; - com.google.re2j.Machine::step@22 (line 265)
  0.21%    0.31%    ││  │││   0x00007f013d24e682: mov    0xc(%r12,%r8,8),%r10d  ; implicit exception: dispatches to 0x00007f013d24fa45
  0.51%    0.57%    ││  │││   0x00007f013d24e687: cmp    %r10d,%r11d
                    ││  │││   0x00007f013d24e68a: jae    0x00007f013d24efc6
  0.19%    0.25%    ││  │││   0x00007f013d24e690: lea    (%r12,%r8,8),%r10
  0.30%    0.43%    ││  │││   0x00007f013d24e694: mov    0x10(%r10,%r11,4),%r9d  ;*aaload
                    ││  │││                                                 ; - com.google.re2j.Machine::step@27 (line 265)
  0.13%    0.12%    ││  │││   0x00007f013d24e699: mov    0x10(%r12,%r9,8),%r8d  ;*getfield thread
                    ││  │││                                                 ; - com.google.re2j.Machine::step@40 (line 269)
                    ││  │││                                                 ; implicit exception: dispatches to 0x00007f013d24fac9
  0.48%    0.69%    ││  │││   0x00007f013d24e69e: mov    %r11d,%r14d
  0.22%    0.21%    ││  │││   0x00007f013d24e6a1: inc    %r14d              ;*iadd
                    ││  │││                                                 ; - com.google.re2j.Machine::step@241 (line 293)
  0.32%    0.38%    ││  │││   0x00007f013d24e6a4: test   %r8d,%r8d
                   ╭││  │││   0x00007f013d24e6a7: jne    0x00007f013d24e6b4  ;*ifnonnull
                   │││  │││                                                 ; - com.google.re2j.Machine::step@47 (line 270)
  0.04%    0.04%   │││  │││   0x00007f013d24e6a9: mov    0x24(%rsp),%r10d
  0.18%    0.30%   │││  │││   0x00007f013d24e6ae: mov    0x20(%rsp),%ecx
  0.15%    0.16%   │╰│  │││   0x00007f013d24e6b2: jmp    0x00007f013d24e65a
  0.12%    0.15%   ↘ │  │││   0x00007f013d24e6b4: mov    0x24(%rsp),%r10d
  0.29%    0.17%     │  │││   0x00007f013d24e6b9: test   %r10d,%r10d
                     │  │││   0x00007f013d24e6bc: jne    0x00007f013d24f379  ;*ifeq
                     │  │││                                                 ; - com.google.re2j.Machine::step@55 (line 273)
  0.01%    0.04%     │  │││   0x00007f013d24e6c2: mov    0x10(%r12,%r8,8),%r10d  ;*getfield inst
                     │  │││                                                 ; - com.google.re2j.Machine::step@107 (line 278)
  0.26%    0.34%     │  │││   0x00007f013d24e6c7: mov    0x14(%r12,%r10,8),%r9d  ;*getfield op
                     │  │││                                                 ; - com.google.re2j.Machine::step@120 (line 280)
                     │  │││                                                 ; implicit exception: dispatches to 0x00007f013d24fa69
  0.89%    1.31%     │  │││   0x00007f013d24e6cc: mov    0xc(%r12,%r9,8),%ebp  ;*getfield ordinal
                     │  │││                                                 ; - java.lang.Enum::ordinal@1 (line 103)
                     │  │││                                                 ; - com.google.re2j.Machine::step@123 (line 280)
                     │  │││                                                 ; implicit exception: dispatches to 0x00007f013d24fa79
  1.64%    1.63%     │  │││   0x00007f013d24e6d1: cmp    $0xb,%ebp
                     │  │││   0x00007f013d24e6d4: jae    0x00007f013d24f0a5
  0.36%    0.55%     │  │││   0x00007f013d24e6da: movabs $0x76dd58e20,%r9   ;   {oop([I)}
  0.08%    0.07%     │  │││   0x00007f013d24e6e4: mov    0x10(%r9,%rbp,4),%edx  ;*iaload
                     │  │││                                                 ; - com.google.re2j.Machine::step@126 (line 280)
  2.25%    2.72%     │  │││   0x00007f013d24e6e9: mov    0x18(%r12,%r10,8),%ecx  ;*getfield runes
                     │  │││                                                 ; - com.google.re2j.Machine::step@320 (line 310)
  0.00%    0.01%     │  │││   0x00007f013d24e6ee: mov    0xc(%r12,%r8,8),%edi  ;*getfield cap
                     │  │││                                                 ; - com.google.re2j.Machine::step@176 (line 287)
  0.01%              │  │││   0x00007f013d24e6f3: lea    (%r12,%r8,8),%r9   ;*getfield thread
                     │  │││                                                 ; - com.google.re2j.Machine::step@40 (line 269)
  0.02%    0.02%     │  │││   0x00007f013d24e6f7: cmp    $0x3,%edx
                     ╰  │││   0x00007f013d24e6fa: je     0x00007f013d24e590
  0.30%    0.44%        │││   0x00007f013d24e700: cmp    $0x3,%edx
                        │││   0x00007f013d24e703: jle    0x00007f013d24e7b8
  0.05%    0.05%        │││   0x00007f013d24e709: cmp    $0x5,%edx
                      ╭ │││   0x00007f013d24e70c: je     0x00007f013d24e793
  0.07%    0.12%      │ │││   0x00007f013d24e712: cmp    $0x5,%edx
                      │ │││   0x00007f013d24e715: jg     0x00007f013d24f461  ;*tableswitch
                      │ │││                                                 ; - com.google.re2j.Machine::step@127 (line 280)
  0.10%    0.11%      │ │││   0x00007f013d24e71b: mov    %r11d,0x94(%rsp)
  0.08%    0.06%      │ │││   0x00007f013d24e723: mov    %r14d,0x9c(%rsp)
           0.00%      │ │││   0x00007f013d24e72b: mov    %r9,%r13           ;*ifeq
                      │ │││                                                 ; - com.google.re2j.Machine::step@373 (line 324)
  0.05%    0.01%      │ │││↗  0x00007f013d24e72e: mov    0xc(%r12,%r10,8),%ecx  ;*getfield out
                      │ ││││                                                ; - com.google.re2j.Machine::step@380 (line 325)
  0.07%    0.10%      │ ││││  0x00007f013d24e733: mov    %rdi,%r9
  0.07%    0.03%      │ ││││  0x00007f013d24e736: shl    $0x3,%r9           ;*getfield cap
                      │ ││││                                                ; - com.google.re2j.Machine::step@176 (line 287)
                      │ ││││  0x00007f013d24e73a: mov    0x28(%rsp),%rsi
  0.03%    0.01%      │ ││││  0x00007f013d24e73f: mov    0x18(%rsp),%rdx
  0.07%    0.05%      │ ││││  0x00007f013d24e744: mov    0x14(%rsp),%r8d
  0.04%    0.01%      │ ││││  0x00007f013d24e749: mov    0x90(%rsp),%edi
  0.01%               │ ││││  0x00007f013d24e750: mov    %r13,(%rsp)
  0.03%    0.05%      │ ││││  0x00007f013d24e754: data16 xchg %ax,%ax
  0.05%    0.08%      │ ││││  0x00007f013d24e757: callq  0x00007f013d046020  ; OopMap{[8]=Oop [24]=Oop [40]=Oop off=572}
                      │ ││││                                                ;*invokespecial add
                      │ ││││                                                ; - com.google.re2j.Machine::step@394 (line 325)
                      │ ││││                                                ;   {optimized virtual_call}
                      │ ││││  0x00007f013d24e75c: test   %rax,%rax
                      │╭││││  0x00007f013d24e75f: jne    0x00007f013d24e775  ;*ifnull
                      ││││││                                                ; - com.google.re2j.Machine::step@401 (line 327)
                      ││││││  0x00007f013d24e761: xor    %r10d,%r10d
  0.02%               ││││││  0x00007f013d24e764: mov    0x20(%rsp),%ecx
  0.15%    0.27%      ││││││  0x00007f013d24e768: mov    0x9c(%rsp),%r14d
                      ││╰│││  0x00007f013d24e770: jmpq   0x00007f013d24e65a
  0.01%               │↘ │││  0x00007f013d24e775: mov    %rax,0x50(%rsp)
                      │  │││  0x00007f013d24e77a: mov    0x20(%rsp),%ecx
                      │  │││  0x00007f013d24e77e: mov    0x94(%rsp),%r11d
  0.00%               │  │││  0x00007f013d24e786: mov    0x9c(%rsp),%r14d
                      │  ╰││  0x00007f013d24e78e: jmpq   0x00007f013d24e5b3
                      ↘   ││  0x00007f013d24e793: mov    0x20(%rsp),%ecx
                          ││  0x00007f013d24e797: cmp    $0xa,%ecx
                          ╰│  0x00007f013d24e79a: je     0x00007f013d24e5ae  ;*if_icmpeq
                           │                                                ; - com.google.re2j.Machine::step@348 (line 318)
                           │  0x00007f013d24e7a0: mov    %r11d,0x94(%rsp)
                           │  0x00007f013d24e7a8: mov    %r14d,0x9c(%rsp)
                           │  0x00007f013d24e7b0: mov    %r9,%r13
                           ╰  0x00007f013d24e7b3: jmpq   0x00007f013d24e72e
  0.07%    0.11%              0x00007f013d24e7b8: lea    (%r12,%r10,8),%rbx  ;*getfield inst
....................................................................................................
 17.00%   19.22%  <total for region 2>

....[Hottest Regions]...............................................................................
 40.56%   39.53%         C2, level 4  com.google.re2j.Machine::add, version 545 (416 bytes) 
 17.00%   19.22%         C2, level 4  com.google.re2j.Machine::step, version 552 (582 bytes) 
  7.62%    4.95%         C2, level 4  com.google.re2j.Machine::add, version 545 (253 bytes) 
  6.70%    4.15%         C2, level 4  com.google.re2j.Machine::add, version 545 (118 bytes) 
  6.63%   10.14%         C2, level 4  com.google.re2j.Machine::step, version 552 (315 bytes) 
  6.56%    7.84%         C2, level 4  com.google.re2j.Machine::step, version 552 (218 bytes) 
  5.45%    6.99%         C2, level 4  com.google.re2j.Machine::match, version 600 (787 bytes) 
  2.84%    1.48%        runtime stub  StubRoutines::jint_disjoint_arraycopy (62 bytes) 
  1.27%    1.66%         C2, level 4  com.google.re2j.Machine::step, version 552 (151 bytes) 
  0.91%    0.65%         C2, level 4  com.google.re2j.Machine::add, version 545 (40 bytes) 
  0.77%    0.77%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.47%    0.00%        runtime stub  StubRoutines::jint_disjoint_arraycopy (0 bytes) 
  0.33%    0.08%         C2, level 4  com.google.re2j.Machine::init, version 604 (204 bytes) 
  0.19%    0.20%         C2, level 4  com.google.re2j.Machine::step, version 552 (16 bytes) 
  0.10%    0.00%   [kernel.kallsyms]  [unknown] (5 bytes) 
  0.10%    0.17%         C2, level 4  com.google.re2j.Machine::match, version 600 (125 bytes) 
  0.07%    0.05%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 690 (59 bytes) 
  0.06%    0.08%           libjvm.so  RelocIterator::initialize (141 bytes) 
  0.05%                  C2, level 4  com.google.re2j.Machine::init, version 604 (39 bytes) 
  0.05%    0.03%         C2, level 4  com.google.re2j.Matcher::find, version 621 (5 bytes) 
  2.25%    1.98%  <...other 443 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 55.81%   49.34%         C2, level 4  com.google.re2j.Machine::add, version 545 
 31.68%   39.11%         C2, level 4  com.google.re2j.Machine::step, version 552 
  5.73%    7.28%         C2, level 4  com.google.re2j.Machine::match, version 600 
  3.31%    1.49%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
  1.50%    1.38%   [kernel.kallsyms]  [unknown] 
  0.49%    0.13%         C2, level 4  com.google.re2j.Machine::init, version 604 
  0.24%    0.13%         C2, level 4  com.google.re2j.Matcher::find, version 621 
  0.13%    0.07%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 690 
  0.07%    0.08%           libjvm.so  RelocIterator::initialize 
  0.06%    0.02%         C2, level 4  java.util.Collections::shuffle, version 627 
  0.04%    0.01%           libjvm.so  GenericTaskQueueSet<OverflowTaskQueue<StarTask, (MemoryType)1, 131072u>, (MemoryType)1>::steal_best_of_2 
  0.04%    0.03%      hsdis-amd64.so  [unknown] 
  0.03%    0.03%           libjvm.so  PSPromotionManager::copy_to_survivor_space<false> 
  0.02%    0.03%           libjvm.so  xmlTextStream::write 
  0.02%    0.02%           libjvm.so  SpinPause 
  0.02%    0.06%        libc-2.26.so  vfprintf 
  0.02%    0.02%           libjvm.so  PSPromotionManager::drain_stacks_depth 
  0.02%    0.04%        libc-2.26.so  __strlen_avx2 
  0.02%    0.04%        libc-2.26.so  _IO_fwrite 
  0.02%    0.00%           libjvm.so  defaultStream::write 
  0.68%    0.40%  <...other 94 warm methods...>
....................................................................................................
100.00%   99.73%  <totals>

....[Distribution by Source]........................................................................
 94.18%   96.09%         C2, level 4
  3.32%    1.49%        runtime stub
  1.50%    1.38%   [kernel.kallsyms]
  0.63%    0.64%           libjvm.so
  0.19%    0.27%        libc-2.26.so
  0.07%    0.08%  libpthread-2.26.so
  0.05%    0.03%      hsdis-amd64.so
  0.03%    0.01%         interpreter
  0.01%    0.01%              [vdso]
  0.01%                  C1, level 3
  0.00%                    libzip.so
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                     Mode  Cnt     Score    Error  Units
Re2jFindRegex.testExp1       thrpt   20  6092.214 ± 47.241  ops/s
Re2jFindRegex.testExp1:·asm  thrpt            NaN             ---
