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
# Warmup Iteration   1: 4138.865 ops/s
# Warmup Iteration   2: 7379.361 ops/s
# Warmup Iteration   3: 7275.462 ops/s
# Warmup Iteration   4: 7453.662 ops/s
# Warmup Iteration   5: 7516.161 ops/s
# Warmup Iteration   6: 7505.126 ops/s
# Warmup Iteration   7: 7516.437 ops/s
# Warmup Iteration   8: 7528.255 ops/s
# Warmup Iteration   9: 7508.673 ops/s
# Warmup Iteration  10: 7505.560 ops/s
# Warmup Iteration  11: 7348.683 ops/s
# Warmup Iteration  12: 7556.097 ops/s
# Warmup Iteration  13: 7456.688 ops/s
# Warmup Iteration  14: 7459.115 ops/s
# Warmup Iteration  15: 7430.638 ops/s
# Warmup Iteration  16: 7531.026 ops/s
# Warmup Iteration  17: 7533.290 ops/s
# Warmup Iteration  18: 7510.330 ops/s
# Warmup Iteration  19: 7581.782 ops/s
# Warmup Iteration  20: 7568.055 ops/s
Iteration   1: 7606.463 ops/s
Iteration   2: 7540.554 ops/s
Iteration   3: 7371.793 ops/s
Iteration   4: 7373.159 ops/s
Iteration   5: 7369.423 ops/s
Iteration   6: 7392.201 ops/s
Iteration   7: 7377.516 ops/s
Iteration   8: 7338.506 ops/s
Iteration   9: 7338.886 ops/s
Iteration  10: 7392.527 ops/s
Iteration  11: 7403.639 ops/s
Iteration  12: 7383.032 ops/s
Iteration  13: 7351.159 ops/s
Iteration  14: 7403.126 ops/s
Iteration  15: 7377.262 ops/s
Iteration  16: 7380.463 ops/s
Iteration  17: 7389.449 ops/s
Iteration  18: 7330.125 ops/s
Iteration  19: 7409.036 ops/s
Iteration  20: 7396.740 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  7396.253 ±(99.9%) 56.828 ops/s [Average]
  (min, avg, max) = (7330.125, 7396.253, 7606.463), stdev = 65.443
  CI (99.9%): [7339.425, 7453.081] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1:·asm":
