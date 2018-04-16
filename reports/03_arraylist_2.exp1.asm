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
# Warmup Iteration   1: 4655.653 ops/s
# Warmup Iteration   2: 8346.823 ops/s
# Warmup Iteration   3: 8548.220 ops/s
# Warmup Iteration   4: 8293.480 ops/s
# Warmup Iteration   5: 8372.608 ops/s
# Warmup Iteration   6: 8320.732 ops/s
# Warmup Iteration   7: 8506.017 ops/s
# Warmup Iteration   8: 8482.427 ops/s
# Warmup Iteration   9: 8404.760 ops/s
# Warmup Iteration  10: 8326.999 ops/s
# Warmup Iteration  11: 8227.351 ops/s
# Warmup Iteration  12: 8310.314 ops/s
# Warmup Iteration  13: 8017.004 ops/s
# Warmup Iteration  14: 8480.216 ops/s
# Warmup Iteration  15: 8475.465 ops/s
# Warmup Iteration  16: 8282.676 ops/s
# Warmup Iteration  17: 8252.665 ops/s
# Warmup Iteration  18: 8235.910 ops/s
# Warmup Iteration  19: 8238.619 ops/s
# Warmup Iteration  20: 8014.297 ops/s
Iteration   1: 7996.209 ops/s
Iteration   2: 7977.065 ops/s
Iteration   3: 8347.881 ops/s
Iteration   4: 8458.401 ops/s
Iteration   5: 8472.745 ops/s
Iteration   6: 8424.169 ops/s
Iteration   7: 8492.558 ops/s
Iteration   8: 8492.542 ops/s
Iteration   9: 8502.193 ops/s
Iteration  10: 8533.408 ops/s
Iteration  11: 8351.480 ops/s
Iteration  12: 8480.403 ops/s
Iteration  13: 8537.499 ops/s
Iteration  14: 8498.384 ops/s
Iteration  15: 8542.136 ops/s
Iteration  16: 8410.514 ops/s
Iteration  17: 8504.409 ops/s
Iteration  18: 8545.890 ops/s
Iteration  19: 8524.258 ops/s
Iteration  20: 8520.695 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  8430.642 ±(99.9%) 140.926 ops/s [Average]
  (min, avg, max) = (7977.065, 8430.642, 8545.890), stdev = 162.291
  CI (99.9%): [8289.716, 8571.568] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1:·asm":
