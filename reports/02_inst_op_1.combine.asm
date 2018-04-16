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
# Warmup Iteration   1: 1129.076 ops/s
# Warmup Iteration   2: 2074.110 ops/s
# Warmup Iteration   3: 2117.130 ops/s
# Warmup Iteration   4: 2119.224 ops/s
# Warmup Iteration   5: 2119.277 ops/s
# Warmup Iteration   6: 2060.100 ops/s
# Warmup Iteration   7: 2112.196 ops/s
# Warmup Iteration   8: 2116.100 ops/s
# Warmup Iteration   9: 2118.351 ops/s
# Warmup Iteration  10: 2131.688 ops/s
# Warmup Iteration  11: 2121.883 ops/s
# Warmup Iteration  12: 2122.103 ops/s
# Warmup Iteration  13: 2124.548 ops/s
# Warmup Iteration  14: 2152.458 ops/s
# Warmup Iteration  15: 2131.638 ops/s
# Warmup Iteration  16: 2132.080 ops/s
# Warmup Iteration  17: 2107.506 ops/s
# Warmup Iteration  18: 2132.909 ops/s
# Warmup Iteration  19: 2151.023 ops/s
# Warmup Iteration  20: 2135.974 ops/s
Iteration   1: 2124.313 ops/s
Iteration   2: 2115.890 ops/s
Iteration   3: 2117.366 ops/s
Iteration   4: 2109.464 ops/s
Iteration   5: 2116.966 ops/s
Iteration   6: 2112.525 ops/s
Iteration   7: 2096.555 ops/s
Iteration   8: 2114.748 ops/s
Iteration   9: 2114.512 ops/s
Iteration  10: 2118.826 ops/s
Iteration  11: 2120.431 ops/s
Iteration  12: 2101.068 ops/s
Iteration  13: 2128.292 ops/s
Iteration  14: 2143.911 ops/s
Iteration  15: 2142.392 ops/s
Iteration  16: 2129.214 ops/s
Iteration  17: 2100.867 ops/s
Iteration  18: 2148.644 ops/s
Iteration  19: 2147.840 ops/s
Iteration  20: 2125.094 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  2121.446 ±(99.9%) 13.152 ops/s [Average]
  (min, avg, max) = (2096.555, 2121.446, 2148.644), stdev = 15.146
  CI (99.9%): [2108.294, 2134.598] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine:·asm":
