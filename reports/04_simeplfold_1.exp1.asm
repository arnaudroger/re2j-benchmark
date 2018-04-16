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
# Warmup Iteration   1: 5563.716 ops/s
# Warmup Iteration   2: 9282.205 ops/s
# Warmup Iteration   3: 9576.629 ops/s
# Warmup Iteration   4: 9801.658 ops/s
# Warmup Iteration   5: 9835.873 ops/s
# Warmup Iteration   6: 9683.908 ops/s
# Warmup Iteration   7: 9595.323 ops/s
# Warmup Iteration   8: 9631.422 ops/s
# Warmup Iteration   9: 9790.212 ops/s
# Warmup Iteration  10: 9765.760 ops/s
# Warmup Iteration  11: 9769.054 ops/s
# Warmup Iteration  12: 9905.748 ops/s
# Warmup Iteration  13: 9624.413 ops/s
# Warmup Iteration  14: 9767.321 ops/s
# Warmup Iteration  15: 9715.453 ops/s
# Warmup Iteration  16: 9767.154 ops/s
# Warmup Iteration  17: 9749.231 ops/s
# Warmup Iteration  18: 9869.846 ops/s
# Warmup Iteration  19: 9848.946 ops/s
# Warmup Iteration  20: 9793.583 ops/s
Iteration   1: 9897.594 ops/s
Iteration   2: 9832.789 ops/s
Iteration   3: 9862.432 ops/s
Iteration   4: 9832.882 ops/s
Iteration   5: 9798.750 ops/s
Iteration   6: 9904.372 ops/s
Iteration   7: 9857.794 ops/s
Iteration   8: 9852.098 ops/s
Iteration   9: 9862.667 ops/s
Iteration  10: 9800.218 ops/s
Iteration  11: 9890.906 ops/s
Iteration  12: 9885.509 ops/s
Iteration  13: 9415.518 ops/s
Iteration  14: 9862.912 ops/s
Iteration  15: 9832.767 ops/s
Iteration  16: 9864.314 ops/s
Iteration  17: 9849.432 ops/s
Iteration  18: 9891.127 ops/s
Iteration  19: 9837.549 ops/s
Iteration  20: 9830.429 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  9833.103 ±(99.9%) 89.134 ops/s [Average]
  (min, avg, max) = (9415.518, 9833.103, 9904.372), stdev = 102.647
  CI (99.9%): [9743.968, 9922.237] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1:·asm":
