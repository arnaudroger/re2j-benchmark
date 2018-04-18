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
# Warmup Iteration   1: 1789.452 ops/s
# Warmup Iteration   2: 3695.259 ops/s
# Warmup Iteration   3: 3731.028 ops/s
# Warmup Iteration   4: 3740.032 ops/s
# Warmup Iteration   5: 3768.615 ops/s
# Warmup Iteration   6: 3773.442 ops/s
# Warmup Iteration   7: 3772.260 ops/s
# Warmup Iteration   8: 3755.144 ops/s
# Warmup Iteration   9: 3764.121 ops/s
# Warmup Iteration  10: 3764.479 ops/s
# Warmup Iteration  11: 3759.355 ops/s
# Warmup Iteration  12: 3773.763 ops/s
# Warmup Iteration  13: 3774.361 ops/s
# Warmup Iteration  14: 3773.210 ops/s
# Warmup Iteration  15: 3765.143 ops/s
# Warmup Iteration  16: 3770.065 ops/s
# Warmup Iteration  17: 3758.089 ops/s
# Warmup Iteration  18: 3642.002 ops/s
# Warmup Iteration  19: 3773.690 ops/s
# Warmup Iteration  20: 3780.516 ops/s
Iteration   1: 3781.416 ops/s
Iteration   2: 3756.622 ops/s
Iteration   3: 3742.397 ops/s
Iteration   4: 3741.736 ops/s
Iteration   5: 3741.684 ops/s
Iteration   6: 3781.749 ops/s
Iteration   7: 3791.796 ops/s
Iteration   8: 3790.757 ops/s
Iteration   9: 3790.709 ops/s
Iteration  10: 3782.097 ops/s
Iteration  11: 3734.956 ops/s
Iteration  12: 3713.251 ops/s
Iteration  13: 3734.732 ops/s
Iteration  14: 3735.316 ops/s
Iteration  15: 3735.598 ops/s
Iteration  16: 3732.385 ops/s
Iteration  17: 3734.403 ops/s
Iteration  18: 3639.151 ops/s
Iteration  19: 3732.605 ops/s
Iteration  20: 3736.019 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  3746.469 ±(99.9%) 30.638 ops/s [Average]
  (min, avg, max) = (3639.151, 3746.469, 3791.796), stdev = 35.282
  CI (99.9%): [3715.831, 3777.107] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine:·asm":
