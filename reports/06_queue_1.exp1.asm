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
# Warmup Iteration   1: 5983.308 ops/s
# Warmup Iteration   2: 9211.948 ops/s
# Warmup Iteration   3: 9289.749 ops/s
# Warmup Iteration   4: 9467.076 ops/s
# Warmup Iteration   5: 9479.077 ops/s
# Warmup Iteration   6: 9450.007 ops/s
# Warmup Iteration   7: 9318.232 ops/s
# Warmup Iteration   8: 8999.693 ops/s
# Warmup Iteration   9: 9240.769 ops/s
# Warmup Iteration  10: 9413.975 ops/s
# Warmup Iteration  11: 9202.327 ops/s
# Warmup Iteration  12: 9235.335 ops/s
# Warmup Iteration  13: 9432.516 ops/s
# Warmup Iteration  14: 9450.917 ops/s
# Warmup Iteration  15: 9397.970 ops/s
# Warmup Iteration  16: 9403.366 ops/s
# Warmup Iteration  17: 9306.248 ops/s
# Warmup Iteration  18: 7467.755 ops/s
# Warmup Iteration  19: 9406.676 ops/s
# Warmup Iteration  20: 9411.096 ops/s
Iteration   1: 9368.711 ops/s
Iteration   2: 9244.471 ops/s
Iteration   3: 9372.212 ops/s
Iteration   4: 9379.322 ops/s
Iteration   5: 9381.732 ops/s
Iteration   6: 9384.941 ops/s
Iteration   7: 9386.413 ops/s
Iteration   8: 9382.078 ops/s
Iteration   9: 9393.423 ops/s
Iteration  10: 9385.095 ops/s
Iteration  11: 9380.619 ops/s
Iteration  12: 9384.583 ops/s
Iteration  13: 9382.834 ops/s
Iteration  14: 9380.026 ops/s
Iteration  15: 9391.240 ops/s
Iteration  16: 9367.950 ops/s
Iteration  17: 9386.389 ops/s
Iteration  18: 9376.710 ops/s
Iteration  19: 9386.456 ops/s
Iteration  20: 9386.900 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  9375.105 ±(99.9%) 27.314 ops/s [Average]
  (min, avg, max) = (9244.471, 9375.105, 9393.423), stdev = 31.455
  CI (99.9%): [9347.792, 9402.419] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1:·asm":
