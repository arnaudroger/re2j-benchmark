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
# Warmup Iteration   1: 3551.086 ops/s
# Warmup Iteration   2: 6741.983 ops/s
# Warmup Iteration   3: 6742.970 ops/s
# Warmup Iteration   4: 6727.651 ops/s
# Warmup Iteration   5: 6694.955 ops/s
# Warmup Iteration   6: 6635.858 ops/s
# Warmup Iteration   7: 6737.517 ops/s
# Warmup Iteration   8: 6745.142 ops/s
# Warmup Iteration   9: 6696.137 ops/s
# Warmup Iteration  10: 6553.104 ops/s
# Warmup Iteration  11: 6732.264 ops/s
# Warmup Iteration  12: 6690.153 ops/s
# Warmup Iteration  13: 6776.357 ops/s
# Warmup Iteration  14: 6775.601 ops/s
# Warmup Iteration  15: 6777.666 ops/s
# Warmup Iteration  16: 6770.745 ops/s
# Warmup Iteration  17: 6626.115 ops/s
# Warmup Iteration  18: 4539.284 ops/s
# Warmup Iteration  19: 6705.881 ops/s
# Warmup Iteration  20: 6690.605 ops/s
Iteration   1: 6691.950 ops/s
Iteration   2: 6579.716 ops/s
Iteration   3: 6566.508 ops/s
Iteration   4: 6685.002 ops/s
Iteration   5: 6750.589 ops/s
Iteration   6: 6751.558 ops/s
Iteration   7: 6751.388 ops/s
Iteration   8: 6746.402 ops/s
Iteration   9: 6788.658 ops/s
Iteration  10: 4525.901 ops/s
Iteration  11: 6787.022 ops/s
Iteration  12: 6782.062 ops/s
Iteration  13: 6788.314 ops/s
Iteration  14: 6787.316 ops/s
Iteration  15: 6788.548 ops/s
Iteration  16: 6787.722 ops/s
Iteration  17: 6786.630 ops/s
Iteration  18: 6787.469 ops/s
Iteration  19: 6786.134 ops/s
Iteration  20: 6781.312 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  6635.010 ±(99.9%) 434.960 ops/s [Average]
  (min, avg, max) = (4525.901, 6635.010, 6788.658), stdev = 500.901
  CI (99.9%): [6200.050, 7069.970] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1:·asm":
