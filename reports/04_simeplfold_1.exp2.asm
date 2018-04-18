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
# Warmup Iteration   1: 3125.999 ops/s
# Warmup Iteration   2: 5011.936 ops/s
# Warmup Iteration   3: 5022.933 ops/s
# Warmup Iteration   4: 5021.042 ops/s
# Warmup Iteration   5: 5022.270 ops/s
# Warmup Iteration   6: 5063.288 ops/s
# Warmup Iteration   7: 4036.547 ops/s
# Warmup Iteration   8: 5072.008 ops/s
# Warmup Iteration   9: 5073.808 ops/s
# Warmup Iteration  10: 5073.604 ops/s
# Warmup Iteration  11: 5037.668 ops/s
# Warmup Iteration  12: 5047.162 ops/s
# Warmup Iteration  13: 3989.136 ops/s
# Warmup Iteration  14: 5059.861 ops/s
# Warmup Iteration  15: 5045.223 ops/s
# Warmup Iteration  16: 5053.009 ops/s
# Warmup Iteration  17: 5010.588 ops/s
# Warmup Iteration  18: 5018.040 ops/s
# Warmup Iteration  19: 3934.884 ops/s
# Warmup Iteration  20: 5019.482 ops/s
Iteration   1: 5015.706 ops/s
Iteration   2: 5058.169 ops/s
Iteration   3: 5087.478 ops/s
Iteration   4: 4940.483 ops/s
Iteration   5: 5052.326 ops/s
Iteration   6: 5052.811 ops/s
Iteration   7: 5047.336 ops/s
Iteration   8: 5064.040 ops/s
Iteration   9: 5064.488 ops/s
Iteration  10: 5064.954 ops/s
Iteration  11: 4158.600 ops/s
Iteration  12: 5045.277 ops/s
Iteration  13: 5027.383 ops/s
Iteration  14: 5035.555 ops/s
Iteration  15: 5036.101 ops/s
Iteration  16: 5036.743 ops/s
Iteration  17: 5035.741 ops/s
Iteration  18: 5023.768 ops/s
Iteration  19: 5034.907 ops/s
Iteration  20: 5035.238 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  4995.855 ±(99.9%) 172.950 ops/s [Average]
  (min, avg, max) = (4158.600, 4995.855, 5087.478), stdev = 199.170
  CI (99.9%): [4822.905, 5168.805] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2:·asm":
