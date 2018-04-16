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
# Warmup Iteration   1: 1323.322 ops/s
# Warmup Iteration   2: 2227.066 ops/s
# Warmup Iteration   3: 2333.723 ops/s
# Warmup Iteration   4: 2320.225 ops/s
# Warmup Iteration   5: 2347.596 ops/s
# Warmup Iteration   6: 2291.605 ops/s
# Warmup Iteration   7: 2350.594 ops/s
# Warmup Iteration   8: 2354.805 ops/s
# Warmup Iteration   9: 2360.030 ops/s
# Warmup Iteration  10: 2337.344 ops/s
# Warmup Iteration  11: 2339.332 ops/s
# Warmup Iteration  12: 2326.264 ops/s
# Warmup Iteration  13: 2327.290 ops/s
# Warmup Iteration  14: 2334.215 ops/s
# Warmup Iteration  15: 2326.538 ops/s
# Warmup Iteration  16: 2329.320 ops/s
# Warmup Iteration  17: 2323.039 ops/s
# Warmup Iteration  18: 2337.180 ops/s
# Warmup Iteration  19: 2339.777 ops/s
# Warmup Iteration  20: 2336.612 ops/s
Iteration   1: 2346.722 ops/s
Iteration   2: 2327.654 ops/s
Iteration   3: 2299.019 ops/s
Iteration   4: 2355.407 ops/s
Iteration   5: 2352.929 ops/s
Iteration   6: 2371.052 ops/s
Iteration   7: 2349.308 ops/s
Iteration   8: 2351.643 ops/s
Iteration   9: 2338.075 ops/s
Iteration  10: 2323.381 ops/s
Iteration  11: 2340.901 ops/s
Iteration  12: 2322.994 ops/s
Iteration  13: 2338.363 ops/s
Iteration  14: 2332.180 ops/s
Iteration  15: 2337.336 ops/s
Iteration  16: 2366.776 ops/s
Iteration  17: 2369.164 ops/s
Iteration  18: 2371.557 ops/s
Iteration  19: 2365.066 ops/s
Iteration  20: 2339.864 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  2344.970 ±(99.9%) 16.436 ops/s [Average]
  (min, avg, max) = (2299.019, 2344.970, 2371.557), stdev = 18.927
  CI (99.9%): [2328.534, 2361.405] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine:·asm":
PrintAssembly processed: 208575 total address lines.
Perf output processed (skipped 23.086 seconds):
 Column 1: cycles (20623 events)
 Column 2: instructions (20612 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 546 (330 bytes) 

                       # parm4:    rdi       = int
                       # parm5:    [sp+0x70]   = &apos;com/google/re2j/Machine$Thread&apos;  (sp of caller)
                       0x00007f4d89243480: mov    0x8(%rsi),%r10d    ;   {no_reloc}
                       0x00007f4d89243484: shl    $0x3,%r10
                       0x00007f4d89243488: cmp    %r10,%rax
                       0x00007f4d8924348b: jne    0x00007f4d89045e20  ;   {runtime_call}
                       0x00007f4d89243491: data16 xchg %ax,%ax
                       0x00007f4d89243494: nopl   0x0(%rax,%rax,1)
                       0x00007f4d8924349c: data16 data16 xchg %ax,%ax
                     [Verified Entry Point]
  0.75%    0.67%       0x00007f4d892434a0: mov    %eax,-0x14000(%rsp)
  0.24%    0.37%       0x00007f4d892434a7: push   %rbp
  0.64%    0.66%       0x00007f4d892434a8: sub    $0x60,%rsp         ;*synchronization entry
                                                                     ; - com.google.re2j.Machine::add@-1 (line 344)
  0.25%    0.29%       0x00007f4d892434ac: mov    %edi,0x28(%rsp)
  0.11%    0.13%       0x00007f4d892434b0: mov    %r9,0x20(%rsp)
  0.60%    0.65%       0x00007f4d892434b5: mov    %r8d,0x1c(%rsp)
  0.15%    0.15%       0x00007f4d892434ba: mov    %rsi,0x8(%rsp)
  0.30%    0.26%       0x00007f4d892434bf: mov    %ecx,0x40(%rsp)
  0.14%    0.04%       0x00007f4d892434c3: test   %ecx,%ecx
                       0x00007f4d892434c5: je     0x00007f4d89243a91  ;*ifne
                                                                     ; - com.google.re2j.Machine::add@1 (line 344)
  0.48%    0.54%       0x00007f4d892434cb: mov    %rdx,0x48(%rsp)
  0.12%    0.12%       0x00007f4d892434d0: mov    0x14(%rdx),%r8d    ;*getfield sparse
                                                                     ; - com.google.re2j.Machine$Queue::contains@1 (line 46)
                                                                     ; - com.google.re2j.Machine::add@9 (line 347)
                                                                     ; implicit exception: dispatches to 0x00007f4d89243c0d
  0.22%    0.26%       0x00007f4d892434d4: mov    0xc(%r12,%r8,8),%ecx  ; implicit exception: dispatches to 0x00007f4d89243c21
  0.12%    0.08%       0x00007f4d892434d9: mov    0x40(%rsp),%r10d
  0.80%    0.57%       0x00007f4d892434de: cmp    %ecx,%r10d
                       0x00007f4d892434e1: jae    0x00007f4d89243985  ;*iaload
                                                                     ; - com.google.re2j.Machine$Queue::contains@5 (line 46)
                                                                     ; - com.google.re2j.Machine::add@9 (line 347)
  0.17%    0.11%       0x00007f4d892434e7: mov    0x10(%rdx),%edi    ;*getfield dense
                                                                     ; - com.google.re2j.Machine$Queue::contains@18 (line 50)
                                                                     ; - com.google.re2j.Machine::add@9 (line 347)
  0.15%    0.24%       0x00007f4d892434ea: mov    0xc(%rdx),%r9d     ;*getfield size
                                                                     ; - com.google.re2j.Machine$Queue::contains@9 (line 47)
                                                                     ; - com.google.re2j.Machine::add@9 (line 347)
  0.09%    0.10%       0x00007f4d892434ee: lea    (%r12,%r8,8),%r11
  0.48%    0.47%       0x00007f4d892434f2: mov    0x40(%rsp),%ebx
  0.24%    0.15%       0x00007f4d892434f6: mov    0x10(%r11,%rbx,4),%ebp  ;*iaload
                                                                     ; - com.google.re2j.Machine$Queue::contains@5 (line 46)
                                                                     ; - com.google.re2j.Machine::add@9 (line 347)
  0.42%    0.35%       0x00007f4d892434fb: cmp    %r9d,%ebp
                  ╭    0x00007f4d892434fe: jl     0x00007f4d892435ce  ;*iastore
                  │                                                  ; - com.google.re2j.Machine$Queue::add@18 (line 58)
                  │                                                  ; - com.google.re2j.Machine::add@20 (line 350)
  0.87%    0.73%  │ ↗  0x00007f4d89243504: mov    %r9d,%r10d
  0.23%    0.24%  │ │  0x00007f4d89243507: inc    %r10d
  0.08%    0.05%  │ │  0x00007f4d8924350a: mov    %r10d,0xc(%rdx)    ;*putfield size
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@8 (line 57)
                  │ │                                                ; - com.google.re2j.Machine::add@20 (line 350)
  0.14%    0.14%  │ │  0x00007f4d8924350e: mov    0x40(%rsp),%r10d
  0.55%    0.37%  │ │  0x00007f4d89243513: cmp    %ecx,%r10d
                  │ │  0x00007f4d89243516: jae    0x00007f4d892439c1
  0.20%    0.29%  │ │  0x00007f4d8924351c: mov    %r9d,0x10(%r11,%r10,4)  ;*iastore
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@18 (line 58)
                  │ │                                                ; - com.google.re2j.Machine::add@20 (line 350)
  0.39%    0.17%  │ │  0x00007f4d89243521: mov    0xc(%r12,%rdi,8),%r10d  ; implicit exception: dispatches to 0x00007f4d89243c35
  0.14%    0.16%  │ │  0x00007f4d89243526: cmp    %r10d,%r9d
                  │ │  0x00007f4d89243529: jae    0x00007f4d89243a0d  ;*aaload
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@24 (line 59)
                  │ │                                                ; - com.google.re2j.Machine::add@20 (line 350)
  0.39%    0.34%  │ │  0x00007f4d8924352f: lea    (%r12,%rdi,8),%r10  ;*getfield dense
                  │ │                                                ; - com.google.re2j.Machine$Queue::contains@18 (line 50)
                  │ │                                                ; - com.google.re2j.Machine::add@9 (line 347)
  0.27%    0.18%  │ │  0x00007f4d89243533: mov    %r10,0x38(%rsp)
  0.17%    0.09%  │ │  0x00007f4d89243538: lea    0x10(%r10,%r9,4),%rbp
  0.09%    0.19%  │ │  0x00007f4d8924353d: mov    0x0(%rbp),%r11d    ;*aaload
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@24 (line 59)
                  │ │                                                ; - com.google.re2j.Machine::add@20 (line 350)
  0.66%    0.40%  │ │  0x00007f4d89243541: test   %r11d,%r11d
                  │╭│  0x00007f4d89243544: je     0x00007f4d892435fd  ;*ifnonnull
                  │││                                                ; - com.google.re2j.Machine$Queue::add@27 (line 60)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 350)
  0.27%    0.33%  │││  0x00007f4d8924354a: lea    (%r12,%r11,8),%rbx  ;*aload_3
                  │││                                                ; - com.google.re2j.Machine$Queue::add@45 (line 63)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 350)
  0.17%    0.17%  │││  0x00007f4d8924354e: mov    0x40(%rsp),%r10d
  0.23%    0.18%  │││  0x00007f4d89243553: mov    %r10d,0xc(%rbx)    ;*putfield pc
                  │││                                                ; - com.google.re2j.Machine$Queue::add@52 (line 64)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 350)
  0.95%    0.79%  │││  0x00007f4d89243557: mov    0x8(%rsp),%r10
  0.17%    0.12%  │││  0x00007f4d8924355c: mov    0x18(%r10),%r11d   ;*getfield prog
                  │││                                                ; - com.google.re2j.Machine::add@26 (line 351)
  0.21%    0.17%  │││  0x00007f4d89243560: mov    %r12d,0x10(%rbx)   ;*putfield thread
                  │││                                                ; - com.google.re2j.Machine$Queue::add@47 (line 63)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 350)
  0.18%    0.21%  │││  0x00007f4d89243564: mov    0x18(%r12,%r11,8),%ebp  ;*getfield inst
                  │││                                                ; - com.google.re2j.Prog::getInst@1 (line 30)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 351)
                  │││                                                ; implicit exception: dispatches to 0x00007f4d89243c49
  0.81%    0.67%  │││  0x00007f4d89243569: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f4d89243c5d
  0.66%    0.86%  │││  0x00007f4d8924356e: mov    0x40(%rsp),%r8d
  0.10%    0.08%  │││  0x00007f4d89243573: cmp    %r10d,%r8d
                  │││  0x00007f4d89243576: jae    0x00007f4d89243a59
  0.51%    0.54%  │││  0x00007f4d8924357c: lea    (%r12,%rbp,8),%r10
  0.45%    0.50%  │││  0x00007f4d89243580: mov    0x10(%r10,%r8,4),%r11d  ;*aaload
                  │││                                                ; - com.google.re2j.Prog::getInst@5 (line 30)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 351)
  0.17%    0.14%  │││  0x00007f4d89243585: mov    %r11d,0x2c(%rsp)
  0.16%    0.18%  │││  0x00007f4d8924358a: mov    0xc(%r12,%r11,8),%r11d  ;*getfield op
                  │││                                                ; - com.google.re2j.Machine::add@37 (line 352)
                  │││                                                ; implicit exception: dispatches to 0x00007f4d89243c71
  3.09%    2.88%  │││  0x00007f4d8924358f: mov    %r11d,%r10d
  0.07%    0.10%  │││  0x00007f4d89243592: dec    %r10d
  0.84%    0.78%  │││  0x00007f4d89243595: cmp    $0xb,%r10d
                  │││  0x00007f4d89243599: jae    0x00007f4d89243a81  ;*tableswitch
                  │││                                                ; - com.google.re2j.Machine::add@40 (line 352)
  0.88%    0.73%  │││  0x00007f4d8924359f: mov    0x2c(%rsp),%r10d
  0.03%    0.03%  │││  0x00007f4d892435a4: mov    0x10(%r12,%r10,8),%ecx  ;*getfield out
                  │││                                                ; - com.google.re2j.Machine::add@193 (line 372)
  1.65%    1.32%  │││  0x00007f4d892435a9: mov    0x14(%r12,%r10,8),%r9d  ;*getfield arg
                  │││                                                ; - com.google.re2j.Machine::add@156 (line 366)
  0.10%    0.08%  │││  0x00007f4d892435ae: movslq %r11d,%r10
  0.09%    0.04%  │││  0x00007f4d892435b1: mov    0x2c(%rsp),%r11d
  0.03%    0.04%  │││  0x00007f4d892435b6: shl    $0x3,%r11          ;*aaload
                  │││                                                ; - com.google.re2j.Prog::getInst@5 (line 30)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 351)
  0.83%    0.79%  │││  0x00007f4d892435ba: mov    %r11,0x30(%rsp)
  0.07%    0.09%  │││  0x00007f4d892435bf: movabs $0x7f4d89243420,%r11  ;   {section_word}
  0.04%    0.03%  │││  0x00007f4d892435c9: jmpq   *-0x8(%r11,%r10,8)  ;*tableswitch
                  │││                                                ; - com.google.re2j.Machine::add@40 (line 352)
  0.05%    0.07%  ↘││  0x00007f4d892435ce: mov    0xc(%r12,%rdi,8),%r10d  ; implicit exception: dispatches to 0x00007f4d89243cc9
  0.05%    0.07%   ││  0x00007f4d892435d3: cmp    %r10d,%ebp
                   ││  0x00007f4d892435d6: jae    0x00007f4d89243b25
  0.02%    0.04%   ││  0x00007f4d892435dc: lea    (%r12,%rdi,8),%r10
  0.01%    0.02%   ││  0x00007f4d892435e0: mov    0x10(%r10,%rbp,4),%ebp  ;*aaload
                   ││                                                ; - com.google.re2j.Machine$Queue::contains@22 (line 50)
                   ││                                                ; - com.google.re2j.Machine::add@9 (line 347)
  0.14%    0.14%   ││  0x00007f4d892435e5: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f4d89243cd9
  0.32%    0.31%   ││  0x00007f4d892435ea: cmp    %ebx,%r10d
                   │╰  0x00007f4d892435ed: jne    0x00007f4d89243504
                   │   0x00007f4d892435f3: mov    0x70(%rsp),%rax
                   │   0x00007f4d892435f8: jmpq   0x00007f4d8924383a
                   ↘   0x00007f4d892435fd: mov    0x60(%r15),%rbx
                       0x00007f4d89243601: mov    %rbx,%r10
                       0x00007f4d89243604: add    $0x18,%r10
                       0x00007f4d89243608: cmp    0x70(%r15),%r10
                       0x00007f4d8924360c: jae    0x00007f4d89243b71
                       0x00007f4d89243612: mov    %r10,0x60(%r15)
                       0x00007f4d89243616: prefetchnta 0xc0(%r10)