PrintAssembly processed: 213920 total address lines.
Perf output processed (skipped 23.132 seconds):
 Column 1: cycles (20677 events)
 Column 2: instructions (20666 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 540 (377 bytes) 

                       # parm4:    rdi       = int
                       # parm5:    [sp+0x70]   = &apos;com/google/re2j/Machine$Thread&apos;  (sp of caller)
                       0x00007f36d52420e0: mov    0x8(%rsi),%r10d    ;   {no_reloc}
                       0x00007f36d52420e4: shl    $0x3,%r10
                       0x00007f36d52420e8: cmp    %r10,%rax
                       0x00007f36d52420eb: jne    0x00007f36d5045e20  ;   {runtime_call}
                       0x00007f36d52420f1: data16 xchg %ax,%ax
                       0x00007f36d52420f4: nopl   0x0(%rax,%rax,1)
                       0x00007f36d52420fc: data16 data16 xchg %ax,%ax
                     [Verified Entry Point]
  0.51%    0.60%       0x00007f36d5242100: mov    %eax,-0x14000(%rsp)
  0.38%    0.29%       0x00007f36d5242107: push   %rbp
  0.22%    0.30%       0x00007f36d5242108: sub    $0x60,%rsp         ;*synchronization entry
                                                                     ; - com.google.re2j.Machine::add@-1 (line 341)
  0.27%    0.30%       0x00007f36d524210c: mov    %edi,0x28(%rsp)
  0.45%    0.27%       0x00007f36d5242110: mov    %r9,0x20(%rsp)
  0.31%    0.31%       0x00007f36d5242115: mov    %r8d,0x1c(%rsp)
  0.30%    0.38%       0x00007f36d524211a: mov    %rsi,0x8(%rsp)
  0.01%    0.02%       0x00007f36d524211f: mov    %ecx,0x40(%rsp)
  0.44%    0.34%       0x00007f36d5242123: test   %ecx,%ecx
                       0x00007f36d5242125: je     0x00007f36d5242671  ;*ifne
                                                                     ; - com.google.re2j.Machine::add@1 (line 341)
  0.27%    0.24%       0x00007f36d524212b: mov    %rdx,0x48(%rsp)
  0.25%    0.26%       0x00007f36d5242130: mov    0x14(%rdx),%ebx    ;*getfield sparse
                                                                     ; - com.google.re2j.Machine$Queue::contains@1 (line 48)
                                                                     ; - com.google.re2j.Machine::add@9 (line 344)
                                                                     ; implicit exception: dispatches to 0x00007f36d5242871
  0.01%    0.01%       0x00007f36d5242133: mov    0xc(%r12,%rbx,8),%r10d  ; implicit exception: dispatches to 0x00007f36d5242885
  0.43%    0.26%       0x00007f36d5242138: cmp    %r10d,%ecx
                       0x00007f36d524213b: jae    0x00007f36d5242542  ;*iaload
                                                                     ; - com.google.re2j.Machine$Queue::contains@5 (line 48)
                                                                     ; - com.google.re2j.Machine::add@9 (line 344)
  0.24%    0.40%       0x00007f36d5242141: mov    0x10(%rdx),%r9d    ;*getfield dense
                                                                     ; - com.google.re2j.Machine$Queue::contains@18 (line 52)
                                                                     ; - com.google.re2j.Machine::add@9 (line 344)
  0.15%    0.22%       0x00007f36d5242145: mov    0xc(%rdx),%r8d     ;*getfield size
                                                                     ; - com.google.re2j.Machine$Queue::contains@9 (line 49)
                                                                     ; - com.google.re2j.Machine::add@9 (line 344)
  0.00%    0.01%       0x00007f36d5242149: lea    (%r12,%rbx,8),%rcx
  0.44%    0.23%       0x00007f36d524214d: mov    0x40(%rsp),%edi
  0.42%    0.39%       0x00007f36d5242151: mov    0x10(%rcx,%rdi,4),%ebp  ;*iaload
                                                                     ; - com.google.re2j.Machine$Queue::contains@5 (line 48)
                                                                     ; - com.google.re2j.Machine::add@9 (line 344)
  0.38%    0.30%       0x00007f36d5242155: cmp    %r8d,%ebp
                  ╭    0x00007f36d5242158: jl     0x00007f36d5242259  ;*iastore
                  │                                                  ; - com.google.re2j.Machine$Queue::add@18 (line 60)
                  │                                                  ; - com.google.re2j.Machine::add@20 (line 347)
  0.90%    0.59%  │ ↗  0x00007f36d524215e: mov    %r8d,%r11d
  0.06%    0.03%  │ │  0x00007f36d5242161: inc    %r11d
  0.20%    0.12%  │ │  0x00007f36d5242164: mov    0x48(%rsp),%rdi
  0.19%    0.26%  │ │  0x00007f36d5242169: mov    %r11d,0xc(%rdi)    ;*putfield size
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@8 (line 59)
                  │ │                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.59%    0.44%  │ │  0x00007f36d524216d: mov    0x40(%rsp),%r11d
  0.17%    0.10%  │ │  0x00007f36d5242172: cmp    %r10d,%r11d
                  │ │  0x00007f36d5242175: jae    0x00007f36d5242575
  0.26%    0.29%  │ │  0x00007f36d524217b: mov    %r8d,0x10(%rcx,%r11,4)  ;*iastore
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@18 (line 60)
                  │ │                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.91%    0.94%  │ │  0x00007f36d5242180: mov    0xc(%r12,%r9,8),%r11d  ; implicit exception: dispatches to 0x00007f36d5242899
  0.41%    0.37%  │ │  0x00007f36d5242185: cmp    %r11d,%r8d
                  │ │  0x00007f36d5242188: jae    0x00007f36d52425bd  ;*aaload
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@24 (line 61)
                  │ │                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.07%    0.03%  │ │  0x00007f36d524218e: lea    (%r12,%r9,8),%r10  ;*getfield dense
                  │ │                                                ; - com.google.re2j.Machine$Queue::contains@18 (line 52)
                  │ │                                                ; - com.google.re2j.Machine::add@9 (line 344)
  0.08%    0.15%  │ │  0x00007f36d5242192: mov    %r10,0x38(%rsp)
  0.35%    0.28%  │ │  0x00007f36d5242197: lea    0x10(%r10,%r8,4),%rbp
  0.43%    0.34%  │ │  0x00007f36d524219c: mov    0x0(%rbp),%r11d    ;*aaload
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@24 (line 61)
                  │ │                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.03%    0.01%  │ │  0x00007f36d52421a0: test   %r11d,%r11d
                  │╭│  0x00007f36d52421a3: je     0x00007f36d524228c  ;*ifnonnull
                  │││                                                ; - com.google.re2j.Machine$Queue::add@27 (line 62)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.13%    0.21%  │││  0x00007f36d52421a9: lea    (%r12,%r11,8),%rbx  ;*aload_3
                  │││                                                ; - com.google.re2j.Machine$Queue::add@45 (line 65)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.53%    0.34%  │││  0x00007f36d52421ad: mov    0x40(%rsp),%r10d
  0.52%    0.46%  │││  0x00007f36d52421b2: mov    %r10d,0xc(%rbx)    ;*putfield pc
                  │││                                                ; - com.google.re2j.Machine$Queue::add@52 (line 66)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.60%    0.62%  │││  0x00007f36d52421b6: mov    0x8(%rsp),%r10
  0.10%    0.13%  │││  0x00007f36d52421bb: mov    0x14(%r10),%r11d   ;*getfield prog
                  │││                                                ; - com.google.re2j.Machine::add@26 (line 348)
  0.35%    0.23%  │││  0x00007f36d52421bf: mov    %r12d,0x10(%rbx)   ;*putfield thread
                  │││                                                ; - com.google.re2j.Machine$Queue::add@47 (line 65)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.40%    0.22%  │││  0x00007f36d52421c3: mov    0x14(%r12,%r11,8),%ebp  ;*getfield inst
                  │││                                                ; - com.google.re2j.Prog::getInst@1 (line 29)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 348)
                  │││                                                ; implicit exception: dispatches to 0x00007f36d52428ad
  0.40%    0.45%  │││  0x00007f36d52421c8: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f36d52428c1
  0.76%    0.67%  │││  0x00007f36d52421cd: cmp    $0xf8002f22,%r10d  ;   {metadata(&apos;java/util/ArrayList&apos;)}
                  │││  0x00007f36d52421d4: jne    0x00007f36d5242649
  0.37%    0.38%  │││  0x00007f36d52421da: lea    (%r12,%rbp,8),%r10  ;*invokeinterface get
                  │││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.29%    0.32%  │││  0x00007f36d52421de: mov    0x10(%r10),%ebp    ;*getfield size
                  │││                                                ; - java.util.ArrayList::rangeCheck@2 (line 652)
                  │││                                                ; - java.util.ArrayList::get@2 (line 429)
                  │││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.19%    0.16%  │││  0x00007f36d52421e2: mov    0x40(%rsp),%r8d
  0.04%    0.09%  │││  0x00007f36d52421e7: cmp    %ebp,%r8d
                  │││  0x00007f36d52421ea: jge    0x00007f36d5242699  ;*if_icmplt
                  │││                                                ; - java.util.ArrayList::rangeCheck@5 (line 652)
                  │││                                                ; - java.util.ArrayList::get@2 (line 429)
                  │││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.71%    0.51%  │││  0x00007f36d52421f0: mov    0x14(%r10),%ebp    ;*getfield elementData
                  │││                                                ; - java.util.ArrayList::elementData@1 (line 418)
                  │││                                                ; - java.util.ArrayList::get@7 (line 431)
                  │││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.31%    0.13%  │││  0x00007f36d52421f4: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f36d52428d5
  1.54%    1.25%  │││  0x00007f36d52421f9: cmp    %r10d,%r8d
                  │││  0x00007f36d52421fc: jae    0x00007f36d5242611
  1.09%    0.96%  │││  0x00007f36d5242202: lea    (%r12,%rbp,8),%r10
  0.07%    0.05%  │││  0x00007f36d5242206: mov    0x10(%r10,%r8,4),%ebp  ;*aaload
                  │││                                                ; - java.util.ArrayList::elementData@5 (line 418)
                  │││                                                ; - java.util.ArrayList::get@7 (line 431)
                  │││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.36%    0.14%  │││  0x00007f36d524220b: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f36d52428e9
  2.60%    2.06%  │││  0x00007f36d5242210: cmp    $0xf80197c3,%r11d  ;   {metadata(&apos;com/google/re2j/Inst&apos;)}
                  │││  0x00007f36d5242217: jne    0x00007f36d5242835
  0.84%    0.70%  │││  0x00007f36d524221d: lea    (%r12,%rbp,8),%r10  ;*checkcast
                  │││                                                ; - com.google.re2j.Prog::getInst@10 (line 29)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.03%    0.03%  │││  0x00007f36d5242221: mov    %r10,0x38(%rsp)
  0.11%    0.10%  │││  0x00007f36d5242226: mov    0xc(%r10),%r11d    ;*getfield op
                  │││                                                ; - com.google.re2j.Machine::add@37 (line 349)
  0.65%    0.66%  │││  0x00007f36d524222a: mov    %r11d,%r8d
  0.14%    0.08%  │││  0x00007f36d524222d: dec    %r8d
  0.78%    0.56%  │││  0x00007f36d5242230: cmp    $0xb,%r8d
                  │││  0x00007f36d5242234: jae    0x00007f36d5242639  ;*tableswitch
                  │││                                                ; - com.google.re2j.Machine::add@40 (line 349)
  0.64%    0.69%  │││  0x00007f36d524223a: mov    0x14(%r10),%r10d   ;*getfield arg
                  │││                                                ; - com.google.re2j.Machine::add@156 (line 363)
  0.01%    0.01%  │││  0x00007f36d524223e: mov    0x38(%rsp),%r8
  0.18%    0.15%  │││  0x00007f36d5242243: mov    0x10(%r8),%ecx     ;*getfield out
                  │││                                                ; - com.google.re2j.Machine::add@193 (line 369)
  1.70%    1.65%  │││  0x00007f36d5242247: movslq %r11d,%r11
  0.04%    0.03%  │││  0x00007f36d524224a: movabs $0x7f36d5242080,%r8  ;   {section_word}
  0.01%    0.00%  │││  0x00007f36d5242254: jmpq   *-0x8(%r8,%r11,8)  ;*tableswitch
                  │││                                                ; - com.google.re2j.Machine::add@40 (line 349)
  0.04%    0.09%  ↘││  0x00007f36d5242259: mov    0xc(%r12,%r9,8),%edi  ; implicit exception: dispatches to 0x00007f36d5242991
  0.01%    0.01%   ││  0x00007f36d524225e: cmp    %edi,%ebp
                   ││  0x00007f36d5242260: jae    0x00007f36d524280d
  0.05%    0.06%   ││  0x00007f36d5242266: lea    (%r12,%r9,8),%r11
  0.01%    0.03%   ││  0x00007f36d524226a: mov    0x10(%r11,%rbp,4),%ebp  ;*aaload
                   ││                                                ; - com.google.re2j.Machine$Queue::contains@22 (line 52)
                   ││                                                ; - com.google.re2j.Machine::add@9 (line 344)
  0.07%    0.08%   ││  0x00007f36d524226f: mov    0xc(%r12,%rbp,8),%edx  ; implicit exception: dispatches to 0x00007f36d52429a1
  0.37%    0.28%   ││  0x00007f36d5242274: mov    0x40(%rsp),%r11d
           0.00%   ││  0x00007f36d5242279: cmp    %r11d,%edx
                   │╰  0x00007f36d524227c: jne    0x00007f36d524215e
                   │   0x00007f36d5242282: mov    0x70(%rsp),%rax
                   │   0x00007f36d5242287: jmpq   0x00007f36d524250c
                   ↘   0x00007f36d524228c: mov    0x60(%r15),%rbx
                       0x00007f36d5242290: mov    %rbx,%r10
                       0x00007f36d5242293: add    $0x18,%r10
                       0x00007f36d5242297: cmp    0x70(%r15),%r10
                       0x00007f36d524229b: jae    0x00007f36d52427b1
                       0x00007f36d52422a1: mov    %r10,0x60(%r15)
                       0x00007f36d52422a5: prefetchnta 0xc0(%r10)
