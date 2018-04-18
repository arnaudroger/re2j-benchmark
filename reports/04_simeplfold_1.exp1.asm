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
# Warmup Iteration   1: 4483.696 ops/s
# Warmup Iteration   2: 7679.131 ops/s
# Warmup Iteration   3: 7698.691 ops/s
# Warmup Iteration   4: 7760.304 ops/s
# Warmup Iteration   5: 7843.105 ops/s
# Warmup Iteration   6: 7833.811 ops/s
# Warmup Iteration   7: 7764.990 ops/s
# Warmup Iteration   8: 7634.304 ops/s
# Warmup Iteration   9: 7708.795 ops/s
# Warmup Iteration  10: 7824.593 ops/s
# Warmup Iteration  11: 7728.273 ops/s
# Warmup Iteration  12: 7754.166 ops/s
# Warmup Iteration  13: 7750.830 ops/s
# Warmup Iteration  14: 7782.700 ops/s
# Warmup Iteration  15: 7884.038 ops/s
# Warmup Iteration  16: 7848.567 ops/s
# Warmup Iteration  17: 7720.272 ops/s
# Warmup Iteration  18: 7808.148 ops/s
# Warmup Iteration  19: 7830.102 ops/s
# Warmup Iteration  20: 7833.131 ops/s
Iteration   1: 7726.456 ops/s
Iteration   2: 7665.944 ops/s
Iteration   3: 7579.054 ops/s
Iteration   4: 7544.362 ops/s
Iteration   5: 7654.911 ops/s
Iteration   6: 7674.802 ops/s
Iteration   7: 7651.320 ops/s
Iteration   8: 7624.414 ops/s
Iteration   9: 7680.076 ops/s
Iteration  10: 7667.258 ops/s
Iteration  11: 7668.359 ops/s
Iteration  12: 7676.009 ops/s
Iteration  13: 7674.710 ops/s
Iteration  14: 7097.349 ops/s
Iteration  15: 7675.811 ops/s
Iteration  16: 7674.864 ops/s
Iteration  17: 7667.857 ops/s
Iteration  18: 7674.916 ops/s
Iteration  19: 6778.491 ops/s
Iteration  20: 7666.599 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  7586.178 ±(99.9%) 200.446 ops/s [Average]
  (min, avg, max) = (6778.491, 7586.178, 7726.456), stdev = 230.834
  CI (99.9%): [7385.732, 7786.624] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1:·asm":
