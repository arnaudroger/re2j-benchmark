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
# Warmup Iteration   1: 2131.059 ops/s
# Warmup Iteration   2: 3636.622 ops/s
# Warmup Iteration   3: 3728.153 ops/s
# Warmup Iteration   4: 3683.659 ops/s
# Warmup Iteration   5: 3695.363 ops/s
# Warmup Iteration   6: 3715.863 ops/s
# Warmup Iteration   7: 3725.770 ops/s
# Warmup Iteration   8: 3691.845 ops/s
# Warmup Iteration   9: 3704.506 ops/s
# Warmup Iteration  10: 3689.869 ops/s
# Warmup Iteration  11: 3694.088 ops/s
# Warmup Iteration  12: 3755.081 ops/s
# Warmup Iteration  13: 3753.148 ops/s
# Warmup Iteration  14: 3749.183 ops/s
# Warmup Iteration  15: 3697.657 ops/s
# Warmup Iteration  16: 3713.662 ops/s
# Warmup Iteration  17: 3691.500 ops/s
# Warmup Iteration  18: 3646.340 ops/s
# Warmup Iteration  19: 3717.990 ops/s
# Warmup Iteration  20: 3730.194 ops/s
Iteration   1: 3751.723 ops/s
Iteration   2: 3684.593 ops/s
Iteration   3: 3717.426 ops/s
Iteration   4: 3710.757 ops/s
Iteration   5: 3718.571 ops/s
Iteration   6: 3727.136 ops/s
Iteration   7: 3723.457 ops/s
Iteration   8: 3704.386 ops/s
Iteration   9: 3731.150 ops/s
Iteration  10: 3720.556 ops/s
Iteration  11: 3762.617 ops/s
Iteration  12: 3765.824 ops/s
Iteration  13: 3758.383 ops/s
Iteration  14: 3760.758 ops/s
Iteration  15: 3751.495 ops/s
Iteration  16: 3752.251 ops/s
Iteration  17: 3766.049 ops/s
Iteration  18: 3761.660 ops/s
Iteration  19: 3748.755 ops/s
Iteration  20: 3751.216 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  3738.438 ±(99.9%) 20.632 ops/s [Average]
  (min, avg, max) = (3684.593, 3738.438, 3766.049), stdev = 23.760
  CI (99.9%): [3717.806, 3759.070] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine:·asm":
