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
# Warmup Iteration   1: 2680.950 ops/s
# Warmup Iteration   2: 4696.762 ops/s
# Warmup Iteration   3: 4749.436 ops/s
# Warmup Iteration   4: 4695.805 ops/s
# Warmup Iteration   5: 4770.908 ops/s
# Warmup Iteration   6: 4733.280 ops/s
# Warmup Iteration   7: 4784.103 ops/s
# Warmup Iteration   8: 4785.171 ops/s
# Warmup Iteration   9: 4790.215 ops/s
# Warmup Iteration  10: 4833.775 ops/s
# Warmup Iteration  11: 4786.382 ops/s
# Warmup Iteration  12: 4803.907 ops/s
# Warmup Iteration  13: 4812.973 ops/s
# Warmup Iteration  14: 4693.209 ops/s
# Warmup Iteration  15: 4482.140 ops/s
# Warmup Iteration  16: 4758.391 ops/s
# Warmup Iteration  17: 4780.991 ops/s
# Warmup Iteration  18: 4791.940 ops/s
# Warmup Iteration  19: 4787.735 ops/s
# Warmup Iteration  20: 4772.210 ops/s
Iteration   1: 4796.499 ops/s
Iteration   2: 4789.643 ops/s
Iteration   3: 4810.304 ops/s
Iteration   4: 4810.008 ops/s
Iteration   5: 4834.302 ops/s
Iteration   6: 4800.039 ops/s
Iteration   7: 4841.881 ops/s
Iteration   8: 4830.617 ops/s
Iteration   9: 4839.275 ops/s
Iteration  10: 4840.928 ops/s
Iteration  11: 4804.506 ops/s
Iteration  12: 4848.499 ops/s
Iteration  13: 4838.503 ops/s
Iteration  14: 4846.328 ops/s
Iteration  15: 4829.759 ops/s
Iteration  16: 4783.013 ops/s
Iteration  17: 4829.883 ops/s
Iteration  18: 4838.853 ops/s
Iteration  19: 4846.618 ops/s
Iteration  20: 4831.919 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  4824.569 ±(99.9%) 17.939 ops/s [Average]
  (min, avg, max) = (4783.013, 4824.569, 4848.499), stdev = 20.659
  CI (99.9%): [4806.630, 4842.508] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine:·asm":