PrintAssembly processed: 197073 total address lines.
Perf output processed (skipped 23.416 seconds):
 Column 1: cycles (20739 events)
 Column 2: instructions (20731 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 502 (329 bytes) 

                       # parm4:    rdi       = int
                       # parm5:    [sp+0x70]   = &apos;com/google/re2j/Machine$Thread&apos;  (sp of caller)
                       0x00007fe11d218f80: mov    0x8(%rsi),%r10d    ;   {no_reloc}
                       0x00007fe11d218f84: shl    $0x3,%r10
                       0x00007fe11d218f88: cmp    %r10,%rax
                       0x00007fe11d218f8b: jne    0x00007fe11d045e20  ;   {runtime_call}
                       0x00007fe11d218f91: data16 xchg %ax,%ax
                       0x00007fe11d218f94: nopl   0x0(%rax,%rax,1)
                       0x00007fe11d218f9c: data16 data16 xchg %ax,%ax
                     [Verified Entry Point]
  1.07%    1.08%       0x00007fe11d218fa0: mov    %eax,-0x14000(%rsp)
  0.64%    0.55%       0x00007fe11d218fa7: push   %rbp
  0.30%    0.27%       0x00007fe11d218fa8: sub    $0x60,%rsp         ;*synchronization entry
                                                                     ; - com.google.re2j.Machine::add@-1 (line 345)
  1.38%    1.21%       0x00007fe11d218fac: mov    %edi,0x28(%rsp)
  0.11%    0.08%       0x00007fe11d218fb0: mov    %r9,0x20(%rsp)
  0.28%    0.23%       0x00007fe11d218fb5: mov    %r8d,0x1c(%rsp)
  0.84%    0.84%       0x00007fe11d218fba: mov    %rsi,0x8(%rsp)
  0.42%    0.65%       0x00007fe11d218fbf: mov    %ecx,0x40(%rsp)
  0.06%    0.10%       0x00007fe11d218fc3: test   %ecx,%ecx
                       0x00007fe11d218fc5: je     0x00007fe11d219481  ;*ifne
                                                                     ; - com.google.re2j.Machine::add@1 (line 345)
  0.20%    0.21%       0x00007fe11d218fcb: mov    %rdx,0x48(%rsp)
  0.95%    0.89%       0x00007fe11d218fd0: mov    0x14(%rdx),%r9d    ;*getfield sparse
                                                                     ; - com.google.re2j.Machine$Queue::contains@1 (line 46)
                                                                     ; - com.google.re2j.Machine::add@9 (line 348)
                                                                     ; implicit exception: dispatches to 0x00007fe11d2195a8
  0.41%    0.87%       0x00007fe11d218fd4: mov    0xc(%r12,%r9,8),%r10d  ; implicit exception: dispatches to 0x00007fe11d2195b9
  0.22%    0.19%       0x00007fe11d218fd9: cmp    %r10d,%ecx
                       0x00007fe11d218fdc: jae    0x00007fe11d21937a  ;*iaload
                                                                     ; - com.google.re2j.Machine$Queue::contains@5 (line 46)
                                                                     ; - com.google.re2j.Machine::add@9 (line 348)
  0.28%    0.40%       0x00007fe11d218fe2: mov    0x10(%rdx),%ecx    ;*getfield dense
                                                                     ; - com.google.re2j.Machine$Queue::contains@18 (line 50)
                                                                     ; - com.google.re2j.Machine::add@9 (line 348)
  0.88%    0.83%       0x00007fe11d218fe5: mov    0xc(%rdx),%r8d     ;*getfield size
                                                                     ; - com.google.re2j.Machine$Queue::contains@9 (line 47)
                                                                     ; - com.google.re2j.Machine::add@9 (line 348)
  0.43%    0.78%       0x00007fe11d218fe9: lea    (%r12,%r9,8),%rdi
  0.09%    0.08%       0x00007fe11d218fed: mov    0x40(%rsp),%r11d
  0.88%    0.58%       0x00007fe11d218ff2: mov    0x10(%rdi,%r11,4),%ebp  ;*iaload
                                                                     ; - com.google.re2j.Machine$Queue::contains@5 (line 46)
                                                                     ; - com.google.re2j.Machine::add@9 (line 348)
  0.95%    0.82%       0x00007fe11d218ff7: cmp    %r8d,%ebp
                  ╭    0x00007fe11d218ffa: jl     0x00007fe11d2190c0  ;*iastore
                  │                                                  ; - com.google.re2j.Machine$Queue::add@18 (line 58)
                  │                                                  ; - com.google.re2j.Machine::add@20 (line 351)
  1.50%    1.56%  │ ↗  0x00007fe11d219000: mov    %r8d,%r11d
  0.07%    0.05%  │ │  0x00007fe11d219003: inc    %r11d
  0.10%    0.10%  │ │  0x00007fe11d219006: mov    %r11d,0xc(%rdx)    ;*putfield size
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@8 (line 57)
                  │ │                                                ; - com.google.re2j.Machine::add@20 (line 351)
  0.42%    0.30%  │ │  0x00007fe11d21900a: mov    0x40(%rsp),%ebx
  1.24%    1.23%  │ │  0x00007fe11d21900e: cmp    %r10d,%ebx
                  │ │  0x00007fe11d219011: jae    0x00007fe11d2193b9
  0.10%    0.04%  │ │  0x00007fe11d219017: mov    %r8d,0x10(%rdi,%rbx,4)  ;*iastore
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@18 (line 58)
                  │ │                                                ; - com.google.re2j.Machine::add@20 (line 351)
  0.75%    0.53%  │ │  0x00007fe11d21901c: mov    0xc(%r12,%rcx,8),%r10d  ; implicit exception: dispatches to 0x00007fe11d2195cd
  0.62%    0.49%  │ │  0x00007fe11d219021: cmp    %r10d,%r8d
                  │ │  0x00007fe11d219024: jae    0x00007fe11d219405  ;*aaload
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@24 (line 59)
                  │ │                                                ; - com.google.re2j.Machine::add@20 (line 351)
  1.11%    1.20%  │ │  0x00007fe11d21902a: lea    (%r12,%rcx,8),%r10  ;*getfield dense
                  │ │                                                ; - com.google.re2j.Machine$Queue::contains@18 (line 50)
                  │ │                                                ; - com.google.re2j.Machine::add@9 (line 348)
  0.06%    0.04%  │ │  0x00007fe11d21902e: mov    %r10,0x38(%rsp)
  0.23%    0.23%  │ │  0x00007fe11d219033: lea    0x10(%r10,%r8,4),%rbp
  0.32%    0.40%  │ │  0x00007fe11d219038: mov    0x0(%rbp),%r11d    ;*aaload
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@24 (line 59)
                  │ │                                                ; - com.google.re2j.Machine::add@20 (line 351)
  1.22%    1.40%  │ │  0x00007fe11d21903c: test   %r11d,%r11d
                  │╭│  0x00007fe11d21903f: je     0x00007fe11d2190f3  ;*ifnonnull
                  │││                                                ; - com.google.re2j.Machine$Queue::add@27 (line 60)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 351)
  0.24%    0.18%  │││  0x00007fe11d219045: lea    (%r12,%r11,8),%rbx  ;*aload_3
                  │││                                                ; - com.google.re2j.Machine$Queue::add@45 (line 63)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 351)
  0.23%    0.28%  │││  0x00007fe11d219049: mov    0x40(%rsp),%r11d
  0.46%    0.52%  │││  0x00007fe11d21904e: mov    %r11d,0xc(%rbx)    ;*putfield pc
                  │││                                                ; - com.google.re2j.Machine$Queue::add@52 (line 64)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 351)
  2.64%    2.36%  │││  0x00007fe11d219052: mov    0x8(%rsp),%r10
  0.06%    0.07%  │││  0x00007fe11d219057: mov    0x18(%r10),%r10d   ;*getfield prog
                  │││                                                ; - com.google.re2j.Machine::add@26 (line 352)
  0.45%    0.38%  │││  0x00007fe11d21905b: mov    %r12d,0x10(%rbx)   ;*putfield thread
                  │││                                                ; - com.google.re2j.Machine$Queue::add@47 (line 63)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 351)
  0.95%    0.95%  │││  0x00007fe11d21905f: mov    0x18(%r12,%r10,8),%ebp  ;*getfield inst
                  │││                                                ; - com.google.re2j.Prog::getInst@1 (line 30)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 352)
                  │││                                                ; implicit exception: dispatches to 0x00007fe11d2195e1
  1.26%    1.48%  │││  0x00007fe11d219064: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007fe11d2195f5
  1.22%    1.42%  │││  0x00007fe11d219069: mov    0x40(%rsp),%r10d
  0.21%    0.27%  │││  0x00007fe11d21906e: cmp    %r11d,%r10d
                  │││  0x00007fe11d219071: jae    0x00007fe11d219449
  1.17%    1.23%  │││  0x00007fe11d219077: lea    (%r12,%rbp,8),%r10
  0.66%    0.77%  │││  0x00007fe11d21907b: mov    0x40(%rsp),%r8d
  0.02%    0.04%  │││  0x00007fe11d219080: mov    0x10(%r10,%r8,4),%r11d  ;*aaload
                  │││                                                ; - com.google.re2j.Prog::getInst@5 (line 30)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 352)
  0.29%    0.30%  │││  0x00007fe11d219085: mov    %r11d,0x30(%rsp)
  0.87%    0.85%  │││  0x00007fe11d21908a: mov    0xc(%r12,%r11,8),%r11d  ;*getfield op
                  │││                                                ; - com.google.re2j.Machine::add@37 (line 353)
                  │││                                                ; implicit exception: dispatches to 0x00007fe11d219609
  2.40%    2.42%  │││  0x00007fe11d21908f: mov    %r11d,%r8d
  0.04%    0.04%  │││  0x00007fe11d219092: dec    %r8d
  1.04%    1.16%  │││  0x00007fe11d219095: cmp    $0xc,%r8d
                  │││  0x00007fe11d219099: jae    0x00007fe11d219471  ;*tableswitch
                  │││                                                ; - com.google.re2j.Machine::add@40 (line 353)
  1.01%    1.03%  │││  0x00007fe11d21909f: mov    0x30(%rsp),%r8d
  0.37%    0.41%  │││  0x00007fe11d2190a4: mov    0x10(%r12,%r8,8),%ecx  ;*getfield out
                  │││                                                ; - com.google.re2j.Machine::add@197 (line 373)
  3.43%    3.44%  │││  0x00007fe11d2190a9: mov    0x14(%r12,%r8,8),%r10d  ;*getfield arg
                  │││                                                ; - com.google.re2j.Machine::add@160 (line 367)
  0.32%    0.22%  │││  0x00007fe11d2190ae: movslq %r11d,%r11
  0.21%    0.19%  │││  0x00007fe11d2190b1: movabs $0x7fe11d218f20,%r8  ;   {section_word}
  0.14%    0.14%  │││  0x00007fe11d2190bb: jmpq   *-0x8(%r8,%r11,8)  ;*tableswitch
                  │││                                                ; - com.google.re2j.Machine::add@40 (line 353)
  0.02%    0.02%  ↘││  0x00007fe11d2190c0: mov    0xc(%r12,%rcx,8),%r11d  ; implicit exception: dispatches to 0x00007fe11d219675
                   ││  0x00007fe11d2190c5: cmp    %r11d,%ebp
                   ││  0x00007fe11d2190c8: jae    0x00007fe11d21954d
           0.00%   ││  0x00007fe11d2190ce: lea    (%r12,%rcx,8),%r11
                   ││  0x00007fe11d2190d2: mov    0x10(%r11,%rbp,4),%ebp  ;*aaload
                   ││                                                ; - com.google.re2j.Machine$Queue::contains@22 (line 50)
                   ││                                                ; - com.google.re2j.Machine::add@9 (line 348)
  0.01%    0.01%   ││  0x00007fe11d2190d7: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007fe11d219685
  0.03%    0.02%   ││  0x00007fe11d2190dc: mov    0x40(%rsp),%ebx
                   ││  0x00007fe11d2190e0: cmp    %ebx,%r11d
                   │╰  0x00007fe11d2190e3: jne    0x00007fe11d219000
           0.00%   │   0x00007fe11d2190e9: mov    0x70(%rsp),%rax
                   │   0x00007fe11d2190ee: jmpq   0x00007fe11d219347
                   ↘   0x00007fe11d2190f3: mov    0x60(%r15),%rbx
                       0x00007fe11d2190f7: mov    %rbx,%r10
                       0x00007fe11d2190fa: add    $0x18,%r10
                       0x00007fe11d2190fe: cmp    0x70(%r15),%r10
                       0x00007fe11d219102: jae    0x00007fe11d219575
                       0x00007fe11d219108: mov    %r10,0x60(%r15)
                       0x00007fe11d21910c: prefetchnta 0xc0(%r10)
                       0x00007fe11d219114: mov    $0xf8019b52,%r11d  ;   {metadata(&apos;com/google/re2j/Machine$Queue$Entry&apos;)}
                       0x00007fe11d21911a: movabs $0x0,%r10
