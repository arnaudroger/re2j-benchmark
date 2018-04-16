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
# Warmup Iteration   1: 1970.698 ops/s
# Warmup Iteration   2: 3910.675 ops/s
# Warmup Iteration   3: 4136.898 ops/s
# Warmup Iteration   4: 4093.963 ops/s
# Warmup Iteration   5: 4160.401 ops/s
# Warmup Iteration   6: 4171.114 ops/s
# Warmup Iteration   7: 4173.658 ops/s
# Warmup Iteration   8: 4182.795 ops/s
# Warmup Iteration   9: 4163.473 ops/s
# Warmup Iteration  10: 4150.983 ops/s
# Warmup Iteration  11: 4138.103 ops/s
# Warmup Iteration  12: 4209.539 ops/s
# Warmup Iteration  13: 4208.075 ops/s
# Warmup Iteration  14: 4153.416 ops/s
# Warmup Iteration  15: 4174.092 ops/s
# Warmup Iteration  16: 4124.804 ops/s
# Warmup Iteration  17: 4144.846 ops/s
# Warmup Iteration  18: 4207.068 ops/s
# Warmup Iteration  19: 4205.412 ops/s
# Warmup Iteration  20: 4175.148 ops/s
Iteration   1: 4151.249 ops/s
Iteration   2: 4154.526 ops/s
Iteration   3: 4164.258 ops/s
Iteration   4: 4207.969 ops/s
Iteration   5: 4211.100 ops/s
Iteration   6: 4177.619 ops/s
Iteration   7: 4211.136 ops/s
Iteration   8: 4220.570 ops/s
Iteration   9: 4219.070 ops/s
Iteration  10: 4220.945 ops/s
Iteration  11: 4217.859 ops/s
Iteration  12: 4224.921 ops/s
Iteration  13: 4230.119 ops/s
Iteration  14: 4223.955 ops/s
Iteration  15: 4221.648 ops/s
Iteration  16: 4188.633 ops/s
Iteration  17: 4226.087 ops/s
Iteration  18: 3949.124 ops/s
Iteration  19: 4229.369 ops/s
Iteration  20: 4216.262 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  4193.321 ±(99.9%) 54.423 ops/s [Average]
  (min, avg, max) = (3949.124, 4193.321, 4230.119), stdev = 62.674
  CI (99.9%): [4138.898, 4247.744] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine:·asm":
