# JMH version: 1.19
# VM version: JDK 1.8.0_131, VM 25.131-b11
# VM invoker: /usr/lib/jvm/java-8-oracle/jre/bin/java
# VM options: <none>
# Warmup: 20 iterations, 1 s each
# Measurement: 20 iterations, 1 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Throughput, ops/time
# Benchmark: com.github.arnaudroger.re2j.Re2jFindRegex.testCombine

# Run progress: 0.00% complete, ETA 00:00:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1053.993 ops/s
# Warmup Iteration   2: 1835.132 ops/s
# Warmup Iteration   3: 1901.936 ops/s
# Warmup Iteration   4: 1906.888 ops/s
# Warmup Iteration   5: 1908.048 ops/s
# Warmup Iteration   6: 1872.779 ops/s
# Warmup Iteration   7: 1894.168 ops/s
# Warmup Iteration   8: 1884.549 ops/s
# Warmup Iteration   9: 1885.450 ops/s
# Warmup Iteration  10: 1889.189 ops/s
# Warmup Iteration  11: 1866.365 ops/s
# Warmup Iteration  12: 1889.017 ops/s
# Warmup Iteration  13: 1920.951 ops/s
# Warmup Iteration  14: 1928.322 ops/s
# Warmup Iteration  15: 1923.039 ops/s
# Warmup Iteration  16: 1892.863 ops/s
# Warmup Iteration  17: 1898.737 ops/s
# Warmup Iteration  18: 1899.356 ops/s
# Warmup Iteration  19: 1898.204 ops/s
# Warmup Iteration  20: 1898.687 ops/s
Iteration   1: 1887.503 ops/s
Iteration   2: 1890.756 ops/s
Iteration   3: 1897.329 ops/s
Iteration   4: 1883.155 ops/s
Iteration   5: 1890.634 ops/s
Iteration   6: 1876.013 ops/s
Iteration   7: 1886.855 ops/s
Iteration   8: 1871.239 ops/s
Iteration   9: 1891.184 ops/s
Iteration  10: 1896.459 ops/s
Iteration  11: 1878.076 ops/s
Iteration  12: 1904.831 ops/s
Iteration  13: 1922.670 ops/s
Iteration  14: 1902.210 ops/s
Iteration  15: 1907.242 ops/s
Iteration  16: 1888.709 ops/s
Iteration  17: 1899.430 ops/s
Iteration  18: 1913.691 ops/s
Iteration  19: 1915.679 ops/s
Iteration  20: 1919.547 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  1896.161 ±(99.9%) 12.614 ops/s [Average]
  (min, avg, max) = (1871.239, 1896.161, 1922.670), stdev = 14.527
  CI (99.9%): [1883.546, 1908.775] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine:·asm":