....................................................................................................
 27.18%   23.68%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 549 (323 bytes) 

                          0x00007f36d524d55a: lea    (%r12,%rbp,8),%rdx
                          0x00007f36d524d55e: mov    0x10(%rdx,%rcx,4),%esi  ;*aaload
                                                                        ; - com.google.re2j.Machine::step@259 (line 294)
                          0x00007f36d524d562: mov    0x10(%r12,%rsi,8),%edx  ;*getfield thread
                                                                        ; - com.google.re2j.Machine::step@264 (line 295)
                                                                        ; implicit exception: dispatches to 0x00007f36d524e50d
                          0x00007f36d524d567: test   %edx,%edx
                          0x00007f36d524d569: jne    0x00007f36d524d4c0  ;*ifnull
                                                                        ; - com.google.re2j.Machine::step@267 (line 295)
                          0x00007f36d524d56f: jmp    0x00007f36d524d52d
  0.58%    0.86%   ↗      0x00007f36d524d571: mov    %r8d,0x30(%rsp)
  0.57%    0.80%   │      0x00007f36d524d576: mov    %r11d,%ebx
  0.36%    0.35%   │      0x00007f36d524d579: sub    %r8d,%r11d         ;*isub
                   │                                                    ; - com.google.re2j.Unicode::simpleFold@15 (line 208)
                   │                                                    ; - com.google.re2j.Inst::matchRune@50 (line 57)
                   │                                                    ; - com.google.re2j.Machine::step@308 (line 306)
  0.25%    0.26%   │      0x00007f36d524d57c: mov    %r11d,%r10d
  0.72%    0.76%   │      0x00007f36d524d57f: sar    $0x1f,%r10d
  0.67%    0.70%   │      0x00007f36d524d583: shr    $0x1f,%r10d
  0.29%    0.36%   │      0x00007f36d524d587: add    %r11d,%r10d
  0.30%    0.35%   │      0x00007f36d524d58a: sar    %r10d
  0.63%    0.83%   │      0x00007f36d524d58d: mov    %r8d,%r11d
  0.56%    0.81%   │      0x00007f36d524d590: add    %r10d,%r11d        ;*idiv
                   │                                                    ; - com.google.re2j.Unicode::simpleFold@17 (line 208)
                   │                                                    ; - com.google.re2j.Inst::matchRune@50 (line 57)
                   │                                                    ; - com.google.re2j.Machine::step@308 (line 306)
  0.38%    0.60%   │  ↗   0x00007f36d524d593: cmp    $0x3f,%r11d
                   │  │   0x00007f36d524d597: jae    0x00007f36d524dad1
  0.28%    0.43%   │  │   0x00007f36d524d59d: movslq %r10d,%r10
  0.79%    1.03%   │  │   0x00007f36d524d5a0: movslq 0x30(%rsp),%r8
  0.70%    0.85%   │  │   0x00007f36d524d5a5: add    %r10,%r8
  0.45%    0.60%   │  │   0x00007f36d524d5a8: mov    0x10(%r9,%r8,4),%ebp  ;*aaload
                   │  │                                                 ; - com.google.re2j.Unicode::simpleFold@24 (line 209)
                   │  │                                                 ; - com.google.re2j.Inst::matchRune@50 (line 57)
                   │  │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.34%    0.47%   │  │   0x00007f36d524d5ad: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f36d524e439
  1.57%    2.14%   │  │   0x00007f36d524d5b2: test   %r10d,%r10d
                   │  │   0x00007f36d524d5b5: jbe    0x00007f36d524db21  ;*iaload
                   │  │                                                 ; - com.google.re2j.Unicode::simpleFold@26 (line 209)
                   │  │                                                 ; - com.google.re2j.Inst::matchRune@50 (line 57)
                   │  │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.91%    1.18%   │  │   0x00007f36d524d5bb: mov    0x10(%r12,%rbp,8),%r8d
  0.34%    0.48%   │  │   0x00007f36d524d5c0: cmp    0x20(%rsp),%r8d
                  ╭│  │   0x00007f36d524d5c5: jl     0x00007f36d524d698  ;*if_icmpge
                  ││  │                                                 ; - com.google.re2j.Unicode::simpleFold@28 (line 209)
                  ││  │                                                 ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  ││  │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.79%    1.15%  ││  │   0x00007f36d524d5cb: mov    0x30(%rsp),%r8d    ; OopMap{r9=Oop rdi=NarrowOop rdx=NarrowOop rsi=Oop rax=Oop r14=NarrowOop [8]=Oop [24]=Oop [40]=Oop off=1584}
                  ││  │                                                 ;*goto
                  ││  │                                                 ; - com.google.re2j.Unicode::simpleFold@40 (line 214)
                  ││  │                                                 ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  ││  │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.73%    0.83%  ││  │↗  0x00007f36d524d5d0: test   %eax,0x188c5a2a(%rip)        # 0x00007f36edb13000
                  ││  ││                                                ;*goto
                  ││  ││                                                ; - com.google.re2j.Unicode::simpleFold@40 (line 214)
                  ││  ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  ││  ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
                  ││  ││                                                ;   {poll}
  0.29%    0.37%  ││  ││  0x00007f36d524d5d6: cmp    %r11d,%r8d
                  │╰  ││  0x00007f36d524d5d9: jl     0x00007f36d524d571  ;*if_icmpge
                  │   ││                                                ; - com.google.re2j.Unicode::simpleFold@9 (line 207)
                  │   ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  │   ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
                  │   ││  0x00007f36d524d5db: cmp    $0x3f,%r8d
                  │   ││  0x00007f36d524d5df: jge    0x00007f36d524df65  ;*if_icmpge
                  │   ││                                                ; - com.google.re2j.Unicode::simpleFold@48 (line 215)
                  │   ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  │   ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.21%    0.19%  │   ││  0x00007f36d524d5e5: cmp    $0x3f,%r8d
                  │   ││  0x00007f36d524d5e9: jae    0x00007f36d524ddad
  0.16%    0.16%  │   ││  0x00007f36d524d5ef: mov    0x10(%r9,%r8,4),%ebp  ;*aaload
                  │   ││                                                ; - com.google.re2j.Unicode::simpleFold@55 (line 215)
                  │   ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  │   ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.03%    0.00%  │   ││  0x00007f36d524d5f4: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f36d524e54d
                  │   ││  0x00007f36d524d5f9: test   %r10d,%r10d
                  │   ││  0x00007f36d524d5fc: jbe    0x00007f36d524ddf9
  0.16%    0.18%  │   ││  0x00007f36d524d602: mov    0x10(%r12,%rbp,8),%ebp  ;*iaload
                  │   ││                                                ; - com.google.re2j.Unicode::simpleFold@57 (line 215)
                  │   ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  │   ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.20%    0.18%  │   ││  0x00007f36d524d607: cmp    0x20(%rsp),%ebp
                  │   ││  0x00007f36d524d60b: je     0x00007f36d524dfb1  ;*if_icmpne
                  │   ││                                                ; - com.google.re2j.Unicode::simpleFold@59 (line 215)
                  │   ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  │   ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.02%    0.01%  │   ││  0x00007f36d524d611: mov    0x20(%rsp),%r8d
                  │   ││  0x00007f36d524d616: cmp    $0x7f,%r8d
                  │   ││  0x00007f36d524d61a: jg     0x00007f36d524dfed  ;*if_icmpgt
                  │   ││                                                ; - com.google.re2j.Unicode::toLower@3 (line 177)
                  │   ││                                                ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                  │   ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  │   ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.14%    0.15%  │   ││  0x00007f36d524d620: cmp    $0x41,%r8d
                  │   ││  0x00007f36d524d624: jl     0x00007f36d524df15  ;*if_icmpgt
                  │   ││                                                ; - com.google.re2j.Unicode::toLower@9 (line 178)
                  │   ││                                                ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                  │   ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  │   ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.17%    0.15%  │   ││  0x00007f36d524d62a: cmp    $0x5a,%r8d
                  │ ╭ ││  0x00007f36d524d62e: jg     0x00007f36d524d63c  ;*if_icmpgt
                  │ │ ││                                                ; - com.google.re2j.Unicode::toLower@15 (line 178)
                  │ │ ││                                                ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                  │ │ ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  │ │ ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
                  │ │ ││  0x00007f36d524d630: mov    %r8d,%r10d
                  │ │ ││  0x00007f36d524d633: add    $0x20,%r10d        ;*iinc
                  │ │ ││                                                ; - com.google.re2j.Unicode::toLower@18 (line 179)
                  │ │ ││                                                ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                  │ │ ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  │ │ ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
                  │ │ ││  0x00007f36d524d637: cmp    %r8d,%r10d
                  │ │╭││  0x00007f36d524d63a: jne    0x00007f36d524d657  ;*if_icmpeq
                  │ ││││                                                ; - com.google.re2j.Unicode::simpleFold@77 (line 224)
                  │ ││││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  │ ││││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.03%    0.02%  │ ↘│││  0x00007f36d524d63c: cmp    $0x61,%r8d
                  │  │││  0x00007f36d524d640: jl     0x00007f36d524e265  ;*if_icmpgt
                  │  │││                                                ; - com.google.re2j.Unicode::toUpper@9 (line 167)
                  │  │││                                                ; - com.google.re2j.Unicode::simpleFold@83 (line 227)
                  │  │││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  │  │││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.13%    0.23%  │  │││  0x00007f36d524d646: cmp    $0x7a,%r8d
                  │  │││  0x00007f36d524d64a: jg     0x00007f36d524e2b1  ;*if_icmpgt
                  │  │││                                                ; - com.google.re2j.Unicode::toUpper@15 (line 167)
                  │  │││                                                ; - com.google.re2j.Unicode::simpleFold@83 (line 227)
                  │  │││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  │  │││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.15%    0.20%  │  │││  0x00007f36d524d650: mov    %r8d,%r10d
  0.03%    0.04%  │  │││  0x00007f36d524d653: add    $0xffffffe0,%r10d  ; OopMap{r9=Oop rdi=NarrowOop rdx=NarrowOop rsi=Oop rax=Oop r14=NarrowOop [8]=Oop [24]=Oop [40]=Oop off=1719}
                  │  │││                                                ;*goto
                  │  │││                                                ; - com.google.re2j.Inst::matchRune@54 (line 57)
                  │  │││                                                ; - com.google.re2j.Machine::step@308 (line 306)
                  │  ↘││  0x00007f36d524d657: test   %eax,0x188c59a3(%rip)        # 0x00007f36edb13000
                  │   ││                                                ;*goto
                  │   ││                                                ; - com.google.re2j.Inst::matchRune@54 (line 57)
                  │   ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
                  │   ││                                                ;   {poll}
  0.26%    0.19%  │   ││  0x00007f36d524d65d: cmp    %r13d,%r10d
                  │   ││  0x00007f36d524d660: je     0x00007f36d524d490  ;*if_icmpeq
                  │   ││                                                ; - com.google.re2j.Inst::matchRune@39 (line 56)
                  │   ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
                  │   ││  0x00007f36d524d666: mov    %r13d,%r11d        ;*iload_1
                  │   ││                                                ; - com.google.re2j.Inst::matchRune@42 (line 58)
                  │   ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.03%    0.05%  │   ││  0x00007f36d524d669: cmp    %r10d,%ecx
                  │   ││  0x00007f36d524d66c: je     0x00007f36d524d980  ;*if_icmpne
                  │   ││                                                ; - com.google.re2j.Inst::matchRune@44 (line 58)
                  │   ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.16%    0.16%  │   ││  0x00007f36d524d672: mov    %r10d,0x20(%rsp)
  0.10%    0.13%  │   ││  0x00007f36d524d677: mov    %r11d,%r13d
  0.10%    0.06%  │   ││  0x00007f36d524d67a: mov    $0x1f,%r10d
  0.02%    0.02%  │   ││  0x00007f36d524d680: mov    $0x1f,%r11d
  0.13%    0.15%  │   ││  0x00007f36d524d686: xor    %r8d,%r8d
  0.11%    0.10%  │   ││  0x00007f36d524d689: mov    $0x3f,%ebx
  0.05%    0.08%  │   ││  0x00007f36d524d68e: mov    %r8d,0x30(%rsp)
  0.03%    0.03%  │   ╰│  0x00007f36d524d693: jmpq   0x00007f36d524d593
  0.37%    0.45%  ↘    │  0x00007f36d524d698: mov    %r11d,%r8d
  0.05%    0.07%       │  0x00007f36d524d69b: inc    %r8d               ;*iadd
                       │                                                ; - com.google.re2j.Unicode::simpleFold@33 (line 210)
                       │                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                       │                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.06%    0.05%       │  0x00007f36d524d69e: mov    %ebx,%r11d
  0.02%    0.04%       ╰  0x00007f36d524d6a1: jmpq   0x00007f36d524d5d0
  0.05%    0.11%          0x00007f36d524d6a6: xor    %r11d,%r11d
                          0x00007f36d524d6a9: mov    0x20(%rsp),%ecx
                          0x00007f36d524d6ad: mov    0x9c(%rsp),%edi
  0.07%    0.06%          0x00007f36d524d6b4: jmpq   0x00007f36d524d151
                          0x00007f36d524d6b9: mov    %eax,%ebx
                          0x00007f36d524d6bb: sar    %ebx
                          0x00007f36d524d6bd: add    %eax,%ebx          ;*iadd
                                                                        ; - java.util.ArrayList::grow@10 (line 255)
                                                                        ; - java.util.ArrayList::ensureExplicitCapacity@22 (line 235)
                                                                        ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                                        ; - java.util.ArrayList::add@7 (line 458)
                                                                        ; - com.google.re2j.Machine::step@410 (line 329)
                          0x00007f36d524d6bf: mov    %ebx,%r10d
                          0x00007f36d524d6c2: sub    %esi,%r10d
