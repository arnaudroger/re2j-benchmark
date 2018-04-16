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
# Warmup Iteration   1: 6681.318 ops/s
# Warmup Iteration   2: 11032.486 ops/s
# Warmup Iteration   3: 11514.985 ops/s
# Warmup Iteration   4: 11521.983 ops/s
# Warmup Iteration   5: 11344.991 ops/s
# Warmup Iteration   6: 11177.439 ops/s
# Warmup Iteration   7: 11457.888 ops/s
# Warmup Iteration   8: 11513.264 ops/s
# Warmup Iteration   9: 11485.001 ops/s
# Warmup Iteration  10: 11512.742 ops/s
# Warmup Iteration  11: 11471.006 ops/s
# Warmup Iteration  12: 11607.089 ops/s
# Warmup Iteration  13: 11471.025 ops/s
# Warmup Iteration  14: 11610.723 ops/s
# Warmup Iteration  15: 11675.401 ops/s
# Warmup Iteration  16: 11679.430 ops/s
# Warmup Iteration  17: 11621.968 ops/s
# Warmup Iteration  18: 11448.092 ops/s
# Warmup Iteration  19: 11621.261 ops/s
# Warmup Iteration  20: 11626.861 ops/s
Iteration   1: 11575.549 ops/s
Iteration   2: 11349.955 ops/s
Iteration   3: 11352.034 ops/s
Iteration   4: 11496.918 ops/s
Iteration   5: 11549.117 ops/s
Iteration   6: 11485.217 ops/s
Iteration   7: 11600.137 ops/s
Iteration   8: 11507.381 ops/s
Iteration   9: 11670.194 ops/s
Iteration  10: 11650.476 ops/s
Iteration  11: 11496.187 ops/s
Iteration  12: 11496.468 ops/s
Iteration  13: 11454.246 ops/s
Iteration  14: 11555.758 ops/s
Iteration  15: 11514.919 ops/s
Iteration  16: 11473.207 ops/s
Iteration  17: 11439.047 ops/s
Iteration  18: 11463.628 ops/s
Iteration  19: 11538.791 ops/s
Iteration  20: 11527.530 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  11509.838 ±(99.9%) 70.709 ops/s [Average]
  (min, avg, max) = (11349.955, 11509.838, 11670.194), stdev = 81.429
  CI (99.9%): [11439.129, 11580.547] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2:·asm":