PrintAssembly processed: 207010 total address lines.
Perf output processed (skipped 22.909 seconds):
 Column 1: cycles (20713 events)
 Column 2: instructions (20694 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 522 (394 bytes) 

                          0x00007f55ed22c7c0: mov    %r10,(%rsp)
                          0x00007f55ed22c7c4: data16 xchg %ax,%ax
                          0x00007f55ed22c7c7: callq  0x00007f55ed046020  ; OopMap{off=300}
                                                                        ;*invokespecial add
                                                                        ; - com.google.re2j.Machine::add@186 (line 363)
                                                                        ;   {optimized virtual_call}
                  ╭       0x00007f55ed22c7cc: jmpq   0x00007f55ed22c95a
                  │       0x00007f55ed22c7d1: mov    0x70(%rsp),%rax
                  │╭      0x00007f55ed22c7d6: jmpq   0x00007f55ed22c95a  ;*tableswitch
                  ││                                                    ; - com.google.re2j.Machine::add@26 (line 343)
  0.98%    1.25%  ││      0x00007f55ed22c7db: mov    0x20(%rsp),%r8d
  0.14%    0.10%  ││      0x00007f55ed22c7e0: mov    0x28(%rsp),%r9
  0.13%    0.15%  ││      0x00007f55ed22c7e5: mov    0x70(%rsp),%r10
  0.12%    0.16%  ││      0x00007f55ed22c7ea: mov    %r10,(%rsp)
  0.39%    0.49%  ││      0x00007f55ed22c7ee: mov    %rsi,%rbp
  0.13%    0.17%  ││      0x00007f55ed22c7f1: xchg   %ax,%ax
  0.15%    0.25%  ││      0x00007f55ed22c7f3: callq  0x00007f55ed046020  ; OopMap{rbp=Oop [40]=Oop [56]=Oop [64]=Oop off=344}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@114 (line 352)
                  ││                                                    ;   {optimized virtual_call}
  0.15%    0.18%  ││      0x00007f55ed22c7f8: mov    0x38(%rsp),%r10
  0.02%    0.02%  ││      0x00007f55ed22c7fd: mov    0x34(%r10),%r10d
  0.74%    0.78%  ││      0x00007f55ed22c801: mov    %r10,%rcx
  0.09%    0.14%  ││      0x00007f55ed22c804: shl    $0x3,%rcx          ;*getfield argInst
                  ││                                                    ; - com.google.re2j.Machine::add@122 (line 353)
  0.05%    0.05%  ││      0x00007f55ed22c808: mov    %rbp,%rsi
  0.00%    0.01%  ││      0x00007f55ed22c80b: mov    0x40(%rsp),%rdx
  0.56%    0.65%  ││      0x00007f55ed22c810: mov    0x20(%rsp),%r8d
  0.15%    0.17%  ││      0x00007f55ed22c815: mov    0x28(%rsp),%r9
  0.01%    0.01%  ││      0x00007f55ed22c81a: mov    0x30(%rsp),%edi
  0.01%    0.02%  ││      0x00007f55ed22c81e: mov    %rax,(%rsp)
  0.64%    0.77%  ││      0x00007f55ed22c822: nop
  0.10%    0.16%  ││      0x00007f55ed22c823: callq  0x00007f55ed046020  ; OopMap{off=392}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@132 (line 353)
                  ││                                                    ;   {optimized virtual_call}
  0.13%    0.28%  ││╭     0x00007f55ed22c828: jmpq   0x00007f55ed22c95a  ;*aload
                  │││                                                   ; - com.google.re2j.Machine::add@270 (line 383)
  1.03%    1.04%  │││     0x00007f55ed22c82d: mov    0x38(%rsp),%r10
  0.07%    0.06%  │││     0x00007f55ed22c832: mov    %r10,%r11
  0.56%    0.39%  │││     0x00007f55ed22c835: shr    $0x3,%r11          ;*putfield inst
                  │││                                                   ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │││                                                   ; - com.google.re2j.Machine::add@277 (line 384)
  0.25%    0.23%  │││     0x00007f55ed22c839: mov    %r11d,0x18(%rsp)
  0.33%    0.37%  │││     0x00007f55ed22c83e: mov    0x70(%rsp),%rbx
  0.08%    0.04%  │││     0x00007f55ed22c843: test   %rbx,%rbx
                  │││╭    0x00007f55ed22c846: je     0x00007f55ed22c863  ;*ifnonnull
                  ││││                                                  ; - com.google.re2j.Machine::add@272 (line 383)
  0.03%    0.02%  ││││    0x00007f55ed22c848: mov    %r11d,0x10(%rbx)
  0.05%    0.08%  ││││    0x00007f55ed22c84c: mov    %rbx,%r10
  0.08%    0.00%  ││││    0x00007f55ed22c84f: shr    $0x9,%r10
  0.00%           ││││    0x00007f55ed22c853: movabs $0x7f55fd492000,%r11
  0.01%           ││││    0x00007f55ed22c85d: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                  ││││                                                  ; - com.google.re2j.Machine::add@288 (line 386)
  0.12%    0.03%  ││││╭   0x00007f55ed22c861: jmp    0x00007f55ed22c8c1
  0.63%    0.34%  │││↘│   0x00007f55ed22c863: mov    0xc(%rsi),%r10d    ;*getfield poolSize
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@1 (line 132)
                  │││ │                                                 ; - com.google.re2j.Machine::add@277 (line 384)
  0.14%    0.19%  │││ │   0x00007f55ed22c867: test   %r10d,%r10d
                  │││ │   0x00007f55ed22c86a: jle    0x00007f55ed22c982  ;*ifle
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@4 (line 132)
                  │││ │                                                 ; - com.google.re2j.Machine::add@277 (line 384)
  0.24%    0.30%  │││ │   0x00007f55ed22c870: mov    0x24(%rsi),%r9d    ;*getfield pool
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@18 (line 134)
                  │││ │                                                 ; - com.google.re2j.Machine::add@277 (line 384)
  0.03%    0.07%  │││ │   0x00007f55ed22c874: mov    %r10d,%ebp
  0.56%    0.35%  │││ │   0x00007f55ed22c877: dec    %ebp               ;*isub
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@13 (line 133)
                  │││ │                                                 ; - com.google.re2j.Machine::add@277 (line 384)
  0.21%    0.22%  │││ │   0x00007f55ed22c879: mov    %ebp,0xc(%rsi)     ;*putfield poolSize
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@14 (line 133)
                  │││ │                                                 ; - com.google.re2j.Machine::add@277 (line 384)
  0.23%    0.24%  │││ │   0x00007f55ed22c87c: mov    0xc(%r12,%r9,8),%r8d  ; implicit exception: dispatches to 0x00007f55ed22cc69
  0.06%    0.02%  │││ │   0x00007f55ed22c881: cmp    %r8d,%ebp
                  │││ │   0x00007f55ed22c884: jae    0x00007f55ed22cb0d
  0.59%    0.58%  │││ │   0x00007f55ed22c88a: lea    (%r12,%r9,8),%r11
  0.14%    0.24%  │││ │   0x00007f55ed22c88e: mov    0xc(%r11,%r10,4),%r10d  ;*aaload
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │││ │                                                 ; - com.google.re2j.Machine::add@277 (line 384)
  0.27%    0.26%  │││ │   0x00007f55ed22c893: test   %r10d,%r10d
                  │││ │   0x00007f55ed22c896: je     0x00007f55ed22cb21  ;*putfield inst
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │││ │                                                 ; - com.google.re2j.Machine::add@277 (line 384)
  0.03%    0.01%  │││ │   0x00007f55ed22c89c: mov    %r10,%rbx
  0.51%    0.50%  │││ │   0x00007f55ed22c89f: shl    $0x3,%rbx          ;*aload_2
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@43 (line 138)
                  │││ │                                                 ; - com.google.re2j.Machine::add@277 (line 384)
  0.16%    0.14%  │││ │   0x00007f55ed22c8a3: mov    0x18(%rsp),%r11d
  0.25%    0.19%  │││ │   0x00007f55ed22c8a8: mov    %r11d,0x10(%rbx)
  0.10%    0.05%  │││ │   0x00007f55ed22c8ac: mov    %rbx,%r10
  0.55%    0.65%  │││ │   0x00007f55ed22c8af: shr    $0x9,%r10
  0.22%    0.21%  │││ │   0x00007f55ed22c8b3: movabs $0x7f55fd492000,%r11
  0.26%    0.24%  │││ │   0x00007f55ed22c8bd: mov    %r12b,(%r11,%r10,1)  ;*aload
                  │││ │                                                 ; - com.google.re2j.Machine::add@291 (line 388)
  0.10%    0.13%  │││ ↘   0x00007f55ed22c8c1: mov    0x28(%rsp),%rdi
  0.58%    0.59%  │││     0x00007f55ed22c8c6: mov    0xc(%rdi),%r10d    ;*arraylength
                  │││                                                   ; - com.google.re2j.Machine::add@293 (line 388)
                  │││                                                   ; implicit exception: dispatches to 0x00007f55ed22cc29
  0.22%    0.19%  │││     0x00007f55ed22c8ca: test   %r10d,%r10d
                  │││     0x00007f55ed22c8cd: jle    0x00007f55ed22cb5a  ;*ifle
                  │││                                                   ; - com.google.re2j.Machine::add@294 (line 388)
  0.31%    0.26%  │││     0x00007f55ed22c8d3: mov    0xc(%rbx),%r8d     ;*getfield cap
                  │││                                                   ; - com.google.re2j.Machine::add@299 (line 388)
  0.15%    0.07%  │││     0x00007f55ed22c8d7: mov    %r8,%r11
  0.56%    0.43%  │││     0x00007f55ed22c8da: shl    $0x3,%r11
  0.19%    0.13%  │││     0x00007f55ed22c8de: cmp    %rdi,%r11
                  │││  ╭  0x00007f55ed22c8e1: je     0x00007f55ed22c90e  ;*if_acmpeq
                  │││  │                                                ; - com.google.re2j.Machine::add@304 (line 388)
  0.24%    0.18%  │││  │  0x00007f55ed22c8e3: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x00007f55ed22cc51
  0.21%    0.18%  │││  │  0x00007f55ed22c8e8: lea    (%r12,%r8,8),%rcx  ;*getfield cap
                  │││  │                                                ; - com.google.re2j.Machine::add@299 (line 388)
  0.53%    0.26%  │││  │  0x00007f55ed22c8ec: cmp    %r10d,%r11d
                  │││  │  0x00007f55ed22c8ef: jb     0x00007f55ed22cb35
  0.67%    0.54%  │││  │  0x00007f55ed22c8f5: lea    0x10(%r12,%r8,8),%rsi
  0.13%    0.07%  │││  │  0x00007f55ed22c8fa: add    $0x10,%rdi
  0.05%    0.02%  │││  │  0x00007f55ed22c8fe: movslq %r10d,%rdx
  0.52%    0.60%  │││  │  0x00007f55ed22c901: movabs $0x7f55ed052640,%r10
  0.40%    0.42%  │││  │  0x00007f55ed22c90b: callq  *%r10              ;*aload_1
                  │││  │                                                ; - com.google.re2j.Machine::add@322 (line 391)
  0.03%    0.07%  │││  ↘  0x00007f55ed22c90e: mov    0x40(%rsp),%r10
  0.50%    0.43%  │││     0x00007f55ed22c913: mov    0xc(%r10),%r11d    ;*getfield size
                  │││                                                   ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                  │││                                                   ; - com.google.re2j.Machine::add@325 (line 391)
  0.61%    0.47%  │││     0x00007f55ed22c917: mov    0x20(%r10),%ebp    ;*getfield denseThreads
                  │││                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                  │││                                                   ; - com.google.re2j.Machine::add@325 (line 391)
  0.03%    0.03%  │││     0x00007f55ed22c91b: mov    %r11d,%r8d
  0.20%    0.27%  │││     0x00007f55ed22c91e: inc    %r8d
  0.26%    0.27%  │││     0x00007f55ed22c921: mov    %r8d,0xc(%r10)     ;*putfield size
                  │││                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                  │││                                                   ; - com.google.re2j.Machine::add@325 (line 391)
  0.68%    0.65%  │││     0x00007f55ed22c925: mov    0xc(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007f55ed22cc39
  0.11%    0.15%  │││     0x00007f55ed22c92a: cmp    %r8d,%r11d
                  │││     0x00007f55ed22c92d: jae    0x00007f55ed22ca95  ;*aastore
                  │││                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │││                                                   ; - com.google.re2j.Machine::add@325 (line 391)
  0.61%    0.80%  │││     0x00007f55ed22c933: lea    (%r12,%rbp,8),%r10  ;*getfield denseThreads
                  │││                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                  │││                                                   ; - com.google.re2j.Machine::add@325 (line 391)
  0.13%    0.28%  │││     0x00007f55ed22c937: lea    0x10(%r10,%r11,4),%r10
  0.51%    0.91%  │││     0x00007f55ed22c93c: mov    %rbx,%r11
  0.01%    0.01%  │││     0x00007f55ed22c93f: shr    $0x3,%r11
  0.42%    0.52%  │││     0x00007f55ed22c943: mov    %r11d,(%r10)
  3.00%    3.62%  │││     0x00007f55ed22c946: shr    $0x9,%r10
  0.23%    0.27%  │││     0x00007f55ed22c94a: movabs $0x7f55fd492000,%r11
  0.02%    0.00%  │││     0x00007f55ed22c954: mov    %r12b,(%r11,%r10,1)  ;*aastore
                  │││                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │││                                                   ; - com.google.re2j.Machine::add@325 (line 391)
  0.84%    1.11%  │││     0x00007f55ed22c958: xor    %eax,%eax          ;*invokevirtual contains
                  │││                                                   ; - com.google.re2j.Machine::add@5 (line 339)
  1.21%    1.61%  ↘↘↘     0x00007f55ed22c95a: add    $0x60,%rsp
  0.23%    0.35%          0x00007f55ed22c95e: pop    %rbp
  0.02%    0.01%          0x00007f55ed22c95f: test   %eax,0x1785d69b(%rip)        # 0x00007f5604a8a000
                                                                        ;   {poll_return}
  1.36%    1.82%          0x00007f55ed22c965: retq                      ;*tableswitch
                                                                        ; - com.google.re2j.Machine::add@26 (line 343)
                          0x00007f55ed22c966: mov    0x20(%rsp),%r8d
                          0x00007f55ed22c96b: mov    0x28(%rsp),%r9
                          0x00007f55ed22c970: mov    0x70(%rsp),%r10
                          0x00007f55ed22c975: mov    %r10,(%rsp)
                          0x00007f55ed22c979: xchg   %ax,%ax
                          0x00007f55ed22c97b: callq  0x00007f55ed046020  ; OopMap{off=736}
                                                                        ;*invokespecial add
                                                                        ; - com.google.re2j.Machine::add@165 (line 358)
....................................................................................................
 28.35%   30.66%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 522 (155 bytes) 

                     # parm4:    rdi       = int
                     # parm5:    [sp+0x70]   = &apos;com/google/re2j/Machine$Thread&apos;  (sp of caller)
                     0x00007f55ed22c6a0: mov    0x8(%rsi),%r10d    ;   {no_reloc}
                     0x00007f55ed22c6a4: shl    $0x3,%r10
                     0x00007f55ed22c6a8: cmp    %r10,%rax
                     0x00007f55ed22c6ab: jne    0x00007f55ed045e20  ;   {runtime_call}
                     0x00007f55ed22c6b1: data16 xchg %ax,%ax
                     0x00007f55ed22c6b4: nopl   0x0(%rax,%rax,1)
                     0x00007f55ed22c6bc: data16 data16 xchg %ax,%ax
                   [Verified Entry Point]
  0.80%    0.85%     0x00007f55ed22c6c0: mov    %eax,-0x14000(%rsp)
  1.29%    1.36%     0x00007f55ed22c6c7: push   %rbp
  0.21%    0.21%     0x00007f55ed22c6c8: sub    $0x60,%rsp         ;*synchronization entry
                                                                   ; - com.google.re2j.Machine::add@-1 (line 339)
  1.43%    1.48%     0x00007f55ed22c6cc: mov    %edi,0x30(%rsp)
  0.62%    0.55%     0x00007f55ed22c6d0: mov    %r9,0x28(%rsp)
  0.19%    0.22%     0x00007f55ed22c6d5: mov    %r8d,0x20(%rsp)
  0.59%    0.55%     0x00007f55ed22c6da: mov    %rsi,0x8(%rsp)
  0.89%    0.93%     0x00007f55ed22c6df: mov    %rcx,0x38(%rsp)
  0.29%    0.47%     0x00007f55ed22c6e4: mov    0x28(%rcx),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Machine::add@2 (line 339)
                                                                   ; implicit exception: dispatches to 0x00007f55ed22cc06
  0.61%    0.50%     0x00007f55ed22c6e7: mov    %rdx,0x40(%rsp)
  0.39%    0.41%     0x00007f55ed22c6ec: mov    0x10(%rdx),%r11    ;*getfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                                                                   ; - com.google.re2j.Machine::add@5 (line 339)
                                                                   ; implicit exception: dispatches to 0x00007f55ed22cc15
  0.84%    0.83%     0x00007f55ed22c6f0: cmp    $0x40,%ecx
                     0x00007f55ed22c6f3: jg     0x00007f55ed22cab1  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                                                                   ; - com.google.re2j.Machine::add@5 (line 339)
  0.61%    0.58%     0x00007f55ed22c6f9: mov    $0x1,%r8d
  0.16%    0.21%     0x00007f55ed22c6ff: shl    %cl,%r8            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                                                                   ; - com.google.re2j.Machine::add@5 (line 339)
  2.08%    2.03%     0x00007f55ed22c702: mov    %r11,%r10
  0.19%    0.20%     0x00007f55ed22c705: and    %r8,%r10
  0.39%    0.36%     0x00007f55ed22c708: test   %r10,%r10
                  ╭  0x00007f55ed22c70b: jne    0x00007f55ed22c760  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                  │                                                ; - com.google.re2j.Machine::add@5 (line 339)
  1.06%    0.80%  │  0x00007f55ed22c70d: cmp    $0x40,%ecx
                  │  0x00007f55ed22c710: jge    0x00007f55ed22cadd  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                  │                                                ; - com.google.re2j.Machine::add@19 (line 342)
  0.50%    0.42%  │  0x00007f55ed22c716: mov    %r12b,0x18(%rdx)   ;*putfield empty
                  │                                                ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                  │                                                ; - com.google.re2j.Machine::add@19 (line 342)
  0.20%    0.16%  │  0x00007f55ed22c71a: mov    0x38(%rsp),%r10
  0.81%    0.50%  │  0x00007f55ed22c71f: mov    0xc(%r10),%r10d    ;*getfield op
                  │                                                ; - com.google.re2j.Machine::add@23 (line 343)
  1.03%    0.81%  │  0x00007f55ed22c723: or     %r11,%r8
  0.56%    0.37%  │  0x00007f55ed22c726: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                  │                                                ; - com.google.re2j.Machine::add@19 (line 342)
  0.19%    0.17%  │  0x00007f55ed22c72a: mov    %r10d,%r11d
  0.42%    0.37%  │  0x00007f55ed22c72d: dec    %r11d
  1.03%    0.67%  │  0x00007f55ed22c730: cmp    $0xc,%r11d
                  │  0x00007f55ed22c734: jae    0x00007f55ed22ca85  ;*tableswitch
                  │                                                ; - com.google.re2j.Machine::add@26 (line 343)
  0.61%    0.59%  │  0x00007f55ed22c73a: mov    0x38(%rsp),%r11
  0.21%    0.24%  │  0x00007f55ed22c73f: mov    0x14(%r11),%r8d    ;*getfield arg
                  │                                                ; - com.google.re2j.Machine::add@141 (line 357)
  0.48%    0.39%  │  0x00007f55ed22c743: mov    0x30(%r11),%r11d
  0.93%    0.73%  │  0x00007f55ed22c747: movslq %r10d,%r9
  0.60%    0.56%  │  0x00007f55ed22c74a: mov    %r11,%rcx
  0.21%    0.23%  │  0x00007f55ed22c74d: shl    $0x3,%rcx          ;*getfield outInst
                  │                                                ; - com.google.re2j.Machine::add@176 (line 363)
  0.42%    0.40%  │  0x00007f55ed22c751: movabs $0x7f55ed22c640,%r10  ;   {section_word}
  0.98%    0.59%  │  0x00007f55ed22c75b: jmpq   *-0x8(%r10,%r9,8)  ;*tableswitch
                  │                                                ; - com.google.re2j.Machine::add@26 (line 343)
                  ↘  0x00007f55ed22c760: mov    0x70(%rsp),%rax
                     0x00007f55ed22c765: jmpq   0x00007f55ed22c95a
                     0x00007f55ed22c76a: andn   %r8d,%edi,%r8d
                     0x00007f55ed22c76f: test   %r8d,%r8d
                     0x00007f55ed22c772: je     0x00007f55ed22c966  ;*ifne
                                                                   ; - com.google.re2j.Machine::add@149 (line 357)
                     0x00007f55ed22c778: mov    0x70(%rsp),%rax
                     0x00007f55ed22c77d: jmpq   0x00007f55ed22c95a
  0.11%    0.12%     0x00007f55ed22c782: mov    0x28(%rsp),%r10
....................................................................................................
 21.83%   19.72%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 530 (301 bytes) 

                     # parm6:    [sp+0x68]   = int
                     # parm7:    [sp+0x70]   = boolean
                     0x00007f55ed234480: mov    0x8(%rsi),%r10d
                     0x00007f55ed234484: shl    $0x3,%r10
                     0x00007f55ed234488: cmp    %r10,%rax
                     0x00007f55ed23448b: jne    0x00007f55ed045e20  ;   {runtime_call}
                     0x00007f55ed234491: data16 xchg %ax,%ax
                     0x00007f55ed234494: nopl   0x0(%rax,%rax,1)
                     0x00007f55ed23449c: data16 data16 xchg %ax,%ax
                   [Verified Entry Point]
  0.22%    0.13%     0x00007f55ed2344a0: mov    %eax,-0x14000(%rsp)
  0.06%    0.05%     0x00007f55ed2344a7: push   %rbp
  0.02%    0.00%     0x00007f55ed2344a8: sub    $0x50,%rsp         ;*synchronization entry
                                                                   ; - com.google.re2j.Machine::step@-1 (line 276)
  0.25%    0.15%     0x00007f55ed2344ac: mov    %edi,0x20(%rsp)
  0.03%    0.02%     0x00007f55ed2344b0: mov    %r9d,0x1c(%rsp)
  0.04%    0.02%     0x00007f55ed2344b5: mov    %r8d,0x18(%rsp)
  0.15%    0.17%     0x00007f55ed2344ba: mov    %rcx,0x10(%rsp)
  0.12%    0.04%     0x00007f55ed2344bf: mov    %rdx,0x8(%rsp)
  0.05%    0.05%     0x00007f55ed2344c4: mov    %rsi,0x28(%rsp)
  0.05%              0x00007f55ed2344c9: mov    0x14(%rsi),%r10d   ;*getfield re2
                                                                   ; - com.google.re2j.Machine::step@1 (line 276)
  0.14%    0.10%     0x00007f55ed2344cd: movzbl 0x18(%r12,%r10,8),%r10d  ;*getfield longest
                                                                   ; - com.google.re2j.Machine::step@4 (line 276)
                                                                   ; implicit exception: dispatches to 0x00007f55ed234b2d
  0.02%    0.06%     0x00007f55ed2344d3: mov    %r10d,0x24(%rsp)
  0.07%    0.04%     0x00007f55ed2344d8: mov    0xc(%rdx),%r11d    ; implicit exception: dispatches to 0x00007f55ed234b3d
  0.02%              0x00007f55ed2344dc: test   %r11d,%r11d
                     0x00007f55ed2344df: jle    0x00007f55ed2347f0  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine::step@18 (line 277)
  0.17%    0.10%     0x00007f55ed2344e5: mov    0x24(%rsp),%r10d
  0.17%    0.14%     0x00007f55ed2344ea: test   %r10d,%r10d
                     0x00007f55ed2344ed: jne    0x00007f55ed234979  ;*aload_1
                                                                   ; - com.google.re2j.Machine::step@21 (line 278)
  0.11%    0.11%     0x00007f55ed2344f3: xor    %r11d,%r11d
  0.01%    0.00%  ╭  0x00007f55ed2344f6: jmpq   0x00007f55ed23458b
                  │  0x00007f55ed2344fb: nopl   0x0(%rax,%rax,1)
           0.00%  │  0x00007f55ed234500: mov    0x68(%rsp),%ebx
  0.00%           │  0x00007f55ed234504: mov    0x70(%rsp),%edx    ;*goto
                  │                                                ; - com.google.re2j.Machine::step@224 (line 301)
  0.54%    0.60%  │  0x00007f55ed234508: mov    0x8(%rsp),%r8
  0.21%    0.18%  │  0x00007f55ed23450d: mov    0xc(%r8),%r9d      ;*getfield size
                  │                                                ; - com.google.re2j.Machine::step@15 (line 277)
  0.08%    0.10%  │  0x00007f55ed234511: mov    0x28(%rsp),%r8
  0.16%    0.11%  │  0x00007f55ed234516: mov    0x24(%r8),%r13d    ;*getfield pool
                  │                                                ; - com.google.re2j.Machine::free@5 (line 167)
                  │                                                ; - com.google.re2j.Machine::step@330 (line 327)
  0.54%    0.57%  │  0x00007f55ed23451a: mov    0xc(%r8),%r8d      ;*getfield poolSize
                  │                                                ; - com.google.re2j.Machine::free@1 (line 167)
                  │                                                ; - com.google.re2j.Machine::step@330 (line 327)
  0.26%    0.26%  │  0x00007f55ed23451e: mov    %rsi,%rax          ;*getfield size
                  │                                                ; - com.google.re2j.Machine::step@15 (line 277)
  0.07%    0.10%  │  0x00007f55ed234521: mov    0xc(%r12,%r13,8),%ebp  ;*arraylength
                  │                                                ; - com.google.re2j.Machine::free@8 (line 167)
                  │                                                ; - com.google.re2j.Machine::step@330 (line 327)
                  │                                                ; implicit exception: dispatches to 0x00007f55ed234b0d
  0.20%    0.18%  │  0x00007f55ed234526: cmp    %ebp,%r8d
                  │  0x00007f55ed234529: jge    0x00007f55ed234921  ;*if_icmplt
                  │                                                ; - com.google.re2j.Machine::free@9 (line 167)
                  │                                                ; - com.google.re2j.Machine::step@330 (line 327)
  0.64%    0.62%  │  0x00007f55ed23452f: mov    %r8d,%edi
  0.24%    0.28%  │  0x00007f55ed234532: inc    %edi
  0.08%    0.05%  │  0x00007f55ed234534: mov    0x28(%rsp),%rsi
  0.16%    0.21%  │  0x00007f55ed234539: mov    %edi,0xc(%rsi)     ;*putfield poolSize
                  │                                                ; - com.google.re2j.Machine::free@45 (line 170)
                  │                                                ; - com.google.re2j.Machine::step@330 (line 327)
  0.56%    0.44%  │  0x00007f55ed23453c: cmp    %ebp,%r8d
                  │  0x00007f55ed23453f: jae    0x00007f55ed234891  ;*aastore
                  │                                                ; - com.google.re2j.Machine::free@49 (line 170)
                  │                                                ; - com.google.re2j.Machine::step@330 (line 327)
  0.26%    0.26%  │  0x00007f55ed234545: mov    %rax,%r11
  0.04%    0.04%  │  0x00007f55ed234548: shr    $0x3,%r11
  0.22%    0.21%  │  0x00007f55ed23454c: lea    (%r12,%r13,8),%rdi  ;*getfield pool
                  │                                                ; - com.google.re2j.Machine::free@5 (line 167)
                  │                                                ; - com.google.re2j.Machine::step@330 (line 327)
  0.45%    0.36%  │  0x00007f55ed234550: lea    0x10(%rdi,%r8,4),%r8
  0.20%    0.28%  │  0x00007f55ed234555: mov    %r11d,(%r8)
  0.10%    0.07%  │  0x00007f55ed234558: mov    %r8,%r11
  0.13%    0.17%  │  0x00007f55ed23455b: shr    $0x9,%r11
  0.50%    0.41%  │  0x00007f55ed23455f: movabs $0x7f55fd492000,%r8
  0.20%    0.22%  │  0x00007f55ed234569: mov    %r12b,(%r8,%r11,1)  ; OopMap{[8]=Oop [16]=Oop [40]=Oop off=237}
                  │                                                ;*goto
                  │                                                ; - com.google.re2j.Machine::step@336 (line 277)
  0.11%    0.10%  │  0x00007f55ed23456d: test   %eax,0x17855a8d(%rip)        # 0x00007f5604a8a000
                  │                                                ;*goto
                  │                                                ; - com.google.re2j.Machine::step@336 (line 277)
                  │                                                ;   {poll}
  0.13%    0.16%  │  0x00007f55ed234573: cmp    %r9d,%r10d
                  │  0x00007f55ed234576: jge    0x00007f55ed2347f0
  0.53%    0.45%  │  0x00007f55ed23457c: mov    %ecx,0x20(%rsp)
  0.09%    0.16%  │  0x00007f55ed234580: mov    %ebx,0x68(%rsp)
  0.09%    0.06%  │  0x00007f55ed234584: mov    %edx,0x70(%rsp)
  0.10%    0.18%  │  0x00007f55ed234588: mov    %r10d,%r11d        ;*aload_1
                  │                                                ; - com.google.re2j.Machine::step@21 (line 278)
  0.64%    0.51%  ↘  0x00007f55ed23458b: mov    0x8(%rsp),%r10
  0.16%    0.15%     0x00007f55ed234590: mov    0x20(%r10),%r10d   ;*getfield denseThreads
                                                                   ; - com.google.re2j.Machine::step@22 (line 278)
  0.25%    0.27%     0x00007f55ed234594: mov    0xc(%r12,%r10,8),%r9d  ; implicit exception: dispatches to 0x00007f55ed234ad9
  0.85%    1.29%     0x00007f55ed234599: cmp    %r9d,%r11d
                     0x00007f55ed23459c: jae    0x00007f55ed234854
  0.88%    0.64%     0x00007f55ed2345a2: shl    $0x3,%r10
  0.12%    0.14%     0x00007f55ed2345a6: mov    0x10(%r10,%r11,4),%r9d  ;*aaload
                                                                   ; - com.google.re2j.Machine::step@27 (line 278)
  0.06%    0.06%     0x00007f55ed2345ab: mov    0x10(%r12,%r9,8),%r8d  ;*getfield inst
                                                                   ; - com.google.re2j.Machine::step@78 (line 283)
                                                                   ; implicit exception: dispatches to 0x00007f55ed234aed
  1.89%    2.36%     0x00007f55ed2345b0: mov    0xc(%r12,%r8,8),%ecx  ;*getfield op
                                                                   ; - com.google.re2j.Machine::step@88 (line 285)
                                                                   ; implicit exception: dispatches to 0x00007f55ed234afd
  3.58%    3.48%     0x00007f55ed2345b5: mov    0xc(%r12,%r9,8),%r14d  ;*getfield cap
                                                                   ; - com.google.re2j.Machine::step@148 (line 292)
  0.11%    0.14%     0x00007f55ed2345ba: mov    %r11d,%r10d
  0.03%    0.02%     0x00007f55ed2345bd: inc    %r10d              ;*iadd
                                                                   ; - com.google.re2j.Machine::step@215 (line 298)
  0.10%    0.10%     0x00007f55ed2345c0: lea    (%r12,%r9,8),%rsi  ;*aaload
                                                                   ; - com.google.re2j.Machine::step@27 (line 278)
  0.98%    0.73%     0x00007f55ed2345c4: cmp    $0x9,%ecx
                     0x00007f55ed2345c7: je     0x00007f55ed2347c8
  0.11%    0.14%     0x00007f55ed2345cd: cmp    $0x9,%ecx
                     0x00007f55ed2345d0: jg     0x00007f55ed23472c
                     0x00007f55ed2345d6: cmp    $0x7,%ecx
                     0x00007f55ed2345d9: je     0x00007f55ed234969
                     0x00007f55ed2345df: cmp    $0x7,%ecx
                     0x00007f55ed2345e2: jg     0x00007f55ed2346de
                     0x00007f55ed2345e8: cmp    $0x6,%ecx
                     0x00007f55ed2345eb: jne    0x00007f55ed234969  ;*tableswitch
                                                                   ; - com.google.re2j.Machine::step@91 (line 285)
                     0x00007f55ed2345f1: mov    0x68(%rsp),%ebx
                     0x00007f55ed2345f5: cmp    $0x2,%ebx
....................................................................................................
 18.33%   18.09%  <total for region 3>

....[Hottest Region 4]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 573 (798 bytes) 

                                   0x00007f55ed250ce3: or     $0x10,%edi         ;*iload_2
                                                                                 ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                                 ; - com.google.re2j.Machine::match@121 (line 201)
                                   0x00007f55ed250ce6: mov    %rcx,%r8
                                   0x00007f55ed250ce9: shl    $0x3,%r8           ;*getfield q1
                                                                                 ; - com.google.re2j.Machine::match@53 (line 188)
                                   0x00007f55ed250ced: mov    0x48(%rsp),%r11d
                                   0x00007f55ed250cf2: and    $0x4,%r11d         ;*iand
                                                                                 ; - com.google.re2j.Machine::match@147 (line 208)
                                   0x00007f55ed250cf6: mov    %r11d,0x34(%rsp)
           0.00%                   0x00007f55ed250cfb: mov    %r8,0x58(%rsp)
           0.00%                   0x00007f55ed250d00: xor    %r8d,%r8d
                                   0x00007f55ed250d03: xor    %r11d,%r11d
                                   0x00007f55ed250d06: mov    %r11d,0x60(%rsp)
                  ╭                0x00007f55ed250d0b: jmpq   0x00007f55ed250f9c
  0.02%    0.04%  │        ↗       0x00007f55ed250d10: mov    %r10d,0x4c(%rsp)
  0.02%    0.01%  │        │       0x00007f55ed250d15: mov    %r13d,%r9d         ;*aload_0
                  │        │                                                     ; - com.google.re2j.Machine::match@267 (line 233)
  0.10%    0.06%  │        │↗      0x00007f55ed250d18: test   %r8d,%r8d
                  │        ││      0x00007f55ed250d1b: jne    0x00007f55ed2516ed  ;*ifne
                  │        ││                                                    ; - com.google.re2j.Machine::match@271 (line 233)
  0.13%    0.13%  │        ││      0x00007f55ed250d21: mov    0x60(%rsp),%r8d
  0.03%    0.03%  │        ││      0x00007f55ed250d26: test   %r8d,%r8d
                  │        ││      0x00007f55ed250d29: je     0x00007f55ed2513c3  ;*ifeq
                  │        ││                                                    ; - com.google.re2j.Machine::match@275 (line 233)
  0.03%    0.05%  │        ││      0x00007f55ed250d2f: mov    0x3c(%rsp),%ecx
  0.09%    0.05%  │        ││      0x00007f55ed250d33: test   %ecx,%ecx
                  │        ││      0x00007f55ed250d35: jne    0x00007f55ed251769  ;*aload_0
                  │        ││                                                    ; - com.google.re2j.Machine::match@282 (line 236)
  0.11%    0.11%  │        ││      0x00007f55ed250d3b: vmovd  %xmm4,%r11d
  0.03%    0.02%  │        ││      0x00007f55ed250d40: mov    0xc(%r12,%r11,8),%ebp  ;*arraylength
                  │        ││                                                    ; - com.google.re2j.Machine::match@286 (line 236)
                  │        ││                                                    ; implicit exception: dispatches to 0x00007f55ed2525d1
  0.02%    0.02%  │        ││      0x00007f55ed250d45: test   %ebp,%ebp
                  │        ││      0x00007f55ed250d47: jle    0x00007f55ed251729  ;*ifle
                  │        ││                                                    ; - com.google.re2j.Machine::match@287 (line 236)
  0.08%    0.06%  │        ││      0x00007f55ed250d4d: test   %ebp,%ebp
                  │        ││      0x00007f55ed250d4f: jbe    0x00007f55ed2515d2
  0.13%    0.13%  │        ││      0x00007f55ed250d55: mov    %r8d,0x10(%r12,%r11,8)  ;*iastore
                  │        ││                                                    ; - com.google.re2j.Machine::match@296 (line 237)
  0.04%    0.01%  │        ││      0x00007f55ed250d5a: mov    0x40(%rsp),%rdx
  0.05%    0.02%  │        ││      0x00007f55ed250d5f: mov    0x18(%rdx),%esi    ;*getfield prog
                  │        ││                                                    ; - com.google.re2j.Machine::match@301 (line 239)
  0.09%    0.05%  │        ││      0x00007f55ed250d62: mov    0x1c(%r12,%rsi,8),%r10d  ; implicit exception: dispatches to 0x00007f55ed2525e1
  0.12%    0.14%  │        ││      0x00007f55ed250d67: mov    %ebx,%ebp
  0.03%    0.02%  │        ││      0x00007f55ed250d69: mov    %r9d,0x28(%rsp)
  0.01%    0.02%  │        ││      0x00007f55ed250d6e: mov    %ecx,0x3c(%rsp)    ;*ifeq
                  │        ││                                                    ; - com.google.re2j.Machine::match@275 (line 233)
  0.08%    0.10%  │        ││      0x00007f55ed250d72: mov    %r10,%rcx
  0.07%    0.14%  │        ││      0x00007f55ed250d75: shl    $0x3,%rcx          ;*getfield startInst
                  │        ││                                                    ; - com.google.re2j.Machine::match@304 (line 239)
  0.03%    0.05%  │        ││      0x00007f55ed250d79: mov    %r11,%r9
  0.04%    0.05%  │        ││      0x00007f55ed250d7c: shl    $0x3,%r9           ;*getfield matchcap
                  │        ││                                                    ; - com.google.re2j.Machine::match@283 (line 236)
  0.07%    0.11%  │        ││      0x00007f55ed250d80: mov    0x40(%rsp),%rsi
  0.11%    0.11%  │        ││      0x00007f55ed250d85: mov    0x20(%rsp),%rdx
  0.02%    0.04%  │        ││      0x00007f55ed250d8a: xor    %r10d,%r10d
  0.02%    0.02%  │        ││      0x00007f55ed250d8d: mov    %r10,(%rsp)
  0.08%    0.14%  │        ││      0x00007f55ed250d91: xchg   %ax,%ax
  0.12%    0.13%  │        ││      0x00007f55ed250d93: callq  0x00007f55ed046020  ; OopMap{[24]=NarrowOop [32]=Oop [64]=Oop [80]=Oop [88]=Oop off=760}
                  │        ││                                                    ;*invokespecial add
                  │        ││                                                    ; - com.google.re2j.Machine::match@315 (line 239)
                  │        ││                                                    ;   {optimized virtual_call}
  0.06%    0.07%  │        ││      0x00007f55ed250d98: mov    0x4c(%rsp),%ebx
  0.00%    0.01%  │        ││      0x00007f55ed250d9c: test   %ebx,%ebx
                  │╭       ││      0x00007f55ed250d9e: jl     0x00007f55ed25100e  ;*ifge
                  ││       ││                                                    ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                  ││       ││                                                    ; - com.google.re2j.Machine::match@323 (line 241)
  0.19%    0.25%  ││       ││      0x00007f55ed250da4: xor    %r9d,%r9d          ;*iload_0
                  ││       ││                                                    ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                  ││       ││                                                    ; - com.google.re2j.Machine::match@323 (line 241)
  0.03%    0.07%  ││       ││↗     0x00007f55ed250da7: cmp    $0xa,%ebx
                  ││       │││     0x00007f55ed250daa: je     0x00007f55ed2513cc  ;*iload_1
                  ││       │││                                                   ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                  ││       │││                                                   ; - com.google.re2j.Machine::match@323 (line 241)
  0.00%    0.01%  ││       │││     0x00007f55ed250db0: mov    %ebp,%r11d
                  ││       │││     0x00007f55ed250db3: test   %r11d,%r11d
                  ││╭      │││     0x00007f55ed250db6: jl     0x00007f55ed251019  ;*iload_1
                  │││      │││                                                   ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                  │││      │││                                                   ; - com.google.re2j.Machine::match@323 (line 241)
  0.16%    0.18%  │││      │││↗    0x00007f55ed250dbc: cmp    $0xa,%r11d
  0.06%    0.08%  │││      ││││    0x00007f55ed250dc0: je     0x00007f55ed2513d5  ;*iload_0
                  │││      ││││                                                  ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                  │││      ││││                                                  ; - com.google.re2j.Machine::match@323 (line 241)
  0.02%    0.00%  │││      ││││    0x00007f55ed250dc6: mov    0x4c(%rsp),%r8d
  0.00%           │││      ││││    0x00007f55ed250dcb: add    $0xffffffbf,%r8d
  0.19%    0.24%  │││      ││││    0x00007f55ed250dcf: cmp    $0x1a,%r8d
                  │││╭     ││││    0x00007f55ed250dd3: jb     0x00007f55ed250de8  ;*if_icmple
                  ││││     ││││                                                  ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  ││││     ││││                                                  ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                  ││││     ││││                                                  ; - com.google.re2j.Machine::match@323 (line 241)
  0.02%    0.05%  ││││     ││││    0x00007f55ed250dd5: mov    0x4c(%rsp),%r10d
  0.01%    0.00%  ││││     ││││    0x00007f55ed250dda: add    $0xffffff9f,%r10d
                  ││││     ││││    0x00007f55ed250dde: cmp    $0x1a,%r10d
                  ││││     ││││    0x00007f55ed250de2: jae    0x00007f55ed2513de  ;*iconst_1
                  ││││     ││││                                                  ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  ││││     ││││                                                  ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                  ││││     ││││                                                  ; - com.google.re2j.Machine::match@323 (line 241)
  0.18%    0.15%  │││↘     ││││    0x00007f55ed250de8: mov    $0x1,%ebp          ;*ireturn
                  │││      ││││                                                  ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                  │││      ││││                                                  ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                  │││      ││││                                                  ; - com.google.re2j.Machine::match@323 (line 241)
  0.05%    0.05%  │││      ││││    0x00007f55ed250ded: mov    %r11d,%r8d
  0.02%    0.00%  │││      ││││    0x00007f55ed250df0: add    $0xffffffbf,%r8d
  0.02%    0.03%  │││      ││││    0x00007f55ed250df4: cmp    $0x1a,%r8d
                  │││ ╭    ││││    0x00007f55ed250df8: jb     0x00007f55ed250e0b  ;*if_icmple
                  │││ │    ││││                                                  ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │││ │    ││││                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │││ │    ││││                                                  ; - com.google.re2j.Machine::match@323 (line 241)
  0.17%    0.13%  │││ │    ││││    0x00007f55ed250dfa: mov    %r11d,%r10d
  0.03%    0.04%  │││ │    ││││    0x00007f55ed250dfd: add    $0xffffff9f,%r10d
  0.02%    0.01%  │││ │    ││││    0x00007f55ed250e01: cmp    $0x1a,%r10d
                  │││ │    ││││    0x00007f55ed250e05: jae    0x00007f55ed251401  ;*iconst_1
                  │││ │    ││││                                                  ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │││ │    ││││                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │││ │    ││││                                                  ; - com.google.re2j.Machine::match@323 (line 241)
  0.04%    0.03%  │││ ↘    ││││    0x00007f55ed250e0b: mov    $0x1,%r8d          ;*ireturn
                  │││      ││││                                                  ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                  │││      ││││                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │││      ││││                                                  ; - com.google.re2j.Machine::match@323 (line 241)
  0.21%    0.17%  │││      ││││    0x00007f55ed250e11: cmp    %r8d,%ebp
                  │││  ╭   ││││    0x00007f55ed250e14: je     0x00007f55ed250e21  ;*if_icmpeq
                  │││  │   ││││                                                  ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                  │││  │   ││││                                                  ; - com.google.re2j.Machine::match@323 (line 241)
  0.02%    0.03%  │││  │   ││││    0x00007f55ed250e16: or     $0x10,%r9d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                  │││  │   ││││                                                  ; - com.google.re2j.Machine::match@323 (line 241)
  0.00%    0.03%  │││  │   ││││    0x00007f55ed250e1a: mov    %r9d,0x4c(%rsp)
  0.19%    0.11%  │││  │╭  ││││    0x00007f55ed250e1f: jmp    0x00007f55ed250e2a
  0.04%    0.07%  │││  ↘│  ││││    0x00007f55ed250e21: or     $0x20,%r9d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                  │││   │  ││││                                                  ; - com.google.re2j.Machine::match@323 (line 241)
  0.02%    0.01%  │││   │  ││││    0x00007f55ed250e25: mov    %r9d,0x4c(%rsp)    ;*iload_2
                  │││   │  ││││                                                  ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                  │││   │  ││││                                                  ; - com.google.re2j.Machine::match@323 (line 241)
  0.05%    0.06%  │││   ↘  ││││    0x00007f55ed250e2a: mov    0x50(%rsp),%r9
  0.15%    0.13%  │││      ││││    0x00007f55ed250e2f: mov    0x10(%r9),%r8d     ;*getfield end
                  │││      ││││                                                  ; - com.google.re2j.MachineInput$UTF16Input::endPos@1 (line 221)
                  │││      ││││                                                  ; - com.google.re2j.Machine::match@345 (line 242)
  0.22%    0.17%  │││      ││││    0x00007f55ed250e33: mov    0x60(%rsp),%ecx
  0.02%    0.07%  │││      ││││    0x00007f55ed250e37: cmp    %r8d,%ecx
                  │││    ╭ ││││    0x00007f55ed250e3a: je     0x00007f55ed251022  ;*if_icmpne
                  │││    │ ││││                                                  ; - com.google.re2j.Machine::match@348 (line 242)
  0.12%    0.05%  │││    │ ││││    0x00007f55ed250e40: xor    %r10d,%r10d        ;*invokespecial step
                  │││    │ ││││                                                  ; - com.google.re2j.Machine::match@356 (line 242)
  0.14%    0.14%  │││    │ ││││↗   0x00007f55ed250e43: mov    %rax,-0x8(%rsp)
  0.03%    0.03%  │││    │ │││││   0x00007f55ed250e48: mov    0x60(%rsp),%eax
  0.04%    0.01%  │││    │ │││││   0x00007f55ed250e4c: mov    %eax,0x38(%rsp)
  0.04%    0.02%  │││    │ │││││   0x00007f55ed250e50: mov    -0x8(%rsp),%rax
  0.24%    0.18%  │││    │ │││││   0x00007f55ed250e55: mov    %r11d,0x30(%rsp)
  0.01%    0.05%  │││    │ │││││   0x00007f55ed250e5a: add    0x2c(%rsp),%ecx    ;*iadd
                  │││    │ │││││                                                 ; - com.google.re2j.Machine::match@337 (line 242)
  0.06%    0.03%  │││    │ │││││   0x00007f55ed250e5e: mov    %ecx,0x60(%rsp)
  0.04%    0.04%  │││    │ │││││   0x00007f55ed250e62: mov    0x40(%rsp),%rsi
  0.11%    0.09%  │││    │ │││││   0x00007f55ed250e67: mov    0x20(%rsp),%rdx
  0.04%    0.02%  │││    │ │││││   0x00007f55ed250e6c: mov    0x58(%rsp),%rcx
  0.03%    0.01%  │││    │ │││││   0x00007f55ed250e71: mov    0x38(%rsp),%r8d
  0.06%    0.01%  │││    │ │││││   0x00007f55ed250e76: mov    0x60(%rsp),%r9d
  0.28%    0.22%  │││    │ │││││   0x00007f55ed250e7b: mov    %ebx,%edi
  0.02%    0.04%  │││    │ │││││   0x00007f55ed250e7d: mov    0x4c(%rsp),%ebx
  0.02%    0.01%  │││    │ │││││   0x00007f55ed250e81: mov    %ebx,(%rsp)
  0.02%    0.01%  │││    │ │││││   0x00007f55ed250e84: mov    0x3c(%rsp),%r11d
  0.12%    0.11%  │││    │ │││││   0x00007f55ed250e89: mov    %r11d,0x8(%rsp)
  0.02%    0.06%  │││    │ │││││   0x00007f55ed250e8e: mov    %r10d,0x10(%rsp)
  0.01%    0.02%  │││    │ │││││   0x00007f55ed250e93: callq  0x00007f55ed046020  ; OopMap{[24]=NarrowOop [32]=Oop [64]=Oop [80]=Oop [88]=Oop off=1016}
                  │││    │ │││││                                                 ;*invokespecial step
                  │││    │ │││││                                                 ; - com.google.re2j.Machine::match@356 (line 242)
                  │││    │ │││││                                                 ;   {optimized virtual_call}
  0.11%    0.15%  │││    │ │││││   0x00007f55ed250e98: mov    0x2c(%rsp),%r11d
  0.05%    0.07%  │││    │ │││││   0x00007f55ed250e9d: test   %r11d,%r11d
                  │││    │ │││││   0x00007f55ed250ea0: je     0x00007f55ed2510fd  ;*ifne
                  │││    │ │││││                                                 ; - com.google.re2j.Machine::match@361 (line 243)
  0.12%    0.09%  │││    │ │││││   0x00007f55ed250ea6: mov    0x40(%rsp),%r8
  0.10%    0.11%  │││    │ │││││   0x00007f55ed250eab: mov    0x28(%r8),%r9d     ;*getfield matchcap
                  │││    │ │││││                                                 ; - com.google.re2j.Machine::match@368 (line 246)
  0.02%    0.04%  │││    │ │││││   0x00007f55ed250eaf: mov    0xc(%r12,%r9,8),%ebp  ;*arraylength
                  │││    │ │││││                                                 ; - com.google.re2j.Machine::match@371 (line 246)
                  │││    │ │││││                                                 ; implicit exception: dispatches to 0x00007f55ed2525f1
  0.04%    0.05%  │││    │ │││││   0x00007f55ed250eb4: test   %ebp,%ebp
                  │││    │ │││││   0x00007f55ed250eb6: je     0x00007f55ed25182d  ;*ifne
                  │││    │ │││││                                                 ; - com.google.re2j.Machine::match@372 (line 246)
  0.08%    0.11%  │││    │ │││││   0x00007f55ed250ebc: mov    0x50(%rsp),%rbx
  0.06%    0.05%  │││    │ │││││   0x00007f55ed250ec1: mov    0x10(%rbx),%ecx    ;*getfield end
                  │││    │ │││││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                  │││    │ │││││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.02%    0.03%  │││    │ │││││   0x00007f55ed250ec4: mov    0xc(%rbx),%edx     ;*getfield start
                  │││    │ │││││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                  │││    │ │││││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.02%    0.01%  │││    │ │││││   0x00007f55ed250ec7: mov    0x14(%rbx),%eax    ;*getfield str
                  │││    │ │││││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                  │││    │ │││││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.14%    0.11%  │││    │ │││││   0x00007f55ed250eca: mov    0x30(%rsp),%r13d
  0.13%    0.09%  │││    │ │││││   0x00007f55ed250ecf: cmp    $0xffffffff,%r13d
                  │││    │╭│││││   0x00007f55ed250ed3: je     0x00007f55ed25102d  ;*if_icmpeq
                  │││    │││││││                                                 ; - com.google.re2j.Machine::match@401 (line 254)
  0.05%    0.04%  │││    │││││││   0x00007f55ed250ed9: mov    0x28(%rsp),%r14d
  0.01%    0.04%  │││    │││││││   0x00007f55ed250ede: add    0x60(%rsp),%r14d
  0.12%    0.09%  │││    │││││││   0x00007f55ed250ee3: add    %edx,%r14d         ;*iadd
                  │││    │││││││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                  │││    │││││││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.11%    0.02%  │││    │││││││   0x00007f55ed250ee6: cmp    %ecx,%r14d
                  │││    │││││││   0x00007f55ed250ee9: jge    0x00007f55ed2513b6  ;*if_icmpge
                  │││    │││││││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                  │││    │││││││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.03%    0.03%  │││    │││││││   0x00007f55ed250eef: mov    0x8(%r12,%rax,8),%r10d  ; implicit exception: dispatches to 0x00007f55ed252601
  0.07%    0.04%  │││    │││││││   0x00007f55ed250ef4: cmp    $0xf80002da,%r10d  ;   {metadata(&apos;java/lang/String&apos;)}
                  │││    │││││││   0x00007f55ed250efb: jne    0x00007f55ed251695
  0.11%    0.12%  │││    │││││││   0x00007f55ed250f01: lea    (%r12,%rax,8),%r10  ;*invokeinterface charAt
                  │││    │││││││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││    │││││││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││    │││││││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.09%    0.03%  │││    │││││││   0x00007f55ed250f05: vmovq  %r10,%xmm0
  0.03%    0.04%  │││    │││││││   0x00007f55ed250f0a: test   %r14d,%r14d
                  │││    │││││││   0x00007f55ed250f0d: jl     0x00007f55ed2517b5  ;*iflt
                  │││    │││││││                                                 ; - java.lang.String::charAt@1 (line 657)
                  │││    │││││││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││    │││││││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││    │││││││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.01%    0.02%  │││    │││││││   0x00007f55ed250f13: mov    0xc(%r10),%edi     ;*getfield value
                  │││    │││││││                                                 ; - java.lang.String::charAt@6 (line 657)
                  │││    │││││││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││    │││││││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││    │││││││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.10%    0.08%  │││    │││││││   0x00007f55ed250f17: mov    0xc(%r12,%rdi,8),%ebp  ;*arraylength
                  │││    │││││││                                                 ; - java.lang.String::charAt@9 (line 657)
                  │││    │││││││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││    │││││││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││    │││││││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
                  │││    │││││││                                                 ; implicit exception: dispatches to 0x00007f55ed252615
  0.56%    0.60%  │││    │││││││   0x00007f55ed250f1c: cmp    %ebp,%r14d
                  │││    │││││││   0x00007f55ed250f1f: jge    0x00007f55ed25186d  ;*if_icmplt
                  │││    │││││││                                                 ; - java.lang.String::charAt@10 (line 657)
                  │││    │││││││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││    │││││││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││    │││││││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.09%    0.15%  │││    │││││││   0x00007f55ed250f25: cmp    %ebp,%r14d
                  │││    │││││││   0x00007f55ed250f28: jae    0x00007f55ed251619
  0.04%    0.02%  │││    │││││││   0x00007f55ed250f2e: lea    (%r12,%rdi,8),%r11
  0.01%    0.02%  │││    │││││││   0x00007f55ed250f32: movzwl 0x10(%r11,%r14,2),%r11d  ;*caload
                  │││    │││││││                                                 ; - java.lang.String::charAt@27 (line 660)
                  │││    │││││││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││    │││││││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││    │││││││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.16%    0.13%  │││    │││││││   0x00007f55ed250f38: cmp    $0xd800,%r11d
                  │││    │││││││   0x00007f55ed250f3f: jge    0x00007f55ed2518d9  ;*if_icmplt
                  │││    │││││││                                                 ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                  │││    │││││││                                                 ; - java.lang.Character::codePointAt@9 (line 4867)
                  │││    │││││││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││    │││││││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.17%    0.15%  │││    │││││││   0x00007f55ed250f45: shl    $0x3,%r11d         ;*ishl
                  │││    │││││││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                  │││    │││││││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.01%    0.04%  │││    │││││││   0x00007f55ed250f49: mov    %r11d,%edi
           0.01%  │││    │││││││   0x00007f55ed250f4c: or     $0x1,%edi
  0.21%    0.29%  │││    │││││││   0x00007f55ed250f4f: and    $0x7,%r11d
  0.03%    0.06%  │││    │││││││   0x00007f55ed250f53: sar    $0x3,%edi          ;*ishr
                  │││    │││││││                                                 ; - com.google.re2j.Machine::match@417 (line 256)
  0.10%    0.14%  │││    │││││││   0x00007f55ed250f56: or     $0x1,%r11d         ;*aload
                  │││    │││││││                                                 ; - com.google.re2j.Machine::match@427 (line 259)
  0.01%    0.02%  │││    │││││││↗  0x00007f55ed250f5a: mov    %r13d,%r10d        ; OopMap{r8=Oop r9=NarrowOop rax=NarrowOop [32]=Oop [64]=Oop [80]=Oop [88]=Oop off=1213}
                  │││    ││││││││                                                ;*goto
                  │││    ││││││││                                                ; - com.google.re2j.Machine::match@439 (line 262)
  0.10%    0.09%  │││    ││││││││  0x00007f55ed250f5d: test   %eax,0x1783909d(%rip)        # 0x00007f5604a8a000
                  │││    ││││││││                                                ;*goto
                  │││    ││││││││                                                ; - com.google.re2j.Machine::match@439 (line 262)
                  │││    ││││││││                                                ;   {poll}
  0.04%    0.05%  │││    ││││││││  0x00007f55ed250f63: movzbl 0x10(%r8),%r8d     ;*getfield matched
                  │││    ││││││││                                                ; - com.google.re2j.Machine::match@159 (line 212)
  0.13%    0.10%  │││    ││││││││  0x00007f55ed250f68: mov    0x58(%rsp),%rbx
  0.02%    0.01%  │││    ││││││││  0x00007f55ed250f6d: mov    %rbx,%rsi
  0.06%    0.16%  │││    ││││││││  0x00007f55ed250f70: shr    $0x3,%rsi
  0.03%    0.01%  │││    ││││││││  0x00007f55ed250f74: mov    %esi,0x18(%rsp)
  0.13%    0.14%  │││    ││││││││  0x00007f55ed250f78: mov    %edi,%ebx
  0.04%    0.03%  │││    ││││││││  0x00007f55ed250f7a: mov    0x4c(%rsp),%edi
  0.08%    0.06%  │││    ││││││││  0x00007f55ed250f7e: mov    0x20(%rsp),%rsi
  0.02%    0.02%  │││    ││││││││  0x00007f55ed250f83: mov    %rsi,0x58(%rsp)
  0.08%    0.15%  │││    ││││││││  0x00007f55ed250f88: mov    0x28(%rsp),%ebp
  0.03%    0.02%  │││    ││││││││  0x00007f55ed250f8c: mov    %ebp,0x2c(%rsp)
  0.09%    0.16%  │││    ││││││││  0x00007f55ed250f90: mov    %r11d,%r13d
  0.04%    0.05%  │││    ││││││││  0x00007f55ed250f93: vmovd  %r9d,%xmm4
  0.11%    0.14%  │││    ││││││││  0x00007f55ed250f98: mov    %ecx,0x14(%rsp)
  0.03%    0.03%  ↘││    ││││││││  0x00007f55ed250f9c: mov    0x18(%rsp),%r9d
  0.09%    0.11%   ││    ││││││││  0x00007f55ed250fa1: movzbl 0x18(%r12,%r9,8),%r9d  ; implicit exception: dispatches to 0x00007f55ed2525c1
  0.07%    0.06%   ││    ││││││││  0x00007f55ed250fa7: mov    0x18(%rsp),%r11d
  0.11%    0.19%   ││    ││││││││  0x00007f55ed250fac: shl    $0x3,%r11          ;*aload
                   ││    ││││││││                                                ; - com.google.re2j.Machine::match@136 (line 207)
  0.04%    0.03%   ││    ││││││││  0x00007f55ed250fb0: mov    %r11,0x20(%rsp)
  0.11%    0.19%   ││    ││││││││  0x00007f55ed250fb5: test   %r9d,%r9d
                   ││    ││╰│││││  0x00007f55ed250fb8: je     0x00007f55ed250d10  ;*ifeq
                   ││    ││ │││││                                                ; - com.google.re2j.Machine::match@141 (line 207)
  0.01%    0.01%   ││    ││ │││││  0x00007f55ed250fbe: mov    0x34(%rsp),%r9d
  0.07%    0.10%   ││    ││ │││││  0x00007f55ed250fc3: test   %r9d,%r9d
                   ││    ││ │││││  0x00007f55ed250fc6: jne    0x00007f55ed251945  ;*ifeq
                   ││    ││ │││││                                                ; - com.google.re2j.Machine::match@148 (line 208)
  0.03%    0.04%   ││    ││ │││││  0x00007f55ed250fcc: test   %r8d,%r8d
                   ││    ││ │││││  0x00007f55ed250fcf: jne    0x00007f55ed251985  ;*ifeq
                   ││    ││ │││││                                                ; - com.google.re2j.Machine::match@162 (line 212)
                   ││    ││ │││││  0x00007f55ed250fd5: mov    0x40(%rsp),%r11
  0.02%    0.02%   ││    ││ │││││  0x00007f55ed250fda: mov    0x14(%r11),%r9d    ;*getfield re2
                   ││    ││ │││││                                                ; - com.google.re2j.Machine::match@169 (line 216)
  0.08%    0.09%   ││    ││ │││││  0x00007f55ed250fde: mov    0x24(%r12,%r9,8),%r11d  ;*getfield prefix
                   ││    ││ │││││                                                ; - com.google.re2j.Machine::match@172 (line 216)
                   ││    ││ │││││                                                ; implicit exception: dispatches to 0x00007f55ed252625
  0.02%    0.01%   ││    ││ │││││  0x00007f55ed250fe3: mov    %r11d,%ecx
                   ││    ││ │││││  0x00007f55ed250fe6: mov    0xc(%r12,%r11,8),%r11d  ;*getfield value
                   ││    ││ │││││                                                ; - java.lang.String::isEmpty@1 (line 635)
                   ││    ││ │││││                                                ; - com.google.re2j.Machine::match@175 (line 216)
                   ││    ││ │││││                                                ; implicit exception: dispatches to 0x00007f55ed252635
  0.02%    0.01%   ││    ││ │││││  0x00007f55ed250feb: mov    %r11d,%r14d
  0.03%    0.10%   ││    ││ │││││  0x00007f55ed250fee: mov    0xc(%r12,%r11,8),%r11d  ;*arraylength
                   ││    ││ │││││                                                ; - java.lang.String::isEmpty@4 (line 635)
                   ││    ││ │││││                                                ; - com.google.re2j.Machine::match@175 (line 216)
                   ││    ││ │││││                                                ; implicit exception: dispatches to 0x00007f55ed252645
  0.14%    0.14%   ││    ││ │││││  0x00007f55ed250ff3: mov    %r11d,0x28(%rsp)
  0.07%    0.11%   ││    ││ │││││  0x00007f55ed250ff8: test   %r11d,%r11d
                   ││    ││ │││││  0x00007f55ed250ffb: jne    0x00007f55ed2511c7  ;*ifne
                   ││    ││ │││││                                                ; - com.google.re2j.Machine::match@178 (line 216)
  0.00%            ││    ││ │││││  0x00007f55ed251001: mov    %r10d,0x4c(%rsp)
  0.02%    0.03%   ││    ││ │││││  0x00007f55ed251006: mov    %r13d,%r9d
                   ││    ││ ╰││││  0x00007f55ed251009: jmpq   0x00007f55ed250d18
           0.00%   ↘│    ││  ││││  0x00007f55ed25100e: mov    $0x5,%r9d
                    │    ││  ╰│││  0x00007f55ed251014: jmpq   0x00007f55ed250da7
  0.00%    0.01%    ↘    ││   │││  0x00007f55ed251019: or     $0xa,%r9d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@27 (line 180)
                         ││   │││                                                ; - com.google.re2j.Machine::match@323 (line 241)
                         ││   ╰││  0x00007f55ed25101d: jmpq   0x00007f55ed250dbc
                         ↘│    ││  0x00007f55ed251022: mov    $0x1,%r10d
                          │    ╰│  0x00007f55ed251028: jmpq   0x00007f55ed250e43
                          ↘     │  0x00007f55ed25102d: mov    0x28(%rsp),%r11d
                                │  0x00007f55ed251032: mov    $0xffffffff,%edi
                                ╰  0x00007f55ed251037: jmpq   0x00007f55ed250f5a
                                   0x00007f55ed25103c: nopl   0x0(%rax)
                                   0x00007f55ed251040: mov    %r9d,%r11d
                                   0x00007f55ed251043: jmpq   0x00007f55ed251300
....................................................................................................
 10.46%   10.95%  <total for region 4>

....[Hottest Regions]...............................................................................
 28.35%   30.66%         C2, level 4  com.google.re2j.Machine::add, version 522 (394 bytes) 
 21.83%   19.72%         C2, level 4  com.google.re2j.Machine::add, version 522 (155 bytes) 
 18.33%   18.09%         C2, level 4  com.google.re2j.Machine::step, version 530 (301 bytes) 
 10.46%   10.95%         C2, level 4  com.google.re2j.Machine::match, version 573 (798 bytes) 
  6.82%    8.41%        runtime stub  StubRoutines::jint_disjoint_arraycopy (128 bytes) 
  5.99%    5.31%         C2, level 4  com.google.re2j.Machine::step, version 530 (196 bytes) 
  2.65%    2.08%         C2, level 4  com.google.re2j.Machine::step, version 530 (114 bytes) 
  1.65%    1.65%   [kernel.kallsyms]  [unknown] (6 bytes) 
  0.42%    0.40%         C2, level 4  com.google.re2j.Machine::match, version 573 (105 bytes) 
  0.37%    0.44%         C2, level 4  com.google.re2j.Machine::add, version 522 (37 bytes) 
  0.19%    0.06%         C2, level 4  com.google.re2j.Machine::init, version 571 (129 bytes) 
  0.17%    0.06%         C2, level 4  com.google.re2j.Machine::init, version 571 (96 bytes) 
  0.11%    0.01%   [kernel.kallsyms]  [unknown] (6 bytes) 
  0.07%    0.01%   [kernel.kallsyms]  [unknown] (28 bytes) 
  0.07%    0.02%         C2, level 4  com.google.re2j.Machine::init, version 571 (36 bytes) 
  0.05%    0.00%   [kernel.kallsyms]  [unknown] (17 bytes) 
  0.05%    0.02%         C2, level 4  com.google.re2j.Machine::init, version 571 (33 bytes) 
  0.05%    0.04%         C2, level 4  com.google.re2j.Machine::match, version 573 (85 bytes) 
  0.04%                  C2, level 4  com.google.re2j.Matcher::find, version 587 (42 bytes) 
  0.04%    0.02%         C2, level 4  com.google.re2j.Matcher::find, version 587 (8 bytes) 
  2.28%    2.05%  <...other 496 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 50.55%   50.82%         C2, level 4  com.google.re2j.Machine::add, version 522 
 26.97%   25.49%         C2, level 4  com.google.re2j.Machine::step, version 530 
 11.08%   11.48%         C2, level 4  com.google.re2j.Machine::match, version 573 
  6.82%    8.41%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
  2.54%    2.30%   [kernel.kallsyms]  [unknown] 
  0.53%    0.16%         C2, level 4  com.google.re2j.Machine::init, version 571 
  0.24%    0.12%         C2, level 4  com.google.re2j.Matcher::find, version 587 
  0.11%    0.05%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testCombine_jmhTest::testCombine_thrpt_jmhStub, version 668 
  0.10%    0.02%      hsdis-amd64.so  decode_instructions 
  0.05%    0.01%         C2, level 4  java.util.Collections::shuffle, version 598 
  0.04%    0.02%           libjvm.so  SpinPause 
  0.03%    0.05%           libjvm.so  RelocIterator::initialize 
  0.03%    0.01%           libjvm.so  StringTable::unlink_or_oops_do 
  0.03%    0.09%        libc-2.26.so  vfprintf 
  0.03%    0.05%        libc-2.26.so  _IO_fwrite 
  0.03%    0.01%           libjvm.so  ParallelTaskTerminator::offer_termination 
  0.02%    0.02%         C2, level 4  com.github.arnaudroger.re2j.Re2jFindRegex::testCombine, version 597 
  0.02%    0.02%        libc-2.26.so  __strlen_avx2 
  0.02%    0.01%        libc-2.26.so  _IO_fflush 
  0.02%    0.01%        runtime stub  StubRoutines::arrayof_jint_fill 
  0.72%    0.47%  <...other 119 warm methods...>
....................................................................................................
100.00%   99.62%  <totals>

....[Distribution by Source]........................................................................
 89.58%   88.16%         C2, level 4
  6.85%    8.43%        runtime stub
  2.54%    2.30%   [kernel.kallsyms]
  0.63%    0.68%           libjvm.so
  0.19%    0.35%        libc-2.26.so
  0.10%    0.02%      hsdis-amd64.so
  0.06%    0.02%         interpreter
  0.03%    0.04%  libpthread-2.26.so
  0.01%                  C1, level 3
  0.00%                       [vdso]
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:44

Benchmark                        Mode  Cnt     Score    Error  Units
Re2jFindRegex.testCombine       thrpt   20  4824.569 ± 17.939  ops/s
Re2jFindRegex.testCombine:·asm  thrpt            NaN             ---