PrintAssembly processed: 213945 total address lines.
Perf output processed (skipped 23.151 seconds):
 Column 1: cycles (20762 events)
 Column 2: instructions (20759 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 554 (463 bytes) 

                       # parm4:    rdi       = int
                       # parm5:    [sp+0x70]   = &apos;com/google/re2j/Machine$Thread&apos;  (sp of caller)
                       0x00007fbbed249640: mov    0x8(%rsi),%r10d    ;   {no_reloc}
                       0x00007fbbed249644: shl    $0x3,%r10
                       0x00007fbbed249648: cmp    %r10,%rax
                       0x00007fbbed24964b: jne    0x00007fbbed045e20  ;   {runtime_call}
                       0x00007fbbed249651: data16 xchg %ax,%ax
                       0x00007fbbed249654: nopl   0x0(%rax,%rax,1)
                       0x00007fbbed24965c: data16 data16 xchg %ax,%ax
                     [Verified Entry Point]
  0.40%    0.49%       0x00007fbbed249660: mov    %eax,-0x14000(%rsp)
  0.42%    0.29%       0x00007fbbed249667: push   %rbp
  0.26%    0.26%       0x00007fbbed249668: sub    $0x60,%rsp         ;*synchronization entry
                                                                     ; - com.google.re2j.Machine::add@-1 (line 341)
  0.14%    0.23%       0x00007fbbed24966c: mov    %edi,0x28(%rsp)
  0.43%    0.29%       0x00007fbbed249670: mov    %r9,0x20(%rsp)
  0.25%    0.21%       0x00007fbbed249675: mov    %r8d,0x1c(%rsp)
  0.17%    0.23%       0x00007fbbed24967a: mov    %rsi,0x8(%rsp)
  0.02%    0.02%       0x00007fbbed24967f: mov    %ecx,0x40(%rsp)
  0.35%    0.21%       0x00007fbbed249683: test   %ecx,%ecx
                       0x00007fbbed249685: je     0x00007fbbed249c7d  ;*ifne
                                                                     ; - com.google.re2j.Machine::add@1 (line 341)
  0.19%    0.26%       0x00007fbbed24968b: mov    %rdx,0x48(%rsp)
  0.24%    0.24%       0x00007fbbed249690: mov    0x14(%rdx),%r9d    ;*getfield sparse
                                                                     ; - com.google.re2j.Machine$Queue::contains@1 (line 48)
                                                                     ; - com.google.re2j.Machine::add@9 (line 344)
                                                                     ; implicit exception: dispatches to 0x00007fbbed249e7d
  0.01%    0.04%       0x00007fbbed249694: mov    0xc(%r12,%r9,8),%r10d  ; implicit exception: dispatches to 0x00007fbbed249e91
  0.37%    0.26%       0x00007fbbed249699: cmp    %r10d,%ecx
                       0x00007fbbed24969c: jae    0x00007fbbed249afe  ;*iaload
                                                                     ; - com.google.re2j.Machine$Queue::contains@5 (line 48)
                                                                     ; - com.google.re2j.Machine::add@9 (line 344)
  0.22%    0.26%       0x00007fbbed2496a2: mov    0x10(%rdx),%ecx    ;*getfield dense
                                                                     ; - com.google.re2j.Machine$Queue::contains@18 (line 52)
                                                                     ; - com.google.re2j.Machine::add@9 (line 344)
  0.14%    0.13%       0x00007fbbed2496a5: mov    0xc(%rdx),%r8d     ;*getfield size
                                                                     ; - com.google.re2j.Machine$Queue::contains@9 (line 49)
                                                                     ; - com.google.re2j.Machine::add@9 (line 344)
  0.00%    0.03%       0x00007fbbed2496a9: lea    (%r12,%r9,8),%rdi
  0.38%    0.37%       0x00007fbbed2496ad: mov    0x40(%rsp),%r11d
  0.47%    0.22%       0x00007fbbed2496b2: mov    0x10(%rdi,%r11,4),%ebp  ;*iaload
                                                                     ; - com.google.re2j.Machine$Queue::contains@5 (line 48)
                                                                     ; - com.google.re2j.Machine::add@9 (line 344)
  0.25%    0.24%       0x00007fbbed2496b7: cmp    %r8d,%ebp
                  ╭    0x00007fbbed2496ba: jl     0x00007fbbed24980f  ;*iastore
                  │                                                  ; - com.google.re2j.Machine$Queue::add@18 (line 60)
                  │                                                  ; - com.google.re2j.Machine::add@20 (line 347)
  0.12%    0.10%  │ ↗  0x00007fbbed2496c0: mov    %r8d,%r11d
  0.34%    0.19%  │ │  0x00007fbbed2496c3: inc    %r11d
  0.26%    0.07%  │ │  0x00007fbbed2496c6: mov    %r11d,0xc(%rdx)    ;*putfield size
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@8 (line 59)
                  │ │                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.14%    0.24%  │ │  0x00007fbbed2496ca: mov    0x40(%rsp),%ebx
  0.13%    0.15%  │ │  0x00007fbbed2496ce: cmp    %r10d,%ebx
                  │ │  0x00007fbbed2496d1: jae    0x00007fbbed249b3d
  0.39%    0.12%  │ │  0x00007fbbed2496d7: mov    %r8d,0x10(%rdi,%rbx,4)  ;*iastore
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@18 (line 60)
                  │ │                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.30%    0.15%  │ │  0x00007fbbed2496dc: mov    0xc(%r12,%rcx,8),%r10d  ; implicit exception: dispatches to 0x00007fbbed249ea5
  0.15%    0.20%  │ │  0x00007fbbed2496e1: cmp    %r10d,%r8d
                  │ │  0x00007fbbed2496e4: jae    0x00007fbbed249b89  ;*aaload
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@24 (line 61)
                  │ │                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.07%    0.04%  │ │  0x00007fbbed2496ea: lea    (%r12,%rcx,8),%r10  ;*getfield dense
                  │ │                                                ; - com.google.re2j.Machine$Queue::contains@18 (line 52)
                  │ │                                                ; - com.google.re2j.Machine::add@9 (line 344)
  0.36%    0.11%  │ │  0x00007fbbed2496ee: mov    %r10,0x38(%rsp)
  0.20%    0.30%  │ │  0x00007fbbed2496f3: lea    0x10(%r10,%r8,4),%rbp
  0.13%    0.22%  │ │  0x00007fbbed2496f8: mov    0x0(%rbp),%r11d    ;*aaload
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@24 (line 61)
                  │ │                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.10%    0.05%  │ │  0x00007fbbed2496fc: test   %r11d,%r11d
                  │╭│  0x00007fbbed2496ff: je     0x00007fbbed249842  ;*ifnonnull
                  │││                                                ; - com.google.re2j.Machine$Queue::add@27 (line 62)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.35%    0.28%  │││  0x00007fbbed249705: lea    (%r12,%r11,8),%rbx  ;*aload_3
                  │││                                                ; - com.google.re2j.Machine$Queue::add@45 (line 65)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.24%    0.31%  │││  0x00007fbbed249709: mov    0x40(%rsp),%r11d
  0.13%    0.19%  │││  0x00007fbbed24970e: mov    %r11d,0xc(%rbx)    ;*putfield pc
                  │││                                                ; - com.google.re2j.Machine$Queue::add@52 (line 66)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.20%    0.11%  │││  0x00007fbbed249712: mov    0x8(%rsp),%r10
  0.28%    0.17%  │││  0x00007fbbed249717: mov    0x14(%r10),%r10d   ;*getfield prog
                  │││                                                ; - com.google.re2j.Machine::add@26 (line 348)
  0.30%    0.32%  │││  0x00007fbbed24971b: mov    %r12d,0x10(%rbx)   ;*putfield thread
                  │││                                                ; - com.google.re2j.Machine$Queue::add@47 (line 65)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.16%    0.18%  │││  0x00007fbbed24971f: mov    0x14(%r12,%r10,8),%ebp  ;*getfield inst
                  │││                                                ; - com.google.re2j.Prog::getInst@1 (line 29)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 348)
                  │││                                                ; implicit exception: dispatches to 0x00007fbbed249eb9
  0.16%    0.16%  │││  0x00007fbbed249724: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007fbbed249ecd
  0.75%    0.98%  │││  0x00007fbbed249729: cmp    $0xf8002f22,%r11d  ;   {metadata(&apos;java/util/ArrayList&apos;)}
                  │││  0x00007fbbed249730: jne    0x00007fbbed249c55
  0.32%    0.38%  │││  0x00007fbbed249736: lea    (%r12,%rbp,8),%r11  ;*invokeinterface get
                  │││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.13%    0.21%  │││  0x00007fbbed24973a: mov    0x10(%r11),%ebp    ;*getfield size
                  │││                                                ; - java.util.ArrayList::rangeCheck@2 (line 652)
                  │││                                                ; - java.util.ArrayList::get@2 (line 429)
                  │││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.11%    0.07%  │││  0x00007fbbed24973e: mov    0x40(%rsp),%r10d
  0.27%    0.19%  │││  0x00007fbbed249743: cmp    %ebp,%r10d
                  │││  0x00007fbbed249746: jge    0x00007fbbed249ca5  ;*if_icmplt
                  │││                                                ; - java.util.ArrayList::rangeCheck@5 (line 652)
                  │││                                                ; - java.util.ArrayList::get@2 (line 429)
                  │││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.47%    0.53%  │││  0x00007fbbed24974c: mov    0x14(%r11),%ebp    ;*getfield elementData
                  │││                                                ; - java.util.ArrayList::elementData@1 (line 418)
                  │││                                                ; - java.util.ArrayList::get@7 (line 431)
                  │││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.13%    0.11%  │││  0x00007fbbed249750: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007fbbed249ee1
  0.66%    0.66%  │││  0x00007fbbed249755: cmp    %r11d,%r10d
                  │││  0x00007fbbed249758: jae    0x00007fbbed249bcd
  0.55%    0.45%  │││  0x00007fbbed24975e: lea    (%r12,%rbp,8),%r10
  0.13%    0.12%  │││  0x00007fbbed249762: mov    0x40(%rsp),%r11d
  0.11%    0.13%  │││  0x00007fbbed249767: mov    0x10(%r10,%r11,4),%ebp  ;*aaload
                  │││                                                ; - java.util.ArrayList::elementData@5 (line 418)
                  │││                                                ; - java.util.ArrayList::get@7 (line 431)
                  │││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.07%    0.09%  │││  0x00007fbbed24976c: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007fbbed249ef5
  1.10%    1.05%  │││  0x00007fbbed249771: cmp    $0xf8019844,%r10d  ;   {metadata(&apos;com/google/re2j/Inst&apos;)}
                  │││  0x00007fbbed249778: jne    0x00007fbbed249e41
  0.40%    0.36%  │││  0x00007fbbed24977e: lea    (%r12,%rbp,8),%r10  ;*checkcast
                  │││                                                ; - com.google.re2j.Prog::getInst@10 (line 29)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.13%    0.11%  │││  0x00007fbbed249782: mov    %r10,0x38(%rsp)
  0.04%    0.04%  │││  0x00007fbbed249787: mov    0x14(%r10),%r11d   ;*getfield op
                  │││                                                ; - com.google.re2j.Inst::op@4 (line 44)
                  │││                                                ; - com.google.re2j.Machine::add@40 (line 349)
  0.34%    0.09%  │││  0x00007fbbed24978b: mov    0xc(%r12,%r11,8),%ebp  ;*getfield ordinal
                  │││                                                ; - java.lang.Enum::ordinal@1 (line 103)
                  │││                                                ; - com.google.re2j.Inst::op@7 (line 44)
                  │││                                                ; - com.google.re2j.Machine::add@40 (line 349)
                  │││                                                ; implicit exception: dispatches to 0x00007fbbed249f25
  2.04%    1.50%  │││  0x00007fbbed249790: cmp    $0xb,%ebp
                  │││  0x00007fbbed249793: jae    0x00007fbbed249bf5  ;*iaload
                  │││                                                ; - com.google.re2j.Inst::op@10 (line 44)
                  │││                                                ; - com.google.re2j.Machine::add@40 (line 349)
  0.53%    0.38%  │││  0x00007fbbed249799: mov    %r11,%r10
  0.02%    0.01%  │││  0x00007fbbed24979c: shl    $0x3,%r10
  0.23%    0.34%  │││  0x00007fbbed2497a0: movabs $0x76dd36728,%r11  ;   {oop([I)}
  0.09%    0.13%  │││  0x00007fbbed2497aa: mov    0x10(%r11,%rbp,4),%r11d
  2.17%    1.86%  │││  0x00007fbbed2497af: dec    %r11d
  0.56%    0.68%  │││  0x00007fbbed2497b2: movabs $0x76dd29db0,%r8   ;   {oop(a &apos;com/google/re2j/Inst$Op&apos;)}
  0.24%    0.25%  │││  0x00007fbbed2497bc: cmp    $0x3,%r11d
  0.66%    0.61%  │││  0x00007fbbed2497c0: cmovb  %r8,%r10           ;*invokevirtual ordinal
                  │││                                                ; - com.google.re2j.Machine::add@43 (line 349)
  1.31%    1.16%  │││  0x00007fbbed2497c4: mov    0xc(%r10),%ebp     ;*getfield ordinal
                  │││                                                ; - java.lang.Enum::ordinal@1 (line 103)
                  │││                                                ; - com.google.re2j.Machine::add@43 (line 349)
  3.44%    3.18%  │││  0x00007fbbed2497c8: cmp    $0xb,%ebp
                  │││  0x00007fbbed2497cb: jae    0x00007fbbed249c1d
  0.83%    0.53%  │││  0x00007fbbed2497d1: movabs $0x76dd58c38,%r10  ;   {oop([I)}
                  │││  0x00007fbbed2497db: mov    0x10(%r10,%rbp,4),%r10d  ;*iaload
                  │││                                                ; - com.google.re2j.Machine::add@46 (line 349)
  2.88%    2.71%  │││  0x00007fbbed2497e0: mov    %r10d,%r8d
  0.07%    0.09%  │││  0x00007fbbed2497e3: dec    %r8d
  0.79%    0.41%  │││  0x00007fbbed2497e6: cmp    $0xb,%r8d
                  │││  0x00007fbbed2497ea: jae    0x00007fbbed249c45  ;*tableswitch
                  │││                                                ; - com.google.re2j.Machine::add@47 (line 349)
  0.75%    0.42%  │││  0x00007fbbed2497f0: mov    0x38(%rsp),%r11
                  │││  0x00007fbbed2497f5: mov    0xc(%r11),%ecx     ;*getfield out
                  │││                                                ; - com.google.re2j.Machine::add@279 (line 379)
  0.05%    0.08%  │││  0x00007fbbed2497f9: mov    0x10(%r11),%r9d    ;*getfield arg
                  │││                                                ; - com.google.re2j.Machine::add@217 (line 373)
  0.01%    0.01%  │││  0x00007fbbed2497fd: movslq %r10d,%r10
  0.79%    0.39%  │││  0x00007fbbed249800: movabs $0x7fbbed2495e0,%r11  ;   {section_word}
                  │││  0x00007fbbed24980a: jmpq   *-0x8(%r11,%r10,8)  ;*tableswitch
                  │││                                                ; - com.google.re2j.Machine::add@47 (line 349)
           0.01%  ↘││  0x00007fbbed24980f: mov    0xc(%r12,%rcx,8),%r11d  ; implicit exception: dispatches to 0x00007fbbed249fad
  0.03%    0.00%   ││  0x00007fbbed249814: cmp    %r11d,%ebp
                   ││  0x00007fbbed249817: jae    0x00007fbbed249e1c
  0.02%    0.00%   ││  0x00007fbbed24981d: lea    (%r12,%rcx,8),%r11
  0.03%    0.05%   ││  0x00007fbbed249821: mov    0x10(%r11,%rbp,4),%ebp  ;*aaload
                   ││                                                ; - com.google.re2j.Machine$Queue::contains@22 (line 52)
                   ││                                                ; - com.google.re2j.Machine::add@9 (line 344)
  0.02%    0.04%   ││  0x00007fbbed249826: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007fbbed249fbd
  0.07%    0.10%   ││  0x00007fbbed24982b: mov    0x40(%rsp),%ebx
  0.01%    0.01%   ││  0x00007fbbed24982f: cmp    %ebx,%r11d
                   │╰  0x00007fbbed249832: jne    0x00007fbbed2496c0
                   │   0x00007fbbed249838: mov    0x70(%rsp),%rax
                   │   0x00007fbbed24983d: jmpq   0x00007fbbed249acc
                   ↘   0x00007fbbed249842: mov    0x60(%r15),%rbx
                       0x00007fbbed249846: mov    %rbx,%r10
                       0x00007fbbed249849: add    $0x18,%r10
                       0x00007fbbed24984d: cmp    0x70(%r15),%r10
                       0x00007fbbed249851: jae    0x00007fbbed249de9
                       0x00007fbbed249857: mov    %r10,0x60(%r15)
                       0x00007fbbed24985b: prefetchnta 0xc0(%r10)
....................................................................................................
 32.62%   28.51%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 564 (451 bytes) 

                        # parm6:    [sp+0x98]   = int
                        # parm7:    [sp+0xa0]   = boolean
                        0x00007fbbed255c80: mov    0x8(%rsi),%r10d
                        0x00007fbbed255c84: shl    $0x3,%r10
                        0x00007fbbed255c88: cmp    %r10,%rax
                        0x00007fbbed255c8b: jne    0x00007fbbed045e20  ;   {runtime_call}
                        0x00007fbbed255c91: data16 xchg %ax,%ax
                        0x00007fbbed255c94: nopl   0x0(%rax,%rax,1)
                        0x00007fbbed255c9c: data16 data16 xchg %ax,%ax
                      [Verified Entry Point]
  0.03%    0.05%        0x00007fbbed255ca0: mov    %eax,-0x14000(%rsp)
  0.03%    0.04%        0x00007fbbed255ca7: push   %rbp
  0.07%    0.07%        0x00007fbbed255ca8: sub    $0x80,%rsp         ;*synchronization entry
                                                                      ; - com.google.re2j.Machine::step@-1 (line 263)
  0.02%    0.01%        0x00007fbbed255caf: mov    %edi,0x20(%rsp)
  0.02%    0.05%        0x00007fbbed255cb3: mov    %r9d,0x14(%rsp)
  0.03%    0.05%        0x00007fbbed255cb8: mov    %rcx,0x18(%rsp)
  0.01%    0.01%        0x00007fbbed255cbd: mov    %r8d,0x10(%rsp)
           0.02%        0x00007fbbed255cc2: mov    %rdx,0x8(%rsp)
  0.06%    0.04%        0x00007fbbed255cc7: mov    %rsi,0x28(%rsp)
  0.05%    0.06%        0x00007fbbed255ccc: mov    0x10(%rsi),%r10d   ;*getfield re2
                                                                      ; - com.google.re2j.Machine::step@1 (line 263)
  0.03%    0.00%        0x00007fbbed255cd0: movzbl 0x18(%r12,%r10,8),%r11d  ;*getfield longest
                                                                      ; - com.google.re2j.Machine::step@4 (line 263)
                                                                      ; implicit exception: dispatches to 0x00007fbbed2572f9
  0.02%    0.02%        0x00007fbbed255cd6: mov    %r11d,0x24(%rsp)
  0.05%    0.03%        0x00007fbbed255cdb: mov    0xc(%rdx),%r11d    ; implicit exception: dispatches to 0x00007fbbed257309
  0.04%    0.05%        0x00007fbbed255cdf: test   %r11d,%r11d
                        0x00007fbbed255ce2: jle    0x00007fbbed256095  ;*if_icmpge
                                                                      ; - com.google.re2j.Machine::step@18 (line 264)
           0.01%        0x00007fbbed255ce8: xor    %r10d,%r10d
           0.00%  ╭     0x00007fbbed255ceb: jmpq   0x00007fbbed255dde  ;*if_icmpge
                  │                                                   ; - com.google.re2j.Machine::step@250 (line 293)
                  │     0x00007fbbed255cf0: mov    0x8(%rsp),%r11
                  │     0x00007fbbed255cf5: mov    %r12d,0xc(%r11)    ;*putfield size
                  │                                                   ; - com.google.re2j.Machine::step@293 (line 300)
                  │     0x00007fbbed255cf9: mov    0x28(%rsp),%r11
                  │     0x00007fbbed255cfe: movb   $0x1,0xc(%r11)     ;*putfield matched
                  │                                                   ; - com.google.re2j.Machine::step@298 (line 302)
                  │     0x00007fbbed255d03: mov    0x20(%rsp),%ecx    ;*goto
                  │                                                   ; - com.google.re2j.Machine::step@313 (line 307)
  0.01%    0.04%  │  ↗  0x00007fbbed255d07: mov    %r9,0x50(%rsp)     ;*aload
                  │  │                                                ; - com.google.re2j.Machine::step@399 (line 327)
  0.04%    0.05%  │  │  0x00007fbbed255d0c: mov    0x28(%rsp),%r11
  0.05%    0.07%  │  │  0x00007fbbed255d11: mov    0x20(%r11),%ebp    ;*getfield pool
                  │  │                                                ; - com.google.re2j.Machine::step@405 (line 329)
  0.33%    0.37%  │  │  0x00007fbbed255d15: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007fbbed257245
  0.08%    0.03%  │  │  0x00007fbbed255d1a: cmp    $0xf8002f22,%r8d   ;   {metadata(&apos;java/util/ArrayList&apos;)}
                  │  │  0x00007fbbed255d21: jne    0x00007fbbed256905
  0.06%    0.03%  │  │  0x00007fbbed255d27: lea    (%r12,%rbp,8),%r8  ;*invokeinterface add
                  │  │                                                ; - com.google.re2j.Machine::step@410 (line 329)
  0.04%    0.06%  │  │  0x00007fbbed255d2b: mov    0x14(%r8),%r9d     ;*getfield elementData
                  │  │                                                ; - java.util.ArrayList::ensureCapacityInternal@1 (line 223)
                  │  │                                                ; - java.util.ArrayList::add@7 (line 458)
                  │  │                                                ; - com.google.re2j.Machine::step@410 (line 329)
  0.27%    0.34%  │  │  0x00007fbbed255d2f: mov    0x10(%r8),%ebp     ;*getfield size
                  │  │                                                ; - java.util.ArrayList::add@16 (line 459)
                  │  │                                                ; - com.google.re2j.Machine::step@410 (line 329)
  0.02%    0.04%  │  │  0x00007fbbed255d33: mov    %ebp,%ebx
  0.05%    0.03%  │  │  0x00007fbbed255d35: inc    %ebx               ;*iadd
                  │  │                                                ; - java.util.ArrayList::add@21 (line 459)
                  │  │                                                ; - com.google.re2j.Machine::step@410 (line 329)
  0.05%    0.04%  │  │  0x00007fbbed255d37: cmp    $0xed9f0db7,%r9d   ;   {oop(a &apos;java/lang/Object&apos;[0] )}
                  │  │  0x00007fbbed255d3e: je     0x00007fbbed2566ec  ;*if_acmpne
                  │  │                                                ; - java.util.ArrayList::ensureCapacityInternal@7 (line 223)
                  │  │                                                ; - java.util.ArrayList::add@7 (line 458)
                  │  │                                                ; - com.google.re2j.Machine::step@410 (line 329)
  0.23%    0.20%  │  │  0x00007fbbed255d44: mov    %ebx,%esi          ;*aload_0
                  │  │                                                ; - java.util.ArrayList::ensureCapacityInternal@17 (line 227)
                  │  │                                                ; - java.util.ArrayList::add@7 (line 458)
                  │  │                                                ; - com.google.re2j.Machine::step@410 (line 329)
  0.04%    0.05%  │  │  0x00007fbbed255d46: mov    0xc(%r8),%r11d     ;*getfield modCount
                  │  │                                                ; - java.util.ArrayList::ensureExplicitCapacity@2 (line 231)
                  │  │                                                ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                  │  │                                                ; - java.util.ArrayList::add@7 (line 458)
                  │  │                                                ; - com.google.re2j.Machine::step@410 (line 329)
  0.04%    0.02%  │  │  0x00007fbbed255d4a: inc    %r11d
  0.07%    0.06%  │  │  0x00007fbbed255d4d: mov    %r11d,0xc(%r8)     ;*putfield modCount
                  │  │                                                ; - java.util.ArrayList::ensureExplicitCapacity@7 (line 231)
                  │  │                                                ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                  │  │                                                ; - java.util.ArrayList::add@7 (line 458)
                  │  │                                                ; - com.google.re2j.Machine::step@410 (line 329)
  0.36%    0.26%  │  │  0x00007fbbed255d51: mov    0xc(%r12,%r9,8),%edi  ;*arraylength
                  │  │                                                ; - java.util.ArrayList::ensureExplicitCapacity@15 (line 234)
                  │  │                                                ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                  │  │                                                ; - java.util.ArrayList::add@7 (line 458)
                  │  │                                                ; - com.google.re2j.Machine::step@410 (line 329)
                  │  │                                                ; implicit exception: dispatches to 0x00007fbbed257255
  0.04%    0.02%  │  │  0x00007fbbed255d56: mov    %esi,%r11d
  0.05%    0.03%  │  │  0x00007fbbed255d59: sub    %edi,%r11d
  0.07%    0.04%  │  │  0x00007fbbed255d5c: test   %r11d,%r11d
                  │  │  0x00007fbbed255d5f: jg     0x00007fbbed25643d  ;*ifle
                  │  │                                                ; - java.util.ArrayList::ensureExplicitCapacity@17 (line 234)
                  │  │                                                ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                  │  │                                                ; - java.util.ArrayList::add@7 (line 458)
                  │  │                                                ; - com.google.re2j.Machine::step@410 (line 329)
  0.28%    0.29%  │  │  0x00007fbbed255d65: mov    %ebx,0x10(%r8)     ;*putfield size
                  │  │                                                ; - java.util.ArrayList::add@22 (line 459)
                  │  │                                                ; - com.google.re2j.Machine::step@410 (line 329)
  0.02%    0.01%  │  │  0x00007fbbed255d69: mov    %r9,%r8
  0.04%    0.03%  │  │  0x00007fbbed255d6c: shl    $0x3,%r8           ;*return
                  │  │                                                ; - java.util.ArrayList::ensureExplicitCapacity@25 (line 236)
                  │  │                                                ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                  │  │                                                ; - java.util.ArrayList::add@7 (line 458)
                  │  │                                                ; - com.google.re2j.Machine::step@410 (line 329)
  0.06%    0.06%  │  │  0x00007fbbed255d70: mov    0xc(%r8),%r11d
  0.30%    0.19%  │  │  0x00007fbbed255d74: cmp    %r11d,%ebp
                  │  │  0x00007fbbed255d77: jae    0x00007fbbed2568c1
  0.04%    0.00%  │  │  0x00007fbbed255d7d: mov    0x8(%r8),%r11d
  0.04%    0.04%  │  │  0x00007fbbed255d81: cmp    $0xf80022f5,%r11d  ;   {metadata(&apos;java/lang/Object&apos;[])}
                  │  │  0x00007fbbed255d88: jne    0x00007fbbed256941
  0.08%    0.05%  │  │  0x00007fbbed255d8e: lea    0x10(%r8,%rbp,4),%r10
  0.31%    0.20%  │  │  0x00007fbbed255d93: mov    0x50(%rsp),%r11
  0.02%    0.01%  │  │  0x00007fbbed255d98: shr    $0x3,%r11
  0.05%    0.02%  │  │  0x00007fbbed255d9c: mov    %r11d,(%r10)
  0.09%    0.04%  │  │  0x00007fbbed255d9f: shr    $0x9,%r10
  0.28%    0.09%  │  │  0x00007fbbed255da3: movabs $0x7fbbfe441000,%r11
  0.03%    0.04%  │  │  0x00007fbbed255dad: mov    %r12b,(%r11,%r10,1)  ;*aastore
                  │  │                                                ; - java.util.ArrayList::add@26 (line 459)
                  │  │                                                ; - com.google.re2j.Machine::step@410 (line 329)
  0.07%    0.03%  │  │  0x00007fbbed255db1: xor    %r10d,%r10d
  0.06%    0.05%  │╭ │  0x00007fbbed255db4: jmp    0x00007fbbed255dbf
  0.04%    0.04%  ││↗│  0x00007fbbed255db6: mov    0x24(%rsp),%r10d
  0.11%    0.07%  ││││  0x00007fbbed255dbb: mov    0x20(%rsp),%ecx    ; OopMap{[8]=Oop [24]=Oop [40]=Oop off=319}
                  ││││                                                ;*goto
                  ││││                                                ; - com.google.re2j.Machine::step@419 (line 264)
  0.31%    0.18%  │↘││  0x00007fbbed255dbf: test   %eax,0x187e323b(%rip)        # 0x00007fbc05a39000
                  │ ││                                                ;*goto
                  │ ││                                                ; - com.google.re2j.Machine::step@419 (line 264)
                  │ ││                                                ;   {poll}
  0.10%    0.13%  │ ││  0x00007fbbed255dc5: mov    0x8(%rsp),%r10
  0.18%    0.09%  │ ││  0x00007fbbed255dca: mov    0xc(%r10),%r10d
  0.22%    0.23%  │ ││  0x00007fbbed255dce: cmp    %r10d,%r14d
                  │ ││  0x00007fbbed255dd1: jge    0x00007fbbed256095
  0.31%    0.15%  │ ││  0x00007fbbed255dd7: mov    %ecx,0x20(%rsp)
  0.12%    0.11%  │ ││  0x00007fbbed255ddb: mov    %r14d,%r10d        ;*aload_1
                  │ ││                                                ; - com.google.re2j.Machine::step@21 (line 265)
  0.14%    0.08%  ↘ ││  0x00007fbbed255dde: mov    0x8(%rsp),%r11
  0.24%    0.32%    ││  0x00007fbbed255de3: mov    0x10(%r11),%r11d   ;*getfield dense
                    ││                                                ; - com.google.re2j.Machine::step@22 (line 265)
  0.56%    0.43%    ││  0x00007fbbed255de7: mov    0xc(%r12,%r11,8),%r9d  ; implicit exception: dispatches to 0x00007fbbed2571dd
  0.30%    0.34%    ││  0x00007fbbed255dec: cmp    %r9d,%r10d
                    ││  0x00007fbbed255def: jae    0x00007fbbed256753
  0.15%    0.16%    ││  0x00007fbbed255df5: shl    $0x3,%r11
  0.28%    0.26%    ││  0x00007fbbed255df9: mov    0x10(%r11,%r10,4),%r9d  ;*aaload
                    ││                                                ; - com.google.re2j.Machine::step@27 (line 265)
  0.33%    0.52%    ││  0x00007fbbed255dfe: mov    0x10(%r12,%r9,8),%r11d  ;*getfield thread
                    ││                                                ; - com.google.re2j.Machine::step@40 (line 269)
                    ││                                                ; implicit exception: dispatches to 0x00007fbbed257275
  0.29%    0.41%    ││  0x00007fbbed255e03: mov    %r10d,%r14d
  0.13%    0.21%    ││  0x00007fbbed255e06: inc    %r14d              ;*iadd
                    ││                                                ; - com.google.re2j.Machine::step@241 (line 293)
  0.20%    0.37%    ││  0x00007fbbed255e09: test   %r11d,%r11d
                    ╰│  0x00007fbbed255e0c: je     0x00007fbbed255db6  ;*ifnonnull
                     │                                                ; - com.google.re2j.Machine::step@47 (line 270)
  0.33%    0.46%     │  0x00007fbbed255e0e: mov    0x24(%rsp),%r8d
  0.04%    0.04%     │  0x00007fbbed255e13: test   %r8d,%r8d
                     │  0x00007fbbed255e16: jne    0x00007fbbed256b09  ;*ifeq
                     │                                                ; - com.google.re2j.Machine::step@55 (line 273)
  0.05%    0.09%     │  0x00007fbbed255e1c: mov    0x10(%r12,%r11,8),%r8d  ;*getfield inst
                     │                                                ; - com.google.re2j.Machine::step@107 (line 278)
  0.55%    0.73%     │  0x00007fbbed255e21: mov    0x14(%r12,%r8,8),%ecx  ;*getfield op
                     │                                                ; - com.google.re2j.Machine::step@120 (line 280)
                     │                                                ; implicit exception: dispatches to 0x00007fbbed257225
  1.39%    2.19%     │  0x00007fbbed255e26: mov    0xc(%r12,%rcx,8),%ebp  ;*getfield ordinal
                     │                                                ; - java.lang.Enum::ordinal@1 (line 103)
                     │                                                ; - com.google.re2j.Machine::step@123 (line 280)
                     │                                                ; implicit exception: dispatches to 0x00007fbbed257235
  1.66%    2.42%     │  0x00007fbbed255e2b: cmp    $0xb,%ebp
                     │  0x00007fbbed255e2e: jae    0x00007fbbed25687d
  0.31%    0.50%     │  0x00007fbbed255e34: movabs $0x76dd58c38,%r9   ;   {oop([I)}
  0.04%    0.02%     │  0x00007fbbed255e3e: mov    0x10(%r9,%rbp,4),%esi  ;*iaload
                     │                                                ; - com.google.re2j.Machine::step@126 (line 280)
  2.33%    2.46%     │  0x00007fbbed255e43: mov    0x18(%r12,%r8,8),%ecx  ;*getfield runes
                     │                                                ; - com.google.re2j.Machine::step@320 (line 310)
                     │  0x00007fbbed255e48: mov    0xc(%r12,%r11,8),%edi  ;*getfield cap
                     │                                                ; - com.google.re2j.Machine::step@176 (line 287)
                     │  0x00007fbbed255e4d: lea    (%r12,%r11,8),%r9  ;*getfield thread
                     │                                                ; - com.google.re2j.Machine::step@40 (line 269)
  0.01%    0.01%     │  0x00007fbbed255e51: cmp    $0x3,%esi
                     │  0x00007fbbed255e54: je     0x00007fbbed25605f
  0.34%    0.38%     │  0x00007fbbed255e5a: cmp    $0x3,%esi
                     │  0x00007fbbed255e5d: jle    0x00007fbbed255efb
  0.01%    0.01%     │  0x00007fbbed255e63: cmp    $0x5,%esi
                     │  0x00007fbbed255e66: jne    0x00007fbbed255e8a  ;*tableswitch
                     │                                                ; - com.google.re2j.Machine::step@127 (line 280)
                     │  0x00007fbbed255e68: mov    0x20(%rsp),%ecx
                     │  0x00007fbbed255e6c: cmp    $0xa,%ecx
                     ╰  0x00007fbbed255e6f: je     0x00007fbbed255d07  ;*if_icmpeq
                                                                      ; - com.google.re2j.Machine::step@348 (line 318)
                        0x00007fbbed255e75: mov    %r10d,0x94(%rsp)
                        0x00007fbbed255e7d: mov    %r14d,0x9c(%rsp)
                        0x00007fbbed255e85: mov    %r9,%r13
                        0x00007fbbed255e88: jmp    0x00007fbbed255ea6
....................................................................................................
 15.21%   16.90%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 564 (335 bytes) 

                          0x00007fbbed2562ba: mov    %r8d,0x24(%rsp)
                          0x00007fbbed2562bf: mov    %ecx,0x30(%rsp)
                          0x00007fbbed2562c3: mov    %edx,0x34(%rsp)
                          0x00007fbbed2562c7: callq  0x00007fbbed0051a0  ; OopMap{rbp=NarrowOop [8]=Oop [24]=Oop [32]=NarrowOop [36]=NarrowOop [40]=Oop [52]=NarrowOop off=1612}
                                                                        ;*invokeinterface add
                                                                        ; - com.google.re2j.Machine::step@279 (line 297)
                                                                        ;   {runtime_call}
                          0x00007fbbed2562cc: callq  0x00007fbc04726c50  ;*invokeinterface add
                                                                        ; - com.google.re2j.Machine::step@279 (line 297)
                                                                        ;   {runtime_call}
  0.60%    0.70%   ↗      0x00007fbbed2562d1: mov    %r8d,%r10d
  0.35%    0.53%   │      0x00007fbbed2562d4: sub    0x20(%rsp),%r10d   ;*isub
                   │                                                    ; - com.google.re2j.Unicode::simpleFold@15 (line 208)
                   │                                                    ; - com.google.re2j.Inst::matchRune@50 (line 67)
                   │                                                    ; - com.google.re2j.Machine::step@308 (line 306)
  0.34%    0.52%   │      0x00007fbbed2562d9: mov    %r10d,%esi
  0.36%    0.61%   │      0x00007fbbed2562dc: sar    $0x1f,%esi
  0.46%    0.74%   │      0x00007fbbed2562df: shr    $0x1f,%esi
  0.32%    0.55%   │      0x00007fbbed2562e2: add    %r10d,%esi
  0.41%    0.52%   │      0x00007fbbed2562e5: sar    %esi               ;*idiv
                   │                                                    ; - com.google.re2j.Unicode::simpleFold@17 (line 208)
                   │                                                    ; - com.google.re2j.Inst::matchRune@50 (line 67)
                   │                                                    ; - com.google.re2j.Machine::step@308 (line 306)
  0.47%    0.60%   │      0x00007fbbed2562e7: mov    0x20(%rsp),%r11d
  0.48%    0.71%   │      0x00007fbbed2562ec: add    %esi,%r11d         ;*iadd
                   │                                                    ; - com.google.re2j.Unicode::simpleFold@18 (line 208)
                   │                                                    ; - com.google.re2j.Inst::matchRune@50 (line 67)
                   │                                                    ; - com.google.re2j.Machine::step@308 (line 306)
  0.22%    0.45%   │      0x00007fbbed2562ef: vmovd  %r8d,%xmm1
  0.37%    0.45%   │      0x00007fbbed2562f4: mov    %r11d,%r8d         ;*idiv
                   │                                                    ; - com.google.re2j.Unicode::simpleFold@17 (line 208)
                   │                                                    ; - com.google.re2j.Inst::matchRune@50 (line 67)
                   │                                                    ; - com.google.re2j.Machine::step@308 (line 306)
  0.47%    0.59%   │  ↗   0x00007fbbed2562f7: cmp    $0x3f,%r8d
                   │  │   0x00007fbbed2562fb: jae    0x00007fbbed2567dd
  0.61%    0.80%   │  │   0x00007fbbed256301: movslq 0x20(%rsp),%r10
  0.41%    0.60%   │  │   0x00007fbbed256306: movslq %esi,%r11
  0.39%    0.62%   │  │   0x00007fbbed256309: add    %r11,%r10
  0.57%    0.69%   │  │   0x00007fbbed25630c: mov    0x10(%r9,%r10,4),%ebp  ;*aaload
                   │  │                                                 ; - com.google.re2j.Unicode::simpleFold@24 (line 209)
                   │  │                                                 ; - com.google.re2j.Inst::matchRune@50 (line 67)
                   │  │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.70%    1.02%   │  │   0x00007fbbed256311: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007fbbed257215
  1.39%    1.95%   │  │   0x00007fbbed256316: test   %r11d,%r11d
                   │  │   0x00007fbbed256319: jbe    0x00007fbbed256835  ;*iaload
                   │  │                                                 ; - com.google.re2j.Unicode::simpleFold@26 (line 209)
                   │  │                                                 ; - com.google.re2j.Inst::matchRune@50 (line 67)
                   │  │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.77%    1.12%   │  │   0x00007fbbed25631f: mov    0x10(%r12,%rbp,8),%r11d
  0.29%    0.56%   │  │   0x00007fbbed256324: cmp    %r14d,%r11d
                  ╭│  │   0x00007fbbed256327: jl     0x00007fbbed2563ff  ; OopMap{r9=Oop rdi=NarrowOop rdx=NarrowOop rax=NarrowOop r13=Oop xmm0=Oop [8]=Oop [24]=Oop [40]=Oop off=1709}
                  ││  │                                                 ;*goto
                  ││  │                                                 ; - com.google.re2j.Unicode::simpleFold@40 (line 214)
                  ││  │                                                 ; - com.google.re2j.Inst::matchRune@50 (line 67)
                  ││  │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.57%    0.99%  ││  │↗  0x00007fbbed25632d: test   %eax,0x187e2ccd(%rip)        # 0x00007fbc05a39000
                  ││  ││                                                ;*goto
                  ││  ││                                                ; - com.google.re2j.Unicode::simpleFold@40 (line 214)
                  ││  ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 67)
                  ││  ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
                  ││  ││                                                ;   {poll}
  0.40%    0.57%  ││  ││  0x00007fbbed256333: mov    0x20(%rsp),%r10d
  0.52%    0.86%  ││  ││  0x00007fbbed256338: cmp    %r8d,%r10d
                  │╰  ││  0x00007fbbed25633b: jl     0x00007fbbed2562d1  ;*if_icmpge
                  │   ││                                                ; - com.google.re2j.Unicode::simpleFold@9 (line 207)
                  │   ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 67)
                  │   ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.00%    0.00%  │   ││  0x00007fbbed25633d: mov    0x20(%rsp),%r8d
  0.22%    0.34%  │   ││  0x00007fbbed256342: cmp    $0x3f,%r10d
                  │   ││  0x00007fbbed256346: jge    0x00007fbbed256d1d  ;*if_icmpge
                  │   ││                                                ; - com.google.re2j.Unicode::simpleFold@48 (line 215)
                  │   ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 67)
                  │   ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
                  │   ││  0x00007fbbed25634c: cmp    $0x3f,%r10d
                  │   ││  0x00007fbbed256350: jae    0x00007fbbed256b55
  0.08%    0.13%  │   ││  0x00007fbbed256356: mov    0x10(%r9,%r10,4),%ebp  ;*aaload
                  │   ││                                                ; - com.google.re2j.Unicode::simpleFold@55 (line 215)
                  │   ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 67)
                  │   ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.01%    0.01%  │   ││  0x00007fbbed25635b: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007fbbed257319
  0.26%    0.43%  │   ││  0x00007fbbed256360: test   %r11d,%r11d
                  │   ││  0x00007fbbed256363: jbe    0x00007fbbed256ba5
  0.06%    0.08%  │   ││  0x00007fbbed256369: mov    0x10(%r12,%rbp,8),%ebp  ;*iaload
                  │   ││                                                ; - com.google.re2j.Unicode::simpleFold@57 (line 215)
                  │   ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 67)
                  │   ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.04%    0.06%  │   ││  0x00007fbbed25636e: cmp    %r14d,%ebp
                  │   ││  0x00007fbbed256371: je     0x00007fbbed256d6d  ;*if_icmpne
                  │   ││                                                ; - com.google.re2j.Unicode::simpleFold@59 (line 215)
                  │   ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 67)
                  │   ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.06%    0.06%  │   ││  0x00007fbbed256377: mov    %r14d,%r8d
  0.18%    0.25%  │   ││  0x00007fbbed25637a: cmp    $0x7f,%r8d
                  │   ││  0x00007fbbed25637e: jg     0x00007fbbed256dbd  ;*if_icmpgt
                  │   ││                                                ; - com.google.re2j.Unicode::toLower@3 (line 177)
                  │   ││                                                ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                  │   ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 67)
                  │   ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.03%    0.03%  │   ││  0x00007fbbed256384: cmp    $0x41,%r8d
                  │   ││  0x00007fbbed256388: jl     0x00007fbbed256ccd  ;*if_icmpgt
                  │   ││                                                ; - com.google.re2j.Unicode::toLower@9 (line 178)
                  │   ││                                                ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                  │   ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 67)
                  │   ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.02%    0.02%  │   ││  0x00007fbbed25638e: cmp    $0x5a,%r8d
                  │ ╭ ││  0x00007fbbed256392: jg     0x00007fbbed2563a0  ;*if_icmpgt
                  │ │ ││                                                ; - com.google.re2j.Unicode::toLower@15 (line 178)
                  │ │ ││                                                ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                  │ │ ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 67)
                  │ │ ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
                  │ │ ││  0x00007fbbed256394: mov    %r8d,%r10d
                  │ │ ││  0x00007fbbed256397: add    $0x20,%r10d        ;*iinc
                  │ │ ││                                                ; - com.google.re2j.Unicode::toLower@18 (line 179)
                  │ │ ││                                                ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                  │ │ ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 67)
                  │ │ ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
                  │ │ ││  0x00007fbbed25639b: cmp    %r8d,%r10d
                  │ │╭││  0x00007fbbed25639e: jne    0x00007fbbed2563bb  ;*if_icmpeq
                  │ ││││                                                ; - com.google.re2j.Unicode::simpleFold@77 (line 224)
                  │ ││││                                                ; - com.google.re2j.Inst::matchRune@50 (line 67)
                  │ ││││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.04%    0.06%  │ ↘│││  0x00007fbbed2563a0: cmp    $0x61,%r8d
                  │  │││  0x00007fbbed2563a4: jl     0x00007fbbed257019  ;*if_icmpgt
                  │  │││                                                ; - com.google.re2j.Unicode::toUpper@9 (line 167)
                  │  │││                                                ; - com.google.re2j.Unicode::simpleFold@83 (line 227)
                  │  │││                                                ; - com.google.re2j.Inst::matchRune@50 (line 67)
                  │  │││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.19%    0.20%  │  │││  0x00007fbbed2563aa: cmp    $0x7a,%r8d
                  │  │││  0x00007fbbed2563ae: jg     0x00007fbbed257065  ;*if_icmpgt
                  │  │││                                                ; - com.google.re2j.Unicode::toUpper@15 (line 167)
                  │  │││                                                ; - com.google.re2j.Unicode::simpleFold@83 (line 227)
                  │  │││                                                ; - com.google.re2j.Inst::matchRune@50 (line 67)
                  │  │││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.02%    0.02%  │  │││  0x00007fbbed2563b4: mov    %r8d,%r10d
  0.03%    0.06%  │  │││  0x00007fbbed2563b7: add    $0xffffffe0,%r10d  ; OopMap{r9=Oop rdi=NarrowOop rdx=NarrowOop rax=NarrowOop r13=Oop xmm0=Oop [8]=Oop [24]=Oop [40]=Oop off=1851}
                  │  │││                                                ;*goto
                  │  │││                                                ; - com.google.re2j.Inst::matchRune@54 (line 67)
                  │  │││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.05%    0.09%  │  ↘││  0x00007fbbed2563bb: test   %eax,0x187e2c3f(%rip)        # 0x00007fbc05a39000
                  │   ││                                                ;*goto
                  │   ││                                                ; - com.google.re2j.Inst::matchRune@54 (line 67)
                  │   ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
                  │   ││                                                ;   {poll}
  0.18%    0.22%  │   ││  0x00007fbbed2563c1: cmp    %ebx,%r10d
                  │   ││  0x00007fbbed2563c4: je     0x00007fbbed2561a0  ;*if_icmpeq
                  │   ││                                                ; - com.google.re2j.Inst::matchRune@39 (line 66)
                  │   ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
                  │   ││  0x00007fbbed2563ca: mov    %ebx,%r11d         ;*iload_1
                  │   ││                                                ; - com.google.re2j.Inst::matchRune@42 (line 68)
                  │   ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.06%    0.08%  │   ││  0x00007fbbed2563cd: cmp    %r10d,%ecx
                  │   ││  0x00007fbbed2563d0: je     0x00007fbbed2566e0  ;*if_icmpne
                  │   ││                                                ; - com.google.re2j.Inst::matchRune@44 (line 68)
                  │   ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.02%    0.01%  │   ││  0x00007fbbed2563d6: mov    %r10d,%r14d
  0.07%    0.07%  │   ││  0x00007fbbed2563d9: mov    %r11d,%ebx
  0.17%    0.22%  │   ││  0x00007fbbed2563dc: mov    $0x1f,%esi
  0.05%    0.11%  │   ││  0x00007fbbed2563e1: mov    $0x1f,%r8d
  0.02%    0.02%  │   ││  0x00007fbbed2563e7: xor    %r10d,%r10d
  0.08%    0.13%  │   ││  0x00007fbbed2563ea: mov    $0x3f,%r11d
  0.13%    0.28%  │   ││  0x00007fbbed2563f0: mov    %r10d,0x20(%rsp)
  0.08%    0.09%  │   ││  0x00007fbbed2563f5: vmovd  %r11d,%xmm1
  0.03%    0.04%  │   ╰│  0x00007fbbed2563fa: jmpq   0x00007fbbed2562f7
  0.15%    0.28%  ↘    │  0x00007fbbed2563ff: inc    %r8d               ;*iadd
                       │                                                ; - com.google.re2j.Unicode::simpleFold@33 (line 210)
                       │                                                ; - com.google.re2j.Inst::matchRune@50 (line 67)
                       │                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.02%    0.04%       │  0x00007fbbed256402: mov    %r8d,0x20(%rsp)
  0.14%    0.21%       │  0x00007fbbed256407: vmovd  %xmm1,%r8d
  0.09%    0.09%       ╰  0x00007fbbed25640c: jmpq   0x00007fbbed25632d
  0.09%    0.09%          0x00007fbbed256411: xor    %r10d,%r10d
                          0x00007fbbed256414: mov    0x20(%rsp),%ecx
                          0x00007fbbed256418: mov    0x9c(%rsp),%r14d
  0.04%    0.07%          0x00007fbbed256420: jmpq   0x00007fbbed255dbf
                          0x00007fbbed256425: mov    0xa0(%rsp),%ecx
                          0x00007fbbed25642c: test   %ecx,%ecx
                          0x00007fbbed25642e: jne    0x00007fbbed255fa7  ;*ifne
                                                                        ; - com.google.re2j.Machine::step@168 (line 282)
                          0x00007fbbed256434: mov    0x20(%rsp),%ecx
                          0x00007fbbed256438: jmpq   0x00007fbbed255d07
                          0x00007fbbed25643d: mov    %edi,%ebx
                          0x00007fbbed25643f: sar    %ebx
                          0x00007fbbed256441: add    %edi,%ebx          ;*iadd
                                                                        ; - java.util.ArrayList::grow@10 (line 255)
