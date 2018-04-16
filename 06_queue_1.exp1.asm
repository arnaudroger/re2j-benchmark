# JMH version: 1.19
# VM version: JDK 1.8.0_131, VM 25.131-b11
# VM invoker: /usr/lib/jvm/java-8-oracle/jre/bin/java
# VM options: <none>
# Warmup: 20 iterations, 1 s each
# Measurement: 20 iterations, 1 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Throughput, ops/time
# Benchmark: com.github.arnaudroger.re2j.Re2jRegex.testExp1

# Run progress: 0.00% complete, ETA 00:00:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 4197.691 ops/s
# Warmup Iteration   2: 11321.419 ops/s
# Warmup Iteration   3: 11541.516 ops/s
# Warmup Iteration   4: 11559.625 ops/s
# Warmup Iteration   5: 11678.235 ops/s
# Warmup Iteration   6: 11738.637 ops/s
# Warmup Iteration   7: 11785.572 ops/s
# Warmup Iteration   8: 11470.641 ops/s
# Warmup Iteration   9: 11922.720 ops/s
# Warmup Iteration  10: 11630.198 ops/s
# Warmup Iteration  11: 11107.889 ops/s
# Warmup Iteration  12: 11754.796 ops/s
# Warmup Iteration  13: 11837.459 ops/s
# Warmup Iteration  14: 11726.268 ops/s
# Warmup Iteration  15: 11869.708 ops/s
# Warmup Iteration  16: 11705.372 ops/s
# Warmup Iteration  17: 11727.376 ops/s
# Warmup Iteration  18: 11758.844 ops/s
# Warmup Iteration  19: 11846.085 ops/s
# Warmup Iteration  20: 11878.751 ops/s
Iteration   1: 11788.085 ops/s
Iteration   2: 11709.197 ops/s
Iteration   3: 11727.632 ops/s
Iteration   4: 11748.011 ops/s
Iteration   5: 11730.453 ops/s
Iteration   6: 11795.705 ops/s
Iteration   7: 11763.780 ops/s
Iteration   8: 11756.377 ops/s
Iteration   9: 11761.435 ops/s
Iteration  10: 11699.772 ops/s
Iteration  11: 11790.877 ops/s
Iteration  12: 11889.366 ops/s
Iteration  13: 11842.079 ops/s
Iteration  14: 11898.654 ops/s
Iteration  15: 11842.911 ops/s
Iteration  16: 11676.077 ops/s
Iteration  17: 11821.749 ops/s
Iteration  18: 11805.506 ops/s
Iteration  19: 11900.986 ops/s
Iteration  20: 11717.777 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jRegex.testExp1":
  11783.321 ±(99.9%) 57.944 ops/s [Average]
  (min, avg, max) = (11676.077, 11783.321, 11900.986), stdev = 66.728
  CI (99.9%): [11725.378, 11841.265] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jRegex.testExp1:·asm":