PrintAssembly processed: 194962 total address lines.
Perf output processed (skipped 22.405 seconds):
 Column 1: cycles (20564 events)
 Column 2: instructions (20549 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 487 (249 bytes) 

                       # parm4:    rdi       = int
                       # parm5:    [sp+0x70]   = &apos;com/google/re2j/Machine$Thread&apos;  (sp of caller)
                       0x00007f539d2160c0: mov    0x8(%rsi),%r10d    ;   {no_reloc}
                       0x00007f539d2160c4: shl    $0x3,%r10
                       0x00007f539d2160c8: cmp    %r10,%rax
                       0x00007f539d2160cb: jne    0x00007f539d045e20  ;   {runtime_call}
                       0x00007f539d2160d1: data16 xchg %ax,%ax
                       0x00007f539d2160d4: nopl   0x0(%rax,%rax,1)
                       0x00007f539d2160dc: data16 data16 xchg %ax,%ax
                     [Verified Entry Point]
  0.54%    0.59%       0x00007f539d2160e0: mov    %eax,-0x14000(%rsp)
  1.31%    1.65%       0x00007f539d2160e7: push   %rbp
  0.35%    0.28%       0x00007f539d2160e8: sub    $0x60,%rsp         ;*synchronization entry
                                                                     ; - com.google.re2j.Machine::add@-1 (line 345)
  0.79%    1.16%       0x00007f539d2160ec: mov    %edi,0x38(%rsp)
  0.78%    0.74%       0x00007f539d2160f0: mov    %r9,0x30(%rsp)
  0.28%    0.29%       0x00007f539d2160f5: mov    %r8d,0x20(%rsp)
  0.19%    0.32%       0x00007f539d2160fa: mov    %rsi,0x8(%rsp)
  0.65%    0.72%       0x00007f539d2160ff: mov    %rdx,0x28(%rsp)
  0.76%    0.66%       0x00007f539d216104: mov    %rcx,0x48(%rsp)
  0.25%    0.23%       0x00007f539d216109: mov    0x28(%rcx),%r8d    ;*getfield pc
                                                                     ; - com.google.re2j.Machine::add@2 (line 345)
                                                                     ; implicit exception: dispatches to 0x00007f539d2167c3
  0.23%    0.27%       0x00007f539d21610d: mov    0x14(%rdx),%ebx    ;*getfield sparse
                                                                     ; - com.google.re2j.Machine$Queue::contains@1 (line 46)
                                                                     ; - com.google.re2j.Machine::add@5 (line 345)
                                                                     ; implicit exception: dispatches to 0x00007f539d2167d5
  0.57%    0.47%       0x00007f539d216110: mov    0xc(%r12,%rbx,8),%r10d  ; implicit exception: dispatches to 0x00007f539d2167e9
  0.72%    0.78%       0x00007f539d216115: cmp    %r10d,%r8d
                       0x00007f539d216118: jae    0x00007f539d216579  ;*iaload
                                                                     ; - com.google.re2j.Machine$Queue::contains@5 (line 46)
                                                                     ; - com.google.re2j.Machine::add@5 (line 345)
  0.42%    0.40%       0x00007f539d21611e: mov    0x10(%rdx),%r9d    ;*getfield dense
                                                                     ; - com.google.re2j.Machine$Queue::contains@18 (line 50)
                                                                     ; - com.google.re2j.Machine::add@5 (line 345)
  0.21%    0.23%       0x00007f539d216122: mov    0xc(%rdx),%ecx     ;*getfield size
                                                                     ; - com.google.re2j.Machine$Queue::contains@9 (line 47)
                                                                     ; - com.google.re2j.Machine::add@5 (line 345)
  0.58%    0.49%       0x00007f539d216125: lea    (%r12,%rbx,8),%rdi
  0.70%    0.73%       0x00007f539d216129: mov    0x10(%rdi,%r8,4),%ebp  ;*iaload
                                                                     ; - com.google.re2j.Machine$Queue::contains@5 (line 46)
                                                                     ; - com.google.re2j.Machine::add@5 (line 345)
  0.47%    0.46%       0x00007f539d21612e: cmp    %ecx,%ebp
                  ╭    0x00007f539d216130: jl     0x00007f539d2161be  ;*iastore
                  │                                                  ; - com.google.re2j.Machine$Queue::add@18 (line 58)
                  │                                                  ; - com.google.re2j.Machine::add@19 (line 348)
  0.76%    0.83%  │ ↗  0x00007f539d216136: mov    %ecx,%r11d
  0.50%    0.50%  │ │  0x00007f539d216139: inc    %r11d
  0.54%    0.50%  │ │  0x00007f539d21613c: mov    0x28(%rsp),%rdx
  0.72%    0.50%  │ │  0x00007f539d216141: mov    %r11d,0xc(%rdx)    ;*putfield size
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@8 (line 57)
                  │ │                                                ; - com.google.re2j.Machine::add@19 (line 348)
  0.75%    0.60%  │ │  0x00007f539d216145: cmp    %r10d,%r8d
                  │ │  0x00007f539d216148: jae    0x00007f539d2165a9
  0.48%    0.38%  │ │  0x00007f539d21614e: mov    %ecx,0x10(%rdi,%r8,4)  ;*iastore
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@18 (line 58)
                  │ │                                                ; - com.google.re2j.Machine::add@19 (line 348)
  0.69%    0.51%  │ │  0x00007f539d216153: mov    0xc(%r12,%r9,8),%r11d  ; implicit exception: dispatches to 0x00007f539d2167fd
  0.21%    0.24%  │ │  0x00007f539d216158: cmp    %r11d,%ecx
                  │ │  0x00007f539d21615b: jae    0x00007f539d2165e9  ;*aaload
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@24 (line 59)
                  │ │                                                ; - com.google.re2j.Machine::add@19 (line 348)
  0.69%    0.59%  │ │  0x00007f539d216161: lea    (%r12,%r9,8),%rdi  ;*getfield dense
                  │ │                                                ; - com.google.re2j.Machine$Queue::contains@18 (line 50)
                  │ │                                                ; - com.google.re2j.Machine::add@5 (line 345)
  0.45%    0.42%  │ │  0x00007f539d216165: lea    0x10(%rdi,%rcx,4),%rbp
  0.51%    0.47%  │ │  0x00007f539d21616a: mov    0x0(%rbp),%r11d    ;*aaload
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@24 (line 59)
                  │ │                                                ; - com.google.re2j.Machine::add@19 (line 348)
  0.29%    0.29%  │ │  0x00007f539d21616e: test   %r11d,%r11d
                  │╭│  0x00007f539d216171: je     0x00007f539d2161ec  ;*ifnonnull
                  │││                                                ; - com.google.re2j.Machine$Queue::add@27 (line 60)
                  │││                                                ; - com.google.re2j.Machine::add@19 (line 348)
  0.58%    0.67%  │││  0x00007f539d216173: lea    (%r12,%r11,8),%rbx  ;*aload_3
                  │││                                                ; - com.google.re2j.Machine$Queue::add@45 (line 63)
                  │││                                                ; - com.google.re2j.Machine::add@19 (line 348)
  0.41%    0.41%  │││  0x00007f539d216177: mov    %r8d,0xc(%rbx)     ;*putfield pc
                  │││                                                ; - com.google.re2j.Machine$Queue::add@52 (line 64)
                  │││                                                ; - com.google.re2j.Machine::add@19 (line 348)
  2.71%    2.71%  │││  0x00007f539d21617b: mov    0x48(%rsp),%r10
  0.29%    0.24%  │││  0x00007f539d216180: mov    0xc(%r10),%r11d    ;*getfield op
                  │││                                                ; - com.google.re2j.Machine::add@25 (line 349)
  1.16%    1.30%  │││  0x00007f539d216184: mov    %r12d,0x10(%rbx)   ;*putfield thread
                  │││                                                ; - com.google.re2j.Machine$Queue::add@47 (line 63)
                  │││                                                ; - com.google.re2j.Machine::add@19 (line 348)
  0.53%    0.60%  │││  0x00007f539d216188: mov    %r11d,%r10d
  0.59%    0.61%  │││  0x00007f539d21618b: dec    %r10d
  0.52%    0.64%  │││  0x00007f539d21618e: cmp    $0xc,%r10d
                  │││  0x00007f539d216192: jae    0x00007f539d216629  ;*tableswitch
                  │││                                                ; - com.google.re2j.Machine::add@28 (line 349)
  0.78%    0.79%  │││  0x00007f539d216198: mov    0x48(%rsp),%r10
  0.42%    0.40%  │││  0x00007f539d21619d: mov    0x30(%r10),%r8d
  0.54%    0.68%  │││  0x00007f539d2161a1: mov    0x14(%r10),%edi    ;*getfield arg
                  │││                                                ; - com.google.re2j.Machine::add@145 (line 363)
  0.12%    0.10%  │││  0x00007f539d2161a5: movslq %r11d,%r10
  0.64%    0.69%  │││  0x00007f539d2161a8: mov    %r8,%rcx
  0.37%    0.40%  │││  0x00007f539d2161ab: shl    $0x3,%rcx          ;*getfield outInst
                  │││                                                ; - com.google.re2j.Machine::add@180 (line 369)
  0.60%    0.53%  │││  0x00007f539d2161af: movabs $0x7f539d216060,%r8  ;   {section_word}
  0.17%    0.08%  │││  0x00007f539d2161b9: jmpq   *-0x8(%r8,%r10,8)  ;*tableswitch
                  │││                                                ; - com.google.re2j.Machine::add@28 (line 349)
  0.02%    0.02%  ↘││  0x00007f539d2161be: mov    0xc(%r12,%r9,8),%edx  ; implicit exception: dispatches to 0x00007f539d216859
  0.10%    0.06%   ││  0x00007f539d2161c3: cmp    %edx,%ebp
                   ││  0x00007f539d2161c5: jae    0x00007f539d2166f5
  0.06%    0.07%   ││  0x00007f539d2161cb: lea    (%r12,%r9,8),%r11
  0.00%    0.00%   ││  0x00007f539d2161cf: mov    0x10(%r11,%rbp,4),%ebp  ;*aaload
                   ││                                                ; - com.google.re2j.Machine$Queue::contains@22 (line 50)
                   ││                                                ; - com.google.re2j.Machine::add@5 (line 345)
  0.06%    0.08%   ││  0x00007f539d2161d4: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f539d216869
  0.34%    0.38%   ││  0x00007f539d2161d9: cmp    %r8d,%r11d
                   │╰  0x00007f539d2161dc: jne    0x00007f539d216136
                   │   0x00007f539d2161e2: mov    0x70(%rsp),%rax
                   │   0x00007f539d2161e7: jmpq   0x00007f539d216430
                   ↘   0x00007f539d2161ec: mov    0x60(%r15),%rbx
                       0x00007f539d2161f0: mov    %rbx,%r10
                       0x00007f539d2161f3: add    $0x18,%r10
                       0x00007f539d2161f7: cmp    0x70(%r15),%r10
                       0x00007f539d2161fb: jae    0x00007f539d2166a1
                       0x00007f539d216201: mov    %r10,0x60(%r15)
                       0x00007f539d216205: prefetchnta 0xc0(%r10)
....................................................................................................
 27.41%   27.81%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 477 (494 bytes) 

                               # parm6:    [sp+0x78]   = int
                               # parm7:    [sp+0x80]   = boolean
                               0x00007f539d217840: mov    0x8(%rsi),%r10d
                               0x00007f539d217844: shl    $0x3,%r10
                               0x00007f539d217848: cmp    %r10,%rax
                               0x00007f539d21784b: jne    0x00007f539d045e20  ;   {runtime_call}
                               0x00007f539d217851: data16 xchg %ax,%ax
                               0x00007f539d217854: nopl   0x0(%rax,%rax,1)
                               0x00007f539d21785c: data16 data16 xchg %ax,%ax
                             [Verified Entry Point]
  0.15%    0.09%               0x00007f539d217860: mov    %eax,-0x14000(%rsp)
  0.17%    0.11%               0x00007f539d217867: push   %rbp
  0.05%    0.04%               0x00007f539d217868: sub    $0x60,%rsp         ;*synchronization entry
                                                                             ; - com.google.re2j.Machine::step@-1 (line 269)
  0.07%    0.09%               0x00007f539d21786c: mov    %edi,0x20(%rsp)
  0.15%    0.14%               0x00007f539d217870: mov    %r9d,0x14(%rsp)
  0.07%    0.04%               0x00007f539d217875: mov    %rcx,0x18(%rsp)
  0.04%    0.02%               0x00007f539d21787a: mov    %r8d,0x10(%rsp)
  0.08%    0.08%               0x00007f539d21787f: mov    %rdx,0x8(%rsp)
  0.13%    0.06%               0x00007f539d217884: mov    %rsi,0x28(%rsp)
  0.04%    0.06%               0x00007f539d217889: mov    0x14(%rsi),%r11d   ;*getfield re2
                                                                             ; - com.google.re2j.Machine::step@1 (line 269)
  0.05%    0.04%               0x00007f539d21788d: movzbl 0x18(%r12,%r11,8),%r11d  ;*getfield longest
                                                                             ; - com.google.re2j.Machine::step@4 (line 269)
                                                                             ; implicit exception: dispatches to 0x00007f539d217fa5
  0.04%    0.03%               0x00007f539d217893: mov    %r11d,0x24(%rsp)
  0.11%    0.09%               0x00007f539d217898: mov    0xc(%rdx),%r10d    ; implicit exception: dispatches to 0x00007f539d217fb5
  0.04%    0.03%               0x00007f539d21789c: test   %r10d,%r10d
                               0x00007f539d21789f: jle    0x00007f539d217b71  ;*if_icmpge
                                                                             ; - com.google.re2j.Machine::step@18 (line 270)
  0.05%    0.02%               0x00007f539d2178a5: xor    %r10d,%r10d
  0.05%    0.02%  ╭            0x00007f539d2178a8: jmpq   0x00007f539d2179f4
  0.38%    0.51%  │        ↗   0x00007f539d2178ad: cmp    $0xc,%r9d
                  │╭       │   0x00007f539d2178b1: je     0x00007f539d217922
  0.12%    0.03%  ││       │   0x00007f539d2178b3: cmp    $0xc,%r9d
                  ││       │   0x00007f539d2178b7: jg     0x00007f539d217dbd
  0.02%    0.02%  ││       │   0x00007f539d2178bd: cmp    $0xb,%r9d
                  ││╭      │   0x00007f539d2178c1: jne    0x00007f539d2178d2  ;*tableswitch
                  │││      │                                                 ; - com.google.re2j.Machine::step@114 (line 285)
                  │││      │   0x00007f539d2178c3: mov    0x20(%rsp),%r9d
                  │││      │   0x00007f539d2178c8: cmp    $0xa,%r9d
                  │││╭     │   0x00007f539d2178cc: je     0x00007f539d217965  ;*ifeq
                  ││││     │                                                 ; - com.google.re2j.Machine::step@363 (line 329)
  0.37%    0.25%  ││↘│ ↗↗  │   0x00007f539d2178d2: mov    %eax,0x74(%rsp)
  0.26%    0.10%  ││ │ ││  │   0x00007f539d2178d6: mov    %r10d,%ebp
                  ││ │ ││  │   0x00007f539d2178d9: mov    0x30(%r12,%rbx,8),%r8d
  0.02%           ││ │ ││  │   0x00007f539d2178de: mov    %r14,%r9
  0.09%    0.05%  ││ │ ││  │   0x00007f539d2178e1: shl    $0x3,%r9           ;*getfield cap
                  ││ │ ││  │                                                 ; - com.google.re2j.Machine::step@172 (line 292)
  0.01%           ││ │ ││  │   0x00007f539d2178e5: mov    %r8,%rcx
                  ││ │ ││  │   0x00007f539d2178e8: shl    $0x3,%rcx          ;*getfield outInst
                  ││ │ ││  │                                                 ; - com.google.re2j.Machine::step@370 (line 330)
  0.02%    0.00%  ││ │ ││  │   0x00007f539d2178ec: mov    0x28(%rsp),%rsi
  0.14%    0.05%  ││ │ ││  │   0x00007f539d2178f1: mov    0x18(%rsp),%rdx
  0.02%           ││ │ ││  │   0x00007f539d2178f6: mov    0x14(%rsp),%r8d
                  ││ │ ││  │   0x00007f539d2178fb: mov    0x70(%rsp),%edi
  0.02%    0.01%  ││ │ ││  │   0x00007f539d2178ff: mov    %r11,(%rsp)
  0.13%    0.05%  ││ │ ││  │   0x00007f539d217903: callq  0x00007f539d046020  ; OopMap{[8]=Oop [24]=Oop [40]=Oop off=200}
                  ││ │ ││  │                                                 ;*invokespecial add
                  ││ │ ││  │                                                 ; - com.google.re2j.Machine::step@384 (line 330)
                  ││ │ ││  │                                                 ;   {optimized virtual_call}
  0.00%           ││ │ ││  │   0x00007f539d217908: mov    %rax,%rcx
  0.03%           ││ │ ││  │   0x00007f539d21790b: test   %rax,%rax
                  ││ │ ││  │   0x00007f539d21790e: je     0x00007f539d217c22  ;*ifnull
                  ││ │ ││  │                                                 ; - com.google.re2j.Machine::step@391 (line 332)
  0.01%           ││ │ ││  │   0x00007f539d217914: mov    0x20(%rsp),%r9d
                  ││ │ ││  │   0x00007f539d217919: mov    %ebp,%r10d
                  ││ │ ││  │   0x00007f539d21791c: mov    0x74(%rsp),%eax
  0.00%           ││ │╭││  │   0x00007f539d217920: jmp    0x00007f539d217968  ;*aload
                  ││ ││││  │                                                 ; - com.google.re2j.Machine::step@294 (line 311)
  0.72%    0.83%  │↘ ││││  │↗  0x00007f539d217922: cmp    $0xc,%r9d
                  │  ││││  ││  0x00007f539d217926: jne    0x00007f539d217dcd  ;*if_icmpne
                  │  ││││  ││                                                ; - com.google.re2j.Inst::matchRune@29 (line 63)
                  │  ││││  ││                                                ; - com.google.re2j.Machine::step@298 (line 311)
  0.26%    0.39%  │  ││││  ││  0x00007f539d21792c: mov    0x18(%r12,%rbx,8),%ecx  ;*getfield f0
                  │  ││││  ││                                                ; - com.google.re2j.Inst::matchRune@33 (line 64)
                  │  ││││  ││                                                ; - com.google.re2j.Machine::step@298 (line 311)
  0.00%    0.00%  │  ││││  ││  0x00007f539d217931: cmp    0x20(%rsp),%ecx
                  │  ││╰│  ││  0x00007f539d217935: je     0x00007f539d2178d2  ;*if_icmpeq
                  │  ││ │  ││                                                ; - com.google.re2j.Inst::matchRune@37 (line 64)
                  │  ││ │  ││                                                ; - com.google.re2j.Machine::step@298 (line 311)
  0.46%    0.61%  │  ││ │  ││  0x00007f539d217937: mov    0x1c(%r12,%rbx,8),%ecx  ;*getfield f1
                  │  ││ │  ││                                                ; - com.google.re2j.Inst::matchRune@41 (line 64)
                  │  ││ │  ││                                                ; - com.google.re2j.Machine::step@298 (line 311)
  0.15%    0.20%  │  ││ │  ││  0x00007f539d21793c: cmp    0x20(%rsp),%ecx
  0.21%    0.36%  │  ││ ╰  ││  0x00007f539d217940: je     0x00007f539d2178d2  ;*if_icmpeq
                  │  ││    ││                                                ; - com.google.re2j.Inst::matchRune@45 (line 64)
                  │  ││    ││                                                ; - com.google.re2j.Machine::step@298 (line 311)
  0.65%    0.68%  │  ││    ││  0x00007f539d217942: mov    0x20(%r12,%rbx,8),%ebp  ;*getfield f2
                  │  ││    ││                                                ; - com.google.re2j.Inst::matchRune@49 (line 64)
                  │  ││    ││                                                ; - com.google.re2j.Machine::step@298 (line 311)
  0.11%    0.08%  │  ││    ││  0x00007f539d217947: cmp    0x20(%rsp),%ebp
                  │  ││    ││  0x00007f539d21794b: je     0x00007f539d217e15  ;*if_icmpeq
                  │  ││    ││                                                ; - com.google.re2j.Inst::matchRune@53 (line 64)
                  │  ││    ││                                                ; - com.google.re2j.Machine::step@298 (line 311)
  0.63%    0.71%  │  ││    ││  0x00007f539d217951: mov    0x24(%r12,%rbx,8),%ebp  ;*getfield f3
                  │  ││    ││                                                ; - com.google.re2j.Inst::matchRune@57 (line 64)
                  │  ││    ││                                                ; - com.google.re2j.Machine::step@298 (line 311)
  0.02%    0.08%  │  ││    ││  0x00007f539d217956: cmp    0x20(%rsp),%ebp
                  │  ││    ││  0x00007f539d21795a: je     0x00007f539d217e49  ;*if_icmpne
                  │  ││    ││                                                ; - com.google.re2j.Inst::matchRune@61 (line 64)
                  │  ││    ││                                                ; - com.google.re2j.Machine::step@298 (line 311)
  0.50%    0.52%  │  ││    ││  0x00007f539d217960: mov    0x20(%rsp),%r9d    ;*goto
                  │  ││    ││                                                ; - com.google.re2j.Machine::step@291 (line 307)
  0.00%    0.01%  │  ↘│    ││  0x00007f539d217965: mov    %r11,%rcx          ;*aload
                  │   │    ││                                                ; - com.google.re2j.Machine::step@389 (line 332)
  0.23%    0.21%  │   ↘    ││  0x00007f539d217968: mov    0x28(%rsp),%r11
  0.03%    0.06%  │        ││  0x00007f539d21796d: mov    0x24(%r11),%ebx    ;*getfield pool
                  │        ││                                                ; - com.google.re2j.Machine::free@5 (line 160)
                  │        ││                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.61%    0.80%  │        ││  0x00007f539d217971: mov    0xc(%r12,%rbx,8),%r11d  ;*arraylength
                  │        ││                                                ; - com.google.re2j.Machine::free@8 (line 160)
                  │        ││                                                ; - com.google.re2j.Machine::step@397 (line 333)
                  │        ││                                                ; implicit exception: dispatches to 0x00007f539d217f09
  0.02%           │        ││  0x00007f539d217976: mov    0x28(%rsp),%r8
  0.18%    0.16%  │        ││  0x00007f539d21797b: mov    0xc(%r8),%ebp      ;*getfield poolSize
                  │        ││                                                ; - com.google.re2j.Machine::free@1 (line 160)
                  │        ││                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.05%    0.06%  │        ││  0x00007f539d21797f: cmp    %r11d,%ebp
                  │        ││  0x00007f539d217982: jge    0x00007f539d217d85  ;*if_icmplt
                  │        ││                                                ; - com.google.re2j.Machine::free@9 (line 160)
                  │        ││                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.64%    0.77%  │        ││  0x00007f539d217988: mov    %ebp,%r8d
           0.01%  │        ││  0x00007f539d21798b: inc    %r8d
  0.17%    0.17%  │        ││  0x00007f539d21798e: mov    0x28(%rsp),%rdi
  0.03%    0.04%  │        ││  0x00007f539d217993: mov    %r8d,0xc(%rdi)     ;*putfield poolSize
                  │        ││                                                ; - com.google.re2j.Machine::free@45 (line 163)
                  │        ││                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.74%    0.64%  │        ││  0x00007f539d217997: cmp    %r11d,%ebp
                  │        ││  0x00007f539d21799a: jae    0x00007f539d217c89  ;*aastore
                  │        ││                                                ; - com.google.re2j.Machine::free@49 (line 163)
                  │        ││                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.00%           │        ││  0x00007f539d2179a0: mov    %rcx,%r11
  0.16%    0.15%  │        ││  0x00007f539d2179a3: shr    $0x3,%r11
  0.05%    0.03%  │        ││  0x00007f539d2179a7: lea    (%r12,%rbx,8),%r10  ;*getfield pool
                  │        ││                                                ; - com.google.re2j.Machine::free@5 (line 160)
                  │        ││                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.60%    0.71%  │        ││  0x00007f539d2179ab: lea    0x10(%r10,%rbp,4),%r10
           0.01%  │        ││  0x00007f539d2179b0: mov    %r11d,(%r10)
  0.22%    0.22%  │        ││  0x00007f539d2179b3: shr    $0x9,%r10
  0.05%    0.02%  │        ││  0x00007f539d2179b7: movabs $0x7f53ad077000,%r11
  0.69%    0.60%  │        ││  0x00007f539d2179c1: mov    %r12b,(%r11,%r10,1)  ;*aastore
                  │        ││                                                ; - com.google.re2j.Machine::free@49 (line 163)
                  │        ││                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.12%    0.11%  │        ││  0x00007f539d2179c5: xor    %r10d,%r10d
  0.22%    0.18%  │      ╭ ││  0x00007f539d2179c8: jmp    0x00007f539d2179d4
  0.36%    0.40%  │      │↗││  0x00007f539d2179ca: mov    0x24(%rsp),%r10d
  0.09%    0.09%  │      ││││  0x00007f539d2179cf: mov    0x20(%rsp),%r9d    ; OopMap{[8]=Oop [24]=Oop [40]=Oop off=404}
                  │      ││││                                                ;*goto
                  │      ││││                                                ; - com.google.re2j.Machine::step@403 (line 270)
  0.29%    0.19%  │      ↘│││  0x00007f539d2179d4: test   %eax,0x17457626(%rip)        # 0x00007f53b466f000
                  │       │││                                                ;*goto
                  │       │││                                                ; - com.google.re2j.Machine::step@403 (line 270)
                  │       │││                                                ;   {poll}
  0.77%    0.62%  │       │││  0x00007f539d2179da: mov    0x8(%rsp),%r10
  0.43%    0.39%  │       │││  0x00007f539d2179df: mov    0xc(%r10),%r10d
  0.38%    0.36%  │       │││  0x00007f539d2179e3: cmp    %r10d,%eax
                  │       │││  0x00007f539d2179e6: jge    0x00007f539d217b71
  0.24%    0.18%  │       │││  0x00007f539d2179ec: mov    %r9d,0x20(%rsp)
  0.40%    0.38%  │       │││  0x00007f539d2179f1: mov    %eax,%r10d         ;*aload_1
                  │       │││                                                ; - com.google.re2j.Machine::step@21 (line 271)
  0.47%    0.52%  ↘       │││  0x00007f539d2179f4: mov    0x8(%rsp),%r11
  0.44%    0.33%          │││  0x00007f539d2179f9: mov    0x10(%r11),%r11d   ;*getfield dense
                          │││                                                ; - com.google.re2j.Machine::step@22 (line 271)
  0.48%    0.24%          │││  0x00007f539d2179fd: mov    0xc(%r12,%r11,8),%r9d  ; implicit exception: dispatches to 0x00007f539d217ee5
  1.02%    0.81%          │││  0x00007f539d217a02: cmp    %r9d,%r10d
                          │││  0x00007f539d217a05: jae    0x00007f539d217c4c
  0.61%    0.71%          │││  0x00007f539d217a0b: shl    $0x3,%r11
  0.40%    0.28%          │││  0x00007f539d217a0f: mov    0x10(%r11,%r10,4),%r11d  ;*aaload
                          │││                                                ; - com.google.re2j.Machine::step@27 (line 271)
  0.28%    0.23%          │││  0x00007f539d217a14: mov    0x10(%r12,%r11,8),%r8d  ;*getfield thread
                          │││                                                ; - com.google.re2j.Machine::step@40 (line 275)
                          │││                                                ; implicit exception: dispatches to 0x00007f539d217f19
  1.77%    1.83%          │││  0x00007f539d217a19: mov    %r10d,%eax
  0.41%    0.31%          │││  0x00007f539d217a1c: inc    %eax               ;*iadd
                          │││                                                ; - com.google.re2j.Machine::step@237 (line 298)
  0.27%    0.24%          │││  0x00007f539d217a1e: test   %r8d,%r8d
                          ╰││  0x00007f539d217a21: je     0x00007f539d2179ca  ;*ifnonnull
                           ││                                                ; - com.google.re2j.Machine::step@47 (line 276)
  0.29%    0.30%           ││  0x00007f539d217a23: mov    0x24(%rsp),%r9d
  0.46%    0.28%           ││  0x00007f539d217a28: test   %r9d,%r9d
                           ││  0x00007f539d217a2b: jne    0x00007f539d217d3d  ;*ifeq
                           ││                                                ; - com.google.re2j.Machine::step@55 (line 279)
  0.15%    0.13%           ││  0x00007f539d217a31: mov    0x10(%r12,%r8,8),%ebx  ;*getfield inst
                           ││                                                ; - com.google.re2j.Machine::step@101 (line 283)
  1.44%    1.33%           ││  0x00007f539d217a36: mov    0xc(%r12,%rbx,8),%r9d  ;*getfield op
                           ││                                                ; - com.google.re2j.Machine::step@111 (line 285)
                           ││                                                ; implicit exception: dispatches to 0x00007f539d217ef9
  3.18%    3.07%           ││  0x00007f539d217a3b: mov    0xc(%r12,%r8,8),%r14d  ;*getfield cap
                           ││                                                ; - com.google.re2j.Machine::step@172 (line 292)
  0.16%    0.09%           ││  0x00007f539d217a40: lea    (%r12,%r8,8),%r11  ;*getfield thread
                           ││                                                ; - com.google.re2j.Machine::step@40 (line 275)
  0.01%    0.00%           ││  0x00007f539d217a44: cmp    $0x9,%r9d
                           ││  0x00007f539d217a48: je     0x00007f539d217b47
  0.89%    0.96%           ││  0x00007f539d217a4e: cmp    $0x9,%r9d
                           ╰│  0x00007f539d217a52: jg     0x00007f539d2178ad
                            │  0x00007f539d217a58: cmp    $0x7,%r9d
                            │  0x00007f539d217a5c: je     0x00007f539d217dbd
                            │  0x00007f539d217a62: cmp    $0x7,%r9d
                            ╰  0x00007f539d217a66: jg     0x00007f539d217922
                               0x00007f539d217a6c: cmp    $0x6,%r9d
                               0x00007f539d217a70: jne    0x00007f539d217dbd  ;*tableswitch
                                                                             ; - com.google.re2j.Machine::step@114 (line 285)
                               0x00007f539d217a76: mov    0x78(%rsp),%r9d
                               0x00007f539d217a7b: cmp    $0x2,%r9d
....................................................................................................
 27.20%   25.77%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 487 (370 bytes) 

                          0x00007f539d2162ca: mov    %r10,(%rsp)
                          0x00007f539d2162ce: nop
                          0x00007f539d2162cf: callq  0x00007f539d046020  ; OopMap{off=532}
                                                                        ;*invokespecial add
                                                                        ; - com.google.re2j.Machine::add@190 (line 369)
                                                                        ;   {optimized virtual_call}
                  ╭       0x00007f539d2162d4: jmpq   0x00007f539d216430
                  │       0x00007f539d2162d9: mov    0x70(%rsp),%rax
                  │╭      0x00007f539d2162de: jmpq   0x00007f539d216430  ;*tableswitch
                  ││                                                    ; - com.google.re2j.Machine::add@28 (line 349)
  1.61%    1.51%  ││      0x00007f539d2162e3: mov    0x8(%rsp),%rsi
  0.14%    0.05%  ││      0x00007f539d2162e8: mov    0x28(%rsp),%rdx
  0.06%    0.06%  ││      0x00007f539d2162ed: mov    0x20(%rsp),%r8d
  0.05%    0.05%  ││      0x00007f539d2162f2: mov    0x30(%rsp),%r9
  0.44%    0.50%  ││      0x00007f539d2162f7: mov    0x38(%rsp),%edi
  0.12%    0.10%  ││      0x00007f539d2162fb: mov    0x70(%rsp),%r10
  0.05%    0.06%  ││      0x00007f539d216300: mov    %r10,(%rsp)
  0.12%    0.09%  ││      0x00007f539d216304: mov    %rsi,%rbp
  0.41%    0.41%  ││      0x00007f539d216307: callq  0x00007f539d046020  ; OopMap{rbp=Oop [40]=Oop [48]=Oop [72]=Oop off=588}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@118 (line 358)
                  ││                                                    ;   {optimized virtual_call}
  0.06%    0.06%  ││      0x00007f539d21630c: mov    0x48(%rsp),%r10
  0.18%    0.24%  ││      0x00007f539d216311: mov    0x34(%r10),%r11d
  0.38%    0.51%  ││      0x00007f539d216315: mov    %r11,%rcx
  0.04%    0.10%  ││      0x00007f539d216318: shl    $0x3,%rcx          ;*getfield argInst
                  ││                                                    ; - com.google.re2j.Machine::add@126 (line 359)
  0.03%    0.05%  ││      0x00007f539d21631c: mov    %rbp,%rsi
  0.17%    0.21%  ││      0x00007f539d21631f: mov    0x28(%rsp),%rdx
  0.37%    0.55%  ││      0x00007f539d216324: mov    0x20(%rsp),%r8d
  0.06%    0.07%  ││      0x00007f539d216329: mov    0x30(%rsp),%r9
  0.03%    0.06%  ││      0x00007f539d21632e: mov    0x38(%rsp),%edi
  0.19%    0.25%  ││      0x00007f539d216332: mov    %rax,(%rsp)
  0.39%    0.56%  ││      0x00007f539d216336: nop
  0.08%    0.08%  ││      0x00007f539d216337: callq  0x00007f539d046020  ; OopMap{off=636}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@136 (line 359)
                  ││                                                    ;   {optimized virtual_call}
  0.17%    0.13%  ││╭     0x00007f539d21633c: jmpq   0x00007f539d216430  ;*aload
                  │││                                                   ; - com.google.re2j.Machine::add@274 (line 389)
  2.06%    2.19%  │││     0x00007f539d216341: mov    0x48(%rsp),%r10
  0.36%    0.23%  │││     0x00007f539d216346: shr    $0x3,%r10          ;*putfield inst
                  │││                                                   ; - com.google.re2j.Machine::alloc@45 (line 154)
                  │││                                                   ; - com.google.re2j.Machine::add@281 (line 390)
  0.04%    0.05%  │││     0x00007f539d21634a: mov    %r10d,0x18(%rsp)
  0.08%    0.09%  │││     0x00007f539d21634f: mov    0x70(%rsp),%rbp
  0.57%    0.64%  │││     0x00007f539d216354: test   %rbp,%rbp
                  │││╭    0x00007f539d216357: jne    0x00007f539d21643c  ;*ifnonnull
                  ││││                                                  ; - com.google.re2j.Machine::add@276 (line 389)
  0.20%    0.18%  ││││    0x00007f539d21635d: mov    0x8(%rsp),%r10
  0.03%    0.02%  ││││    0x00007f539d216362: mov    0xc(%r10),%r11d    ;*getfield poolSize
                  ││││                                                  ; - com.google.re2j.Machine::alloc@1 (line 148)
                  ││││                                                  ; - com.google.re2j.Machine::add@281 (line 390)
  0.11%    0.09%  ││││    0x00007f539d216366: test   %r11d,%r11d
                  ││││    0x00007f539d216369: jle    0x00007f539d216482  ;*ifle
                  ││││                                                  ; - com.google.re2j.Machine::alloc@4 (line 148)
                  ││││                                                  ; - com.google.re2j.Machine::add@281 (line 390)
  0.65%    0.69%  ││││    0x00007f539d21636f: mov    0x24(%r10),%r9d    ;*getfield pool
                  ││││                                                  ; - com.google.re2j.Machine::alloc@18 (line 150)
                  ││││                                                  ; - com.google.re2j.Machine::add@281 (line 390)
  0.22%    0.21%  ││││    0x00007f539d216373: mov    %r11d,%ebp
  0.03%    0.02%  ││││    0x00007f539d216376: dec    %ebp               ;*isub
                  ││││                                                  ; - com.google.re2j.Machine::alloc@13 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@281 (line 390)
  0.05%    0.09%  ││││    0x00007f539d216378: mov    %ebp,0xc(%r10)     ;*putfield poolSize
                  ││││                                                  ; - com.google.re2j.Machine::alloc@14 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@281 (line 390)
  0.56%    0.68%  ││││    0x00007f539d21637c: mov    0xc(%r12,%r9,8),%r10d  ; implicit exception: dispatches to 0x00007f539d216839
  0.21%    0.24%  ││││    0x00007f539d216381: cmp    %r10d,%ebp
                  ││││    0x00007f539d216384: jae    0x00007f539d216639
  0.03%    0.02%  ││││    0x00007f539d21638a: lea    (%r12,%r9,8),%r10
  0.09%    0.09%  ││││    0x00007f539d21638e: mov    0xc(%r10,%r11,4),%r11d  ;*aaload
                  ││││                                                  ; - com.google.re2j.Machine::alloc@25 (line 150)
                  ││││                                                  ; - com.google.re2j.Machine::add@281 (line 390)
  0.59%    0.71%  ││││    0x00007f539d216393: test   %r11d,%r11d
                  ││││    0x00007f539d216396: je     0x00007f539d216655  ;*putfield inst
                  ││││                                                  ; - com.google.re2j.Machine::alloc@45 (line 154)
                  ││││                                                  ; - com.google.re2j.Machine::add@281 (line 390)
  0.22%    0.26%  ││││    0x00007f539d21639c: mov    %r11,%rbp
  0.03%    0.02%  ││││    0x00007f539d21639f: shl    $0x3,%rbp          ;*aload_2
                  ││││                                                  ; - com.google.re2j.Machine::alloc@43 (line 154)
                  ││││                                                  ; - com.google.re2j.Machine::add@281 (line 390)
  0.06%    0.06%  ││││    0x00007f539d2163a3: mov    0x18(%rsp),%r11d
  0.63%    0.52%  ││││    0x00007f539d2163a8: mov    %r11d,0x10(%rbp)
  0.49%    0.48%  ││││    0x00007f539d2163ac: mov    %rbp,%r10
  0.02%    0.00%  ││││    0x00007f539d2163af: shr    $0x9,%r10
  0.06%    0.05%  ││││    0x00007f539d2163b3: movabs $0x7f53ad077000,%r11
  0.47%    0.46%  ││││    0x00007f539d2163bd: mov    %r12b,(%r11,%r10,1)  ;*aload
                  ││││                                                  ; - com.google.re2j.Machine::add@295 (line 394)
  0.39%    0.35%  ││││ ↗  0x00007f539d2163c1: mov    0x30(%rsp),%rdi
  0.07%    0.07%  ││││ │  0x00007f539d2163c6: mov    0xc(%rdi),%r10d    ;*arraylength
                  ││││ │                                                ; - com.google.re2j.Machine::add@297 (line 394)
                  ││││ │                                                ; implicit exception: dispatches to 0x00007f539d216811
  0.13%    0.16%  ││││ │  0x00007f539d2163ca: test   %r10d,%r10d
                  ││││ │  0x00007f539d2163cd: jle    0x00007f539d216686  ;*ifle
                  ││││ │                                                ; - com.google.re2j.Machine::add@298 (line 394)
  0.53%    0.53%  ││││ │  0x00007f539d2163d3: mov    0xc(%rbp),%r11d    ;*getfield cap
                  ││││ │                                                ; - com.google.re2j.Machine::add@303 (line 394)
  0.25%    0.33%  ││││ │  0x00007f539d2163d7: mov    %r11,%r8
  0.09%    0.05%  ││││ │  0x00007f539d2163da: shl    $0x3,%r8
  0.13%    0.14%  ││││ │  0x00007f539d2163de: cmp    %rdi,%r8
                  ││││╭│  0x00007f539d2163e1: je     0x00007f539d21640e  ;*if_acmpeq
                  ││││││                                                ; - com.google.re2j.Machine::add@308 (line 394)
  0.54%    0.42%  ││││││  0x00007f539d2163e3: mov    0xc(%r12,%r11,8),%r9d  ; implicit exception: dispatches to 0x00007f539d216821
  0.50%    0.60%  ││││││  0x00007f539d2163e8: lea    (%r12,%r11,8),%rcx  ;*getfield cap
                  ││││││                                                ; - com.google.re2j.Machine::add@303 (line 394)
  0.01%    0.02%  ││││││  0x00007f539d2163ec: cmp    %r10d,%r9d
                  ││││││  0x00007f539d2163ef: jb     0x00007f539d216665
  0.56%    0.60%  ││││││  0x00007f539d2163f5: lea    0x10(%r12,%r11,8),%rsi
  0.38%    0.38%  ││││││  0x00007f539d2163fa: add    $0x10,%rdi
  0.14%    0.19%  ││││││  0x00007f539d2163fe: movslq %r10d,%rdx
  0.02%    0.01%  ││││││  0x00007f539d216401: movabs $0x7f539d052640,%r10
  0.39%    0.44%  ││││││  0x00007f539d21640b: callq  *%r10              ;*aload
                  ││││││                                                ; - com.google.re2j.Machine::add@326 (line 397)
  0.01%    0.00%  ││││↘│  0x00007f539d21640e: mov    %rbx,%r10
  0.25%    0.33%  ││││ │  0x00007f539d216411: mov    %rbp,%r11
  0.25%    0.24%  ││││ │  0x00007f539d216414: shr    $0x3,%r11
  0.62%    0.21%  ││││ │  0x00007f539d216418: mov    %r11d,0x10(%rbx)
  0.01%    0.01%  ││││ │  0x00007f539d21641c: shr    $0x9,%r10
  0.26%    0.31%  ││││ │  0x00007f539d216420: movabs $0x7f53ad077000,%r11
  0.19%    0.26%  ││││ │  0x00007f539d21642a: mov    %r12b,(%r11,%r10,1)  ;*putfield thread
                  ││││ │                                                ; - com.google.re2j.Machine::add@330 (line 397)
  0.64%    0.75%  ││││ │  0x00007f539d21642e: xor    %eax,%eax          ;*invokevirtual contains
                  ││││ │                                                ; - com.google.re2j.Machine::add@5 (line 345)
  0.73%    0.97%  ↘↘↘│ │  0x00007f539d216430: add    $0x60,%rsp
  0.46%    0.48%     │ │  0x00007f539d216434: pop    %rbp
  0.61%    0.79%     │ │  0x00007f539d216435: test   %eax,0x17458bc5(%rip)        # 0x00007f53b466f000
                     │ │                                                ;   {poll_return}
  0.93%    1.12%     │ │  0x00007f539d21643b: retq   
  0.07%    0.00%     ↘ │  0x00007f539d21643c: mov    %r10d,0x10(%rbp)
  0.01%    0.00%       │  0x00007f539d216440: mov    %rbp,%r10
  0.01%                │  0x00007f539d216443: shr    $0x9,%r10
  0.05%    0.04%       │  0x00007f539d216447: movabs $0x7f53ad077000,%r11
  0.04%    0.00%       │  0x00007f539d216451: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                       │                                                ; - com.google.re2j.Machine::add@292 (line 392)
  0.00%    0.01%       ╰  0x00007f539d216455: jmpq   0x00007f539d2163c1  ;*tableswitch
                                                                        ; - com.google.re2j.Machine::add@28 (line 349)
                          0x00007f539d21645a: mov    0x8(%rsp),%rsi
                          0x00007f539d21645f: mov    0x28(%rsp),%rdx
                          0x00007f539d216464: mov    0x20(%rsp),%r8d
                          0x00007f539d216469: mov    0x30(%rsp),%r9
                          0x00007f539d21646e: mov    %r11d,%edi
                          0x00007f539d216471: mov    0x70(%rsp),%r10
                          0x00007f539d216476: mov    %r10,(%rsp)
                          0x00007f539d21647a: nop
....................................................................................................
 22.36%   23.67%  <total for region 3>

....[Hottest Regions]...............................................................................
 27.41%   27.81%         C2, level 4  com.google.re2j.Machine::add, version 487 (249 bytes) 
 27.20%   25.77%         C2, level 4  com.google.re2j.Machine::step, version 477 (494 bytes) 
 22.36%   23.67%         C2, level 4  com.google.re2j.Machine::add, version 487 (370 bytes) 
  9.89%   10.61%         C2, level 4  com.google.re2j.Machine::match, version 522 (901 bytes) 
  6.29%    5.93%        runtime stub  StubRoutines::jint_disjoint_arraycopy (128 bytes) 
  1.78%    1.82%         C2, level 4  com.google.re2j.Machine::step, version 477 (73 bytes) 
  0.84%    0.83%   [kernel.kallsyms]  [unknown] (9 bytes) 
  0.52%    0.57%         C2, level 4  com.google.re2j.Machine::add, version 487 (44 bytes) 
  0.38%    0.09%         C2, level 4  com.google.re2j.Machine::init, version 524 (292 bytes) 
  0.27%    0.25%         C2, level 4  com.google.re2j.Machine::step, version 477 (72 bytes) 
  0.23%    0.33%         C2, level 4  com.google.re2j.Machine::match, version 522 (98 bytes) 
  0.11%    0.01%   [kernel.kallsyms]  [unknown] (2 bytes) 
  0.10%    0.01%   [kernel.kallsyms]  [unknown] (47 bytes) 
  0.06%    0.01%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.06%    0.05%         C2, level 4  com.google.re2j.Machine::match, version 522 (204 bytes) 
  0.05%    0.02%         C2, level 4  com.google.re2j.Machine::init, version 524 (46 bytes) 
  0.05%    0.03%         C2, level 4  com.google.re2j.Matcher::find, version 539 (28 bytes) 
  0.05%    0.04%         C2, level 4  com.google.re2j.Matcher::find, version 539 (23 bytes) 
  0.04%    0.02%   [kernel.kallsyms]  [unknown] (14 bytes) 
  0.04%    0.02%   [kernel.kallsyms]  [unknown] (46 bytes) 
  2.28%    2.12%  <...other 504 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 50.29%   52.05%         C2, level 4  com.google.re2j.Machine::add, version 487 
 29.26%   27.84%         C2, level 4  com.google.re2j.Machine::step, version 477 
 10.30%   11.06%         C2, level 4  com.google.re2j.Machine::match, version 522 
  6.29%    5.93%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
  1.79%    1.60%   [kernel.kallsyms]  [unknown] 
  0.51%    0.14%         C2, level 4  com.google.re2j.Machine::init, version 524 
  0.27%    0.10%         C2, level 4  com.google.re2j.Matcher::find, version 539 
  0.12%    0.02%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testCombine_jmhTest::testCombine_thrpt_jmhStub, version 633 
  0.04%    0.14%        libc-2.26.so  vfprintf 
  0.03%    0.02%         C2, level 4  java.util.Collections::shuffle, version 568 
  0.03%    0.04%      hsdis-amd64.so  [unknown] 
  0.03%    0.05%           libjvm.so  RelocIterator::initialize 
  0.03%    0.05%         C2, level 4  com.google.re2j.MachineInput$UTF16Input::indexOf, version 551 
  0.03%    0.06%           libjvm.so  xmlTextStream::write 
  0.03%    0.04%           libjvm.so  fileStream::write 
  0.02%    0.05%        libc-2.26.so  _IO_fwrite 
  0.02%    0.01%         C2, level 4  com.github.arnaudroger.re2j.Re2jFindRegex::testCombine, version 569 
  0.02%    0.01%           libjvm.so  decode_env::handle_event 
  0.02%    0.00%  libpthread-2.26.so  __libc_write 
  0.02%    0.00%  libpthread-2.26.so  pthread_cond_timedwait@@GLIBC_2.3.2 
  0.81%    0.40%  <...other 128 warm methods...>
....................................................................................................
100.00%   99.62%  <totals>

....[Distribution by Source]........................................................................
 90.86%   91.30%         C2, level 4
  6.30%    5.94%        runtime stub
  1.79%    1.60%   [kernel.kallsyms]
  0.63%    0.65%           libjvm.so
  0.20%    0.37%        libc-2.26.so
  0.09%    0.06%  libpthread-2.26.so
  0.04%    0.05%      hsdis-amd64.so
  0.04%    0.02%         interpreter
  0.02%    0.01%              [vdso]
  0.01%                  C1, level 3
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:44

Benchmark                        Mode  Cnt     Score    Error  Units
Re2jFindRegex.testCombine       thrpt   20  4193.321 ± 54.423  ops/s
Re2jFindRegex.testCombine:·asm  thrpt            NaN             ---
