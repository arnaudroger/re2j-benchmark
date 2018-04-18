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
# Warmup Iteration   1: 2720.466 ops/s
# Warmup Iteration   2: 5868.263 ops/s
# Warmup Iteration   3: 5935.027 ops/s
# Warmup Iteration   4: 5898.350 ops/s
# Warmup Iteration   5: 5826.751 ops/s
# Warmup Iteration   6: 5836.151 ops/s
# Warmup Iteration   7: 5837.314 ops/s
# Warmup Iteration   8: 5829.273 ops/s
# Warmup Iteration   9: 5860.195 ops/s
# Warmup Iteration  10: 5886.598 ops/s
# Warmup Iteration  11: 5873.377 ops/s
# Warmup Iteration  12: 5883.696 ops/s
# Warmup Iteration  13: 5877.715 ops/s
# Warmup Iteration  14: 5960.901 ops/s
# Warmup Iteration  15: 5962.563 ops/s
# Warmup Iteration  16: 5457.257 ops/s
# Warmup Iteration  17: 5844.548 ops/s
# Warmup Iteration  18: 5765.327 ops/s
# Warmup Iteration  19: 5864.702 ops/s
# Warmup Iteration  20: 5828.827 ops/s
Iteration   1: 5896.550 ops/s
Iteration   2: 5847.563 ops/s
Iteration   3: 5822.108 ops/s
Iteration   4: 5810.184 ops/s
Iteration   5: 5911.592 ops/s
Iteration   6: 5940.721 ops/s
Iteration   7: 5941.369 ops/s
Iteration   8: 5940.089 ops/s
Iteration   9: 5944.918 ops/s
Iteration  10: 5965.578 ops/s
Iteration  11: 5966.564 ops/s
Iteration  12: 5966.082 ops/s
Iteration  13: 5960.126 ops/s
Iteration  14: 5966.194 ops/s
Iteration  15: 5967.119 ops/s
Iteration  16: 5901.551 ops/s
Iteration  17: 5959.214 ops/s
Iteration  18: 5964.348 ops/s
Iteration  19: 5964.832 ops/s
Iteration  20: 5959.836 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  5929.827 ±(99.9%) 43.310 ops/s [Average]
  (min, avg, max) = (5810.184, 5929.827, 5967.119), stdev = 49.876
  CI (99.9%): [5886.517, 5973.137] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1:·asm":