PrintAssembly processed: 195983 total address lines.
Perf output processed (skipped 23.328 seconds):
 Column 1: cycles (20458 events)
 Column 2: instructions (20406 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 496 (279 bytes) 

                      # parm4:    rdi       = int
                      # parm5:    [sp+0x60]   = &apos;com/google/re2j/Machine$Thread&apos;  (sp of caller)
                      0x00007fd068bde860: mov    0x8(%rsi),%r10d    ;   {no_reloc}
                      0x00007fd068bde864: shl    $0x3,%r10
                      0x00007fd068bde868: cmp    %r10,%rax
                      0x00007fd068bde86b: jne    0x00007fd068a0ce20  ;   {runtime_call}
                      0x00007fd068bde871: data16 xchg %ax,%ax
                      0x00007fd068bde874: nopl   0x0(%rax,%rax,1)
                      0x00007fd068bde87c: data16 data16 xchg %ax,%ax
                    [Verified Entry Point]
  0.47%    0.53%      0x00007fd068bde880: mov    %eax,-0x14000(%rsp)
  1.15%    1.01%      0x00007fd068bde887: push   %rbp
  0.28%    0.33%      0x00007fd068bde888: sub    $0x50,%rsp         ;*synchronization entry
                                                                    ; - com.google.re2j.Machine::add@-1 (line 344)
  1.04%    1.15%      0x00007fd068bde88c: mov    %edi,0x28(%rsp)
  0.19%    0.23%      0x00007fd068bde890: mov    %r9,0x20(%rsp)
  0.22%    0.25%      0x00007fd068bde895: mov    %r8d,0x1c(%rsp)
  0.19%    0.28%      0x00007fd068bde89a: mov    %rsi,0x8(%rsp)
  0.95%    1.10%      0x00007fd068bde89f: test   %ecx,%ecx
                      0x00007fd068bde8a1: je     0x00007fd068bdecad  ;*ifne
                                                                    ; - com.google.re2j.Machine::add@1 (line 344)
  0.17%    0.23%      0x00007fd068bde8a7: mov    %rdx,0x38(%rsp)
  0.20%    0.23%      0x00007fd068bde8ac: mov    0x14(%rdx),%r11d   ;*getfield sparse
                                                                    ; - com.google.re2j.Machine$Queue::contains@1 (line 46)
                                                                    ; - com.google.re2j.Machine::add@9 (line 347)
                                                                    ; implicit exception: dispatches to 0x00007fd068bdedf1
  0.22%    0.31%      0x00007fd068bde8b0: mov    0xc(%r12,%r11,8),%edi  ; implicit exception: dispatches to 0x00007fd068bdee05
  0.93%    1.28%      0x00007fd068bde8b5: cmp    %edi,%ecx
                      0x00007fd068bde8b7: jae    0x00007fd068bdeba2  ;*iaload
                                                                    ; - com.google.re2j.Machine$Queue::contains@5 (line 46)
                                                                    ; - com.google.re2j.Machine::add@9 (line 347)
  0.21%    0.20%      0x00007fd068bde8bd: mov    0x10(%rdx),%r9d    ;*getfield dense
                                                                    ; - com.google.re2j.Machine$Queue::contains@18 (line 50)
                                                                    ; - com.google.re2j.Machine::add@9 (line 347)
  0.30%    0.15%      0x00007fd068bde8c1: mov    0xc(%rdx),%r8d     ;*getfield size
                                                                    ; - com.google.re2j.Machine$Queue::contains@9 (line 47)
                                                                    ; - com.google.re2j.Machine::add@9 (line 347)
  0.17%    0.32%      0x00007fd068bde8c5: lea    (%r12,%r11,8),%rdx
  0.83%    1.02%      0x00007fd068bde8c9: mov    0x10(%rdx,%rcx,4),%ebp  ;*iaload
                                                                    ; - com.google.re2j.Machine$Queue::contains@5 (line 46)
                                                                    ; - com.google.re2j.Machine::add@9 (line 347)
  0.28%    0.22%      0x00007fd068bde8cd: cmp    %r8d,%ebp
                  ╭   0x00007fd068bde8d0: jl     0x00007fd068bde97c  ;*iastore
                  │                                                 ; - com.google.re2j.Machine$Queue::add@18 (line 58)
                  │                                                 ; - com.google.re2j.Machine::add@20 (line 350)
  0.26%    0.20%  │↗  0x00007fd068bde8d6: mov    %r8d,%r10d
  0.18%    0.18%  ││  0x00007fd068bde8d9: inc    %r10d
  0.91%    0.93%  ││  0x00007fd068bde8dc: mov    0x38(%rsp),%rbx
  0.33%    0.32%  ││  0x00007fd068bde8e1: mov    %r10d,0xc(%rbx)    ;*putfield size
                  ││                                                ; - com.google.re2j.Machine$Queue::add@8 (line 57)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 350)
  0.55%    0.37%  ││  0x00007fd068bde8e5: cmp    %edi,%ecx
                  ││  0x00007fd068bde8e7: jae    0x00007fd068bdebdd
  0.18%    0.10%  ││  0x00007fd068bde8ed: mov    %r8d,0x10(%rdx,%rcx,4)  ;*iastore
                  ││                                                ; - com.google.re2j.Machine$Queue::add@18 (line 58)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 350)
  0.86%    0.84%  ││  0x00007fd068bde8f2: mov    0xc(%r12,%r9,8),%r11d  ; implicit exception: dispatches to 0x00007fd068bdee19
  0.19%    0.23%  ││  0x00007fd068bde8f7: cmp    %r11d,%r8d
                  ││  0x00007fd068bde8fa: jae    0x00007fd068bdec29
  0.40%    0.19%  ││  0x00007fd068bde900: lea    (%r12,%r9,8),%r10
  0.15%    0.17%  ││  0x00007fd068bde904: mov    0x10(%r10,%r8,4),%r13d  ;*aaload
                  ││                                                ; - com.google.re2j.Machine$Queue::add@24 (line 59)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 350)
  0.80%    0.87%  ││  0x00007fd068bde909: test   %r13d,%r13d
                  ││  0x00007fd068bde90c: je     0x00007fd068bdecd5  ;*ifnonnull
                  ││                                                ; - com.google.re2j.Machine$Queue::add@27 (line 60)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 350)
  0.19%    0.15%  ││  0x00007fd068bde912: mov    %ecx,0xc(%r12,%r13,8)  ;*putfield pc
                  ││                                                ; - com.google.re2j.Machine$Queue::add@52 (line 64)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 350)
  0.88%    1.05%  ││  0x00007fd068bde917: mov    0x18(%rsi),%r11d   ;*getfield prog
                  ││                                                ; - com.google.re2j.Machine::add@26 (line 351)
  0.15%    0.09%  ││  0x00007fd068bde91b: mov    %r12d,0x10(%r12,%r13,8)  ;*putfield thread
                  ││                                                ; - com.google.re2j.Machine$Queue::add@47 (line 63)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 350)
  1.06%    1.04%  ││  0x00007fd068bde920: mov    0x18(%r12,%r11,8),%ebp  ;*getfield inst
                  ││                                                ; - com.google.re2j.Prog::getInst@1 (line 30)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 351)
                  ││                                                ; implicit exception: dispatches to 0x00007fd068bdee2d
  0.16%    0.14%  ││  0x00007fd068bde925: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007fd068bdee41
  0.50%    0.44%  ││  0x00007fd068bde92a: cmp    %r10d,%ecx
                  ││  0x00007fd068bde92d: jae    0x00007fd068bdec71
  0.27%    0.20%  ││  0x00007fd068bde933: lea    (%r12,%rbp,8),%r10
  0.88%    0.76%  ││  0x00007fd068bde937: mov    0x10(%r10,%rcx,4),%r11d  ;*aaload
                  ││                                                ; - com.google.re2j.Prog::getInst@5 (line 30)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 351)
  0.18%    0.13%  ││  0x00007fd068bde93c: mov    %r11d,0x30(%rsp)
  0.36%    0.33%  ││  0x00007fd068bde941: mov    0xc(%r12,%r11,8),%r9d  ;*getfield op
                  ││                                                ; - com.google.re2j.Machine::add@37 (line 352)
                  ││                                                ; implicit exception: dispatches to 0x00007fd068bdee55
  1.07%    1.17%  ││  0x00007fd068bde946: mov    %r9d,%r11d
  0.60%    0.40%  ││  0x00007fd068bde949: dec    %r11d
  0.57%    0.56%  ││  0x00007fd068bde94c: cmp    $0xb,%r11d
                  ││  0x00007fd068bde950: jae    0x00007fd068bdec9d  ;*tableswitch
                  ││                                                ; - com.google.re2j.Machine::add@40 (line 352)
  0.68%    0.79%  ││  0x00007fd068bde956: mov    0x30(%rsp),%r10d
  0.05%    0.06%  ││  0x00007fd068bde95b: mov    0x14(%r12,%r10,8),%r10d  ;*getfield arg
                  ││                                                ; - com.google.re2j.Machine::add@156 (line 366)
  3.03%    2.70%  ││  0x00007fd068bde960: mov    0x30(%rsp),%r11d
  0.11%    0.09%  ││  0x00007fd068bde965: mov    0x10(%r12,%r11,8),%ecx  ;*getfield out
                  ││                                                ; - com.google.re2j.Machine::add@193 (line 372)
  1.25%    1.19%  ││  0x00007fd068bde96a: movslq %r9d,%r11
           0.03%  ││  0x00007fd068bde96d: movabs $0x7fd068bde800,%r8  ;   {section_word}
  0.20%    0.09%  ││  0x00007fd068bde977: jmpq   *-0x8(%r8,%r11,8)  ;*tableswitch
                  ││                                                ; - com.google.re2j.Machine::add@40 (line 352)
  0.00%           ↘│  0x00007fd068bde97c: mov    0xc(%r12,%r9,8),%ebx  ; implicit exception: dispatches to 0x00007fd068bdeec1
                   │  0x00007fd068bde981: cmp    %ebx,%ebp
                   │  0x00007fd068bde983: jae    0x00007fd068bdedd9
  0.00%            │  0x00007fd068bde989: lea    (%r12,%r9,8),%r10
                   │  0x00007fd068bde98d: mov    0x10(%r10,%rbp,4),%ebp  ;*aaload
                   │                                                ; - com.google.re2j.Machine$Queue::contains@22 (line 50)
                   │                                                ; - com.google.re2j.Machine::add@9 (line 347)
  0.00%    0.00%   │  0x00007fd068bde992: mov    0xc(%r12,%rbp,8),%ebx  ; implicit exception: dispatches to 0x00007fd068bdeed1
  0.01%    0.00%   │  0x00007fd068bde997: cmp    %ecx,%ebx
                   ╰  0x00007fd068bde999: jne    0x00007fd068bde8d6
                      0x00007fd068bde99f: mov    0x60(%rsp),%rax
                      0x00007fd068bde9a4: jmpq   0x00007fd068bdeb72
                      0x00007fd068bde9a9: mov    0x28(%rsp),%ebx
                      0x00007fd068bde9ad: andn   %r10d,%ebx,%r11d
                      0x00007fd068bde9b2: test   %r11d,%r11d
                      0x00007fd068bde9b5: je     0x00007fd068bdeb7e  ;*ifne
                                                                    ; - com.google.re2j.Machine::add@164 (line 366)
                      0x00007fd068bde9bb: mov    0x60(%rsp),%rax
                      0x00007fd068bde9c0: jmpq   0x00007fd068bdeb72
