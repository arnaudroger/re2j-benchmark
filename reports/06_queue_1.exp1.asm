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
# Warmup Iteration   1: 7219.727 ops/s
# Warmup Iteration   2: 11395.270 ops/s
# Warmup Iteration   3: 11820.580 ops/s
# Warmup Iteration   4: 12009.496 ops/s
# Warmup Iteration   5: 11968.266 ops/s
# Warmup Iteration   6: 11841.996 ops/s
# Warmup Iteration   7: 11815.702 ops/s
# Warmup Iteration   8: 11902.617 ops/s
# Warmup Iteration   9: 11950.777 ops/s
# Warmup Iteration  10: 11312.099 ops/s
# Warmup Iteration  11: 11882.389 ops/s
# Warmup Iteration  12: 11691.270 ops/s
# Warmup Iteration  13: 12030.422 ops/s
# Warmup Iteration  14: 11772.801 ops/s
# Warmup Iteration  15: 11899.056 ops/s
# Warmup Iteration  16: 11875.775 ops/s
# Warmup Iteration  17: 11903.308 ops/s
# Warmup Iteration  18: 11752.304 ops/s
# Warmup Iteration  19: 12037.232 ops/s
# Warmup Iteration  20: 12019.980 ops/s
Iteration   1: 12014.227 ops/s
Iteration   2: 11681.707 ops/s
Iteration   3: 11991.906 ops/s
Iteration   4: 11976.910 ops/s
Iteration   5: 12009.395 ops/s
Iteration   6: 11754.514 ops/s
Iteration   7: 11905.936 ops/s
Iteration   8: 12003.268 ops/s
Iteration   9: 12031.214 ops/s
Iteration  10: 11997.165 ops/s
Iteration  11: 12006.156 ops/s
Iteration  12: 11917.244 ops/s
Iteration  13: 12006.355 ops/s
Iteration  14: 11717.412 ops/s
Iteration  15: 12035.697 ops/s
Iteration  16: 11976.120 ops/s
Iteration  17: 11924.730 ops/s
Iteration  18: 12018.662 ops/s
Iteration  19: 12019.531 ops/s
Iteration  20: 12018.200 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  11950.317 ±(99.9%) 93.076 ops/s [Average]
  (min, avg, max) = (11681.707, 11950.317, 12035.697), stdev = 107.187
  CI (99.9%): [11857.241, 12043.394] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1:·asm":