PrintAssembly processed: 212370 total address lines.
Perf output processed (skipped 22.982 seconds):
 Column 1: cycles (20513 events)
 Column 2: instructions (20497 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 523 (331 bytes) 

                       # parm4:    rdi       = int
                       # parm5:    [sp+0x70]   = &apos;com/google/re2j/Machine$Thread&apos;  (sp of caller)
                       0x00007f31d12380a0: mov    0x8(%rsi),%r10d    ;   {no_reloc}
                       0x00007f31d12380a4: shl    $0x3,%r10
                       0x00007f31d12380a8: cmp    %r10,%rax
                       0x00007f31d12380ab: jne    0x00007f31d1045e20  ;   {runtime_call}
                       0x00007f31d12380b1: data16 xchg %ax,%ax
                       0x00007f31d12380b4: nopl   0x0(%rax,%rax,1)
                       0x00007f31d12380bc: data16 data16 xchg %ax,%ax
                     [Verified Entry Point]
  0.47%    0.49%       0x00007f31d12380c0: mov    %eax,-0x14000(%rsp)
  0.87%    0.72%       0x00007f31d12380c7: push   %rbp
  0.38%    0.48%       0x00007f31d12380c8: sub    $0x60,%rsp         ;*synchronization entry
                                                                     ; - com.google.re2j.Machine::add@-1 (line 341)
  0.39%    0.20%       0x00007f31d12380cc: mov    %edi,0x28(%rsp)
  0.68%    0.55%       0x00007f31d12380d0: mov    %r9,0x20(%rsp)
  0.35%    0.52%       0x00007f31d12380d5: mov    %r8d,0x1c(%rsp)
  0.07%    0.10%       0x00007f31d12380da: mov    %rsi,0x8(%rsp)
  0.32%    0.16%       0x00007f31d12380df: test   %ecx,%ecx
                       0x00007f31d12380e1: je     0x00007f31d1238582  ;*ifne
                                                                     ; - com.google.re2j.Machine::add@1 (line 341)
  0.65%    0.57%       0x00007f31d12380e7: mov    %rdx,0x40(%rsp)
  0.38%    0.45%       0x00007f31d12380ec: mov    0x14(%rdx),%r11d   ;*getfield sparse
                                                                     ; - com.google.re2j.Machine$Queue::contains@1 (line 48)
                                                                     ; - com.google.re2j.Machine::add@9 (line 344)
                                                                     ; implicit exception: dispatches to 0x00007f31d1238785
  0.08%    0.09%       0x00007f31d12380f0: mov    0xc(%r12,%r11,8),%edi  ; implicit exception: dispatches to 0x00007f31d1238799
  0.33%    0.20%       0x00007f31d12380f5: cmp    %edi,%ecx
                  ╭    0x00007f31d12380f7: jae    0x00007f31d123821d  ;*iaload
                  │                                                  ; - com.google.re2j.Machine$Queue::contains@5 (line 48)
                  │                                                  ; - com.google.re2j.Machine::add@9 (line 344)
  0.62%    0.62%  │    0x00007f31d12380fd: mov    0x10(%rdx),%r9d    ;*getfield dense
                  │                                                  ; - com.google.re2j.Machine$Queue::contains@18 (line 52)
                  │                                                  ; - com.google.re2j.Machine::add@9 (line 344)
  0.38%    0.65%  │    0x00007f31d1238101: mov    0xc(%rdx),%r8d     ;*getfield size
                  │                                                  ; - com.google.re2j.Machine$Queue::contains@9 (line 49)
                  │                                                  ; - com.google.re2j.Machine::add@9 (line 344)
  0.11%    0.12%  │    0x00007f31d1238105: lea    (%r12,%r11,8),%rdx
  0.30%    0.18%  │    0x00007f31d1238109: mov    0x10(%rdx,%rcx,4),%ebp  ;*iaload
                  │                                                  ; - com.google.re2j.Machine$Queue::contains@5 (line 48)
                  │                                                  ; - com.google.re2j.Machine::add@9 (line 344)
  0.52%    0.70%  │    0x00007f31d123810d: cmp    %r8d,%ebp
                  │╭   0x00007f31d1238110: jl     0x00007f31d12381f0  ;*iastore
                  ││                                                 ; - com.google.re2j.Machine$Queue::add@18 (line 60)
                  ││                                                 ; - com.google.re2j.Machine::add@20 (line 347)
  0.40%    0.46%  ││↗  0x00007f31d1238116: mov    %r8d,%r10d
  0.09%    0.09%  │││  0x00007f31d1238119: inc    %r10d
  0.33%    0.15%  │││  0x00007f31d123811c: mov    0x40(%rsp),%rbx
  1.01%    0.69%  │││  0x00007f31d1238121: mov    %r10d,0xc(%rbx)    ;*putfield size
                  │││                                                ; - com.google.re2j.Machine$Queue::add@8 (line 59)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.43%    0.32%  │││  0x00007f31d1238125: cmp    %edi,%ecx
                  │││  0x00007f31d1238127: jae    0x00007f31d1238259
  0.09%    0.12%  │││  0x00007f31d123812d: mov    %r8d,0x10(%rdx,%rcx,4)  ;*iastore
                  │││                                                ; - com.google.re2j.Machine$Queue::add@18 (line 60)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.26%    0.18%  │││  0x00007f31d1238132: mov    0xc(%r12,%r9,8),%r11d  ; implicit exception: dispatches to 0x00007f31d12387ad
  0.58%    0.42%  │││  0x00007f31d1238137: cmp    %r11d,%r8d
                  │││  0x00007f31d123813a: jae    0x00007f31d12382a5
  0.37%    0.34%  │││  0x00007f31d1238140: lea    (%r12,%r9,8),%r10
  0.08%    0.10%  │││  0x00007f31d1238144: mov    0x10(%r10,%r8,4),%r13d  ;*aaload
                  │││                                                ; - com.google.re2j.Machine$Queue::add@24 (line 61)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.29%    0.32%  │││  0x00007f31d1238149: test   %r13d,%r13d
                  │││  0x00007f31d123814c: je     0x00007f31d12385a9  ;*ifnonnull
                  │││                                                ; - com.google.re2j.Machine$Queue::add@27 (line 62)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.56%    0.58%  │││  0x00007f31d1238152: mov    %ecx,0xc(%r12,%r13,8)  ;*putfield pc
                  │││                                                ; - com.google.re2j.Machine$Queue::add@52 (line 66)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.48%    0.62%  │││  0x00007f31d1238157: mov    0x14(%rsi),%r11d   ;*getfield prog
                  │││                                                ; - com.google.re2j.Machine::add@26 (line 348)
  0.08%    0.11%  │││  0x00007f31d123815b: mov    %r12d,0x10(%r12,%r13,8)  ;*putfield thread
                  │││                                                ; - com.google.re2j.Machine$Queue::add@47 (line 65)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.48%    0.52%  │││  0x00007f31d1238160: mov    0x14(%r12,%r11,8),%ebp  ;*getfield inst
                  │││                                                ; - com.google.re2j.Prog::getInst@1 (line 29)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 348)
                  │││                                                ; implicit exception: dispatches to 0x00007f31d12387c1
  0.62%    0.73%  │││  0x00007f31d1238165: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f31d12387d5
  0.58%    0.76%  │││  0x00007f31d123816a: cmp    $0xf8002f22,%r10d  ;   {metadata(&apos;java/util/ArrayList&apos;)}
                  │││  0x00007f31d1238171: jne    0x00007f31d1238329
  0.18%    0.20%  │││  0x00007f31d1238177: lea    (%r12,%rbp,8),%r10  ;*invokeinterface get
                  │││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.39%    0.37%  │││  0x00007f31d123817b: mov    0x10(%r10),%ebp    ;*getfield size
                  │││                                                ; - java.util.ArrayList::rangeCheck@2 (line 652)
                  │││                                                ; - java.util.ArrayList::get@2 (line 429)
                  │││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.52%    0.49%  │││  0x00007f31d123817f: cmp    %ebp,%ecx
                  │││  0x00007f31d1238181: jge    0x00007f31d12385f1  ;*if_icmplt
                  │││                                                ; - java.util.ArrayList::rangeCheck@5 (line 652)
                  │││                                                ; - java.util.ArrayList::get@2 (line 429)
                  │││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.57%    0.76%  │││  0x00007f31d1238187: mov    0x14(%r10),%ebp    ;*getfield elementData
                  │││                                                ; - java.util.ArrayList::elementData@1 (line 418)
                  │││                                                ; - java.util.ArrayList::get@7 (line 431)
                  │││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.07%    0.03%  │││  0x00007f31d123818b: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f31d12387e9
  1.24%    1.08%  │││  0x00007f31d1238190: cmp    %r10d,%ecx
                  │││  0x00007f31d1238193: jae    0x00007f31d12382ed
  1.06%    1.32%  │││  0x00007f31d1238199: lea    (%r12,%rbp,8),%r10
  0.18%    0.20%  │││  0x00007f31d123819d: mov    0x10(%r10,%rcx,4),%ebp  ;*aaload
                  │││                                                ; - java.util.ArrayList::elementData@5 (line 418)
                  │││                                                ; - java.util.ArrayList::get@7 (line 431)
                  │││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.59%    0.57%  │││  0x00007f31d12381a2: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f31d12387fd
  3.48%    3.36%  │││  0x00007f31d12381a7: cmp    $0xf80197c3,%r11d  ;   {metadata(&apos;com/google/re2j/Inst&apos;)}
                  │││  0x00007f31d12381ae: jne    0x00007f31d1238749
  0.93%    0.99%  │││  0x00007f31d12381b4: lea    (%r12,%rbp,8),%r10  ;*checkcast
                  │││                                                ; - com.google.re2j.Prog::getInst@10 (line 29)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.06%    0.05%  │││  0x00007f31d12381b8: mov    %r10,0x38(%rsp)
  0.02%    0.02%  │││  0x00007f31d12381bd: mov    0xc(%r10),%r8d     ;*getfield op
                  │││                                                ; - com.google.re2j.Machine::add@37 (line 349)
  0.23%    0.13%  │││  0x00007f31d12381c1: mov    %r8d,%r10d
  0.97%    1.05%  │││  0x00007f31d12381c4: dec    %r10d
  0.13%    0.10%  │││  0x00007f31d12381c7: cmp    $0xb,%r10d
                  │││  0x00007f31d12381cb: jae    0x00007f31d1238319  ;*tableswitch
                  │││                                                ; - com.google.re2j.Machine::add@40 (line 349)
  0.88%    0.90%  │││  0x00007f31d12381d1: mov    0x38(%rsp),%r10
  0.21%    0.19%  │││  0x00007f31d12381d6: mov    0x14(%r10),%r11d   ;*getfield arg
                  │││                                                ; - com.google.re2j.Machine::add@156 (line 363)
  2.75%    3.16%  │││  0x00007f31d12381da: mov    0x10(%r10),%ecx    ;*getfield out
                  │││                                                ; - com.google.re2j.Machine::add@193 (line 369)
  0.04%    0.02%  │││  0x00007f31d12381de: movslq %r8d,%r8
  0.01%    0.01%  │││  0x00007f31d12381e1: movabs $0x7f31d1238040,%r10  ;   {section_word}
  0.19%    0.04%  │││  0x00007f31d12381eb: jmpq   *-0x8(%r10,%r8,8)  ;*tableswitch
                  │││                                                ; - com.google.re2j.Machine::add@40 (line 349)
  0.00%           │↘│  0x00007f31d12381f0: mov    0xc(%r12,%r9,8),%ebx  ; implicit exception: dispatches to 0x00007f31d12388a5
  0.00%           │ │  0x00007f31d12381f5: cmp    %ebx,%ebp
                  │ │  0x00007f31d12381f7: jae    0x00007f31d1238731
           0.00%  │ │  0x00007f31d12381fd: lea    (%r12,%r9,8),%r10
           0.00%  │ │  0x00007f31d1238201: mov    0x10(%r10,%rbp,4),%ebp  ;*aaload
                  │ │                                                ; - com.google.re2j.Machine$Queue::contains@22 (line 52)
                  │ │                                                ; - com.google.re2j.Machine::add@9 (line 344)
           0.00%  │ │  0x00007f31d1238206: mov    0xc(%r12,%rbp,8),%ebx  ; implicit exception: dispatches to 0x00007f31d12388b5
  0.05%    0.01%  │ │  0x00007f31d123820b: cmp    %ecx,%ebx
                  │ ╰  0x00007f31d123820d: jne    0x00007f31d1238116
                  │    0x00007f31d1238213: mov    0x70(%rsp),%rax
                  │    0x00007f31d1238218: jmpq   0x00007f31d1238558
                  ↘    0x00007f31d123821d: mov    $0xffffffe4,%esi
                       0x00007f31d1238222: mov    0x8(%rsp),%rbp
                       0x00007f31d1238227: mov    %r8d,0x14(%rsp)
                       0x00007f31d123822c: mov    %r9,0x18(%rsp)
                       0x00007f31d1238231: mov    0x28(%rsp),%r8d
                       0x00007f31d1238236: mov    %r8d,0x20(%rsp)
                       0x00007f31d123823b: mov    %rdx,0x28(%rsp)