....................................................................................................
 15.53%   19.47%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 549 (228 bytes) 

                                                                    ; - com.google.re2j.Machine::step@250 (line 293)
                      0x00007f36d524d363: mov    0x8(%rsp),%r11
                      0x00007f36d524d368: mov    %r12d,0xc(%r11)    ;*putfield size
                                                                    ; - com.google.re2j.Machine::step@293 (line 300)
                      0x00007f36d524d36c: mov    0x28(%rsp),%r11
                      0x00007f36d524d371: movb   $0x1,0xc(%r11)     ;*putfield matched
                                                                    ; - com.google.re2j.Machine::step@298 (line 302)
                      0x00007f36d524d376: mov    0x20(%rsp),%ecx
                      0x00007f36d524d37a: jmpq   0x00007f36d524d02f  ;*if_icmpge
                                                                    ; - com.google.re2j.Machine::step@18 (line 264)
  0.04%    0.04%      0x00007f36d524d37f: mov    0x8(%rsp),%r10
  0.02%    0.04%      0x00007f36d524d384: mov    %r12d,0xc(%r10)    ;*getfield size
                                                                    ; - com.google.re2j.Machine::step@15 (line 264)
  0.04%    0.10%      0x00007f36d524d388: add    $0x80,%rsp
  0.01%    0.02%      0x00007f36d524d38f: pop    %rbp
  0.03%    0.08%      0x00007f36d524d390: test   %eax,0x188c5c6a(%rip)        # 0x00007f36edb13000
                                                                    ;   {poll_return}
  0.02%    0.00%      0x00007f36d524d396: retq   
                      0x00007f36d524d397: nopw   0x0(%rax,%rax,1)
  0.38%    0.40%  ↗   0x00007f36d524d3a0: mov    %r8d,%r10d
  0.52%    0.71%  │   0x00007f36d524d3a3: vmovd  %r8d,%xmm1
  0.59%    0.42%  │   0x00007f36d524d3a8: mov    %r11d,0x20(%rsp)
  0.44%    0.34%  │   0x00007f36d524d3ad: sub    %r11d,%r10d        ;*isub
                  │                                                 ; - com.google.re2j.Unicode::simpleFold@15 (line 208)
                  │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 55)
                  │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.31%    0.41%  │   0x00007f36d524d3b0: mov    %r10d,%ebx
  0.55%    0.69%  │   0x00007f36d524d3b3: sar    $0x1f,%ebx
  0.52%    0.30%  │   0x00007f36d524d3b6: shr    $0x1f,%ebx
  0.45%    0.17%  │   0x00007f36d524d3b9: add    %r10d,%ebx
  0.26%    0.37%  │   0x00007f36d524d3bc: sar    %ebx
  0.49%    0.63%  │   0x00007f36d524d3be: mov    %r11d,%r8d
  0.48%    0.40%  │   0x00007f36d524d3c1: add    %ebx,%r8d          ;*idiv
                  │                                                 ; - com.google.re2j.Unicode::simpleFold@17 (line 208)
                  │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 55)
                  │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.46%    0.23%  │   0x00007f36d524d3c4: cmp    $0x3f,%r8d
                  │   0x00007f36d524d3c8: jae    0x00007f36d524dc25
  0.33%    0.53%  │   0x00007f36d524d3ce: movslq %ebx,%r10
  0.75%    0.83%  │   0x00007f36d524d3d1: movslq 0x20(%rsp),%r11
  0.59%    0.67%  │   0x00007f36d524d3d6: add    %r10,%r11
  0.35%    0.63%  │   0x00007f36d524d3d9: mov    0x10(%r9,%r11,4),%ebp  ;*aaload
                  │                                                 ; - com.google.re2j.Unicode::simpleFold@24 (line 209)
                  │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 55)
                  │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.31%    0.41%  │   0x00007f36d524d3de: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f36d524e489
  1.28%    1.23%  │   0x00007f36d524d3e3: test   %r11d,%r11d
                  │   0x00007f36d524d3e6: jbe    0x00007f36d524dc79  ;*iaload
                  │                                                 ; - com.google.re2j.Unicode::simpleFold@26 (line 209)
                  │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 55)
                  │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.91%    0.99%  │   0x00007f36d524d3ec: mov    0x10(%r12,%rbp,8),%r11d
  0.33%    0.67%  │   0x00007f36d524d3f1: cmp    %r13d,%r11d
                  │   0x00007f36d524d3f4: jl     0x00007f36d524d4a7  ;*if_icmpge
                  │                                                 ; - com.google.re2j.Unicode::simpleFold@28 (line 209)
                  │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 55)
                  │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.70%    0.87%  │   0x00007f36d524d3fa: mov    0x20(%rsp),%r11d   ; OopMap{r9=Oop rdi=NarrowOop rdx=NarrowOop rsi=Oop rax=Oop r14=NarrowOop [8]=Oop [24]=Oop [40]=Oop off=1119}
                  │                                                 ;*goto
                  │                                                 ; - com.google.re2j.Unicode::simpleFold@40 (line 214)
                  │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 55)
                  │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.60%    0.59%  │   0x00007f36d524d3ff: test   %eax,0x188c5bfb(%rip)        # 0x00007f36edb13000
                  │                                                 ;*goto
                  │                                                 ; - com.google.re2j.Unicode::simpleFold@40 (line 214)
                  │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 55)
                  │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
                  │                                                 ;   {poll}
  0.53%    0.61%  │   0x00007f36d524d405: cmp    %r8d,%r11d
                  ╰   0x00007f36d524d408: jl     0x00007f36d524d3a0  ;*if_icmpge
                                                                    ; - com.google.re2j.Unicode::simpleFold@9 (line 207)
                                                                    ; - com.google.re2j.Inst::matchRune@33 (line 55)
                                                                    ; - com.google.re2j.Machine::step@308 (line 306)
  0.10%    0.14%      0x00007f36d524d40a: cmp    $0x3f,%r11d
                      0x00007f36d524d40e: jge    0x00007f36d524e181  ;*if_icmpge
                                                                    ; - com.google.re2j.Unicode::simpleFold@48 (line 215)
                                                                    ; - com.google.re2j.Inst::matchRune@33 (line 55)
                                                                    ; - com.google.re2j.Machine::step@308 (line 306)
  0.08%    0.12%      0x00007f36d524d414: cmp    $0x3f,%r11d
                      0x00007f36d524d418: jae    0x00007f36d524de35
  0.04%    0.06%      0x00007f36d524d41e: mov    0x10(%r9,%r11,4),%ebp  ;*aaload
                                                                    ; - com.google.re2j.Unicode::simpleFold@55 (line 215)
                                                                    ; - com.google.re2j.Inst::matchRune@33 (line 55)
                                                                    ; - com.google.re2j.Machine::step@308 (line 306)
  0.13%    0.25%      0x00007f36d524d423: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f36d524e56d
  0.14%    0.12%      0x00007f36d524d428: test   %r10d,%r10d
                      0x00007f36d524d42b: jbe    0x00007f36d524decd
  0.08%    0.10%      0x00007f36d524d431: mov    0x10(%r12,%rbp,8),%ebp  ;*iaload
                                                                    ; - com.google.re2j.Unicode::simpleFold@57 (line 215)
                                                                    ; - com.google.re2j.Inst::matchRune@33 (line 55)
                                                                    ; - com.google.re2j.Machine::step@308 (line 306)
  0.04%    0.07%      0x00007f36d524d436: cmp    %r13d,%ebp
                      0x00007f36d524d439: je     0x00007f36d524e1cd  ;*if_icmpne
                                                                    ; - com.google.re2j.Unicode::simpleFold@59 (line 215)
                                                                    ; - com.google.re2j.Inst::matchRune@33 (line 55)
                                                                    ; - com.google.re2j.Machine::step@308 (line 306)
  0.14%    0.16%      0x00007f36d524d43f: mov    %r13d,%r11d
  0.10%    0.10%      0x00007f36d524d442: cmp    $0x7f,%r11d
                      0x00007f36d524d446: jg     0x00007f36d524e219  ;*if_icmpgt
                                                                    ; - com.google.re2j.Unicode::toLower@3 (line 177)
                                                                    ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                                                                    ; - com.google.re2j.Inst::matchRune@33 (line 55)
                                                                    ; - com.google.re2j.Machine::step@308 (line 306)
  0.12%    0.16%      0x00007f36d524d44c: cmp    $0x41,%r11d
                      0x00007f36d524d450: jl     0x00007f36d524e075  ;*if_icmpgt
                                                                    ; - com.google.re2j.Unicode::toLower@9 (line 178)
                                                                    ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                                                                    ; - com.google.re2j.Inst::matchRune@33 (line 55)
                                                                    ; - com.google.re2j.Machine::step@308 (line 306)
  0.05%    0.04%      0x00007f36d524d456: cmp    $0x5a,%r11d
                   ╭  0x00007f36d524d45a: jg     0x00007f36d524d46c  ;*if_icmpgt
                   │                                                ; - com.google.re2j.Unicode::toLower@15 (line 178)
                   │                                                ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                   │                                                ; - com.google.re2j.Inst::matchRune@33 (line 55)
                   │                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.13%    0.19%   │  0x00007f36d524d45c: mov    %r11d,%r10d
  0.11%    0.16%   │  0x00007f36d524d45f: add    $0x20,%r10d        ;*iinc
                   │                                                ; - com.google.re2j.Unicode::toLower@18 (line 179)
                   │                                                ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                   │                                                ; - com.google.re2j.Inst::matchRune@33 (line 55)
                   │                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.08%    0.08%   │  0x00007f36d524d463: cmp    %r11d,%r10d
                   │  0x00007f36d524d466: jne    0x00007f36d524d669  ;*if_icmpeq
                   │                                                ; - com.google.re2j.Unicode::simpleFold@77 (line 224)
                   │                                                ; - com.google.re2j.Inst::matchRune@33 (line 55)
                   │                                                ; - com.google.re2j.Machine::step@308 (line 306)
                   ↘  0x00007f36d524d46c: cmp    $0x61,%r11d
                      0x00007f36d524d470: jl     0x00007f36d524e2fd  ;*if_icmpgt