PrintAssembly processed: 212799 total address lines.
Perf output processed (skipped 23.104 seconds):
 Column 1: cycles (20464 events)
 Column 2: instructions (20441 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 534 (339 bytes) 

                       # parm4:    rdi       = int
                       # parm5:    [sp+0x70]   = &apos;com/google/re2j/Machine$Thread&apos;  (sp of caller)
                       0x00007f907419de40: mov    0x8(%rsi),%r10d    ;   {no_reloc}
                       0x00007f907419de44: shl    $0x3,%r10
                       0x00007f907419de48: cmp    %r10,%rax
                       0x00007f907419de4b: jne    0x00007f9073fa7e20  ;   {runtime_call}
                       0x00007f907419de51: data16 xchg %ax,%ax
                       0x00007f907419de54: nopl   0x0(%rax,%rax,1)
                       0x00007f907419de5c: data16 data16 xchg %ax,%ax
                     [Verified Entry Point]
  1.07%    1.21%       0x00007f907419de60: mov    %eax,-0x14000(%rsp)
  0.54%    0.65%       0x00007f907419de67: push   %rbp
  1.04%    1.15%       0x00007f907419de68: sub    $0x60,%rsp         ;*synchronization entry
                                                                     ; - com.google.re2j.Machine::add@-1 (line 345)
  0.32%    0.35%       0x00007f907419de6c: mov    %edi,0x28(%rsp)
  0.28%    0.44%       0x00007f907419de70: mov    %r9,0x20(%rsp)
  1.00%    1.10%       0x00007f907419de75: mov    %r8d,0x1c(%rsp)
  0.21%    0.21%       0x00007f907419de7a: mov    %rsi,0x8(%rsp)
  0.26%    0.22%       0x00007f907419de7f: mov    %ecx,0x40(%rsp)
  0.33%    0.40%       0x00007f907419de83: test   %ecx,%ecx
                       0x00007f907419de85: je     0x00007f907419e449  ;*ifne
                                                                     ; - com.google.re2j.Machine::add@1 (line 345)
  0.96%    0.92%       0x00007f907419de8b: mov    %rdx,0x48(%rsp)
  0.15%    0.16%       0x00007f907419de90: mov    0x14(%rdx),%r8d    ;*getfield sparse
                                                                     ; - com.google.re2j.Machine$Queue::contains@1 (line 46)
                                                                     ; - com.google.re2j.Machine::add@9 (line 348)
                                                                     ; implicit exception: dispatches to 0x00007f907419e5c5
  0.16%    0.29%       0x00007f907419de94: mov    0xc(%r12,%r8,8),%ecx  ; implicit exception: dispatches to 0x00007f907419e5d9
  0.27%    0.42%       0x00007f907419de99: mov    0x40(%rsp),%r10d
  1.37%    0.93%       0x00007f907419de9e: cmp    %ecx,%r10d
                       0x00007f907419dea1: jae    0x00007f907419e33d  ;*iaload
                                                                     ; - com.google.re2j.Machine$Queue::contains@5 (line 46)
                                                                     ; - com.google.re2j.Machine::add@9 (line 348)
  0.27%    0.13%       0x00007f907419dea7: mov    0x10(%rdx),%edi    ;*getfield dense
                                                                     ; - com.google.re2j.Machine$Queue::contains@18 (line 50)
                                                                     ; - com.google.re2j.Machine::add@9 (line 348)
  0.16%    0.35%       0x00007f907419deaa: mov    0xc(%rdx),%r9d     ;*getfield size
                                                                     ; - com.google.re2j.Machine$Queue::contains@9 (line 47)
                                                                     ; - com.google.re2j.Machine::add@9 (line 348)
  0.28%    0.22%       0x00007f907419deae: lea    (%r12,%r8,8),%r11
  0.83%    0.93%       0x00007f907419deb2: mov    0x40(%rsp),%ebx
  0.47%    0.22%       0x00007f907419deb6: mov    0x10(%r11,%rbx,4),%ebp  ;*iaload
                                                                     ; - com.google.re2j.Machine$Queue::contains@5 (line 46)
                                                                     ; - com.google.re2j.Machine::add@9 (line 348)
  0.50%    0.47%       0x00007f907419debb: cmp    %r9d,%ebp
                  ╭    0x00007f907419debe: jl     0x00007f907419df8e  ;*iastore
                  │                                                  ; - com.google.re2j.Machine$Queue::add@18 (line 58)
                  │                                                  ; - com.google.re2j.Machine::add@20 (line 351)
  1.38%    1.16%  │ ↗  0x00007f907419dec4: mov    %r9d,%r10d
  0.39%    0.40%  │ │  0x00007f907419dec7: inc    %r10d
  0.11%    0.14%  │ │  0x00007f907419deca: mov    %r10d,0xc(%rdx)    ;*putfield size
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@8 (line 57)
                  │ │                                                ; - com.google.re2j.Machine::add@20 (line 351)
  0.17%    0.17%  │ │  0x00007f907419dece: mov    0x40(%rsp),%r10d
  1.04%    0.92%  │ │  0x00007f907419ded3: cmp    %ecx,%r10d
                  │ │  0x00007f907419ded6: jae    0x00007f907419e379
  0.42%    0.45%  │ │  0x00007f907419dedc: mov    %r9d,0x10(%r11,%r10,4)  ;*iastore
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@18 (line 58)
                  │ │                                                ; - com.google.re2j.Machine::add@20 (line 351)
  0.57%    0.35%  │ │  0x00007f907419dee1: mov    0xc(%r12,%rdi,8),%r10d  ; implicit exception: dispatches to 0x00007f907419e5ed
  0.12%    0.20%  │ │  0x00007f907419dee6: cmp    %r10d,%r9d
                  │ │  0x00007f907419dee9: jae    0x00007f907419e3c5  ;*aaload
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@24 (line 59)
                  │ │                                                ; - com.google.re2j.Machine::add@20 (line 351)
  0.86%    0.77%  │ │  0x00007f907419deef: lea    (%r12,%rdi,8),%r10  ;*getfield dense
                  │ │                                                ; - com.google.re2j.Machine$Queue::contains@18 (line 50)
                  │ │                                                ; - com.google.re2j.Machine::add@9 (line 348)
  0.36%    0.42%  │ │  0x00007f907419def3: mov    %r10,0x38(%rsp)
  0.31%    0.25%  │ │  0x00007f907419def8: lea    0x10(%r10,%r9,4),%rbp
  0.12%    0.15%  │ │  0x00007f907419defd: mov    0x0(%rbp),%r11d    ;*aaload
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@24 (line 59)
                  │ │                                                ; - com.google.re2j.Machine::add@20 (line 351)
  0.75%    0.73%  │ │  0x00007f907419df01: test   %r11d,%r11d
                  │╭│  0x00007f907419df04: je     0x00007f907419dfbd  ;*ifnonnull
                  │││                                                ; - com.google.re2j.Machine$Queue::add@27 (line 60)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 351)
  0.35%    0.34%  │││  0x00007f907419df0a: lea    (%r12,%r11,8),%rbx  ;*aload_3
                  │││                                                ; - com.google.re2j.Machine$Queue::add@45 (line 63)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 351)
  0.31%    0.35%  │││  0x00007f907419df0e: mov    0x40(%rsp),%r10d
  0.22%    0.23%  │││  0x00007f907419df13: mov    %r10d,0xc(%rbx)    ;*putfield pc
                  │││                                                ; - com.google.re2j.Machine$Queue::add@52 (line 64)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 351)
  1.77%    1.65%  │││  0x00007f907419df17: mov    0x8(%rsp),%r10
  0.33%    0.42%  │││  0x00007f907419df1c: mov    0x18(%r10),%r11d   ;*getfield prog
                  │││                                                ; - com.google.re2j.Machine::add@26 (line 352)
  0.55%    0.67%  │││  0x00007f907419df20: mov    %r12d,0x10(%rbx)   ;*putfield thread
                  │││                                                ; - com.google.re2j.Machine$Queue::add@47 (line 63)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 351)
  0.22%    0.22%  │││  0x00007f907419df24: mov    0x18(%r12,%r11,8),%ebp  ;*getfield inst
                  │││                                                ; - com.google.re2j.Prog::getInst@1 (line 30)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 352)
                  │││                                                ; implicit exception: dispatches to 0x00007f907419e601
  1.57%    1.49%  │││  0x00007f907419df29: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f907419e615
  1.29%    1.53%  │││  0x00007f907419df2e: mov    0x40(%rsp),%r8d
  0.24%    0.29%  │││  0x00007f907419df33: cmp    %r10d,%r8d
                  │││  0x00007f907419df36: jae    0x00007f907419e411
  0.73%    0.77%  │││  0x00007f907419df3c: lea    (%r12,%rbp,8),%r10
  0.70%    0.77%  │││  0x00007f907419df40: mov    0x10(%r10,%r8,4),%r11d  ;*aaload
                  │││                                                ; - com.google.re2j.Prog::getInst@5 (line 30)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 352)
  0.43%    0.34%  │││  0x00007f907419df45: mov    %r11d,0x2c(%rsp)
  0.35%    0.44%  │││  0x00007f907419df4a: mov    0xc(%r12,%r11,8),%r11d  ;*getfield op
                  │││                                                ; - com.google.re2j.Machine::add@37 (line 353)
                  │││                                                ; implicit exception: dispatches to 0x00007f907419e629
  4.49%    4.37%  │││  0x00007f907419df4f: mov    %r11d,%r10d
  0.14%    0.17%  │││  0x00007f907419df52: dec    %r10d
  1.37%    1.31%  │││  0x00007f907419df55: cmp    $0xc,%r10d
                  │││  0x00007f907419df59: jae    0x00007f907419e439  ;*tableswitch
                  │││                                                ; - com.google.re2j.Machine::add@40 (line 353)
  1.41%    1.51%  │││  0x00007f907419df5f: mov    0x2c(%rsp),%r10d
  0.04%    0.02%  │││  0x00007f907419df64: mov    0x10(%r12,%r10,8),%ecx  ;*getfield out
                  │││                                                ; - com.google.re2j.Machine::add@197 (line 373)
  2.59%    2.94%  │││  0x00007f907419df69: mov    0x14(%r12,%r10,8),%r9d  ;*getfield arg
                  │││                                                ; - com.google.re2j.Machine::add@160 (line 367)
  0.14%    0.12%  │││  0x00007f907419df6e: movslq %r11d,%r10
  0.09%    0.11%  │││  0x00007f907419df71: mov    0x2c(%rsp),%r11d
  0.01%    0.05%  │││  0x00007f907419df76: shl    $0x3,%r11          ;*aaload
                  │││                                                ; - com.google.re2j.Prog::getInst@5 (line 30)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 352)
  1.28%    1.41%  │││  0x00007f907419df7a: mov    %r11,0x30(%rsp)
  0.11%    0.11%  │││  0x00007f907419df7f: movabs $0x7f907419dde0,%r11  ;   {section_word}
  0.05%    0.10%  │││  0x00007f907419df89: jmpq   *-0x8(%r11,%r10,8)  ;*tableswitch
                  │││                                                ; - com.google.re2j.Machine::add@40 (line 353)
  0.14%    0.10%  ↘││  0x00007f907419df8e: mov    0xc(%r12,%rdi,8),%r10d  ; implicit exception: dispatches to 0x00007f907419e681
  0.09%    0.08%   ││  0x00007f907419df93: cmp    %r10d,%ebp
                   ││  0x00007f907419df96: jae    0x00007f907419e4dd
  0.02%    0.02%   ││  0x00007f907419df9c: lea    (%r12,%rdi,8),%r10
  0.02%    0.01%   ││  0x00007f907419dfa0: mov    0x10(%r10,%rbp,4),%ebp  ;*aaload
                   ││                                                ; - com.google.re2j.Machine$Queue::contains@22 (line 50)
                   ││                                                ; - com.google.re2j.Machine::add@9 (line 348)
  0.17%    0.18%   ││  0x00007f907419dfa5: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f907419e691
  0.54%    0.63%   ││  0x00007f907419dfaa: cmp    %ebx,%r10d
                   │╰  0x00007f907419dfad: jne    0x00007f907419dec4
           0.00%   │   0x00007f907419dfb3: mov    0x70(%rsp),%rax
                   │   0x00007f907419dfb8: jmpq   0x00007f907419e216
                   ↘   0x00007f907419dfbd: mov    0x60(%r15),%rbx
                       0x00007f907419dfc1: mov    %rbx,%r10
                       0x00007f907419dfc4: add    $0x18,%r10
                       0x00007f907419dfc8: cmp    0x70(%r15),%r10
                       0x00007f907419dfcc: jae    0x00007f907419e529
                       0x00007f907419dfd2: mov    %r10,0x60(%r15)
                       0x00007f907419dfd6: prefetchnta 0xc0(%r10)
                       0x00007f907419dfde: mov    $0xf8019b52,%r10d  ;   {metadata(&apos;com/google/re2j/Machine$Queue$Entry&apos;)}
                       0x00007f907419dfe4: shl    $0x3,%r10