....................................................................................................
 28.38%   28.37%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 530 (549 bytes) 

                              # parm6:    [sp+0x98]   = int
                              # parm7:    [sp+0xa0]   = boolean
                              0x00007f31d1244120: mov    0x8(%rsi),%r10d
                              0x00007f31d1244124: shl    $0x3,%r10
                              0x00007f31d1244128: cmp    %r10,%rax
                              0x00007f31d124412b: jne    0x00007f31d1045e20  ;   {runtime_call}
                              0x00007f31d1244131: data16 xchg %ax,%ax
                              0x00007f31d1244134: nopl   0x0(%rax,%rax,1)
                              0x00007f31d124413c: data16 data16 xchg %ax,%ax
                            [Verified Entry Point]
  0.07%    0.03%              0x00007f31d1244140: mov    %eax,-0x14000(%rsp)
  0.07%    0.07%              0x00007f31d1244147: push   %rbp
  0.03%    0.01%              0x00007f31d1244148: sub    $0x80,%rsp         ;*synchronization entry
                                                                            ; - com.google.re2j.Machine::step@-1 (line 263)
  0.03%    0.01%              0x00007f31d124414f: mov    %edi,0x20(%rsp)
  0.08%    0.20%              0x00007f31d1244153: mov    %r9d,0x14(%rsp)
  0.02%    0.03%              0x00007f31d1244158: mov    %rcx,0x18(%rsp)
  0.03%    0.03%              0x00007f31d124415d: mov    %r8d,0x10(%rsp)
  0.04%    0.02%              0x00007f31d1244162: mov    %rdx,0x8(%rsp)
  0.10%    0.15%              0x00007f31d1244167: mov    %rsi,0x28(%rsp)
  0.03%                       0x00007f31d124416c: mov    0x10(%rsi),%r10d   ;*getfield re2
                                                                            ; - com.google.re2j.Machine::step@1 (line 263)
  0.02%    0.02%              0x00007f31d1244170: movzbl 0x18(%r12,%r10,8),%r11d  ;*getfield longest
                                                                            ; - com.google.re2j.Machine::step@4 (line 263)
                                                                            ; implicit exception: dispatches to 0x00007f31d12456a9
  0.02%    0.01%              0x00007f31d1244176: mov    %r11d,0x24(%rsp)
  0.18%    0.11%              0x00007f31d124417b: mov    0xc(%rdx),%r11d    ; implicit exception: dispatches to 0x00007f31d12456b9
  0.02%    0.00%              0x00007f31d124417f: test   %r11d,%r11d
                              0x00007f31d1244182: jle    0x00007f31d1244514  ;*if_icmpge
                                                                            ; - com.google.re2j.Machine::step@18 (line 264)
  0.01%    0.05%              0x00007f31d1244188: xor    %r8d,%r8d
  0.00%    0.01%  ╭           0x00007f31d124418b: jmpq   0x00007f31d124427c
  0.26%    0.20%  │  ↗        0x00007f31d1244190: mov    0xc(%r12,%rcx,8),%ebx  ; implicit exception: dispatches to 0x00007f31d1245699
  1.52%    1.63%  │  │        0x00007f31d1244195: test   %ebx,%ebx
                  │  │        0x00007f31d1244197: jbe    0x00007f31d1244e81  ;*iaload
                  │  │                                                      ; - com.google.re2j.Machine::step@324 (line 310)
  0.33%    0.43%  │  │        0x00007f31d124419d: mov    0x10(%r12,%rcx,8),%r11d
                  │  │        0x00007f31d12441a2: mov    0x20(%rsp),%ecx
                  │  │        0x00007f31d12441a6: cmp    %r11d,%ecx
                  │  │        0x00007f31d12441a9: je     0x00007f31d1244b08  ;*goto
                  │  │                                                      ; - com.google.re2j.Machine::step@313 (line 307)
  0.39%    0.32%  │  │    ↗   0x00007f31d12441af: mov    %r10,0x50(%rsp)    ;*aload
                  │  │    │                                                 ; - com.google.re2j.Machine::step@399 (line 327)
  0.13%    0.28%  │  │   ↗│   0x00007f31d12441b4: mov    0x28(%rsp),%r10
           0.01%  │  │   ││   0x00007f31d12441b9: mov    0x20(%r10),%ebp    ;*getfield pool
                  │  │   ││                                                 ; - com.google.re2j.Machine::step@405 (line 329)
  0.01%    0.00%  │  │   ││   0x00007f31d12441bd: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f31d12455d5
  0.78%    0.81%  │  │   ││   0x00007f31d12441c2: cmp    $0xf8002f22,%r10d  ;   {metadata(&apos;java/util/ArrayList&apos;)}
                  │  │   ││   0x00007f31d12441c9: jne    0x00007f31d1244c7d
  0.11%    0.20%  │  │   ││   0x00007f31d12441cf: lea    (%r12,%rbp,8),%r9  ;*invokeinterface add
                  │  │   ││                                                 ; - com.google.re2j.Machine::step@410 (line 329)
           0.00%  │  │   ││   0x00007f31d12441d3: mov    0x14(%r9),%edx     ;*getfield elementData
                  │  │   ││                                                 ; - java.util.ArrayList::ensureCapacityInternal@1 (line 223)
                  │  │   ││                                                 ; - java.util.ArrayList::add@7 (line 458)
                  │  │   ││                                                 ; - com.google.re2j.Machine::step@410 (line 329)
  0.01%    0.02%  │  │   ││   0x00007f31d12441d7: mov    0x10(%r9),%ebp     ;*getfield size
                  │  │   ││                                                 ; - java.util.ArrayList::add@2 (line 458)
                  │  │   ││                                                 ; - com.google.re2j.Machine::step@410 (line 329)
  0.76%    1.04%  │  │   ││   0x00007f31d12441db: mov    %ebp,%r11d
  0.07%    0.09%  │  │   ││   0x00007f31d12441de: inc    %r11d              ;*iadd
                  │  │   ││                                                 ; - java.util.ArrayList::add@6 (line 458)
                  │  │   ││                                                 ; - com.google.re2j.Machine::step@410 (line 329)
  0.06%    0.11%  │  │   ││   0x00007f31d12441e1: cmp    $0xed9f0db7,%edx   ;   {oop(a &apos;java/lang/Object&apos;[0] )}
                  │  │   ││   0x00007f31d12441e7: je     0x00007f31d1244ae8  ;*if_acmpne
                  │  │   ││                                                 ; - java.util.ArrayList::ensureCapacityInternal@7 (line 223)
                  │  │   ││                                                 ; - java.util.ArrayList::add@7 (line 458)
                  │  │   ││                                                 ; - com.google.re2j.Machine::step@410 (line 329)
           0.01%  │  │   ││   0x00007f31d12441ed: mov    %r11d,%esi         ;*aload_0
                  │  │   ││                                                 ; - java.util.ArrayList::ensureCapacityInternal@17 (line 227)
                  │  │   ││                                                 ; - java.util.ArrayList::add@7 (line 458)
                  │  │   ││                                                 ; - com.google.re2j.Machine::step@410 (line 329)
  0.42%    0.48%  │  │   ││   0x00007f31d12441f0: mov    0xc(%r9),%ebx      ;*getfield modCount
                  │  │   ││                                                 ; - java.util.ArrayList::ensureExplicitCapacity@2 (line 231)
                  │  │   ││                                                 ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                  │  │   ││                                                 ; - java.util.ArrayList::add@7 (line 458)
                  │  │   ││                                                 ; - com.google.re2j.Machine::step@410 (line 329)
  0.11%    0.14%  │  │   ││   0x00007f31d12441f4: inc    %ebx
  0.05%    0.12%  │  │   ││   0x00007f31d12441f6: mov    %ebx,0xc(%r9)      ;*putfield modCount
                  │  │   ││                                                 ; - java.util.ArrayList::ensureExplicitCapacity@7 (line 231)
                  │  │   ││                                                 ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                  │  │   ││                                                 ; - java.util.ArrayList::add@7 (line 458)
                  │  │   ││                                                 ; - com.google.re2j.Machine::step@410 (line 329)
  0.09%    0.09%  │  │   ││   0x00007f31d12441fa: mov    0xc(%r12,%rdx,8),%eax  ;*arraylength
                  │  │   ││                                                 ; - java.util.ArrayList::ensureExplicitCapacity@15 (line 234)
                  │  │   ││                                                 ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                  │  │   ││                                                 ; - java.util.ArrayList::add@7 (line 458)
                  │  │   ││                                                 ; - com.google.re2j.Machine::step@410 (line 329)
                  │  │   ││                                                 ; implicit exception: dispatches to 0x00007f31d12455e5
  0.45%    0.53%  │  │   ││   0x00007f31d12441ff: mov    %esi,%r10d
  0.04%    0.03%  │  │   ││   0x00007f31d1244202: sub    %eax,%r10d
  0.24%    0.25%  │  │   ││   0x00007f31d1244205: test   %r10d,%r10d
                  │  │   ││   0x00007f31d1244208: jg     0x00007f31d124484e  ;*ifle
                  │  │   ││                                                 ; - java.util.ArrayList::ensureExplicitCapacity@17 (line 234)
                  │  │   ││                                                 ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                  │  │   ││                                                 ; - java.util.ArrayList::add@7 (line 458)
                  │  │   ││                                                 ; - com.google.re2j.Machine::step@410 (line 329)
  0.11%    0.12%  │  │   ││   0x00007f31d124420e: mov    %rdx,%r10
  0.36%    0.40%  │  │   ││   0x00007f31d1244211: shl    $0x3,%r10          ;*return
                  │  │   ││                                                 ; - java.util.ArrayList::ensureExplicitCapacity@25 (line 236)
                  │  │   ││                                                 ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                  │  │   ││                                                 ; - java.util.ArrayList::add@7 (line 458)
                  │  │   ││                                                 ; - com.google.re2j.Machine::step@410 (line 329)
  0.02%    0.06%  │  │   ││   0x00007f31d1244215: mov    %r11d,0x10(%r9)    ;*putfield size
                  │  │   ││                                                 ; - java.util.ArrayList::add@22 (line 459)
                  │  │   ││                                                 ; - com.google.re2j.Machine::step@410 (line 329)
  0.06%    0.05%  │  │   ││   0x00007f31d1244219: mov    0xc(%r10),%r11d    ; implicit exception: dispatches to 0x00007f31d12455f5
  0.10%    0.15%  │  │   ││   0x00007f31d124421d: cmp    %r11d,%ebp
                  │  │   ││   0x00007f31d1244220: jae    0x00007f31d1244c39
  0.38%    0.40%  │  │   ││   0x00007f31d1244226: mov    0x8(%r10),%r11d
           0.03%  │  │   ││   0x00007f31d124422a: cmp    $0xf80022f5,%r11d  ;   {metadata(&apos;java/lang/Object&apos;[])}
                  │  │   ││   0x00007f31d1244231: jne    0x00007f31d1244cb9
  0.13%    0.08%  │  │   ││   0x00007f31d1244237: lea    0x10(%r10,%rbp,4),%r10
  0.03%    0.06%  │  │   ││   0x00007f31d124423c: mov    0x50(%rsp),%r11
  0.34%    0.33%  │  │   ││   0x00007f31d1244241: shr    $0x3,%r11
  0.02%    0.02%  │  │   ││   0x00007f31d1244245: mov    %r11d,(%r10)
  0.35%    0.36%  │  │   ││   0x00007f31d1244248: shr    $0x9,%r10
           0.01%  │  │   ││   0x00007f31d124424c: movabs $0x7f31e205c000,%r11
  0.32%    0.24%  │  │   ││   0x00007f31d1244256: mov    %r12b,(%r11,%r10,1)  ;*aastore
                  │  │   ││                                                 ; - java.util.ArrayList::add@26 (line 459)
                  │  │   ││                                                 ; - com.google.re2j.Machine::step@410 (line 329)
  0.19%    0.21%  │  │   ││   0x00007f31d124425a: xor    %r11d,%r11d        ; OopMap{[8]=Oop [24]=Oop [40]=Oop off=317}
                  │  │   ││                                                 ;*goto
                  │  │   ││                                                 ; - com.google.re2j.Machine::step@419 (line 264)
  0.01%    0.00%  │ ↗│  ↗││   0x00007f31d124425d: test   %eax,0x1840fd9d(%rip)        # 0x00007f31e9654000
                  │ ││  │││                                                 ;*goto
                  │ ││  │││                                                 ; - com.google.re2j.Machine::step@419 (line 264)
                  │ ││  │││                                                 ;   {poll}
  0.54%    0.73%  │ ││  │││   0x00007f31d1244263: mov    0x8(%rsp),%r10
  0.57%    0.32%  │ ││  │││   0x00007f31d1244268: mov    0xc(%r10),%r11d
  0.17%    0.17%  │ ││  │││   0x00007f31d124426c: cmp    %r11d,%edi
                  │ ││  │││   0x00007f31d124426f: jge    0x00007f31d1244514
           0.00%  │ ││  │││   0x00007f31d1244275: mov    %ecx,0x20(%rsp)
  0.54%    0.50%  │ ││  │││   0x00007f31d1244279: mov    %edi,%r8d          ;*aload_1
                  │ ││  │││                                                 ; - com.google.re2j.Machine::step@21 (line 265)
  0.52%    0.27%  ↘ ││  │││   0x00007f31d124427c: mov    0x8(%rsp),%r10
  0.25%    0.24%    ││  │││   0x00007f31d1244281: mov    0x10(%r10),%r10d   ;*getfield dense
                    ││  │││                                                 ; - com.google.re2j.Machine::step@22 (line 265)
  0.40%    0.48%    ││  │││   0x00007f31d1244285: mov    0xc(%r12,%r10,8),%r9d  ; implicit exception: dispatches to 0x00007f31d12455a1
  1.34%    1.42%    ││  │││   0x00007f31d124428a: cmp    %r9d,%r8d
                    ││  │││   0x00007f31d124428d: jae    0x00007f31d1244b67
  0.69%    0.77%    ││  │││   0x00007f31d1244293: shl    $0x3,%r10
  0.12%    0.17%    ││  │││   0x00007f31d1244297: mov    0x10(%r10,%r8,4),%r10d  ;*aaload
                    ││  │││                                                 ; - com.google.re2j.Machine::step@27 (line 265)
  0.04%    0.03%    ││  │││   0x00007f31d124429c: mov    0x10(%r12,%r10,8),%r11d  ;*getfield thread
                    ││  │││                                                 ; - com.google.re2j.Machine::step@40 (line 269)
                    ││  │││                                                 ; implicit exception: dispatches to 0x00007f31d1245615
  1.99%    2.17%    ││  │││   0x00007f31d12442a1: mov    %r8d,%edi
  0.33%    0.32%    ││  │││   0x00007f31d12442a4: inc    %edi               ;*iadd
                    ││  │││                                                 ; - com.google.re2j.Machine::step@241 (line 293)
  0.20%    0.17%    ││  │││   0x00007f31d12442a6: test   %r11d,%r11d
                   ╭││  │││   0x00007f31d12442a9: jne    0x00007f31d12442b6  ;*ifnonnull
                   │││  │││                                                 ; - com.google.re2j.Machine::step@47 (line 270)
  0.40%    0.33%   │││  │││   0x00007f31d12442ab: mov    0x24(%rsp),%r11d
  0.23%    0.19%   │││  │││   0x00007f31d12442b0: mov    0x20(%rsp),%ecx
  0.02%    0.01%   │╰│  │││   0x00007f31d12442b4: jmp    0x00007f31d124425d
  0.04%    0.05%   ↘ │  │││   0x00007f31d12442b6: mov    0x24(%rsp),%r9d
  0.18%    0.14%     │  │││   0x00007f31d12442bb: test   %r9d,%r9d
                     │  │││   0x00007f31d12442be: jne    0x00007f31d1244ecd  ;*ifeq
                     │  │││                                                 ; - com.google.re2j.Machine::step@55 (line 273)
  0.39%    0.22%     │  │││   0x00007f31d12442c4: mov    0x10(%r12,%r11,8),%r9d  ;*getfield inst
                     │  │││                                                 ; - com.google.re2j.Machine::step@107 (line 278)
  0.81%    0.86%     │  │││   0x00007f31d12442c9: mov    0xc(%r12,%r9,8),%esi  ;*getfield op
                     │  │││                                                 ; - com.google.re2j.Machine::step@117 (line 280)
                     │  │││                                                 ; implicit exception: dispatches to 0x00007f31d12455c5
  2.50%    1.74%     │  │││   0x00007f31d12442ce: mov    0x18(%r12,%r9,8),%ecx  ;*getfield runes
                     │  │││                                                 ; - com.google.re2j.Machine::step@320 (line 310)
  0.11%    0.13%     │  │││   0x00007f31d12442d3: mov    0xc(%r12,%r11,8),%r14d  ;*getfield cap
                     │  │││                                                 ; - com.google.re2j.Machine::step@176 (line 287)
  0.06%    0.00%     │  │││   0x00007f31d12442d8: lea    (%r12,%r11,8),%r10  ;*getfield thread
                     │  │││                                                 ; - com.google.re2j.Machine::step@40 (line 269)
  0.04%    0.04%     │  │││   0x00007f31d12442dc: cmp    $0x9,%esi
                     ╰  │││   0x00007f31d12442df: je     0x00007f31d1244190
  0.37%    0.26%        │││   0x00007f31d12442e5: cmp    $0x9,%esi
                        │││   0x00007f31d12442e8: jle    0x00007f31d1244395
  0.08%    0.02%        │││   0x00007f31d12442ee: cmp    $0xb,%esi
                      ╭ │││   0x00007f31d12442f1: je     0x00007f31d1244371
  0.10%    0.02%      │ │││   0x00007f31d12442f3: cmp    $0xb,%esi
                      │ │││   0x00007f31d12442f6: jg     0x00007f31d1244f19  ;*tableswitch
                      │ │││                                                 ; - com.google.re2j.Machine::step@120 (line 280)
  0.09%    0.03%      │ │││   0x00007f31d12442fc: mov    %r8d,0x94(%rsp)
                      │ │││   0x00007f31d1244304: mov    %edi,0x9c(%rsp)
  0.02%    0.00%      │ │││   0x00007f31d124430b: mov    %r10,%rax          ;*ifeq
                      │ │││                                                 ; - com.google.re2j.Machine::step@373 (line 324)
  0.08%    0.01%      │ │││↗  0x00007f31d124430e: mov    0x10(%r12,%r9,8),%ecx  ;*getfield out
                      │ ││││                                                ; - com.google.re2j.Machine::step@380 (line 325)
  0.08%    0.03%      │ ││││  0x00007f31d1244313: mov    %r14,%r9
  0.00%               │ ││││  0x00007f31d1244316: shl    $0x3,%r9           ;*getfield cap
                      │ ││││                                                ; - com.google.re2j.Machine::step@176 (line 287)
  0.04%               │ ││││  0x00007f31d124431a: mov    0x28(%rsp),%rsi
  0.09%    0.06%      │ ││││  0x00007f31d124431f: mov    0x18(%rsp),%rdx
  0.08%    0.01%      │ ││││  0x00007f31d1244324: mov    0x14(%rsp),%r8d
                      │ ││││  0x00007f31d1244329: mov    0x90(%rsp),%edi
  0.00%    0.02%      │ ││││  0x00007f31d1244330: mov    %rax,(%rsp)
  0.08%    0.02%      │ ││││  0x00007f31d1244334: data16 xchg %ax,%ax
  0.07%    0.05%      │ ││││  0x00007f31d1244337: callq  0x00007f31d1046020  ; OopMap{[8]=Oop [24]=Oop [40]=Oop off=540}
                      │ ││││                                                ;*invokespecial add
                      │ ││││                                                ; - com.google.re2j.Machine::step@394 (line 325)
                      │ ││││                                                ;   {optimized virtual_call}
                      │ ││││  0x00007f31d124433c: test   %rax,%rax
                      │╭││││  0x00007f31d124433f: jne    0x00007f31d1244354  ;*ifnull
                      ││││││                                                ; - com.google.re2j.Machine::step@401 (line 327)
  0.00%               ││││││  0x00007f31d1244341: xor    %r11d,%r11d
                      ││││││  0x00007f31d1244344: mov    0x20(%rsp),%ecx
  0.20%    0.28%      ││││││  0x00007f31d1244348: mov    0x9c(%rsp),%edi
  0.00%               ││╰│││  0x00007f31d124434f: jmpq   0x00007f31d124425d
                      │↘ │││  0x00007f31d1244354: mov    %rax,0x50(%rsp)
                      │  │││  0x00007f31d1244359: mov    0x20(%rsp),%ecx
                      │  │││  0x00007f31d124435d: mov    0x94(%rsp),%r8d
  0.00%               │  │││  0x00007f31d1244365: mov    0x9c(%rsp),%edi
                      │  ╰││  0x00007f31d124436c: jmpq   0x00007f31d12441b4
                      ↘   ││  0x00007f31d1244371: mov    0x20(%rsp),%ecx
                          ││  0x00007f31d1244375: cmp    $0xa,%ecx
                          ╰│  0x00007f31d1244378: je     0x00007f31d12441af  ;*if_icmpeq
                           │                                                ; - com.google.re2j.Machine::step@348 (line 318)
                           │  0x00007f31d124437e: mov    %r8d,0x94(%rsp)
                           │  0x00007f31d1244386: mov    %edi,0x9c(%rsp)
                           │  0x00007f31d124438d: mov    %r10,%rax
                           ╰  0x00007f31d1244390: jmpq   0x00007f31d124430e
  0.10%    0.17%              0x00007f31d1244395: cmp    $0x7,%esi