....................................................................................................
 13.67%   15.15%  <total for region 3>

....[Hottest Region 4]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 549 (310 bytes) 

                                                                    ;*invokespecial add
                                                                    ; - com.google.re2j.Machine::step@394 (line 325)
                                                                    ;   {optimized virtual_call}
                      0x00007f36d524d07c: test   %rax,%rax
                      0x00007f36d524d07f: je     0x00007f36d524d6a6
                      0x00007f36d524d085: mov    %rax,0x50(%rsp)
                      0x00007f36d524d08a: mov    0x20(%rsp),%ecx
                      0x00007f36d524d08e: mov    0x94(%rsp),%r8d
                      0x00007f36d524d096: mov    0x9c(%rsp),%edi    ;*aload
                                                                    ; - com.google.re2j.Machine::step@399 (line 327)
  0.37%    0.30%      0x00007f36d524d09d: mov    0x28(%rsp),%r10
  0.00%    0.01%      0x00007f36d524d0a2: mov    0x20(%r10),%ebp    ;*getfield pool
                                                                    ; - com.google.re2j.Machine::step@405 (line 329)
  0.11%    0.12%      0x00007f36d524d0a6: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f36d524e459
  0.03%    0.03%      0x00007f36d524d0ab: cmp    $0xf8002f22,%r10d  ;   {metadata(&apos;java/util/ArrayList&apos;)}
                      0x00007f36d524d0b2: jne    0x00007f36d524dba5
  0.28%    0.23%      0x00007f36d524d0b8: lea    (%r12,%rbp,8),%r9  ;*invokeinterface add
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
           0.01%      0x00007f36d524d0bc: mov    0x14(%r9),%edx     ;*getfield elementData
                                                                    ; - java.util.ArrayList::ensureCapacityInternal@1 (line 223)
                                                                    ; - java.util.ArrayList::add@7 (line 458)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
  0.10%    0.13%      0x00007f36d524d0c0: mov    0x10(%r9),%ebp     ;*getfield size
                                                                    ; - java.util.ArrayList::add@2 (line 458)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
  0.05%    0.01%      0x00007f36d524d0c4: mov    %ebp,%r11d
  0.31%    0.31%      0x00007f36d524d0c7: inc    %r11d              ;*iadd
                                                                    ; - java.util.ArrayList::add@6 (line 458)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
  0.01%    0.01%      0x00007f36d524d0ca: cmp    $0xed9f0db7,%edx   ;   {oop(a &apos;java/lang/Object&apos;[0] )}
                      0x00007f36d524d0d0: je     0x00007f36d524d954  ;*if_acmpne
                                                                    ; - java.util.ArrayList::ensureCapacityInternal@7 (line 223)
                                                                    ; - java.util.ArrayList::add@7 (line 458)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
  0.11%    0.08%      0x00007f36d524d0d6: mov    %r11d,%esi         ;*aload_0
                                                                    ; - java.util.ArrayList::ensureCapacityInternal@17 (line 227)
                                                                    ; - java.util.ArrayList::add@7 (line 458)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
  0.02%    0.03%      0x00007f36d524d0d9: mov    0xc(%r9),%ebx      ;*getfield modCount
                                                                    ; - java.util.ArrayList::ensureExplicitCapacity@2 (line 231)
                                                                    ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                                    ; - java.util.ArrayList::add@7 (line 458)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
  0.32%    0.35%      0x00007f36d524d0dd: inc    %ebx
  0.00%    0.01%      0x00007f36d524d0df: mov    %ebx,0xc(%r9)      ;*putfield modCount
                                                                    ; - java.util.ArrayList::ensureExplicitCapacity@7 (line 231)
                                                                    ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                                    ; - java.util.ArrayList::add@7 (line 458)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
  0.07%    0.08%      0x00007f36d524d0e3: mov    0xc(%r12,%rdx,8),%eax  ;*arraylength
                                                                    ; - java.util.ArrayList::ensureExplicitCapacity@15 (line 234)
                                                                    ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                                    ; - java.util.ArrayList::add@7 (line 458)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
                                                                    ; implicit exception: dispatches to 0x00007f36d524e469
  0.04%    0.04%      0x00007f36d524d0e8: mov    %esi,%r10d
  0.30%    0.35%      0x00007f36d524d0eb: sub    %eax,%r10d
  0.03%    0.01%      0x00007f36d524d0ee: test   %r10d,%r10d
                      0x00007f36d524d0f1: jg     0x00007f36d524d6b9  ;*ifle
                                                                    ; - java.util.ArrayList::ensureExplicitCapacity@17 (line 234)
                                                                    ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                                    ; - java.util.ArrayList::add@7 (line 458)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
  0.11%    0.07%      0x00007f36d524d0f7: mov    %rdx,%r10
  0.03%    0.02%      0x00007f36d524d0fa: shl    $0x3,%r10          ;*return
                                                                    ; - java.util.ArrayList::ensureExplicitCapacity@25 (line 236)
                                                                    ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                                    ; - java.util.ArrayList::add@7 (line 458)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
  0.37%    0.36%      0x00007f36d524d0fe: mov    %r11d,0x10(%r9)    ;*putfield size
                                                                    ; - java.util.ArrayList::add@22 (line 459)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
           0.01%      0x00007f36d524d102: mov    0xc(%r10),%r11d    ; implicit exception: dispatches to 0x00007f36d524e479
  0.10%    0.08%      0x00007f36d524d106: cmp    %r11d,%ebp
                      0x00007f36d524d109: jae    0x00007f36d524db61
  0.05%    0.03%      0x00007f36d524d10f: mov    0x8(%r10),%r11d
  0.29%    0.39%      0x00007f36d524d113: cmp    $0xf80022f5,%r11d  ;   {metadata(&apos;java/lang/Object&apos;[])}
                      0x00007f36d524d11a: jne    0x00007f36d524dbe1
  0.00%               0x00007f36d524d120: lea    0x10(%r10,%rbp,4),%r10
  0.10%    0.06%      0x00007f36d524d125: mov    0x50(%rsp),%r11
  0.03%    0.03%      0x00007f36d524d12a: shr    $0x3,%r11
  0.26%    0.29%      0x00007f36d524d12e: mov    %r11d,(%r10)
  0.01%    0.01%      0x00007f36d524d131: shr    $0x9,%r10
  0.09%    0.04%      0x00007f36d524d135: movabs $0x7f36e651b000,%r11
  0.02%    0.04%      0x00007f36d524d13f: mov    %r12b,(%r11,%r10,1)  ;*aastore
                                                                    ; - java.util.ArrayList::add@26 (line 459)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
  0.34%    0.29%      0x00007f36d524d143: xor    %r11d,%r11d
  0.00%    0.01%  ╭   0x00007f36d524d146: jmp    0x00007f36d524d151
  0.23%    0.19%  │↗  0x00007f36d524d148: mov    0x24(%rsp),%r11d
  0.05%    0.07%  ││  0x00007f36d524d14d: mov    0x20(%rsp),%ecx    ; OopMap{[8]=Oop [24]=Oop [40]=Oop off=433}
                  ││                                                ;*goto
                  ││                                                ; - com.google.re2j.Machine::step@419 (line 264)
  0.24%    0.09%  ↘│  0x00007f36d524d151: test   %eax,0x188c5ea9(%rip)        # 0x00007f36edb13000
                   │                                                ;*goto
                   │                                                ; - com.google.re2j.Machine::step@419 (line 264)
                   │                                                ;   {poll}
  0.06%    0.11%   │  0x00007f36d524d157: mov    0x8(%rsp),%r10
  0.46%    0.34%   │  0x00007f36d524d15c: mov    0xc(%r10),%r11d
  0.14%    0.12%   │  0x00007f36d524d160: cmp    %r11d,%edi
                   │  0x00007f36d524d163: jge    0x00007f36d524d37f
  0.17%    0.04%   │  0x00007f36d524d169: mov    %ecx,0x20(%rsp)
  0.06%    0.09%   │  0x00007f36d524d16d: mov    %edi,%r8d          ;*aload_1
                   │                                                ; - com.google.re2j.Machine::step@21 (line 265)
  0.45%    0.37%   │  0x00007f36d524d170: mov    0x8(%rsp),%r10
  0.13%    0.16%   │  0x00007f36d524d175: mov    0x10(%r10),%r10d   ;*getfield dense
                   │                                                ; - com.google.re2j.Machine::step@22 (line 265)
  0.34%    0.21%   │  0x00007f36d524d179: mov    0xc(%r12,%r10,8),%r9d  ; implicit exception: dispatches to 0x00007f36d524e425
  0.43%    0.35%   │  0x00007f36d524d17e: cmp    %r9d,%r8d
                   │  0x00007f36d524d181: jae    0x00007f36d524d9eb
  0.59%    0.73%   │  0x00007f36d524d187: shl    $0x3,%r10
  0.11%    0.12%   │  0x00007f36d524d18b: mov    0x10(%r10,%r8,4),%r10d  ;*aaload
                   │                                                ; - com.google.re2j.Machine::step@27 (line 265)
  0.23%    0.21%   │  0x00007f36d524d190: mov    0x10(%r12,%r10,8),%r11d  ;*getfield thread
                   │                                                ; - com.google.re2j.Machine::step@40 (line 269)
                   │                                                ; implicit exception: dispatches to 0x00007f36d524e499
  0.85%    0.99%   │  0x00007f36d524d195: mov    %r8d,%edi
  0.29%    0.49%   │  0x00007f36d524d198: inc    %edi               ;*iadd
                   │                                                ; - com.google.re2j.Machine::step@241 (line 293)
  0.13%    0.09%   │  0x00007f36d524d19a: test   %r11d,%r11d
                   ╰  0x00007f36d524d19d: je     0x00007f36d524d148  ;*ifnonnull
                                                                    ; - com.google.re2j.Machine::step@47 (line 270)
  0.21%    0.30%      0x00007f36d524d19f: mov    0x24(%rsp),%r9d
  0.01%    0.00%      0x00007f36d524d1a4: test   %r9d,%r9d
                      0x00007f36d524d1a7: jne    0x00007f36d524dd51  ;*ifeq
                                                                    ; - com.google.re2j.Machine::step@55 (line 273)
  0.21%    0.33%      0x00007f36d524d1ad: mov    0x10(%r12,%r11,8),%r9d  ;*getfield inst
                                                                    ; - com.google.re2j.Machine::step@107 (line 278)
  1.03%    1.46%      0x00007f36d524d1b2: mov    0xc(%r12,%r9,8),%esi  ;*getfield op
                                                                    ; - com.google.re2j.Machine::step@117 (line 280)
                                                                    ; implicit exception: dispatches to 0x00007f36d524e449
  2.06%    2.25%      0x00007f36d524d1b7: mov    0x18(%r12,%r9,8),%ecx  ;*getfield runes
                                                                    ; - com.google.re2j.Machine::step@320 (line 310)
  0.11%    0.07%      0x00007f36d524d1bc: mov    0xc(%r12,%r11,8),%r14d  ;*getfield cap
                                                                    ; - com.google.re2j.Machine::step@176 (line 287)
  0.00%    0.02%      0x00007f36d524d1c1: lea    (%r12,%r11,8),%r10  ;*getfield thread
                                                                    ; - com.google.re2j.Machine::step@40 (line 269)
  0.03%    0.02%      0x00007f36d524d1c5: cmp    $0x9,%esi
                      0x00007f36d524d1c8: je     0x00007f36d524d010
  0.39%    0.54%      0x00007f36d524d1ce: cmp    $0x9,%esi
                      0x00007f36d524d1d1: jle    0x00007f36d524d200
  0.01%               0x00007f36d524d1d3: cmp    $0xb,%esi
                      0x00007f36d524d1d6: jne    0x00007f36d524d036  ;*tableswitch
                                                                    ; - com.google.re2j.Machine::step@120 (line 280)
                      0x00007f36d524d1dc: mov    0x20(%rsp),%ecx
                      0x00007f36d524d1e0: cmp    $0xa,%ecx
                      0x00007f36d524d1e3: je     0x00007f36d524d02f  ;*if_icmpeq
                                                                    ; - com.google.re2j.Machine::step@348 (line 318)
                      0x00007f36d524d1e9: mov    %r8d,0x94(%rsp)
                      0x00007f36d524d1f1: mov    %edi,0x9c(%rsp)
                      0x00007f36d524d1f8: mov    %r10,%rax
                      0x00007f36d524d1fb: jmpq   0x00007f36d524d051
