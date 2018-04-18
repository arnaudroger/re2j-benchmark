# JMH version: 1.19
# VM version: JDK 1.8.0_131, VM 25.131-b11
# VM invoker: /usr/lib/jvm/java-8-oracle/jre/bin/java
# VM options: <none>
# Warmup: 20 iterations, 1 s each
# Measurement: 20 iterations, 1 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Throughput, ops/time
# Benchmark: com.github.arnaudroger.re2j.Re2jFindRegex.testExp2

# Run progress: 0.00% complete, ETA 00:00:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 3366.723 ops/s
# Warmup Iteration   2: 5426.907 ops/s
# Warmup Iteration   3: 5429.304 ops/s
# Warmup Iteration   4: 5427.521 ops/s
# Warmup Iteration   5: 5473.211 ops/s
# Warmup Iteration   6: 5520.112 ops/s
# Warmup Iteration   7: 5528.812 ops/s
# Warmup Iteration   8: 5530.253 ops/s
# Warmup Iteration   9: 5528.367 ops/s
# Warmup Iteration  10: 5437.291 ops/s
# Warmup Iteration  11: 5425.314 ops/s
# Warmup Iteration  12: 5455.225 ops/s
# Warmup Iteration  13: 5511.132 ops/s
# Warmup Iteration  14: 5545.757 ops/s
# Warmup Iteration  15: 5513.379 ops/s
# Warmup Iteration  16: 5521.447 ops/s
# Warmup Iteration  17: 5486.312 ops/s
# Warmup Iteration  18: 5485.070 ops/s
# Warmup Iteration  19: 5484.486 ops/s
# Warmup Iteration  20: 5531.513 ops/s
Iteration   1: 5539.682 ops/s
Iteration   2: 5518.053 ops/s
Iteration   3: 5517.524 ops/s
Iteration   4: 5506.614 ops/s
Iteration   5: 5513.992 ops/s
Iteration   6: 5513.663 ops/s
Iteration   7: 5515.229 ops/s
Iteration   8: 5515.174 ops/s
Iteration   9: 5485.312 ops/s
Iteration  10: 5446.630 ops/s
Iteration  11: 5446.080 ops/s
Iteration  12: 5444.636 ops/s
Iteration  13: 5445.529 ops/s
Iteration  14: 5475.917 ops/s
Iteration  15: 5533.058 ops/s
Iteration  16: 5532.338 ops/s
Iteration  17: 5532.247 ops/s
Iteration  18: 5520.187 ops/s
Iteration  19: 5528.862 ops/s
Iteration  20: 5532.648 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  5503.169 ±(99.9%) 28.844 ops/s [Average]
  (min, avg, max) = (5444.636, 5503.169, 5539.682), stdev = 33.217
  CI (99.9%): [5474.325, 5532.013] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2:·asm":