....................................................................................................
 22.92%   22.44%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 523 (400 bytes) 

                          0x00007f31d12383b6: mov    0x70(%rsp),%r10
                          0x00007f31d12383bb: mov    %r10,(%rsp)
                          0x00007f31d12383bf: callq  0x00007f31d1046020  ; OopMap{off=804}
                                                                        ;*invokespecial add
                                                                        ; - com.google.re2j.Machine::add@203 (line 369)
                                                                        ;   {optimized virtual_call}
                  ╭       0x00007f31d12383c4: jmpq   0x00007f31d1238558
                  │       0x00007f31d12383c9: mov    0x70(%rsp),%rax
                  │╭      0x00007f31d12383ce: jmpq   0x00007f31d1238558  ;*tableswitch
                  ││                                                    ; - com.google.re2j.Machine::add@40 (line 349)
  0.71%    0.83%  ││      0x00007f31d12383d3: mov    %rbx,%rdx
  0.00%           ││      0x00007f31d12383d6: mov    0x1c(%rsp),%r8d
  0.08%    0.06%  ││      0x00007f31d12383db: mov    0x20(%rsp),%r9
  0.03%    0.05%  ││      0x00007f31d12383e0: mov    0x28(%rsp),%edi
  0.39%    0.36%  ││      0x00007f31d12383e4: mov    0x70(%rsp),%r10
           0.01%  ││      0x00007f31d12383e9: mov    %r10,(%rsp)
  0.03%    0.05%  ││      0x00007f31d12383ed: mov    %rsi,%rbp
  0.03%    0.04%  ││      0x00007f31d12383f0: data16 xchg %ax,%ax
  0.29%    0.31%  ││      0x00007f31d12383f3: callq  0x00007f31d1046020  ; OopMap{rbp=Oop [32]=Oop [56]=Oop [64]=Oop off=856}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@127 (line 358)
                  ││                                                    ;   {optimized virtual_call}
           0.00%  ││      0x00007f31d12383f8: mov    0x38(%rsp),%r10
  0.42%    0.23%  ││      0x00007f31d12383fd: mov    0x14(%r10),%ecx    ;*getfield arg
                  ││                                                    ; - com.google.re2j.Machine::add@136 (line 359)
                  ││      0x00007f31d1238401: mov    %rbp,%rsi
  0.00%           ││      0x00007f31d1238404: mov    0x40(%rsp),%rdx
  0.19%    0.06%  ││      0x00007f31d1238409: mov    0x1c(%rsp),%r8d
  0.17%    0.28%  ││      0x00007f31d123840e: mov    0x20(%rsp),%r9
                  ││      0x00007f31d1238413: mov    0x28(%rsp),%edi
  0.00%    0.00%  ││      0x00007f31d1238417: mov    %rax,(%rsp)
  0.21%    0.13%  ││      0x00007f31d123841b: callq  0x00007f31d1046020  ; OopMap{off=896}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@146 (line 359)
                  ││                                                    ;   {optimized virtual_call}
  0.00%           ││╭     0x00007f31d1238420: jmpq   0x00007f31d1238558  ;*aload
                  │││                                                   ; - com.google.re2j.Machine::add@293 (line 388)
  1.78%    2.13%  │││     0x00007f31d1238425: mov    0x38(%rsp),%r10
                  │││     0x00007f31d123842a: mov    %r10,%r9
           0.00%  │││     0x00007f31d123842d: shr    $0x3,%r9           ;*putfield inst
                  │││                                                   ; - com.google.re2j.Machine::alloc@47 (line 151)
                  │││                                                   ; - com.google.re2j.Machine::add@301 (line 389)
  0.02%    0.01%  │││     0x00007f31d1238431: mov    0x70(%rsp),%rbx
  0.71%    0.86%  │││     0x00007f31d1238436: test   %rbx,%rbx
                  │││╭    0x00007f31d1238439: je     0x00007f31d1238459  ;*ifnonnull
                  ││││                                                  ; - com.google.re2j.Machine::add@295 (line 388)
                  ││││    0x00007f31d123843b: mov    %r9d,0x10(%rbx)
                  ││││    0x00007f31d123843f: mov    %rbx,%r10
                  ││││    0x00007f31d1238442: shr    $0x9,%r10
  0.20%    0.28%  ││││    0x00007f31d1238446: movabs $0x7f31e205c000,%r11
                  ││││    0x00007f31d1238450: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                  ││││                                                  ; - com.google.re2j.Machine::add@313 (line 391)
                  ││││╭   0x00007f31d1238454: jmpq   0x00007f31d12384e4
                  │││↘│   0x00007f31d1238459: mov    0x20(%rsi),%ebp    ;*getfield pool
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@1 (line 147)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
                  │││ │   0x00007f31d123845c: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f31d123883d
  0.04%    0.01%  │││ │   0x00007f31d1238461: cmp    $0xf8002f22,%r11d  ;   {metadata(&apos;java/util/ArrayList&apos;)}
                  │││ │   0x00007f31d1238468: jne    0x00007f31d1238655
  0.48%    0.61%  │││ │   0x00007f31d123846e: lea    (%r12,%rbp,8),%r11  ;*invokeinterface size
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@4 (line 147)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
                  │││ │   0x00007f31d1238472: mov    0x10(%r11),%ecx    ;*getfield size
                  │││ │                                                 ; - java.util.ArrayList::size@1 (line 278)
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@4 (line 147)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
                  │││ │   0x00007f31d1238476: test   %ecx,%ecx
                  │││ │   0x00007f31d1238478: jle    0x00007f31d12386b5  ;*ifle
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@11 (line 148)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
  0.03%    0.02%  │││ │   0x00007f31d123847e: mov    %ecx,%r8d
  0.51%    0.38%  │││ │   0x00007f31d1238481: dec    %r8d               ;*isub
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@20 (line 148)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
                  │││ │   0x00007f31d1238484: cmp    %ecx,%r8d
                  │││ │   0x00007f31d1238487: jge    0x00007f31d12386dd  ;*if_icmplt
                  │││ │                                                 ; - java.util.ArrayList::rangeCheck@5 (line 652)
                  │││ │                                                 ; - java.util.ArrayList::remove@2 (line 492)
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@21 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
                  │││ │   0x00007f31d123848d: incl   0xc(%r11)          ;*putfield modCount
                  │││ │                                                 ; - java.util.ArrayList::remove@12 (line 494)
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@21 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
  0.53%    0.39%  │││ │   0x00007f31d1238491: mov    0x14(%r11),%ebp    ;*getfield elementData
                  │││ │                                                 ; - java.util.ArrayList::elementData@1 (line 418)
                  │││ │                                                 ; - java.util.ArrayList::remove@17 (line 495)
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@21 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
  0.01%           │││ │   0x00007f31d1238495: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f31d123884d
  0.02%    0.01%  │││ │   0x00007f31d123849a: cmp    %r10d,%r8d
                  │││ │   0x00007f31d123849d: jae    0x00007f31d123862d  ;*aaload
                  │││ │                                                 ; - java.util.ArrayList::elementData@5 (line 418)
                  │││ │                                                 ; - java.util.ArrayList::remove@17 (line 495)
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@21 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
  0.54%    0.41%  │││ │   0x00007f31d12384a3: mov    %r8d,0x10(%r11)    ;*putfield size
                  │││ │                                                 ; - java.util.ArrayList::remove@62 (line 501)
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@21 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
                  │││ │   0x00007f31d12384a7: lea    (%r12,%rbp,8),%r10
                  │││ │   0x00007f31d12384ab: mov    0xc(%r10,%rcx,4),%ebp  ;*aaload
                  │││ │                                                 ; - java.util.ArrayList::elementData@5 (line 418)
                  │││ │                                                 ; - java.util.ArrayList::remove@17 (line 495)
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@21 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
  0.02%    0.01%  │││ │   0x00007f31d12384b0: mov    %r12d,0xc(%r10,%rcx,4)  ;*aastore
                  │││ │                                                 ; - java.util.ArrayList::remove@66 (line 501)
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@21 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
  0.56%    0.40%  │││ │   0x00007f31d12384b5: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f31d1238861
  0.00%           │││ │   0x00007f31d12384ba: cmp    $0xf8019b16,%r11d  ;   {metadata(&apos;com/google/re2j/Machine$Thread&apos;)}
                  │││ │   0x00007f31d12384c1: jne    0x00007f31d1238771
           0.01%  │││ │   0x00007f31d12384c7: lea    (%r12,%rbp,8),%rbx  ;*checkcast
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@26 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
  0.01%    0.00%  │││ │   0x00007f31d12384cb: mov    %r9d,0x10(%rbx)
  0.59%    0.22%  │││ │   0x00007f31d12384cf: mov    %rbx,%r10
                  │││ │   0x00007f31d12384d2: shr    $0x9,%r10
           0.00%  │││ │   0x00007f31d12384d6: movabs $0x7f31e205c000,%r11
  0.01%           │││ │   0x00007f31d12384e0: mov    %r12b,(%r11,%r10,1)  ;*aload
                  │││ │                                                 ; - com.google.re2j.Machine::add@316 (line 393)
  0.58%    0.22%  │││ ↘   0x00007f31d12384e4: mov    0x20(%rsp),%rdi
  0.19%    0.20%  │││     0x00007f31d12384e9: mov    0xc(%rdi),%r10d    ;*arraylength
                  │││                                                   ; - com.google.re2j.Machine::add@318 (line 393)
                  │││                                                   ; implicit exception: dispatches to 0x00007f31d123882d
                  │││     0x00007f31d12384ed: test   %r10d,%r10d
                  │││     0x00007f31d12384f0: jle    0x00007f31d1238693  ;*ifle
                  │││                                                   ; - com.google.re2j.Machine::add@319 (line 393)
  0.01%    0.01%  │││     0x00007f31d12384f6: mov    0xc(%rbx),%r11d    ;*getfield cap
                  │││                                                   ; - com.google.re2j.Machine::add@324 (line 393)
  0.55%    0.30%  │││     0x00007f31d12384fa: lea    (%r12,%r13,8),%rbp  ;*aaload
                  │││                                                   ; - com.google.re2j.Machine$Queue::add@24 (line 61)
                  │││                                                   ; - com.google.re2j.Machine::add@20 (line 347)
  0.22%    0.27%  │││     0x00007f31d12384fe: mov    %r11,%r8
                  │││     0x00007f31d1238501: shl    $0x3,%r8
  0.01%           │││     0x00007f31d1238505: cmp    %rdi,%r8
                  │││  ╭  0x00007f31d1238508: je     0x00007f31d1238535  ;*if_acmpeq
                  │││  │                                                ; - com.google.re2j.Machine::add@329 (line 393)
  0.57%    0.43%  │││  │  0x00007f31d123850a: mov    0xc(%r12,%r11,8),%r8d  ; implicit exception: dispatches to 0x00007f31d123887d
  0.01%    0.00%  │││  │  0x00007f31d123850f: lea    (%r12,%r11,8),%rcx  ;*getfield cap
                  │││  │                                                ; - com.google.re2j.Machine::add@324 (line 393)
  0.00%           │││  │  0x00007f31d1238513: cmp    %r10d,%r8d
                  │││  │  0x00007f31d1238516: jb     0x00007f31d1238669
  0.03%    0.03%  │││  │  0x00007f31d123851c: lea    0x10(%r12,%r11,8),%rsi
  0.43%    0.59%  │││  │  0x00007f31d1238521: add    $0x10,%rdi
                  │││  │  0x00007f31d1238525: movslq %r10d,%rdx
                  │││  │  0x00007f31d1238528: movabs $0x7f31d1052640,%r10
  0.03%           │││  │  0x00007f31d1238532: callq  *%r10              ;*aload
                  │││  │                                                ; - com.google.re2j.Machine::add@347 (line 396)
                  │││  ↘  0x00007f31d1238535: mov    %rbp,%r10
  0.19%    0.20%  │││     0x00007f31d1238538: mov    %rbx,%r8
  0.01%    0.03%  │││     0x00007f31d123853b: shr    $0x3,%r8
  0.54%    0.83%  │││     0x00007f31d123853f: mov    %r8d,0x10(%r12,%r13,8)
                  │││     0x00007f31d1238544: shr    $0x9,%r10
  0.19%    0.20%  │││     0x00007f31d1238548: movabs $0x7f31e205c000,%r11
  0.03%    0.06%  │││     0x00007f31d1238552: mov    %r12b,(%r11,%r10,1)  ;*putfield thread
                  │││                                                   ; - com.google.re2j.Machine::add@351 (line 396)
  0.56%    0.80%  │││     0x00007f31d1238556: xor    %eax,%eax          ;*synchronization entry
                  │││                                                   ; - com.google.re2j.Machine::add@-1 (line 341)
  0.56%    0.65%  ↘↘↘     0x00007f31d1238558: add    $0x60,%rsp
  0.20%    0.11%          0x00007f31d123855c: pop    %rbp
  0.49%    0.53%          0x00007f31d123855d: test   %eax,0x1841ba9d(%rip)        # 0x00007f31e9654000
                                                                        ;   {poll_return}
  0.65%    0.73%          0x00007f31d1238563: retq                      ;*tableswitch
                                                                        ; - com.google.re2j.Machine::add@40 (line 349)
                          0x00007f31d1238564: mov    %rbx,%rdx
                          0x00007f31d1238567: mov    0x1c(%rsp),%r8d
                          0x00007f31d123856c: mov    0x20(%rsp),%r9
                          0x00007f31d1238571: mov    0x70(%rsp),%r10
                          0x00007f31d1238576: mov    %r10,(%rsp)
                          0x00007f31d123857a: nop
                          0x00007f31d123857b: callq  0x00007f31d1046020  ; OopMap{off=1248}
                                                                        ;*invokespecial add
