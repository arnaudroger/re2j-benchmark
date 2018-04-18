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
# Warmup Iteration   1: 1507.044 ops/s
# Warmup Iteration   2: 2946.816 ops/s
# Warmup Iteration   3: 2886.104 ops/s
# Warmup Iteration   4: 3006.573 ops/s
# Warmup Iteration   5: 3020.385 ops/s
# Warmup Iteration   6: 3039.663 ops/s
# Warmup Iteration   7: 3036.530 ops/s
# Warmup Iteration   8: 3041.022 ops/s
# Warmup Iteration   9: 3020.960 ops/s
# Warmup Iteration  10: 2989.482 ops/s
# Warmup Iteration  11: 2739.423 ops/s
# Warmup Iteration  12: 3028.057 ops/s
# Warmup Iteration  13: 3027.756 ops/s
# Warmup Iteration  14: 2993.829 ops/s
# Warmup Iteration  15: 2989.817 ops/s
# Warmup Iteration  16: 2988.590 ops/s
# Warmup Iteration  17: 2856.231 ops/s
# Warmup Iteration  18: 3033.536 ops/s
# Warmup Iteration  19: 3008.430 ops/s
# Warmup Iteration  20: 3011.041 ops/s
Iteration   1: 2951.739 ops/s
Iteration   2: 2939.850 ops/s
Iteration   3: 2994.377 ops/s
Iteration   4: 3042.470 ops/s
Iteration   5: 3043.108 ops/s
Iteration   6: 3043.247 ops/s
Iteration   7: 3034.397 ops/s
Iteration   8: 3021.602 ops/s
Iteration   9: 2505.378 ops/s
Iteration  10: 3021.873 ops/s
Iteration  11: 3021.088 ops/s
Iteration  12: 3019.869 ops/s
Iteration  13: 3032.271 ops/s
Iteration  14: 3029.846 ops/s
Iteration  15: 3029.885 ops/s
Iteration  16: 3027.278 ops/s
Iteration  17: 3030.381 ops/s
Iteration  18: 2953.770 ops/s
Iteration  19: 2864.883 ops/s
Iteration  20: 2938.022 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  2977.267 ±(99.9%) 104.947 ops/s [Average]
  (min, avg, max) = (2505.378, 2977.267, 3043.247), stdev = 120.857
  CI (99.9%): [2872.320, 3082.213] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine:·asm":