PrintAssembly processed: 196042 total address lines.
Perf output processed (skipped 23.693 seconds):
 Column 1: cycles (20347 events)
 Column 2: instructions (20400 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 487 (494 bytes) 

                               # parm6:    [sp+0x78]   = int
                               # parm7:    [sp+0x80]   = boolean
                               0x00007fe901216440: mov    0x8(%rsi),%r10d
                               0x00007fe901216444: shl    $0x3,%r10
                               0x00007fe901216448: cmp    %r10,%rax
                               0x00007fe90121644b: jne    0x00007fe901045e20  ;   {runtime_call}
                               0x00007fe901216451: data16 xchg %ax,%ax
                               0x00007fe901216454: nopl   0x0(%rax,%rax,1)
                               0x00007fe90121645c: data16 data16 xchg %ax,%ax
                             [Verified Entry Point]
  0.02%    0.03%               0x00007fe901216460: mov    %eax,-0x14000(%rsp)
  0.15%    0.15%               0x00007fe901216467: push   %rbp
  0.06%    0.05%               0x00007fe901216468: sub    $0x60,%rsp         ;*synchronization entry
                                                                             ; - com.google.re2j.Machine::step@-1 (line 269)
  0.01%    0.02%               0x00007fe90121646c: mov    %edi,0x20(%rsp)
  0.20%    0.25%               0x00007fe901216470: mov    %r9d,0x14(%rsp)
  0.09%    0.03%               0x00007fe901216475: mov    %rcx,0x18(%rsp)
  0.07%    0.03%               0x00007fe90121647a: mov    %r8d,0x10(%rsp)
  0.06%    0.01%               0x00007fe90121647f: mov    %rdx,0x8(%rsp)
  0.13%    0.16%               0x00007fe901216484: mov    %rsi,0x28(%rsp)
  0.06%    0.03%               0x00007fe901216489: mov    0x14(%rsi),%r11d   ;*getfield re2
                                                                             ; - com.google.re2j.Machine::step@1 (line 269)
  0.00%    0.00%               0x00007fe90121648d: movzbl 0x18(%r12,%r11,8),%r11d  ;*getfield longest
                                                                             ; - com.google.re2j.Machine::step@4 (line 269)
                                                                             ; implicit exception: dispatches to 0x00007fe901216b9d
  0.06%    0.01%               0x00007fe901216493: mov    %r11d,0x24(%rsp)
  0.18%    0.09%               0x00007fe901216498: mov    0xc(%rdx),%r10d    ; implicit exception: dispatches to 0x00007fe901216bad
  0.03%    0.03%               0x00007fe90121649c: test   %r10d,%r10d
                               0x00007fe90121649f: jle    0x00007fe901216758  ;*if_icmpge
                                                                             ; - com.google.re2j.Machine::step@18 (line 270)
                               0x00007fe9012164a5: xor    %r10d,%r10d
           0.00%  ╭            0x00007fe9012164a8: jmpq   0x00007fe9012165e8
  0.53%    0.46%  │        ↗   0x00007fe9012164ad: cmp    $0xc,%r9d
                  │╭       │   0x00007fe9012164b1: je     0x00007fe901216522
  0.01%           ││       │   0x00007fe9012164b3: cmp    $0xc,%r9d
                  ││       │   0x00007fe9012164b7: jg     0x00007fe9012169b5
                  ││       │   0x00007fe9012164bd: cmp    $0xb,%r9d
                  ││╭      │   0x00007fe9012164c1: jne    0x00007fe9012164d2  ;*tableswitch
                  │││      │                                                 ; - com.google.re2j.Machine::step@114 (line 285)
                  │││      │   0x00007fe9012164c3: mov    0x20(%rsp),%r9d
                  │││      │   0x00007fe9012164c8: cmp    $0xa,%r9d
                  │││╭     │   0x00007fe9012164cc: je     0x00007fe901216565  ;*ifeq
                  ││││     │                                                 ; - com.google.re2j.Machine::step@363 (line 329)
  0.54%    0.45%  ││↘│ ↗↗  │   0x00007fe9012164d2: mov    %eax,0x74(%rsp)
  0.39%    0.23%  ││ │ ││  │   0x00007fe9012164d6: mov    %r10d,%ebp
                  ││ │ ││  │   0x00007fe9012164d9: mov    0x30(%r12,%rbx,8),%r8d
                  ││ │ ││  │   0x00007fe9012164de: mov    %r14,%r9
           0.00%  ││ │ ││  │   0x00007fe9012164e1: shl    $0x3,%r9           ;*getfield cap
                  ││ │ ││  │                                                 ; - com.google.re2j.Machine::step@172 (line 292)
  0.02%           ││ │ ││  │   0x00007fe9012164e5: mov    %r8,%rcx
                  ││ │ ││  │   0x00007fe9012164e8: shl    $0x3,%rcx          ;*getfield outInst
                  ││ │ ││  │                                                 ; - com.google.re2j.Machine::step@370 (line 330)
                  ││ │ ││  │   0x00007fe9012164ec: mov    0x28(%rsp),%rsi
  0.00%           ││ │ ││  │   0x00007fe9012164f1: mov    0x18(%rsp),%rdx
  0.02%           ││ │ ││  │   0x00007fe9012164f6: mov    0x14(%rsp),%r8d
                  ││ │ ││  │   0x00007fe9012164fb: mov    0x70(%rsp),%edi
  0.01%           ││ │ ││  │   0x00007fe9012164ff: mov    %r11,(%rsp)
  0.05%    0.01%  ││ │ ││  │   0x00007fe901216503: callq  0x00007fe901046020  ; OopMap{[8]=Oop [24]=Oop [40]=Oop off=200}
                  ││ │ ││  │                                                 ;*invokespecial add
                  ││ │ ││  │                                                 ; - com.google.re2j.Machine::step@384 (line 330)
                  ││ │ ││  │                                                 ;   {optimized virtual_call}
  0.00%           ││ │ ││  │   0x00007fe901216508: mov    %rax,%rcx
                  ││ │ ││  │   0x00007fe90121650b: test   %rax,%rax
                  ││ │ ││  │   0x00007fe90121650e: je     0x00007fe901216834  ;*ifnull
                  ││ │ ││  │                                                 ; - com.google.re2j.Machine::step@391 (line 332)
                  ││ │ ││  │   0x00007fe901216514: mov    0x20(%rsp),%r9d
                  ││ │ ││  │   0x00007fe901216519: mov    %ebp,%r10d
                  ││ │ ││  │   0x00007fe90121651c: mov    0x74(%rsp),%eax
                  ││ │╭││  │   0x00007fe901216520: jmp    0x00007fe901216568  ;*aload
                  ││ ││││  │                                                 ; - com.google.re2j.Machine::step@294 (line 311)
  1.05%    1.23%  │↘ ││││  │↗  0x00007fe901216522: cmp    $0xc,%r9d
                  │  ││││  ││  0x00007fe901216526: jne    0x00007fe9012169c5  ;*if_icmpne
                  │  ││││  ││                                                ; - com.google.re2j.Inst::matchRune@29 (line 63)
                  │  ││││  ││                                                ; - com.google.re2j.Machine::step@298 (line 311)
  0.39%    0.40%  │  ││││  ││  0x00007fe90121652c: mov    0x18(%r12,%rbx,8),%ecx  ;*getfield f0
                  │  ││││  ││                                                ; - com.google.re2j.Inst::matchRune@33 (line 64)
                  │  ││││  ││                                                ; - com.google.re2j.Machine::step@298 (line 311)
                  │  ││││  ││  0x00007fe901216531: cmp    0x20(%rsp),%ecx
                  │  ││╰│  ││  0x00007fe901216535: je     0x00007fe9012164d2  ;*if_icmpeq
                  │  ││ │  ││                                                ; - com.google.re2j.Inst::matchRune@37 (line 64)
                  │  ││ │  ││                                                ; - com.google.re2j.Machine::step@298 (line 311)
  0.70%    0.75%  │  ││ │  ││  0x00007fe901216537: mov    0x1c(%r12,%rbx,8),%ecx  ;*getfield f1
                  │  ││ │  ││                                                ; - com.google.re2j.Inst::matchRune@41 (line 64)
                  │  ││ │  ││                                                ; - com.google.re2j.Machine::step@298 (line 311)
  0.26%    0.17%  │  ││ │  ││  0x00007fe90121653c: cmp    0x20(%rsp),%ecx
  0.39%    0.49%  │  ││ ╰  ││  0x00007fe901216540: je     0x00007fe9012164d2  ;*if_icmpeq
                  │  ││    ││                                                ; - com.google.re2j.Inst::matchRune@45 (line 64)
                  │  ││    ││                                                ; - com.google.re2j.Machine::step@298 (line 311)
  0.86%    0.91%  │  ││    ││  0x00007fe901216542: mov    0x20(%r12,%rbx,8),%ebp  ;*getfield f2
                  │  ││    ││                                                ; - com.google.re2j.Inst::matchRune@49 (line 64)
                  │  ││    ││                                                ; - com.google.re2j.Machine::step@298 (line 311)
  0.04%    0.05%  │  ││    ││  0x00007fe901216547: cmp    0x20(%rsp),%ebp
                  │  ││    ││  0x00007fe90121654b: je     0x00007fe901216a0d  ;*if_icmpeq
                  │  ││    ││                                                ; - com.google.re2j.Inst::matchRune@53 (line 64)
                  │  ││    ││                                                ; - com.google.re2j.Machine::step@298 (line 311)
  0.82%    0.97%  │  ││    ││  0x00007fe901216551: mov    0x24(%r12,%rbx,8),%ebp  ;*getfield f3
                  │  ││    ││                                                ; - com.google.re2j.Inst::matchRune@57 (line 64)
                  │  ││    ││                                                ; - com.google.re2j.Machine::step@298 (line 311)
  0.07%    0.05%  │  ││    ││  0x00007fe901216556: cmp    0x20(%rsp),%ebp
                  │  ││    ││  0x00007fe90121655a: je     0x00007fe901216a41  ;*if_icmpne
                  │  ││    ││                                                ; - com.google.re2j.Inst::matchRune@61 (line 64)
                  │  ││    ││                                                ; - com.google.re2j.Machine::step@298 (line 311)
  0.68%    0.91%  │  ││    ││  0x00007fe901216560: mov    0x20(%rsp),%r9d    ;*goto
                  │  ││    ││                                                ; - com.google.re2j.Machine::step@291 (line 307)
           0.01%  │  ↘│    ││  0x00007fe901216565: mov    %r11,%rcx          ;*aload
                  │   │    ││                                                ; - com.google.re2j.Machine::step@389 (line 332)
  0.25%    0.26%  │   ↘    ││  0x00007fe901216568: mov    0x28(%rsp),%r11
  0.04%    0.03%  │        ││  0x00007fe90121656d: mov    0x24(%r11),%ebx    ;*getfield pool
                  │        ││                                                ; - com.google.re2j.Machine::free@5 (line 160)
                  │        ││                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.71%    0.90%  │        ││  0x00007fe901216571: mov    0xc(%r12,%rbx,8),%r11d  ;*arraylength
                  │        ││                                                ; - com.google.re2j.Machine::free@8 (line 160)
                  │        ││                                                ; - com.google.re2j.Machine::step@397 (line 333)
                  │        ││                                                ; implicit exception: dispatches to 0x00007fe901216b25
  0.03%    0.01%  │        ││  0x00007fe901216576: mov    0x28(%rsp),%r8
  0.19%    0.26%  │        ││  0x00007fe90121657b: mov    0xc(%r8),%ebp      ;*getfield poolSize
                  │        ││                                                ; - com.google.re2j.Machine::free@1 (line 160)
                  │        ││                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.05%    0.06%  │        ││  0x00007fe90121657f: cmp    %r11d,%ebp
                  │        ││  0x00007fe901216582: jge    0x00007fe90121697d  ;*if_icmplt
                  │        ││                                                ; - com.google.re2j.Machine::free@9 (line 160)
                  │        ││                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.76%    0.75%  │        ││  0x00007fe901216588: mov    %ebp,%r8d
           0.01%  │        ││  0x00007fe90121658b: inc    %r8d
  0.29%    0.24%  │        ││  0x00007fe90121658e: mov    0x28(%rsp),%rdi
  0.04%    0.03%  │        ││  0x00007fe901216593: mov    %r8d,0xc(%rdi)     ;*putfield poolSize
                  │        ││                                                ; - com.google.re2j.Machine::free@45 (line 163)
                  │        ││                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.79%    0.71%  │        ││  0x00007fe901216597: cmp    %r11d,%ebp
                  │        ││  0x00007fe90121659a: jae    0x00007fe9012168c1  ;*aastore
                  │        ││                                                ; - com.google.re2j.Machine::free@49 (line 163)
                  │        ││                                                ; - com.google.re2j.Machine::step@397 (line 333)
                  │        ││  0x00007fe9012165a0: mov    %rcx,%r11
  0.19%    0.16%  │        ││  0x00007fe9012165a3: shr    $0x3,%r11
  0.04%    0.05%  │        ││  0x00007fe9012165a7: lea    (%r12,%rbx,8),%r10  ;*getfield pool
                  │        ││                                                ; - com.google.re2j.Machine::free@5 (line 160)
                  │        ││                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.64%    0.63%  │        ││  0x00007fe9012165ab: lea    0x10(%r10,%rbp,4),%r10
  0.01%           │        ││  0x00007fe9012165b0: mov    %r11d,(%r10)
  0.27%    0.29%  │        ││  0x00007fe9012165b3: shr    $0x9,%r10
  0.01%    0.02%  │        ││  0x00007fe9012165b7: movabs $0x7fe912729000,%r11
  0.72%    0.70%  │        ││  0x00007fe9012165c1: mov    %r12b,(%r11,%r10,1)  ;*aastore
                  │        ││                                                ; - com.google.re2j.Machine::free@49 (line 163)
                  │        ││                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.13%    0.19%  │        ││  0x00007fe9012165c5: xor    %r10d,%r10d        ; OopMap{[8]=Oop [24]=Oop [40]=Oop off=392}
                  │        ││                                                ;*goto
                  │        ││                                                ; - com.google.re2j.Machine::step@403 (line 270)
  0.41%    0.29%  │       ↗││  0x00007fe9012165c8: test   %eax,0x18b0aa32(%rip)        # 0x00007fe919d21000
                  │       │││                                                ;*goto
                  │       │││                                                ; - com.google.re2j.Machine::step@403 (line 270)
                  │       │││                                                ;   {poll}
  0.32%    0.27%  │       │││  0x00007fe9012165ce: mov    0x8(%rsp),%r10
  0.88%    0.70%  │       │││  0x00007fe9012165d3: mov    0xc(%r10),%r10d
  0.34%    0.25%  │       │││  0x00007fe9012165d7: cmp    %r10d,%eax
                  │       │││  0x00007fe9012165da: jge    0x00007fe901216758
  0.37%    0.20%  │       │││  0x00007fe9012165e0: mov    %r9d,0x20(%rsp)
  0.29%    0.31%  │       │││  0x00007fe9012165e5: mov    %eax,%r10d         ;*aload_1
                  │       │││                                                ; - com.google.re2j.Machine::step@21 (line 271)
  0.85%    0.61%  ↘       │││  0x00007fe9012165e8: mov    0x8(%rsp),%r11
  0.30%    0.25%          │││  0x00007fe9012165ed: mov    0x10(%r11),%r11d   ;*getfield dense
                          │││                                                ; - com.google.re2j.Machine::step@22 (line 271)
  0.42%    0.38%          │││  0x00007fe9012165f1: mov    0xc(%r12,%r11,8),%r9d  ; implicit exception: dispatches to 0x00007fe901216add
  0.53%    0.58%          │││  0x00007fe9012165f6: cmp    %r9d,%r10d
                          │││  0x00007fe9012165f9: jae    0x00007fe901216845
  0.90%    0.65%          │││  0x00007fe9012165ff: shl    $0x3,%r11
  0.24%    0.18%          │││  0x00007fe901216603: mov    0x10(%r11,%r10,4),%r11d  ;*aaload
                          │││                                                ; - com.google.re2j.Machine::step@27 (line 271)
  0.43%    0.39%          │││  0x00007fe901216608: mov    0x10(%r12,%r11,8),%r8d  ;*getfield thread
                          │││                                                ; - com.google.re2j.Machine::step@40 (line 275)
                          │││                                                ; implicit exception: dispatches to 0x00007fe901216b35
  1.51%    1.65%          │││  0x00007fe90121660d: mov    %r10d,%eax
  0.53%    0.39%          │││  0x00007fe901216610: inc    %eax               ;*iadd
                          │││                                                ; - com.google.re2j.Machine::step@237 (line 298)
  0.20%    0.15%          │││  0x00007fe901216612: test   %r8d,%r8d
                         ╭│││  0x00007fe901216615: jne    0x00007fe901216623  ;*ifnonnull
                         ││││                                                ; - com.google.re2j.Machine::step@47 (line 276)
  0.16%    0.24%         ││││  0x00007fe901216617: mov    0x24(%rsp),%r10d
  0.24%    0.20%         ││││  0x00007fe90121661c: mov    0x20(%rsp),%r9d
  0.18%    0.19%         │╰││  0x00007fe901216621: jmp    0x00007fe9012165c8
  0.40%    0.38%         ↘ ││  0x00007fe901216623: mov    0x24(%rsp),%r9d
  0.07%    0.05%           ││  0x00007fe901216628: test   %r9d,%r9d
                           ││  0x00007fe90121662b: jne    0x00007fe901216935  ;*ifeq
                           ││                                                ; - com.google.re2j.Machine::step@55 (line 279)
  0.55%    0.34%           ││  0x00007fe901216631: mov    0x10(%r12,%r8,8),%ebx  ;*getfield inst
                           ││                                                ; - com.google.re2j.Machine::step@101 (line 283)
  1.39%    1.33%           ││  0x00007fe901216636: mov    0xc(%r12,%rbx,8),%r9d  ;*getfield op
                           ││                                                ; - com.google.re2j.Machine::step@111 (line 285)
                           ││                                                ; implicit exception: dispatches to 0x00007fe901216b15
  3.54%    3.49%           ││  0x00007fe90121663b: mov    0xc(%r12,%r8,8),%r14d  ;*getfield cap
                           ││                                                ; - com.google.re2j.Machine::step@172 (line 292)
  0.01%    0.03%           ││  0x00007fe901216640: lea    (%r12,%r8,8),%r11  ;*getfield thread
                           ││                                                ; - com.google.re2j.Machine::step@40 (line 275)
  0.09%    0.07%           ││  0x00007fe901216644: cmp    $0x9,%r9d
                           ││  0x00007fe901216648: je     0x00007fe90121672e
  0.92%    0.93%           ││  0x00007fe90121664e: cmp    $0x9,%r9d
                           ╰│  0x00007fe901216652: jg     0x00007fe9012164ad
                            │  0x00007fe901216658: cmp    $0x7,%r9d
                            │  0x00007fe90121665c: je     0x00007fe9012169b5
                            │  0x00007fe901216662: cmp    $0x7,%r9d
                            ╰  0x00007fe901216666: jg     0x00007fe901216522
                               0x00007fe90121666c: cmp    $0x6,%r9d
                               0x00007fe901216670: jne    0x00007fe9012169b5  ;*tableswitch
                                                                             ; - com.google.re2j.Machine::step@114 (line 285)
                               0x00007fe901216676: mov    0x78(%rsp),%r9d
                               0x00007fe90121667b: cmp    $0x2,%r9d
....................................................................................................
 29.20%   27.86%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 480 (258 bytes) 

                      # parm4:    rdi       = int
                      # parm5:    [sp+0x70]   = &apos;com/google/re2j/Machine$Thread&apos;  (sp of caller)
                      0x00007fe90120c360: mov    0x8(%rsi),%r10d    ;   {no_reloc}
                      0x00007fe90120c364: shl    $0x3,%r10
                      0x00007fe90120c368: cmp    %r10,%rax
                      0x00007fe90120c36b: jne    0x00007fe901045e20  ;   {runtime_call}
                      0x00007fe90120c371: data16 xchg %ax,%ax
                      0x00007fe90120c374: nopl   0x0(%rax,%rax,1)
                      0x00007fe90120c37c: data16 data16 xchg %ax,%ax
                    [Verified Entry Point]
  0.36%    0.37%      0x00007fe90120c380: mov    %eax,-0x14000(%rsp)
  1.47%    1.50%      0x00007fe90120c387: push   %rbp
  0.33%    0.11%      0x00007fe90120c388: sub    $0x60,%rsp         ;*synchronization entry
                                                                    ; - com.google.re2j.Machine::add@-1 (line 345)
  1.08%    1.13%      0x00007fe90120c38c: mov    %edi,0x38(%rsp)
  0.65%    0.64%      0x00007fe90120c390: mov    %r9,0x30(%rsp)
  0.14%    0.11%      0x00007fe90120c395: mov    %r8d,0x20(%rsp)
  0.18%    0.14%      0x00007fe90120c39a: mov    %rsi,0x8(%rsp)
  0.78%    1.02%      0x00007fe90120c39f: mov    %rdx,0x28(%rsp)
  0.56%    0.54%      0x00007fe90120c3a4: mov    %rcx,0x48(%rsp)
  0.21%    0.13%      0x00007fe90120c3a9: mov    0x28(%rcx),%r11d   ;*getfield pc
                                                                    ; - com.google.re2j.Machine::add@2 (line 345)
                                                                    ; implicit exception: dispatches to 0x00007fe90120c66d
  0.13%    0.19%      0x00007fe90120c3ad: mov    0x14(%rdx),%ebx    ;*getfield sparse
                                                                    ; - com.google.re2j.Machine$Queue::contains@1 (line 46)
                                                                    ; - com.google.re2j.Machine::add@5 (line 345)
                                                                    ; implicit exception: dispatches to 0x00007fe90120c67d
  0.84%    0.73%      0x00007fe90120c3b0: mov    0xc(%r12,%rbx,8),%r8d  ; implicit exception: dispatches to 0x00007fe90120c691
  0.68%    0.52%      0x00007fe90120c3b5: cmp    %r8d,%r11d
                      0x00007fe90120c3b8: jae    0x00007fe90120c528  ;*iaload
                                                                    ; - com.google.re2j.Machine$Queue::contains@5 (line 46)
                                                                    ; - com.google.re2j.Machine::add@5 (line 345)
  0.22%    0.17%      0x00007fe90120c3be: mov    0x10(%rdx),%r9d    ;*getfield dense
                                                                    ; - com.google.re2j.Machine$Queue::contains@18 (line 50)
                                                                    ; - com.google.re2j.Machine::add@5 (line 345)
  0.14%    0.14%      0x00007fe90120c3c2: mov    0xc(%rdx),%ecx     ;*getfield size
                                                                    ; - com.google.re2j.Machine$Queue::contains@9 (line 47)
                                                                    ; - com.google.re2j.Machine::add@5 (line 345)
  0.89%    0.76%      0x00007fe90120c3c5: lea    (%r12,%rbx,8),%rdi
  0.53%    0.67%      0x00007fe90120c3c9: mov    0x10(%rdi,%r11,4),%ebp  ;*iaload
                                                                    ; - com.google.re2j.Machine$Queue::contains@5 (line 46)
                                                                    ; - com.google.re2j.Machine::add@5 (line 345)
  0.29%    0.35%      0x00007fe90120c3ce: cmp    %ecx,%ebp
                  ╭   0x00007fe90120c3d0: jl     0x00007fe90120c467  ;*invokevirtual contains
                  │                                                 ; - com.google.re2j.Machine::add@5 (line 345)
  0.70%    0.69%  │↗  0x00007fe90120c3d6: mov    %ecx,%r10d
  0.67%    0.57%  ││  0x00007fe90120c3d9: inc    %r10d
  0.56%    0.53%  ││  0x00007fe90120c3dc: mov    0x28(%rsp),%rdx
  0.36%    0.33%  ││  0x00007fe90120c3e1: mov    %r10d,0xc(%rdx)    ;*putfield size
                  ││                                                ; - com.google.re2j.Machine$Queue::add@8 (line 57)
                  ││                                                ; - com.google.re2j.Machine::add@19 (line 348)
  0.76%    0.65%  ││  0x00007fe90120c3e5: cmp    %r8d,%r11d
                  ││  0x00007fe90120c3e8: jae    0x00007fe90120c559
  0.70%    0.66%  ││  0x00007fe90120c3ee: mov    %ecx,0x10(%rdi,%r11,4)  ;*iastore
                  ││                                                ; - com.google.re2j.Machine$Queue::add@18 (line 58)
                  ││                                                ; - com.google.re2j.Machine::add@19 (line 348)
  0.48%    0.37%  ││  0x00007fe90120c3f3: mov    0xc(%r12,%r9,8),%r10d  ; implicit exception: dispatches to 0x00007fe90120c6a5
  0.33%    0.34%  ││  0x00007fe90120c3f8: cmp    %r10d,%ecx
                  ││  0x00007fe90120c3fb: jae    0x00007fe90120c599  ;*aaload
                  ││                                                ; - com.google.re2j.Machine$Queue::add@24 (line 59)
                  ││                                                ; - com.google.re2j.Machine::add@19 (line 348)
  0.47%    0.58%  ││  0x00007fe90120c401: lea    (%r12,%r9,8),%rdi  ;*getfield dense
                  ││                                                ; - com.google.re2j.Machine$Queue::contains@18 (line 50)
                  ││                                                ; - com.google.re2j.Machine::add@5 (line 345)
  0.71%    1.02%  ││  0x00007fe90120c405: lea    0x10(%rdi,%rcx,4),%rbp
  0.34%    0.42%  ││  0x00007fe90120c40a: mov    0x0(%rbp),%r8d     ;*aaload
                  ││                                                ; - com.google.re2j.Machine$Queue::add@24 (line 59)
                  ││                                                ; - com.google.re2j.Machine::add@19 (line 348)
  0.18%    0.19%  ││  0x00007fe90120c40e: test   %r8d,%r8d
                  ││  0x00007fe90120c411: je     0x00007fe90120c4b5  ;*ifnonnull
                  ││                                                ; - com.google.re2j.Machine$Queue::add@27 (line 60)
                  ││                                                ; - com.google.re2j.Machine::add@19 (line 348)
  0.40%    0.47%  ││  0x00007fe90120c417: lea    (%r12,%r8,8),%rbx  ;*aload_3
                  ││                                                ; - com.google.re2j.Machine$Queue::add@45 (line 63)
                  ││                                                ; - com.google.re2j.Machine::add@19 (line 348)
  0.68%    0.59%  ││  0x00007fe90120c41b: mov    %r11d,0xc(%rbx)    ;*putfield pc
                  ││                                                ; - com.google.re2j.Machine$Queue::add@52 (line 64)
                  ││                                                ; - com.google.re2j.Machine::add@19 (line 348)
  2.22%    2.22%  ││  0x00007fe90120c41f: mov    0x48(%rsp),%r10
  0.15%    0.14%  ││  0x00007fe90120c424: mov    0xc(%r10),%r10d    ;*getfield op
                  ││                                                ; - com.google.re2j.Machine::add@25 (line 349)
  0.76%    0.83%  ││  0x00007fe90120c428: mov    %r12d,0x10(%rbx)   ;*putfield thread
                  ││                                                ; - com.google.re2j.Machine$Queue::add@47 (line 63)
                  ││                                                ; - com.google.re2j.Machine::add@19 (line 348)
  0.84%    1.16%  ││  0x00007fe90120c42c: mov    %r10d,%r8d
  0.58%    0.69%  ││  0x00007fe90120c42f: dec    %r8d
  0.27%    0.29%  ││  0x00007fe90120c432: cmp    $0xc,%r8d
                  ││  0x00007fe90120c436: jae    0x00007fe90120c5d9  ;*tableswitch
                  ││                                                ; - com.google.re2j.Machine::add@28 (line 349)
  0.56%    0.50%  ││  0x00007fe90120c43c: mov    0x48(%rsp),%r11
  0.78%    0.74%  ││  0x00007fe90120c441: mov    0x14(%r11),%r11d   ;*getfield arg
                  ││                                                ; - com.google.re2j.Machine::add@145 (line 363)
  0.65%    0.59%  ││  0x00007fe90120c445: mov    0x48(%rsp),%r8
  0.07%    0.02%  ││  0x00007fe90120c44a: mov    0x30(%r8),%r8d
  0.57%    0.63%  ││  0x00007fe90120c44e: movslq %r10d,%r10
  0.68%    0.69%  ││  0x00007fe90120c451: mov    %r8,%rcx
  0.60%    0.52%  ││  0x00007fe90120c454: shl    $0x3,%rcx          ;*getfield outInst
                  ││                                                ; - com.google.re2j.Machine::add@180 (line 369)
  0.13%    0.15%  ││  0x00007fe90120c458: movabs $0x7fe90120c300,%r8  ;   {section_word}
  0.45%    0.36%  ││  0x00007fe90120c462: jmpq   *-0x8(%r8,%r10,8)  ;*tableswitch
                  ││                                                ; - com.google.re2j.Machine::add@28 (line 349)
  0.10%    0.07%  ↘│  0x00007fe90120c467: mov    0xc(%r12,%r9,8),%edx  ; implicit exception: dispatches to 0x00007fe90120c6f1
  0.15%    0.16%   │  0x00007fe90120c46c: cmp    %edx,%ebp
                   │  0x00007fe90120c46e: jae    0x00007fe90120c5e9
  0.11%    0.06%   │  0x00007fe90120c474: lea    (%r12,%r9,8),%r10
  0.01%    0.00%   │  0x00007fe90120c478: mov    0x10(%r10,%rbp,4),%r10d  ;*aaload
                   │                                                ; - com.google.re2j.Machine$Queue::contains@22 (line 50)
                   │                                                ; - com.google.re2j.Machine::add@5 (line 345)
  0.14%    0.14%   │  0x00007fe90120c47d: mov    0xc(%r12,%r10,8),%ebp  ;*getfield pc
                   │                                                ; - com.google.re2j.Machine$Queue::contains@29 (line 51)
                   │                                                ; - com.google.re2j.Machine::add@5 (line 345)
                   │                                                ; implicit exception: dispatches to 0x00007fe90120c711
  0.48%    0.57%   │  0x00007fe90120c482: cmp    %r11d,%ebp
                   ╰  0x00007fe90120c485: jne    0x00007fe90120c3d6  ;*if_icmpne
                                                                    ; - com.google.re2j.Machine$Queue::contains@33 (line 51)
                                                                    ; - com.google.re2j.Machine::add@5 (line 345)
                      0x00007fe90120c48b: mov    $0xffffff65,%esi
                      0x00007fe90120c490: rex.W pushq 0x28(%rsp)
                      0x00007fe90120c495: rex.W popq 0x10(%rsp)
                      0x00007fe90120c49a: rex.W pushq 0x30(%rsp)
....................................................................................................
 27.12%   27.17%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 480 (361 bytes) 

                          0x00007fe90120c87a: mov    0x70(%rsp),%r10
                          0x00007fe90120c87f: mov    %r10,(%rsp)
                          0x00007fe90120c883: callq  0x00007fe901046020  ; OopMap{off=1320}
                                                                        ;*invokespecial add
                                                                        ; - com.google.re2j.Machine::add@190 (line 369)
                                                                        ;   {optimized virtual_call}
                  ╭       0x00007fe90120c888: jmpq   0x00007fe90120c9e9
                  │       0x00007fe90120c88d: mov    0x70(%rsp),%rax
                  │╭      0x00007fe90120c892: jmpq   0x00007fe90120c9e9  ;*tableswitch
                  ││                                                    ; - com.google.re2j.Machine::add@28 (line 349)
  1.10%    1.05%  ││      0x00007fe90120c897: mov    0x8(%rsp),%rsi
  0.07%    0.03%  ││      0x00007fe90120c89c: mov    0x28(%rsp),%rdx
  0.15%    0.09%  ││      0x00007fe90120c8a1: mov    0x20(%rsp),%r8d
  0.30%    0.24%  ││      0x00007fe90120c8a6: mov    0x30(%rsp),%r9
  0.47%    0.37%  ││      0x00007fe90120c8ab: mov    0x38(%rsp),%edi
  0.03%    0.02%  ││      0x00007fe90120c8af: mov    0x70(%rsp),%r10
  0.09%    0.13%  ││      0x00007fe90120c8b4: mov    %r10,(%rsp)
  0.21%    0.25%  ││      0x00007fe90120c8b8: mov    %rsi,%rbp
  0.41%    0.28%  ││      0x00007fe90120c8bb: callq  0x00007fe901046020  ; OopMap{rbp=Oop [40]=Oop [48]=Oop [72]=Oop off=1376}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@118 (line 358)
                  ││                                                    ;   {optimized virtual_call}
  0.14%    0.12%  ││      0x00007fe90120c8c0: mov    0x48(%rsp),%r10
  0.05%    0.07%  ││      0x00007fe90120c8c5: mov    0x34(%r10),%r11d
  0.57%    0.69%  ││      0x00007fe90120c8c9: mov    %r11,%rcx
  0.14%    0.09%  ││      0x00007fe90120c8cc: shl    $0x3,%rcx          ;*getfield argInst
                  ││                                                    ; - com.google.re2j.Machine::add@126 (line 359)
  0.07%    0.07%  ││      0x00007fe90120c8d0: mov    %rbp,%rsi
  0.03%    0.01%  ││      0x00007fe90120c8d3: mov    0x28(%rsp),%rdx
  0.51%    0.56%  ││      0x00007fe90120c8d8: mov    0x20(%rsp),%r8d
  0.12%    0.13%  ││      0x00007fe90120c8dd: mov    0x30(%rsp),%r9
  0.05%    0.06%  ││      0x00007fe90120c8e2: mov    0x38(%rsp),%edi
  0.05%    0.02%  ││      0x00007fe90120c8e6: mov    %rax,(%rsp)
  0.56%    0.67%  ││      0x00007fe90120c8ea: nop
  0.14%    0.16%  ││      0x00007fe90120c8eb: callq  0x00007fe901046020  ; OopMap{off=1424}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@136 (line 359)
                  ││                                                    ;   {optimized virtual_call}
  0.43%    0.32%  ││╭     0x00007fe90120c8f0: jmpq   0x00007fe90120c9e9  ;*aload
                  │││                                                   ; - com.google.re2j.Machine::add@274 (line 389)
  1.40%    1.15%  │││     0x00007fe90120c8f5: mov    0x48(%rsp),%r10
  0.05%    0.03%  │││     0x00007fe90120c8fa: shr    $0x3,%r10          ;*putfield inst
                  │││                                                   ; - com.google.re2j.Machine::alloc@45 (line 154)
                  │││                                                   ; - com.google.re2j.Machine::add@281 (line 390)
  0.08%    0.13%  │││     0x00007fe90120c8fe: mov    %r10d,0x18(%rsp)
  0.37%    0.34%  │││     0x00007fe90120c903: mov    0x70(%rsp),%rbp
  0.45%    0.49%  │││     0x00007fe90120c908: test   %rbp,%rbp
                  │││╭    0x00007fe90120c90b: jne    0x00007fe90120c9f5  ;*ifnonnull
                  ││││                                                  ; - com.google.re2j.Machine::add@276 (line 389)
  0.03%    0.07%  ││││    0x00007fe90120c911: mov    0x8(%rsp),%r10
  0.15%    0.13%  ││││    0x00007fe90120c916: mov    0xc(%r10),%r10d    ;*getfield poolSize
                  ││││                                                  ; - com.google.re2j.Machine::alloc@1 (line 148)
                  ││││                                                  ; - com.google.re2j.Machine::add@281 (line 390)
  0.33%    0.42%  ││││    0x00007fe90120c91a: test   %r10d,%r10d
                  ││││    0x00007fe90120c91d: jle    0x00007fe90120ca3a  ;*ifle
                  ││││                                                  ; - com.google.re2j.Machine::alloc@4 (line 148)
                  ││││                                                  ; - com.google.re2j.Machine::add@281 (line 390)
  0.47%    0.47%  ││││    0x00007fe90120c923: mov    0x8(%rsp),%r11
  0.05%    0.05%  ││││    0x00007fe90120c928: mov    0x24(%r11),%r9d    ;*getfield pool
                  ││││                                                  ; - com.google.re2j.Machine::alloc@18 (line 150)
                  ││││                                                  ; - com.google.re2j.Machine::add@281 (line 390)
  0.13%    0.12%  ││││    0x00007fe90120c92c: mov    %r10d,%ebp
  0.40%    0.41%  ││││    0x00007fe90120c92f: dec    %ebp               ;*isub
                  ││││                                                  ; - com.google.re2j.Machine::alloc@13 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@281 (line 390)
  0.34%    0.44%  ││││    0x00007fe90120c931: mov    %ebp,0xc(%r11)     ;*putfield poolSize
                  ││││                                                  ; - com.google.re2j.Machine::alloc@14 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@281 (line 390)
  0.05%    0.05%  ││││    0x00007fe90120c935: mov    0xc(%r12,%r9,8),%r8d  ; implicit exception: dispatches to 0x00007fe90120c6e1
  0.12%    0.20%  ││││    0x00007fe90120c93a: cmp    %r8d,%ebp
                  ││││    0x00007fe90120c93d: jae    0x00007fe90120cb3e
  0.34%    0.41%  ││││    0x00007fe90120c943: lea    (%r12,%r9,8),%r11
  0.44%    0.48%  ││││    0x00007fe90120c947: mov    0xc(%r11,%r10,4),%r10d  ;*aaload
                  ││││                                                  ; - com.google.re2j.Machine::alloc@25 (line 150)
                  ││││                                                  ; - com.google.re2j.Machine::add@281 (line 390)
  0.06%    0.05%  ││││    0x00007fe90120c94c: test   %r10d,%r10d
                  ││││    0x00007fe90120c94f: je     0x00007fe90120cb59  ;*putfield inst
                  ││││                                                  ; - com.google.re2j.Machine::alloc@45 (line 154)
                  ││││                                                  ; - com.google.re2j.Machine::add@281 (line 390)
  0.09%    0.13%  ││││    0x00007fe90120c955: mov    %r10,%rbp
  0.37%    0.29%  ││││    0x00007fe90120c958: shl    $0x3,%rbp          ;*aload_2
                  ││││                                                  ; - com.google.re2j.Machine::alloc@43 (line 154)
                  ││││                                                  ; - com.google.re2j.Machine::add@281 (line 390)
  0.41%    0.35%  ││││    0x00007fe90120c95c: mov    0x18(%rsp),%r11d
  0.04%    0.10%  ││││    0x00007fe90120c961: mov    %r11d,0x10(%rbp)
  1.30%    1.24%  ││││    0x00007fe90120c965: mov    %rbp,%r10
  0.26%    0.13%  ││││    0x00007fe90120c968: shr    $0x9,%r10
  0.17%    0.25%  ││││    0x00007fe90120c96c: movabs $0x7fe912729000,%r11
  0.03%    0.02%  ││││    0x00007fe90120c976: mov    %r12b,(%r11,%r10,1)  ;*aload
                  ││││                                                  ; - com.google.re2j.Machine::add@295 (line 394)
  0.60%    0.59%  ││││ ↗  0x00007fe90120c97a: mov    0x30(%rsp),%rdi
  0.33%    0.31%  ││││ │  0x00007fe90120c97f: mov    0xc(%rdi),%r10d    ;*arraylength
                  ││││ │                                                ; - com.google.re2j.Machine::add@297 (line 394)
                  ││││ │                                                ; implicit exception: dispatches to 0x00007fe90120c6b9
  0.23%    0.25%  ││││ │  0x00007fe90120c983: test   %r10d,%r10d
                  ││││ │  0x00007fe90120c986: jle    0x00007fe90120cb8a  ;*ifle
                  ││││ │                                                ; - com.google.re2j.Machine::add@298 (line 394)
  0.03%    0.04%  ││││ │  0x00007fe90120c98c: mov    0xc(%rbp),%r8d     ;*getfield cap
                  ││││ │                                                ; - com.google.re2j.Machine::add@303 (line 394)
  0.59%    0.63%  ││││ │  0x00007fe90120c990: mov    %r8,%r11
  0.35%    0.30%  ││││ │  0x00007fe90120c993: shl    $0x3,%r11
  0.24%    0.34%  ││││ │  0x00007fe90120c997: cmp    %rdi,%r11
                  ││││╭│  0x00007fe90120c99a: je     0x00007fe90120c9c7  ;*if_acmpeq
                  ││││││                                                ; - com.google.re2j.Machine::add@308 (line 394)
  0.05%    0.06%  ││││││  0x00007fe90120c99c: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x00007fe90120c6c9
  1.30%    1.39%  ││││││  0x00007fe90120c9a1: lea    (%r12,%r8,8),%rcx  ;*getfield cap
                  ││││││                                                ; - com.google.re2j.Machine::add@303 (line 394)
  0.21%    0.27%  ││││││  0x00007fe90120c9a5: cmp    %r10d,%r11d
                  ││││││  0x00007fe90120c9a8: jb     0x00007fe90120cb69
  1.48%    1.53%  ││││││  0x00007fe90120c9ae: lea    0x10(%r12,%r8,8),%rsi
  0.01%    0.03%  ││││││  0x00007fe90120c9b3: add    $0x10,%rdi
  0.08%    0.03%  ││││││  0x00007fe90120c9b7: movslq %r10d,%rdx
  0.10%    0.23%  ││││││  0x00007fe90120c9ba: movabs $0x7fe901052640,%r10
  0.78%    0.88%  ││││││  0x00007fe90120c9c4: callq  *%r10              ;*aload
                  ││││││                                                ; - com.google.re2j.Machine::add@326 (line 397)
           0.00%  ││││↘│  0x00007fe90120c9c7: mov    %rbx,%r10
  0.44%    0.61%  ││││ │  0x00007fe90120c9ca: mov    %rbp,%r8
  0.41%    0.34%  ││││ │  0x00007fe90120c9cd: shr    $0x3,%r8
  0.17%    0.13%  ││││ │  0x00007fe90120c9d1: mov    %r8d,0x10(%rbx)
  0.01%    0.00%  ││││ │  0x00007fe90120c9d5: shr    $0x9,%r10
  0.59%    0.65%  ││││ │  0x00007fe90120c9d9: movabs $0x7fe912729000,%r11
  0.29%    0.31%  ││││ │  0x00007fe90120c9e3: mov    %r12b,(%r11,%r10,1)  ;*putfield thread
                  ││││ │                                                ; - com.google.re2j.Machine::add@330 (line 397)
  0.18%    0.22%  ││││ │  0x00007fe90120c9e7: xor    %eax,%eax          ;*goto
                  ││││ │                                                ; - com.google.re2j.Machine::add@195 (line 370)
  0.82%    0.70%  ↘↘↘│ │  0x00007fe90120c9e9: add    $0x60,%rsp
  0.86%    0.83%     │ │  0x00007fe90120c9ed: pop    %rbp
  0.19%    0.17%     │ │  0x00007fe90120c9ee: test   %eax,0x18b1460c(%rip)        # 0x00007fe919d21000
                     │ │                                                ;   {poll_return}
  0.80%    0.84%     │ │  0x00007fe90120c9f4: retq   
           0.00%     ↘ │  0x00007fe90120c9f5: mov    %r10d,0x10(%rbp)
  0.00%                │  0x00007fe90120c9f9: mov    %rbp,%r10
                       │  0x00007fe90120c9fc: shr    $0x9,%r10
  0.03%    0.00%       │  0x00007fe90120ca00: movabs $0x7fe912729000,%r11
                       │  0x00007fe90120ca0a: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                       │                                                ; - com.google.re2j.Machine::add@292 (line 392)
                       ╰  0x00007fe90120ca0e: jmpq   0x00007fe90120c97a  ;*tableswitch
                                                                        ; - com.google.re2j.Machine::add@28 (line 349)
                          0x00007fe90120ca13: mov    0x8(%rsp),%rsi
                          0x00007fe90120ca18: mov    0x28(%rsp),%rdx
                          0x00007fe90120ca1d: mov    0x20(%rsp),%r8d
                          0x00007fe90120ca22: mov    0x30(%rsp),%r9
                          0x00007fe90120ca27: mov    %r10d,%edi
                          0x00007fe90120ca2a: mov    0x70(%rsp),%r10
....................................................................................................
 24.81%   25.06%  <total for region 3>

....[Hottest Regions]...............................................................................
 29.20%   27.86%         C2, level 4  com.google.re2j.Machine::step, version 487 (494 bytes) 
 27.12%   27.17%         C2, level 4  com.google.re2j.Machine::add, version 480 (258 bytes) 
 24.81%   25.06%         C2, level 4  com.google.re2j.Machine::add, version 480 (361 bytes) 
  8.50%    9.08%         C2, level 4  com.google.re2j.Machine::match, version 527 (942 bytes) 
  6.68%    7.84%        runtime stub  StubRoutines::jint_disjoint_arraycopy (128 bytes) 
  0.38%    0.37%   [kernel.kallsyms]  [unknown] (6 bytes) 
  0.29%    0.10%         C2, level 4  com.google.re2j.Machine::init, version 537 (250 bytes) 
  0.25%    0.19%         C2, level 4  com.google.re2j.Machine::step, version 487 (46 bytes) 
  0.11%    0.00%         C2, level 4  com.google.re2j.Machine::step, version 487 (12 bytes) 
  0.11%    0.01%   [kernel.kallsyms]  [unknown] (49 bytes) 
  0.09%    0.02%   [kernel.kallsyms]  [unknown] (11 bytes) 
  0.09%    0.02%   [kernel.kallsyms]  [unknown] (27 bytes) 
  0.07%    0.01%   [kernel.kallsyms]  [unknown] (24 bytes) 
  0.05%    0.02%   [kernel.kallsyms]  [unknown] (32 bytes) 
  0.05%    0.00%         C2, level 4  com.google.re2j.Machine::init, version 537 (17 bytes) 
  0.05%    0.02%         C2, level 4  com.google.re2j.Machine::init, version 537 (18 bytes) 
  0.04%    0.01%         C2, level 4  com.google.re2j.Matcher::find, version 556 (30 bytes) 
  0.04%    0.08%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ (97 bytes) 
  0.03%    0.01%   [kernel.kallsyms]  [unknown] (39 bytes) 
  0.03%    0.03%         C2, level 4  java.util.Collections::shuffle, version 561 (53 bytes) 
  1.98%    2.06%  <...other 419 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 51.93%   52.24%         C2, level 4  com.google.re2j.Machine::add, version 480 
 29.58%   28.08%         C2, level 4  com.google.re2j.Machine::step, version 487 
  8.55%    9.11%         C2, level 4  com.google.re2j.Machine::match, version 527 
  6.68%    7.84%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
  1.60%    1.26%   [kernel.kallsyms]  [unknown] 
  0.46%    0.13%         C2, level 4  com.google.re2j.Machine::init, version 537 
  0.22%    0.14%         C2, level 4  com.google.re2j.Matcher::find, version 556 
  0.11%    0.11%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 627 
  0.07%    0.09%        libc-2.26.so  vfprintf 
  0.06%    0.05%         C2, level 4  java.util.Collections::shuffle, version 561 
  0.05%    0.08%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.04%    0.07%      hsdis-amd64.so  decode_instructions 
  0.03%    0.01%  libpthread-2.26.so  __libc_write 
  0.03%    0.01%        libc-2.26.so  _IO_fflush 
  0.03%    0.01%        libc-2.26.so  _IO_default_xsputn 
  0.02%    0.04%        libc-2.26.so  _IO_fwrite 
  0.02%    0.04%           libjvm.so  _ZN12outputStream15update_positionEPKcm 
  0.02%    0.01%        runtime stub  StubRoutines::arrayof_jint_fill 
  0.02%    0.02%           libjvm.so  _ZN13xmlTextStream5writeEPKcm 
  0.01%    0.08%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.43%    0.23%  <...other 67 warm methods...>
....................................................................................................
100.00%   99.67%  <totals>

....[Distribution by Source]........................................................................
 90.92%   89.88%         C2, level 4
  6.70%    7.86%        runtime stub
  1.60%    1.26%   [kernel.kallsyms]
  0.41%    0.54%           libjvm.so
  0.21%    0.30%        libc-2.26.so
  0.05%    0.07%      hsdis-amd64.so
  0.04%    0.06%  libpthread-2.26.so
  0.03%    0.03%         interpreter
  0.01%                       [vdso]
  0.01%                  C1, level 3
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                     Mode  Cnt     Score    Error  Units
Re2jFindRegex.testExp2       thrpt   20  5503.169 ± 28.844  ops/s
Re2jFindRegex.testExp2:·asm  thrpt            NaN             ---