....................................................................................................
 24.78%   24.65%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 488 (620 bytes) 

                                # parm6:    [sp+0x78]   = int
                                # parm7:    [sp+0x80]   = boolean
                                0x00007fd068bdb880: mov    0x8(%rsi),%r10d
                                0x00007fd068bdb884: shl    $0x3,%r10
                                0x00007fd068bdb888: cmp    %r10,%rax
                                0x00007fd068bdb88b: jne    0x00007fd068a0ce20  ;   {runtime_call}
                                0x00007fd068bdb891: data16 xchg %ax,%ax
                                0x00007fd068bdb894: nopl   0x0(%rax,%rax,1)
                                0x00007fd068bdb89c: data16 data16 xchg %ax,%ax
                              [Verified Entry Point]
  0.05%    0.04%                0x00007fd068bdb8a0: mov    %eax,-0x14000(%rsp)
  0.21%    0.22%                0x00007fd068bdb8a7: push   %rbp
  0.05%    0.02%                0x00007fd068bdb8a8: sub    $0x60,%rsp         ;*synchronization entry
                                                                              ; - com.google.re2j.Machine::step@-1 (line 269)
  0.04%    0.02%                0x00007fd068bdb8ac: mov    %edi,0x20(%rsp)
  0.15%    0.13%                0x00007fd068bdb8b0: mov    %r9d,0x14(%rsp)
  0.04%    0.00%                0x00007fd068bdb8b5: mov    %rcx,0x18(%rsp)
  0.06%    0.04%                0x00007fd068bdb8ba: mov    %r8d,0x10(%rsp)
  0.06%    0.04%                0x00007fd068bdb8bf: mov    %rdx,0x8(%rsp)
  0.19%    0.22%                0x00007fd068bdb8c4: mov    %rsi,0x28(%rsp)
  0.03%    0.01%                0x00007fd068bdb8c9: mov    0x14(%rsi),%r10d   ;*getfield re2
                                                                              ; - com.google.re2j.Machine::step@1 (line 269)
  0.03%    0.03%                0x00007fd068bdb8cd: movzbl 0x18(%r12,%r10,8),%r11d  ;*getfield longest
                                                                              ; - com.google.re2j.Machine::step@4 (line 269)
                                                                              ; implicit exception: dispatches to 0x00007fd068bdc841
  0.26%    0.22%                0x00007fd068bdb8d3: mov    %r11d,0x24(%rsp)
  0.17%    0.10%                0x00007fd068bdb8d8: mov    0xc(%rdx),%r11d    ; implicit exception: dispatches to 0x00007fd068bdc851
  0.02%    0.00%                0x00007fd068bdb8dc: test   %r11d,%r11d
                                0x00007fd068bdb8df: jle    0x00007fd068bdbbe6  ;*if_icmpge
                                                                              ; - com.google.re2j.Machine::step@18 (line 270)
  0.03%    0.02%                0x00007fd068bdb8e5: xor    %r10d,%r10d
  0.00%    0.01%  ╭             0x00007fd068bdb8e8: jmpq   0x00007fd068bdb987
  0.23%    0.27%  │  ↗          0x00007fd068bdb8ed: mov    0xc(%r12,%rdi,8),%ebx  ; implicit exception: dispatches to 0x00007fd068bdc831
  1.01%    1.15%  │  │          0x00007fd068bdb8f2: test   %ebx,%ebx
                  │  │          0x00007fd068bdb8f4: jbe    0x00007fd068bdc0f9  ;*iaload
                  │  │                                                        ; - com.google.re2j.Machine::step@310 (line 314)
  0.33%    0.35%  │  │          0x00007fd068bdb8fa: mov    0x10(%r12,%rdi,8),%ebx
  0.09%    0.03%  │  │          0x00007fd068bdb8ff: mov    0x20(%rsp),%ecx
                  │  │          0x00007fd068bdb903: cmp    %ebx,%ecx
                  │  │          0x00007fd068bdb905: je     0x00007fd068bdbf0a  ;*goto
                  │  │                                                        ; - com.google.re2j.Machine::step@299 (line 311)
  0.39%    0.32%  │  │  ↗       0x00007fd068bdb90b: mov    %r11,%r9           ;*aload
                  │  │  │                                                     ; - com.google.re2j.Machine::step@385 (line 331)
  0.02%    0.00%  │  │  │   ↗   0x00007fd068bdb90e: mov    0x28(%rsp),%r11
  0.06%    0.04%  │  │  │   │   0x00007fd068bdb913: mov    0x24(%r11),%r8d    ;*getfield pool
                  │  │  │   │                                                 ; - com.google.re2j.Machine::free@5 (line 160)
                  │  │  │   │                                                 ; - com.google.re2j.Machine::step@393 (line 332)
  0.22%    0.14%  │  │  │   │   0x00007fd068bdb917: mov    0xc(%r12,%r8,8),%r11d  ;*arraylength
                  │  │  │   │                                                 ; - com.google.re2j.Machine::free@8 (line 160)
                  │  │  │   │                                                 ; - com.google.re2j.Machine::step@393 (line 332)
                  │  │  │   │                                                 ; implicit exception: dispatches to 0x00007fd068bdc795
  0.37%    0.25%  │  │  │   │   0x00007fd068bdb91c: mov    0x28(%rsp),%rbx
                  │  │  │   │   0x00007fd068bdb921: mov    0xc(%rbx),%ebp     ;*getfield poolSize
                  │  │  │   │                                                 ; - com.google.re2j.Machine::free@1 (line 160)
                  │  │  │   │                                                 ; - com.google.re2j.Machine::step@393 (line 332)
  0.08%    0.00%  │  │  │   │   0x00007fd068bdb924: cmp    %r11d,%ebp
                  │  │  │   │   0x00007fd068bdb927: jge    0x00007fd068bdc189  ;*if_icmplt
                  │  │  │   │                                                 ; - com.google.re2j.Machine::free@9 (line 160)
                  │  │  │   │                                                 ; - com.google.re2j.Machine::step@393 (line 332)
  0.20%    0.16%  │  │  │   │   0x00007fd068bdb92d: mov    %ebp,%edi
  0.42%    0.35%  │  │  │   │   0x00007fd068bdb92f: inc    %edi
  0.00%           │  │  │   │   0x00007fd068bdb931: mov    %edi,0xc(%rbx)     ;*putfield poolSize
                  │  │  │   │                                                 ; - com.google.re2j.Machine::free@45 (line 163)
                  │  │  │   │                                                 ; - com.google.re2j.Machine::step@393 (line 332)
  0.05%    0.02%  │  │  │   │   0x00007fd068bdb934: cmp    %r11d,%ebp
                  │  │  │   │   0x00007fd068bdb937: jae    0x00007fd068bdbff1  ;*aastore
                  │  │  │   │                                                 ; - com.google.re2j.Machine::free@49 (line 163)
                  │  │  │   │                                                 ; - com.google.re2j.Machine::step@393 (line 332)
  0.22%    0.17%  │  │  │   │   0x00007fd068bdb93d: mov    %r9,%r10
  0.28%    0.36%  │  │  │   │   0x00007fd068bdb940: shr    $0x3,%r10
           0.01%  │  │  │   │   0x00007fd068bdb944: lea    (%r12,%r8,8),%r11  ;*getfield pool
                  │  │  │   │                                                 ; - com.google.re2j.Machine::free@5 (line 160)
                  │  │  │   │                                                 ; - com.google.re2j.Machine::step@393 (line 332)
  0.05%    0.03%  │  │  │   │   0x00007fd068bdb948: lea    0x10(%r11,%rbp,4),%r11
  0.20%    0.17%  │  │  │   │   0x00007fd068bdb94d: mov    %r10d,(%r11)
  0.40%    0.40%  │  │  │   │   0x00007fd068bdb950: mov    %r11,%r10
                  │  │  │   │   0x00007fd068bdb953: shr    $0x9,%r10
  0.07%    0.07%  │  │  │   │   0x00007fd068bdb957: movabs $0x7fd0643f5000,%r11
  0.15%    0.25%  │  │  │   │   0x00007fd068bdb961: mov    %r12b,(%r11,%r10,1)  ;*aastore
                  │  │  │   │                                                 ; - com.google.re2j.Machine::free@49 (line 163)
                  │  │  │   │                                                 ; - com.google.re2j.Machine::step@393 (line 332)
  0.35%    0.34%  │  │  │   │   0x00007fd068bdb965: xor    %r11d,%r11d        ; OopMap{[8]=Oop [24]=Oop [40]=Oop off=232}
                  │  │  │   │                                                 ;*goto
                  │  │  │   │                                                 ; - com.google.re2j.Machine::step@399 (line 270)
  0.20%    0.24%  │ ↗│  │  ↗│   0x00007fd068bdb968: test   %eax,0x15e80692(%rip)        # 0x00007fd07ea5c000
                  │ ││  │  ││                                                 ;*goto
                  │ ││  │  ││                                                 ; - com.google.re2j.Machine::step@399 (line 270)
                  │ ││  │  ││                                                 ;   {poll}
  0.52%    0.52%  │ ││  │  ││   0x00007fd068bdb96e: mov    0x8(%rsp),%r10
  0.44%    0.37%  │ ││  │  ││   0x00007fd068bdb973: mov    0xc(%r10),%r11d
  0.36%    0.25%  │ ││  │  ││   0x00007fd068bdb977: cmp    %r11d,%eax
                  │ ││  │  ││   0x00007fd068bdb97a: jge    0x00007fd068bdbbe6
  0.28%    0.18%  │ ││  │  ││   0x00007fd068bdb980: mov    %ecx,0x20(%rsp)
  0.46%    0.38%  │ ││  │  ││   0x00007fd068bdb984: mov    %eax,%r10d         ;*aload_1
                  │ ││  │  ││                                                 ; - com.google.re2j.Machine::step@21 (line 271)
  0.50%    0.54%  ↘ ││  │  ││   0x00007fd068bdb987: mov    0x8(%rsp),%r11
  0.26%    0.02%    ││  │  ││   0x00007fd068bdb98c: mov    0x10(%r11),%r8d    ;*getfield dense
                    ││  │  ││                                                 ; - com.google.re2j.Machine::step@22 (line 271)
  0.43%    0.40%    ││  │  ││   0x00007fd068bdb990: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x00007fd068bdc761
  1.29%    1.23%    ││  │  ││   0x00007fd068bdb995: cmp    %r11d,%r10d
                    ││  │  ││   0x00007fd068bdb998: jae    0x00007fd068bdbf2c
  0.73%    0.69%    ││  │  ││   0x00007fd068bdb99e: lea    (%r12,%r8,8),%r11
  0.25%    0.03%    ││  │  ││   0x00007fd068bdb9a2: mov    0x10(%r11,%r10,4),%r11d  ;*aaload
                    ││  │  ││                                                 ; - com.google.re2j.Machine::step@27 (line 271)
  0.14%    0.18%    ││  │  ││   0x00007fd068bdb9a7: mov    0x10(%r12,%r11,8),%r8d  ;*getfield thread
                    ││  │  ││                                                 ; - com.google.re2j.Machine::step@40 (line 275)
                    ││  │  ││                                                 ; implicit exception: dispatches to 0x00007fd068bdc7b5
  1.90%    1.78%    ││  │  ││   0x00007fd068bdb9ac: mov    %r10d,%eax
  0.37%    0.37%    ││  │  ││   0x00007fd068bdb9af: inc    %eax               ;*iadd
                    ││  │  ││                                                 ; - com.google.re2j.Machine::step@233 (line 298)
  0.22%    0.00%    ││  │  ││   0x00007fd068bdb9b1: test   %r8d,%r8d
                   ╭││  │  ││   0x00007fd068bdb9b4: jne    0x00007fd068bdb9c1  ;*ifnonnull
                   │││  │  ││                                                 ; - com.google.re2j.Machine::step@47 (line 276)
  0.41%    0.44%   │││  │  ││   0x00007fd068bdb9b6: mov    0x24(%rsp),%r11d
  0.25%    0.16%   │││  │  ││   0x00007fd068bdb9bb: mov    0x20(%rsp),%ecx
                   │╰│  │  ││   0x00007fd068bdb9bf: jmp    0x00007fd068bdb968
  0.06%    0.06%   ↘ │  │  ││   0x00007fd068bdb9c1: mov    0x24(%rsp),%r9d
  0.20%    0.17%     │  │  ││   0x00007fd068bdb9c6: test   %r9d,%r9d
                     │  │  ││   0x00007fd068bdb9c9: jne    0x00007fd068bdc141  ;*ifeq
                     │  │  ││                                                 ; - com.google.re2j.Machine::step@55 (line 279)
  0.36%    0.32%     │  │  ││   0x00007fd068bdb9cf: mov    0x10(%r12,%r8,8),%r9d  ;*getfield inst
                     │  │  ││                                                 ; - com.google.re2j.Machine::step@101 (line 283)
  1.14%    1.20%     │  │  ││   0x00007fd068bdb9d4: mov    0x18(%r12,%r9,8),%edi  ;*getfield runes
                     │  │  ││                                                 ; - com.google.re2j.Machine::step@306 (line 314)
                     │  │  ││                                                 ; implicit exception: dispatches to 0x00007fd068bdc785
  2.56%    2.87%     │  │  ││   0x00007fd068bdb9d9: mov    0xc(%r12,%r9,8),%ecx  ;*getfield op
                     │  │  ││                                                 ; - com.google.re2j.Machine::step@111 (line 285)
  0.09%    0.07%     │  │  ││   0x00007fd068bdb9de: mov    0xc(%r12,%r8,8),%r14d  ;*getfield cap
                     │  │  ││                                                 ; - com.google.re2j.Machine::step@168 (line 292)
  0.00%              │  │  ││   0x00007fd068bdb9e3: lea    (%r12,%r8,8),%r11  ;*getfield thread
                     │  │  ││                                                 ; - com.google.re2j.Machine::step@40 (line 275)
  0.20%    0.15%     │  │  ││   0x00007fd068bdb9e7: cmp    $0x9,%ecx
                     ╰  │  ││   0x00007fd068bdb9ea: je     0x00007fd068bdb8ed
  0.50%    0.37%        │  ││   0x00007fd068bdb9f0: cmp    $0x9,%ecx
                      ╭ │  ││   0x00007fd068bdb9f3: jle    0x00007fd068bdba82
  0.05%    0.01%      │ │  ││   0x00007fd068bdb9f9: cmp    $0xb,%ecx
                      │╭│  ││   0x00007fd068bdb9fc: jne    0x00007fd068bdba19  ;*tableswitch
                      │││  ││                                                 ; - com.google.re2j.Machine::step@114 (line 285)
                      │││  ││   0x00007fd068bdb9fe: mov    0x20(%rsp),%ecx
                      │││  ││   0x00007fd068bdba02: cmp    $0xa,%ecx
                      ││╰  ││   0x00007fd068bdba05: je     0x00007fd068bdb90b  ;*if_icmpeq
                      ││   ││                                                 ; - com.google.re2j.Machine::step@334 (line 322)
                      ││   ││   0x00007fd068bdba0b: mov    %r10d,0x74(%rsp)
                      ││   ││   0x00007fd068bdba10: mov    %eax,0x7c(%rsp)
                      ││   ││   0x00007fd068bdba14: mov    %r11,%r13
                      ││ ╭ ││   0x00007fd068bdba17: jmp    0x00007fd068bdba2e
  0.17%    0.07%      │↘ │ ││   0x00007fd068bdba19: cmp    $0xb,%ecx
                      │  │ ││   0x00007fd068bdba1c: jg     0x00007fd068bdc1c1  ;*tableswitch
                      │  │ ││                                                 ; - com.google.re2j.Machine::step@114 (line 285)
  0.08%    0.03%      │  │ ││   0x00007fd068bdba22: mov    %r10d,0x74(%rsp)
                      │  │ ││   0x00007fd068bdba27: mov    %eax,0x7c(%rsp)
                      │  │ ││   0x00007fd068bdba2b: mov    %r11,%r13          ;*ifeq
                      │  │ ││                                                 ; - com.google.re2j.Machine::step@359 (line 328)
  0.10%    0.02%      │  ↘ ││   0x00007fd068bdba2e: mov    0x10(%r12,%r9,8),%ecx  ;*getfield out
                      │    ││                                                 ; - com.google.re2j.Machine::step@366 (line 329)
  0.10%    0.04%      │    ││   0x00007fd068bdba33: mov    %r14,%r9
                      │    ││   0x00007fd068bdba36: shl    $0x3,%r9           ;*getfield cap
                      │    ││                                                 ; - com.google.re2j.Machine::step@168 (line 292)
  0.02%    0.01%      │    ││   0x00007fd068bdba3a: mov    0x28(%rsp),%rsi
  0.10%    0.04%      │    ││   0x00007fd068bdba3f: mov    0x18(%rsp),%rdx
  0.08%    0.07%      │    ││   0x00007fd068bdba44: mov    0x14(%rsp),%r8d
  0.00%    0.00%      │    ││   0x00007fd068bdba49: mov    0x70(%rsp),%edi
  0.01%    0.00%      │    ││   0x00007fd068bdba4d: mov    %r13,(%rsp)
  0.10%    0.09%      │    ││   0x00007fd068bdba51: xchg   %ax,%ax
  0.08%    0.02%      │    ││   0x00007fd068bdba53: callq  0x00007fd068a0d020  ; OopMap{[8]=Oop [24]=Oop [40]=Oop off=472}
                      │    ││                                                 ;*invokespecial add
                      │    ││                                                 ; - com.google.re2j.Machine::step@380 (line 329)
                      │    ││                                                 ;   {optimized virtual_call}
  0.01%    0.00%      │    ││   0x00007fd068bdba58: mov    %rax,%r9
                      │    ││   0x00007fd068bdba5b: test   %rax,%rax
                      │   ╭││   0x00007fd068bdba5e: jne    0x00007fd068bdba70  ;*ifnull
                      │   │││                                                 ; - com.google.re2j.Machine::step@387 (line 331)
                      │   │││   0x00007fd068bdba60: xor    %r11d,%r11d
  0.21%    0.24%      │   │││   0x00007fd068bdba63: mov    0x20(%rsp),%ecx
  0.01%    0.02%      │   │││   0x00007fd068bdba67: mov    0x7c(%rsp),%eax
                      │   │╰│   0x00007fd068bdba6b: jmpq   0x00007fd068bdb968
  0.00%               │   ↘ │   0x00007fd068bdba70: mov    0x20(%rsp),%ecx
                      │     │   0x00007fd068bdba74: mov    0x74(%rsp),%r10d
                      │     │   0x00007fd068bdba79: mov    0x7c(%rsp),%eax
                      │     ╰   0x00007fd068bdba7d: jmpq   0x00007fd068bdb90e
  0.08%    0.14%      ↘         0x00007fd068bdba82: cmp    $0x7,%ecx
                                0x00007fd068bdba85: je     0x00007fd068bdc1c1  ;*tableswitch
                                                                              ; - com.google.re2j.Machine::step@114 (line 285)
  0.15%    0.25%                0x00007fd068bdba8b: lea    (%r12,%r9,8),%rbx  ;*getfield inst
                                                                              ; - com.google.re2j.Machine::step@101 (line 283)
  0.01%    0.00%                0x00007fd068bdba8f: cmp    $0x7,%ecx
                             ╭  0x00007fd068bdba92: jle    0x00007fd068bdbb11  ;*tableswitch
                             │                                                ; - com.google.re2j.Machine::step@114 (line 285)
  0.12%    0.25%             │  0x00007fd068bdba94: mov    0xc(%r12,%rdi,8),%ebp  ;*arraylength
                             │                                                ; - com.google.re2j.Inst::matchRune@4 (line 49)
                             │                                                ; - com.google.re2j.Machine::step@294 (line 310)
                             │                                                ; implicit exception: dispatches to 0x00007fd068bdc871
  0.31%    0.37%             │  0x00007fd068bdba99: cmp    $0x1,%ebp
                             │  0x00007fd068bdba9c: jne    0x00007fd068bdc43d  ;*if_icmpne
                             │                                                ; - com.google.re2j.Inst::matchRune@6 (line 49)
                             │                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.22%    0.24%             │  0x00007fd068bdbaa2: test   %ebp,%ebp
                             │  0x00007fd068bdbaa4: jbe    0x00007fd068bdc299
  0.00%    0.02%             │  0x00007fd068bdbaaa: mov    0x10(%r12,%rdi,8),%edi  ;*iaload
                             │                                                ; - com.google.re2j.Inst::matchRune@14 (line 50)
                             │                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.01%    0.02%             │  0x00007fd068bdbaaf: mov    0x20(%rsp),%ecx
  0.00%    0.00%             │  0x00007fd068bdbab3: cmp    %edi,%ecx
                             │  0x00007fd068bdbab5: je     0x00007fd068bdbf1b  ;*if_icmpne
                             │                                                ; - com.google.re2j.Inst::matchRune@18 (line 51)
                             │                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.29%    0.26%             │  0x00007fd068bdbabb: mov    $0x1,%ebp
  0.01%    0.02%             │  0x00007fd068bdbac0: and    0x14(%r12,%r9,8),%ebp  ;*iand
                             │                                                ; - com.google.re2j.Inst::matchRune@28 (line 54)
                             │                                                ; - com.google.re2j.Machine::step@294 (line 310)
                             │  0x00007fd068bdbac5: test   %ebp,%ebp
                             │  0x00007fd068bdbac7: je     0x00007fd068bdc525  ;*ifeq
                             │                                                ; - com.google.re2j.Inst::matchRune@29 (line 54)
                             │                                                ; - com.google.re2j.Machine::step@294 (line 310)
                             │  0x00007fd068bdbacd: mov    %edi,%edx
  0.30%    0.20%             │  0x00007fd068bdbacf: vmovq  %rbx,%xmm0
  0.00%    0.00%             │  0x00007fd068bdbad4: mov    %r11,%r13
                             │  0x00007fd068bdbad7: mov    %r9d,%edi
           0.00%             │  0x00007fd068bdbada: mov    %eax,0x7c(%rsp)
  0.21%    0.28%             │  0x00007fd068bdbade: mov    %r8d,%ebx
  0.01%    0.00%             │  0x00007fd068bdbae1: mov    %r10d,0x74(%rsp)
                             │  0x00007fd068bdbae6: movabs $0x76dd0c420,%r9   ;   {oop(a {type array int}[63] )}
                             │  0x00007fd068bdbaf0: mov    $0x1f,%esi
  0.24%    0.18%             │  0x00007fd068bdbaf5: mov    $0x1f,%r8d
  0.00%                      │  0x00007fd068bdbafb: xor    %r10d,%r10d
                             │  0x00007fd068bdbafe: mov    $0x3f,%r11d
                             │  0x00007fd068bdbb04: mov    %r10d,0x20(%rsp)
  0.22%    0.15%             │  0x00007fd068bdbb09: mov    %r11d,%eax
  0.00%    0.01%             │  0x00007fd068bdbb0c: jmpq   0x00007fd068bdbc22
                             ↘  0x00007fd068bdbb11: cmp    $0x6,%ecx
                                0x00007fd068bdbb14: jne    0x00007fd068bdc1c1  ;*tableswitch
                                                                              ; - com.google.re2j.Machine::step@114 (line 285)
                                0x00007fd068bdbb1a: mov    0x78(%rsp),%ecx
                                0x00007fd068bdbb1e: cmp    $0x2,%ecx
                                0x00007fd068bdbb21: je     0x00007fd068bdbee6  ;*aload
                                                                              ; - com.google.re2j.Machine::step@166 (line 292)
                                0x00007fd068bdbb27: mov    0xc(%r12,%r14,8),%edx  ;*arraylength
                                                                              ; - com.google.re2j.Machine::step@171 (line 292)
                                                                              ; implicit exception: dispatches to 0x00007fd068bdc891