PrintAssembly processed: 211794 total address lines.
Perf output processed (skipped 23.063 seconds):
 Column 1: cycles (20340 events)
 Column 2: instructions (20317 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Inst$AltInst::add, version 548 (1092 bytes) 

                        0x00007f738524a3d2: shr    $0x9,%r8
                        0x00007f738524a3d6: movabs $0x7f739523d000,%rbx
                        0x00007f738524a3e0: mov    %r12b,(%rbx,%r8,1)  ;*aastore
                                                                      ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                      ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                        0x00007f738524a3e4: mov    %rcx,%rdi
                        0x00007f738524a3e7: mov    %r11d,%r8d
                  ╭     0x00007f738524a3ea: jmpq   0x00007f738524a724  ;*invokevirtual add
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.29%    0.58%  │     0x00007f738524a3ef: mov    0x18(%r8),%r10d    ;*getfield pc
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@2 (line 187)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.01%    0.02%  │     0x00007f738524a3f3: cmp    $0x40,%r10d
                  │     0x00007f738524a3f7: jg     0x00007f738524af09  ;*if_icmpgt
                  │                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.28%    0.18%  │     0x00007f738524a3fd: mov    %r8,0x70(%rsp)
  0.05%    0.05%  │     0x00007f738524a402: mov    $0x1,%r8d
  0.31%    0.40%  │     0x00007f738524a408: mov    %r10d,%ecx
  0.04%    0.03%  │     0x00007f738524a40b: shl    %cl,%r8            ;*lshl
                  │                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.67%    0.69%  │     0x00007f738524a40e: mov    %r9,%r11
  0.03%    0.00%  │     0x00007f738524a411: and    %r8,%r11           ;*land
                  │                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.26%    0.18%  │     0x00007f738524a414: test   %r11,%r11
                  │     0x00007f738524a417: jne    0x00007f738524af65  ;*ifeq
                  │                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.05%    0.04%  │     0x00007f738524a41d: cmp    $0x40,%r10d
                  │     0x00007f738524a421: jge    0x00007f738524afb1  ;*if_icmpge
                  │                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.26%    0.42%  │     0x00007f738524a427: mov    0x70(%rsp),%r10
  0.18%    0.07%  │     0x00007f738524a42c: mov    0x1c(%r10),%ebp    ;*getfield outInst
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@23 (line 192)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  1.29%    0.91%  │     0x00007f738524a430: mov    %r9,%rbx
  0.06%    0.03%  │     0x00007f738524a433: or     %r8,%rbx           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.15%    0.13%  │     0x00007f738524a436: mov    %rbx,0x10(%rdx)    ;*putfield pcsl
                  │                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.01%    0.01%  │     0x00007f738524a43a: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007f738524b8d1
  1.85%    1.76%  │     0x00007f738524a43f: lea    (%r12,%rbp,8),%r11
  0.01%    0.01%  │     0x00007f738524a443: cmp    $0xf8019843,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$AltInst&apos;)}
                  │╭    0x00007f738524a44a: je     0x00007f738524a58c
  0.19%    0.12%  ││    0x00007f738524a450: cmp    $0xf8019992,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  ││    0x00007f738524a457: jne    0x00007f738524b261  ;*invokevirtual add
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.08%    0.11%  ││    0x00007f738524a45d: mov    0x18(%r11),%r10d   ;*getfield pc
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.16%    0.17%  ││    0x00007f738524a461: cmp    $0x40,%r10d
                  ││    0x00007f738524a465: jg     0x00007f738524b441  ;*if_icmpgt
                  ││                                                  ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.16%    0.20%  ││    0x00007f738524a46b: mov    $0x1,%r8d
                  ││    0x00007f738524a471: mov    %r10d,%ecx
                  ││    0x00007f738524a474: shl    %cl,%r8            ;*lshl
                  ││                                                  ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.52%    0.50%  ││    0x00007f738524a477: mov    %rbx,%r9
                  ││    0x00007f738524a47a: and    %r8,%r9            ;*land
                  ││                                                  ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.18%    0.17%  ││    0x00007f738524a47d: test   %r9,%r9
  0.06%    0.10%  ││    0x00007f738524a480: jne    0x00007f738524b4a9  ;*ifeq
                  ││                                                  ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.17%    0.21%  ││    0x00007f738524a486: cmp    $0x40,%r10d
                  ││    0x00007f738524a48a: jge    0x00007f738524b509  ;*if_icmpge
                  ││                                                  ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  ││    0x00007f738524a490: mov    %rbx,%rsi
  0.11%    0.15%  ││    0x00007f738524a493: or     %r8,%rsi           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.00%           ││    0x00007f738524a496: mov    %rdx,%r10
  0.13%    0.25%  ││    0x00007f738524a499: mov    %rsi,0x10(%rdx)    ;*putfield pcsl
                  ││                                                  ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  ││    0x00007f738524a49d: mov    %r11,%r9
  0.17%    0.23%  ││    0x00007f738524a4a0: mov    %r11,%r8
  0.01%    0.00%  ││    0x00007f738524a4a3: shr    $0x3,%r8           ;*putfield inst
                  ││                                                  ; - com.google.re2j.Machine::alloc@45 (line 138)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.19%    0.17%  ││    0x00007f738524a4a7: test   %rdi,%rdi
                  ││    0x00007f738524a4aa: jne    0x00007f738524a870  ;*ifnonnull
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@24 (line 98)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
           0.00%  ││    0x00007f738524a4b0: mov    0xc0(%rsp),%rbx
  0.09%    0.06%  ││    0x00007f738524a4b8: mov    0xc(%rbx),%ecx     ;*getfield poolSize
                  ││                                                  ; - com.google.re2j.Machine::alloc@1 (line 132)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  ││                                                  ; implicit exception: dispatches to 0x00007f738524b9c1
  0.01%    0.01%  ││    0x00007f738524a4bb: test   %ecx,%ecx
                  ││    0x00007f738524a4bd: jle    0x00007f738524aba6  ;*ifle
                  ││                                                  ; - com.google.re2j.Machine::alloc@4 (line 132)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.21%    0.25%  ││    0x00007f738524a4c3: mov    %r8d,0x24(%rsp)
  0.00%           ││    0x00007f738524a4c8: mov    %rsi,0x38(%rsp)
  0.17%    0.23%  ││    0x00007f738524a4cd: mov    %rdx,0x48(%rsp)
                  ││    0x00007f738524a4d2: mov    0x24(%rbx),%r10d   ;*getfield pool
                  ││                                                  ; - com.google.re2j.Machine::alloc@18 (line 134)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.12%    0.14%  ││    0x00007f738524a4d6: mov    %ecx,%ebp
                  ││    0x00007f738524a4d8: dec    %ebp               ;*isub
                  ││                                                  ; - com.google.re2j.Machine::alloc@13 (line 133)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.14%    0.12%  ││    0x00007f738524a4da: mov    %ebp,0xc(%rbx)     ;*putfield poolSize
                  ││                                                  ; - com.google.re2j.Machine::alloc@14 (line 133)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.01%    0.02%  ││    0x00007f738524a4dd: mov    0xc(%r12,%r10,8),%r11d  ; implicit exception: dispatches to 0x00007f738524b9d5
  0.16%    0.21%  ││    0x00007f738524a4e2: cmp    %r11d,%ebp
                  ││    0x00007f738524a4e5: jae    0x00007f738524b2ad
                  ││    0x00007f738524a4eb: shl    $0x3,%r10
  0.18%    0.20%  ││    0x00007f738524a4ef: mov    0xc(%r10,%rcx,4),%r11d  ;*aaload
                  ││                                                  ; - com.google.re2j.Machine::alloc@25 (line 134)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.01%    0.01%  ││    0x00007f738524a4f4: test   %r11d,%r11d
                  ││    0x00007f738524a4f7: je     0x00007f738524b2e9  ;*putfield inst
                  ││                                                  ; - com.google.re2j.Machine::alloc@45 (line 138)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.17%    0.20%  ││    0x00007f738524a4fd: mov    %r11,%rdi
                  ││    0x00007f738524a500: shl    $0x3,%rdi          ;*aload_2
                  ││                                                  ; - com.google.re2j.Machine::alloc@43 (line 138)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.15%    0.15%  ││    0x00007f738524a504: mov    0x24(%rsp),%r11d
  0.01%           ││    0x00007f738524a509: mov    %r11d,0x10(%rdi)
  0.22%    0.20%  ││    0x00007f738524a50d: mov    %rdi,%r10
                  ││    0x00007f738524a510: shr    $0x9,%r10
  0.14%    0.15%  ││    0x00007f738524a514: movabs $0x7f739523d000,%r11
  0.00%    0.01%  ││    0x00007f738524a51e: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                  ││                                                  ; - com.google.re2j.Machine::alloc@45 (line 138)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.26%    0.16%  ││    0x00007f738524a522: mov    0x48(%rsp),%r10
                  ││    0x00007f738524a527: mov    0x38(%rsp),%rsi    ;*aload_3
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@44 (line 103)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.13%    0.15%  ││    0x00007f738524a52c: mov    0x58(%rsp),%r14
  0.01%    0.00%  ││    0x00007f738524a531: mov    0xc(%r14),%ebp     ;*arraylength
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@45 (line 103)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  ││                                                  ; implicit exception: dispatches to 0x00007f738524b99d
  0.26%    0.12%  ││    0x00007f738524a535: test   %ebp,%ebp
                  ││    0x00007f738524a537: jg     0x00007f738524b571  ;*ifle
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.00%           ││    0x00007f738524a53d: mov    0x20(%rsp),%ebx
  0.11%    0.19%  ││    0x00007f738524a541: mov    %ebx,0xc(%r10)     ;*putfield size
                  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.17%    0.10%  ││    0x00007f738524a545: mov    0x10(%rsp),%r13d
  0.13%    0.08%  ││    0x00007f738524a54a: mov    0xc(%r12,%r13,8),%r9d  ; implicit exception: dispatches to 0x00007f738524b9ad
                  ││    0x00007f738524a54f: mov    0x14(%rsp),%r11d
  0.11%    0.15%  ││    0x00007f738524a554: cmp    %r9d,%r11d
                  ││    0x00007f738524a557: jae    0x00007f738524b20d
  0.03%    0.02%  ││    0x00007f738524a55d: mov    %rdi,%r8
  0.17%    0.09%  ││    0x00007f738524a560: shr    $0x3,%r8           ;*aastore
                  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
           0.00%  ││    0x00007f738524a564: lea    (%r12,%r13,8),%r11  ;*getfield denseThreads
                  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.13%    0.09%  ││    0x00007f738524a568: mov    0x18(%rsp),%r9
  0.03%    0.05%  ││    0x00007f738524a56d: lea    0x10(%r11,%r9,1),%r11
  0.19%    0.11%  ││    0x00007f738524a572: mov    %r8d,(%r11)
  0.05%    0.04%  ││    0x00007f738524a575: shr    $0x9,%r11
  0.12%    0.18%  ││    0x00007f738524a579: movabs $0x7f739523d000,%r8
  0.05%    0.05%  ││    0x00007f738524a583: mov    %r12b,(%r8,%r11,1)  ;*aastore
                  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.18%    0.11%  ││    0x00007f738524a587: xor    %r11d,%r11d
  0.01%    0.02%  ││╭   0x00007f738524a58a: jmp    0x00007f738524a5d7  ;*invokevirtual add
                  │││                                                 ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                  │││                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.28%    0.32%  │↘│   0x00007f738524a58c: mov    %r11,%rsi
                  │ │   0x00007f738524a58f: mov    0x30(%rsp),%ecx
                  │ │   0x00007f738524a593: mov    0x58(%rsp),%r8
  0.03%    0.02%  │ │   0x00007f738524a598: mov    0x54(%rsp),%r9d
  0.25%    0.34%  │ │   0x00007f738524a59d: rex.W pushq 0xc0(%rsp)
  0.01%           │ │   0x00007f738524a5a5: rex.W popq (%rsp)
  0.58%    0.74%  │ │   0x00007f738524a5a9: mov    %rdx,%rbp
  0.29%    0.43%  │ │   0x00007f738524a5ac: mov    %ecx,0x10(%rsp)
  0.00%           │ │   0x00007f738524a5b0: mov    %r8,0x18(%rsp)
  0.00%           │ │   0x00007f738524a5b5: mov    %r9d,0x14(%rsp)
  0.01%    0.00%  │ │   0x00007f738524a5ba: nop
  0.31%    0.36%  │ │   0x00007f738524a5bb: callq  0x00007f7385046020  ; OopMap{rbp=Oop [192]=Oop [8]=Oop [24]=Oop [88]=Oop [112]=Oop off=1024}
                  │ │                                                 ;*invokevirtual add
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                 ;   {optimized virtual_call}
  0.01%    0.01%  │ │   0x00007f738524a5c0: mov    %rbp,%r10
  0.20%    0.10%  │ │   0x00007f738524a5c3: mov    0xc(%r10),%ebx     ;*getfield size
                  │ │                                                 ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                  │ │                                                 ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.07%    0.03%  │ │   0x00007f738524a5c7: mov    0x10(%r10),%rsi    ;*getfield pcsl
                  │ │                                                 ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                  │ │                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.06%    0.09%  │ │   0x00007f738524a5cb: mov    0x20(%r10),%r13d   ;*getfield denseThreads
                  │ │                                                 ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                  │ │                                                 ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.02%    0.03%  │ │   0x00007f738524a5cf: mov    0x18(%rsp),%r14
  0.24%    0.14%  │ │   0x00007f738524a5d4: mov    %rax,%r11          ;*getfield size
                  │ │                                                 ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                  │ │                                                 ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.13%    0.17%  │ ↘   0x00007f738524a5d7: mov    0x70(%rsp),%r8
  0.06%    0.06%  │     0x00007f738524a5dc: mov    0x20(%r8),%ebp     ;*getfield argInst
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@41 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.33%    0.31%  │     0x00007f738524a5e0: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007f738524b8e9
  0.09%    0.14%  │     0x00007f738524a5e5: cmp    $0xf8019992,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │     0x00007f738524a5ec: jne    0x00007f738524ad5d
  0.12%    0.27%  │     0x00007f738524a5f2: lea    (%r12,%rbp,8),%r8  ;*invokevirtual add
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.07%    0.06%  │     0x00007f738524a5f6: mov    0x18(%r8),%r9d     ;*getfield pc
                  │                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.34%    0.30%  │     0x00007f738524a5fa: cmp    $0x40,%r9d
                  │     0x00007f738524a5fe: jg     0x00007f738524b009  ;*if_icmpgt
                  │                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                  │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.14%    0.16%  │     0x00007f738524a604: mov    $0x1,%edi
  0.18%    0.20%  │     0x00007f738524a609: mov    %r9d,%ecx
  0.03%    0.02%  │     0x00007f738524a60c: shl    %cl,%rdi           ;*lshl
                  │                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                  │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.63%    0.70%  │     0x00007f738524a60f: mov    %rdi,%rcx
  0.05%    0.05%  │     0x00007f738524a612: and    %rsi,%rcx          ;*land
                  │                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                  │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.26%    0.23%  │     0x00007f738524a615: test   %rcx,%rcx
                  │     0x00007f738524a618: jne    0x00007f738524b061  ;*ifeq
                  │                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                  │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.07%    0.11%  │     0x00007f738524a61e: cmp    $0x40,%r9d
                  │     0x00007f738524a622: jge    0x00007f738524b0ad  ;*if_icmpge
                  │                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                  │                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.18%    0.16%  │     0x00007f738524a628: mov    %r12b,0x18(%r10)   ;*putfield empty
                  │                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                  │                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.03%    0.06%  │     0x00007f738524a62c: or     %rsi,%rdi          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                  │                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.36%    0.49%  │     0x00007f738524a62f: mov    %rdi,0x10(%r10)    ;*putfield pcsl
                  │                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                  │                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.11%    0.11%  │     0x00007f738524a633: mov    %r8,%rsi
  0.15%    0.19%  │     0x00007f738524a636: shr    $0x3,%rsi          ;*putfield inst
                  │                                                   ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │                                                   ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.06%    0.08%  │     0x00007f738524a63a: test   %r11,%r11
                  │  ╭  0x00007f738524a63d: jne    0x00007f738524a834  ;*ifnonnull
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@24 (line 98)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.29%    0.38%  │  │  0x00007f738524a643: mov    0xc0(%rsp),%r11
  0.11%    0.08%  │  │  0x00007f738524a64b: mov    0xc(%r11),%r9d     ;*getfield poolSize
                  │  │                                                ; - com.google.re2j.Machine::alloc@1 (line 132)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │  │                                                ; implicit exception: dispatches to 0x00007f738524b931
  0.16%    0.27%  │  │  0x00007f738524a64f: test   %r9d,%r9d
                  │  │  0x00007f738524a652: jle    0x00007f738524a974  ;*ifle
                  │  │                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.05%    0.07%  │  │  0x00007f738524a658: mov    %esi,0x34(%rsp)
  0.38%    0.48%  │  │  0x00007f738524a65c: mov    %rdi,0x38(%rsp)
  0.04%    0.14%  │  │  0x00007f738524a661: mov    %ebx,0x1c(%rsp)
  0.19%    0.22%  │  │  0x00007f738524a665: mov    %r13d,0x18(%rsp)
  0.04%    0.06%  │  │  0x00007f738524a66a: mov    %r14,0x20(%rsp)
  0.34%    0.41%  │  │  0x00007f738524a66f: mov    %r10,0x10(%rsp)
  0.03%    0.09%  │  │  0x00007f738524a674: mov    0x24(%r11),%r10d   ;*getfield pool
                  │  │                                                ; - com.google.re2j.Machine::alloc@18 (line 134)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.19%    0.18%  │  │  0x00007f738524a678: mov    %r9d,%ebp
  0.10%    0.04%  │  │  0x00007f738524a67b: dec    %ebp               ;*isub
                  │  │                                                ; - com.google.re2j.Machine::alloc@13 (line 133)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.29%    0.40%  │  │  0x00007f738524a67d: mov    %ebp,0xc(%r11)     ;*putfield poolSize
                  │  │                                                ; - com.google.re2j.Machine::alloc@14 (line 133)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.11%    0.10%  │  │  0x00007f738524a681: mov    0xc(%r12,%r10,8),%r11d  ; implicit exception: dispatches to 0x00007f738524b945
  0.17%    0.22%  │  │  0x00007f738524a686: cmp    %r11d,%ebp
                  │  │  0x00007f738524a689: jae    0x00007f738524ad8d
  0.04%    0.06%  │  │  0x00007f738524a68f: shl    $0x3,%r10
  0.26%    0.29%  │  │  0x00007f738524a693: mov    0xc(%r10,%r9,4),%r11d  ;*aaload
                  │  │                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.07%    0.07%  │  │  0x00007f738524a698: test   %r11d,%r11d
                  │  │  0x00007f738524a69b: je     0x00007f738524adb9  ;*putfield inst
                  │  │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.18%    0.19%  │  │  0x00007f738524a6a1: shl    $0x3,%r11          ;*aload_2
                  │  │                                                ; - com.google.re2j.Machine::alloc@43 (line 138)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.07%    0.04%  │  │  0x00007f738524a6a5: mov    0x34(%rsp),%r8d
  0.32%    0.43%  │  │  0x00007f738524a6aa: mov    %r8d,0x10(%r11)
  1.01%    1.13%  │  │  0x00007f738524a6ae: mov    %r11,%r10
  0.05%    0.06%  │  │  0x00007f738524a6b1: shr    $0x9,%r10
  0.02%    0.02%  │  │  0x00007f738524a6b5: movabs $0x7f739523d000,%r8
  0.17%    0.23%  │  │  0x00007f738524a6bf: mov    %r12b,(%r8,%r10,1)  ;*putfield inst
                  │  │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.53%    0.56%  │  │  0x00007f738524a6c3: mov    0x10(%rsp),%r10
  0.10%    0.07%  │  │  0x00007f738524a6c8: mov    0x20(%rsp),%r14
  0.03%    0.03%  │  │  0x00007f738524a6cd: mov    0x18(%rsp),%r13d
  0.26%    0.33%  │  │  0x00007f738524a6d2: mov    0x1c(%rsp),%ebx
  0.37%    0.42%  │  │  0x00007f738524a6d6: mov    0x38(%rsp),%rdi    ;*aload_3
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@44 (line 103)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.07%    0.15%  │  │  0x00007f738524a6db: mov    0xc(%r14),%r9d     ;*arraylength
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@45 (line 103)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │  │                                                ; implicit exception: dispatches to 0x00007f738524b905
  0.67%    0.84%  │  │  0x00007f738524a6df: test   %r9d,%r9d
                  │  │  0x00007f738524a6e2: jg     0x00007f738524b105  ;*ifle
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.39%    0.44%  │  │  0x00007f738524a6e8: mov    %ebx,%r8d
  0.18%    0.19%  │  │  0x00007f738524a6eb: inc    %r8d               ;*iadd
                  │  │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 65)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.06%    0.04%  │  │  0x00007f738524a6ee: mov    %r8d,0xc(%r10)     ;*putfield size
                  │  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.91%    1.24%  │  │  0x00007f738524a6f2: mov    0xc(%r12,%r13,8),%ecx  ; implicit exception: dispatches to 0x00007f738524b915
  0.45%    0.60%  │  │  0x00007f738524a6f7: cmp    %ecx,%ebx
                  │  │  0x00007f738524a6f9: jae    0x00007f738524ad31
  0.27%    0.27%  │  │  0x00007f738524a6ff: mov    %r11,%rcx
  0.02%    0.02%  │  │  0x00007f738524a702: shr    $0x3,%rcx          ;*aastore
                  │  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.24%    0.20%  │  │  0x00007f738524a706: lea    (%r12,%r13,8),%r11  ;*getfield denseThreads
                  │  │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.28%    0.33%  │  │  0x00007f738524a70a: lea    0x10(%r11,%rbx,4),%r11
  0.19%    0.25%  │  │  0x00007f738524a70f: mov    %ecx,(%r11)
  1.03%    1.09%  │  │  0x00007f738524a712: shr    $0x9,%r11
  0.07%    0.12%  │  │  0x00007f738524a716: movabs $0x7f739523d000,%rcx
  0.17%    0.17%  │  │  0x00007f738524a720: mov    %r12b,(%rcx,%r11,1)  ;*getfield size
                  │  │                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.45%    0.68%  ↘  │  0x00007f738524a724: mov    0x8(%rsp),%r11
  0.10%    0.04%     │  0x00007f738524a729: mov    0x20(%r11),%ebp    ;*getfield argInst
                     │                                                ; - com.google.re2j.Inst$AltInst::add@41 (line 193)
  0.09%    0.15%     │  0x00007f738524a72d: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f738524b879
  0.16%    0.19%     │  0x00007f738524a732: cmp    $0xf8019992,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                     │  0x00007f738524a739: jne    0x00007f738524ad15
  0.39%    0.39%     │  0x00007f738524a73f: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.10%    0.08%     │  0x00007f738524a743: mov    0x18(%r11),%ebx    ;*getfield pc
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.09%    0.11%     │  0x00007f738524a747: cmp    $0x40,%ebx
                     │  0x00007f738524a74a: jg     0x00007f738524ae69  ;*if_icmpgt
                     │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.16%    0.16%     │  0x00007f738524a750: mov    $0x1,%edx
  0.33%    0.43%     │  0x00007f738524a755: mov    %ebx,%ecx
  0.05%    0.05%     │  0x00007f738524a757: shl    %cl,%rdx           ;*lshl
                     │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.64%    0.64%     │  0x00007f738524a75a: mov    %rdx,%rcx
  0.08%    0.07%     │  0x00007f738524a75d: and    %rdi,%rcx          ;*land
                     │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.08%    0.07%     │  0x00007f738524a760: test   %rcx,%rcx
                     │  0x00007f738524a763: jne    0x00007f738524ae8d  ;*ifeq
                     │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.13%    0.11%     │  0x00007f738524a769: cmp    $0x40,%ebx
                     │  0x00007f738524a76c: jge    0x00007f738524aec1  ;*if_icmpge
                     │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.31%    0.32%     │  0x00007f738524a772: mov    %r12b,0x18(%r10)   ;*putfield empty
                     │                                                ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.07%    0.05%     │  0x00007f738524a776: or     %rdi,%rdx
  0.10%    0.12%     │  0x00007f738524a779: mov    %rdx,0x10(%r10)    ;*putfield pcsl
                     │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.09%    0.18%     │  0x00007f738524a77d: mov    0xc0(%rsp),%rdx
  0.37%    0.35%     │  0x00007f738524a785: mov    0xc(%rdx),%ecx     ;*getfield poolSize
                     │                                                ; - com.google.re2j.Machine::alloc@1 (line 132)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                     │                                                ; implicit exception: dispatches to 0x00007f738524b891
  0.09%    0.05%     │  0x00007f738524a788: test   %ecx,%ecx
                     │  0x00007f738524a78a: jle    0x00007f738524a88e  ;*ifle
                     │                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.06%    0.12%     │  0x00007f738524a790: mov    0x24(%rdx),%edi    ;*getfield pool
                     │                                                ; - com.google.re2j.Machine::alloc@18 (line 134)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.11%    0.12%     │  0x00007f738524a793: mov    %ecx,%ebp
  0.39%    0.31%     │  0x00007f738524a795: dec    %ebp               ;*isub
                     │                                                ; - com.google.re2j.Machine::alloc@13 (line 133)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.08%    0.03%     │  0x00007f738524a797: mov    %ebp,0xc(%rdx)     ;*putfield poolSize
                     │                                                ; - com.google.re2j.Machine::alloc@14 (line 133)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.11%    0.11%     │  0x00007f738524a79a: mov    0xc(%r12,%rdi,8),%ebx  ; implicit exception: dispatches to 0x00007f738524b8c1
  0.12%    0.16%     │  0x00007f738524a79f: cmp    %ebx,%ebp
                     │  0x00007f738524a7a1: jae    0x00007f738524acd9
  0.30%    0.39%     │  0x00007f738524a7a7: lea    (%r12,%rdi,8),%rbx
  0.09%    0.03%     │  0x00007f738524a7ab: mov    0xc(%rbx,%rcx,4),%ecx  ;*aaload
                     │                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.11%    0.08%     │  0x00007f738524a7af: test   %ecx,%ecx
                     │  0x00007f738524a7b1: je     0x00007f738524ad01  ;*putfield inst
                     │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.12%    0.14%     │  0x00007f738524a7b7: mov    %rcx,%rbx
  0.37%    0.36%     │  0x00007f738524a7ba: shl    $0x3,%rbx          ;*aload_2
                     │                                                ; - com.google.re2j.Machine::alloc@43 (line 138)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.05%    0.04%     │  0x00007f738524a7be: mov    %rbx,%rcx
  0.11%    0.05%     │  0x00007f738524a7c1: mov    %r11,%rdi
  0.11%    0.13%     │  0x00007f738524a7c4: shr    $0x3,%rdi
  0.29%    0.22%     │  0x00007f738524a7c8: mov    %edi,0x10(%rbx)
  0.31%    0.22%     │  0x00007f738524a7cb: shr    $0x9,%rcx
  0.07%    0.03%     │  0x00007f738524a7cf: movabs $0x7f739523d000,%r11
  0.02%    0.09%     │  0x00007f738524a7d9: mov    %r12b,(%r11,%rcx,1)  ;*putfield inst
                     │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.42%    0.30%     │  0x00007f738524a7dd: test   %r9d,%r9d
                     │  0x00007f738524a7e0: jg     0x00007f738524aee5  ;*ifle
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.13%    0.08%     │  0x00007f738524a7e6: mov    %r8d,%r9d
  0.09%    0.01%     │  0x00007f738524a7e9: inc    %r9d
  0.12%    0.05%     │  0x00007f738524a7ec: mov    %r9d,0xc(%r10)     ;*putfield size
                     │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.38%    0.23%     │  0x00007f738524a7f0: mov    0xc(%r12,%r13,8),%r11d  ; implicit exception: dispatches to 0x00007f738524b8a5
  0.17%    0.03%     │  0x00007f738524a7f5: cmp    %r11d,%r8d
                     │  0x00007f738524a7f8: jae    0x00007f738524acb7  ;*aastore
                     │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.08%    0.01%     │  0x00007f738524a7fe: mov    %rbx,%r11
  0.08%    0.04%     │  0x00007f738524a801: shr    $0x3,%r11
  0.39%    0.24%     │  0x00007f738524a805: lea    (%r12,%r13,8),%r10  ;*getfield denseThreads
                     │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.13%    0.11%     │  0x00007f738524a809: lea    0x10(%r10,%r8,4),%r10
  0.07%    0.01%     │  0x00007f738524a80e: mov    %r11d,(%r10)
  0.07%    0.02%     │  0x00007f738524a811: shr    $0x9,%r10
  0.37%    0.33%     │  0x00007f738524a815: movabs $0x7f739523d000,%r11
  0.14%    0.08%     │  0x00007f738524a81f: mov    %r12b,(%r11,%r10,1)  ;*if_icmpgt
                     │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
  0.05%    0.00%     │  0x00007f738524a823: xor    %eax,%eax
  0.06%    0.05%     │  0x00007f738524a825: add    $0xb0,%rsp
  0.39%    0.34%     │  0x00007f738524a82c: pop    %rbp
  0.10%    0.06%     │  0x00007f738524a82d: test   %eax,0x175ea7cd(%rip)        # 0x00007f739c835000
                     │                                                ;   {poll_return}
  0.10%    0.01%     │  0x00007f738524a833: retq   
                     ↘  0x00007f738524a834: mov    %esi,0x10(%r11)
                        0x00007f738524a838: mov    %r11,%r8
                        0x00007f738524a83b: shr    $0x9,%r8
                        0x00007f738524a83f: movabs $0x7f739523d000,%r9
                        0x00007f738524a849: mov    %r12b,(%r9,%r8,1)  ;*putfield inst
                                                                      ; - com.google.re2j.Inst$MatchInst::add@41 (line 101)
                                                                      ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                        0x00007f738524a84d: jmpq   0x00007f738524a6db