....................................................................................................
 24.02%   22.08%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 537 (604 bytes) 

                              # parm6:    [sp+0x78]   = int
                              # parm7:    [sp+0x80]   = boolean
                              0x00007f4d89244e80: mov    0x8(%rsi),%r10d
                              0x00007f4d89244e84: shl    $0x3,%r10
                              0x00007f4d89244e88: cmp    %r10,%rax
                              0x00007f4d89244e8b: jne    0x00007f4d89045e20  ;   {runtime_call}
                              0x00007f4d89244e91: data16 xchg %ax,%ax
                              0x00007f4d89244e94: nopl   0x0(%rax,%rax,1)
                              0x00007f4d89244e9c: data16 data16 xchg %ax,%ax
                            [Verified Entry Point]
  0.13%    0.06%              0x00007f4d89244ea0: mov    %eax,-0x14000(%rsp)
  0.07%    0.05%              0x00007f4d89244ea7: push   %rbp
  0.04%    0.02%              0x00007f4d89244ea8: sub    $0x60,%rsp         ;*synchronization entry
                                                                            ; - com.google.re2j.Machine::step@-1 (line 269)
  0.06%    0.04%              0x00007f4d89244eac: mov    %edi,0x20(%rsp)
  0.10%    0.05%              0x00007f4d89244eb0: mov    %r9d,0x14(%rsp)
  0.04%    0.01%              0x00007f4d89244eb5: mov    %rcx,0x18(%rsp)
  0.05%    0.05%              0x00007f4d89244eba: mov    %r8d,0x10(%rsp)
  0.02%    0.01%              0x00007f4d89244ebf: mov    %rdx,0x8(%rsp)
  0.06%    0.03%              0x00007f4d89244ec4: mov    %rsi,0x28(%rsp)
  0.02%                       0x00007f4d89244ec9: mov    0x14(%rsi),%r10d   ;*getfield re2
                                                                            ; - com.google.re2j.Machine::step@1 (line 269)
  0.05%    0.06%              0x00007f4d89244ecd: movzbl 0x18(%r12,%r10,8),%r11d  ;*getfield longest
                                                                            ; - com.google.re2j.Machine::step@4 (line 269)
                                                                            ; implicit exception: dispatches to 0x00007f4d89245e41
  0.01%    0.00%              0x00007f4d89244ed3: mov    %r11d,0x24(%rsp)
  0.09%    0.06%              0x00007f4d89244ed8: mov    0xc(%rdx),%r11d    ; implicit exception: dispatches to 0x00007f4d89245e51
  0.01%                       0x00007f4d89244edc: test   %r11d,%r11d
                              0x00007f4d89244edf: jle    0x00007f4d892451be  ;*if_icmpge
                                                                            ; - com.google.re2j.Machine::step@18 (line 270)
  0.03%    0.06%              0x00007f4d89244ee5: xor    %r10d,%r10d
                  ╭           0x00007f4d89244ee8: jmpq   0x00007f4d89244f87
  0.06%    0.08%  │  ↗        0x00007f4d89244eed: mov    0xc(%r12,%rdi,8),%ebx  ; implicit exception: dispatches to 0x00007f4d89245e31
  0.25%    0.34%  │  │        0x00007f4d89244ef2: test   %ebx,%ebx
                  │  │        0x00007f4d89244ef4: jbe    0x00007f4d892456f9  ;*iaload
                  │  │                                                      ; - com.google.re2j.Machine::step@310 (line 314)
  0.08%    0.07%  │  │        0x00007f4d89244efa: mov    0x10(%r12,%rdi,8),%ebx
  0.01%    0.00%  │  │        0x00007f4d89244eff: mov    0x20(%rsp),%ecx
                  │  │        0x00007f4d89244f03: cmp    %ebx,%ecx
                  │  │        0x00007f4d89244f05: je     0x00007f4d8924550a  ;*goto
                  │  │                                                      ; - com.google.re2j.Machine::step@299 (line 311)
  0.36%    0.28%  │  │  ↗     0x00007f4d89244f0b: mov    %r11,%r9           ;*aload
                  │  │  │                                                   ; - com.google.re2j.Machine::step@385 (line 331)
  0.14%    0.08%  │  │  │ ↗   0x00007f4d89244f0e: mov    0x28(%rsp),%r11
  0.04%    0.02%  │  │  │ │   0x00007f4d89244f13: mov    0x24(%r11),%r8d    ;*getfield pool
                  │  │  │ │                                                 ; - com.google.re2j.Machine::free@5 (line 160)
                  │  │  │ │                                                 ; - com.google.re2j.Machine::step@393 (line 332)
  0.00%    0.00%  │  │  │ │   0x00007f4d89244f17: mov    0xc(%r12,%r8,8),%r11d  ;*arraylength
                  │  │  │ │                                                 ; - com.google.re2j.Machine::free@8 (line 160)
                  │  │  │ │                                                 ; - com.google.re2j.Machine::step@393 (line 332)
                  │  │  │ │                                                 ; implicit exception: dispatches to 0x00007f4d89245db9
  0.35%    0.31%  │  │  │ │   0x00007f4d89244f1c: mov    0x28(%rsp),%rbx
  0.12%    0.06%  │  │  │ │   0x00007f4d89244f21: mov    0xc(%rbx),%ebp     ;*getfield poolSize
                  │  │  │ │                                                 ; - com.google.re2j.Machine::free@1 (line 160)
                  │  │  │ │                                                 ; - com.google.re2j.Machine::step@393 (line 332)
  0.04%    0.00%  │  │  │ │   0x00007f4d89244f24: cmp    %r11d,%ebp
                  │  │  │ │   0x00007f4d89244f27: jge    0x00007f4d89245789  ;*if_icmplt
                  │  │  │ │                                                 ; - com.google.re2j.Machine::free@9 (line 160)
                  │  │  │ │                                                 ; - com.google.re2j.Machine::step@393 (line 332)
  0.01%    0.00%  │  │  │ │   0x00007f4d89244f2d: mov    %ebp,%edi
  0.33%    0.31%  │  │  │ │   0x00007f4d89244f2f: inc    %edi
  0.16%    0.13%  │  │  │ │   0x00007f4d89244f31: mov    %edi,0xc(%rbx)     ;*putfield poolSize
                  │  │  │ │                                                 ; - com.google.re2j.Machine::free@45 (line 163)
                  │  │  │ │                                                 ; - com.google.re2j.Machine::step@393 (line 332)
  0.03%    0.01%  │  │  │ │   0x00007f4d89244f34: cmp    %r11d,%ebp
                  │  │  │ │   0x00007f4d89244f37: jae    0x00007f4d89245631  ;*aastore
                  │  │  │ │                                                 ; - com.google.re2j.Machine::free@49 (line 163)
                  │  │  │ │                                                 ; - com.google.re2j.Machine::step@393 (line 332)
  0.02%           │  │  │ │   0x00007f4d89244f3d: mov    %r9,%r10
  0.32%    0.33%  │  │  │ │   0x00007f4d89244f40: shr    $0x3,%r10
  0.15%    0.13%  │  │  │ │   0x00007f4d89244f44: lea    (%r12,%r8,8),%r11  ;*getfield pool
                  │  │  │ │                                                 ; - com.google.re2j.Machine::free@5 (line 160)
                  │  │  │ │                                                 ; - com.google.re2j.Machine::step@393 (line 332)
  0.03%    0.01%  │  │  │ │   0x00007f4d89244f48: lea    0x10(%r11,%rbp,4),%r11
  0.03%    0.01%  │  │  │ │   0x00007f4d89244f4d: mov    %r10d,(%r11)
  0.33%    0.39%  │  │  │ │   0x00007f4d89244f50: mov    %r11,%r10
  0.12%    0.13%  │  │  │ │   0x00007f4d89244f53: shr    $0x9,%r10
  0.03%    0.01%  │  │  │ │   0x00007f4d89244f57: movabs $0x7f4d98fef000,%r11
  0.01%    0.01%  │  │  │ │   0x00007f4d89244f61: mov    %r12b,(%r11,%r10,1)  ;*aastore
                  │  │  │ │                                                 ; - com.google.re2j.Machine::free@49 (line 163)
                  │  │  │ │                                                 ; - com.google.re2j.Machine::step@393 (line 332)
  0.32%    0.40%  │  │  │ │   0x00007f4d89244f65: xor    %r11d,%r11d        ; OopMap{[8]=Oop [24]=Oop [40]=Oop off=232}
                  │  │  │ │                                                 ;*goto
                  │  │  │ │                                                 ; - com.google.re2j.Machine::step@399 (line 270)
  0.22%    0.18%  │ ↗│  │ │   0x00007f4d89244f68: test   %eax,0x173a2092(%rip)        # 0x00007f4da05e7000
                  │ ││  │ │                                                 ;*goto
                  │ ││  │ │                                                 ; - com.google.re2j.Machine::step@399 (line 270)
                  │ ││  │ │                                                 ;   {poll}
  0.25%    0.25%  │ ││  │ │   0x00007f4d89244f6e: mov    0x8(%rsp),%r10
  0.12%    0.07%  │ ││  │ │   0x00007f4d89244f73: mov    0xc(%r10),%r11d
  0.51%    0.42%  │ ││  │ │   0x00007f4d89244f77: cmp    %r11d,%eax
                  │ ││  │ │   0x00007f4d89244f7a: jge    0x00007f4d892451be
  0.16%    0.15%  │ ││  │ │   0x00007f4d89244f80: mov    %ecx,0x20(%rsp)
  0.19%    0.16%  │ ││  │ │   0x00007f4d89244f84: mov    %eax,%r10d         ;*aload_1
                  │ ││  │ │                                                 ; - com.google.re2j.Machine::step@21 (line 271)
  0.13%    0.12%  ↘ ││  │ │   0x00007f4d89244f87: mov    0x8(%rsp),%r11
  0.40%    0.36%    ││  │ │   0x00007f4d89244f8c: mov    0x10(%r11),%r8d    ;*getfield dense
                    ││  │ │                                                 ; - com.google.re2j.Machine::step@22 (line 271)
  0.39%    0.42%    ││  │ │   0x00007f4d89244f90: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x00007f4d89245d61
  0.48%    0.41%    ││  │ │   0x00007f4d89244f95: cmp    %r11d,%r10d
                    ││  │ │   0x00007f4d89244f98: jae    0x00007f4d8924552c
  0.18%    0.17%    ││  │ │   0x00007f4d89244f9e: lea    (%r12,%r8,8),%r11
  0.49%    0.35%    ││  │ │   0x00007f4d89244fa2: mov    0x10(%r11,%r10,4),%r11d  ;*aaload
                    ││  │ │                                                 ; - com.google.re2j.Machine::step@27 (line 271)
  0.35%    0.25%    ││  │ │   0x00007f4d89244fa7: mov    0x10(%r12,%r11,8),%r8d  ;*getfield thread
                    ││  │ │                                                 ; - com.google.re2j.Machine::step@40 (line 275)
                    ││  │ │                                                 ; implicit exception: dispatches to 0x00007f4d89245dd9
  0.84%    0.89%    ││  │ │   0x00007f4d89244fac: mov    %r10d,%eax
  0.11%    0.06%    ││  │ │   0x00007f4d89244faf: inc    %eax               ;*iadd
                    ││  │ │                                                 ; - com.google.re2j.Machine::step@233 (line 298)
  0.33%    0.32%    ││  │ │   0x00007f4d89244fb1: test   %r8d,%r8d
                   ╭││  │ │   0x00007f4d89244fb4: jne    0x00007f4d89244fc1  ;*ifnonnull
                   │││  │ │                                                 ; - com.google.re2j.Machine::step@47 (line 276)
  0.18%    0.17%   │││  │ │   0x00007f4d89244fb6: mov    0x24(%rsp),%r11d
  0.07%    0.06%   │││  │ │   0x00007f4d89244fbb: mov    0x20(%rsp),%ecx
  0.07%    0.05%   │╰│  │ │   0x00007f4d89244fbf: jmp    0x00007f4d89244f68
  0.18%    0.17%   ↘ │  │ │   0x00007f4d89244fc1: mov    0x24(%rsp),%r9d
  0.12%    0.09%     │  │ │   0x00007f4d89244fc6: test   %r9d,%r9d
                     │  │ │   0x00007f4d89244fc9: jne    0x00007f4d89245741  ;*ifeq
                     │  │ │                                                 ; - com.google.re2j.Machine::step@55 (line 279)
  0.02%    0.03%     │  │ │   0x00007f4d89244fcf: mov    0x10(%r12,%r8,8),%r9d  ;*getfield inst
                     │  │ │                                                 ; - com.google.re2j.Machine::step@101 (line 283)
  1.18%    1.31%     │  │ │   0x00007f4d89244fd4: mov    0x18(%r12,%r9,8),%edi  ;*getfield runes
                     │  │ │                                                 ; - com.google.re2j.Machine::step@306 (line 314)
                     │  │ │                                                 ; implicit exception: dispatches to 0x00007f4d89245da9
  2.43%    3.41%     │  │ │   0x00007f4d89244fd9: mov    0xc(%r12,%r9,8),%ecx  ;*getfield op
                     │  │ │                                                 ; - com.google.re2j.Machine::step@111 (line 285)
  0.08%    0.12%     │  │ │   0x00007f4d89244fde: mov    0xc(%r12,%r8,8),%r14d  ;*getfield cap
                     │  │ │                                                 ; - com.google.re2j.Machine::step@168 (line 292)
                     │  │ │   0x00007f4d89244fe3: lea    (%r12,%r8,8),%r11  ;*getfield thread
                     │  │ │                                                 ; - com.google.re2j.Machine::step@40 (line 275)
  0.07%    0.03%     │  │ │   0x00007f4d89244fe7: cmp    $0x9,%ecx
                     ╰  │ │   0x00007f4d89244fea: je     0x00007f4d89244eed
  0.38%    0.53%        │ │   0x00007f4d89244ff0: cmp    $0x9,%ecx
                      ╭ │ │   0x00007f4d89244ff3: jle    0x00007f4d89245072
  0.01%    0.01%      │ │ │   0x00007f4d89244ff5: cmp    $0xb,%ecx
                      │╭│ │   0x00007f4d89244ff8: jne    0x00007f4d89245015  ;*tableswitch
                      │││ │                                                 ; - com.google.re2j.Machine::step@114 (line 285)
                      │││ │   0x00007f4d89244ffa: mov    0x20(%rsp),%ecx
                      │││ │   0x00007f4d89244ffe: cmp    $0xa,%ecx
                      ││╰ │   0x00007f4d89245001: je     0x00007f4d89244f0b  ;*if_icmpeq
                      ││  │                                                 ; - com.google.re2j.Machine::step@334 (line 322)
                      ││  │   0x00007f4d89245007: mov    %r10d,0x74(%rsp)
                      ││  │   0x00007f4d8924500c: mov    %eax,0x7c(%rsp)
                      ││  │   0x00007f4d89245010: mov    %r11,%r13
                      ││ ╭│   0x00007f4d89245013: jmp    0x00007f4d8924502a
  0.06%    0.03%      │↘ ││   0x00007f4d89245015: cmp    $0xb,%ecx
                      │  ││   0x00007f4d89245018: jg     0x00007f4d892457c1  ;*tableswitch
                      │  ││                                                 ; - com.google.re2j.Machine::step@114 (line 285)
  0.04%    0.03%      │  ││   0x00007f4d8924501e: mov    %r10d,0x74(%rsp)
           0.00%      │  ││   0x00007f4d89245023: mov    %eax,0x7c(%rsp)
  0.00%               │  ││   0x00007f4d89245027: mov    %r11,%r13          ;*ifeq
                      │  ││                                                 ; - com.google.re2j.Machine::step@359 (line 328)
  0.03%    0.03%      │  ↘│   0x00007f4d8924502a: mov    0x10(%r12,%r9,8),%ecx  ;*getfield out
                      │   │                                                 ; - com.google.re2j.Machine::step@366 (line 329)
  0.02%    0.04%      │   │   0x00007f4d8924502f: mov    %r14,%r9
  0.00%               │   │   0x00007f4d89245032: shl    $0x3,%r9           ;*getfield cap
                      │   │                                                 ; - com.google.re2j.Machine::step@168 (line 292)
  0.00%               │   │   0x00007f4d89245036: mov    0x28(%rsp),%rsi
  0.08%    0.01%      │   │   0x00007f4d8924503b: mov    0x18(%rsp),%rdx
  0.01%    0.01%      │   │   0x00007f4d89245040: mov    0x14(%rsp),%r8d
                      │   │   0x00007f4d89245045: mov    0x70(%rsp),%edi
  0.01%    0.01%      │   │   0x00007f4d89245049: mov    %r13,(%rsp)
  0.00%    0.05%      │   │   0x00007f4d8924504d: xchg   %ax,%ax
  0.04%    0.01%      │   │   0x00007f4d8924504f: callq  0x00007f4d89046020  ; OopMap{[8]=Oop [24]=Oop [40]=Oop off=468}
                      │   │                                                 ;*invokespecial add
                      │   │                                                 ; - com.google.re2j.Machine::step@380 (line 329)
                      │   │                                                 ;   {optimized virtual_call}
  0.00%               │   │   0x00007f4d89245054: mov    %rax,%r9
                      │   │   0x00007f4d89245057: test   %rax,%rax
                      │   │   0x00007f4d8924505a: je     0x00007f4d892454d6  ;*ifnull
                      │   │                                                 ; - com.google.re2j.Machine::step@387 (line 331)
  0.00%               │   │   0x00007f4d89245060: mov    0x20(%rsp),%ecx
                      │   │   0x00007f4d89245064: mov    0x74(%rsp),%r10d
                      │   │   0x00007f4d89245069: mov    0x7c(%rsp),%eax
                      │   ╰   0x00007f4d8924506d: jmpq   0x00007f4d89244f0e
  0.12%    0.14%      ↘       0x00007f4d89245072: cmp    $0x7,%ecx
                              0x00007f4d89245075: je     0x00007f4d892457c1  ;*tableswitch
                                                                            ; - com.google.re2j.Machine::step@114 (line 285)
  0.31%    0.38%              0x00007f4d8924507b: lea    (%r12,%r9,8),%rbx  ;*getfield inst
                                                                            ; - com.google.re2j.Machine::step@101 (line 283)
                              0x00007f4d8924507f: cmp    $0x7,%ecx
                           ╭  0x00007f4d89245082: jle    0x00007f4d89245101  ;*tableswitch
                           │                                                ; - com.google.re2j.Machine::step@114 (line 285)
  0.36%    0.38%           │  0x00007f4d89245084: mov    0xc(%r12,%rdi,8),%ebp  ;*arraylength
                           │                                                ; - com.google.re2j.Inst::matchRune@4 (line 49)
                           │                                                ; - com.google.re2j.Machine::step@294 (line 310)
                           │                                                ; implicit exception: dispatches to 0x00007f4d89245e71
  0.74%    0.78%           │  0x00007f4d89245089: cmp    $0x1,%ebp
                           │  0x00007f4d8924508c: jne    0x00007f4d89245a3d  ;*if_icmpne
                           │                                                ; - com.google.re2j.Inst::matchRune@6 (line 49)
                           │                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.43%    0.41%           │  0x00007f4d89245092: test   %ebp,%ebp
                           │  0x00007f4d89245094: jbe    0x00007f4d89245899
  0.07%    0.09%           │  0x00007f4d8924509a: mov    0x10(%r12,%rdi,8),%edi  ;*iaload
                           │                                                ; - com.google.re2j.Inst::matchRune@14 (line 50)
                           │                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.00%    0.01%           │  0x00007f4d8924509f: mov    0x20(%rsp),%ecx
  0.02%    0.01%           │  0x00007f4d892450a3: cmp    %edi,%ecx
                           │  0x00007f4d892450a5: je     0x00007f4d8924551b  ;*if_icmpne
                           │                                                ; - com.google.re2j.Inst::matchRune@18 (line 51)
                           │                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.40%    0.39%           │  0x00007f4d892450ab: mov    $0x1,%ebp
  0.02%    0.00%           │  0x00007f4d892450b0: and    0x14(%r12,%r9,8),%ebp  ;*iand
                           │                                                ; - com.google.re2j.Inst::matchRune@28 (line 54)
                           │                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.01%                    │  0x00007f4d892450b5: test   %ebp,%ebp
                           │  0x00007f4d892450b7: je     0x00007f4d89245b25  ;*ifeq
                           │                                                ; - com.google.re2j.Inst::matchRune@29 (line 54)
                           │                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.00%    0.03%           │  0x00007f4d892450bd: mov    %edi,%edx
  0.32%    0.47%           │  0x00007f4d892450bf: vmovq  %rbx,%xmm0
  0.02%    0.02%           │  0x00007f4d892450c4: mov    %r11,%r13
           0.01%           │  0x00007f4d892450c7: mov    %r9d,%edi
           0.03%           │  0x00007f4d892450ca: mov    %eax,0x7c(%rsp)
  0.35%    0.39%           │  0x00007f4d892450ce: mov    %r8d,%ebx
  0.03%    0.03%           │  0x00007f4d892450d1: mov    %r10d,0x74(%rsp)
                           │  0x00007f4d892450d6: movabs $0x76dd0c3b8,%r9   ;   {oop(a {type array int}[63] )}
  0.02%    0.00%           │  0x00007f4d892450e0: mov    $0x1f,%esi
  0.37%    0.35%           │  0x00007f4d892450e5: mov    $0x1f,%r8d
  0.01%    0.01%           │  0x00007f4d892450eb: xor    %r10d,%r10d
                           │  0x00007f4d892450ee: mov    $0x3f,%r11d
  0.02%    0.01%           │  0x00007f4d892450f4: mov    %r10d,0x20(%rsp)
  0.35%    0.22%           │  0x00007f4d892450f9: mov    %r11d,%eax
  0.01%    0.01%           │  0x00007f4d892450fc: jmpq   0x00007f4d89245202
                           ↘  0x00007f4d89245101: cmp    $0x6,%ecx
                              0x00007f4d89245104: jne    0x00007f4d892457c1  ;*tableswitch
                                                                            ; - com.google.re2j.Machine::step@114 (line 285)
                              0x00007f4d8924510a: mov    0x78(%rsp),%ecx
                              0x00007f4d8924510e: cmp    $0x2,%ecx
                              0x00007f4d89245111: je     0x00007f4d892454e6  ;*aload
                                                                            ; - com.google.re2j.Machine::step@166 (line 292)
                              0x00007f4d89245117: mov    0xc(%r12,%r14,8),%edx  ;*arraylength
                                                                            ; - com.google.re2j.Machine::step@171 (line 292)
                                                                            ; implicit exception: dispatches to 0x00007f4d89245e91