....................................................................................................
 14.18%   20.66%  <total for region 3>

....[Hottest Region 4]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 564 (276 bytes) 

                      0x00007fbbed25603c: mov    0x38(%rsp),%r9
                      0x00007fbbed256041: mov    0x40(%rsp),%rbx    ;*iload
                                                                    ; - com.google.re2j.Machine::step@233 (line 291)
                      0x00007fbbed256046: mov    0x8(%rsp),%rcx
                      0x00007fbbed25604b: mov    0xc(%rcx),%edi
                      0x00007fbbed25604e: cmp    %edi,%r14d
                      0x00007fbbed256051: jge    0x00007fbbed255cf0  ;*if_icmpge
                                                                    ; - com.google.re2j.Machine::step@250 (line 293)
                      0x00007fbbed256057: mov    %r14d,%ecx
                      0x00007fbbed25605a: jmpq   0x00007fbbed256248
  0.09%    0.09%      0x00007fbbed25605f: mov    0xc(%r12,%rcx,8),%edx  ; implicit exception: dispatches to 0x00007fbbed2572e9
                      0x00007fbbed256064: test   %edx,%edx
                      0x00007fbbed256066: jbe    0x00007fbbed256abd  ;*iaload
                                                                    ; - com.google.re2j.Machine::step@324 (line 310)
           0.00%      0x00007fbbed25606c: mov    0x10(%r12,%rcx,8),%ebx
           0.00%      0x00007fbbed256071: mov    0x20(%rsp),%ecx
  0.11%    0.09%      0x00007fbbed256075: cmp    %ebx,%ecx
                      0x00007fbbed256077: jne    0x00007fbbed255d07  ;*if_icmpne
                                                                    ; - com.google.re2j.Machine::step@325 (line 310)
  0.00%               0x00007fbbed25607d: mov    %r10d,0x94(%rsp)
  0.00%    0.01%      0x00007fbbed256085: mov    %r14d,0x9c(%rsp)
                      0x00007fbbed25608d: mov    %r9,%r13
                      0x00007fbbed256090: jmpq   0x00007fbbed255ea6  ;*if_icmpge
                                                                    ; - com.google.re2j.Machine::step@18 (line 264)
  0.06%    0.03%      0x00007fbbed256095: mov    0x8(%rsp),%r10
  0.01%    0.05%      0x00007fbbed25609a: mov    %r12d,0xc(%r10)    ;*getfield size
                                                                    ; - com.google.re2j.Machine::step@15 (line 264)
  0.00%    0.01%      0x00007fbbed25609e: add    $0x80,%rsp
  0.02%    0.03%      0x00007fbbed2560a5: pop    %rbp
  0.05%    0.04%      0x00007fbbed2560a6: test   %eax,0x187e2f54(%rip)        # 0x00007fbc05a39000
                                                                    ;   {poll_return}
  0.01%    0.01%      0x00007fbbed2560ac: retq   
                      0x00007fbbed2560ad: data16 xchg %ax,%ax
  0.50%    0.55%  ↗   0x00007fbbed2560b0: mov    %r8d,%r14d
  0.34%    0.53%  │   0x00007fbbed2560b3: vmovd  %ebx,%xmm1
  0.30%    0.47%  │   0x00007fbbed2560b7: mov    %ebx,%r8d
  0.39%    0.52%  │   0x00007fbbed2560ba: sub    %r14d,%r8d         ;*isub
                  │                                                 ; - com.google.re2j.Unicode::simpleFold@15 (line 208)
                  │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 65)
                  │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.45%    0.41%  │   0x00007fbbed2560bd: mov    %r8d,%r10d
  0.35%    0.31%  │   0x00007fbbed2560c0: sar    $0x1f,%r10d
  0.32%    0.31%  │   0x00007fbbed2560c4: shr    $0x1f,%r10d
  0.46%    0.42%  │   0x00007fbbed2560c8: add    %r8d,%r10d
  0.49%    0.39%  │   0x00007fbbed2560cb: sar    %r10d
  0.33%    0.42%  │   0x00007fbbed2560ce: mov    %r14d,%ebx
  0.34%    0.44%  │   0x00007fbbed2560d1: add    %r10d,%ebx         ;*idiv
                  │                                                 ; - com.google.re2j.Unicode::simpleFold@17 (line 208)
                  │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 65)
                  │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.63%    0.40%  │   0x00007fbbed2560d4: cmp    $0x3f,%ebx
                  │   0x00007fbbed2560d7: jae    0x00007fbbed256985
  0.51%    0.55%  │   0x00007fbbed2560dd: movslq %r14d,%r11
  0.39%    0.80%  │   0x00007fbbed2560e0: movslq %r10d,%r10
  0.43%    0.56%  │   0x00007fbbed2560e3: add    %r10,%r11
  0.60%    0.54%  │   0x00007fbbed2560e6: mov    0x10(%r9,%r11,4),%ebp  ;*aaload
                  │                                                 ; - com.google.re2j.Unicode::simpleFold@24 (line 209)
                  │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 65)
                  │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.50%    0.48%  │   0x00007fbbed2560eb: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007fbbed257265
  0.39%    0.49%  │   0x00007fbbed2560f0: test   %r10d,%r10d
                  │   0x00007fbbed2560f3: jbe    0x00007fbbed2569d5  ;*iaload
                  │                                                 ; - com.google.re2j.Unicode::simpleFold@26 (line 209)
                  │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 65)
                  │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.49%    0.54%  │   0x00007fbbed2560f9: mov    0x10(%r12,%rbp,8),%r10d
  0.67%    0.67%  │   0x00007fbbed2560fe: cmp    0x20(%rsp),%r10d
                  │   0x00007fbbed256103: jl     0x00007fbbed2561b8  ;*if_icmpge
                  │                                                 ; - com.google.re2j.Unicode::simpleFold@28 (line 209)
                  │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 65)
                  │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.48%    0.51%  │   0x00007fbbed256109: mov    %r14d,%r8d         ; OopMap{r9=Oop rdi=NarrowOop rdx=NarrowOop rax=NarrowOop r13=Oop xmm0=Oop [8]=Oop [24]=Oop [40]=Oop off=1164}
                  │                                                 ;*goto
                  │                                                 ; - com.google.re2j.Unicode::simpleFold@40 (line 214)
                  │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 65)
                  │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.40%    0.71%  │   0x00007fbbed25610c: test   %eax,0x187e2eee(%rip)        # 0x00007fbc05a39000
                  │                                                 ;*goto
                  │                                                 ; - com.google.re2j.Unicode::simpleFold@40 (line 214)
                  │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 65)
                  │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
                  │                                                 ;   {poll}
  0.42%    0.61%  │   0x00007fbbed256112: cmp    %ebx,%r8d
                  ╰   0x00007fbbed256115: jl     0x00007fbbed2560b0  ;*if_icmpge
                                                                    ; - com.google.re2j.Unicode::simpleFold@9 (line 207)
                                                                    ; - com.google.re2j.Inst::matchRune@33 (line 65)
                                                                    ; - com.google.re2j.Machine::step@308 (line 306)
  0.06%    0.13%      0x00007fbbed256117: cmp    $0x3f,%r8d
                      0x00007fbbed25611b: jge    0x00007fbbed256f4d  ;*if_icmpge
                                                                    ; - com.google.re2j.Unicode::simpleFold@48 (line 215)
                                                                    ; - com.google.re2j.Inst::matchRune@33 (line 65)
                                                                    ; - com.google.re2j.Machine::step@308 (line 306)
  0.15%    0.23%      0x00007fbbed256121: cmp    $0x3f,%r8d
                      0x00007fbbed256125: jae    0x00007fbbed256c01
  0.07%    0.11%      0x00007fbbed25612b: mov    0x10(%r9,%r8,4),%ebp  ;*aaload
                                                                    ; - com.google.re2j.Unicode::simpleFold@55 (line 215)
                                                                    ; - com.google.re2j.Inst::matchRune@33 (line 65)
                                                                    ; - com.google.re2j.Machine::step@308 (line 306)
  0.01%    0.02%      0x00007fbbed256130: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007fbbed257339
  0.05%    0.10%      0x00007fbbed256135: test   %r11d,%r11d
                      0x00007fbbed256138: jbe    0x00007fbbed256c95
  0.14%    0.19%      0x00007fbbed25613e: mov    0x10(%r12,%rbp,8),%ebp  ;*iaload
                                                                    ; - com.google.re2j.Unicode::simpleFold@57 (line 215)
                                                                    ; - com.google.re2j.Inst::matchRune@33 (line 65)
                                                                    ; - com.google.re2j.Machine::step@308 (line 306)
  0.08%    0.11%      0x00007fbbed256143: cmp    0x20(%rsp),%ebp
                      0x00007fbbed256147: je     0x00007fbbed256f95  ;*if_icmpne
                                                                    ; - com.google.re2j.Unicode::simpleFold@59 (line 215)
                                                                    ; - com.google.re2j.Inst::matchRune@33 (line 65)
                                                                    ; - com.google.re2j.Machine::step@308 (line 306)
  0.01%    0.02%      0x00007fbbed25614d: mov    0x20(%rsp),%r11d
  0.08%    0.07%      0x00007fbbed256152: cmp    $0x7f,%r11d
                      0x00007fbbed256156: jg     0x00007fbbed256fcd  ;*if_icmpgt
                                                                    ; - com.google.re2j.Unicode::toLower@3 (line 177)
                                                                    ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                                                                    ; - com.google.re2j.Inst::matchRune@33 (line 65)
                                                                    ; - com.google.re2j.Machine::step@308 (line 306)
  0.16%    0.20%      0x00007fbbed25615c: cmp    $0x41,%r11d
                      0x00007fbbed256160: jl     0x00007fbbed256e45  ;*if_icmpgt
                                                                    ; - com.google.re2j.Unicode::toLower@9 (line 178)
                                                                    ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                                                                    ; - com.google.re2j.Inst::matchRune@33 (line 65)
                                                                    ; - com.google.re2j.Machine::step@308 (line 306)
  0.10%    0.10%      0x00007fbbed256166: cmp    $0x5a,%r11d
                   ╭  0x00007fbbed25616a: jg     0x00007fbbed25617c  ;*if_icmpgt
                   │                                                ; - com.google.re2j.Unicode::toLower@15 (line 178)
                   │                                                ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                   │                                                ; - com.google.re2j.Inst::matchRune@33 (line 65)
                   │                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.03%    0.01%   │  0x00007fbbed25616c: mov    %r11d,%r10d
  0.07%    0.08%   │  0x00007fbbed25616f: add    $0x20,%r10d        ;*iinc
                   │                                                ; - com.google.re2j.Unicode::toLower@18 (line 179)
                   │                                                ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                   │                                                ; - com.google.re2j.Inst::matchRune@33 (line 65)
                   │                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.17%    0.25%   │  0x00007fbbed256173: cmp    %r11d,%r10d
                   │  0x00007fbbed256176: jne    0x00007fbbed2563cd  ;*if_icmpeq
                   │                                                ; - com.google.re2j.Unicode::simpleFold@77 (line 224)
                   │                                                ; - com.google.re2j.Inst::matchRune@33 (line 65)
                   │                                                ; - com.google.re2j.Machine::step@308 (line 306)
                   ↘  0x00007fbbed25617c: cmp    $0x61,%r11d
                      0x00007fbbed256180: jl     0x00007fbbed2570b1  ;*if_icmpgt