PrintAssembly processed: 200679 total address lines.
Perf output processed (skipped 23.480 seconds):
 Column 1: cycles (20735 events)
 Column 2: instructions (20803 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 501 (320 bytes) 

                       # parm4:    rdi       = int
                       # parm5:    [sp+0x70]   = &apos;com/google/re2j/Machine$Thread&apos;  (sp of caller)
                       0x00007f6d2cde9bc0: mov    0x8(%rsi),%r10d    ;   {no_reloc}
                       0x00007f6d2cde9bc4: shl    $0x3,%r10
                       0x00007f6d2cde9bc8: cmp    %r10,%rax
                       0x00007f6d2cde9bcb: jne    0x00007f6d2cc18e20  ;   {runtime_call}
                       0x00007f6d2cde9bd1: data16 xchg %ax,%ax
                       0x00007f6d2cde9bd4: nopl   0x0(%rax,%rax,1)
                       0x00007f6d2cde9bdc: data16 data16 xchg %ax,%ax
                     [Verified Entry Point]
  1.14%    1.20%       0x00007f6d2cde9be0: mov    %eax,-0x14000(%rsp)
  0.48%    0.50%       0x00007f6d2cde9be7: push   %rbp
  0.48%    0.53%       0x00007f6d2cde9be8: sub    $0x60,%rsp         ;*synchronization entry
                                                                     ; - com.google.re2j.Machine::add@-1 (line 345)
  1.10%    1.15%       0x00007f6d2cde9bec: mov    %edi,0x28(%rsp)
  0.15%    0.05%       0x00007f6d2cde9bf0: mov    %r9,0x20(%rsp)
  0.52%    0.61%       0x00007f6d2cde9bf5: mov    %r8d,0x1c(%rsp)
  0.73%    0.67%       0x00007f6d2cde9bfa: mov    %rsi,0x8(%rsp)
  0.36%    0.50%       0x00007f6d2cde9bff: mov    %ecx,0x40(%rsp)
  0.07%    0.03%       0x00007f6d2cde9c03: test   %ecx,%ecx
                       0x00007f6d2cde9c05: je     0x00007f6d2cdea0c1  ;*ifne
                                                                     ; - com.google.re2j.Machine::add@1 (line 345)
  0.36%    0.57%       0x00007f6d2cde9c0b: mov    %rdx,0x48(%rsp)
  0.66%    0.74%       0x00007f6d2cde9c10: mov    0x14(%rdx),%r9d    ;*getfield sparse
                                                                     ; - com.google.re2j.Machine$Queue::contains@1 (line 46)
                                                                     ; - com.google.re2j.Machine::add@9 (line 348)
                                                                     ; implicit exception: dispatches to 0x00007f6d2cdea1e9
  0.39%    0.39%       0x00007f6d2cde9c14: mov    0xc(%r12,%r9,8),%r10d  ; implicit exception: dispatches to 0x00007f6d2cdea1fd
  0.08%    0.06%       0x00007f6d2cde9c19: cmp    %r10d,%ecx
                       0x00007f6d2cde9c1c: jae    0x00007f6d2cde9fba  ;*iaload
                                                                     ; - com.google.re2j.Machine$Queue::contains@5 (line 46)
                                                                     ; - com.google.re2j.Machine::add@9 (line 348)
  0.48%    0.43%       0x00007f6d2cde9c22: mov    0x10(%rdx),%ecx    ;*getfield dense
                                                                     ; - com.google.re2j.Machine$Queue::contains@18 (line 50)
                                                                     ; - com.google.re2j.Machine::add@9 (line 348)
  0.77%    0.76%       0x00007f6d2cde9c25: mov    0xc(%rdx),%r8d     ;*getfield size
                                                                     ; - com.google.re2j.Machine$Queue::contains@9 (line 47)
                                                                     ; - com.google.re2j.Machine::add@9 (line 348)
  0.37%    0.49%       0x00007f6d2cde9c29: lea    (%r12,%r9,8),%rdi
  0.06%    0.03%       0x00007f6d2cde9c2d: mov    0x40(%rsp),%r11d
  0.94%    0.63%       0x00007f6d2cde9c32: mov    0x10(%rdi,%r11,4),%ebp  ;*iaload
                                                                     ; - com.google.re2j.Machine$Queue::contains@5 (line 46)
                                                                     ; - com.google.re2j.Machine::add@9 (line 348)
  1.05%    0.74%       0x00007f6d2cde9c37: cmp    %r8d,%ebp
                  ╭    0x00007f6d2cde9c3a: jl     0x00007f6d2cde9d00  ;*iastore
                  │                                                  ; - com.google.re2j.Machine$Queue::add@18 (line 58)
                  │                                                  ; - com.google.re2j.Machine::add@20 (line 351)
  1.71%    1.50%  │ ↗  0x00007f6d2cde9c40: mov    %r8d,%r11d
  0.01%    0.01%  │ │  0x00007f6d2cde9c43: inc    %r11d
  0.28%    0.43%  │ │  0x00007f6d2cde9c46: mov    %r11d,0xc(%rdx)    ;*putfield size
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@8 (line 57)
                  │ │                                                ; - com.google.re2j.Machine::add@20 (line 351)
  0.37%    0.12%  │ │  0x00007f6d2cde9c4a: mov    0x40(%rsp),%ebx
  1.02%    1.10%  │ │  0x00007f6d2cde9c4e: cmp    %r10d,%ebx
                  │ │  0x00007f6d2cde9c51: jae    0x00007f6d2cde9ff9
  0.00%    0.02%  │ │  0x00007f6d2cde9c57: mov    %r8d,0x10(%rdi,%rbx,4)  ;*iastore
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@18 (line 58)
                  │ │                                                ; - com.google.re2j.Machine::add@20 (line 351)
  0.68%    0.87%  │ │  0x00007f6d2cde9c5c: mov    0xc(%r12,%rcx,8),%r10d  ; implicit exception: dispatches to 0x00007f6d2cdea211
  0.31%    0.18%  │ │  0x00007f6d2cde9c61: cmp    %r10d,%r8d
                  │ │  0x00007f6d2cde9c64: jae    0x00007f6d2cdea045  ;*aaload
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@24 (line 59)
                  │ │                                                ; - com.google.re2j.Machine::add@20 (line 351)
  0.80%    0.99%  │ │  0x00007f6d2cde9c6a: lea    (%r12,%rcx,8),%r10  ;*getfield dense
                  │ │                                                ; - com.google.re2j.Machine$Queue::contains@18 (line 50)
                  │ │                                                ; - com.google.re2j.Machine::add@9 (line 348)
  0.01%    0.01%  │ │  0x00007f6d2cde9c6e: mov    %r10,0x38(%rsp)
  0.46%    0.41%  │ │  0x00007f6d2cde9c73: lea    0x10(%r10,%r8,4),%rbp
  0.31%    0.24%  │ │  0x00007f6d2cde9c78: mov    0x0(%rbp),%r11d    ;*aaload
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@24 (line 59)
                  │ │                                                ; - com.google.re2j.Machine::add@20 (line 351)
  0.97%    1.02%  │ │  0x00007f6d2cde9c7c: test   %r11d,%r11d
                  │╭│  0x00007f6d2cde9c7f: je     0x00007f6d2cde9d33  ;*ifnonnull
                  │││                                                ; - com.google.re2j.Machine$Queue::add@27 (line 60)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 351)
  0.07%    0.04%  │││  0x00007f6d2cde9c85: lea    (%r12,%r11,8),%rbx  ;*aload_3
                  │││                                                ; - com.google.re2j.Machine$Queue::add@45 (line 63)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 351)
  0.43%    0.56%  │││  0x00007f6d2cde9c89: mov    0x40(%rsp),%r11d
  0.40%    0.38%  │││  0x00007f6d2cde9c8e: mov    %r11d,0xc(%rbx)    ;*putfield pc
                  │││                                                ; - com.google.re2j.Machine$Queue::add@52 (line 64)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 351)
  1.87%    1.51%  │││  0x00007f6d2cde9c92: mov    0x8(%rsp),%r10
           0.01%  │││  0x00007f6d2cde9c97: mov    0x18(%r10),%r10d   ;*getfield prog
                  │││                                                ; - com.google.re2j.Machine::add@26 (line 352)
  0.54%    0.40%  │││  0x00007f6d2cde9c9b: mov    %r12d,0x10(%rbx)   ;*putfield thread
                  │││                                                ; - com.google.re2j.Machine$Queue::add@47 (line 63)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 351)
  0.48%    0.64%  │││  0x00007f6d2cde9c9f: mov    0x18(%r12,%r10,8),%ebp  ;*getfield inst
                  │││                                                ; - com.google.re2j.Prog::getInst@1 (line 30)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 352)
                  │││                                                ; implicit exception: dispatches to 0x00007f6d2cdea225
  1.28%    1.23%  │││  0x00007f6d2cde9ca4: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f6d2cdea239
  1.26%    1.33%  │││  0x00007f6d2cde9ca9: mov    0x40(%rsp),%r10d
  0.25%    0.43%  │││  0x00007f6d2cde9cae: cmp    %r11d,%r10d
                  │││  0x00007f6d2cde9cb1: jae    0x00007f6d2cdea089
  1.00%    1.10%  │││  0x00007f6d2cde9cb7: lea    (%r12,%rbp,8),%r10
  0.68%    0.75%  │││  0x00007f6d2cde9cbb: mov    0x40(%rsp),%r8d
  0.01%    0.01%  │││  0x00007f6d2cde9cc0: mov    0x10(%r10,%r8,4),%r11d  ;*aaload
                  │││                                                ; - com.google.re2j.Prog::getInst@5 (line 30)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 352)
  0.46%    0.33%  │││  0x00007f6d2cde9cc5: mov    %r11d,0x30(%rsp)
  0.62%    0.81%  │││  0x00007f6d2cde9cca: mov    0xc(%r12,%r11,8),%r11d  ;*getfield op
                  │││                                                ; - com.google.re2j.Machine::add@37 (line 353)
                  │││                                                ; implicit exception: dispatches to 0x00007f6d2cdea24d
  2.66%    2.59%  │││  0x00007f6d2cde9ccf: mov    %r11d,%r8d
  0.01%    0.01%  │││  0x00007f6d2cde9cd2: dec    %r8d
  1.01%    1.06%  │││  0x00007f6d2cde9cd5: cmp    $0xc,%r8d
                  │││  0x00007f6d2cde9cd9: jae    0x00007f6d2cdea0b1  ;*tableswitch
                  │││                                                ; - com.google.re2j.Machine::add@40 (line 353)
  1.17%    1.18%  │││  0x00007f6d2cde9cdf: mov    0x30(%rsp),%r8d
  0.37%    0.37%  │││  0x00007f6d2cde9ce4: mov    0x10(%r12,%r8,8),%ecx  ;*getfield out
                  │││                                                ; - com.google.re2j.Machine::add@197 (line 373)
  3.25%    3.27%  │││  0x00007f6d2cde9ce9: mov    0x14(%r12,%r8,8),%r10d  ;*getfield arg
                  │││                                                ; - com.google.re2j.Machine::add@160 (line 367)
  0.28%    0.26%  │││  0x00007f6d2cde9cee: movslq %r11d,%r11
  0.16%    0.14%  │││  0x00007f6d2cde9cf1: movabs $0x7f6d2cde9b60,%r8  ;   {section_word}
  0.16%    0.12%  │││  0x00007f6d2cde9cfb: jmpq   *-0x8(%r8,%r11,8)  ;*tableswitch
                  │││                                                ; - com.google.re2j.Machine::add@40 (line 353)
  0.14%    0.12%  ↘││  0x00007f6d2cde9d00: mov    0xc(%r12,%rcx,8),%r11d  ; implicit exception: dispatches to 0x00007f6d2cdea2b9
  0.05%    0.08%   ││  0x00007f6d2cde9d05: cmp    %r11d,%ebp
                   ││  0x00007f6d2cde9d08: jae    0x00007f6d2cdea1c1
  0.06%    0.11%   ││  0x00007f6d2cde9d0e: lea    (%r12,%rcx,8),%r11
           0.00%   ││  0x00007f6d2cde9d12: mov    0x10(%r11,%rbp,4),%ebp  ;*aaload
                   ││                                                ; - com.google.re2j.Machine$Queue::contains@22 (line 50)
                   ││                                                ; - com.google.re2j.Machine::add@9 (line 348)
  0.21%    0.24%   ││  0x00007f6d2cde9d17: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f6d2cdea2c9
  0.59%    0.77%   ││  0x00007f6d2cde9d1c: mov    0x40(%rsp),%ebx
  0.06%    0.05%   ││  0x00007f6d2cde9d20: cmp    %ebx,%r11d
                   │╰  0x00007f6d2cde9d23: jne    0x00007f6d2cde9c40
                   │   0x00007f6d2cde9d29: mov    0x70(%rsp),%rax
                   │   0x00007f6d2cde9d2e: jmpq   0x00007f6d2cde9f87
                   ↘   0x00007f6d2cde9d33: mov    0x60(%r15),%rbx
                       0x00007f6d2cde9d37: mov    %rbx,%r10
                       0x00007f6d2cde9d3a: add    $0x18,%r10
                       0x00007f6d2cde9d3e: cmp    0x70(%r15),%r10
                       0x00007f6d2cde9d42: jae    0x00007f6d2cdea165
                       0x00007f6d2cde9d48: mov    %r10,0x60(%r15)
                       0x00007f6d2cde9d4c: prefetchnta 0xc0(%r10)