PrintAssembly processed: 212187 total address lines.
Perf output processed (skipped 23.831 seconds):
 Column 1: cycles (20771 events)
 Column 2: instructions (20762 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 537 (373 bytes) 

                          0x00007fddc92360a0: mov    %r10,(%rsp)
                          0x00007fddc92360a4: data16 xchg %ax,%ax
                          0x00007fddc92360a7: callq  0x00007fddc9046020  ; OopMap{off=300}
                                                                        ;*invokespecial add
                                                                        ; - com.google.re2j.Machine::add@186 (line 363)
                                                                        ;   {optimized virtual_call}
                  ╭       0x00007fddc92360ac: jmpq   0x00007fddc9236225
                  │       0x00007fddc92360b1: mov    0x70(%rsp),%rax
                  │╭      0x00007fddc92360b6: jmpq   0x00007fddc9236225  ;*tableswitch
                  ││                                                    ; - com.google.re2j.Machine::add@26 (line 343)
  1.42%    1.59%  ││      0x00007fddc92360bb: mov    0x20(%rsp),%r8d
  0.11%    0.10%  ││      0x00007fddc92360c0: mov    0x28(%rsp),%r9
           0.00%  ││      0x00007fddc92360c5: mov    0x70(%rsp),%r10
  0.15%    0.15%  ││      0x00007fddc92360ca: mov    %r10,(%rsp)
  0.30%    0.32%  ││      0x00007fddc92360ce: mov    %rsi,%rbp
  0.07%    0.10%  ││      0x00007fddc92360d1: xchg   %ax,%ax
  0.00%    0.00%  ││      0x00007fddc92360d3: callq  0x00007fddc9046020  ; OopMap{rbp=Oop [40]=Oop [56]=Oop [64]=Oop off=344}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@114 (line 352)
                  ││                                                    ;   {optimized virtual_call}
  0.10%    0.14%  ││      0x00007fddc92360d8: mov    0x38(%rsp),%r10
  0.09%    0.13%  ││      0x00007fddc92360dd: mov    0x34(%r10),%r11d
  0.36%    0.40%  ││      0x00007fddc92360e1: mov    %r11,%rcx
  0.12%    0.09%  ││      0x00007fddc92360e4: shl    $0x3,%rcx          ;*getfield argInst
                  ││                                                    ; - com.google.re2j.Machine::add@122 (line 353)
  0.09%    0.09%  ││      0x00007fddc92360e8: mov    %rbp,%rsi
  0.02%    0.01%  ││      0x00007fddc92360eb: mov    0x40(%rsp),%rdx
  0.38%    0.33%  ││      0x00007fddc92360f0: mov    0x20(%rsp),%r8d
  0.13%    0.13%  ││      0x00007fddc92360f5: mov    0x28(%rsp),%r9
  0.07%    0.03%  ││      0x00007fddc92360fa: mov    0x30(%rsp),%edi
  0.03%    0.02%  ││      0x00007fddc92360fe: mov    %rax,(%rsp)
  0.33%    0.42%  ││      0x00007fddc9236102: nop
  0.15%    0.17%  ││      0x00007fddc9236103: callq  0x00007fddc9046020  ; OopMap{off=392}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@132 (line 353)
                  ││                                                    ;   {optimized virtual_call}
  0.28%    0.35%  ││╭     0x00007fddc9236108: jmpq   0x00007fddc9236225  ;*aload
                  │││                                                   ; - com.google.re2j.Machine::add@270 (line 383)
  1.71%    1.25%  │││     0x00007fddc923610d: mov    0x38(%rsp),%r10
  0.13%    0.10%  │││     0x00007fddc9236112: mov    %r10,%r9
  0.21%    0.24%  │││     0x00007fddc9236115: shr    $0x3,%r9           ;*putfield inst
                  │││                                                   ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │││                                                   ; - com.google.re2j.Machine::add@277 (line 384)
  0.15%    0.20%  │││     0x00007fddc9236119: mov    0x70(%rsp),%rbx
  0.61%    0.58%  │││     0x00007fddc923611e: test   %rbx,%rbx
                  │││╭    0x00007fddc9236121: je     0x00007fddc923613e  ;*ifnonnull
                  ││││                                                  ; - com.google.re2j.Machine::add@272 (line 383)
  0.16%    0.01%  ││││    0x00007fddc9236123: mov    %r9d,0x10(%rbx)
  0.04%    0.03%  ││││    0x00007fddc9236127: mov    %rbx,%r10
  0.18%    0.16%  ││││    0x00007fddc923612a: shr    $0x9,%r10
  0.03%    0.02%  ││││    0x00007fddc923612e: movabs $0x7fddd8b3e000,%r11
  0.13%    0.01%  ││││    0x00007fddc9236138: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                  ││││                                                  ; - com.google.re2j.Machine::add@288 (line 386)
  0.03%    0.01%  ││││╭   0x00007fddc923613c: jmp    0x00007fddc923618b
  0.03%    0.05%  │││↘│   0x00007fddc923613e: mov    0xc(%rsi),%r10d    ;*getfield poolSize
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@1 (line 132)
                  │││ │                                                 ; - com.google.re2j.Machine::add@277 (line 384)
  0.19%    0.23%  │││ │   0x00007fddc9236142: test   %r10d,%r10d
                  │││ │   0x00007fddc9236145: jle    0x00007fddc923632d  ;*ifle
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@4 (line 132)
                  │││ │                                                 ; - com.google.re2j.Machine::add@277 (line 384)
  0.03%    0.05%  │││ │   0x00007fddc923614b: mov    0x24(%rsi),%ecx    ;*getfield pool
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@18 (line 134)
                  │││ │                                                 ; - com.google.re2j.Machine::add@277 (line 384)
  0.63%    0.76%  │││ │   0x00007fddc923614e: mov    %r10d,%ebp
  0.06%    0.03%  │││ │   0x00007fddc9236151: dec    %ebp               ;*isub
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@13 (line 133)
                  │││ │                                                 ; - com.google.re2j.Machine::add@277 (line 384)
  0.17%    0.25%  │││ │   0x00007fddc9236153: mov    %ebp,0xc(%rsi)     ;*putfield poolSize
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@14 (line 133)
                  │││ │                                                 ; - com.google.re2j.Machine::add@277 (line 384)
  0.05%    0.04%  │││ │   0x00007fddc9236156: mov    0xc(%r12,%rcx,8),%r8d  ; implicit exception: dispatches to 0x00007fddc92363a9
  0.61%    0.77%  │││ │   0x00007fddc923615b: cmp    %r8d,%ebp
                  │││ │   0x00007fddc923615e: jae    0x00007fddc92362d5
  0.06%    0.02%  │││ │   0x00007fddc9236164: lea    (%r12,%rcx,8),%r11
  0.25%    0.36%  │││ │   0x00007fddc9236168: mov    0xc(%r11,%r10,4),%r10d  ;*aaload
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │││ │                                                 ; - com.google.re2j.Machine::add@277 (line 384)
  0.01%    0.01%  │││ │   0x00007fddc923616d: mov    %r9d,0x10(%r12,%r10,8)  ;*putfield inst
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │││ │                                                 ; - com.google.re2j.Machine::add@277 (line 384)
                  │││ │                                                 ; implicit exception: dispatches to 0x00007fddc92363b9
  0.63%    0.78%  │││ │   0x00007fddc9236172: lea    (%r12,%r10,8),%rbx  ;*aaload
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │││ │                                                 ; - com.google.re2j.Machine::add@277 (line 384)
  0.01%    0.01%  │││ │   0x00007fddc9236176: mov    %rbx,%r10
  0.19%    0.18%  │││ │   0x00007fddc9236179: shr    $0x9,%r10
  0.02%    0.04%  │││ │   0x00007fddc923617d: movabs $0x7fddd8b3e000,%r11
  0.61%    0.72%  │││ │   0x00007fddc9236187: mov    %r12b,(%r11,%r10,1)  ;*aload
                  │││ │                                                 ; - com.google.re2j.Machine::add@291 (line 388)
  0.15%    0.10%  │││ ↘   0x00007fddc923618b: mov    0x28(%rsp),%rdi
  0.18%    0.22%  │││     0x00007fddc9236190: mov    0xc(%rdi),%r10d    ;*arraylength
                  │││                                                   ; - com.google.re2j.Machine::add@293 (line 388)
                  │││                                                   ; implicit exception: dispatches to 0x00007fddc9236381
  0.17%    0.01%  │││     0x00007fddc9236194: test   %r10d,%r10d
                  │││     0x00007fddc9236197: jle    0x00007fddc923630e  ;*ifle
                  │││                                                   ; - com.google.re2j.Machine::add@294 (line 388)
  0.61%    0.66%  │││     0x00007fddc923619d: mov    0xc(%rbx),%r8d     ;*getfield cap
                  │││                                                   ; - com.google.re2j.Machine::add@299 (line 388)
  0.18%    0.08%  │││     0x00007fddc92361a1: mov    %r8,%r11
  0.23%    0.24%  │││     0x00007fddc92361a4: shl    $0x3,%r11
  0.16%    0.02%  │││     0x00007fddc92361a8: cmp    %rdi,%r11
                  │││  ╭  0x00007fddc92361ab: je     0x00007fddc92361d8  ;*if_acmpeq
                  │││  │                                                ; - com.google.re2j.Machine::add@304 (line 388)
  0.61%    0.69%  │││  │  0x00007fddc92361ad: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x00007fddc92363cd
  0.16%    0.21%  │││  │  0x00007fddc92361b2: lea    (%r12,%r8,8),%rcx  ;*getfield cap
                  │││  │                                                ; - com.google.re2j.Machine::add@299 (line 388)
  0.21%    0.21%  │││  │  0x00007fddc92361b6: cmp    %r10d,%r11d
                  │││  │  0x00007fddc92361b9: jb     0x00007fddc92362e9
  0.30%    0.20%  │││  │  0x00007fddc92361bf: lea    0x10(%r12,%r8,8),%rsi
  0.57%    0.42%  │││  │  0x00007fddc92361c4: add    $0x10,%rdi
  0.00%    0.04%  │││  │  0x00007fddc92361c8: movslq %r10d,%rdx
  0.19%    0.08%  │││  │  0x00007fddc92361cb: movabs $0x7fddc9052640,%r10
  0.18%    0.16%  │││  │  0x00007fddc92361d5: callq  *%r10              ;*aload_1
                  │││  │                                                ; - com.google.re2j.Machine::add@322 (line 391)
  0.02%    0.04%  │││  ↘  0x00007fddc92361d8: mov    0x40(%rsp),%r10
  0.33%    0.43%  │││     0x00007fddc92361dd: mov    0xc(%r10),%r10d    ;*getfield size
                  │││                                                   ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                  │││                                                   ; - com.google.re2j.Machine::add@325 (line 391)
  0.82%    0.68%  │││     0x00007fddc92361e1: mov    0x40(%rsp),%r11
  0.11%           │││     0x00007fddc92361e6: mov    0x20(%r11),%ebp    ;*getfield denseThreads
                  │││                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                  │││                                                   ; - com.google.re2j.Machine::add@325 (line 391)
  0.12%    0.13%  │││     0x00007fddc92361ea: mov    %r10d,%r8d
  0.25%    0.29%  │││     0x00007fddc92361ed: inc    %r8d
  0.69%    0.49%  │││     0x00007fddc92361f0: mov    %r8d,0xc(%r11)     ;*putfield size
                  │││                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                  │││                                                   ; - com.google.re2j.Machine::add@325 (line 391)
  0.15%    0.16%  │││     0x00007fddc92361f4: mov    0xc(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007fddc9236391
  0.27%    0.28%  │││     0x00007fddc92361f9: cmp    %r8d,%r10d
                  │││     0x00007fddc92361fc: jae    0x00007fddc923625d  ;*aastore
                  │││                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │││                                                   ; - com.google.re2j.Machine::add@325 (line 391)
  0.66%    0.87%  │││     0x00007fddc92361fe: lea    (%r12,%rbp,8),%r11  ;*getfield denseThreads
                  │││                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                  │││                                                   ; - com.google.re2j.Machine::add@325 (line 391)
  0.52%    0.71%  │││     0x00007fddc9236202: lea    0x10(%r11,%r10,4),%r10
  0.12%    0.11%  │││     0x00007fddc9236207: mov    %rbx,%r11
  0.07%    0.08%  │││     0x00007fddc923620a: shr    $0x3,%r11
  0.47%    0.61%  │││     0x00007fddc923620e: mov    %r11d,(%r10)
  2.28%    2.91%  │││     0x00007fddc9236211: shr    $0x9,%r10
  0.09%    0.06%  │││     0x00007fddc9236215: movabs $0x7fddd8b3e000,%r11
  0.07%    0.07%  │││     0x00007fddc923621f: mov    %r12b,(%r11,%r10,1)  ;*aastore
                  │││                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │││                                                   ; - com.google.re2j.Machine::add@325 (line 391)
  1.16%    1.66%  │││     0x00007fddc9236223: xor    %eax,%eax          ;*invokevirtual contains
                  │││                                                   ; - com.google.re2j.Machine::add@5 (line 339)
  1.33%    1.66%  ↘↘↘     0x00007fddc9236225: add    $0x60,%rsp
  0.09%    0.06%          0x00007fddc9236229: pop    %rbp
  0.03%    0.05%          0x00007fddc923622a: test   %eax,0x16effdd0(%rip)        # 0x00007fdde0136000
                                                                        ;   {poll_return}
  1.43%    2.01%          0x00007fddc9236230: retq                      ;*tableswitch
                                                                        ; - com.google.re2j.Machine::add@26 (line 343)
                          0x00007fddc9236231: mov    0x20(%rsp),%r8d
                          0x00007fddc9236236: mov    0x28(%rsp),%r9
                          0x00007fddc923623b: mov    0x70(%rsp),%r10
                          0x00007fddc9236240: mov    %r10,(%rsp)
                          0x00007fddc9236244: data16 xchg %ax,%ax
                          0x00007fddc9236247: callq  0x00007fddc9046020  ; OopMap{off=716}
                                                                        ;*invokespecial add
                                                                        ; - com.google.re2j.Machine::add@165 (line 358)
....................................................................................................
 26.10%   28.22%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 537 (155 bytes) 

                     # parm4:    rdi       = int
                     # parm5:    [sp+0x70]   = &apos;com/google/re2j/Machine$Thread&apos;  (sp of caller)
                     0x00007fddc9235f80: mov    0x8(%rsi),%r10d    ;   {no_reloc}
                     0x00007fddc9235f84: shl    $0x3,%r10
                     0x00007fddc9235f88: cmp    %r10,%rax
                     0x00007fddc9235f8b: jne    0x00007fddc9045e20  ;   {runtime_call}
                     0x00007fddc9235f91: data16 xchg %ax,%ax
                     0x00007fddc9235f94: nopl   0x0(%rax,%rax,1)
                     0x00007fddc9235f9c: data16 data16 xchg %ax,%ax
                   [Verified Entry Point]
  1.18%    1.14%     0x00007fddc9235fa0: mov    %eax,-0x14000(%rsp)
  1.10%    1.14%     0x00007fddc9235fa7: push   %rbp
  0.45%    0.51%     0x00007fddc9235fa8: sub    $0x60,%rsp         ;*synchronization entry
                                                                   ; - com.google.re2j.Machine::add@-1 (line 339)
  1.31%    1.34%     0x00007fddc9235fac: mov    %edi,0x30(%rsp)
  0.32%    0.44%     0x00007fddc9235fb0: mov    %r9,0x28(%rsp)
  0.48%    0.45%     0x00007fddc9235fb5: mov    %r8d,0x20(%rsp)
  0.65%    0.39%     0x00007fddc9235fba: mov    %rsi,0x8(%rsp)
  0.66%    0.78%     0x00007fddc9235fbf: mov    %rcx,0x38(%rsp)
  0.33%    0.36%     0x00007fddc9235fc4: mov    0x28(%rcx),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Machine::add@2 (line 339)
                                                                   ; implicit exception: dispatches to 0x00007fddc923635d
  1.71%    1.46%     0x00007fddc9235fc7: mov    %rdx,0x40(%rsp)
  0.30%    0.19%     0x00007fddc9235fcc: mov    0x10(%rdx),%r11    ;*getfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                                                                   ; - com.google.re2j.Machine::add@5 (line 339)
                                                                   ; implicit exception: dispatches to 0x00007fddc923636d
  0.63%    0.61%     0x00007fddc9235fd0: cmp    $0x40,%ecx
                     0x00007fddc9235fd3: jg     0x00007fddc9236279  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                                                                   ; - com.google.re2j.Machine::add@5 (line 339)
  0.98%    0.68%     0x00007fddc9235fd9: mov    $0x1,%r8d
  0.35%    0.26%     0x00007fddc9235fdf: shl    %cl,%r8            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                                                                   ; - com.google.re2j.Machine::add@5 (line 339)
  2.24%    1.92%     0x00007fddc9235fe2: mov    %r11,%r10
  0.41%    0.30%     0x00007fddc9235fe5: and    %r8,%r10
  0.25%    0.18%     0x00007fddc9235fe8: test   %r10,%r10
                  ╭  0x00007fddc9235feb: jne    0x00007fddc9236040  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                  │                                                ; - com.google.re2j.Machine::add@5 (line 339)
  0.93%    0.74%  │  0x00007fddc9235fed: cmp    $0x40,%ecx
                  │  0x00007fddc9235ff0: jge    0x00007fddc92362a5  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                  │                                                ; - com.google.re2j.Machine::add@19 (line 342)
  0.57%    0.59%  │  0x00007fddc9235ff6: mov    %r12b,0x18(%rdx)   ;*putfield empty
                  │                                                ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                  │                                                ; - com.google.re2j.Machine::add@19 (line 342)
  0.40%    0.30%  │  0x00007fddc9235ffa: mov    0x38(%rsp),%r10
  0.55%    0.27%  │  0x00007fddc9235fff: mov    0xc(%r10),%r10d    ;*getfield op
                  │                                                ; - com.google.re2j.Machine::add@23 (line 343)
  0.84%    0.53%  │  0x00007fddc9236003: or     %r11,%r8
  0.53%    0.61%  │  0x00007fddc9236006: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                  │                                                ; - com.google.re2j.Machine::add@19 (line 342)
  0.34%    0.29%  │  0x00007fddc923600a: mov    %r10d,%r11d
  0.20%    0.27%  │  0x00007fddc923600d: dec    %r11d
  0.79%    0.55%  │  0x00007fddc9236010: cmp    $0xc,%r11d
                  │  0x00007fddc9236014: jae    0x00007fddc923624e  ;*tableswitch
                  │                                                ; - com.google.re2j.Machine::add@26 (line 343)
  0.58%    0.65%  │  0x00007fddc923601a: mov    0x38(%rsp),%r11
  0.32%    0.52%  │  0x00007fddc923601f: mov    0x14(%r11),%r8d    ;*getfield arg
                  │                                                ; - com.google.re2j.Machine::add@141 (line 357)
  0.53%    0.57%  │  0x00007fddc9236023: mov    0x30(%r11),%r11d
  0.78%    0.73%  │  0x00007fddc9236027: movslq %r10d,%r9
  0.42%    0.56%  │  0x00007fddc923602a: mov    %r11,%rcx
  0.42%    0.36%  │  0x00007fddc923602d: shl    $0x3,%rcx          ;*getfield outInst
                  │                                                ; - com.google.re2j.Machine::add@176 (line 363)
  0.31%    0.39%  │  0x00007fddc9236031: movabs $0x7fddc9235f20,%r10  ;   {section_word}
  0.89%    0.79%  │  0x00007fddc923603b: jmpq   *-0x8(%r10,%r9,8)  ;*tableswitch
                  │                                                ; - com.google.re2j.Machine::add@26 (line 343)
                  ↘  0x00007fddc9236040: mov    0x70(%rsp),%rax
                     0x00007fddc9236045: jmpq   0x00007fddc9236225
                     0x00007fddc923604a: andn   %r8d,%edi,%r10d
                     0x00007fddc923604f: test   %r10d,%r10d
                     0x00007fddc9236052: je     0x00007fddc9236231  ;*ifne
                                                                   ; - com.google.re2j.Machine::add@149 (line 357)
                     0x00007fddc9236058: mov    0x70(%rsp),%rax
                     0x00007fddc923605d: jmpq   0x00007fddc9236225
  0.44%    0.60%     0x00007fddc9236062: mov    0x28(%rsp),%r10
....................................................................................................
 22.75%   20.91%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 535 (301 bytes) 

                     # parm6:    [sp+0x68]   = int
                     # parm7:    [sp+0x70]   = boolean
                     0x00007fddc9238740: mov    0x8(%rsi),%r10d
                     0x00007fddc9238744: shl    $0x3,%r10
                     0x00007fddc9238748: cmp    %r10,%rax
                     0x00007fddc923874b: jne    0x00007fddc9045e20  ;   {runtime_call}
                     0x00007fddc9238751: data16 xchg %ax,%ax
                     0x00007fddc9238754: nopl   0x0(%rax,%rax,1)
                     0x00007fddc923875c: data16 data16 xchg %ax,%ax
                   [Verified Entry Point]
  0.22%    0.16%     0x00007fddc9238760: mov    %eax,-0x14000(%rsp)
  0.06%    0.02%     0x00007fddc9238767: push   %rbp
  0.11%    0.01%     0x00007fddc9238768: sub    $0x50,%rsp         ;*synchronization entry
                                                                   ; - com.google.re2j.Machine::step@-1 (line 276)
  0.12%    0.14%     0x00007fddc923876c: mov    %edi,0x20(%rsp)
  0.03%    0.02%     0x00007fddc9238770: mov    %r9d,0x1c(%rsp)
  0.06%    0.03%     0x00007fddc9238775: mov    %r8d,0x18(%rsp)
  0.22%    0.04%     0x00007fddc923877a: mov    %rcx,0x10(%rsp)
  0.05%    0.03%     0x00007fddc923877f: mov    %rdx,0x8(%rsp)
  0.03%    0.01%     0x00007fddc9238784: mov    %rsi,0x28(%rsp)
  0.09%    0.06%     0x00007fddc9238789: mov    0x14(%rsi),%r10d   ;*getfield re2
                                                                   ; - com.google.re2j.Machine::step@1 (line 276)
  0.16%    0.09%     0x00007fddc923878d: movzbl 0x18(%r12,%r10,8),%r10d  ;*getfield longest
                                                                   ; - com.google.re2j.Machine::step@4 (line 276)
                                                                   ; implicit exception: dispatches to 0x00007fddc9238de9
  0.04%    0.05%     0x00007fddc9238793: mov    %r10d,0x24(%rsp)
  0.07%    0.03%     0x00007fddc9238798: mov    0xc(%rdx),%r11d    ; implicit exception: dispatches to 0x00007fddc9238df9
  0.02%    0.02%     0x00007fddc923879c: test   %r11d,%r11d
                     0x00007fddc923879f: jle    0x00007fddc9238ac2  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine::step@18 (line 277)
  0.16%    0.17%     0x00007fddc92387a5: mov    0x24(%rsp),%r10d
  0.23%    0.13%     0x00007fddc92387aa: test   %r10d,%r10d
                     0x00007fddc92387ad: jne    0x00007fddc9238c35  ;*aload_1
                                                                   ; - com.google.re2j.Machine::step@21 (line 278)
  0.08%    0.09%     0x00007fddc92387b3: xor    %r11d,%r11d
  0.01%    0.03%  ╭  0x00007fddc92387b6: jmpq   0x00007fddc923884b
                  │  0x00007fddc92387bb: nopl   0x0(%rax,%rax,1)
  0.01%    0.00%  │  0x00007fddc92387c0: mov    0x68(%rsp),%ebx
  0.23%           │  0x00007fddc92387c4: mov    0x70(%rsp),%edx    ;*goto
                  │                                                ; - com.google.re2j.Machine::step@224 (line 301)
  0.19%    0.19%  │  0x00007fddc92387c8: mov    0x8(%rsp),%r8
  0.49%    0.44%  │  0x00007fddc92387cd: mov    0xc(%r8),%r9d      ;*getfield size
                  │                                                ; - com.google.re2j.Machine::step@15 (line 277)
  0.08%    0.14%  │  0x00007fddc92387d1: mov    0x28(%rsp),%r8
  0.13%    0.02%  │  0x00007fddc92387d6: mov    0x24(%r8),%r13d    ;*getfield pool
                  │                                                ; - com.google.re2j.Machine::free@5 (line 167)
                  │                                                ; - com.google.re2j.Machine::step@330 (line 327)
  0.23%    0.14%  │  0x00007fddc92387da: mov    0xc(%r8),%r8d      ;*getfield poolSize
                  │                                                ; - com.google.re2j.Machine::free@1 (line 167)
                  │                                                ; - com.google.re2j.Machine::step@330 (line 327)
  0.46%    0.48%  │  0x00007fddc92387de: mov    %rsi,%rax          ;*getfield size
                  │                                                ; - com.google.re2j.Machine::step@15 (line 277)
  0.09%    0.10%  │  0x00007fddc92387e1: mov    0xc(%r12,%r13,8),%ebp  ;*arraylength
                  │                                                ; - com.google.re2j.Machine::free@8 (line 167)
                  │                                                ; - com.google.re2j.Machine::step@330 (line 327)
                  │                                                ; implicit exception: dispatches to 0x00007fddc9238dc9
  0.21%    0.02%  │  0x00007fddc92387e6: cmp    %ebp,%r8d
                  │  0x00007fddc92387e9: jge    0x00007fddc9238bdd  ;*if_icmplt
                  │                                                ; - com.google.re2j.Machine::free@9 (line 167)
                  │                                                ; - com.google.re2j.Machine::step@330 (line 327)
  0.20%    0.18%  │  0x00007fddc92387ef: mov    %r8d,%edi
  0.46%    0.50%  │  0x00007fddc92387f2: inc    %edi
  0.08%    0.10%  │  0x00007fddc92387f4: mov    0x28(%rsp),%rsi
  0.19%    0.05%  │  0x00007fddc92387f9: mov    %edi,0xc(%rsi)     ;*putfield poolSize
                  │                                                ; - com.google.re2j.Machine::free@45 (line 170)
                  │                                                ; - com.google.re2j.Machine::step@330 (line 327)
  0.13%    0.17%  │  0x00007fddc92387fc: cmp    %ebp,%r8d
                  │  0x00007fddc92387ff: jae    0x00007fddc9238b4d  ;*aastore
                  │                                                ; - com.google.re2j.Machine::free@49 (line 170)
                  │                                                ; - com.google.re2j.Machine::step@330 (line 327)
  0.49%    0.35%  │  0x00007fddc9238805: mov    %rax,%r11
  0.09%    0.13%  │  0x00007fddc9238808: shr    $0x3,%r11
  0.17%    0.20%  │  0x00007fddc923880c: lea    (%r12,%r13,8),%rdi  ;*getfield pool
                  │                                                ; - com.google.re2j.Machine::free@5 (line 167)
                  │                                                ; - com.google.re2j.Machine::step@330 (line 327)
  0.18%    0.19%  │  0x00007fddc9238810: lea    0x10(%rdi,%r8,4),%r8
  0.39%    0.40%  │  0x00007fddc9238815: mov    %r11d,(%r8)
  0.12%    0.10%  │  0x00007fddc9238818: mov    %r8,%r11
  0.19%    0.21%  │  0x00007fddc923881b: shr    $0x9,%r11
  0.19%    0.13%  │  0x00007fddc923881f: movabs $0x7fddd8b3e000,%r8
  0.42%    0.28%  │  0x00007fddc9238829: mov    %r12b,(%r8,%r11,1)  ; OopMap{[8]=Oop [16]=Oop [40]=Oop off=237}
                  │                                                ;*goto
                  │                                                ; - com.google.re2j.Machine::step@336 (line 277)
  0.11%    0.08%  │  0x00007fddc923882d: test   %eax,0x16efd7cd(%rip)        # 0x00007fdde0136000
                  │                                                ;*goto
                  │                                                ; - com.google.re2j.Machine::step@336 (line 277)
                  │                                                ;   {poll}
  0.15%    0.25%  │  0x00007fddc9238833: cmp    %r9d,%r10d
                  │  0x00007fddc9238836: jge    0x00007fddc9238ac2
  0.41%    0.68%  │  0x00007fddc923883c: mov    %ecx,0x20(%rsp)
  0.26%    0.07%  │  0x00007fddc9238840: mov    %ebx,0x68(%rsp)
  0.11%    0.10%  │  0x00007fddc9238844: mov    %edx,0x70(%rsp)
  0.04%    0.03%  │  0x00007fddc9238848: mov    %r10d,%r11d        ;*aload_1
                  │                                                ; - com.google.re2j.Machine::step@21 (line 278)
  0.52%    0.68%  ↘  0x00007fddc923884b: mov    0x8(%rsp),%r10
  0.36%    0.10%     0x00007fddc9238850: mov    0x20(%r10),%r10d   ;*getfield denseThreads
                                                                   ; - com.google.re2j.Machine::step@22 (line 278)
  0.24%    0.26%     0x00007fddc9238854: mov    0xc(%r12,%r10,8),%r9d  ; implicit exception: dispatches to 0x00007fddc9238d95
  0.96%    1.24%     0x00007fddc9238859: cmp    %r9d,%r11d
                     0x00007fddc923885c: jae    0x00007fddc9238b10
  0.68%    0.78%     0x00007fddc9238862: shl    $0x3,%r10
  0.26%    0.06%     0x00007fddc9238866: mov    0x10(%r10,%r11,4),%r9d  ;*aaload
                                                                   ; - com.google.re2j.Machine::step@27 (line 278)
  0.09%    0.03%     0x00007fddc923886b: mov    0x10(%r12,%r9,8),%r8d  ;*getfield inst
                                                                   ; - com.google.re2j.Machine::step@78 (line 283)
                                                                   ; implicit exception: dispatches to 0x00007fddc9238da9
  1.99%    2.27%     0x00007fddc9238870: mov    0xc(%r12,%r8,8),%ecx  ;*getfield op
                                                                   ; - com.google.re2j.Machine::step@88 (line 285)
                                                                   ; implicit exception: dispatches to 0x00007fddc9238db9
  3.84%    4.16%     0x00007fddc9238875: mov    0xc(%r12,%r9,8),%r14d  ;*getfield cap
                                                                   ; - com.google.re2j.Machine::step@148 (line 292)
  0.26%    0.27%     0x00007fddc923887a: mov    %r11d,%r10d
  0.02%    0.00%     0x00007fddc923887d: inc    %r10d              ;*iadd
                                                                   ; - com.google.re2j.Machine::step@215 (line 298)
  0.00%    0.00%     0x00007fddc9238880: lea    (%r12,%r9,8),%rsi  ;*aaload
                                                                   ; - com.google.re2j.Machine::step@27 (line 278)
  0.91%    0.90%     0x00007fddc9238884: cmp    $0x9,%ecx
                     0x00007fddc9238887: je     0x00007fddc9238a9a
  0.09%    0.09%     0x00007fddc923888d: cmp    $0x9,%ecx
                     0x00007fddc9238890: jg     0x00007fddc92389ec
                     0x00007fddc9238896: cmp    $0x7,%ecx
                     0x00007fddc9238899: je     0x00007fddc9238c25
                     0x00007fddc923889f: cmp    $0x7,%ecx
                     0x00007fddc92388a2: jg     0x00007fddc923899e
                     0x00007fddc92388a8: cmp    $0x6,%ecx
                     0x00007fddc92388ab: jne    0x00007fddc9238c25  ;*tableswitch
                                                                   ; - com.google.re2j.Machine::step@91 (line 285)
                     0x00007fddc92388b1: mov    0x68(%rsp),%ebx
                     0x00007fddc92388b5: cmp    $0x2,%ebx
....................................................................................................
 18.44%   17.73%  <total for region 3>

....[Hottest Region 4]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 580 (981 bytes) 

                                                                            ; - java.lang.String::charAt@27 (line 660)
                                                                            ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                            ; - com.google.re2j.Machine::match@60 (line 189)
                              0x00007fddc9259dbe: cmp    $0xd800,%r10d
                              0x00007fddc9259dc5: jge    0x00007fddc925b0a9  ;*if_icmplt
                                                                            ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                            ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                            ; - com.google.re2j.Machine::match@60 (line 189)
  0.00%                       0x00007fddc9259dcb: shl    $0x3,%r10d         ;*ishl
                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                                                                            ; - com.google.re2j.Machine::match@60 (line 189)
                              0x00007fddc9259dcf: mov    %r10d,%r11d
                              0x00007fddc9259dd2: and    $0x7,%r11d
                              0x00007fddc9259dd6: or     $0x1,%r10d
                              0x00007fddc9259dda: mov    %r10d,%edi
                              0x00007fddc9259ddd: or     $0x1,%r11d         ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                                                                            ; - com.google.re2j.Machine::match@60 (line 189)
                              0x00007fddc9259de1: mov    %r11d,0x2c(%rsp)
           0.00%              0x00007fddc9259de6: sar    $0x3,%r10d         ;*ishr
                                                                            ; - com.google.re2j.Machine::match@68 (line 190)
                              0x00007fddc9259dea: cmp    $0xfffffff8,%edi
                              0x00007fddc9259ded: je     0x00007fddc925acc4  ;*if_icmpeq
                                                                            ; - com.google.re2j.Machine::match@88 (line 194)
                              0x00007fddc9259df3: mov    0x28(%rsp),%r11d
                              0x00007fddc9259df8: add    0x2c(%rsp),%r11d
  0.01%    0.00%              0x00007fddc9259dfd: add    %edx,%r11d         ;*iadd
                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                                                                            ; - com.google.re2j.Machine::match@96 (line 195)
                              0x00007fddc9259e00: mov    %r11d,%edi
                              0x00007fddc9259e03: cmp    0x14(%rsp),%r11d
                              0x00007fddc9259e08: jge    0x00007fddc925a778  ;*if_icmpge
                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                                                                            ; - com.google.re2j.Machine::match@96 (line 195)
  0.00%                       0x00007fddc9259e0e: test   %r11d,%r11d
                              0x00007fddc9259e11: jl     0x00007fddc925afa1  ;*iflt
                                                                            ; - java.lang.String::charAt@1 (line 657)
                                                                            ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                            ; - com.google.re2j.Machine::match@96 (line 195)
                              0x00007fddc9259e17: cmp    0x1c(%rsp),%r11d
                              0x00007fddc9259e1c: jge    0x00007fddc925b0f1  ;*if_icmplt
                                                                            ; - java.lang.String::charAt@10 (line 657)
                                                                            ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                            ; - com.google.re2j.Machine::match@96 (line 195)
                              0x00007fddc9259e22: cmp    0x1c(%rsp),%r11d
                              0x00007fddc9259e27: jae    0x00007fddc925ad69
  0.00%                       0x00007fddc9259e2d: movzwl 0x10(%r8,%r11,2),%r8d  ;*caload
                                                                            ; - java.lang.String::charAt@27 (line 660)
                                                                            ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                            ; - com.google.re2j.Machine::match@96 (line 195)
  0.03%                       0x00007fddc9259e33: cmp    $0xd800,%r8d
                              0x00007fddc9259e3a: jge    0x00007fddc925b13d  ;*if_icmplt
                                                                            ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                            ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                            ; - com.google.re2j.Machine::match@96 (line 195)
           0.00%              0x00007fddc9259e40: shl    $0x3,%r8d          ;*ishl
                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                                                                            ; - com.google.re2j.Machine::match@96 (line 195)
                              0x00007fddc9259e44: mov    %r8d,%r11d
                              0x00007fddc9259e47: or     $0x1,%r11d
                              0x00007fddc9259e4b: and    $0x7,%r8d
                              0x00007fddc9259e4f: sar    $0x3,%r11d
           0.00%              0x00007fddc9259e53: or     $0x1,%r8d          ;*ishr
                                                                            ; - com.google.re2j.Machine::match@104 (line 196)
                              0x00007fddc9259e57: mov    0x28(%rsp),%r9d
                              0x00007fddc9259e5c: test   %r9d,%r9d
                              0x00007fddc9259e5f: jne    0x00007fddc925af41  ;*ifne
                                                                            ; - com.google.re2j.Machine::match@115 (line 200)
                              0x00007fddc9259e65: test   %r10d,%r10d
                              0x00007fddc9259e68: jl     0x00007fddc925a753  ;*ifge
                                                                            ; - com.google.re2j.Utils::emptyOpContext@21 (line 179)
                                                                            ; - com.google.re2j.Machine::match@121 (line 201)
           0.00%              0x00007fddc9259e6e: mov    %r11d,%r13d
                              0x00007fddc9259e71: mov    %r8d,%r14d
                              0x00007fddc9259e74: mov    $0x5,%edi          ;*iload_1
                                                                            ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                                                                            ; - com.google.re2j.Machine::match@121 (line 201)
                              0x00007fddc9259e79: cmp    $0xa,%r10d
                              0x00007fddc9259e7d: je     0x00007fddc925a770  ;*iload_0
                                                                            ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                                                                            ; - com.google.re2j.Machine::match@121 (line 201)
  0.00%                       0x00007fddc9259e83: mov    %r10d,%r8d
                              0x00007fddc9259e86: add    $0xffffffbf,%r8d
                              0x00007fddc9259e8a: cmp    $0x1a,%r8d
                  ╭           0x00007fddc9259e8e: jb     0x00007fddc9259ea1  ;*if_icmple
                  │                                                         ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │                                                         ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                         ; - com.google.re2j.Machine::match@121 (line 201)
                  │           0x00007fddc9259e90: mov    %r10d,%r11d
           0.00%  │           0x00007fddc9259e93: add    $0xffffff9f,%r11d
                  │           0x00007fddc9259e97: cmp    $0x1a,%r11d
                  │           0x00007fddc9259e9b: jae    0x00007fddc925a786  ;*iconst_1
                  │                                                         ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │                                                         ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                         ; - com.google.re2j.Machine::match@121 (line 201)
                  ↘           0x00007fddc9259ea1: or     $0x10,%edi         ;*iload_2
                                                                            ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                            ; - com.google.re2j.Machine::match@121 (line 201)
                              0x00007fddc9259ea4: mov    %rbx,%r11
                              0x00007fddc9259ea7: shl    $0x3,%r11          ;*getfield q1
                                                                            ; - com.google.re2j.Machine::match@53 (line 188)
  0.00%                       0x00007fddc9259eab: mov    %r11,0x58(%rsp)
  0.00%    0.01%              0x00007fddc9259eb0: xor    %ecx,%ecx
                              0x00007fddc9259eb2: xor    %r11d,%r11d
                              0x00007fddc9259eb5: mov    %r11d,0x60(%rsp)
                   ╭          0x00007fddc9259eba: jmpq   0x00007fddc925a04c
  0.17%    0.20%   │    ↗     0x00007fddc9259ebf: or     $0x20,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                   │    │                                                   ; - com.google.re2j.Machine::match@323 (line 241)
  0.04%    0.05%   │    │     0x00007fddc9259ec3: mov    %r8d,0x64(%rsp)    ;*iload_2
                   │    │                                                   ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   │    │                                                   ; - com.google.re2j.Machine::match@323 (line 241)
  0.06%    0.06%   │    │↗    0x00007fddc9259ec8: mov    0x50(%rsp),%r8
  0.03%    0.04%   │    ││    0x00007fddc9259ecd: mov    0x10(%r8),%r11d    ;*getfield end
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::endPos@1 (line 221)
                   │    ││                                                  ; - com.google.re2j.Machine::match@345 (line 242)
  0.42%    0.38%   │    ││    0x00007fddc9259ed1: mov    0x60(%rsp),%ecx
  0.04%    0.04%   │    ││    0x00007fddc9259ed5: cmp    %r11d,%ecx
                   │    ││    0x00007fddc9259ed8: je     0x00007fddc925a698  ;*if_icmpne
                   │    ││                                                  ; - com.google.re2j.Machine::match@348 (line 242)
  0.14%    0.13%   │    ││    0x00007fddc9259ede: xor    %eax,%eax          ;*invokespecial step
                   │    ││                                                  ; - com.google.re2j.Machine::match@356 (line 242)
  0.04%    0.03%   │    ││    0x00007fddc9259ee0: mov    %rax,-0x8(%rsp)
  0.11%    0.16%   │    ││    0x00007fddc9259ee5: mov    0x60(%rsp),%eax
  0.05%    0.03%   │    ││    0x00007fddc9259ee9: mov    %eax,0x4c(%rsp)
  0.07%    0.07%   │    ││    0x00007fddc9259eed: mov    -0x8(%rsp),%rax
  0.04%    0.03%   │    ││    0x00007fddc9259ef2: mov    %r10d,0x38(%rsp)
  0.14%    0.13%   │    ││    0x00007fddc9259ef7: add    0x2c(%rsp),%ecx    ;*iadd
                   │    ││                                                  ; - com.google.re2j.Machine::match@337 (line 242)
  0.02%    0.08%   │    ││    0x00007fddc9259efb: mov    %ecx,0x60(%rsp)
  0.05%    0.01%   │    ││    0x00007fddc9259eff: mov    0x40(%rsp),%rsi
  0.05%    0.02%   │    ││    0x00007fddc9259f04: mov    0x20(%rsp),%rdx
  0.18%    0.20%   │    ││    0x00007fddc9259f09: mov    0x58(%rsp),%rcx
  0.02%    0.03%   │    ││    0x00007fddc9259f0e: mov    0x4c(%rsp),%r8d
  0.07%    0.05%   │    ││    0x00007fddc9259f13: mov    0x60(%rsp),%r9d
  0.23%    0.15%   │    ││    0x00007fddc9259f18: mov    %ebx,%edi
  0.14%    0.13%   │    ││    0x00007fddc9259f1a: mov    0x64(%rsp),%r10d
  0.02%    0.04%   │    ││    0x00007fddc9259f1f: mov    %r10d,(%rsp)
  0.04%    0.02%   │    ││    0x00007fddc9259f23: mov    0x3c(%rsp),%r11d
  0.07%    0.04%   │    ││    0x00007fddc9259f28: mov    %r11d,0x8(%rsp)
  0.16%    0.12%   │    ││    0x00007fddc9259f2d: mov    %eax,0x10(%rsp)
  0.03%    0.02%   │    ││    0x00007fddc9259f31: xchg   %ax,%ax
  0.01%    0.00%   │    ││    0x00007fddc9259f33: callq  0x00007fddc9046020  ; OopMap{[24]=NarrowOop [32]=Oop [64]=Oop [80]=Oop [88]=Oop off=728}
                   │    ││                                                  ;*invokespecial step
                   │    ││                                                  ; - com.google.re2j.Machine::match@356 (line 242)
                   │    ││                                                  ;   {optimized virtual_call}
  0.19%    0.19%   │    ││    0x00007fddc9259f38: mov    0x2c(%rsp),%r11d
  0.12%    0.22%   │    ││    0x00007fddc9259f3d: test   %r11d,%r11d
                   │    ││    0x00007fddc9259f40: je     0x00007fddc925a5c5  ;*ifne
                   │    ││                                                  ; - com.google.re2j.Machine::match@361 (line 243)
  0.17%    0.19%   │    ││    0x00007fddc9259f46: mov    0x40(%rsp),%r10
  0.01%    0.01%   │    ││    0x00007fddc9259f4b: mov    0x28(%r10),%r9d    ;*getfield matchcap
                   │    ││                                                  ; - com.google.re2j.Machine::match@368 (line 246)
  0.13%    0.21%   │    ││    0x00007fddc9259f4f: mov    0xc(%r12,%r9,8),%ebp  ;*arraylength
                   │    ││                                                  ; - com.google.re2j.Machine::match@371 (line 246)
                   │    ││                                                  ; implicit exception: dispatches to 0x00007fddc925b779
  0.00%    0.01%   │    ││    0x00007fddc9259f54: test   %ebp,%ebp
                   │    ││    0x00007fddc9259f56: je     0x00007fddc925aa0d  ;*ifne
                   │    ││                                                  ; - com.google.re2j.Machine::match@372 (line 246)
  0.14%    0.15%   │    ││    0x00007fddc9259f5c: mov    0x50(%rsp),%rdi
                   │    ││    0x00007fddc9259f61: mov    0x10(%rdi),%ebx    ;*getfield end
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                   │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.12%    0.19%   │    ││    0x00007fddc9259f64: mov    0xc(%rdi),%edx     ;*getfield start
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                   │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
                   │    ││    0x00007fddc9259f67: mov    0x14(%rdi),%eax    ;*getfield str
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                   │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.11%    0.12%   │    ││    0x00007fddc9259f6a: mov    0x38(%rsp),%ecx
  0.00%            │    ││    0x00007fddc9259f6e: cmp    $0xffffffff,%ecx
                   │    ││    0x00007fddc9259f71: je     0x00007fddc925a6a2  ;*if_icmpeq
                   │    ││                                                  ; - com.google.re2j.Machine::match@401 (line 254)
  0.15%    0.15%   │    ││    0x00007fddc9259f77: mov    0x28(%rsp),%r8d
  0.00%            │    ││    0x00007fddc9259f7c: add    0x60(%rsp),%r8d
  0.17%    0.09%   │    ││    0x00007fddc9259f81: add    %edx,%r8d          ;*iadd
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                   │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.00%            │    ││    0x00007fddc9259f84: cmp    %ebx,%r8d
                   │    ││    0x00007fddc9259f87: jge    0x00007fddc925a6b2  ;*if_icmpge
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                   │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.15%    0.17%   │    ││    0x00007fddc9259f8d: mov    0x8(%r12,%rax,8),%esi  ; implicit exception: dispatches to 0x00007fddc925b789
           0.00%   │    ││    0x00007fddc9259f92: cmp    $0xf80002da,%esi   ;   {metadata(&apos;java/lang/String&apos;)}
                   │    ││    0x00007fddc9259f98: jne    0x00007fddc925a889
  0.17%    0.04%   │    ││    0x00007fddc9259f9e: lea    (%r12,%rax,8),%r13  ;*invokeinterface charAt
                   │    ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.00%            │    ││    0x00007fddc9259fa2: test   %r8d,%r8d
                   │    ││    0x00007fddc9259fa5: jl     0x00007fddc925a9a1  ;*iflt
                   │    ││                                                  ; - java.lang.String::charAt@1 (line 657)
                   │    ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.13%    0.14%   │    ││    0x00007fddc9259fab: vmovd  %r8d,%xmm0
                   │    ││    0x00007fddc9259fb0: mov    %ecx,%r14d
  0.17%    0.07%   │    ││    0x00007fddc9259fb3: mov    0xc(%r13),%r11d    ;*getfield value
                   │    ││                                                  ; - java.lang.String::charAt@6 (line 657)
                   │    ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
           0.00%   │    ││    0x00007fddc9259fb7: mov    0xc(%r12,%r11,8),%ebp  ;*arraylength
                   │    ││                                                  ; - java.lang.String::charAt@9 (line 657)
                   │    ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
                   │    ││                                                  ; implicit exception: dispatches to 0x00007fddc925b79d
  0.17%    0.26%   │    ││    0x00007fddc9259fbc: cmp    %ebp,%r8d
                   │    ││    0x00007fddc9259fbf: jge    0x00007fddc925aa45  ;*if_icmplt
                   │    ││                                                  ; - java.lang.String::charAt@10 (line 657)
                   │    ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.01%    0.01%   │    ││    0x00007fddc9259fc5: cmp    %ebp,%r8d
                   │    ││    0x00007fddc9259fc8: jae    0x00007fddc925a7cb
  0.13%    0.14%   │    ││    0x00007fddc9259fce: shl    $0x3,%r11
           0.00%   │    ││    0x00007fddc9259fd2: movzwl 0x10(%r11,%r8,2),%r8d  ;*caload
                   │    ││                                                  ; - java.lang.String::charAt@27 (line 660)
                   │    ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.15%    0.19%   │    ││    0x00007fddc9259fd8: cmp    $0xd800,%r8d
                   │    ││    0x00007fddc9259fdf: jge    0x00007fddc925aab1  ;*if_icmplt
                   │    ││                                                  ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   │    ││                                                  ; - java.lang.Character::codePointAt@9 (line 4867)
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.02%    0.02%   │    ││    0x00007fddc9259fe5: shl    $0x3,%r8d          ;*ishl
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                   │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.13%    0.21%   │    ││    0x00007fddc9259fe9: mov    %r8d,%r11d
  0.00%    0.00%   │    ││    0x00007fddc9259fec: or     $0x1,%r11d
  0.09%    0.15%   │    ││    0x00007fddc9259ff0: and    $0x7,%r8d
  0.02%    0.01%   │    ││    0x00007fddc9259ff4: sar    $0x3,%r11d         ;*ishr
                   │    ││                                                  ; - com.google.re2j.Machine::match@417 (line 256)
  0.16%    0.15%   │    ││    0x00007fddc9259ff8: or     $0x1,%r8d          ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                   │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
           0.01%   │    ││    0x00007fddc9259ffc: mov    0x40(%rsp),%r10
  0.15%    0.14%   │    ││    0x00007fddc925a001: mov    %r14d,%ecx         ;*aload
                   │    ││                                                  ; - com.google.re2j.Machine::match@427 (line 259)
  0.02%    0.02%   │    ││    0x00007fddc925a004: mov    %r10,0x40(%rsp)
  0.13%    0.27%   │    ││    0x00007fddc925a009: mov    %ecx,%edi          ; OopMap{r10=Oop r9=NarrowOop rax=NarrowOop [32]=Oop [64]=Oop [80]=Oop [88]=Oop off=939}
                   │    ││                                                  ;*goto
                   │    ││                                                  ; - com.google.re2j.Machine::match@439 (line 262)
           0.00%   │    ││    0x00007fddc925a00b: test   %eax,0x16edbfef(%rip)        # 0x00007fdde0136000
                   │    ││                                                  ;*goto
                   │    ││                                                  ; - com.google.re2j.Machine::match@439 (line 262)
                   │    ││                                                  ;   {poll}
  0.09%    0.19%   │    ││    0x00007fddc925a011: movzbl 0x10(%r10),%ecx    ;*getfield matched
                   │    ││                                                  ; - com.google.re2j.Machine::match@159 (line 212)
  0.03%            │    ││    0x00007fddc925a016: mov    0x58(%rsp),%r10
  0.15%    0.17%   │    ││    0x00007fddc925a01b: shr    $0x3,%r10
                   │    ││    0x00007fddc925a01f: mov    %r10d,0x18(%rsp)
  0.16%    0.25%   │    ││    0x00007fddc925a024: mov    %edi,%r10d
  0.02%    0.01%   │    ││    0x00007fddc925a027: mov    0x64(%rsp),%edi
  0.15%    0.17%   │    ││    0x00007fddc925a02b: mov    0x20(%rsp),%rsi
  0.01%            │    ││    0x00007fddc925a030: mov    %rsi,0x58(%rsp)
  0.11%    0.15%   │    ││    0x00007fddc925a035: mov    0x28(%rsp),%esi
           0.01%   │    ││    0x00007fddc925a039: mov    %esi,0x2c(%rsp)
  0.14%    0.17%   │    ││    0x00007fddc925a03d: mov    %r11d,%r13d
  0.00%    0.01%   │    ││    0x00007fddc925a040: mov    %r8d,%r14d
  0.12%    0.13%   │    ││    0x00007fddc925a043: vmovd  %r9d,%xmm6
  0.01%    0.01%   │    ││    0x00007fddc925a048: mov    %ebx,0x14(%rsp)
  0.15%    0.23%   ↘    ││    0x00007fddc925a04c: mov    0x18(%rsp),%r11d
           0.00%        ││    0x00007fddc925a051: movzbl 0x18(%r12,%r11,8),%r11d  ; implicit exception: dispatches to 0x00007fddc925b749
  0.15%    0.14%        ││    0x00007fddc925a057: mov    0x18(%rsp),%r9d
  0.00%    0.01%        ││    0x00007fddc925a05c: lea    (%r12,%r9,8),%r8   ;*aload
                        ││                                                  ; - com.google.re2j.Machine::match@136 (line 207)
  0.16%    0.23%        ││    0x00007fddc925a060: mov    %r8,0x20(%rsp)
                        ││    0x00007fddc925a065: test   %r11d,%r11d
                        ││    0x00007fddc925a068: jne    0x00007fddc925a26e  ;*ifeq
                        ││                                                  ; - com.google.re2j.Machine::match@141 (line 207)
  0.12%    0.13%        ││    0x00007fddc925a06e: mov    %r10d,0x4c(%rsp)
  0.02%    0.01%        ││    0x00007fddc925a073: mov    %r14d,%r9d
  0.16%    0.18%        ││    0x00007fddc925a076: mov    %r13d,%r10d        ;*aload_0
                        ││                                                  ; - com.google.re2j.Machine::match@267 (line 233)
           0.00%        ││    0x00007fddc925a079: test   %ecx,%ecx
                        ││    0x00007fddc925a07b: jne    0x00007fddc925a8d9  ;*ifne
                        ││                                                  ; - com.google.re2j.Machine::match@271 (line 233)
  0.13%    0.18%        ││    0x00007fddc925a081: mov    0x60(%rsp),%ebx
  0.00%    0.02%        ││    0x00007fddc925a085: test   %ebx,%ebx
                        ││    0x00007fddc925a087: je     0x00007fddc925a749  ;*ifeq
                        ││                                                  ; - com.google.re2j.Machine::match@275 (line 233)
  0.16%    0.23%        ││    0x00007fddc925a08d: mov    0x3c(%rsp),%r8d
  0.00%    0.00%        ││    0x00007fddc925a092: test   %r8d,%r8d
                        ││    0x00007fddc925a095: jne    0x00007fddc925a955  ;*aload_0
                        ││                                                  ; - com.google.re2j.Machine::match@282 (line 236)
  0.13%    0.08%        ││    0x00007fddc925a09b: vmovd  %xmm6,%r11d
  0.01%    0.01%        ││    0x00007fddc925a0a0: mov    0xc(%r12,%r11,8),%ebp  ;*arraylength
                        ││                                                  ; - com.google.re2j.Machine::match@286 (line 236)
                        ││                                                  ; implicit exception: dispatches to 0x00007fddc925b759
  0.14%    0.18%        ││    0x00007fddc925a0a5: test   %ebp,%ebp
                        ││    0x00007fddc925a0a7: jle    0x00007fddc925a915  ;*ifle
                        ││                                                  ; - com.google.re2j.Machine::match@287 (line 236)
  0.01%    0.01%        ││    0x00007fddc925a0ad: test   %ebp,%ebp
                        ││    0x00007fddc925a0af: jbe    0x00007fddc925a841
  0.16%    0.14%        ││    0x00007fddc925a0b5: mov    %ebx,0x10(%r12,%r11,8)  ;*iastore
                        ││                                                  ; - com.google.re2j.Machine::match@296 (line 237)
  0.01%    0.01%        ││    0x00007fddc925a0ba: mov    0x40(%rsp),%rsi
  0.16%    0.19%        ││    0x00007fddc925a0bf: mov    0x18(%rsi),%edx    ;*getfield prog
                        ││                                                  ; - com.google.re2j.Machine::match@301 (line 239)
  0.00%                 ││    0x00007fddc925a0c2: mov    0x1c(%r12,%rdx,8),%ecx  ; implicit exception: dispatches to 0x00007fddc925b769
  0.13%    0.19%        ││    0x00007fddc925a0c7: mov    %r10d,%ebp
  0.00%    0.01%        ││    0x00007fddc925a0ca: mov    %r9d,0x28(%rsp)
  0.13%    0.23%        ││    0x00007fddc925a0cf: mov    %r8d,0x3c(%rsp)    ;*ifeq
                        ││                                                  ; - com.google.re2j.Machine::match@275 (line 233)
  0.02%                 ││    0x00007fddc925a0d4: shl    $0x3,%rcx          ;*getfield startInst
                        ││                                                  ; - com.google.re2j.Machine::match@304 (line 239)
  0.13%    0.17%        ││    0x00007fddc925a0d8: mov    %r11,%r9
  0.00%    0.01%        ││    0x00007fddc925a0db: shl    $0x3,%r9           ;*getfield matchcap
                        ││                                                  ; - com.google.re2j.Machine::match@283 (line 236)
  0.10%    0.22%        ││    0x00007fddc925a0df: mov    0x20(%rsp),%rdx
  0.00%    0.01%        ││    0x00007fddc925a0e4: mov    0x60(%rsp),%r8d
  0.20%    0.22%        ││    0x00007fddc925a0e9: xor    %r10d,%r10d
  0.01%    0.01%        ││    0x00007fddc925a0ec: mov    %r10,(%rsp)
  0.16%    0.24%        ││    0x00007fddc925a0f0: data16 xchg %ax,%ax
  0.01%    0.01%        ││    0x00007fddc925a0f3: callq  0x00007fddc9046020  ; OopMap{[24]=NarrowOop [32]=Oop [64]=Oop [80]=Oop [88]=Oop off=1176}
                        ││                                                  ;*invokespecial add
                        ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
                        ││                                                  ;   {optimized virtual_call}
  0.07%    0.07%        ││    0x00007fddc925a0f8: mov    0x4c(%rsp),%ebx
  0.00%    0.01%        ││    0x00007fddc925a0fc: test   %ebx,%ebx
                    ╭   ││    0x00007fddc925a0fe: jl     0x00007fddc925a184  ;*ifge
                    │   ││                                                  ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                    │   ││                                                  ; - com.google.re2j.Machine::match@323 (line 241)
  0.21%    0.26%    │   ││    0x00007fddc925a104: xor    %r8d,%r8d          ;*iload_0
                    │   ││                                                  ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                    │   ││                                                  ; - com.google.re2j.Machine::match@323 (line 241)
  0.11%    0.07%    │   ││↗   0x00007fddc925a107: cmp    $0xa,%ebx
                    │   │││   0x00007fddc925a10a: je     0x00007fddc925a4ab  ;*iload_1
                    │   │││                                                 ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                    │   │││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
                    │   │││   0x00007fddc925a110: mov    %ebp,%r10d
  0.01%    0.01%    │   │││   0x00007fddc925a113: test   %r10d,%r10d
                    │╭  │││   0x00007fddc925a116: jl     0x00007fddc925a18f  ;*iload_1
                    ││  │││                                                 ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                    ││  │││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.22%    0.27%    ││  │││↗  0x00007fddc925a118: cmp    $0xa,%r10d
                    ││  ││││  0x00007fddc925a11c: je     0x00007fddc925a4b4  ;*iload_0
                    ││  ││││                                                ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                    ││  ││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.05%    0.05%    ││  ││││  0x00007fddc925a122: mov    0x4c(%rsp),%r11d
  0.01%    0.01%    ││  ││││  0x00007fddc925a127: add    $0xffffffbf,%r11d
  0.02%    0.01%    ││  ││││  0x00007fddc925a12b: cmp    $0x1a,%r11d
                    ││╭ ││││  0x00007fddc925a12f: jb     0x00007fddc925a144  ;*if_icmple
                    │││ ││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                    │││ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    │││ ││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.18%    0.28%    │││ ││││  0x00007fddc925a131: mov    0x4c(%rsp),%r9d
  0.05%    0.09%    │││ ││││  0x00007fddc925a136: add    $0xffffff9f,%r9d
           0.00%    │││ ││││  0x00007fddc925a13a: cmp    $0x1a,%r9d
                    │││ ││││  0x00007fddc925a13e: jae    0x00007fddc925a703  ;*iconst_1
                    │││ ││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                    │││ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    │││ ││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.01%    0.01%    ││↘ ││││  0x00007fddc925a144: mov    $0x1,%ebp          ;*ireturn
                    ││  ││││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                    ││  ││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    ││  ││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.21%    0.18%    ││  ││││  0x00007fddc925a149: mov    %r10d,%r11d
  0.05%    0.03%    ││  ││││  0x00007fddc925a14c: add    $0xffffffbf,%r11d
  0.00%             ││  ││││  0x00007fddc925a150: cmp    $0x1a,%r11d
                    ││ ╭││││  0x00007fddc925a154: jb     0x00007fddc925a167  ;*if_icmple
                    ││ │││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                    ││ │││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    ││ │││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.03%    0.03%    ││ │││││  0x00007fddc925a156: mov    %r10d,%r9d
  0.20%    0.26%    ││ │││││  0x00007fddc925a159: add    $0xffffff9f,%r9d
  0.03%    0.02%    ││ │││││  0x00007fddc925a15d: cmp    $0x1a,%r9d
                    ││ │││││  0x00007fddc925a161: jae    0x00007fddc925a726  ;*iconst_1
                    ││ │││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                    ││ │││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    ││ │││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.03%    0.01%    ││ ↘││││  0x00007fddc925a167: mov    $0x1,%r11d         ;*ireturn
                    ││  ││││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                    ││  ││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    ││  ││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.06%    0.03%    ││  ││││  0x00007fddc925a16d: cmp    %r11d,%ebp
                    ││  ╰│││  0x00007fddc925a170: je     0x00007fddc9259ebf  ;*if_icmpeq
                    ││   │││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                    ││   │││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.07%    0.05%    ││   │││  0x00007fddc925a176: or     $0x10,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                    ││   │││                                                ; - com.google.re2j.Machine::match@323 (line 241)
                    ││   │││  0x00007fddc925a17a: mov    %r8d,0x64(%rsp)
  0.20%    0.15%    ││   ╰││  0x00007fddc925a17f: jmpq   0x00007fddc9259ec8
                    ↘│    ││  0x00007fddc925a184: mov    $0x5,%r8d
                     │    ╰│  0x00007fddc925a18a: jmpq   0x00007fddc925a107
  0.01%              ↘     │  0x00007fddc925a18f: or     $0xa,%r8d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@27 (line 180)
                           │                                                ; - com.google.re2j.Machine::match@323 (line 241)
                           ╰  0x00007fddc925a193: jmp    0x00007fddc925a118
                              0x00007fddc925a195: data16 data16 nopw 0x0(%rax,%rax,1)
  0.00%    0.00%              0x00007fddc925a1a0: mov    %r11d,%ebp
                              0x00007fddc925a1a3: jmpq   0x00007fddc925a3ef
                              0x00007fddc925a1a8: mov    %ebp,%r8d
                              0x00007fddc925a1ab: inc    %r8d
                              0x00007fddc925a1ae: mov    %ebp,%r11d
                              0x00007fddc925a1b1: jmp    0x00007fddc925a1c1
                              0x00007fddc925a1b3: mov    %ebp,%r11d
                              0x00007fddc925a1b6: add    $0x2,%r11d
                              0x00007fddc925a1ba: mov    %ebp,%r8d
                              0x00007fddc925a1bd: add    $0x3,%r8d
                              0x00007fddc925a1c1: mov    %r8d,0x38(%rsp)
....................................................................................................
 11.18%   12.44%  <total for region 4>

....[Hottest Regions]...............................................................................
 26.10%   28.22%         C2, level 4  com.google.re2j.Machine::add, version 537 (373 bytes) 
 22.75%   20.91%         C2, level 4  com.google.re2j.Machine::add, version 537 (155 bytes) 
 18.44%   17.73%         C2, level 4  com.google.re2j.Machine::step, version 535 (301 bytes) 
 11.18%   12.44%         C2, level 4  com.google.re2j.Machine::match, version 580 (981 bytes) 
  8.38%    7.53%         C2, level 4  com.google.re2j.Machine::step, version 535 (342 bytes) 
  6.13%    6.89%        runtime stub  StubRoutines::jint_disjoint_arraycopy (128 bytes) 
  1.41%    1.39%   [kernel.kallsyms]  [unknown] (6 bytes) 
  1.05%    1.24%         C2, level 4  com.google.re2j.Machine::add, version 537 (37 bytes) 
  0.52%    0.19%         C2, level 4  com.google.re2j.Machine::init, version 579 (299 bytes) 
  0.41%    0.46%         C2, level 4  com.google.re2j.Machine::match, version 580 (214 bytes) 
  0.12%    0.07%         C2, level 4  com.google.re2j.Machine::match, version 580 (305 bytes) 
  0.11%    0.01%   [kernel.kallsyms]  [unknown] (2 bytes) 
  0.10%    0.10%   [kernel.kallsyms]  [unknown] (59 bytes) 
  0.10%    0.01%         C2, level 4  com.google.re2j.Machine::init, version 579 (46 bytes) 
  0.09%    0.00%   [kernel.kallsyms]  [unknown] (45 bytes) 
  0.09%    0.03%         C2, level 4  com.google.re2j.Matcher::find, version 602 (12 bytes) 
  0.07%    0.06%         C2, level 4  com.google.re2j.Matcher::find, version 602 (5 bytes) 
  0.06%    0.02%         C2, level 4  com.google.re2j.Matcher::find, version 602 (35 bytes) 
  0.05%    0.03%         C2, level 4  java.util.Collections::shuffle, version 610 (91 bytes) 
  0.05%    0.06%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 662 (12 bytes) 
  2.80%    2.61%  <...other 490 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 49.90%   50.37%         C2, level 4  com.google.re2j.Machine::add, version 537 
 26.83%   25.26%         C2, level 4  com.google.re2j.Machine::step, version 535 
 11.88%   13.08%         C2, level 4  com.google.re2j.Machine::match, version 580 
  6.13%    6.89%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
  2.97%    2.67%   [kernel.kallsyms]  [unknown] 
  0.70%    0.26%         C2, level 4  com.google.re2j.Machine::init, version 579 
  0.38%    0.17%         C2, level 4  com.google.re2j.Matcher::find, version 602 
  0.15%    0.07%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 662 
  0.11%    0.06%         C2, level 4  java.util.Collections::shuffle, version 610 
  0.04%    0.01%      hsdis-amd64.so  [unknown] 
  0.04%    0.01%           libjvm.so  SpinPause 
  0.03%    0.07%           libjvm.so  RelocIterator::initialize 
  0.03%    0.02%           libjvm.so  HighResTimeSampler::take_sample 
  0.03%    0.01%           libjvm.so  os::PlatformEvent::park 
  0.03%    0.02%           libjvm.so  fileStream::write 
  0.02%    0.09%        libc-2.26.so  vfprintf 
  0.02%    0.01%  libpthread-2.26.so  pthread_cond_timedwait@@GLIBC_2.3.2 
  0.02%    0.00%        libc-2.26.so  __clock_gettime 
  0.02%    0.01%        libc-2.26.so  __strchr_avx2 
  0.02%    0.00%           libjvm.so  is_error_reported 
  0.65%    0.59%  <...other 87 warm methods...>
....................................................................................................
100.00%   99.71%  <totals>

....[Distribution by Source]........................................................................
 89.94%   89.28%         C2, level 4
  6.15%    6.91%        runtime stub
  2.97%    2.67%   [kernel.kallsyms]
  0.55%    0.64%           libjvm.so
  0.14%    0.28%        libc-2.26.so
  0.12%    0.12%  libpthread-2.26.so
  0.05%    0.02%      hsdis-amd64.so
  0.04%    0.01%         interpreter
  0.03%    0.05%              [vdso]
  0.00%    0.02%         C1, level 3
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                 Mode  Cnt      Score    Error  Units
Re2jRegex.testExp1       thrpt   20  11783.321 ± 57.944  ops/s
Re2jRegex.testExp1:·asm  thrpt             NaN             ---