....................................................................................................
 18.48%   18.67%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 537 (384 bytes) 

                                                                         ; - com.google.re2j.Machine::step@242 (line 298)
                           0x00007f4d8924537f: mov    0x8(%rsp),%r8
                           0x00007f4d89245384: mov    %r12d,0xc(%r8)     ;*putfield size
                                                                         ; - com.google.re2j.Machine::step@279 (line 304)
                           0x00007f4d89245388: mov    0x28(%rsp),%r8
                           0x00007f4d8924538d: movb   $0x1,0x10(%r8)     ;*putfield matched
                                                                         ; - com.google.re2j.Machine::step@284 (line 306)
                           0x00007f4d89245392: mov    0x20(%rsp),%ecx
                           0x00007f4d89245396: jmpq   0x00007f4d89244f0b
                           0x00007f4d8924539b: nopl   0x0(%rax,%rax,1)
  0.66%    0.82%   ↗       0x00007f4d892453a0: mov    %r8d,0x30(%rsp)
  0.62%    0.80%   │       0x00007f4d892453a5: mov    %r10d,%edx
  0.28%    0.39%   │       0x00007f4d892453a8: mov    %r10d,%r11d
  0.27%    0.42%   │       0x00007f4d892453ab: sub    %r8d,%r11d         ;*isub
                   │                                                     ; - com.google.re2j.Unicode::simpleFold@15 (line 208)
                   │                                                     ; - com.google.re2j.Inst::matchRune@50 (line 57)
                   │                                                     ; - com.google.re2j.Machine::step@294 (line 310)
  0.70%    0.72%   │       0x00007f4d892453ae: mov    %r11d,%r8d
  0.79%    0.86%   │       0x00007f4d892453b1: sar    $0x1f,%r8d
  0.26%    0.43%   │       0x00007f4d892453b5: shr    $0x1f,%r8d
  0.18%    0.32%   │       0x00007f4d892453b9: add    %r11d,%r8d
  0.64%    0.94%   │       0x00007f4d892453bc: sar    %r8d
  0.64%    0.98%   │       0x00007f4d892453bf: mov    0x30(%rsp),%r10d
  0.34%    0.31%   │       0x00007f4d892453c4: add    %r8d,%r10d         ;*idiv
                   │                                                     ; - com.google.re2j.Unicode::simpleFold@17 (line 208)
                   │                                                     ; - com.google.re2j.Inst::matchRune@50 (line 57)
                   │                                                     ; - com.google.re2j.Machine::step@294 (line 310)
  0.45%    0.70%   │   ↗   0x00007f4d892453c7: cmp    $0x3f,%r10d
                   │   │   0x00007f4d892453cb: jae    0x00007f4d892455a9
  0.81%    0.97%   │   │   0x00007f4d892453d1: movslq 0x30(%rsp),%r11
  0.92%    1.08%   │   │   0x00007f4d892453d6: movslq %r8d,%r8
  0.31%    0.50%   │   │   0x00007f4d892453d9: add    %r8,%r11
  0.52%    0.51%   │   │   0x00007f4d892453dc: mov    0x10(%r9,%r11,4),%ebp  ;*aaload
                   │   │                                                 ; - com.google.re2j.Unicode::simpleFold@24 (line 209)
                   │   │                                                 ; - com.google.re2j.Inst::matchRune@50 (line 57)
                   │   │                                                 ; - com.google.re2j.Machine::step@294 (line 310)
  0.83%    0.96%   │   │   0x00007f4d892453e1: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f4d89245d99
  1.62%    1.66%   │   │   0x00007f4d892453e6: test   %r11d,%r11d
                   │   │   0x00007f4d892453e9: jbe    0x00007f4d892455f5  ;*iaload
                   │   │                                                 ; - com.google.re2j.Unicode::simpleFold@26 (line 209)
                   │   │                                                 ; - com.google.re2j.Inst::matchRune@50 (line 57)
                   │   │                                                 ; - com.google.re2j.Machine::step@294 (line 310)
  1.06%    1.23%   │   │   0x00007f4d892453ef: mov    0x10(%r12,%rbp,8),%r11d
  0.35%    0.41%   │   │   0x00007f4d892453f4: cmp    0x20(%rsp),%r11d
                  ╭│   │   0x00007f4d892453f9: jl     0x00007f4d892454c8  ;*if_icmpge
                  ││   │                                                 ; - com.google.re2j.Unicode::simpleFold@28 (line 209)
                  ││   │                                                 ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  ││   │                                                 ; - com.google.re2j.Machine::step@294 (line 310)
  0.99%    1.28%  ││   │   0x00007f4d892453ff: mov    0x30(%rsp),%r8d    ; OopMap{r9=Oop rbx=NarrowOop rdi=NarrowOop r13=Oop r14=NarrowOop xmm0=Oop [8]=Oop [24]=Oop [40]=Oop off=1412}
                  ││   │                                                 ;*goto
                  ││   │                                                 ; - com.google.re2j.Unicode::simpleFold@40 (line 214)
                  ││   │                                                 ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  ││   │                                                 ; - com.google.re2j.Machine::step@294 (line 310)
  0.69%    1.00%  ││   │↗  0x00007f4d89245404: test   %eax,0x173a1bf6(%rip)        # 0x00007f4da05e7000
                  ││   ││                                                ;*goto
                  ││   ││                                                ; - com.google.re2j.Unicode::simpleFold@40 (line 214)
                  ││   ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  ││   ││                                                ; - com.google.re2j.Machine::step@294 (line 310)
                  ││   ││                                                ;   {poll}
  0.30%    0.31%  ││   ││  0x00007f4d8924540a: cmp    %r10d,%r8d
                  │╰   ││  0x00007f4d8924540d: jl     0x00007f4d892453a0  ;*if_icmpge
                  │    ││                                                ; - com.google.re2j.Unicode::simpleFold@9 (line 207)
                  │    ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  │    ││                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.00%    0.01%  │    ││  0x00007f4d8924540f: cmp    $0x3f,%r8d
                  │    ││  0x00007f4d89245413: jge    0x00007f4d89245971  ;*if_icmpge
                  │    ││                                                ; - com.google.re2j.Unicode::simpleFold@48 (line 215)
                  │    ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  │    ││                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.23%    0.28%  │    ││  0x00007f4d89245419: cmp    $0x3f,%r8d
                  │    ││  0x00007f4d8924541d: jae    0x00007f4d892457d1
  0.12%    0.10%  │    ││  0x00007f4d89245423: mov    0x10(%r9,%r8,4),%ebp  ;*aaload
                  │    ││                                                ; - com.google.re2j.Unicode::simpleFold@55 (line 215)
                  │    ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  │    ││                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.00%    0.01%  │    ││  0x00007f4d89245428: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f4d89245e61
           0.01%  │    ││  0x00007f4d8924542d: test   %r11d,%r11d
                  │    ││  0x00007f4d89245430: jbe    0x00007f4d89245819
  0.27%    0.30%  │    ││  0x00007f4d89245436: mov    0x10(%r12,%rbp,8),%ebp  ;*iaload
                  │    ││                                                ; - com.google.re2j.Unicode::simpleFold@57 (line 215)
                  │    ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  │    ││                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.12%    0.16%  │    ││  0x00007f4d8924543b: cmp    0x20(%rsp),%ebp
                  │    ││  0x00007f4d8924543f: je     0x00007f4d892459b9  ;*if_icmpne
                  │    ││                                                ; - com.google.re2j.Unicode::simpleFold@59 (line 215)
                  │    ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  │    ││                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.01%    0.01%  │    ││  0x00007f4d89245445: mov    0x20(%rsp),%r8d
           0.00%  │    ││  0x00007f4d8924544a: cmp    $0x7f,%r8d
                  │    ││  0x00007f4d8924544e: jg     0x00007f4d892459f1  ;*if_icmpgt
                  │    ││                                                ; - com.google.re2j.Unicode::toLower@3 (line 177)
                  │    ││                                                ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                  │    ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  │    ││                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.30%    0.39%  │    ││  0x00007f4d89245454: cmp    $0x41,%r8d
                  │    ││  0x00007f4d89245458: jl     0x00007f4d89245925  ;*if_icmpgt
                  │    ││                                                ; - com.google.re2j.Unicode::toLower@9 (line 178)
                  │    ││                                                ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                  │    ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  │    ││                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.12%    0.16%  │    ││  0x00007f4d8924545e: cmp    $0x5a,%r8d
                  │ ╭  ││  0x00007f4d89245462: jg     0x00007f4d89245470  ;*if_icmpgt
                  │ │  ││                                                ; - com.google.re2j.Unicode::toLower@15 (line 178)
                  │ │  ││                                                ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                  │ │  ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  │ │  ││                                                ; - com.google.re2j.Machine::step@294 (line 310)
                  │ │  ││  0x00007f4d89245464: mov    %r8d,%r10d
                  │ │  ││  0x00007f4d89245467: add    $0x20,%r10d        ;*iinc
                  │ │  ││                                                ; - com.google.re2j.Unicode::toLower@18 (line 179)
                  │ │  ││                                                ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                  │ │  ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  │ │  ││                                                ; - com.google.re2j.Machine::step@294 (line 310)
                  │ │  ││  0x00007f4d8924546b: cmp    %r8d,%r10d
                  │ │╭ ││  0x00007f4d8924546e: jne    0x00007f4d8924548b  ;*if_icmpeq
                  │ ││ ││                                                ; - com.google.re2j.Unicode::simpleFold@77 (line 224)
                  │ ││ ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  │ ││ ││                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.01%    0.01%  │ ↘│ ││  0x00007f4d89245470: cmp    $0x61,%r8d
                  │  │ ││  0x00007f4d89245474: jl     0x00007f4d89245c41  ;*if_icmpgt
                  │  │ ││                                                ; - com.google.re2j.Unicode::toUpper@9 (line 167)
                  │  │ ││                                                ; - com.google.re2j.Unicode::simpleFold@83 (line 227)
                  │  │ ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  │  │ ││                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.01%    0.01%  │  │ ││  0x00007f4d8924547a: cmp    $0x7a,%r8d
                  │  │ ││  0x00007f4d8924547e: jg     0x00007f4d89245c89  ;*if_icmpgt
                  │  │ ││                                                ; - com.google.re2j.Unicode::toUpper@15 (line 167)
                  │  │ ││                                                ; - com.google.re2j.Unicode::simpleFold@83 (line 227)
                  │  │ ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  │  │ ││                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.23%    0.27%  │  │ ││  0x00007f4d89245484: mov    %r8d,%r10d
  0.15%    0.16%  │  │ ││  0x00007f4d89245487: add    $0xffffffe0,%r10d  ; OopMap{r9=Oop rbx=NarrowOop rdi=NarrowOop r13=Oop r14=NarrowOop xmm0=Oop [8]=Oop [24]=Oop [40]=Oop off=1547}
                  │  │ ││                                                ;*goto
                  │  │ ││                                                ; - com.google.re2j.Inst::matchRune@54 (line 57)
                  │  │ ││                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.01%    0.01%  │  ↘ ││  0x00007f4d8924548b: test   %eax,0x173a1b6f(%rip)        # 0x00007f4da05e7000
                  │    ││                                                ;*goto
                  │    ││                                                ; - com.google.re2j.Inst::matchRune@54 (line 57)
                  │    ││                                                ; - com.google.re2j.Machine::step@294 (line 310)
                  │    ││                                                ;   {poll}
                  │    ││  0x00007f4d89245491: cmp    %eax,%r10d
                  │    ││  0x00007f4d89245494: je     0x00007f4d892452cd  ;*if_icmpeq
                  │    ││                                                ; - com.google.re2j.Inst::matchRune@39 (line 56)
                  │    ││                                                ; - com.google.re2j.Machine::step@294 (line 310)
                  │    ││  0x00007f4d8924549a: mov    %eax,%r11d         ;*iload_1
                  │    ││                                                ; - com.google.re2j.Inst::matchRune@42 (line 58)
                  │    ││                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.03%    0.01%  │    ││  0x00007f4d8924549d: cmp    %r10d,%ecx
                  │   ╭││  0x00007f4d892454a0: je     0x00007f4d892454fe  ;*if_icmpne
                  │   │││                                                ; - com.google.re2j.Inst::matchRune@44 (line 58)
                  │   │││                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.30%    0.28%  │   │││  0x00007f4d892454a2: mov    %r10d,0x20(%rsp)
  0.10%    0.18%  │   │││  0x00007f4d892454a7: mov    %r11d,%eax
  0.05%    0.04%  │   │││  0x00007f4d892454aa: mov    $0x1f,%r8d
  0.03%    0.01%  │   │││  0x00007f4d892454b0: mov    $0x1f,%r10d
  0.22%    0.33%  │   │││  0x00007f4d892454b6: xor    %r11d,%r11d
  0.16%    0.24%  │   │││  0x00007f4d892454b9: mov    $0x3f,%edx
  0.04%    0.06%  │   │││  0x00007f4d892454be: mov    %r11d,0x30(%rsp)
  0.03%    0.04%  │   │╰│  0x00007f4d892454c3: jmpq   0x00007f4d892453c7
  0.42%    0.42%  ↘   │ │  0x00007f4d892454c8: mov    %r10d,%r8d
  0.02%    0.02%      │ │  0x00007f4d892454cb: inc    %r8d               ;*iadd
                      │ │                                                ; - com.google.re2j.Unicode::simpleFold@33 (line 210)
                      │ │                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                      │ │                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.05%    0.02%      │ │  0x00007f4d892454ce: mov    %edx,%r10d
  0.05%    0.10%      │ ╰  0x00007f4d892454d1: jmpq   0x00007f4d89245404
  0.05%    0.08%      │    0x00007f4d892454d6: xor    %r11d,%r11d
                      │    0x00007f4d892454d9: mov    0x20(%rsp),%ecx
                      │    0x00007f4d892454dd: mov    0x7c(%rsp),%eax
  0.08%    0.06%      │    0x00007f4d892454e1: jmpq   0x00007f4d89244f68
                      │    0x00007f4d892454e6: mov    0x80(%rsp),%edi
                      │    0x00007f4d892454ed: test   %edi,%edi
                      │    0x00007f4d892454ef: jne    0x00007f4d89245117  ;*ifne
                      │                                                  ; - com.google.re2j.Machine::step@160 (line 287)
                      │    0x00007f4d892454f5: mov    0x20(%rsp),%ecx
                      │    0x00007f4d892454f9: jmpq   0x00007f4d89244f0b
  0.02%    0.01%      ↘    0x00007f4d892454fe: mov    %ecx,0x20(%rsp)
  0.02%    0.05%           0x00007f4d89245502: mov    %edi,%r9d
                           0x00007f4d89245505: jmpq   0x00007f4d8924502a
                           0x00007f4d8924550a: mov    %r10d,0x74(%rsp)
  0.00%                    0x00007f4d8924550f: mov    %eax,0x7c(%rsp)
                           0x00007f4d89245513: mov    %r11,%r13
                           0x00007f4d89245516: jmpq   0x00007f4d8924502a
                           0x00007f4d8924551b: mov    %r10d,0x74(%rsp)
  0.00%                    0x00007f4d89245520: mov    %eax,0x7c(%rsp)
                           0x00007f4d89245524: mov    %r11,%r13
                           0x00007f4d89245527: jmpq   0x00007f4d8924502a
                           0x00007f4d8924552c: mov    $0xffffffe4,%esi
                           0x00007f4d89245531: mov    0x8(%rsp),%rbp
                           0x00007f4d89245536: mov    %r8d,0x7c(%rsp)
                           0x00007f4d8924553b: mov    %r10d,0x8(%rsp)
                           0x00007f4d89245540: mov    0x10(%rsp),%r10d
                           0x00007f4d89245545: mov    %r10d,0xc(%rsp)
                           0x00007f4d8924554a: mov    0x14(%rsp),%r11d
                           0x00007f4d8924554f: mov    %r11d,0x10(%rsp)