PrintAssembly processed: 212409 total address lines.
Perf output processed (skipped 23.009 seconds):
 Column 1: cycles (20552 events)
 Column 2: instructions (20535 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 528 (287 bytes) 

                       # parm4:    rdi       = int
                       # parm5:    [sp+0x60]   = &apos;com/google/re2j/Machine$Thread&apos;  (sp of caller)
                       0x00007f3d6901c120: mov    0x8(%rsi),%r10d    ;   {no_reloc}
                       0x00007f3d6901c124: shl    $0x3,%r10
                       0x00007f3d6901c128: cmp    %r10,%rax
                       0x00007f3d6901c12b: jne    0x00007f3d68e2ae20  ;   {runtime_call}
                       0x00007f3d6901c131: data16 xchg %ax,%ax
                       0x00007f3d6901c134: nopl   0x0(%rax,%rax,1)
                       0x00007f3d6901c13c: data16 data16 xchg %ax,%ax
                     [Verified Entry Point]
  0.51%    0.54%       0x00007f3d6901c140: mov    %eax,-0x14000(%rsp)
  1.00%    1.04%       0x00007f3d6901c147: push   %rbp
  0.20%    0.25%       0x00007f3d6901c148: sub    $0x50,%rsp         ;*synchronization entry
                                                                     ; - com.google.re2j.Machine::add@-1 (line 344)
  1.23%    1.16%       0x00007f3d6901c14c: mov    %edi,0x28(%rsp)
  0.17%    0.19%       0x00007f3d6901c150: mov    %r9,0x20(%rsp)
  0.22%    0.24%       0x00007f3d6901c155: mov    %r8d,0x1c(%rsp)
  0.24%    0.37%       0x00007f3d6901c15a: mov    %rsi,0x8(%rsp)
  0.89%    0.93%       0x00007f3d6901c15f: test   %ecx,%ecx
                       0x00007f3d6901c161: je     0x00007f3d6901c56e  ;*ifne
                                                                     ; - com.google.re2j.Machine::add@1 (line 344)
  0.18%    0.17%       0x00007f3d6901c167: mov    %rdx,0x38(%rsp)
  0.25%    0.21%       0x00007f3d6901c16c: mov    0x14(%rdx),%r11d   ;*getfield sparse
                                                                     ; - com.google.re2j.Machine$Queue::contains@1 (line 46)
                                                                     ; - com.google.re2j.Machine::add@9 (line 347)
                                                                     ; implicit exception: dispatches to 0x00007f3d6901c6b1
  0.28%    0.34%       0x00007f3d6901c170: mov    0xc(%r12,%r11,8),%edi  ; implicit exception: dispatches to 0x00007f3d6901c6c5
  0.94%    0.79%       0x00007f3d6901c175: cmp    %edi,%ecx
                  ╭    0x00007f3d6901c177: jae    0x00007f3d6901c269  ;*iaload
                  │                                                  ; - com.google.re2j.Machine$Queue::contains@5 (line 46)
                  │                                                  ; - com.google.re2j.Machine::add@9 (line 347)
  0.18%    0.16%  │    0x00007f3d6901c17d: mov    0x10(%rdx),%r9d    ;*getfield dense
                  │                                                  ; - com.google.re2j.Machine$Queue::contains@18 (line 50)
                  │                                                  ; - com.google.re2j.Machine::add@9 (line 347)
  0.23%    0.10%  │    0x00007f3d6901c181: mov    0xc(%rdx),%r8d     ;*getfield size
                  │                                                  ; - com.google.re2j.Machine$Queue::contains@9 (line 47)
                  │                                                  ; - com.google.re2j.Machine::add@9 (line 347)
  0.29%    0.39%  │    0x00007f3d6901c185: lea    (%r12,%r11,8),%rdx
  0.79%    0.85%  │    0x00007f3d6901c189: mov    0x10(%rdx,%rcx,4),%ebp  ;*iaload
                  │                                                  ; - com.google.re2j.Machine$Queue::contains@5 (line 46)
                  │                                                  ; - com.google.re2j.Machine::add@9 (line 347)
  0.15%    0.20%  │    0x00007f3d6901c18d: cmp    %r8d,%ebp
                  │╭   0x00007f3d6901c190: jl     0x00007f3d6901c23c  ;*iastore
                  ││                                                 ; - com.google.re2j.Machine$Queue::add@18 (line 58)
                  ││                                                 ; - com.google.re2j.Machine::add@20 (line 350)
  0.28%    0.22%  ││↗  0x00007f3d6901c196: mov    %r8d,%r10d
  0.20%    0.28%  │││  0x00007f3d6901c199: inc    %r10d
  0.79%    0.77%  │││  0x00007f3d6901c19c: mov    0x38(%rsp),%rbx
  0.27%    0.22%  │││  0x00007f3d6901c1a1: mov    %r10d,0xc(%rbx)    ;*putfield size
                  │││                                                ; - com.google.re2j.Machine$Queue::add@8 (line 57)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 350)
  0.41%    0.35%  │││  0x00007f3d6901c1a5: cmp    %edi,%ecx
                  │││  0x00007f3d6901c1a7: jae    0x00007f3d6901c2a5
  0.24%    0.15%  │││  0x00007f3d6901c1ad: mov    %r8d,0x10(%rdx,%rcx,4)  ;*iastore
                  │││                                                ; - com.google.re2j.Machine$Queue::add@18 (line 58)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 350)
  0.78%    0.77%  │││  0x00007f3d6901c1b2: mov    0xc(%r12,%r9,8),%r11d  ; implicit exception: dispatches to 0x00007f3d6901c6d9
  0.18%    0.19%  │││  0x00007f3d6901c1b7: cmp    %r11d,%r8d
                  │││  0x00007f3d6901c1ba: jae    0x00007f3d6901c2f1
  0.31%    0.18%  │││  0x00007f3d6901c1c0: lea    (%r12,%r9,8),%r10
  0.18%    0.20%  │││  0x00007f3d6901c1c4: mov    0x10(%r10,%r8,4),%r13d  ;*aaload
                  │││                                                ; - com.google.re2j.Machine$Queue::add@24 (line 59)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 350)
  0.85%    0.79%  │││  0x00007f3d6901c1c9: test   %r13d,%r13d
                  │││  0x00007f3d6901c1cc: je     0x00007f3d6901c595  ;*ifnonnull
                  │││                                                ; - com.google.re2j.Machine$Queue::add@27 (line 60)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 350)
  0.19%    0.21%  │││  0x00007f3d6901c1d2: mov    %ecx,0xc(%r12,%r13,8)  ;*putfield pc
                  │││                                                ; - com.google.re2j.Machine$Queue::add@52 (line 64)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 350)
  0.73%    1.03%  │││  0x00007f3d6901c1d7: mov    0x18(%rsi),%r11d   ;*getfield prog
                  │││                                                ; - com.google.re2j.Machine::add@26 (line 351)
  0.21%    0.16%  │││  0x00007f3d6901c1db: mov    %r12d,0x10(%r12,%r13,8)  ;*putfield thread
                  │││                                                ; - com.google.re2j.Machine$Queue::add@47 (line 63)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 350)
  0.98%    1.07%  │││  0x00007f3d6901c1e0: mov    0x18(%r12,%r11,8),%ebp  ;*getfield inst
                  │││                                                ; - com.google.re2j.Prog::getInst@1 (line 30)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 351)
                  │││                                                ; implicit exception: dispatches to 0x00007f3d6901c6ed
  0.20%    0.13%  │││  0x00007f3d6901c1e5: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f3d6901c701
  0.36%    0.37%  │││  0x00007f3d6901c1ea: cmp    %r10d,%ecx
                  │││  0x00007f3d6901c1ed: jae    0x00007f3d6901c339
  0.22%    0.24%  │││  0x00007f3d6901c1f3: lea    (%r12,%rbp,8),%r10
  0.87%    0.72%  │││  0x00007f3d6901c1f7: mov    0x10(%r10,%rcx,4),%r11d  ;*aaload
                  │││                                                ; - com.google.re2j.Prog::getInst@5 (line 30)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 351)
  0.23%    0.12%  │││  0x00007f3d6901c1fc: mov    %r11d,0x30(%rsp)
  0.36%    0.35%  │││  0x00007f3d6901c201: mov    0xc(%r12,%r11,8),%r9d  ;*getfield op
                  │││                                                ; - com.google.re2j.Machine::add@37 (line 352)
                  │││                                                ; implicit exception: dispatches to 0x00007f3d6901c715
  1.40%    1.48%  │││  0x00007f3d6901c206: mov    %r9d,%r11d
  0.62%    0.45%  │││  0x00007f3d6901c209: dec    %r11d
  0.58%    0.54%  │││  0x00007f3d6901c20c: cmp    $0xb,%r11d
                  │││  0x00007f3d6901c210: jae    0x00007f3d6901c365  ;*tableswitch
                  │││                                                ; - com.google.re2j.Machine::add@40 (line 352)
  0.79%    0.72%  │││  0x00007f3d6901c216: mov    0x30(%rsp),%r10d
  0.11%    0.15%  │││  0x00007f3d6901c21b: mov    0x14(%r12,%r10,8),%r10d  ;*getfield arg
                  │││                                                ; - com.google.re2j.Machine::add@156 (line 366)
  3.05%    2.83%  │││  0x00007f3d6901c220: mov    0x30(%rsp),%r11d
  0.07%    0.04%  │││  0x00007f3d6901c225: mov    0x10(%r12,%r11,8),%ecx  ;*getfield out
                  │││                                                ; - com.google.re2j.Machine::add@193 (line 372)
  1.34%    1.24%  │││  0x00007f3d6901c22a: movslq %r9d,%r11
  0.02%    0.03%  │││  0x00007f3d6901c22d: movabs $0x7f3d6901c0c0,%r8  ;   {section_word}
  0.14%    0.13%  │││  0x00007f3d6901c237: jmpq   *-0x8(%r8,%r11,8)  ;*tableswitch
                  │││                                                ; - com.google.re2j.Machine::add@40 (line 352)
           0.00%  │↘│  0x00007f3d6901c23c: mov    0xc(%r12,%r9,8),%ebx  ; implicit exception: dispatches to 0x00007f3d6901c781
  0.01%    0.01%  │ │  0x00007f3d6901c241: cmp    %ebx,%ebp
                  │ │  0x00007f3d6901c243: jae    0x00007f3d6901c699
                  │ │  0x00007f3d6901c249: lea    (%r12,%r9,8),%r10
                  │ │  0x00007f3d6901c24d: mov    0x10(%r10,%rbp,4),%ebp  ;*aaload
                  │ │                                                ; - com.google.re2j.Machine$Queue::contains@22 (line 50)
                  │ │                                                ; - com.google.re2j.Machine::add@9 (line 347)
  0.01%           │ │  0x00007f3d6901c252: mov    0xc(%r12,%rbp,8),%ebx  ; implicit exception: dispatches to 0x00007f3d6901c791
  0.03%    0.00%  │ │  0x00007f3d6901c257: cmp    %ecx,%ebx
                  │ ╰  0x00007f3d6901c259: jne    0x00007f3d6901c196
           0.00%  │    0x00007f3d6901c25f: mov    0x60(%rsp),%rax
                  │    0x00007f3d6901c264: jmpq   0x00007f3d6901c53e
                  ↘    0x00007f3d6901c269: mov    $0xffffffe4,%esi
                       0x00007f3d6901c26e: mov    0x8(%rsp),%rbp
                       0x00007f3d6901c273: mov    %r8d,0x14(%rsp)
                       0x00007f3d6901c278: mov    %r9,0x18(%rsp)
                       0x00007f3d6901c27d: mov    0x28(%rsp),%r8d
                       0x00007f3d6901c282: mov    %r8d,0x20(%rsp)
                       0x00007f3d6901c287: mov    %rdx,0x28(%rsp)
                       0x00007f3d6901c28c: mov    %ecx,0x24(%rsp)
                       0x00007f3d6901c290: mov    %ecx,0x30(%rsp)