....................................................................................................
 12.98%   13.61%  <total for region 4>

....[Hottest Region 5]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 540 (404 bytes) 

                          0x00007f36d524236a: mov    %r10,(%rsp)
                          0x00007f36d524236e: nop
                          0x00007f36d524236f: callq  0x00007f36d5046020  ; OopMap{off=660}
                                                                        ;*invokespecial add
                                                                        ; - com.google.re2j.Machine::add@203 (line 369)
                                                                        ;   {optimized virtual_call}
                  ╭       0x00007f36d5242374: jmpq   0x00007f36d524250c
                  │       0x00007f36d5242379: mov    0x70(%rsp),%rax
                  │╭      0x00007f36d524237e: jmpq   0x00007f36d524250c  ;*tableswitch
                  ││                                                    ; - com.google.re2j.Machine::add@40 (line 349)
  1.23%    1.09%  ││      0x00007f36d5242383: mov    0x8(%rsp),%rsi
  0.01%           ││      0x00007f36d5242388: mov    0x48(%rsp),%rdx
                  ││      0x00007f36d524238d: mov    0x1c(%rsp),%r8d
                  ││      0x00007f36d5242392: mov    0x20(%rsp),%r9
  0.34%    0.28%  ││      0x00007f36d5242397: mov    0x28(%rsp),%edi
  0.02%           ││      0x00007f36d524239b: mov    0x70(%rsp),%r10
                  ││      0x00007f36d52423a0: mov    %r10,(%rsp)
  0.00%    0.00%  ││      0x00007f36d52423a4: mov    %rsi,%rbp
  0.34%    0.25%  ││      0x00007f36d52423a7: callq  0x00007f36d5046020  ; OopMap{rbp=Oop [32]=Oop [56]=Oop [72]=Oop off=716}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@127 (line 358)
                  ││                                                    ;   {optimized virtual_call}
  0.00%    0.01%  ││      0x00007f36d52423ac: mov    0x38(%rsp),%r10
  0.12%    0.10%  ││      0x00007f36d52423b1: mov    0x14(%r10),%ecx    ;*getfield arg
                  ││                                                    ; - com.google.re2j.Machine::add@136 (line 359)
  0.22%    0.26%  ││      0x00007f36d52423b5: mov    %rbp,%rsi
           0.00%  ││      0x00007f36d52423b8: mov    0x48(%rsp),%rdx
                  ││      0x00007f36d52423bd: mov    0x1c(%rsp),%r8d
  0.09%    0.18%  ││      0x00007f36d52423c2: mov    0x20(%rsp),%r9
  0.16%    0.23%  ││      0x00007f36d52423c7: mov    0x28(%rsp),%edi
  0.01%           ││      0x00007f36d52423cb: mov    %rax,(%rsp)
  0.00%           ││      0x00007f36d52423cf: callq  0x00007f36d5046020  ; OopMap{off=756}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@146 (line 359)
                  ││                                                    ;   {optimized virtual_call}
  0.00%           ││╭     0x00007f36d52423d4: jmpq   0x00007f36d524250c  ;*aload
                  │││                                                   ; - com.google.re2j.Machine::add@293 (line 388)
  1.68%    1.46%  │││     0x00007f36d52423d9: mov    0x38(%rsp),%r10
                  │││     0x00007f36d52423de: mov    %r10,%r8
                  │││     0x00007f36d52423e1: shr    $0x3,%r8           ;*putfield inst
                  │││                                                   ; - com.google.re2j.Machine::alloc@47 (line 151)
                  │││                                                   ; - com.google.re2j.Machine::add@301 (line 389)
           0.01%  │││     0x00007f36d52423e5: mov    0x70(%rsp),%rbp
  0.54%    0.29%  │││     0x00007f36d52423ea: test   %rbp,%rbp
                  │││╭    0x00007f36d52423ed: je     0x00007f36d524240d  ;*ifnonnull
                  ││││                                                  ; - com.google.re2j.Machine::add@295 (line 388)
                  ││││    0x00007f36d52423ef: mov    %r8d,0x10(%rbp)
                  ││││    0x00007f36d52423f3: mov    %rbp,%r10
                  ││││    0x00007f36d52423f6: shr    $0x9,%r10
  0.09%    0.09%  ││││    0x00007f36d52423fa: movabs $0x7f36e651b000,%r11
                  ││││    0x00007f36d5242404: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                  ││││                                                  ; - com.google.re2j.Machine::add@313 (line 391)
                  ││││╭   0x00007f36d5242408: jmpq   0x00007f36d524249d
                  │││↘│   0x00007f36d524240d: mov    0x8(%rsp),%r10
  0.00%           │││ │   0x00007f36d5242412: mov    0x20(%r10),%ebp    ;*getfield pool
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@1 (line 147)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
  0.00%           │││ │   0x00007f36d5242416: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f36d5242929
  0.46%    0.19%  │││ │   0x00007f36d524241b: cmp    $0xf8002f22,%r11d  ;   {metadata(&apos;java/util/ArrayList&apos;)}
                  │││ │   0x00007f36d5242422: jne    0x00007f36d524270d
                  │││ │   0x00007f36d5242428: lea    (%r12,%rbp,8),%rcx  ;*invokeinterface size
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@4 (line 147)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
  0.00%    0.00%  │││ │   0x00007f36d524242c: mov    0x10(%rcx),%r9d    ;*getfield size
                  │││ │                                                 ; - java.util.ArrayList::size@1 (line 278)
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@4 (line 147)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
  0.00%           │││ │   0x00007f36d5242430: test   %r9d,%r9d
                  │││ │   0x00007f36d5242433: jle    0x00007f36d524275d  ;*ifle
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@11 (line 148)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
  0.45%    0.28%  │││ │   0x00007f36d5242439: mov    %r9d,%r10d
                  │││ │   0x00007f36d524243c: dec    %r10d              ;*isub
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@20 (line 148)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
                  │││ │   0x00007f36d524243f: cmp    %r9d,%r10d
                  │││ │   0x00007f36d5242442: jge    0x00007f36d5242781  ;*if_icmplt
                  │││ │                                                 ; - java.util.ArrayList::rangeCheck@5 (line 652)
                  │││ │                                                 ; - java.util.ArrayList::remove@2 (line 492)
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@21 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
                  │││ │   0x00007f36d5242448: incl   0xc(%rcx)          ;*putfield modCount
                  │││ │                                                 ; - java.util.ArrayList::remove@12 (line 494)
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@21 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
  0.44%    0.26%  │││ │   0x00007f36d524244b: mov    0x14(%rcx),%ebp    ;*getfield elementData
                  │││ │                                                 ; - java.util.ArrayList::elementData@1 (line 418)
                  │││ │                                                 ; - java.util.ArrayList::remove@17 (line 495)
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@21 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
                  │││ │   0x00007f36d524244e: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f36d5242939
  0.39%    0.33%  │││ │   0x00007f36d5242453: cmp    %r11d,%r10d
                  │││ │   0x00007f36d5242456: jae    0x00007f36d52426e5  ;*aaload
                  │││ │                                                 ; - java.util.ArrayList::elementData@5 (line 418)
                  │││ │                                                 ; - java.util.ArrayList::remove@17 (line 495)
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@21 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
  0.01%           │││ │   0x00007f36d524245c: mov    %r10d,0x10(%rcx)   ;*putfield size
                  │││ │                                                 ; - java.util.ArrayList::remove@62 (line 501)
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@21 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
                  │││ │   0x00007f36d5242460: lea    (%r12,%rbp,8),%r10
  0.01%           │││ │   0x00007f36d5242464: mov    0xc(%r10,%r9,4),%ebp  ;*aaload
                  │││ │                                                 ; - java.util.ArrayList::elementData@5 (line 418)
                  │││ │                                                 ; - java.util.ArrayList::remove@17 (line 495)
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@21 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
  0.47%    0.11%  │││ │   0x00007f36d5242469: mov    %r12d,0xc(%r10,%r9,4)  ;*aastore
                  │││ │                                                 ; - java.util.ArrayList::remove@66 (line 501)
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@21 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
  0.01%           │││ │   0x00007f36d524246e: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f36d524294d
  0.00%           │││ │   0x00007f36d5242473: cmp    $0xf8019b16,%r11d  ;   {metadata(&apos;com/google/re2j/Machine$Thread&apos;)}
                  │││ │   0x00007f36d524247a: jne    0x00007f36d524285d
  0.00%           │││ │   0x00007f36d5242480: shl    $0x3,%rbp          ;*checkcast
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@26 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
  0.45%    0.17%  │││ │   0x00007f36d5242484: mov    %r8d,0x10(%rbp)
  0.00%    0.01%  │││ │   0x00007f36d5242488: mov    %rbp,%r10
                  │││ │   0x00007f36d524248b: shr    $0x9,%r10
                  │││ │   0x00007f36d524248f: movabs $0x7f36e651b000,%r11
  0.42%    0.11%  │││ │   0x00007f36d5242499: mov    %r12b,(%r11,%r10,1)  ;*aload
                  │││ │                                                 ; - com.google.re2j.Machine::add@316 (line 393)
           0.00%  │││ ↘   0x00007f36d524249d: mov    0x20(%rsp),%rdi
  0.08%    0.08%  │││     0x00007f36d52424a2: mov    0xc(%rdi),%r10d    ;*arraylength
                  │││                                                   ; - com.google.re2j.Machine::add@318 (line 393)
                  │││                                                   ; implicit exception: dispatches to 0x00007f36d5242919
  0.01%           │││     0x00007f36d52424a6: test   %r10d,%r10d
                  │││     0x00007f36d52424a9: jle    0x00007f36d5242742  ;*ifle
                  │││                                                   ; - com.google.re2j.Machine::add@319 (line 393)
  0.54%    0.24%  │││     0x00007f36d52424af: mov    0xc(%rbp),%r11d    ;*getfield cap
                  │││                                                   ; - com.google.re2j.Machine::add@324 (line 393)
                  │││     0x00007f36d52424b3: mov    %r11,%r8
  0.09%    0.04%  │││     0x00007f36d52424b6: shl    $0x3,%r8
           0.00%  │││     0x00007f36d52424ba: cmp    %rdi,%r8
                  │││  ╭  0x00007f36d52424bd: je     0x00007f36d52424ea  ;*if_acmpeq
                  │││  │                                                ; - com.google.re2j.Machine::add@329 (line 393)
  0.45%    0.39%  │││  │  0x00007f36d52424bf: mov    0xc(%r12,%r11,8),%r9d  ; implicit exception: dispatches to 0x00007f36d5242969
  0.01%    0.00%  │││  │  0x00007f36d52424c4: lea    (%r12,%r11,8),%rcx  ;*getfield cap
                  │││  │                                                ; - com.google.re2j.Machine::add@324 (line 393)
  0.00%           │││  │  0x00007f36d52424c8: cmp    %r10d,%r9d
                  │││  │  0x00007f36d52424cb: jb     0x00007f36d5242721
  0.00%    0.00%  │││  │  0x00007f36d52424d1: lea    0x10(%r12,%r11,8),%rsi
  0.37%    0.29%  │││  │  0x00007f36d52424d6: add    $0x10,%rdi
                  │││  │  0x00007f36d52424da: movslq %r10d,%rdx
  0.00%           │││  │  0x00007f36d52424dd: movabs $0x7f36d5052640,%r10
                  │││  │  0x00007f36d52424e7: callq  *%r10              ;*aload
                  │││  │                                                ; - com.google.re2j.Machine::add@347 (line 396)
                  │││  ↘  0x00007f36d52424ea: mov    %rbx,%r10
  0.01%    0.00%  │││     0x00007f36d52424ed: mov    %rbp,%r11
  0.04%    0.07%  │││     0x00007f36d52424f0: shr    $0x3,%r11
  0.35%    0.61%  │││     0x00007f36d52424f4: mov    %r11d,0x10(%rbx)
                  │││     0x00007f36d52424f8: shr    $0x9,%r10
           0.01%  │││     0x00007f36d52424fc: movabs $0x7f36e651b000,%r11
  0.03%    0.04%  │││     0x00007f36d5242506: mov    %r12b,(%r11,%r10,1)  ;*putfield thread
                  │││                                                   ; - com.google.re2j.Machine::add@351 (line 396)
  0.46%    0.72%  │││     0x00007f36d524250a: xor    %eax,%eax          ;*synchronization entry
                  │││                                                   ; - com.google.re2j.Machine::add@-1 (line 341)
  0.51%    0.28%  ↘↘↘     0x00007f36d524250c: add    $0x60,%rsp
  0.02%    0.00%          0x00007f36d5242510: pop    %rbp
  0.48%    0.93%          0x00007f36d5242511: test   %eax,0x188d0ae9(%rip)        # 0x00007f36edb13000
                                                                        ;   {poll_return}
  0.37%    0.53%          0x00007f36d5242517: retq                      ;*tableswitch
                                                                        ; - com.google.re2j.Machine::add@40 (line 349)
                          0x00007f36d5242518: mov    0x8(%rsp),%rsi
                          0x00007f36d524251d: mov    0x48(%rsp),%rdx
                          0x00007f36d5242522: mov    0x1c(%rsp),%r8d
                          0x00007f36d5242527: mov    0x20(%rsp),%r9
                          0x00007f36d524252c: mov    %r11d,%edi
                          0x00007f36d524252f: mov    0x70(%rsp),%r10
                          0x00007f36d5242534: mov    %r10,(%rsp)
                          0x00007f36d5242538: data16 xchg %ax,%ax