PrintAssembly processed: 197146 total address lines.
Perf output processed (skipped 23.400 seconds):
 Column 1: cycles (20535 events)
 Column 2: instructions (20600 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 494 (344 bytes) 

                       # parm4:    rdi       = int
                       # parm5:    [sp+0x70]   = &apos;com/google/re2j/Machine$Thread&apos;  (sp of caller)
                       0x00007ff4f92166e0: mov    0x8(%rsi),%r10d    ;   {no_reloc}
                       0x00007ff4f92166e4: shl    $0x3,%r10
                       0x00007ff4f92166e8: cmp    %r10,%rax
                       0x00007ff4f92166eb: jne    0x00007ff4f9045e20  ;   {runtime_call}
                       0x00007ff4f92166f1: data16 xchg %ax,%ax
                       0x00007ff4f92166f4: nopl   0x0(%rax,%rax,1)
                       0x00007ff4f92166fc: data16 data16 xchg %ax,%ax
                     [Verified Entry Point]
  0.58%    0.77%       0x00007ff4f9216700: mov    %eax,-0x14000(%rsp)
  0.80%    0.71%       0x00007ff4f9216707: push   %rbp
  0.54%    0.69%       0x00007ff4f9216708: sub    $0x60,%rsp         ;*synchronization entry
                                                                     ; - com.google.re2j.Machine::add@-1 (line 341)
  0.57%    0.56%       0x00007ff4f921670c: mov    %edi,0x28(%rsp)
  0.26%    0.19%       0x00007ff4f9216710: mov    %r9,0x20(%rsp)
  0.55%    0.54%       0x00007ff4f9216715: mov    %r8d,0x1c(%rsp)
  0.07%    0.10%       0x00007ff4f921671a: mov    %rsi,0x8(%rsp)
  0.47%    0.46%       0x00007ff4f921671f: test   %ecx,%ecx
                       0x00007ff4f9216721: je     0x00007ff4f9216bc9  ;*ifne
                                                                     ; - com.google.re2j.Machine::add@1 (line 341)
  0.24%    0.26%       0x00007ff4f9216727: mov    %rdx,0x40(%rsp)
  0.49%    0.71%       0x00007ff4f921672c: mov    0x14(%rdx),%r8d    ;*getfield sparse
                                                                     ; - com.google.re2j.Machine$Queue::contains@1 (line 48)
                                                                     ; - com.google.re2j.Machine::add@9 (line 344)
                                                                     ; implicit exception: dispatches to 0x00007ff4f9216dcd
  0.07%    0.12%       0x00007ff4f9216730: mov    0xc(%r12,%r8,8),%ebx  ; implicit exception: dispatches to 0x00007ff4f9216de1
  0.58%    0.40%       0x00007ff4f9216735: cmp    %ebx,%ecx
                       0x00007ff4f9216737: jae    0x00007ff4f9216a92  ;*iaload
                                                                     ; - com.google.re2j.Machine$Queue::contains@5 (line 48)
                                                                     ; - com.google.re2j.Machine::add@9 (line 344)
  0.22%    0.25%       0x00007ff4f921673d: mov    0x10(%rdx),%r9d    ;*getfield dense
                                                                     ; - com.google.re2j.Machine$Queue::contains@18 (line 52)
                                                                     ; - com.google.re2j.Machine::add@9 (line 344)
  0.47%    0.61%       0x00007ff4f9216741: mov    0xc(%rdx),%r11d    ;*getfield size
                                                                     ; - com.google.re2j.Machine$Queue::contains@9 (line 49)
                                                                     ; - com.google.re2j.Machine::add@9 (line 344)
  0.04%    0.12%       0x00007ff4f9216745: lea    (%r12,%r8,8),%rdi
  0.55%    0.48%       0x00007ff4f9216749: mov    0x10(%rdi,%rcx,4),%ebp  ;*iaload
                                                                     ; - com.google.re2j.Machine$Queue::contains@5 (line 48)
                                                                     ; - com.google.re2j.Machine::add@9 (line 344)
  0.22%    0.32%       0x00007ff4f921674d: cmp    %r11d,%ebp
                  ╭    0x00007ff4f9216750: jl     0x00007ff4f9216834  ;*iastore
                  │                                                  ; - com.google.re2j.Machine$Queue::add@18 (line 60)
                  │                                                  ; - com.google.re2j.Machine::add@20 (line 347)
  0.57%    0.55%  │↗↗  0x00007ff4f9216756: mov    %r11d,%r10d
  0.07%    0.11%  │││  0x00007ff4f9216759: inc    %r10d
  0.48%    0.34%  │││  0x00007ff4f921675c: mov    0x40(%rsp),%rdx
  0.62%    0.46%  │││  0x00007ff4f9216761: mov    %r10d,0xc(%rdx)    ;*putfield size
                  │││                                                ; - com.google.re2j.Machine$Queue::add@8 (line 59)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.62%    0.66%  │││  0x00007ff4f9216765: cmp    %ebx,%ecx
                  │││  0x00007ff4f9216767: jae    0x00007ff4f9216acd
  0.08%    0.07%  │││  0x00007ff4f921676d: mov    %r11d,0x10(%rdi,%rcx,4)  ;*iastore
                  │││                                                ; - com.google.re2j.Machine$Queue::add@18 (line 60)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.55%    0.33%  │││  0x00007ff4f9216772: mov    0xc(%r12,%r9,8),%r10d  ; implicit exception: dispatches to 0x00007ff4f9216df5
  0.25%    0.19%  │││  0x00007ff4f9216777: cmp    %r10d,%r11d
                  │││  0x00007ff4f921677a: jae    0x00007ff4f9216b19
  0.56%    0.59%  │││  0x00007ff4f9216780: lea    (%r12,%r9,8),%r10
  0.07%    0.06%  │││  0x00007ff4f9216784: mov    0x10(%r10,%r11,4),%ebx  ;*aaload
                  │││                                                ; - com.google.re2j.Machine$Queue::add@24 (line 61)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.61%    0.66%  │││  0x00007ff4f9216789: test   %ebx,%ebx
                  │││  0x00007ff4f921678b: je     0x00007ff4f9216bf1  ;*ifnonnull
                  │││                                                ; - com.google.re2j.Machine$Queue::add@27 (line 62)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.16%    0.18%  │││  0x00007ff4f9216791: mov    %ecx,0xc(%r12,%rbx,8)  ;*putfield pc
                  │││                                                ; - com.google.re2j.Machine$Queue::add@52 (line 66)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.81%    0.83%  │││  0x00007ff4f9216796: mov    0x14(%rsi),%r10d   ;*getfield prog
                  │││                                                ; - com.google.re2j.Machine::add@26 (line 348)
  0.03%    0.05%  │││  0x00007ff4f921679a: mov    %r12d,0x10(%r12,%rbx,8)  ;*putfield thread
                  │││                                                ; - com.google.re2j.Machine$Queue::add@47 (line 65)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.62%    0.77%  │││  0x00007ff4f921679f: mov    0x14(%r12,%r10,8),%ebp  ;*getfield inst
                  │││                                                ; - com.google.re2j.Prog::getInst@1 (line 29)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 348)
                  │││                                                ; implicit exception: dispatches to 0x00007ff4f9216e09
  0.13%    0.21%  │││  0x00007ff4f92167a4: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007ff4f9216e1d
  0.49%    0.57%  │││  0x00007ff4f92167a9: cmp    $0xf8002f22,%r11d  ;   {metadata(&apos;java/util/ArrayList&apos;)}
                  │││  0x00007ff4f92167b0: jne    0x00007ff4f9216b9d
  0.07%    0.10%  │││  0x00007ff4f92167b6: lea    (%r12,%rbp,8),%r11  ;*invokeinterface get
                  │││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.57%    0.58%  │││  0x00007ff4f92167ba: mov    0x10(%r11),%ebp    ;*getfield size
                  │││                                                ; - java.util.ArrayList::rangeCheck@2 (line 652)
                  │││                                                ; - java.util.ArrayList::get@2 (line 429)
                  │││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.15%    0.16%  │││  0x00007ff4f92167be: cmp    %ebp,%ecx
  0.55%    0.57%  │││  0x00007ff4f92167c0: jge    0x00007ff4f9216c35  ;*if_icmplt
                  │││                                                ; - java.util.ArrayList::rangeCheck@5 (line 652)
                  │││                                                ; - java.util.ArrayList::get@2 (line 429)
                  │││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.15%    0.10%  │││  0x00007ff4f92167c6: mov    0x14(%r11),%ebp    ;*getfield elementData
                  │││                                                ; - java.util.ArrayList::elementData@1 (line 418)
                  │││                                                ; - java.util.ArrayList::get@7 (line 431)
                  │││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.60%    0.44%  │││  0x00007ff4f92167ca: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007ff4f9216e31
  0.51%    0.62%  │││  0x00007ff4f92167cf: cmp    %r11d,%ecx
                  │││  0x00007ff4f92167d2: jae    0x00007ff4f9216b61
  0.97%    1.11%  │││  0x00007ff4f92167d8: lea    (%r12,%rbp,8),%r10
  0.02%    0.04%  │││  0x00007ff4f92167dc: mov    0x10(%r10,%rcx,4),%ebp  ;*aaload
                  │││                                                ; - java.util.ArrayList::elementData@5 (line 418)
                  │││                                                ; - java.util.ArrayList::get@7 (line 431)
                  │││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.51%    0.33%  │││  0x00007ff4f92167e1: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007ff4f9216e45
  3.17%    3.17%  │││  0x00007ff4f92167e6: cmp    $0xf80197c3,%r10d  ;   {metadata(&apos;com/google/re2j/Inst&apos;)}
                  │││  0x00007ff4f92167ed: jne    0x00007ff4f9216d91
  0.97%    0.96%  │││  0x00007ff4f92167f3: lea    (%r12,%rbp,8),%r10  ;*checkcast
                  │││                                                ; - com.google.re2j.Prog::getInst@10 (line 29)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.03%    0.00%  │││  0x00007ff4f92167f7: mov    %r10,0x38(%rsp)
  0.21%    0.24%  │││  0x00007ff4f92167fc: mov    0xc(%r10),%r10d    ;*getfield op
                  │││                                                ; - com.google.re2j.Machine::add@37 (line 349)
  0.64%    0.75%  │││  0x00007ff4f9216800: mov    %r10d,%r11d
  0.36%    0.34%  │││  0x00007ff4f9216803: dec    %r11d
  0.67%    0.66%  │││  0x00007ff4f9216806: cmp    $0xb,%r11d
                  │││  0x00007ff4f921680a: jae    0x00007ff4f9216b8d  ;*tableswitch
                  │││                                                ; - com.google.re2j.Machine::add@40 (line 349)
  1.14%    1.20%  │││  0x00007ff4f9216810: mov    0x38(%rsp),%r11
  0.24%    0.08%  │││  0x00007ff4f9216815: mov    0x14(%r11),%r11d   ;*getfield arg
                  │││                                                ; - com.google.re2j.Machine::add@156 (line 363)
  2.63%    2.97%  │││  0x00007ff4f9216819: mov    0x38(%rsp),%r8
  0.04%    0.06%  │││  0x00007ff4f921681e: mov    0x10(%r8),%ecx     ;*getfield out
                  │││                                                ; - com.google.re2j.Machine::add@193 (line 369)
  1.25%    1.55%  │││  0x00007ff4f9216822: movslq %r10d,%r8
  0.04%    0.06%  │││  0x00007ff4f9216825: movabs $0x7ff4f9216680,%r10  ;   {section_word}
  0.08%    0.08%  │││  0x00007ff4f921682f: jmpq   *-0x8(%r10,%r8,8)  ;*tableswitch
                  │││                                                ; - com.google.re2j.Machine::add@40 (line 349)
           0.00%  ↘││  0x00007ff4f9216834: mov    0xc(%r12,%r9,8),%edx  ; implicit exception: dispatches to 0x00007ff4f9216ee5
                   ││  0x00007ff4f9216839: cmp    %edx,%ebp
                   ││  0x00007ff4f921683b: jae    0x00007ff4f9216d79
                   ││  0x00007ff4f9216841: lea    (%r12,%r9,8),%r10
                   ││  0x00007ff4f9216845: mov    0x10(%r10,%rbp,4),%r10d  ;*aaload
                   ││                                                ; - com.google.re2j.Machine$Queue::contains@22 (line 52)
                   ││                                                ; - com.google.re2j.Machine::add@9 (line 344)
  0.02%            ││  0x00007ff4f921684a: test   %r10d,%r10d
                   ╰│  0x00007ff4f921684d: je     0x00007ff4f9216756  ;*ifnull
                    │                                                ; - com.google.re2j.Machine$Queue::contains@25 (line 53)
                    │                                                ; - com.google.re2j.Machine::add@9 (line 344)
                    │  0x00007ff4f9216853: mov    0xc(%r12,%r10,8),%r10d
  0.01%    0.01%    │  0x00007ff4f9216858: cmp    %ecx,%r10d
                    ╰  0x00007ff4f921685b: jne    0x00007ff4f9216756  ;*if_icmpne
                                                                     ; - com.google.re2j.Machine$Queue::contains@33 (line 53)
                                                                     ; - com.google.re2j.Machine::add@9 (line 344)
                       0x00007ff4f9216861: mov    0x70(%rsp),%rax
                       0x00007ff4f9216866: jmpq   0x00007ff4f9216a68
                       0x00007ff4f921686b: mov    0x28(%rsp),%ebx
                       0x00007ff4f921686f: andn   %r11d,%ebx,%r11d
                       0x00007ff4f9216874: test   %r11d,%r11d
                       0x00007ff4f9216877: je     0x00007ff4f9216a74  ;*ifne
                                                                     ; - com.google.re2j.Machine::add@164 (line 363)