....................................................................................................
 38.85%   39.62%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 540 (661 bytes) 

                                                                                     ; - com.google.re2j.Machine::step@246 (line 298)
                                       0x00007f90741a6d3f: mov    0x8(%rsp),%r8
                                       0x00007f90741a6d44: mov    %r12d,0xc(%r8)     ;*putfield size
                                                                                     ; - com.google.re2j.Machine::step@283 (line 304)
                                       0x00007f90741a6d48: mov    0x28(%rsp),%r8
                                       0x00007f90741a6d4d: movb   $0x1,0x10(%r8)     ;*putfield matched
                                                                                     ; - com.google.re2j.Machine::step@288 (line 306)
                                       0x00007f90741a6d52: mov    0x20(%rsp),%r9d
                  ╭                    0x00007f90741a6d57: jmp    0x00007f90741a6da6  ;*aload
                  │                                                                  ; - com.google.re2j.Machine::step@294 (line 311)
  0.50%    0.56%  │       ↗            0x00007f90741a6d59: cmp    $0xc,%r9d
                  │       │            0x00007f90741a6d5d: jne    0x00007f90741a718d  ;*if_icmpne
                  │       │                                                          ; - com.google.re2j.Inst::matchRune@29 (line 59)
                  │       │                                                          ; - com.google.re2j.Machine::step@298 (line 311)
  0.42%    0.42%  │       │            0x00007f90741a6d63: mov    0x18(%r12,%rbx,8),%r9d  ;*getfield f0
                  │       │                                                          ; - com.google.re2j.Inst::matchRune@33 (line 60)
                  │       │                                                          ; - com.google.re2j.Machine::step@298 (line 311)
  0.01%    0.02%  │       │            0x00007f90741a6d68: cmp    0x20(%rsp),%r9d
                  │╭      │            0x00007f90741a6d6d: je     0x00007f90741a6ec2  ;*if_icmpeq
                  ││      │                                                          ; - com.google.re2j.Inst::matchRune@37 (line 60)
                  ││      │                                                          ; - com.google.re2j.Machine::step@298 (line 311)
  0.58%    0.69%  ││      │            0x00007f90741a6d73: mov    0x1c(%r12,%rbx,8),%r9d  ;*getfield f1
                  ││      │                                                          ; - com.google.re2j.Inst::matchRune@41 (line 60)
                  ││      │                                                          ; - com.google.re2j.Machine::step@298 (line 311)
  0.07%    0.05%  ││      │            0x00007f90741a6d78: cmp    0x20(%rsp),%r9d
                  ││╭     │            0x00007f90741a6d7d: je     0x00007f90741a6ec2  ;*if_icmpeq
                  │││     │                                                          ; - com.google.re2j.Inst::matchRune@45 (line 60)
                  │││     │                                                          ; - com.google.re2j.Machine::step@298 (line 311)
  0.61%    0.65%  │││     │            0x00007f90741a6d83: mov    0x20(%r12,%rbx,8),%ebp  ;*getfield f2
                  │││     │                                                          ; - com.google.re2j.Inst::matchRune@49 (line 60)
                  │││     │                                                          ; - com.google.re2j.Machine::step@298 (line 311)
  0.01%    0.00%  │││     │            0x00007f90741a6d88: cmp    0x20(%rsp),%ebp
                  │││     │            0x00007f90741a6d8c: je     0x00007f90741a71d5  ;*if_icmpeq
                  │││     │                                                          ; - com.google.re2j.Inst::matchRune@53 (line 60)
                  │││     │                                                          ; - com.google.re2j.Machine::step@298 (line 311)
  0.60%    0.58%  │││     │            0x00007f90741a6d92: mov    0x24(%r12,%rbx,8),%ebp  ;*getfield f3
                  │││     │                                                          ; - com.google.re2j.Inst::matchRune@57 (line 60)
                  │││     │                                                          ; - com.google.re2j.Machine::step@298 (line 311)
  0.05%    0.06%  │││     │            0x00007f90741a6d97: cmp    0x20(%rsp),%ebp
                  │││     │            0x00007f90741a6d9b: je     0x00007f90741a7209  ;*if_icmpne
                  │││     │                                                          ; - com.google.re2j.Inst::matchRune@61 (line 60)
                  │││     │                                                          ; - com.google.re2j.Machine::step@298 (line 311)
  0.33%    0.62%  │││     │            0x00007f90741a6da1: mov    0x20(%rsp),%r9d    ;*goto
                  │││     │                                                          ; - com.google.re2j.Machine::step@291 (line 307)
  0.01%    0.01%  ↘││     │ ↗   ↗   ↗  0x00007f90741a6da6: mov    %r11,%rcx          ;*aload
                   ││     │ │   │   │                                                ; - com.google.re2j.Machine::step@389 (line 332)
  0.11%    0.17%   ││     │ │ ↗ │   │  0x00007f90741a6da9: mov    0x28(%rsp),%r11
  0.02%    0.08%   ││     │ │ │ │   │  0x00007f90741a6dae: mov    0x24(%r11),%ebx    ;*getfield pool
                   ││     │ │ │ │   │                                                ; - com.google.re2j.Machine::free@5 (line 160)
                   ││     │ │ │ │   │                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.66%    0.90%   ││     │ │ │ │   │  0x00007f90741a6db2: mov    0xc(%r12,%rbx,8),%r11d  ;*arraylength
                   ││     │ │ │ │   │                                                ; - com.google.re2j.Machine::free@8 (line 160)
                   ││     │ │ │ │   │                                                ; - com.google.re2j.Machine::step@397 (line 333)
                   ││     │ │ │ │   │                                                ; implicit exception: dispatches to 0x00007f90741a72c9
  0.03%    0.02%   ││     │ │ │ │   │  0x00007f90741a6db7: mov    0x28(%rsp),%r8
  0.11%    0.16%   ││     │ │ │ │   │  0x00007f90741a6dbc: mov    0xc(%r8),%ebp      ;*getfield poolSize
                   ││     │ │ │ │   │                                                ; - com.google.re2j.Machine::free@1 (line 160)
                   ││     │ │ │ │   │                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.05%    0.06%   ││     │ │ │ │   │  0x00007f90741a6dc0: cmp    %r11d,%ebp
                   ││     │ │ │ │   │  0x00007f90741a6dc3: jge    0x00007f90741a7145  ;*if_icmplt
                   ││     │ │ │ │   │                                                ; - com.google.re2j.Machine::free@9 (line 160)
                   ││     │ │ │ │   │                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.76%    0.91%   ││     │ │ │ │   │  0x00007f90741a6dc9: mov    %ebp,%r8d
  0.00%    0.02%   ││     │ │ │ │   │  0x00007f90741a6dcc: inc    %r8d
  0.12%    0.15%   ││     │ │ │ │   │  0x00007f90741a6dcf: mov    0x28(%rsp),%rdi
  0.03%    0.05%   ││     │ │ │ │   │  0x00007f90741a6dd4: mov    %r8d,0xc(%rdi)     ;*putfield poolSize
                   ││     │ │ │ │   │                                                ; - com.google.re2j.Machine::free@45 (line 163)
                   ││     │ │ │ │   │                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.62%    0.84%   ││     │ │ │ │   │  0x00007f90741a6dd8: cmp    %r11d,%ebp
                   ││     │ │ │ │   │  0x00007f90741a6ddb: jae    0x00007f90741a7049  ;*aastore
                   ││     │ │ │ │   │                                                ; - com.google.re2j.Machine::free@49 (line 163)
                   ││     │ │ │ │   │                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.02%    0.01%   ││     │ │ │ │   │  0x00007f90741a6de1: mov    %rcx,%r11
  0.11%    0.17%   ││     │ │ │ │   │  0x00007f90741a6de4: shr    $0x3,%r11
  0.06%    0.05%   ││     │ │ │ │   │  0x00007f90741a6de8: lea    (%r12,%rbx,8),%r10  ;*getfield pool
                   ││     │ │ │ │   │                                                ; - com.google.re2j.Machine::free@5 (line 160)
                   ││     │ │ │ │   │                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.58%    0.88%   ││     │ │ │ │   │  0x00007f90741a6dec: lea    0x10(%r10,%rbp,4),%r10
  0.00%            ││     │ │ │ │   │  0x00007f90741a6df1: mov    %r11d,(%r10)
  0.14%    0.11%   ││     │ │ │ │   │  0x00007f90741a6df4: shr    $0x9,%r10
  0.06%    0.05%   ││     │ │ │ │   │  0x00007f90741a6df8: movabs $0x7f906f990000,%r11
  0.67%    0.71%   ││     │ │ │ │   │  0x00007f90741a6e02: mov    %r12b,(%r11,%r10,1)  ;*aastore
                   ││     │ │ │ │   │                                                ; - com.google.re2j.Machine::free@49 (line 163)
                   ││     │ │ │ │   │                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.14%    0.11%   ││     │ │ │ │   │  0x00007f90741a6e06: xor    %r10d,%r10d        ; OopMap{[8]=Oop [24]=Oop [40]=Oop off=521}
                   ││     │ │ │ │   │                                                ;*goto
                   ││     │ │ │ │   │                                                ; - com.google.re2j.Machine::step@403 (line 270)
  0.34%    0.21%   ││   ↗ │ │ │ │  ↗│  0x00007f90741a6e09: test   %eax,0x15eb71f1(%rip)        # 0x00007f908a05e000
                   ││   │ │ │ │ │  ││                                                ;*goto
                   ││   │ │ │ │ │  ││                                                ; - com.google.re2j.Machine::step@403 (line 270)
                   ││   │ │ │ │ │  ││                                                ;   {poll}
  0.31%    0.43%   ││   │ │ │ │ │  ││  0x00007f90741a6e0f: mov    0x8(%rsp),%r10
  0.71%    0.83%   ││   │ │ │ │ │  ││  0x00007f90741a6e14: mov    0xc(%r10),%r10d
  0.28%    0.34%   ││   │ │ │ │ │  ││  0x00007f90741a6e18: cmp    %r10d,%eax
                   ││╭  │ │ │ │ │  ││  0x00007f90741a6e1b: jge    0x00007f90741a6f38
  0.21%    0.17%   │││  │ │ │ │ │  ││  0x00007f90741a6e21: mov    %r9d,0x20(%rsp)
  0.32%    0.33%   │││  │ │ │ │ │  ││  0x00007f90741a6e26: mov    %eax,%r10d         ;*aload_1
                   │││  │ │ │ │ │  ││                                                ; - com.google.re2j.Machine::step@21 (line 271)
  0.58%    0.50%   │││  │ │ │ │ │  ││  0x00007f90741a6e29: mov    0x8(%rsp),%r11
  0.31%    0.30%   │││  │ │ │ │ │  ││  0x00007f90741a6e2e: mov    0x10(%r11),%r8d    ;*getfield dense
                   │││  │ │ │ │ │  ││                                                ; - com.google.re2j.Machine::step@22 (line 271)
  0.58%    0.47%   │││  │ │ │ │ │  ││  0x00007f90741a6e32: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x00007f90741a72a5
  0.68%    0.71%   │││  │ │ │ │ │  ││  0x00007f90741a6e37: cmp    %r11d,%r10d
                   │││╭ │ │ │ │ │  ││  0x00007f90741a6e3a: jae    0x00007f90741a700c
  0.69%    0.48%   ││││ │ │ │ │ │  ││  0x00007f90741a6e40: lea    (%r12,%r8,8),%r11
  0.32%    0.26%   ││││ │ │ │ │ │  ││  0x00007f90741a6e44: mov    0x10(%r11,%r10,4),%r9d  ;*aaload
                   ││││ │ │ │ │ │  ││                                                ; - com.google.re2j.Machine::step@27 (line 271)
  0.34%    0.51%   ││││ │ │ │ │ │  ││  0x00007f90741a6e49: mov    0x10(%r12,%r9,8),%r8d  ;*getfield thread
                   ││││ │ │ │ │ │  ││                                                ; - com.google.re2j.Machine::step@40 (line 275)
                   ││││ │ │ │ │ │  ││                                                ; implicit exception: dispatches to 0x00007f90741a72d9
  1.02%    1.16%   ││││ │ │ │ │ │  ││  0x00007f90741a6e4e: mov    %r10d,%eax
  0.59%    0.38%   ││││ │ │ │ │ │  ││  0x00007f90741a6e51: inc    %eax               ;*iadd
                   ││││ │ │ │ │ │  ││                                                ; - com.google.re2j.Machine::step@237 (line 298)
  0.24%    0.21%   ││││ │ │ │ │ │  ││  0x00007f90741a6e53: test   %r8d,%r8d
                   ││││╭│ │ │ │ │  ││  0x00007f90741a6e56: jne    0x00007f90741a6e64  ;*ifnonnull
                   ││││││ │ │ │ │  ││                                                ; - com.google.re2j.Machine::step@47 (line 276)
  0.29%    0.34%   ││││││ │ │ │ │  ││  0x00007f90741a6e58: mov    0x24(%rsp),%r10d
  0.06%    0.17%   ││││││ │ │ │ │  ││  0x00007f90741a6e5d: mov    0x20(%rsp),%r9d
  0.13%    0.08%   │││││╰ │ │ │ │  ││  0x00007f90741a6e62: jmp    0x00007f90741a6e09
  0.13%    0.21%   ││││↘  │ │ │ │  ││  0x00007f90741a6e64: mov    0x24(%rsp),%r9d
  0.21%    0.17%   ││││   │ │ │ │  ││  0x00007f90741a6e69: test   %r9d,%r9d
                   ││││   │ │ │ │  ││  0x00007f90741a6e6c: jne    0x00007f90741a70fd  ;*ifeq
                   ││││   │ │ │ │  ││                                                ; - com.google.re2j.Machine::step@55 (line 279)
  0.53%    0.37%   ││││   │ │ │ │  ││  0x00007f90741a6e72: mov    0x10(%r12,%r8,8),%ebx  ;*getfield inst
                   ││││   │ │ │ │  ││                                                ; - com.google.re2j.Machine::step@101 (line 283)
  0.63%    0.52%   ││││   │ │ │ │  ││  0x00007f90741a6e77: mov    0xc(%r12,%rbx,8),%r9d  ;*getfield op
                   ││││   │ │ │ │  ││                                                ; - com.google.re2j.Machine::step@111 (line 285)
                   ││││   │ │ │ │  ││                                                ; implicit exception: dispatches to 0x00007f90741a72b9
  2.38%    2.62%   ││││   │ │ │ │  ││  0x00007f90741a6e7c: mov    0xc(%r12,%r8,8),%r14d  ;*getfield cap
                   ││││   │ │ │ │  ││                                                ; - com.google.re2j.Machine::step@172 (line 292)
  0.10%    0.11%   ││││   │ │ │ │  ││  0x00007f90741a6e81: lea    (%r12,%r8,8),%r11  ;*getfield thread
                   ││││   │ │ │ │  ││                                                ; - com.google.re2j.Machine::step@40 (line 275)
  0.19%    0.10%   ││││   │ │ │ │  ││  0x00007f90741a6e85: cmp    $0x9,%r9d
                   ││││  ╭│ │ │ │  ││  0x00007f90741a6e89: je     0x00007f90741a6f11
  0.64%    0.76%   ││││  ││ │ │ │  ││  0x00007f90741a6e8f: cmp    $0x9,%r9d
                   ││││  ││ │ │ │  ││  0x00007f90741a6e93: jle    0x00007f90741a6c6d
  0.30%    0.46%   ││││  ││ │ │ │  ││  0x00007f90741a6e99: cmp    $0xc,%r9d
                   ││││  │╰ │ │ │  ││  0x00007f90741a6e9d: je     0x00007f90741a6d59
  0.11%    0.07%   ││││  │  │ │ │  ││  0x00007f90741a6ea3: cmp    $0xc,%r9d
                   ││││  │  │ │ │  ││  0x00007f90741a6ea7: jg     0x00007f90741a717d
  0.06%    0.01%   ││││  │  │ │ │  ││  0x00007f90741a6ead: cmp    $0xb,%r9d
                   ││││  │ ╭│ │ │  ││  0x00007f90741a6eb1: jne    0x00007f90741a6ec2  ;*tableswitch
                   ││││  │ ││ │ │  ││                                                ; - com.google.re2j.Machine::step@114 (line 285)
                   ││││  │ ││ │ │  ││  0x00007f90741a6eb3: mov    0x20(%rsp),%r9d
                   ││││  │ ││ │ │  ││  0x00007f90741a6eb8: cmp    $0xa,%r9d
                   ││││  │ │╰ │ │  ││  0x00007f90741a6ebc: je     0x00007f90741a6da6  ;*ifeq
                   ││││  │ │  │ │  ││                                                ; - com.google.re2j.Machine::step@363 (line 329)
  0.32%    0.33%   ↘↘││  │ ↘  │↗│  ││  0x00007f90741a6ec2: mov    %eax,0x74(%rsp)
  0.23%    0.13%     ││  │    │││  ││  0x00007f90741a6ec6: mov    %r10d,%ebp
  0.03%    0.03%     ││  │    │││  ││  0x00007f90741a6ec9: mov    0x10(%r12,%rbx,8),%ecx  ;*getfield out
                     ││  │    │││  ││                                                ; - com.google.re2j.Machine::step@370 (line 330)
  0.01%    0.01%     ││  │    │││  ││  0x00007f90741a6ece: mov    %r14,%r9
  0.05%    0.04%     ││  │    │││  ││  0x00007f90741a6ed1: shl    $0x3,%r9           ;*getfield cap
                     ││  │    │││  ││                                                ; - com.google.re2j.Machine::step@172 (line 292)
  0.01%              ││  │    │││  ││  0x00007f90741a6ed5: mov    0x28(%rsp),%rsi
  0.03%    0.02%     ││  │    │││  ││  0x00007f90741a6eda: mov    0x18(%rsp),%rdx
  0.02%    0.01%     ││  │    │││  ││  0x00007f90741a6edf: mov    0x14(%rsp),%r8d
  0.05%    0.04%     ││  │    │││  ││  0x00007f90741a6ee4: mov    0x70(%rsp),%edi
  0.02%              ││  │    │││  ││  0x00007f90741a6ee8: mov    %r11,(%rsp)
  0.09%    0.02%     ││  │    │││  ││  0x00007f90741a6eec: data16 xchg %ax,%ax
           0.01%     ││  │    │││  ││  0x00007f90741a6eef: callq  0x00007f9073fa8020  ; OopMap{[8]=Oop [24]=Oop [40]=Oop off=756}
                     ││  │    │││  ││                                                ;*invokespecial add
                     ││  │    │││  ││                                                ; - com.google.re2j.Machine::step@384 (line 330)
                     ││  │    │││  ││                                                ;   {optimized virtual_call}
  0.03%              ││  │    │││  ││  0x00007f90741a6ef4: mov    %rax,%rcx
                     ││  │    │││  ││  0x00007f90741a6ef7: test   %rax,%rax
                     ││  │   ╭│││  ││  0x00007f90741a6efa: je     0x00007f90741a6fe2  ;*ifnull
                     ││  │   ││││  ││                                                ; - com.google.re2j.Machine::step@391 (line 332)
  0.00%              ││  │   ││││  ││  0x00007f90741a6f00: mov    0x20(%rsp),%r9d
                     ││  │   ││││  ││  0x00007f90741a6f05: mov    %ebp,%r10d
                     ││  │   ││││  ││  0x00007f90741a6f08: mov    0x74(%rsp),%eax
                     ││  │   │╰││  ││  0x00007f90741a6f0c: jmpq   0x00007f90741a6da9
  0.16%    0.10%     ││  ↘   │ ││  ││  0x00007f90741a6f11: mov    0x28(%r12,%rbx,8),%ebp  ;*getfield runes
                     ││      │ ││  ││                                                ; - com.google.re2j.Machine::step@310 (line 315)
  0.00%    0.03%     ││      │ ││  ││  0x00007f90741a6f16: mov    0xc(%r12,%rbp,8),%r9d  ; implicit exception: dispatches to 0x00007f90741a7355
  0.69%    0.84%     ││      │ ││  ││  0x00007f90741a6f1b: test   %r9d,%r9d
                     ││      │ ││  ││  0x00007f90741a6f1e: jbe    0x00007f90741a70c9  ;*iaload
                     ││      │ ││  ││                                                ; - com.google.re2j.Machine::step@314 (line 315)
  0.21%    0.25%     ││      │ ││  ││  0x00007f90741a6f24: mov    0x10(%r12,%rbp,8),%r8d
  0.01%              ││      │ ││  ││  0x00007f90741a6f29: mov    0x20(%rsp),%r9d
                     ││      │ ││  ││  0x00007f90741a6f2e: cmp    %r8d,%r9d
                     ││      │ ╰│  ││  0x00007f90741a6f31: je     0x00007f90741a6ec2  ;*if_icmpne
                     ││      │  │  ││                                                ; - com.google.re2j.Machine::step@315 (line 315)
  0.19%    0.24%     ││      │  ╰  ││  0x00007f90741a6f33: jmpq   0x00007f90741a6da6  ;*if_icmpge
                     ││      │     ││                                                ; - com.google.re2j.Machine::step@18 (line 270)
  0.02%    0.03%     ↘│      │     ││  0x00007f90741a6f38: mov    0x8(%rsp),%r10
                      │      │     ││  0x00007f90741a6f3d: mov    %r12d,0xc(%r10)    ;*getfield size
                      │      │     ││                                                ; - com.google.re2j.Machine::step@15 (line 270)
  0.14%    0.17%      │      │     ││  0x00007f90741a6f41: add    $0x60,%rsp
  0.03%    0.03%      │      │     ││  0x00007f90741a6f45: pop    %rbp
  0.02%    0.02%      │      │     ││  0x00007f90741a6f46: test   %eax,0x15eb70b4(%rip)        # 0x00007f908a05e000
                      │      │     ││                                                ;   {poll_return}
                      │      │     ││  0x00007f90741a6f4c: retq   
                      │      │     ││  0x00007f90741a6f4d: data16 xchg %ax,%ax
           0.00%      │      │   ↗ ││  0x00007f90741a6f50: mov    %ecx,0x34(%rsp)
                      │      │   │ ││  0x00007f90741a6f54: mov    %r9,0x40(%rsp)
                      │      │   │ ││  0x00007f90741a6f59: mov    %r11,0x38(%rsp)
                      │      │   │ ││  0x00007f90741a6f5e: mov    %ebx,0x30(%rsp)
                      │      │   │ ││  0x00007f90741a6f62: mov    %eax,0x7c(%rsp)
           0.01%      │      │   │ ││  0x00007f90741a6f66: mov    %r8d,0x74(%rsp)
                      │      │   │ ││  0x00007f90741a6f6b: mov    %r10d,%ebp
                      │      │   │ ││  0x00007f90741a6f6e: mov    %rdi,%rdx
                      │      │   │ ││  0x00007f90741a6f71: shl    $0x3,%rdx          ;*getfield thread
                      │      │   │ ││                                                ; - com.google.re2j.Machine::step@260 (line 300)
           0.00%      │      │   │ ││  0x00007f90741a6f75: mov    0x28(%rsp),%rsi
                      │      │   │ ││  0x00007f90741a6f7a: nop
                      │      │   │ ││  0x00007f90741a6f7b: callq  0x00007f9073fa8020  ; OopMap{[116]=NarrowOop [8]=Oop [24]=Oop [40]=Oop [48]=NarrowOop [56]=Oop [64]=Oop off=896}
                      │      │   │ ││                                                ;*invokespecial free
                      │      │   │ ││                                                ; - com.google.re2j.Machine::step@272 (line 301)
                      │      │   │ ││                                                ;   {optimized virtual_call}
  0.00%               │      │   │ ││  0x00007f90741a6f80: mov    %ebp,%r10d
                      │      │   │ ││  0x00007f90741a6f83: mov    0x74(%rsp),%r8d
                      │      │   │ ││  0x00007f90741a6f88: mov    0x7c(%rsp),%eax
           0.00%      │      │   │ ││  0x00007f90741a6f8c: mov    0x30(%rsp),%ebx
                      │      │   │ ││  0x00007f90741a6f90: mov    0x38(%rsp),%r11
                      │      │   │ ││  0x00007f90741a6f95: mov    0x40(%rsp),%r9
                      │      │   │ ││  0x00007f90741a6f9a: mov    0x34(%rsp),%ecx
                      │      │   │↗││  0x00007f90741a6f9e: mov    0x8(%rsp),%rdi
                      │      │   ││││  0x00007f90741a6fa3: mov    0xc(%rdi),%edx
           0.00%      │      │   ││││  0x00007f90741a6fa6: inc    %ecx               ; OopMap{r11=Oop r8=NarrowOop r9=Oop rbx=NarrowOop [8]=Oop [24]=Oop [40]=Oop off=936}
                      │      │   ││││                                                ;*goto
                      │      │   ││││                                                ; - com.google.re2j.Machine::step@278 (line 298)
                      │      │   ││││  0x00007f90741a6fa8: test   %eax,0x15eb7052(%rip)        # 0x00007f908a05e000
                      │      │   ││││                                                ;*goto
                      │      │   ││││                                                ; - com.google.re2j.Machine::step@278 (line 298)
                      │      │   ││││                                                ;   {poll}
                      │      │   ││││  0x00007f90741a6fae: cmp    %edx,%ecx
                      │      │   ││││  0x00007f90741a6fb0: jge    0x00007f90741a6d3f  ;*aload_1
                      │      │   ││││                                                ; - com.google.re2j.Machine::step@249 (line 299)
                      │      │   ││││  0x00007f90741a6fb6: mov    0x8(%rsp),%rdi
                      │      │   ││││  0x00007f90741a6fbb: mov    0x10(%rdi),%ebp    ;*getfield dense
                      │      │   ││││                                                ; - com.google.re2j.Machine::step@250 (line 299)
                      │      │   ││││  0x00007f90741a6fbe: mov    0xc(%r12,%rbp,8),%esi  ; implicit exception: dispatches to 0x00007f90741a7331
  0.01%               │      │   ││││  0x00007f90741a6fc3: cmp    %esi,%ecx
                      │      │   ││││  0x00007f90741a6fc5: jae    0x00007f90741a7089
                      │      │   ││││  0x00007f90741a6fcb: lea    (%r12,%rbp,8),%rdi
  0.00%               │      │   ││││  0x00007f90741a6fcf: mov    0x10(%rdi,%rcx,4),%edx  ;*aaload
                      │      │   ││││                                                ; - com.google.re2j.Machine::step@255 (line 299)
                      │      │   ││││  0x00007f90741a6fd3: mov    0x10(%r12,%rdx,8),%edi  ;*getfield thread
                      │      │   ││││                                                ; - com.google.re2j.Machine::step@260 (line 300)
                      │      │   ││││                                                ; implicit exception: dispatches to 0x00007f90741a7345
  0.00%               │      │   ││││  0x00007f90741a6fd8: test   %edi,%edi
                      │      │   ╰│││  0x00007f90741a6fda: jne    0x00007f90741a6f50  ;*ifnull
                      │      │    │││                                                ; - com.google.re2j.Machine::step@263 (line 300)
                      │      │    ╰││  0x00007f90741a6fe0: jmp    0x00007f90741a6f9e
  0.08%    0.16%      │      ↘     ││  0x00007f90741a6fe2: xor    %r10d,%r10d
                      │            ││  0x00007f90741a6fe5: mov    0x20(%rsp),%r9d
                      │            ││  0x00007f90741a6fea: mov    0x74(%rsp),%eax
  0.18%    0.10%      │            ╰│  0x00007f90741a6fee: jmpq   0x00007f90741a6e09
                      │             │  0x00007f90741a6ff3: mov    0x80(%rsp),%ecx
                      │             │  0x00007f90741a6ffa: test   %ecx,%ecx
                      │             │  0x00007f90741a6ffc: jne    0x00007f90741a6c9a  ;*ifne
                      │             │                                                ; - com.google.re2j.Machine::step@164 (line 287)
                      │             │  0x00007f90741a7002: mov    0x20(%rsp),%r9d
                      │             ╰  0x00007f90741a7007: jmpq   0x00007f90741a6da6
                      ↘                0x00007f90741a700c: mov    $0xffffffe4,%esi
                                       0x00007f90741a7011: mov    0x8(%rsp),%rbp
                                       0x00007f90741a7016: mov    %r8d,0x7c(%rsp)
                                       0x00007f90741a701b: mov    %r10d,0x8(%rsp)
