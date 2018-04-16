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
# Warmup Iteration   1: 4564.654 ops/s
# Warmup Iteration   2: 6836.239 ops/s
# Warmup Iteration   3: 7056.864 ops/s
# Warmup Iteration   4: 6860.104 ops/s
# Warmup Iteration   5: 6985.611 ops/s
# Warmup Iteration   6: 7028.723 ops/s
# Warmup Iteration   7: 7069.539 ops/s
# Warmup Iteration   8: 7047.887 ops/s
# Warmup Iteration   9: 7030.155 ops/s
# Warmup Iteration  10: 6936.142 ops/s
# Warmup Iteration  11: 7006.235 ops/s
# Warmup Iteration  12: 6918.857 ops/s
# Warmup Iteration  13: 6931.639 ops/s
# Warmup Iteration  14: 6907.228 ops/s
# Warmup Iteration  15: 6945.360 ops/s
# Warmup Iteration  16: 7051.244 ops/s
# Warmup Iteration  17: 6878.912 ops/s
# Warmup Iteration  18: 6306.787 ops/s
# Warmup Iteration  19: 6328.236 ops/s
# Warmup Iteration  20: 6978.051 ops/s
Iteration   1: 7139.137 ops/s
Iteration   2: 6985.143 ops/s
Iteration   3: 7074.446 ops/s
Iteration   4: 7019.844 ops/s
Iteration   5: 7084.757 ops/s
Iteration   6: 7098.459 ops/s
Iteration   7: 7061.331 ops/s
Iteration   8: 7120.668 ops/s
Iteration   9: 7095.989 ops/s
Iteration  10: 7064.625 ops/s
Iteration  11: 7071.891 ops/s
Iteration  12: 7129.982 ops/s
Iteration  13: 7136.923 ops/s
Iteration  14: 7100.130 ops/s
Iteration  15: 7136.299 ops/s
Iteration  16: 7100.697 ops/s
Iteration  17: 7131.551 ops/s
Iteration  18: 7139.139 ops/s
Iteration  19: 7143.657 ops/s
Iteration  20: 7142.814 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  7098.874 ±(99.9%) 37.713 ops/s [Average]
  (min, avg, max) = (6985.143, 7098.874, 7143.657), stdev = 43.430
  CI (99.9%): [7061.161, 7136.587] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2:·asm":