....................................................................................................
 36.65%   36.92%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 506 (536 bytes) 

                                                                               ; - com.google.re2j.Machine::step@246 (line 298)
                                 0x00007f6d2cdf143f: mov    0x8(%rsp),%r8
                                 0x00007f6d2cdf1444: mov    %r12d,0xc(%r8)     ;*putfield size
                                                                               ; - com.google.re2j.Machine::step@283 (line 304)
                                 0x00007f6d2cdf1448: mov    0x28(%rsp),%r8
                                 0x00007f6d2cdf144d: movb   $0x1,0x10(%r8)     ;*putfield matched
                                                                               ; - com.google.re2j.Machine::step@288 (line 306)
                                 0x00007f6d2cdf1452: mov    0x20(%rsp),%r9d
                  ╭              0x00007f6d2cdf1457: jmp    0x00007f6d2cdf14a6  ;*aload
                  │                                                            ; - com.google.re2j.Machine::step@294 (line 311)
  0.42%    0.49%  │      ↗       0x00007f6d2cdf1459: cmp    $0xc,%r9d
                  │      │       0x00007f6d2cdf145d: jne    0x00007f6d2cdf188d  ;*if_icmpne
                  │      │                                                     ; - com.google.re2j.Inst::matchRune@29 (line 59)
                  │      │                                                     ; - com.google.re2j.Machine::step@298 (line 311)
  0.31%    0.40%  │      │       0x00007f6d2cdf1463: mov    0x18(%r12,%rbx,8),%r9d  ;*getfield f0
                  │      │                                                     ; - com.google.re2j.Inst::matchRune@33 (line 60)
                  │      │                                                     ; - com.google.re2j.Machine::step@298 (line 311)
  0.01%    0.01%  │      │       0x00007f6d2cdf1468: cmp    0x20(%rsp),%r9d
                  │╭     │       0x00007f6d2cdf146d: je     0x00007f6d2cdf15c2  ;*if_icmpeq
                  ││     │                                                     ; - com.google.re2j.Inst::matchRune@37 (line 60)
                  ││     │                                                     ; - com.google.re2j.Machine::step@298 (line 311)
  0.54%    0.62%  ││     │       0x00007f6d2cdf1473: mov    0x1c(%r12,%rbx,8),%r9d  ;*getfield f1
                  ││     │                                                     ; - com.google.re2j.Inst::matchRune@41 (line 60)
                  ││     │                                                     ; - com.google.re2j.Machine::step@298 (line 311)
  0.09%    0.12%  ││     │       0x00007f6d2cdf1478: cmp    0x20(%rsp),%r9d
                  ││╭    │       0x00007f6d2cdf147d: je     0x00007f6d2cdf15c2  ;*if_icmpeq
                  │││    │                                                     ; - com.google.re2j.Inst::matchRune@45 (line 60)
                  │││    │                                                     ; - com.google.re2j.Machine::step@298 (line 311)
  0.56%    0.65%  │││    │       0x00007f6d2cdf1483: mov    0x20(%r12,%rbx,8),%ebp  ;*getfield f2
                  │││    │                                                     ; - com.google.re2j.Inst::matchRune@49 (line 60)
                  │││    │                                                     ; - com.google.re2j.Machine::step@298 (line 311)
  0.02%    0.03%  │││    │       0x00007f6d2cdf1488: cmp    0x20(%rsp),%ebp
                  │││    │       0x00007f6d2cdf148c: je     0x00007f6d2cdf18d5  ;*if_icmpeq
                  │││    │                                                     ; - com.google.re2j.Inst::matchRune@53 (line 60)
                  │││    │                                                     ; - com.google.re2j.Machine::step@298 (line 311)
  0.45%    0.65%  │││    │       0x00007f6d2cdf1492: mov    0x24(%r12,%rbx,8),%ebp  ;*getfield f3
                  │││    │                                                     ; - com.google.re2j.Inst::matchRune@57 (line 60)
                  │││    │                                                     ; - com.google.re2j.Machine::step@298 (line 311)
  0.03%    0.04%  │││    │       0x00007f6d2cdf1497: cmp    0x20(%rsp),%ebp
                  │││    │       0x00007f6d2cdf149b: je     0x00007f6d2cdf1909  ;*if_icmpne
                  │││    │                                                     ; - com.google.re2j.Inst::matchRune@61 (line 60)
                  │││    │                                                     ; - com.google.re2j.Machine::step@298 (line 311)
  0.45%    0.69%  │││    │       0x00007f6d2cdf14a1: mov    0x20(%rsp),%r9d    ;*goto
                  │││    │                                                     ; - com.google.re2j.Machine::step@291 (line 307)
  0.00%    0.01%  ↘││    │ ↗  ↗  0x00007f6d2cdf14a6: mov    %r11,%rcx          ;*aload
                   ││    │ │  │                                                ; - com.google.re2j.Machine::step@389 (line 332)
  0.09%    0.07%   ││    │ │↗ │  0x00007f6d2cdf14a9: mov    0x28(%rsp),%r11
  0.06%    0.04%   ││    │ ││ │  0x00007f6d2cdf14ae: mov    0x24(%r11),%ebx    ;*getfield pool
                   ││    │ ││ │                                                ; - com.google.re2j.Machine::free@5 (line 160)
                   ││    │ ││ │                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.73%    0.87%   ││    │ ││ │  0x00007f6d2cdf14b2: mov    0xc(%r12,%rbx,8),%r11d  ;*arraylength
                   ││    │ ││ │                                                ; - com.google.re2j.Machine::free@8 (line 160)
                   ││    │ ││ │                                                ; - com.google.re2j.Machine::step@397 (line 333)
                   ││    │ ││ │                                                ; implicit exception: dispatches to 0x00007f6d2cdf19c9
  0.05%    0.05%   ││    │ ││ │  0x00007f6d2cdf14b7: mov    0x28(%rsp),%r8
  0.09%    0.11%   ││    │ ││ │  0x00007f6d2cdf14bc: mov    0xc(%r8),%ebp      ;*getfield poolSize
                   ││    │ ││ │                                                ; - com.google.re2j.Machine::free@1 (line 160)
                   ││    │ ││ │                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.01%    0.05%   ││    │ ││ │  0x00007f6d2cdf14c0: cmp    %r11d,%ebp
                   ││    │ ││ │  0x00007f6d2cdf14c3: jge    0x00007f6d2cdf1845  ;*if_icmplt
                   ││    │ ││ │                                                ; - com.google.re2j.Machine::free@9 (line 160)
                   ││    │ ││ │                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.65%    0.82%   ││    │ ││ │  0x00007f6d2cdf14c9: mov    %ebp,%r8d
  0.02%    0.01%   ││    │ ││ │  0x00007f6d2cdf14cc: inc    %r8d
  0.12%    0.06%   ││    │ ││ │  0x00007f6d2cdf14cf: mov    0x28(%rsp),%rdi
  0.03%    0.03%   ││    │ ││ │  0x00007f6d2cdf14d4: mov    %r8d,0xc(%rdi)     ;*putfield poolSize
                   ││    │ ││ │                                                ; - com.google.re2j.Machine::free@45 (line 163)
                   ││    │ ││ │                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.72%    0.84%   ││    │ ││ │  0x00007f6d2cdf14d8: cmp    %r11d,%ebp
                   ││    │ ││ │  0x00007f6d2cdf14db: jae    0x00007f6d2cdf1749  ;*aastore
                   ││    │ ││ │                                                ; - com.google.re2j.Machine::free@49 (line 163)
                   ││    │ ││ │                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.00%    0.00%   ││    │ ││ │  0x00007f6d2cdf14e1: mov    %rcx,%r11
  0.11%    0.05%   ││    │ ││ │  0x00007f6d2cdf14e4: shr    $0x3,%r11
  0.04%    0.01%   ││    │ ││ │  0x00007f6d2cdf14e8: lea    (%r12,%rbx,8),%r10  ;*getfield pool
                   ││    │ ││ │                                                ; - com.google.re2j.Machine::free@5 (line 160)
                   ││    │ ││ │                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.71%    0.92%   ││    │ ││ │  0x00007f6d2cdf14ec: lea    0x10(%r10,%rbp,4),%r10
           0.01%   ││    │ ││ │  0x00007f6d2cdf14f1: mov    %r11d,(%r10)
  0.11%    0.17%   ││    │ ││ │  0x00007f6d2cdf14f4: shr    $0x9,%r10
  0.04%    0.04%   ││    │ ││ │  0x00007f6d2cdf14f8: movabs $0x7f6d28601000,%r11
  0.69%    0.79%   ││    │ ││ │  0x00007f6d2cdf1502: mov    %r12b,(%r11,%r10,1)  ;*aastore
                   ││    │ ││ │                                                ; - com.google.re2j.Machine::free@49 (line 163)
                   ││    │ ││ │                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.10%    0.13%   ││    │ ││ │  0x00007f6d2cdf1506: xor    %r10d,%r10d        ; OopMap{[8]=Oop [24]=Oop [40]=Oop off=521}
                   ││    │ ││ │                                                ;*goto
                   ││    │ ││ │                                                ; - com.google.re2j.Machine::step@403 (line 270)
  0.24%    0.23%   ││  ↗ │ ││ │  0x00007f6d2cdf1509: test   %eax,0x15f23af1(%rip)        # 0x00007f6d42d15000
                   ││  │ │ ││ │                                                ;*goto
                   ││  │ │ ││ │                                                ; - com.google.re2j.Machine::step@403 (line 270)
                   ││  │ │ ││ │                                                ;   {poll}
  0.38%    0.34%   ││  │ │ ││ │  0x00007f6d2cdf150f: mov    0x8(%rsp),%r10
  0.78%    0.81%   ││  │ │ ││ │  0x00007f6d2cdf1514: mov    0xc(%r10),%r10d
  0.30%    0.23%   ││  │ │ ││ │  0x00007f6d2cdf1518: cmp    %r10d,%eax
                   ││╭ │ │ ││ │  0x00007f6d2cdf151b: jge    0x00007f6d2cdf1638
  0.24%    0.27%   │││ │ │ ││ │  0x00007f6d2cdf1521: mov    %r9d,0x20(%rsp)
  0.30%    0.35%   │││ │ │ ││ │  0x00007f6d2cdf1526: mov    %eax,%r10d         ;*aload_1
                   │││ │ │ ││ │                                                ; - com.google.re2j.Machine::step@21 (line 271)
  0.60%    0.66%   │││ │ │ ││ │  0x00007f6d2cdf1529: mov    0x8(%rsp),%r11
  0.27%    0.25%   │││ │ │ ││ │  0x00007f6d2cdf152e: mov    0x10(%r11),%r8d    ;*getfield dense
                   │││ │ │ ││ │                                                ; - com.google.re2j.Machine::step@22 (line 271)
  0.58%    0.40%   │││ │ │ ││ │  0x00007f6d2cdf1532: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x00007f6d2cdf19a5
  0.85%    0.73%   │││ │ │ ││ │  0x00007f6d2cdf1537: cmp    %r11d,%r10d
                   │││ │ │ ││ │  0x00007f6d2cdf153a: jae    0x00007f6d2cdf170c
  0.69%    0.62%   │││ │ │ ││ │  0x00007f6d2cdf1540: lea    (%r12,%r8,8),%r11
  0.30%    0.23%   │││ │ │ ││ │  0x00007f6d2cdf1544: mov    0x10(%r11,%r10,4),%r9d  ;*aaload
                   │││ │ │ ││ │                                                ; - com.google.re2j.Machine::step@27 (line 271)
  0.38%    0.42%   │││ │ │ ││ │  0x00007f6d2cdf1549: mov    0x10(%r12,%r9,8),%r8d  ;*getfield thread
                   │││ │ │ ││ │                                                ; - com.google.re2j.Machine::step@40 (line 275)
                   │││ │ │ ││ │                                                ; implicit exception: dispatches to 0x00007f6d2cdf19d9
  1.30%    1.45%   │││ │ │ ││ │  0x00007f6d2cdf154e: mov    %r10d,%eax
  0.62%    0.34%   │││ │ │ ││ │  0x00007f6d2cdf1551: inc    %eax               ;*iadd
                   │││ │ │ ││ │                                                ; - com.google.re2j.Machine::step@237 (line 298)
  0.32%    0.27%   │││ │ │ ││ │  0x00007f6d2cdf1553: test   %r8d,%r8d
                   │││╭│ │ ││ │  0x00007f6d2cdf1556: jne    0x00007f6d2cdf1564  ;*ifnonnull
                   │││││ │ ││ │                                                ; - com.google.re2j.Machine::step@47 (line 276)
  0.22%    0.32%   │││││ │ ││ │  0x00007f6d2cdf1558: mov    0x24(%rsp),%r10d
  0.18%    0.14%   │││││ │ ││ │  0x00007f6d2cdf155d: mov    0x20(%rsp),%r9d
  0.07%    0.10%   ││││╰ │ ││ │  0x00007f6d2cdf1562: jmp    0x00007f6d2cdf1509
  0.24%    0.19%   │││↘  │ ││ │  0x00007f6d2cdf1564: mov    0x24(%rsp),%r9d
  0.28%    0.17%   │││   │ ││ │  0x00007f6d2cdf1569: test   %r9d,%r9d
                   │││   │ ││ │  0x00007f6d2cdf156c: jne    0x00007f6d2cdf17fd  ;*ifeq
                   │││   │ ││ │                                                ; - com.google.re2j.Machine::step@55 (line 279)
  0.46%    0.33%   │││   │ ││ │  0x00007f6d2cdf1572: mov    0x10(%r12,%r8,8),%ebx  ;*getfield inst
                   │││   │ ││ │                                                ; - com.google.re2j.Machine::step@101 (line 283)
  0.60%    0.56%   │││   │ ││ │  0x00007f6d2cdf1577: mov    0xc(%r12,%rbx,8),%r9d  ;*getfield op
                   │││   │ ││ │                                                ; - com.google.re2j.Machine::step@111 (line 285)
                   │││   │ ││ │                                                ; implicit exception: dispatches to 0x00007f6d2cdf19b9
  2.65%    2.63%   │││   │ ││ │  0x00007f6d2cdf157c: mov    0xc(%r12,%r8,8),%r14d  ;*getfield cap
                   │││   │ ││ │                                                ; - com.google.re2j.Machine::step@172 (line 292)
  0.07%    0.07%   │││   │ ││ │  0x00007f6d2cdf1581: lea    (%r12,%r8,8),%r11  ;*getfield thread
                   │││   │ ││ │                                                ; - com.google.re2j.Machine::step@40 (line 275)
  0.10%    0.12%   │││   │ ││ │  0x00007f6d2cdf1585: cmp    $0x9,%r9d
                   │││  ╭│ ││ │  0x00007f6d2cdf1589: je     0x00007f6d2cdf1611
  0.71%    0.68%   │││  ││ ││ │  0x00007f6d2cdf158f: cmp    $0x9,%r9d
                   │││  ││ ││ │  0x00007f6d2cdf1593: jle    0x00007f6d2cdf136d
  0.27%    0.35%   │││  ││ ││ │  0x00007f6d2cdf1599: cmp    $0xc,%r9d
                   │││  │╰ ││ │  0x00007f6d2cdf159d: je     0x00007f6d2cdf1459
  0.11%    0.08%   │││  │  ││ │  0x00007f6d2cdf15a3: cmp    $0xc,%r9d
                   │││  │  ││ │  0x00007f6d2cdf15a7: jg     0x00007f6d2cdf187d
  0.03%    0.01%   │││  │  ││ │  0x00007f6d2cdf15ad: cmp    $0xb,%r9d
                   │││  │ ╭││ │  0x00007f6d2cdf15b1: jne    0x00007f6d2cdf15c2  ;*tableswitch
                   │││  │ │││ │                                                ; - com.google.re2j.Machine::step@114 (line 285)
                   │││  │ │││ │  0x00007f6d2cdf15b3: mov    0x20(%rsp),%r9d
                   │││  │ │││ │  0x00007f6d2cdf15b8: cmp    $0xa,%r9d
                   │││  │ │╰│ │  0x00007f6d2cdf15bc: je     0x00007f6d2cdf14a6  ;*ifeq
                   │││  │ │ │ │                                                ; - com.google.re2j.Machine::step@363 (line 329)
  0.30%    0.25%   ↘↘│  │ ↘ │↗│  0x00007f6d2cdf15c2: mov    %eax,0x74(%rsp)
  0.20%    0.12%     │  │   │││  0x00007f6d2cdf15c6: mov    %r10d,%ebp
  0.01%    0.02%     │  │   │││  0x00007f6d2cdf15c9: mov    0x10(%r12,%rbx,8),%ecx  ;*getfield out
                     │  │   │││                                                ; - com.google.re2j.Machine::step@370 (line 330)
  0.01%              │  │   │││  0x00007f6d2cdf15ce: mov    %r14,%r9
  0.06%    0.03%     │  │   │││  0x00007f6d2cdf15d1: shl    $0x3,%r9           ;*getfield cap
                     │  │   │││                                                ; - com.google.re2j.Machine::step@172 (line 292)
  0.01%              │  │   │││  0x00007f6d2cdf15d5: mov    0x28(%rsp),%rsi
  0.01%    0.01%     │  │   │││  0x00007f6d2cdf15da: mov    0x18(%rsp),%rdx
           0.00%     │  │   │││  0x00007f6d2cdf15df: mov    0x14(%rsp),%r8d
  0.07%    0.09%     │  │   │││  0x00007f6d2cdf15e4: mov    0x70(%rsp),%edi
  0.02%              │  │   │││  0x00007f6d2cdf15e8: mov    %r11,(%rsp)
  0.04%    0.00%     │  │   │││  0x00007f6d2cdf15ec: data16 xchg %ax,%ax
  0.00%              │  │   │││  0x00007f6d2cdf15ef: callq  0x00007f6d2cc19020  ; OopMap{[8]=Oop [24]=Oop [40]=Oop off=756}
                     │  │   │││                                                ;*invokespecial add
                     │  │   │││                                                ; - com.google.re2j.Machine::step@384 (line 330)
                     │  │   │││                                                ;   {optimized virtual_call}
  0.04%    0.04%     │  │   │││  0x00007f6d2cdf15f4: mov    %rax,%rcx
                     │  │   │││  0x00007f6d2cdf15f7: test   %rax,%rax
                     │  │   │││  0x00007f6d2cdf15fa: je     0x00007f6d2cdf16e2  ;*ifnull
                     │  │   │││                                                ; - com.google.re2j.Machine::step@391 (line 332)
           0.00%     │  │   │││  0x00007f6d2cdf1600: mov    0x20(%rsp),%r9d
                     │  │   │││  0x00007f6d2cdf1605: mov    %ebp,%r10d
                     │  │   │││  0x00007f6d2cdf1608: mov    0x74(%rsp),%eax
                     │  │   ╰││  0x00007f6d2cdf160c: jmpq   0x00007f6d2cdf14a9
  0.12%    0.15%     │  ↘    ││  0x00007f6d2cdf1611: mov    0x28(%r12,%rbx,8),%ebp  ;*getfield runes
                     │       ││                                                ; - com.google.re2j.Machine::step@310 (line 315)
  0.00%    0.01%     │       ││  0x00007f6d2cdf1616: mov    0xc(%r12,%rbp,8),%r9d  ; implicit exception: dispatches to 0x00007f6d2cdf1a55
  0.77%    0.74%     │       ││  0x00007f6d2cdf161b: test   %r9d,%r9d
                     │       ││  0x00007f6d2cdf161e: jbe    0x00007f6d2cdf17c9  ;*iaload
                     │       ││                                                ; - com.google.re2j.Machine::step@314 (line 315)
  0.18%    0.27%     │       ││  0x00007f6d2cdf1624: mov    0x10(%r12,%rbp,8),%r8d
  0.01%    0.00%     │       ││  0x00007f6d2cdf1629: mov    0x20(%rsp),%r9d
                     │       ││  0x00007f6d2cdf162e: cmp    %r8d,%r9d
                     │       ╰│  0x00007f6d2cdf1631: je     0x00007f6d2cdf15c2  ;*if_icmpne
                     │        │                                                ; - com.google.re2j.Machine::step@315 (line 315)
  0.16%    0.25%     │        ╰  0x00007f6d2cdf1633: jmpq   0x00007f6d2cdf14a6  ;*if_icmpge
                     │                                                         ; - com.google.re2j.Machine::step@18 (line 270)
  0.03%    0.02%     ↘           0x00007f6d2cdf1638: mov    0x8(%rsp),%r10
  0.00%                          0x00007f6d2cdf163d: mov    %r12d,0xc(%r10)    ;*getfield size
                                                                               ; - com.google.re2j.Machine::step@15 (line 270)
  0.13%    0.16%                 0x00007f6d2cdf1641: add    $0x60,%rsp
  0.02%    0.00%                 0x00007f6d2cdf1645: pop    %rbp
  0.03%    0.03%                 0x00007f6d2cdf1646: test   %eax,0x15f239b4(%rip)        # 0x00007f6d42d15000
                                                                               ;   {poll_return}
  0.00%                          0x00007f6d2cdf164c: retq   
                                 0x00007f6d2cdf164d: data16 xchg %ax,%ax
           0.00%                 0x00007f6d2cdf1650: mov    %ecx,0x34(%rsp)
                                 0x00007f6d2cdf1654: mov    %r9,0x40(%rsp)
                                 0x00007f6d2cdf1659: mov    %r11,0x38(%rsp)
  0.00%                          0x00007f6d2cdf165e: mov    %ebx,0x30(%rsp)
                                 0x00007f6d2cdf1662: mov    %eax,0x7c(%rsp)
  0.00%                          0x00007f6d2cdf1666: mov    %r8d,0x74(%rsp)
                                 0x00007f6d2cdf166b: mov    %r10d,%ebp
  0.00%                          0x00007f6d2cdf166e: mov    %rdi,%rdx
           0.00%                 0x00007f6d2cdf1671: shl    $0x3,%rdx          ;*getfield thread
                                                                               ; - com.google.re2j.Machine::step@260 (line 300)
                                 0x00007f6d2cdf1675: mov    0x28(%rsp),%rsi
                                 0x00007f6d2cdf167a: nop
                                 0x00007f6d2cdf167b: callq  0x00007f6d2cc19020  ; OopMap{[116]=NarrowOop [8]=Oop [24]=Oop [40]=Oop [48]=NarrowOop [56]=Oop [64]=Oop off=896}
                                                                               ;*invokespecial free
                                                                               ; - com.google.re2j.Machine::step@272 (line 301)
                                                                               ;   {optimized virtual_call}
                                 0x00007f6d2cdf1680: mov    %ebp,%r10d
                                 0x00007f6d2cdf1683: mov    0x74(%rsp),%r8d
                                 0x00007f6d2cdf1688: mov    0x7c(%rsp),%eax