....................................................................................................
 24.80%   24.08%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 534 (620 bytes) 

                                # parm6:    [sp+0x78]   = int
                                # parm7:    [sp+0x80]   = boolean
                                0x00007f3d69020ac0: mov    0x8(%rsi),%r10d
                                0x00007f3d69020ac4: shl    $0x3,%r10
                                0x00007f3d69020ac8: cmp    %r10,%rax
                                0x00007f3d69020acb: jne    0x00007f3d68e2ae20  ;   {runtime_call}
                                0x00007f3d69020ad1: data16 xchg %ax,%ax
                                0x00007f3d69020ad4: nopl   0x0(%rax,%rax,1)
                                0x00007f3d69020adc: data16 data16 xchg %ax,%ax
                              [Verified Entry Point]
  0.05%    0.04%                0x00007f3d69020ae0: mov    %eax,-0x14000(%rsp)
  0.19%    0.26%                0x00007f3d69020ae7: push   %rbp
  0.07%    0.03%                0x00007f3d69020ae8: sub    $0x60,%rsp         ;*synchronization entry
                                                                              ; - com.google.re2j.Machine::step@-1 (line 269)
  0.01%    0.05%                0x00007f3d69020aec: mov    %edi,0x20(%rsp)
  0.16%    0.12%                0x00007f3d69020af0: mov    %r9d,0x14(%rsp)
  0.06%    0.01%                0x00007f3d69020af5: mov    %rcx,0x18(%rsp)
  0.08%    0.06%                0x00007f3d69020afa: mov    %r8d,0x10(%rsp)
  0.04%    0.01%                0x00007f3d69020aff: mov    %rdx,0x8(%rsp)
  0.15%    0.12%                0x00007f3d69020b04: mov    %rsi,0x28(%rsp)
  0.04%    0.00%                0x00007f3d69020b09: mov    0x14(%rsi),%r10d   ;*getfield re2
                                                                              ; - com.google.re2j.Machine::step@1 (line 269)
  0.02%    0.03%                0x00007f3d69020b0d: movzbl 0x18(%r12,%r10,8),%r11d  ;*getfield longest
                                                                              ; - com.google.re2j.Machine::step@4 (line 269)
                                                                              ; implicit exception: dispatches to 0x00007f3d69021a81
  0.06%    0.05%                0x00007f3d69020b13: mov    %r11d,0x24(%rsp)
  0.12%    0.17%                0x00007f3d69020b18: mov    0xc(%rdx),%r11d    ; implicit exception: dispatches to 0x00007f3d69021a91
  0.02%    0.01%                0x00007f3d69020b1c: test   %r11d,%r11d
                                0x00007f3d69020b1f: jle    0x00007f3d69020e26  ;*if_icmpge
                                                                              ; - com.google.re2j.Machine::step@18 (line 270)
  0.03%    0.03%                0x00007f3d69020b25: xor    %r10d,%r10d
  0.02%    0.01%  ╭             0x00007f3d69020b28: jmpq   0x00007f3d69020bc7
  0.21%    0.29%  │  ↗          0x00007f3d69020b2d: mov    0xc(%r12,%rdi,8),%ebx  ; implicit exception: dispatches to 0x00007f3d69021a71
  1.15%    1.20%  │  │          0x00007f3d69020b32: test   %ebx,%ebx
                  │  │          0x00007f3d69020b34: jbe    0x00007f3d69021339  ;*iaload
                  │  │                                                        ; - com.google.re2j.Machine::step@310 (line 314)
  0.38%    0.34%  │  │          0x00007f3d69020b3a: mov    0x10(%r12,%rdi,8),%ebx
  0.07%    0.02%  │  │          0x00007f3d69020b3f: mov    0x20(%rsp),%ecx
                  │  │          0x00007f3d69020b43: cmp    %ebx,%ecx
                  │  │          0x00007f3d69020b45: je     0x00007f3d6902114a  ;*goto
                  │  │                                                        ; - com.google.re2j.Machine::step@299 (line 311)
  0.33%    0.32%  │  │  ↗       0x00007f3d69020b4b: mov    %r11,%r9           ;*aload
                  │  │  │                                                     ; - com.google.re2j.Machine::step@385 (line 331)
           0.01%  │  │  │   ↗   0x00007f3d69020b4e: mov    0x28(%rsp),%r11
  0.08%    0.01%  │  │  │   │   0x00007f3d69020b53: mov    0x24(%r11),%r8d    ;*getfield pool
                  │  │  │   │                                                 ; - com.google.re2j.Machine::free@5 (line 160)
                  │  │  │   │                                                 ; - com.google.re2j.Machine::step@393 (line 332)
  0.14%    0.14%  │  │  │   │   0x00007f3d69020b57: mov    0xc(%r12,%r8,8),%r11d  ;*arraylength
                  │  │  │   │                                                 ; - com.google.re2j.Machine::free@8 (line 160)
                  │  │  │   │                                                 ; - com.google.re2j.Machine::step@393 (line 332)
                  │  │  │   │                                                 ; implicit exception: dispatches to 0x00007f3d690219d5
  0.30%    0.32%  │  │  │   │   0x00007f3d69020b5c: mov    0x28(%rsp),%rbx
  0.01%    0.01%  │  │  │   │   0x00007f3d69020b61: mov    0xc(%rbx),%ebp     ;*getfield poolSize
                  │  │  │   │                                                 ; - com.google.re2j.Machine::free@1 (line 160)
                  │  │  │   │                                                 ; - com.google.re2j.Machine::step@393 (line 332)
  0.07%    0.03%  │  │  │   │   0x00007f3d69020b64: cmp    %r11d,%ebp
                  │  │  │   │   0x00007f3d69020b67: jge    0x00007f3d690213c9  ;*if_icmplt
                  │  │  │   │                                                 ; - com.google.re2j.Machine::free@9 (line 160)
                  │  │  │   │                                                 ; - com.google.re2j.Machine::step@393 (line 332)
  0.23%    0.11%  │  │  │   │   0x00007f3d69020b6d: mov    %ebp,%edi
  0.44%    0.38%  │  │  │   │   0x00007f3d69020b6f: inc    %edi
           0.00%  │  │  │   │   0x00007f3d69020b71: mov    %edi,0xc(%rbx)     ;*putfield poolSize
                  │  │  │   │                                                 ; - com.google.re2j.Machine::free@45 (line 163)
                  │  │  │   │                                                 ; - com.google.re2j.Machine::step@393 (line 332)
  0.03%    0.03%  │  │  │   │   0x00007f3d69020b74: cmp    %r11d,%ebp
                  │  │  │   │   0x00007f3d69020b77: jae    0x00007f3d69021231  ;*aastore
                  │  │  │   │                                                 ; - com.google.re2j.Machine::free@49 (line 163)
                  │  │  │   │                                                 ; - com.google.re2j.Machine::step@393 (line 332)
  0.17%    0.15%  │  │  │   │   0x00007f3d69020b7d: mov    %r9,%r10
  0.32%    0.30%  │  │  │   │   0x00007f3d69020b80: shr    $0x3,%r10
  0.01%    0.00%  │  │  │   │   0x00007f3d69020b84: lea    (%r12,%r8,8),%r11  ;*getfield pool
                  │  │  │   │                                                 ; - com.google.re2j.Machine::free@5 (line 160)
                  │  │  │   │                                                 ; - com.google.re2j.Machine::step@393 (line 332)
  0.07%    0.02%  │  │  │   │   0x00007f3d69020b88: lea    0x10(%r11,%rbp,4),%r11
  0.13%    0.24%  │  │  │   │   0x00007f3d69020b8d: mov    %r10d,(%r11)
  0.43%    0.36%  │  │  │   │   0x00007f3d69020b90: mov    %r11,%r10
  0.01%    0.01%  │  │  │   │   0x00007f3d69020b93: shr    $0x9,%r10
  0.08%    0.08%  │  │  │   │   0x00007f3d69020b97: movabs $0x7f3d64813000,%r11
  0.16%    0.20%  │  │  │   │   0x00007f3d69020ba1: mov    %r12b,(%r11,%r10,1)  ;*aastore
                  │  │  │   │                                                 ; - com.google.re2j.Machine::free@49 (line 163)
                  │  │  │   │                                                 ; - com.google.re2j.Machine::step@393 (line 332)
  0.32%    0.35%  │  │  │   │   0x00007f3d69020ba5: xor    %r11d,%r11d        ; OopMap{[8]=Oop [24]=Oop [40]=Oop off=232}
                  │  │  │   │                                                 ;*goto
                  │  │  │   │                                                 ; - com.google.re2j.Machine::step@399 (line 270)
  0.23%    0.26%  │ ↗│  │  ↗│   0x00007f3d69020ba8: test   %eax,0x15e7f452(%rip)        # 0x00007f3d7eea0000
                  │ ││  │  ││                                                 ;*goto
                  │ ││  │  ││                                                 ; - com.google.re2j.Machine::step@399 (line 270)
                  │ ││  │  ││                                                 ;   {poll}
  0.55%    0.56%  │ ││  │  ││   0x00007f3d69020bae: mov    0x8(%rsp),%r10
  0.38%    0.44%  │ ││  │  ││   0x00007f3d69020bb3: mov    0xc(%r10),%r11d
  0.45%    0.30%  │ ││  │  ││   0x00007f3d69020bb7: cmp    %r11d,%eax
                  │ ││  │  ││   0x00007f3d69020bba: jge    0x00007f3d69020e26
  0.24%    0.27%  │ ││  │  ││   0x00007f3d69020bc0: mov    %ecx,0x20(%rsp)
  0.42%    0.36%  │ ││  │  ││   0x00007f3d69020bc4: mov    %eax,%r10d         ;*aload_1
                  │ ││  │  ││                                                 ; - com.google.re2j.Machine::step@21 (line 271)
  0.61%    0.65%  ↘ ││  │  ││   0x00007f3d69020bc7: mov    0x8(%rsp),%r11
  0.23%    0.06%    ││  │  ││   0x00007f3d69020bcc: mov    0x10(%r11),%r8d    ;*getfield dense
                    ││  │  ││                                                 ; - com.google.re2j.Machine::step@22 (line 271)
  0.52%    0.51%    ││  │  ││   0x00007f3d69020bd0: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x00007f3d690219a1
  1.02%    1.08%    ││  │  ││   0x00007f3d69020bd5: cmp    %r11d,%r10d
                    ││  │  ││   0x00007f3d69020bd8: jae    0x00007f3d6902116c
  0.73%    0.73%    ││  │  ││   0x00007f3d69020bde: lea    (%r12,%r8,8),%r11
  0.20%    0.04%    ││  │  ││   0x00007f3d69020be2: mov    0x10(%r11,%r10,4),%r11d  ;*aaload
                    ││  │  ││                                                 ; - com.google.re2j.Machine::step@27 (line 271)
  0.25%    0.26%    ││  │  ││   0x00007f3d69020be7: mov    0x10(%r12,%r11,8),%r8d  ;*getfield thread
                    ││  │  ││                                                 ; - com.google.re2j.Machine::step@40 (line 275)
                    ││  │  ││                                                 ; implicit exception: dispatches to 0x00007f3d690219f5
  1.63%    1.91%    ││  │  ││   0x00007f3d69020bec: mov    %r10d,%eax
  0.38%    0.38%    ││  │  ││   0x00007f3d69020bef: inc    %eax               ;*iadd
                    ││  │  ││                                                 ; - com.google.re2j.Machine::step@233 (line 298)
  0.21%    0.03%    ││  │  ││   0x00007f3d69020bf1: test   %r8d,%r8d
                   ╭││  │  ││   0x00007f3d69020bf4: jne    0x00007f3d69020c01  ;*ifnonnull
                   │││  │  ││                                                 ; - com.google.re2j.Machine::step@47 (line 276)
  0.53%    0.51%   │││  │  ││   0x00007f3d69020bf6: mov    0x24(%rsp),%r11d
  0.20%    0.10%   │││  │  ││   0x00007f3d69020bfb: mov    0x20(%rsp),%ecx
  0.00%    0.01%   │╰│  │  ││   0x00007f3d69020bff: jmp    0x00007f3d69020ba8
  0.07%    0.03%   ↘ │  │  ││   0x00007f3d69020c01: mov    0x24(%rsp),%r9d
  0.24%    0.18%     │  │  ││   0x00007f3d69020c06: test   %r9d,%r9d
                     │  │  ││   0x00007f3d69020c09: jne    0x00007f3d69021381  ;*ifeq
                     │  │  ││                                                 ; - com.google.re2j.Machine::step@55 (line 279)
  0.38%    0.30%     │  │  ││   0x00007f3d69020c0f: mov    0x10(%r12,%r8,8),%r9d  ;*getfield inst
                     │  │  ││                                                 ; - com.google.re2j.Machine::step@101 (line 283)
  1.33%    1.08%     │  │  ││   0x00007f3d69020c14: mov    0x18(%r12,%r9,8),%edi  ;*getfield runes
                     │  │  ││                                                 ; - com.google.re2j.Machine::step@306 (line 314)
                     │  │  ││                                                 ; implicit exception: dispatches to 0x00007f3d690219c5
  2.70%    3.02%     │  │  ││   0x00007f3d69020c19: mov    0xc(%r12,%r9,8),%ecx  ;*getfield op
                     │  │  ││                                                 ; - com.google.re2j.Machine::step@111 (line 285)
  0.14%    0.12%     │  │  ││   0x00007f3d69020c1e: mov    0xc(%r12,%r8,8),%r14d  ;*getfield cap
                     │  │  ││                                                 ; - com.google.re2j.Machine::step@168 (line 292)
  0.04%    0.04%     │  │  ││   0x00007f3d69020c23: lea    (%r12,%r8,8),%r11  ;*getfield thread
                     │  │  ││                                                 ; - com.google.re2j.Machine::step@40 (line 275)
  0.16%    0.20%     │  │  ││   0x00007f3d69020c27: cmp    $0x9,%ecx
                     ╰  │  ││   0x00007f3d69020c2a: je     0x00007f3d69020b2d
  0.43%    0.34%        │  ││   0x00007f3d69020c30: cmp    $0x9,%ecx
                      ╭ │  ││   0x00007f3d69020c33: jle    0x00007f3d69020cc2
  0.04%    0.05%      │ │  ││   0x00007f3d69020c39: cmp    $0xb,%ecx
                      │╭│  ││   0x00007f3d69020c3c: jne    0x00007f3d69020c59  ;*tableswitch
                      │││  ││                                                 ; - com.google.re2j.Machine::step@114 (line 285)
                      │││  ││   0x00007f3d69020c3e: mov    0x20(%rsp),%ecx
                      │││  ││   0x00007f3d69020c42: cmp    $0xa,%ecx
                      ││╰  ││   0x00007f3d69020c45: je     0x00007f3d69020b4b  ;*if_icmpeq
                      ││   ││                                                 ; - com.google.re2j.Machine::step@334 (line 322)
                      ││   ││   0x00007f3d69020c4b: mov    %r10d,0x74(%rsp)
                      ││   ││   0x00007f3d69020c50: mov    %eax,0x7c(%rsp)
                      ││   ││   0x00007f3d69020c54: mov    %r11,%r13
                      ││ ╭ ││   0x00007f3d69020c57: jmp    0x00007f3d69020c6e
  0.18%    0.09%      │↘ │ ││   0x00007f3d69020c59: cmp    $0xb,%ecx
                      │  │ ││   0x00007f3d69020c5c: jg     0x00007f3d69021401  ;*tableswitch
                      │  │ ││                                                 ; - com.google.re2j.Machine::step@114 (line 285)
  0.09%    0.05%      │  │ ││   0x00007f3d69020c62: mov    %r10d,0x74(%rsp)
                      │  │ ││   0x00007f3d69020c67: mov    %eax,0x7c(%rsp)
  0.04%    0.00%      │  │ ││   0x00007f3d69020c6b: mov    %r11,%r13          ;*ifeq
                      │  │ ││                                                 ; - com.google.re2j.Machine::step@359 (line 328)
  0.04%    0.05%      │  ↘ ││   0x00007f3d69020c6e: mov    0x10(%r12,%r9,8),%ecx  ;*getfield out
                      │    ││                                                 ; - com.google.re2j.Machine::step@366 (line 329)
  0.11%    0.04%      │    ││   0x00007f3d69020c73: mov    %r14,%r9
           0.00%      │    ││   0x00007f3d69020c76: shl    $0x3,%r9           ;*getfield cap
                      │    ││                                                 ; - com.google.re2j.Machine::step@168 (line 292)
  0.02%               │    ││   0x00007f3d69020c7a: mov    0x28(%rsp),%rsi
  0.08%    0.07%      │    ││   0x00007f3d69020c7f: mov    0x18(%rsp),%rdx
  0.11%    0.03%      │    ││   0x00007f3d69020c84: mov    0x14(%rsp),%r8d
  0.01%               │    ││   0x00007f3d69020c89: mov    0x70(%rsp),%edi
  0.04%    0.01%      │    ││   0x00007f3d69020c8d: mov    %r13,(%rsp)
  0.08%    0.05%      │    ││   0x00007f3d69020c91: xchg   %ax,%ax
  0.08%    0.05%      │    ││   0x00007f3d69020c93: callq  0x00007f3d68e2b020  ; OopMap{[8]=Oop [24]=Oop [40]=Oop off=472}
                      │    ││                                                 ;*invokespecial add
                      │    ││                                                 ; - com.google.re2j.Machine::step@380 (line 329)
                      │    ││                                                 ;   {optimized virtual_call}
  0.00%               │    ││   0x00007f3d69020c98: mov    %rax,%r9
                      │    ││   0x00007f3d69020c9b: test   %rax,%rax
                      │   ╭││   0x00007f3d69020c9e: jne    0x00007f3d69020cb0  ;*ifnull
                      │   │││                                                 ; - com.google.re2j.Machine::step@387 (line 331)
                      │   │││   0x00007f3d69020ca0: xor    %r11d,%r11d
  0.25%    0.31%      │   │││   0x00007f3d69020ca3: mov    0x20(%rsp),%ecx
                      │   │││   0x00007f3d69020ca7: mov    0x7c(%rsp),%eax
                      │   │╰│   0x00007f3d69020cab: jmpq   0x00007f3d69020ba8
                      │   ↘ │   0x00007f3d69020cb0: mov    0x20(%rsp),%ecx
                      │     │   0x00007f3d69020cb4: mov    0x74(%rsp),%r10d
                      │     │   0x00007f3d69020cb9: mov    0x7c(%rsp),%eax
                      │     ╰   0x00007f3d69020cbd: jmpq   0x00007f3d69020b4e
  0.08%    0.14%      ↘         0x00007f3d69020cc2: cmp    $0x7,%ecx
                                0x00007f3d69020cc5: je     0x00007f3d69021401  ;*tableswitch
                                                                              ; - com.google.re2j.Machine::step@114 (line 285)
  0.12%    0.23%                0x00007f3d69020ccb: lea    (%r12,%r9,8),%rbx  ;*getfield inst
                                                                              ; - com.google.re2j.Machine::step@101 (line 283)
  0.00%    0.01%                0x00007f3d69020ccf: cmp    $0x7,%ecx
                             ╭  0x00007f3d69020cd2: jle    0x00007f3d69020d51  ;*tableswitch
                             │                                                ; - com.google.re2j.Machine::step@114 (line 285)
  0.18%    0.17%             │  0x00007f3d69020cd4: mov    0xc(%r12,%rdi,8),%ebp  ;*arraylength
                             │                                                ; - com.google.re2j.Inst::matchRune@4 (line 49)
                             │                                                ; - com.google.re2j.Machine::step@294 (line 310)
                             │                                                ; implicit exception: dispatches to 0x00007f3d69021ab1
  0.36%    0.48%             │  0x00007f3d69020cd9: cmp    $0x1,%ebp
                             │  0x00007f3d69020cdc: jne    0x00007f3d6902167d  ;*if_icmpne
                             │                                                ; - com.google.re2j.Inst::matchRune@6 (line 49)
                             │                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.18%    0.26%             │  0x00007f3d69020ce2: test   %ebp,%ebp
                             │  0x00007f3d69020ce4: jbe    0x00007f3d690214d9
  0.01%    0.00%             │  0x00007f3d69020cea: mov    0x10(%r12,%rdi,8),%edi  ;*iaload
                             │                                                ; - com.google.re2j.Inst::matchRune@14 (line 50)
                             │                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.01%    0.01%             │  0x00007f3d69020cef: mov    0x20(%rsp),%ecx
                             │  0x00007f3d69020cf3: cmp    %edi,%ecx
                             │  0x00007f3d69020cf5: je     0x00007f3d6902115b  ;*if_icmpne
                             │                                                ; - com.google.re2j.Inst::matchRune@18 (line 51)
                             │                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.25%    0.29%             │  0x00007f3d69020cfb: mov    $0x1,%ebp
  0.01%    0.01%             │  0x00007f3d69020d00: and    0x14(%r12,%r9,8),%ebp  ;*iand
                             │                                                ; - com.google.re2j.Inst::matchRune@28 (line 54)
                             │                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.01%                      │  0x00007f3d69020d05: test   %ebp,%ebp
                             │  0x00007f3d69020d07: je     0x00007f3d69021765  ;*ifeq
                             │                                                ; - com.google.re2j.Inst::matchRune@29 (line 54)
                             │                                                ; - com.google.re2j.Machine::step@294 (line 310)
                             │  0x00007f3d69020d0d: mov    %edi,%edx
  0.17%    0.24%             │  0x00007f3d69020d0f: vmovq  %rbx,%xmm0
  0.01%    0.00%             │  0x00007f3d69020d14: mov    %r11,%r13
  0.00%                      │  0x00007f3d69020d17: mov    %r9d,%edi
                             │  0x00007f3d69020d1a: mov    %eax,0x7c(%rsp)
  0.20%    0.23%             │  0x00007f3d69020d1e: mov    %r8d,%ebx
  0.02%    0.01%             │  0x00007f3d69020d21: mov    %r10d,0x74(%rsp)
  0.00%                      │  0x00007f3d69020d26: movabs $0x76dd0c3b8,%r9   ;   {oop(a {type array int}[63] )}
                             │  0x00007f3d69020d30: mov    $0x1f,%esi
  0.19%    0.22%             │  0x00007f3d69020d35: mov    $0x1f,%r8d
  0.02%                      │  0x00007f3d69020d3b: xor    %r10d,%r10d
  0.00%                      │  0x00007f3d69020d3e: mov    $0x3f,%r11d
                             │  0x00007f3d69020d44: mov    %r10d,0x20(%rsp)
  0.15%    0.14%             │  0x00007f3d69020d49: mov    %r11d,%eax
           0.00%             │  0x00007f3d69020d4c: jmpq   0x00007f3d69020e62
                             ↘  0x00007f3d69020d51: cmp    $0x6,%ecx
                                0x00007f3d69020d54: jne    0x00007f3d69021401  ;*tableswitch
                                                                              ; - com.google.re2j.Machine::step@114 (line 285)
                                0x00007f3d69020d5a: mov    0x78(%rsp),%ecx
                                0x00007f3d69020d5e: cmp    $0x2,%ecx
                                0x00007f3d69020d61: je     0x00007f3d69021126  ;*aload
                                                                              ; - com.google.re2j.Machine::step@166 (line 292)
                                0x00007f3d69020d67: mov    0xc(%r12,%r14,8),%edx  ;*arraylength
                                                                              ; - com.google.re2j.Machine::step@171 (line 292)
                                                                              ; implicit exception: dispatches to 0x00007f3d69021ad1