....................................................................................................
 29.09%   30.11%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 499 (549 bytes) 

                              # parm6:    [sp+0x98]   = int
                              # parm7:    [sp+0xa0]   = boolean
                              0x00007ff4f921eae0: mov    0x8(%rsi),%r10d
                              0x00007ff4f921eae4: shl    $0x3,%r10
                              0x00007ff4f921eae8: cmp    %r10,%rax
                              0x00007ff4f921eaeb: jne    0x00007ff4f9045e20  ;   {runtime_call}
                              0x00007ff4f921eaf1: data16 xchg %ax,%ax
                              0x00007ff4f921eaf4: nopl   0x0(%rax,%rax,1)
                              0x00007ff4f921eafc: data16 data16 xchg %ax,%ax
                            [Verified Entry Point]
  0.06%    0.04%              0x00007ff4f921eb00: mov    %eax,-0x14000(%rsp)
  0.12%    0.13%              0x00007ff4f921eb07: push   %rbp
  0.05%    0.01%              0x00007ff4f921eb08: sub    $0x80,%rsp         ;*synchronization entry
                                                                            ; - com.google.re2j.Machine::step@-1 (line 263)
  0.05%    0.03%              0x00007ff4f921eb0f: mov    %edi,0x20(%rsp)
  0.20%    0.13%              0x00007ff4f921eb13: mov    %r9d,0x14(%rsp)
  0.03%                       0x00007ff4f921eb18: mov    %rcx,0x18(%rsp)
  0.05%    0.03%              0x00007ff4f921eb1d: mov    %r8d,0x10(%rsp)
  0.02%    0.01%              0x00007ff4f921eb22: mov    %rdx,0x8(%rsp)
  0.15%    0.16%              0x00007ff4f921eb27: mov    %rsi,0x28(%rsp)
  0.03%    0.00%              0x00007ff4f921eb2c: mov    0x10(%rsi),%r10d   ;*getfield re2
                                                                            ; - com.google.re2j.Machine::step@1 (line 263)
  0.03%    0.03%              0x00007ff4f921eb30: movzbl 0x18(%r12,%r10,8),%r11d  ;*getfield longest
                                                                            ; - com.google.re2j.Machine::step@4 (line 263)
                                                                            ; implicit exception: dispatches to 0x00007ff4f9220069
  0.01%    0.01%              0x00007ff4f921eb36: mov    %r11d,0x24(%rsp)
  0.16%    0.11%              0x00007ff4f921eb3b: mov    0xc(%rdx),%r11d    ; implicit exception: dispatches to 0x00007ff4f9220079
  0.03%    0.01%              0x00007ff4f921eb3f: test   %r11d,%r11d
                              0x00007ff4f921eb42: jle    0x00007ff4f921eed4  ;*if_icmpge
                                                                            ; - com.google.re2j.Machine::step@18 (line 264)
  0.02%    0.04%              0x00007ff4f921eb48: xor    %r8d,%r8d
  0.00%    0.02%  ╭           0x00007ff4f921eb4b: jmpq   0x00007ff4f921ec3c
  0.30%    0.34%  │  ↗        0x00007ff4f921eb50: mov    0xc(%r12,%rcx,8),%ebx  ; implicit exception: dispatches to 0x00007ff4f9220059
  1.38%    2.03%  │  │        0x00007ff4f921eb55: test   %ebx,%ebx
                  │  │        0x00007ff4f921eb57: jbe    0x00007ff4f921f841  ;*iaload
                  │  │                                                      ; - com.google.re2j.Machine::step@324 (line 310)
  0.33%    0.38%  │  │        0x00007ff4f921eb5d: mov    0x10(%r12,%rcx,8),%r11d
  0.01%    0.01%  │  │        0x00007ff4f921eb62: mov    0x20(%rsp),%ecx
                  │  │        0x00007ff4f921eb66: cmp    %r11d,%ecx
                  │  │        0x00007ff4f921eb69: je     0x00007ff4f921f4c8  ;*goto
                  │  │                                                      ; - com.google.re2j.Machine::step@313 (line 307)
  0.52%    0.58%  │  │    ↗   0x00007ff4f921eb6f: mov    %r10,0x50(%rsp)    ;*aload
                  │  │    │                                                 ; - com.google.re2j.Machine::step@399 (line 327)
  0.12%    0.09%  │  │   ↗│   0x00007ff4f921eb74: mov    0x28(%rsp),%r10
  0.00%           │  │   ││   0x00007ff4f921eb79: mov    0x20(%r10),%ebp    ;*getfield pool
                  │  │   ││                                                 ; - com.google.re2j.Machine::step@405 (line 329)
  0.00%    0.00%  │  │   ││   0x00007ff4f921eb7d: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007ff4f921ff95
  0.47%    0.57%  │  │   ││   0x00007ff4f921eb82: cmp    $0xf8002f22,%r10d  ;   {metadata(&apos;java/util/ArrayList&apos;)}
                  │  │   ││   0x00007ff4f921eb89: jne    0x00007ff4f921f63d
  0.06%    0.08%  │  │   ││   0x00007ff4f921eb8f: lea    (%r12,%rbp,8),%r9  ;*invokeinterface add
                  │  │   ││                                                 ; - com.google.re2j.Machine::step@410 (line 329)
                  │  │   ││   0x00007ff4f921eb93: mov    0x14(%r9),%edx     ;*getfield elementData
                  │  │   ││                                                 ; - java.util.ArrayList::ensureCapacityInternal@1 (line 223)
                  │  │   ││                                                 ; - java.util.ArrayList::add@7 (line 458)
                  │  │   ││                                                 ; - com.google.re2j.Machine::step@410 (line 329)
                  │  │   ││   0x00007ff4f921eb97: mov    0x10(%r9),%ebp     ;*getfield size
                  │  │   ││                                                 ; - java.util.ArrayList::add@2 (line 458)
                  │  │   ││                                                 ; - com.google.re2j.Machine::step@410 (line 329)
  0.46%    0.55%  │  │   ││   0x00007ff4f921eb9b: mov    %ebp,%r11d
  0.06%    0.08%  │  │   ││   0x00007ff4f921eb9e: inc    %r11d              ;*iadd
                  │  │   ││                                                 ; - java.util.ArrayList::add@6 (line 458)
                  │  │   ││                                                 ; - com.google.re2j.Machine::step@410 (line 329)
                  │  │   ││   0x00007ff4f921eba1: cmp    $0xed9f0db7,%edx   ;   {oop(a &apos;java/lang/Object&apos;[0] )}
                  │  │   ││   0x00007ff4f921eba7: je     0x00007ff4f921f4a8  ;*if_acmpne
                  │  │   ││                                                 ; - java.util.ArrayList::ensureCapacityInternal@7 (line 223)
                  │  │   ││                                                 ; - java.util.ArrayList::add@7 (line 458)
                  │  │   ││                                                 ; - com.google.re2j.Machine::step@410 (line 329)
                  │  │   ││   0x00007ff4f921ebad: mov    %r11d,%esi         ;*aload_0
                  │  │   ││                                                 ; - java.util.ArrayList::ensureCapacityInternal@17 (line 227)
                  │  │   ││                                                 ; - java.util.ArrayList::add@7 (line 458)
                  │  │   ││                                                 ; - com.google.re2j.Machine::step@410 (line 329)
  0.53%    0.49%  │  │   ││   0x00007ff4f921ebb0: mov    0xc(%r9),%ebx      ;*getfield modCount
                  │  │   ││                                                 ; - java.util.ArrayList::ensureExplicitCapacity@2 (line 231)
                  │  │   ││                                                 ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                  │  │   ││                                                 ; - java.util.ArrayList::add@7 (line 458)
                  │  │   ││                                                 ; - com.google.re2j.Machine::step@410 (line 329)
  0.08%    0.13%  │  │   ││   0x00007ff4f921ebb4: inc    %ebx
  0.00%    0.00%  │  │   ││   0x00007ff4f921ebb6: mov    %ebx,0xc(%r9)      ;*putfield modCount
                  │  │   ││                                                 ; - java.util.ArrayList::ensureExplicitCapacity@7 (line 231)
                  │  │   ││                                                 ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                  │  │   ││                                                 ; - java.util.ArrayList::add@7 (line 458)
                  │  │   ││                                                 ; - com.google.re2j.Machine::step@410 (line 329)
                  │  │   ││   0x00007ff4f921ebba: mov    0xc(%r12,%rdx,8),%eax  ;*arraylength
                  │  │   ││                                                 ; - java.util.ArrayList::ensureExplicitCapacity@15 (line 234)
                  │  │   ││                                                 ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                  │  │   ││                                                 ; - java.util.ArrayList::add@7 (line 458)
                  │  │   ││                                                 ; - com.google.re2j.Machine::step@410 (line 329)
                  │  │   ││                                                 ; implicit exception: dispatches to 0x00007ff4f921ffa5
  0.45%    0.47%  │  │   ││   0x00007ff4f921ebbf: mov    %esi,%r10d
  0.07%    0.08%  │  │   ││   0x00007ff4f921ebc2: sub    %eax,%r10d
  0.01%    0.00%  │  │   ││   0x00007ff4f921ebc5: test   %r10d,%r10d
                  │  │   ││   0x00007ff4f921ebc8: jg     0x00007ff4f921f20e  ;*ifle
                  │  │   ││                                                 ; - java.util.ArrayList::ensureExplicitCapacity@17 (line 234)
                  │  │   ││                                                 ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                  │  │   ││                                                 ; - java.util.ArrayList::add@7 (line 458)
                  │  │   ││                                                 ; - com.google.re2j.Machine::step@410 (line 329)
  0.01%    0.02%  │  │   ││   0x00007ff4f921ebce: mov    %rdx,%r10
  0.38%    0.40%  │  │   ││   0x00007ff4f921ebd1: shl    $0x3,%r10          ;*return
                  │  │   ││                                                 ; - java.util.ArrayList::ensureExplicitCapacity@25 (line 236)
                  │  │   ││                                                 ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                  │  │   ││                                                 ; - java.util.ArrayList::add@7 (line 458)
                  │  │   ││                                                 ; - com.google.re2j.Machine::step@410 (line 329)
  0.08%    0.11%  │  │   ││   0x00007ff4f921ebd5: mov    %r11d,0x10(%r9)    ;*putfield size
                  │  │   ││                                                 ; - java.util.ArrayList::add@22 (line 459)
                  │  │   ││                                                 ; - com.google.re2j.Machine::step@410 (line 329)
  0.00%           │  │   ││   0x00007ff4f921ebd9: mov    0xc(%r10),%r11d    ; implicit exception: dispatches to 0x00007ff4f921ffb5
  0.00%    0.00%  │  │   ││   0x00007ff4f921ebdd: cmp    %r11d,%ebp
                  │  │   ││   0x00007ff4f921ebe0: jae    0x00007ff4f921f5f9
  0.56%    0.40%  │  │   ││   0x00007ff4f921ebe6: mov    0x8(%r10),%r11d
  0.05%    0.10%  │  │   ││   0x00007ff4f921ebea: cmp    $0xf80022f5,%r11d  ;   {metadata(&apos;java/lang/Object&apos;[])}
                  │  │   ││   0x00007ff4f921ebf1: jne    0x00007ff4f921f679
  0.00%           │  │   ││   0x00007ff4f921ebf7: lea    0x10(%r10,%rbp,4),%r10
                  │  │   ││   0x00007ff4f921ebfc: mov    0x50(%rsp),%r11
  0.45%    0.28%  │  │   ││   0x00007ff4f921ec01: shr    $0x3,%r11
  0.09%    0.10%  │  │   ││   0x00007ff4f921ec05: mov    %r11d,(%r10)
  0.00%           │  │   ││   0x00007ff4f921ec08: shr    $0x9,%r10
                  │  │   ││   0x00007ff4f921ec0c: movabs $0x7ff50a6cc000,%r11
  0.42%    0.26%  │  │   ││   0x00007ff4f921ec16: mov    %r12b,(%r11,%r10,1)  ;*aastore
                  │  │   ││                                                 ; - java.util.ArrayList::add@26 (line 459)
                  │  │   ││                                                 ; - com.google.re2j.Machine::step@410 (line 329)
  0.12%    0.08%  │  │   ││   0x00007ff4f921ec1a: xor    %r11d,%r11d        ; OopMap{[8]=Oop [24]=Oop [40]=Oop off=317}
                  │  │   ││                                                 ;*goto
                  │  │   ││                                                 ; - com.google.re2j.Machine::step@419 (line 264)
                  │ ↗│  ↗││   0x00007ff4f921ec1d: test   %eax,0x18aa53dd(%rip)        # 0x00007ff511cc4000
                  │ ││  │││                                                 ;*goto
                  │ ││  │││                                                 ; - com.google.re2j.Machine::step@419 (line 264)
                  │ ││  │││                                                 ;   {poll}
  0.58%    0.59%  │ ││  │││   0x00007ff4f921ec23: mov    0x8(%rsp),%r10
  0.70%    0.39%  │ ││  │││   0x00007ff4f921ec28: mov    0xc(%r10),%r11d
  0.15%    0.14%  │ ││  │││   0x00007ff4f921ec2c: cmp    %r11d,%edi
                  │ ││  │││   0x00007ff4f921ec2f: jge    0x00007ff4f921eed4
  0.00%    0.01%  │ ││  │││   0x00007ff4f921ec35: mov    %ecx,0x20(%rsp)
  0.66%    0.43%  │ ││  │││   0x00007ff4f921ec39: mov    %edi,%r8d          ;*aload_1
                  │ ││  │││                                                 ; - com.google.re2j.Machine::step@21 (line 265)
  0.54%    0.36%  ↘ ││  │││   0x00007ff4f921ec3c: mov    0x8(%rsp),%r10
  0.14%    0.14%    ││  │││   0x00007ff4f921ec41: mov    0x10(%r10),%r10d   ;*getfield dense
                    ││  │││                                                 ; - com.google.re2j.Machine::step@22 (line 265)
  0.30%    0.17%    ││  │││   0x00007ff4f921ec45: mov    0xc(%r12,%r10,8),%r9d  ; implicit exception: dispatches to 0x00007ff4f921ff61
  1.16%    1.37%    ││  │││   0x00007ff4f921ec4a: cmp    %r9d,%r8d
                    ││  │││   0x00007ff4f921ec4d: jae    0x00007ff4f921f527
  0.80%    0.74%    ││  │││   0x00007ff4f921ec53: shl    $0x3,%r10
  0.08%    0.14%    ││  │││   0x00007ff4f921ec57: mov    0x10(%r10,%r8,4),%r10d  ;*aaload
                    ││  │││                                                 ; - com.google.re2j.Machine::step@27 (line 265)
  0.06%    0.07%    ││  │││   0x00007ff4f921ec5c: mov    0x10(%r12,%r10,8),%r11d  ;*getfield thread
                    ││  │││                                                 ; - com.google.re2j.Machine::step@40 (line 269)
                    ││  │││                                                 ; implicit exception: dispatches to 0x00007ff4f921ffd5
  1.98%    2.55%    ││  │││   0x00007ff4f921ec61: mov    %r8d,%edi
  0.45%    0.34%    ││  │││   0x00007ff4f921ec64: inc    %edi               ;*iadd
                    ││  │││                                                 ; - com.google.re2j.Machine::step@241 (line 293)
  0.06%    0.13%    ││  │││   0x00007ff4f921ec66: test   %r11d,%r11d
                   ╭││  │││   0x00007ff4f921ec69: jne    0x00007ff4f921ec76  ;*ifnonnull
                   │││  │││                                                 ; - com.google.re2j.Machine::step@47 (line 270)
  0.31%    0.34%   │││  │││   0x00007ff4f921ec6b: mov    0x24(%rsp),%r11d
  0.19%    0.17%   │││  │││   0x00007ff4f921ec70: mov    0x20(%rsp),%ecx
  0.02%    0.01%   │╰│  │││   0x00007ff4f921ec74: jmp    0x00007ff4f921ec1d
  0.07%    0.09%   ↘ │  │││   0x00007ff4f921ec76: mov    0x24(%rsp),%r9d
  0.22%    0.17%     │  │││   0x00007ff4f921ec7b: test   %r9d,%r9d
                     │  │││   0x00007ff4f921ec7e: jne    0x00007ff4f921f88d  ;*ifeq
                     │  │││                                                 ; - com.google.re2j.Machine::step@55 (line 273)
  0.50%    0.26%     │  │││   0x00007ff4f921ec84: mov    0x10(%r12,%r11,8),%r9d  ;*getfield inst
                     │  │││                                                 ; - com.google.re2j.Machine::step@107 (line 278)
  0.76%    1.15%     │  │││   0x00007ff4f921ec89: mov    0xc(%r12,%r9,8),%esi  ;*getfield op
                     │  │││                                                 ; - com.google.re2j.Machine::step@117 (line 280)
                     │  │││                                                 ; implicit exception: dispatches to 0x00007ff4f921ff85
  2.79%    2.52%     │  │││   0x00007ff4f921ec8e: mov    0x18(%r12,%r9,8),%ecx  ;*getfield runes
                     │  │││                                                 ; - com.google.re2j.Machine::step@320 (line 310)
  0.10%    0.10%     │  │││   0x00007ff4f921ec93: mov    0xc(%r12,%r11,8),%r14d  ;*getfield cap
                     │  │││                                                 ; - com.google.re2j.Machine::step@176 (line 287)
  0.01%    0.01%     │  │││   0x00007ff4f921ec98: lea    (%r12,%r11,8),%r10  ;*getfield thread
                     │  │││                                                 ; - com.google.re2j.Machine::step@40 (line 269)
  0.00%              │  │││   0x00007ff4f921ec9c: cmp    $0x9,%esi
                     ╰  │││   0x00007ff4f921ec9f: je     0x00007ff4f921eb50
  0.37%    0.25%        │││   0x00007ff4f921eca5: cmp    $0x9,%esi
                        │││   0x00007ff4f921eca8: jle    0x00007ff4f921ed55
  0.09%    0.04%        │││   0x00007ff4f921ecae: cmp    $0xb,%esi
                      ╭ │││   0x00007ff4f921ecb1: je     0x00007ff4f921ed31
  0.13%    0.05%      │ │││   0x00007ff4f921ecb3: cmp    $0xb,%esi
                      │ │││   0x00007ff4f921ecb6: jg     0x00007ff4f921f8d9  ;*tableswitch
                      │ │││                                                 ; - com.google.re2j.Machine::step@120 (line 280)
  0.05%    0.03%      │ │││   0x00007ff4f921ecbc: mov    %r8d,0x94(%rsp)
                      │ │││   0x00007ff4f921ecc4: mov    %edi,0x9c(%rsp)
  0.03%               │ │││   0x00007ff4f921eccb: mov    %r10,%rax          ;*ifeq
                      │ │││                                                 ; - com.google.re2j.Machine::step@373 (line 324)
  0.13%    0.02%      │ │││↗  0x00007ff4f921ecce: mov    0x10(%r12,%r9,8),%ecx  ;*getfield out
                      │ ││││                                                ; - com.google.re2j.Machine::step@380 (line 325)
  0.08%    0.03%      │ ││││  0x00007ff4f921ecd3: mov    %r14,%r9
  0.00%               │ ││││  0x00007ff4f921ecd6: shl    $0x3,%r9           ;*getfield cap
                      │ ││││                                                ; - com.google.re2j.Machine::step@176 (line 287)
  0.01%    0.00%      │ ││││  0x00007ff4f921ecda: mov    0x28(%rsp),%rsi
  0.12%    0.06%      │ ││││  0x00007ff4f921ecdf: mov    0x18(%rsp),%rdx
  0.08%    0.05%      │ ││││  0x00007ff4f921ece4: mov    0x14(%rsp),%r8d
                      │ ││││  0x00007ff4f921ece9: mov    0x90(%rsp),%edi
  0.01%               │ ││││  0x00007ff4f921ecf0: mov    %rax,(%rsp)
  0.10%    0.05%      │ ││││  0x00007ff4f921ecf4: data16 xchg %ax,%ax
  0.12%    0.04%      │ ││││  0x00007ff4f921ecf7: callq  0x00007ff4f9046020  ; OopMap{[8]=Oop [24]=Oop [40]=Oop off=540}
                      │ ││││                                                ;*invokespecial add
                      │ ││││                                                ; - com.google.re2j.Machine::step@394 (line 325)
                      │ ││││                                                ;   {optimized virtual_call}
  0.00%               │ ││││  0x00007ff4f921ecfc: test   %rax,%rax
                      │╭││││  0x00007ff4f921ecff: jne    0x00007ff4f921ed14  ;*ifnull
                      ││││││                                                ; - com.google.re2j.Machine::step@401 (line 327)
                      ││││││  0x00007ff4f921ed01: xor    %r11d,%r11d
                      ││││││  0x00007ff4f921ed04: mov    0x20(%rsp),%ecx
  0.18%    0.25%      ││││││  0x00007ff4f921ed08: mov    0x9c(%rsp),%edi
                      ││╰│││  0x00007ff4f921ed0f: jmpq   0x00007ff4f921ec1d
                      │↘ │││  0x00007ff4f921ed14: mov    %rax,0x50(%rsp)
                      │  │││  0x00007ff4f921ed19: mov    0x20(%rsp),%ecx
                      │  │││  0x00007ff4f921ed1d: mov    0x94(%rsp),%r8d
  0.00%               │  │││  0x00007ff4f921ed25: mov    0x9c(%rsp),%edi
                      │  ╰││  0x00007ff4f921ed2c: jmpq   0x00007ff4f921eb74
                      ↘   ││  0x00007ff4f921ed31: mov    0x20(%rsp),%ecx
                          ││  0x00007ff4f921ed35: cmp    $0xa,%ecx
                          ╰│  0x00007ff4f921ed38: je     0x00007ff4f921eb6f  ;*if_icmpeq
                           │                                                ; - com.google.re2j.Machine::step@348 (line 318)
                           │  0x00007ff4f921ed3e: mov    %r8d,0x94(%rsp)
                           │  0x00007ff4f921ed46: mov    %edi,0x9c(%rsp)
                           │  0x00007ff4f921ed4d: mov    %r10,%rax
                           ╰  0x00007ff4f921ed50: jmpq   0x00007ff4f921ecce
  0.11%    0.15%              0x00007ff4f921ed55: cmp    $0x7,%esi