....................................................................................................
 23.70%   24.41%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 501 (351 bytes) 

                          0x00007f6d2cde9e1a: mov    %r10,(%rsp)
                          0x00007f6d2cde9e1e: nop
                          0x00007f6d2cde9e1f: callq  0x00007f6d2cc19020  ; OopMap{off=612}
                                                                        ;*invokespecial add
                                                                        ; - com.google.re2j.Machine::add@207 (line 373)
                                                                        ;   {optimized virtual_call}
                  ╭       0x00007f6d2cde9e24: jmpq   0x00007f6d2cde9f87
                  │       0x00007f6d2cde9e29: mov    0x70(%rsp),%rax
                  │╭      0x00007f6d2cde9e2e: jmpq   0x00007f6d2cde9f87  ;*tableswitch
                  ││                                                    ; - com.google.re2j.Machine::add@40 (line 353)
  1.28%    1.07%  ││      0x00007f6d2cde9e33: mov    0x30(%rsp),%r11d
  0.02%    0.05%  ││      0x00007f6d2cde9e38: lea    (%r12,%r11,8),%rbp  ;*aaload
                  ││                                                    ; - com.google.re2j.Prog::getInst@5 (line 30)
                  ││                                                    ; - com.google.re2j.Machine::add@30 (line 352)
  0.03%    0.01%  ││      0x00007f6d2cde9e3c: mov    0x8(%rsp),%rsi
  0.02%    0.03%  ││      0x00007f6d2cde9e41: mov    0x48(%rsp),%rdx
  0.57%    0.55%  ││      0x00007f6d2cde9e46: mov    0x1c(%rsp),%r8d
  0.03%    0.04%  ││      0x00007f6d2cde9e4b: mov    0x20(%rsp),%r9
  0.05%    0.04%  ││      0x00007f6d2cde9e50: mov    0x28(%rsp),%edi
  0.01%    0.01%  ││      0x00007f6d2cde9e54: mov    0x70(%rsp),%r10
  0.53%    0.48%  ││      0x00007f6d2cde9e59: mov    %r10,(%rsp)
  0.04%    0.02%  ││      0x00007f6d2cde9e5d: xchg   %ax,%ax
  0.06%    0.02%  ││      0x00007f6d2cde9e5f: callq  0x00007f6d2cc19020  ; OopMap{rbp=Oop [8]=Oop [32]=Oop [48]=NarrowOop [72]=Oop off=676}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@131 (line 362)
                  ││                                                    ;   {optimized virtual_call}
  0.07%    0.10%  ││      0x00007f6d2cde9e64: mov    0x30(%rsp),%r10d
  0.17%    0.35%  ││      0x00007f6d2cde9e69: mov    0x14(%r12,%r10,8),%ecx  ;*getfield arg
                  ││                                                    ; - com.google.re2j.Machine::add@140 (line 363)
  0.33%    0.54%  ││      0x00007f6d2cde9e6e: mov    0x8(%rsp),%rsi
  0.12%    0.10%  ││      0x00007f6d2cde9e73: mov    0x48(%rsp),%rdx
  0.18%    0.19%  ││      0x00007f6d2cde9e78: mov    0x1c(%rsp),%r8d
                  ││      0x00007f6d2cde9e7d: mov    0x20(%rsp),%r9
  0.28%    0.35%  ││      0x00007f6d2cde9e82: mov    0x28(%rsp),%edi
  0.07%    0.12%  ││      0x00007f6d2cde9e86: mov    %rax,(%rsp)
  0.18%    0.33%  ││      0x00007f6d2cde9e8a: nop
           0.00%  ││      0x00007f6d2cde9e8b: callq  0x00007f6d2cc19020  ; OopMap{off=720}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@150 (line 363)
                  ││                                                    ;   {optimized virtual_call}
  0.04%    0.04%  ││╭     0x00007f6d2cde9e90: jmpq   0x00007f6d2cde9f87  ;*aload
                  │││                                                   ; - com.google.re2j.Machine::add@297 (line 393)
  3.13%    3.46%  │││     0x00007f6d2cde9e95: mov    0x70(%rsp),%rbp
  0.01%    0.02%  │││     0x00007f6d2cde9e9a: test   %rbp,%rbp
                  │││╭    0x00007f6d2cde9e9d: je     0x00007f6d2cde9ebf  ;*ifnonnull
                  ││││                                                  ; - com.google.re2j.Machine::add@299 (line 393)
                  ││││    0x00007f6d2cde9e9f: mov    0x30(%rsp),%r10d
  0.00%    0.01%  ││││    0x00007f6d2cde9ea4: mov    %r10d,0x10(%rbp)
  0.10%    0.10%  ││││    0x00007f6d2cde9ea8: mov    %rbp,%r10
                  ││││    0x00007f6d2cde9eab: shr    $0x9,%r10
                  ││││    0x00007f6d2cde9eaf: movabs $0x7f6d28601000,%r11
  0.01%    0.00%  ││││    0x00007f6d2cde9eb9: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                  ││││                                                  ; - com.google.re2j.Machine::add@317 (line 396)
  0.14%    0.10%  ││││╭   0x00007f6d2cde9ebd: jmp    0x00007f6d2cde9f18
  0.79%    0.77%  │││↘│   0x00007f6d2cde9ebf: mov    0x8(%rsp),%r10
                  │││ │   0x00007f6d2cde9ec4: mov    0xc(%r10),%r8d     ;*getfield poolSize
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@1 (line 148)
                  │││ │                                                 ; - com.google.re2j.Machine::add@305 (line 394)
                  │││ │   0x00007f6d2cde9ec8: test   %r8d,%r8d
                  │││ │   0x00007f6d2cde9ecb: jle    0x00007f6d2cdea141  ;*ifle
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@4 (line 148)
                  │││ │                                                 ; - com.google.re2j.Machine::add@305 (line 394)
  0.02%           │││ │   0x00007f6d2cde9ed1: mov    0x24(%r10),%r9d    ;*getfield pool
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@18 (line 150)
                  │││ │                                                 ; - com.google.re2j.Machine::add@305 (line 394)
  0.82%    0.69%  │││ │   0x00007f6d2cde9ed5: mov    %r8d,%ebp
                  │││ │   0x00007f6d2cde9ed8: dec    %ebp               ;*isub
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@13 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@305 (line 394)
                  │││ │   0x00007f6d2cde9eda: mov    %ebp,0xc(%r10)     ;*putfield poolSize
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@14 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@305 (line 394)
  0.00%    0.01%  │││ │   0x00007f6d2cde9ede: mov    0xc(%r12,%r9,8),%r11d  ; implicit exception: dispatches to 0x00007f6d2cdea26d
  0.79%    0.68%  │││ │   0x00007f6d2cde9ee3: cmp    %r11d,%ebp
                  │││ │   0x00007f6d2cde9ee6: jae    0x00007f6d2cdea0e9
  0.00%           │││ │   0x00007f6d2cde9eec: lea    (%r12,%r9,8),%r10
                  │││ │   0x00007f6d2cde9ef0: mov    0xc(%r10,%r8,4),%r10d  ;*aaload
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@25 (line 150)
                  │││ │                                                 ; - com.google.re2j.Machine::add@305 (line 394)
           0.01%  │││ │   0x00007f6d2cde9ef5: mov    0x30(%rsp),%r8d
  0.71%    0.70%  │││ │   0x00007f6d2cde9efa: mov    %r8d,0x10(%r12,%r10,8)  ;*putfield inst
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@45 (line 154)
                  │││ │                                                 ; - com.google.re2j.Machine::add@305 (line 394)
                  │││ │                                                 ; implicit exception: dispatches to 0x00007f6d2cdea27d
  0.03%    0.03%  │││ │   0x00007f6d2cde9eff: lea    (%r12,%r10,8),%rbp  ;*aaload
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@25 (line 150)
                  │││ │                                                 ; - com.google.re2j.Machine::add@305 (line 394)
                  │││ │   0x00007f6d2cde9f03: mov    %rbp,%r10
  0.01%    0.03%  │││ │   0x00007f6d2cde9f06: shr    $0x9,%r10
  0.75%    0.75%  │││ │   0x00007f6d2cde9f0a: movabs $0x7f6d28601000,%r11
  0.01%    0.00%  │││ │   0x00007f6d2cde9f14: mov    %r12b,(%r11,%r10,1)  ;*aload
                  │││ │                                                 ; - com.google.re2j.Machine::add@320 (line 398)
  0.04%    0.01%  │││ ↘   0x00007f6d2cde9f18: mov    0x20(%rsp),%rdi
  0.01%    0.00%  │││     0x00007f6d2cde9f1d: mov    0xc(%rdi),%r10d    ;*arraylength
                  │││                                                   ; - com.google.re2j.Machine::add@322 (line 398)
                  │││                                                   ; implicit exception: dispatches to 0x00007f6d2cdea25d
  0.79%    0.85%  │││     0x00007f6d2cde9f21: test   %r10d,%r10d
                  │││     0x00007f6d2cde9f24: jle    0x00007f6d2cdea126  ;*ifle
                  │││                                                   ; - com.google.re2j.Machine::add@323 (line 398)
  0.14%    0.12%  │││     0x00007f6d2cde9f2a: mov    0xc(%rbp),%r8d     ;*getfield cap
                  │││                                                   ; - com.google.re2j.Machine::add@328 (line 398)
  0.01%    0.00%  │││     0x00007f6d2cde9f2e: mov    %r8,%r11
  0.00%    0.00%  │││     0x00007f6d2cde9f31: shl    $0x3,%r11
  0.75%    0.70%  │││     0x00007f6d2cde9f35: cmp    %rdi,%r11
                  │││  ╭  0x00007f6d2cde9f38: je     0x00007f6d2cde9f65  ;*if_acmpeq
                  │││  │                                                ; - com.google.re2j.Machine::add@333 (line 398)
                  │││  │  0x00007f6d2cde9f3a: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x00007f6d2cdea291
  0.04%    0.04%  │││  │  0x00007f6d2cde9f3f: lea    (%r12,%r8,8),%rcx  ;*getfield cap
                  │││  │                                                ; - com.google.re2j.Machine::add@328 (line 398)
           0.01%  │││  │  0x00007f6d2cde9f43: cmp    %r10d,%r11d
                  │││  │  0x00007f6d2cde9f46: jb     0x00007f6d2cdea105
  0.78%    0.66%  │││  │  0x00007f6d2cde9f4c: lea    0x10(%r12,%r8,8),%rsi
                  │││  │  0x00007f6d2cde9f51: add    $0x10,%rdi
  0.00%           │││  │  0x00007f6d2cde9f55: movslq %r10d,%rdx
  0.02%    0.00%  │││  │  0x00007f6d2cde9f58: movabs $0x7f6d2cc25640,%r10
  0.71%    0.62%  │││  │  0x00007f6d2cde9f62: callq  *%r10              ;*aload
                  │││  │                                                ; - com.google.re2j.Machine::add@351 (line 401)
  0.13%    0.13%  │││  ↘  0x00007f6d2cde9f65: mov    %rbx,%r10
  0.04%    0.02%  │││     0x00007f6d2cde9f68: mov    %rbp,%r8
  0.70%    0.62%  │││     0x00007f6d2cde9f6b: shr    $0x3,%r8
  0.02%    0.03%  │││     0x00007f6d2cde9f6f: mov    %r8d,0x10(%rbx)
  0.15%    0.13%  │││     0x00007f6d2cde9f73: shr    $0x9,%r10
  0.03%    0.05%  │││     0x00007f6d2cde9f77: movabs $0x7f6d28601000,%r11
  0.79%    0.21%  │││     0x00007f6d2cde9f81: mov    %r12b,(%r11,%r10,1)  ;*putfield thread
                  │││                                                   ; - com.google.re2j.Machine::add@355 (line 401)
  0.02%    0.02%  │││     0x00007f6d2cde9f85: xor    %eax,%eax          ;*synchronization entry
                  │││                                                   ; - com.google.re2j.Machine::add@-1 (line 345)
  0.77%    1.22%  ↘↘↘     0x00007f6d2cde9f87: add    $0x60,%rsp
  0.83%    0.50%          0x00007f6d2cde9f8b: pop    %rbp
  0.02%    0.05%          0x00007f6d2cde9f8c: test   %eax,0x15f2b06e(%rip)        # 0x00007f6d42d15000
                                                                        ;   {poll_return}
  0.75%    1.05%          0x00007f6d2cde9f92: retq                      ;*tableswitch
                                                                        ; - com.google.re2j.Machine::add@40 (line 353)
                          0x00007f6d2cde9f93: mov    0x8(%rsp),%rsi
                          0x00007f6d2cde9f98: mov    0x48(%rsp),%rdx
                          0x00007f6d2cde9f9d: mov    0x1c(%rsp),%r8d
                          0x00007f6d2cde9fa2: mov    0x20(%rsp),%r9
                          0x00007f6d2cde9fa7: mov    0x70(%rsp),%r10
                          0x00007f6d2cde9fac: mov    %r10,(%rsp)
                          0x00007f6d2cde9fb0: data16 xchg %ax,%ax
                          0x00007f6d2cde9fb3: callq  0x00007f6d2cc19020  ; OopMap{off=1016}