....................................................................................................
 11.84%    9.99%  <total for region 5>

....[Hottest Regions]...............................................................................
 27.18%   23.68%         C2, level 4  com.google.re2j.Machine::add, version 540 (377 bytes) 
 15.53%   19.47%         C2, level 4  com.google.re2j.Machine::step, version 549 (323 bytes) 
 13.67%   15.15%         C2, level 4  com.google.re2j.Machine::step, version 549 (228 bytes) 
 12.98%   13.61%         C2, level 4  com.google.re2j.Machine::step, version 549 (310 bytes) 
 11.84%    9.99%         C2, level 4  com.google.re2j.Machine::add, version 540 (404 bytes) 
  5.10%    6.05%         C2, level 4  com.google.re2j.Machine::match, version 587 (795 bytes) 
  3.57%    3.93%         C2, level 4  com.google.re2j.Machine::step, version 549 (149 bytes) 
  3.16%    1.52%        runtime stub  StubRoutines::jint_disjoint_arraycopy (128 bytes) 
  1.89%    1.74%         C2, level 4  com.google.re2j.Machine::step, version 549 (183 bytes) 
  0.51%    0.50%   [kernel.kallsyms]  [unknown] (6 bytes) 
  0.44%    0.55%         C2, level 4  com.google.re2j.Machine::step, version 549 (120 bytes) 
  0.31%    0.31%         C2, level 4  com.google.re2j.Machine::add, version 540 (40 bytes) 
  0.26%    0.35%         C2, level 4  com.google.re2j.Machine::match, version 587 (121 bytes) 
  0.19%    0.03%   [kernel.kallsyms]  [unknown] (9 bytes) 
  0.15%    0.00%   [kernel.kallsyms]  [unknown] (49 bytes) 
  0.14%    0.04%         C2, level 4  com.google.re2j.Machine::init, version 601 (66 bytes) 
  0.09%    0.01%         C2, level 4  com.google.re2j.Machine::init, version 601 (95 bytes) 
  0.09%    0.16%           libjvm.so  RelocIterator::initialize (102 bytes) 
  0.06%    0.02%   [kernel.kallsyms]  [unknown] (11 bytes) 
  0.06%    0.03%         C2, level 4  com.google.re2j.Machine::step, version 549 (43 bytes) 
  2.76%    2.84%  <...other 508 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 48.15%   54.50%         C2, level 4  com.google.re2j.Machine::step, version 549 
 39.34%   33.98%         C2, level 4  com.google.re2j.Machine::add, version 540 
  5.43%    6.47%         C2, level 4  com.google.re2j.Machine::match, version 587 
  3.16%    1.52%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
  1.90%    1.58%   [kernel.kallsyms]  [unknown] 
  0.34%    0.12%         C2, level 4  com.google.re2j.Machine::init, version 601 
  0.10%    0.06%         C2, level 4  com.google.re2j.Matcher::find, version 610 
  0.10%    0.16%           libjvm.so  RelocIterator::initialize 
  0.10%    0.09%        libc-2.26.so  vfprintf 
  0.08%    0.05%           libjvm.so  GenericTaskQueueSet<OverflowTaskQueue<StarTask, (MemoryType)1, 131072u>, (MemoryType)1>::steal_best_of_2 
  0.07%    0.07%           libjvm.so  fileStream::write 
  0.07%    0.07%      hsdis-amd64.so  decode_instructions 
  0.06%    0.07%           libjvm.so  PSPromotionManager::copy_to_survivor_space<false> 
  0.05%    0.06%           libjvm.so  xmlTextStream::write 
  0.04%    0.06%           libjvm.so  outputStream::update_position 
  0.03%    0.01%         C2, level 4  com.github.arnaudroger.re2j.Re2jFindRegex::testCombine, version 635 
  0.03%           libpthread-2.26.so  __libc_write 
  0.03%    0.00%           libjvm.so  StealTask::do_it 
  0.03%    0.03%        libc-2.26.so  __strlen_avx2 
  0.03%    0.11%        libc-2.26.so  _IO_fwrite 
  0.85%    0.57%  <...other 109 warm methods...>
....................................................................................................
100.00%   99.62%  <totals>

....[Distribution by Source]........................................................................
 93.47%   95.19%         C2, level 4
  3.17%    1.53%        runtime stub
  1.90%    1.58%   [kernel.kallsyms]
  0.96%    1.02%           libjvm.so
  0.30%    0.50%        libc-2.26.so
  0.07%    0.08%      hsdis-amd64.so
  0.07%    0.05%  libpthread-2.26.so
  0.05%    0.01%         interpreter
  0.01%    0.02%         C1, level 3
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                        Mode  Cnt     Score    Error  Units
Re2jFindRegex.testCombine       thrpt   20  2121.446 ± 13.152  ops/s
Re2jFindRegex.testCombine:·asm  thrpt            NaN             ---