....................................................................................................
 23.75%   22.99%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 528 (342 bytes) 

                          0x00007f3d6901c3d6: mov    0x60(%rsp),%r10
                          0x00007f3d6901c3db: mov    %r10,(%rsp)
                          0x00007f3d6901c3df: callq  0x00007f3d68e2b020  ; OopMap{off=708}
                                                                        ;*invokespecial add
                                                                        ; - com.google.re2j.Machine::add@203 (line 372)
                                                                        ;   {optimized virtual_call}
                  ╭       0x00007f3d6901c3e4: jmpq   0x00007f3d6901c53e
                  │       0x00007f3d6901c3e9: mov    0x60(%rsp),%rax
                  │╭      0x00007f3d6901c3ee: jmpq   0x00007f3d6901c53e  ;*tableswitch
                  ││                                                    ; - com.google.re2j.Machine::add@40 (line 352)
  1.02%    1.07%  ││      0x00007f3d6901c3f3: mov    0x30(%rsp),%r11d
  0.00%           ││      0x00007f3d6901c3f8: lea    (%r12,%r11,8),%rbp  ;*aaload
                  ││                                                    ; - com.google.re2j.Prog::getInst@5 (line 30)
                  ││                                                    ; - com.google.re2j.Machine::add@30 (line 351)
           0.01%  ││      0x00007f3d6901c3fc: mov    %rbx,%rdx
  0.02%    0.01%  ││      0x00007f3d6901c3ff: mov    0x1c(%rsp),%r8d
  0.37%    0.45%  ││      0x00007f3d6901c404: mov    0x20(%rsp),%r9
  0.00%           ││      0x00007f3d6901c409: mov    0x28(%rsp),%edi
  0.00%    0.02%  ││      0x00007f3d6901c40d: mov    0x60(%rsp),%r10
  0.02%    0.03%  ││      0x00007f3d6901c412: mov    %r10,(%rsp)
  0.38%    0.43%  ││      0x00007f3d6901c416: nop
           0.01%  ││      0x00007f3d6901c417: callq  0x00007f3d68e2b020  ; OopMap{rbp=Oop [8]=Oop [32]=Oop [48]=NarrowOop [56]=Oop off=764}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@127 (line 361)
                  ││                                                    ;   {optimized virtual_call}
  0.05%    0.03%  ││      0x00007f3d6901c41c: mov    0x30(%rsp),%r10d
  0.19%    0.25%  ││      0x00007f3d6901c421: mov    0x14(%r12,%r10,8),%ecx  ;*getfield arg
                  ││                                                    ; - com.google.re2j.Machine::add@136 (line 362)
  0.22%    0.19%  ││      0x00007f3d6901c426: mov    0x8(%rsp),%rsi
  0.06%    0.05%  ││      0x00007f3d6901c42b: mov    0x38(%rsp),%rdx
  0.17%    0.24%  ││      0x00007f3d6901c430: mov    0x1c(%rsp),%r8d
  0.01%    0.00%  ││      0x00007f3d6901c435: mov    0x20(%rsp),%r9
  0.24%    0.27%  ││      0x00007f3d6901c43a: mov    0x28(%rsp),%edi
  0.06%    0.04%  ││      0x00007f3d6901c43e: mov    %rax,(%rsp)
  0.20%    0.25%  ││      0x00007f3d6901c442: nop
                  ││      0x00007f3d6901c443: callq  0x00007f3d68e2b020  ; OopMap{off=808}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@146 (line 362)
                  ││                                                    ;   {optimized virtual_call}
  0.01%    0.02%  ││╭     0x00007f3d6901c448: jmpq   0x00007f3d6901c53e  ;*aload
                  │││                                                   ; - com.google.re2j.Machine::add@293 (line 391)
  2.46%    2.78%  │││     0x00007f3d6901c44d: mov    0x60(%rsp),%rbx
  0.00%    0.01%  │││     0x00007f3d6901c452: test   %rbx,%rbx
                  │││╭    0x00007f3d6901c455: je     0x00007f3d6901c477  ;*ifnonnull
                  ││││                                                  ; - com.google.re2j.Machine::add@295 (line 391)
  0.02%    0.00%  ││││    0x00007f3d6901c457: mov    0x30(%rsp),%r10d
                  ││││    0x00007f3d6901c45c: mov    %r10d,0x10(%rbx)
  0.18%    0.16%  ││││    0x00007f3d6901c460: mov    %rbx,%r10
                  ││││    0x00007f3d6901c463: shr    $0x9,%r10
  0.01%    0.00%  ││││    0x00007f3d6901c467: movabs $0x7f3d64813000,%r11
                  ││││    0x00007f3d6901c471: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                  ││││                                                  ; - com.google.re2j.Machine::add@313 (line 394)
  0.22%    0.21%  ││││╭   0x00007f3d6901c475: jmp    0x00007f3d6901c4ca
  0.58%    0.65%  │││↘│   0x00007f3d6901c477: mov    0xc(%rsi),%r9d     ;*getfield poolSize
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@1 (line 148)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 392)
                  │││ │   0x00007f3d6901c47b: test   %r9d,%r9d
                  │││ │   0x00007f3d6901c47e: jle    0x00007f3d6901c649  ;*ifle
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@4 (line 148)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 392)
                  │││ │   0x00007f3d6901c484: mov    0x24(%rsi),%r10d   ;*getfield pool
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@18 (line 150)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 392)
  0.02%    0.01%  │││ │   0x00007f3d6901c488: mov    %r9d,%ebp
  0.59%    0.70%  │││ │   0x00007f3d6901c48b: dec    %ebp               ;*isub
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@13 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 392)
                  │││ │   0x00007f3d6901c48d: mov    %ebp,0xc(%rsi)     ;*putfield poolSize
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@14 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 392)
                  │││ │   0x00007f3d6901c490: mov    0xc(%r12,%r10,8),%r11d  ; implicit exception: dispatches to 0x00007f3d6901c735
  0.00%    0.02%  │││ │   0x00007f3d6901c495: cmp    %r11d,%ebp
                  │││ │   0x00007f3d6901c498: jae    0x00007f3d6901c5dd
  0.58%    0.55%  │││ │   0x00007f3d6901c49e: shl    $0x3,%r10
                  │││ │   0x00007f3d6901c4a2: mov    0xc(%r10,%r9,4),%r10d  ;*aaload
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@25 (line 150)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 392)
                  │││ │   0x00007f3d6901c4a7: mov    0x30(%rsp),%r8d
  0.02%    0.01%  │││ │   0x00007f3d6901c4ac: mov    %r8d,0x10(%r12,%r10,8)  ;*putfield inst
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@45 (line 154)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 392)
                  │││ │                                                 ; implicit exception: dispatches to 0x00007f3d6901c745
  0.68%    0.75%  │││ │   0x00007f3d6901c4b1: lea    (%r12,%r10,8),%rbx  ;*aaload
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@25 (line 150)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 392)
                  │││ │   0x00007f3d6901c4b5: mov    %rbx,%r10
                  │││ │   0x00007f3d6901c4b8: shr    $0x9,%r10
  0.01%    0.01%  │││ │   0x00007f3d6901c4bc: movabs $0x7f3d64813000,%r11
  0.64%    0.57%  │││ │   0x00007f3d6901c4c6: mov    %r12b,(%r11,%r10,1)  ;*aload
                  │││ │                                                 ; - com.google.re2j.Machine::add@316 (line 396)
  0.00%    0.00%  │││ ↘   0x00007f3d6901c4ca: mov    0x20(%rsp),%rdi
  0.01%    0.02%  │││     0x00007f3d6901c4cf: mov    0xc(%rdi),%r10d    ;*arraylength
                  │││                                                   ; - com.google.re2j.Machine::add@318 (line 396)
                  │││                                                   ; implicit exception: dispatches to 0x00007f3d6901c725
  0.00%    0.01%  │││     0x00007f3d6901c4d3: test   %r10d,%r10d
                  │││     0x00007f3d6901c4d6: jle    0x00007f3d6901c627  ;*ifle
                  │││                                                   ; - com.google.re2j.Machine::add@319 (line 396)
  0.93%    0.86%  │││     0x00007f3d6901c4dc: mov    0xc(%rbx),%r8d     ;*getfield cap
                  │││                                                   ; - com.google.re2j.Machine::add@324 (line 396)
  0.00%    0.01%  │││     0x00007f3d6901c4e0: lea    (%r12,%r13,8),%rbp  ;*aaload
                  │││                                                   ; - com.google.re2j.Machine$Queue::add@24 (line 59)
                  │││                                                   ; - com.google.re2j.Machine::add@20 (line 350)
  0.03%    0.01%  │││     0x00007f3d6901c4e4: mov    %r8,%r11
  0.00%    0.00%  │││     0x00007f3d6901c4e7: shl    $0x3,%r11
  0.87%    0.80%  │││     0x00007f3d6901c4eb: cmp    %rdi,%r11
                  │││  ╭  0x00007f3d6901c4ee: je     0x00007f3d6901c51b  ;*if_acmpeq
                  │││  │                                                ; - com.google.re2j.Machine::add@329 (line 396)
  0.02%    0.02%  │││  │  0x00007f3d6901c4f0: mov    0xc(%r12,%r8,8),%r9d  ; implicit exception: dispatches to 0x00007f3d6901c759
  0.06%    0.05%  │││  │  0x00007f3d6901c4f5: lea    (%r12,%r8,8),%rcx  ;*getfield cap
                  │││  │                                                ; - com.google.re2j.Machine::add@324 (line 396)
  0.02%    0.01%  │││  │  0x00007f3d6901c4f9: cmp    %r10d,%r9d
                  │││  │  0x00007f3d6901c4fc: jb     0x00007f3d6901c5f9
  0.63%    0.65%  │││  │  0x00007f3d6901c502: lea    0x10(%r12,%r8,8),%rsi
           0.01%  │││  │  0x00007f3d6901c507: add    $0x10,%rdi
                  │││  │  0x00007f3d6901c50b: movslq %r10d,%rdx
  0.00%    0.03%  │││  │  0x00007f3d6901c50e: movabs $0x7f3d68e37640,%r10
  0.55%    0.54%  │││  │  0x00007f3d6901c518: callq  *%r10              ;*aload
                  │││  │                                                ; - com.google.re2j.Machine::add@347 (line 399)
                  │││  ↘  0x00007f3d6901c51b: mov    %rbp,%r10
  0.08%    0.09%  │││     0x00007f3d6901c51e: mov    %rbx,%r11
  0.48%    0.30%  │││     0x00007f3d6901c521: shr    $0x3,%r11
  0.25%    0.29%  │││     0x00007f3d6901c525: mov    %r11d,0x10(%r12,%r13,8)
                  │││     0x00007f3d6901c52a: shr    $0x9,%r10
  0.06%    0.06%  │││     0x00007f3d6901c52e: movabs $0x7f3d64813000,%r11
  0.54%    0.11%  │││     0x00007f3d6901c538: mov    %r12b,(%r11,%r10,1)  ;*putfield thread
                  │││                                                   ; - com.google.re2j.Machine::add@351 (line 399)
  0.26%    0.29%  │││     0x00007f3d6901c53c: xor    %eax,%eax          ;*synchronization entry
                  │││                                                   ; - com.google.re2j.Machine::add@-1 (line 344)
  0.67%    0.94%  ↘↘↘     0x00007f3d6901c53e: add    $0x50,%rsp
  0.66%    0.37%          0x00007f3d6901c542: pop    %rbp
  0.03%    0.01%          0x00007f3d6901c543: test   %eax,0x15e83ab7(%rip)        # 0x00007f3d7eea0000
                                                                        ;   {poll_return}
  0.87%    1.16%          0x00007f3d6901c549: retq                      ;*tableswitch
                                                                        ; - com.google.re2j.Machine::add@40 (line 352)
                          0x00007f3d6901c54a: mov    0x38(%rsp),%rdx
                          0x00007f3d6901c54f: mov    0x1c(%rsp),%r8d
                          0x00007f3d6901c554: mov    0x20(%rsp),%r9
                          0x00007f3d6901c559: mov    %ebx,%edi
                          0x00007f3d6901c55b: mov    0x60(%rsp),%r10
                          0x00007f3d6901c560: mov    %r10,(%rsp)
                          0x00007f3d6901c564: data16 xchg %ax,%ax
                          0x00007f3d6901c567: callq  0x00007f3d68e2b020  ; OopMap{off=1100}