PrintAssembly processed: 201922 total address lines.
Perf output processed (skipped 23.453 seconds):
 Column 1: cycles (20518 events)
 Column 2: instructions (20495 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 515 (397 bytes) 

                          0x00007fc6cd2197c0: mov    %r10,(%rsp)
                          0x00007fc6cd2197c4: data16 xchg %ax,%ax
                          0x00007fc6cd2197c7: callq  0x00007fc6cd046020  ; OopMap{off=300}
                                                                        ;*invokespecial add
                                                                        ; - com.google.re2j.Machine::add@186 (line 363)
                                                                        ;   {optimized virtual_call}
                  ╭       0x00007fc6cd2197cc: jmpq   0x00007fc6cd219943
                  │       0x00007fc6cd2197d1: mov    0x70(%rsp),%rax
                  │╭      0x00007fc6cd2197d6: jmpq   0x00007fc6cd219943  ;*tableswitch
                  ││                                                    ; - com.google.re2j.Machine::add@26 (line 343)
  1.14%    1.35%  ││      0x00007fc6cd2197db: mov    0x20(%rsp),%r8d
  0.13%    0.16%  ││      0x00007fc6cd2197e0: mov    0x28(%rsp),%r9
  0.18%    0.09%  ││      0x00007fc6cd2197e5: mov    0x70(%rsp),%r10
  0.07%    0.12%  ││      0x00007fc6cd2197ea: mov    %r10,(%rsp)
  0.39%    0.56%  ││      0x00007fc6cd2197ee: mov    %rsi,%rbp
  0.13%    0.13%  ││      0x00007fc6cd2197f1: xchg   %ax,%ax
  0.12%    0.19%  ││      0x00007fc6cd2197f3: callq  0x00007fc6cd046020  ; OopMap{rbp=Oop [40]=Oop [56]=Oop [64]=Oop off=344}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@114 (line 352)
                  ││                                                    ;   {optimized virtual_call}
  0.11%    0.06%  ││      0x00007fc6cd2197f8: mov    0x38(%rsp),%r10
  0.03%    0.03%  ││      0x00007fc6cd2197fd: mov    0x34(%r10),%r10d
  0.66%    0.77%  ││      0x00007fc6cd219801: mov    %r10,%rcx
  0.14%    0.15%  ││      0x00007fc6cd219804: shl    $0x3,%rcx          ;*getfield argInst
                  ││                                                    ; - com.google.re2j.Machine::add@122 (line 353)
  0.02%    0.01%  ││      0x00007fc6cd219808: mov    %rbp,%rsi
  0.01%           ││      0x00007fc6cd21980b: mov    0x40(%rsp),%rdx
  0.71%    0.77%  ││      0x00007fc6cd219810: mov    0x20(%rsp),%r8d
  0.15%    0.12%  ││      0x00007fc6cd219815: mov    0x28(%rsp),%r9
           0.02%  ││      0x00007fc6cd21981a: mov    0x30(%rsp),%edi
  0.00%    0.00%  ││      0x00007fc6cd21981e: mov    %rax,(%rsp)
  0.64%    0.78%  ││      0x00007fc6cd219822: nop
  0.10%    0.08%  ││      0x00007fc6cd219823: callq  0x00007fc6cd046020  ; OopMap{off=392}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@132 (line 353)
                  ││                                                    ;   {optimized virtual_call}
  0.20%    0.22%  ││╭     0x00007fc6cd219828: jmpq   0x00007fc6cd219943  ;*aload
                  │││                                                   ; - com.google.re2j.Machine::add@270 (line 383)
  1.11%    1.21%  │││     0x00007fc6cd21982d: mov    0x38(%rsp),%r10
  0.04%    0.06%  │││     0x00007fc6cd219832: mov    %r10,%r11
  0.59%    0.40%  │││     0x00007fc6cd219835: shr    $0x3,%r11          ;*putfield inst
                  │││                                                   ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │││                                                   ; - com.google.re2j.Machine::add@277 (line 384)
  0.26%    0.20%  │││     0x00007fc6cd219839: mov    %r11d,0x18(%rsp)
  0.34%    0.31%  │││     0x00007fc6cd21983e: mov    0x70(%rsp),%rbx
  0.08%    0.06%  │││     0x00007fc6cd219843: test   %rbx,%rbx
                  │││╭    0x00007fc6cd219846: jne    0x00007fc6cd21994f  ;*ifnonnull
                  ││││                                                  ; - com.google.re2j.Machine::add@272 (line 383)
  0.50%    0.40%  ││││    0x00007fc6cd21984c: mov    0xc(%rsi),%r10d    ;*getfield poolSize
                  ││││                                                  ; - com.google.re2j.Machine::alloc@1 (line 132)
                  ││││                                                  ; - com.google.re2j.Machine::add@277 (line 384)
  0.18%    0.13%  ││││    0x00007fc6cd219850: test   %r10d,%r10d
                  ││││    0x00007fc6cd219853: jle    0x00007fc6cd21998a  ;*ifle
                  ││││                                                  ; - com.google.re2j.Machine::alloc@4 (line 132)
                  ││││                                                  ; - com.google.re2j.Machine::add@277 (line 384)
  0.39%    0.32%  ││││    0x00007fc6cd219859: mov    0x24(%rsi),%r9d    ;*getfield pool
                  ││││                                                  ; - com.google.re2j.Machine::alloc@18 (line 134)
                  ││││                                                  ; - com.google.re2j.Machine::add@277 (line 384)
  0.07%    0.01%  ││││    0x00007fc6cd21985d: mov    %r10d,%ebp
  0.52%    0.37%  ││││    0x00007fc6cd219860: dec    %ebp               ;*isub
                  ││││                                                  ; - com.google.re2j.Machine::alloc@13 (line 133)
                  ││││                                                  ; - com.google.re2j.Machine::add@277 (line 384)
  0.21%    0.27%  ││││    0x00007fc6cd219862: mov    %ebp,0xc(%rsi)     ;*putfield poolSize
                  ││││                                                  ; - com.google.re2j.Machine::alloc@14 (line 133)
                  ││││                                                  ; - com.google.re2j.Machine::add@277 (line 384)
  0.23%    0.29%  ││││    0x00007fc6cd219865: mov    0xc(%r12,%r9,8),%r8d  ; implicit exception: dispatches to 0x00007fc6cd219c71
  0.06%    0.05%  ││││    0x00007fc6cd21986a: cmp    %r8d,%ebp
                  ││││    0x00007fc6cd21986d: jae    0x00007fc6cd219b15
  0.50%    0.49%  ││││    0x00007fc6cd219873: lea    (%r12,%r9,8),%r11
  0.11%    0.16%  ││││    0x00007fc6cd219877: mov    0xc(%r11,%r10,4),%r10d  ;*aaload
                  ││││                                                  ; - com.google.re2j.Machine::alloc@25 (line 134)
                  ││││                                                  ; - com.google.re2j.Machine::add@277 (line 384)
  0.29%    0.25%  ││││    0x00007fc6cd21987c: test   %r10d,%r10d
                  ││││    0x00007fc6cd21987f: je     0x00007fc6cd219b29  ;*putfield inst
                  ││││                                                  ; - com.google.re2j.Machine::alloc@45 (line 138)
                  ││││                                                  ; - com.google.re2j.Machine::add@277 (line 384)
  0.07%    0.02%  ││││    0x00007fc6cd219885: mov    %r10,%rbx
  0.57%    0.44%  ││││    0x00007fc6cd219888: shl    $0x3,%rbx          ;*aload_2
                  ││││                                                  ; - com.google.re2j.Machine::alloc@43 (line 138)
                  ││││                                                  ; - com.google.re2j.Machine::add@277 (line 384)
  0.16%    0.22%  ││││    0x00007fc6cd21988c: mov    0x18(%rsp),%r11d
  0.26%    0.30%  ││││    0x00007fc6cd219891: mov    %r11d,0x10(%rbx)
  0.15%    0.15%  ││││    0x00007fc6cd219895: mov    %rbx,%r10
  0.49%    0.56%  ││││    0x00007fc6cd219898: shr    $0x9,%r10
  0.19%    0.14%  ││││    0x00007fc6cd21989c: movabs $0x7fc6de6ca000,%r11
  0.26%    0.24%  ││││    0x00007fc6cd2198a6: mov    %r12b,(%r11,%r10,1)  ;*aload
                  ││││                                                  ; - com.google.re2j.Machine::add@291 (line 388)
  0.18%    0.14%  ││││ ↗  0x00007fc6cd2198aa: mov    0x28(%rsp),%rdi
  0.49%    0.54%  ││││ │  0x00007fc6cd2198af: mov    0xc(%rdi),%r10d    ;*arraylength
                  ││││ │                                                ; - com.google.re2j.Machine::add@293 (line 388)
                  ││││ │                                                ; implicit exception: dispatches to 0x00007fc6cd219c31
  0.22%    0.18%  ││││ │  0x00007fc6cd2198b3: test   %r10d,%r10d
                  ││││ │  0x00007fc6cd2198b6: jle    0x00007fc6cd219b62  ;*ifle
                  ││││ │                                                ; - com.google.re2j.Machine::add@294 (line 388)
  0.31%    0.28%  ││││ │  0x00007fc6cd2198bc: mov    0xc(%rbx),%r8d     ;*getfield cap
                  ││││ │                                                ; - com.google.re2j.Machine::add@299 (line 388)
  0.12%    0.13%  ││││ │  0x00007fc6cd2198c0: mov    %r8,%r11
  0.51%    0.36%  ││││ │  0x00007fc6cd2198c3: shl    $0x3,%r11
  0.22%    0.10%  ││││ │  0x00007fc6cd2198c7: cmp    %rdi,%r11
                  ││││╭│  0x00007fc6cd2198ca: je     0x00007fc6cd2198f7  ;*if_acmpeq
                  ││││││                                                ; - com.google.re2j.Machine::add@304 (line 388)
  0.24%    0.22%  ││││││  0x00007fc6cd2198cc: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x00007fc6cd219c59
  0.29%    0.24%  ││││││  0x00007fc6cd2198d1: lea    (%r12,%r8,8),%rcx  ;*getfield cap
                  ││││││                                                ; - com.google.re2j.Machine::add@299 (line 388)
  0.36%    0.33%  ││││││  0x00007fc6cd2198d5: cmp    %r10d,%r11d
                  ││││││  0x00007fc6cd2198d8: jb     0x00007fc6cd219b3d
  0.56%    0.71%  ││││││  0x00007fc6cd2198de: lea    0x10(%r12,%r8,8),%rsi
  0.15%    0.14%  ││││││  0x00007fc6cd2198e3: add    $0x10,%rdi
  0.03%    0.03%  ││││││  0x00007fc6cd2198e7: movslq %r10d,%rdx
  0.47%    0.42%  ││││││  0x00007fc6cd2198ea: movabs $0x7fc6cd052640,%r10
  0.40%    0.45%  ││││││  0x00007fc6cd2198f4: callq  *%r10              ;*aload_1
                  ││││││                                                ; - com.google.re2j.Machine::add@322 (line 391)
  0.07%    0.10%  ││││↘│  0x00007fc6cd2198f7: mov    0x40(%rsp),%r10
  0.52%    0.44%  ││││ │  0x00007fc6cd2198fc: mov    0xc(%r10),%r11d    ;*getfield size
                  ││││ │                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                  ││││ │                                                ; - com.google.re2j.Machine::add@325 (line 391)
  0.62%    0.47%  ││││ │  0x00007fc6cd219900: mov    0x20(%r10),%ebp    ;*getfield denseThreads
                  ││││ │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                  ││││ │                                                ; - com.google.re2j.Machine::add@325 (line 391)
  0.09%    0.10%  ││││ │  0x00007fc6cd219904: mov    %r11d,%r8d
  0.31%    0.27%  ││││ │  0x00007fc6cd219907: inc    %r8d
  0.22%    0.25%  ││││ │  0x00007fc6cd21990a: mov    %r8d,0xc(%r10)     ;*putfield size
                  ││││ │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                  ││││ │                                                ; - com.google.re2j.Machine::add@325 (line 391)
  0.63%    0.70%  ││││ │  0x00007fc6cd21990e: mov    0xc(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007fc6cd219c41
  0.20%    0.20%  ││││ │  0x00007fc6cd219913: cmp    %r8d,%r11d
                  ││││ │  0x00007fc6cd219916: jae    0x00007fc6cd219a9d  ;*aastore
                  ││││ │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  ││││ │                                                ; - com.google.re2j.Machine::add@325 (line 391)
  0.68%    0.81%  ││││ │  0x00007fc6cd21991c: lea    (%r12,%rbp,8),%r10  ;*getfield denseThreads
                  ││││ │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                  ││││ │                                                ; - com.google.re2j.Machine::add@325 (line 391)
  0.23%    0.30%  ││││ │  0x00007fc6cd219920: lea    0x10(%r10,%r11,4),%r10
  0.51%    0.91%  ││││ │  0x00007fc6cd219925: mov    %rbx,%r11
  0.01%    0.02%  ││││ │  0x00007fc6cd219928: shr    $0x3,%r11
  0.47%    0.45%  ││││ │  0x00007fc6cd21992c: mov    %r11d,(%r10)
  2.87%    3.58%  ││││ │  0x00007fc6cd21992f: shr    $0x9,%r10
  0.19%    0.33%  ││││ │  0x00007fc6cd219933: movabs $0x7fc6de6ca000,%r11
  0.03%    0.00%  ││││ │  0x00007fc6cd21993d: mov    %r12b,(%r11,%r10,1)  ;*aastore
                  ││││ │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  ││││ │                                                ; - com.google.re2j.Machine::add@325 (line 391)
  0.90%    1.10%  ││││ │  0x00007fc6cd219941: xor    %eax,%eax          ;*invokevirtual contains
                  ││││ │                                                ; - com.google.re2j.Machine::add@5 (line 339)
  1.17%    1.51%  ↘↘↘│ │  0x00007fc6cd219943: add    $0x60,%rsp
  0.24%    0.29%     │ │  0x00007fc6cd219947: pop    %rbp
  0.01%    0.01%     │ │  0x00007fc6cd219948: test   %eax,0x18aa86b2(%rip)        # 0x00007fc6e5cc2000
                     │ │                                                ;   {poll_return}
  1.38%    1.60%     │ │  0x00007fc6cd21994e: retq   
  0.01%    0.01%     ↘ │  0x00007fc6cd21994f: mov    %r11d,0x10(%rbx)
  0.07%    0.09%       │  0x00007fc6cd219953: mov    %rbx,%r10
  0.07%    0.01%       │  0x00007fc6cd219956: shr    $0x9,%r10
  0.02%    0.00%       │  0x00007fc6cd21995a: movabs $0x7fc6de6ca000,%r11
  0.01%    0.00%       │  0x00007fc6cd219964: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                       │                                                ; - com.google.re2j.Machine::add@288 (line 386)
  0.07%    0.00%       ╰  0x00007fc6cd219968: jmpq   0x00007fc6cd2198aa  ;*tableswitch
                                                                        ; - com.google.re2j.Machine::add@26 (line 343)
                          0x00007fc6cd21996d: mov    0x20(%rsp),%r8d
                          0x00007fc6cd219972: mov    0x28(%rsp),%r9
                          0x00007fc6cd219977: mov    0x70(%rsp),%r10
                          0x00007fc6cd21997c: mov    %r10,(%rsp)
                          0x00007fc6cd219980: data16 xchg %ax,%ax
                          0x00007fc6cd219983: callq  0x00007fc6cd046020  ; OopMap{off=744}
                                                                        ;*invokespecial add
                                                                        ; - com.google.re2j.Machine::add@165 (line 358)
....................................................................................................
 28.70%   30.50%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 515 (160 bytes) 

                     # parm4:    rdi       = int
                     # parm5:    [sp+0x70]   = &apos;com/google/re2j/Machine$Thread&apos;  (sp of caller)
                     0x00007fc6cd2196a0: mov    0x8(%rsi),%r10d    ;   {no_reloc}
                     0x00007fc6cd2196a4: shl    $0x3,%r10
                     0x00007fc6cd2196a8: cmp    %r10,%rax
                     0x00007fc6cd2196ab: jne    0x00007fc6cd045e20  ;   {runtime_call}
                     0x00007fc6cd2196b1: data16 xchg %ax,%ax
                     0x00007fc6cd2196b4: nopl   0x0(%rax,%rax,1)
                     0x00007fc6cd2196bc: data16 data16 xchg %ax,%ax
                   [Verified Entry Point]
  0.68%    0.76%     0x00007fc6cd2196c0: mov    %eax,-0x14000(%rsp)
  1.36%    1.58%     0x00007fc6cd2196c7: push   %rbp
  0.14%    0.16%     0x00007fc6cd2196c8: sub    $0x60,%rsp         ;*synchronization entry
                                                                   ; - com.google.re2j.Machine::add@-1 (line 339)
  1.36%    1.46%     0x00007fc6cd2196cc: mov    %edi,0x30(%rsp)
  0.66%    0.42%     0x00007fc6cd2196d0: mov    %r9,0x28(%rsp)
  0.14%    0.16%     0x00007fc6cd2196d5: mov    %r8d,0x20(%rsp)
  0.57%    0.52%     0x00007fc6cd2196da: mov    %rsi,0x8(%rsp)
  0.95%    0.86%     0x00007fc6cd2196df: mov    %rcx,0x38(%rsp)
  0.47%    0.57%     0x00007fc6cd2196e4: mov    0x28(%rcx),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Machine::add@2 (line 339)
                                                                   ; implicit exception: dispatches to 0x00007fc6cd219c0e
  0.47%    0.35%     0x00007fc6cd2196e7: mov    %rdx,0x40(%rsp)
  0.43%    0.44%     0x00007fc6cd2196ec: mov    0x10(%rdx),%r11    ;*getfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                                                                   ; - com.google.re2j.Machine::add@5 (line 339)
                                                                   ; implicit exception: dispatches to 0x00007fc6cd219c1d
  0.88%    0.81%     0x00007fc6cd2196f0: cmp    $0x40,%ecx
                     0x00007fc6cd2196f3: jg     0x00007fc6cd219ab9  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                                                                   ; - com.google.re2j.Machine::add@5 (line 339)
  0.72%    0.60%     0x00007fc6cd2196f9: mov    $0x1,%r8d
  0.14%    0.11%     0x00007fc6cd2196ff: shl    %cl,%r8            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                                                                   ; - com.google.re2j.Machine::add@5 (line 339)
  2.21%    1.94%     0x00007fc6cd219702: mov    %r11,%r10
  0.13%    0.14%     0x00007fc6cd219705: and    %r8,%r10
  0.25%    0.46%     0x00007fc6cd219708: test   %r10,%r10
                  ╭  0x00007fc6cd21970b: jne    0x00007fc6cd219760  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                  │                                                ; - com.google.re2j.Machine::add@5 (line 339)
  0.97%    0.75%  │  0x00007fc6cd21970d: cmp    $0x40,%ecx
                  │  0x00007fc6cd219710: jge    0x00007fc6cd219ae5  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                  │                                                ; - com.google.re2j.Machine::add@19 (line 342)
  0.54%    0.43%  │  0x00007fc6cd219716: mov    %r12b,0x18(%rdx)   ;*putfield empty
                  │                                                ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                  │                                                ; - com.google.re2j.Machine::add@19 (line 342)
  0.09%    0.08%  │  0x00007fc6cd21971a: mov    0x38(%rsp),%r10
  0.56%    0.43%  │  0x00007fc6cd21971f: mov    0xc(%r10),%r10d    ;*getfield op
                  │                                                ; - com.google.re2j.Machine::add@23 (line 343)
  1.05%    0.69%  │  0x00007fc6cd219723: or     %r11,%r8
  0.44%    0.46%  │  0x00007fc6cd219726: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                  │                                                ; - com.google.re2j.Machine::add@19 (line 342)
  0.12%    0.13%  │  0x00007fc6cd21972a: mov    %r10d,%r11d
  0.36%    0.39%  │  0x00007fc6cd21972d: dec    %r11d
  1.00%    0.63%  │  0x00007fc6cd219730: cmp    $0xc,%r11d
                  │  0x00007fc6cd219734: jae    0x00007fc6cd219a8d  ;*tableswitch
                  │                                                ; - com.google.re2j.Machine::add@26 (line 343)
  0.58%    0.65%  │  0x00007fc6cd21973a: mov    0x38(%rsp),%r11
  0.20%    0.13%  │  0x00007fc6cd21973f: mov    0x14(%r11),%r8d    ;*getfield arg
                  │                                                ; - com.google.re2j.Machine::add@141 (line 357)
  0.76%    0.78%  │  0x00007fc6cd219743: mov    0x30(%r11),%r11d
  1.05%    0.74%  │  0x00007fc6cd219747: movslq %r10d,%r9
  0.56%    0.61%  │  0x00007fc6cd21974a: mov    %r11,%rcx
  0.11%    0.16%  │  0x00007fc6cd21974d: shl    $0x3,%rcx          ;*getfield outInst
                  │                                                ; - com.google.re2j.Machine::add@176 (line 363)
  0.45%    0.48%  │  0x00007fc6cd219751: movabs $0x7fc6cd219640,%r10  ;   {section_word}
  0.91%    0.72%  │  0x00007fc6cd21975b: jmpq   *-0x8(%r10,%r9,8)  ;*tableswitch
                  │                                                ; - com.google.re2j.Machine::add@26 (line 343)
  0.00%           ↘  0x00007fc6cd219760: mov    0x70(%rsp),%rax
                     0x00007fc6cd219765: jmpq   0x00007fc6cd219943
                     0x00007fc6cd21976a: andn   %r8d,%edi,%r8d
                     0x00007fc6cd21976f: test   %r8d,%r8d
                     0x00007fc6cd219772: je     0x00007fc6cd21996d  ;*ifne
                                                                   ; - com.google.re2j.Machine::add@149 (line 357)
                     0x00007fc6cd219778: mov    0x70(%rsp),%rax
                     0x00007fc6cd21977d: jmpq   0x00007fc6cd219943
  0.08%    0.13%     0x00007fc6cd219782: mov    0x28(%rsp),%r10
  0.01%    0.01%     0x00007fc6cd219787: mov    0xc(%r10),%ebp     ;*arraylength
....................................................................................................
 21.31%   19.60%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 505 (301 bytes) 

                     # parm6:    [sp+0x68]   = int
                     # parm7:    [sp+0x70]   = boolean
                     0x00007fc6cd213040: mov    0x8(%rsi),%r10d
                     0x00007fc6cd213044: shl    $0x3,%r10
                     0x00007fc6cd213048: cmp    %r10,%rax
                     0x00007fc6cd21304b: jne    0x00007fc6cd045e20  ;   {runtime_call}
                     0x00007fc6cd213051: data16 xchg %ax,%ax
                     0x00007fc6cd213054: nopl   0x0(%rax,%rax,1)
                     0x00007fc6cd21305c: data16 data16 xchg %ax,%ax
                   [Verified Entry Point]
  0.17%    0.14%     0x00007fc6cd213060: mov    %eax,-0x14000(%rsp)
  0.11%    0.08%     0x00007fc6cd213067: push   %rbp
  0.10%    0.12%     0x00007fc6cd213068: sub    $0x50,%rsp         ;*synchronization entry
                                                                   ; - com.google.re2j.Machine::step@-1 (line 276)
  0.08%    0.07%     0x00007fc6cd21306c: mov    %edi,0x20(%rsp)
  0.04%    0.02%     0x00007fc6cd213070: mov    %r9d,0x1c(%rsp)
  0.12%    0.09%     0x00007fc6cd213075: mov    %r8d,0x18(%rsp)
  0.06%    0.04%     0x00007fc6cd21307a: mov    %rcx,0x10(%rsp)
  0.06%    0.02%     0x00007fc6cd21307f: mov    %rdx,0x8(%rsp)
  0.05%    0.01%     0x00007fc6cd213084: mov    %rsi,0x28(%rsp)
  0.12%    0.09%     0x00007fc6cd213089: mov    0x14(%rsi),%r10d   ;*getfield re2
                                                                   ; - com.google.re2j.Machine::step@1 (line 276)
  0.02%    0.05%     0x00007fc6cd21308d: movzbl 0x18(%r12,%r10,8),%r10d  ;*getfield longest
                                                                   ; - com.google.re2j.Machine::step@4 (line 276)
                                                                   ; implicit exception: dispatches to 0x00007fc6cd2136ed
  0.02%    0.01%     0x00007fc6cd213093: mov    %r10d,0x24(%rsp)
  0.04%    0.01%     0x00007fc6cd213098: mov    0xc(%rdx),%r11d    ; implicit exception: dispatches to 0x00007fc6cd2136fd
  0.43%    0.40%     0x00007fc6cd21309c: test   %r11d,%r11d
                     0x00007fc6cd21309f: jle    0x00007fc6cd2133b0  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine::step@18 (line 277)
  0.04%    0.09%     0x00007fc6cd2130a5: mov    0x24(%rsp),%r10d
  0.24%    0.13%     0x00007fc6cd2130aa: test   %r10d,%r10d
                     0x00007fc6cd2130ad: jne    0x00007fc6cd213539  ;*aload_1
                                                                   ; - com.google.re2j.Machine::step@21 (line 278)
  0.06%    0.07%     0x00007fc6cd2130b3: xor    %r11d,%r11d
  0.06%    0.10%  ╭  0x00007fc6cd2130b6: jmpq   0x00007fc6cd21314b
                  │  0x00007fc6cd2130bb: nopl   0x0(%rax,%rax,1)
  0.01%    0.00%  │  0x00007fc6cd2130c0: mov    0x68(%rsp),%ebx
  0.01%           │  0x00007fc6cd2130c4: mov    0x70(%rsp),%edx    ;*goto
                  │                                                ; - com.google.re2j.Machine::step@224 (line 301)
  0.56%    0.66%  │  0x00007fc6cd2130c8: mov    0x8(%rsp),%r8
  0.26%    0.20%  │  0x00007fc6cd2130cd: mov    0xc(%r8),%r9d      ;*getfield size
                  │                                                ; - com.google.re2j.Machine::step@15 (line 277)
  0.07%    0.12%  │  0x00007fc6cd2130d1: mov    0x28(%rsp),%r8
  0.13%    0.12%  │  0x00007fc6cd2130d6: mov    0x24(%r8),%r13d    ;*getfield pool
                  │                                                ; - com.google.re2j.Machine::free@5 (line 167)
                  │                                                ; - com.google.re2j.Machine::step@330 (line 327)
  0.60%    0.56%  │  0x00007fc6cd2130da: mov    0xc(%r8),%r8d      ;*getfield poolSize
                  │                                                ; - com.google.re2j.Machine::free@1 (line 167)
                  │                                                ; - com.google.re2j.Machine::step@330 (line 327)
  0.20%    0.29%  │  0x00007fc6cd2130de: mov    %rsi,%rax          ;*getfield size
                  │                                                ; - com.google.re2j.Machine::step@15 (line 277)
  0.10%    0.10%  │  0x00007fc6cd2130e1: mov    0xc(%r12,%r13,8),%ebp  ;*arraylength
                  │                                                ; - com.google.re2j.Machine::free@8 (line 167)
                  │                                                ; - com.google.re2j.Machine::step@330 (line 327)
                  │                                                ; implicit exception: dispatches to 0x00007fc6cd2136cd
  0.18%    0.16%  │  0x00007fc6cd2130e6: cmp    %ebp,%r8d
                  │  0x00007fc6cd2130e9: jge    0x00007fc6cd2134e1  ;*if_icmplt
                  │                                                ; - com.google.re2j.Machine::free@9 (line 167)
                  │                                                ; - com.google.re2j.Machine::step@330 (line 327)
  0.64%    0.47%  │  0x00007fc6cd2130ef: mov    %r8d,%edi
  0.25%    0.28%  │  0x00007fc6cd2130f2: inc    %edi
  0.11%    0.05%  │  0x00007fc6cd2130f4: mov    0x28(%rsp),%rsi
  0.13%    0.18%  │  0x00007fc6cd2130f9: mov    %edi,0xc(%rsi)     ;*putfield poolSize
                  │                                                ; - com.google.re2j.Machine::free@45 (line 170)
                  │                                                ; - com.google.re2j.Machine::step@330 (line 327)
  0.56%    0.37%  │  0x00007fc6cd2130fc: cmp    %ebp,%r8d
                  │  0x00007fc6cd2130ff: jae    0x00007fc6cd213451  ;*aastore
                  │                                                ; - com.google.re2j.Machine::free@49 (line 170)
                  │                                                ; - com.google.re2j.Machine::step@330 (line 327)
  0.24%    0.29%  │  0x00007fc6cd213105: mov    %rax,%r11
  0.06%    0.09%  │  0x00007fc6cd213108: shr    $0x3,%r11
  0.11%    0.20%  │  0x00007fc6cd21310c: lea    (%r12,%r13,8),%rdi  ;*getfield pool
                  │                                                ; - com.google.re2j.Machine::free@5 (line 167)
                  │                                                ; - com.google.re2j.Machine::step@330 (line 327)
  0.61%    0.38%  │  0x00007fc6cd213110: lea    0x10(%rdi,%r8,4),%r8
  0.24%    0.29%  │  0x00007fc6cd213115: mov    %r11d,(%r8)
  0.07%    0.11%  │  0x00007fc6cd213118: mov    %r8,%r11
  0.14%    0.18%  │  0x00007fc6cd21311b: shr    $0x9,%r11
  0.63%    0.32%  │  0x00007fc6cd21311f: movabs $0x7fc6de6ca000,%r8
  0.20%    0.23%  │  0x00007fc6cd213129: mov    %r12b,(%r8,%r11,1)  ; OopMap{[8]=Oop [16]=Oop [40]=Oop off=237}
                  │                                                ;*goto
                  │                                                ; - com.google.re2j.Machine::step@336 (line 277)
  0.10%    0.16%  │  0x00007fc6cd21312d: test   %eax,0x18aaeecd(%rip)        # 0x00007fc6e5cc2000
                  │                                                ;*goto
                  │                                                ; - com.google.re2j.Machine::step@336 (line 277)
                  │                                                ;   {poll}
  0.17%    0.20%  │  0x00007fc6cd213133: cmp    %r9d,%r10d
                  │  0x00007fc6cd213136: jge    0x00007fc6cd2133b0
  0.58%    0.41%  │  0x00007fc6cd21313c: mov    %ecx,0x20(%rsp)
  0.13%    0.05%  │  0x00007fc6cd213140: mov    %ebx,0x68(%rsp)
  0.10%    0.06%  │  0x00007fc6cd213144: mov    %edx,0x70(%rsp)
  0.16%    0.19%  │  0x00007fc6cd213148: mov    %r10d,%r11d        ;*aload_1
                  │                                                ; - com.google.re2j.Machine::step@21 (line 278)
  0.63%    0.41%  ↘  0x00007fc6cd21314b: mov    0x8(%rsp),%r10
  0.15%    0.16%     0x00007fc6cd213150: mov    0x20(%r10),%r10d   ;*getfield denseThreads
                                                                   ; - com.google.re2j.Machine::step@22 (line 278)
  0.29%    0.26%     0x00007fc6cd213154: mov    0xc(%r12,%r10,8),%r9d  ; implicit exception: dispatches to 0x00007fc6cd213699
  1.03%    1.43%     0x00007fc6cd213159: cmp    %r9d,%r11d
                     0x00007fc6cd21315c: jae    0x00007fc6cd213414
  0.85%    0.70%     0x00007fc6cd213162: shl    $0x3,%r10
  0.12%    0.10%     0x00007fc6cd213166: mov    0x10(%r10,%r11,4),%r9d  ;*aaload
                                                                   ; - com.google.re2j.Machine::step@27 (line 278)
  0.25%    0.18%     0x00007fc6cd21316b: mov    0x10(%r12,%r9,8),%r8d  ;*getfield inst
                                                                   ; - com.google.re2j.Machine::step@78 (line 283)
                                                                   ; implicit exception: dispatches to 0x00007fc6cd2136ad
  1.87%    2.11%     0x00007fc6cd213170: mov    0xc(%r12,%r8,8),%ecx  ;*getfield op
                                                                   ; - com.google.re2j.Machine::step@88 (line 285)
                                                                   ; implicit exception: dispatches to 0x00007fc6cd2136bd
  3.37%    3.12%     0x00007fc6cd213175: mov    0xc(%r12,%r9,8),%r14d  ;*getfield cap
                                                                   ; - com.google.re2j.Machine::step@148 (line 292)
  0.09%    0.09%     0x00007fc6cd21317a: mov    %r11d,%r10d
  0.04%    0.03%     0x00007fc6cd21317d: inc    %r10d              ;*iadd
                                                                   ; - com.google.re2j.Machine::step@215 (line 298)
  0.05%    0.09%     0x00007fc6cd213180: lea    (%r12,%r9,8),%rsi  ;*aaload
                                                                   ; - com.google.re2j.Machine::step@27 (line 278)
  0.93%    0.83%     0x00007fc6cd213184: cmp    $0x9,%ecx
                     0x00007fc6cd213187: je     0x00007fc6cd213388
  0.14%    0.14%     0x00007fc6cd21318d: cmp    $0x9,%ecx
                     0x00007fc6cd213190: jg     0x00007fc6cd2132ec
                     0x00007fc6cd213196: cmp    $0x7,%ecx
                     0x00007fc6cd213199: je     0x00007fc6cd213529
                     0x00007fc6cd21319f: cmp    $0x7,%ecx
                     0x00007fc6cd2131a2: jg     0x00007fc6cd21329e
                     0x00007fc6cd2131a8: cmp    $0x6,%ecx
                     0x00007fc6cd2131ab: jne    0x00007fc6cd213529  ;*tableswitch
                                                                   ; - com.google.re2j.Machine::step@91 (line 285)
                     0x00007fc6cd2131b1: mov    0x68(%rsp),%ebx
                     0x00007fc6cd2131b5: cmp    $0x2,%ebx
....................................................................................................
 19.02%   17.93%  <total for region 3>

....[Hottest Region 4]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 545 (908 bytes) 

                                                                           ; - com.google.re2j.Machine::match@121 (line 201)
                             0x00007fc6cd233c1f: mov    $0x5,%r10d         ;*iload_1
                                                                           ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                                                                           ; - com.google.re2j.Machine::match@121 (line 201)
                             0x00007fc6cd233c25: cmp    $0xa,%edi
                             0x00007fc6cd233c28: je     0x00007fc6cd234421  ;*iload_0
                                                                           ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                                                                           ; - com.google.re2j.Machine::match@121 (line 201)
                             0x00007fc6cd233c2e: mov    %edi,%ebx
                             0x00007fc6cd233c30: add    $0xffffffbf,%ebx
  0.00%                      0x00007fc6cd233c33: cmp    $0x1a,%ebx
                  ╭          0x00007fc6cd233c36: jb     0x00007fc6cd233c49  ;*if_icmple
                  │                                                        ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │                                                        ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                        ; - com.google.re2j.Machine::match@121 (line 201)
                  │          0x00007fc6cd233c38: mov    %edi,%r11d
  0.00%           │          0x00007fc6cd233c3b: add    $0xffffff9f,%r11d
                  │          0x00007fc6cd233c3f: cmp    $0x1a,%r11d
                  │          0x00007fc6cd233c43: jae    0x00007fc6cd23442a  ;*iconst_1
                  │                                                        ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │                                                        ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                        ; - com.google.re2j.Machine::match@121 (line 201)
           0.00%  ↘          0x00007fc6cd233c49: or     $0x10,%r10d        ;*iload_2
                                                                           ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                           ; - com.google.re2j.Machine::match@121 (line 201)
                             0x00007fc6cd233c4d: shl    $0x3,%rcx          ;*getfield q1
                                                                           ; - com.google.re2j.Machine::match@53 (line 188)
                             0x00007fc6cd233c51: mov    0x48(%rsp),%r11d
                             0x00007fc6cd233c56: and    $0x4,%r11d         ;*iand
                                                                           ; - com.google.re2j.Machine::match@147 (line 208)
  0.00%                      0x00007fc6cd233c5a: mov    %r10d,0x60(%rsp)
                             0x00007fc6cd233c5f: mov    %rcx,0x58(%rsp)
                             0x00007fc6cd233c64: xor    %r10d,%r10d
                             0x00007fc6cd233c67: xor    %ebx,%ebx
                             0x00007fc6cd233c69: vmovd  %r9d,%xmm1
                             0x00007fc6cd233c6e: mov    %r8d,%r14d
                             0x00007fc6cd233c71: mov    %r11d,0x64(%rsp)
                             0x00007fc6cd233c76: mov    %ebx,0x14(%rsp)
  0.00%            ╭         0x00007fc6cd233c7a: jmpq   0x00007fc6cd233f3d
                   │         0x00007fc6cd233c7f: nop
  0.09%    0.19%   │      ↗  0x00007fc6cd233c80: mov    %edi,0x4c(%rsp)
                   │      │  0x00007fc6cd233c84: mov    0x40(%rsp),%r13
                   │      │  0x00007fc6cd233c89: mov    0x50(%rsp),%r8
  0.01%            │      │  0x00007fc6cd233c8e: mov    0x2c(%rsp),%eax
  0.16%    0.18%   │      │  0x00007fc6cd233c92: vmovd  %xmm1,%r9d
                   │      │  0x00007fc6cd233c97: mov    %r14d,%ecx
                   │      │  0x00007fc6cd233c9a: vmovd  %xmm0,%ebx         ;*aload_0
                   │      │                                                ; - com.google.re2j.Machine::match@267 (line 233)
  0.13%    0.08%   │     ↗│  0x00007fc6cd233c9e: mov    0x14(%rsp),%r10d
  0.15%    0.19%   │     ││  0x00007fc6cd233ca3: test   %r10d,%r10d
                   │     ││  0x00007fc6cd233ca6: je     0x00007fc6cd2343b7  ;*ifeq
                   │     ││                                                ; - com.google.re2j.Machine::match@275 (line 233)
                   │     ││  0x00007fc6cd233cac: mov    0x3c(%rsp),%r11d
                   │     ││  0x00007fc6cd233cb1: test   %r11d,%r11d
                   │     ││  0x00007fc6cd233cb4: jne    0x00007fc6cd2345c1  ;*aload_0
                   │     ││                                                ; - com.google.re2j.Machine::match@282 (line 236)
  0.12%    0.11%   │     ││  0x00007fc6cd233cba: mov    0xc(%r12,%rbx,8),%ebp  ;*arraylength
                   │     ││                                                ; - com.google.re2j.Machine::match@286 (line 236)
                   │     ││                                                ; implicit exception: dispatches to 0x00007fc6cd235199
  0.14%    0.21%   │     ││  0x00007fc6cd233cbf: test   %ebp,%ebp
                   │     ││  0x00007fc6cd233cc1: jle    0x00007fc6cd234589  ;*ifle
                   │     ││                                                ; - com.google.re2j.Machine::match@287 (line 236)
                   │     ││  0x00007fc6cd233cc7: test   %ebp,%ebp
                   │     ││  0x00007fc6cd233cc9: jbe    0x00007fc6cd234494
                   │     ││  0x00007fc6cd233ccf: mov    %r10d,0x10(%r12,%rbx,8)  ;*iastore
                   │     ││                                                ; - com.google.re2j.Machine::match@296 (line 237)
  0.15%    0.14%   │     ││  0x00007fc6cd233cd4: mov    0x1c(%r12,%rsi,8),%edi  ; implicit exception: dispatches to 0x00007fc6cd2351a9
  0.12%    0.15%   │     ││  0x00007fc6cd233cd9: mov    %rax,-0x8(%rsp)
           0.00%   │     ││  0x00007fc6cd233cde: mov    0x14(%rsp),%eax
           0.01%   │     ││  0x00007fc6cd233ce2: mov    %eax,0x38(%rsp)
  0.08%    0.15%   │     ││  0x00007fc6cd233ce6: mov    -0x8(%rsp),%rax
  0.19%    0.16%   │     ││  0x00007fc6cd233ceb: mov    %ecx,%ebp
                   │     ││  0x00007fc6cd233ced: mov    %r9d,0x2c(%rsp)
                   │     ││  0x00007fc6cd233cf2: mov    %eax,0x28(%rsp)
  0.12%    0.11%   │     ││  0x00007fc6cd233cf6: mov    %r8,0x30(%rsp)
  0.18%    0.17%   │     ││  0x00007fc6cd233cfb: mov    %r11d,0x3c(%rsp)
  0.00%            │     ││  0x00007fc6cd233d00: mov    %r13,0x40(%rsp)    ;*ifeq
                   │     ││                                                ; - com.google.re2j.Machine::match@275 (line 233)
           0.00%   │     ││  0x00007fc6cd233d05: mov    %rdi,%rcx
  0.15%    0.12%   │     ││  0x00007fc6cd233d08: shl    $0x3,%rcx          ;*getfield startInst
                   │     ││                                                ; - com.google.re2j.Machine::match@304 (line 239)
  0.18%    0.19%   │     ││  0x00007fc6cd233d0c: mov    %rbx,%r9
           0.00%   │     ││  0x00007fc6cd233d0f: shl    $0x3,%r9           ;*getfield matchcap
                   │     ││                                                ; - com.google.re2j.Machine::match@283 (line 236)
           0.01%   │     ││  0x00007fc6cd233d13: mov    %r13,%rsi
  0.09%    0.13%   │     ││  0x00007fc6cd233d16: mov    0x20(%rsp),%rdx
  0.18%    0.16%   │     ││  0x00007fc6cd233d1b: mov    0x14(%rsp),%r8d
  0.01%            │     ││  0x00007fc6cd233d20: mov    0x60(%rsp),%edi
           0.00%   │     ││  0x00007fc6cd233d24: xor    %r10d,%r10d
  0.16%    0.10%   │     ││  0x00007fc6cd233d27: mov    %r10,(%rsp)
  0.15%    0.21%   │     ││  0x00007fc6cd233d2b: callq  0x00007fc6cd046020  ; OopMap{[24]=NarrowOop [32]=Oop [48]=Oop [64]=Oop [88]=Oop off=784}
                   │     ││                                                ;*invokespecial add
                   │     ││                                                ; - com.google.re2j.Machine::match@315 (line 239)
                   │     ││                                                ;   {optimized virtual_call}
  0.10%    0.07%   │     ││  0x00007fc6cd233d30: mov    0x4c(%rsp),%r11d
  0.03%    0.02%   │     ││  0x00007fc6cd233d35: test   %r11d,%r11d
                   │     ││  0x00007fc6cd233d38: jl     0x00007fc6cd234029  ;*ifge
                   │     ││                                                ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                   │     ││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.18%    0.20%   │     ││  0x00007fc6cd233d3e: xor    %r8d,%r8d          ;*iload_0
                   │     ││                                                ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                   │     ││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.05%    0.07%   │     ││  0x00007fc6cd233d41: cmp    $0xa,%r11d
                   │     ││  0x00007fc6cd233d45: je     0x00007fc6cd2343a5  ;*iload_1
                   │     ││                                                ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                   │     ││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.01%    0.02%   │     ││  0x00007fc6cd233d4b: mov    %ebp,%r10d
                   │     ││  0x00007fc6cd233d4e: test   %r10d,%r10d
                   │     ││  0x00007fc6cd233d51: jl     0x00007fc6cd234034  ;*iload_1
                   │     ││                                                ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                   │     ││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.22%    0.17%   │     ││  0x00007fc6cd233d57: cmp    $0xa,%r10d
                   │     ││  0x00007fc6cd233d5b: je     0x00007fc6cd2343ae  ;*iload_0
                   │     ││                                                ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                   │     ││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.06%    0.09%   │     ││  0x00007fc6cd233d61: mov    0x4c(%rsp),%r9d
  0.02%    0.01%   │     ││  0x00007fc6cd233d66: add    $0xffffffbf,%r9d
  0.00%    0.00%   │     ││  0x00007fc6cd233d6a: cmp    $0x1a,%r9d
                   │╭    ││  0x00007fc6cd233d6e: jb     0x00007fc6cd233d80  ;*if_icmple
                   ││    ││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                   ││    ││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   ││    ││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.15%    0.25%   ││    ││  0x00007fc6cd233d70: mov    0x4c(%rsp),%ecx
  0.06%    0.11%   ││    ││  0x00007fc6cd233d74: add    $0xffffff9f,%ecx
  0.00%    0.02%   ││    ││  0x00007fc6cd233d77: cmp    $0x1a,%ecx
                   ││    ││  0x00007fc6cd233d7a: jae    0x00007fc6cd2343c1  ;*iconst_1
                   ││    ││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                   ││    ││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   ││    ││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.01%    0.01%   │↘    ││  0x00007fc6cd233d80: mov    $0x1,%ebp          ;*ireturn
                   │     ││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                   │     ││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   │     ││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.14%    0.18%   │     ││  0x00007fc6cd233d85: mov    %r10d,%r9d
  0.02%    0.07%   │     ││  0x00007fc6cd233d88: add    $0xffffffbf,%r9d
  0.00%    0.02%   │     ││  0x00007fc6cd233d8c: cmp    $0x1a,%r9d
                   │ ╭   ││  0x00007fc6cd233d90: jb     0x00007fc6cd233da1  ;*if_icmple
                   │ │   ││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                   │ │   ││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   │ │   ││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.03%    0.05%   │ │   ││  0x00007fc6cd233d92: mov    %r10d,%ecx
  0.17%    0.21%   │ │   ││  0x00007fc6cd233d95: add    $0xffffff9f,%ecx
  0.07%    0.06%   │ │   ││  0x00007fc6cd233d98: cmp    $0x1a,%ecx
                   │ │   ││  0x00007fc6cd233d9b: jae    0x00007fc6cd2343e5  ;*iconst_1
                   │ │   ││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                   │ │   ││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   │ │   ││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.04%    0.03%   │ ↘   ││  0x00007fc6cd233da1: mov    $0x1,%r9d          ;*ireturn
                   │     ││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                   │     ││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   │     ││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.07%    0.03%   │     ││  0x00007fc6cd233da7: cmp    %r9d,%ebp
                   │  ╭  ││  0x00007fc6cd233daa: je     0x00007fc6cd233db7  ;*if_icmpeq
                   │  │  ││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                   │  │  ││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.05%    0.04%   │  │  ││  0x00007fc6cd233dac: or     $0x10,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                   │  │  ││                                                ; - com.google.re2j.Machine::match@323 (line 241)
           0.00%   │  │  ││  0x00007fc6cd233db0: mov    %r8d,0x60(%rsp)
  0.16%    0.17%   │  │╭ ││  0x00007fc6cd233db5: jmp    0x00007fc6cd233dc0
  0.15%    0.09%   │  ↘│ ││  0x00007fc6cd233db7: or     $0x20,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                   │   │ ││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.07%    0.05%   │   │ ││  0x00007fc6cd233dbb: mov    %r8d,0x60(%rsp)    ;*iload_2
                   │   │ ││                                                ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   │   │ ││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.07%    0.07%   │   ↘ ││  0x00007fc6cd233dc0: mov    0x30(%rsp),%r9
  0.03%    0.05%   │     ││  0x00007fc6cd233dc5: mov    0x10(%r9),%r8d     ;*getfield end
                   │     ││                                                ; - com.google.re2j.MachineInput$UTF16Input::endPos@1 (line 221)
                   │     ││                                                ; - com.google.re2j.Machine::match@345 (line 242)
  0.32%    0.29%   │     ││  0x00007fc6cd233dc9: mov    0x14(%rsp),%ebx
  0.02%    0.05%   │     ││  0x00007fc6cd233dcd: cmp    %r8d,%ebx
                   │     ││  0x00007fc6cd233dd0: je     0x00007fc6cd23404a  ;*if_icmpne
                   │     ││                                                ; - com.google.re2j.Machine::match@348 (line 242)
  0.10%    0.11%   │     ││  0x00007fc6cd233dd6: xor    %eax,%eax          ;*invokespecial step
                   │     ││                                                ; - com.google.re2j.Machine::match@356 (line 242)
  0.01%    0.01%   │     ││  0x00007fc6cd233dd8: mov    %rax,-0x8(%rsp)
  0.12%    0.15%   │     ││  0x00007fc6cd233ddd: mov    0x14(%rsp),%eax
  0.04%    0.06%   │     ││  0x00007fc6cd233de1: mov    %eax,0x4c(%rsp)
  0.08%    0.06%   │     ││  0x00007fc6cd233de5: mov    -0x8(%rsp),%rax
  0.12%    0.05%   │     ││  0x00007fc6cd233dea: mov    %r10d,0x38(%rsp)
  0.17%    0.15%   │     ││  0x00007fc6cd233def: mov    0x28(%rsp),%r10d
  0.03%    0.07%   │     ││  0x00007fc6cd233df4: add    0x14(%rsp),%r10d   ;*iadd
                   │     ││                                                ; - com.google.re2j.Machine::match@337 (line 242)
  0.07%    0.08%   │     ││  0x00007fc6cd233df9: mov    %r10d,0x14(%rsp)
  0.05%    0.06%   │     ││  0x00007fc6cd233dfe: mov    0x40(%rsp),%rsi
  0.10%    0.11%   │     ││  0x00007fc6cd233e03: mov    0x20(%rsp),%rdx
  0.07%    0.03%   │     ││  0x00007fc6cd233e08: mov    0x58(%rsp),%rcx
  0.05%    0.04%   │     ││  0x00007fc6cd233e0d: mov    %ebx,%r8d
  0.04%    0.04%   │     ││  0x00007fc6cd233e10: mov    %r10d,%r9d
  0.13%    0.11%   │     ││  0x00007fc6cd233e13: mov    %r11d,%edi
  0.03%    0.04%   │     ││  0x00007fc6cd233e16: mov    0x60(%rsp),%r10d
  0.03%    0.02%   │     ││  0x00007fc6cd233e1b: mov    %r10d,(%rsp)
  0.03%    0.04%   │     ││  0x00007fc6cd233e1f: mov    0x3c(%rsp),%r11d
  0.07%    0.14%   │     ││  0x00007fc6cd233e24: mov    %r11d,0x8(%rsp)
  0.05%    0.04%   │     ││  0x00007fc6cd233e29: mov    %eax,0x10(%rsp)
  0.05%    0.05%   │     ││  0x00007fc6cd233e2d: xchg   %ax,%ax
  0.09%            │     ││  0x00007fc6cd233e2f: callq  0x00007fc6cd046020  ; OopMap{[24]=NarrowOop [32]=Oop [48]=Oop [64]=Oop [88]=Oop off=1044}
                   │     ││                                                ;*invokespecial step
                   │     ││                                                ; - com.google.re2j.Machine::match@356 (line 242)
                   │     ││                                                ;   {optimized virtual_call}
  0.12%    0.10%   │     ││  0x00007fc6cd233e34: mov    0x28(%rsp),%r11d
  0.03%    0.05%   │     ││  0x00007fc6cd233e39: test   %r11d,%r11d
                   │     ││  0x00007fc6cd233e3c: je     0x00007fc6cd2341be  ;*ifne
                   │     ││                                                ; - com.google.re2j.Machine::match@361 (line 243)
  0.08%    0.06%   │     ││  0x00007fc6cd233e42: mov    0x40(%rsp),%rcx
  0.09%    0.10%   │     ││  0x00007fc6cd233e47: mov    0x28(%rcx),%r9d    ;*getfield matchcap
                   │     ││                                                ; - com.google.re2j.Machine::match@368 (line 246)
  0.04%    0.04%   │     ││  0x00007fc6cd233e4b: mov    0xc(%r12,%r9,8),%ebp  ;*arraylength
                   │     ││                                                ; - com.google.re2j.Machine::match@371 (line 246)
                   │     ││                                                ; implicit exception: dispatches to 0x00007fc6cd2351b9
  0.04%    0.02%   │     ││  0x00007fc6cd233e50: test   %ebp,%ebp
                   │     ││  0x00007fc6cd233e52: je     0x00007fc6cd234679  ;*ifne
                   │     ││                                                ; - com.google.re2j.Machine::match@372 (line 246)
  0.10%    0.10%   │     ││  0x00007fc6cd233e58: mov    0x30(%rsp),%rax
  0.11%    0.11%   │     ││  0x00007fc6cd233e5d: mov    0xc(%rax),%ebx     ;*getfield start
                   │     ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                   │     ││                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.04%    0.06%   │     ││  0x00007fc6cd233e60: mov    0x14(%rax),%edx    ;*getfield str
                   │     ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                   │     ││                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.02%    0.03%   │     ││  0x00007fc6cd233e63: mov    0x38(%rsp),%r11d
  0.09%    0.10%   │     ││  0x00007fc6cd233e68: cmp    $0xffffffff,%r11d
                   │     ││  0x00007fc6cd233e6c: je     0x00007fc6cd234396  ;*if_icmpeq
                   │     ││                                                ; - com.google.re2j.Machine::match@401 (line 254)
  0.13%    0.06%   │     ││  0x00007fc6cd233e72: mov    0x10(%rax),%r10d   ;*getfield end
                   │     ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                   │     ││                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.01%    0.06%   │     ││  0x00007fc6cd233e76: mov    0x14(%rsp),%r8d
  0.03%    0.01%   │     ││  0x00007fc6cd233e7b: add    0x2c(%rsp),%r8d
  0.13%    0.11%   │     ││  0x00007fc6cd233e80: add    %ebx,%r8d          ;*iadd
                   │     ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                   │     ││                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.10%    0.06%   │     ││  0x00007fc6cd233e83: cmp    %r10d,%r8d
                   │     ││  0x00007fc6cd233e86: jge    0x00007fc6cd23403d  ;*if_icmpge
                   │     ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                   │     ││                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.02%    0.03%   │     ││  0x00007fc6cd233e8c: mov    0x8(%r12,%rdx,8),%r10d  ; implicit exception: dispatches to 0x00007fc6cd2351c9
  0.05%    0.04%   │     ││  0x00007fc6cd233e91: cmp    $0xf80002da,%r10d  ;   {metadata(&apos;java/lang/String&apos;)}
                   │     ││  0x00007fc6cd233e98: jne    0x00007fc6cd234535
  0.05%    0.08%   │     ││  0x00007fc6cd233e9e: lea    (%r12,%rdx,8),%rdi  ;*invokeinterface charAt
                   │     ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │     ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │     ││                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.13%    0.03%   │     ││  0x00007fc6cd233ea2: test   %r8d,%r8d
                   │     ││  0x00007fc6cd233ea5: jl     0x00007fc6cd234609  ;*iflt
                   │     ││                                                ; - java.lang.String::charAt@1 (line 657)
                   │     ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │     ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │     ││                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.03%    0.03%   │     ││  0x00007fc6cd233eab: mov    %r8d,%r13d
  0.04%    0.04%   │     ││  0x00007fc6cd233eae: mov    %r11d,%r10d
  0.10%    0.12%   │     ││  0x00007fc6cd233eb1: mov    0xc(%rdi),%r8d     ;*getfield value
                   │     ││                                                ; - java.lang.String::charAt@6 (line 657)
                   │     ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │     ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │     ││                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.10%    0.02%   │     ││  0x00007fc6cd233eb5: mov    0xc(%r12,%r8,8),%ebp  ;*arraylength
                   │     ││                                                ; - java.lang.String::charAt@9 (line 657)
                   │     ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │     ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │     ││                                                ; - com.google.re2j.Machine::match@409 (line 255)
                   │     ││                                                ; implicit exception: dispatches to 0x00007fc6cd2351dd
  0.19%    0.22%   │     ││  0x00007fc6cd233eba: cmp    %ebp,%r13d
                   │     ││  0x00007fc6cd233ebd: jge    0x00007fc6cd2346ad  ;*if_icmplt
                   │     ││                                                ; - java.lang.String::charAt@10 (line 657)
                   │     ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │     ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │     ││                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.13%    0.14%   │     ││  0x00007fc6cd233ec3: cmp    %ebp,%r13d
                   │     ││  0x00007fc6cd233ec6: jae    0x00007fc6cd2344cd
  0.06%    0.06%   │     ││  0x00007fc6cd233ecc: shl    $0x3,%r8
  0.10%    0.10%   │     ││  0x00007fc6cd233ed0: mov    %r13d,%r11d
  0.01%    0.03%   │     ││  0x00007fc6cd233ed3: movzwl 0x10(%r8,%r11,2),%r8d  ;*caload
                   │     ││                                                ; - java.lang.String::charAt@27 (line 660)
                   │     ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │     ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │     ││                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.09%    0.13%   │     ││  0x00007fc6cd233ed9: cmp    $0xd800,%r8d
                   │     ││  0x00007fc6cd233ee0: jge    0x00007fc6cd23470d  ;*if_icmplt
                   │     ││                                                ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   │     ││                                                ; - java.lang.Character::codePointAt@9 (line 4867)
                   │     ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │     ││                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.06%    0.09%   │     ││  0x00007fc6cd233ee6: shl    $0x3,%r8d          ;*ishl
                   │     ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                   │     ││                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.10%    0.09%   │     ││  0x00007fc6cd233eea: mov    %r8d,%esi
  0.00%    0.00%   │     ││  0x00007fc6cd233eed: or     $0x1,%esi
  0.09%    0.14%   │     ││  0x00007fc6cd233ef0: and    $0x7,%r8d
  0.06%    0.05%   │     ││  0x00007fc6cd233ef4: sar    $0x3,%esi          ;*ishr
                   │     ││                                                ; - com.google.re2j.Machine::match@417 (line 256)
  0.14%    0.17%   │     ││  0x00007fc6cd233ef7: or     $0x1,%r8d          ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                   │     ││                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.00%    0.01%   │     ││  0x00007fc6cd233efb: mov    %r10d,%r11d        ; OopMap{r9=NarrowOop rcx=Oop rdx=NarrowOop rax=Oop [32]=Oop [64]=Oop [88]=Oop off=1246}
                   │     ││                                                ;*goto
                   │     ││                                                ; - com.google.re2j.Machine::match@439 (line 262)
  0.02%    0.02%   │     ││  0x00007fc6cd233efe: test   %eax,0x18a8e0fc(%rip)        # 0x00007fc6e5cc2000
                   │     ││                                                ;*goto
                   │     ││                                                ; - com.google.re2j.Machine::match@439 (line 262)
                   │     ││                                                ;   {poll}
  0.04%    0.07%   │     ││  0x00007fc6cd233f04: movzbl 0x10(%rcx),%r10d   ;*getfield matched
                   │     ││                                                ; - com.google.re2j.Machine::match@159 (line 212)
  0.18%    0.23%   │     ││  0x00007fc6cd233f09: mov    0x58(%rsp),%rdi
  0.02%    0.02%   │     ││  0x00007fc6cd233f0e: mov    %rdi,%r13
  0.02%    0.05%   │     ││  0x00007fc6cd233f11: shr    $0x3,%r13
  0.05%    0.06%   │     ││  0x00007fc6cd233f15: mov    %r11d,%edi
  0.15%    0.22%   │     ││  0x00007fc6cd233f18: mov    0x20(%rsp),%r11
  0.00%    0.02%   │     ││  0x00007fc6cd233f1d: mov    %r11,0x58(%rsp)
  0.03%    0.05%   │     ││  0x00007fc6cd233f22: mov    %esi,%r14d
  0.04%    0.05%   │     ││  0x00007fc6cd233f25: vmovd  %r8d,%xmm1
  0.21%    0.20%   │     ││  0x00007fc6cd233f2a: mov    %r13d,0x18(%rsp)
  0.02%    0.02%   │     ││  0x00007fc6cd233f2f: mov    %rax,0x50(%rsp)
  0.04%    0.04%   │     ││  0x00007fc6cd233f34: vmovd  %r9d,%xmm0
  0.02%    0.06%   │     ││  0x00007fc6cd233f39: mov    %ebx,0x30(%rsp)    ;*aload
                   │     ││                                                ; - com.google.re2j.Machine::match@136 (line 207)
  0.14%    0.20%   ↘     ││  0x00007fc6cd233f3d: mov    0x18(%rsp),%r11d
  0.13%    0.09%         ││  0x00007fc6cd233f42: movzbl 0x18(%r12,%r11,8),%r8d  ; implicit exception: dispatches to 0x00007fc6cd235189
  0.05%    0.06%         ││  0x00007fc6cd233f48: mov    0x40(%rsp),%r11
  0.03%    0.02%         ││  0x00007fc6cd233f4d: mov    0x18(%r11),%esi    ;*getfield prog
                         ││                                                ; - com.google.re2j.Machine::match@301 (line 239)
  0.14%    0.22%         ││  0x00007fc6cd233f51: mov    0x18(%rsp),%r11d
  0.01%    0.02%         ││  0x00007fc6cd233f56: shl    $0x3,%r11          ;*aload
                         ││                                                ; - com.google.re2j.Machine::match@136 (line 207)
  0.03%    0.02%         ││  0x00007fc6cd233f5a: mov    %r11,0x20(%rsp)
  0.04%    0.03%         ││  0x00007fc6cd233f5f: test   %r8d,%r8d
                        ╭││  0x00007fc6cd233f62: je     0x00007fc6cd233fbf  ;*ifeq
                        │││                                                ; - com.google.re2j.Machine::match@141 (line 207)
  0.11%    0.10%        │││  0x00007fc6cd233f64: mov    0x64(%rsp),%r8d
                        │││  0x00007fc6cd233f69: test   %r8d,%r8d
                        │││  0x00007fc6cd233f6c: jne    0x00007fc6cd234771  ;*ifeq
                        │││                                                ; - com.google.re2j.Machine::match@148 (line 208)
  0.01%    0.01%        │││  0x00007fc6cd233f72: test   %r10d,%r10d
                        │││  0x00007fc6cd233f75: jne    0x00007fc6cd2347b1  ;*ifeq
                        │││                                                ; - com.google.re2j.Machine::match@162 (line 212)
  0.03%    0.03%        │││  0x00007fc6cd233f7b: mov    0x40(%rsp),%r10
  0.06%    0.13%        │││  0x00007fc6cd233f80: mov    0x14(%r10),%r9d    ;*getfield re2
                        │││                                                ; - com.google.re2j.Machine::match@169 (line 216)
  0.00%    0.00%        │││  0x00007fc6cd233f84: mov    0x24(%r12,%r9,8),%r8d  ;*getfield prefix
                        │││                                                ; - com.google.re2j.Machine::match@172 (line 216)
                        │││                                                ; implicit exception: dispatches to 0x00007fc6cd2351ed
  0.01%    0.02%        │││  0x00007fc6cd233f89: mov    0xc(%r12,%r8,8),%r10d  ;*getfield value
                        │││                                                ; - java.lang.String::isEmpty@1 (line 635)
                        │││                                                ; - com.google.re2j.Machine::match@175 (line 216)
                        │││                                                ; implicit exception: dispatches to 0x00007fc6cd2351fd
  0.07%    0.12%        │││  0x00007fc6cd233f8e: mov    0xc(%r12,%r10,8),%r10d  ; implicit exception: dispatches to 0x00007fc6cd23520d
  0.41%    0.44%        │││  0x00007fc6cd233f93: test   %r10d,%r10d
                        │││  0x00007fc6cd233f96: jne    0x00007fc6cd234054  ;*ifne
                        │││                                                ; - com.google.re2j.Machine::match@178 (line 216)
  0.10%    0.11%        │││  0x00007fc6cd233f9c: mov    %edi,0x4c(%rsp)
                        │││  0x00007fc6cd233fa0: mov    0x40(%rsp),%r13
                        │││  0x00007fc6cd233fa5: mov    0x50(%rsp),%r8
           0.01%        │││  0x00007fc6cd233faa: mov    0x2c(%rsp),%eax
  0.12%    0.13%        │││  0x00007fc6cd233fae: vmovd  %xmm1,%r9d
                        │││  0x00007fc6cd233fb3: mov    %r14d,%ecx
                        │││  0x00007fc6cd233fb6: vmovd  %xmm0,%ebx
  0.00%                 │╰│  0x00007fc6cd233fba: jmpq   0x00007fc6cd233c9e
  0.09%    0.15%        ↘ │  0x00007fc6cd233fbf: test   %r10d,%r10d
                          ╰  0x00007fc6cd233fc2: je     0x00007fc6cd233c80
                             0x00007fc6cd233fc8: mov    0x40(%rsp),%r13
                             0x00007fc6cd233fcd: mov    0x50(%rsp),%r8
                             0x00007fc6cd233fd2: mov    0x2c(%rsp),%eax
                             0x00007fc6cd233fd6: vmovd  %xmm1,%r9d
                             0x00007fc6cd233fdb: mov    %r14d,%ecx
                             0x00007fc6cd233fde: mov    0x14(%rsp),%r11d   ;*ifne
                                                                           ; - com.google.re2j.Machine::match@271 (line 233)
                             0x00007fc6cd233fe3: mov    $0xffffff65,%esi
                             0x00007fc6cd233fe8: mov    %r11d,%ebp
....................................................................................................
 11.61%   12.49%  <total for region 4>

....[Hottest Regions]...............................................................................
 28.70%   30.50%         C2, level 4  com.google.re2j.Machine::add, version 515 (397 bytes) 
 21.31%   19.60%         C2, level 4  com.google.re2j.Machine::add, version 515 (160 bytes) 
 19.02%   17.93%         C2, level 4  com.google.re2j.Machine::step, version 505 (301 bytes) 
 11.61%   12.49%         C2, level 4  com.google.re2j.Machine::match, version 545 (908 bytes) 
  6.55%    7.96%        runtime stub  StubRoutines::jint_disjoint_arraycopy (128 bytes) 
  5.58%    5.12%         C2, level 4  com.google.re2j.Machine::step, version 505 (187 bytes) 
  2.33%    2.33%         C2, level 4  com.google.re2j.Machine::step, version 505 (109 bytes) 
  0.50%    0.49%   [kernel.kallsyms]  [unknown] (6 bytes) 
  0.34%    0.23%         C2, level 4  com.google.re2j.Machine::match, version 545 (81 bytes) 
  0.32%    0.42%         C2, level 4  com.google.re2j.Machine::add, version 515 (37 bytes) 
  0.19%    0.09%         C2, level 4  com.google.re2j.Machine::init, version 556 (119 bytes) 
  0.18%    0.07%         C2, level 4  com.google.re2j.Machine::init, version 556 (140 bytes) 
  0.11%    0.00%   [kernel.kallsyms]  [unknown] (37 bytes) 
  0.09%    0.02%   [kernel.kallsyms]  [unknown] (28 bytes) 
  0.08%    0.03%   [kernel.kallsyms]  [unknown] (26 bytes) 
  0.07%    0.04%         C2, level 4  com.google.re2j.Machine::init, version 556 (111 bytes) 
  0.05%    0.02%   [kernel.kallsyms]  [unknown] (13 bytes) 
  0.05%    0.03%         C2, level 4  com.google.re2j.Matcher::find, version 578 (28 bytes) 
  0.05%    0.03%         C2, level 4  com.google.re2j.Matcher::find, version 578 (8 bytes) 
  0.04%    0.01%   [kernel.kallsyms]  [unknown] (50 bytes) 
  2.83%    2.57%  <...other 574 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 50.33%   50.52%         C2, level 4  com.google.re2j.Machine::add, version 515 
 26.94%   25.38%         C2, level 4  com.google.re2j.Machine::step, version 505 
 12.09%   12.86%         C2, level 4  com.google.re2j.Machine::match, version 545 
  6.55%    7.96%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
  1.97%    1.56%   [kernel.kallsyms]  [unknown] 
  0.47%    0.24%         C2, level 4  com.google.re2j.Machine::init, version 556 
  0.26%    0.16%         C2, level 4  com.google.re2j.Matcher::find, version 578 
  0.06%    0.02%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testCombine_jmhTest::testCombine_thrpt_jmhStub, version 673 
  0.05%    0.04%         C2, level 4  com.google.re2j.MachineInput$UTF16Input::indexOf, version 589 
  0.04%    0.04%      hsdis-amd64.so  [unknown] 
  0.03%    0.06%        libc-2.26.so  _IO_fwrite 
  0.03%    0.08%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.03%    0.01%         C2, level 4  java.util.Collections::shuffle, version 605 
  0.03%    0.06%        libc-2.26.so  vfprintf 
  0.03%                    libjvm.so  _ZN2os13PlatformEvent4parkEl 
  0.03%    0.01%         C2, level 4  com.github.arnaudroger.re2j.Re2jFindRegex::testCombine, version 606 
  0.03%    0.01%  libpthread-2.26.so  __libc_write 
  0.02%    0.09%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.02%    0.00%              [vdso]  [unknown] 
  0.02%                    libjvm.so  _ZNK12MutableSpace13used_in_wordsEv 
  0.94%    0.54%  <...other 135 warm methods...>
....................................................................................................
100.00%   99.66%  <totals>

....[Distribution by Source]........................................................................
 90.28%   89.25%         C2, level 4
  6.57%    7.99%        runtime stub
  1.97%    1.56%   [kernel.kallsyms]
  0.67%    0.70%           libjvm.so
  0.24%    0.32%        libc-2.26.so
  0.14%    0.10%  libpthread-2.26.so
  0.05%    0.04%      hsdis-amd64.so
  0.04%    0.01%         interpreter
  0.02%    0.00%              [vdso]
  0.01%    0.01%         C1, level 3
  0.00%               perf-12315.map
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                        Mode  Cnt     Score    Error  Units
Re2jFindRegex.testCombine       thrpt   20  3746.469 ± 30.638  ops/s
Re2jFindRegex.testCombine:·asm  thrpt            NaN             ---