PrintAssembly processed: 198111 total address lines.
Perf output processed (skipped 23.368 seconds):
 Column 1: cycles (20409 events)
 Column 2: instructions (20393 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 487 (373 bytes) 

                          0x00007fd8dd210560: mov    %r10,(%rsp)
                          0x00007fd8dd210564: data16 xchg %ax,%ax
                          0x00007fd8dd210567: callq  0x00007fd8dd046020  ; OopMap{off=300}
                                                                        ;*invokespecial add
                                                                        ; - com.google.re2j.Machine::add@186 (line 363)
                                                                        ;   {optimized virtual_call}
                  ╭       0x00007fd8dd21056c: jmpq   0x00007fd8dd2106e5
                  │       0x00007fd8dd210571: mov    0x70(%rsp),%rax
                  │╭      0x00007fd8dd210576: jmpq   0x00007fd8dd2106e5  ;*tableswitch
                  ││                                                    ; - com.google.re2j.Machine::add@26 (line 343)
  1.06%    1.44%  ││      0x00007fd8dd21057b: mov    0x20(%rsp),%r8d
  0.05%    0.07%  ││      0x00007fd8dd210580: mov    0x28(%rsp),%r9
  0.02%    0.01%  ││      0x00007fd8dd210585: mov    0x70(%rsp),%r10
  0.07%    0.15%  ││      0x00007fd8dd21058a: mov    %r10,(%rsp)
  0.49%    0.51%  ││      0x00007fd8dd21058e: mov    %rsi,%rbp
  0.06%    0.17%  ││      0x00007fd8dd210591: xchg   %ax,%ax
  0.02%    0.03%  ││      0x00007fd8dd210593: callq  0x00007fd8dd046020  ; OopMap{rbp=Oop [40]=Oop [56]=Oop [64]=Oop off=344}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@114 (line 352)
                  ││                                                    ;   {optimized virtual_call}
  0.07%    0.07%  ││      0x00007fd8dd210598: mov    0x38(%rsp),%r10
  0.09%    0.13%  ││      0x00007fd8dd21059d: mov    0x34(%r10),%r11d
  0.40%    0.44%  ││      0x00007fd8dd2105a1: mov    %r11,%rcx
  0.06%    0.04%  ││      0x00007fd8dd2105a4: shl    $0x3,%rcx          ;*getfield argInst
                  ││                                                    ; - com.google.re2j.Machine::add@122 (line 353)
  0.04%    0.07%  ││      0x00007fd8dd2105a8: mov    %rbp,%rsi
  0.05%    0.02%  ││      0x00007fd8dd2105ab: mov    0x40(%rsp),%rdx
  0.45%    0.26%  ││      0x00007fd8dd2105b0: mov    0x20(%rsp),%r8d
  0.06%    0.03%  ││      0x00007fd8dd2105b5: mov    0x28(%rsp),%r9
  0.05%    0.04%  ││      0x00007fd8dd2105ba: mov    0x30(%rsp),%edi
  0.05%    0.06%  ││      0x00007fd8dd2105be: mov    %rax,(%rsp)
  0.47%    0.55%  ││      0x00007fd8dd2105c2: nop
  0.08%    0.04%  ││      0x00007fd8dd2105c3: callq  0x00007fd8dd046020  ; OopMap{off=392}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@132 (line 353)
                  ││                                                    ;   {optimized virtual_call}
  0.01%    0.02%  ││╭     0x00007fd8dd2105c8: jmpq   0x00007fd8dd2106e5  ;*aload
                  │││                                                   ; - com.google.re2j.Machine::add@270 (line 383)
  1.05%    1.03%  │││     0x00007fd8dd2105cd: mov    0x38(%rsp),%r10
  0.21%    0.26%  │││     0x00007fd8dd2105d2: mov    %r10,%r9
  0.31%    0.16%  │││     0x00007fd8dd2105d5: shr    $0x3,%r9           ;*putfield inst
                  │││                                                   ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │││                                                   ; - com.google.re2j.Machine::add@277 (line 384)
  0.30%    0.45%  │││     0x00007fd8dd2105d9: mov    0x70(%rsp),%rbx
  0.26%    0.43%  │││     0x00007fd8dd2105de: test   %rbx,%rbx
                  │││╭    0x00007fd8dd2105e1: je     0x00007fd8dd2105fe  ;*ifnonnull
                  ││││                                                  ; - com.google.re2j.Machine::add@272 (line 383)
  0.05%           ││││    0x00007fd8dd2105e3: mov    %r9d,0x10(%rbx)
  0.02%    0.04%  ││││    0x00007fd8dd2105e7: mov    %rbx,%r10
  0.22%    0.22%  ││││    0x00007fd8dd2105ea: shr    $0x9,%r10
  0.03%    0.01%  ││││    0x00007fd8dd2105ee: movabs $0x7fd8d8dee000,%r11
  0.04%           ││││    0x00007fd8dd2105f8: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                  ││││                                                  ; - com.google.re2j.Machine::add@288 (line 386)
  0.02%    0.01%  ││││╭   0x00007fd8dd2105fc: jmp    0x00007fd8dd21064b
  0.23%    0.26%  │││↘│   0x00007fd8dd2105fe: mov    0xc(%rsi),%r10d    ;*getfield poolSize
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@1 (line 132)
                  │││ │                                                 ; - com.google.re2j.Machine::add@277 (line 384)
  0.15%    0.09%  │││ │   0x00007fd8dd210602: test   %r10d,%r10d
                  │││ │   0x00007fd8dd210605: jle    0x00007fd8dd2107ed  ;*ifle
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@4 (line 132)
                  │││ │                                                 ; - com.google.re2j.Machine::add@277 (line 384)
  0.18%    0.23%  │││ │   0x00007fd8dd21060b: mov    0x24(%rsi),%ecx    ;*getfield pool
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@18 (line 134)
                  │││ │                                                 ; - com.google.re2j.Machine::add@277 (line 384)
  0.31%    0.43%  │││ │   0x00007fd8dd21060e: mov    %r10d,%ebp
  0.19%    0.29%  │││ │   0x00007fd8dd210611: dec    %ebp               ;*isub
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@13 (line 133)
                  │││ │                                                 ; - com.google.re2j.Machine::add@277 (line 384)
  0.29%    0.16%  │││ │   0x00007fd8dd210613: mov    %ebp,0xc(%rsi)     ;*putfield poolSize
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@14 (line 133)
                  │││ │                                                 ; - com.google.re2j.Machine::add@277 (line 384)
  0.19%    0.18%  │││ │   0x00007fd8dd210616: mov    0xc(%r12,%rcx,8),%r8d  ; implicit exception: dispatches to 0x00007fd8dd210869
  0.35%    0.32%  │││ │   0x00007fd8dd21061b: cmp    %r8d,%ebp
                  │││ │   0x00007fd8dd21061e: jae    0x00007fd8dd210795
  0.14%    0.34%  │││ │   0x00007fd8dd210624: lea    (%r12,%rcx,8),%r11
  0.22%    0.35%  │││ │   0x00007fd8dd210628: mov    0xc(%r11,%r10,4),%r10d  ;*aaload
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │││ │                                                 ; - com.google.re2j.Machine::add@277 (line 384)
  0.14%    0.33%  │││ │   0x00007fd8dd21062d: mov    %r9d,0x10(%r12,%r10,8)  ;*putfield inst
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │││ │                                                 ; - com.google.re2j.Machine::add@277 (line 384)
                  │││ │                                                 ; implicit exception: dispatches to 0x00007fd8dd210879
  0.66%    0.63%  │││ │   0x00007fd8dd210632: lea    (%r12,%r10,8),%rbx  ;*aaload
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │││ │                                                 ; - com.google.re2j.Machine::add@277 (line 384)
  0.21%    0.16%  │││ │   0x00007fd8dd210636: mov    %rbx,%r10
  0.15%    0.19%  │││ │   0x00007fd8dd210639: shr    $0x9,%r10
  0.17%    0.17%  │││ │   0x00007fd8dd21063d: movabs $0x7fd8d8dee000,%r11
  0.41%    0.43%  │││ │   0x00007fd8dd210647: mov    %r12b,(%r11,%r10,1)  ;*aload
                  │││ │                                                 ; - com.google.re2j.Machine::add@291 (line 388)
  0.65%    0.51%  │││ ↘   0x00007fd8dd21064b: mov    0x28(%rsp),%rdi
  0.12%    0.16%  │││     0x00007fd8dd210650: mov    0xc(%rdi),%r10d    ;*arraylength
                  │││                                                   ; - com.google.re2j.Machine::add@293 (line 388)
                  │││                                                   ; implicit exception: dispatches to 0x00007fd8dd210841
  0.18%    0.13%  │││     0x00007fd8dd210654: test   %r10d,%r10d
                  │││     0x00007fd8dd210657: jle    0x00007fd8dd2107ce  ;*ifle
                  │││                                                   ; - com.google.re2j.Machine::add@294 (line 388)
  0.27%    0.16%  │││     0x00007fd8dd21065d: mov    0xc(%rbx),%r8d     ;*getfield cap
                  │││                                                   ; - com.google.re2j.Machine::add@299 (line 388)
  0.87%    0.84%  │││     0x00007fd8dd210661: mov    %r8,%r11
  0.13%    0.15%  │││     0x00007fd8dd210664: shl    $0x3,%r11
  0.28%    0.29%  │││     0x00007fd8dd210668: cmp    %rdi,%r11
                  │││  ╭  0x00007fd8dd21066b: je     0x00007fd8dd210698  ;*if_acmpeq
                  │││  │                                                ; - com.google.re2j.Machine::add@304 (line 388)
  0.35%    0.32%  │││  │  0x00007fd8dd21066d: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x00007fd8dd21088d
  0.97%    1.21%  │││  │  0x00007fd8dd210672: lea    (%r12,%r8,8),%rcx  ;*getfield cap
                  │││  │                                                ; - com.google.re2j.Machine::add@299 (line 388)
  0.03%    0.07%  │││  │  0x00007fd8dd210676: cmp    %r10d,%r11d
                  │││  │  0x00007fd8dd210679: jb     0x00007fd8dd2107a9
  1.05%    1.17%  │││  │  0x00007fd8dd21067f: lea    0x10(%r12,%r8,8),%rsi
  0.10%    0.09%  │││  │  0x00007fd8dd210684: add    $0x10,%rdi
  0.09%    0.08%  │││  │  0x00007fd8dd210688: movslq %r10d,%rdx
  0.03%    0.02%  │││  │  0x00007fd8dd21068b: movabs $0x7fd8dd052640,%r10
  0.61%    0.75%  │││  │  0x00007fd8dd210695: callq  *%r10              ;*aload_1
                  │││  │                                                ; - com.google.re2j.Machine::add@322 (line 391)
  0.03%    0.03%  │││  ↘  0x00007fd8dd210698: mov    0x40(%rsp),%r10
  0.79%    0.97%  │││     0x00007fd8dd21069d: mov    0xc(%r10),%r10d    ;*getfield size
                  │││                                                   ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                  │││                                                   ; - com.google.re2j.Machine::add@325 (line 391)
  0.24%    0.32%  │││     0x00007fd8dd2106a1: mov    0x40(%rsp),%r11
  0.04%           │││     0x00007fd8dd2106a6: mov    0x20(%r11),%ebp    ;*getfield denseThreads
                  │││                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                  │││                                                   ; - com.google.re2j.Machine::add@325 (line 391)
  0.44%    0.37%  │││     0x00007fd8dd2106aa: mov    %r10d,%r8d
  0.59%    0.56%  │││     0x00007fd8dd2106ad: inc    %r8d
  0.32%    0.17%  │││     0x00007fd8dd2106b0: mov    %r8d,0xc(%r11)     ;*putfield size
                  │││                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                  │││                                                   ; - com.google.re2j.Machine::add@325 (line 391)
  0.09%    0.08%  │││     0x00007fd8dd2106b4: mov    0xc(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007fd8dd210851
  0.59%    0.54%  │││     0x00007fd8dd2106b9: cmp    %r8d,%r10d
                  │││     0x00007fd8dd2106bc: jae    0x00007fd8dd21071d  ;*aastore
                  │││                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │││                                                   ; - com.google.re2j.Machine::add@325 (line 391)
  0.89%    1.16%  │││     0x00007fd8dd2106be: lea    (%r12,%rbp,8),%r11  ;*getfield denseThreads
                  │││                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                  │││                                                   ; - com.google.re2j.Machine::add@325 (line 391)
  0.09%    0.17%  │││     0x00007fd8dd2106c2: lea    0x10(%r11,%r10,4),%r10
  0.04%    0.03%  │││     0x00007fd8dd2106c7: mov    %rbx,%r11
  0.37%    0.25%  │││     0x00007fd8dd2106ca: shr    $0x3,%r11
  0.66%    0.87%  │││     0x00007fd8dd2106ce: mov    %r11d,(%r10)
  1.76%    1.92%  │││     0x00007fd8dd2106d1: shr    $0x9,%r10
  0.04%    0.04%  │││     0x00007fd8dd2106d5: movabs $0x7fd8d8dee000,%r11
  0.27%    0.21%  │││     0x00007fd8dd2106df: mov    %r12b,(%r11,%r10,1)  ;*aastore
                  │││                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │││                                                   ; - com.google.re2j.Machine::add@325 (line 391)
  1.25%    1.41%  │││     0x00007fd8dd2106e3: xor    %eax,%eax          ;*invokevirtual contains
                  │││                                                   ; - com.google.re2j.Machine::add@5 (line 339)
  1.17%    1.21%  ↘↘↘     0x00007fd8dd2106e5: add    $0x60,%rsp
  0.08%    0.07%          0x00007fd8dd2106e9: pop    %rbp
  0.24%    0.25%          0x00007fd8dd2106ea: test   %eax,0x164f0910(%rip)        # 0x00007fd8f3701000
                                                                        ;   {poll_return}
  1.69%    1.38%          0x00007fd8dd2106f0: retq                      ;*tableswitch
                                                                        ; - com.google.re2j.Machine::add@26 (line 343)
                          0x00007fd8dd2106f1: mov    0x20(%rsp),%r8d
                          0x00007fd8dd2106f6: mov    0x28(%rsp),%r9
                          0x00007fd8dd2106fb: mov    0x70(%rsp),%r10
                          0x00007fd8dd210700: mov    %r10,(%rsp)
                          0x00007fd8dd210704: data16 xchg %ax,%ax
                          0x00007fd8dd210707: callq  0x00007fd8dd046020  ; OopMap{off=716}
                                                                        ;*invokespecial add
                                                                        ; - com.google.re2j.Machine::add@165 (line 358)
....................................................................................................
 27.59%   29.33%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 487 (231 bytes) 

                     # parm4:    rdi       = int
                     # parm5:    [sp+0x70]   = &apos;com/google/re2j/Machine$Thread&apos;  (sp of caller)
                     0x00007fd8dd210440: mov    0x8(%rsi),%r10d    ;   {no_reloc}
                     0x00007fd8dd210444: shl    $0x3,%r10
                     0x00007fd8dd210448: cmp    %r10,%rax
                     0x00007fd8dd21044b: jne    0x00007fd8dd045e20  ;   {runtime_call}
                     0x00007fd8dd210451: data16 xchg %ax,%ax
                     0x00007fd8dd210454: nopl   0x0(%rax,%rax,1)
                     0x00007fd8dd21045c: data16 data16 xchg %ax,%ax
                   [Verified Entry Point]
  1.20%    1.28%     0x00007fd8dd210460: mov    %eax,-0x14000(%rsp)
  0.92%    1.11%     0x00007fd8dd210467: push   %rbp
  0.21%    0.17%     0x00007fd8dd210468: sub    $0x60,%rsp         ;*synchronization entry
                                                                   ; - com.google.re2j.Machine::add@-1 (line 339)
  1.48%    1.66%     0x00007fd8dd21046c: mov    %edi,0x30(%rsp)
  0.38%    0.46%     0x00007fd8dd210470: mov    %r9,0x28(%rsp)
  0.20%    0.15%     0x00007fd8dd210475: mov    %r8d,0x20(%rsp)
  1.01%    0.95%     0x00007fd8dd21047a: mov    %rsi,0x8(%rsp)
  0.55%    0.66%     0x00007fd8dd21047f: mov    %rcx,0x38(%rsp)
  0.39%    0.36%     0x00007fd8dd210484: mov    0x28(%rcx),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Machine::add@2 (line 339)
                                                                   ; implicit exception: dispatches to 0x00007fd8dd21081d
  0.89%    0.44%     0x00007fd8dd210487: mov    %rdx,0x40(%rsp)
  0.52%    0.52%     0x00007fd8dd21048c: mov    0x10(%rdx),%r11    ;*getfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                                                                   ; - com.google.re2j.Machine::add@5 (line 339)
                                                                   ; implicit exception: dispatches to 0x00007fd8dd21082d
  0.60%    0.48%     0x00007fd8dd210490: cmp    $0x40,%ecx
                     0x00007fd8dd210493: jg     0x00007fd8dd210739  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                                                                   ; - com.google.re2j.Machine::add@5 (line 339)
  0.80%    0.55%     0x00007fd8dd210499: mov    $0x1,%r8d
  0.13%    0.22%     0x00007fd8dd21049f: shl    %cl,%r8            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                                                                   ; - com.google.re2j.Machine::add@5 (line 339)
  2.55%    1.76%     0x00007fd8dd2104a2: mov    %r11,%r10
  0.16%    0.23%     0x00007fd8dd2104a5: and    %r8,%r10
  0.54%    0.55%     0x00007fd8dd2104a8: test   %r10,%r10
                  ╭  0x00007fd8dd2104ab: jne    0x00007fd8dd210500  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                  │                                                ; - com.google.re2j.Machine::add@5 (line 339)
  0.80%    0.76%  │  0x00007fd8dd2104ad: cmp    $0x40,%ecx
                  │  0x00007fd8dd2104b0: jge    0x00007fd8dd210765  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                  │                                                ; - com.google.re2j.Machine::add@19 (line 342)
  0.67%    0.50%  │  0x00007fd8dd2104b6: mov    %r12b,0x18(%rdx)   ;*putfield empty
                  │                                                ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                  │                                                ; - com.google.re2j.Machine::add@19 (line 342)
  0.11%    0.09%  │  0x00007fd8dd2104ba: mov    0x38(%rsp),%r10
  0.55%    0.53%  │  0x00007fd8dd2104bf: mov    0xc(%r10),%r10d    ;*getfield op
                  │                                                ; - com.google.re2j.Machine::add@23 (line 343)
  0.80%    0.54%  │  0x00007fd8dd2104c3: or     %r11,%r8
  0.61%    0.53%  │  0x00007fd8dd2104c6: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                  │                                                ; - com.google.re2j.Machine::add@19 (line 342)
  0.13%    0.17%  │  0x00007fd8dd2104ca: mov    %r10d,%r11d
  0.47%    0.55%  │  0x00007fd8dd2104cd: dec    %r11d
  0.76%    0.56%  │  0x00007fd8dd2104d0: cmp    $0xc,%r11d
                  │  0x00007fd8dd2104d4: jae    0x00007fd8dd21070e  ;*tableswitch
                  │                                                ; - com.google.re2j.Machine::add@26 (line 343)
  0.55%    0.53%  │  0x00007fd8dd2104da: mov    0x38(%rsp),%r11
  0.15%    0.24%  │  0x00007fd8dd2104df: mov    0x14(%r11),%r8d    ;*getfield arg
                  │                                                ; - com.google.re2j.Machine::add@141 (line 357)
  0.56%    0.54%  │  0x00007fd8dd2104e3: mov    0x30(%r11),%r11d
  0.77%    0.76%  │  0x00007fd8dd2104e7: movslq %r10d,%r9
  0.64%    0.71%  │  0x00007fd8dd2104ea: mov    %r11,%rcx
  0.10%    0.18%  │  0x00007fd8dd2104ed: shl    $0x3,%rcx          ;*getfield outInst
                  │                                                ; - com.google.re2j.Machine::add@176 (line 363)
  0.55%    0.60%  │  0x00007fd8dd2104f1: movabs $0x7fd8dd2103e0,%r10  ;   {section_word}
  0.73%    0.67%  │  0x00007fd8dd2104fb: jmpq   *-0x8(%r10,%r9,8)  ;*tableswitch
                  │                                                ; - com.google.re2j.Machine::add@26 (line 343)
           0.00%  ↘  0x00007fd8dd210500: mov    0x70(%rsp),%rax
  0.01%              0x00007fd8dd210505: jmpq   0x00007fd8dd2106e5
                     0x00007fd8dd21050a: andn   %r8d,%edi,%r10d
                     0x00007fd8dd21050f: test   %r10d,%r10d
                     0x00007fd8dd210512: je     0x00007fd8dd2106f1  ;*ifne
                                                                   ; - com.google.re2j.Machine::add@149 (line 357)
                     0x00007fd8dd210518: mov    0x70(%rsp),%rax
                     0x00007fd8dd21051d: jmpq   0x00007fd8dd2106e5
  0.21%    0.24%     0x00007fd8dd210522: mov    0x28(%rsp),%r10
  0.01%    0.02%     0x00007fd8dd210527: mov    0xc(%r10),%ebp     ;*arraylength
                                                                   ; - com.google.re2j.Machine::add@200 (line 367)
                                                                   ; implicit exception: dispatches to 0x00007fd8dd2108a5
  0.16%    0.15%     0x00007fd8dd21052b: cmp    %ebp,%r8d
                     0x00007fd8dd21052e: jl     0x00007fd8dd210805  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine::add@201 (line 367)
  0.01%    0.02%     0x00007fd8dd210534: mov    0x20(%rsp),%r8d
  0.14%    0.16%     0x00007fd8dd210539: mov    %r10,%r9
  0.01%    0.02%     0x00007fd8dd21053c: mov    0x70(%rsp),%r10
  0.10%    0.19%     0x00007fd8dd210541: mov    %r10,(%rsp)
  0.02%    0.02%     0x00007fd8dd210545: xchg   %ax,%ax
  0.10%    0.13%     0x00007fd8dd210547: callq  0x00007fd8dd046020  ; OopMap{off=268}
                                                                   ;*invokespecial add
                                                                   ; - com.google.re2j.Machine::add@262 (line 373)
                                                                   ;   {optimized virtual_call}
                     0x00007fd8dd21054c: jmpq   0x00007fd8dd2106e5  ;*tableswitch
                                                                   ; - com.google.re2j.Machine::add@26 (line 343)
                     0x00007fd8dd210551: mov    0x20(%rsp),%r8d
                     0x00007fd8dd210556: mov    0x28(%rsp),%r9
                     0x00007fd8dd21055b: mov    0x70(%rsp),%r10
                     0x00007fd8dd210560: mov    %r10,(%rsp)
                     0x00007fd8dd210564: data16 xchg %ax,%ax
....................................................................................................
 22.30%   20.97%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 490 (301 bytes) 

                     # parm6:    [sp+0x68]   = int
                     # parm7:    [sp+0x70]   = boolean
                     0x00007fd8dd218dc0: mov    0x8(%rsi),%r10d
                     0x00007fd8dd218dc4: shl    $0x3,%r10
                     0x00007fd8dd218dc8: cmp    %r10,%rax
                     0x00007fd8dd218dcb: jne    0x00007fd8dd045e20  ;   {runtime_call}
                     0x00007fd8dd218dd1: data16 xchg %ax,%ax
                     0x00007fd8dd218dd4: nopl   0x0(%rax,%rax,1)
                     0x00007fd8dd218ddc: data16 data16 xchg %ax,%ax
                   [Verified Entry Point]
  0.24%    0.25%     0x00007fd8dd218de0: mov    %eax,-0x14000(%rsp)
  0.06%    0.04%     0x00007fd8dd218de7: push   %rbp
  0.24%    0.09%     0x00007fd8dd218de8: sub    $0x50,%rsp         ;*synchronization entry
                                                                   ; - com.google.re2j.Machine::step@-1 (line 276)
  0.07%    0.08%     0x00007fd8dd218dec: mov    %edi,0x20(%rsp)
  0.05%    0.03%     0x00007fd8dd218df0: mov    %r9d,0x1c(%rsp)
  0.26%    0.09%     0x00007fd8dd218df5: mov    %r8d,0x18(%rsp)
  0.10%    0.01%     0x00007fd8dd218dfa: mov    %rcx,0x10(%rsp)
  0.05%    0.04%     0x00007fd8dd218dff: mov    %rdx,0x8(%rsp)
  0.10%    0.02%     0x00007fd8dd218e04: mov    %rsi,0x28(%rsp)
  0.17%    0.16%     0x00007fd8dd218e09: mov    0x14(%rsi),%r10d   ;*getfield re2
                                                                   ; - com.google.re2j.Machine::step@1 (line 276)
  0.02%    0.05%     0x00007fd8dd218e0d: movzbl 0x18(%r12,%r10,8),%r10d  ;*getfield longest
                                                                   ; - com.google.re2j.Machine::step@4 (line 276)
                                                                   ; implicit exception: dispatches to 0x00007fd8dd219469
  0.04%    0.01%     0x00007fd8dd218e13: mov    %r10d,0x24(%rsp)
  0.04%    0.04%     0x00007fd8dd218e18: mov    0xc(%rdx),%r11d    ; implicit exception: dispatches to 0x00007fd8dd219479
  0.16%    0.19%     0x00007fd8dd218e1c: test   %r11d,%r11d
                     0x00007fd8dd218e1f: jle    0x00007fd8dd219142  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine::step@18 (line 277)
  0.04%    0.06%     0x00007fd8dd218e25: mov    0x24(%rsp),%r10d
  0.20%    0.21%     0x00007fd8dd218e2a: test   %r10d,%r10d
                     0x00007fd8dd218e2d: jne    0x00007fd8dd2192b5  ;*aload_1
                                                                   ; - com.google.re2j.Machine::step@21 (line 278)
  0.11%    0.08%     0x00007fd8dd218e33: xor    %r11d,%r11d
  0.13%    0.12%  ╭  0x00007fd8dd218e36: jmpq   0x00007fd8dd218ecb
                  │  0x00007fd8dd218e3b: nopl   0x0(%rax,%rax,1)
  0.01%           │  0x00007fd8dd218e40: mov    0x68(%rsp),%ebx
  0.19%           │  0x00007fd8dd218e44: mov    0x70(%rsp),%edx    ;*goto
                  │                                                ; - com.google.re2j.Machine::step@224 (line 301)
  0.23%    0.20%  │  0x00007fd8dd218e48: mov    0x8(%rsp),%r8
  0.50%    0.53%  │  0x00007fd8dd218e4d: mov    0xc(%r8),%r9d      ;*getfield size
                  │                                                ; - com.google.re2j.Machine::step@15 (line 277)
  0.10%    0.08%  │  0x00007fd8dd218e51: mov    0x28(%rsp),%r8
  0.17%    0.03%  │  0x00007fd8dd218e56: mov    0x24(%r8),%r13d    ;*getfield pool
                  │                                                ; - com.google.re2j.Machine::free@5 (line 167)
                  │                                                ; - com.google.re2j.Machine::step@330 (line 327)
  0.23%    0.21%  │  0x00007fd8dd218e5a: mov    0xc(%r8),%r8d      ;*getfield poolSize
                  │                                                ; - com.google.re2j.Machine::free@1 (line 167)
                  │                                                ; - com.google.re2j.Machine::step@330 (line 327)
  0.46%    0.48%  │  0x00007fd8dd218e5e: mov    %rsi,%rax          ;*getfield size
                  │                                                ; - com.google.re2j.Machine::step@15 (line 277)
  0.05%    0.10%  │  0x00007fd8dd218e61: mov    0xc(%r12,%r13,8),%ebp  ;*arraylength
                  │                                                ; - com.google.re2j.Machine::free@8 (line 167)
                  │                                                ; - com.google.re2j.Machine::step@330 (line 327)
                  │                                                ; implicit exception: dispatches to 0x00007fd8dd219449
  0.23%    0.04%  │  0x00007fd8dd218e66: cmp    %ebp,%r8d
                  │  0x00007fd8dd218e69: jge    0x00007fd8dd21925d  ;*if_icmplt
                  │                                                ; - com.google.re2j.Machine::free@9 (line 167)
                  │                                                ; - com.google.re2j.Machine::step@330 (line 327)
  0.22%    0.21%  │  0x00007fd8dd218e6f: mov    %r8d,%edi
  0.44%    0.52%  │  0x00007fd8dd218e72: inc    %edi
  0.04%    0.06%  │  0x00007fd8dd218e74: mov    0x28(%rsp),%rsi
  0.21%    0.06%  │  0x00007fd8dd218e79: mov    %edi,0xc(%rsi)     ;*putfield poolSize
                  │                                                ; - com.google.re2j.Machine::free@45 (line 170)
                  │                                                ; - com.google.re2j.Machine::step@330 (line 327)
  0.21%    0.21%  │  0x00007fd8dd218e7c: cmp    %ebp,%r8d
                  │  0x00007fd8dd218e7f: jae    0x00007fd8dd2191cd  ;*aastore
                  │                                                ; - com.google.re2j.Machine::free@49 (line 170)
                  │                                                ; - com.google.re2j.Machine::step@330 (line 327)
  0.41%    0.40%  │  0x00007fd8dd218e85: mov    %rax,%r11
  0.04%    0.07%  │  0x00007fd8dd218e88: shr    $0x3,%r11
  0.22%    0.21%  │  0x00007fd8dd218e8c: lea    (%r12,%r13,8),%rdi  ;*getfield pool
                  │                                                ; - com.google.re2j.Machine::free@5 (line 167)
                  │                                                ; - com.google.re2j.Machine::step@330 (line 327)
  0.19%    0.19%  │  0x00007fd8dd218e90: lea    0x10(%rdi,%r8,4),%r8
  0.46%    0.34%  │  0x00007fd8dd218e95: mov    %r11d,(%r8)
  0.09%    0.03%  │  0x00007fd8dd218e98: mov    %r8,%r11
  0.23%    0.29%  │  0x00007fd8dd218e9b: shr    $0x9,%r11
  0.21%    0.14%  │  0x00007fd8dd218e9f: movabs $0x7fd8d8dee000,%r8
  0.41%    0.21%  │  0x00007fd8dd218ea9: mov    %r12b,(%r8,%r11,1)  ; OopMap{[8]=Oop [16]=Oop [40]=Oop off=237}
                  │                                                ;*goto
                  │                                                ; - com.google.re2j.Machine::step@336 (line 277)
  0.07%    0.10%  │  0x00007fd8dd218ead: test   %eax,0x164e814d(%rip)        # 0x00007fd8f3701000
                  │                                                ;*goto
                  │                                                ; - com.google.re2j.Machine::step@336 (line 277)
                  │                                                ;   {poll}
  0.20%    0.27%  │  0x00007fd8dd218eb3: cmp    %r9d,%r10d
                  │  0x00007fd8dd218eb6: jge    0x00007fd8dd219142
  0.52%    0.67%  │  0x00007fd8dd218ebc: mov    %ecx,0x20(%rsp)
  0.23%    0.06%  │  0x00007fd8dd218ec0: mov    %ebx,0x68(%rsp)
  0.09%    0.04%  │  0x00007fd8dd218ec4: mov    %edx,0x70(%rsp)
  0.04%    0.05%  │  0x00007fd8dd218ec8: mov    %r10d,%r11d        ;*aload_1
                  │                                                ; - com.google.re2j.Machine::step@21 (line 278)
  0.49%    0.48%  ↘  0x00007fd8dd218ecb: mov    0x8(%rsp),%r10
  0.28%    0.12%     0x00007fd8dd218ed0: mov    0x20(%r10),%r10d   ;*getfield denseThreads
                                                                   ; - com.google.re2j.Machine::step@22 (line 278)
  0.34%    0.32%     0x00007fd8dd218ed4: mov    0xc(%r12,%r10,8),%r9d  ; implicit exception: dispatches to 0x00007fd8dd219415
  1.16%    1.40%     0x00007fd8dd218ed9: cmp    %r9d,%r11d
                     0x00007fd8dd218edc: jae    0x00007fd8dd219190
  0.82%    0.92%     0x00007fd8dd218ee2: shl    $0x3,%r10
  0.32%    0.06%     0x00007fd8dd218ee6: mov    0x10(%r10,%r11,4),%r9d  ;*aaload
                                                                   ; - com.google.re2j.Machine::step@27 (line 278)
  0.09%    0.02%     0x00007fd8dd218eeb: mov    0x10(%r12,%r9,8),%r8d  ;*getfield inst
                                                                   ; - com.google.re2j.Machine::step@78 (line 283)
                                                                   ; implicit exception: dispatches to 0x00007fd8dd219429
  2.14%    2.39%     0x00007fd8dd218ef0: mov    0xc(%r12,%r8,8),%ecx  ;*getfield op
                                                                   ; - com.google.re2j.Machine::step@88 (line 285)
                                                                   ; implicit exception: dispatches to 0x00007fd8dd219439
  4.10%    4.26%     0x00007fd8dd218ef5: mov    0xc(%r12,%r9,8),%r14d  ;*getfield cap
                                                                   ; - com.google.re2j.Machine::step@148 (line 292)
  0.28%    0.25%     0x00007fd8dd218efa: mov    %r11d,%r10d
                     0x00007fd8dd218efd: inc    %r10d              ;*iadd
                                                                   ; - com.google.re2j.Machine::step@215 (line 298)
  0.00%    0.01%     0x00007fd8dd218f00: lea    (%r12,%r9,8),%rsi  ;*aaload
                                                                   ; - com.google.re2j.Machine::step@27 (line 278)
  0.86%    0.73%     0x00007fd8dd218f04: cmp    $0x9,%ecx
                     0x00007fd8dd218f07: je     0x00007fd8dd21911a
  0.08%    0.08%     0x00007fd8dd218f0d: cmp    $0x9,%ecx
                     0x00007fd8dd218f10: jg     0x00007fd8dd21906c
                     0x00007fd8dd218f16: cmp    $0x7,%ecx
                     0x00007fd8dd218f19: je     0x00007fd8dd2192a5
                     0x00007fd8dd218f1f: cmp    $0x7,%ecx
                     0x00007fd8dd218f22: jg     0x00007fd8dd21901e
                     0x00007fd8dd218f28: cmp    $0x6,%ecx
                     0x00007fd8dd218f2b: jne    0x00007fd8dd2192a5  ;*tableswitch
                                                                   ; - com.google.re2j.Machine::step@91 (line 285)
                     0x00007fd8dd218f31: mov    0x68(%rsp),%ebx
                     0x00007fd8dd218f35: cmp    $0x2,%ebx
....................................................................................................
 19.77%   18.44%  <total for region 3>

....[Hottest Region 4]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 538 (764 bytes) 

                            0x00007fd8dd236fd3: add    $0xffffff9f,%r11d
                            0x00007fd8dd236fd7: cmp    $0x1a,%r11d
                            0x00007fd8dd236fdb: jae    0x00007fd8dd2378cf  ;*iconst_1
                                                                          ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                                                                          ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                                                                          ; - com.google.re2j.Machine::match@121 (line 201)
                            0x00007fd8dd236fe1: or     $0x10,%edi         ;*iload_2
                                                                          ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                          ; - com.google.re2j.Machine::match@121 (line 201)
                            0x00007fd8dd236fe4: mov    %rbx,%r11
  0.01%                     0x00007fd8dd236fe7: shl    $0x3,%r11          ;*getfield q1
                                                                          ; - com.google.re2j.Machine::match@53 (line 188)
                            0x00007fd8dd236feb: mov    %r11,0x58(%rsp)
                            0x00007fd8dd236ff0: xor    %ecx,%ecx
                            0x00007fd8dd236ff2: xor    %r11d,%r11d
                            0x00007fd8dd236ff5: mov    %r11d,0x60(%rsp)
                  ╭         0x00007fd8dd236ffa: jmpq   0x00007fd8dd237198
           0.00%  │ ↗       0x00007fd8dd236fff: mov    $0x5,%r8d
                  │╭│       0x00007fd8dd237005: jmpq   0x00007fd8dd237253
  0.07%    0.03%  │││  ↗    0x00007fd8dd23700a: or     $0x20,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                  │││  │                                                  ; - com.google.re2j.Machine::match@323 (line 241)
                  │││  │    0x00007fd8dd23700e: mov    %r8d,0x64(%rsp)    ;*iload_2
                  │││  │                                                  ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                  │││  │                                                  ; - com.google.re2j.Machine::match@323 (line 241)
  0.03%    0.04%  │││  │↗   0x00007fd8dd237013: mov    0x50(%rsp),%r8
  0.16%    0.16%  │││  ││   0x00007fd8dd237018: mov    0x10(%r8),%r11d    ;*getfield end
                  │││  ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::endPos@1 (line 221)
                  │││  ││                                                 ; - com.google.re2j.Machine::match@345 (line 242)
  0.18%    0.13%  │││  ││   0x00007fd8dd23701c: mov    0x60(%rsp),%ecx
  0.02%    0.03%  │││  ││   0x00007fd8dd237020: cmp    %r11d,%ecx
                  │││  ││   0x00007fd8dd237023: je     0x00007fd8dd2377e1  ;*if_icmpne
                  │││  ││                                                 ; - com.google.re2j.Machine::match@348 (line 242)
  0.11%    0.06%  │││  ││   0x00007fd8dd237029: xor    %eax,%eax          ;*invokespecial step
                  │││  ││                                                 ; - com.google.re2j.Machine::match@356 (line 242)
  0.14%    0.14%  │││  ││   0x00007fd8dd23702b: mov    %rax,-0x8(%rsp)
  0.05%    0.06%  │││  ││   0x00007fd8dd237030: mov    0x60(%rsp),%eax
  0.02%    0.03%  │││  ││   0x00007fd8dd237034: mov    %eax,0x4c(%rsp)
  0.11%    0.01%  │││  ││   0x00007fd8dd237038: mov    -0x8(%rsp),%rax
  0.28%    0.30%  │││  ││   0x00007fd8dd23703d: mov    %r10d,0x38(%rsp)
  0.04%    0.07%  │││  ││   0x00007fd8dd237042: add    0x2c(%rsp),%ecx    ;*iadd
                  │││  ││                                                 ; - com.google.re2j.Machine::match@337 (line 242)
  0.03%    0.02%  │││  ││   0x00007fd8dd237046: mov    %ecx,0x60(%rsp)
  0.05%    0.01%  │││  ││   0x00007fd8dd23704a: mov    0x40(%rsp),%rsi
  0.16%    0.14%  │││  ││   0x00007fd8dd23704f: mov    0x20(%rsp),%rdx
  0.03%    0.07%  │││  ││   0x00007fd8dd237054: mov    0x58(%rsp),%rcx
  0.06%    0.03%  │││  ││   0x00007fd8dd237059: mov    0x4c(%rsp),%r8d
  0.04%    0.02%  │││  ││   0x00007fd8dd23705e: mov    0x60(%rsp),%r9d
  0.51%    0.25%  │││  ││   0x00007fd8dd237063: mov    %ebx,%edi
  0.03%    0.02%  │││  ││   0x00007fd8dd237065: mov    0x64(%rsp),%r10d
  0.04%    0.04%  │││  ││   0x00007fd8dd23706a: mov    %r10d,(%rsp)
  0.00%    0.01%  │││  ││   0x00007fd8dd23706e: mov    0x3c(%rsp),%r11d
  0.15%    0.12%  │││  ││   0x00007fd8dd237073: mov    %r11d,0x8(%rsp)
  0.06%    0.00%  │││  ││   0x00007fd8dd237078: mov    %eax,0x10(%rsp)
  0.01%    0.03%  │││  ││   0x00007fd8dd23707c: data16 xchg %ax,%ax
  0.01%           │││  ││   0x00007fd8dd23707f: callq  0x00007fd8dd046020  ; OopMap{[24]=NarrowOop [32]=Oop [64]=Oop [80]=Oop [88]=Oop off=740}
                  │││  ││                                                 ;*invokespecial step
                  │││  ││                                                 ; - com.google.re2j.Machine::match@356 (line 242)
                  │││  ││                                                 ;   {optimized virtual_call}
  0.20%    0.16%  │││  ││   0x00007fd8dd237084: mov    0x2c(%rsp),%r11d
  0.15%    0.22%  │││  ││   0x00007fd8dd237089: test   %r11d,%r11d
                  │││  ││   0x00007fd8dd23708c: je     0x00007fd8dd2376fc  ;*ifne
                  │││  ││                                                 ; - com.google.re2j.Machine::match@361 (line 243)
                  │││  ││   0x00007fd8dd237092: mov    0x40(%rsp),%r10
  0.10%    0.17%  │││  ││   0x00007fd8dd237097: mov    0x28(%r10),%r9d    ;*getfield matchcap
                  │││  ││                                                 ; - com.google.re2j.Machine::match@368 (line 246)
           0.00%  │││  ││   0x00007fd8dd23709b: mov    0xc(%r12,%r9,8),%ebp  ;*arraylength
                  │││  ││                                                 ; - com.google.re2j.Machine::match@371 (line 246)
                  │││  ││                                                 ; implicit exception: dispatches to 0x00007fd8dd2388c1
  0.17%    0.19%  │││  ││   0x00007fd8dd2370a0: test   %ebp,%ebp
                  │││  ││   0x00007fd8dd2370a2: je     0x00007fd8dd237b55  ;*ifne
                  │││  ││                                                 ; - com.google.re2j.Machine::match@372 (line 246)
                  │││  ││   0x00007fd8dd2370a8: mov    0x50(%rsp),%rdi
  0.18%    0.11%  │││  ││   0x00007fd8dd2370ad: mov    0x10(%rdi),%ebx    ;*getfield end
                  │││  ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                  │││  ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.00%           │││  ││   0x00007fd8dd2370b0: mov    0xc(%rdi),%edx     ;*getfield start
                  │││  ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                  │││  ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.15%    0.16%  │││  ││   0x00007fd8dd2370b3: mov    0x14(%rdi),%eax    ;*getfield str
                  │││  ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                  │││  ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.00%    0.00%  │││  ││   0x00007fd8dd2370b6: mov    0x38(%rsp),%ecx
  0.12%    0.13%  │││  ││   0x00007fd8dd2370ba: cmp    $0xffffffff,%ecx
                  │││  ││   0x00007fd8dd2370bd: je     0x00007fd8dd2377eb  ;*if_icmpeq
                  │││  ││                                                 ; - com.google.re2j.Machine::match@401 (line 254)
           0.00%  │││  ││   0x00007fd8dd2370c3: mov    0x28(%rsp),%r8d
  0.15%    0.23%  │││  ││   0x00007fd8dd2370c8: add    0x60(%rsp),%r8d
  0.00%    0.00%  │││  ││   0x00007fd8dd2370cd: add    %edx,%r8d          ;*iadd
                  │││  ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                  │││  ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.19%    0.11%  │││  ││   0x00007fd8dd2370d0: cmp    %ebx,%r8d
                  │││  ││   0x00007fd8dd2370d3: jge    0x00007fd8dd2377fb  ;*if_icmpge
                  │││  ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                  │││  ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
                  │││  ││   0x00007fd8dd2370d9: mov    0x8(%r12,%rax,8),%esi  ; implicit exception: dispatches to 0x00007fd8dd2388d1
  0.15%    0.21%  │││  ││   0x00007fd8dd2370de: cmp    $0xf80002da,%esi   ;   {metadata(&apos;java/lang/String&apos;)}
                  │││  ││   0x00007fd8dd2370e4: jne    0x00007fd8dd2379d1
                  │││  ││   0x00007fd8dd2370ea: lea    (%r12,%rax,8),%r13  ;*invokeinterface charAt
                  │││  ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││  ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││  ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.18%    0.04%  │││  ││   0x00007fd8dd2370ee: test   %r8d,%r8d
                  │││  ││   0x00007fd8dd2370f1: jl     0x00007fd8dd237ae9  ;*iflt
                  │││  ││                                                 ; - java.lang.String::charAt@1 (line 657)
                  │││  ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││  ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││  ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
                  │││  ││   0x00007fd8dd2370f7: vmovd  %r8d,%xmm0
  0.17%    0.19%  │││  ││   0x00007fd8dd2370fc: mov    %ecx,%r14d
           0.01%  │││  ││   0x00007fd8dd2370ff: mov    0xc(%r13),%r11d    ;*getfield value
                  │││  ││                                                 ; - java.lang.String::charAt@6 (line 657)
                  │││  ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││  ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││  ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.15%    0.05%  │││  ││   0x00007fd8dd237103: mov    0xc(%r12,%r11,8),%ebp  ;*arraylength
                  │││  ││                                                 ; - java.lang.String::charAt@9 (line 657)
                  │││  ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││  ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││  ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
                  │││  ││                                                 ; implicit exception: dispatches to 0x00007fd8dd2388e5
  0.04%    0.04%  │││  ││   0x00007fd8dd237108: cmp    %ebp,%r8d
                  │││  ││   0x00007fd8dd23710b: jge    0x00007fd8dd237b8d  ;*if_icmplt
                  │││  ││                                                 ; - java.lang.String::charAt@10 (line 657)
                  │││  ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││  ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││  ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.16%    0.24%  │││  ││   0x00007fd8dd237111: cmp    %ebp,%r8d
                  │││  ││   0x00007fd8dd237114: jae    0x00007fd8dd237914
  0.01%    0.01%  │││  ││   0x00007fd8dd23711a: shl    $0x3,%r11
  0.14%    0.18%  │││  ││   0x00007fd8dd23711e: movzwl 0x10(%r11,%r8,2),%r8d  ;*caload
                  │││  ││                                                 ; - java.lang.String::charAt@27 (line 660)
                  │││  ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││  ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││  ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.00%    0.02%  │││  ││   0x00007fd8dd237124: cmp    $0xd800,%r8d
                  │││  ││   0x00007fd8dd23712b: jge    0x00007fd8dd237bf9  ;*if_icmplt
                  │││  ││                                                 ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                  │││  ││                                                 ; - java.lang.Character::codePointAt@9 (line 4867)
                  │││  ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││  ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.16%    0.23%  │││  ││   0x00007fd8dd237131: shl    $0x3,%r8d          ;*ishl
                  │││  ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                  │││  ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.00%    0.00%  │││  ││   0x00007fd8dd237135: mov    %r8d,%r11d
  0.11%    0.21%  │││  ││   0x00007fd8dd237138: or     $0x1,%r11d
  0.03%    0.03%  │││  ││   0x00007fd8dd23713c: and    $0x7,%r8d
  0.15%    0.24%  │││  ││   0x00007fd8dd237140: sar    $0x3,%r11d         ;*ishr
                  │││  ││                                                 ; - com.google.re2j.Machine::match@417 (line 256)
  0.02%    0.03%  │││  ││   0x00007fd8dd237144: or     $0x1,%r8d          ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                  │││  ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.14%    0.14%  │││  ││   0x00007fd8dd237148: mov    0x40(%rsp),%r10
  0.00%    0.00%  │││  ││   0x00007fd8dd23714d: mov    %r14d,%ecx         ;*aload
                  │││  ││                                                 ; - com.google.re2j.Machine::match@427 (line 259)
  0.11%    0.20%  │││  ││   0x00007fd8dd237150: mov    %r10,0x40(%rsp)
  0.03%    0.07%  │││  ││   0x00007fd8dd237155: mov    %ecx,%edi          ; OopMap{r10=Oop r9=NarrowOop rax=NarrowOop [32]=Oop [64]=Oop [80]=Oop [88]=Oop off=951}
                  │││  ││                                                 ;*goto
                  │││  ││                                                 ; - com.google.re2j.Machine::match@439 (line 262)
  0.18%    0.18%  │││  ││   0x00007fd8dd237157: test   %eax,0x164c9ea3(%rip)        # 0x00007fd8f3701000
                  │││  ││                                                 ;*goto
                  │││  ││                                                 ; - com.google.re2j.Machine::match@439 (line 262)
                  │││  ││                                                 ;   {poll}
           0.00%  │││  ││   0x00007fd8dd23715d: movzbl 0x10(%r10),%ecx    ;*getfield matched
                  │││  ││                                                 ; - com.google.re2j.Machine::match@159 (line 212)
  0.14%    0.21%  │││  ││   0x00007fd8dd237162: mov    0x58(%rsp),%r10
  0.04%    0.04%  │││  ││   0x00007fd8dd237167: shr    $0x3,%r10
  0.12%    0.12%  │││  ││   0x00007fd8dd23716b: mov    %r10d,0x18(%rsp)
  0.01%    0.00%  │││  ││   0x00007fd8dd237170: mov    %edi,%r10d
  0.15%    0.18%  │││  ││   0x00007fd8dd237173: mov    0x64(%rsp),%edi
  0.02%    0.03%  │││  ││   0x00007fd8dd237177: mov    0x20(%rsp),%rsi
  0.09%    0.22%  │││  ││   0x00007fd8dd23717c: mov    %rsi,0x58(%rsp)
  0.01%    0.01%  │││  ││   0x00007fd8dd237181: mov    0x28(%rsp),%esi
  0.11%    0.15%  │││  ││   0x00007fd8dd237185: mov    %esi,0x2c(%rsp)
  0.04%    0.04%  │││  ││   0x00007fd8dd237189: mov    %r11d,%r13d
  0.12%    0.17%  │││  ││   0x00007fd8dd23718c: mov    %r8d,%r14d
           0.00%  │││  ││   0x00007fd8dd23718f: vmovd  %r9d,%xmm6
  0.14%    0.12%  │││  ││   0x00007fd8dd237194: mov    %ebx,0x14(%rsp)
  0.02%    0.03%  ↘││  ││   0x00007fd8dd237198: mov    0x18(%rsp),%r11d
  0.12%    0.22%   ││  ││   0x00007fd8dd23719d: movzbl 0x18(%r12,%r11,8),%r11d  ; implicit exception: dispatches to 0x00007fd8dd238891
  0.02%    0.02%   ││  ││   0x00007fd8dd2371a3: mov    0x18(%rsp),%r9d
  0.15%    0.22%   ││  ││   0x00007fd8dd2371a8: lea    (%r12,%r9,8),%r8   ;*aload
                   ││  ││                                                 ; - com.google.re2j.Machine::match@136 (line 207)
  0.03%    0.05%   ││  ││   0x00007fd8dd2371ac: mov    %r8,0x20(%rsp)
  0.10%    0.18%   ││  ││   0x00007fd8dd2371b1: test   %r11d,%r11d
                   ││  ││   0x00007fd8dd2371b4: jne    0x00007fd8dd2373ae  ;*ifeq
                   ││  ││                                                 ; - com.google.re2j.Machine::match@141 (line 207)
  0.00%            ││  ││   0x00007fd8dd2371ba: mov    %r10d,0x4c(%rsp)
  0.12%    0.23%   ││  ││   0x00007fd8dd2371bf: mov    %r14d,%r9d
  0.02%    0.09%   ││  ││   0x00007fd8dd2371c2: mov    %r13d,%r10d        ;*aload_0
                   ││  ││                                                 ; - com.google.re2j.Machine::match@267 (line 233)
  0.14%    0.15%   ││  ││   0x00007fd8dd2371c5: test   %ecx,%ecx
                   ││  ││   0x00007fd8dd2371c7: jne    0x00007fd8dd237a21  ;*ifne
                   ││  ││                                                 ; - com.google.re2j.Machine::match@271 (line 233)
  0.00%    0.01%   ││  ││   0x00007fd8dd2371cd: mov    0x60(%rsp),%ebx
  0.12%    0.20%   ││  ││   0x00007fd8dd2371d1: test   %ebx,%ebx
                   ││  ││   0x00007fd8dd2371d3: je     0x00007fd8dd237892  ;*ifeq
                   ││  ││                                                 ; - com.google.re2j.Machine::match@275 (line 233)
  0.05%    0.04%   ││  ││   0x00007fd8dd2371d9: mov    0x3c(%rsp),%r8d
  0.10%    0.15%   ││  ││   0x00007fd8dd2371de: test   %r8d,%r8d
                   ││  ││   0x00007fd8dd2371e1: jne    0x00007fd8dd237a9d  ;*aload_0
                   ││  ││                                                 ; - com.google.re2j.Machine::match@282 (line 236)
  0.00%            ││  ││   0x00007fd8dd2371e7: vmovd  %xmm6,%r11d
  0.15%    0.10%   ││  ││   0x00007fd8dd2371ec: mov    0xc(%r12,%r11,8),%ebp  ;*arraylength
                   ││  ││                                                 ; - com.google.re2j.Machine::match@286 (line 236)
                   ││  ││                                                 ; implicit exception: dispatches to 0x00007fd8dd2388a1
  0.02%    0.04%   ││  ││   0x00007fd8dd2371f1: test   %ebp,%ebp
                   ││  ││   0x00007fd8dd2371f3: jle    0x00007fd8dd237a5d  ;*ifle
                   ││  ││                                                 ; - com.google.re2j.Machine::match@287 (line 236)
  0.08%    0.17%   ││  ││   0x00007fd8dd2371f9: test   %ebp,%ebp
                   ││  ││   0x00007fd8dd2371fb: jbe    0x00007fd8dd237989
  0.00%    0.00%   ││  ││   0x00007fd8dd237201: mov    %ebx,0x10(%r12,%r11,8)  ;*iastore
                   ││  ││                                                 ; - com.google.re2j.Machine::match@296 (line 237)
  0.13%    0.13%   ││  ││   0x00007fd8dd237206: mov    0x40(%rsp),%rsi
  0.01%    0.06%   ││  ││   0x00007fd8dd23720b: mov    0x18(%rsi),%edx    ;*getfield prog
                   ││  ││                                                 ; - com.google.re2j.Machine::match@301 (line 239)
  0.15%    0.22%   ││  ││   0x00007fd8dd23720e: mov    0x1c(%r12,%rdx,8),%ecx  ; implicit exception: dispatches to 0x00007fd8dd2388b1
  0.01%            ││  ││   0x00007fd8dd237213: mov    %r10d,%ebp
  0.13%    0.21%   ││  ││   0x00007fd8dd237216: mov    %r9d,0x28(%rsp)
  0.04%    0.04%   ││  ││   0x00007fd8dd23721b: mov    %r8d,0x3c(%rsp)    ;*ifeq
                   ││  ││                                                 ; - com.google.re2j.Machine::match@275 (line 233)
  0.13%    0.19%   ││  ││   0x00007fd8dd237220: shl    $0x3,%rcx          ;*getfield startInst
                   ││  ││                                                 ; - com.google.re2j.Machine::match@304 (line 239)
  0.01%    0.00%   ││  ││   0x00007fd8dd237224: mov    %r11,%r9
  0.15%    0.21%   ││  ││   0x00007fd8dd237227: shl    $0x3,%r9           ;*getfield matchcap
                   ││  ││                                                 ; - com.google.re2j.Machine::match@283 (line 236)
  0.05%    0.05%   ││  ││   0x00007fd8dd23722b: mov    0x20(%rsp),%rdx
  0.10%    0.19%   ││  ││   0x00007fd8dd237230: mov    0x60(%rsp),%r8d
                   ││  ││   0x00007fd8dd237235: xor    %r10d,%r10d
  0.13%    0.22%   ││  ││   0x00007fd8dd237238: mov    %r10,(%rsp)
  0.03%    0.03%   ││  ││   0x00007fd8dd23723c: data16 xchg %ax,%ax
  0.11%    0.18%   ││  ││   0x00007fd8dd23723f: callq  0x00007fd8dd046020  ; OopMap{[24]=NarrowOop [32]=Oop [64]=Oop [80]=Oop [88]=Oop off=1188}
                   ││  ││                                                 ;*invokespecial add
                   ││  ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
                   ││  ││                                                 ;   {optimized virtual_call}
  0.06%    0.09%   ││  ││   0x00007fd8dd237244: mov    0x4c(%rsp),%ebx
  0.03%    0.00%   ││  ││   0x00007fd8dd237248: test   %ebx,%ebx
                   │╰  ││   0x00007fd8dd23724a: jl     0x00007fd8dd236fff  ;*ifge
                   │   ││                                                 ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                   │   ││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.22%    0.31%   │   ││   0x00007fd8dd237250: xor    %r8d,%r8d          ;*iload_0
                   │   ││                                                 ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                   │   ││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.09%    0.07%   ↘   ││   0x00007fd8dd237253: cmp    $0xa,%ebx
                       ││   0x00007fd8dd237256: je     0x00007fd8dd2377cf  ;*iload_1
                       ││                                                 ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                       ││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
                       ││   0x00007fd8dd23725c: mov    %ebp,%r10d
  0.01%    0.00%       ││   0x00007fd8dd23725f: test   %r10d,%r10d
                       ││   0x00007fd8dd237262: jl     0x00007fd8dd2375eb  ;*iload_1
                       ││                                                 ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                       ││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.21%    0.35%       ││   0x00007fd8dd237268: cmp    $0xa,%r10d
                       ││   0x00007fd8dd23726c: je     0x00007fd8dd2377d8  ;*iload_0
                       ││                                                 ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                       ││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.06%    0.06%       ││   0x00007fd8dd237272: mov    0x4c(%rsp),%r11d
  0.00%    0.00%       ││   0x00007fd8dd237277: add    $0xffffffbf,%r11d
  0.00%    0.01%       ││   0x00007fd8dd23727b: cmp    $0x1a,%r11d
                     ╭ ││   0x00007fd8dd23727f: jb     0x00007fd8dd237294  ;*if_icmple
                     │ ││                                                 ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                     │ ││                                                 ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     │ ││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.26%    0.29%     │ ││   0x00007fd8dd237281: mov    0x4c(%rsp),%r9d
  0.05%    0.06%     │ ││   0x00007fd8dd237286: add    $0xffffff9f,%r9d
                     │ ││   0x00007fd8dd23728a: cmp    $0x1a,%r9d
                     │ ││   0x00007fd8dd23728e: jae    0x00007fd8dd23784c  ;*iconst_1
                     │ ││                                                 ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                     │ ││                                                 ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     │ ││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.03%    0.00%     ↘ ││   0x00007fd8dd237294: mov    $0x1,%ebp          ;*ireturn
                       ││                                                 ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                       ││                                                 ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                       ││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.22%    0.14%       ││   0x00007fd8dd237299: mov    %r10d,%r11d
  0.05%    0.06%       ││   0x00007fd8dd23729c: add    $0xffffffbf,%r11d
  0.01%                ││   0x00007fd8dd2372a0: cmp    $0x1a,%r11d
                      ╭││   0x00007fd8dd2372a4: jb     0x00007fd8dd2372b7  ;*if_icmple
                      │││                                                 ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                      │││                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                      │││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.08%    0.05%      │││   0x00007fd8dd2372a6: mov    %r10d,%r9d
  0.15%    0.29%      │││   0x00007fd8dd2372a9: add    $0xffffff9f,%r9d
  0.04%    0.08%      │││   0x00007fd8dd2372ad: cmp    $0x1a,%r9d
                      │││   0x00007fd8dd2372b1: jae    0x00007fd8dd23786f  ;*iconst_1
                      │││                                                 ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                      │││                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                      │││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.00%    0.03%      ↘││   0x00007fd8dd2372b7: mov    $0x1,%r11d         ;*ireturn
                       ││                                                 ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                       ││                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                       ││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.10%    0.08%       ││   0x00007fd8dd2372bd: cmp    %r11d,%ebp
  0.17%    0.22%       ╰│   0x00007fd8dd2372c0: je     0x00007fd8dd23700a  ;*if_icmpeq
                        │                                                 ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                        │                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.08%    0.05%        │   0x00007fd8dd2372c6: or     $0x10,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                        │                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.01%    0.00%        │   0x00007fd8dd2372ca: mov    %r8d,0x64(%rsp)
  0.20%    0.15%        ╰   0x00007fd8dd2372cf: jmpq   0x00007fd8dd237013
                            0x00007fd8dd2372d4: nopl   0x0(%rax,%rax,1)
                            0x00007fd8dd2372dc: data16 data16 xchg %ax,%ax
  0.00%    0.01%            0x00007fd8dd2372e0: mov    %r11d,%ebp
  0.00%                     0x00007fd8dd2372e3: jmpq   0x00007fd8dd23752f
                            0x00007fd8dd2372e8: mov    %ebp,%r8d
                            0x00007fd8dd2372eb: inc    %r8d
                            0x00007fd8dd2372ee: mov    %ebp,%r11d
                         ╭  0x00007fd8dd2372f1: jmp    0x00007fd8dd237301
                         │  0x00007fd8dd2372f3: mov    %ebp,%r11d
                         │  0x00007fd8dd2372f6: add    $0x2,%r11d
                         │  0x00007fd8dd2372fa: mov    %ebp,%r8d
                         │  0x00007fd8dd2372fd: add    $0x3,%r8d
                         ↘  0x00007fd8dd237301: mov    %r8d,0x38(%rsp)
                            0x00007fd8dd237306: vmovd  %r11d,%xmm3
....................................................................................................
 11.40%   13.05%  <total for region 4>

....[Hottest Regions]...............................................................................
 27.59%   29.33%         C2, level 4  com.google.re2j.Machine::add, version 487 (373 bytes) 
 22.30%   20.97%         C2, level 4  com.google.re2j.Machine::add, version 487 (231 bytes) 
 19.77%   18.44%         C2, level 4  com.google.re2j.Machine::step, version 490 (301 bytes) 
 11.40%   13.05%         C2, level 4  com.google.re2j.Machine::match, version 538 (764 bytes) 
  8.37%    7.57%         C2, level 4  com.google.re2j.Machine::step, version 490 (348 bytes) 
  5.79%    6.73%        runtime stub  StubRoutines::jint_disjoint_arraycopy (128 bytes) 
  0.63%    0.63%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.63%    0.66%         C2, level 4  com.google.re2j.Machine::match, version 538 (65 bytes) 
  0.47%    0.18%         C2, level 4  com.google.re2j.Machine::init, version 539 (258 bytes) 
  0.09%    0.02%   [kernel.kallsyms]  [unknown] (2 bytes) 
  0.09%    0.06%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 621 (105 bytes) 
  0.08%    0.08%         C2, level 4  com.google.re2j.Matcher::find, version 561 (83 bytes) 
  0.08%    0.08%         C2, level 4  com.google.re2j.Machine::match, version 538 (173 bytes) 
  0.07%    0.01%   [kernel.kallsyms]  [unknown] (39 bytes) 
  0.07%    0.03%         C2, level 4  com.google.re2j.Machine::init, version 539 (28 bytes) 
  0.06%    0.03%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.05%    0.03%         C2, level 4  com.google.re2j.Matcher::find, version 561 (28 bytes) 
  0.05%    0.03%   [kernel.kallsyms]  [unknown] (26 bytes) 
  0.05%    0.03%         C2, level 4  com.google.re2j.Machine::match, version 538 (238 bytes) 
  0.04%                  C2, level 4  com.google.re2j.Machine::init, version 539 (22 bytes) 
  2.31%    2.02%  <...other 417 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 49.89%   50.30%         C2, level 4  com.google.re2j.Machine::add, version 487 
 28.14%   26.01%         C2, level 4  com.google.re2j.Machine::step, version 490 
 12.41%   14.05%         C2, level 4  com.google.re2j.Machine::match, version 538 
  5.79%    6.73%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
  1.69%    1.46%   [kernel.kallsyms]  [unknown] 
  0.64%    0.27%         C2, level 4  com.google.re2j.Machine::init, version 539 
  0.38%    0.12%         C2, level 4  com.google.re2j.Matcher::find, version 561 
  0.21%    0.08%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 621 
  0.09%    0.06%         C2, level 4  java.util.Collections::shuffle, version 569 
  0.04%    0.03%      hsdis-amd64.so  [unknown] 
  0.03%    0.04%           libjvm.so  _ZN13xmlTextStream5writeEPKcm 
  0.03%    0.05%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.03%    0.07%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.02%    0.02%        libc-2.26.so  __strlen_avx2 
  0.02%    0.00%        libc-2.26.so  _IO_fflush 
  0.02%                  C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 562 
  0.02%                 libc-2.26.so  __clock_gettime 
  0.02%    0.05%        libc-2.26.so  _IO_fwrite 
  0.02%    0.00%         interpreter  method entry point (kind = zerolocals)  
  0.02%    0.05%        libc-2.26.so  vfprintf 
  0.47%    0.33%  <...other 68 warm methods...>
....................................................................................................
100.00%   99.75%  <totals>

....[Distribution by Source]........................................................................
 91.77%   90.89%         C2, level 4
  5.82%    6.77%        runtime stub
  1.69%    1.46%   [kernel.kallsyms]
  0.37%    0.46%           libjvm.so
  0.19%    0.28%        libc-2.26.so
  0.06%    0.06%  libpthread-2.26.so
  0.04%    0.03%      hsdis-amd64.so
  0.03%    0.01%         interpreter
  0.01%    0.01%              [vdso]
  0.00%                    libzip.so
  0.00%    0.00%         C1, level 3
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                     Mode  Cnt     Score    Error  Units
Re2jFindRegex.testExp1       thrpt   20  9375.105 ± 27.314  ops/s
Re2jFindRegex.testExp1:·asm  thrpt            NaN             ---