PrintAssembly processed: 216878 total address lines.
Perf output processed (skipped 23.194 seconds):
 Column 1: cycles (20378 events)
 Column 2: instructions (20361 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 543 (329 bytes) 

                       # parm4:    rdi       = int
                       # parm5:    [sp+0x70]   = &apos;com/google/re2j/Machine$Thread&apos;  (sp of caller)
                       0x00007fc791246540: mov    0x8(%rsi),%r10d    ;   {no_reloc}
                       0x00007fc791246544: shl    $0x3,%r10
                       0x00007fc791246548: cmp    %r10,%rax
                       0x00007fc79124654b: jne    0x00007fc791045e20  ;   {runtime_call}
                       0x00007fc791246551: data16 xchg %ax,%ax
                       0x00007fc791246554: nopl   0x0(%rax,%rax,1)
                       0x00007fc79124655c: data16 data16 xchg %ax,%ax
                     [Verified Entry Point]
  1.18%    1.10%       0x00007fc791246560: mov    %eax,-0x14000(%rsp)
  0.64%    0.62%       0x00007fc791246567: push   %rbp
  0.24%    0.25%       0x00007fc791246568: sub    $0x60,%rsp         ;*synchronization entry
                                                                     ; - com.google.re2j.Machine::add@-1 (line 345)
  1.29%    1.21%       0x00007fc79124656c: mov    %edi,0x28(%rsp)
  0.22%    0.39%       0x00007fc791246570: mov    %r9,0x20(%rsp)
  0.30%    0.22%       0x00007fc791246575: mov    %r8d,0x1c(%rsp)
  1.00%    0.72%       0x00007fc79124657a: mov    %rsi,0x8(%rsp)
  0.33%    0.40%       0x00007fc79124657f: mov    %ecx,0x40(%rsp)
  0.24%    0.37%       0x00007fc791246583: test   %ecx,%ecx
                       0x00007fc791246585: je     0x00007fc791246a41  ;*ifne
                                                                     ; - com.google.re2j.Machine::add@1 (line 345)
  0.28%    0.28%       0x00007fc79124658b: mov    %rdx,0x48(%rsp)
  0.95%    0.84%       0x00007fc791246590: mov    0x14(%rdx),%r9d    ;*getfield sparse
                                                                     ; - com.google.re2j.Machine$Queue::contains@1 (line 46)
                                                                     ; - com.google.re2j.Machine::add@9 (line 348)
                                                                     ; implicit exception: dispatches to 0x00007fc791246b68
  0.24%    0.47%       0x00007fc791246594: mov    0xc(%r12,%r9,8),%r10d  ; implicit exception: dispatches to 0x00007fc791246b79
  0.27%    0.31%       0x00007fc791246599: cmp    %r10d,%ecx
                       0x00007fc79124659c: jae    0x00007fc79124693a  ;*iaload
                                                                     ; - com.google.re2j.Machine$Queue::contains@5 (line 46)
                                                                     ; - com.google.re2j.Machine::add@9 (line 348)
  0.32%    0.27%       0x00007fc7912465a2: mov    0x10(%rdx),%ecx    ;*getfield dense
                                                                     ; - com.google.re2j.Machine$Queue::contains@18 (line 50)
                                                                     ; - com.google.re2j.Machine::add@9 (line 348)
  0.99%    0.85%       0x00007fc7912465a5: mov    0xc(%rdx),%r8d     ;*getfield size
                                                                     ; - com.google.re2j.Machine$Queue::contains@9 (line 47)
                                                                     ; - com.google.re2j.Machine::add@9 (line 348)
  0.29%    0.34%       0x00007fc7912465a9: lea    (%r12,%r9,8),%rdi
  0.25%    0.33%       0x00007fc7912465ad: mov    0x40(%rsp),%r11d
  0.72%    0.53%       0x00007fc7912465b2: mov    0x10(%rdi,%r11,4),%ebp  ;*iaload
                                                                     ; - com.google.re2j.Machine$Queue::contains@5 (line 46)
                                                                     ; - com.google.re2j.Machine::add@9 (line 348)
  1.07%    0.86%       0x00007fc7912465b7: cmp    %r8d,%ebp
                  ╭    0x00007fc7912465ba: jl     0x00007fc791246680  ;*iastore
                  │                                                  ; - com.google.re2j.Machine$Queue::add@18 (line 58)
                  │                                                  ; - com.google.re2j.Machine::add@20 (line 351)
  1.44%    1.47%  │ ↗  0x00007fc7912465c0: mov    %r8d,%r11d
  0.21%    0.15%  │ │  0x00007fc7912465c3: inc    %r11d
  0.09%    0.05%  │ │  0x00007fc7912465c6: mov    %r11d,0xc(%rdx)    ;*putfield size
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@8 (line 57)
                  │ │                                                ; - com.google.re2j.Machine::add@20 (line 351)
  0.39%    0.22%  │ │  0x00007fc7912465ca: mov    0x40(%rsp),%ebx
  1.08%    1.02%  │ │  0x00007fc7912465ce: cmp    %r10d,%ebx
                  │ │  0x00007fc7912465d1: jae    0x00007fc791246979
  0.22%    0.23%  │ │  0x00007fc7912465d7: mov    %r8d,0x10(%rdi,%rbx,4)  ;*iastore
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@18 (line 58)
                  │ │                                                ; - com.google.re2j.Machine::add@20 (line 351)
  0.80%    0.71%  │ │  0x00007fc7912465dc: mov    0xc(%r12,%rcx,8),%r10d  ; implicit exception: dispatches to 0x00007fc791246b8d
  0.37%    0.17%  │ │  0x00007fc7912465e1: cmp    %r10d,%r8d
                  │ │  0x00007fc7912465e4: jae    0x00007fc7912469c5  ;*aaload
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@24 (line 59)
                  │ │                                                ; - com.google.re2j.Machine::add@20 (line 351)
  0.80%    0.93%  │ │  0x00007fc7912465ea: lea    (%r12,%rcx,8),%r10  ;*getfield dense
                  │ │                                                ; - com.google.re2j.Machine$Queue::contains@18 (line 50)
                  │ │                                                ; - com.google.re2j.Machine::add@9 (line 348)
  0.19%    0.26%  │ │  0x00007fc7912465ee: mov    %r10,0x38(%rsp)
  0.32%    0.28%  │ │  0x00007fc7912465f3: lea    0x10(%r10,%r8,4),%rbp
  0.38%    0.44%  │ │  0x00007fc7912465f8: mov    0x0(%rbp),%r11d    ;*aaload
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@24 (line 59)
                  │ │                                                ; - com.google.re2j.Machine::add@20 (line 351)
  0.79%    0.95%  │ │  0x00007fc7912465fc: test   %r11d,%r11d
                  │╭│  0x00007fc7912465ff: je     0x00007fc7912466b3  ;*ifnonnull
                  │││                                                ; - com.google.re2j.Machine$Queue::add@27 (line 60)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 351)
  0.25%    0.22%  │││  0x00007fc791246605: lea    (%r12,%r11,8),%rbx  ;*aload_3
                  │││                                                ; - com.google.re2j.Machine$Queue::add@45 (line 63)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 351)
  0.35%    0.39%  │││  0x00007fc791246609: mov    0x40(%rsp),%r11d
  0.46%    0.36%  │││  0x00007fc79124660e: mov    %r11d,0xc(%rbx)    ;*putfield pc
                  │││                                                ; - com.google.re2j.Machine$Queue::add@52 (line 64)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 351)
  1.16%    0.89%  │││  0x00007fc791246612: mov    0x8(%rsp),%r10
  0.15%    0.29%  │││  0x00007fc791246617: mov    0x18(%r10),%r10d   ;*getfield prog
                  │││                                                ; - com.google.re2j.Machine::add@26 (line 352)
  0.49%    0.56%  │││  0x00007fc79124661b: mov    %r12d,0x10(%rbx)   ;*putfield thread
                  │││                                                ; - com.google.re2j.Machine$Queue::add@47 (line 63)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 351)
  0.56%    0.83%  │││  0x00007fc79124661f: mov    0x18(%r12,%r10,8),%ebp  ;*getfield inst
                  │││                                                ; - com.google.re2j.Prog::getInst@1 (line 30)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 352)
                  │││                                                ; implicit exception: dispatches to 0x00007fc791246ba1
  1.18%    1.14%  │││  0x00007fc791246624: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007fc791246bb5
  1.36%    1.39%  │││  0x00007fc791246629: mov    0x40(%rsp),%r10d
  0.22%    0.30%  │││  0x00007fc79124662e: cmp    %r11d,%r10d
                  │││  0x00007fc791246631: jae    0x00007fc791246a09
  1.15%    1.54%  │││  0x00007fc791246637: lea    (%r12,%rbp,8),%r10
  0.68%    0.67%  │││  0x00007fc79124663b: mov    0x40(%rsp),%r8d
  0.07%    0.15%  │││  0x00007fc791246640: mov    0x10(%r10,%r8,4),%r11d  ;*aaload
                  │││                                                ; - com.google.re2j.Prog::getInst@5 (line 30)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 352)
  0.32%    0.35%  │││  0x00007fc791246645: mov    %r11d,0x30(%rsp)
  0.88%    1.02%  │││  0x00007fc79124664a: mov    0xc(%r12,%r11,8),%r11d  ;*getfield op
                  │││                                                ; - com.google.re2j.Machine::add@37 (line 353)
                  │││                                                ; implicit exception: dispatches to 0x00007fc791246bc9
  2.49%    2.53%  │││  0x00007fc79124664f: mov    %r11d,%r8d
  0.02%    0.04%  │││  0x00007fc791246652: dec    %r8d
  1.13%    1.35%  │││  0x00007fc791246655: cmp    $0xc,%r8d
                  │││  0x00007fc791246659: jae    0x00007fc791246a31  ;*tableswitch
                  │││                                                ; - com.google.re2j.Machine::add@40 (line 353)
  1.32%    1.21%  │││  0x00007fc79124665f: mov    0x30(%rsp),%r8d
  0.30%    0.28%  │││  0x00007fc791246664: mov    0x10(%r12,%r8,8),%ecx  ;*getfield out
                  │││                                                ; - com.google.re2j.Machine::add@197 (line 373)
  4.15%    4.22%  │││  0x00007fc791246669: mov    0x14(%r12,%r8,8),%r10d  ;*getfield arg
                  │││                                                ; - com.google.re2j.Machine::add@160 (line 367)
  0.30%    0.26%  │││  0x00007fc79124666e: movslq %r11d,%r11
  0.04%    0.06%  │││  0x00007fc791246671: movabs $0x7fc7912464e0,%r8  ;   {section_word}
  0.02%    0.05%  │││  0x00007fc79124667b: jmpq   *-0x8(%r8,%r11,8)  ;*tableswitch
                  │││                                                ; - com.google.re2j.Machine::add@40 (line 353)
                  ↘││  0x00007fc791246680: mov    0xc(%r12,%rcx,8),%r11d  ; implicit exception: dispatches to 0x00007fc791246c35
  0.00%    0.00%   ││  0x00007fc791246685: cmp    %r11d,%ebp
                   ││  0x00007fc791246688: jae    0x00007fc791246b0d
           0.01%   ││  0x00007fc79124668e: lea    (%r12,%rcx,8),%r11
                   ││  0x00007fc791246692: mov    0x10(%r11,%rbp,4),%ebp  ;*aaload
                   ││                                                ; - com.google.re2j.Machine$Queue::contains@22 (line 50)
                   ││                                                ; - com.google.re2j.Machine::add@9 (line 348)
           0.01%   ││  0x00007fc791246697: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007fc791246c45
  0.06%    0.05%   ││  0x00007fc79124669c: mov    0x40(%rsp),%ebx
  0.00%    0.00%   ││  0x00007fc7912466a0: cmp    %ebx,%r11d
                   │╰  0x00007fc7912466a3: jne    0x00007fc7912465c0
  0.01%            │   0x00007fc7912466a9: mov    0x70(%rsp),%rax
                   │   0x00007fc7912466ae: jmpq   0x00007fc791246907
                   ↘   0x00007fc7912466b3: mov    0x60(%r15),%rbx
                       0x00007fc7912466b7: mov    %rbx,%r10
                       0x00007fc7912466ba: add    $0x18,%r10
                       0x00007fc7912466be: cmp    0x70(%r15),%r10
                       0x00007fc7912466c2: jae    0x00007fc791246b35
                       0x00007fc7912466c8: mov    %r10,0x60(%r15)
                       0x00007fc7912466cc: prefetchnta 0xc0(%r10)
                       0x00007fc7912466d4: mov    $0xf8019b52,%r11d  ;   {metadata(&apos;com/google/re2j/Machine$Queue$Entry&apos;)}
                       0x00007fc7912466da: movabs $0x0,%r10