....................................................................................................
 22.25%   21.69%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 494 (396 bytes) 

                          0x00007ff4f92168cc: mov    %r10,(%rsp)
                          0x00007ff4f92168d0: data16 xchg %ax,%ax
                          0x00007ff4f92168d3: callq  0x00007ff4f9046020  ; OopMap{off=504}
                                                                        ;*invokespecial add
                                                                        ; - com.google.re2j.Machine::add@203 (line 369)
                                                                        ;   {optimized virtual_call}
                  ╭       0x00007ff4f92168d8: jmpq   0x00007ff4f9216a68
                  │       0x00007ff4f92168dd: mov    0x70(%rsp),%rax
                  │╭      0x00007ff4f92168e2: jmpq   0x00007ff4f9216a68  ;*tableswitch
                  ││                                                    ; - com.google.re2j.Machine::add@40 (line 349)
  0.54%    0.57%  ││      0x00007ff4f92168e7: mov    0x1c(%rsp),%r8d
  0.03%    0.03%  ││      0x00007ff4f92168ec: mov    0x20(%rsp),%r9
  0.02%    0.03%  ││      0x00007ff4f92168f1: mov    0x28(%rsp),%edi
                  ││      0x00007ff4f92168f5: mov    0x70(%rsp),%r10
  0.26%    0.33%  ││      0x00007ff4f92168fa: mov    %r10,(%rsp)
  0.02%    0.03%  ││      0x00007ff4f92168fe: mov    %rsi,%rbp
  0.03%    0.01%  ││      0x00007ff4f9216901: xchg   %ax,%ax
           0.00%  ││      0x00007ff4f9216903: callq  0x00007ff4f9046020  ; OopMap{rbp=Oop [32]=Oop [56]=Oop [64]=Oop off=552}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@127 (line 358)
                  ││                                                    ;   {optimized virtual_call}
  0.19%    0.10%  ││      0x00007ff4f9216908: mov    0x38(%rsp),%r10
  0.14%    0.16%  ││      0x00007ff4f921690d: mov    0x14(%r10),%ecx    ;*getfield arg
                  ││                                                    ; - com.google.re2j.Machine::add@136 (line 359)
  0.00%           ││      0x00007ff4f9216911: mov    %rbp,%rsi
  0.22%    0.17%  ││      0x00007ff4f9216914: mov    0x40(%rsp),%rdx
  0.13%    0.16%  ││      0x00007ff4f9216919: mov    0x1c(%rsp),%r8d
  0.01%           ││      0x00007ff4f921691e: mov    0x20(%rsp),%r9
                  ││      0x00007ff4f9216923: mov    0x28(%rsp),%edi
  0.31%    0.13%  ││      0x00007ff4f9216927: mov    %rax,(%rsp)
  0.17%    0.15%  ││      0x00007ff4f921692b: callq  0x00007ff4f9046020  ; OopMap{off=592}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@146 (line 359)
                  ││                                                    ;   {optimized virtual_call}
  0.01%    0.01%  ││╭     0x00007ff4f9216930: jmpq   0x00007ff4f9216a68  ;*aload
                  │││                                                   ; - com.google.re2j.Machine::add@293 (line 388)
  1.82%    2.15%  │││     0x00007ff4f9216935: mov    0x38(%rsp),%r10
  0.01%           │││     0x00007ff4f921693a: mov    %r10,%r9
  0.01%    0.01%  │││     0x00007ff4f921693d: shr    $0x3,%r9           ;*putfield inst
                  │││                                                   ; - com.google.re2j.Machine::alloc@47 (line 151)
                  │││                                                   ; - com.google.re2j.Machine::add@301 (line 389)
                  │││     0x00007ff4f9216941: mov    0x70(%rsp),%r13
  0.74%    0.76%  │││     0x00007ff4f9216946: test   %r13,%r13
                  │││╭    0x00007ff4f9216949: je     0x00007ff4f9216969  ;*ifnonnull
                  ││││                                                  ; - com.google.re2j.Machine::add@295 (line 388)
                  ││││    0x00007ff4f921694b: mov    %r9d,0x10(%r13)
                  ││││    0x00007ff4f921694f: mov    %r13,%r10
                  ││││    0x00007ff4f9216952: shr    $0x9,%r10
  0.16%    0.15%  ││││    0x00007ff4f9216956: movabs $0x7ff50a6cc000,%r11
                  ││││    0x00007ff4f9216960: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                  ││││                                                  ; - com.google.re2j.Machine::add@313 (line 391)
  0.00%    0.00%  ││││╭   0x00007ff4f9216964: jmpq   0x00007ff4f92169f4
  0.00%           │││↘│   0x00007ff4f9216969: mov    0x20(%rsi),%ebp    ;*getfield pool
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@1 (line 147)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
  0.01%           │││ │   0x00007ff4f921696c: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007ff4f9216e81
                  │││ │   0x00007ff4f9216971: cmp    $0xf8002f22,%r10d  ;   {metadata(&apos;java/util/ArrayList&apos;)}
                  │││ │   0x00007ff4f9216978: jne    0x00007ff4f9216c99
  0.58%    0.55%  │││ │   0x00007ff4f921697e: lea    (%r12,%rbp,8),%r10  ;*invokeinterface size
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@4 (line 147)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
                  │││ │   0x00007ff4f9216982: mov    0x10(%r10),%edi    ;*getfield size
                  │││ │                                                 ; - java.util.ArrayList::size@1 (line 278)
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@4 (line 147)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
                  │││ │   0x00007ff4f9216986: test   %edi,%edi
                  │││ │   0x00007ff4f9216988: jle    0x00007ff4f9216cfd  ;*ifle
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@11 (line 148)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
  0.00%           │││ │   0x00007ff4f921698e: mov    %edi,%r8d
  0.52%    0.52%  │││ │   0x00007ff4f9216991: dec    %r8d               ;*isub
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@20 (line 148)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
                  │││ │   0x00007ff4f9216994: cmp    %edi,%r8d
                  │││ │   0x00007ff4f9216997: jge    0x00007ff4f9216d25  ;*if_icmplt
                  │││ │                                                 ; - java.util.ArrayList::rangeCheck@5 (line 652)
                  │││ │                                                 ; - java.util.ArrayList::remove@2 (line 492)
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@21 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
  0.00%           │││ │   0x00007ff4f921699d: incl   0xc(%r10)          ;*putfield modCount
                  │││ │                                                 ; - java.util.ArrayList::remove@12 (line 494)
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@21 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
  0.62%    0.47%  │││ │   0x00007ff4f92169a1: mov    0x14(%r10),%ebp    ;*getfield elementData
                  │││ │                                                 ; - java.util.ArrayList::elementData@1 (line 418)
                  │││ │                                                 ; - java.util.ArrayList::remove@17 (line 495)
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@21 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
                  │││ │   0x00007ff4f92169a5: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007ff4f9216e91
  0.01%           │││ │   0x00007ff4f92169aa: cmp    %r11d,%r8d
                  │││ │   0x00007ff4f92169ad: jae    0x00007ff4f9216c71  ;*aaload
                  │││ │                                                 ; - java.util.ArrayList::elementData@5 (line 418)
                  │││ │                                                 ; - java.util.ArrayList::remove@17 (line 495)
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@21 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
  0.52%    0.53%  │││ │   0x00007ff4f92169b3: mov    %r8d,0x10(%r10)    ;*putfield size
                  │││ │                                                 ; - java.util.ArrayList::remove@62 (line 501)
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@21 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
                  │││ │   0x00007ff4f92169b7: lea    (%r12,%rbp,8),%r10
                  │││ │   0x00007ff4f92169bb: mov    0xc(%r10,%rdi,4),%ebp  ;*aaload
                  │││ │                                                 ; - java.util.ArrayList::elementData@5 (line 418)
                  │││ │                                                 ; - java.util.ArrayList::remove@17 (line 495)
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@21 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
  0.00%           │││ │   0x00007ff4f92169c0: mov    %r12d,0xc(%r10,%rdi,4)  ;*aastore
                  │││ │                                                 ; - java.util.ArrayList::remove@66 (line 501)
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@21 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
  0.53%    0.24%  │││ │   0x00007ff4f92169c5: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007ff4f9216ea5
  0.04%    0.02%  │││ │   0x00007ff4f92169ca: cmp    $0xf8019b16,%r10d  ;   {metadata(&apos;com/google/re2j/Machine$Thread&apos;)}
                  │││ │   0x00007ff4f92169d1: jne    0x00007ff4f9216db9
  0.02%    0.02%  │││ │   0x00007ff4f92169d7: lea    (%r12,%rbp,8),%r13  ;*checkcast
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@26 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
                  │││ │   0x00007ff4f92169db: mov    %r9d,0x10(%r13)
  0.52%    0.20%  │││ │   0x00007ff4f92169df: mov    %r13,%r10
                  │││ │   0x00007ff4f92169e2: shr    $0x9,%r10
  0.01%           │││ │   0x00007ff4f92169e6: movabs $0x7ff50a6cc000,%r11
                  │││ │   0x00007ff4f92169f0: mov    %r12b,(%r11,%r10,1)  ;*aload
                  │││ │                                                 ; - com.google.re2j.Machine::add@316 (line 393)
  0.66%    0.15%  │││ ↘   0x00007ff4f92169f4: mov    0x20(%rsp),%rdi
  0.17%    0.16%  │││     0x00007ff4f92169f9: mov    0xc(%rdi),%r10d    ;*arraylength
                  │││                                                   ; - com.google.re2j.Machine::add@318 (line 393)
                  │││                                                   ; implicit exception: dispatches to 0x00007ff4f9216e71
           0.00%  │││     0x00007ff4f92169fd: test   %r10d,%r10d
                  │││     0x00007ff4f9216a00: jle    0x00007ff4f9216cda  ;*ifle
                  │││                                                   ; - com.google.re2j.Machine::add@319 (line 393)
  0.58%    0.40%  │││     0x00007ff4f9216a06: mov    0xc(%r13),%r8d     ;*getfield cap
                  │││                                                   ; - com.google.re2j.Machine::add@324 (line 393)
  0.18%    0.17%  │││     0x00007ff4f9216a0a: lea    (%r12,%rbx,8),%rbp  ;*aaload
                  │││                                                   ; - com.google.re2j.Machine$Queue::add@24 (line 61)
                  │││                                                   ; - com.google.re2j.Machine::add@20 (line 347)
  0.00%    0.00%  │││     0x00007ff4f9216a0e: mov    %r8,%r11
           0.01%  │││     0x00007ff4f9216a11: shl    $0x3,%r11
  0.56%    0.35%  │││     0x00007ff4f9216a15: cmp    %rdi,%r11
                  │││  ╭  0x00007ff4f9216a18: je     0x00007ff4f9216a45  ;*if_acmpeq
                  │││  │                                                ; - com.google.re2j.Machine::add@329 (line 393)
  0.01%           │││  │  0x00007ff4f9216a1a: mov    0xc(%r12,%r8,8),%r9d  ; implicit exception: dispatches to 0x00007ff4f9216ebd
  0.03%    0.03%  │││  │  0x00007ff4f9216a1f: lea    (%r12,%r8,8),%rcx  ;*getfield cap
                  │││  │                                                ; - com.google.re2j.Machine::add@324 (line 393)
                  │││  │  0x00007ff4f9216a23: cmp    %r10d,%r9d
                  │││  │  0x00007ff4f9216a26: jb     0x00007ff4f9216cad
  0.68%    0.30%  │││  │  0x00007ff4f9216a2c: lea    0x10(%r12,%r8,8),%rsi
                  │││  │  0x00007ff4f9216a31: add    $0x10,%rdi
                  │││  │  0x00007ff4f9216a35: movslq %r10d,%rdx
                  │││  │  0x00007ff4f9216a38: movabs $0x7ff4f9052640,%r10
  0.50%    0.28%  │││  │  0x00007ff4f9216a42: callq  *%r10              ;*aload
                  │││  │                                                ; - com.google.re2j.Machine::add@347 (line 396)
  0.17%    0.13%  │││  ↘  0x00007ff4f9216a45: mov    %rbp,%r10
  0.04%    0.11%  │││     0x00007ff4f9216a48: mov    %r13,%r11
  0.51%    0.66%  │││     0x00007ff4f9216a4b: shr    $0x3,%r11
           0.01%  │││     0x00007ff4f9216a4f: mov    %r11d,0x10(%r12,%rbx,8)
  0.15%    0.05%  │││     0x00007ff4f9216a54: shr    $0x9,%r10
  0.07%    0.08%  │││     0x00007ff4f9216a58: movabs $0x7ff50a6cc000,%r11
  0.56%    0.73%  │││     0x00007ff4f9216a62: mov    %r12b,(%r11,%r10,1)  ;*putfield thread
                  │││                                                   ; - com.google.re2j.Machine::add@351 (line 396)
  0.00%    0.03%  │││     0x00007ff4f9216a66: xor    %eax,%eax          ;*synchronization entry
                  │││                                                   ; - com.google.re2j.Machine::add@-1 (line 341)
  0.75%    0.80%  ↘↘↘     0x00007ff4f9216a68: add    $0x60,%rsp
  0.63%    0.64%          0x00007ff4f9216a6c: pop    %rbp
  0.02%    0.00%          0x00007ff4f9216a6d: test   %eax,0x18aad58d(%rip)        # 0x00007ff511cc4000
                                                                        ;   {poll_return}
  0.56%    0.62%          0x00007ff4f9216a73: retq                      ;*tableswitch
                                                                        ; - com.google.re2j.Machine::add@40 (line 349)
                          0x00007ff4f9216a74: mov    0x1c(%rsp),%r8d
                          0x00007ff4f9216a79: mov    0x20(%rsp),%r9
                          0x00007ff4f9216a7e: mov    %ebx,%edi
                          0x00007ff4f9216a80: mov    0x70(%rsp),%r10
                          0x00007ff4f9216a85: mov    %r10,(%rsp)
                          0x00007ff4f9216a89: xchg   %ax,%ax
                          0x00007ff4f9216a8b: callq  0x00007ff4f9046020  ; OopMap{off=944}
                                                                        ;*invokespecial add