....................................................................................................
 11.73%   13.64%  <total for region 4>

....[Hottest Region 5]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 554 (404 bytes) 

                          0x00007fbbed24992a: mov    %r10,(%rsp)
                          0x00007fbbed24992e: nop
                          0x00007fbbed24992f: callq  0x00007fbbed046020  ; OopMap{off=756}
                                                                        ;*invokespecial add
                                                                        ; - com.google.re2j.Machine::add@207 (line 369)
                                                                        ;   {optimized virtual_call}
                  ╭       0x00007fbbed249934: jmpq   0x00007fbbed249acc
                  │       0x00007fbbed249939: mov    0x70(%rsp),%rax
                  │╭      0x00007fbbed24993e: jmpq   0x00007fbbed249acc  ;*tableswitch
                  ││                                                    ; - com.google.re2j.Machine::add@47 (line 349)
  1.35%    0.94%  ││      0x00007fbbed249943: mov    0x8(%rsp),%rsi
                  ││      0x00007fbbed249948: mov    0x48(%rsp),%rdx
                  ││      0x00007fbbed24994d: mov    0x1c(%rsp),%r8d
  0.01%    0.01%  ││      0x00007fbbed249952: mov    0x20(%rsp),%r9
  0.33%    0.20%  ││      0x00007fbbed249957: mov    0x28(%rsp),%edi
                  ││      0x00007fbbed24995b: mov    0x70(%rsp),%r10
                  ││      0x00007fbbed249960: mov    %r10,(%rsp)
  0.02%    0.00%  ││      0x00007fbbed249964: mov    %rsi,%rbp
  0.29%    0.09%  ││      0x00007fbbed249967: callq  0x00007fbbed046020  ; OopMap{rbp=Oop [32]=Oop [56]=Oop [72]=Oop off=812}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@131 (line 358)
                  ││                                                    ;   {optimized virtual_call}
           0.01%  ││      0x00007fbbed24996c: mov    0x38(%rsp),%r10
  0.15%    0.08%  ││      0x00007fbbed249971: mov    0x10(%r10),%ecx    ;*getfield arg
                  ││                                                    ; - com.google.re2j.Machine::add@140 (line 359)
  0.13%    0.21%  ││      0x00007fbbed249975: mov    %rbp,%rsi
  0.00%           ││      0x00007fbbed249978: mov    0x48(%rsp),%rdx
  0.01%    0.03%  ││      0x00007fbbed24997d: mov    0x1c(%rsp),%r8d
  0.10%    0.16%  ││      0x00007fbbed249982: mov    0x20(%rsp),%r9
  0.15%    0.17%  ││      0x00007fbbed249987: mov    0x28(%rsp),%edi
           0.00%  ││      0x00007fbbed24998b: mov    %rax,(%rsp)
  0.01%    0.02%  ││      0x00007fbbed24998f: callq  0x00007fbbed046020  ; OopMap{off=852}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@150 (line 359)
                  ││                                                    ;   {optimized virtual_call}
  0.00%           ││╭     0x00007fbbed249994: jmpq   0x00007fbbed249acc  ;*aload
                  │││                                                   ; - com.google.re2j.Machine::add@297 (line 388)
  1.99%    0.93%  │││     0x00007fbbed249999: mov    0x38(%rsp),%r10
                  │││     0x00007fbbed24999e: mov    %r10,%rcx
                  │││     0x00007fbbed2499a1: shr    $0x3,%rcx          ;*putfield inst
                  │││                                                   ; - com.google.re2j.Machine::alloc@47 (line 151)
                  │││                                                   ; - com.google.re2j.Machine::add@305 (line 389)
  0.03%    0.02%  │││     0x00007fbbed2499a5: mov    0x70(%rsp),%rbp
  0.41%    0.13%  │││     0x00007fbbed2499aa: test   %rbp,%rbp
                  │││╭    0x00007fbbed2499ad: je     0x00007fbbed2499cc  ;*ifnonnull
                  ││││                                                  ; - com.google.re2j.Machine::add@299 (line 388)
                  ││││    0x00007fbbed2499af: mov    %ecx,0x10(%rbp)
                  ││││    0x00007fbbed2499b2: mov    %rbp,%r10
  0.00%           ││││    0x00007fbbed2499b5: shr    $0x9,%r10
  0.05%    0.03%  ││││    0x00007fbbed2499b9: movabs $0x7fbbfe441000,%r11
                  ││││    0x00007fbbed2499c3: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                  ││││                                                  ; - com.google.re2j.Machine::add@317 (line 391)
                  ││││╭   0x00007fbbed2499c7: jmpq   0x00007fbbed249a5d
                  │││↘│   0x00007fbbed2499cc: mov    0x8(%rsp),%r10
                  │││ │   0x00007fbbed2499d1: mov    0x20(%r10),%ebp    ;*getfield pool
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@1 (line 147)
                  │││ │                                                 ; - com.google.re2j.Machine::add@305 (line 389)
  0.01%    0.01%  │││ │   0x00007fbbed2499d5: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007fbbed249f45
  0.36%    0.05%  │││ │   0x00007fbbed2499da: cmp    $0xf8002f22,%r11d  ;   {metadata(&apos;java/util/ArrayList&apos;)}
                  │││ │   0x00007fbbed2499e1: jne    0x00007fbbed249d19
                  │││ │   0x00007fbbed2499e7: lea    (%r12,%rbp,8),%r9  ;*invokeinterface size
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@4 (line 147)
                  │││ │                                                 ; - com.google.re2j.Machine::add@305 (line 389)
                  │││ │   0x00007fbbed2499eb: mov    0x10(%r9),%r8d     ;*getfield size
                  │││ │                                                 ; - java.util.ArrayList::size@1 (line 278)
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@4 (line 147)
                  │││ │                                                 ; - com.google.re2j.Machine::add@305 (line 389)
  0.01%    0.02%  │││ │   0x00007fbbed2499ef: test   %r8d,%r8d
                  │││ │   0x00007fbbed2499f2: jle    0x00007fbbed249d6d  ;*ifle
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@11 (line 148)
                  │││ │                                                 ; - com.google.re2j.Machine::add@305 (line 389)
  0.39%    0.03%  │││ │   0x00007fbbed2499f8: mov    %r8d,%r10d
                  │││ │   0x00007fbbed2499fb: dec    %r10d              ;*isub
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@20 (line 148)
                  │││ │                                                 ; - com.google.re2j.Machine::add@305 (line 389)
                  │││ │   0x00007fbbed2499fe: cmp    %r8d,%r10d
                  │││ │   0x00007fbbed249a01: jge    0x00007fbbed249d91  ;*if_icmplt
                  │││ │                                                 ; - java.util.ArrayList::rangeCheck@5 (line 652)
                  │││ │                                                 ; - java.util.ArrayList::remove@2 (line 492)
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@21 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@305 (line 389)
  0.01%    0.02%  │││ │   0x00007fbbed249a07: incl   0xc(%r9)           ;*putfield modCount
                  │││ │                                                 ; - java.util.ArrayList::remove@12 (line 494)
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@21 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@305 (line 389)
  0.43%    0.02%  │││ │   0x00007fbbed249a0b: mov    0x14(%r9),%ebp     ;*getfield elementData
                  │││ │                                                 ; - java.util.ArrayList::elementData@1 (line 418)
                  │││ │                                                 ; - java.util.ArrayList::remove@17 (line 495)
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@21 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@305 (line 389)
  0.02%    0.01%  │││ │   0x00007fbbed249a0f: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007fbbed249f55
  0.39%    0.03%  │││ │   0x00007fbbed249a14: cmp    %r11d,%r10d
                  │││ │   0x00007fbbed249a17: jae    0x00007fbbed249cf1  ;*aaload
                  │││ │                                                 ; - java.util.ArrayList::elementData@5 (line 418)
                  │││ │                                                 ; - java.util.ArrayList::remove@17 (line 495)
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@21 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@305 (line 389)
                  │││ │   0x00007fbbed249a1d: mov    %r10d,0x10(%r9)    ;*putfield size
                  │││ │                                                 ; - java.util.ArrayList::remove@62 (line 501)
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@21 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@305 (line 389)
                  │││ │   0x00007fbbed249a21: lea    (%r12,%rbp,8),%r10
  0.02%    0.00%  │││ │   0x00007fbbed249a25: mov    0xc(%r10,%r8,4),%ebp  ;*aaload
                  │││ │                                                 ; - java.util.ArrayList::elementData@5 (line 418)
                  │││ │                                                 ; - java.util.ArrayList::remove@17 (line 495)
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@21 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@305 (line 389)
  0.38%    0.18%  │││ │   0x00007fbbed249a2a: mov    %r12d,0xc(%r10,%r8,4)  ;*aastore
                  │││ │                                                 ; - java.util.ArrayList::remove@66 (line 501)
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@21 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@305 (line 389)
                  │││ │   0x00007fbbed249a2f: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007fbbed249f69
           0.00%  │││ │   0x00007fbbed249a34: cmp    $0xf8019c51,%r11d  ;   {metadata(&apos;com/google/re2j/Machine$Thread&apos;)}
                  │││ │   0x00007fbbed249a3b: jne    0x00007fbbed249e69
  0.02%    0.02%  │││ │   0x00007fbbed249a41: shl    $0x3,%rbp          ;*checkcast
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@26 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@305 (line 389)
  0.36%    0.24%  │││ │   0x00007fbbed249a45: mov    %ecx,0x10(%rbp)
  0.00%           │││ │   0x00007fbbed249a48: mov    %rbp,%r10
                  │││ │   0x00007fbbed249a4b: shr    $0x9,%r10
  0.03%    0.01%  │││ │   0x00007fbbed249a4f: movabs $0x7fbbfe441000,%r11
  0.39%    0.00%  │││ │   0x00007fbbed249a59: mov    %r12b,(%r11,%r10,1)  ;*aload
                  │││ │                                                 ; - com.google.re2j.Machine::add@320 (line 393)
           0.01%  │││ ↘   0x00007fbbed249a5d: mov    0x20(%rsp),%rdi
  0.08%    0.03%  │││     0x00007fbbed249a62: mov    0xc(%rdi),%r10d    ;*arraylength
                  │││                                                   ; - com.google.re2j.Machine::add@322 (line 393)
                  │││                                                   ; implicit exception: dispatches to 0x00007fbbed249f35
  0.01%    0.01%  │││     0x00007fbbed249a66: test   %r10d,%r10d
                  │││     0x00007fbbed249a69: jle    0x00007fbbed249d52  ;*ifle
                  │││                                                   ; - com.google.re2j.Machine::add@323 (line 393)
  0.39%    0.00%  │││     0x00007fbbed249a6f: mov    0xc(%rbp),%r11d    ;*getfield cap
                  │││                                                   ; - com.google.re2j.Machine::add@328 (line 393)
  0.00%    0.00%  │││     0x00007fbbed249a73: mov    %r11,%r8
  0.04%    0.04%  │││     0x00007fbbed249a76: shl    $0x3,%r8
           0.02%  │││     0x00007fbbed249a7a: cmp    %rdi,%r8
                  │││  ╭  0x00007fbbed249a7d: je     0x00007fbbed249aaa  ;*if_acmpeq
                  │││  │                                                ; - com.google.re2j.Machine::add@333 (line 393)
  0.37%    0.10%  │││  │  0x00007fbbed249a7f: mov    0xc(%r12,%r11,8),%r9d  ; implicit exception: dispatches to 0x00007fbbed249f85
  0.01%    0.00%  │││  │  0x00007fbbed249a84: lea    (%r12,%r11,8),%rcx  ;*getfield cap
                  │││  │                                                ; - com.google.re2j.Machine::add@328 (line 393)
                  │││  │  0x00007fbbed249a88: cmp    %r10d,%r9d
                  │││  │  0x00007fbbed249a8b: jb     0x00007fbbed249d2d
  0.01%    0.02%  │││  │  0x00007fbbed249a91: lea    0x10(%r12,%r11,8),%rsi
  0.34%    0.22%  │││  │  0x00007fbbed249a96: add    $0x10,%rdi
  0.00%           │││  │  0x00007fbbed249a9a: movslq %r10d,%rdx
                  │││  │  0x00007fbbed249a9d: movabs $0x7fbbed052640,%r10
  0.04%    0.01%  │││  │  0x00007fbbed249aa7: callq  *%r10              ;*aload
                  │││  │                                                ; - com.google.re2j.Machine::add@351 (line 396)
                  │││  ↘  0x00007fbbed249aaa: mov    %rbx,%r10
           0.02%  │││     0x00007fbbed249aad: mov    %rbp,%r11
  0.07%    0.05%  │││     0x00007fbbed249ab0: shr    $0x3,%r11
  0.39%    0.56%  │││     0x00007fbbed249ab4: mov    %r11d,0x10(%rbx)
                  │││     0x00007fbbed249ab8: shr    $0x9,%r10
           0.01%  │││     0x00007fbbed249abc: movabs $0x7fbbfe441000,%r11
  0.04%    0.09%  │││     0x00007fbbed249ac6: mov    %r12b,(%r11,%r10,1)  ;*putfield thread
                  │││                                                   ; - com.google.re2j.Machine::add@355 (line 396)
  0.40%    0.50%  │││     0x00007fbbed249aca: xor    %eax,%eax          ;*synchronization entry
                  │││                                                   ; - com.google.re2j.Machine::add@-1 (line 341)
  0.39%    0.26%  ↘↘↘     0x00007fbbed249acc: add    $0x60,%rsp
  0.01%    0.02%          0x00007fbbed249ad0: pop    %rbp
  0.45%    0.66%          0x00007fbbed249ad1: test   %eax,0x187ef529(%rip)        # 0x00007fbc05a39000
                                                                        ;   {poll_return}
  0.25%    0.53%          0x00007fbbed249ad7: retq                      ;*tableswitch
                                                                        ; - com.google.re2j.Machine::add@47 (line 349)
                          0x00007fbbed249ad8: mov    0x8(%rsp),%rsi
                          0x00007fbbed249add: mov    0x48(%rsp),%rdx
                          0x00007fbbed249ae2: mov    0x1c(%rsp),%r8d
                          0x00007fbbed249ae7: mov    0x20(%rsp),%r9
                          0x00007fbbed249aec: mov    %ebx,%edi
                          0x00007fbbed249aee: mov    0x70(%rsp),%r10
                          0x00007fbbed249af3: mov    %r10,(%rsp)
                          0x00007fbbed249af7: callq  0x00007fbbed046020  ; OopMap{off=1212}