....................................................................................................
 37.04%   37.42%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 548 (509 bytes) 

                                                                                 ; - com.google.re2j.Machine::step@246 (line 298)
                                   0x00007fc7912486ff: mov    0x8(%rsp),%r8
                                   0x00007fc791248704: mov    %r12d,0xc(%r8)     ;*putfield size
                                                                                 ; - com.google.re2j.Machine::step@283 (line 304)
                                   0x00007fc791248708: mov    0x28(%rsp),%r8
                                   0x00007fc79124870d: movb   $0x1,0x10(%r8)     ;*putfield matched
                                                                                 ; - com.google.re2j.Machine::step@288 (line 306)
                                   0x00007fc791248712: mov    0x20(%rsp),%r9d
                  ╭                0x00007fc791248717: jmp    0x00007fc791248766  ;*aload
                  │                                                              ; - com.google.re2j.Machine::step@294 (line 311)
  0.17%    0.38%  │      ↗         0x00007fc791248719: cmp    $0xc,%r9d
                  │      │         0x00007fc79124871d: jne    0x00007fc791248b4d  ;*if_icmpne
                  │      │                                                       ; - com.google.re2j.Inst::matchRune@29 (line 59)
                  │      │                                                       ; - com.google.re2j.Machine::step@298 (line 311)
  0.10%    0.12%  │      │         0x00007fc791248723: mov    0x18(%r12,%rbx,8),%r9d  ;*getfield f0
                  │      │                                                       ; - com.google.re2j.Inst::matchRune@33 (line 60)
                  │      │                                                       ; - com.google.re2j.Machine::step@298 (line 311)
  0.00%           │      │         0x00007fc791248728: cmp    0x20(%rsp),%r9d
                  │╭     │         0x00007fc79124872d: je     0x00007fc791248882  ;*if_icmpeq
                  ││     │                                                       ; - com.google.re2j.Inst::matchRune@37 (line 60)
                  ││     │                                                       ; - com.google.re2j.Machine::step@298 (line 311)
  0.21%    0.30%  ││     │         0x00007fc791248733: mov    0x1c(%r12,%rbx,8),%r9d  ;*getfield f1
                  ││     │                                                       ; - com.google.re2j.Inst::matchRune@41 (line 60)
                  ││     │                                                       ; - com.google.re2j.Machine::step@298 (line 311)
  0.01%    0.00%  ││     │         0x00007fc791248738: cmp    0x20(%rsp),%r9d
                  ││╭    │         0x00007fc79124873d: je     0x00007fc791248882  ;*if_icmpeq
                  │││    │                                                       ; - com.google.re2j.Inst::matchRune@45 (line 60)
                  │││    │                                                       ; - com.google.re2j.Machine::step@298 (line 311)
  0.28%    0.39%  │││    │         0x00007fc791248743: mov    0x20(%r12,%rbx,8),%ebp  ;*getfield f2
                  │││    │                                                       ; - com.google.re2j.Inst::matchRune@49 (line 60)
                  │││    │                                                       ; - com.google.re2j.Machine::step@298 (line 311)
  0.02%    0.01%  │││    │         0x00007fc791248748: cmp    0x20(%rsp),%ebp
                  │││    │         0x00007fc79124874c: je     0x00007fc791248b95  ;*if_icmpeq
                  │││    │                                                       ; - com.google.re2j.Inst::matchRune@53 (line 60)
                  │││    │                                                       ; - com.google.re2j.Machine::step@298 (line 311)
  0.08%    0.14%  │││    │         0x00007fc791248752: mov    0x24(%r12,%rbx,8),%ebp  ;*getfield f3
                  │││    │                                                       ; - com.google.re2j.Inst::matchRune@57 (line 60)
                  │││    │                                                       ; - com.google.re2j.Machine::step@298 (line 311)
  0.01%    0.01%  │││    │         0x00007fc791248757: cmp    0x20(%rsp),%ebp
                  │││    │         0x00007fc79124875b: je     0x00007fc791248bc9  ;*if_icmpne
                  │││    │                                                       ; - com.google.re2j.Inst::matchRune@61 (line 60)
                  │││    │                                                       ; - com.google.re2j.Machine::step@298 (line 311)
  0.25%    0.36%  │││    │         0x00007fc791248761: mov    0x20(%rsp),%r9d    ;*goto
                  │││    │                                                       ; - com.google.re2j.Machine::step@291 (line 307)
  0.02%    0.02%  ↘││    │ ↗    ↗  0x00007fc791248766: mov    %r11,%rcx          ;*aload
                   ││    │ │    │                                                ; - com.google.re2j.Machine::step@389 (line 332)
                   ││    │ │  ↗ │  0x00007fc791248769: mov    0x28(%rsp),%r11
                   ││    │ │  │ │  0x00007fc79124876e: mov    0x24(%r11),%ebx    ;*getfield pool
                   ││    │ │  │ │                                                ; - com.google.re2j.Machine::free@5 (line 160)
                   ││    │ │  │ │                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.63%    0.95%   ││    │ │  │ │  0x00007fc791248772: mov    0xc(%r12,%rbx,8),%r11d  ;*arraylength
                   ││    │ │  │ │                                                ; - com.google.re2j.Machine::free@8 (line 160)
                   ││    │ │  │ │                                                ; - com.google.re2j.Machine::step@397 (line 333)
                   ││    │ │  │ │                                                ; implicit exception: dispatches to 0x00007fc791248c89
  0.04%    0.06%   ││    │ │  │ │  0x00007fc791248777: mov    0x28(%rsp),%r8
                   ││    │ │  │ │  0x00007fc79124877c: mov    0xc(%r8),%ebp      ;*getfield poolSize
                   ││    │ │  │ │                                                ; - com.google.re2j.Machine::free@1 (line 160)
                   ││    │ │  │ │                                                ; - com.google.re2j.Machine::step@397 (line 333)
                   ││    │ │  │ │  0x00007fc791248780: cmp    %r11d,%ebp
                   ││    │ │  │ │  0x00007fc791248783: jge    0x00007fc791248b05  ;*if_icmplt
                   ││    │ │  │ │                                                ; - com.google.re2j.Machine::free@9 (line 160)
                   ││    │ │  │ │                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.67%    0.91%   ││    │ │  │ │  0x00007fc791248789: mov    %ebp,%r8d
  0.03%    0.01%   ││    │ │  │ │  0x00007fc79124878c: inc    %r8d
  0.00%            ││    │ │  │ │  0x00007fc79124878f: mov    0x28(%rsp),%rdi
                   ││    │ │  │ │  0x00007fc791248794: mov    %r8d,0xc(%rdi)     ;*putfield poolSize
                   ││    │ │  │ │                                                ; - com.google.re2j.Machine::free@45 (line 163)
                   ││    │ │  │ │                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.67%    1.00%   ││    │ │  │ │  0x00007fc791248798: cmp    %r11d,%ebp
                   ││    │ │  │ │  0x00007fc79124879b: jae    0x00007fc791248a09  ;*aastore
                   ││    │ │  │ │                                                ; - com.google.re2j.Machine::free@49 (line 163)
                   ││    │ │  │ │                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.05%    0.03%   ││    │ │  │ │  0x00007fc7912487a1: mov    %rcx,%r11
  0.00%    0.00%   ││    │ │  │ │  0x00007fc7912487a4: shr    $0x3,%r11
                   ││    │ │  │ │  0x00007fc7912487a8: lea    (%r12,%rbx,8),%r10  ;*getfield pool
                   ││    │ │  │ │                                                ; - com.google.re2j.Machine::free@5 (line 160)
                   ││    │ │  │ │                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.76%    0.90%   ││    │ │  │ │  0x00007fc7912487ac: lea    0x10(%r10,%rbp,4),%r10
  0.04%    0.05%   ││    │ │  │ │  0x00007fc7912487b1: mov    %r11d,(%r10)
  0.02%            ││    │ │  │ │  0x00007fc7912487b4: shr    $0x9,%r10
                   ││    │ │  │ │  0x00007fc7912487b8: movabs $0x7fc7a0cdd000,%r11
  0.64%    0.79%   ││    │ │  │ │  0x00007fc7912487c2: mov    %r12b,(%r11,%r10,1)  ;*aastore
                   ││    │ │  │ │                                                ; - com.google.re2j.Machine::free@49 (line 163)
                   ││    │ │  │ │                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.06%    0.05%   ││    │ │  │ │  0x00007fc7912487c6: xor    %r10d,%r10d        ; OopMap{[8]=Oop [24]=Oop [40]=Oop off=521}
                   ││    │ │  │ │                                                ;*goto
                   ││    │ │  │ │                                                ; - com.google.re2j.Machine::step@403 (line 270)
  0.27%    0.44%   ││  ↗ │ │ ↗│ │  0x00007fc7912487c9: test   %eax,0x1708c831(%rip)        # 0x00007fc7a82d5000
                   ││  │ │ │ ││ │                                                ;*goto
                   ││  │ │ │ ││ │                                                ; - com.google.re2j.Machine::step@403 (line 270)
                   ││  │ │ │ ││ │                                                ;   {poll}
  0.41%    0.45%   ││  │ │ │ ││ │  0x00007fc7912487cf: mov    0x8(%rsp),%r10
  1.02%    0.98%   ││  │ │ │ ││ │  0x00007fc7912487d4: mov    0xc(%r10),%r10d
  0.04%    0.03%   ││  │ │ │ ││ │  0x00007fc7912487d8: cmp    %r10d,%eax
                   ││╭ │ │ │ ││ │  0x00007fc7912487db: jge    0x00007fc791248909
  0.24%    0.28%   │││ │ │ │ ││ │  0x00007fc7912487e1: mov    %r9d,0x20(%rsp)
  0.53%    0.58%   │││ │ │ │ ││ │  0x00007fc7912487e6: mov    %eax,%r10d         ;*aload_1
                   │││ │ │ │ ││ │                                                ; - com.google.re2j.Machine::step@21 (line 271)
  0.87%    0.70%   │││ │ │ │ ││ │  0x00007fc7912487e9: mov    0x8(%rsp),%r11
  0.08%    0.08%   │││ │ │ │ ││ │  0x00007fc7912487ee: mov    0x10(%r11),%r8d    ;*getfield dense
                   │││ │ │ │ ││ │                                                ; - com.google.re2j.Machine::step@22 (line 271)
  0.43%    0.47%   │││ │ │ │ ││ │  0x00007fc7912487f2: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x00007fc791248c65
  1.02%    1.04%   │││ │ │ │ ││ │  0x00007fc7912487f7: cmp    %r11d,%r10d
                   │││ │ │ │ ││ │  0x00007fc7912487fa: jae    0x00007fc7912489cb
  0.89%    0.72%   │││ │ │ │ ││ │  0x00007fc791248800: lea    (%r12,%r8,8),%r11
  0.02%    0.03%   │││ │ │ │ ││ │  0x00007fc791248804: mov    0x10(%r11,%r10,4),%r9d  ;*aaload
                   │││ │ │ │ ││ │                                                ; - com.google.re2j.Machine::step@27 (line 271)
  0.20%    0.30%   │││ │ │ │ ││ │  0x00007fc791248809: mov    0x10(%r12,%r9,8),%r8d  ;*getfield thread
                   │││ │ │ │ ││ │                                                ; - com.google.re2j.Machine::step@40 (line 275)
                   │││ │ │ │ ││ │                                                ; implicit exception: dispatches to 0x00007fc791248c99
  1.44%    2.22%   │││ │ │ │ ││ │  0x00007fc79124880e: mov    %r10d,%eax
  0.85%    0.41%   │││ │ │ │ ││ │  0x00007fc791248811: inc    %eax               ;*iadd
                   │││ │ │ │ ││ │                                                ; - com.google.re2j.Machine::step@237 (line 298)
  0.02%    0.01%   │││ │ │ │ ││ │  0x00007fc791248813: test   %r8d,%r8d
                   │││╭│ │ │ ││ │  0x00007fc791248816: jne    0x00007fc791248824  ;*ifnonnull
                   │││││ │ │ ││ │                                                ; - com.google.re2j.Machine::step@47 (line 276)
  0.51%    0.63%   │││││ │ │ ││ │  0x00007fc791248818: mov    0x24(%rsp),%r10d
  0.30%    0.27%   │││││ │ │ ││ │  0x00007fc79124881d: mov    0x20(%rsp),%r9d
  0.00%    0.00%   ││││╰ │ │ ││ │  0x00007fc791248822: jmp    0x00007fc7912487c9
  0.02%    0.03%   │││↘  │ │ ││ │  0x00007fc791248824: mov    0x24(%rsp),%r9d
  0.24%    0.17%   │││   │ │ ││ │  0x00007fc791248829: test   %r9d,%r9d
                   │││   │ │ ││ │  0x00007fc79124882c: jne    0x00007fc791248abd  ;*ifeq
                   │││   │ │ ││ │                                                ; - com.google.re2j.Machine::step@55 (line 279)
  0.78%    0.60%   │││   │ │ ││ │  0x00007fc791248832: mov    0x10(%r12,%r8,8),%ebx  ;*getfield inst
                   │││   │ │ ││ │                                                ; - com.google.re2j.Machine::step@101 (line 283)
  0.57%    0.47%   │││   │ │ ││ │  0x00007fc791248837: mov    0xc(%r12,%rbx,8),%r9d  ;*getfield op
                   │││   │ │ ││ │                                                ; - com.google.re2j.Machine::step@111 (line 285)
                   │││   │ │ ││ │                                                ; implicit exception: dispatches to 0x00007fc791248c79
  2.61%    2.32%   │││   │ │ ││ │  0x00007fc79124883c: mov    0xc(%r12,%r8,8),%r14d  ;*getfield cap
                   │││   │ │ ││ │                                                ; - com.google.re2j.Machine::step@172 (line 292)
  0.02%    0.02%   │││   │ │ ││ │  0x00007fc791248841: lea    (%r12,%r8,8),%r11  ;*getfield thread
                   │││   │ │ ││ │                                                ; - com.google.re2j.Machine::step@40 (line 275)
  0.22%    0.23%   │││   │ │ ││ │  0x00007fc791248845: cmp    $0x9,%r9d
                   │││  ╭│ │ ││ │  0x00007fc791248849: je     0x00007fc7912488de
  0.46%    0.53%   │││  ││ │ ││ │  0x00007fc79124884f: cmp    $0x9,%r9d
                   │││  ││ │ ││ │  0x00007fc791248853: jle    0x00007fc79124862d
  0.20%    0.20%   │││  ││ │ ││ │  0x00007fc791248859: cmp    $0xc,%r9d
                   │││  │╰ │ ││ │  0x00007fc79124885d: je     0x00007fc791248719
  0.25%    0.21%   │││  │  │ ││ │  0x00007fc791248863: cmp    $0xc,%r9d
                   │││  │  │ ││ │  0x00007fc791248867: jg     0x00007fc791248b3d
  0.06%    0.06%   │││  │  │ ││ │  0x00007fc79124886d: cmp    $0xb,%r9d
                   │││  │ ╭│ ││ │  0x00007fc791248871: jne    0x00007fc791248882  ;*tableswitch
                   │││  │ ││ ││ │                                                ; - com.google.re2j.Machine::step@114 (line 285)
                   │││  │ ││ ││ │  0x00007fc791248873: mov    0x20(%rsp),%r9d
                   │││  │ ││ ││ │  0x00007fc791248878: cmp    $0xa,%r9d
                   │││  │ │╰ ││ │  0x00007fc79124887c: je     0x00007fc791248766  ;*ifeq
                   │││  │ │  ││ │                                                ; - com.google.re2j.Machine::step@363 (line 329)
  0.31%    0.21%   ↘↘│  │ ↘  ││↗│  0x00007fc791248882: mov    %eax,0x74(%rsp)
  0.08%    0.03%     │  │    ││││  0x00007fc791248886: mov    %r10d,%ebp
  0.03%    0.03%     │  │    ││││  0x00007fc791248889: mov    0x10(%r12,%rbx,8),%ecx  ;*getfield out
                     │  │    ││││                                                ; - com.google.re2j.Machine::step@370 (line 330)
  0.05%    0.02%     │  │    ││││  0x00007fc79124888e: mov    %r14,%r9
  0.23%    0.11%     │  │    ││││  0x00007fc791248891: shl    $0x3,%r9           ;*getfield cap
                     │  │    ││││                                                ; - com.google.re2j.Machine::step@172 (line 292)
  0.01%    0.01%     │  │    ││││  0x00007fc791248895: mov    0x28(%rsp),%rsi
  0.02%    0.01%     │  │    ││││  0x00007fc79124889a: mov    0x18(%rsp),%rdx
  0.03%    0.02%     │  │    ││││  0x00007fc79124889f: mov    0x14(%rsp),%r8d
  0.19%    0.17%     │  │    ││││  0x00007fc7912488a4: mov    0x70(%rsp),%edi
  0.00%              │  │    ││││  0x00007fc7912488a8: mov    %r11,(%rsp)
  0.04%    0.01%     │  │    ││││  0x00007fc7912488ac: data16 xchg %ax,%ax
  0.02%    0.05%     │  │    ││││  0x00007fc7912488af: callq  0x00007fc791046020  ; OopMap{[8]=Oop [24]=Oop [40]=Oop off=756}
                     │  │    ││││                                                ;*invokespecial add
                     │  │    ││││                                                ; - com.google.re2j.Machine::step@384 (line 330)
                     │  │    ││││                                                ;   {optimized virtual_call}
  0.00%    0.00%     │  │    ││││  0x00007fc7912488b4: mov    %rax,%rcx
                     │  │    ││││  0x00007fc7912488b7: test   %rax,%rax
                     │  │   ╭││││  0x00007fc7912488ba: jne    0x00007fc7912488cd  ;*ifnull
                     │  │   │││││                                                ; - com.google.re2j.Machine::step@391 (line 332)
                     │  │   │││││  0x00007fc7912488bc: xor    %r10d,%r10d
  0.18%    0.34%     │  │   │││││  0x00007fc7912488bf: mov    0x20(%rsp),%r9d
  0.00%    0.00%     │  │   │││││  0x00007fc7912488c4: mov    0x74(%rsp),%eax
                     │  │   │╰│││  0x00007fc7912488c8: jmpq   0x00007fc7912487c9
  0.00%              │  │   ↘ │││  0x00007fc7912488cd: mov    0x20(%rsp),%r9d
                     │  │     │││  0x00007fc7912488d2: mov    %ebp,%r10d
                     │  │     │││  0x00007fc7912488d5: mov    0x74(%rsp),%eax
           0.00%     │  │     ╰││  0x00007fc7912488d9: jmpq   0x00007fc791248769
  0.27%    0.18%     │  ↘      ││  0x00007fc7912488de: mov    0x28(%r12,%rbx,8),%ebp  ;*getfield runes
                     │         ││                                                ; - com.google.re2j.Machine::step@310 (line 315)
  0.03%    0.02%     │         ││  0x00007fc7912488e3: mov    0xc(%r12,%rbp,8),%r9d  ; implicit exception: dispatches to 0x00007fc791248d15
  2.33%    2.07%     │         ││  0x00007fc7912488e8: test   %r9d,%r9d
                     │         ││  0x00007fc7912488eb: jbe    0x00007fc791248a89  ;*iaload
                     │         ││                                                ; - com.google.re2j.Machine::step@314 (line 315)
  0.50%    0.64%     │         ││  0x00007fc7912488f1: mov    0x10(%r12,%rbp,8),%r8d
  0.01%    0.02%     │         ││  0x00007fc7912488f6: mov    0x20(%rsp),%r9d
                     │         ││  0x00007fc7912488fb: cmp    %r8d,%r9d
                     │         ╰│  0x00007fc7912488fe: je     0x00007fc791248882  ;*if_icmpne
                     │          │                                                ; - com.google.re2j.Machine::step@315 (line 315)
  0.42%    0.59%     │          ╰  0x00007fc791248904: jmpq   0x00007fc791248766  ;*if_icmpge
                     │                                                           ; - com.google.re2j.Machine::step@18 (line 270)
           0.00%     ↘             0x00007fc791248909: mov    0x8(%rsp),%r10
                                   0x00007fc79124890e: mov    %r12d,0xc(%r10)    ;*getfield size
                                                                                 ; - com.google.re2j.Machine::step@15 (line 270)
  0.17%    0.34%                   0x00007fc791248912: add    $0x60,%rsp
  0.02%    0.02%                   0x00007fc791248916: pop    %rbp
                                   0x00007fc791248917: test   %eax,0x1708c6e3(%rip)        # 0x00007fc7a82d5000
                                                                                 ;   {poll_return}
                                   0x00007fc79124891d: retq   
                                   0x00007fc79124891e: xchg   %ax,%ax
                                   0x00007fc791248920: mov    %ecx,0x34(%rsp)
                                   0x00007fc791248924: mov    %r9,0x40(%rsp)
                                   0x00007fc791248929: mov    %r11,0x38(%rsp)
                                   0x00007fc79124892e: mov    %ebx,0x30(%rsp)
                                   0x00007fc791248932: mov    %eax,0x7c(%rsp)
                                   0x00007fc791248936: mov    %r8d,0x74(%rsp)