....................................................................................................
 15.05%   13.21%  <total for region 3>

....[Hottest Regions]...............................................................................
 29.09%   30.11%         C2, level 4  com.google.re2j.Machine::add, version 494 (344 bytes) 
 22.25%   21.69%         C2, level 4  com.google.re2j.Machine::step, version 499 (549 bytes) 
 15.05%   13.21%         C2, level 4  com.google.re2j.Machine::add, version 494 (396 bytes) 
  7.95%    9.89%         C2, level 4  com.google.re2j.Machine::step, version 499 (301 bytes) 
  7.63%    7.71%         C2, level 4  com.google.re2j.Machine::step, version 499 (214 bytes) 
  7.21%    7.67%         C2, level 4  com.google.re2j.Machine::match, version 545 (710 bytes) 
  3.53%    2.12%        runtime stub  StubRoutines::jint_disjoint_arraycopy (128 bytes) 
  1.74%    2.44%         C2, level 4  com.google.re2j.Machine::step, version 499 (149 bytes) 
  1.55%    1.54%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.66%    0.81%         C2, level 4  com.google.re2j.Machine::add, version 494 (39 bytes) 
  0.43%    0.11%         C2, level 4  com.google.re2j.Machine::init, version 548 (208 bytes) 
  0.21%    0.21%         C2, level 4  com.google.re2j.Machine::match, version 545 (57 bytes) 
  0.17%    0.21%         C2, level 4  com.google.re2j.Machine::step, version 499 (23 bytes) 
  0.08%    0.02%   [kernel.kallsyms]  [unknown] (1 bytes) 
  0.08%    0.01%   [kernel.kallsyms]  [unknown] (70 bytes) 
  0.08%    0.05%         C2, level 4  com.google.re2j.Machine::match, version 545 (177 bytes) 
  0.06%    0.03%   [kernel.kallsyms]  [unknown] (17 bytes) 
  0.05%    0.03%         C2, level 4  com.google.re2j.Machine::step, version 499 (39 bytes) 
  0.04%    0.02%   [kernel.kallsyms]  [unknown] (16 bytes) 
  0.04%    0.02%   [kernel.kallsyms]  [unknown] (0 bytes) 
  2.11%    2.10%  <...other 446 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 44.80%   44.14%         C2, level 4  com.google.re2j.Machine::add, version 494 
 39.79%   41.98%         C2, level 4  com.google.re2j.Machine::step, version 499 
  7.66%    8.09%         C2, level 4  com.google.re2j.Machine::match, version 545 
  3.53%    2.12%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
  2.61%    2.35%   [kernel.kallsyms]  [unknown] 
  0.53%    0.19%         C2, level 4  com.google.re2j.Machine::init, version 548 
  0.16%    0.11%         C2, level 4  com.google.re2j.Matcher::find, version 573 
  0.11%    0.07%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 635 
  0.04%    0.03%         C2, level 4  java.util.Collections::shuffle, version 587 
  0.04%    0.11%        libc-2.26.so  vfprintf 
  0.04%    0.01%              [vdso]  [unknown] 
  0.04%    0.04%      hsdis-amd64.so  [unknown] 
  0.04%    0.05%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.04%    0.08%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.03%    0.02%           libjvm.so  _ZN12outputStream15update_positionEPKcm 
  0.02%    0.01%           libjvm.so  _ZN19GenericTaskQueueSetI17OverflowTaskQueueI8StarTaskL10MemoryType1ELj131072EELS2_1EE15steal_best_of_2EjPiRS1_ 
  0.02%    0.01%        libc-2.26.so  __strchrnul_avx2 
  0.02%    0.05%           libjvm.so  _ZN13xmlTextStream5writeEPKcm 
  0.01%    0.02%        libc-2.26.so  __strlen_avx2 
  0.01%                  C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 569 
  0.44%    0.28%  <...other 72 warm methods...>
....................................................................................................
100.00%   99.76%  <totals>

....[Distribution by Source]........................................................................
 93.10%   94.60%         C2, level 4
  3.53%    2.13%        runtime stub
  2.61%    2.35%   [kernel.kallsyms]
  0.40%    0.55%           libjvm.so
  0.20%    0.27%        libc-2.26.so
  0.06%    0.05%  libpthread-2.26.so
  0.04%    0.04%      hsdis-amd64.so
  0.04%    0.01%              [vdso]
  0.01%                  interpreter
  0.00%                  C1, level 1
  0.00%                  C1, level 3
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                     Mode  Cnt     Score    Error  Units
Re2jFindRegex.testExp1       thrpt   20  5929.827 ± 43.310  ops/s
Re2jFindRegex.testExp1:·asm  thrpt            NaN             ---