....................................................................................................
 37.91%   38.41%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 497 (510 bytes) 

                                                                                 ; - com.google.re2j.Machine::step@246 (line 298)
                                   0x00007fe11d215ebf: mov    0x8(%rsp),%r8
                                   0x00007fe11d215ec4: mov    %r12d,0xc(%r8)     ;*putfield size
                                                                                 ; - com.google.re2j.Machine::step@283 (line 304)
                                   0x00007fe11d215ec8: mov    0x28(%rsp),%r8
                                   0x00007fe11d215ecd: movb   $0x1,0x10(%r8)     ;*putfield matched
                                                                                 ; - com.google.re2j.Machine::step@288 (line 306)
                                   0x00007fe11d215ed2: mov    0x20(%rsp),%r9d
                  ╭                0x00007fe11d215ed7: jmp    0x00007fe11d215f26  ;*aload
                  │                                                              ; - com.google.re2j.Machine::step@294 (line 311)
  0.19%    0.33%  │      ↗         0x00007fe11d215ed9: cmp    $0xc,%r9d
                  │      │         0x00007fe11d215edd: jne    0x00007fe11d21630d  ;*if_icmpne
                  │      │                                                       ; - com.google.re2j.Inst::matchRune@29 (line 59)
                  │      │                                                       ; - com.google.re2j.Machine::step@298 (line 311)
  0.08%    0.07%  │      │         0x00007fe11d215ee3: mov    0x18(%r12,%rbx,8),%r9d  ;*getfield f0
                  │      │                                                       ; - com.google.re2j.Inst::matchRune@33 (line 60)
                  │      │                                                       ; - com.google.re2j.Machine::step@298 (line 311)
                  │      │         0x00007fe11d215ee8: cmp    0x20(%rsp),%r9d
                  │╭     │         0x00007fe11d215eed: je     0x00007fe11d216042  ;*if_icmpeq
                  ││     │                                                       ; - com.google.re2j.Inst::matchRune@37 (line 60)
                  ││     │                                                       ; - com.google.re2j.Machine::step@298 (line 311)
  0.20%    0.29%  ││     │         0x00007fe11d215ef3: mov    0x1c(%r12,%rbx,8),%r9d  ;*getfield f1
                  ││     │                                                       ; - com.google.re2j.Inst::matchRune@41 (line 60)
                  ││     │                                                       ; - com.google.re2j.Machine::step@298 (line 311)
  0.00%    0.01%  ││     │         0x00007fe11d215ef8: cmp    0x20(%rsp),%r9d
                  ││╭    │         0x00007fe11d215efd: je     0x00007fe11d216042  ;*if_icmpeq
                  │││    │                                                       ; - com.google.re2j.Inst::matchRune@45 (line 60)
                  │││    │                                                       ; - com.google.re2j.Machine::step@298 (line 311)
  0.29%    0.41%  │││    │         0x00007fe11d215f03: mov    0x20(%r12,%rbx,8),%ebp  ;*getfield f2
                  │││    │                                                       ; - com.google.re2j.Inst::matchRune@49 (line 60)
                  │││    │                                                       ; - com.google.re2j.Machine::step@298 (line 311)
  0.02%    0.00%  │││    │         0x00007fe11d215f08: cmp    0x20(%rsp),%ebp
                  │││    │         0x00007fe11d215f0c: je     0x00007fe11d216355  ;*if_icmpeq
                  │││    │                                                       ; - com.google.re2j.Inst::matchRune@53 (line 60)
                  │││    │                                                       ; - com.google.re2j.Machine::step@298 (line 311)
  0.15%    0.11%  │││    │         0x00007fe11d215f12: mov    0x24(%r12,%rbx,8),%ebp  ;*getfield f3
                  │││    │                                                       ; - com.google.re2j.Inst::matchRune@57 (line 60)
                  │││    │                                                       ; - com.google.re2j.Machine::step@298 (line 311)
  0.00%           │││    │         0x00007fe11d215f17: cmp    0x20(%rsp),%ebp
                  │││    │         0x00007fe11d215f1b: je     0x00007fe11d216389  ;*if_icmpne
                  │││    │                                                       ; - com.google.re2j.Inst::matchRune@61 (line 60)
                  │││    │                                                       ; - com.google.re2j.Machine::step@298 (line 311)
  0.20%    0.29%  │││    │         0x00007fe11d215f21: mov    0x20(%rsp),%r9d    ;*goto
                  │││    │                                                       ; - com.google.re2j.Machine::step@291 (line 307)
  0.16%    0.04%  ↘││    │ ↗    ↗  0x00007fe11d215f26: mov    %r11,%rcx          ;*aload
                   ││    │ │    │                                                ; - com.google.re2j.Machine::step@389 (line 332)
  0.01%    0.01%   ││    │ │  ↗ │  0x00007fe11d215f29: mov    0x28(%rsp),%r11
  0.00%            ││    │ │  │ │  0x00007fe11d215f2e: mov    0x24(%r11),%ebx    ;*getfield pool
                   ││    │ │  │ │                                                ; - com.google.re2j.Machine::free@5 (line 160)
                   ││    │ │  │ │                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.55%    0.75%   ││    │ │  │ │  0x00007fe11d215f32: mov    0xc(%r12,%rbx,8),%r11d  ;*arraylength
                   ││    │ │  │ │                                                ; - com.google.re2j.Machine::free@8 (line 160)
                   ││    │ │  │ │                                                ; - com.google.re2j.Machine::step@397 (line 333)
                   ││    │ │  │ │                                                ; implicit exception: dispatches to 0x00007fe11d216449
  0.12%    0.01%   ││    │ │  │ │  0x00007fe11d215f37: mov    0x28(%rsp),%r8
           0.01%   ││    │ │  │ │  0x00007fe11d215f3c: mov    0xc(%r8),%ebp      ;*getfield poolSize
                   ││    │ │  │ │                                                ; - com.google.re2j.Machine::free@1 (line 160)
                   ││    │ │  │ │                                                ; - com.google.re2j.Machine::step@397 (line 333)
                   ││    │ │  │ │  0x00007fe11d215f40: cmp    %r11d,%ebp
                   ││    │ │  │ │  0x00007fe11d215f43: jge    0x00007fe11d2162c5  ;*if_icmplt
                   ││    │ │  │ │                                                ; - com.google.re2j.Machine::free@9 (line 160)
                   ││    │ │  │ │                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.59%    0.62%   ││    │ │  │ │  0x00007fe11d215f49: mov    %ebp,%r8d
  0.12%    0.04%   ││    │ │  │ │  0x00007fe11d215f4c: inc    %r8d
  0.01%    0.01%   ││    │ │  │ │  0x00007fe11d215f4f: mov    0x28(%rsp),%rdi
                   ││    │ │  │ │  0x00007fe11d215f54: mov    %r8d,0xc(%rdi)     ;*putfield poolSize
                   ││    │ │  │ │                                                ; - com.google.re2j.Machine::free@45 (line 163)
                   ││    │ │  │ │                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.66%    0.75%   ││    │ │  │ │  0x00007fe11d215f58: cmp    %r11d,%ebp
                   ││    │ │  │ │  0x00007fe11d215f5b: jae    0x00007fe11d2161c9  ;*aastore
                   ││    │ │  │ │                                                ; - com.google.re2j.Machine::free@49 (line 163)
                   ││    │ │  │ │                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.11%    0.06%   ││    │ │  │ │  0x00007fe11d215f61: mov    %rcx,%r11
  0.00%    0.01%   ││    │ │  │ │  0x00007fe11d215f64: shr    $0x3,%r11
                   ││    │ │  │ │  0x00007fe11d215f68: lea    (%r12,%rbx,8),%r10  ;*getfield pool
                   ││    │ │  │ │                                                ; - com.google.re2j.Machine::free@5 (line 160)
                   ││    │ │  │ │                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.62%    0.68%   ││    │ │  │ │  0x00007fe11d215f6c: lea    0x10(%r10,%rbp,4),%r10
  0.17%    0.14%   ││    │ │  │ │  0x00007fe11d215f71: mov    %r11d,(%r10)
  0.00%    0.02%   ││    │ │  │ │  0x00007fe11d215f74: shr    $0x9,%r10
                   ││    │ │  │ │  0x00007fe11d215f78: movabs $0x7fe1191ff000,%r11
  0.62%    0.57%   ││    │ │  │ │  0x00007fe11d215f82: mov    %r12b,(%r11,%r10,1)  ;*aastore
                   ││    │ │  │ │                                                ; - com.google.re2j.Machine::free@49 (line 163)
                   ││    │ │  │ │                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.07%    0.17%   ││    │ │  │ │  0x00007fe11d215f86: xor    %r10d,%r10d        ; OopMap{[8]=Oop [24]=Oop [40]=Oop off=521}
                   ││    │ │  │ │                                                ;*goto
                   ││    │ │  │ │                                                ; - com.google.re2j.Machine::step@403 (line 270)
  0.20%    0.41%   ││  ↗ │ │ ↗│ │  0x00007fe11d215f89: test   %eax,0x168be071(%rip)        # 0x00007fe133ad4000
                   ││  │ │ │ ││ │                                                ;*goto
                   ││  │ │ │ ││ │                                                ; - com.google.re2j.Machine::step@403 (line 270)
                   ││  │ │ │ ││ │                                                ;   {poll}
  0.49%    0.68%   ││  │ │ │ ││ │  0x00007fe11d215f8f: mov    0x8(%rsp),%r10
  0.79%    0.67%   ││  │ │ │ ││ │  0x00007fe11d215f94: mov    0xc(%r10),%r10d
  0.14%    0.17%   ││  │ │ │ ││ │  0x00007fe11d215f98: cmp    %r10d,%eax
                   ││╭ │ │ │ ││ │  0x00007fe11d215f9b: jge    0x00007fe11d2160c9
  0.26%    0.17%   │││ │ │ │ ││ │  0x00007fe11d215fa1: mov    %r9d,0x20(%rsp)
  0.47%    0.58%   │││ │ │ │ ││ │  0x00007fe11d215fa6: mov    %eax,%r10d         ;*aload_1
                   │││ │ │ │ ││ │                                                ; - com.google.re2j.Machine::step@21 (line 271)
  0.77%    0.70%   │││ │ │ │ ││ │  0x00007fe11d215fa9: mov    0x8(%rsp),%r11
  0.04%    0.04%   │││ │ │ │ ││ │  0x00007fe11d215fae: mov    0x10(%r11),%r8d    ;*getfield dense
                   │││ │ │ │ ││ │                                                ; - com.google.re2j.Machine::step@22 (line 271)
  0.45%    0.39%   │││ │ │ │ ││ │  0x00007fe11d215fb2: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x00007fe11d216425
  0.99%    1.23%   │││ │ │ │ ││ │  0x00007fe11d215fb7: cmp    %r11d,%r10d
                   │││ │ │ │ ││ │  0x00007fe11d215fba: jae    0x00007fe11d21618b
  0.98%    0.56%   │││ │ │ │ ││ │  0x00007fe11d215fc0: lea    (%r12,%r8,8),%r11
  0.04%    0.07%   │││ │ │ │ ││ │  0x00007fe11d215fc4: mov    0x10(%r11,%r10,4),%r9d  ;*aaload
                   │││ │ │ │ ││ │                                                ; - com.google.re2j.Machine::step@27 (line 271)
  0.27%    0.36%   │││ │ │ │ ││ │  0x00007fe11d215fc9: mov    0x10(%r12,%r9,8),%r8d  ;*getfield thread
                   │││ │ │ │ ││ │                                                ; - com.google.re2j.Machine::step@40 (line 275)
                   │││ │ │ │ ││ │                                                ; implicit exception: dispatches to 0x00007fe11d216459
  1.82%    2.19%   │││ │ │ │ ││ │  0x00007fe11d215fce: mov    %r10d,%eax
  0.65%    0.35%   │││ │ │ │ ││ │  0x00007fe11d215fd1: inc    %eax               ;*iadd
                   │││ │ │ │ ││ │                                                ; - com.google.re2j.Machine::step@237 (line 298)
  0.06%    0.04%   │││ │ │ │ ││ │  0x00007fe11d215fd3: test   %r8d,%r8d
                   │││╭│ │ │ ││ │  0x00007fe11d215fd6: jne    0x00007fe11d215fe4  ;*ifnonnull
                   │││││ │ │ ││ │                                                ; - com.google.re2j.Machine::step@47 (line 276)
  0.45%    0.59%   │││││ │ │ ││ │  0x00007fe11d215fd8: mov    0x24(%rsp),%r10d
  0.18%    0.20%   │││││ │ │ ││ │  0x00007fe11d215fdd: mov    0x20(%rsp),%r9d
  0.01%    0.04%   ││││╰ │ │ ││ │  0x00007fe11d215fe2: jmp    0x00007fe11d215f89
  0.14%    0.08%   │││↘  │ │ ││ │  0x00007fe11d215fe4: mov    0x24(%rsp),%r9d
  0.25%    0.27%   │││   │ │ ││ │  0x00007fe11d215fe9: test   %r9d,%r9d
                   │││   │ │ ││ │  0x00007fe11d215fec: jne    0x00007fe11d21627d  ;*ifeq
                   │││   │ │ ││ │                                                ; - com.google.re2j.Machine::step@55 (line 279)
  0.68%    0.39%   │││   │ │ ││ │  0x00007fe11d215ff2: mov    0x10(%r12,%r8,8),%ebx  ;*getfield inst
                   │││   │ │ ││ │                                                ; - com.google.re2j.Machine::step@101 (line 283)
  0.89%    0.93%   │││   │ │ ││ │  0x00007fe11d215ff7: mov    0xc(%r12,%rbx,8),%r9d  ;*getfield op
                   │││   │ │ ││ │                                                ; - com.google.re2j.Machine::step@111 (line 285)
                   │││   │ │ ││ │                                                ; implicit exception: dispatches to 0x00007fe11d216439
  2.73%    2.57%   │││   │ │ ││ │  0x00007fe11d215ffc: mov    0xc(%r12,%r8,8),%r14d  ;*getfield cap
                   │││   │ │ ││ │                                                ; - com.google.re2j.Machine::step@172 (line 292)
  0.06%    0.04%   │││   │ │ ││ │  0x00007fe11d216001: lea    (%r12,%r8,8),%r11  ;*getfield thread
                   │││   │ │ ││ │                                                ; - com.google.re2j.Machine::step@40 (line 275)
  0.28%    0.24%   │││   │ │ ││ │  0x00007fe11d216005: cmp    $0x9,%r9d
                   │││  ╭│ │ ││ │  0x00007fe11d216009: je     0x00007fe11d21609e
  0.38%    0.47%   │││  ││ │ ││ │  0x00007fe11d21600f: cmp    $0x9,%r9d
                   │││  ││ │ ││ │  0x00007fe11d216013: jle    0x00007fe11d215ded
  0.14%    0.19%   │││  ││ │ ││ │  0x00007fe11d216019: cmp    $0xc,%r9d
                   │││  │╰ │ ││ │  0x00007fe11d21601d: je     0x00007fe11d215ed9
  0.28%    0.22%   │││  │  │ ││ │  0x00007fe11d216023: cmp    $0xc,%r9d
                   │││  │  │ ││ │  0x00007fe11d216027: jg     0x00007fe11d2162fd
  0.01%    0.02%   │││  │  │ ││ │  0x00007fe11d21602d: cmp    $0xb,%r9d
                   │││  │ ╭│ ││ │  0x00007fe11d216031: jne    0x00007fe11d216042  ;*tableswitch
                   │││  │ ││ ││ │                                                ; - com.google.re2j.Machine::step@114 (line 285)
                   │││  │ ││ ││ │  0x00007fe11d216033: mov    0x20(%rsp),%r9d
                   │││  │ ││ ││ │  0x00007fe11d216038: cmp    $0xa,%r9d
                   │││  │ │╰ ││ │  0x00007fe11d21603c: je     0x00007fe11d215f26  ;*ifeq
                   │││  │ │  ││ │                                                ; - com.google.re2j.Machine::step@363 (line 329)
  0.25%    0.24%   ↘↘│  │ ↘  ││↗│  0x00007fe11d216042: mov    %eax,0x74(%rsp)
  0.09%    0.05%     │  │    ││││  0x00007fe11d216046: mov    %r10d,%ebp
  0.04%    0.06%     │  │    ││││  0x00007fe11d216049: mov    0x10(%r12,%rbx,8),%ecx  ;*getfield out
                     │  │    ││││                                                ; - com.google.re2j.Machine::step@370 (line 330)
  0.01%              │  │    ││││  0x00007fe11d21604e: mov    %r14,%r9
  0.18%    0.14%     │  │    ││││  0x00007fe11d216051: shl    $0x3,%r9           ;*getfield cap
                     │  │    ││││                                                ; - com.google.re2j.Machine::step@172 (line 292)
  0.01%              │  │    ││││  0x00007fe11d216055: mov    0x28(%rsp),%rsi
  0.05%    0.09%     │  │    ││││  0x00007fe11d21605a: mov    0x18(%rsp),%rdx
  0.01%              │  │    ││││  0x00007fe11d21605f: mov    0x14(%rsp),%r8d
  0.20%    0.17%     │  │    ││││  0x00007fe11d216064: mov    0x70(%rsp),%edi
  0.01%              │  │    ││││  0x00007fe11d216068: mov    %r11,(%rsp)
  0.07%    0.05%     │  │    ││││  0x00007fe11d21606c: data16 xchg %ax,%ax
  0.00%    0.00%     │  │    ││││  0x00007fe11d21606f: callq  0x00007fe11d046020  ; OopMap{[8]=Oop [24]=Oop [40]=Oop off=756}
                     │  │    ││││                                                ;*invokespecial add
                     │  │    ││││                                                ; - com.google.re2j.Machine::step@384 (line 330)
                     │  │    ││││                                                ;   {optimized virtual_call}
  0.02%    0.01%     │  │    ││││  0x00007fe11d216074: mov    %rax,%rcx
                     │  │    ││││  0x00007fe11d216077: test   %rax,%rax
                     │  │   ╭││││  0x00007fe11d21607a: jne    0x00007fe11d21608d  ;*ifnull
                     │  │   │││││                                                ; - com.google.re2j.Machine::step@391 (line 332)
  0.00%              │  │   │││││  0x00007fe11d21607c: xor    %r10d,%r10d
  0.25%    0.39%     │  │   │││││  0x00007fe11d21607f: mov    0x20(%rsp),%r9d
  0.03%    0.01%     │  │   │││││  0x00007fe11d216084: mov    0x74(%rsp),%eax
                     │  │   │╰│││  0x00007fe11d216088: jmpq   0x00007fe11d215f89
                     │  │   ↘ │││  0x00007fe11d21608d: mov    0x20(%rsp),%r9d
                     │  │     │││  0x00007fe11d216092: mov    %ebp,%r10d
                     │  │     │││  0x00007fe11d216095: mov    0x74(%rsp),%eax
                     │  │     ╰││  0x00007fe11d216099: jmpq   0x00007fe11d215f29
  0.24%    0.34%     │  ↘      ││  0x00007fe11d21609e: mov    0x28(%r12,%rbx,8),%ebp  ;*getfield runes
                     │         ││                                                ; - com.google.re2j.Machine::step@310 (line 315)
  0.02%    0.03%     │         ││  0x00007fe11d2160a3: mov    0xc(%r12,%rbp,8),%r9d  ; implicit exception: dispatches to 0x00007fe11d2164d5
  1.86%    1.76%     │         ││  0x00007fe11d2160a8: test   %r9d,%r9d
                     │         ││  0x00007fe11d2160ab: jbe    0x00007fe11d216249  ;*iaload
                     │         ││                                                ; - com.google.re2j.Machine::step@314 (line 315)
  0.35%    0.38%     │         ││  0x00007fe11d2160b1: mov    0x10(%r12,%rbp,8),%r8d
           0.00%     │         ││  0x00007fe11d2160b6: mov    0x20(%rsp),%r9d
                     │         ││  0x00007fe11d2160bb: cmp    %r8d,%r9d
                     │         ╰│  0x00007fe11d2160be: je     0x00007fe11d216042  ;*if_icmpne
                     │          │                                                ; - com.google.re2j.Machine::step@315 (line 315)
  0.29%    0.46%     │          ╰  0x00007fe11d2160c4: jmpq   0x00007fe11d215f26  ;*if_icmpge
                     │                                                           ; - com.google.re2j.Machine::step@18 (line 270)
           0.00%     ↘             0x00007fe11d2160c9: mov    0x8(%rsp),%r10
                                   0x00007fe11d2160ce: mov    %r12d,0xc(%r10)    ;*getfield size
                                                                                 ; - com.google.re2j.Machine::step@15 (line 270)
  0.14%    0.15%                   0x00007fe11d2160d2: add    $0x60,%rsp
  0.11%    0.08%                   0x00007fe11d2160d6: pop    %rbp
  0.00%    0.00%                   0x00007fe11d2160d7: test   %eax,0x168bdf23(%rip)        # 0x00007fe133ad4000
                                                                                 ;   {poll_return}
                                   0x00007fe11d2160dd: retq   
                                   0x00007fe11d2160de: xchg   %ax,%ax
                                   0x00007fe11d2160e0: mov    %ecx,0x34(%rsp)
                                   0x00007fe11d2160e4: mov    %r9,0x40(%rsp)
                                   0x00007fe11d2160e9: mov    %r11,0x38(%rsp)
                                   0x00007fe11d2160ee: mov    %ebx,0x30(%rsp)
                                   0x00007fe11d2160f2: mov    %eax,0x7c(%rsp)
                                   0x00007fe11d2160f6: mov    %r8d,0x74(%rsp)
                                   0x00007fe11d2160fb: mov    %r10d,%ebp