....................................................................................................
 38.81%   40.08%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 550 (674 bytes) 

                             # parm6:    [sp+0x78]   = int
                             # parm7:    [sp+0x80]   = boolean
                             0x00007f7385247d80: mov    0x8(%rsi),%r10d
                             0x00007f7385247d84: shl    $0x3,%r10
                             0x00007f7385247d88: cmp    %r10,%rax
                             0x00007f7385247d8b: jne    0x00007f7385045e20  ;   {runtime_call}
                             0x00007f7385247d91: data16 xchg %ax,%ax
                             0x00007f7385247d94: nopl   0x0(%rax,%rax,1)
                             0x00007f7385247d9c: data16 data16 xchg %ax,%ax
                           [Verified Entry Point]
  0.29%    0.18%             0x00007f7385247da0: mov    %eax,-0x14000(%rsp)
  0.12%    0.18%             0x00007f7385247da7: push   %rbp
  0.07%    0.06%             0x00007f7385247da8: sub    $0x60,%rsp         ;*synchronization entry
                                                                           ; - com.google.re2j.Machine::step@-1 (line 276)
  0.25%    0.25%             0x00007f7385247dac: mov    %edi,0x18(%rsp)
  0.08%    0.10%             0x00007f7385247db0: mov    %r9d,0x14(%rsp)
  0.06%    0.07%             0x00007f7385247db5: mov    %r8d,0x10(%rsp)
  0.18%    0.20%             0x00007f7385247dba: mov    %rcx,0x8(%rsp)
  0.03%    0.09%             0x00007f7385247dbf: vmovq  %rdx,%xmm0
  0.08%    0.06%             0x00007f7385247dc4: vmovq  %rsi,%xmm1
  0.05%    0.09%             0x00007f7385247dc9: mov    0x14(%rsi),%r10d   ;*getfield re2
                                                                           ; - com.google.re2j.Machine::step@1 (line 276)
  0.09%    0.22%             0x00007f7385247dcd: movzbl 0x18(%r12,%r10,8),%r11d  ;*getfield longest
                                                                           ; - com.google.re2j.Machine::step@4 (line 276)
                                                                           ; implicit exception: dispatches to 0x00007f7385248971
  0.05%    0.06%             0x00007f7385247dd3: vmovd  %r11d,%xmm3
  0.07%    0.08%             0x00007f7385247dd8: mov    0xc(%rdx),%ecx     ;*getfield size
                                                                           ; - com.google.re2j.Machine::step@15 (line 277)
                                                                           ; implicit exception: dispatches to 0x00007f7385248981
  0.03%    0.05%             0x00007f7385247ddb: test   %ecx,%ecx
                  ╭          0x00007f7385247ddd: jle    0x00007f7385247f2e  ;*if_icmpge
                  │                                                        ; - com.google.re2j.Machine::step@18 (line 277)
  0.16%    0.13%  │          0x00007f7385247de3: test   %r11d,%r11d
                  │          0x00007f7385247de6: jne    0x00007f73852484e5
  0.06%    0.05%  │          0x00007f7385247dec: xor    %r10d,%r10d
  0.05%    0.08%  │╭         0x00007f7385247def: jmp    0x00007f7385247e07
  1.24%    0.94%  ││   ↗     0x00007f7385247df1: mov    %r10d,%ecx
  0.05%    0.05%  ││   │     0x00007f7385247df4: mov    %r11,0x8(%rsp)
  0.05%    0.06%  ││   │     0x00007f7385247df9: mov    %ebx,0x78(%rsp)
  0.07%    0.09%  ││   │     0x00007f7385247dfd: mov    %edi,0x80(%rsp)
  1.21%    0.94%  ││   │     0x00007f7385247e04: mov    %edx,%r10d         ;*getfield size
                  ││   │                                                   ; - com.google.re2j.Machine::step@15 (line 277)
  0.10%    0.04%  │↘   │     0x00007f7385247e07: vmovq  %xmm0,%r11
  0.17%    0.28%  │    │     0x00007f7385247e0c: mov    0x20(%r11),%r8d    ;*getfield denseThreads
                  │    │                                                   ; - com.google.re2j.Machine::step@22 (line 278)
  0.11%    0.13%  │    │     0x00007f7385247e10: mov    0xc(%r12,%r8,8),%r9d  ; implicit exception: dispatches to 0x00007f738524892d
  1.21%    1.01%  │    │     0x00007f7385247e15: cmp    %r9d,%r10d
                  │    │     0x00007f7385247e18: jae    0x00007f738524826c
  0.05%    0.07%  │    │     0x00007f7385247e1e: lea    (%r12,%r8,8),%r11
  0.23%    0.18%  │    │     0x00007f7385247e22: mov    0x10(%r11,%r10,4),%r8d  ;*aaload
                  │    │                                                   ; - com.google.re2j.Machine::step@27 (line 278)
  0.17%    0.15%  │    │     0x00007f7385247e27: mov    0x10(%r12,%r8,8),%edi  ;*getfield inst
                  │    │                                                   ; - com.google.re2j.Machine::step@78 (line 283)
                  │    │                                                   ; implicit exception: dispatches to 0x00007f7385248941
  2.31%    1.87%  │    │     0x00007f7385247e2c: mov    0xc(%r12,%rdi,8),%eax  ; implicit exception: dispatches to 0x00007f7385248951
  4.60%    5.52%  │    │     0x00007f7385247e31: mov    0xc(%r12,%r8,8),%r14d  ;*getfield cap
                  │    │                                                   ; - com.google.re2j.Machine::step@106 (line 289)
  0.05%    0.04%  │    │     0x00007f7385247e36: vmovq  %xmm1,%r11
  0.02%    0.04%  │    │     0x00007f7385247e3b: mov    0xc(%r11),%r9d     ;*getfield poolSize
                  │    │                                                   ; - com.google.re2j.Machine::free@1 (line 167)
                  │    │                                                   ; - com.google.re2j.Machine::step@226 (line 303)
  0.24%    0.13%  │    │     0x00007f7385247e3f: mov    0x24(%r11),%r11d   ;*getfield pool
                  │    │                                                   ; - com.google.re2j.Machine::free@5 (line 167)
                  │    │                                                   ; - com.google.re2j.Machine::step@226 (line 303)
  1.31%    1.06%  │    │     0x00007f7385247e43: mov    %r10d,%edx
  0.04%    0.09%  │    │     0x00007f7385247e46: inc    %edx               ;*iadd
                  │    │                                                   ; - com.google.re2j.Machine::step@173 (line 295)
  0.02%    0.02%  │    │     0x00007f7385247e48: lea    (%r12,%r8,8),%rsi  ;*aaload
                  │    │                                                   ; - com.google.re2j.Machine::step@27 (line 278)
  0.24%    0.33%  │    │     0x00007f7385247e4c: cmp    $0x6,%eax
                  │    │     0x00007f7385247e4f: je     0x00007f73852480fc  ;*if_icmpne
                  │    │                                                   ; - com.google.re2j.Machine::step@90 (line 285)
  1.41%    1.57%  │    │     0x00007f7385247e55: mov    0x8(%r12,%rdi,8),%ebx
  0.05%    0.05%  │    │     0x00007f7385247e5a: cmp    $0xf8019992,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │    │     0x00007f7385247e60: jne    0x00007f73852482b5
  0.02%    0.04%  │    │     0x00007f7385247e66: shl    $0x3,%rdi          ;*invokevirtual matchRune
                  │    │                                                   ; - com.google.re2j.Machine::step@189 (line 299)
  0.33%    0.24%  │    │     0x00007f7385247e6a: mov    0xc(%rdi),%ebp     ;*getfield op
                  │    │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@1 (line 134)
                  │    │                                                   ; - com.google.re2j.Machine::step@189 (line 299)
  1.24%    1.53%  │    │     0x00007f7385247e6d: cmp    $0xa,%ebp
                  │ ╭  │     0x00007f7385247e70: je     0x00007f7385247f62  ;*if_icmpne
                  │ │  │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@6 (line 134)
                  │ │  │                                                   ; - com.google.re2j.Machine::step@189 (line 299)
  0.17%    0.11%  │ │  │     0x00007f7385247e76: cmp    $0xb,%ebp
                  │ │  │     0x00007f7385247e79: je     0x00007f7385248391  ;*if_icmpne
                  │ │  │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@17 (line 138)
                  │ │  │                                                   ; - com.google.re2j.Machine::step@189 (line 299)
  0.18%    0.19%  │ │  │     0x00007f7385247e7f: cmp    $0x9,%ebp
                  │ │  │     0x00007f7385247e82: je     0x00007f73852483d1  ;*if_icmpne
                  │ │  │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@38 (line 142)
                  │ │  │                                                   ; - com.google.re2j.Machine::step@189 (line 299)
  0.98%    1.43%  │ │  │     0x00007f7385247e88: cmp    $0xc,%ebp
                  │ │  │     0x00007f7385247e8b: jne    0x00007f7385248351  ;*if_icmpne
                  │ │  │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@61 (line 146)
                  │ │  │                                                   ; - com.google.re2j.Machine::step@189 (line 299)
  0.81%    0.98%  │ │  │     0x00007f7385247e91: mov    0x20(%rdi),%eax    ;*getfield f0
                  │ │  │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@65 (line 147)
                  │ │  │                                                   ; - com.google.re2j.Machine::step@189 (line 299)
  0.02%    0.05%  │ │  │     0x00007f7385247e94: cmp    0x18(%rsp),%eax
                  │ │╭ │     0x00007f7385247e98: je     0x00007f7385247f62  ;*if_icmpeq
                  │ ││ │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@69 (line 147)
                  │ ││ │                                                   ; - com.google.re2j.Machine::step@189 (line 299)
  1.10%    1.39%  │ ││ │     0x00007f7385247e9e: mov    0x24(%rdi),%ebx    ;*getfield f1
                  │ ││ │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@73 (line 147)
                  │ ││ │                                                   ; - com.google.re2j.Machine::step@189 (line 299)
  0.18%    0.19%  │ ││ │     0x00007f7385247ea1: cmp    0x18(%rsp),%ebx
                  │ ││╭│     0x00007f7385247ea5: je     0x00007f7385247f62  ;*if_icmpeq
                  │ ││││                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@77 (line 147)
                  │ ││││                                                   ; - com.google.re2j.Machine::step@189 (line 299)
  1.48%    1.97%  │ ││││     0x00007f7385247eab: mov    0x28(%rdi),%ebp    ;*getfield f2
                  │ ││││                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@81 (line 147)
                  │ ││││                                                   ; - com.google.re2j.Machine::step@189 (line 299)
  0.08%    0.07%  │ ││││     0x00007f7385247eae: cmp    0x18(%rsp),%ebp
                  │ ││││     0x00007f7385247eb2: je     0x00007f7385248465  ;*if_icmpeq
                  │ ││││                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@85 (line 147)
                  │ ││││                                                   ; - com.google.re2j.Machine::step@189 (line 299)
  0.92%    0.85%  │ ││││     0x00007f7385247eb8: mov    0x2c(%rdi),%ebp    ;*getfield f3
                  │ ││││                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@89 (line 147)
                  │ ││││                                                   ; - com.google.re2j.Machine::step@189 (line 299)
  0.11%    0.13%  │ ││││     0x00007f7385247ebb: cmp    0x18(%rsp),%ebp
                  │ ││││     0x00007f7385247ebf: je     0x00007f73852484a5  ;*if_icmpne
                  │ ││││                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@93 (line 147)
                  │ ││││                                                   ; - com.google.re2j.Machine::step@189 (line 299)
  1.45%    1.56%  │ ││││     0x00007f7385247ec5: mov    0x78(%rsp),%ebx
  0.01%    0.02%  │ ││││     0x00007f7385247ec9: mov    0x80(%rsp),%edi    ;*getfield size
                  │ ││││                                                   ; - com.google.re2j.Machine::step@15 (line 277)
  0.07%    0.10%  │ ││││     0x00007f7385247ed0: mov    0xc(%r12,%r11,8),%ebp  ;*arraylength
                  │ ││││                                                   ; - com.google.re2j.Machine::free@8 (line 167)
                  │ ││││                                                   ; - com.google.re2j.Machine::step@226 (line 303)
                  │ ││││                                                   ; implicit exception: dispatches to 0x00007f7385248961
  0.08%    0.09%  │ ││││     0x00007f7385247ed5: cmp    %ebp,%r9d
                  │ ││││     0x00007f7385247ed8: jge    0x00007f7385248411  ;*if_icmplt
                  │ ││││                                                   ; - com.google.re2j.Machine::free@9 (line 167)
                  │ ││││                                                   ; - com.google.re2j.Machine::step@226 (line 303)
  1.41%    1.59%  │ ││││     0x00007f7385247ede: mov    %r9d,%esi
  0.03%    0.01%  │ ││││     0x00007f7385247ee1: inc    %esi
  0.12%    0.14%  │ ││││     0x00007f7385247ee3: vmovq  %xmm1,%rax
  0.07%    0.07%  │ ││││     0x00007f7385247ee8: mov    %esi,0xc(%rax)     ;*putfield poolSize
                  │ ││││                                                   ; - com.google.re2j.Machine::free@45 (line 170)
                  │ ││││                                                   ; - com.google.re2j.Machine::step@226 (line 303)
  1.49%    1.68%  │ ││││     0x00007f7385247eeb: cmp    %ebp,%r9d
                  │ ││││     0x00007f7385247eee: jae    0x00007f73852482f1  ;*aastore
                  │ ││││                                                   ; - com.google.re2j.Machine::free@49 (line 170)
                  │ ││││                                                   ; - com.google.re2j.Machine::step@226 (line 303)
  0.01%    0.01%  │ ││││     0x00007f7385247ef4: vmovq  %xmm0,%r10
  0.06%    0.10%  │ ││││     0x00007f7385247ef9: mov    0xc(%r10),%r10d    ;*getfield size
                  │ ││││                                                   ; - com.google.re2j.Machine::step@15 (line 277)
  0.07%    0.14%  │ ││││     0x00007f7385247efd: shl    $0x3,%r11          ;*getfield pool
                  │ ││││                                                   ; - com.google.re2j.Machine::free@5 (line 167)
                  │ ││││                                                   ; - com.google.re2j.Machine::step@226 (line 303)
  1.51%    1.62%  │ ││││     0x00007f7385247f01: lea    0x10(%r11,%r9,4),%r11
  0.00%    0.01%  │ ││││     0x00007f7385247f06: mov    %r8d,(%r11)
  0.15%    0.09%  │ ││││     0x00007f7385247f09: shr    $0x9,%r11
  0.07%    0.10%  │ ││││     0x00007f7385247f0d: movabs $0x7f739523d000,%r8
  1.36%    1.22%  │ ││││     0x00007f7385247f17: mov    %r12b,(%r8,%r11,1)  ;*aastore
                  │ ││││                                                   ; - com.google.re2j.Machine::free@49 (line 170)
                  │ ││││                                                   ; - com.google.re2j.Machine::step@226 (line 303)
  0.06%    0.05%  │ ││││     0x00007f7385247f1b: mov    0x8(%rsp),%r11     ; OopMap{r11=Oop xmm0=Oop xmm1=Oop off=416}
                  │ ││││                                                   ;*goto
                  │ ││││                                                   ; - com.google.re2j.Machine::step@232 (line 277)
  0.09%    0.13%  │ ││││  ↗  0x00007f7385247f20: test   %eax,0x175ed0da(%rip)        # 0x00007f739c835000
                  │ ││││  │                                                ;*goto
                  │ ││││  │                                                ; - com.google.re2j.Machine::step@232 (line 277)
                  │ ││││  │                                                ;   {poll}
  0.11%    0.10%  │ ││││  │  0x00007f7385247f26: cmp    %ecx,%edx
                  │ │││╰  │  0x00007f7385247f28: jl     0x00007f7385247df1  ;*if_icmpge
                  │ │││   │                                                ; - com.google.re2j.Machine::step@18 (line 277)
  0.27%    0.19%  ↘ │││   │  0x00007f7385247f2e: vmovq  %xmm0,%r10
  0.01%    0.00%    │││   │  0x00007f7385247f33: movzbl 0x18(%r10),%r11d
  0.00%    0.01%    │││   │  0x00007f7385247f38: test   %r11d,%r11d
                    │││ ╭ │  0x00007f7385247f3b: jne    0x00007f7385247f56  ;*ifeq
                    │││ │ │                                                ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                    │││ │ │                                                ; - com.google.re2j.Machine::step@236 (line 306)
  0.02%    0.01%    │││ │ │  0x00007f7385247f3d: mov    %r12d,0xc(%r10)    ;*putfield size
                    │││ │ │                                                ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                    │││ │ │                                                ; - com.google.re2j.Machine::step@236 (line 306)
  0.25%    0.17%    │││ │ │  0x00007f7385247f41: mov    0x1c(%r10),%ebp    ;*getfield pcs
                    │││ │ │                                                ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                    │││ │ │                                                ; - com.google.re2j.Machine::step@236 (line 306)
           0.00%    │││ │ │  0x00007f7385247f45: movb   $0x1,0x18(%r10)    ;*putfield empty
                    │││ │ │                                                ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                    │││ │ │                                                ; - com.google.re2j.Machine::step@236 (line 306)
  0.03%    0.00%    │││ │ │  0x00007f7385247f4a: mov    %r12,0x10(%r10)    ;*putfield pcsl
                    │││ │ │                                                ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                    │││ │ │                                                ; - com.google.re2j.Machine::step@236 (line 306)
  0.01%    0.01%    │││ │ │  0x00007f7385247f4e: test   %ebp,%ebp
                    │││ │ │  0x00007f7385247f50: jne    0x00007f738524850d  ;*getfield size
                    │││ │ │                                                ; - com.google.re2j.Machine::step@15 (line 277)
  0.31%    0.18%    │││ ↘ │  0x00007f7385247f56: add    $0x60,%rsp
                    │││   │  0x00007f7385247f5a: pop    %rbp
  0.03%    0.01%    │││   │  0x00007f7385247f5b: test   %eax,0x175ed09f(%rip)        # 0x00007f739c835000
                    │││   │                                                ;   {poll_return}
                    │││   │  0x00007f7385247f61: retq   
  0.50%    0.35%    ↘↘↘   │  0x00007f7385247f62: mov    0x1c(%rdi),%r11d   ;*getfield outInst
                          │                                                ; - com.google.re2j.Machine::step@197 (line 300)
  0.32%    0.30%          │  0x00007f7385247f66: mov    0x8(%r12,%r11,8),%ebx  ; implicit exception: dispatches to 0x00007f7385248991
  0.27%    0.18%          │  0x00007f7385247f6b: lea    (%r12,%r11,8),%r9
                          │  0x00007f7385247f6f: xor    %edi,%edi
  0.00%                   │  0x00007f7385247f71: mov    $0x1,%eax
                          │  0x00007f7385247f76: cmp    $0xf8019992,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                         ╭│  0x00007f7385247f7c: jne    0x00007f7385248047  ;*invokevirtual add
                         ││                                                ; - com.google.re2j.Machine::step@213 (line 300)
  0.07%    0.01%         ││  0x00007f7385247f82: mov    0x18(%r9),%ebx     ;*getfield pc
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                         ││  0x00007f7385247f86: mov    0x8(%rsp),%r11
                         ││  0x00007f7385247f8b: mov    0x10(%r11),%rbp    ;*getfield pcsl
                         ││                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                         ││                                                ; implicit exception: dispatches to 0x00007f73852489b1
  0.03%                  ││  0x00007f7385247f8f: cmp    $0x40,%ebx
                         ││  0x00007f7385247f92: jg     0x00007f7385248571  ;*if_icmpgt
                         ││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.05%    0.03%         ││  0x00007f7385247f98: mov    %ebx,%ecx
                         ││  0x00007f7385247f9a: shl    %cl,%rax           ;*lshl
                         ││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.18%    0.08%         ││  0x00007f7385247f9d: mov    %rbp,%rcx
                         ││  0x00007f7385247fa0: and    %rax,%rcx          ;*land
                         ││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%    0.00%         ││  0x00007f7385247fa3: test   %rcx,%rcx
                         ││  0x00007f7385247fa6: jne    0x00007f73852485bd  ;*ifeq
                         ││                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.08%    0.01%         ││  0x00007f7385247fac: cmp    $0x40,%ebx
                         ││  0x00007f7385247faf: jge    0x00007f7385248621  ;*if_icmpge
                         ││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%                  ││  0x00007f7385247fb5: mov    %r12b,0x18(%r11)   ;*putfield empty
                         ││                                                ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%                  ││  0x00007f7385247fb9: or     %rbp,%rax
                         ││  0x00007f7385247fbc: mov    %rax,0x10(%r11)    ;*putfield pcsl
                         ││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.12%    0.01%         ││  0x00007f7385247fc0: mov    %rsi,%rbx
  0.00%                  ││  0x00007f7385247fc3: mov    %r9,%rcx
  0.02%                  ││  0x00007f7385247fc6: shr    $0x3,%rcx
                         ││  0x00007f7385247fca: mov    %ecx,0x10(%r12,%r8,8)
  0.06%    0.01%         ││  0x00007f7385247fcf: shr    $0x9,%rbx
  0.03%    0.01%         ││  0x00007f7385247fd3: movabs $0x7f739523d000,%r9
  0.01%    0.00%         ││  0x00007f7385247fdd: mov    %r12b,(%r9,%rbx,1)  ;*putfield inst
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@41 (line 101)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%                  ││  0x00007f7385247fe1: mov    0xc(%r12,%r14,8),%ebp  ;*arraylength
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@45 (line 103)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                         ││                                                ; implicit exception: dispatches to 0x00007f73852489c5
  0.09%    0.01%         ││  0x00007f7385247fe6: test   %ebp,%ebp
                         ││  0x00007f7385247fe8: jg     0x00007f738524866d  ;*ifle
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                         ││  0x00007f7385247fee: mov    0x20(%r11),%ecx    ;*getfield denseThreads
                         ││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%                  ││  0x00007f7385247ff2: mov    0xc(%r11),%ebp     ;*getfield size
                         ││                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                         ││  0x00007f7385247ff6: mov    %ebp,%r9d
  0.03%    0.02%         ││  0x00007f7385247ff9: inc    %r9d
  0.01%    0.01%         ││  0x00007f7385247ffc: mov    %r9d,0xc(%r11)     ;*putfield size
                         ││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%                  ││  0x00007f7385248000: mov    0xc(%r12,%rcx,8),%ebx  ; implicit exception: dispatches to 0x00007f73852489d5
  0.02%                  ││  0x00007f7385248005: cmp    %ebx,%ebp
                         ││  0x00007f7385248007: jae    0x00007f7385248525  ;*aastore
                         ││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.09%    0.06%         ││  0x00007f738524800d: lea    (%r12,%rcx,8),%r10  ;*getfield denseThreads
                         ││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
           0.00%         ││  0x00007f7385248011: lea    0x10(%r10,%rbp,4),%r10
  0.00%                  ││  0x00007f7385248016: mov    %r8d,(%r10)
  0.16%    0.05%         ││  0x00007f7385248019: shr    $0x9,%r10
           0.02%         ││  0x00007f738524801d: movabs $0x7f739523d000,%r8
           0.00%         ││  0x00007f7385248027: mov    %r12b,(%r8,%r10,1)  ;*synchronization entry
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.03%    0.00%         ││  0x00007f738524802b: vmovq  %xmm0,%r10
  0.01%    0.01%         ││  0x00007f7385248030: mov    0xc(%r10),%ecx     ;*getfield size
                         ││                                                ; - com.google.re2j.Machine::step@15 (line 277)
  0.01%    0.05%         ││  0x00007f7385248034: mov    %ecx,%r10d
           0.01%         ││  0x00007f7385248037: mov    0x78(%rsp),%ebx
  0.02%    0.01%         ││  0x00007f738524803b: mov    0x80(%rsp),%edi
  0.00%    0.00%         │╰  0x00007f7385248042: jmpq   0x00007f7385247f20
                         ↘   0x00007f7385248047: cmp    $0xf801990c,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                             0x00007f738524804d: jne    0x00007f7385248705  ;*invokevirtual add
                                                                           ; - com.google.re2j.Machine::step@213 (line 300)
                             0x00007f7385248053: mov    0x18(%r9),%ebx     ;*getfield pc
                                                                           ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                                                                           ; - com.google.re2j.Machine::step@213 (line 300)
                             0x00007f7385248057: mov    0x8(%rsp),%r11
                             0x00007f738524805c: mov    0x10(%r11),%rbp    ;*getfield pcsl
                                                                           ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                                                                           ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
