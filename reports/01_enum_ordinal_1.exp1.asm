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
# Warmup Iteration   1: 3594.202 ops/s
# Warmup Iteration   2: 6594.265 ops/s
# Warmup Iteration   3: 6777.495 ops/s
# Warmup Iteration   4: 6744.838 ops/s
# Warmup Iteration   5: 6795.074 ops/s
# Warmup Iteration   6: 6833.507 ops/s
# Warmup Iteration   7: 6807.099 ops/s
# Warmup Iteration   8: 5382.143 ops/s
# Warmup Iteration   9: 4171.440 ops/s
# Warmup Iteration  10: 6029.330 ops/s
# Warmup Iteration  11: 6732.791 ops/s
# Warmup Iteration  12: 6804.859 ops/s
# Warmup Iteration  13: 6935.344 ops/s
# Warmup Iteration  14: 6917.836 ops/s
# Warmup Iteration  15: 6814.735 ops/s
# Warmup Iteration  16: 6675.699 ops/s
# Warmup Iteration  17: 6844.684 ops/s
# Warmup Iteration  18: 6820.033 ops/s
# Warmup Iteration  19: 6714.298 ops/s
# Warmup Iteration  20: 6528.032 ops/s
Iteration   1: 6715.482 ops/s
Iteration   2: 6651.518 ops/s
Iteration   3: 6828.467 ops/s
Iteration   4: 6809.436 ops/s
Iteration   5: 6802.200 ops/s
Iteration   6: 6750.360 ops/s
Iteration   7: 6742.838 ops/s
Iteration   8: 6723.084 ops/s
Iteration   9: 6724.895 ops/s
Iteration  10: 6715.320 ops/s
Iteration  11: 6764.104 ops/s
Iteration  12: 6754.352 ops/s
Iteration  13: 6750.438 ops/s
Iteration  14: 6757.983 ops/s
Iteration  15: 6713.716 ops/s
Iteration  16: 6725.068 ops/s
Iteration  17: 6739.249 ops/s
Iteration  18: 6735.270 ops/s
Iteration  19: 6742.243 ops/s
Iteration  20: 6716.312 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  6743.117 ±(99.9%) 33.757 ops/s [Average]
  (min, avg, max) = (6651.518, 6743.117, 6828.467), stdev = 38.875
  CI (99.9%): [6709.360, 6776.874] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1:·asm":