....................................................................................................
 23.44%   25.05%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 534 (366 bytes) 

                          0x00007f907419e09a: mov    %r10,(%rsp)
                          0x00007f907419e09e: nop
                          0x00007f907419e09f: callq  0x00007f9073fa8020  ; OopMap{off=612}
                                                                        ;*invokespecial add
                                                                        ; - com.google.re2j.Machine::add@207 (line 373)
                                                                        ;   {optimized virtual_call}
                  ╭       0x00007f907419e0a4: jmpq   0x00007f907419e216
                  │       0x00007f907419e0a9: mov    0x70(%rsp),%rax
                  │╭      0x00007f907419e0ae: jmpq   0x00007f907419e216  ;*aload_0
                  ││                                                    ; - com.google.re2j.Machine::add@117 (line 362)
  1.20%    1.07%  ││      0x00007f907419e0b3: mov    0x30(%rsp),%rbx    ;*tableswitch
                  ││                                                    ; - com.google.re2j.Machine::add@40 (line 353)
  0.04%           ││      0x00007f907419e0b8: mov    0x8(%rsp),%rsi
           0.01%  ││      0x00007f907419e0bd: mov    0x48(%rsp),%rdx
                  ││      0x00007f907419e0c2: mov    0x1c(%rsp),%r8d
  0.64%    0.50%  ││      0x00007f907419e0c7: mov    0x20(%rsp),%r9
  0.02%           ││      0x00007f907419e0cc: mov    0x28(%rsp),%edi
                  ││      0x00007f907419e0d0: mov    0x70(%rsp),%r10
                  ││      0x00007f907419e0d5: mov    %r10,(%rsp)
  0.59%    0.60%  ││      0x00007f907419e0d9: mov    %rsi,%rbp
           0.01%  ││      0x00007f907419e0dc: mov    %rbx,0x38(%rsp)
                  ││      0x00007f907419e0e1: xchg   %ax,%ax
                  ││      0x00007f907419e0e3: callq  0x00007f9073fa8020  ; OopMap{rbp=Oop [32]=Oop [44]=NarrowOop [56]=Oop [72]=Oop off=680}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@131 (line 362)
                  ││                                                    ;   {optimized virtual_call}
  0.12%    0.10%  ││      0x00007f907419e0e8: mov    0x2c(%rsp),%r11d
  0.20%    0.25%  ││      0x00007f907419e0ed: mov    0x14(%r12,%r11,8),%ecx  ;*getfield arg
                  ││                                                    ; - com.google.re2j.Machine::add@140 (line 363)
  0.35%    0.45%  ││      0x00007f907419e0f2: mov    %rbp,%rsi
  0.13%    0.09%  ││      0x00007f907419e0f5: mov    0x48(%rsp),%rdx
           0.01%  ││      0x00007f907419e0fa: mov    0x1c(%rsp),%r8d
  0.20%    0.32%  ││      0x00007f907419e0ff: mov    0x20(%rsp),%r9
  0.27%    0.40%  ││      0x00007f907419e104: mov    0x28(%rsp),%edi
  0.08%    0.07%  ││      0x00007f907419e108: mov    %rax,(%rsp)
  0.01%           ││      0x00007f907419e10c: data16 xchg %ax,%ax
  0.22%    0.27%  ││      0x00007f907419e10f: callq  0x00007f9073fa8020  ; OopMap{off=724}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@150 (line 363)
                  ││                                                    ;   {optimized virtual_call}
  0.01%    0.01%  ││╭     0x00007f907419e114: jmpq   0x00007f907419e216  ;*aload
                  │││                                                   ; - com.google.re2j.Machine::add@297 (line 393)
  2.99%    3.08%  │││     0x00007f907419e119: mov    0x70(%rsp),%rbp
  0.02%    0.07%  │││     0x00007f907419e11e: test   %rbp,%rbp
                  │││╭    0x00007f907419e121: je     0x00007f907419e143  ;*ifnonnull
                  ││││                                                  ; - com.google.re2j.Machine::add@299 (line 393)
                  ││││    0x00007f907419e123: mov    0x2c(%rsp),%r11d
                  ││││    0x00007f907419e128: mov    %r11d,0x10(%rbp)
  0.10%    0.07%  ││││    0x00007f907419e12c: mov    %rbp,%r10
                  ││││    0x00007f907419e12f: shr    $0x9,%r10
                  ││││    0x00007f907419e133: movabs $0x7f906f990000,%r11
                  ││││    0x00007f907419e13d: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                  ││││                                                  ; - com.google.re2j.Machine::add@317 (line 396)
  0.10%    0.10%  ││││╭   0x00007f907419e141: jmp    0x00007f907419e1a7
  0.76%    0.72%  │││↘│   0x00007f907419e143: mov    0x8(%rsp),%r10
                  │││ │   0x00007f907419e148: mov    0xc(%r10),%r11d    ;*getfield poolSize
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@1 (line 148)
                  │││ │                                                 ; - com.google.re2j.Machine::add@305 (line 394)
                  │││ │   0x00007f907419e14c: test   %r11d,%r11d
                  │││ │   0x00007f907419e14f: jle    0x00007f907419e246  ;*ifle
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@4 (line 148)
                  │││ │                                                 ; - com.google.re2j.Machine::add@305 (line 394)
  0.01%    0.04%  │││ │   0x00007f907419e155: mov    0x24(%r10),%r8d    ;*getfield pool
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@18 (line 150)
                  │││ │                                                 ; - com.google.re2j.Machine::add@305 (line 394)
  0.72%    0.77%  │││ │   0x00007f907419e159: mov    %r11d,%ebp
                  │││ │   0x00007f907419e15c: dec    %ebp               ;*isub
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@13 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@305 (line 394)
                  │││ │   0x00007f907419e15e: mov    %ebp,0xc(%r10)     ;*putfield poolSize
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@14 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@305 (line 394)
  0.04%    0.02%  │││ │   0x00007f907419e162: mov    0xc(%r12,%r8,8),%r10d  ; implicit exception: dispatches to 0x00007f907419e661
  0.81%    0.72%  │││ │   0x00007f907419e167: cmp    %r10d,%ebp
                  │││ │   0x00007f907419e16a: jae    0x00007f907419e471
  0.00%           │││ │   0x00007f907419e170: lea    (%r12,%r8,8),%r10
                  │││ │   0x00007f907419e174: mov    0xc(%r10,%r11,4),%r11d  ;*aaload
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@25 (line 150)
                  │││ │                                                 ; - com.google.re2j.Machine::add@305 (line 394)
  0.05%    0.04%  │││ │   0x00007f907419e179: test   %r11d,%r11d
                  │││ │   0x00007f907419e17c: je     0x00007f907419e48d  ;*putfield inst
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@45 (line 154)
                  │││ │                                                 ; - com.google.re2j.Machine::add@305 (line 394)
  0.79%    0.69%  │││ │   0x00007f907419e182: mov    %r11,%rbp
                  │││ │   0x00007f907419e185: shl    $0x3,%rbp          ;*aload_2
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@43 (line 154)
                  │││ │                                                 ; - com.google.re2j.Machine::add@305 (line 394)
                  │││ │   0x00007f907419e189: mov    0x2c(%rsp),%r10d
  0.04%    0.04%  │││ │   0x00007f907419e18e: mov    %r10d,0x10(%rbp)
  0.77%    0.83%  │││ │   0x00007f907419e192: mov    %rbp,%r10
                  │││ │   0x00007f907419e195: shr    $0x9,%r10
                  │││ │   0x00007f907419e199: movabs $0x7f906f990000,%r11
  0.03%    0.06%  │││ │   0x00007f907419e1a3: mov    %r12b,(%r11,%r10,1)  ;*aload
                  │││ │                                                 ; - com.google.re2j.Machine::add@320 (line 398)
  0.76%    0.63%  │││ ↘   0x00007f907419e1a7: mov    0x20(%rsp),%rdi
                  │││     0x00007f907419e1ac: mov    0xc(%rdi),%r10d    ;*arraylength
                  │││                                                   ; - com.google.re2j.Machine::add@322 (line 398)
                  │││                                                   ; implicit exception: dispatches to 0x00007f907419e639
                  │││     0x00007f907419e1b0: test   %r10d,%r10d
                  │││     0x00007f907419e1b3: jle    0x00007f907419e4c2  ;*ifle
                  │││                                                   ; - com.google.re2j.Machine::add@323 (line 398)
  0.17%    0.20%  │││     0x00007f907419e1b9: mov    0xc(%rbp),%r11d    ;*getfield cap
                  │││                                                   ; - com.google.re2j.Machine::add@328 (line 398)
  0.89%    0.54%  │││     0x00007f907419e1bd: mov    %r11,%r8
                  │││     0x00007f907419e1c0: shl    $0x3,%r8
                  │││     0x00007f907419e1c4: cmp    %rdi,%r8
                  │││  ╭  0x00007f907419e1c7: je     0x00007f907419e1f4  ;*if_acmpeq
                  │││  │                                                ; - com.google.re2j.Machine::add@333 (line 398)
  0.03%    0.06%  │││  │  0x00007f907419e1c9: mov    0xc(%r12,%r11,8),%r9d  ; implicit exception: dispatches to 0x00007f907419e649
  0.75%    0.41%  │││  │  0x00007f907419e1ce: lea    (%r12,%r11,8),%rcx  ;*getfield cap
                  │││  │                                                ; - com.google.re2j.Machine::add@328 (line 398)
                  │││  │  0x00007f907419e1d2: cmp    %r10d,%r9d
                  │││  │  0x00007f907419e1d5: jb     0x00007f907419e4a1
  0.01%    0.00%  │││  │  0x00007f907419e1db: lea    0x10(%r12,%r11,8),%rsi
  0.05%    0.04%  │││  │  0x00007f907419e1e0: add    $0x10,%rdi
  0.73%    0.32%  │││  │  0x00007f907419e1e4: movslq %r10d,%rdx
                  │││  │  0x00007f907419e1e7: movabs $0x7f9073fb4640,%r10
  0.01%           │││  │  0x00007f907419e1f1: callq  *%r10              ;*aload
                  │││  │                                                ; - com.google.re2j.Machine::add@351 (line 401)
  0.16%    0.14%  │││  ↘  0x00007f907419e1f4: mov    %rbx,%r10
  0.02%    0.02%  │││     0x00007f907419e1f7: mov    %rbp,%r11
  0.00%    0.00%  │││     0x00007f907419e1fa: shr    $0x3,%r11
  0.85%    0.10%  │││     0x00007f907419e1fe: mov    %r11d,0x10(%rbx)
  0.15%    0.10%  │││     0x00007f907419e202: shr    $0x9,%r10
  0.01%    0.01%  │││     0x00007f907419e206: movabs $0x7f906f990000,%r11
  0.01%    0.00%  │││     0x00007f907419e210: mov    %r12b,(%r11,%r10,1)  ;*putfield thread
                  │││                                                   ; - com.google.re2j.Machine::add@355 (line 401)
  0.80%    0.46%  │││     0x00007f907419e214: xor    %eax,%eax          ;*synchronization entry
                  │││                                                   ; - com.google.re2j.Machine::add@-1 (line 345)
  0.76%    1.02%  ↘↘↘     0x00007f907419e216: add    $0x60,%rsp
  0.02%    0.02%          0x00007f907419e21a: pop    %rbp
  0.81%    1.53%          0x00007f907419e21b: test   %eax,0x15ebfddf(%rip)        # 0x00007f908a05e000
                                                                        ;   {poll_return}
  0.78%    1.14%          0x00007f907419e221: retq                      ;*tableswitch
                                                                        ; - com.google.re2j.Machine::add@40 (line 353)
                          0x00007f907419e222: mov    0x8(%rsp),%rsi
                          0x00007f907419e227: mov    0x48(%rsp),%rdx
                          0x00007f907419e22c: mov    0x1c(%rsp),%r8d
                          0x00007f907419e231: mov    0x20(%rsp),%r9
                          0x00007f907419e236: mov    0x70(%rsp),%r10
                          0x00007f907419e23b: mov    %r10,(%rsp)
                          0x00007f907419e23f: callq  0x00007f9073fa8020  ; OopMap{off=1028}
                                                                        ;*invokespecial add