....................................................................................................
 35.79%   36.56%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 585 (818 bytes) 

                                    0x00007f738525e252: and    $0x4,%r11d         ;*iand
                                                                                  ; - com.google.re2j.Machine::match@147 (line 208)
                                    0x00007f738525e256: mov    %r11d,0x14(%rsp)
                                    0x00007f738525e25b: mov    %r13,%r10
                                    0x00007f738525e25e: shl    $0x3,%r10          ;*getfield q1
                                                                                  ; - com.google.re2j.Machine::match@53 (line 188)
                                    0x00007f738525e262: mov    %r10,0x50(%rsp)
                                    0x00007f738525e267: mov    %r8d,0x34(%rsp)
                                    0x00007f738525e26c: xor    %eax,%eax
                                    0x00007f738525e26e: xor    %r10d,%r10d
           0.00%                    0x00007f738525e271: mov    %r10d,0x58(%rsp)
                  ╭                 0x00007f738525e276: jmpq   0x00007f738525e424
                  │                 0x00007f738525e27b: nopl   0x0(%rax,%rax,1)
  0.06%    0.05%  │        ↗        0x00007f738525e280: or     $0x20,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                  │        │                                                      ; - com.google.re2j.Machine::match@323 (line 241)
  0.05%    0.04%  │        │        0x00007f738525e284: mov    %r8d,0x5c(%rsp)    ;*iload_2
                  │        │                                                      ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                  │        │                                                      ; - com.google.re2j.Machine::match@323 (line 241)
  0.24%    0.23%  │        │↗       0x00007f738525e289: mov    0x48(%rsp),%r8
  0.04%    0.10%  │        ││       0x00007f738525e28e: mov    0x10(%r8),%r9d     ;*getfield end
                  │        ││                                                     ; - com.google.re2j.MachineInput$UTF16Input::endPos@1 (line 221)
                  │        ││                                                     ; - com.google.re2j.Machine::match@345 (line 242)
  0.25%    0.14%  │        ││       0x00007f738525e292: mov    0x58(%rsp),%ecx
  0.07%    0.08%  │        ││       0x00007f738525e296: cmp    %r9d,%ecx
                  │╭       ││       0x00007f738525e299: je     0x00007f738525e5a8  ;*if_icmpne
                  ││       ││                                                     ; - com.google.re2j.Machine::match@348 (line 242)
  0.19%    0.19%  ││       ││       0x00007f738525e29f: xor    %eax,%eax          ;*invokespecial step
                  ││       ││                                                     ; - com.google.re2j.Machine::match@356 (line 242)
  0.05%    0.06%  ││       ││    ↗  0x00007f738525e2a1: mov    %rax,-0x8(%rsp)
  0.06%    0.07%  ││       ││    │  0x00007f738525e2a6: mov    0x58(%rsp),%eax
  0.04%    0.05%  ││       ││    │  0x00007f738525e2aa: mov    %eax,0x1c(%rsp)
  0.17%    0.20%  ││       ││    │  0x00007f738525e2ae: mov    -0x8(%rsp),%rax
  0.09%    0.03%  ││       ││    │  0x00007f738525e2b3: add    0x28(%rsp),%ecx    ;*iadd
                  ││       ││    │                                                ; - com.google.re2j.Machine::match@337 (line 242)
  0.07%    0.12%  ││       ││    │  0x00007f738525e2b7: mov    %ecx,0x58(%rsp)
  0.05%    0.07%  ││       ││    │  0x00007f738525e2bb: mov    0x38(%rsp),%rsi
  0.15%    0.14%  ││       ││    │  0x00007f738525e2c0: mov    0x20(%rsp),%rdx
  0.08%    0.07%  ││       ││    │  0x00007f738525e2c5: mov    0x50(%rsp),%rcx
  0.05%    0.08%  ││       ││    │  0x00007f738525e2ca: mov    0x1c(%rsp),%r8d
  0.05%    0.06%  ││       ││    │  0x00007f738525e2cf: mov    0x58(%rsp),%r9d
  0.30%    0.20%  ││       ││    │  0x00007f738525e2d4: mov    0x34(%rsp),%edi
  0.06%    0.06%  ││       ││    │  0x00007f738525e2d8: mov    0x5c(%rsp),%r10d
  0.05%    0.08%  ││       ││    │  0x00007f738525e2dd: mov    %r10d,(%rsp)
  0.03%    0.04%  ││       ││    │  0x00007f738525e2e1: mov    0x40(%rsp),%r11d
  0.11%    0.15%  ││       ││    │  0x00007f738525e2e6: mov    %r11d,0x8(%rsp)
  0.08%    0.02%  ││       ││    │  0x00007f738525e2eb: mov    %eax,0x10(%rsp)
  0.06%    0.09%  ││       ││    │  0x00007f738525e2ef: callq  0x00007f7385046020  ; OopMap{[24]=NarrowOop [32]=Oop [56]=Oop [72]=Oop [80]=Oop off=660}
                  ││       ││    │                                                ;*invokespecial step
                  ││       ││    │                                                ; - com.google.re2j.Machine::match@356 (line 242)
                  ││       ││    │                                                ;   {optimized virtual_call}
  0.24%    0.13%  ││       ││    │  0x00007f738525e2f4: mov    0x38(%rsp),%r10
  0.01%    0.01%  ││       ││    │  0x00007f738525e2f9: movzbl 0x10(%r10),%eax    ;*getfield matched
                  ││       ││    │                                                ; - com.google.re2j.Machine::match@376 (line 246)
  0.01%    0.00%  ││       ││    │  0x00007f738525e2fe: mov    0x28(%rsp),%r8d
  0.26%    0.20%  ││       ││    │  0x00007f738525e303: test   %r8d,%r8d
                  ││╭      ││    │  0x00007f738525e306: je     0x00007f738525e5b2  ;*ifne
                  │││      ││    │                                                ; - com.google.re2j.Machine::match@361 (line 243)
  0.00%    0.00%  │││      ││    │  0x00007f738525e30c: mov    0x28(%r10),%edi    ;*getfield matchcap
                  │││      ││    │                                                ; - com.google.re2j.Machine::match@368 (line 246)
  0.02%    0.01%  │││      ││    │  0x00007f738525e310: mov    0xc(%r12,%rdi,8),%ebp  ;*arraylength
                  │││      ││    │                                                ; - com.google.re2j.Machine::match@371 (line 246)
                  │││      ││    │                                                ; implicit exception: dispatches to 0x00007f738525f351
  0.10%    0.09%  │││      ││    │  0x00007f738525e315: test   %ebp,%ebp
                  │││      ││    │  0x00007f738525e317: jne    0x00007f738525ea35  ;*ifne
                  │││      ││    │                                                ; - com.google.re2j.Machine::match@372 (line 246)
  0.33%    0.17%  │││      ││    │  0x00007f738525e31d: test   %eax,%eax
                  │││      ││    │  0x00007f738525e31f: jne    0x00007f738525eb29  ;*ifeq
                  │││      ││    │                                                ; - com.google.re2j.Machine::match@379 (line 246)
  0.00%           │││      ││    │  0x00007f738525e325: mov    0x2c(%rsp),%ebx
           0.03%  │││      ││    │  0x00007f738525e329: cmp    $0xffffffff,%ebx
                  │││      ││    │  0x00007f738525e32c: je     0x00007f738525e787  ;*if_icmpeq
                  │││      ││    │                                                ; - com.google.re2j.Machine::match@401 (line 254)
  0.02%    0.00%  │││      ││    │  0x00007f738525e332: mov    0x48(%rsp),%r9
  0.33%    0.37%  │││      ││    │  0x00007f738525e337: mov    0x10(%r9),%r10d    ;*getfield end
                  │││      ││    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                  │││      ││    │                                                ; - com.google.re2j.Machine::match@409 (line 255)
                  │││      ││    │  0x00007f738525e33b: mov    0x30(%rsp),%r8d
  0.03%    0.03%  │││      ││    │  0x00007f738525e340: add    0x58(%rsp),%r8d
  0.01%    0.01%  │││      ││    │  0x00007f738525e345: add    0xc(%r9),%r8d      ;*iadd
                  │││      ││    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                  │││      ││    │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.25%    0.35%  │││      ││    │  0x00007f738525e349: cmp    %r10d,%r8d
                  │││      ││    │  0x00007f738525e34c: jge    0x00007f738525e79c  ;*if_icmpge
                  │││      ││    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                  │││      ││    │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.00%    0.00%  │││      ││    │  0x00007f738525e352: mov    %r8d,%r10d
  0.01%    0.01%  │││      ││    │  0x00007f738525e355: mov    0x14(%r9),%ebp     ;*getfield str
                  │││      ││    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                  │││      ││    │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.01%    0.02%  │││      ││    │  0x00007f738525e359: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f738525f361
  0.30%    0.45%  │││      ││    │  0x00007f738525e35e: cmp    $0xf80002da,%r11d  ;   {metadata(&apos;java/lang/String&apos;)}
                  │││      ││    │  0x00007f738525e365: jne    0x00007f738525e90d
  0.05%    0.03%  │││      ││    │  0x00007f738525e36b: lea    (%r12,%rbp,8),%rcx  ;*invokeinterface charAt
                  │││      ││    │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││      ││    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││      ││    │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.01%    0.02%  │││      ││    │  0x00007f738525e36f: test   %r8d,%r8d
                  │││      ││    │  0x00007f738525e372: jl     0x00007f738525ea81  ;*iflt
                  │││      ││    │                                                ; - java.lang.String::charAt@1 (line 657)
                  │││      ││    │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││      ││    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││      ││    │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.01%    0.01%  │││      ││    │  0x00007f738525e378: mov    %r8d,%edx
  0.34%    0.31%  │││      ││    │  0x00007f738525e37b: mov    0xc(%rcx),%r13d    ;*getfield value
                  │││      ││    │                                                ; - java.lang.String::charAt@6 (line 657)
                  │││      ││    │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││      ││    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││      ││    │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.04%    0.03%  │││      ││    │  0x00007f738525e37f: mov    0xc(%r12,%r13,8),%ebp  ;*arraylength
                  │││      ││    │                                                ; - java.lang.String::charAt@9 (line 657)
                  │││      ││    │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││      ││    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││      ││    │                                                ; - com.google.re2j.Machine::match@409 (line 255)
                  │││      ││    │                                                ; implicit exception: dispatches to 0x00007f738525f375
  0.59%    0.67%  │││      ││    │  0x00007f738525e384: cmp    %ebp,%r8d
                  │││      ││    │  0x00007f738525e387: jge    0x00007f738525eb7d  ;*if_icmplt
                  │││      ││    │                                                ; - java.lang.String::charAt@10 (line 657)
                  │││      ││    │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││      ││    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││      ││    │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.32%    0.34%  │││      ││    │  0x00007f738525e38d: cmp    %ebp,%r8d
                  │││      ││    │  0x00007f738525e390: jae    0x00007f738525e88d
  0.04%    0.05%  │││      ││    │  0x00007f738525e396: lea    (%r12,%r13,8),%r10
                  │││      ││    │  0x00007f738525e39a: movzwl 0x10(%r10,%r8,2),%r8d  ;*caload
                  │││      ││    │                                                ; - java.lang.String::charAt@27 (line 660)
                  │││      ││    │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││      ││    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││      ││    │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.09%    0.12%  │││      ││    │  0x00007f738525e3a0: cmp    $0xd800,%r8d
                  │││      ││    │  0x00007f738525e3a7: jge    0x00007f738525ebe9  ;*if_icmplt
                  │││      ││    │                                                ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                  │││      ││    │                                                ; - java.lang.Character::codePointAt@9 (line 4867)
                  │││      ││    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││      ││    │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.24%    0.32%  │││      ││    │  0x00007f738525e3ad: shl    $0x3,%r8d          ;*ishl
                  │││      ││    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                  │││      ││    │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.04%    0.02%  │││      ││    │  0x00007f738525e3b1: mov    %r8d,%r11d
                  │││      ││    │  0x00007f738525e3b4: or     $0x1,%r11d
  0.22%    0.33%  │││      ││    │  0x00007f738525e3b8: and    $0x7,%r8d
  0.05%    0.04%  │││      ││    │  0x00007f738525e3bc: sar    $0x3,%r11d         ;*ishr
                  │││      ││    │                                                ; - com.google.re2j.Machine::match@417 (line 256)
  0.30%    0.40%  │││      ││    │  0x00007f738525e3c0: or     $0x1,%r8d          ;*aload
                  │││      ││    │                                                ; - com.google.re2j.Machine::match@427 (line 259)
  0.00%           │││      ││    │  0x00007f738525e3c4: mov    %r9,0x48(%rsp)
  0.01%    0.01%  │││      ││    │  0x00007f738525e3c9: mov    %rax,-0x8(%rsp)
  0.03%    0.02%  │││      ││    │  0x00007f738525e3ce: mov    0x2c(%rsp),%eax
  0.20%    0.28%  │││      ││    │  0x00007f738525e3d2: mov    %eax,0x34(%rsp)
  0.00%    0.00%  │││      ││    │  0x00007f738525e3d6: mov    -0x8(%rsp),%rax    ; OopMap{r9=Oop rdi=NarrowOop [32]=Oop [56]=Oop [72]=Oop [80]=Oop off=891}
                  │││      ││    │                                                ;*goto
                  │││      ││    │                                                ; - com.google.re2j.Machine::match@439 (line 262)
  0.03%    0.01%  │││      ││    │  0x00007f738525e3db: test   %eax,0x175d6c1f(%rip)        # 0x00007f739c835000
                  │││      ││    │                                                ;*goto
                  │││      ││    │                                                ; - com.google.re2j.Machine::match@439 (line 262)
                  │││      ││    │                                                ;   {poll}
  0.03%    0.03%  │││      ││    │  0x00007f738525e3e1: mov    0x38(%rsp),%r10
  0.28%    0.34%  │││      ││    │  0x00007f738525e3e6: mov    0x14(%r10),%r10d   ;*getfield re2
                  │││      ││    │                                                ; - com.google.re2j.Machine::match@169 (line 216)
  0.01%           │││      ││    │  0x00007f738525e3ea: vmovd  %r10d,%xmm0
  0.01%    0.01%  │││      ││    │  0x00007f738525e3ef: mov    0x50(%rsp),%r10
  0.02%    0.04%  │││      ││    │  0x00007f738525e3f4: shr    $0x3,%r10
  0.30%    0.40%  │││      ││    │  0x00007f738525e3f8: mov    %r10d,0x18(%rsp)
  0.01%    0.01%  │││      ││    │  0x00007f738525e3fd: mov    0x5c(%rsp),%r9d
  0.00%    0.00%  │││      ││    │  0x00007f738525e402: mov    0x20(%rsp),%r10
  0.04%    0.03%  │││      ││    │  0x00007f738525e407: mov    %r10,0x50(%rsp)
  0.30%    0.30%  │││      ││    │  0x00007f738525e40c: mov    0x30(%rsp),%r10d
  0.01%    0.00%  │││      ││    │  0x00007f738525e411: mov    %r10d,0x28(%rsp)
  0.01%           │││      ││    │  0x00007f738525e416: mov    %r8d,0x30(%rsp)
  0.05%    0.02%  │││      ││    │  0x00007f738525e41b: mov    %r11d,0x2c(%rsp)
  0.18%    0.34%  │││      ││    │  0x00007f738525e420: vmovd  %edi,%xmm2         ;*aload
                  │││      ││    │                                                ; - com.google.re2j.Machine::match@136 (line 207)
           0.02%  ↘││      ││    │  0x00007f738525e424: mov    0x18(%rsp),%r11d
  0.00%            ││      ││    │  0x00007f738525e429: movzbl 0x18(%r12,%r11,8),%r11d  ; implicit exception: dispatches to 0x00007f738525f301
  0.05%    0.03%   ││      ││    │  0x00007f738525e42f: test   %r11d,%r11d
                   ││╭     ││    │  0x00007f738525e432: je     0x00007f738525e581  ;*ifeq
                   │││     ││    │                                                ; - com.google.re2j.Machine::match@141 (line 207)
  0.19%    0.23%   │││     ││    │  0x00007f738525e438: mov    0x14(%rsp),%ebx
  0.00%            │││     ││    │  0x00007f738525e43c: test   %ebx,%ebx
                   │││     ││    │  0x00007f738525e43e: jne    0x00007f738525ec69  ;*ifeq
                   │││     ││    │                                                ; - com.google.re2j.Machine::match@148 (line 208)
  0.01%            │││     ││    │  0x00007f738525e444: test   %eax,%eax
                   │││     ││    │  0x00007f738525e446: jne    0x00007f738525ecc9  ;*ifeq
                   │││     ││    │                                                ; - com.google.re2j.Machine::match@162 (line 212)
  0.01%    0.01%   │││     ││    │  0x00007f738525e44c: vmovd  %xmm0,%r10d
  0.27%    0.27%   │││     ││    │  0x00007f738525e451: mov    0x24(%r12,%r10,8),%r11d  ;*getfield prefix
                   │││     ││    │                                                ; - com.google.re2j.Machine::match@172 (line 216)
                   │││     ││    │                                                ; implicit exception: dispatches to 0x00007f738525f385
  0.01%    0.00%   │││     ││    │  0x00007f738525e456: mov    0xc(%r12,%r11,8),%r10d  ;*getfield value
                   │││     ││    │                                                ; - java.lang.String::isEmpty@1 (line 635)
                   │││     ││    │                                                ; - com.google.re2j.Machine::match@175 (line 216)
                   │││     ││    │                                                ; implicit exception: dispatches to 0x00007f738525f395
  0.00%            │││     ││    │  0x00007f738525e45b: mov    0xc(%r12,%r10,8),%ebp  ;*arraylength
                   │││     ││    │                                                ; - java.lang.String::isEmpty@4 (line 635)
                   │││     ││    │                                                ; - com.google.re2j.Machine::match@175 (line 216)
                   │││     ││    │                                                ; implicit exception: dispatches to 0x00007f738525f3a5
  0.34%    0.46%   │││     ││    │  0x00007f738525e460: test   %ebp,%ebp
                   │││     ││    │  0x00007f738525e462: jne    0x00007f738525ec49  ;*aload_0
                   │││     ││    │                                                ; - com.google.re2j.Machine::match@267 (line 233)
  0.34%    0.48%   │││     ││↗   │  0x00007f738525e468: test   %eax,%eax
                   │││     │││   │  0x00007f738525e46a: jne    0x00007f738525e992  ;*ifne
                   │││     │││   │                                                ; - com.google.re2j.Machine::match@271 (line 233)
                   │││     │││   │  0x00007f738525e470: mov    0x58(%rsp),%edi
                   │││     │││   │  0x00007f738525e474: test   %edi,%edi
                   │││╭    │││   │  0x00007f738525e476: je     0x00007f738525e59e  ;*ifeq
                   ││││    │││   │                                                ; - com.google.re2j.Machine::match@275 (line 233)
  0.01%    0.01%   ││││    │││   │  0x00007f738525e47c: mov    0x40(%rsp),%r8d
  0.23%    0.38%   ││││    │││   │  0x00007f738525e481: test   %r8d,%r8d
                   ││││    │││   │  0x00007f738525e484: jne    0x00007f738525e9dd  ;*aload_0
                   ││││    │││   │                                                ; - com.google.re2j.Machine::match@282 (line 236)
           0.00%   ││││    │││  ↗│  0x00007f738525e48a: vmovd  %xmm2,%r10d
                   ││││    │││  ││  0x00007f738525e48f: mov    0xc(%r12,%r10,8),%ebp  ;*arraylength
                   ││││    │││  ││                                                ; - com.google.re2j.Machine::match@286 (line 236)
                   ││││    │││  ││                                                ; implicit exception: dispatches to 0x00007f738525f311
  0.02%    0.01%   ││││    │││  ││  0x00007f738525e494: test   %ebp,%ebp
                   ││││    │││  ││  0x00007f738525e496: jg     0x00007f738525eb05  ;*ifle
                   ││││    │││  ││                                                ; - com.google.re2j.Machine::match@287 (line 236)
  0.30%    0.29%   ││││    │││  ││  0x00007f738525e49c: mov    0x38(%rsp),%rdx
           0.01%   ││││    │││  ││  0x00007f738525e4a1: mov    0x18(%rdx),%r11d   ;*getfield prog
                   ││││    │││  ││                                                ; - com.google.re2j.Machine::match@298 (line 239)
  0.00%            ││││    │││  ││  0x00007f738525e4a5: mov    0x1c(%r12,%r11,8),%ebp  ;*getfield startInst
                   ││││    │││  ││                                                ; - com.google.re2j.Machine::match@301 (line 239)
                   ││││    │││  ││                                                ; implicit exception: dispatches to 0x00007f738525f321
  0.02%    0.02%   ││││    │││  ││  0x00007f738525e4aa: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f738525f331
  0.39%    0.30%   ││││    │││  ││  0x00007f738525e4af: cmp    $0xf8019843,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$AltInst&apos;)}
                   ││││    │││  ││  0x00007f738525e4b5: jne    0x00007f738525e841  ;*invokevirtual add
                   ││││    │││  ││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.02%    0.02%   ││││    │││  ││  0x00007f738525e4bb: mov    %ebx,0x14(%rsp)
                   ││││    │││  ││  0x00007f738525e4bf: mov    %r8d,0x40(%rsp)    ;*ifle
                   ││││    │││  ││                                                ; - com.google.re2j.Machine::match@287 (line 236)
  0.01%    0.00%   ││││    │││  ││  0x00007f738525e4c4: lea    (%r12,%rbp,8),%rsi  ;*invokevirtual add
                   ││││    │││  ││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.33%    0.25%   ││││    │││  ││  0x00007f738525e4c8: mov    0x18(%rsp),%r11d
  0.03%    0.02%   ││││    │││  ││  0x00007f738525e4cd: shl    $0x3,%r11          ;*aload
                   ││││    │││  ││                                                ; - com.google.re2j.Machine::match@136 (line 207)
                   ││││    │││  ││  0x00007f738525e4d1: mov    %r11,0x20(%rsp)
                   ││││    │││  ││  0x00007f738525e4d6: mov    %r10,%r8
  0.24%    0.25%   ││││    │││  ││  0x00007f738525e4d9: shl    $0x3,%r8           ;*getfield matchcap
                   ││││    │││  ││                                                ; - com.google.re2j.Machine::match@283 (line 236)
  0.02%    0.01%   ││││    │││  ││  0x00007f738525e4dd: mov    %r11,%rdx
                   ││││    │││  ││  0x00007f738525e4e0: mov    0x58(%rsp),%ecx
  0.01%            ││││    │││  ││  0x00007f738525e4e4: xor    %edi,%edi
  0.27%    0.24%   ││││    │││  ││  0x00007f738525e4e6: mov    0x38(%rsp),%r10
  0.01%    0.03%   ││││    │││  ││  0x00007f738525e4eb: mov    %r10,(%rsp)
                   ││││    │││  ││  0x00007f738525e4ef: callq  0x00007f7385046020  ; OopMap{[24]=NarrowOop [32]=Oop [56]=Oop [72]=Oop [80]=Oop off=1172}
                   ││││    │││  ││                                                ;*invokevirtual add
                   ││││    │││  ││                                                ; - com.google.re2j.Machine::match@315 (line 239)
                   ││││    │││  ││                                                ;   {optimized virtual_call}
  0.05%    0.05%   ││││    │││  ││  0x00007f738525e4f4: mov    0x34(%rsp),%r10d
  0.23%    0.15%   ││││    │││  ││  0x00007f738525e4f9: test   %r10d,%r10d
                   ││││╭   │││  ││  0x00007f738525e4fc: jl     0x00007f738525e58a  ;*ifge
                   │││││   │││  ││                                                ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                   │││││   │││  ││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.01%    0.05%   │││││   │││  ││  0x00007f738525e502: xor    %r8d,%r8d          ;*iload_0
                   │││││   │││  ││                                                ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                   │││││   │││  ││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.04%    0.08%   │││││   │││↗ ││  0x00007f738525e505: cmp    $0xa,%r10d
                   │││││   ││││ ││  0x00007f738525e509: je     0x00007f738525e7aa  ;*iload_1
                   │││││   ││││ ││                                                ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                   │││││   ││││ ││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.20%    0.13%   │││││   ││││ ││  0x00007f738525e50f: mov    0x2c(%rsp),%r11d
  0.03%    0.02%   │││││   ││││ ││  0x00007f738525e514: test   %r11d,%r11d
                   │││││╭  ││││ ││  0x00007f738525e517: jl     0x00007f738525e595  ;*iload_1
                   ││││││  ││││ ││                                                ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                   ││││││  ││││ ││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.05%    0.03%   ││││││  ││││↗││  0x00007f738525e519: cmp    $0xa,%r11d
                   ││││││  │││││││  0x00007f738525e51d: je     0x00007f738525e7b3  ;*iload_0
                   ││││││  │││││││                                                ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                   ││││││  │││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.06%    0.08%   ││││││  │││││││  0x00007f738525e523: mov    0x34(%rsp),%ecx
  0.20%    0.18%   ││││││  │││││││  0x00007f738525e527: add    $0xffffffbf,%ecx
  0.04%    0.05%   ││││││  │││││││  0x00007f738525e52a: cmp    $0x1a,%ecx
                   ││││││╭ │││││││  0x00007f738525e52d: jb     0x00007f738525e542  ;*if_icmple
                   │││││││ │││││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                   │││││││ │││││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   │││││││ │││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.02%    0.04%   │││││││ │││││││  0x00007f738525e52f: mov    0x34(%rsp),%r9d
  0.05%    0.09%   │││││││ │││││││  0x00007f738525e534: add    $0xffffff9f,%r9d
  0.19%    0.18%   │││││││ │││││││  0x00007f738525e538: cmp    $0x1a,%r9d
                   │││││││ │││││││  0x00007f738525e53c: jae    0x00007f738525e7bc  ;*iconst_1
                   │││││││ │││││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                   │││││││ │││││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   │││││││ │││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.05%    0.10%   ││││││↘ │││││││  0x00007f738525e542: mov    $0x1,%ebp          ;*ireturn
                   ││││││  │││││││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                   ││││││  │││││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   ││││││  │││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.04%    0.04%   ││││││  │││││││  0x00007f738525e547: mov    0x2c(%rsp),%ecx
  0.07%    0.07%   ││││││  │││││││  0x00007f738525e54b: add    $0xffffffbf,%ecx
  0.14%    0.28%   ││││││  │││││││  0x00007f738525e54e: cmp    $0x1a,%ecx
                   ││││││ ╭│││││││  0x00007f738525e551: jb     0x00007f738525e566  ;*if_icmple
                   ││││││ ││││││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                   ││││││ ││││││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   ││││││ ││││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.04%    0.03%   ││││││ ││││││││  0x00007f738525e553: mov    0x2c(%rsp),%r9d
  0.06%    0.07%   ││││││ ││││││││  0x00007f738525e558: add    $0xffffff9f,%r9d
  0.06%    0.06%   ││││││ ││││││││  0x00007f738525e55c: cmp    $0x1a,%r9d
                   ││││││ ││││││││  0x00007f738525e560: jae    0x00007f738525e7dd  ;*iconst_1
                   ││││││ ││││││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                   ││││││ ││││││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   ││││││ ││││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.16%    0.15%   ││││││ ↘│││││││  0x00007f738525e566: mov    $0x1,%ecx          ;*ireturn
                   ││││││  │││││││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                   ││││││  │││││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   ││││││  │││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.07%    0.10%   ││││││  │││││││  0x00007f738525e56b: cmp    %ecx,%ebp
                   ││││││  ╰││││││  0x00007f738525e56d: je     0x00007f738525e280  ;*if_icmpeq
                   ││││││   ││││││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                   ││││││   ││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.05%    0.07%   ││││││   ││││││  0x00007f738525e573: or     $0x10,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                   ││││││   ││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.05%    0.04%   ││││││   ││││││  0x00007f738525e577: mov    %r8d,0x5c(%rsp)
  0.10%    0.04%   ││││││   ╰│││││  0x00007f738525e57c: jmpq   0x00007f738525e289
  0.07%    0.09%   ││↘│││    │││││  0x00007f738525e581: mov    0x14(%rsp),%ebx
  0.01%    0.02%   ││ │││    ╰││││  0x00007f738525e585: jmpq   0x00007f738525e468
                   ││ │↘│     ││││  0x00007f738525e58a: mov    $0x5,%r8d
                   ││ │ │     ╰│││  0x00007f738525e590: jmpq   0x00007f738525e505
           0.00%   ││ │ ↘      │││  0x00007f738525e595: or     $0xa,%r8d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@27 (line 180)
                   ││ │        │││                                                ; - com.google.re2j.Machine::match@323 (line 241)
                   ││ │        ╰││  0x00007f738525e599: jmpq   0x00007f738525e519
                   ││ ↘         ││  0x00007f738525e59e: mov    0x40(%rsp),%r8d
  0.01%            ││           ╰│  0x00007f738525e5a3: jmpq   0x00007f738525e48a
                   ↘│            │  0x00007f738525e5a8: mov    $0x1,%eax
                    │            ╰  0x00007f738525e5ad: jmpq   0x00007f738525e2a1
                    ↘               0x00007f738525e5b2: mov    0x50(%rsp),%r10
                                    0x00007f738525e5b7: mov    %r10,0x18(%rsp)
                                    0x00007f738525e5bc: mov    0xc(%r10),%ebx     ;*getfield size
                                                                                  ; - com.google.re2j.Machine::freeQueue@1 (line 148)
                                                                                  ; - com.google.re2j.Machine::freeQueue@3 (line 144)
                                                                                  ; - com.google.re2j.Machine::match@445 (line 263)
                                                                                  ; implicit exception: dispatches to 0x00007f738525f40d
                                    0x00007f738525e5c0: test   %ebx,%ebx