....................................................................................................
 24.16%   24.75%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 502 (351 bytes) 

                          0x00007fe11d2191da: mov    %r10,(%rsp)
                          0x00007fe11d2191de: nop
                          0x00007fe11d2191df: callq  0x00007fe11d046020  ; OopMap{off=612}
                                                                        ;*invokespecial add
                                                                        ; - com.google.re2j.Machine::add@207 (line 373)
                                                                        ;   {optimized virtual_call}
                  ╭       0x00007fe11d2191e4: jmpq   0x00007fe11d219347
                  │       0x00007fe11d2191e9: mov    0x70(%rsp),%rax
                  │╭      0x00007fe11d2191ee: jmpq   0x00007fe11d219347  ;*tableswitch
                  ││                                                    ; - com.google.re2j.Machine::add@40 (line 353)
  1.02%    1.24%  ││      0x00007fe11d2191f3: mov    0x30(%rsp),%r11d
  0.00%    0.00%  ││      0x00007fe11d2191f8: lea    (%r12,%r11,8),%rbp  ;*aaload
                  ││                                                    ; - com.google.re2j.Prog::getInst@5 (line 30)
                  ││                                                    ; - com.google.re2j.Machine::add@30 (line 352)
  0.02%    0.02%  ││      0x00007fe11d2191fc: mov    0x8(%rsp),%rsi
  0.02%    0.03%  ││      0x00007fe11d219201: mov    0x48(%rsp),%rdx
  0.43%    0.43%  ││      0x00007fe11d219206: mov    0x1c(%rsp),%r8d
           0.02%  ││      0x00007fe11d21920b: mov    0x20(%rsp),%r9
  0.01%    0.00%  ││      0x00007fe11d219210: mov    0x28(%rsp),%edi
  0.01%    0.02%  ││      0x00007fe11d219214: mov    0x70(%rsp),%r10
  0.50%    0.46%  ││      0x00007fe11d219219: mov    %r10,(%rsp)
  0.00%    0.02%  ││      0x00007fe11d21921d: xchg   %ax,%ax
  0.01%    0.01%  ││      0x00007fe11d21921f: callq  0x00007fe11d046020  ; OopMap{rbp=Oop [8]=Oop [32]=Oop [48]=NarrowOop [72]=Oop off=676}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@131 (line 362)
                  ││                                                    ;   {optimized virtual_call}
  0.16%    0.16%  ││      0x00007fe11d219224: mov    0x30(%rsp),%r10d
  0.26%    0.39%  ││      0x00007fe11d219229: mov    0x14(%r12,%r10,8),%ecx  ;*getfield arg
                  ││                                                    ; - com.google.re2j.Machine::add@140 (line 363)
  0.04%    0.03%  ││      0x00007fe11d21922e: mov    0x8(%rsp),%rsi
  0.17%    0.10%  ││      0x00007fe11d219233: mov    0x48(%rsp),%rdx
  0.24%    0.31%  ││      0x00007fe11d219238: mov    0x1c(%rsp),%r8d
  0.02%           ││      0x00007fe11d21923d: mov    0x20(%rsp),%r9
           0.01%  ││      0x00007fe11d219242: mov    0x28(%rsp),%edi
  0.14%    0.11%  ││      0x00007fe11d219246: mov    %rax,(%rsp)
  0.27%    0.37%  ││      0x00007fe11d21924a: nop
  0.00%           ││      0x00007fe11d21924b: callq  0x00007fe11d046020  ; OopMap{off=720}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@150 (line 363)
                  ││                                                    ;   {optimized virtual_call}
  0.01%    0.02%  ││╭     0x00007fe11d219250: jmpq   0x00007fe11d219347  ;*aload
                  │││                                                   ; - com.google.re2j.Machine::add@297 (line 393)
  1.93%    1.91%  │││     0x00007fe11d219255: mov    0x70(%rsp),%rbp
  0.10%    0.05%  │││     0x00007fe11d21925a: test   %rbp,%rbp
                  │││╭    0x00007fe11d21925d: je     0x00007fe11d21927f  ;*ifnonnull
                  ││││                                                  ; - com.google.re2j.Machine::add@299 (line 393)
  0.00%    0.01%  ││││    0x00007fe11d21925f: mov    0x30(%rsp),%r10d
  0.00%    0.00%  ││││    0x00007fe11d219264: mov    %r10d,0x10(%rbp)
  0.22%    0.18%  ││││    0x00007fe11d219268: mov    %rbp,%r10
  0.08%    0.05%  ││││    0x00007fe11d21926b: shr    $0x9,%r10
  0.01%    0.01%  ││││    0x00007fe11d21926f: movabs $0x7fe1191ff000,%r11
  0.00%           ││││    0x00007fe11d219279: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                  ││││                                                  ; - com.google.re2j.Machine::add@317 (line 396)
  0.14%    0.18%  ││││╭   0x00007fe11d21927d: jmp    0x00007fe11d2192d8
  0.65%    0.68%  │││↘│   0x00007fe11d21927f: mov    0x8(%rsp),%r10
                  │││ │   0x00007fe11d219284: mov    0xc(%r10),%r8d     ;*getfield poolSize
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@1 (line 148)
                  │││ │                                                 ; - com.google.re2j.Machine::add@305 (line 394)
                  │││ │   0x00007fe11d219288: test   %r8d,%r8d
                  │││ │   0x00007fe11d21928b: jle    0x00007fe11d219501  ;*ifle
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@4 (line 148)
                  │││ │                                                 ; - com.google.re2j.Machine::add@305 (line 394)
  0.01%    0.01%  │││ │   0x00007fe11d219291: mov    0x24(%r10),%r9d    ;*getfield pool
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@18 (line 150)
                  │││ │                                                 ; - com.google.re2j.Machine::add@305 (line 394)
  0.77%    0.60%  │││ │   0x00007fe11d219295: mov    %r8d,%ebp
                  │││ │   0x00007fe11d219298: dec    %ebp               ;*isub
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@13 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@305 (line 394)
  0.00%           │││ │   0x00007fe11d21929a: mov    %ebp,0xc(%r10)     ;*putfield poolSize
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@14 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@305 (line 394)
  0.02%           │││ │   0x00007fe11d21929e: mov    0xc(%r12,%r9,8),%r11d  ; implicit exception: dispatches to 0x00007fe11d219629
  0.72%    0.65%  │││ │   0x00007fe11d2192a3: cmp    %r11d,%ebp
                  │││ │   0x00007fe11d2192a6: jae    0x00007fe11d2194a9
           0.00%  │││ │   0x00007fe11d2192ac: lea    (%r12,%r9,8),%r10
                  │││ │   0x00007fe11d2192b0: mov    0xc(%r10,%r8,4),%r10d  ;*aaload
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@25 (line 150)
                  │││ │                                                 ; - com.google.re2j.Machine::add@305 (line 394)
  0.01%           │││ │   0x00007fe11d2192b5: mov    0x30(%rsp),%r8d
  0.61%    0.62%  │││ │   0x00007fe11d2192ba: mov    %r8d,0x10(%r12,%r10,8)  ;*putfield inst
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@45 (line 154)
                  │││ │                                                 ; - com.google.re2j.Machine::add@305 (line 394)
                  │││ │                                                 ; implicit exception: dispatches to 0x00007fe11d219639
  0.04%    0.01%  │││ │   0x00007fe11d2192bf: lea    (%r12,%r10,8),%rbp  ;*aaload
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@25 (line 150)
                  │││ │                                                 ; - com.google.re2j.Machine::add@305 (line 394)
                  │││ │   0x00007fe11d2192c3: mov    %rbp,%r10
  0.01%           │││ │   0x00007fe11d2192c6: shr    $0x9,%r10
  0.69%    0.70%  │││ │   0x00007fe11d2192ca: movabs $0x7fe1191ff000,%r11
           0.00%  │││ │   0x00007fe11d2192d4: mov    %r12b,(%r11,%r10,1)  ;*aload
                  │││ │                                                 ; - com.google.re2j.Machine::add@320 (line 398)
  0.05%    0.09%  │││ ↘   0x00007fe11d2192d8: mov    0x20(%rsp),%rdi
  0.01%    0.03%  │││     0x00007fe11d2192dd: mov    0xc(%rdi),%r10d    ;*arraylength
                  │││                                                   ; - com.google.re2j.Machine::add@322 (line 398)
                  │││                                                   ; implicit exception: dispatches to 0x00007fe11d219619
  0.72%    0.59%  │││     0x00007fe11d2192e1: test   %r10d,%r10d
                  │││     0x00007fe11d2192e4: jle    0x00007fe11d2194e6  ;*ifle
                  │││                                                   ; - com.google.re2j.Machine::add@323 (line 398)
  0.13%    0.11%  │││     0x00007fe11d2192ea: mov    0xc(%rbp),%r8d     ;*getfield cap
                  │││                                                   ; - com.google.re2j.Machine::add@328 (line 398)
  0.11%    0.02%  │││     0x00007fe11d2192ee: mov    %r8,%r11
  0.01%           │││     0x00007fe11d2192f1: shl    $0x3,%r11
  0.68%    0.91%  │││     0x00007fe11d2192f5: cmp    %rdi,%r11
                  │││  ╭  0x00007fe11d2192f8: je     0x00007fe11d219325  ;*if_acmpeq
                  │││  │                                                ; - com.google.re2j.Machine::add@333 (line 398)
  0.01%           │││  │  0x00007fe11d2192fa: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x00007fe11d21964d
  0.04%    0.00%  │││  │  0x00007fe11d2192ff: lea    (%r12,%r8,8),%rcx  ;*getfield cap
                  │││  │                                                ; - com.google.re2j.Machine::add@328 (line 398)
           0.00%  │││  │  0x00007fe11d219303: cmp    %r10d,%r11d
                  │││  │  0x00007fe11d219306: jb     0x00007fe11d2194c5
  0.73%    0.58%  │││  │  0x00007fe11d21930c: lea    0x10(%r12,%r8,8),%rsi
                  │││  │  0x00007fe11d219311: add    $0x10,%rdi
  0.00%    0.01%  │││  │  0x00007fe11d219315: movslq %r10d,%rdx
  0.00%           │││  │  0x00007fe11d219318: movabs $0x7fe11d052640,%r10
  0.66%    0.52%  │││  │  0x00007fe11d219322: callq  *%r10              ;*aload
                  │││  │                                                ; - com.google.re2j.Machine::add@351 (line 401)
  0.17%    0.17%  │││  ↘  0x00007fe11d219325: mov    %rbx,%r10
  0.08%    0.02%  │││     0x00007fe11d219328: mov    %rbp,%r8
  0.61%    0.51%  │││     0x00007fe11d21932b: shr    $0x3,%r8
  0.01%    0.01%  │││     0x00007fe11d21932f: mov    %r8d,0x10(%rbx)
  0.15%    0.18%  │││     0x00007fe11d219333: shr    $0x9,%r10
  0.09%    0.02%  │││     0x00007fe11d219337: movabs $0x7fe1191ff000,%r11
  0.70%    0.22%  │││     0x00007fe11d219341: mov    %r12b,(%r11,%r10,1)  ;*putfield thread
                  │││                                                   ; - com.google.re2j.Machine::add@355 (line 401)
  0.04%    0.03%  │││     0x00007fe11d219345: xor    %eax,%eax          ;*synchronization entry
                  │││                                                   ; - com.google.re2j.Machine::add@-1 (line 345)
  0.85%    1.20%  ↘↘↘     0x00007fe11d219347: add    $0x60,%rsp
  0.76%    0.53%          0x00007fe11d21934b: pop    %rbp
  0.09%    0.06%          0x00007fe11d21934c: test   %eax,0x168bacae(%rip)        # 0x00007fe133ad4000
                                                                        ;   {poll_return}
  0.70%    0.98%          0x00007fe11d219352: retq                      ;*tableswitch
                                                                        ; - com.google.re2j.Machine::add@40 (line 353)
                          0x00007fe11d219353: mov    0x8(%rsp),%rsi
                          0x00007fe11d219358: mov    0x48(%rsp),%rdx
                          0x00007fe11d21935d: mov    0x1c(%rsp),%r8d
                          0x00007fe11d219362: mov    0x20(%rsp),%r9
                          0x00007fe11d219367: mov    0x70(%rsp),%r10
                          0x00007fe11d21936c: mov    %r10,(%rsp)
                          0x00007fe11d219370: data16 xchg %ax,%ax
                          0x00007fe11d219373: callq  0x00007fe11d046020  ; OopMap{off=1016}