....................................................................................................
 17.51%   21.42%  <total for region 3>

....[Hottest Region 4]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 537 (226 bytes) 

                      0x00007f4d892451a2: mov    0x40(%rsp),%rbx    ;*iload
                                                                    ; - com.google.re2j.Machine::step@225 (line 296)
                      0x00007f4d892451a7: mov    0x8(%rsp),%rcx
                      0x00007f4d892451ac: mov    0xc(%rcx),%edi
                      0x00007f4d892451af: cmp    %edi,%eax
                      0x00007f4d892451b1: jge    0x00007f4d8924537f  ;*if_icmpge
                                                                    ; - com.google.re2j.Machine::step@242 (line 298)
                      0x00007f4d892451b7: mov    %eax,%ecx
                      0x00007f4d892451b9: jmpq   0x00007f4d89245353  ;*if_icmpge
                                                                    ; - com.google.re2j.Machine::step@18 (line 270)
  0.04%    0.06%      0x00007f4d892451be: mov    0x8(%rsp),%r10
  0.03%    0.02%      0x00007f4d892451c3: mov    %r12d,0xc(%r10)    ;*getfield size
                                                                    ; - com.google.re2j.Machine::step@15 (line 270)
                      0x00007f4d892451c7: add    $0x60,%rsp
  0.04%    0.03%      0x00007f4d892451cb: pop    %rbp
  0.04%    0.05%      0x00007f4d892451cc: test   %eax,0x173a1e2e(%rip)        # 0x00007f4da05e7000
                                                                    ;   {poll_return}
  0.01%    0.03%      0x00007f4d892451d2: retq   
                      0x00007f4d892451d3: nopw   0x0(%rax,%rax,1)
                      0x00007f4d892451dc: data16 data16 xchg %ax,%ax
  0.54%    0.49%  ↗   0x00007f4d892451e0: mov    %r8d,%r10d
  0.46%    0.74%  │   0x00007f4d892451e3: mov    %r8d,%eax
  0.67%    0.54%  │   0x00007f4d892451e6: mov    %r11d,0x20(%rsp)
  0.39%    0.21%  │   0x00007f4d892451eb: sub    %r11d,%r10d        ;*isub
                  │                                                 ; - com.google.re2j.Unicode::simpleFold@15 (line 208)
                  │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 55)
                  │                                                 ; - com.google.re2j.Machine::step@294 (line 310)
  0.48%    0.41%  │   0x00007f4d892451ee: mov    %r10d,%esi
  0.43%    0.58%  │   0x00007f4d892451f1: sar    $0x1f,%esi
  0.63%    0.36%  │   0x00007f4d892451f4: shr    $0x1f,%esi
  0.41%    0.17%  │   0x00007f4d892451f7: add    %r10d,%esi
  0.37%    0.37%  │   0x00007f4d892451fa: sar    %esi
  0.52%    0.55%  │   0x00007f4d892451fc: mov    %r11d,%r8d
  0.77%    0.50%  │   0x00007f4d892451ff: add    %esi,%r8d          ;*idiv
                  │                                                 ; - com.google.re2j.Unicode::simpleFold@17 (line 208)
                  │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 55)
                  │                                                 ; - com.google.re2j.Machine::step@294 (line 310)
  0.50%    0.20%  │   0x00007f4d89245202: cmp    $0x3f,%r8d
                  │   0x00007f4d89245206: jae    0x00007f4d89245671
  0.47%    0.62%  │   0x00007f4d8924520c: movslq 0x20(%rsp),%r10
  0.77%    0.76%  │   0x00007f4d89245211: movslq %esi,%r11
  0.75%    0.95%  │   0x00007f4d89245214: add    %r11,%r10
  0.44%    0.64%  │   0x00007f4d89245217: mov    0x10(%r9,%r10,4),%ebp  ;*aaload
                  │                                                 ; - com.google.re2j.Unicode::simpleFold@24 (line 209)
                  │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 55)
                  │                                                 ; - com.google.re2j.Machine::step@294 (line 310)
  0.38%    0.42%  │   0x00007f4d8924521c: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f4d89245dc9
  0.97%    0.94%  │   0x00007f4d89245221: test   %r10d,%r10d
                  │   0x00007f4d89245224: jbe    0x00007f4d892456bd  ;*iaload
                  │                                                 ; - com.google.re2j.Unicode::simpleFold@26 (line 209)
                  │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 55)
                  │                                                 ; - com.google.re2j.Machine::step@294 (line 310)
  0.91%    1.05%  │   0x00007f4d8924522a: mov    0x10(%r12,%rbp,8),%r10d
  0.50%    0.75%  │   0x00007f4d8924522f: cmp    %edx,%r10d
                  │   0x00007f4d89245232: jl     0x00007f4d892452de  ;*if_icmpge
                  │                                                 ; - com.google.re2j.Unicode::simpleFold@28 (line 209)
                  │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 55)
                  │                                                 ; - com.google.re2j.Machine::step@294 (line 310)
  0.51%    0.73%  │   0x00007f4d89245238: mov    0x20(%rsp),%r11d   ; OopMap{r9=Oop rbx=NarrowOop rdi=NarrowOop r13=Oop r14=NarrowOop xmm0=Oop [8]=Oop [24]=Oop [40]=Oop off=957}
                  │                                                 ;*goto
                  │                                                 ; - com.google.re2j.Unicode::simpleFold@40 (line 214)
                  │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 55)
                  │                                                 ; - com.google.re2j.Machine::step@294 (line 310)
  0.77%    0.63%  │   0x00007f4d8924523d: test   %eax,0x173a1dbd(%rip)        # 0x00007f4da05e7000
                  │                                                 ;*goto
                  │                                                 ; - com.google.re2j.Unicode::simpleFold@40 (line 214)
                  │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 55)
                  │                                                 ; - com.google.re2j.Machine::step@294 (line 310)
                  │                                                 ;   {poll}
  0.68%    0.67%  │   0x00007f4d89245243: cmp    %r8d,%r11d
                  ╰   0x00007f4d89245246: jl     0x00007f4d892451e0  ;*if_icmpge
                                                                    ; - com.google.re2j.Unicode::simpleFold@9 (line 207)
                                                                    ; - com.google.re2j.Inst::matchRune@33 (line 55)
                                                                    ; - com.google.re2j.Machine::step@294 (line 310)
  0.09%    0.17%      0x00007f4d89245248: cmp    $0x3f,%r11d
                      0x00007f4d8924524c: jge    0x00007f4d89245b69  ;*if_icmpge
                                                                    ; - com.google.re2j.Unicode::simpleFold@48 (line 215)
                                                                    ; - com.google.re2j.Inst::matchRune@33 (line 55)
                                                                    ; - com.google.re2j.Machine::step@294 (line 310)
  0.03%    0.04%      0x00007f4d89245252: cmp    $0x3f,%r11d
                      0x00007f4d89245256: jae    0x00007f4d89245851
  0.03%    0.03%      0x00007f4d8924525c: mov    0x10(%r9,%r11,4),%ebp  ;*aaload
                                                                    ; - com.google.re2j.Unicode::simpleFold@55 (line 215)
                                                                    ; - com.google.re2j.Inst::matchRune@33 (line 55)
                                                                    ; - com.google.re2j.Machine::step@294 (line 310)
  0.20%    0.29%      0x00007f4d89245261: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f4d89245e81
  0.17%    0.15%      0x00007f4d89245266: test   %r10d,%r10d
                      0x00007f4d89245269: jbe    0x00007f4d892458e1
  0.05%    0.05%      0x00007f4d8924526f: mov    0x10(%r12,%rbp,8),%ebp  ;*iaload
                                                                    ; - com.google.re2j.Unicode::simpleFold@57 (line 215)
                                                                    ; - com.google.re2j.Inst::matchRune@33 (line 55)
                                                                    ; - com.google.re2j.Machine::step@294 (line 310)
  0.04%    0.03%      0x00007f4d89245274: cmp    %edx,%ebp
                      0x00007f4d89245276: je     0x00007f4d89245bb1  ;*if_icmpne
                                                                    ; - com.google.re2j.Unicode::simpleFold@59 (line 215)
                                                                    ; - com.google.re2j.Inst::matchRune@33 (line 55)
                                                                    ; - com.google.re2j.Machine::step@294 (line 310)
  0.23%    0.32%      0x00007f4d8924527c: mov    %edx,%r11d
  0.12%    0.16%      0x00007f4d8924527f: cmp    $0x7f,%r11d
                      0x00007f4d89245283: jg     0x00007f4d89245bf9  ;*if_icmpgt
                                                                    ; - com.google.re2j.Unicode::toLower@3 (line 177)
                                                                    ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                                                                    ; - com.google.re2j.Inst::matchRune@33 (line 55)
                                                                    ; - com.google.re2j.Machine::step@294 (line 310)
  0.05%    0.01%      0x00007f4d89245289: cmp    $0x41,%r11d
                      0x00007f4d8924528d: jl     0x00007f4d89245a71  ;*if_icmpgt
                                                                    ; - com.google.re2j.Unicode::toLower@9 (line 178)
                                                                    ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                                                                    ; - com.google.re2j.Inst::matchRune@33 (line 55)
                                                                    ; - com.google.re2j.Machine::step@294 (line 310)
  0.05%    0.03%      0x00007f4d89245293: cmp    $0x5a,%r11d
                   ╭  0x00007f4d89245297: jg     0x00007f4d892452a9  ;*if_icmpgt
                   │                                                ; - com.google.re2j.Unicode::toLower@15 (line 178)
                   │                                                ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                   │                                                ; - com.google.re2j.Inst::matchRune@33 (line 55)
                   │                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.23%    0.23%   │  0x00007f4d89245299: mov    %r11d,%r10d
  0.10%    0.12%   │  0x00007f4d8924529c: add    $0x20,%r10d        ;*iinc
                   │                                                ; - com.google.re2j.Unicode::toLower@18 (line 179)
                   │                                                ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                   │                                                ; - com.google.re2j.Inst::matchRune@33 (line 55)
                   │                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.05%    0.04%   │  0x00007f4d892452a0: cmp    %r11d,%r10d
                   │  0x00007f4d892452a3: jne    0x00007f4d8924549d  ;*if_icmpeq
                   │                                                ; - com.google.re2j.Unicode::simpleFold@77 (line 224)
                   │                                                ; - com.google.re2j.Inst::matchRune@33 (line 55)
                   │                                                ; - com.google.re2j.Machine::step@294 (line 310)
                   ↘  0x00007f4d892452a9: cmp    $0x61,%r11d
                      0x00007f4d892452ad: jl     0x00007f4d89245cd1  ;*if_icmpgt