....................................................................................................
 24.06%   22.16%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 496 (342 bytes) 

                          0x00007fd068bdea0a: mov    0x60(%rsp),%r10
                          0x00007fd068bdea0f: mov    %r10,(%rsp)
                          0x00007fd068bdea13: callq  0x00007fd068a0d020  ; OopMap{off=440}
                                                                        ;*invokespecial add
                                                                        ; - com.google.re2j.Machine::add@203 (line 372)
                                                                        ;   {optimized virtual_call}
                  ╭       0x00007fd068bdea18: jmpq   0x00007fd068bdeb72
                  │       0x00007fd068bdea1d: mov    0x60(%rsp),%rax
                  │╭      0x00007fd068bdea22: jmpq   0x00007fd068bdeb72  ;*tableswitch
                  ││                                                    ; - com.google.re2j.Machine::add@40 (line 352)
  1.08%    1.01%  ││      0x00007fd068bdea27: mov    0x30(%rsp),%r11d
                  ││      0x00007fd068bdea2c: lea    (%r12,%r11,8),%rbp  ;*aaload
                  ││                                                    ; - com.google.re2j.Prog::getInst@5 (line 30)
                  ││                                                    ; - com.google.re2j.Machine::add@30 (line 351)
  0.00%    0.02%  ││      0x00007fd068bdea30: mov    %rbx,%rdx
  0.00%    0.00%  ││      0x00007fd068bdea33: mov    0x1c(%rsp),%r8d
  0.37%    0.42%  ││      0x00007fd068bdea38: mov    0x20(%rsp),%r9
                  ││      0x00007fd068bdea3d: mov    0x28(%rsp),%edi
  0.01%    0.00%  ││      0x00007fd068bdea41: mov    0x60(%rsp),%r10
  0.01%    0.01%  ││      0x00007fd068bdea46: mov    %r10,(%rsp)
  0.37%    0.42%  ││      0x00007fd068bdea4a: nop
                  ││      0x00007fd068bdea4b: callq  0x00007fd068a0d020  ; OopMap{rbp=Oop [8]=Oop [32]=Oop [48]=NarrowOop [56]=Oop off=496}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@127 (line 361)
                  ││                                                    ;   {optimized virtual_call}
  0.06%    0.07%  ││      0x00007fd068bdea50: mov    0x30(%rsp),%r10d
  0.19%    0.29%  ││      0x00007fd068bdea55: mov    0x14(%r12,%r10,8),%ecx  ;*getfield arg
                  ││                                                    ; - com.google.re2j.Machine::add@136 (line 362)
  0.19%    0.27%  ││      0x00007fd068bdea5a: mov    0x8(%rsp),%rsi
  0.06%    0.08%  ││      0x00007fd068bdea5f: mov    0x38(%rsp),%rdx
  0.15%    0.15%  ││      0x00007fd068bdea64: mov    0x1c(%rsp),%r8d
                  ││      0x00007fd068bdea69: mov    0x20(%rsp),%r9
  0.17%    0.22%  ││      0x00007fd068bdea6e: mov    0x28(%rsp),%edi
  0.07%    0.06%  ││      0x00007fd068bdea72: mov    %rax,(%rsp)
  0.18%    0.26%  ││      0x00007fd068bdea76: nop
           0.00%  ││      0x00007fd068bdea77: callq  0x00007fd068a0d020  ; OopMap{off=540}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@146 (line 362)
                  ││                                                    ;   {optimized virtual_call}
  0.01%    0.02%  ││╭     0x00007fd068bdea7c: jmpq   0x00007fd068bdeb72  ;*aload
                  │││                                                   ; - com.google.re2j.Machine::add@293 (line 391)
  1.78%    1.69%  │││     0x00007fd068bdea81: mov    0x60(%rsp),%rbx
  0.01%    0.02%  │││     0x00007fd068bdea86: test   %rbx,%rbx
                  │││╭    0x00007fd068bdea89: je     0x00007fd068bdeaab  ;*ifnonnull
                  ││││                                                  ; - com.google.re2j.Machine::add@295 (line 391)
  0.03%    0.00%  ││││    0x00007fd068bdea8b: mov    0x30(%rsp),%r10d
                  ││││    0x00007fd068bdea90: mov    %r10d,0x10(%rbx)
  0.20%    0.18%  ││││    0x00007fd068bdea94: mov    %rbx,%r10
                  ││││    0x00007fd068bdea97: shr    $0x9,%r10
  0.03%           ││││    0x00007fd068bdea9b: movabs $0x7fd0643f5000,%r11
                  ││││    0x00007fd068bdeaa5: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                  ││││                                                  ; - com.google.re2j.Machine::add@313 (line 394)
  0.19%    0.19%  ││││╭   0x00007fd068bdeaa9: jmp    0x00007fd068bdeafe
  0.60%    0.60%  │││↘│   0x00007fd068bdeaab: mov    0xc(%rsi),%r9d     ;*getfield poolSize
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@1 (line 148)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 392)
                  │││ │   0x00007fd068bdeaaf: test   %r9d,%r9d
                  │││ │   0x00007fd068bdeab2: jle    0x00007fd068bded89  ;*ifle
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@4 (line 148)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 392)
                  │││ │   0x00007fd068bdeab8: mov    0x24(%rsi),%r10d   ;*getfield pool
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@18 (line 150)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 392)
  0.01%    0.00%  │││ │   0x00007fd068bdeabc: mov    %r9d,%ebp
  0.64%    0.65%  │││ │   0x00007fd068bdeabf: dec    %ebp               ;*isub
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@13 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 392)
                  │││ │   0x00007fd068bdeac1: mov    %ebp,0xc(%rsi)     ;*putfield poolSize
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@14 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 392)
                  │││ │   0x00007fd068bdeac4: mov    0xc(%r12,%r10,8),%r11d  ; implicit exception: dispatches to 0x00007fd068bdee75
  0.01%    0.02%  │││ │   0x00007fd068bdeac9: cmp    %r11d,%ebp
                  │││ │   0x00007fd068bdeacc: jae    0x00007fd068bded1d
  0.73%    0.70%  │││ │   0x00007fd068bdead2: shl    $0x3,%r10
                  │││ │   0x00007fd068bdead6: mov    0xc(%r10,%r9,4),%r10d  ;*aaload
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@25 (line 150)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 392)
           0.00%  │││ │   0x00007fd068bdeadb: mov    0x30(%rsp),%r8d
  0.01%    0.00%  │││ │   0x00007fd068bdeae0: mov    %r8d,0x10(%r12,%r10,8)  ;*putfield inst
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@45 (line 154)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 392)
                  │││ │                                                 ; implicit exception: dispatches to 0x00007fd068bdee85
  0.71%    0.70%  │││ │   0x00007fd068bdeae5: lea    (%r12,%r10,8),%rbx  ;*aaload
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@25 (line 150)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 392)
                  │││ │   0x00007fd068bdeae9: mov    %rbx,%r10
                  │││ │   0x00007fd068bdeaec: shr    $0x9,%r10
  0.01%    0.00%  │││ │   0x00007fd068bdeaf0: movabs $0x7fd0643f5000,%r11
  0.62%    0.78%  │││ │   0x00007fd068bdeafa: mov    %r12b,(%r11,%r10,1)  ;*aload
                  │││ │                                                 ; - com.google.re2j.Machine::add@316 (line 396)
  0.01%    0.01%  │││ ↘   0x00007fd068bdeafe: mov    0x20(%rsp),%rdi
  0.04%    0.01%  │││     0x00007fd068bdeb03: mov    0xc(%rdi),%r10d    ;*arraylength
                  │││                                                   ; - com.google.re2j.Machine::add@318 (line 396)
                  │││                                                   ; implicit exception: dispatches to 0x00007fd068bdee65
           0.01%  │││     0x00007fd068bdeb07: test   %r10d,%r10d
                  │││     0x00007fd068bdeb0a: jle    0x00007fd068bded67  ;*ifle
                  │││                                                   ; - com.google.re2j.Machine::add@319 (line 396)
  0.78%    0.95%  │││     0x00007fd068bdeb10: mov    0xc(%rbx),%r8d     ;*getfield cap
                  │││                                                   ; - com.google.re2j.Machine::add@324 (line 396)
  0.00%    0.00%  │││     0x00007fd068bdeb14: lea    (%r12,%r13,8),%rbp  ;*aaload
                  │││                                                   ; - com.google.re2j.Machine$Queue::add@24 (line 59)
                  │││                                                   ; - com.google.re2j.Machine::add@20 (line 350)
  0.02%    0.01%  │││     0x00007fd068bdeb18: mov    %r8,%r11
  0.00%    0.00%  │││     0x00007fd068bdeb1b: shl    $0x3,%r11
  0.92%    0.81%  │││     0x00007fd068bdeb1f: cmp    %rdi,%r11
                  │││  ╭  0x00007fd068bdeb22: je     0x00007fd068bdeb4f  ;*if_acmpeq
                  │││  │                                                ; - com.google.re2j.Machine::add@329 (line 396)
  0.01%    0.01%  │││  │  0x00007fd068bdeb24: mov    0xc(%r12,%r8,8),%r9d  ; implicit exception: dispatches to 0x00007fd068bdee99
  0.04%    0.06%  │││  │  0x00007fd068bdeb29: lea    (%r12,%r8,8),%rcx  ;*getfield cap
                  │││  │                                                ; - com.google.re2j.Machine::add@324 (line 396)
  0.00%    0.00%  │││  │  0x00007fd068bdeb2d: cmp    %r10d,%r9d
                  │││  │  0x00007fd068bdeb30: jb     0x00007fd068bded39
  0.71%    0.85%  │││  │  0x00007fd068bdeb36: lea    0x10(%r12,%r8,8),%rsi
                  │││  │  0x00007fd068bdeb3b: add    $0x10,%rdi
                  │││  │  0x00007fd068bdeb3f: movslq %r10d,%rdx
           0.00%  │││  │  0x00007fd068bdeb42: movabs $0x7fd068a19640,%r10
  0.57%    0.65%  │││  │  0x00007fd068bdeb4c: callq  *%r10              ;*aload
                  │││  │                                                ; - com.google.re2j.Machine::add@347 (line 399)
  0.01%    0.01%  │││  ↘  0x00007fd068bdeb4f: mov    %rbp,%r10
  0.09%    0.08%  │││     0x00007fd068bdeb52: mov    %rbx,%r11
  0.62%    0.38%  │││     0x00007fd068bdeb55: shr    $0x3,%r11
  0.26%    0.22%  │││     0x00007fd068bdeb59: mov    %r11d,0x10(%r12,%r13,8)
  0.00%    0.00%  │││     0x00007fd068bdeb5e: shr    $0x9,%r10
  0.17%    0.12%  │││     0x00007fd068bdeb62: movabs $0x7fd0643f5000,%r11
  0.50%    0.16%  │││     0x00007fd068bdeb6c: mov    %r12b,(%r11,%r10,1)  ;*putfield thread
                  │││                                                   ; - com.google.re2j.Machine::add@351 (line 399)
  0.25%    0.24%  │││     0x00007fd068bdeb70: xor    %eax,%eax          ;*synchronization entry
                  │││                                                   ; - com.google.re2j.Machine::add@-1 (line 344)
  0.61%    0.77%  ↘↘↘     0x00007fd068bdeb72: add    $0x50,%rsp
  0.61%    0.47%          0x00007fd068bdeb76: pop    %rbp
  0.07%    0.05%          0x00007fd068bdeb77: test   %eax,0x15e7d483(%rip)        # 0x00007fd07ea5c000
                                                                        ;   {poll_return}
  0.79%    1.03%          0x00007fd068bdeb7d: retq                      ;*tableswitch
                                                                        ; - com.google.re2j.Machine::add@40 (line 352)
                          0x00007fd068bdeb7e: mov    0x38(%rsp),%rdx
                          0x00007fd068bdeb83: mov    0x1c(%rsp),%r8d
                          0x00007fd068bdeb88: mov    0x20(%rsp),%r9
                          0x00007fd068bdeb8d: mov    %ebx,%edi
                          0x00007fd068bdeb8f: mov    0x60(%rsp),%r10
                          0x00007fd068bdeb94: mov    %r10,(%rsp)
                          0x00007fd068bdeb98: data16 xchg %ax,%ax
                          0x00007fd068bdeb9b: callq  0x00007fd068a0d020  ; OopMap{off=832}
