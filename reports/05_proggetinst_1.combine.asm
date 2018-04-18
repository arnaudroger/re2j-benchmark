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
# Warmup Iteration   1: 2205.942 ops/s
# Warmup Iteration   2: 3286.924 ops/s
# Warmup Iteration   3: 3307.612 ops/s
# Warmup Iteration   4: 3297.154 ops/s
# Warmup Iteration   5: 3317.879 ops/s
# Warmup Iteration   6: 3325.284 ops/s
# Warmup Iteration   7: 3325.789 ops/s
# Warmup Iteration   8: 3319.418 ops/s
# Warmup Iteration   9: 3331.484 ops/s
# Warmup Iteration  10: 3331.783 ops/s
# Warmup Iteration  11: 3330.961 ops/s
# Warmup Iteration  12: 3322.837 ops/s
# Warmup Iteration  13: 3307.463 ops/s
# Warmup Iteration  14: 3307.799 ops/s
# Warmup Iteration  15: 3307.250 ops/s
# Warmup Iteration  16: 3309.468 ops/s
# Warmup Iteration  17: 3235.318 ops/s
# Warmup Iteration  18: 3239.804 ops/s
# Warmup Iteration  19: 3239.840 ops/s
# Warmup Iteration  20: 3292.084 ops/s
Iteration   1: 3296.243 ops/s
Iteration   2: 3304.526 ops/s
Iteration   3: 3304.755 ops/s
Iteration   4: 3304.380 ops/s
Iteration   5: 3316.444 ops/s
Iteration   6: 3330.844 ops/s
Iteration   7: 3327.557 ops/s
Iteration   8: 3330.691 ops/s
Iteration   9: 3035.895 ops/s
Iteration  10: 3286.698 ops/s
Iteration  11: 3286.404 ops/s
Iteration  12: 3287.121 ops/s
Iteration  13: 3284.910 ops/s
Iteration  14: 3287.963 ops/s
Iteration  15: 3270.635 ops/s
Iteration  16: 3270.795 ops/s
Iteration  17: 2918.066 ops/s
Iteration  18: 3270.511 ops/s
Iteration  19: 3270.432 ops/s
Iteration  20: 3268.020 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  3262.644 ±(99.9%) 88.218 ops/s [Average]
  (min, avg, max) = (2918.066, 3262.644, 3330.844), stdev = 101.592
  CI (99.9%): [3174.426, 3350.862] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine:·asm":