PrintAssembly processed: 208964 total address lines.
Perf output processed (skipped 23.062 seconds):
 Column 1: cycles (20375 events)
 Column 2: instructions (20338 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 523 (266 bytes) 

                      # parm4:    rdi       = int
                      # parm5:    [sp+0x70]   = &apos;com/google/re2j/Machine$Thread&apos;  (sp of caller)
                      0x00007eff09234a80: mov    0x8(%rsi),%r10d    ;   {no_reloc}
                      0x00007eff09234a84: shl    $0x3,%r10
                      0x00007eff09234a88: cmp    %r10,%rax
                      0x00007eff09234a8b: jne    0x00007eff09045e20  ;   {runtime_call}
                      0x00007eff09234a91: data16 xchg %ax,%ax
                      0x00007eff09234a94: nopl   0x0(%rax,%rax,1)
                      0x00007eff09234a9c: data16 data16 xchg %ax,%ax
                    [Verified Entry Point]
  1.44%    1.84%      0x00007eff09234aa0: mov    %eax,-0x14000(%rsp)
  0.63%    0.46%      0x00007eff09234aa7: push   %rbp
  1.47%    1.83%      0x00007eff09234aa8: sub    $0x60,%rsp         ;*synchronization entry
                                                                    ; - com.google.re2j.Machine::add@-1 (line 345)
  0.30%    0.24%      0x00007eff09234aac: mov    %edi,0x28(%rsp)
  0.29%    0.29%      0x00007eff09234ab0: mov    %r9,0x20(%rsp)
  1.40%    1.83%      0x00007eff09234ab5: mov    %r8d,0x1c(%rsp)
  0.07%    0.06%      0x00007eff09234aba: mov    %rsi,0x8(%rsp)
  0.20%    0.16%      0x00007eff09234abf: test   %ecx,%ecx
                      0x00007eff09234ac1: je     0x00007eff09234c79  ;*ifne
                                                                    ; - com.google.re2j.Machine::add@1 (line 345)
  0.16%    0.25%      0x00007eff09234ac7: mov    %rdx,0x40(%rsp)
  1.35%    1.66%      0x00007eff09234acc: mov    0x14(%rdx),%r10d   ;*getfield sparse
                                                                    ; - com.google.re2j.Machine$Queue::contains@1 (line 46)
                                                                    ; - com.google.re2j.Machine::add@9 (line 348)
                                                                    ; implicit exception: dispatches to 0x00007eff09235031
  0.03%    0.02%      0x00007eff09234ad0: mov    0xc(%r12,%r10,8),%r8d  ; implicit exception: dispatches to 0x00007eff09235045
  0.27%    0.12%      0x00007eff09234ad5: cmp    %r8d,%ecx
                      0x00007eff09234ad8: jae    0x00007eff09234bc5  ;*iaload
                                                                    ; - com.google.re2j.Machine$Queue::contains@5 (line 46)
                                                                    ; - com.google.re2j.Machine::add@9 (line 348)
  0.22%    0.30%      0x00007eff09234ade: mov    0x10(%rdx),%r9d    ;*getfield dense
                                                                    ; - com.google.re2j.Machine$Queue::contains@18 (line 50)
                                                                    ; - com.google.re2j.Machine::add@9 (line 348)
  1.30%    1.46%      0x00007eff09234ae2: mov    0xc(%rdx),%r11d    ;*getfield size
                                                                    ; - com.google.re2j.Machine$Queue::contains@9 (line 47)
                                                                    ; - com.google.re2j.Machine::add@9 (line 348)
  0.07%    0.01%      0x00007eff09234ae6: lea    (%r12,%r10,8),%r8
  0.21%    0.21%      0x00007eff09234aea: mov    0x10(%r8,%rcx,4),%ebp  ;*iaload
                                                                    ; - com.google.re2j.Machine$Queue::contains@5 (line 46)
                                                                    ; - com.google.re2j.Machine::add@9 (line 348)
  0.19%    0.22%      0x00007eff09234aef: cmp    %r11d,%ebp
                  ╭   0x00007eff09234af2: jl     0x00007eff09234b8f  ;*invokevirtual contains
                  │                                                 ; - com.google.re2j.Machine::add@9 (line 348)
  1.76%    2.00%  │↗  0x00007eff09234af8: mov    %r11d,0x10(%r8,%rcx,4)  ;*iastore
                  ││                                                ; - com.google.re2j.Machine$Queue::add@18 (line 58)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 351)
  0.21%    0.22%  ││  0x00007eff09234afd: mov    %r11d,%r8d
  0.14%    0.13%  ││  0x00007eff09234b00: inc    %r8d
  0.17%    0.18%  ││  0x00007eff09234b03: mov    %r8d,0xc(%rdx)     ;*putfield size
                  ││                                                ; - com.google.re2j.Machine$Queue::add@8 (line 57)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 351)
  1.54%    1.62%  ││  0x00007eff09234b07: mov    0xc(%r12,%r9,8),%r8d  ; implicit exception: dispatches to 0x00007eff09235059
  0.14%    0.12%  ││  0x00007eff09234b0c: cmp    %r8d,%r11d
                  ││  0x00007eff09234b0f: jae    0x00007eff09234c01
  0.12%    0.16%  ││  0x00007eff09234b15: lea    (%r12,%r9,8),%r10
  0.16%    0.15%  ││  0x00007eff09234b19: mov    0x10(%r10,%r11,4),%ebx  ;*aaload
                  ││                                                ; - com.google.re2j.Machine$Queue::add@24 (line 59)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 351)
  1.43%    1.60%  ││  0x00007eff09234b1e: test   %ebx,%ebx
                  ││  0x00007eff09234b20: je     0x00007eff09234ca1  ;*ifnonnull
                  ││                                                ; - com.google.re2j.Machine$Queue::add@27 (line 60)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 351)
  0.08%    0.11%  ││  0x00007eff09234b26: mov    %ecx,0xc(%r12,%rbx,8)  ;*putfield pc
                  ││                                                ; - com.google.re2j.Machine$Queue::add@52 (line 64)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 351)
  0.71%    0.59%  ││  0x00007eff09234b2b: mov    0x18(%rsi),%r11d   ;*getfield prog
                  ││                                                ; - com.google.re2j.Machine::add@26 (line 352)
  0.11%    0.19%  ││  0x00007eff09234b2f: mov    %r12d,0x10(%r12,%rbx,8)  ;*putfield thread
                  ││                                                ; - com.google.re2j.Machine$Queue::add@47 (line 63)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 351)
  1.51%    1.86%  ││  0x00007eff09234b34: mov    0x18(%r12,%r11,8),%ebp  ;*getfield inst
                  ││                                                ; - com.google.re2j.Prog::getInst@1 (line 30)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 352)
                  ││                                                ; implicit exception: dispatches to 0x00007eff0923506d
  0.05%    0.03%  ││  0x00007eff09234b39: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007eff09235081
  0.28%    0.34%  ││  0x00007eff09234b3e: cmp    %r10d,%ecx
                  ││  0x00007eff09234b41: jae    0x00007eff09234c41
  0.32%    0.37%  ││  0x00007eff09234b47: lea    (%r12,%rbp,8),%r10
  1.32%    1.36%  ││  0x00007eff09234b4b: mov    0x10(%r10,%rcx,4),%r10d  ;*aaload
                  ││                                                ; - com.google.re2j.Prog::getInst@5 (line 30)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 352)
  0.04%    0.06%  ││  0x00007eff09234b50: mov    %r10d,0x2c(%rsp)
  0.30%    0.28%  ││  0x00007eff09234b55: mov    0xc(%r12,%r10,8),%r9d  ;*getfield op
                  ││                                                ; - com.google.re2j.Machine::add@37 (line 353)
                  ││                                                ; implicit exception: dispatches to 0x00007eff09235095
  2.69%    2.97%  ││  0x00007eff09234b5a: mov    %r9d,%r11d
  0.78%    0.71%  ││  0x00007eff09234b5d: dec    %r11d
  1.11%    0.94%  ││  0x00007eff09234b60: cmp    $0xc,%r11d
                  ││  0x00007eff09234b64: jae    0x00007eff09234c69  ;*tableswitch
                  ││                                                ; - com.google.re2j.Machine::add@40 (line 353)
  1.02%    1.23%  ││  0x00007eff09234b6a: mov    0x14(%r12,%r10,8),%r10d  ;*getfield arg
                  ││                                                ; - com.google.re2j.Machine::add@160 (line 367)
  0.04%    0.01%  ││  0x00007eff09234b6f: mov    0x2c(%rsp),%r11d
  0.77%    0.70%  ││  0x00007eff09234b74: mov    0x10(%r12,%r11,8),%ecx  ;*getfield out
                  ││                                                ; - com.google.re2j.Machine::add@197 (line 373)
  1.50%    1.45%  ││  0x00007eff09234b79: movslq %r9d,%r8
  0.04%    0.09%  ││  0x00007eff09234b7c: lea    (%r12,%r11,8),%rax  ;*aaload
                  ││                                                ; - com.google.re2j.Prog::getInst@5 (line 30)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 352)
  0.02%    0.05%  ││  0x00007eff09234b80: movabs $0x7eff09234a20,%r11  ;   {section_word}
  0.51%    0.42%  ││  0x00007eff09234b8a: jmpq   *-0x8(%r11,%r8,8)  ;*tableswitch
                  ││                                                ; - com.google.re2j.Machine::add@40 (line 353)
  0.19%    0.18%  ↘│  0x00007eff09234b8f: mov    0xc(%r12,%r9,8),%ebx  ; implicit exception: dispatches to 0x00007eff092350f1
  0.01%    0.00%   │  0x00007eff09234b94: cmp    %ebx,%ebp
                   │  0x00007eff09234b96: jae    0x00007eff09234ce1
  0.13%    0.04%   │  0x00007eff09234b9c: lea    (%r12,%r9,8),%r10
  0.00%    0.02%   │  0x00007eff09234ba0: mov    0x10(%r10,%rbp,4),%r10d  ;*aaload
                   │                                                ; - com.google.re2j.Machine$Queue::contains@22 (line 50)
                   │                                                ; - com.google.re2j.Machine::add@9 (line 348)
  0.19%    0.16%   │  0x00007eff09234ba5: mov    0xc(%r12,%r10,8),%ebp  ;*getfield pc
                   │                                                ; - com.google.re2j.Machine$Queue::contains@29 (line 51)
                   │                                                ; - com.google.re2j.Machine::add@9 (line 348)
                   │                                                ; implicit exception: dispatches to 0x00007eff09235111
  0.64%    0.65%   │  0x00007eff09234baa: cmp    %ecx,%ebp
                   ╰  0x00007eff09234bac: jne    0x00007eff09234af8  ;*if_icmpne
                                                                    ; - com.google.re2j.Machine$Queue::contains@33 (line 51)
                                                                    ; - com.google.re2j.Machine::add@9 (line 348)
                      0x00007eff09234bb2: mov    $0xffffff65,%esi
                      0x00007eff09234bb7: mov    %ecx,0x2c(%rsp)
                      0x00007eff09234bbb: callq  0x00007eff090051a0  ; OopMap{[112]=Oop [8]=Oop [32]=Oop [64]=Oop off=320}
                                                                    ;*if_icmpne