PrintAssembly processed: 194241 total address lines.
Perf output processed (skipped 23.185 seconds):
 Column 1: cycles (20814 events)
 Column 2: instructions (20818 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 483 (308 bytes) 

                      # parm4:    rdi       = int
                      # parm5:    [sp+0x70]   = &apos;com/google/re2j/Machine$Thread&apos;  (sp of caller)
                      0x00007fed0520e5c0: mov    0x8(%rsi),%r10d    ;   {no_reloc}
                      0x00007fed0520e5c4: shl    $0x3,%r10
                      0x00007fed0520e5c8: cmp    %r10,%rax
                      0x00007fed0520e5cb: jne    0x00007fed05045e20  ;   {runtime_call}
                      0x00007fed0520e5d1: data16 xchg %ax,%ax
                      0x00007fed0520e5d4: nopl   0x0(%rax,%rax,1)
                      0x00007fed0520e5dc: data16 data16 xchg %ax,%ax
                    [Verified Entry Point]
  1.42%    1.52%      0x00007fed0520e5e0: mov    %eax,-0x14000(%rsp)
  0.47%    0.36%      0x00007fed0520e5e7: push   %rbp
  0.67%    1.03%      0x00007fed0520e5e8: sub    $0x60,%rsp         ;*synchronization entry
                                                                    ; - com.google.re2j.Machine::add@-1 (line 345)
  0.66%    0.85%      0x00007fed0520e5ec: mov    %edi,0x28(%rsp)
  0.35%    0.43%      0x00007fed0520e5f0: mov    %r9,0x20(%rsp)
  0.60%    0.84%      0x00007fed0520e5f5: mov    %r8d,0x1c(%rsp)
  0.80%    0.76%      0x00007fed0520e5fa: mov    %rsi,0x8(%rsp)
  0.04%    0.03%      0x00007fed0520e5ff: mov    %ecx,0x30(%rsp)
  0.26%    0.50%      0x00007fed0520e603: test   %ecx,%ecx
                      0x00007fed0520e605: je     0x00007fed0520e87d  ;*ifne
                                                                    ; - com.google.re2j.Machine::add@1 (line 345)
  0.62%    0.46%      0x00007fed0520e60b: mov    %rdx,0x48(%rsp)
  0.74%    0.88%      0x00007fed0520e610: mov    0x14(%rdx),%r10d   ;*getfield sparse
                                                                    ; - com.google.re2j.Machine$Queue::contains@1 (line 46)
                                                                    ; - com.google.re2j.Machine::add@9 (line 348)
                                                                    ; implicit exception: dispatches to 0x00007fed0520ec5d
  0.00%    0.02%      0x00007fed0520e614: mov    0xc(%r12,%r10,8),%r11d  ; implicit exception: dispatches to 0x00007fed0520ec71
  0.19%    0.35%      0x00007fed0520e619: cmp    %r11d,%ecx
                      0x00007fed0520e61c: jae    0x00007fed0520e7aa  ;*iaload
                                                                    ; - com.google.re2j.Machine$Queue::contains@5 (line 46)
                                                                    ; - com.google.re2j.Machine::add@9 (line 348)
  0.42%    0.60%      0x00007fed0520e622: mov    0x10(%rdx),%r11d   ;*getfield dense
                                                                    ; - com.google.re2j.Machine$Queue::contains@18 (line 50)
                                                                    ; - com.google.re2j.Machine::add@9 (line 348)
  0.81%    0.63%      0x00007fed0520e626: mov    0xc(%rdx),%r8d     ;*getfield size
                                                                    ; - com.google.re2j.Machine$Queue::contains@9 (line 47)
                                                                    ; - com.google.re2j.Machine::add@9 (line 348)
  0.01%    0.01%      0x00007fed0520e62a: lea    (%r12,%r10,8),%rcx
  0.25%    0.25%      0x00007fed0520e62e: mov    0x30(%rsp),%r9d
  0.70%    0.73%      0x00007fed0520e633: mov    0x10(%rcx,%r9,4),%ebp  ;*iaload
                                                                    ; - com.google.re2j.Machine$Queue::contains@5 (line 46)
                                                                    ; - com.google.re2j.Machine::add@9 (line 348)
  0.93%    0.70%      0x00007fed0520e638: cmp    %r8d,%ebp
                  ╭   0x00007fed0520e63b: jl     0x00007fed0520e6f8  ;*invokevirtual contains
                  │                                                 ; - com.google.re2j.Machine::add@9 (line 348)
  0.71%    0.95%  │↗  0x00007fed0520e641: mov    0x30(%rsp),%r10d
  0.20%    0.20%  ││  0x00007fed0520e646: mov    %r8d,0x10(%rcx,%r10,4)  ;*iastore
                  ││                                                ; - com.google.re2j.Machine$Queue::add@18 (line 58)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 351)
  0.74%    0.72%  ││  0x00007fed0520e64b: mov    %r8d,%r10d
  0.49%    0.37%  ││  0x00007fed0520e64e: inc    %r10d
  0.37%    0.33%  ││  0x00007fed0520e651: mov    %r10d,0xc(%rdx)    ;*putfield size
                  ││                                                ; - com.google.re2j.Machine$Queue::add@8 (line 57)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 351)
  0.13%    0.23%  ││  0x00007fed0520e655: mov    0xc(%r12,%r11,8),%r10d  ; implicit exception: dispatches to 0x00007fed0520ec85
  0.49%    0.82%  ││  0x00007fed0520e65a: cmp    %r10d,%r8d
                  ││  0x00007fed0520e65d: jae    0x00007fed0520e7e1  ;*aaload
                  ││                                                ; - com.google.re2j.Machine$Queue::add@24 (line 59)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 351)
  0.53%    0.45%  ││  0x00007fed0520e663: lea    (%r12,%r11,8),%r10  ;*getfield dense
                  ││                                                ; - com.google.re2j.Machine$Queue::contains@18 (line 50)
                  ││                                                ; - com.google.re2j.Machine::add@9 (line 348)
  0.39%    0.36%  ││  0x00007fed0520e667: mov    %r10,0x40(%rsp)
  0.20%    0.16%  ││  0x00007fed0520e66c: lea    0x10(%r10,%r8,4),%rbp
  0.55%    0.73%  ││  0x00007fed0520e671: mov    0x0(%rbp),%r9d     ;*aaload
                  ││                                                ; - com.google.re2j.Machine$Queue::add@24 (line 59)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 351)
  0.54%    0.40%  ││  0x00007fed0520e675: test   %r9d,%r9d
                  ││  0x00007fed0520e678: je     0x00007fed0520e741  ;*ifnonnull
                  ││                                                ; - com.google.re2j.Machine$Queue::add@27 (line 60)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 351)
  0.39%    0.35%  ││  0x00007fed0520e67e: lea    (%r12,%r9,8),%rbx  ;*aload_3
                  ││                                                ; - com.google.re2j.Machine$Queue::add@45 (line 63)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 351)
  0.18%    0.29%  ││  0x00007fed0520e682: mov    0x30(%rsp),%r11d
  0.55%    0.50%  ││  0x00007fed0520e687: mov    %r11d,0xc(%rbx)    ;*putfield pc
                  ││                                                ; - com.google.re2j.Machine$Queue::add@52 (line 64)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 351)
  1.69%    2.08%  ││  0x00007fed0520e68b: mov    0x8(%rsp),%r10
  0.30%    0.37%  ││  0x00007fed0520e690: mov    0x18(%r10),%r11d   ;*getfield prog
                  ││                                                ; - com.google.re2j.Machine::add@26 (line 352)
  0.29%    0.30%  ││  0x00007fed0520e694: mov    %r12d,0x10(%rbx)   ;*putfield thread
                  ││                                                ; - com.google.re2j.Machine$Queue::add@47 (line 63)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 351)
  0.59%    0.65%  ││  0x00007fed0520e698: mov    0x18(%r12,%r11,8),%ebp  ;*getfield inst
                  ││                                                ; - com.google.re2j.Prog::getInst@1 (line 30)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 352)
                  ││                                                ; implicit exception: dispatches to 0x00007fed0520ec99
  1.55%    1.72%  ││  0x00007fed0520e69d: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007fed0520ecad
  1.58%    1.64%  ││  0x00007fed0520e6a2: mov    0x30(%rsp),%r11d
  0.04%    0.04%  ││  0x00007fed0520e6a7: cmp    %r10d,%r11d
                  ││  0x00007fed0520e6aa: jae    0x00007fed0520e831
  1.11%    1.00%  ││  0x00007fed0520e6b0: lea    (%r12,%rbp,8),%r10
  0.59%    0.53%  ││  0x00007fed0520e6b4: mov    0x10(%r10,%r11,4),%r11d  ;*aaload
                  ││                                                ; - com.google.re2j.Prog::getInst@5 (line 30)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 352)
  0.21%    0.32%  ││  0x00007fed0520e6b9: mov    %r11d,0x2c(%rsp)
  0.20%    0.22%  ││  0x00007fed0520e6be: mov    0xc(%r12,%r11,8),%r8d  ;*getfield op
                  ││                                                ; - com.google.re2j.Machine::add@37 (line 353)
                  ││                                                ; implicit exception: dispatches to 0x00007fed0520ecc1
  3.67%    3.10%  ││  0x00007fed0520e6c3: mov    %r8d,%r10d
  0.27%    0.12%  ││  0x00007fed0520e6c6: dec    %r10d
  1.19%    1.13%  ││  0x00007fed0520e6c9: cmp    $0xc,%r10d
                  ││  0x00007fed0520e6cd: jae    0x00007fed0520e86d  ;*tableswitch
                  ││                                                ; - com.google.re2j.Machine::add@40 (line 353)
  1.15%    1.16%  ││  0x00007fed0520e6d3: mov    0x10(%r12,%r11,8),%ecx  ;*getfield out
                  ││                                                ; - com.google.re2j.Machine::add@197 (line 373)
  0.17%    0.13%  ││  0x00007fed0520e6d8: mov    0x14(%r12,%r11,8),%r11d  ;*getfield arg
                  ││                                                ; - com.google.re2j.Machine::add@160 (line 367)
  0.18%    0.06%  ││  0x00007fed0520e6dd: movslq %r8d,%r10
  0.15%    0.20%  ││  0x00007fed0520e6e0: mov    0x2c(%rsp),%r9d
  1.05%    1.04%  ││  0x00007fed0520e6e5: lea    (%r12,%r9,8),%rax  ;*aaload
                  ││                                                ; - com.google.re2j.Prog::getInst@5 (line 30)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 352)
  0.20%    0.17%  ││  0x00007fed0520e6e9: movabs $0x7fed0520e560,%r8  ;   {section_word}
  0.15%    0.06%  ││  0x00007fed0520e6f3: jmpq   *-0x8(%r8,%r10,8)  ;*tableswitch
                  ││                                                ; - com.google.re2j.Machine::add@40 (line 353)
  0.04%    0.05%  ↘│  0x00007fed0520e6f8: mov    0xc(%r12,%r11,8),%r10d  ; implicit exception: dispatches to 0x00007fed0520ed1d
  0.01%    0.07%   │  0x00007fed0520e6fd: cmp    %r10d,%ebp
  0.17%    0.16%   │  0x00007fed0520e700: jae    0x00007fed0520e8a5
  0.07%    0.12%   │  0x00007fed0520e706: lea    (%r12,%r11,8),%r10
  0.01%    0.00%   │  0x00007fed0520e70a: mov    0x10(%r10,%rbp,4),%r9d  ;*aaload
                   │                                                ; - com.google.re2j.Machine$Queue::contains@22 (line 50)
                   │                                                ; - com.google.re2j.Machine::add@9 (line 348)
  0.13%    0.17%   │  0x00007fed0520e70f: mov    0xc(%r12,%r9,8),%ebp  ;*getfield pc
                   │                                                ; - com.google.re2j.Machine$Queue::contains@29 (line 51)
                   │                                                ; - com.google.re2j.Machine::add@9 (line 348)
                   │                                                ; implicit exception: dispatches to 0x00007fed0520ed3d
  0.86%    1.14%   │  0x00007fed0520e714: cmp    0x30(%rsp),%ebp
                   ╰  0x00007fed0520e718: jne    0x00007fed0520e641  ;*if_icmpne
                                                                    ; - com.google.re2j.Machine$Queue::contains@33 (line 51)
                                                                    ; - com.google.re2j.Machine::add@9 (line 348)
                      0x00007fed0520e71e: mov    $0xffffff65,%esi
                      0x00007fed0520e723: mov    %rax,-0x8(%rsp)
                      0x00007fed0520e728: mov    0x30(%rsp),%eax
                      0x00007fed0520e72c: mov    %eax,0x18(%rsp)