....................................................................................................
 24.31%   25.96%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 543 (351 bytes) 

                          0x00007fc79124679a: mov    %r10,(%rsp)
                          0x00007fc79124679e: nop
                          0x00007fc79124679f: callq  0x00007fc791046020  ; OopMap{off=612}
                                                                        ;*invokespecial add
                                                                        ; - com.google.re2j.Machine::add@207 (line 373)
                                                                        ;   {optimized virtual_call}
                  ╭       0x00007fc7912467a4: jmpq   0x00007fc791246907
                  │       0x00007fc7912467a9: mov    0x70(%rsp),%rax
                  │╭      0x00007fc7912467ae: jmpq   0x00007fc791246907  ;*tableswitch
                  ││                                                    ; - com.google.re2j.Machine::add@40 (line 353)
  1.26%    1.29%  ││      0x00007fc7912467b3: mov    0x30(%rsp),%r11d
                  ││      0x00007fc7912467b8: lea    (%r12,%r11,8),%rbp  ;*aaload
                  ││                                                    ; - com.google.re2j.Prog::getInst@5 (line 30)
                  ││                                                    ; - com.google.re2j.Machine::add@30 (line 352)
                  ││      0x00007fc7912467bc: mov    0x8(%rsp),%rsi
                  ││      0x00007fc7912467c1: mov    0x48(%rsp),%rdx
  0.45%    0.47%  ││      0x00007fc7912467c6: mov    0x1c(%rsp),%r8d
                  ││      0x00007fc7912467cb: mov    0x20(%rsp),%r9
           0.00%  ││      0x00007fc7912467d0: mov    0x28(%rsp),%edi
  0.01%           ││      0x00007fc7912467d4: mov    0x70(%rsp),%r10
  0.46%    0.60%  ││      0x00007fc7912467d9: mov    %r10,(%rsp)
           0.00%  ││      0x00007fc7912467dd: xchg   %ax,%ax
  0.01%           ││      0x00007fc7912467df: callq  0x00007fc791046020  ; OopMap{rbp=Oop [8]=Oop [32]=Oop [48]=NarrowOop [72]=Oop off=676}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@131 (line 362)
                  ││                                                    ;   {optimized virtual_call}
  0.23%    0.23%  ││      0x00007fc7912467e4: mov    0x30(%rsp),%r10d
  0.23%    0.42%  ││      0x00007fc7912467e9: mov    0x14(%r12,%r10,8),%ecx  ;*getfield arg
                  ││                                                    ; - com.google.re2j.Machine::add@140 (line 363)
  0.01%    0.02%  ││      0x00007fc7912467ee: mov    0x8(%rsp),%rsi
  0.26%    0.18%  ││      0x00007fc7912467f3: mov    0x48(%rsp),%rdx
  0.23%    0.28%  ││      0x00007fc7912467f8: mov    0x1c(%rsp),%r8d
                  ││      0x00007fc7912467fd: mov    0x20(%rsp),%r9
  0.01%    0.01%  ││      0x00007fc791246802: mov    0x28(%rsp),%edi
  0.22%    0.19%  ││      0x00007fc791246806: mov    %rax,(%rsp)
  0.23%    0.30%  ││      0x00007fc79124680a: nop
                  ││      0x00007fc79124680b: callq  0x00007fc791046020  ; OopMap{off=720}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@150 (line 363)
                  ││                                                    ;   {optimized virtual_call}
           0.00%  ││╭     0x00007fc791246810: jmpq   0x00007fc791246907  ;*aload
                  │││                                                   ; - com.google.re2j.Machine::add@297 (line 393)
  2.22%    2.62%  │││     0x00007fc791246815: mov    0x70(%rsp),%rbp
  0.00%           │││     0x00007fc79124681a: test   %rbp,%rbp
                  │││╭    0x00007fc79124681d: je     0x00007fc79124683f  ;*ifnonnull
                  ││││                                                  ; - com.google.re2j.Machine::add@299 (line 393)
                  ││││    0x00007fc79124681f: mov    0x30(%rsp),%r10d
  0.03%    0.04%  ││││    0x00007fc791246824: mov    %r10d,0x10(%rbp)
  0.19%    0.21%  ││││    0x00007fc791246828: mov    %rbp,%r10
                  ││││    0x00007fc79124682b: shr    $0x9,%r10
                  ││││    0x00007fc79124682f: movabs $0x7fc7a0cdd000,%r11
  0.00%    0.02%  ││││    0x00007fc791246839: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                  ││││                                                  ; - com.google.re2j.Machine::add@317 (line 396)
  0.25%    0.20%  ││││╭   0x00007fc79124683d: jmp    0x00007fc791246898
  0.78%    0.71%  │││↘│   0x00007fc79124683f: mov    0x8(%rsp),%r10
                  │││ │   0x00007fc791246844: mov    0xc(%r10),%r8d     ;*getfield poolSize
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@1 (line 148)
                  │││ │                                                 ; - com.google.re2j.Machine::add@305 (line 394)
                  │││ │   0x00007fc791246848: test   %r8d,%r8d
                  │││ │   0x00007fc79124684b: jle    0x00007fc791246ac1  ;*ifle
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@4 (line 148)
                  │││ │                                                 ; - com.google.re2j.Machine::add@305 (line 394)
           0.00%  │││ │   0x00007fc791246851: mov    0x24(%r10),%r9d    ;*getfield pool
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@18 (line 150)
                  │││ │                                                 ; - com.google.re2j.Machine::add@305 (line 394)
  0.78%    0.79%  │││ │   0x00007fc791246855: mov    %r8d,%ebp
                  │││ │   0x00007fc791246858: dec    %ebp               ;*isub
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@13 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@305 (line 394)
                  │││ │   0x00007fc79124685a: mov    %ebp,0xc(%r10)     ;*putfield poolSize
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@14 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@305 (line 394)
                  │││ │   0x00007fc79124685e: mov    0xc(%r12,%r9,8),%r11d  ; implicit exception: dispatches to 0x00007fc791246be9
  0.74%    0.68%  │││ │   0x00007fc791246863: cmp    %r11d,%ebp
                  │││ │   0x00007fc791246866: jae    0x00007fc791246a69
                  │││ │   0x00007fc79124686c: lea    (%r12,%r9,8),%r10
                  │││ │   0x00007fc791246870: mov    0xc(%r10,%r8,4),%r10d  ;*aaload
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@25 (line 150)
                  │││ │                                                 ; - com.google.re2j.Machine::add@305 (line 394)
  0.00%           │││ │   0x00007fc791246875: mov    0x30(%rsp),%r8d
  0.90%    0.78%  │││ │   0x00007fc79124687a: mov    %r8d,0x10(%r12,%r10,8)  ;*putfield inst
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@45 (line 154)
                  │││ │                                                 ; - com.google.re2j.Machine::add@305 (line 394)
                  │││ │                                                 ; implicit exception: dispatches to 0x00007fc791246bf9
                  │││ │   0x00007fc79124687f: lea    (%r12,%r10,8),%rbp  ;*aaload
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@25 (line 150)
                  │││ │                                                 ; - com.google.re2j.Machine::add@305 (line 394)
                  │││ │   0x00007fc791246883: mov    %rbp,%r10
                  │││ │   0x00007fc791246886: shr    $0x9,%r10
  0.75%    0.78%  │││ │   0x00007fc79124688a: movabs $0x7fc7a0cdd000,%r11
                  │││ │   0x00007fc791246894: mov    %r12b,(%r11,%r10,1)  ;*aload
                  │││ │                                                 ; - com.google.re2j.Machine::add@320 (line 398)
  0.01%    0.00%  │││ ↘   0x00007fc791246898: mov    0x20(%rsp),%rdi
                  │││     0x00007fc79124689d: mov    0xc(%rdi),%r10d    ;*arraylength
                  │││                                                   ; - com.google.re2j.Machine::add@322 (line 398)
                  │││                                                   ; implicit exception: dispatches to 0x00007fc791246bd9
  0.69%    0.69%  │││     0x00007fc7912468a1: test   %r10d,%r10d
                  │││     0x00007fc7912468a4: jle    0x00007fc791246aa6  ;*ifle
                  │││                                                   ; - com.google.re2j.Machine::add@323 (line 398)
  0.35%    0.24%  │││     0x00007fc7912468aa: mov    0xc(%rbp),%r8d     ;*getfield cap
                  │││                                                   ; - com.google.re2j.Machine::add@328 (line 398)
  0.00%    0.02%  │││     0x00007fc7912468ae: mov    %r8,%r11
                  │││     0x00007fc7912468b1: shl    $0x3,%r11
  0.72%    0.95%  │││     0x00007fc7912468b5: cmp    %rdi,%r11
                  │││  ╭  0x00007fc7912468b8: je     0x00007fc7912468e5  ;*if_acmpeq
                  │││  │                                                ; - com.google.re2j.Machine::add@333 (line 398)
                  │││  │  0x00007fc7912468ba: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x00007fc791246c0d
  0.02%    0.04%  │││  │  0x00007fc7912468bf: lea    (%r12,%r8,8),%rcx  ;*getfield cap
                  │││  │                                                ; - com.google.re2j.Machine::add@328 (line 398)
  0.00%           │││  │  0x00007fc7912468c3: cmp    %r10d,%r11d
                  │││  │  0x00007fc7912468c6: jb     0x00007fc791246a85
  0.79%    0.60%  │││  │  0x00007fc7912468cc: lea    0x10(%r12,%r8,8),%rsi
                  │││  │  0x00007fc7912468d1: add    $0x10,%rdi
  0.00%    0.01%  │││  │  0x00007fc7912468d5: movslq %r10d,%rdx
                  │││  │  0x00007fc7912468d8: movabs $0x7fc791052640,%r10
  0.76%    0.58%  │││  │  0x00007fc7912468e2: callq  *%r10              ;*aload
                  │││  │                                                ; - com.google.re2j.Machine::add@351 (line 401)
  0.24%    0.24%  │││  ↘  0x00007fc7912468e5: mov    %rbx,%r10
  0.02%    0.04%  │││     0x00007fc7912468e8: mov    %rbp,%r8
  0.70%    0.69%  │││     0x00007fc7912468eb: shr    $0x3,%r8
  0.03%    0.05%  │││     0x00007fc7912468ef: mov    %r8d,0x10(%rbx)
  0.30%    0.31%  │││     0x00007fc7912468f3: shr    $0x9,%r10
  0.02%    0.01%  │││     0x00007fc7912468f7: movabs $0x7fc7a0cdd000,%r11
  0.69%    0.12%  │││     0x00007fc791246901: mov    %r12b,(%r11,%r10,1)  ;*putfield thread
                  │││                                                   ; - com.google.re2j.Machine::add@355 (line 401)
  0.03%    0.03%  │││     0x00007fc791246905: xor    %eax,%eax          ;*synchronization entry
                  │││                                                   ; - com.google.re2j.Machine::add@-1 (line 345)
  1.07%    1.32%  ↘↘↘     0x00007fc791246907: add    $0x60,%rsp
  0.71%    0.51%          0x00007fc79124690b: pop    %rbp
  0.01%    0.02%          0x00007fc79124690c: test   %eax,0x1708e6ee(%rip)        # 0x00007fc7a82d5000
                                                                        ;   {poll_return}
  0.69%    0.98%          0x00007fc791246912: retq                      ;*tableswitch
                                                                        ; - com.google.re2j.Machine::add@40 (line 353)
                          0x00007fc791246913: mov    0x8(%rsp),%rsi
                          0x00007fc791246918: mov    0x48(%rsp),%rdx
                          0x00007fc79124691d: mov    0x1c(%rsp),%r8d
                          0x00007fc791246922: mov    0x20(%rsp),%r9
                          0x00007fc791246927: mov    0x70(%rsp),%r10
                          0x00007fc79124692c: mov    %r10,(%rsp)
                          0x00007fc791246930: data16 xchg %ax,%ax
                          0x00007fc791246933: callq  0x00007fc791046020  ; OopMap{off=1016}