....................................................................................................
 29.65%   32.00%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 529 (458 bytes) 

                             0x00007eff092399e8: mov    %eax,0x30(%rsp)
                             0x00007eff092399ec: mov    %r8d,0x7c(%rsp)
                             0x00007eff092399f1: mov    %r10d,0x74(%rsp)
                             0x00007eff092399f6: lea    0x10(%r12,%rdi,8),%rsi
                             0x00007eff092399fb: lea    0x10(%r12,%r14,8),%rdi
                             0x00007eff09239a00: movslq %edx,%rdx
                             0x00007eff09239a03: movabs $0x7eff09052640,%r10
                             0x00007eff09239a0d: callq  *%r10              ;*invokestatic arraycopy
                                                                           ; - com.google.re2j.Machine::step@226 (line 294)
                             0x00007eff09239a10: mov    0x74(%rsp),%r10d
           0.00%             0x00007eff09239a15: mov    0x7c(%rsp),%r8d
                             0x00007eff09239a1a: mov    0x30(%rsp),%eax
                             0x00007eff09239a1e: mov    0x34(%rsp),%ebx
                             0x00007eff09239a22: mov    0x38(%rsp),%r11
                             0x00007eff09239a27: mov    0x40(%rsp),%r9     ;*iload
                                                                           ; - com.google.re2j.Machine::step@229 (line 296)
                             0x00007eff09239a2c: mov    0x8(%rsp),%rcx
                             0x00007eff09239a31: mov    0xc(%rcx),%ecx
           0.00%             0x00007eff09239a34: cmp    %ecx,%eax
                             0x00007eff09239a36: jge    0x00007eff09239cce  ;*if_icmpge
                                                                           ; - com.google.re2j.Machine::step@246 (line 298)
                             0x00007eff09239a3c: mov    %eax,%ecx
                             0x00007eff09239a3e: jmpq   0x00007eff09239ca2  ;*aload
                                                                           ; - com.google.re2j.Machine::step@294 (line 311)
  0.92%    0.95%       ↗     0x00007eff09239a43: cmp    $0xc,%r9d
                       │     0x00007eff09239a47: jne    0x00007eff09239e95  ;*if_icmpne
                       │                                                   ; - com.google.re2j.Inst::matchRune@29 (line 59)
                       │                                                   ; - com.google.re2j.Machine::step@298 (line 311)
  0.66%    0.78%       │     0x00007eff09239a4d: mov    0x18(%r12,%rbx,8),%r9d  ;*getfield f0
                       │                                                   ; - com.google.re2j.Inst::matchRune@33 (line 60)
                       │                                                   ; - com.google.re2j.Machine::step@298 (line 311)
  0.02%    0.02%       │     0x00007eff09239a52: cmp    0x20(%rsp),%r9d
                  ╭    │     0x00007eff09239a57: je     0x00007eff09239bac  ;*if_icmpeq
                  │    │                                                   ; - com.google.re2j.Inst::matchRune@37 (line 60)
                  │    │                                                   ; - com.google.re2j.Machine::step@298 (line 311)
  0.71%    0.89%  │    │     0x00007eff09239a5d: mov    0x1c(%r12,%rbx,8),%r9d  ;*getfield f1
                  │    │                                                   ; - com.google.re2j.Inst::matchRune@41 (line 60)
                  │    │                                                   ; - com.google.re2j.Machine::step@298 (line 311)
  0.10%    0.14%  │    │     0x00007eff09239a62: cmp    0x20(%rsp),%r9d
                  │╭   │     0x00007eff09239a67: je     0x00007eff09239bac  ;*if_icmpeq
                  ││   │                                                   ; - com.google.re2j.Inst::matchRune@45 (line 60)
                  ││   │                                                   ; - com.google.re2j.Machine::step@298 (line 311)
  1.06%    1.07%  ││   │     0x00007eff09239a6d: mov    0x20(%r12,%rbx,8),%ebp  ;*getfield f2
                  ││   │                                                   ; - com.google.re2j.Inst::matchRune@49 (line 60)
                  ││   │                                                   ; - com.google.re2j.Machine::step@298 (line 311)
  0.03%    0.00%  ││   │     0x00007eff09239a72: cmp    0x20(%rsp),%ebp
                  ││   │     0x00007eff09239a76: je     0x00007eff09239edd  ;*if_icmpeq
                  ││   │                                                   ; - com.google.re2j.Inst::matchRune@53 (line 60)
                  ││   │                                                   ; - com.google.re2j.Machine::step@298 (line 311)
  0.82%    1.04%  ││   │     0x00007eff09239a7c: mov    0x24(%r12,%rbx,8),%ebp  ;*getfield f3
                  ││   │                                                   ; - com.google.re2j.Inst::matchRune@57 (line 60)
                  ││   │                                                   ; - com.google.re2j.Machine::step@298 (line 311)
  0.01%    0.03%  ││   │     0x00007eff09239a81: cmp    0x20(%rsp),%ebp
                  ││   │     0x00007eff09239a85: je     0x00007eff09239f11  ;*if_icmpne
                  ││   │                                                   ; - com.google.re2j.Inst::matchRune@61 (line 60)
                  ││   │                                                   ; - com.google.re2j.Machine::step@298 (line 311)
  0.95%    1.27%  ││   │     0x00007eff09239a8b: mov    0x20(%rsp),%r9d    ;*goto
                  ││   │                                                   ; - com.google.re2j.Machine::step@291 (line 307)
                  ││   │ ↗   0x00007eff09239a90: mov    %r11,%rcx          ;*aload
                  ││   │ │                                                 ; - com.google.re2j.Machine::step@389 (line 332)
  0.03%    0.05%  ││   │ │↗  0x00007eff09239a93: mov    0x28(%rsp),%r11
  0.01%    0.01%  ││   │ ││  0x00007eff09239a98: mov    0x24(%r11),%ebx    ;*getfield pool
                  ││   │ ││                                                ; - com.google.re2j.Machine::free@5 (line 160)
                  ││   │ ││                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.87%    1.12%  ││   │ ││  0x00007eff09239a9c: mov    0xc(%r12,%rbx,8),%r11d  ;*arraylength
                  ││   │ ││                                                ; - com.google.re2j.Machine::free@8 (line 160)
                  ││   │ ││                                                ; - com.google.re2j.Machine::step@397 (line 333)
                  ││   │ ││                                                ; implicit exception: dispatches to 0x00007eff09239ff5
  0.04%    0.04%  ││   │ ││  0x00007eff09239aa1: mov    0x28(%rsp),%r8
  0.03%    0.07%  ││   │ ││  0x00007eff09239aa6: mov    0xc(%r8),%ebp      ;*getfield poolSize
                  ││   │ ││                                                ; - com.google.re2j.Machine::free@1 (line 160)
                  ││   │ ││                                                ; - com.google.re2j.Machine::step@397 (line 333)
           0.01%  ││   │ ││  0x00007eff09239aaa: cmp    %r11d,%ebp
                  ││   │ ││  0x00007eff09239aad: jge    0x00007eff09239e4d  ;*if_icmplt
                  ││   │ ││                                                ; - com.google.re2j.Machine::free@9 (line 160)
                  ││   │ ││                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.83%    1.11%  ││   │ ││  0x00007eff09239ab3: mov    %ebp,%r8d
                  ││   │ ││  0x00007eff09239ab6: inc    %r8d
  0.04%    0.03%  ││   │ ││  0x00007eff09239ab9: mov    0x28(%rsp),%rdi
  0.00%    0.02%  ││   │ ││  0x00007eff09239abe: mov    %r8d,0xc(%rdi)     ;*putfield poolSize
                  ││   │ ││                                                ; - com.google.re2j.Machine::free@45 (line 163)
                  ││   │ ││                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.97%    1.03%  ││   │ ││  0x00007eff09239ac2: cmp    %r11d,%ebp
                  ││   │ ││  0x00007eff09239ac5: jae    0x00007eff09239d91  ;*aastore
                  ││   │ ││                                                ; - com.google.re2j.Machine::free@49 (line 163)
                  ││   │ ││                                                ; - com.google.re2j.Machine::step@397 (line 333)
                  ││   │ ││  0x00007eff09239acb: mov    %rcx,%r11
  0.02%    0.07%  ││   │ ││  0x00007eff09239ace: shr    $0x3,%r11
  0.01%    0.01%  ││   │ ││  0x00007eff09239ad2: lea    (%r12,%rbx,8),%r10  ;*getfield pool
                  ││   │ ││                                                ; - com.google.re2j.Machine::free@5 (line 160)
                  ││   │ ││                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.92%    0.93%  ││   │ ││  0x00007eff09239ad6: lea    0x10(%r10,%rbp,4),%r10
                  ││   │ ││  0x00007eff09239adb: mov    %r11d,(%r10)
  0.08%    0.05%  ││   │ ││  0x00007eff09239ade: shr    $0x9,%r10
  0.01%    0.00%  ││   │ ││  0x00007eff09239ae2: movabs $0x7eff191f4000,%r11
  0.93%    0.99%  ││   │ ││  0x00007eff09239aec: mov    %r12b,(%r11,%r10,1)  ;*aastore
                  ││   │ ││                                                ; - com.google.re2j.Machine::free@49 (line 163)
                  ││   │ ││                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.25%    0.32%  ││   │ ││  0x00007eff09239af0: xor    %r10d,%r10d
  0.04%    0.04%  ││╭  │ ││  0x00007eff09239af3: jmp    0x00007eff09239aff
  0.37%    0.27%  │││↗ │ ││  0x00007eff09239af5: mov    0x24(%rsp),%r10d
  0.06%    0.09%  ││││ │ ││  0x00007eff09239afa: mov    0x20(%rsp),%r9d    ; OopMap{[8]=Oop [24]=Oop [40]=Oop off=511}
                  ││││ │ ││                                                ;*goto
                  ││││ │ ││                                                ; - com.google.re2j.Machine::step@403 (line 270)
  0.33%    0.21%  ││↘│ │ ││  0x00007eff09239aff: test   %eax,0x175b24fb(%rip)        # 0x00007eff207ec000
                  ││ │ │ ││                                                ;*goto
                  ││ │ │ ││                                                ; - com.google.re2j.Machine::step@403 (line 270)
                  ││ │ │ ││                                                ;   {poll}
  0.96%    0.91%  ││ │ │ ││  0x00007eff09239b05: mov    0x8(%rsp),%r10
  0.45%    0.37%  ││ │ │ ││  0x00007eff09239b0a: mov    0xc(%r10),%r10d
  0.12%    0.12%  ││ │ │ ││  0x00007eff09239b0e: cmp    %r10d,%eax
                  ││ │ │ ││  0x00007eff09239b11: jge    0x00007eff09239c20
  0.29%    0.19%  ││ │ │ ││  0x00007eff09239b17: mov    %r9d,0x20(%rsp)
  0.71%    0.70%  ││ │ │ ││  0x00007eff09239b1c: mov    %eax,%r10d         ;*aload_1
                  ││ │ │ ││                                                ; - com.google.re2j.Machine::step@21 (line 271)
  0.56%    0.45%  ││ │ │ ││  0x00007eff09239b1f: mov    0x8(%rsp),%r11
  0.09%    0.08%  ││ │ │ ││  0x00007eff09239b24: mov    0x10(%r11),%r8d    ;*getfield dense
                  ││ │ │ ││                                                ; - com.google.re2j.Machine::step@22 (line 271)
  0.54%    0.29%  ││ │ │ ││  0x00007eff09239b28: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x00007eff09239fad
  1.21%    1.03%  ││ │ │ ││  0x00007eff09239b2d: cmp    %r11d,%r10d
                  ││ │ │ ││  0x00007eff09239b30: jae    0x00007eff09239d15
  0.61%    0.61%  ││ │ │ ││  0x00007eff09239b36: lea    (%r12,%r8,8),%r11
  0.08%    0.06%  ││ │ │ ││  0x00007eff09239b3a: mov    0x10(%r11,%r10,4),%r9d  ;*aaload
                  ││ │ │ ││                                                ; - com.google.re2j.Machine::step@27 (line 271)
  0.43%    0.44%  ││ │ │ ││  0x00007eff09239b3f: mov    0x10(%r12,%r9,8),%r8d  ;*getfield thread
                  ││ │ │ ││                                                ; - com.google.re2j.Machine::step@40 (line 275)
                  ││ │ │ ││                                                ; implicit exception: dispatches to 0x00007eff0923a005
  1.91%    1.73%  ││ │ │ ││  0x00007eff09239b44: mov    %r10d,%eax
  0.39%    0.31%  ││ │ │ ││  0x00007eff09239b47: inc    %eax               ;*iadd
                  ││ │ │ ││                                                ; - com.google.re2j.Machine::step@237 (line 298)
  0.07%    0.06%  ││ │ │ ││  0x00007eff09239b49: test   %r8d,%r8d
                  ││ ╰ │ ││  0x00007eff09239b4c: je     0x00007eff09239af5  ;*ifnonnull
                  ││   │ ││                                                ; - com.google.re2j.Machine::step@47 (line 276)
  0.19%    0.27%  ││   │ ││  0x00007eff09239b4e: mov    0x24(%rsp),%r9d
  0.81%    0.51%  ││   │ ││  0x00007eff09239b53: test   %r9d,%r9d
                  ││   │ ││  0x00007eff09239b56: jne    0x00007eff09239e05  ;*ifeq
                  ││   │ ││                                                ; - com.google.re2j.Machine::step@55 (line 279)
  0.06%    0.10%  ││   │ ││  0x00007eff09239b5c: mov    0x10(%r12,%r8,8),%ebx  ;*getfield inst
                  ││   │ ││                                                ; - com.google.re2j.Machine::step@101 (line 283)
  0.88%    1.09%  ││   │ ││  0x00007eff09239b61: mov    0xc(%r12,%rbx,8),%r9d  ;*getfield op
                  ││   │ ││                                                ; - com.google.re2j.Machine::step@111 (line 285)
                  ││   │ ││                                                ; implicit exception: dispatches to 0x00007eff09239fe5
  3.30%    3.32%  ││   │ ││  0x00007eff09239b66: mov    0xc(%r12,%r8,8),%r14d  ;*getfield cap
                  ││   │ ││                                                ; - com.google.re2j.Machine::step@172 (line 292)
  0.15%    0.08%  ││   │ ││  0x00007eff09239b6b: lea    (%r12,%r8,8),%r11  ;*getfield thread
                  ││   │ ││                                                ; - com.google.re2j.Machine::step@40 (line 275)
  0.01%           ││   │ ││  0x00007eff09239b6f: cmp    $0x9,%r9d
                  ││  ╭│ ││  0x00007eff09239b73: je     0x00007eff09239bf9
  1.05%    1.06%  ││  ││ ││  0x00007eff09239b79: cmp    $0x9,%r9d
                  ││  ││ ││  0x00007eff09239b7d: jle    0x00007eff0923996d
  0.56%    0.60%  ││  ││ ││  0x00007eff09239b83: cmp    $0xc,%r9d
                  ││  │╰ ││  0x00007eff09239b87: je     0x00007eff09239a43
  0.01%           ││  │  ││  0x00007eff09239b8d: cmp    $0xc,%r9d
                  ││  │  ││  0x00007eff09239b91: jg     0x00007eff09239e85
                  ││  │  ││  0x00007eff09239b97: cmp    $0xb,%r9d
                  ││  │ ╭││  0x00007eff09239b9b: jne    0x00007eff09239bac  ;*tableswitch
                  ││  │ │││                                                ; - com.google.re2j.Machine::step@114 (line 285)
                  ││  │ │││  0x00007eff09239b9d: mov    0x20(%rsp),%r9d
                  ││  │ │││  0x00007eff09239ba2: cmp    $0xa,%r9d
                  ││  │ │╰│  0x00007eff09239ba6: je     0x00007eff09239a90  ;*ifeq
                  ││  │ │ │                                                ; - com.google.re2j.Machine::step@363 (line 329)
  0.53%    0.45%  ↘↘  │ ↘ │  0x00007eff09239bac: mov    %eax,0x74(%rsp)
  0.41%    0.20%      │   │  0x00007eff09239bb0: mov    %r10d,%ebp
           0.00%      │   │  0x00007eff09239bb3: mov    0x10(%r12,%rbx,8),%ecx  ;*getfield out
                      │   │                                                ; - com.google.re2j.Machine::step@370 (line 330)
                      │   │  0x00007eff09239bb8: mov    %r14,%r9
  0.00%               │   │  0x00007eff09239bbb: shl    $0x3,%r9           ;*getfield cap
                      │   │                                                ; - com.google.re2j.Machine::step@172 (line 292)
  0.03%               │   │  0x00007eff09239bbf: mov    0x28(%rsp),%rsi
                      │   │  0x00007eff09239bc4: mov    0x18(%rsp),%rdx
                      │   │  0x00007eff09239bc9: mov    0x14(%rsp),%r8d
  0.00%               │   │  0x00007eff09239bce: mov    0x70(%rsp),%edi
  0.04%               │   │  0x00007eff09239bd2: mov    %r11,(%rsp)
  0.05%               │   │  0x00007eff09239bd6: nop
                      │   │  0x00007eff09239bd7: callq  0x00007eff09046020  ; OopMap{[8]=Oop [24]=Oop [40]=Oop off=732}
                      │   │                                                ;*invokespecial add
                      │   │                                                ; - com.google.re2j.Machine::step@384 (line 330)
                      │   │                                                ;   {optimized virtual_call}
                      │   │  0x00007eff09239bdc: mov    %rax,%rcx
  0.05%               │   │  0x00007eff09239bdf: test   %rax,%rax
                      │   │  0x00007eff09239be2: je     0x00007eff09239d04  ;*ifnull
                      │   │                                                ; - com.google.re2j.Machine::step@391 (line 332)
                      │   │  0x00007eff09239be8: mov    0x20(%rsp),%r9d
                      │   │  0x00007eff09239bed: mov    %ebp,%r10d
                      │   │  0x00007eff09239bf0: mov    0x74(%rsp),%eax
                      │   ╰  0x00007eff09239bf4: jmpq   0x00007eff09239a93
                      ↘      0x00007eff09239bf9: mov    0x28(%r12,%rbx,8),%ebp  ;*getfield runes
                                                                           ; - com.google.re2j.Machine::step@310 (line 315)
                             0x00007eff09239bfe: mov    0xc(%r12,%rbp,8),%r9d  ; implicit exception: dispatches to 0x00007eff0923a05d
                             0x00007eff09239c03: test   %r9d,%r9d