....................................................................................................
 13.71%   14.64%  <total for region 3>

....[Hottest Regions]...............................................................................
 38.81%   40.08%         C2, level 4  com.google.re2j.Inst$AltInst::add, version 548 (1092 bytes) 
 35.79%   36.56%         C2, level 4  com.google.re2j.Machine::step, version 550 (674 bytes) 
 13.71%   14.64%         C2, level 4  com.google.re2j.Machine::match, version 585 (818 bytes) 
  7.49%    5.83%         C2, level 4  com.google.re2j.Inst$AltInst::add, version 548 (177 bytes) 
  0.82%    0.13%         C2, level 4  com.google.re2j.Machine::init, version 591 (299 bytes) 
  0.60%    0.68%         C2, level 4  com.google.re2j.Machine::match, version 585 (109 bytes) 
  0.30%    0.30%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.12%    0.04%         C2, level 4  com.google.re2j.Machine::init, version 591 (21 bytes) 
  0.10%    0.01%         C2, level 4  com.google.re2j.Machine::init, version 591 (18 bytes) 
  0.07%    0.00%   [kernel.kallsyms]  [unknown] (30 bytes) 
  0.06%    0.02%         C2, level 4  com.google.re2j.Machine::match, version 585 (150 bytes) 
  0.06%    0.02%         C2, level 4  com.google.re2j.RE2::match, version 600 (8 bytes) 
  0.05%    0.01%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.04%    0.02%         C2, level 4  com.google.re2j.RE2::match, version 600 (0 bytes) 
  0.04%    0.01%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.03%    0.05%         C2, level 4  com.google.re2j.RE2::match, version 600 (30 bytes) 
  0.03%    0.02%         C2, level 4  com.google.re2j.RE2::match, version 600 (5 bytes) 
  0.03%    0.00%              [vdso]  [unknown] (9 bytes) 
  0.03%            [kernel.kallsyms]  [unknown] (49 bytes) 
  0.03%    0.03%         C2, level 4  java.util.Collections::shuffle, version 607 (8 bytes) 
  1.77%    1.54%  <...other 372 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 46.29%   45.91%         C2, level 4  com.google.re2j.Inst$AltInst::add, version 548 
 35.80%   36.58%         C2, level 4  com.google.re2j.Machine::step, version 550 
 14.45%   15.37%         C2, level 4  com.google.re2j.Machine::match, version 585 
  1.10%    0.19%         C2, level 4  com.google.re2j.Machine::init, version 591 
  0.95%    0.83%   [kernel.kallsyms]  [unknown] 
  0.31%    0.15%         C2, level 4  com.google.re2j.RE2::match, version 600 
  0.08%    0.02%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 658 
  0.08%    0.06%         C2, level 4  java.util.Collections::shuffle, version 607 
  0.06%    0.03%      hsdis-amd64.so  [unknown] 
  0.04%    0.01%           libjvm.so  GenericTaskQueueSet<OverflowTaskQueue<StarTask, (MemoryType)1, 131072u>, (MemoryType)1>::steal_best_of_2 
  0.04%                       [vdso]  __vdso_clock_gettime 
  0.03%    0.05%        libc-2.26.so  vfprintf 
  0.03%    0.00%              [vdso]  [unknown] 
  0.03%    0.02%           libjvm.so  StringTable::unlink_or_oops_do 
  0.02%    0.04%           libjvm.so  PSPromotionManager::copy_to_survivor_space<false> 
  0.02%    0.06%           libjvm.so  InstanceKlass::oop_push_contents 
  0.02%    0.04%           libjvm.so  RelocIterator::initialize 
  0.02%    0.03%        libc-2.26.so  _IO_default_xsputn 
  0.02%    0.02%           libjvm.so  PSPromotionManager::drain_stacks_depth 
  0.02%                 libc-2.26.so  _IO_do_write@@GLIBC_2.2.5 
  0.54%    0.36%  <...other 82 warm methods...>
....................................................................................................
100.00%   99.80%  <totals>

....[Distribution by Source]........................................................................
 98.15%   98.31%         C2, level 4
  0.95%    0.83%   [kernel.kallsyms]
  0.45%    0.49%           libjvm.so
  0.20%    0.26%        libc-2.26.so
  0.07%    0.00%              [vdso]
  0.07%    0.03%      hsdis-amd64.so
  0.04%    0.01%         interpreter
  0.03%    0.04%  libpthread-2.26.so
  0.01%               perf-22798.map
  0.01%                  C1, level 3
  0.00%    0.01%    Unknown, level 0
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:44

Benchmark                     Mode  Cnt      Score    Error  Units
Re2jFindRegex.testExp2       thrpt   20  11509.838 ± 70.709  ops/s
Re2jFindRegex.testExp2:·asm  thrpt             NaN             ---