....................................................................................................
 14.93%   15.15%  <total for region 4>

....[Hottest Region 5]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 546 (355 bytes) 

                          0x00007f4d892436da: mov    %r10,(%rsp)
                          0x00007f4d892436de: nop
                          0x00007f4d892436df: callq  0x00007f4d89046020  ; OopMap{off=612}
                                                                        ;*invokespecial add
                                                                        ; - com.google.re2j.Machine::add@203 (line 372)
                                                                        ;   {optimized virtual_call}
                  ╭       0x00007f4d892436e4: jmpq   0x00007f4d8924383a
                  │       0x00007f4d892436e9: mov    0x70(%rsp),%rax
                  │╭      0x00007f4d892436ee: jmpq   0x00007f4d8924383a  ;*aload_0
                  ││                                                    ; - com.google.re2j.Machine::add@113 (line 361)
  0.70%    0.68%  ││      0x00007f4d892436f3: mov    0x30(%rsp),%rbx    ;*tableswitch
                  ││                                                    ; - com.google.re2j.Machine::add@40 (line 352)
  0.05%    0.00%  ││      0x00007f4d892436f8: mov    0x8(%rsp),%rsi
           0.00%  ││      0x00007f4d892436fd: mov    0x48(%rsp),%rdx
  0.01%    0.00%  ││      0x00007f4d89243702: mov    0x1c(%rsp),%r8d
  0.34%    0.36%  ││      0x00007f4d89243707: mov    0x20(%rsp),%r9
                  ││      0x00007f4d8924370c: mov    0x28(%rsp),%edi
                  ││      0x00007f4d89243710: mov    0x70(%rsp),%r10
  0.01%           ││      0x00007f4d89243715: mov    %r10,(%rsp)
  0.38%    0.31%  ││      0x00007f4d89243719: mov    %rsi,%rbp
                  ││      0x00007f4d8924371c: mov    %rbx,0x38(%rsp)
           0.00%  ││      0x00007f4d89243721: xchg   %ax,%ax
  0.01%    0.00%  ││      0x00007f4d89243723: callq  0x00007f4d89046020  ; OopMap{rbp=Oop [32]=Oop [44]=NarrowOop [56]=Oop [72]=Oop off=680}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@127 (line 361)
                  ││                                                    ;   {optimized virtual_call}
           0.04%  ││      0x00007f4d89243728: mov    0x2c(%rsp),%r11d
  0.16%    0.18%  ││      0x00007f4d8924372d: mov    0x14(%r12,%r11,8),%ecx  ;*getfield arg
                  ││                                                    ; - com.google.re2j.Machine::add@136 (line 362)
  0.16%    0.23%  ││      0x00007f4d89243732: mov    %rbp,%rsi
  0.00%    0.02%  ││      0x00007f4d89243735: mov    0x48(%rsp),%rdx
  0.14%    0.15%  ││      0x00007f4d8924373a: mov    0x1c(%rsp),%r8d
  0.06%    0.03%  ││      0x00007f4d8924373f: mov    0x20(%rsp),%r9
  0.19%    0.24%  ││      0x00007f4d89243744: mov    0x28(%rsp),%edi
  0.02%    0.01%  ││      0x00007f4d89243748: mov    %rax,(%rsp)
  0.13%    0.16%  ││      0x00007f4d8924374c: data16 xchg %ax,%ax
  0.05%    0.01%  ││      0x00007f4d8924374f: callq  0x00007f4d89046020  ; OopMap{off=724}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@146 (line 362)
                  ││                                                    ;   {optimized virtual_call}
  0.05%    0.03%  ││╭     0x00007f4d89243754: jmpq   0x00007f4d8924383a  ;*aload
                  │││                                                   ; - com.google.re2j.Machine::add@293 (line 391)
  1.47%    1.31%  │││     0x00007f4d89243759: mov    0x70(%rsp),%rbp
  0.01%    0.03%  │││     0x00007f4d8924375e: test   %rbp,%rbp
                  │││╭    0x00007f4d89243761: jne    0x00007f4d89243846  ;*ifnonnull
                  ││││                                                  ; - com.google.re2j.Machine::add@295 (line 391)
                  ││││    0x00007f4d89243767: mov    0x8(%rsp),%r10
           0.02%  ││││    0x00007f4d8924376c: mov    0xc(%r10),%r11d    ;*getfield poolSize
                  ││││                                                  ; - com.google.re2j.Machine::alloc@1 (line 148)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 392)
  0.49%    0.29%  ││││    0x00007f4d89243770: test   %r11d,%r11d
                  ││││    0x00007f4d89243773: jle    0x00007f4d8924388e  ;*ifle
                  ││││                                                  ; - com.google.re2j.Machine::alloc@4 (line 148)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 392)
  0.01%    0.02%  ││││    0x00007f4d89243779: mov    0x24(%r10),%r8d    ;*getfield pool
                  ││││                                                  ; - com.google.re2j.Machine::alloc@18 (line 150)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 392)
                  ││││    0x00007f4d8924377d: mov    %r11d,%ebp
  0.00%           ││││    0x00007f4d89243780: dec    %ebp               ;*isub
                  ││││                                                  ; - com.google.re2j.Machine::alloc@13 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 392)
  0.51%    0.41%  ││││    0x00007f4d89243782: mov    %ebp,0xc(%r10)     ;*putfield poolSize
                  ││││                                                  ; - com.google.re2j.Machine::alloc@14 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 392)
  0.02%    0.01%  ││││    0x00007f4d89243786: mov    0xc(%r12,%r8,8),%r10d  ; implicit exception: dispatches to 0x00007f4d89243ca9
                  ││││    0x00007f4d8924378b: cmp    %r10d,%ebp
                  ││││    0x00007f4d8924378e: jae    0x00007f4d89243ab9
  0.01%    0.00%  ││││    0x00007f4d89243794: lea    (%r12,%r8,8),%r10
  0.60%    0.46%  ││││    0x00007f4d89243798: mov    0xc(%r10,%r11,4),%r11d  ;*aaload
                  ││││                                                  ; - com.google.re2j.Machine::alloc@25 (line 150)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 392)
  0.00%    0.01%  ││││    0x00007f4d8924379d: test   %r11d,%r11d
                  ││││    0x00007f4d892437a0: je     0x00007f4d89243ad5  ;*putfield inst
                  ││││                                                  ; - com.google.re2j.Machine::alloc@45 (line 154)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 392)
                  ││││    0x00007f4d892437a6: mov    %r11,%rbp
  0.00%    0.01%  ││││    0x00007f4d892437a9: shl    $0x3,%rbp          ;*aload_2
                  ││││                                                  ; - com.google.re2j.Machine::alloc@43 (line 154)
                  ││││                                                  ; - com.google.re2j.Machine::add@301 (line 392)
  0.39%    0.39%  ││││    0x00007f4d892437ad: mov    0x2c(%rsp),%r10d
  0.03%    0.01%  ││││    0x00007f4d892437b2: mov    %r10d,0x10(%rbp)
           0.00%  ││││    0x00007f4d892437b6: mov    %rbp,%r10
  0.01%    0.01%  ││││    0x00007f4d892437b9: shr    $0x9,%r10
  0.50%    0.56%  ││││    0x00007f4d892437bd: movabs $0x7f4d98fef000,%r11
  0.02%    0.03%  ││││    0x00007f4d892437c7: mov    %r12b,(%r11,%r10,1)  ;*aload
                  ││││                                                  ; - com.google.re2j.Machine::add@316 (line 396)
  0.00%           ││││ ↗  0x00007f4d892437cb: mov    0x20(%rsp),%rdi
  0.16%    0.08%  ││││ │  0x00007f4d892437d0: mov    0xc(%rdi),%r10d    ;*arraylength
                  ││││ │                                                ; - com.google.re2j.Machine::add@318 (line 396)
                  ││││ │                                                ; implicit exception: dispatches to 0x00007f4d89243c81
  0.48%    0.33%  ││││ │  0x00007f4d892437d4: test   %r10d,%r10d
                  ││││ │  0x00007f4d892437d7: jle    0x00007f4d89243b0a  ;*ifle
                  ││││ │                                                ; - com.google.re2j.Machine::add@319 (line 396)
  0.02%    0.03%  ││││ │  0x00007f4d892437dd: mov    0xc(%rbp),%r11d    ;*getfield cap
                  ││││ │                                                ; - com.google.re2j.Machine::add@324 (line 396)
  0.00%    0.00%  ││││ │  0x00007f4d892437e1: mov    %r11,%r8
  0.07%    0.12%  ││││ │  0x00007f4d892437e4: shl    $0x3,%r8
  0.39%    0.29%  ││││ │  0x00007f4d892437e8: cmp    %rdi,%r8
                  ││││╭│  0x00007f4d892437eb: je     0x00007f4d89243818  ;*if_acmpeq
                  ││││││                                                ; - com.google.re2j.Machine::add@329 (line 396)
  0.04%    0.04%  ││││││  0x00007f4d892437ed: mov    0xc(%r12,%r11,8),%r9d  ; implicit exception: dispatches to 0x00007f4d89243c91
  0.01%    0.01%  ││││││  0x00007f4d892437f2: lea    (%r12,%r11,8),%rcx  ;*getfield cap
                  ││││││                                                ; - com.google.re2j.Machine::add@324 (line 396)
  0.01%    0.02%  ││││││  0x00007f4d892437f6: cmp    %r10d,%r9d
                  ││││││  0x00007f4d892437f9: jb     0x00007f4d89243ae9
  0.48%    0.28%  ││││││  0x00007f4d892437ff: lea    0x10(%r12,%r11,8),%rsi
  0.04%    0.01%  ││││││  0x00007f4d89243804: add    $0x10,%rdi
                  ││││││  0x00007f4d89243808: movslq %r10d,%rdx
           0.02%  ││││││  0x00007f4d8924380b: movabs $0x7f4d89052640,%r10
  0.42%    0.14%  ││││││  0x00007f4d89243815: callq  *%r10              ;*aload
                  ││││││                                                ; - com.google.re2j.Machine::add@347 (line 399)
                  ││││↘│  0x00007f4d89243818: mov    %rbx,%r10
  0.05%    0.03%  ││││ │  0x00007f4d8924381b: mov    %rbp,%r11
  0.59%    0.13%  ││││ │  0x00007f4d8924381e: shr    $0x3,%r11
  0.02%    0.04%  ││││ │  0x00007f4d89243822: mov    %r11d,0x10(%rbx)
                  ││││ │  0x00007f4d89243826: shr    $0x9,%r10
  0.06%    0.02%  ││││ │  0x00007f4d8924382a: movabs $0x7f4d98fef000,%r11
  0.48%    0.08%  ││││ │  0x00007f4d89243834: mov    %r12b,(%r11,%r10,1)  ;*putfield thread
                  ││││ │                                                ; - com.google.re2j.Machine::add@351 (line 399)
  0.02%    0.03%  ││││ │  0x00007f4d89243838: xor    %eax,%eax          ;*synchronization entry
                  ││││ │                                                ; - com.google.re2j.Machine::add@-1 (line 344)
  0.48%    0.63%  ↘↘↘│ │  0x00007f4d8924383a: add    $0x60,%rsp
  0.54%    0.73%     │ │  0x00007f4d8924383e: pop    %rbp
  0.12%    0.09%     │ │  0x00007f4d8924383f: test   %eax,0x173a37bb(%rip)        # 0x00007f4da05e7000
                     │ │                                                ;   {poll_return}
  0.42%    0.62%     │ │  0x00007f4d89243845: retq   
  0.07%    0.07%     ↘ │  0x00007f4d89243846: mov    0x2c(%rsp),%r11d
                       │  0x00007f4d8924384b: mov    %r11d,0x10(%rbp)
                       │  0x00007f4d8924384f: mov    %rbp,%r10
                       │  0x00007f4d89243852: shr    $0x9,%r10
  0.05%    0.06%       │  0x00007f4d89243856: movabs $0x7f4d98fef000,%r11
                       │  0x00007f4d89243860: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                       │                                                ; - com.google.re2j.Machine::add@313 (line 394)
                       ╰  0x00007f4d89243864: jmpq   0x00007f4d892437cb  ;*tableswitch
                                                                        ; - com.google.re2j.Machine::add@40 (line 352)
                          0x00007f4d89243869: mov    0x8(%rsp),%rsi
                          0x00007f4d8924386e: mov    0x48(%rsp),%rdx
                          0x00007f4d89243873: mov    0x1c(%rsp),%r8d
                          0x00007f4d89243878: mov    0x20(%rsp),%r9
                          0x00007f4d8924387d: mov    0x70(%rsp),%r10
                          0x00007f4d89243882: mov    %r10,(%rsp)