....................................................................................................
 27.73%   27.77%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 523 (323 bytes) 

                          0x00007eff09234dbe: mov    %r10,(%rsp)
                          0x00007eff09234dc2: nop
                          0x00007eff09234dc3: callq  0x00007eff09046020  ; OopMap{off=840}
                                                                        ;*invokespecial add
                                                                        ; - com.google.re2j.Machine::add@207 (line 373)
                                                                        ;   {optimized virtual_call}
                  ╭       0x00007eff09234dc8: jmpq   0x00007eff09234efe
                  │       0x00007eff09234dcd: mov    0x70(%rsp),%rax
                  │╭      0x00007eff09234dd2: jmpq   0x00007eff09234efe  ;*tableswitch
                  ││                                                    ; - com.google.re2j.Machine::add@40 (line 353)
  2.27%    1.61%  ││      0x00007eff09234dd7: mov    0x1c(%rsp),%r8d
                  ││      0x00007eff09234ddc: mov    0x20(%rsp),%r9
  0.07%    0.07%  ││      0x00007eff09234de1: mov    0x70(%rsp),%r10
  0.01%           ││      0x00007eff09234de6: mov    %r10,(%rsp)
  0.64%    0.68%  ││      0x00007eff09234dea: mov    %rsi,%rbp
                  ││      0x00007eff09234ded: mov    %rax,0x38(%rsp)
  0.11%    0.06%  ││      0x00007eff09234df2: nop
  0.00%           ││      0x00007eff09234df3: callq  0x00007eff09046020  ; OopMap{rbp=Oop [32]=Oop [44]=NarrowOop [56]=Oop [64]=Oop off=888}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@131 (line 362)
                  ││                                                    ;   {optimized virtual_call}
  0.03%    0.05%  ││      0x00007eff09234df8: mov    0x2c(%rsp),%r11d
  0.18%    0.30%  ││      0x00007eff09234dfd: mov    0x14(%r12,%r11,8),%ecx  ;*getfield arg
                  ││                                                    ; - com.google.re2j.Machine::add@140 (line 363)
  0.67%    0.64%  ││      0x00007eff09234e02: mov    %rbp,%rsi
  0.01%    0.01%  ││      0x00007eff09234e05: mov    0x40(%rsp),%rdx
  0.02%    0.03%  ││      0x00007eff09234e0a: mov    0x1c(%rsp),%r8d
  0.16%    0.32%  ││      0x00007eff09234e0f: mov    0x20(%rsp),%r9
  0.59%    0.71%  ││      0x00007eff09234e14: mov    0x28(%rsp),%edi
  0.03%    0.00%  ││      0x00007eff09234e18: mov    %rax,(%rsp)
  0.01%    0.03%  ││      0x00007eff09234e1c: data16 xchg %ax,%ax
  0.14%    0.14%  ││      0x00007eff09234e1f: callq  0x00007eff09046020  ; OopMap{off=932}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@150 (line 363)
                  ││                                                    ;   {optimized virtual_call}
  0.03%    0.05%  ││╭     0x00007eff09234e24: jmpq   0x00007eff09234efe  ;*aload
                  │││                                                   ; - com.google.re2j.Machine::add@297 (line 393)
  4.22%    4.07%  │││     0x00007eff09234e29: mov    0x70(%rsp),%r13
  0.00%           │││     0x00007eff09234e2e: test   %r13,%r13
                  │││╭    0x00007eff09234e31: jne    0x00007eff09234f0a  ;*ifnonnull
                  ││││                                                  ; - com.google.re2j.Machine::add@299 (line 393)
  0.02%    0.01%  ││││    0x00007eff09234e37: mov    0xc(%rsi),%r9d     ;*getfield poolSize
                  ││││                                                  ; - com.google.re2j.Machine::alloc@1 (line 148)
                  ││││                                                  ; - com.google.re2j.Machine::add@305 (line 394)
  0.00%           ││││    0x00007eff09234e3b: test   %r9d,%r9d
                  ││││    0x00007eff09234e3e: jle    0x00007eff09234fb1  ;*ifle
                  ││││                                                  ; - com.google.re2j.Machine::alloc@4 (line 148)
                  ││││                                                  ; - com.google.re2j.Machine::add@305 (line 394)
  0.92%    1.05%  ││││    0x00007eff09234e44: mov    0x24(%rsi),%r8d    ;*getfield pool
                  ││││                                                  ; - com.google.re2j.Machine::alloc@18 (line 150)
                  ││││                                                  ; - com.google.re2j.Machine::add@305 (line 394)
  0.00%    0.01%  ││││    0x00007eff09234e48: mov    %r9d,%ebp
  0.03%    0.03%  ││││    0x00007eff09234e4b: dec    %ebp               ;*isub
                  ││││                                                  ; - com.google.re2j.Machine::alloc@13 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@305 (line 394)
  0.00%    0.00%  ││││    0x00007eff09234e4d: mov    %ebp,0xc(%rsi)     ;*putfield poolSize
                  ││││                                                  ; - com.google.re2j.Machine::alloc@14 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@305 (line 394)
  1.06%    1.03%  ││││    0x00007eff09234e50: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x00007eff092350b5
           0.00%  ││││    0x00007eff09234e55: cmp    %r11d,%ebp
                  ││││    0x00007eff09234e58: jae    0x00007eff09234f4a
  0.05%    0.06%  ││││    0x00007eff09234e5e: lea    (%r12,%r8,8),%r10
  0.00%    0.01%  ││││    0x00007eff09234e62: mov    0xc(%r10,%r9,4),%r10d  ;*aaload
                  ││││                                                  ; - com.google.re2j.Machine::alloc@25 (line 150)
                  ││││                                                  ; - com.google.re2j.Machine::add@305 (line 394)
  0.93%    1.07%  ││││    0x00007eff09234e67: mov    0x2c(%rsp),%r8d
                  ││││    0x00007eff09234e6c: mov    %r8d,0x10(%r12,%r10,8)  ;*putfield inst
                  ││││                                                  ; - com.google.re2j.Machine::alloc@45 (line 154)
                  ││││                                                  ; - com.google.re2j.Machine::add@305 (line 394)
                  ││││                                                  ; implicit exception: dispatches to 0x00007eff092350c5
  0.03%    0.04%  ││││    0x00007eff09234e71: lea    (%r12,%r10,8),%r13  ;*aaload
                  ││││                                                  ; - com.google.re2j.Machine::alloc@25 (line 150)
                  ││││                                                  ; - com.google.re2j.Machine::add@305 (line 394)
           0.00%  ││││    0x00007eff09234e75: mov    %r13,%r10
  0.98%    1.09%  ││││    0x00007eff09234e78: shr    $0x9,%r10
           0.01%  ││││    0x00007eff09234e7c: movabs $0x7eff191f4000,%r11
  0.06%    0.03%  ││││    0x00007eff09234e86: mov    %r12b,(%r11,%r10,1)  ;*aload
                  ││││                                                  ; - com.google.re2j.Machine::add@320 (line 398)
  0.02%    0.02%  ││││ ↗  0x00007eff09234e8a: mov    0x20(%rsp),%rdi
  1.01%    1.01%  ││││ │  0x00007eff09234e8f: mov    0xc(%rdi),%r10d    ;*arraylength
                  ││││ │                                                ; - com.google.re2j.Machine::add@322 (line 398)
                  ││││ │                                                ; implicit exception: dispatches to 0x00007eff092350a5
  0.02%           ││││ │  0x00007eff09234e93: test   %r10d,%r10d
                  ││││ │  0x00007eff09234e96: jle    0x00007eff09234f8e  ;*ifle
                  ││││ │                                                ; - com.google.re2j.Machine::add@323 (line 398)
  0.05%    0.02%  ││││ │  0x00007eff09234e9c: mov    0xc(%r13),%r11d    ;*getfield cap
                  ││││ │                                                ; - com.google.re2j.Machine::add@328 (line 398)
  0.02%    0.01%  ││││ │  0x00007eff09234ea0: lea    (%r12,%rbx,8),%rbp  ;*aaload
                  ││││ │                                                ; - com.google.re2j.Machine$Queue::add@24 (line 59)
                  ││││ │                                                ; - com.google.re2j.Machine::add@20 (line 351)
  1.07%    1.01%  ││││ │  0x00007eff09234ea4: mov    %r11,%r8
           0.01%  ││││ │  0x00007eff09234ea7: shl    $0x3,%r8
  0.04%    0.04%  ││││ │  0x00007eff09234eab: cmp    %rdi,%r8
                  ││││╭│  0x00007eff09234eae: je     0x00007eff09234edb  ;*if_acmpeq
                  ││││││                                                ; - com.google.re2j.Machine::add@333 (line 398)
  0.01%    0.01%  ││││││  0x00007eff09234eb0: mov    0xc(%r12,%r11,8),%r8d  ; implicit exception: dispatches to 0x00007eff092350d9
  1.00%    0.91%  ││││││  0x00007eff09234eb5: lea    (%r12,%r11,8),%rcx  ;*getfield cap
                  ││││││                                                ; - com.google.re2j.Machine::add@328 (line 398)
  0.00%    0.00%  ││││││  0x00007eff09234eb9: cmp    %r10d,%r8d
                  ││││││  0x00007eff09234ebc: jb     0x00007eff09234f65
  0.10%    0.06%  ││││││  0x00007eff09234ec2: lea    0x10(%r12,%r11,8),%rsi
           0.02%  ││││││  0x00007eff09234ec7: add    $0x10,%rdi
  0.97%    0.88%  ││││││  0x00007eff09234ecb: movslq %r10d,%rdx
                  ││││││  0x00007eff09234ece: movabs $0x7eff09052640,%r10
  0.01%    0.06%  ││││││  0x00007eff09234ed8: callq  *%r10              ;*aload
                  ││││││                                                ; - com.google.re2j.Machine::add@351 (line 401)
           0.00%  ││││↘│  0x00007eff09234edb: mov    %rbp,%r10
  0.09%    0.06%  ││││ │  0x00007eff09234ede: mov    %r13,%r8
  0.04%    0.04%  ││││ │  0x00007eff09234ee1: shr    $0x3,%r8
  0.87%    0.08%  ││││ │  0x00007eff09234ee5: mov    %r8d,0x10(%r12,%rbx,8)
           0.00%  ││││ │  0x00007eff09234eea: shr    $0x9,%r10
  0.09%    0.06%  ││││ │  0x00007eff09234eee: movabs $0x7eff191f4000,%r11
  0.04%    0.06%  ││││ │  0x00007eff09234ef8: mov    %r12b,(%r11,%r10,1)  ;*putfield thread
                  ││││ │                                                ; - com.google.re2j.Machine::add@355 (line 401)
  0.93%    0.02%  ││││ │  0x00007eff09234efc: xor    %eax,%eax          ;*synchronization entry
                  ││││ │                                                ; - com.google.re2j.Machine::add@-1 (line 345)
  0.79%    1.42%  ↘↘↘│ │  0x00007eff09234efe: add    $0x60,%rsp
  0.14%    0.14%     │ │  0x00007eff09234f02: pop    %rbp
  0.76%    1.36%     │ │  0x00007eff09234f03: test   %eax,0x175b70f7(%rip)        # 0x00007eff207ec000
                     │ │                                                ;   {poll_return}
  0.92%    1.26%     │ │  0x00007eff09234f09: retq   
  0.04%    0.02%     ↘ │  0x00007eff09234f0a: mov    0x2c(%rsp),%r10d
                       │  0x00007eff09234f0f: mov    %r10d,0x10(%r13)
                       │  0x00007eff09234f13: mov    %r13,%r10
                       │  0x00007eff09234f16: shr    $0x9,%r10
  0.05%    0.01%       │  0x00007eff09234f1a: movabs $0x7eff191f4000,%r11
                       │  0x00007eff09234f24: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                       │                                                ; - com.google.re2j.Machine::add@317 (line 396)
                       ╰  0x00007eff09234f28: jmpq   0x00007eff09234e8a  ;*tableswitch
                                                                        ; - com.google.re2j.Machine::add@40 (line 353)
                          0x00007eff09234f2d: mov    0x1c(%rsp),%r8d
                          0x00007eff09234f32: mov    0x20(%rsp),%r9
                          0x00007eff09234f37: mov    0x70(%rsp),%r10
                          0x00007eff09234f3c: mov    %r10,(%rsp)
                          0x00007eff09234f40: data16 xchg %ax,%ax
                          0x00007eff09234f43: callq  0x00007eff09046020  ; OopMap{off=1224}