PrintAssembly processed: 207856 total address lines.
Perf output processed (skipped 22.862 seconds):
 Column 1: cycles (20542 events)
 Column 2: instructions (20519 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 520 (403 bytes) 

                       # parm4:    rdi       = int
                       # parm5:    [sp+0x70]   = &apos;com/google/re2j/Machine$Thread&apos;  (sp of caller)
                       0x00007f747922d3a0: mov    0x8(%rsi),%r10d    ;   {no_reloc}
                       0x00007f747922d3a4: shl    $0x3,%r10
                       0x00007f747922d3a8: cmp    %r10,%rax
                       0x00007f747922d3ab: jne    0x00007f7479045e20  ;   {runtime_call}
                       0x00007f747922d3b1: data16 xchg %ax,%ax
                       0x00007f747922d3b4: nopl   0x0(%rax,%rax,1)
                       0x00007f747922d3bc: data16 data16 xchg %ax,%ax
                     [Verified Entry Point]
  0.69%    0.53%       0x00007f747922d3c0: mov    %eax,-0x14000(%rsp)
  0.50%    0.48%       0x00007f747922d3c7: push   %rbp
  0.63%    0.53%       0x00007f747922d3c8: sub    $0x60,%rsp         ;*synchronization entry
                                                                     ; - com.google.re2j.Machine::add@-1 (line 341)
  0.14%    0.08%       0x00007f747922d3cc: mov    %edi,0x28(%rsp)
  0.46%    0.53%       0x00007f747922d3d0: mov    %r9,0x20(%rsp)
  0.66%    0.40%       0x00007f747922d3d5: mov    %r8d,0x1c(%rsp)
  0.02%    0.01%       0x00007f747922d3da: mov    %rsi,0x8(%rsp)
  0.13%    0.09%       0x00007f747922d3df: mov    %ecx,0x40(%rsp)
  0.40%    0.46%       0x00007f747922d3e3: test   %ecx,%ecx
                       0x00007f747922d3e5: je     0x00007f747922d945  ;*ifne
                                                                     ; - com.google.re2j.Machine::add@1 (line 341)
  0.64%    0.58%       0x00007f747922d3eb: mov    %rdx,0x48(%rsp)
  0.05%    0.02%       0x00007f747922d3f0: mov    0x14(%rdx),%r9d    ;*getfield sparse
                                                                     ; - com.google.re2j.Machine$Queue::contains@1 (line 48)
                                                                     ; - com.google.re2j.Machine::add@9 (line 344)
                                                                     ; implicit exception: dispatches to 0x00007f747922db2d
  0.13%    0.09%       0x00007f747922d3f4: mov    0xc(%r12,%r9,8),%r10d  ; implicit exception: dispatches to 0x00007f747922db41
  0.57%    0.45%       0x00007f747922d3f9: cmp    %r10d,%ecx
                       0x00007f747922d3fc: jae    0x00007f747922d81a  ;*iaload
                                                                     ; - com.google.re2j.Machine$Queue::contains@5 (line 48)
                                                                     ; - com.google.re2j.Machine::add@9 (line 344)
  0.61%    0.67%       0x00007f747922d402: mov    0x10(%rdx),%ecx    ;*getfield dense
                                                                     ; - com.google.re2j.Machine$Queue::contains@18 (line 52)
                                                                     ; - com.google.re2j.Machine::add@9 (line 344)
  0.02%    0.00%       0x00007f747922d405: mov    0xc(%rdx),%r11d    ;*getfield size
                                                                     ; - com.google.re2j.Machine$Queue::contains@9 (line 49)
                                                                     ; - com.google.re2j.Machine::add@9 (line 344)
  0.05%    0.10%       0x00007f747922d409: lea    (%r12,%r9,8),%rdi
  0.38%    0.43%       0x00007f747922d40d: mov    0x40(%rsp),%ebx
  1.06%    0.50%       0x00007f747922d411: mov    0x10(%rdi,%rbx,4),%ebp  ;*iaload
                                                                     ; - com.google.re2j.Machine$Queue::contains@5 (line 48)
                                                                     ; - com.google.re2j.Machine::add@9 (line 344)
  0.28%    0.20%       0x00007f747922d415: cmp    %r11d,%ebp
                  ╭    0x00007f747922d418: jl     0x00007f747922d52e  ;*iastore
                  │                                                  ; - com.google.re2j.Machine$Queue::add@18 (line 60)
                  │                                                  ; - com.google.re2j.Machine::add@20 (line 347)
  0.41%    0.40%  │ ↗  0x00007f747922d41e: mov    %r11d,%r8d
  0.33%    0.29%  │ │  0x00007f747922d421: inc    %r8d
  0.56%    0.29%  │ │  0x00007f747922d424: mov    %r8d,0xc(%rdx)     ;*putfield size
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@8 (line 59)
                  │ │                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.02%    0.01%  │ │  0x00007f747922d428: mov    0x40(%rsp),%r8d
  0.47%    0.28%  │ │  0x00007f747922d42d: cmp    %r10d,%r8d
                  │ │  0x00007f747922d430: jae    0x00007f747922d855
  0.35%    0.20%  │ │  0x00007f747922d436: mov    %r11d,0x10(%rdi,%r8,4)  ;*iastore
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@18 (line 60)
                  │ │                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.76%    0.52%  │ │  0x00007f747922d43b: mov    0xc(%r12,%rcx,8),%r10d  ; implicit exception: dispatches to 0x00007f747922db55
           0.02%  │ │  0x00007f747922d440: cmp    %r10d,%r11d
                  │ │  0x00007f747922d443: jae    0x00007f747922d89d  ;*aaload
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@24 (line 61)
                  │ │                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.23%    0.16%  │ │  0x00007f747922d449: lea    (%r12,%rcx,8),%r10  ;*getfield dense
                  │ │                                                ; - com.google.re2j.Machine$Queue::contains@18 (line 52)
                  │ │                                                ; - com.google.re2j.Machine::add@9 (line 344)
  0.38%    0.32%  │ │  0x00007f747922d44d: mov    %r10,0x38(%rsp)
  0.69%    0.71%  │ │  0x00007f747922d452: lea    0x10(%r10,%r11,4),%rbp
  0.00%           │ │  0x00007f747922d457: mov    0x0(%rbp),%r10d    ;*aaload
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@24 (line 61)
                  │ │                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.27%    0.15%  │ │  0x00007f747922d45b: test   %r10d,%r10d
                  │╭│  0x00007f747922d45e: je     0x00007f747922d55d  ;*ifnonnull
                  │││                                                ; - com.google.re2j.Machine$Queue::add@27 (line 62)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.31%    0.21%  │││  0x00007f747922d464: lea    (%r12,%r10,8),%rbx  ;*aload_3
                  │││                                                ; - com.google.re2j.Machine$Queue::add@45 (line 65)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.75%    0.77%  │││  0x00007f747922d468: mov    0x40(%rsp),%r10d
  0.03%    0.03%  │││  0x00007f747922d46d: mov    %r10d,0xc(%rbx)    ;*putfield pc
                  │││                                                ; - com.google.re2j.Machine$Queue::add@52 (line 66)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.57%    0.61%  │││  0x00007f747922d471: mov    0x8(%rsp),%r10
  0.25%    0.11%  │││  0x00007f747922d476: mov    0x14(%r10),%r10d   ;*getfield prog
                  │││                                                ; - com.google.re2j.Machine::add@26 (line 348)
  0.60%    0.70%  │││  0x00007f747922d47a: mov    %r12d,0x10(%rbx)   ;*putfield thread
                  │││                                                ; - com.google.re2j.Machine$Queue::add@47 (line 65)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.23%    0.31%  │││  0x00007f747922d47e: mov    0x14(%r12,%r10,8),%ebp  ;*getfield inst
                  │││                                                ; - com.google.re2j.Prog::getInst@1 (line 29)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 348)
                  │││                                                ; implicit exception: dispatches to 0x00007f747922db69
  0.40%    0.46%  │││  0x00007f747922d483: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f747922db7d
  0.68%    0.57%  │││  0x00007f747922d488: cmp    $0xf8002f22,%r11d  ;   {metadata(&apos;java/util/ArrayList&apos;)}
                  │││  0x00007f747922d48f: jne    0x00007f747922d91d
  0.54%    0.57%  │││  0x00007f747922d495: lea    (%r12,%rbp,8),%r11  ;*invokeinterface get
                  │││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.11%    0.17%  │││  0x00007f747922d499: mov    0x10(%r11),%ebp    ;*getfield size
                  │││                                                ; - java.util.ArrayList::rangeCheck@2 (line 652)
                  │││                                                ; - java.util.ArrayList::get@2 (line 429)
                  │││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.21%    0.25%  │││  0x00007f747922d49d: mov    0x40(%rsp),%r8d
  0.28%    0.09%  │││  0x00007f747922d4a2: cmp    %ebp,%r8d
                  │││  0x00007f747922d4a5: jge    0x00007f747922d96d  ;*if_icmplt
                  │││                                                ; - java.util.ArrayList::rangeCheck@5 (line 652)
                  │││                                                ; - java.util.ArrayList::get@2 (line 429)
                  │││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.85%    0.84%  │││  0x00007f747922d4ab: mov    0x14(%r11),%ebp    ;*getfield elementData
                  │││                                                ; - java.util.ArrayList::elementData@1 (line 418)
                  │││                                                ; - java.util.ArrayList::get@7 (line 431)
                  │││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.09%    0.09%  │││  0x00007f747922d4af: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f747922db91
  1.09%    1.12%  │││  0x00007f747922d4b4: cmp    %r11d,%r8d
                  │││  0x00007f747922d4b7: jae    0x00007f747922d8e5
  1.15%    0.86%  │││  0x00007f747922d4bd: lea    (%r12,%rbp,8),%r10
  0.28%    0.23%  │││  0x00007f747922d4c1: mov    0x10(%r10,%r8,4),%ebp  ;*aaload
                  │││                                                ; - java.util.ArrayList::elementData@5 (line 418)
                  │││                                                ; - java.util.ArrayList::get@7 (line 431)
                  │││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.05%    0.04%  │││  0x00007f747922d4c6: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f747922dba5
  3.38%    3.57%  │││  0x00007f747922d4cb: cmp    $0xf80197c3,%r10d  ;   {metadata(&apos;com/google/re2j/Inst&apos;)}
                  │││  0x00007f747922d4d2: jne    0x00007f747922daf1
  0.90%    0.90%  │││  0x00007f747922d4d8: lea    (%r12,%rbp,8),%r10  ;*checkcast
                  │││                                                ; - com.google.re2j.Prog::getInst@10 (line 29)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.10%    0.07%  │││  0x00007f747922d4dc: mov    %r10,0x38(%rsp)
           0.00%  │││  0x00007f747922d4e1: mov    0xc(%r10),%r10d    ;*getfield op
                  │││                                                ; - com.google.re2j.Inst::op@1 (line 42)
                  │││                                                ; - com.google.re2j.Machine::add@37 (line 349)
  0.61%    0.60%  │││  0x00007f747922d4e5: mov    %r10d,%r8d
  0.40%    0.39%  │││  0x00007f747922d4e8: add    $0xfffffff7,%r8d
  0.65%    0.84%  │││  0x00007f747922d4ec: mov    $0x8,%r9d
                  │││  0x00007f747922d4f2: cmp    $0x3,%r8d
  0.92%    0.85%  │││  0x00007f747922d4f6: cmovb  %r9d,%r10d         ;*invokevirtual op
                  │││                                                ; - com.google.re2j.Machine::add@37 (line 349)
  2.14%    2.61%  │││  0x00007f747922d4fa: mov    %r10d,%r8d
  0.00%           │││  0x00007f747922d4fd: dec    %r8d
  1.03%    1.15%  │││  0x00007f747922d500: cmp    $0xb,%r8d
                  │││  0x00007f747922d504: jae    0x00007f747922d90d  ;*tableswitch
                  │││                                                ; - com.google.re2j.Machine::add@40 (line 349)
  1.03%    1.39%  │││  0x00007f747922d50a: mov    0x38(%rsp),%r11
  0.06%    0.08%  │││  0x00007f747922d50f: mov    0x14(%r11),%r11d   ;*getfield arg
                  │││                                                ; - com.google.re2j.Machine::add@156 (line 363)
  0.00%    0.00%  │││  0x00007f747922d513: mov    0x38(%rsp),%r8
  0.01%    0.00%  │││  0x00007f747922d518: mov    0x10(%r8),%ecx     ;*getfield out
                  │││                                                ; - com.google.re2j.Machine::add@193 (line 369)
  1.07%    1.22%  │││  0x00007f747922d51c: movslq %r10d,%r10
  0.07%    0.03%  │││  0x00007f747922d51f: movabs $0x7f747922d340,%r8  ;   {section_word}
                  │││  0x00007f747922d529: jmpq   *-0x8(%r8,%r10,8)  ;*tableswitch
                  │││                                                ; - com.google.re2j.Machine::add@40 (line 349)
  0.00%           ↘││  0x00007f747922d52e: mov    0xc(%r12,%rcx,8),%r8d  ; implicit exception: dispatches to 0x00007f747922dc4d
           0.01%   ││  0x00007f747922d533: cmp    %r8d,%ebp
                   ││  0x00007f747922d536: jae    0x00007f747922dad8
  0.00%            ││  0x00007f747922d53c: lea    (%r12,%rcx,8),%r8
  0.00%    0.00%   ││  0x00007f747922d540: mov    0x10(%r8,%rbp,4),%ebp  ;*aaload
                   ││                                                ; - com.google.re2j.Machine$Queue::contains@22 (line 52)
                   ││                                                ; - com.google.re2j.Machine::add@9 (line 344)
  0.01%    0.02%   ││  0x00007f747922d545: mov    0xc(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007f747922dc5d
  0.02%    0.03%   ││  0x00007f747922d54a: cmp    %ebx,%r8d
                   │╰  0x00007f747922d54d: jne    0x00007f747922d41e
  0.00%    0.00%   │   0x00007f747922d553: mov    0x70(%rsp),%rax
                   │   0x00007f747922d558: jmpq   0x00007f747922d7e8
                   ↘   0x00007f747922d55d: mov    0x60(%r15),%rbx
                       0x00007f747922d561: mov    %rbx,%r10
                       0x00007f747922d564: add    $0x18,%r10
                       0x00007f747922d568: cmp    0x70(%r15),%r10
                       0x00007f747922d56c: jae    0x00007f747922dab1
                       0x00007f747922d572: mov    %r10,0x60(%r15)
                       0x00007f747922d576: prefetchnta 0xc0(%r10)
                       0x00007f747922d57e: mov    $0xf8019a9b,%r11d  ;   {metadata(&apos;com/google/re2j/Machine$Queue$Entry&apos;)}
                       0x00007f747922d584: movabs $0x0,%r10
....................................................................................................
 32.81%   31.29%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 527 (532 bytes) 

                             # parm6:    [sp+0x98]   = int
                             # parm7:    [sp+0xa0]   = boolean
                             0x00007f747923b420: mov    0x8(%rsi),%r10d
                             0x00007f747923b424: shl    $0x3,%r10
                             0x00007f747923b428: cmp    %r10,%rax
                             0x00007f747923b42b: jne    0x00007f7479045e20  ;   {runtime_call}
                             0x00007f747923b431: data16 xchg %ax,%ax
                             0x00007f747923b434: nopl   0x0(%rax,%rax,1)
                             0x00007f747923b43c: data16 data16 xchg %ax,%ax
                           [Verified Entry Point]
  0.16%    0.20%             0x00007f747923b440: mov    %eax,-0x14000(%rsp)
  0.03%    0.04%             0x00007f747923b447: push   %rbp
  0.13%    0.12%             0x00007f747923b448: sub    $0x80,%rsp         ;*synchronization entry
                                                                           ; - com.google.re2j.Machine::step@-1 (line 263)
  0.04%    0.02%             0x00007f747923b44f: mov    %edi,0x20(%rsp)
  0.01%    0.00%             0x00007f747923b453: mov    %r9d,0x14(%rsp)
  0.11%    0.13%             0x00007f747923b458: mov    %rcx,0x18(%rsp)
  0.02%    0.01%             0x00007f747923b45d: mov    %r8d,0x10(%rsp)
  0.04%    0.03%             0x00007f747923b462: mov    %rdx,0x8(%rsp)
  0.03%    0.00%             0x00007f747923b467: mov    %rsi,0x28(%rsp)
  0.07%    0.14%             0x00007f747923b46c: mov    0x10(%rsi),%r10d   ;*getfield re2
                                                                           ; - com.google.re2j.Machine::step@1 (line 263)
  0.00%                      0x00007f747923b470: movzbl 0x18(%r12,%r10,8),%r11d  ;*getfield longest
                                                                           ; - com.google.re2j.Machine::step@4 (line 263)
                                                                           ; implicit exception: dispatches to 0x00007f747923c985
  0.01%    0.05%             0x00007f747923b476: mov    %r11d,0x24(%rsp)
  0.02%    0.03%             0x00007f747923b47b: mov    0xc(%rdx),%r11d    ; implicit exception: dispatches to 0x00007f747923c995
  0.30%    0.33%             0x00007f747923b47f: test   %r11d,%r11d
                             0x00007f747923b482: jle    0x00007f747923b80e  ;*if_icmpge
                                                                           ; - com.google.re2j.Machine::step@18 (line 264)
  0.04%    0.06%             0x00007f747923b488: xor    %r8d,%r8d
  0.01%    0.03%  ╭          0x00007f747923b48b: jmpq   0x00007f747923b57c
  0.25%    0.35%  │  ↗       0x00007f747923b490: mov    0xc(%r12,%rdi,8),%ecx  ; implicit exception: dispatches to 0x00007f747923c975
  1.24%    1.95%  │  │       0x00007f747923b495: test   %ecx,%ecx
                  │  │       0x00007f747923b497: jbe    0x00007f747923c18d  ;*iaload
                  │  │                                                     ; - com.google.re2j.Machine::step@324 (line 310)
  0.30%    0.56%  │  │       0x00007f747923b49d: mov    0x10(%r12,%rdi,8),%r11d
  0.00%           │  │       0x00007f747923b4a2: mov    0x20(%rsp),%ecx
  0.00%           │  │       0x00007f747923b4a6: cmp    %r11d,%ecx
                  │  │       0x00007f747923b4a9: je     0x00007f747923be1b  ;*goto
                  │  │                                                     ; - com.google.re2j.Machine::step@313 (line 307)
  0.54%    0.51%  │  │    ↗  0x00007f747923b4af: mov    %r10,0x50(%rsp)    ;*aload
                  │  │    │                                                ; - com.google.re2j.Machine::step@399 (line 327)
  0.07%    0.08%  │  │   ↗│  0x00007f747923b4b4: mov    0x28(%rsp),%r10
                  │  │   ││  0x00007f747923b4b9: mov    0x20(%r10),%ebp    ;*getfield pool
                  │  │   ││                                                ; - com.google.re2j.Machine::step@405 (line 329)
                  │  │   ││  0x00007f747923b4bd: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f747923c8b1
  0.45%    0.53%  │  │   ││  0x00007f747923b4c2: cmp    $0xf8002f22,%r10d  ;   {metadata(&apos;java/util/ArrayList&apos;)}
                  │  │   ││  0x00007f747923b4c9: jne    0x00007f747923c031
  0.06%    0.07%  │  │   ││  0x00007f747923b4cf: lea    (%r12,%rbp,8),%r9  ;*invokeinterface add
                  │  │   ││                                                ; - com.google.re2j.Machine::step@410 (line 329)
                  │  │   ││  0x00007f747923b4d3: mov    0x14(%r9),%edi     ;*getfield elementData
                  │  │   ││                                                ; - java.util.ArrayList::ensureCapacityInternal@1 (line 223)
                  │  │   ││                                                ; - java.util.ArrayList::add@7 (line 458)
                  │  │   ││                                                ; - com.google.re2j.Machine::step@410 (line 329)
  0.01%    0.01%  │  │   ││  0x00007f747923b4d7: mov    0x10(%r9),%ebp     ;*getfield size
                  │  │   ││                                                ; - java.util.ArrayList::add@2 (line 458)
                  │  │   ││                                                ; - com.google.re2j.Machine::step@410 (line 329)
  0.39%    0.58%  │  │   ││  0x00007f747923b4db: mov    %ebp,%r11d
  0.07%    0.13%  │  │   ││  0x00007f747923b4de: inc    %r11d              ;*iadd
                  │  │   ││                                                ; - java.util.ArrayList::add@6 (line 458)
                  │  │   ││                                                ; - com.google.re2j.Machine::step@410 (line 329)
                  │  │   ││  0x00007f747923b4e1: cmp    $0xed9f0db7,%edi   ;   {oop(a &apos;java/lang/Object&apos;[0] )}
                  │  │   ││  0x00007f747923b4e7: je     0x00007f747923bdfb  ;*if_acmpne
                  │  │   ││                                                ; - java.util.ArrayList::ensureCapacityInternal@7 (line 223)
                  │  │   ││                                                ; - java.util.ArrayList::add@7 (line 458)
                  │  │   ││                                                ; - com.google.re2j.Machine::step@410 (line 329)
  0.01%    0.01%  │  │   ││  0x00007f747923b4ed: mov    %r11d,%esi         ;*aload_0
                  │  │   ││                                                ; - java.util.ArrayList::ensureCapacityInternal@17 (line 227)
                  │  │   ││                                                ; - java.util.ArrayList::add@7 (line 458)
                  │  │   ││                                                ; - com.google.re2j.Machine::step@410 (line 329)
  0.40%    0.52%  │  │   ││  0x00007f747923b4f0: mov    0xc(%r9),%ebx      ;*getfield modCount
                  │  │   ││                                                ; - java.util.ArrayList::ensureExplicitCapacity@2 (line 231)
                  │  │   ││                                                ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                  │  │   ││                                                ; - java.util.ArrayList::add@7 (line 458)
                  │  │   ││                                                ; - com.google.re2j.Machine::step@410 (line 329)
  0.09%    0.12%  │  │   ││  0x00007f747923b4f4: inc    %ebx
                  │  │   ││  0x00007f747923b4f6: mov    %ebx,0xc(%r9)      ;*putfield modCount
                  │  │   ││                                                ; - java.util.ArrayList::ensureExplicitCapacity@7 (line 231)
                  │  │   ││                                                ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                  │  │   ││                                                ; - java.util.ArrayList::add@7 (line 458)
                  │  │   ││                                                ; - com.google.re2j.Machine::step@410 (line 329)
           0.01%  │  │   ││  0x00007f747923b4fa: mov    0xc(%r12,%rdi,8),%eax  ;*arraylength
                  │  │   ││                                                ; - java.util.ArrayList::ensureExplicitCapacity@15 (line 234)
                  │  │   ││                                                ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                  │  │   ││                                                ; - java.util.ArrayList::add@7 (line 458)
                  │  │   ││                                                ; - com.google.re2j.Machine::step@410 (line 329)
                  │  │   ││                                                ; implicit exception: dispatches to 0x00007f747923c8c1
  0.48%    0.49%  │  │   ││  0x00007f747923b4ff: mov    %esi,%r10d
  0.06%    0.09%  │  │   ││  0x00007f747923b502: sub    %eax,%r10d
  0.05%    0.06%  │  │   ││  0x00007f747923b505: test   %r10d,%r10d
                  │  │   ││  0x00007f747923b508: jg     0x00007f747923bb5d  ;*ifle
                  │  │   ││                                                ; - java.util.ArrayList::ensureExplicitCapacity@17 (line 234)
                  │  │   ││                                                ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                  │  │   ││                                                ; - java.util.ArrayList::add@7 (line 458)
                  │  │   ││                                                ; - com.google.re2j.Machine::step@410 (line 329)
  0.04%    0.02%  │  │   ││  0x00007f747923b50e: mov    %rdi,%r10
  0.42%    0.30%  │  │   ││  0x00007f747923b511: shl    $0x3,%r10          ;*return
                  │  │   ││                                                ; - java.util.ArrayList::ensureExplicitCapacity@25 (line 236)
                  │  │   ││                                                ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                  │  │   ││                                                ; - java.util.ArrayList::add@7 (line 458)
                  │  │   ││                                                ; - com.google.re2j.Machine::step@410 (line 329)
  0.10%    0.13%  │  │   ││  0x00007f747923b515: mov    %r11d,0x10(%r9)    ;*putfield size
                  │  │   ││                                                ; - java.util.ArrayList::add@22 (line 459)
                  │  │   ││                                                ; - com.google.re2j.Machine::step@410 (line 329)
                  │  │   ││  0x00007f747923b519: mov    0xc(%r10),%r11d    ; implicit exception: dispatches to 0x00007f747923c8d1
  0.04%    0.03%  │  │   ││  0x00007f747923b51d: cmp    %r11d,%ebp
                  │  │   ││  0x00007f747923b520: jae    0x00007f747923bfed
  0.46%    0.29%  │  │   ││  0x00007f747923b526: mov    0x8(%r10),%r11d
  0.06%    0.08%  │  │   ││  0x00007f747923b52a: cmp    $0xf80022f5,%r11d  ;   {metadata(&apos;java/lang/Object&apos;[])}
                  │  │   ││  0x00007f747923b531: jne    0x00007f747923c06d
  0.02%    0.00%  │  │   ││  0x00007f747923b537: lea    0x10(%r10,%rbp,4),%r10
  0.05%    0.03%  │  │   ││  0x00007f747923b53c: mov    0x50(%rsp),%r11
  0.37%    0.29%  │  │   ││  0x00007f747923b541: shr    $0x3,%r11
  0.07%    0.10%  │  │   ││  0x00007f747923b545: mov    %r11d,(%r10)
  0.03%    0.03%  │  │   ││  0x00007f747923b548: shr    $0x9,%r10
  0.01%    0.01%  │  │   ││  0x00007f747923b54c: movabs $0x7f74751ff000,%r11
  0.44%    0.30%  │  │   ││  0x00007f747923b556: mov    %r12b,(%r11,%r10,1)  ;*aastore
                  │  │   ││                                                ; - java.util.ArrayList::add@26 (line 459)
                  │  │   ││                                                ; - com.google.re2j.Machine::step@410 (line 329)
  0.09%    0.12%  │  │   ││  0x00007f747923b55a: xor    %r11d,%r11d        ; OopMap{[8]=Oop [24]=Oop [40]=Oop off=317}
                  │  │   ││                                                ;*goto
                  │  │   ││                                                ; - com.google.re2j.Machine::step@419 (line 264)
  0.02%    0.02%  │ ↗│  ↗││  0x00007f747923b55d: test   %eax,0x165d9a9d(%rip)        # 0x00007f748f815000
                  │ ││  │││                                                ;*goto
                  │ ││  │││                                                ; - com.google.re2j.Machine::step@419 (line 264)
                  │ ││  │││                                                ;   {poll}
  0.43%    0.39%  │ ││  │││  0x00007f747923b563: mov    0x8(%rsp),%r10
  0.61%    0.33%  │ ││  │││  0x00007f747923b568: mov    0xc(%r10),%r11d
  0.18%    0.24%  │ ││  │││  0x00007f747923b56c: cmp    %r11d,%edx
                  │ ││  │││  0x00007f747923b56f: jge    0x00007f747923b80e
  0.02%    0.04%  │ ││  │││  0x00007f747923b575: mov    %ecx,0x20(%rsp)
  0.35%    0.28%  │ ││  │││  0x00007f747923b579: mov    %edx,%r8d          ;*aload_1
                  │ ││  │││                                                ; - com.google.re2j.Machine::step@21 (line 265)
  0.41%    0.18%  ↘ ││  │││  0x00007f747923b57c: mov    0x8(%rsp),%r10
  0.30%    0.33%    ││  │││  0x00007f747923b581: mov    0x10(%r10),%r10d   ;*getfield dense
                    ││  │││                                                ; - com.google.re2j.Machine::step@22 (line 265)
  0.37%    0.42%    ││  │││  0x00007f747923b585: mov    0xc(%r12,%r10,8),%r9d  ; implicit exception: dispatches to 0x00007f747923c87d
  1.22%    1.33%    ││  │││  0x00007f747923b58a: cmp    %r9d,%r8d
                    ││  │││  0x00007f747923b58d: jae    0x00007f747923be7a
  0.54%    0.63%    ││  │││  0x00007f747923b593: shl    $0x3,%r10
  0.18%    0.21%    ││  │││  0x00007f747923b597: mov    0x10(%r10,%r8,4),%r10d  ;*aaload
                    ││  │││                                                ; - com.google.re2j.Machine::step@27 (line 265)
  0.08%    0.08%    ││  │││  0x00007f747923b59c: mov    0x10(%r12,%r10,8),%r11d  ;*getfield thread
                    ││  │││                                                ; - com.google.re2j.Machine::step@40 (line 269)
                    ││  │││                                                ; implicit exception: dispatches to 0x00007f747923c8f1
  1.26%    1.33%    ││  │││  0x00007f747923b5a1: mov    %r8d,%edx
  0.38%    0.35%    ││  │││  0x00007f747923b5a4: inc    %edx               ;*iadd
                    ││  │││                                                ; - com.google.re2j.Machine::step@241 (line 293)
  0.22%    0.25%    ││  │││  0x00007f747923b5a6: test   %r11d,%r11d
                   ╭││  │││  0x00007f747923b5a9: jne    0x00007f747923b5b6  ;*ifnonnull
                   │││  │││                                                ; - com.google.re2j.Machine::step@47 (line 270)
  0.22%    0.22%   │││  │││  0x00007f747923b5ab: mov    0x24(%rsp),%r11d
  0.18%    0.23%   │││  │││  0x00007f747923b5b0: mov    0x20(%rsp),%ecx
  0.06%    0.07%   │╰│  │││  0x00007f747923b5b4: jmp    0x00007f747923b55d
  0.08%    0.11%   ↘ │  │││  0x00007f747923b5b6: mov    0x24(%rsp),%r9d
  0.12%    0.08%     │  │││  0x00007f747923b5bb: test   %r9d,%r9d
                     │  │││  0x00007f747923b5be: jne    0x00007f747923c1d9  ;*ifeq
                     │  │││                                                ; - com.google.re2j.Machine::step@55 (line 273)
  0.27%    0.18%     │  │││  0x00007f747923b5c4: mov    0x10(%r12,%r11,8),%r9d  ;*getfield inst
                     │  │││                                                ; - com.google.re2j.Machine::step@107 (line 278)
  0.74%    0.96%     │  │││  0x00007f747923b5c9: mov    0xc(%r12,%r9,8),%ecx  ;*getfield op
                     │  │││                                                ; - com.google.re2j.Machine::step@117 (line 280)
                     │  │││                                                ; implicit exception: dispatches to 0x00007f747923c8a1
  2.21%    1.91%     │  │││  0x00007f747923b5ce: mov    0x18(%r12,%r9,8),%edi  ;*getfield runes
                     │  │││                                                ; - com.google.re2j.Machine::step@320 (line 310)
  0.11%    0.07%     │  │││  0x00007f747923b5d3: mov    0xc(%r12,%r11,8),%r14d  ;*getfield cap
                     │  │││                                                ; - com.google.re2j.Machine::step@176 (line 287)
  0.03%              │  │││  0x00007f747923b5d8: lea    (%r12,%r11,8),%r10  ;*getfield thread
                     │  │││                                                ; - com.google.re2j.Machine::step@40 (line 269)
  0.02%    0.05%     │  │││  0x00007f747923b5dc: cmp    $0x9,%ecx
                     ╰  │││  0x00007f747923b5df: je     0x00007f747923b490
  0.31%    0.26%        │││  0x00007f747923b5e5: cmp    $0x9,%ecx
                        │││  0x00007f747923b5e8: jle    0x00007f747923b695
  0.06%    0.03%        │││  0x00007f747923b5ee: cmp    $0xb,%ecx
                      ╭ │││  0x00007f747923b5f1: je     0x00007f747923b671
  0.11%    0.03%      │ │││  0x00007f747923b5f3: cmp    $0xb,%ecx
                      │ │││  0x00007f747923b5f6: jg     0x00007f747923c225  ;*tableswitch
                      │ │││                                                ; - com.google.re2j.Machine::step@120 (line 280)
  0.08%    0.02%      │ │││  0x00007f747923b5fc: mov    %r8d,0x94(%rsp)
                      │ │││  0x00007f747923b604: mov    %edx,0x9c(%rsp)
  0.03%    0.00%      │ │││  0x00007f747923b60b: mov    %r10,%r13          ;*ifeq
                      │ │││                                                ; - com.google.re2j.Machine::step@373 (line 324)
  0.08%    0.03%      │ │││  0x00007f747923b60e: mov    0x10(%r12,%r9,8),%ecx  ;*getfield out
                      │ │││                                                ; - com.google.re2j.Machine::step@380 (line 325)
  0.07%    0.05%      │ │││  0x00007f747923b613: mov    %r14,%r9
  0.00%               │ │││  0x00007f747923b616: shl    $0x3,%r9           ;*getfield cap
                      │ │││                                                ; - com.google.re2j.Machine::step@176 (line 287)
  0.02%               │ │││  0x00007f747923b61a: mov    0x28(%rsp),%rsi
  0.08%    0.06%      │ │││  0x00007f747923b61f: mov    0x18(%rsp),%rdx
  0.06%    0.03%      │ │││  0x00007f747923b624: mov    0x14(%rsp),%r8d
  0.00%               │ │││  0x00007f747923b629: mov    0x90(%rsp),%edi
  0.02%    0.02%      │ │││  0x00007f747923b630: mov    %r13,(%rsp)
  0.12%    0.06%      │ │││  0x00007f747923b634: data16 xchg %ax,%ax
  0.07%    0.03%      │ │││  0x00007f747923b637: callq  0x00007f7479046020  ; OopMap{[8]=Oop [24]=Oop [40]=Oop off=540}
                      │ │││                                                ;*invokespecial add
                      │ │││                                                ; - com.google.re2j.Machine::step@394 (line 325)
                      │ │││                                                ;   {optimized virtual_call}
                      │ │││  0x00007f747923b63c: test   %rax,%rax
                      │╭│││  0x00007f747923b63f: jne    0x00007f747923b654  ;*ifnull
                      │││││                                                ; - com.google.re2j.Machine::step@401 (line 327)
                      │││││  0x00007f747923b641: xor    %r11d,%r11d
           0.00%      │││││  0x00007f747923b644: mov    0x20(%rsp),%ecx
  0.18%    0.29%      │││││  0x00007f747923b648: mov    0x9c(%rsp),%edx
           0.00%      ││╰││  0x00007f747923b64f: jmpq   0x00007f747923b55d
  0.00%               │↘ ││  0x00007f747923b654: mov    %rax,0x50(%rsp)
                      │  ││  0x00007f747923b659: mov    0x20(%rsp),%ecx
                      │  ││  0x00007f747923b65d: mov    0x94(%rsp),%r8d
                      │  ││  0x00007f747923b665: mov    0x9c(%rsp),%edx
                      │  ╰│  0x00007f747923b66c: jmpq   0x00007f747923b4b4
                      ↘   │  0x00007f747923b671: mov    0x20(%rsp),%ecx
                          │  0x00007f747923b675: cmp    $0xa,%ecx
                          ╰  0x00007f747923b678: je     0x00007f747923b4af  ;*if_icmpeq
                                                                           ; - com.google.re2j.Machine::step@348 (line 318)
                             0x00007f747923b67e: mov    %r8d,0x94(%rsp)
                             0x00007f747923b686: mov    %edx,0x9c(%rsp)
....................................................................................................
 19.71%   20.26%  <total for region 2>

....[Hottest Regions]...............................................................................
 32.81%   31.29%         C2, level 4  com.google.re2j.Machine::add, version 520 (403 bytes) 
 19.71%   20.26%         C2, level 4  com.google.re2j.Machine::step, version 527 (532 bytes) 
  8.36%    7.16%         C2, level 4  com.google.re2j.Machine::add, version 520 (252 bytes) 
  7.43%    7.07%         C2, level 4  com.google.re2j.Machine::add, version 520 (119 bytes) 
  6.99%    9.74%         C2, level 4  com.google.re2j.Machine::step, version 527 (304 bytes) 
  6.96%    7.23%         C2, level 4  com.google.re2j.Machine::match, version 573 (750 bytes) 
  6.84%    7.76%         C2, level 4  com.google.re2j.Machine::step, version 527 (223 bytes) 
  3.64%    2.07%        runtime stub  StubRoutines::jint_disjoint_arraycopy (128 bytes) 
  1.61%    2.02%         C2, level 4  com.google.re2j.Machine::step, version 527 (148 bytes) 
  1.18%    1.17%   [kernel.kallsyms]  [unknown] (0 bytes) 
  1.16%    1.47%         C2, level 4  com.google.re2j.Machine::add, version 520 (40 bytes) 
  0.31%    0.11%         C2, level 4  com.google.re2j.Machine::init, version 580 (139 bytes) 
  0.29%    0.46%         C2, level 4  com.google.re2j.Machine::match, version 573 (65 bytes) 
  0.22%    0.21%         C2, level 4  com.google.re2j.Machine::step, version 527 (29 bytes) 
  0.10%    0.01%   [kernel.kallsyms]  [unknown] (6 bytes) 
  0.09%    0.00%         C2, level 4  com.google.re2j.Machine::init, version 580 (26 bytes) 
  0.08%            [kernel.kallsyms]  [unknown] (39 bytes) 
  0.05%    0.04%         C2, level 4  com.google.re2j.Machine::match, version 573 (158 bytes) 
  0.05%    0.05%         C2, level 4  com.google.re2j.Machine::step, version 527 (20 bytes) 
  0.04%    0.00%         C2, level 4  com.google.re2j.Machine::init, version 580 (86 bytes) 
  2.08%    1.84%  <...other 404 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 49.77%   46.99%         C2, level 4  com.google.re2j.Machine::add, version 520 
 35.42%   40.05%         C2, level 4  com.google.re2j.Machine::step, version 527 
  7.49%    7.86%         C2, level 4  com.google.re2j.Machine::match, version 573 
  3.64%    2.07%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
  1.96%    1.77%   [kernel.kallsyms]  [unknown] 
  0.55%    0.19%         C2, level 4  com.google.re2j.Machine::init, version 580 
  0.17%    0.12%         C2, level 4  com.google.re2j.Matcher::find, version 592 
  0.13%    0.06%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 658 
  0.05%    0.04%         C2, level 4  java.util.Collections::shuffle, version 597 
  0.04%    0.03%           libjvm.so  PSPromotionManager::copy_to_survivor_space<false> 
  0.04%    0.05%      hsdis-amd64.so  [unknown] 
  0.03%    0.01%           libjvm.so  GenericTaskQueueSet<OverflowTaskQueue<StarTask, (MemoryType)1, 131072u>, (MemoryType)1>::steal_best_of_2 
  0.02%    0.00%           libjvm.so  SpinPause 
  0.02%    0.05%           libjvm.so  outputStream::update_position 
  0.02%    0.01%              [vdso]  __vdso_clock_gettime 
  0.02%    0.04%        libc-2.26.so  vfprintf 
  0.02%    0.02%  libpthread-2.26.so  __pthread_enable_asynccancel 
  0.02%    0.01%           libjvm.so  xmlTextStream::write 
  0.02%    0.03%        libc-2.26.so  _IO_fwrite 
  0.02%    0.02%           libjvm.so  outputStream::do_vsnprintf 
  0.54%    0.33%  <...other 83 warm methods...>
....................................................................................................
100.00%   99.77%  <totals>

....[Distribution by Source]........................................................................
 93.59%   95.31%         C2, level 4
  3.64%    2.07%        runtime stub
  1.96%    1.77%   [kernel.kallsyms]
  0.48%    0.48%           libjvm.so
  0.14%    0.23%        libc-2.26.so
  0.07%    0.04%  libpthread-2.26.so
  0.05%    0.05%      hsdis-amd64.so
  0.03%    0.01%              [vdso]
  0.02%    0.02%         interpreter
  0.01%                  C1, level 3
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:44

Benchmark                     Mode  Cnt     Score    Error  Units
Re2jFindRegex.testExp1       thrpt   20  6743.117 ± 33.757  ops/s
Re2jFindRegex.testExp1:·asm  thrpt            NaN             ---