....................................................................................................
 11.58%   10.02%  <total for region 5>

....[Hottest Regions]...............................................................................
 24.02%   22.08%         C2, level 4  com.google.re2j.Machine::add, version 546 (330 bytes) 
 18.48%   18.67%         C2, level 4  com.google.re2j.Machine::step, version 537 (604 bytes) 
 17.51%   21.42%         C2, level 4  com.google.re2j.Machine::step, version 537 (384 bytes) 
 14.93%   15.15%         C2, level 4  com.google.re2j.Machine::step, version 537 (226 bytes) 
 11.58%   10.02%         C2, level 4  com.google.re2j.Machine::add, version 546 (355 bytes) 
  5.44%    6.00%         C2, level 4  com.google.re2j.Machine::match, version 577 (820 bytes) 
  3.02%    2.24%        runtime stub  StubRoutines::jint_disjoint_arraycopy (128 bytes) 
  0.53%    0.61%         C2, level 4  com.google.re2j.Machine::step, version 537 (54 bytes) 
  0.31%    0.30%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.26%    0.26%         C2, level 4  com.google.re2j.Machine::add, version 546 (40 bytes) 
  0.26%    0.24%         C2, level 4  com.google.re2j.Machine::match, version 577 (98 bytes) 
  0.19%    0.00%   [kernel.kallsyms]  [unknown] (39 bytes) 
  0.15%    0.02%   [kernel.kallsyms]  [unknown] (2 bytes) 
  0.08%    0.03%   [kernel.kallsyms]  [unknown] (59 bytes) 
  0.08%    0.00%         C2, level 4  com.google.re2j.Machine::init, version 588 (109 bytes) 
  0.07%    0.00%         C2, level 4  com.google.re2j.Machine::init, version 588 (41 bytes) 
  0.06%    0.03%   [kernel.kallsyms]  [unknown] (48 bytes) 
  0.05%    0.00%   [kernel.kallsyms]  [unknown] (64 bytes) 
  0.04%    0.02%   [kernel.kallsyms]  [unknown] (11 bytes) 
  0.04%    0.02%   [kernel.kallsyms]  [unknown] (0 bytes) 
  2.89%    2.88%  <...other 580 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 51.47%   55.85%         C2, level 4  com.google.re2j.Machine::step, version 537 
 35.85%   32.35%         C2, level 4  com.google.re2j.Machine::add, version 546 
  5.77%    6.32%         C2, level 4  com.google.re2j.Machine::match, version 577 
  3.02%    2.24%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
  1.87%    1.29%   [kernel.kallsyms]  [unknown] 
  0.26%    0.05%         C2, level 4  com.google.re2j.Machine::init, version 588 
  0.13%    0.05%         C2, level 4  com.google.re2j.Matcher::find, version 596 
  0.09%    0.14%        libc-2.26.so  vfprintf 
  0.07%    0.08%      hsdis-amd64.so  [unknown] 
  0.06%    0.07%           libjvm.so  PSPromotionManager::copy_to_survivor_space<false> 
  0.05%    0.06%        libc-2.26.so  _IO_fwrite 
  0.05%    0.09%           libjvm.so  xmlTextStream::write 
  0.05%    0.05%           libjvm.so  fileStream::write 
  0.04%    0.03%           libjvm.so  GenericTaskQueueSet<OverflowTaskQueue<StarTask, (MemoryType)1, 131072u>, (MemoryType)1>::steal_best_of_2 
  0.04%    0.02%        libc-2.26.so  __strchrnul_avx2 
  0.03%    0.01%           libjvm.so  Monitor::unlock 
  0.03%    0.01%         C2, level 4  com.github.arnaudroger.re2j.Re2jFindRegex::testCombine, version 621 
  0.03%    0.04%           libjvm.so  PSPromotionManager::drain_stacks_depth 
  0.03%    0.06%        libc-2.26.so  __strlen_avx2 
  0.03%    0.14%           libjvm.so  RelocIterator::initialize 
  1.01%    0.64%  <...other 121 warm methods...>
....................................................................................................
100.00%   99.59%  <totals>

....[Distribution by Source]........................................................................
 93.54%   94.68%         C2, level 4
  3.03%    2.25%        runtime stub
  1.87%    1.29%   [kernel.kallsyms]
  0.80%    1.07%           libjvm.so
  0.42%    0.53%        libc-2.26.so
  0.14%    0.03%  libpthread-2.26.so
  0.07%    0.08%      hsdis-amd64.so
  0.06%    0.03%         interpreter
  0.04%    0.00%              [vdso]
  0.03%    0.02%         C1, level 3
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:44

Benchmark                        Mode  Cnt     Score    Error  Units
Re2jFindRegex.testCombine       thrpt   20  2344.970 ± 16.436  ops/s
Re2jFindRegex.testCombine:·asm  thrpt            NaN             ---