....................................................................................................
 22.42%   21.90%  <total for region 3>

....[Hottest Regions]...............................................................................
 29.65%   32.00%         C2, level 4  com.google.re2j.Machine::add, version 523 (266 bytes) 
 27.73%   27.77%         C2, level 4  com.google.re2j.Machine::step, version 529 (458 bytes) 
 22.42%   21.90%         C2, level 4  com.google.re2j.Machine::add, version 523 (323 bytes) 
  8.29%    8.81%         C2, level 4  com.google.re2j.Machine::match, version 568 (792 bytes) 
  6.92%    5.68%        runtime stub  StubRoutines::jint_disjoint_arraycopy (128 bytes) 
  1.33%    1.04%         C2, level 4  com.google.re2j.Machine::step, version 529 (77 bytes) 
  0.38%    0.34%         C2, level 4  com.google.re2j.Machine::step, version 529 (15 bytes) 
  0.32%    0.36%         C2, level 4  com.google.re2j.Machine::match, version 568 (96 bytes) 
  0.25%    0.23%   [kernel.kallsyms]  [unknown] (6 bytes) 
  0.16%    0.05%         C2, level 4  com.google.re2j.Machine::init, version 577 (187 bytes) 
  0.16%    0.04%         C2, level 4  com.google.re2j.Machine::init, version 577 (90 bytes) 
  0.09%    0.00%   [kernel.kallsyms]  [unknown] (45 bytes) 
  0.08%    0.01%   [kernel.kallsyms]  [unknown] (6 bytes) 
  0.06%    0.00%         C2, level 4  com.google.re2j.Matcher::find, version 589 (0 bytes) 
  0.05%    0.00%         C2, level 4  com.google.re2j.Machine::init, version 577 (47 bytes) 
  0.04%    0.04%         C2, level 4  com.google.re2j.Machine::init, version 577 (0 bytes) 
  0.04%                  C2, level 4  com.google.re2j.Matcher::find, version 589 (76 bytes) 
  0.04%    0.03%         C2, level 4  com.google.re2j.Machine::step, version 529 (72 bytes) 
  0.03%                  C2, level 4  com.google.re2j.Machine::step, version 529 (8 bytes) 
  0.03%    0.02%         C2, level 4  com.google.re2j.Matcher::find, version 589 (10 bytes) 
  1.91%    1.65%  <...other 392 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 52.08%   53.90%         C2, level 4  com.google.re2j.Machine::add, version 523 
 29.51%   29.18%         C2, level 4  com.google.re2j.Machine::step, version 529 
  8.69%    9.19%         C2, level 4  com.google.re2j.Machine::match, version 568 
  6.92%    5.68%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
  1.10%    0.76%   [kernel.kallsyms]  [unknown] 
  0.47%    0.15%         C2, level 4  com.google.re2j.Machine::init, version 577 
  0.25%    0.08%         C2, level 4  com.google.re2j.Matcher::find, version 589 
  0.09%    0.06%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 653 
  0.06%    0.02%         C2, level 4  java.util.Collections::shuffle, version 594 
  0.06%    0.02%      hsdis-amd64.so  [unknown] 
  0.05%    0.03%           libjvm.so  GenericTaskQueueSet<OverflowTaskQueue<StarTask, (MemoryType)1, 131072u>, (MemoryType)1>::steal_best_of_2 
  0.04%    0.04%           libjvm.so  PSPromotionManager::copy_to_survivor_space<false> 
  0.03%    0.06%        libc-2.26.so  vfprintf 
  0.03%    0.03%           libjvm.so  PSPromotionManager::drain_stacks_depth 
  0.02%    0.00%  libpthread-2.26.so  __libc_write 
  0.02%    0.06%        libc-2.26.so  _IO_fwrite 
  0.02%    0.02%           libjvm.so  InstanceKlass::oop_push_contents 
  0.02%    0.02%           libjvm.so  StringTable::unlink_or_oops_do 
  0.02%    0.03%           libjvm.so  fileStream::write 
  0.01%                    libjvm.so  SpinPause 
  0.50%    0.40%  <...other 79 warm methods...>
....................................................................................................
100.00%   99.74%  <totals>

....[Distribution by Source]........................................................................
 91.17%   92.61%         C2, level 4
  6.93%    5.69%        runtime stub
  1.10%    0.76%   [kernel.kallsyms]
  0.47%    0.52%           libjvm.so
  0.13%    0.33%        libc-2.26.so
  0.07%    0.02%      hsdis-amd64.so
  0.06%    0.03%  libpthread-2.26.so
  0.02%    0.01%              [vdso]
  0.02%    0.00%         interpreter
  0.01%    0.01%         C1, level 3
  0.00%                 libverify.so
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:44

Benchmark                     Mode  Cnt     Score    Error  Units
Re2jFindRegex.testExp2       thrpt   20  7098.874 ± 37.713  ops/s
Re2jFindRegex.testExp2:·asm  thrpt            NaN             ---