....................................................................................................
 11.20%    6.90%  <total for region 5>

....[Hottest Regions]...............................................................................
 32.62%   28.51%         C2, level 4  com.google.re2j.Machine::add, version 554 (463 bytes) 
 15.21%   16.90%         C2, level 4  com.google.re2j.Machine::step, version 564 (451 bytes) 
 14.18%   20.66%         C2, level 4  com.google.re2j.Machine::step, version 564 (335 bytes) 
 11.73%   13.64%         C2, level 4  com.google.re2j.Machine::step, version 564 (276 bytes) 
 11.20%    6.90%         C2, level 4  com.google.re2j.Machine::add, version 554 (404 bytes) 
  4.26%    5.53%         C2, level 4  com.google.re2j.Machine::match, version 600 (837 bytes) 
  2.86%    1.71%        runtime stub  StubRoutines::jint_disjoint_arraycopy (128 bytes) 
  2.24%    0.92%         C2, level 4  com.google.re2j.Machine::step, version 564 (151 bytes) 
  1.00%    1.00%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.54%    0.58%         C2, level 4  com.google.re2j.Machine::step, version 564 (34 bytes) 
  0.33%    0.33%         C2, level 4  com.google.re2j.Machine::step, version 564 (69 bytes) 
  0.31%    0.12%         C2, level 4  com.google.re2j.Machine::add, version 554 (40 bytes) 
  0.17%    0.01%   [kernel.kallsyms]  [unknown] (47 bytes) 
  0.15%    0.10%         C2, level 4  com.google.re2j.Machine::init, version 614 (130 bytes) 
  0.14%    0.01%   [kernel.kallsyms]  [unknown] (5 bytes) 
  0.10%    0.04%   [kernel.kallsyms]  [unknown] (8 bytes) 
  0.08%    0.03%   [kernel.kallsyms]  [unknown] (5 bytes) 
  0.08%    0.14%         C2, level 4  com.google.re2j.Machine::match, version 600 (106 bytes) 
  0.06%    0.11%           libjvm.so  RelocIterator::initialize (109 bytes) 
  0.05%    0.01%   [kernel.kallsyms]  [unknown] (46 bytes) 
  2.68%    2.74%  <...other 567 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 44.30%   53.07%         C2, level 4  com.google.re2j.Machine::step, version 564 
 44.13%   35.53%         C2, level 4  com.google.re2j.Machine::add, version 554 
  4.41%    5.72%         C2, level 4  com.google.re2j.Machine::match, version 600 
  2.86%    1.71%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
  2.52%    2.11%   [kernel.kallsyms]  [unknown] 
  0.27%    0.14%         C2, level 4  com.google.re2j.Machine::init, version 614 
  0.14%    0.04%         C2, level 4  com.google.re2j.Matcher::find, version 622 
  0.06%    0.11%           libjvm.so  RelocIterator::initialize 
  0.06%    0.04%      hsdis-amd64.so  decode_instructions 
  0.05%    0.04%           libjvm.so  fileStream::write 
  0.05%    0.01%         C2, level 4  com.github.arnaudroger.re2j.Re2jFindRegex::testCombine, version 645 
  0.04%    0.16%        libc-2.26.so  vfprintf 
  0.04%    0.02%           libjvm.so  PSPromotionManager::drain_stacks_depth 
  0.04%           libpthread-2.26.so  __libc_write 
  0.03%    0.07%        libc-2.26.so  _IO_fwrite 
  0.03%    0.06%           libjvm.so  PSPromotionManager::copy_to_survivor_space<false> 
  0.03%    0.04%           libjvm.so  Monitor::ILock 
  0.03%    0.02%           libjvm.so  GenericTaskQueueSet<OverflowTaskQueue<StarTask, (MemoryType)1, 131072u>, (MemoryType)1>::steal_best_of_2 
  0.02%                  interpreter  invoke return entry points  
  0.02%    0.06%           libjvm.so  outputStream::update_position 
  0.84%    0.69%  <...other 126 warm methods...>
....................................................................................................
100.00%   99.64%  <totals>

....[Distribution by Source]........................................................................
 93.37%   94.56%         C2, level 4
  2.87%    1.71%        runtime stub
  2.52%    2.11%   [kernel.kallsyms]
  0.80%    1.01%           libjvm.so
  0.19%    0.45%        libc-2.26.so
  0.11%    0.07%  libpthread-2.26.so
  0.06%    0.05%      hsdis-amd64.so
  0.04%    0.02%         interpreter
  0.03%    0.00%         C1, level 3
  0.00%                             
  0.00%    0.01%              [vdso]
  0.00%    0.00%           libzip.so
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                        Mode  Cnt     Score    Error  Units
Re2jFindRegex.testCombine       thrpt   20  1896.161 ± 12.614  ops/s
Re2jFindRegex.testCombine:·asm  thrpt            NaN             ---