....................................................................................................
 34.03%   35.60%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 491 (403 bytes) 

                           0x00007fed05216427: mov    0x40(%rsp),%r9     ;*iload
                                                                         ; - com.google.re2j.Machine::step@229 (line 296)
                           0x00007fed0521642c: mov    0x8(%rsp),%rcx
                           0x00007fed05216431: mov    0xc(%rcx),%ecx
                           0x00007fed05216434: cmp    %ecx,%eax
                           0x00007fed05216436: jge    0x00007fed052166ce  ;*if_icmpge
                                                                         ; - com.google.re2j.Machine::step@246 (line 298)
                           0x00007fed0521643c: mov    %eax,%ecx
                           0x00007fed0521643e: jmpq   0x00007fed052166a2  ;*aload
                                                                         ; - com.google.re2j.Machine::step@294 (line 311)
  0.76%    0.93%      ↗    0x00007fed05216443: cmp    $0xc,%r9d
                      │    0x00007fed05216447: jne    0x00007fed05216895  ;*if_icmpne
                      │                                                  ; - com.google.re2j.Inst::matchRune@29 (line 59)
                      │                                                  ; - com.google.re2j.Machine::step@298 (line 311)
  0.55%    0.75%      │    0x00007fed0521644d: mov    0x18(%r12,%rbx,8),%r9d  ;*getfield f0
                      │                                                  ; - com.google.re2j.Inst::matchRune@33 (line 60)
                      │                                                  ; - com.google.re2j.Machine::step@298 (line 311)
  0.01%               │    0x00007fed05216452: cmp    0x20(%rsp),%r9d
                  ╭   │    0x00007fed05216457: je     0x00007fed052165ac  ;*if_icmpeq
                  │   │                                                  ; - com.google.re2j.Inst::matchRune@37 (line 60)
                  │   │                                                  ; - com.google.re2j.Machine::step@298 (line 311)
  0.78%    0.98%  │   │    0x00007fed0521645d: mov    0x1c(%r12,%rbx,8),%r9d  ;*getfield f1
                  │   │                                                  ; - com.google.re2j.Inst::matchRune@41 (line 60)
                  │   │                                                  ; - com.google.re2j.Machine::step@298 (line 311)
  0.04%    0.07%  │   │    0x00007fed05216462: cmp    0x20(%rsp),%r9d
                  │╭  │    0x00007fed05216467: je     0x00007fed052165ac  ;*if_icmpeq
                  ││  │                                                  ; - com.google.re2j.Inst::matchRune@45 (line 60)
                  ││  │                                                  ; - com.google.re2j.Machine::step@298 (line 311)
  0.95%    1.04%  ││  │    0x00007fed0521646d: mov    0x20(%r12,%rbx,8),%ebp  ;*getfield f2
                  ││  │                                                  ; - com.google.re2j.Inst::matchRune@49 (line 60)
                  ││  │                                                  ; - com.google.re2j.Machine::step@298 (line 311)
  0.01%    0.03%  ││  │    0x00007fed05216472: cmp    0x20(%rsp),%ebp
                  ││  │    0x00007fed05216476: je     0x00007fed052168dd  ;*if_icmpeq
                  ││  │                                                  ; - com.google.re2j.Inst::matchRune@53 (line 60)
                  ││  │                                                  ; - com.google.re2j.Machine::step@298 (line 311)
  0.73%    0.90%  ││  │    0x00007fed0521647c: mov    0x24(%r12,%rbx,8),%ebp  ;*getfield f3
                  ││  │                                                  ; - com.google.re2j.Inst::matchRune@57 (line 60)
                  ││  │                                                  ; - com.google.re2j.Machine::step@298 (line 311)
  0.01%    0.01%  ││  │    0x00007fed05216481: cmp    0x20(%rsp),%ebp
                  ││  │    0x00007fed05216485: je     0x00007fed05216911  ;*if_icmpne
                  ││  │                                                  ; - com.google.re2j.Inst::matchRune@61 (line 60)
                  ││  │                                                  ; - com.google.re2j.Machine::step@298 (line 311)
  0.85%    0.95%  ││  │    0x00007fed0521648b: mov    0x20(%rsp),%r9d    ;*goto
                  ││  │                                                  ; - com.google.re2j.Machine::step@291 (line 307)
                  ││  │ ↗  0x00007fed05216490: mov    %r11,%rcx          ;*aload
                  ││  │ │                                                ; - com.google.re2j.Machine::step@389 (line 332)
  0.07%    0.06%  ││  │ │  0x00007fed05216493: mov    0x28(%rsp),%r11
  0.01%    0.01%  ││  │ │  0x00007fed05216498: mov    0x24(%r11),%ebx    ;*getfield pool
                  ││  │ │                                                ; - com.google.re2j.Machine::free@5 (line 160)
                  ││  │ │                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.82%    1.15%  ││  │ │  0x00007fed0521649c: mov    0xc(%r12,%rbx,8),%r11d  ;*arraylength
                  ││  │ │                                                ; - com.google.re2j.Machine::free@8 (line 160)
                  ││  │ │                                                ; - com.google.re2j.Machine::step@397 (line 333)
                  ││  │ │                                                ; implicit exception: dispatches to 0x00007fed052169f5
  0.01%    0.00%  ││  │ │  0x00007fed052164a1: mov    0x28(%rsp),%r8
  0.06%    0.01%  ││  │ │  0x00007fed052164a6: mov    0xc(%r8),%ebp      ;*getfield poolSize
                  ││  │ │                                                ; - com.google.re2j.Machine::free@1 (line 160)
                  ││  │ │                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.00%    0.00%  ││  │ │  0x00007fed052164aa: cmp    %r11d,%ebp
                  ││  │ │  0x00007fed052164ad: jge    0x00007fed0521684d  ;*if_icmplt
                  ││  │ │                                                ; - com.google.re2j.Machine::free@9 (line 160)
                  ││  │ │                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.75%    0.94%  ││  │ │  0x00007fed052164b3: mov    %ebp,%r8d
                  ││  │ │  0x00007fed052164b6: inc    %r8d
  0.05%    0.04%  ││  │ │  0x00007fed052164b9: mov    0x28(%rsp),%rdi
  0.00%           ││  │ │  0x00007fed052164be: mov    %r8d,0xc(%rdi)     ;*putfield poolSize
                  ││  │ │                                                ; - com.google.re2j.Machine::free@45 (line 163)
                  ││  │ │                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.80%    0.90%  ││  │ │  0x00007fed052164c2: cmp    %r11d,%ebp
                  ││  │ │  0x00007fed052164c5: jae    0x00007fed05216791  ;*aastore
                  ││  │ │                                                ; - com.google.re2j.Machine::free@49 (line 163)
                  ││  │ │                                                ; - com.google.re2j.Machine::step@397 (line 333)
                  ││  │ │  0x00007fed052164cb: mov    %rcx,%r11
  0.04%    0.03%  ││  │ │  0x00007fed052164ce: shr    $0x3,%r11
  0.01%    0.00%  ││  │ │  0x00007fed052164d2: lea    (%r12,%rbx,8),%r10  ;*getfield pool
                  ││  │ │                                                ; - com.google.re2j.Machine::free@5 (line 160)
                  ││  │ │                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.78%    0.62%  ││  │ │  0x00007fed052164d6: lea    0x10(%r10,%rbp,4),%r10
  0.01%    0.00%  ││  │ │  0x00007fed052164db: mov    %r11d,(%r10)
  0.06%    0.06%  ││  │ │  0x00007fed052164de: shr    $0x9,%r10
           0.01%  ││  │ │  0x00007fed052164e2: movabs $0x7fed16078000,%r11
  0.76%    0.73%  ││  │ │  0x00007fed052164ec: mov    %r12b,(%r11,%r10,1)  ;*aastore
                  ││  │ │                                                ; - com.google.re2j.Machine::free@49 (line 163)
                  ││  │ │                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.06%    0.07%  ││  │ │  0x00007fed052164f0: xor    %r10d,%r10d
  0.03%    0.02%  ││╭ │ │  0x00007fed052164f3: jmp    0x00007fed052164ff
  0.29%    0.24%  │││↗│ │  0x00007fed052164f5: mov    0x24(%rsp),%r10d
  0.08%    0.16%  │││││ │  0x00007fed052164fa: mov    0x20(%rsp),%r9d    ; OopMap{[8]=Oop [24]=Oop [40]=Oop off=511}
                  │││││ │                                                ;*goto
                  │││││ │                                                ; - com.google.re2j.Machine::step@403 (line 270)
  0.25%    0.10%  ││↘││ │  0x00007fed052164ff: test   %eax,0x18459afb(%rip)        # 0x00007fed1d670000
                  ││ ││ │                                                ;*goto
                  ││ ││ │                                                ; - com.google.re2j.Machine::step@403 (line 270)
                  ││ ││ │                                                ;   {poll}
  0.89%    0.60%  ││ ││ │  0x00007fed05216505: mov    0x8(%rsp),%r10
  0.36%    0.23%  ││ ││ │  0x00007fed0521650a: mov    0xc(%r10),%r10d
  0.19%    0.20%  ││ ││ │  0x00007fed0521650e: cmp    %r10d,%eax
                  ││ ││ │  0x00007fed05216511: jge    0x00007fed05216620
  0.21%    0.15%  ││ ││ │  0x00007fed05216517: mov    %r9d,0x20(%rsp)
  0.73%    0.53%  ││ ││ │  0x00007fed0521651c: mov    %eax,%r10d         ;*aload_1
                  ││ ││ │                                                ; - com.google.re2j.Machine::step@21 (line 271)
  0.31%    0.32%  ││ ││ │  0x00007fed0521651f: mov    0x8(%rsp),%r11
  0.25%    0.19%  ││ ││ │  0x00007fed05216524: mov    0x10(%r11),%r8d    ;*getfield dense
                  ││ ││ │                                                ; - com.google.re2j.Machine::step@22 (line 271)
  0.40%    0.19%  ││ ││ │  0x00007fed05216528: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x00007fed052169ad
  1.29%    0.87%  ││ ││ │  0x00007fed0521652d: cmp    %r11d,%r10d
                  ││ ││ │  0x00007fed05216530: jae    0x00007fed05216715
  0.39%    0.40%  ││ ││ │  0x00007fed05216536: lea    (%r12,%r8,8),%r11
  0.19%    0.17%  ││ ││ │  0x00007fed0521653a: mov    0x10(%r11,%r10,4),%r9d  ;*aaload
                  ││ ││ │                                                ; - com.google.re2j.Machine::step@27 (line 271)
  0.37%    0.36%  ││ ││ │  0x00007fed0521653f: mov    0x10(%r12,%r9,8),%r8d  ;*getfield thread
                  ││ ││ │                                                ; - com.google.re2j.Machine::step@40 (line 275)
                  ││ ││ │                                                ; implicit exception: dispatches to 0x00007fed05216a05
  1.94%    1.44%  ││ ││ │  0x00007fed05216544: mov    %r10d,%eax
  0.26%    0.18%  ││ ││ │  0x00007fed05216547: inc    %eax               ;*iadd
                  ││ ││ │                                                ; - com.google.re2j.Machine::step@237 (line 298)
  0.17%    0.16%  ││ ││ │  0x00007fed05216549: test   %r8d,%r8d
                  ││ ╰│ │  0x00007fed0521654c: je     0x00007fed052164f5  ;*ifnonnull
                  ││  │ │                                                ; - com.google.re2j.Machine::step@47 (line 276)
  0.41%    0.38%  ││  │ │  0x00007fed0521654e: mov    0x24(%rsp),%r9d
  0.53%    0.31%  ││  │ │  0x00007fed05216553: test   %r9d,%r9d
                  ││  │ │  0x00007fed05216556: jne    0x00007fed05216805  ;*ifeq
                  ││  │ │                                                ; - com.google.re2j.Machine::step@55 (line 279)
  0.05%    0.02%  ││  │ │  0x00007fed0521655c: mov    0x10(%r12,%r8,8),%ebx  ;*getfield inst
                  ││  │ │                                                ; - com.google.re2j.Machine::step@101 (line 283)
  1.67%    1.58%  ││  │ │  0x00007fed05216561: mov    0xc(%r12,%rbx,8),%r9d  ;*getfield op
                  ││  │ │                                                ; - com.google.re2j.Machine::step@111 (line 285)
                  ││  │ │                                                ; implicit exception: dispatches to 0x00007fed052169e5
  3.65%    4.03%  ││  │ │  0x00007fed05216566: mov    0xc(%r12,%r8,8),%r14d  ;*getfield cap
                  ││  │ │                                                ; - com.google.re2j.Machine::step@172 (line 292)
  0.06%    0.05%  ││  │ │  0x00007fed0521656b: lea    (%r12,%r8,8),%r11  ;*getfield thread
                  ││  │ │                                                ; - com.google.re2j.Machine::step@40 (line 275)
  0.00%    0.01%  ││  │ │  0x00007fed0521656f: cmp    $0x9,%r9d
                  ││  │ │  0x00007fed05216573: je     0x00007fed052165f9
  0.92%    1.23%  ││  │ │  0x00007fed05216579: cmp    $0x9,%r9d
                  ││  │ │  0x00007fed0521657d: jle    0x00007fed0521636d
  0.59%    0.62%  ││  │ │  0x00007fed05216583: cmp    $0xc,%r9d
                  ││  ╰ │  0x00007fed05216587: je     0x00007fed05216443
           0.00%  ││    │  0x00007fed0521658d: cmp    $0xc,%r9d
                  ││    │  0x00007fed05216591: jg     0x00007fed05216885
           0.01%  ││    │  0x00007fed05216597: cmp    $0xb,%r9d
                  ││   ╭│  0x00007fed0521659b: jne    0x00007fed052165ac  ;*tableswitch
                  ││   ││                                                ; - com.google.re2j.Machine::step@114 (line 285)
                  ││   ││  0x00007fed0521659d: mov    0x20(%rsp),%r9d
                  ││   ││  0x00007fed052165a2: cmp    $0xa,%r9d
                  ││   │╰  0x00007fed052165a6: je     0x00007fed05216490  ;*ifeq
                  ││   │                                                 ; - com.google.re2j.Machine::step@363 (line 329)
  0.35%    0.36%  ↘↘   ↘   0x00007fed052165ac: mov    %eax,0x74(%rsp)
  0.35%    0.18%           0x00007fed052165b0: mov    %r10d,%ebp
                           0x00007fed052165b3: mov    0x10(%r12,%rbx,8),%ecx  ;*getfield out
                                                                         ; - com.google.re2j.Machine::step@370 (line 330)
                           0x00007fed052165b8: mov    %r14,%r9
                           0x00007fed052165bb: shl    $0x3,%r9           ;*getfield cap
                                                                         ; - com.google.re2j.Machine::step@172 (line 292)
  0.01%                    0x00007fed052165bf: mov    0x28(%rsp),%rsi
  0.00%                    0x00007fed052165c4: mov    0x18(%rsp),%rdx
  0.00%                    0x00007fed052165c9: mov    0x14(%rsp),%r8d
  0.00%    0.01%           0x00007fed052165ce: mov    0x70(%rsp),%edi
  0.02%                    0x00007fed052165d2: mov    %r11,(%rsp)
  0.04%    0.00%           0x00007fed052165d6: nop
                           0x00007fed052165d7: callq  0x00007fed05046020  ; OopMap{[8]=Oop [24]=Oop [40]=Oop off=732}
                                                                         ;*invokespecial add
                                                                         ; - com.google.re2j.Machine::step@384 (line 330)
                                                                         ;   {optimized virtual_call}
                           0x00007fed052165dc: mov    %rax,%rcx
                           0x00007fed052165df: test   %rax,%rax
                           0x00007fed052165e2: je     0x00007fed05216704  ;*ifnull
                                                                         ; - com.google.re2j.Machine::step@391 (line 332)
                           0x00007fed052165e8: mov    0x20(%rsp),%r9d
                           0x00007fed052165ed: mov    %ebp,%r10d