PrintAssembly processed: 195299 total address lines.
Perf output processed (skipped 23.306 seconds):
 Column 1: cycles (20700 events)
 Column 2: instructions (20689 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 483 (259 bytes) 

                       # parm4:    rdi       = int
                       # parm5:    [sp+0x70]   = &apos;com/google/re2j/Machine$Thread&apos;  (sp of caller)
                       0x00007fede4bd2be0: mov    0x8(%rsi),%r10d    ;   {no_reloc}
                       0x00007fede4bd2be4: shl    $0x3,%r10
                       0x00007fede4bd2be8: cmp    %r10,%rax
                       0x00007fede4bd2beb: jne    0x00007fede4a0ce20  ;   {runtime_call}
                       0x00007fede4bd2bf1: data16 xchg %ax,%ax
                       0x00007fede4bd2bf4: nopl   0x0(%rax,%rax,1)
                       0x00007fede4bd2bfc: data16 data16 xchg %ax,%ax
                     [Verified Entry Point]
  0.66%    0.59%       0x00007fede4bd2c00: mov    %eax,-0x14000(%rsp)
  1.34%    1.31%       0x00007fede4bd2c07: push   %rbp
  0.33%    0.31%       0x00007fede4bd2c08: sub    $0x60,%rsp         ;*synchronization entry
                                                                     ; - com.google.re2j.Machine::add@-1 (line 345)
  0.89%    1.22%       0x00007fede4bd2c0c: mov    %edi,0x38(%rsp)
  0.52%    0.56%       0x00007fede4bd2c10: mov    %r9,0x30(%rsp)
  0.36%    0.38%       0x00007fede4bd2c15: mov    %r8d,0x20(%rsp)
  0.32%    0.37%       0x00007fede4bd2c1a: mov    %rsi,0x8(%rsp)
  0.69%    0.73%       0x00007fede4bd2c1f: mov    %rdx,0x28(%rsp)
  0.54%    0.59%       0x00007fede4bd2c24: mov    %rcx,0x48(%rsp)
  0.25%    0.21%       0x00007fede4bd2c29: mov    0x28(%rcx),%r11d   ;*getfield pc
                                                                     ; - com.google.re2j.Machine::add@2 (line 345)
                                                                     ; implicit exception: dispatches to 0x00007fede4bd3169
  0.32%    0.28%       0x00007fede4bd2c2d: mov    0x14(%rdx),%ebx    ;*getfield sparse
                                                                     ; - com.google.re2j.Machine$Queue::contains@1 (line 46)
                                                                     ; - com.google.re2j.Machine::add@5 (line 345)
                                                                     ; implicit exception: dispatches to 0x00007fede4bd3179
  0.63%    0.60%       0x00007fede4bd2c30: mov    0xc(%r12,%rbx,8),%r8d  ; implicit exception: dispatches to 0x00007fede4bd318d
  0.66%    0.65%       0x00007fede4bd2c35: cmp    %r8d,%r11d
                       0x00007fede4bd2c38: jae    0x00007fede4bd2f86  ;*iaload
                                                                     ; - com.google.re2j.Machine$Queue::contains@5 (line 46)
                                                                     ; - com.google.re2j.Machine::add@5 (line 345)
  0.42%    0.46%       0x00007fede4bd2c3e: mov    0x10(%rdx),%ecx    ;*getfield dense
                                                                     ; - com.google.re2j.Machine$Queue::contains@18 (line 50)
                                                                     ; - com.google.re2j.Machine::add@5 (line 345)
  0.31%    0.35%       0x00007fede4bd2c41: mov    0xc(%rdx),%r9d     ;*getfield size
                                                                     ; - com.google.re2j.Machine$Queue::contains@9 (line 47)
                                                                     ; - com.google.re2j.Machine::add@5 (line 345)
  0.61%    0.53%       0x00007fede4bd2c45: lea    (%r12,%rbx,8),%rdi
  0.43%    0.38%       0x00007fede4bd2c49: mov    0x10(%rdi,%r11,4),%ebp  ;*iaload
                                                                     ; - com.google.re2j.Machine$Queue::contains@5 (line 46)
                                                                     ; - com.google.re2j.Machine::add@5 (line 345)
  0.75%    0.70%       0x00007fede4bd2c4e: cmp    %r9d,%ebp
                  ╭    0x00007fede4bd2c51: jl     0x00007fede4bd2cde  ;*iastore
                  │                                                  ; - com.google.re2j.Machine$Queue::add@18 (line 58)
                  │                                                  ; - com.google.re2j.Machine::add@19 (line 348)
  0.97%    0.80%  │ ↗  0x00007fede4bd2c57: mov    %r9d,%edx
  0.47%    0.47%  │ │  0x00007fede4bd2c5a: inc    %edx
  0.39%    0.40%  │ │  0x00007fede4bd2c5c: mov    0x28(%rsp),%r10
  0.50%    0.43%  │ │  0x00007fede4bd2c61: mov    %edx,0xc(%r10)     ;*putfield size
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@8 (line 57)
                  │ │                                                ; - com.google.re2j.Machine::add@19 (line 348)
  0.74%    0.62%  │ │  0x00007fede4bd2c65: cmp    %r8d,%r11d
                  │ │  0x00007fede4bd2c68: jae    0x00007fede4bd2fb9
  0.51%    0.58%  │ │  0x00007fede4bd2c6e: mov    %r9d,0x10(%rdi,%r11,4)  ;*iastore
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@18 (line 58)
                  │ │                                                ; - com.google.re2j.Machine::add@19 (line 348)
  0.55%    0.42%  │ │  0x00007fede4bd2c73: mov    0xc(%r12,%rcx,8),%r10d  ; implicit exception: dispatches to 0x00007fede4bd31a1
  0.34%    0.35%  │ │  0x00007fede4bd2c78: cmp    %r10d,%r9d
                  │ │  0x00007fede4bd2c7b: jae    0x00007fede4bd2ff9  ;*aaload
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@24 (line 59)
                  │ │                                                ; - com.google.re2j.Machine::add@19 (line 348)
  0.78%    0.69%  │ │  0x00007fede4bd2c81: lea    (%r12,%rcx,8),%rdi  ;*getfield dense
                  │ │                                                ; - com.google.re2j.Machine$Queue::contains@18 (line 50)
                  │ │                                                ; - com.google.re2j.Machine::add@5 (line 345)
  0.42%    0.50%  │ │  0x00007fede4bd2c85: lea    0x10(%rdi,%r9,4),%rbp
  0.43%    0.38%  │ │  0x00007fede4bd2c8a: mov    0x0(%rbp),%r8d     ;*aaload
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@24 (line 59)
                  │ │                                                ; - com.google.re2j.Machine::add@19 (line 348)
  0.48%    0.51%  │ │  0x00007fede4bd2c8e: test   %r8d,%r8d
                  │╭│  0x00007fede4bd2c91: je     0x00007fede4bd2d0d  ;*ifnonnull
                  │││                                                ; - com.google.re2j.Machine$Queue::add@27 (line 60)
                  │││                                                ; - com.google.re2j.Machine::add@19 (line 348)
  0.84%    0.82%  │││  0x00007fede4bd2c93: lea    (%r12,%r8,8),%rbx  ;*aload_3
                  │││                                                ; - com.google.re2j.Machine$Queue::add@45 (line 63)
                  │││                                                ; - com.google.re2j.Machine::add@19 (line 348)
  0.51%    0.61%  │││  0x00007fede4bd2c97: mov    %r11d,0xc(%rbx)    ;*putfield pc
                  │││                                                ; - com.google.re2j.Machine$Queue::add@52 (line 64)
                  │││                                                ; - com.google.re2j.Machine::add@19 (line 348)
  2.82%    2.78%  │││  0x00007fede4bd2c9b: mov    0x48(%rsp),%r10
  0.36%    0.29%  │││  0x00007fede4bd2ca0: mov    0xc(%r10),%r11d    ;*getfield op
                  │││                                                ; - com.google.re2j.Machine::add@25 (line 349)
  1.31%    1.48%  │││  0x00007fede4bd2ca4: mov    %r12d,0x10(%rbx)   ;*putfield thread
                  │││                                                ; - com.google.re2j.Machine$Queue::add@47 (line 63)
                  │││                                                ; - com.google.re2j.Machine::add@19 (line 348)
  0.69%    0.74%  │││  0x00007fede4bd2ca8: mov    %r11d,%r10d
  0.54%    0.46%  │││  0x00007fede4bd2cab: dec    %r10d
  0.57%    0.60%  │││  0x00007fede4bd2cae: cmp    $0xc,%r10d
                  │││  0x00007fede4bd2cb2: jae    0x00007fede4bd3039  ;*tableswitch
                  │││                                                ; - com.google.re2j.Machine::add@28 (line 349)
  0.82%    0.85%  │││  0x00007fede4bd2cb8: mov    0x48(%rsp),%r10
  0.39%    0.47%  │││  0x00007fede4bd2cbd: mov    0x30(%r10),%r8d
  0.59%    0.51%  │││  0x00007fede4bd2cc1: mov    0x14(%r10),%r9d    ;*getfield arg
                  │││                                                ; - com.google.re2j.Machine::add@145 (line 363)
  0.11%    0.14%  │││  0x00007fede4bd2cc5: movslq %r11d,%r10
  0.78%    0.90%  │││  0x00007fede4bd2cc8: mov    %r8,%rcx
  0.50%    0.51%  │││  0x00007fede4bd2ccb: shl    $0x3,%rcx          ;*getfield outInst
                  │││                                                ; - com.google.re2j.Machine::add@180 (line 369)
  0.42%    0.44%  │││  0x00007fede4bd2ccf: movabs $0x7fede4bd2b80,%r8  ;   {section_word}
  0.07%    0.11%  │││  0x00007fede4bd2cd9: jmpq   *-0x8(%r8,%r10,8)  ;*tableswitch
                  │││                                                ; - com.google.re2j.Machine::add@28 (line 349)
  0.04%    0.03%  ↘││  0x00007fede4bd2cde: mov    0xc(%r12,%rcx,8),%r10d  ; implicit exception: dispatches to 0x00007fede4bd320d
  0.07%    0.09%   ││  0x00007fede4bd2ce3: cmp    %r10d,%ebp
                   ││  0x00007fede4bd2ce6: jae    0x00007fede4bd3141
  0.08%    0.04%   ││  0x00007fede4bd2cec: lea    (%r12,%rcx,8),%r10
  0.00%            ││  0x00007fede4bd2cf0: mov    0x10(%r10,%rbp,4),%ebp  ;*aaload
                   ││                                                ; - com.google.re2j.Machine$Queue::contains@22 (line 50)
                   ││                                                ; - com.google.re2j.Machine::add@5 (line 345)
  0.09%    0.10%   ││  0x00007fede4bd2cf5: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007fede4bd321d
  0.41%    0.41%   ││  0x00007fede4bd2cfa: cmp    %r11d,%r10d
                   │╰  0x00007fede4bd2cfd: jne    0x00007fede4bd2c57
  0.00%            │   0x00007fede4bd2d03: mov    0x70(%rsp),%rax
                   │   0x00007fede4bd2d08: jmpq   0x00007fede4bd2f54
                   ↘   0x00007fede4bd2d0d: mov    0x60(%r15),%rbx
                       0x00007fede4bd2d11: mov    %rbx,%r10
                       0x00007fede4bd2d14: add    $0x18,%r10
                       0x00007fede4bd2d18: cmp    0x70(%r15),%r10
                       0x00007fede4bd2d1c: jae    0x00007fede4bd30e9
                       0x00007fede4bd2d22: mov    %r10,0x60(%r15)
                       0x00007fede4bd2d26: prefetchnta 0xc0(%r10)
                       0x00007fede4bd2d2e: mov    $0xf8019b53,%r10d  ;   {metadata(&apos;com/google/re2j/Machine$Queue$Entry&apos;)}
                       0x00007fede4bd2d34: shl    $0x3,%r10
....................................................................................................
 28.61%   28.77%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 488 (494 bytes) 

                               # parm6:    [sp+0x78]   = int
                               # parm7:    [sp+0x80]   = boolean
                               0x00007fede4bdd800: mov    0x8(%rsi),%r10d
                               0x00007fede4bdd804: shl    $0x3,%r10
                               0x00007fede4bdd808: cmp    %r10,%rax
                               0x00007fede4bdd80b: jne    0x00007fede4a0ce20  ;   {runtime_call}
                               0x00007fede4bdd811: data16 xchg %ax,%ax
                               0x00007fede4bdd814: nopl   0x0(%rax,%rax,1)
                               0x00007fede4bdd81c: data16 data16 xchg %ax,%ax
                             [Verified Entry Point]
  0.10%    0.12%               0x00007fede4bdd820: mov    %eax,-0x14000(%rsp)
  0.16%    0.14%               0x00007fede4bdd827: push   %rbp
  0.08%    0.12%               0x00007fede4bdd828: sub    $0x60,%rsp         ;*synchronization entry
                                                                             ; - com.google.re2j.Machine::step@-1 (line 269)
  0.04%    0.05%               0x00007fede4bdd82c: mov    %edi,0x20(%rsp)
  0.05%    0.03%               0x00007fede4bdd830: mov    %r9d,0x14(%rsp)
  0.09%    0.09%               0x00007fede4bdd835: mov    %rcx,0x18(%rsp)
  0.05%    0.03%               0x00007fede4bdd83a: mov    %r8d,0x10(%rsp)
  0.06%    0.07%               0x00007fede4bdd83f: mov    %rdx,0x8(%rsp)
  0.06%                        0x00007fede4bdd844: mov    %rsi,0x28(%rsp)
  0.16%    0.11%               0x00007fede4bdd849: mov    0x14(%rsi),%r11d   ;*getfield re2
                                                                             ; - com.google.re2j.Machine::step@1 (line 269)
  0.02%    0.05%               0x00007fede4bdd84d: movzbl 0x18(%r12,%r11,8),%r11d  ;*getfield longest
                                                                             ; - com.google.re2j.Machine::step@4 (line 269)
                                                                             ; implicit exception: dispatches to 0x00007fede4bddf65
  0.10%    0.07%               0x00007fede4bdd853: mov    %r11d,0x24(%rsp)
  0.05%    0.03%               0x00007fede4bdd858: mov    0xc(%rdx),%r10d    ; implicit exception: dispatches to 0x00007fede4bddf75
  0.16%    0.10%               0x00007fede4bdd85c: test   %r10d,%r10d
                               0x00007fede4bdd85f: jle    0x00007fede4bddb31  ;*if_icmpge
                                                                             ; - com.google.re2j.Machine::step@18 (line 270)
  0.05%    0.02%               0x00007fede4bdd865: xor    %r10d,%r10d
  0.03%    0.06%  ╭            0x00007fede4bdd868: jmpq   0x00007fede4bdd9b4
  0.36%    0.47%  │        ↗   0x00007fede4bdd86d: cmp    $0xc,%r9d
                  │╭       │   0x00007fede4bdd871: je     0x00007fede4bdd8e2
  0.09%    0.02%  ││       │   0x00007fede4bdd873: cmp    $0xc,%r9d
                  ││       │   0x00007fede4bdd877: jg     0x00007fede4bddd7d
  0.03%    0.00%  ││       │   0x00007fede4bdd87d: cmp    $0xb,%r9d
                  ││╭      │   0x00007fede4bdd881: jne    0x00007fede4bdd892  ;*tableswitch
                  │││      │                                                 ; - com.google.re2j.Machine::step@114 (line 285)
                  │││      │   0x00007fede4bdd883: mov    0x20(%rsp),%r9d
                  │││      │   0x00007fede4bdd888: cmp    $0xa,%r9d
                  │││╭     │   0x00007fede4bdd88c: je     0x00007fede4bdd925  ;*ifeq
                  ││││     │                                                 ; - com.google.re2j.Machine::step@363 (line 329)
  0.47%    0.27%  ││↘│ ↗↗  │   0x00007fede4bdd892: mov    %eax,0x74(%rsp)
  0.28%    0.10%  ││ │ ││  │   0x00007fede4bdd896: mov    %r10d,%ebp
                  ││ │ ││  │   0x00007fede4bdd899: mov    0x30(%r12,%rbx,8),%r8d
           0.00%  ││ │ ││  │   0x00007fede4bdd89e: mov    %r14,%r9
  0.07%    0.04%  ││ │ ││  │   0x00007fede4bdd8a1: shl    $0x3,%r9           ;*getfield cap
                  ││ │ ││  │                                                 ; - com.google.re2j.Machine::step@172 (line 292)
  0.02%           ││ │ ││  │   0x00007fede4bdd8a5: mov    %r8,%rcx
                  ││ │ ││  │   0x00007fede4bdd8a8: shl    $0x3,%rcx          ;*getfield outInst
                  ││ │ ││  │                                                 ; - com.google.re2j.Machine::step@370 (line 330)
                  ││ │ ││  │   0x00007fede4bdd8ac: mov    0x28(%rsp),%rsi
  0.08%    0.05%  ││ │ ││  │   0x00007fede4bdd8b1: mov    0x18(%rsp),%rdx
  0.02%           ││ │ ││  │   0x00007fede4bdd8b6: mov    0x14(%rsp),%r8d
  0.00%           ││ │ ││  │   0x00007fede4bdd8bb: mov    0x70(%rsp),%edi
           0.00%  ││ │ ││  │   0x00007fede4bdd8bf: mov    %r11,(%rsp)
  0.14%    0.06%  ││ │ ││  │   0x00007fede4bdd8c3: callq  0x00007fede4a0d020  ; OopMap{[8]=Oop [24]=Oop [40]=Oop off=200}
                  ││ │ ││  │                                                 ;*invokespecial add
                  ││ │ ││  │                                                 ; - com.google.re2j.Machine::step@384 (line 330)
                  ││ │ ││  │                                                 ;   {optimized virtual_call}
  0.00%           ││ │ ││  │   0x00007fede4bdd8c8: mov    %rax,%rcx
  0.01%           ││ │ ││  │   0x00007fede4bdd8cb: test   %rax,%rax
                  ││ │ ││  │   0x00007fede4bdd8ce: je     0x00007fede4bddbe2  ;*ifnull
                  ││ │ ││  │                                                 ; - com.google.re2j.Machine::step@391 (line 332)
                  ││ │ ││  │   0x00007fede4bdd8d4: mov    0x20(%rsp),%r9d
                  ││ │ ││  │   0x00007fede4bdd8d9: mov    %ebp,%r10d
                  ││ │ ││  │   0x00007fede4bdd8dc: mov    0x74(%rsp),%eax
                  ││ │╭││  │   0x00007fede4bdd8e0: jmp    0x00007fede4bdd928  ;*aload
                  ││ ││││  │                                                 ; - com.google.re2j.Machine::step@294 (line 311)
  0.69%    0.78%  │↘ ││││  │↗  0x00007fede4bdd8e2: cmp    $0xc,%r9d
                  │  ││││  ││  0x00007fede4bdd8e6: jne    0x00007fede4bddd8d  ;*if_icmpne
                  │  ││││  ││                                                ; - com.google.re2j.Inst::matchRune@29 (line 63)
                  │  ││││  ││                                                ; - com.google.re2j.Machine::step@298 (line 311)
  0.31%    0.39%  │  ││││  ││  0x00007fede4bdd8ec: mov    0x18(%r12,%rbx,8),%ecx  ;*getfield f0
                  │  ││││  ││                                                ; - com.google.re2j.Inst::matchRune@33 (line 64)
                  │  ││││  ││                                                ; - com.google.re2j.Machine::step@298 (line 311)
  0.01%           │  ││││  ││  0x00007fede4bdd8f1: cmp    0x20(%rsp),%ecx
                  │  ││╰│  ││  0x00007fede4bdd8f5: je     0x00007fede4bdd892  ;*if_icmpeq
                  │  ││ │  ││                                                ; - com.google.re2j.Inst::matchRune@37 (line 64)
                  │  ││ │  ││                                                ; - com.google.re2j.Machine::step@298 (line 311)
  0.53%    0.58%  │  ││ │  ││  0x00007fede4bdd8f7: mov    0x1c(%r12,%rbx,8),%ecx  ;*getfield f1
                  │  ││ │  ││                                                ; - com.google.re2j.Inst::matchRune@41 (line 64)
                  │  ││ │  ││                                                ; - com.google.re2j.Machine::step@298 (line 311)
  0.17%    0.15%  │  ││ │  ││  0x00007fede4bdd8fc: cmp    0x20(%rsp),%ecx
  0.16%    0.17%  │  ││ ╰  ││  0x00007fede4bdd900: je     0x00007fede4bdd892  ;*if_icmpeq
                  │  ││    ││                                                ; - com.google.re2j.Inst::matchRune@45 (line 64)
                  │  ││    ││                                                ; - com.google.re2j.Machine::step@298 (line 311)
  0.69%    0.71%  │  ││    ││  0x00007fede4bdd902: mov    0x20(%r12,%rbx,8),%ebp  ;*getfield f2
                  │  ││    ││                                                ; - com.google.re2j.Inst::matchRune@49 (line 64)
                  │  ││    ││                                                ; - com.google.re2j.Machine::step@298 (line 311)
  0.05%    0.07%  │  ││    ││  0x00007fede4bdd907: cmp    0x20(%rsp),%ebp
                  │  ││    ││  0x00007fede4bdd90b: je     0x00007fede4bdddd5  ;*if_icmpeq
                  │  ││    ││                                                ; - com.google.re2j.Inst::matchRune@53 (line 64)
                  │  ││    ││                                                ; - com.google.re2j.Machine::step@298 (line 311)
  0.59%    0.59%  │  ││    ││  0x00007fede4bdd911: mov    0x24(%r12,%rbx,8),%ebp  ;*getfield f3
                  │  ││    ││                                                ; - com.google.re2j.Inst::matchRune@57 (line 64)
                  │  ││    ││                                                ; - com.google.re2j.Machine::step@298 (line 311)
  0.01%    0.02%  │  ││    ││  0x00007fede4bdd916: cmp    0x20(%rsp),%ebp
                  │  ││    ││  0x00007fede4bdd91a: je     0x00007fede4bdde09  ;*if_icmpne
                  │  ││    ││                                                ; - com.google.re2j.Inst::matchRune@61 (line 64)
                  │  ││    ││                                                ; - com.google.re2j.Machine::step@298 (line 311)
  0.35%    0.58%  │  ││    ││  0x00007fede4bdd920: mov    0x20(%rsp),%r9d    ;*goto
                  │  ││    ││                                                ; - com.google.re2j.Machine::step@291 (line 307)
  0.02%    0.01%  │  ↘│    ││  0x00007fede4bdd925: mov    %r11,%rcx          ;*aload
                  │   │    ││                                                ; - com.google.re2j.Machine::step@389 (line 332)
  0.16%    0.29%  │   ↘    ││  0x00007fede4bdd928: mov    0x28(%rsp),%r11
  0.02%    0.02%  │        ││  0x00007fede4bdd92d: mov    0x24(%r11),%ebx    ;*getfield pool
                  │        ││                                                ; - com.google.re2j.Machine::free@5 (line 160)
                  │        ││                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.60%    0.92%  │        ││  0x00007fede4bdd931: mov    0xc(%r12,%rbx,8),%r11d  ;*arraylength
                  │        ││                                                ; - com.google.re2j.Machine::free@8 (line 160)
                  │        ││                                                ; - com.google.re2j.Machine::step@397 (line 333)
                  │        ││                                                ; implicit exception: dispatches to 0x00007fede4bddec9
  0.04%    0.03%  │        ││  0x00007fede4bdd936: mov    0x28(%rsp),%r8
  0.19%    0.15%  │        ││  0x00007fede4bdd93b: mov    0xc(%r8),%ebp      ;*getfield poolSize
                  │        ││                                                ; - com.google.re2j.Machine::free@1 (line 160)
                  │        ││                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.02%    0.02%  │        ││  0x00007fede4bdd93f: cmp    %r11d,%ebp
                  │        ││  0x00007fede4bdd942: jge    0x00007fede4bddd45  ;*if_icmplt
                  │        ││                                                ; - com.google.re2j.Machine::free@9 (line 160)
                  │        ││                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.76%    0.86%  │        ││  0x00007fede4bdd948: mov    %ebp,%r8d
  0.01%    0.02%  │        ││  0x00007fede4bdd94b: inc    %r8d
  0.21%    0.25%  │        ││  0x00007fede4bdd94e: mov    0x28(%rsp),%rdi
  0.01%    0.02%  │        ││  0x00007fede4bdd953: mov    %r8d,0xc(%rdi)     ;*putfield poolSize
                  │        ││                                                ; - com.google.re2j.Machine::free@45 (line 163)
                  │        ││                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.59%    0.73%  │        ││  0x00007fede4bdd957: cmp    %r11d,%ebp
                  │        ││  0x00007fede4bdd95a: jae    0x00007fede4bddc49  ;*aastore
                  │        ││                                                ; - com.google.re2j.Machine::free@49 (line 163)
                  │        ││                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.02%    0.02%  │        ││  0x00007fede4bdd960: mov    %rcx,%r11
  0.20%    0.26%  │        ││  0x00007fede4bdd963: shr    $0x3,%r11
  0.01%    0.02%  │        ││  0x00007fede4bdd967: lea    (%r12,%rbx,8),%r10  ;*getfield pool
                  │        ││                                                ; - com.google.re2j.Machine::free@5 (line 160)
                  │        ││                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.60%    0.64%  │        ││  0x00007fede4bdd96b: lea    0x10(%r10,%rbp,4),%r10
  0.01%    0.00%  │        ││  0x00007fede4bdd970: mov    %r11d,(%r10)
  0.17%    0.21%  │        ││  0x00007fede4bdd973: shr    $0x9,%r10
  0.00%    0.01%  │        ││  0x00007fede4bdd977: movabs $0x7fede03f5000,%r11
  0.63%    0.60%  │        ││  0x00007fede4bdd981: mov    %r12b,(%r11,%r10,1)  ;*aastore
                  │        ││                                                ; - com.google.re2j.Machine::free@49 (line 163)
                  │        ││                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.11%    0.10%  │        ││  0x00007fede4bdd985: xor    %r10d,%r10d
  0.19%    0.12%  │      ╭ ││  0x00007fede4bdd988: jmp    0x00007fede4bdd994
  0.37%    0.31%  │      │↗││  0x00007fede4bdd98a: mov    0x24(%rsp),%r10d
  0.08%    0.03%  │      ││││  0x00007fede4bdd98f: mov    0x20(%rsp),%r9d    ; OopMap{[8]=Oop [24]=Oop [40]=Oop off=404}
                  │      ││││                                                ;*goto
                  │      ││││                                                ; - com.google.re2j.Machine::step@403 (line 270)
  0.20%    0.15%  │      ↘│││  0x00007fede4bdd994: test   %eax,0x15fd5666(%rip)        # 0x00007fedfabb3000
                  │       │││                                                ;*goto
                  │       │││                                                ; - com.google.re2j.Machine::step@403 (line 270)
                  │       │││                                                ;   {poll}
  0.67%    0.58%  │       │││  0x00007fede4bdd99a: mov    0x8(%rsp),%r10
  0.39%    0.35%  │       │││  0x00007fede4bdd99f: mov    0xc(%r10),%r10d
  0.43%    0.40%  │       │││  0x00007fede4bdd9a3: cmp    %r10d,%eax
                  │       │││  0x00007fede4bdd9a6: jge    0x00007fede4bddb31
  0.25%    0.12%  │       │││  0x00007fede4bdd9ac: mov    %r9d,0x20(%rsp)
  0.54%    0.41%  │       │││  0x00007fede4bdd9b1: mov    %eax,%r10d         ;*aload_1
                  │       │││                                                ; - com.google.re2j.Machine::step@21 (line 271)
  0.43%    0.43%  ↘       │││  0x00007fede4bdd9b4: mov    0x8(%rsp),%r11
  0.40%    0.32%          │││  0x00007fede4bdd9b9: mov    0x10(%r11),%r11d   ;*getfield dense
                          │││                                                ; - com.google.re2j.Machine::step@22 (line 271)
  0.64%    0.48%          │││  0x00007fede4bdd9bd: mov    0xc(%r12,%r11,8),%r9d  ; implicit exception: dispatches to 0x00007fede4bddea5
  1.53%    1.51%          │││  0x00007fede4bdd9c2: cmp    %r9d,%r10d
                          │││  0x00007fede4bdd9c5: jae    0x00007fede4bddc0c
  0.66%    0.58%          │││  0x00007fede4bdd9cb: shl    $0x3,%r11
  0.32%    0.23%          │││  0x00007fede4bdd9cf: mov    0x10(%r11,%r10,4),%r11d  ;*aaload
                          │││                                                ; - com.google.re2j.Machine::step@27 (line 271)
  0.24%    0.21%          │││  0x00007fede4bdd9d4: mov    0x10(%r12,%r11,8),%r8d  ;*getfield thread
                          │││                                                ; - com.google.re2j.Machine::step@40 (line 275)
                          │││                                                ; implicit exception: dispatches to 0x00007fede4bdded9
  2.10%    1.85%          │││  0x00007fede4bdd9d9: mov    %r10d,%eax
  0.43%    0.27%          │││  0x00007fede4bdd9dc: inc    %eax               ;*iadd
                          │││                                                ; - com.google.re2j.Machine::step@237 (line 298)
  0.28%    0.16%          │││  0x00007fede4bdd9de: test   %r8d,%r8d
                          ╰││  0x00007fede4bdd9e1: je     0x00007fede4bdd98a  ;*ifnonnull
                           ││                                                ; - com.google.re2j.Machine::step@47 (line 276)
  0.26%    0.24%           ││  0x00007fede4bdd9e3: mov    0x24(%rsp),%r9d
  0.43%    0.32%           ││  0x00007fede4bdd9e8: test   %r9d,%r9d
                           ││  0x00007fede4bdd9eb: jne    0x00007fede4bddcfd  ;*ifeq
                           ││                                                ; - com.google.re2j.Machine::step@55 (line 279)
  0.16%    0.11%           ││  0x00007fede4bdd9f1: mov    0x10(%r12,%r8,8),%ebx  ;*getfield inst
                           ││                                                ; - com.google.re2j.Machine::step@101 (line 283)
  1.16%    1.27%           ││  0x00007fede4bdd9f6: mov    0xc(%r12,%rbx,8),%r9d  ;*getfield op
                           ││                                                ; - com.google.re2j.Machine::step@111 (line 285)
                           ││                                                ; implicit exception: dispatches to 0x00007fede4bddeb9
  3.16%    3.25%           ││  0x00007fede4bdd9fb: mov    0xc(%r12,%r8,8),%r14d  ;*getfield cap
                           ││                                                ; - com.google.re2j.Machine::step@172 (line 292)
  0.17%    0.11%           ││  0x00007fede4bdda00: lea    (%r12,%r8,8),%r11  ;*getfield thread
                           ││                                                ; - com.google.re2j.Machine::step@40 (line 275)
  0.00%                    ││  0x00007fede4bdda04: cmp    $0x9,%r9d
                           ││  0x00007fede4bdda08: je     0x00007fede4bddb07
  0.93%    0.99%           ││  0x00007fede4bdda0e: cmp    $0x9,%r9d
                           ╰│  0x00007fede4bdda12: jg     0x00007fede4bdd86d
                            │  0x00007fede4bdda18: cmp    $0x7,%r9d
                            │  0x00007fede4bdda1c: je     0x00007fede4bddd7d
                            │  0x00007fede4bdda22: cmp    $0x7,%r9d
                            ╰  0x00007fede4bdda26: jg     0x00007fede4bdd8e2
                               0x00007fede4bdda2c: cmp    $0x6,%r9d
                               0x00007fede4bdda30: jne    0x00007fede4bddd7d  ;*tableswitch
                                                                             ; - com.google.re2j.Machine::step@114 (line 285)
                               0x00007fede4bdda36: mov    0x78(%rsp),%r9d
                               0x00007fede4bdda3b: cmp    $0x2,%r9d
....................................................................................................
 27.26%   26.17%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 483 (348 bytes) 

                          0x00007fede4bd2dea: mov    %r10,(%rsp)
                          0x00007fede4bd2dee: nop
                          0x00007fede4bd2def: callq  0x00007fede4a0d020  ; OopMap{off=532}
                                                                        ;*invokespecial add
                                                                        ; - com.google.re2j.Machine::add@190 (line 369)
                                                                        ;   {optimized virtual_call}
                  ╭       0x00007fede4bd2df4: jmpq   0x00007fede4bd2f54
                  │       0x00007fede4bd2df9: mov    0x70(%rsp),%rax
                  │╭      0x00007fede4bd2dfe: jmpq   0x00007fede4bd2f54  ;*tableswitch
                  ││                                                    ; - com.google.re2j.Machine::add@28 (line 349)
  1.14%    1.00%  ││      0x00007fede4bd2e03: mov    0x8(%rsp),%rsi
  0.18%    0.14%  ││      0x00007fede4bd2e08: mov    0x28(%rsp),%rdx
  0.03%    0.04%  ││      0x00007fede4bd2e0d: mov    0x20(%rsp),%r8d
  0.14%    0.08%  ││      0x00007fede4bd2e12: mov    0x30(%rsp),%r9
  0.36%    0.33%  ││      0x00007fede4bd2e17: mov    0x38(%rsp),%edi
  0.16%    0.08%  ││      0x00007fede4bd2e1b: mov    0x70(%rsp),%r10
           0.06%  ││      0x00007fede4bd2e20: mov    %r10,(%rsp)
  0.11%    0.15%  ││      0x00007fede4bd2e24: mov    %rsi,%rbp
  0.37%    0.35%  ││      0x00007fede4bd2e27: callq  0x00007fede4a0d020  ; OopMap{rbp=Oop [40]=Oop [48]=Oop [72]=Oop off=588}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@118 (line 358)
                  ││                                                    ;   {optimized virtual_call}
  0.09%    0.08%  ││      0x00007fede4bd2e2c: mov    0x48(%rsp),%r10
  0.20%    0.26%  ││      0x00007fede4bd2e31: mov    0x34(%r10),%r11d
  0.45%    0.53%  ││      0x00007fede4bd2e35: mov    %r11,%rcx
  0.11%    0.06%  ││      0x00007fede4bd2e38: shl    $0x3,%rcx          ;*getfield argInst
                  ││                                                    ; - com.google.re2j.Machine::add@126 (line 359)
  0.09%    0.12%  ││      0x00007fede4bd2e3c: mov    %rbp,%rsi
  0.14%    0.17%  ││      0x00007fede4bd2e3f: mov    0x28(%rsp),%rdx
  0.36%    0.38%  ││      0x00007fede4bd2e44: mov    0x20(%rsp),%r8d
  0.07%    0.09%  ││      0x00007fede4bd2e49: mov    0x30(%rsp),%r9
  0.10%    0.16%  ││      0x00007fede4bd2e4e: mov    0x38(%rsp),%edi
  0.12%    0.18%  ││      0x00007fede4bd2e52: mov    %rax,(%rsp)
  0.39%    0.45%  ││      0x00007fede4bd2e56: nop
  0.05%    0.07%  ││      0x00007fede4bd2e57: callq  0x00007fede4a0d020  ; OopMap{off=636}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@136 (line 359)
                  ││                                                    ;   {optimized virtual_call}
  0.16%    0.15%  ││╭     0x00007fede4bd2e5c: jmpq   0x00007fede4bd2f54  ;*aload
                  │││                                                   ; - com.google.re2j.Machine::add@274 (line 389)
  1.81%    1.71%  │││     0x00007fede4bd2e61: mov    0x48(%rsp),%r10
  0.27%    0.23%  │││     0x00007fede4bd2e66: mov    %r10,%rcx
  0.06%    0.05%  │││     0x00007fede4bd2e69: shr    $0x3,%rcx          ;*putfield inst
                  │││                                                   ; - com.google.re2j.Machine::alloc@45 (line 154)
                  │││                                                   ; - com.google.re2j.Machine::add@281 (line 390)
  0.06%    0.09%  │││     0x00007fede4bd2e6d: mov    0x70(%rsp),%rbp
  0.81%    0.71%  │││     0x00007fede4bd2e72: test   %rbp,%rbp
                  │││╭    0x00007fede4bd2e75: je     0x00007fede4bd2e91  ;*ifnonnull
                  ││││                                                  ; - com.google.re2j.Machine::add@276 (line 389)
  0.03%    0.03%  ││││    0x00007fede4bd2e77: mov    %ecx,0x10(%rbp)
  0.03%    0.01%  ││││    0x00007fede4bd2e7a: mov    %rbp,%r10
  0.01%    0.00%  ││││    0x00007fede4bd2e7d: shr    $0x9,%r10
  0.06%    0.07%  ││││    0x00007fede4bd2e81: movabs $0x7fede03f5000,%r11
  0.06%    0.01%  ││││    0x00007fede4bd2e8b: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                  ││││                                                  ; - com.google.re2j.Machine::add@292 (line 392)
  0.00%    0.01%  ││││╭   0x00007fede4bd2e8f: jmp    0x00007fede4bd2ee5
  0.21%    0.15%  │││↘│   0x00007fede4bd2e91: mov    0x8(%rsp),%r10
  0.03%    0.07%  │││ │   0x00007fede4bd2e96: mov    0xc(%r10),%r8d     ;*getfield poolSize
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@1 (line 148)
                  │││ │                                                 ; - com.google.re2j.Machine::add@281 (line 390)
  0.08%    0.06%  │││ │   0x00007fede4bd2e9a: test   %r8d,%r8d
                  │││ │   0x00007fede4bd2e9d: jle    0x00007fede4bd30a1  ;*ifle
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@4 (line 148)
                  │││ │                                                 ; - com.google.re2j.Machine::add@281 (line 390)
  0.51%    0.60%  │││ │   0x00007fede4bd2ea3: mov    0x24(%r10),%r9d    ;*getfield pool
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@18 (line 150)
                  │││ │                                                 ; - com.google.re2j.Machine::add@281 (line 390)
  0.25%    0.18%  │││ │   0x00007fede4bd2ea7: mov    %r8d,%ebp
  0.05%    0.04%  │││ │   0x00007fede4bd2eaa: dec    %ebp               ;*isub
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@13 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@281 (line 390)
  0.08%    0.07%  │││ │   0x00007fede4bd2eac: mov    %ebp,0xc(%r10)     ;*putfield poolSize
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@14 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@281 (line 390)
  0.50%    0.61%  │││ │   0x00007fede4bd2eb0: mov    0xc(%r12,%r9,8),%r11d  ; implicit exception: dispatches to 0x00007fede4bd31c5
  0.24%    0.33%  │││ │   0x00007fede4bd2eb5: cmp    %r11d,%ebp
                  │││ │   0x00007fede4bd2eb8: jae    0x00007fede4bd3049
  0.07%    0.05%  │││ │   0x00007fede4bd2ebe: lea    (%r12,%r9,8),%r10
  0.09%    0.07%  │││ │   0x00007fede4bd2ec2: mov    0xc(%r10,%r8,4),%r10d  ;*aaload
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@25 (line 150)
                  │││ │                                                 ; - com.google.re2j.Machine::add@281 (line 390)
  0.49%    0.53%  │││ │   0x00007fede4bd2ec7: mov    %ecx,0x10(%r12,%r10,8)  ;*putfield inst
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@45 (line 154)
                  │││ │                                                 ; - com.google.re2j.Machine::add@281 (line 390)
                  │││ │                                                 ; implicit exception: dispatches to 0x00007fede4bd31d5
  0.61%    0.61%  │││ │   0x00007fede4bd2ecc: lea    (%r12,%r10,8),%rbp  ;*aaload
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@25 (line 150)
                  │││ │                                                 ; - com.google.re2j.Machine::add@281 (line 390)
  0.03%    0.01%  │││ │   0x00007fede4bd2ed0: mov    %rbp,%r10
  0.05%    0.03%  │││ │   0x00007fede4bd2ed3: shr    $0x9,%r10
  0.47%    0.51%  │││ │   0x00007fede4bd2ed7: movabs $0x7fede03f5000,%r11
  0.33%    0.26%  │││ │   0x00007fede4bd2ee1: mov    %r12b,(%r11,%r10,1)  ;*aload
                  │││ │                                                 ; - com.google.re2j.Machine::add@295 (line 394)
  0.26%    0.21%  │││ ↘   0x00007fede4bd2ee5: mov    0x30(%rsp),%rdi
  0.13%    0.11%  │││     0x00007fede4bd2eea: mov    0xc(%rdi),%r10d    ;*arraylength
                  │││                                                   ; - com.google.re2j.Machine::add@297 (line 394)
                  │││                                                   ; implicit exception: dispatches to 0x00007fede4bd31b5
  0.47%    0.50%  │││     0x00007fede4bd2eee: test   %r10d,%r10d
                  │││     0x00007fede4bd2ef1: jle    0x00007fede4bd3086  ;*ifle
                  │││                                                   ; - com.google.re2j.Machine::add@298 (line 394)
  0.25%    0.26%  │││     0x00007fede4bd2ef7: mov    0xc(%rbp),%r8d     ;*getfield cap
                  │││                                                   ; - com.google.re2j.Machine::add@303 (line 394)
  0.22%    0.22%  │││     0x00007fede4bd2efb: mov    %r8,%r11
  0.11%    0.14%  │││     0x00007fede4bd2efe: shl    $0x3,%r11
  0.45%    0.56%  │││     0x00007fede4bd2f02: cmp    %rdi,%r11
                  │││  ╭  0x00007fede4bd2f05: je     0x00007fede4bd2f32  ;*if_acmpeq
                  │││  │                                                ; - com.google.re2j.Machine::add@308 (line 394)
  0.20%    0.22%  │││  │  0x00007fede4bd2f07: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x00007fede4bd31e5
  0.48%    0.58%  │││  │  0x00007fede4bd2f0c: lea    (%r12,%r8,8),%rcx  ;*getfield cap
                  │││  │                                                ; - com.google.re2j.Machine::add@303 (line 394)
  0.05%    0.01%  │││  │  0x00007fede4bd2f10: cmp    %r10d,%r11d
                  │││  │  0x00007fede4bd2f13: jb     0x00007fede4bd3065
  1.19%    1.03%  │││  │  0x00007fede4bd2f19: lea    0x10(%r12,%r8,8),%rsi
  0.11%    0.09%  │││  │  0x00007fede4bd2f1e: add    $0x10,%rdi
  0.02%    0.05%  │││  │  0x00007fede4bd2f22: movslq %r10d,%rdx
  0.04%    0.02%  │││  │  0x00007fede4bd2f25: movabs $0x7fede4a19640,%r10
  0.71%    0.68%  │││  │  0x00007fede4bd2f2f: callq  *%r10              ;*aload
                  │││  │                                                ; - com.google.re2j.Machine::add@326 (line 397)
  0.01%    0.02%  │││  ↘  0x00007fede4bd2f32: mov    %rbx,%r10
  0.22%    0.21%  │││     0x00007fede4bd2f35: mov    %rbp,%r8
  0.46%    0.30%  │││     0x00007fede4bd2f38: shr    $0x3,%r8
  0.26%    0.21%  │││     0x00007fede4bd2f3c: mov    %r8d,0x10(%rbx)
  0.00%    0.02%  │││     0x00007fede4bd2f40: shr    $0x9,%r10
  0.17%    0.25%  │││     0x00007fede4bd2f44: movabs $0x7fede03f5000,%r11
  0.51%    0.30%  │││     0x00007fede4bd2f4e: mov    %r12b,(%r11,%r10,1)  ;*putfield thread
                  │││                                                   ; - com.google.re2j.Machine::add@330 (line 397)
  0.21%    0.22%  │││     0x00007fede4bd2f52: xor    %eax,%eax          ;*invokevirtual contains
                  │││                                                   ; - com.google.re2j.Machine::add@5 (line 345)
  0.73%    0.95%  ↘↘↘     0x00007fede4bd2f54: add    $0x60,%rsp
  0.71%    0.86%          0x00007fede4bd2f58: pop    %rbp
  0.30%    0.35%          0x00007fede4bd2f59: test   %eax,0x15fe00a1(%rip)        # 0x00007fedfabb3000
                                                                        ;   {poll_return}
  0.84%    0.94%          0x00007fede4bd2f5f: retq                      ;*tableswitch
                                                                        ; - com.google.re2j.Machine::add@28 (line 349)
                          0x00007fede4bd2f60: mov    0x8(%rsp),%rsi
                          0x00007fede4bd2f65: mov    0x28(%rsp),%rdx
                          0x00007fede4bd2f6a: mov    0x20(%rsp),%r8d
                          0x00007fede4bd2f6f: mov    0x30(%rsp),%r9
                          0x00007fede4bd2f74: mov    %ebx,%edi
                          0x00007fede4bd2f76: mov    0x70(%rsp),%r10
                          0x00007fede4bd2f7b: mov    %r10,(%rsp)
                          0x00007fede4bd2f7f: callq  0x00007fede4a0d020  ; OopMap{off=932}
....................................................................................................
 21.23%   21.36%  <total for region 3>

....[Hottest Regions]...............................................................................
 28.61%   28.77%         C2, level 4  com.google.re2j.Machine::add, version 483 (259 bytes) 
 27.26%   26.17%         C2, level 4  com.google.re2j.Machine::step, version 488 (494 bytes) 
 21.23%   21.36%         C2, level 4  com.google.re2j.Machine::add, version 483 (348 bytes) 
  9.43%   10.66%         C2, level 4  com.google.re2j.Machine::match, version 530 (820 bytes) 
  5.68%    5.54%        runtime stub  StubRoutines::jint_disjoint_arraycopy (128 bytes) 
  1.75%    1.92%         C2, level 4  com.google.re2j.Machine::step, version 488 (62 bytes) 
  0.99%    0.98%   [kernel.kallsyms]  [unknown] (6 bytes) 
  0.49%    0.54%         C2, level 4  com.google.re2j.Machine::add, version 483 (45 bytes) 
  0.38%    0.41%         C2, level 4  com.google.re2j.Machine::match, version 530 (98 bytes) 
  0.29%    0.27%         C2, level 4  com.google.re2j.Machine::step, version 488 (84 bytes) 
  0.16%    0.05%         C2, level 4  com.google.re2j.Machine::init, version 534 (147 bytes) 
  0.15%    0.06%         C2, level 4  com.google.re2j.Machine::init, version 534 (115 bytes) 
  0.13%    0.02%   [kernel.kallsyms]  [unknown] (45 bytes) 
  0.13%    0.05%   [kernel.kallsyms]  [unknown] (74 bytes) 
  0.11%    0.04%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.09%    0.02%   [kernel.kallsyms]  [unknown] (41 bytes) 
  0.08%    0.02%         C2, level 4  com.google.re2j.Machine::init, version 534 (152 bytes) 
  0.06%    0.04%         C2, level 4  com.google.re2j.Machine::init, version 534 (45 bytes) 
  0.05%    0.07%         C2, level 4  com.google.re2j.Matcher::find, version 556 (20 bytes) 
  0.05%    0.15%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ (102 bytes) 
  2.88%    2.84%  <...other 552 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 50.33%   50.67%         C2, level 4  com.google.re2j.Machine::add, version 483 
 29.31%   28.36%         C2, level 4  com.google.re2j.Machine::step, version 488 
  9.94%   11.20%         C2, level 4  com.google.re2j.Machine::match, version 530 
  5.68%    5.54%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
  2.57%    2.02%   [kernel.kallsyms]  [unknown] 
  0.49%    0.18%         C2, level 4  com.google.re2j.Machine::init, version 534 
  0.29%    0.19%         C2, level 4  com.google.re2j.Matcher::find, version 556 
  0.10%    0.15%        libc-2.26.so  vfprintf 
  0.08%    0.06%      hsdis-amd64.so  [unknown] 
  0.07%    0.06%         C2, level 4  com.google.re2j.MachineInput$UTF16Input::indexOf, version 566 
  0.06%    0.02%           libjvm.so  _ZN13xmlTextStream5writeEPKcm 
  0.06%    0.17%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.05%    0.03%         C2, level 4  com.github.arnaudroger.re2j.Re2jFindRegex::testCombine, version 578 
  0.04%    0.00%  libpthread-2.26.so  __libc_write 
  0.04%    0.09%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.04%    0.02%           libjvm.so  _ZN18PSPromotionManager22copy_to_survivor_spaceILb0EEEP7oopDescS2_ 
  0.04%    0.01%         C2, level 4  java.util.Collections::shuffle, version 577 
  0.03%    0.02%        libc-2.26.so  __strchr_avx2 
  0.03%    0.10%        libc-2.26.so  _IO_fwrite 
  0.03%    0.01%           libjvm.so  _ZN7Monitor6unlockEv 
  0.71%    0.54%  <...other 100 warm methods...>
....................................................................................................
100.00%   99.46%  <totals>

....[Distribution by Source]........................................................................
 90.57%   90.75%         C2, level 4
  5.69%    5.56%        runtime stub
  2.57%    2.02%   [kernel.kallsyms]
  0.64%    0.94%           libjvm.so
  0.30%    0.58%        libc-2.26.so
  0.09%    0.07%      hsdis-amd64.so
  0.09%    0.04%  libpthread-2.26.so
  0.04%    0.02%         C1, level 3
  0.01%    0.00%              [vdso]
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                        Mode  Cnt     Score    Error  Units
Re2jFindRegex.testCombine       thrpt   20  3262.644 ± 88.218  ops/s
Re2jFindRegex.testCombine:·asm  thrpt            NaN             ---