....................................................................................................
 14.71%   14.37%  <total for region 3>

....[Hottest Regions]...............................................................................
 28.38%   28.37%         C2, level 4  com.google.re2j.Machine::add, version 523 (331 bytes) 
 22.92%   22.44%         C2, level 4  com.google.re2j.Machine::step, version 530 (549 bytes) 
 14.71%   14.37%         C2, level 4  com.google.re2j.Machine::add, version 523 (400 bytes) 
  8.56%    7.97%         C2, level 4  com.google.re2j.Machine::step, version 530 (218 bytes) 
  7.79%    9.84%         C2, level 4  com.google.re2j.Machine::step, version 530 (304 bytes) 
  6.76%    7.86%         C2, level 4  com.google.re2j.Machine::match, version 582 (775 bytes) 
  3.88%    2.42%        runtime stub  StubRoutines::jint_disjoint_arraycopy (128 bytes) 
  1.92%    2.23%         C2, level 4  com.google.re2j.Machine::step, version 530 (149 bytes) 
  0.97%    0.96%   [kernel.kallsyms]  [unknown] (6 bytes) 
  0.84%    0.75%         C2, level 4  com.google.re2j.Machine::add, version 523 (38 bytes) 
  0.40%    0.11%         C2, level 4  com.google.re2j.Machine::init, version 578 (204 bytes) 
  0.27%    0.38%         C2, level 4  com.google.re2j.Machine::match, version 582 (65 bytes) 
  0.15%    0.25%         C2, level 4  com.google.re2j.Machine::step, version 530 (29 bytes) 
  0.11%            [kernel.kallsyms]  [unknown] (37 bytes) 
  0.07%    0.01%   [kernel.kallsyms]  [unknown] (2 bytes) 
  0.06%    0.01%         C2, level 4  com.google.re2j.Machine::init, version 578 (21 bytes) 
  0.06%    0.05%         C2, level 4  com.google.re2j.Machine::match, version 582 (104 bytes) 
  0.04%    0.02%         C2, level 4  com.google.re2j.Machine::step, version 530 (43 bytes) 
  0.04%    0.03%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 658 (43 bytes) 
  0.04%    0.01%         C2, level 4  com.google.re2j.Matcher::find, version 599 (0 bytes) 
  2.02%    1.91%  <...other 413 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 43.93%   43.49%         C2, level 4  com.google.re2j.Machine::add, version 523 
 41.39%   42.75%         C2, level 4  com.google.re2j.Machine::step, version 530 
  7.29%    8.42%         C2, level 4  com.google.re2j.Machine::match, version 582 
  3.88%    2.42%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
  1.80%    1.62%   [kernel.kallsyms]  [unknown] 
  0.55%    0.18%         C2, level 4  com.google.re2j.Machine::init, version 578 
  0.16%    0.15%         C2, level 4  com.google.re2j.Matcher::find, version 599 
  0.11%    0.04%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 658 
  0.06%    0.03%         C2, level 4  java.util.Collections::shuffle, version 605 
  0.05%    0.04%      hsdis-amd64.so  [unknown] 
  0.04%    0.06%        libc-2.26.so  vfprintf 
  0.03%                    libjvm.so  os::PlatformEvent::park 
  0.02%    0.01%           libjvm.so  GenericTaskQueueSet<OverflowTaskQueue<StarTask, (MemoryType)1, 131072u>, (MemoryType)1>::steal_best_of_2 
  0.02%    0.06%        libc-2.26.so  _IO_fwrite 
  0.02%    0.02%           libjvm.so  Monitor::ILock 
  0.02%    0.03%           libjvm.so  xmlTextStream::write 
  0.02%    0.01%           libjvm.so  SpinPause 
  0.02%    0.02%           libjvm.so  PSPromotionManager::copy_to_survivor_space<false> 
  0.02%    0.00%           libjvm.so  Monitor::unlock 
  0.02%    0.02%           libjvm.so  StringTable::unlink_or_oops_do 
  0.54%    0.37%  <...other 83 warm methods...>
....................................................................................................
100.00%   99.76%  <totals>

....[Distribution by Source]........................................................................
 93.49%   95.05%         C2, level 4
  3.89%    2.42%        runtime stub
  1.80%    1.62%   [kernel.kallsyms]
  0.46%    0.47%           libjvm.so
  0.18%    0.32%        libc-2.26.so
  0.06%    0.03%  libpthread-2.26.so
  0.05%    0.05%      hsdis-amd64.so
  0.03%    0.00%         interpreter
  0.02%    0.02%              [vdso]
  0.01%                  C1, level 3
  0.00%                             
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:44

Benchmark                     Mode  Cnt     Score    Error  Units
Re2jFindRegex.testExp1       thrpt   20  7396.253 ± 56.828  ops/s
Re2jFindRegex.testExp1:·asm  thrpt            NaN             ---