PrintAssembly processed: 216804 total address lines.
Perf output processed (skipped 23.132 seconds):
 Column 1: cycles (20306 events)
 Column 2: instructions (20280 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 542 (373 bytes) 

                          0x00007fd3592405e0: mov    %r10,(%rsp)
                          0x00007fd3592405e4: data16 xchg %ax,%ax
                          0x00007fd3592405e7: callq  0x00007fd359046020  ; OopMap{off=300}
                                                                        ;*invokespecial add
                                                                        ; - com.google.re2j.Machine::add@186 (line 363)
                                                                        ;   {optimized virtual_call}
                  ╭       0x00007fd3592405ec: jmpq   0x00007fd359240765
                  │       0x00007fd3592405f1: mov    0x70(%rsp),%rax
                  │╭      0x00007fd3592405f6: jmpq   0x00007fd359240765  ;*tableswitch
                  ││                                                    ; - com.google.re2j.Machine::add@26 (line 343)
  1.18%    1.55%  ││      0x00007fd3592405fb: mov    0x20(%rsp),%r8d
  0.03%    0.05%  ││      0x00007fd359240600: mov    0x28(%rsp),%r9
  0.00%    0.00%  ││      0x00007fd359240605: mov    0x70(%rsp),%r10
  0.09%    0.12%  ││      0x00007fd35924060a: mov    %r10,(%rsp)
  0.41%    0.53%  ││      0x00007fd35924060e: mov    %rsi,%rbp
  0.05%    0.08%  ││      0x00007fd359240611: xchg   %ax,%ax
  0.00%    0.02%  ││      0x00007fd359240613: callq  0x00007fd359046020  ; OopMap{rbp=Oop [40]=Oop [56]=Oop [64]=Oop off=344}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@114 (line 352)
                  ││                                                    ;   {optimized virtual_call}
  0.08%    0.05%  ││      0x00007fd359240618: mov    0x38(%rsp),%r10
  0.07%    0.10%  ││      0x00007fd35924061d: mov    0x34(%r10),%r11d
  0.44%    0.52%  ││      0x00007fd359240621: mov    %r11,%rcx
  0.06%    0.07%  ││      0x00007fd359240624: shl    $0x3,%rcx          ;*getfield argInst
                  ││                                                    ; - com.google.re2j.Machine::add@122 (line 353)
  0.05%    0.06%  ││      0x00007fd359240628: mov    %rbp,%rsi
  0.03%    0.02%  ││      0x00007fd35924062b: mov    0x40(%rsp),%rdx
  0.43%    0.34%  ││      0x00007fd359240630: mov    0x20(%rsp),%r8d
  0.08%    0.06%  ││      0x00007fd359240635: mov    0x28(%rsp),%r9
  0.06%    0.04%  ││      0x00007fd35924063a: mov    0x30(%rsp),%edi
  0.04%    0.02%  ││      0x00007fd35924063e: mov    %rax,(%rsp)
  0.51%    0.56%  ││      0x00007fd359240642: nop
  0.06%    0.07%  ││      0x00007fd359240643: callq  0x00007fd359046020  ; OopMap{off=392}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@132 (line 353)
                  ││                                                    ;   {optimized virtual_call}
  0.17%    0.21%  ││╭     0x00007fd359240648: jmpq   0x00007fd359240765  ;*aload
                  │││                                                   ; - com.google.re2j.Machine::add@270 (line 383)
  1.05%    1.29%  │││     0x00007fd35924064d: mov    0x38(%rsp),%r10
  0.08%    0.08%  │││     0x00007fd359240652: mov    %r10,%r9
  0.43%    0.27%  │││     0x00007fd359240655: shr    $0x3,%r9           ;*putfield inst
                  │││                                                   ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │││                                                   ; - com.google.re2j.Machine::add@277 (line 384)
  0.30%    0.36%  │││     0x00007fd359240659: mov    0x70(%rsp),%rbx
  0.38%    0.57%  │││     0x00007fd35924065e: test   %rbx,%rbx
                  │││╭    0x00007fd359240661: je     0x00007fd35924067e  ;*ifnonnull
                  ││││                                                  ; - com.google.re2j.Machine::add@272 (line 383)
  0.04%           ││││    0x00007fd359240663: mov    %r9d,0x10(%rbx)
  0.05%    0.03%  ││││    0x00007fd359240667: mov    %rbx,%r10
  0.22%    0.21%  ││││    0x00007fd35924066a: shr    $0x9,%r10
  0.02%    0.02%  ││││    0x00007fd35924066e: movabs $0x7fd354a2e000,%r11
  0.02%           ││││    0x00007fd359240678: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                  ││││                                                  ; - com.google.re2j.Machine::add@288 (line 386)
  0.03%    0.00%  ││││╭   0x00007fd35924067c: jmp    0x00007fd3592406cb
  0.05%    0.06%  │││↘│   0x00007fd35924067e: mov    0xc(%rsi),%r10d    ;*getfield poolSize
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@1 (line 132)
                  │││ │                                                 ; - com.google.re2j.Machine::add@277 (line 384)
  0.50%    0.23%  │││ │   0x00007fd359240682: test   %r10d,%r10d
                  │││ │   0x00007fd359240685: jle    0x00007fd35924086d  ;*ifle
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@4 (line 132)
                  │││ │                                                 ; - com.google.re2j.Machine::add@277 (line 384)
  0.10%    0.02%  │││ │   0x00007fd35924068b: mov    0x24(%rsi),%ecx    ;*getfield pool
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@18 (line 134)
                  │││ │                                                 ; - com.google.re2j.Machine::add@277 (line 384)
  0.45%    0.54%  │││ │   0x00007fd35924068e: mov    %r10d,%ebp
  0.05%    0.06%  │││ │   0x00007fd359240691: dec    %ebp               ;*isub
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@13 (line 133)
                  │││ │                                                 ; - com.google.re2j.Machine::add@277 (line 384)
  0.42%    0.38%  │││ │   0x00007fd359240693: mov    %ebp,0xc(%rsi)     ;*putfield poolSize
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@14 (line 133)
                  │││ │                                                 ; - com.google.re2j.Machine::add@277 (line 384)
  0.05%    0.05%  │││ │   0x00007fd359240696: mov    0xc(%r12,%rcx,8),%r8d  ; implicit exception: dispatches to 0x00007fd3592408e9
  0.37%    0.50%  │││ │   0x00007fd35924069b: cmp    %r8d,%ebp
                  │││ │   0x00007fd35924069e: jae    0x00007fd359240815
  0.06%    0.03%  │││ │   0x00007fd3592406a4: lea    (%r12,%rcx,8),%r11
  0.40%    0.49%  │││ │   0x00007fd3592406a8: mov    0xc(%r11,%r10,4),%r10d  ;*aaload
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │││ │                                                 ; - com.google.re2j.Machine::add@277 (line 384)
  0.04%    0.05%  │││ │   0x00007fd3592406ad: mov    %r9d,0x10(%r12,%r10,8)  ;*putfield inst
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │││ │                                                 ; - com.google.re2j.Machine::add@277 (line 384)
                  │││ │                                                 ; implicit exception: dispatches to 0x00007fd3592408f9
  0.48%    0.60%  │││ │   0x00007fd3592406b2: lea    (%r12,%r10,8),%rbx  ;*aaload
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │││ │                                                 ; - com.google.re2j.Machine::add@277 (line 384)
  0.06%    0.02%  │││ │   0x00007fd3592406b6: mov    %rbx,%r10
  0.36%    0.37%  │││ │   0x00007fd3592406b9: shr    $0x9,%r10
  0.03%    0.06%  │││ │   0x00007fd3592406bd: movabs $0x7fd354a2e000,%r11
  0.37%    0.36%  │││ │   0x00007fd3592406c7: mov    %r12b,(%r11,%r10,1)  ;*aload
                  │││ │                                                 ; - com.google.re2j.Machine::add@291 (line 388)
  0.36%    0.16%  │││ ↘   0x00007fd3592406cb: mov    0x28(%rsp),%rdi
  0.45%    0.42%  │││     0x00007fd3592406d0: mov    0xc(%rdi),%r10d    ;*arraylength
                  │││                                                   ; - com.google.re2j.Machine::add@293 (line 388)
                  │││                                                   ; implicit exception: dispatches to 0x00007fd3592408c1
  0.12%    0.08%  │││     0x00007fd3592406d4: test   %r10d,%r10d
                  │││     0x00007fd3592406d7: jle    0x00007fd35924084e  ;*ifle
                  │││                                                   ; - com.google.re2j.Machine::add@294 (line 388)
  0.44%    0.40%  │││     0x00007fd3592406dd: mov    0xc(%rbx),%r8d     ;*getfield cap
                  │││                                                   ; - com.google.re2j.Machine::add@299 (line 388)
  0.30%    0.10%  │││     0x00007fd3592406e1: mov    %r8,%r11
  0.35%    0.50%  │││     0x00007fd3592406e4: shl    $0x3,%r11
  0.13%    0.03%  │││     0x00007fd3592406e8: cmp    %rdi,%r11
                  │││  ╭  0x00007fd3592406eb: je     0x00007fd359240718  ;*if_acmpeq
                  │││  │                                                ; - com.google.re2j.Machine::add@304 (line 388)
  0.45%    0.36%  │││  │  0x00007fd3592406ed: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x00007fd35924090d
  0.33%    0.28%  │││  │  0x00007fd3592406f2: lea    (%r12,%r8,8),%rcx  ;*getfield cap
                  │││  │                                                ; - com.google.re2j.Machine::add@299 (line 388)
  0.40%    0.32%  │││  │  0x00007fd3592406f6: cmp    %r10d,%r11d
                  │││  │  0x00007fd3592406f9: jb     0x00007fd359240829
  0.57%    0.56%  │││  │  0x00007fd3592406ff: lea    0x10(%r12,%r8,8),%rsi
  0.18%    0.11%  │││  │  0x00007fd359240704: add    $0x10,%rdi
  0.01%    0.01%  │││  │  0x00007fd359240708: movslq %r10d,%rdx
  0.38%    0.13%  │││  │  0x00007fd35924070b: movabs $0x7fd359052640,%r10
  0.36%    0.35%  │││  │  0x00007fd359240715: callq  *%r10              ;*aload_1
                  │││  │                                                ; - com.google.re2j.Machine::add@322 (line 391)
  0.02%    0.04%  │││  ↘  0x00007fd359240718: mov    0x40(%rsp),%r10
  0.58%    0.70%  │││     0x00007fd35924071d: mov    0xc(%r10),%r10d    ;*getfield size
                  │││                                                   ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                  │││                                                   ; - com.google.re2j.Machine::add@325 (line 391)
  0.67%    0.71%  │││     0x00007fd359240721: mov    0x40(%rsp),%r11
  0.08%           │││     0x00007fd359240726: mov    0x20(%r11),%ebp    ;*getfield denseThreads
                  │││                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                  │││                                                   ; - com.google.re2j.Machine::add@325 (line 391)
  0.28%    0.25%  │││     0x00007fd35924072a: mov    %r10d,%r8d
  0.38%    0.31%  │││     0x00007fd35924072d: inc    %r8d
  0.65%    0.48%  │││     0x00007fd359240730: mov    %r8d,0xc(%r11)     ;*putfield size
                  │││                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                  │││                                                   ; - com.google.re2j.Machine::add@325 (line 391)
  0.09%    0.15%  │││     0x00007fd359240734: mov    0xc(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007fd3592408d1
  0.41%    0.56%  │││     0x00007fd359240739: cmp    %r8d,%r10d
                  │││     0x00007fd35924073c: jae    0x00007fd35924079d  ;*aastore
                  │││                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │││                                                   ; - com.google.re2j.Machine::add@325 (line 391)
  0.89%    1.29%  │││     0x00007fd35924073e: lea    (%r12,%rbp,8),%r11  ;*getfield denseThreads
                  │││                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                  │││                                                   ; - com.google.re2j.Machine::add@325 (line 391)
  0.32%    0.54%  │││     0x00007fd359240742: lea    0x10(%r11,%r10,4),%r10
  0.04%    0.05%  │││     0x00007fd359240747: mov    %rbx,%r11
  0.08%    0.11%  │││     0x00007fd35924074a: shr    $0x3,%r11
  0.62%    0.86%  │││     0x00007fd35924074e: mov    %r11d,(%r10)
  2.22%    2.65%  │││     0x00007fd359240751: shr    $0x9,%r10
  0.06%    0.05%  │││     0x00007fd359240755: movabs $0x7fd354a2e000,%r11
  0.08%    0.07%  │││     0x00007fd35924075f: mov    %r12b,(%r11,%r10,1)  ;*aastore
                  │││                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │││                                                   ; - com.google.re2j.Machine::add@325 (line 391)
  1.63%    1.65%  │││     0x00007fd359240763: xor    %eax,%eax          ;*invokevirtual contains
                  │││                                                   ; - com.google.re2j.Machine::add@5 (line 339)
  1.25%    1.38%  ↘↘↘     0x00007fd359240765: add    $0x60,%rsp
  0.07%    0.04%          0x00007fd359240769: pop    %rbp
  0.04%    0.03%          0x00007fd35924076a: test   %eax,0x1602e890(%rip)        # 0x00007fd36f26f000
                                                                        ;   {poll_return}
  1.69%    2.03%          0x00007fd359240770: retq                      ;*tableswitch
                                                                        ; - com.google.re2j.Machine::add@26 (line 343)
                          0x00007fd359240771: mov    0x20(%rsp),%r8d
                          0x00007fd359240776: mov    0x28(%rsp),%r9
                          0x00007fd35924077b: mov    0x70(%rsp),%r10
                          0x00007fd359240780: mov    %r10,(%rsp)
                          0x00007fd359240784: data16 xchg %ax,%ax
                          0x00007fd359240787: callq  0x00007fd359046020  ; OopMap{off=716}
                                                                        ;*invokespecial add
                                                                        ; - com.google.re2j.Machine::add@165 (line 358)
....................................................................................................
 27.29%   28.93%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 542 (160 bytes) 

                     # parm4:    rdi       = int
                     # parm5:    [sp+0x70]   = &apos;com/google/re2j/Machine$Thread&apos;  (sp of caller)
                     0x00007fd3592404c0: mov    0x8(%rsi),%r10d    ;   {no_reloc}
                     0x00007fd3592404c4: shl    $0x3,%r10
                     0x00007fd3592404c8: cmp    %r10,%rax
                     0x00007fd3592404cb: jne    0x00007fd359045e20  ;   {runtime_call}
                     0x00007fd3592404d1: data16 xchg %ax,%ax
                     0x00007fd3592404d4: nopl   0x0(%rax,%rax,1)
                     0x00007fd3592404dc: data16 data16 xchg %ax,%ax
                   [Verified Entry Point]
  1.35%    1.34%     0x00007fd3592404e0: mov    %eax,-0x14000(%rsp)
  0.92%    1.11%     0x00007fd3592404e7: push   %rbp
  0.29%    0.42%     0x00007fd3592404e8: sub    $0x60,%rsp         ;*synchronization entry
                                                                   ; - com.google.re2j.Machine::add@-1 (line 339)
  1.69%    1.72%     0x00007fd3592404ec: mov    %edi,0x30(%rsp)
  0.30%    0.27%     0x00007fd3592404f0: mov    %r9,0x28(%rsp)
  0.32%    0.40%     0x00007fd3592404f5: mov    %r8d,0x20(%rsp)
  1.06%    0.64%     0x00007fd3592404fa: mov    %rsi,0x8(%rsp)
  0.75%    0.99%     0x00007fd3592404ff: mov    %rcx,0x38(%rsp)
  0.19%    0.24%     0x00007fd359240504: mov    0x28(%rcx),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Machine::add@2 (line 339)
                                                                   ; implicit exception: dispatches to 0x00007fd35924089d
  1.04%    0.73%     0x00007fd359240507: mov    %rdx,0x40(%rsp)
  0.51%    0.39%     0x00007fd35924050c: mov    0x10(%rdx),%r11    ;*getfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                                                                   ; - com.google.re2j.Machine::add@5 (line 339)
                                                                   ; implicit exception: dispatches to 0x00007fd3592408ad
  0.67%    0.66%     0x00007fd359240510: cmp    $0x40,%ecx
                     0x00007fd359240513: jg     0x00007fd3592407b9  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                                                                   ; - com.google.re2j.Machine::add@5 (line 339)
  0.68%    0.49%     0x00007fd359240519: mov    $0x1,%r8d
  0.23%    0.29%     0x00007fd35924051f: shl    %cl,%r8            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                                                                   ; - com.google.re2j.Machine::add@5 (line 339)
  2.36%    1.82%     0x00007fd359240522: mov    %r11,%r10
  0.18%    0.30%     0x00007fd359240525: and    %r8,%r10
  0.46%    0.45%     0x00007fd359240528: test   %r10,%r10
                  ╭  0x00007fd35924052b: jne    0x00007fd359240580  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                  │                                                ; - com.google.re2j.Machine::add@5 (line 339)
  0.98%    0.93%  │  0x00007fd35924052d: cmp    $0x40,%ecx
                  │  0x00007fd359240530: jge    0x00007fd3592407e5  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                  │                                                ; - com.google.re2j.Machine::add@19 (line 342)
  0.45%    0.44%  │  0x00007fd359240536: mov    %r12b,0x18(%rdx)   ;*putfield empty
                  │                                                ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                  │                                                ; - com.google.re2j.Machine::add@19 (line 342)
  0.23%    0.24%  │  0x00007fd35924053a: mov    0x38(%rsp),%r10
  0.56%    0.42%  │  0x00007fd35924053f: mov    0xc(%r10),%r10d    ;*getfield op
                  │                                                ; - com.google.re2j.Machine::add@23 (line 343)
  1.08%    0.66%  │  0x00007fd359240543: or     %r11,%r8
  0.44%    0.28%  │  0x00007fd359240546: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                  │                                                ; - com.google.re2j.Machine::add@19 (line 342)
  0.23%    0.43%  │  0x00007fd35924054a: mov    %r10d,%r11d
  0.47%    0.42%  │  0x00007fd35924054d: dec    %r11d
  0.95%    0.74%  │  0x00007fd359240550: cmp    $0xc,%r11d
                  │  0x00007fd359240554: jae    0x00007fd35924078e  ;*tableswitch
                  │                                                ; - com.google.re2j.Machine::add@26 (line 343)
  0.53%    0.50%  │  0x00007fd35924055a: mov    0x38(%rsp),%r11
  0.25%    0.33%  │  0x00007fd35924055f: mov    0x14(%r11),%r8d    ;*getfield arg
                  │                                                ; - com.google.re2j.Machine::add@141 (line 357)
  0.42%    0.47%  │  0x00007fd359240563: mov    0x30(%r11),%r11d
  0.94%    0.92%  │  0x00007fd359240567: movslq %r10d,%r9
  0.63%    0.64%  │  0x00007fd35924056a: mov    %r11,%rcx
  0.20%    0.33%  │  0x00007fd35924056d: shl    $0x3,%rcx          ;*getfield outInst
                  │                                                ; - com.google.re2j.Machine::add@176 (line 363)
  0.50%    0.45%  │  0x00007fd359240571: movabs $0x7fd359240460,%r10  ;   {section_word}
  1.02%    1.01%  │  0x00007fd35924057b: jmpq   *-0x8(%r10,%r9,8)  ;*tableswitch
                  │                                                ; - com.google.re2j.Machine::add@26 (line 343)
  0.00%           ↘  0x00007fd359240580: mov    0x70(%rsp),%rax
                     0x00007fd359240585: jmpq   0x00007fd359240765
                     0x00007fd35924058a: andn   %r8d,%edi,%r10d
                     0x00007fd35924058f: test   %r10d,%r10d
                     0x00007fd359240592: je     0x00007fd359240771  ;*ifne
                                                                   ; - com.google.re2j.Machine::add@149 (line 357)
                     0x00007fd359240598: mov    0x70(%rsp),%rax
                     0x00007fd35924059d: jmpq   0x00007fd359240765
  0.17%    0.21%     0x00007fd3592405a2: mov    0x28(%rsp),%r10
  0.04%    0.03%     0x00007fd3592405a7: mov    0xc(%r10),%ebp     ;*arraylength
....................................................................................................
 22.88%   21.45%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 547 (301 bytes) 

                     # parm6:    [sp+0x68]   = int
                     # parm7:    [sp+0x70]   = boolean
                     0x00007fd35924b440: mov    0x8(%rsi),%r10d
                     0x00007fd35924b444: shl    $0x3,%r10
                     0x00007fd35924b448: cmp    %r10,%rax
                     0x00007fd35924b44b: jne    0x00007fd359045e20  ;   {runtime_call}
                     0x00007fd35924b451: data16 xchg %ax,%ax
                     0x00007fd35924b454: nopl   0x0(%rax,%rax,1)
                     0x00007fd35924b45c: data16 data16 xchg %ax,%ax
                   [Verified Entry Point]
  0.21%    0.19%     0x00007fd35924b460: mov    %eax,-0x14000(%rsp)
  0.08%    0.01%     0x00007fd35924b467: push   %rbp
  0.05%    0.04%     0x00007fd35924b468: sub    $0x50,%rsp         ;*synchronization entry
                                                                   ; - com.google.re2j.Machine::step@-1 (line 276)
  0.17%    0.11%     0x00007fd35924b46c: mov    %edi,0x20(%rsp)
  0.06%    0.02%     0x00007fd35924b470: mov    %r9d,0x1c(%rsp)
  0.05%    0.03%     0x00007fd35924b475: mov    %r8d,0x18(%rsp)
  0.17%    0.04%     0x00007fd35924b47a: mov    %rcx,0x10(%rsp)
  0.04%    0.01%     0x00007fd35924b47f: mov    %rdx,0x8(%rsp)
  0.04%    0.04%     0x00007fd35924b484: mov    %rsi,0x28(%rsp)
  0.07%    0.02%     0x00007fd35924b489: mov    0x14(%rsi),%r10d   ;*getfield re2
                                                                   ; - com.google.re2j.Machine::step@1 (line 276)
  0.13%    0.10%     0x00007fd35924b48d: movzbl 0x18(%r12,%r10,8),%r10d  ;*getfield longest
                                                                   ; - com.google.re2j.Machine::step@4 (line 276)
                                                                   ; implicit exception: dispatches to 0x00007fd35924bae9
  0.01%    0.06%     0x00007fd35924b493: mov    %r10d,0x24(%rsp)
  0.08%    0.03%     0x00007fd35924b498: mov    0xc(%rdx),%r11d    ; implicit exception: dispatches to 0x00007fd35924baf9
  0.04%    0.01%     0x00007fd35924b49c: test   %r11d,%r11d
                     0x00007fd35924b49f: jle    0x00007fd35924b7c2  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine::step@18 (line 277)
  0.14%    0.20%     0x00007fd35924b4a5: mov    0x24(%rsp),%r10d
  0.30%    0.25%     0x00007fd35924b4aa: test   %r10d,%r10d
                     0x00007fd35924b4ad: jne    0x00007fd35924b935  ;*aload_1
                                                                   ; - com.google.re2j.Machine::step@21 (line 278)
  0.06%    0.08%     0x00007fd35924b4b3: xor    %r11d,%r11d
  0.03%    0.04%  ╭  0x00007fd35924b4b6: jmpq   0x00007fd35924b54b
                  │  0x00007fd35924b4bb: nopl   0x0(%rax,%rax,1)
  0.00%    0.00%  │  0x00007fd35924b4c0: mov    0x68(%rsp),%ebx
  0.17%           │  0x00007fd35924b4c4: mov    0x70(%rsp),%edx    ;*goto
                  │                                                ; - com.google.re2j.Machine::step@224 (line 301)
  0.17%    0.21%  │  0x00007fd35924b4c8: mov    0x8(%rsp),%r8
  0.45%    0.53%  │  0x00007fd35924b4cd: mov    0xc(%r8),%r9d      ;*getfield size
                  │                                                ; - com.google.re2j.Machine::step@15 (line 277)
  0.13%    0.13%  │  0x00007fd35924b4d1: mov    0x28(%rsp),%r8
  0.13%    0.00%  │  0x00007fd35924b4d6: mov    0x24(%r8),%r13d    ;*getfield pool
                  │                                                ; - com.google.re2j.Machine::free@5 (line 167)
                  │                                                ; - com.google.re2j.Machine::step@330 (line 327)
  0.25%    0.20%  │  0x00007fd35924b4da: mov    0xc(%r8),%r8d      ;*getfield poolSize
                  │                                                ; - com.google.re2j.Machine::free@1 (line 167)
                  │                                                ; - com.google.re2j.Machine::step@330 (line 327)
  0.55%    0.55%  │  0x00007fd35924b4de: mov    %rsi,%rax          ;*getfield size
                  │                                                ; - com.google.re2j.Machine::step@15 (line 277)
  0.05%    0.09%  │  0x00007fd35924b4e1: mov    0xc(%r12,%r13,8),%ebp  ;*arraylength
                  │                                                ; - com.google.re2j.Machine::free@8 (line 167)
                  │                                                ; - com.google.re2j.Machine::step@330 (line 327)
                  │                                                ; implicit exception: dispatches to 0x00007fd35924bac9
  0.19%    0.01%  │  0x00007fd35924b4e6: cmp    %ebp,%r8d
                  │  0x00007fd35924b4e9: jge    0x00007fd35924b8dd  ;*if_icmplt
                  │                                                ; - com.google.re2j.Machine::free@9 (line 167)
                  │                                                ; - com.google.re2j.Machine::step@330 (line 327)
  0.21%    0.23%  │  0x00007fd35924b4ef: mov    %r8d,%edi
  0.43%    0.48%  │  0x00007fd35924b4f2: inc    %edi
  0.06%    0.09%  │  0x00007fd35924b4f4: mov    0x28(%rsp),%rsi
  0.17%    0.03%  │  0x00007fd35924b4f9: mov    %edi,0xc(%rsi)     ;*putfield poolSize
                  │                                                ; - com.google.re2j.Machine::free@45 (line 170)
                  │                                                ; - com.google.re2j.Machine::step@330 (line 327)
  0.17%    0.26%  │  0x00007fd35924b4fc: cmp    %ebp,%r8d
                  │  0x00007fd35924b4ff: jae    0x00007fd35924b84d  ;*aastore
                  │                                                ; - com.google.re2j.Machine::free@49 (line 170)
                  │                                                ; - com.google.re2j.Machine::step@330 (line 327)
  0.41%    0.31%  │  0x00007fd35924b505: mov    %rax,%r11
  0.08%    0.10%  │  0x00007fd35924b508: shr    $0x3,%r11
  0.15%    0.23%  │  0x00007fd35924b50c: lea    (%r12,%r13,8),%rdi  ;*getfield pool
                  │                                                ; - com.google.re2j.Machine::free@5 (line 167)
                  │                                                ; - com.google.re2j.Machine::step@330 (line 327)
  0.21%    0.21%  │  0x00007fd35924b510: lea    0x10(%rdi,%r8,4),%r8
  0.46%    0.38%  │  0x00007fd35924b515: mov    %r11d,(%r8)
  0.09%    0.08%  │  0x00007fd35924b518: mov    %r8,%r11
  0.19%    0.21%  │  0x00007fd35924b51b: shr    $0x9,%r11
  0.20%    0.18%  │  0x00007fd35924b51f: movabs $0x7fd354a2e000,%r8
  0.61%    0.18%  │  0x00007fd35924b529: mov    %r12b,(%r8,%r11,1)  ; OopMap{[8]=Oop [16]=Oop [40]=Oop off=237}
                  │                                                ;*goto
                  │                                                ; - com.google.re2j.Machine::step@336 (line 277)
  0.11%    0.08%  │  0x00007fd35924b52d: test   %eax,0x16023acd(%rip)        # 0x00007fd36f26f000
                  │                                                ;*goto
                  │                                                ; - com.google.re2j.Machine::step@336 (line 277)
                  │                                                ;   {poll}
  0.16%    0.21%  │  0x00007fd35924b533: cmp    %r9d,%r10d
                  │  0x00007fd35924b536: jge    0x00007fd35924b7c2
  0.51%    0.59%  │  0x00007fd35924b53c: mov    %ecx,0x20(%rsp)
  0.33%    0.04%  │  0x00007fd35924b540: mov    %ebx,0x68(%rsp)
  0.06%    0.02%  │  0x00007fd35924b544: mov    %edx,0x70(%rsp)
  0.01%    0.00%  │  0x00007fd35924b548: mov    %r10d,%r11d        ;*aload_1
                  │                                                ; - com.google.re2j.Machine::step@21 (line 278)
  0.64%    0.51%  ↘  0x00007fd35924b54b: mov    0x8(%rsp),%r10
  0.37%    0.12%     0x00007fd35924b550: mov    0x20(%r10),%r10d   ;*getfield denseThreads
                                                                   ; - com.google.re2j.Machine::step@22 (line 278)
  0.25%    0.29%     0x00007fd35924b554: mov    0xc(%r12,%r10,8),%r9d  ; implicit exception: dispatches to 0x00007fd35924ba95
  0.99%    1.07%     0x00007fd35924b559: cmp    %r9d,%r11d
                     0x00007fd35924b55c: jae    0x00007fd35924b810
  0.87%    0.66%     0x00007fd35924b562: shl    $0x3,%r10
  0.28%    0.04%     0x00007fd35924b566: mov    0x10(%r10,%r11,4),%r9d  ;*aaload
                                                                   ; - com.google.re2j.Machine::step@27 (line 278)
  0.05%    0.05%     0x00007fd35924b56b: mov    0x10(%r12,%r9,8),%r8d  ;*getfield inst
                                                                   ; - com.google.re2j.Machine::step@78 (line 283)
                                                                   ; implicit exception: dispatches to 0x00007fd35924baa9
  2.33%    2.33%     0x00007fd35924b570: mov    0xc(%r12,%r8,8),%ecx  ;*getfield op
                                                                   ; - com.google.re2j.Machine::step@88 (line 285)
                                                                   ; implicit exception: dispatches to 0x00007fd35924bab9
  4.32%    4.31%     0x00007fd35924b575: mov    0xc(%r12,%r9,8),%r14d  ;*getfield cap
                                                                   ; - com.google.re2j.Machine::step@148 (line 292)
  0.29%    0.32%     0x00007fd35924b57a: mov    %r11d,%r10d
                     0x00007fd35924b57d: inc    %r10d              ;*iadd
                                                                   ; - com.google.re2j.Machine::step@215 (line 298)
                     0x00007fd35924b580: lea    (%r12,%r9,8),%rsi  ;*aaload
                                                                   ; - com.google.re2j.Machine::step@27 (line 278)
  0.84%    0.80%     0x00007fd35924b584: cmp    $0x9,%ecx
                     0x00007fd35924b587: je     0x00007fd35924b79a
  0.08%    0.12%     0x00007fd35924b58d: cmp    $0x9,%ecx
                     0x00007fd35924b590: jg     0x00007fd35924b6ec
                     0x00007fd35924b596: cmp    $0x7,%ecx
                     0x00007fd35924b599: je     0x00007fd35924b925
                     0x00007fd35924b59f: cmp    $0x7,%ecx
                     0x00007fd35924b5a2: jg     0x00007fd35924b69e
                     0x00007fd35924b5a8: cmp    $0x6,%ecx
                     0x00007fd35924b5ab: jne    0x00007fd35924b925  ;*tableswitch
                                                                   ; - com.google.re2j.Machine::step@91 (line 285)
                     0x00007fd35924b5b1: mov    0x68(%rsp),%ebx
                     0x00007fd35924b5b5: cmp    $0x2,%ebx
....................................................................................................
 19.77%   17.61%  <total for region 3>

....[Hottest Region 4]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 599 (767 bytes) 

                            0x00007fd359273210: mov    %r10d,%r11d
                            0x00007fd359273213: add    $0xffffff9f,%r11d
                            0x00007fd359273217: cmp    $0x1a,%r11d
                            0x00007fd35927321b: jae    0x00007fd359273b0f  ;*iconst_1
                                                                          ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                                                                          ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                                                                          ; - com.google.re2j.Machine::match@121 (line 201)
                            0x00007fd359273221: or     $0x10,%edi         ;*iload_2
                                                                          ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                          ; - com.google.re2j.Machine::match@121 (line 201)
  0.01%                     0x00007fd359273224: mov    %rbx,%r11
                            0x00007fd359273227: shl    $0x3,%r11          ;*getfield q1
                                                                          ; - com.google.re2j.Machine::match@53 (line 188)
                            0x00007fd35927322b: mov    %r11,0x58(%rsp)
  0.00%                     0x00007fd359273230: xor    %ecx,%ecx
                            0x00007fd359273232: xor    %r11d,%r11d
                            0x00007fd359273235: mov    %r11d,0x60(%rsp)
           0.00%  ╭         0x00007fd35927323a: jmpq   0x00007fd3592733cc
  0.17%    0.18%  │   ↗     0x00007fd35927323f: or     $0x20,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                  │   │                                                   ; - com.google.re2j.Machine::match@323 (line 241)
  0.03%    0.05%  │   │     0x00007fd359273243: mov    %r8d,0x64(%rsp)    ;*iload_2
                  │   │                                                   ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                  │   │                                                   ; - com.google.re2j.Machine::match@323 (line 241)
  0.07%    0.08%  │   │↗    0x00007fd359273248: mov    0x50(%rsp),%r8
  0.08%    0.06%  │   ││    0x00007fd35927324d: mov    0x10(%r8),%r11d    ;*getfield end
                  │   ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::endPos@1 (line 221)
                  │   ││                                                  ; - com.google.re2j.Machine::match@345 (line 242)
  0.37%    0.38%  │   ││    0x00007fd359273251: mov    0x60(%rsp),%ecx
  0.04%    0.04%  │   ││    0x00007fd359273255: cmp    %r11d,%ecx
                  │   ││    0x00007fd359273258: je     0x00007fd359273a21  ;*if_icmpne
                  │   ││                                                  ; - com.google.re2j.Machine::match@348 (line 242)
  0.17%    0.13%  │   ││    0x00007fd35927325e: xor    %eax,%eax          ;*invokespecial step
                  │   ││                                                  ; - com.google.re2j.Machine::match@356 (line 242)
  0.03%    0.02%  │   ││    0x00007fd359273260: mov    %rax,-0x8(%rsp)
  0.15%    0.18%  │   ││    0x00007fd359273265: mov    0x60(%rsp),%eax
  0.01%    0.02%  │   ││    0x00007fd359273269: mov    %eax,0x4c(%rsp)
  0.06%    0.05%  │   ││    0x00007fd35927326d: mov    -0x8(%rsp),%rax
  0.08%    0.06%  │   ││    0x00007fd359273272: mov    %r10d,0x38(%rsp)
  0.15%    0.18%  │   ││    0x00007fd359273277: add    0x2c(%rsp),%ecx    ;*iadd
                  │   ││                                                  ; - com.google.re2j.Machine::match@337 (line 242)
  0.02%    0.04%  │   ││    0x00007fd35927327b: mov    %ecx,0x60(%rsp)
  0.02%           │   ││    0x00007fd35927327f: mov    0x40(%rsp),%rsi
  0.07%    0.06%  │   ││    0x00007fd359273284: mov    0x20(%rsp),%rdx
  0.15%    0.22%  │   ││    0x00007fd359273289: mov    0x58(%rsp),%rcx
  0.04%    0.06%  │   ││    0x00007fd35927328e: mov    0x4c(%rsp),%r8d
  0.02%    0.06%  │   ││    0x00007fd359273293: mov    0x60(%rsp),%r9d
  0.28%    0.23%  │   ││    0x00007fd359273298: mov    %ebx,%edi
  0.16%    0.14%  │   ││    0x00007fd35927329a: mov    0x64(%rsp),%r10d
  0.04%    0.04%  │   ││    0x00007fd35927329f: mov    %r10d,(%rsp)
  0.05%    0.01%  │   ││    0x00007fd3592732a3: mov    0x3c(%rsp),%r11d
  0.08%    0.04%  │   ││    0x00007fd3592732a8: mov    %r11d,0x8(%rsp)
  0.21%    0.12%  │   ││    0x00007fd3592732ad: mov    %eax,0x10(%rsp)
  0.04%    0.02%  │   ││    0x00007fd3592732b1: xchg   %ax,%ax
  0.03%    0.03%  │   ││    0x00007fd3592732b3: callq  0x00007fd359046020  ; OopMap{[24]=NarrowOop [32]=Oop [64]=Oop [80]=Oop [88]=Oop off=728}
                  │   ││                                                  ;*invokespecial step
                  │   ││                                                  ; - com.google.re2j.Machine::match@356 (line 242)
                  │   ││                                                  ;   {optimized virtual_call}
  0.16%    0.15%  │   ││    0x00007fd3592732b8: mov    0x2c(%rsp),%r11d
  0.14%    0.15%  │   ││    0x00007fd3592732bd: test   %r11d,%r11d
           0.00%  │   ││    0x00007fd3592732c0: je     0x00007fd35927394e  ;*ifne
                  │   ││                                                  ; - com.google.re2j.Machine::match@361 (line 243)
  0.17%    0.13%  │   ││    0x00007fd3592732c6: mov    0x40(%rsp),%r10
  0.01%    0.00%  │   ││    0x00007fd3592732cb: mov    0x28(%r10),%r9d    ;*getfield matchcap
                  │   ││                                                  ; - com.google.re2j.Machine::match@368 (line 246)
  0.13%    0.19%  │   ││    0x00007fd3592732cf: mov    0xc(%r12,%r9,8),%ebp  ;*arraylength
                  │   ││                                                  ; - com.google.re2j.Machine::match@371 (line 246)
                  │   ││                                                  ; implicit exception: dispatches to 0x00007fd359274b01
           0.02%  │   ││    0x00007fd3592732d4: test   %ebp,%ebp
                  │   ││    0x00007fd3592732d6: je     0x00007fd359273d95  ;*ifne
                  │   ││                                                  ; - com.google.re2j.Machine::match@372 (line 246)
  0.13%    0.14%  │   ││    0x00007fd3592732dc: mov    0x50(%rsp),%rdi
  0.00%    0.00%  │   ││    0x00007fd3592732e1: mov    0x10(%rdi),%ebx    ;*getfield end
                  │   ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                  │   ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.13%    0.22%  │   ││    0x00007fd3592732e4: mov    0xc(%rdi),%edx     ;*getfield start
                  │   ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                  │   ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
                  │   ││    0x00007fd3592732e7: mov    0x14(%rdi),%eax    ;*getfield str
                  │   ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                  │   ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.15%    0.11%  │   ││    0x00007fd3592732ea: mov    0x38(%rsp),%ecx
           0.00%  │   ││    0x00007fd3592732ee: cmp    $0xffffffff,%ecx
                  │   ││    0x00007fd3592732f1: je     0x00007fd359273a2b  ;*if_icmpeq
                  │   ││                                                  ; - com.google.re2j.Machine::match@401 (line 254)
  0.17%    0.18%  │   ││    0x00007fd3592732f7: mov    0x28(%rsp),%r8d
           0.00%  │   ││    0x00007fd3592732fc: add    0x60(%rsp),%r8d
  0.11%    0.07%  │   ││    0x00007fd359273301: add    %edx,%r8d          ;*iadd
                  │   ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                  │   ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
                  │   ││    0x00007fd359273304: cmp    %ebx,%r8d
                  │   ││    0x00007fd359273307: jge    0x00007fd359273a3b  ;*if_icmpge
                  │   ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                  │   ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.16%    0.16%  │   ││    0x00007fd35927330d: mov    0x8(%r12,%rax,8),%esi  ; implicit exception: dispatches to 0x00007fd359274b11
           0.00%  │   ││    0x00007fd359273312: cmp    $0xf80002da,%esi   ;   {metadata(&apos;java/lang/String&apos;)}
                  │   ││    0x00007fd359273318: jne    0x00007fd359273c11
  0.15%    0.05%  │   ││    0x00007fd35927331e: lea    (%r12,%rax,8),%r13  ;*invokeinterface charAt
                  │   ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                  │   ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │   ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
                  │   ││    0x00007fd359273322: test   %r8d,%r8d
                  │   ││    0x00007fd359273325: jl     0x00007fd359273d29  ;*iflt
                  │   ││                                                  ; - java.lang.String::charAt@1 (line 657)
                  │   ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                  │   ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │   ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.14%    0.14%  │   ││    0x00007fd35927332b: vmovd  %r8d,%xmm0
           0.00%  │   ││    0x00007fd359273330: mov    %ecx,%r14d
  0.15%    0.01%  │   ││    0x00007fd359273333: mov    0xc(%r13),%r11d    ;*getfield value
                  │   ││                                                  ; - java.lang.String::charAt@6 (line 657)
                  │   ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                  │   ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │   ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.01%    0.00%  │   ││    0x00007fd359273337: mov    0xc(%r12,%r11,8),%ebp  ;*arraylength
                  │   ││                                                  ; - java.lang.String::charAt@9 (line 657)
                  │   ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                  │   ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │   ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
                  │   ││                                                  ; implicit exception: dispatches to 0x00007fd359274b25
  0.24%    0.33%  │   ││    0x00007fd35927333c: cmp    %ebp,%r8d
                  │   ││    0x00007fd35927333f: jge    0x00007fd359273dcd  ;*if_icmplt
                  │   ││                                                  ; - java.lang.String::charAt@10 (line 657)
                  │   ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                  │   ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │   ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.03%    0.03%  │   ││    0x00007fd359273345: cmp    %ebp,%r8d
                  │   ││    0x00007fd359273348: jae    0x00007fd359273b54
  0.16%    0.19%  │   ││    0x00007fd35927334e: shl    $0x3,%r11
           0.01%  │   ││    0x00007fd359273352: movzwl 0x10(%r11,%r8,2),%r8d  ;*caload
                  │   ││                                                  ; - java.lang.String::charAt@27 (line 660)
                  │   ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                  │   ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │   ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.12%    0.15%  │   ││    0x00007fd359273358: cmp    $0xd800,%r8d
                  │   ││    0x00007fd35927335f: jge    0x00007fd359273e39  ;*if_icmplt
                  │   ││                                                  ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                  │   ││                                                  ; - java.lang.Character::codePointAt@9 (line 4867)
                  │   ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │   ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.03%    0.04%  │   ││    0x00007fd359273365: shl    $0x3,%r8d          ;*ishl
                  │   ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                  │   ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.14%    0.27%  │   ││    0x00007fd359273369: mov    %r8d,%r11d
  0.01%           │   ││    0x00007fd35927336c: or     $0x1,%r11d
  0.11%    0.14%  │   ││    0x00007fd359273370: and    $0x7,%r8d
  0.00%    0.01%  │   ││    0x00007fd359273374: sar    $0x3,%r11d         ;*ishr
                  │   ││                                                  ; - com.google.re2j.Machine::match@417 (line 256)
  0.15%    0.22%  │   ││    0x00007fd359273378: or     $0x1,%r8d          ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                  │   ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
           0.01%  │   ││    0x00007fd35927337c: mov    0x40(%rsp),%r10
  0.12%    0.18%  │   ││    0x00007fd359273381: mov    %r14d,%ecx         ;*aload
                  │   ││                                                  ; - com.google.re2j.Machine::match@427 (line 259)
  0.04%    0.03%  │   ││    0x00007fd359273384: mov    %r10,0x40(%rsp)
  0.20%    0.23%  │   ││    0x00007fd359273389: mov    %ecx,%edi          ; OopMap{r10=Oop r9=NarrowOop rax=NarrowOop [32]=Oop [64]=Oop [80]=Oop [88]=Oop off=939}
                  │   ││                                                  ;*goto
                  │   ││                                                  ; - com.google.re2j.Machine::match@439 (line 262)
  0.01%    0.01%  │   ││    0x00007fd35927338b: test   %eax,0x15ffbc6f(%rip)        # 0x00007fd36f26f000
                  │   ││                                                  ;*goto
                  │   ││                                                  ; - com.google.re2j.Machine::match@439 (line 262)
                  │   ││                                                  ;   {poll}
  0.16%    0.18%  │   ││    0x00007fd359273391: movzbl 0x10(%r10),%ecx    ;*getfield matched
                  │   ││                                                  ; - com.google.re2j.Machine::match@159 (line 212)
  0.00%    0.01%  │   ││    0x00007fd359273396: mov    0x58(%rsp),%r10
  0.13%    0.22%  │   ││    0x00007fd35927339b: shr    $0x3,%r10
           0.00%  │   ││    0x00007fd35927339f: mov    %r10d,0x18(%rsp)
  0.15%    0.22%  │   ││    0x00007fd3592733a4: mov    %edi,%r10d
  0.01%    0.03%  │   ││    0x00007fd3592733a7: mov    0x64(%rsp),%edi
  0.13%    0.21%  │   ││    0x00007fd3592733ab: mov    0x20(%rsp),%rsi
           0.01%  │   ││    0x00007fd3592733b0: mov    %rsi,0x58(%rsp)
  0.15%    0.12%  │   ││    0x00007fd3592733b5: mov    0x28(%rsp),%esi
  0.02%    0.02%  │   ││    0x00007fd3592733b9: mov    %esi,0x2c(%rsp)
  0.12%    0.20%  │   ││    0x00007fd3592733bd: mov    %r11d,%r13d
  0.00%    0.01%  │   ││    0x00007fd3592733c0: mov    %r8d,%r14d
  0.15%    0.14%  │   ││    0x00007fd3592733c3: vmovd  %r9d,%xmm6
  0.02%    0.01%  │   ││    0x00007fd3592733c8: mov    %ebx,0x14(%rsp)
  0.21%    0.29%  ↘   ││    0x00007fd3592733cc: mov    0x18(%rsp),%r11d
           0.01%      ││    0x00007fd3592733d1: movzbl 0x18(%r12,%r11,8),%r11d  ; implicit exception: dispatches to 0x00007fd359274ad1
  0.15%    0.19%      ││    0x00007fd3592733d7: mov    0x18(%rsp),%r9d
  0.01%    0.02%      ││    0x00007fd3592733dc: lea    (%r12,%r9,8),%r8   ;*aload
                      ││                                                  ; - com.google.re2j.Machine::match@136 (line 207)
  0.13%    0.24%      ││    0x00007fd3592733e0: mov    %r8,0x20(%rsp)
           0.01%      ││    0x00007fd3592733e5: test   %r11d,%r11d
                      ││    0x00007fd3592733e8: jne    0x00007fd3592735ee  ;*ifeq
                      ││                                                  ; - com.google.re2j.Machine::match@141 (line 207)
  0.11%    0.21%      ││    0x00007fd3592733ee: mov    %r10d,0x4c(%rsp)
  0.02%    0.04%      ││    0x00007fd3592733f3: mov    %r14d,%r9d
  0.18%    0.21%      ││    0x00007fd3592733f6: mov    %r13d,%r10d        ;*aload_0
                      ││                                                  ; - com.google.re2j.Machine::match@267 (line 233)
                      ││    0x00007fd3592733f9: test   %ecx,%ecx
                      ││    0x00007fd3592733fb: jne    0x00007fd359273c61  ;*ifne
                      ││                                                  ; - com.google.re2j.Machine::match@271 (line 233)
  0.14%    0.14%      ││    0x00007fd359273401: mov    0x60(%rsp),%ebx
  0.00%    0.03%      ││    0x00007fd359273405: test   %ebx,%ebx
                      ││    0x00007fd359273407: je     0x00007fd359273ad2  ;*ifeq
                      ││                                                  ; - com.google.re2j.Machine::match@275 (line 233)
  0.13%    0.17%      ││    0x00007fd35927340d: mov    0x3c(%rsp),%r8d
  0.00%    0.00%      ││    0x00007fd359273412: test   %r8d,%r8d
                      ││    0x00007fd359273415: jne    0x00007fd359273cdd  ;*aload_0
                      ││                                                  ; - com.google.re2j.Machine::match@282 (line 236)
  0.18%    0.13%      ││    0x00007fd35927341b: vmovd  %xmm6,%r11d
  0.01%    0.01%      ││    0x00007fd359273420: mov    0xc(%r12,%r11,8),%ebp  ;*arraylength
                      ││                                                  ; - com.google.re2j.Machine::match@286 (line 236)
                      ││                                                  ; implicit exception: dispatches to 0x00007fd359274ae1
  0.13%    0.21%      ││    0x00007fd359273425: test   %ebp,%ebp
                      ││    0x00007fd359273427: jle    0x00007fd359273c9d  ;*ifle
                      ││                                                  ; - com.google.re2j.Machine::match@287 (line 236)
  0.01%    0.01%      ││    0x00007fd35927342d: test   %ebp,%ebp
                      ││    0x00007fd35927342f: jbe    0x00007fd359273bc9
  0.14%    0.13%      ││    0x00007fd359273435: mov    %ebx,0x10(%r12,%r11,8)  ;*iastore
                      ││                                                  ; - com.google.re2j.Machine::match@296 (line 237)
  0.01%    0.02%      ││    0x00007fd35927343a: mov    0x40(%rsp),%rsi
  0.12%    0.13%      ││    0x00007fd35927343f: mov    0x18(%rsi),%edx    ;*getfield prog
                      ││                                                  ; - com.google.re2j.Machine::match@301 (line 239)
  0.00%    0.01%      ││    0x00007fd359273442: mov    0x1c(%r12,%rdx,8),%ecx  ; implicit exception: dispatches to 0x00007fd359274af1
  0.16%    0.18%      ││    0x00007fd359273447: mov    %r10d,%ebp
  0.02%    0.02%      ││    0x00007fd35927344a: mov    %r9d,0x28(%rsp)
  0.14%    0.25%      ││    0x00007fd35927344f: mov    %r8d,0x3c(%rsp)    ;*ifeq
                      ││                                                  ; - com.google.re2j.Machine::match@275 (line 233)
  0.00%               ││    0x00007fd359273454: shl    $0x3,%rcx          ;*getfield startInst
                      ││                                                  ; - com.google.re2j.Machine::match@304 (line 239)
  0.12%    0.13%      ││    0x00007fd359273458: mov    %r11,%r9
  0.01%    0.00%      ││    0x00007fd35927345b: shl    $0x3,%r9           ;*getfield matchcap
                      ││                                                  ; - com.google.re2j.Machine::match@283 (line 236)
  0.13%    0.19%      ││    0x00007fd35927345f: mov    0x20(%rsp),%rdx
  0.00%    0.01%      ││    0x00007fd359273464: mov    0x60(%rsp),%r8d
  0.16%    0.13%      ││    0x00007fd359273469: xor    %r10d,%r10d
  0.02%    0.01%      ││    0x00007fd35927346c: mov    %r10,(%rsp)
  0.16%    0.28%      ││    0x00007fd359273470: data16 xchg %ax,%ax
  0.00%               ││    0x00007fd359273473: callq  0x00007fd359046020  ; OopMap{[24]=NarrowOop [32]=Oop [64]=Oop [80]=Oop [88]=Oop off=1176}
                      ││                                                  ;*invokespecial add
                      ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
                      ││                                                  ;   {optimized virtual_call}
  0.05%    0.11%      ││    0x00007fd359273478: mov    0x4c(%rsp),%ebx
  0.00%    0.01%      ││    0x00007fd35927347c: test   %ebx,%ebx
                   ╭  ││    0x00007fd35927347e: jl     0x00007fd359273508  ;*ifge
                   │  ││                                                  ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                   │  ││                                                  ; - com.google.re2j.Machine::match@323 (line 241)
  0.22%    0.28%   │  ││    0x00007fd359273484: xor    %r8d,%r8d          ;*iload_0
                   │  ││                                                  ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                   │  ││                                                  ; - com.google.re2j.Machine::match@323 (line 241)
  0.04%    0.08%   │  ││↗   0x00007fd359273487: cmp    $0xa,%ebx
                   │  │││   0x00007fd35927348a: je     0x00007fd359273834  ;*iload_1
                   │  │││                                                 ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                   │  │││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
                   │  │││   0x00007fd359273490: mov    %ebp,%r10d
  0.02%    0.01%   │  │││   0x00007fd359273493: test   %r10d,%r10d
                   │  │││   0x00007fd359273496: jl     0x00007fd35927382b  ;*iload_1
                   │  │││                                                 ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                   │  │││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.26%    0.26%   │  │││   0x00007fd35927349c: cmp    $0xa,%r10d
                   │  │││   0x00007fd3592734a0: je     0x00007fd35927383d  ;*iload_0
                   │  │││                                                 ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                   │  │││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.06%    0.08%   │  │││   0x00007fd3592734a6: mov    0x4c(%rsp),%r11d
  0.01%    0.02%   │  │││   0x00007fd3592734ab: add    $0xffffffbf,%r11d
  0.00%    0.01%   │  │││   0x00007fd3592734af: cmp    $0x1a,%r11d
                   │╭ │││   0x00007fd3592734b3: jb     0x00007fd3592734c8  ;*if_icmple
                   ││ │││                                                 ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                   ││ │││                                                 ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   ││ │││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.19%    0.22%   ││ │││   0x00007fd3592734b5: mov    0x4c(%rsp),%r9d
  0.08%    0.11%   ││ │││   0x00007fd3592734ba: add    $0xffffff9f,%r9d
                   ││ │││   0x00007fd3592734be: cmp    $0x1a,%r9d
                   ││ │││   0x00007fd3592734c2: jae    0x00007fd359273a8c  ;*iconst_1
                   ││ │││                                                 ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                   ││ │││                                                 ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   ││ │││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.01%    0.03%   │↘ │││   0x00007fd3592734c8: mov    $0x1,%ebp          ;*ireturn
                   │  │││                                                 ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                   │  │││                                                 ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   │  │││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.17%    0.36%   │  │││   0x00007fd3592734cd: mov    %r10d,%r11d
  0.05%    0.04%   │  │││   0x00007fd3592734d0: add    $0xffffffbf,%r11d
           0.00%   │  │││   0x00007fd3592734d4: cmp    $0x1a,%r11d
                   │ ╭│││   0x00007fd3592734d8: jb     0x00007fd3592734eb  ;*if_icmple
                   │ ││││                                                 ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                   │ ││││                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   │ ││││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.05%    0.04%   │ ││││   0x00007fd3592734da: mov    %r10d,%r9d
  0.25%    0.23%   │ ││││   0x00007fd3592734dd: add    $0xffffff9f,%r9d
  0.08%    0.06%   │ ││││   0x00007fd3592734e1: cmp    $0x1a,%r9d
                   │ ││││   0x00007fd3592734e5: jae    0x00007fd359273aaf  ;*iconst_1
                   │ ││││                                                 ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                   │ ││││                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   │ ││││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.02%    0.00%   │ ↘│││   0x00007fd3592734eb: mov    $0x1,%r11d         ;*ireturn
                   │  │││                                                 ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                   │  │││                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   │  │││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.08%    0.07%   │  │││   0x00007fd3592734f1: cmp    %r11d,%ebp
                   │  ╰││   0x00007fd3592734f4: je     0x00007fd35927323f  ;*if_icmpeq
                   │   ││                                                 ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                   │   ││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.07%    0.03%   │   ││   0x00007fd3592734fa: or     $0x10,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                   │   ││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
                   │   ││   0x00007fd3592734fe: mov    %r8d,0x64(%rsp)
  0.17%    0.15%   │   ╰│   0x00007fd359273503: jmpq   0x00007fd359273248
           0.00%   ↘    │   0x00007fd359273508: mov    $0x5,%r8d
                        ╰   0x00007fd35927350e: jmpq   0x00007fd359273487
                            0x00007fd359273513: nopw   0x0(%rax,%rax,1)
                            0x00007fd35927351c: data16 data16 xchg %ax,%ax
                            0x00007fd359273520: mov    %r11d,%ebp
  0.00%                     0x00007fd359273523: jmpq   0x00007fd35927376f
                            0x00007fd359273528: mov    %ebp,%r8d
                            0x00007fd35927352b: inc    %r8d
                            0x00007fd35927352e: mov    %ebp,%r11d
                         ╭  0x00007fd359273531: jmp    0x00007fd359273541
                         │  0x00007fd359273533: mov    %ebp,%r11d
                         │  0x00007fd359273536: add    $0x2,%r11d
                         │  0x00007fd35927353a: mov    %ebp,%r8d
                         │  0x00007fd35927353d: add    $0x3,%r8d
                         ↘  0x00007fd359273541: mov    %r8d,0x38(%rsp)
                            0x00007fd359273546: vmovd  %r11d,%xmm3
....................................................................................................
 11.56%   13.26%  <total for region 4>

....[Hottest Regions]...............................................................................
 27.29%   28.93%         C2, level 4  com.google.re2j.Machine::add, version 542 (373 bytes) 
 22.88%   21.45%         C2, level 4  com.google.re2j.Machine::add, version 542 (160 bytes) 
 19.77%   17.61%         C2, level 4  com.google.re2j.Machine::step, version 547 (301 bytes) 
 11.56%   13.26%         C2, level 4  com.google.re2j.Machine::match, version 599 (767 bytes) 
  5.98%    7.55%        runtime stub  StubRoutines::jint_disjoint_arraycopy (128 bytes) 
  4.21%    3.16%         C2, level 4  com.google.re2j.Machine::step, version 547 (209 bytes) 
  3.90%    4.37%         C2, level 4  com.google.re2j.Machine::step, version 547 (101 bytes) 
  0.78%    0.96%         C2, level 4  com.google.re2j.Machine::add, version 542 (42 bytes) 
  0.53%    0.14%         C2, level 4  com.google.re2j.Machine::init, version 593 (299 bytes) 
  0.34%    0.37%         C2, level 4  com.google.re2j.Machine::match, version 599 (70 bytes) 
  0.18%    0.18%   [kernel.kallsyms]  [unknown] (6 bytes) 
  0.11%    0.08%         C2, level 4  com.google.re2j.Machine::match, version 599 (215 bytes) 
  0.10%    0.01%   [kernel.kallsyms]  [unknown] (51 bytes) 
  0.10%    0.02%   [kernel.kallsyms]  [unknown] (2 bytes) 
  0.09%    0.05%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 669 (115 bytes) 
  0.07%    0.02%         C2, level 4  com.google.re2j.Machine::init, version 593 (28 bytes) 
  0.06%    0.02%         C2, level 4  com.google.re2j.Matcher::genMatch, version 614 (0 bytes) 
  0.06%    0.03%           libjvm.so  SpinPause (9 bytes) 
  0.05%    0.04%         C2, level 4  com.google.re2j.Machine::init, version 593 (52 bytes) 
  0.05%                  C2, level 4  com.google.re2j.Matcher::genMatch, version 614 (20 bytes) 
  1.87%    1.71%  <...other 340 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 50.95%   51.34%         C2, level 4  com.google.re2j.Machine::add, version 542 
 27.87%   25.15%         C2, level 4  com.google.re2j.Machine::step, version 547 
 12.28%   13.89%         C2, level 4  com.google.re2j.Machine::match, version 599 
  5.98%    7.55%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
  0.87%    0.69%   [kernel.kallsyms]  [unknown] 
  0.70%    0.21%         C2, level 4  com.google.re2j.Machine::init, version 593 
  0.33%    0.14%         C2, level 4  com.google.re2j.Matcher::genMatch, version 614 
  0.14%    0.08%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 669 
  0.07%    0.06%         C2, level 4  java.util.Collections::shuffle, version 622 
  0.06%    0.03%           libjvm.so  SpinPause 
  0.05%    0.04%           libjvm.so  StringTable::unlink_or_oops_do 
  0.04%    0.01%  libpthread-2.26.so  __libc_write 
  0.04%    0.08%        libc-2.26.so  vfprintf 
  0.04%    0.03%      hsdis-amd64.so  [unknown] 
  0.03%                 libc-2.26.so  _IO_fflush 
  0.03%    0.06%           libjvm.so  RelocIterator::initialize 
  0.01%                 libc-2.26.so  __strlen_avx2 
  0.01%    0.02%           libjvm.so  ParallelTaskTerminator::offer_termination 
  0.01%    0.00%  libpthread-2.26.so  __pthread_enable_asynccancel 
  0.01%    0.00%        runtime stub  StubRoutines::oop_arraycopy 
  0.44%    0.35%  <...other 69 warm methods...>
....................................................................................................
100.00%   99.75%  <totals>

....[Distribution by Source]........................................................................
 92.35%   90.88%         C2, level 4
  6.01%    7.57%        runtime stub
  0.87%    0.69%   [kernel.kallsyms]
  0.44%    0.45%           libjvm.so
  0.15%    0.30%        libc-2.26.so
  0.08%    0.02%  libpthread-2.26.so
  0.04%    0.03%      hsdis-amd64.so
  0.03%    0.01%         interpreter
  0.02%    0.03%              [vdso]
  0.00%               perf-21317.map
  0.00%    0.00%         C1, level 3
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                     Mode  Cnt      Score    Error  Units
Re2jFindRegex.testExp1       thrpt   20  11950.317 ± 93.076  ops/s
Re2jFindRegex.testExp1:·asm  thrpt             NaN             ---