....................................................................................................
 26.30%   25.67%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 483 (333 bytes) 

                          0x00007fed0520e9e2: mov    %r10,(%rsp)
                          0x00007fed0520e9e6: nop
                          0x00007fed0520e9e7: callq  0x00007fed05046020  ; OopMap{off=1068}
                                                                        ;*invokespecial add
                                                                        ; - com.google.re2j.Machine::add@207 (line 373)
                                                                        ;   {optimized virtual_call}
                  ╭       0x00007fed0520e9ec: jmpq   0x00007fed0520eb2e
                  │       0x00007fed0520e9f1: mov    0x70(%rsp),%rax
                  │╭      0x00007fed0520e9f6: jmpq   0x00007fed0520eb2e  ;*tableswitch
                  ││                                                    ; - com.google.re2j.Machine::add@40 (line 353)
  2.46%    2.35%  ││      0x00007fed0520e9fb: mov    0x8(%rsp),%rsi
  0.00%    0.00%  ││      0x00007fed0520ea00: mov    0x48(%rsp),%rdx
           0.01%  ││      0x00007fed0520ea05: mov    0x1c(%rsp),%r8d
  0.08%    0.05%  ││      0x00007fed0520ea0a: mov    0x20(%rsp),%r9
  0.63%    0.54%  ││      0x00007fed0520ea0f: mov    0x28(%rsp),%edi
  0.01%    0.01%  ││      0x00007fed0520ea13: mov    0x70(%rsp),%r10
  0.00%    0.01%  ││      0x00007fed0520ea18: mov    %r10,(%rsp)
  0.09%    0.06%  ││      0x00007fed0520ea1c: mov    %rsi,%rbp
  0.61%    0.60%  ││      0x00007fed0520ea1f: mov    %rax,0x38(%rsp)
           0.01%  ││      0x00007fed0520ea24: data16 xchg %ax,%ax
  0.02%    0.00%  ││      0x00007fed0520ea27: callq  0x00007fed05046020  ; OopMap{rbp=Oop [32]=Oop [44]=NarrowOop [56]=Oop [72]=Oop off=1132}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@131 (line 362)
                  ││                                                    ;   {optimized virtual_call}
  0.03%    0.00%  ││      0x00007fed0520ea2c: mov    0x2c(%rsp),%r10d
  0.17%    0.28%  ││      0x00007fed0520ea31: mov    0x14(%r12,%r10,8),%ecx  ;*getfield arg
                  ││                                                    ; - com.google.re2j.Machine::add@140 (line 363)
  0.52%    0.75%  ││      0x00007fed0520ea36: mov    %rbp,%rsi
           0.02%  ││      0x00007fed0520ea39: mov    0x48(%rsp),%rdx
                  ││      0x00007fed0520ea3e: mov    0x1c(%rsp),%r8d
  0.14%    0.29%  ││      0x00007fed0520ea43: mov    0x20(%rsp),%r9
  0.43%    0.70%  ││      0x00007fed0520ea48: mov    0x28(%rsp),%edi
           0.01%  ││      0x00007fed0520ea4c: mov    %rax,(%rsp)
           0.01%  ││      0x00007fed0520ea50: data16 xchg %ax,%ax
  0.19%    0.22%  ││      0x00007fed0520ea53: callq  0x00007fed05046020  ; OopMap{off=1176}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@150 (line 363)
                  ││                                                    ;   {optimized virtual_call}
  0.02%    0.03%  ││╭     0x00007fed0520ea58: jmpq   0x00007fed0520eb2e  ;*aload
                  │││                                                   ; - com.google.re2j.Machine::add@297 (line 393)
  3.47%    3.59%  │││     0x00007fed0520ea5d: mov    0x70(%rsp),%rbp
  0.03%    0.04%  │││     0x00007fed0520ea62: test   %rbp,%rbp
                  │││╭    0x00007fed0520ea65: jne    0x00007fed0520eb3a  ;*ifnonnull
                  ││││                                                  ; - com.google.re2j.Machine::add@299 (line 393)
  0.02%    0.01%  ││││    0x00007fed0520ea6b: mov    0x8(%rsp),%r10
  0.06%    0.04%  ││││    0x00007fed0520ea70: mov    0xc(%r10),%r11d    ;*getfield poolSize
                  ││││                                                  ; - com.google.re2j.Machine::alloc@1 (line 148)
                  ││││                                                  ; - com.google.re2j.Machine::add@305 (line 394)
  0.76%    0.85%  ││││    0x00007fed0520ea74: test   %r11d,%r11d
                  ││││    0x00007fed0520ea77: jle    0x00007fed0520ebdd  ;*ifle
                  ││││                                                  ; - com.google.re2j.Machine::alloc@4 (line 148)
                  ││││                                                  ; - com.google.re2j.Machine::add@305 (line 394)
  0.03%    0.04%  ││││    0x00007fed0520ea7d: mov    0x24(%r10),%r8d    ;*getfield pool
                  ││││                                                  ; - com.google.re2j.Machine::alloc@18 (line 150)
                  ││││                                                  ; - com.google.re2j.Machine::add@305 (line 394)
  0.02%    0.01%  ││││    0x00007fed0520ea81: mov    %r11d,%ebp
  0.07%    0.04%  ││││    0x00007fed0520ea84: dec    %ebp               ;*isub
                  ││││                                                  ; - com.google.re2j.Machine::alloc@13 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@305 (line 394)
  0.69%    0.67%  ││││    0x00007fed0520ea86: mov    %ebp,0xc(%r10)     ;*putfield poolSize
                  ││││                                                  ; - com.google.re2j.Machine::alloc@14 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@305 (line 394)
  0.04%    0.04%  ││││    0x00007fed0520ea8a: mov    0xc(%r12,%r8,8),%r10d  ; implicit exception: dispatches to 0x00007fed0520ece1
  0.01%    0.01%  ││││    0x00007fed0520ea8f: cmp    %r10d,%ebp
                  ││││    0x00007fed0520ea92: jae    0x00007fed0520eb82
  0.06%    0.03%  ││││    0x00007fed0520ea98: lea    (%r12,%r8,8),%r10
  0.83%    0.66%  ││││    0x00007fed0520ea9c: mov    0xc(%r10,%r11,4),%r11d  ;*aaload
                  ││││                                                  ; - com.google.re2j.Machine::alloc@25 (line 150)
                  ││││                                                  ; - com.google.re2j.Machine::add@305 (line 394)
  0.06%    0.03%  ││││    0x00007fed0520eaa1: mov    %r9d,0x10(%r12,%r11,8)  ;*putfield inst
                  ││││                                                  ; - com.google.re2j.Machine::alloc@45 (line 154)
                  ││││                                                  ; - com.google.re2j.Machine::add@305 (line 394)
                  ││││                                                  ; implicit exception: dispatches to 0x00007fed0520ecf1
  0.02%    0.01%  ││││    0x00007fed0520eaa6: lea    (%r12,%r11,8),%rbp  ;*aaload
                  ││││                                                  ; - com.google.re2j.Machine::alloc@25 (line 150)
                  ││││                                                  ; - com.google.re2j.Machine::add@305 (line 394)
  0.06%    0.03%  ││││    0x00007fed0520eaaa: mov    %rbp,%r10
  0.72%    0.75%  ││││    0x00007fed0520eaad: shr    $0x9,%r10
  0.02%    0.03%  ││││    0x00007fed0520eab1: movabs $0x7fed16078000,%r11
  0.01%    0.01%  ││││    0x00007fed0520eabb: mov    %r12b,(%r11,%r10,1)  ;*aload
                  ││││                                                  ; - com.google.re2j.Machine::add@320 (line 398)
  0.07%    0.02%  ││││ ↗  0x00007fed0520eabf: mov    0x20(%rsp),%rdi
  0.70%    0.81%  ││││ │  0x00007fed0520eac4: mov    0xc(%rdi),%r10d    ;*arraylength
                  ││││ │                                                ; - com.google.re2j.Machine::add@322 (line 398)
                  ││││ │                                                ; implicit exception: dispatches to 0x00007fed0520ecd1
  0.04%    0.05%  ││││ │  0x00007fed0520eac8: test   %r10d,%r10d
                  ││││ │  0x00007fed0520eacb: jle    0x00007fed0520ebc2  ;*ifle
                  ││││ │                                                ; - com.google.re2j.Machine::add@323 (line 398)
  0.01%    0.01%  ││││ │  0x00007fed0520ead1: mov    0xc(%rbp),%r8d     ;*getfield cap
                  ││││ │                                                ; - com.google.re2j.Machine::add@328 (line 398)
  0.06%    0.01%  ││││ │  0x00007fed0520ead5: mov    %r8,%r11
  0.72%    0.77%  ││││ │  0x00007fed0520ead8: shl    $0x3,%r11
  0.03%    0.08%  ││││ │  0x00007fed0520eadc: cmp    %rdi,%r11
                  ││││╭│  0x00007fed0520eadf: je     0x00007fed0520eb0c  ;*if_acmpeq
                  ││││││                                                ; - com.google.re2j.Machine::add@333 (line 398)
  0.03%    0.02%  ││││││  0x00007fed0520eae1: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x00007fed0520ed05
  0.06%    0.07%  ││││││  0x00007fed0520eae6: lea    (%r12,%r8,8),%rcx  ;*getfield cap
                  ││││││                                                ; - com.google.re2j.Machine::add@328 (line 398)
  0.69%    0.73%  ││││││  0x00007fed0520eaea: cmp    %r10d,%r11d
                  ││││││  0x00007fed0520eaed: jb     0x00007fed0520eb9d
  0.06%    0.11%  ││││││  0x00007fed0520eaf3: lea    0x10(%r12,%r8,8),%rsi
  0.01%    0.02%  ││││││  0x00007fed0520eaf8: add    $0x10,%rdi
  0.03%    0.01%  ││││││  0x00007fed0520eafc: movslq %r10d,%rdx
  0.78%    0.47%  ││││││  0x00007fed0520eaff: movabs $0x7fed05052640,%r10
  0.06%    0.12%  ││││││  0x00007fed0520eb09: callq  *%r10              ;*aload
                  ││││││                                                ; - com.google.re2j.Machine::add@351 (line 401)
  0.02%    0.00%  ││││↘│  0x00007fed0520eb0c: mov    %rbx,%r10
  0.02%    0.02%  ││││ │  0x00007fed0520eb0f: mov    %rbp,%r8
  0.05%    0.08%  ││││ │  0x00007fed0520eb12: shr    $0x3,%r8
  0.74%    0.09%  ││││ │  0x00007fed0520eb16: mov    %r8d,0x10(%rbx)
                  ││││ │  0x00007fed0520eb1a: shr    $0x9,%r10
  0.05%    0.01%  ││││ │  0x00007fed0520eb1e: movabs $0x7fed16078000,%r11
  0.10%    0.10%  ││││ │  0x00007fed0520eb28: mov    %r12b,(%r11,%r10,1)  ;*putfield thread
                  ││││ │                                                ; - com.google.re2j.Machine::add@355 (line 401)
  0.80%    0.07%  ││││ │  0x00007fed0520eb2c: xor    %eax,%eax          ;*synchronization entry
                  ││││ │                                                ; - com.google.re2j.Machine::add@-1 (line 345)
  0.67%    1.16%  ↘↘↘│ │  0x00007fed0520eb2e: add    $0x60,%rsp
  0.09%    0.10%     │ │  0x00007fed0520eb32: pop    %rbp
  0.81%    1.27%     │ │  0x00007fed0520eb33: test   %eax,0x184614c7(%rip)        # 0x00007fed1d670000
                     │ │                                                ;   {poll_return}
  0.70%    1.03%     │ │  0x00007fed0520eb39: retq   
  0.03%    0.01%     ↘ │  0x00007fed0520eb3a: mov    %r9d,%r11d
                       │  0x00007fed0520eb3d: mov    %r11d,0x10(%rbp)
                       │  0x00007fed0520eb41: mov    %rbp,%r10
                       │  0x00007fed0520eb44: shr    $0x9,%r10
  0.04%    0.01%       │  0x00007fed0520eb48: movabs $0x7fed16078000,%r11
                       │  0x00007fed0520eb52: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                       │                                                ; - com.google.re2j.Machine::add@317 (line 396)
                       ╰  0x00007fed0520eb56: jmpq   0x00007fed0520eabf  ;*tableswitch
                                                                        ; - com.google.re2j.Machine::add@40 (line 353)
                          0x00007fed0520eb5b: mov    0x8(%rsp),%rsi
                          0x00007fed0520eb60: mov    0x48(%rsp),%rdx
                          0x00007fed0520eb65: mov    0x1c(%rsp),%r8d
                          0x00007fed0520eb6a: mov    0x20(%rsp),%r9
                          0x00007fed0520eb6f: mov    0x70(%rsp),%r10
                          0x00007fed0520eb74: mov    %r10,(%rsp)