....................................................................................................
 18.10%   18.30%  <total for region 3>

....[Hottest Regions]...............................................................................
 37.04%   37.42%         C2, level 4  com.google.re2j.Machine::add, version 543 (329 bytes) 
 24.31%   25.96%         C2, level 4  com.google.re2j.Machine::step, version 548 (509 bytes) 
 18.10%   18.30%         C2, level 4  com.google.re2j.Machine::add, version 543 (351 bytes) 
  9.28%   10.20%         C2, level 4  com.google.re2j.Machine::match, version 594 (828 bytes) 
  4.56%    2.37%        runtime stub  StubRoutines::jint_disjoint_arraycopy (128 bytes) 
  1.41%    1.56%         C2, level 4  com.google.re2j.Machine::step, version 548 (72 bytes) 
  1.25%    1.39%         C2, level 4  com.google.re2j.Machine::add, version 543 (45 bytes) 
  0.45%    0.42%   [kernel.kallsyms]  [unknown] (6 bytes) 
  0.37%    0.11%         C2, level 4  com.google.re2j.Machine::init, version 595 (299 bytes) 
  0.24%    0.26%         C2, level 4  com.google.re2j.Machine::match, version 594 (59 bytes) 
  0.10%    0.02%   [kernel.kallsyms]  [unknown] (42 bytes) 
  0.09%    0.00%   [kernel.kallsyms]  [unknown] (45 bytes) 
  0.08%    0.04%         C2, level 4  com.google.re2j.Machine::match, version 594 (167 bytes) 
  0.07%            [kernel.kallsyms]  [unknown] (0 bytes) 
  0.05%    0.06%         C2, level 4  com.google.re2j.Machine::init, version 595 (60 bytes) 
  0.05%    0.02%         C2, level 4  com.google.re2j.Matcher::find, version 617 (0 bytes) 
  0.05%    0.03%         C2, level 4  com.google.re2j.Matcher::find, version 617 (0 bytes) 
  0.04%    0.01%         C2, level 4  com.google.re2j.Machine::init, version 595 (25 bytes) 
  0.04%    0.02%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.04%    0.02%         C2, level 4  java.util.Collections::shuffle, version 624 (38 bytes) 
  2.37%    1.76%  <...other 421 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 56.40%   57.11%         C2, level 4  com.google.re2j.Machine::add, version 543 
 25.72%   27.52%         C2, level 4  com.google.re2j.Machine::step, version 548 
  9.81%   10.67%         C2, level 4  com.google.re2j.Machine::match, version 594 
  4.56%    2.37%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
  1.76%    1.09%   [kernel.kallsyms]  [unknown] 
  0.51%    0.19%         C2, level 4  com.google.re2j.Machine::init, version 595 
  0.25%    0.17%         C2, level 4  com.google.re2j.Matcher::find, version 617 
  0.12%    0.07%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 677 
  0.06%    0.03%         C2, level 4  java.util.Collections::shuffle, version 624 
  0.05%    0.05%      hsdis-amd64.so  [unknown] 
  0.03%    0.01%        libc-2.26.so  _IO_fwrite 
  0.03%    0.08%           libjvm.so  RelocIterator::initialize 
  0.02%    0.02%           libjvm.so  StringTable::unlink_or_oops_do 
  0.02%    0.01%  libpthread-2.26.so  __libc_write 
  0.02%    0.00%              [vdso]  [unknown] 
  0.02%                  C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 615 
  0.02%                    libjvm.so  os::PlatformEvent::park 
  0.02%    0.01%           libjvm.so  xmlTextStream::write 
  0.02%    0.01%           libjvm.so  fileStream::write 
  0.02%    0.01%           libjvm.so  SpinPause 
  0.51%    0.33%  <...other 69 warm methods...>
....................................................................................................
100.00%   99.79%  <totals>

....[Distribution by Source]........................................................................
 92.89%   95.78%         C2, level 4
  4.56%    2.38%        runtime stub
  1.76%    1.09%   [kernel.kallsyms]
  0.39%    0.38%           libjvm.so
  0.17%    0.23%        libc-2.26.so
  0.09%    0.04%  libpthread-2.26.so
  0.05%    0.05%      hsdis-amd64.so
  0.04%    0.03%         interpreter
  0.03%    0.00%              [vdso]
  0.01%    0.00%         C1, level 3
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                     Mode  Cnt     Score    Error  Units
Re2jFindRegex.testExp1       thrpt   20  9833.103 ± 89.134  ops/s
Re2jFindRegex.testExp1:·asm  thrpt            NaN             ---