....................................................................................................
 15.65%   15.79%  <total for region 3>

....[Hottest Regions]...............................................................................
 24.78%   24.65%         C2, level 4  com.google.re2j.Machine::add, version 496 (279 bytes) 
 24.06%   22.16%         C2, level 4  com.google.re2j.Machine::step, version 488 (620 bytes) 
 15.65%   15.79%         C2, level 4  com.google.re2j.Machine::add, version 496 (342 bytes) 
  9.70%   12.26%         C2, level 4  com.google.re2j.Machine::step, version 488 (368 bytes) 
  8.52%    8.60%         C2, level 4  com.google.re2j.Machine::step, version 488 (218 bytes) 
  8.03%    9.36%         C2, level 4  com.google.re2j.Machine::match, version 538 (740 bytes) 
  4.06%    2.85%        runtime stub  StubRoutines::jint_disjoint_arraycopy (128 bytes) 
  0.78%    0.91%         C2, level 4  com.google.re2j.Machine::add, version 496 (47 bytes) 
  0.56%    0.55%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.29%    0.31%         C2, level 4  com.google.re2j.Machine::match, version 538 (127 bytes) 
  0.22%    0.25%         C2, level 4  com.google.re2j.Machine::step, version 488 (18 bytes) 
  0.18%    0.06%         C2, level 4  com.google.re2j.Machine::init, version 537 (76 bytes) 
  0.12%    0.09%         C2, level 4  com.google.re2j.Machine::init, version 537 (64 bytes) 
  0.09%    0.03%         C2, level 4  com.google.re2j.Machine::match, version 538 (165 bytes) 
  0.09%    0.01%   [kernel.kallsyms]  [unknown] (39 bytes) 
  0.08%    0.08%   [kernel.kallsyms]  [unknown] (44 bytes) 
  0.08%            [kernel.kallsyms]  [unknown] (1 bytes) 
  0.08%    0.00%   [kernel.kallsyms]  [unknown] (39 bytes) 
  0.07%                  C2, level 4  com.google.re2j.Matcher::find, version 563 (68 bytes) 
  0.07%    0.00%         C2, level 4  com.google.re2j.Matcher::find, version 563 (38 bytes) 
  2.48%    2.02%  <...other 434 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 42.50%   43.26%         C2, level 4  com.google.re2j.Machine::step, version 488 
 41.21%   41.36%         C2, level 4  com.google.re2j.Machine::add, version 496 
  8.65%    9.84%         C2, level 4  com.google.re2j.Machine::match, version 538 
  4.06%    2.85%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
  1.78%    1.36%   [kernel.kallsyms]  [unknown] 
  0.43%    0.19%         C2, level 4  com.google.re2j.Machine::init, version 537 
  0.31%    0.13%         C2, level 4  com.google.re2j.Matcher::find, version 563 
  0.18%    0.02%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 631 
  0.06%    0.02%         C2, level 4  java.util.Collections::shuffle, version 571 
  0.06%    0.07%      hsdis-amd64.so  [unknown] 
  0.03%           libpthread-2.26.so  __libc_write 
  0.03%    0.03%        libc-2.26.so  vfprintf 
  0.03%    0.00%              [vdso]  [unknown] 
  0.03%    0.06%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.02%                    libjvm.so  _ZN2os13PlatformEvent4parkEl 
  0.02%    0.01%           libjvm.so  SpinPause 
  0.02%    0.12%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.02%    0.06%        libc-2.26.so  _IO_fwrite 
  0.02%    0.03%           libjvm.so  _ZN12outputStream15update_positionEPKcm 
  0.02%    0.01%           libjvm.so  _ZN18PSPromotionManager22copy_to_survivor_spaceILb0EEEP7oopDescS2_ 
  0.50%    0.30%  <...other 78 warm methods...>
....................................................................................................
100.00%   99.75%  <totals>

....[Distribution by Source]........................................................................
 93.33%   94.82%         C2, level 4
  4.07%    2.85%        runtime stub
  1.78%    1.36%   [kernel.kallsyms]
  0.43%    0.53%           libjvm.so
  0.18%    0.32%        libc-2.26.so
  0.08%    0.02%  libpthread-2.26.so
  0.06%    0.07%      hsdis-amd64.so
  0.03%    0.00%              [vdso]
  0.02%    0.01%         interpreter
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                     Mode  Cnt     Score     Error  Units
Re2jFindRegex.testExp1       thrpt   20  6635.010 ± 434.960  ops/s
Re2jFindRegex.testExp1:·asm  thrpt            NaN              ---