....................................................................................................
 18.98%   18.89%  <total for region 3>

....[Hottest Regions]...............................................................................
 36.65%   36.92%         C2, level 4  com.google.re2j.Machine::add, version 501 (320 bytes) 
 23.70%   24.41%         C2, level 4  com.google.re2j.Machine::step, version 506 (536 bytes) 
 18.98%   18.89%         C2, level 4  com.google.re2j.Machine::add, version 501 (351 bytes) 
  8.57%   10.35%         C2, level 4  com.google.re2j.Machine::match, version 550 (820 bytes) 
  4.82%    2.62%        runtime stub  StubRoutines::jint_disjoint_arraycopy (128 bytes) 
  1.11%    1.09%         C2, level 4  com.google.re2j.Machine::step, version 506 (77 bytes) 
  0.53%    0.48%         C2, level 4  com.google.re2j.Machine::add, version 501 (45 bytes) 
  0.51%    0.50%   [kernel.kallsyms]  [unknown] (6 bytes) 
  0.29%    0.26%         C2, level 4  com.google.re2j.Machine::step, version 506 (12 bytes) 
  0.21%    0.02%   [kernel.kallsyms]  [unknown] (45 bytes) 
  0.21%    0.32%         C2, level 4  com.google.re2j.Machine::match, version 550 (98 bytes) 
  0.17%    0.04%   [kernel.kallsyms]  [unknown] (93 bytes) 
  0.16%    0.03%         C2, level 4  com.google.re2j.Machine::init, version 551 (97 bytes) 
  0.14%    0.04%   [kernel.kallsyms]  [unknown] (22 bytes) 
  0.13%    0.03%         C2, level 4  com.google.re2j.Machine::init, version 551 (0 bytes) 
  0.12%    0.04%   [kernel.kallsyms]  [unknown] (27 bytes) 
  0.08%    0.01%   [kernel.kallsyms]  [unknown] (4 bytes) 
  0.08%    0.04%         C2, level 4  com.google.re2j.Matcher::find, version 573 (5 bytes) 
  0.07%    0.03%   [kernel.kallsyms]  [unknown] (28 bytes) 
  0.07%    0.25%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ (102 bytes) 
  3.38%    3.63%  <...other 635 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 56.16%   56.29%         C2, level 4  com.google.re2j.Machine::add, version 501 
 25.11%   25.76%         C2, level 4  com.google.re2j.Machine::step, version 506 
  8.86%   10.79%         C2, level 4  com.google.re2j.Machine::match, version 550 
  4.82%    2.62%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
  2.61%    2.03%   [kernel.kallsyms]  [unknown] 
  0.41%    0.12%         C2, level 4  com.google.re2j.Machine::init, version 551 
  0.24%    0.12%         C2, level 4  com.google.re2j.Matcher::find, version 573 
  0.13%    0.08%      hsdis-amd64.so  [unknown] 
  0.11%    0.18%        libc-2.26.so  vfprintf 
  0.08%    0.26%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.08%    0.11%        libc-2.26.so  _IO_fwrite 
  0.06%    0.01%  libpthread-2.26.so  __libc_write 
  0.05%    0.00%  libpthread-2.26.so  __pthread_disable_asynccancel 
  0.05%    0.03%         C2, level 4  com.github.arnaudroger.re2j.Re2jFindRegex::testCombine, version 594 
  0.05%    0.02%         C2, level 4  java.util.Collections::shuffle, version 595 
  0.04%    0.07%           libjvm.so  _ZN12outputStream15update_positionEPKcm 
  0.04%    0.10%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.04%    0.01%         C1, level 3  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testCombine_jmhTest::testCombine_thrpt_jmhStub, version 650 
  0.04%    0.07%        libc-2.26.so  __strlen_avx2 
  0.03%    0.02%           libjvm.so  _ZN12outputStream12do_vsnprintfEPcmPKcP13__va_list_tagbRm 
  0.97%    0.90%  <...other 127 warm methods...>
....................................................................................................
100.00%   99.60%  <totals>

....[Distribution by Source]........................................................................
 90.91%   93.15%         C2, level 4
  4.83%    2.62%        runtime stub
  2.61%    2.03%   [kernel.kallsyms]
  0.83%    1.27%           libjvm.so
  0.44%    0.71%        libc-2.26.so
  0.14%    0.12%  libpthread-2.26.so
  0.13%    0.08%      hsdis-amd64.so
  0.05%    0.02%         C1, level 3
  0.03%    0.00%         interpreter
  0.01%                       [vdso]
  0.00%                             
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                        Mode  Cnt     Score     Error  Units
Re2jFindRegex.testCombine       thrpt   20  2977.267 ± 104.947  ops/s
Re2jFindRegex.testCombine:·asm  thrpt            NaN              ---