....................................................................................................
 16.14%   16.50%  <total for region 3>

....[Hottest Regions]...............................................................................
 24.80%   24.08%         C2, level 4  com.google.re2j.Machine::add, version 528 (287 bytes) 
 23.75%   22.99%         C2, level 4  com.google.re2j.Machine::step, version 534 (620 bytes) 
 16.14%   16.50%         C2, level 4  com.google.re2j.Machine::add, version 528 (342 bytes) 
  9.94%   11.65%         C2, level 4  com.google.re2j.Machine::step, version 534 (363 bytes) 
  8.30%    8.22%         C2, level 4  com.google.re2j.Machine::step, version 534 (213 bytes) 
  7.87%    9.48%         C2, level 4  com.google.re2j.Machine::match, version 579 (858 bytes) 
  4.00%    2.58%        runtime stub  StubRoutines::jint_disjoint_arraycopy (128 bytes) 
  1.30%    1.29%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.79%    0.85%         C2, level 4  com.google.re2j.Machine::add, version 528 (38 bytes) 
  0.18%    0.20%         C2, level 4  com.google.re2j.Machine::step, version 534 (23 bytes) 
  0.17%    0.07%         C2, level 4  com.google.re2j.Machine::init, version 587 (101 bytes) 
  0.16%    0.16%         C2, level 4  com.google.re2j.Machine::match, version 579 (63 bytes) 
  0.14%    0.05%         C2, level 4  com.google.re2j.Machine::init, version 587 (62 bytes) 
  0.10%    0.01%   [kernel.kallsyms]  [unknown] (37 bytes) 
  0.10%            [kernel.kallsyms]  [unknown] (1 bytes) 
  0.08%    0.06%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 667 (167 bytes) 
  0.08%    0.02%   [kernel.kallsyms]  [unknown] (28 bytes) 
  0.06%    0.05%         C2, level 4  com.google.re2j.Machine::init, version 587 (0 bytes) 
  0.06%    0.01%         C2, level 4  com.google.re2j.Matcher::find, version 603 (30 bytes) 
  0.04%    0.01%         C2, level 4  com.google.re2j.Machine::init, version 587 (7 bytes) 
  1.94%    1.69%  <...other 383 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 42.17%   43.06%         C2, level 4  com.google.re2j.Machine::step, version 534 
 41.73%   41.43%         C2, level 4  com.google.re2j.Machine::add, version 528 
  8.31%    9.75%         C2, level 4  com.google.re2j.Machine::match, version 579 
  4.00%    2.58%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
  2.08%    1.88%   [kernel.kallsyms]  [unknown] 
  0.47%    0.19%         C2, level 4  com.google.re2j.Machine::init, version 587 
  0.23%    0.13%         C2, level 4  com.google.re2j.Matcher::find, version 603 
  0.18%    0.08%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 667 
  0.07%    0.06%         C2, level 4  java.util.Collections::shuffle, version 609 
  0.04%    0.02%              [vdso]  [unknown] 
  0.03%    0.08%        libc-2.26.so  vfprintf 
  0.03%    0.03%      hsdis-amd64.so  [unknown] 
  0.02%    0.06%           libjvm.so  RelocIterator::initialize 
  0.02%                    libjvm.so  jio_print 
  0.02%                    libjvm.so  decode_env::handle_event 
  0.02%                  C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 606 
  0.02%    0.00%           libjvm.so  SpinPause 
  0.02%    0.00%  libpthread-2.26.so  __pthread_disable_asynccancel 
  0.01%    0.01%        libc-2.26.so  __strlen_avx2 
  0.01%    0.03%           libjvm.so  StringTable::unlink_or_oops_do 
  0.50%    0.35%  <...other 71 warm methods...>
....................................................................................................
100.00%   99.76%  <totals>

....[Distribution by Source]........................................................................
 93.18%   94.71%         C2, level 4
  4.01%    2.58%        runtime stub
  2.08%    1.88%   [kernel.kallsyms]
  0.41%    0.47%           libjvm.so
  0.13%    0.25%        libc-2.26.so
  0.06%    0.03%  libpthread-2.26.so
  0.04%    0.02%              [vdso]
  0.04%    0.01%         interpreter
  0.03%    0.03%      hsdis-amd64.so
  0.00%               perf-19946.map
  0.00%             Unknown, level 0
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:44

Benchmark                     Mode  Cnt     Score     Error  Units
Re2jFindRegex.testExp1       thrpt   20  8430.642 ± 140.926  ops/s
Re2jFindRegex.testExp1:·asm  thrpt            NaN              ---