....................................................................................................
 16.84%   16.26%  <total for region 3>

....[Hottest Regions]...............................................................................
 37.91%   38.41%         C2, level 4  com.google.re2j.Machine::add, version 502 (329 bytes) 
 24.16%   24.75%         C2, level 4  com.google.re2j.Machine::step, version 497 (510 bytes) 
 16.84%   16.26%         C2, level 4  com.google.re2j.Machine::add, version 502 (351 bytes) 
  8.54%   10.72%         C2, level 4  com.google.re2j.Machine::match, version 552 (737 bytes) 
  4.72%    2.66%        runtime stub  StubRoutines::jint_disjoint_arraycopy (128 bytes) 
  2.16%    2.15%   [kernel.kallsyms]  [unknown] (6 bytes) 
  1.26%    1.33%         C2, level 4  com.google.re2j.Machine::step, version 497 (72 bytes) 
  1.08%    1.03%         C2, level 4  com.google.re2j.Machine::add, version 502 (54 bytes) 
  0.27%    0.25%         C2, level 4  com.google.re2j.Machine::match, version 552 (96 bytes) 
  0.23%    0.05%         C2, level 4  com.google.re2j.Machine::init, version 545 (147 bytes) 
  0.20%    0.06%         C2, level 4  com.google.re2j.Machine::init, version 545 (119 bytes) 
  0.10%    0.07%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 629 (180 bytes) 
  0.09%    0.00%   [kernel.kallsyms]  [unknown] (39 bytes) 
  0.08%    0.03%         C2, level 4  com.google.re2j.Machine::init, version 545 (18 bytes) 
  0.06%            [kernel.kallsyms]  [unknown] (29 bytes) 
  0.06%    0.02%   [kernel.kallsyms]  [unknown] (72 bytes) 
  0.05%    0.04%   [kernel.kallsyms]  [unknown] (28 bytes) 
  0.05%    0.04%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.05%    0.02%         C2, level 4  com.google.re2j.Machine::match, version 552 (100 bytes) 
  0.05%    0.01%   [kernel.kallsyms]  [unknown] (26 bytes) 
  2.04%    2.08%  <...other 418 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 55.83%   55.70%         C2, level 4  com.google.re2j.Machine::add, version 502 
 25.42%   26.08%         C2, level 4  com.google.re2j.Machine::step, version 497 
  9.12%   11.19%         C2, level 4  com.google.re2j.Machine::match, version 552 
  4.72%    2.66%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
  3.19%    3.04%   [kernel.kallsyms]  [unknown] 
  0.58%    0.18%         C2, level 4  com.google.re2j.Machine::init, version 545 
  0.27%    0.24%         C2, level 4  com.google.re2j.Matcher::find, version 572 
  0.15%    0.09%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 629 
  0.06%    0.03%        libc-2.26.so  _IO_fwrite 
  0.06%    0.02%      hsdis-amd64.so  [unknown] 
  0.04%    0.03%         C2, level 4  java.util.Collections::shuffle, version 577 
  0.04%    0.05%        libc-2.26.so  vfprintf 
  0.03%    0.00%              [vdso]  [unknown] 
  0.02%    0.08%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.02%                    libjvm.so  _ZN10decode_env12handle_eventEPKcPh 
  0.01%    0.06%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.01%    0.03%           libjvm.so  _ZN18PSPromotionManager22copy_to_survivor_spaceILb0EEEP7oopDescS2_ 
  0.01%    0.01%        libc-2.26.so  __strchrnul_avx2 
  0.01%    0.03%           libjvm.so  _ZN12outputStream12do_vsnprintfEPcmPKcP13__va_list_tagbRm 
  0.01%                 libc-2.26.so  __memmove_avx_unaligned_erms 
  0.40%    0.26%  <...other 70 warm methods...>
....................................................................................................
100.00%   99.80%  <totals>

....[Distribution by Source]........................................................................
 91.40%   93.52%         C2, level 4
  4.73%    2.66%        runtime stub
  3.19%    3.04%   [kernel.kallsyms]
  0.36%    0.45%           libjvm.so
  0.17%    0.25%        libc-2.26.so
  0.06%    0.03%      hsdis-amd64.so
  0.04%    0.03%  libpthread-2.26.so
  0.03%    0.00%              [vdso]
  0.01%    0.01%         interpreter
  0.00%                  C1, level 3
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                     Mode  Cnt     Score     Error  Units
Re2jFindRegex.testExp1       thrpt   20  7586.178 ± 200.446  ops/s
Re2jFindRegex.testExp1:·asm  thrpt            NaN              ---