....................................................................................................
 19.87%   20.18%  <total for region 3>

....[Hottest Regions]...............................................................................
 34.03%   35.60%         C2, level 4  com.google.re2j.Machine::add, version 483 (308 bytes) 
 26.30%   25.67%         C2, level 4  com.google.re2j.Machine::step, version 491 (403 bytes) 
 19.87%   20.18%         C2, level 4  com.google.re2j.Machine::add, version 483 (333 bytes) 
  6.88%    7.92%         C2, level 4  com.google.re2j.Machine::match, version 531 (795 bytes) 
  6.14%    4.57%        runtime stub  StubRoutines::jint_disjoint_arraycopy (128 bytes) 
  2.18%    2.17%   [kernel.kallsyms]  [unknown] (6 bytes) 
  1.12%    0.89%         C2, level 4  com.google.re2j.Machine::step, version 491 (72 bytes) 
  0.36%    0.19%         C2, level 4  com.google.re2j.Machine::step, version 491 (27 bytes) 
  0.19%    0.32%         C2, level 4  com.google.re2j.Machine::match, version 531 (60 bytes) 
  0.12%    0.04%         C2, level 4  com.google.re2j.Machine::init, version 541 (58 bytes) 
  0.11%    0.04%         C2, level 4  com.google.re2j.Machine::init, version 541 (62 bytes) 
  0.10%    0.00%   [kernel.kallsyms]  [unknown] (1 bytes) 
  0.08%            [kernel.kallsyms]  [unknown] (37 bytes) 
  0.07%    0.06%   [kernel.kallsyms]  [unknown] (28 bytes) 
  0.07%    0.04%         C2, level 4  com.google.re2j.Matcher::find, version 559 (5 bytes) 
  0.06%    0.02%   [kernel.kallsyms]  [unknown] (28 bytes) 
  0.06%            [kernel.kallsyms]  [unknown] (0 bytes) 
  0.05%    0.01%         C2, level 4  com.google.re2j.Machine::step, version 491 (12 bytes) 
  0.04%    0.01%   [kernel.kallsyms]  [unknown] (26 bytes) 
  0.04%    0.01%   [kernel.kallsyms]  [unknown] (0 bytes) 
  2.14%    2.24%  <...other 475 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 53.91%   55.78%         C2, level 4  com.google.re2j.Machine::add, version 483 
 27.86%   26.78%         C2, level 4  com.google.re2j.Machine::step, version 491 
  7.13%    8.26%         C2, level 4  com.google.re2j.Machine::match, version 531 
  6.14%    4.57%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
  3.48%    3.12%   [kernel.kallsyms]  [unknown] 
  0.33%    0.12%         C2, level 4  com.google.re2j.Machine::init, version 541 
  0.24%    0.13%         C2, level 4  com.google.re2j.Matcher::find, version 559 
  0.06%    0.08%        libc-2.26.so  vfprintf 
  0.05%    0.05%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 634 
  0.04%    0.06%           libjvm.so  _ZN18PSPromotionManager22copy_to_survivor_spaceILb0EEEP7oopDescS2_ 
  0.04%    0.05%         C2, level 4  java.util.Collections::shuffle, version 565 
  0.04%    0.05%      hsdis-amd64.so  [unknown] 
  0.03%    0.05%        libc-2.26.so  __strlen_avx2 
  0.03%    0.04%        libc-2.26.so  _IO_fwrite 
  0.02%    0.00%           libjvm.so  _ZN9StealTask5do_itEP13GCTaskManagerj 
  0.02%    0.05%           libjvm.so  _ZN12outputStream15update_positionEPKcm 
  0.02%    0.04%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.02%    0.05%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.02%    0.01%           libjvm.so  _ZN19GenericTaskQueueSetI17OverflowTaskQueueI8StarTaskL10MemoryType1ELj131072EELS2_1EE15steal_best_of_2EjPiRS1_ 
  0.02%           libpthread-2.26.so  __libc_write 
  0.50%    0.37%  <...other 79 warm methods...>
....................................................................................................
100.00%   99.67%  <totals>

....[Distribution by Source]........................................................................
 89.58%   91.17%         C2, level 4
  6.14%    4.57%        runtime stub
  3.48%    3.12%   [kernel.kallsyms]
  0.43%    0.72%           libjvm.so
  0.24%    0.32%        libc-2.26.so
  0.05%    0.03%  libpthread-2.26.so
  0.04%    0.06%      hsdis-amd64.so
  0.01%                  interpreter
  0.01%                       [vdso]
  0.00%    0.01%         C1, level 3
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                     Mode  Cnt     Score     Error  Units
Re2jFindRegex.testExp2       thrpt   20  4995.855 ± 172.950  ops/s
Re2jFindRegex.testExp2:·asm  thrpt            NaN              ---