....................................................................................................
 19.10%   18.21%  <total for region 3>

....[Hottest Regions]...............................................................................
 38.85%   39.62%         C2, level 4  com.google.re2j.Machine::add, version 534 (339 bytes) 
 23.44%   25.05%         C2, level 4  com.google.re2j.Machine::step, version 540 (661 bytes) 
 19.10%   18.21%         C2, level 4  com.google.re2j.Machine::add, version 534 (366 bytes) 
  7.46%    8.82%         C2, level 4  com.google.re2j.Machine::match, version 581 (824 bytes) 
  5.83%    3.67%        runtime stub  StubRoutines::jint_disjoint_arraycopy (128 bytes) 
  1.32%    1.15%         C2, level 4  com.google.re2j.Machine::step, version 540 (72 bytes) 
  0.43%    0.43%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.43%    0.43%         C2, level 4  com.google.re2j.Machine::add, version 534 (49 bytes) 
  0.22%    0.30%         C2, level 4  com.google.re2j.Machine::match, version 581 (161 bytes) 
  0.18%    0.04%         C2, level 4  com.google.re2j.Machine::init, version 583 (165 bytes) 
  0.15%    0.05%         C2, level 4  com.google.re2j.Machine::init, version 583 (119 bytes) 
  0.08%    0.01%   [kernel.kallsyms]  [unknown] (30 bytes) 
  0.07%    0.02%   [kernel.kallsyms]  [unknown] (28 bytes) 
  0.06%    0.02%   [kernel.kallsyms]  [unknown] (16 bytes) 
  0.05%    0.01%   [kernel.kallsyms]  [unknown] (1 bytes) 
  0.04%    0.02%         C2, level 4  com.google.re2j.Machine::init, version 583 (18 bytes) 
  0.04%    0.03%         C2, level 4  com.google.re2j.Matcher::find, version 597 (5 bytes) 
  0.04%    0.02%         C2, level 4  com.google.re2j.Matcher::find, version 597 (0 bytes) 
  0.04%    0.04%         C2, level 4  com.google.re2j.Matcher::find, version 597 (0 bytes) 
  0.03%    0.02%         C2, level 4  com.google.re2j.Machine::init, version 583 (16 bytes) 
  2.12%    2.03%  <...other 473 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 58.38%   58.26%         C2, level 4  com.google.re2j.Machine::add, version 534 
 24.76%   26.20%         C2, level 4  com.google.re2j.Machine::step, version 540 
  7.85%    9.24%         C2, level 4  com.google.re2j.Machine::match, version 581 
  5.83%    3.67%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
  1.25%    1.05%   [kernel.kallsyms]  [unknown] 
  0.43%    0.14%         C2, level 4  com.google.re2j.Machine::init, version 583 
  0.22%    0.14%         C2, level 4  com.google.re2j.Matcher::find, version 597 
  0.06%    0.04%      hsdis-amd64.so  [unknown] 
  0.05%    0.05%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testCombine_jmhTest::testCombine_thrpt_jmhStub, version 690 
  0.04%    0.06%        libc-2.26.so  _IO_fwrite 
  0.04%    0.03%         C2, level 4  com.github.arnaudroger.re2j.Re2jFindRegex::testCombine, version 624 
  0.04%    0.06%           libjvm.so  fileStream::write 
  0.04%    0.03%        libc-2.26.so  vfprintf 
  0.03%    0.04%           libjvm.so  PSPromotionManager::copy_to_survivor_space<false> 
  0.03%    0.04%           libjvm.so  RelocIterator::initialize 
  0.03%    0.04%           libjvm.so  PSPromotionManager::drain_stacks_depth 
  0.02%    0.02%           libjvm.so  GenericTaskQueueSet<OverflowTaskQueue<StarTask, (MemoryType)1, 131072u>, (MemoryType)1>::steal_best_of_2 
  0.02%    0.00%        libc-2.26.so  __strchr_avx2 
  0.02%    0.03%           libjvm.so  InstanceKlass::oop_push_contents 
  0.02%    0.00%  libpthread-2.26.so  __libc_write 
  0.80%    0.51%  <...other 116 warm methods...>
....................................................................................................
100.00%   99.68%  <totals>

....[Distribution by Source]........................................................................
 91.78%   94.08%         C2, level 4
  5.84%    3.68%        runtime stub
  1.25%    1.05%   [kernel.kallsyms]
  0.71%    0.76%           libjvm.so
  0.22%    0.33%        libc-2.26.so
  0.06%    0.04%      hsdis-amd64.so
  0.05%    0.04%  libpthread-2.26.so
  0.03%    0.02%         interpreter
  0.03%    0.00%         C1, level 3
  0.02%    0.00%              [vdso]
  0.00%             Unknown, level 0
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                        Mode  Cnt     Score    Error  Units
Re2jFindRegex.testCombine       thrpt   20  3738.438 ± 20.632  ops/s
Re2jFindRegex.testCombine:·asm  thrpt            NaN             ---
