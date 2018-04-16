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
# Warmup Iteration   1: 3935.793 ops/s
# Warmup Iteration   2: 6960.327 ops/s
# Warmup Iteration   3: 7140.204 ops/s
# Warmup Iteration   4: 7062.958 ops/s
# Warmup Iteration   5: 7118.764 ops/s
# Warmup Iteration   6: 7160.649 ops/s
# Warmup Iteration   7: 7182.746 ops/s
# Warmup Iteration   8: 7102.585 ops/s
# Warmup Iteration   9: 7063.804 ops/s
# Warmup Iteration  10: 6910.154 ops/s
# Warmup Iteration  11: 7066.069 ops/s
# Warmup Iteration  12: 7106.416 ops/s
# Warmup Iteration  13: 6981.851 ops/s
# Warmup Iteration  14: 7099.092 ops/s
# Warmup Iteration  15: 7037.637 ops/s
# Warmup Iteration  16: 7051.452 ops/s
# Warmup Iteration  17: 7065.895 ops/s
# Warmup Iteration  18: 7149.487 ops/s
# Warmup Iteration  19: 7125.871 ops/s
# Warmup Iteration  20: 7004.469 ops/s
Iteration   1: 7054.917 ops/s
Iteration   2: 7014.112 ops/s
Iteration   3: 7013.954 ops/s
Iteration   4: 7026.168 ops/s
Iteration   5: 7003.788 ops/s
Iteration   6: 7066.683 ops/s
Iteration   7: 7117.897 ops/s
Iteration   8: 7166.768 ops/s
Iteration   9: 7156.115 ops/s
Iteration  10: 7127.405 ops/s
Iteration  11: 7190.914 ops/s
Iteration  12: 7175.330 ops/s
Iteration  13: 7187.623 ops/s
Iteration  14: 7153.676 ops/s
Iteration  15: 7135.344 ops/s
Iteration  16: 7163.935 ops/s
Iteration  17: 7149.948 ops/s
Iteration  18: 7156.950 ops/s
Iteration  19: 7157.728 ops/s
Iteration  20: 7122.556 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  7117.091 ±(99.9%) 54.515 ops/s [Average]
  (min, avg, max) = (7003.788, 7117.091, 7190.914), stdev = 62.779
  CI (99.9%): [7062.576, 7171.605] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2:·asm":
PrintAssembly processed: 212278 total address lines.
Perf output processed (skipped 23.151 seconds):
 Column 1: cycles (20264 events)
 Column 2: instructions (20310 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 539 (494 bytes) 

                               # parm6:    [sp+0x78]   = int
                               # parm7:    [sp+0x80]   = boolean
                               0x00007f6ff1246080: mov    0x8(%rsi),%r10d
                               0x00007f6ff1246084: shl    $0x3,%r10
                               0x00007f6ff1246088: cmp    %r10,%rax
                               0x00007f6ff124608b: jne    0x00007f6ff1045e20  ;   {runtime_call}
                               0x00007f6ff1246091: data16 xchg %ax,%ax
                               0x00007f6ff1246094: nopl   0x0(%rax,%rax,1)
                               0x00007f6ff124609c: data16 data16 xchg %ax,%ax
                             [Verified Entry Point]
  0.20%    0.10%               0x00007f6ff12460a0: mov    %eax,-0x14000(%rsp)
  0.06%    0.02%               0x00007f6ff12460a7: push   %rbp
  0.05%    0.04%               0x00007f6ff12460a8: sub    $0x60,%rsp         ;*synchronization entry
                                                                             ; - com.google.re2j.Machine::step@-1 (line 269)
  0.18%    0.16%               0x00007f6ff12460ac: mov    %edi,0x20(%rsp)
  0.10%    0.04%               0x00007f6ff12460b0: mov    %r9d,0x14(%rsp)
  0.01%    0.02%               0x00007f6ff12460b5: mov    %rcx,0x18(%rsp)
  0.15%    0.23%               0x00007f6ff12460ba: mov    %r8d,0x10(%rsp)
  0.01%    0.01%               0x00007f6ff12460bf: mov    %rdx,0x8(%rsp)
  0.04%    0.02%               0x00007f6ff12460c4: mov    %rsi,0x28(%rsp)
  0.02%    0.01%               0x00007f6ff12460c9: mov    0x14(%rsi),%r11d   ;*getfield re2
                                                                             ; - com.google.re2j.Machine::step@1 (line 269)
  0.11%    0.09%               0x00007f6ff12460cd: movzbl 0x18(%r12,%r11,8),%r11d  ;*getfield longest
                                                                             ; - com.google.re2j.Machine::step@4 (line 269)
                                                                             ; implicit exception: dispatches to 0x00007f6ff12467dd
           0.00%               0x00007f6ff12460d3: mov    %r11d,0x24(%rsp)
  0.07%    0.01%               0x00007f6ff12460d8: mov    0xc(%rdx),%r10d    ; implicit exception: dispatches to 0x00007f6ff12467ed
  0.01%    0.00%               0x00007f6ff12460dc: test   %r10d,%r10d
                               0x00007f6ff12460df: jle    0x00007f6ff1246398  ;*if_icmpge
                                                                             ; - com.google.re2j.Machine::step@18 (line 270)
  0.11%    0.16%               0x00007f6ff12460e5: xor    %r10d,%r10d
  0.00%           ╭            0x00007f6ff12460e8: jmpq   0x00007f6ff1246228
  0.47%    0.47%  │        ↗   0x00007f6ff12460ed: cmp    $0xc,%r9d
                  │╭       │   0x00007f6ff12460f1: je     0x00007f6ff1246162
  0.01%           ││       │   0x00007f6ff12460f3: cmp    $0xc,%r9d
                  ││       │   0x00007f6ff12460f7: jg     0x00007f6ff12465f5
           0.00%  ││       │   0x00007f6ff12460fd: cmp    $0xb,%r9d
                  ││╭      │   0x00007f6ff1246101: jne    0x00007f6ff1246112  ;*tableswitch
                  │││      │                                                 ; - com.google.re2j.Machine::step@114 (line 285)
                  │││      │   0x00007f6ff1246103: mov    0x20(%rsp),%r9d
                  │││      │   0x00007f6ff1246108: cmp    $0xa,%r9d
                  │││╭     │   0x00007f6ff124610c: je     0x00007f6ff12461a5  ;*ifeq
                  ││││     │                                                 ; - com.google.re2j.Machine::step@363 (line 329)
  0.39%    0.41%  ││↘│ ↗↗  │   0x00007f6ff1246112: mov    %eax,0x74(%rsp)
  0.39%    0.15%  ││ │ ││  │   0x00007f6ff1246116: mov    %r10d,%ebp
                  ││ │ ││  │   0x00007f6ff1246119: mov    0x30(%r12,%rbx,8),%r8d
                  ││ │ ││  │   0x00007f6ff124611e: mov    %r14,%r9
  0.00%           ││ │ ││  │   0x00007f6ff1246121: shl    $0x3,%r9           ;*getfield cap
                  ││ │ ││  │                                                 ; - com.google.re2j.Machine::step@172 (line 292)
  0.01%           ││ │ ││  │   0x00007f6ff1246125: mov    %r8,%rcx
                  ││ │ ││  │   0x00007f6ff1246128: shl    $0x3,%rcx          ;*getfield outInst
                  ││ │ ││  │                                                 ; - com.google.re2j.Machine::step@370 (line 330)
  0.00%           ││ │ ││  │   0x00007f6ff124612c: mov    0x28(%rsp),%rsi
  0.00%    0.00%  ││ │ ││  │   0x00007f6ff1246131: mov    0x18(%rsp),%rdx
  0.04%           ││ │ ││  │   0x00007f6ff1246136: mov    0x14(%rsp),%r8d
                  ││ │ ││  │   0x00007f6ff124613b: mov    0x70(%rsp),%edi
                  ││ │ ││  │   0x00007f6ff124613f: mov    %r11,(%rsp)
  0.07%    0.01%  ││ │ ││  │   0x00007f6ff1246143: callq  0x00007f6ff1046020  ; OopMap{[8]=Oop [24]=Oop [40]=Oop off=200}
                  ││ │ ││  │                                                 ;*invokespecial add
                  ││ │ ││  │                                                 ; - com.google.re2j.Machine::step@384 (line 330)
                  ││ │ ││  │                                                 ;   {optimized virtual_call}
                  ││ │ ││  │   0x00007f6ff1246148: mov    %rax,%rcx
  0.02%    0.00%  ││ │ ││  │   0x00007f6ff124614b: test   %rax,%rax
                  ││ │ ││  │   0x00007f6ff124614e: je     0x00007f6ff1246474  ;*ifnull
                  ││ │ ││  │                                                 ; - com.google.re2j.Machine::step@391 (line 332)
                  ││ │ ││  │   0x00007f6ff1246154: mov    0x20(%rsp),%r9d
                  ││ │ ││  │   0x00007f6ff1246159: mov    %ebp,%r10d
                  ││ │ ││  │   0x00007f6ff124615c: mov    0x74(%rsp),%eax
                  ││ │╭││  │   0x00007f6ff1246160: jmp    0x00007f6ff12461a8  ;*aload
                  ││ ││││  │                                                 ; - com.google.re2j.Machine::step@294 (line 311)
  1.26%    1.26%  │↘ ││││  │↗  0x00007f6ff1246162: cmp    $0xc,%r9d
                  │  ││││  ││  0x00007f6ff1246166: jne    0x00007f6ff1246605  ;*if_icmpne
                  │  ││││  ││                                                ; - com.google.re2j.Inst::matchRune@29 (line 63)
                  │  ││││  ││                                                ; - com.google.re2j.Machine::step@298 (line 311)
  0.42%    0.47%  │  ││││  ││  0x00007f6ff124616c: mov    0x18(%r12,%rbx,8),%ecx  ;*getfield f0
                  │  ││││  ││                                                ; - com.google.re2j.Inst::matchRune@33 (line 64)
                  │  ││││  ││                                                ; - com.google.re2j.Machine::step@298 (line 311)
                  │  ││││  ││  0x00007f6ff1246171: cmp    0x20(%rsp),%ecx
                  │  ││╰│  ││  0x00007f6ff1246175: je     0x00007f6ff1246112  ;*if_icmpeq
                  │  ││ │  ││                                                ; - com.google.re2j.Inst::matchRune@37 (line 64)
                  │  ││ │  ││                                                ; - com.google.re2j.Machine::step@298 (line 311)
  0.71%    0.77%  │  ││ │  ││  0x00007f6ff1246177: mov    0x1c(%r12,%rbx,8),%ecx  ;*getfield f1
                  │  ││ │  ││                                                ; - com.google.re2j.Inst::matchRune@41 (line 64)
                  │  ││ │  ││                                                ; - com.google.re2j.Machine::step@298 (line 311)
  0.24%    0.23%  │  ││ │  ││  0x00007f6ff124617c: cmp    0x20(%rsp),%ecx
  0.48%    0.57%  │  ││ ╰  ││  0x00007f6ff1246180: je     0x00007f6ff1246112  ;*if_icmpeq
                  │  ││    ││                                                ; - com.google.re2j.Inst::matchRune@45 (line 64)
                  │  ││    ││                                                ; - com.google.re2j.Machine::step@298 (line 311)
  0.80%    1.12%  │  ││    ││  0x00007f6ff1246182: mov    0x20(%r12,%rbx,8),%ebp  ;*getfield f2
                  │  ││    ││                                                ; - com.google.re2j.Inst::matchRune@49 (line 64)
                  │  ││    ││                                                ; - com.google.re2j.Machine::step@298 (line 311)
  0.10%    0.06%  │  ││    ││  0x00007f6ff1246187: cmp    0x20(%rsp),%ebp
                  │  ││    ││  0x00007f6ff124618b: je     0x00007f6ff124664d  ;*if_icmpeq
                  │  ││    ││                                                ; - com.google.re2j.Inst::matchRune@53 (line 64)
                  │  ││    ││                                                ; - com.google.re2j.Machine::step@298 (line 311)
  0.72%    0.92%  │  ││    ││  0x00007f6ff1246191: mov    0x24(%r12,%rbx,8),%ebp  ;*getfield f3
                  │  ││    ││                                                ; - com.google.re2j.Inst::matchRune@57 (line 64)
                  │  ││    ││                                                ; - com.google.re2j.Machine::step@298 (line 311)
  0.03%    0.08%  │  ││    ││  0x00007f6ff1246196: cmp    0x20(%rsp),%ebp
                  │  ││    ││  0x00007f6ff124619a: je     0x00007f6ff1246681  ;*if_icmpne
                  │  ││    ││                                                ; - com.google.re2j.Inst::matchRune@61 (line 64)
                  │  ││    ││                                                ; - com.google.re2j.Machine::step@298 (line 311)
  0.73%    0.89%  │  ││    ││  0x00007f6ff12461a0: mov    0x20(%rsp),%r9d    ;*goto
                  │  ││    ││                                                ; - com.google.re2j.Machine::step@291 (line 307)
  0.00%    0.01%  │  ↘│    ││  0x00007f6ff12461a5: mov    %r11,%rcx          ;*aload
                  │   │    ││                                                ; - com.google.re2j.Machine::step@389 (line 332)
  0.17%    0.27%  │   ↘    ││  0x00007f6ff12461a8: mov    0x28(%rsp),%r11
  0.06%    0.03%  │        ││  0x00007f6ff12461ad: mov    0x24(%r11),%ebx    ;*getfield pool
                  │        ││                                                ; - com.google.re2j.Machine::free@5 (line 160)
                  │        ││                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.71%    0.78%  │        ││  0x00007f6ff12461b1: mov    0xc(%r12,%rbx,8),%r11d  ;*arraylength
                  │        ││                                                ; - com.google.re2j.Machine::free@8 (line 160)
                  │        ││                                                ; - com.google.re2j.Machine::step@397 (line 333)
                  │        ││                                                ; implicit exception: dispatches to 0x00007f6ff1246765
  0.04%    0.03%  │        ││  0x00007f6ff12461b6: mov    0x28(%rsp),%r8
  0.24%    0.25%  │        ││  0x00007f6ff12461bb: mov    0xc(%r8),%ebp      ;*getfield poolSize
                  │        ││                                                ; - com.google.re2j.Machine::free@1 (line 160)
                  │        ││                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.02%    0.06%  │        ││  0x00007f6ff12461bf: cmp    %r11d,%ebp
                  │        ││  0x00007f6ff12461c2: jge    0x00007f6ff12465bd  ;*if_icmplt
                  │        ││                                                ; - com.google.re2j.Machine::free@9 (line 160)
                  │        ││                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.71%    0.89%  │        ││  0x00007f6ff12461c8: mov    %ebp,%r8d
  0.02%    0.00%  │        ││  0x00007f6ff12461cb: inc    %r8d
  0.23%    0.29%  │        ││  0x00007f6ff12461ce: mov    0x28(%rsp),%rdi
  0.03%    0.05%  │        ││  0x00007f6ff12461d3: mov    %r8d,0xc(%rdi)     ;*putfield poolSize
                  │        ││                                                ; - com.google.re2j.Machine::free@45 (line 163)
                  │        ││                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.62%    0.82%  │        ││  0x00007f6ff12461d7: cmp    %r11d,%ebp
                  │        ││  0x00007f6ff12461da: jae    0x00007f6ff1246501  ;*aastore
                  │        ││                                                ; - com.google.re2j.Machine::free@49 (line 163)
                  │        ││                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.01%    0.01%  │        ││  0x00007f6ff12461e0: mov    %rcx,%r11
  0.23%    0.22%  │        ││  0x00007f6ff12461e3: shr    $0x3,%r11
  0.04%    0.05%  │        ││  0x00007f6ff12461e7: lea    (%r12,%rbx,8),%r10  ;*getfield pool
                  │        ││                                                ; - com.google.re2j.Machine::free@5 (line 160)
                  │        ││                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.83%    0.74%  │        ││  0x00007f6ff12461eb: lea    0x10(%r10,%rbp,4),%r10
  0.02%    0.00%  │        ││  0x00007f6ff12461f0: mov    %r11d,(%r10)
  0.27%    0.24%  │        ││  0x00007f6ff12461f3: shr    $0x9,%r10
  0.05%    0.04%  │        ││  0x00007f6ff12461f7: movabs $0x7f700151f000,%r11
  0.71%    0.67%  │        ││  0x00007f6ff1246201: mov    %r12b,(%r11,%r10,1)  ;*aastore
                  │        ││                                                ; - com.google.re2j.Machine::free@49 (line 163)
                  │        ││                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.15%    0.16%  │        ││  0x00007f6ff1246205: xor    %r10d,%r10d        ; OopMap{[8]=Oop [24]=Oop [40]=Oop off=392}
                  │        ││                                                ;*goto
                  │        ││                                                ; - com.google.re2j.Machine::step@403 (line 270)
  0.46%    0.27%  │       ↗││  0x00007f6ff1246208: test   %eax,0x178d0df2(%rip)        # 0x00007f7008b17000
                  │       │││                                                ;*goto
                  │       │││                                                ; - com.google.re2j.Machine::step@403 (line 270)
                  │       │││                                                ;   {poll}
  0.32%    0.22%  │       │││  0x00007f6ff124620e: mov    0x8(%rsp),%r10
  0.97%    0.72%  │       │││  0x00007f6ff1246213: mov    0xc(%r10),%r10d
  0.27%    0.27%  │       │││  0x00007f6ff1246217: cmp    %r10d,%eax
                  │       │││  0x00007f6ff124621a: jge    0x00007f6ff1246398
  0.34%    0.16%  │       │││  0x00007f6ff1246220: mov    %r9d,0x20(%rsp)
  0.23%    0.23%  │       │││  0x00007f6ff1246225: mov    %eax,%r10d         ;*aload_1
                  │       │││                                                ; - com.google.re2j.Machine::step@21 (line 271)
  0.84%    0.65%  ↘       │││  0x00007f6ff1246228: mov    0x8(%rsp),%r11
  0.37%    0.23%          │││  0x00007f6ff124622d: mov    0x10(%r11),%r11d   ;*getfield dense
                          │││                                                ; - com.google.re2j.Machine::step@22 (line 271)
  0.69%    0.69%          │││  0x00007f6ff1246231: mov    0xc(%r12,%r11,8),%r9d  ; implicit exception: dispatches to 0x00007f6ff124671d
  0.70%    0.97%          │││  0x00007f6ff1246236: cmp    %r9d,%r10d
                          │││  0x00007f6ff1246239: jae    0x00007f6ff1246485
  0.90%    0.64%          │││  0x00007f6ff124623f: shl    $0x3,%r11
  0.29%    0.14%          │││  0x00007f6ff1246243: mov    0x10(%r11,%r10,4),%r11d  ;*aaload
                          │││                                                ; - com.google.re2j.Machine::step@27 (line 271)
  0.43%    0.49%          │││  0x00007f6ff1246248: mov    0x10(%r12,%r11,8),%r8d  ;*getfield thread
                          │││                                                ; - com.google.re2j.Machine::step@40 (line 275)
                          │││                                                ; implicit exception: dispatches to 0x00007f6ff1246775
  1.40%    1.43%          │││  0x00007f6ff124624d: mov    %r10d,%eax
  0.64%    0.32%          │││  0x00007f6ff1246250: inc    %eax               ;*iadd
                          │││                                                ; - com.google.re2j.Machine::step@237 (line 298)
  0.24%    0.10%          │││  0x00007f6ff1246252: test   %r8d,%r8d
                         ╭│││  0x00007f6ff1246255: jne    0x00007f6ff1246263  ;*ifnonnull
                         ││││                                                ; - com.google.re2j.Machine::step@47 (line 276)
  0.23%    0.22%         ││││  0x00007f6ff1246257: mov    0x24(%rsp),%r10d
  0.19%    0.17%         ││││  0x00007f6ff124625c: mov    0x20(%rsp),%r9d
  0.16%    0.12%         │╰││  0x00007f6ff1246261: jmp    0x00007f6ff1246208
  0.38%    0.42%         ↘ ││  0x00007f6ff1246263: mov    0x24(%rsp),%r9d
  0.04%    0.05%           ││  0x00007f6ff1246268: test   %r9d,%r9d
                           ││  0x00007f6ff124626b: jne    0x00007f6ff1246575  ;*ifeq
                           ││                                                ; - com.google.re2j.Machine::step@55 (line 279)
  0.44%    0.27%           ││  0x00007f6ff1246271: mov    0x10(%r12,%r8,8),%ebx  ;*getfield inst
                           ││                                                ; - com.google.re2j.Machine::step@101 (line 283)
  1.32%    1.30%           ││  0x00007f6ff1246276: mov    0xc(%r12,%rbx,8),%r9d  ;*getfield op
                           ││                                                ; - com.google.re2j.Machine::step@111 (line 285)
                           ││                                                ; implicit exception: dispatches to 0x00007f6ff1246755
  3.34%    3.73%           ││  0x00007f6ff124627b: mov    0xc(%r12,%r8,8),%r14d  ;*getfield cap
                           ││                                                ; - com.google.re2j.Machine::step@172 (line 292)
                           ││  0x00007f6ff1246280: lea    (%r12,%r8,8),%r11  ;*getfield thread
                           ││                                                ; - com.google.re2j.Machine::step@40 (line 275)
  0.11%    0.03%           ││  0x00007f6ff1246284: cmp    $0x9,%r9d
                           ││  0x00007f6ff1246288: je     0x00007f6ff124636e
  1.10%    1.16%           ││  0x00007f6ff124628e: cmp    $0x9,%r9d
                           ╰│  0x00007f6ff1246292: jg     0x00007f6ff12460ed
                            │  0x00007f6ff1246298: cmp    $0x7,%r9d
                            │  0x00007f6ff124629c: je     0x00007f6ff12465f5
                            │  0x00007f6ff12462a2: cmp    $0x7,%r9d
                            ╰  0x00007f6ff12462a6: jg     0x00007f6ff1246162
                               0x00007f6ff12462ac: cmp    $0x6,%r9d
                               0x00007f6ff12462b0: jne    0x00007f6ff12465f5  ;*tableswitch
                                                                             ; - com.google.re2j.Machine::step@114 (line 285)
                               0x00007f6ff12462b6: mov    0x78(%rsp),%r9d
                               0x00007f6ff12462bb: cmp    $0x2,%r9d
....................................................................................................
 29.65%   29.02%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 532 (232 bytes) 

                      # parm4:    rdi       = int
                      # parm5:    [sp+0x70]   = &apos;com/google/re2j/Machine$Thread&apos;  (sp of caller)
                      0x00007f6ff123fcc0: mov    0x8(%rsi),%r10d    ;   {no_reloc}
                      0x00007f6ff123fcc4: shl    $0x3,%r10
                      0x00007f6ff123fcc8: cmp    %r10,%rax
                      0x00007f6ff123fccb: jne    0x00007f6ff1045e20  ;   {runtime_call}
                      0x00007f6ff123fcd1: data16 xchg %ax,%ax
                      0x00007f6ff123fcd4: nopl   0x0(%rax,%rax,1)
                      0x00007f6ff123fcdc: data16 data16 xchg %ax,%ax
                    [Verified Entry Point]
  1.07%    0.97%      0x00007f6ff123fce0: mov    %eax,-0x14000(%rsp)
  0.95%    1.24%      0x00007f6ff123fce7: push   %rbp
  0.19%    0.04%      0x00007f6ff123fce8: sub    $0x60,%rsp         ;*synchronization entry
                                                                    ; - com.google.re2j.Machine::add@-1 (line 345)
  1.54%    1.88%      0x00007f6ff123fcec: mov    %edi,0x38(%rsp)
  0.28%    0.13%      0x00007f6ff123fcf0: mov    %r9,0x30(%rsp)
  0.11%    0.04%      0x00007f6ff123fcf5: mov    %r8d,0x20(%rsp)
  0.85%    0.97%      0x00007f6ff123fcfa: mov    %rsi,0x8(%rsp)
  0.76%    0.71%      0x00007f6ff123fcff: mov    %rdx,0x28(%rsp)
  0.23%    0.25%      0x00007f6ff123fd04: mov    %rcx,0x40(%rsp)
  0.09%    0.05%      0x00007f6ff123fd09: mov    0x28(%rcx),%r11d   ;*getfield pc
                                                                    ; - com.google.re2j.Machine::add@2 (line 345)
                                                                    ; implicit exception: dispatches to 0x00007f6ff12401e9
  0.75%    1.01%      0x00007f6ff123fd0d: mov    0x14(%rdx),%r8d    ;*getfield sparse
                                                                    ; - com.google.re2j.Machine$Queue::contains@1 (line 46)
                                                                    ; - com.google.re2j.Machine::add@5 (line 345)
                                                                    ; implicit exception: dispatches to 0x00007f6ff12401f9
  0.61%    0.69%      0x00007f6ff123fd11: mov    0xc(%r12,%r8,8),%r10d  ; implicit exception: dispatches to 0x00007f6ff124020d
  0.44%    0.45%      0x00007f6ff123fd16: cmp    %r10d,%r11d
                      0x00007f6ff123fd19: jae    0x00007f6ff123fdf5  ;*iaload
                                                                    ; - com.google.re2j.Machine$Queue::contains@5 (line 46)
                                                                    ; - com.google.re2j.Machine::add@5 (line 345)
  0.32%    0.25%      0x00007f6ff123fd1f: mov    0x10(%rdx),%ecx    ;*getfield dense
                                                                    ; - com.google.re2j.Machine$Queue::contains@18 (line 50)
                                                                    ; - com.google.re2j.Machine::add@5 (line 345)
  0.85%    0.79%      0x00007f6ff123fd22: mov    0xc(%rdx),%r9d     ;*getfield size
                                                                    ; - com.google.re2j.Machine$Queue::contains@9 (line 47)
                                                                    ; - com.google.re2j.Machine::add@5 (line 345)
  0.67%    0.80%      0x00007f6ff123fd26: lea    (%r12,%r8,8),%rbx
  0.21%    0.17%      0x00007f6ff123fd2a: mov    0x10(%rbx,%r11,4),%ebp  ;*iaload
                                                                    ; - com.google.re2j.Machine$Queue::contains@5 (line 46)
                                                                    ; - com.google.re2j.Machine::add@5 (line 345)
  0.51%    0.38%      0x00007f6ff123fd2f: cmp    %r9d,%ebp
                  ╭   0x00007f6ff123fd32: jl     0x00007f6ff123fdac  ;*invokevirtual contains
                  │                                                 ; - com.google.re2j.Machine::add@5 (line 345)
  1.63%    1.63%  │↗  0x00007f6ff123fd34: mov    %r9d,0x10(%rbx,%r11,4)  ;*iastore
                  ││                                                ; - com.google.re2j.Machine$Queue::add@18 (line 58)
                  ││                                                ; - com.google.re2j.Machine::add@19 (line 348)
  0.96%    0.95%  ││  0x00007f6ff123fd39: mov    %r9d,%r10d
  0.08%    0.14%  ││  0x00007f6ff123fd3c: inc    %r10d
  0.09%    0.17%  ││  0x00007f6ff123fd3f: mov    %r10d,0xc(%rdx)    ;*putfield size
                  ││                                                ; - com.google.re2j.Machine$Queue::add@8 (line 57)
                  ││                                                ; - com.google.re2j.Machine::add@19 (line 348)
  1.05%    1.10%  ││  0x00007f6ff123fd43: mov    0xc(%r12,%rcx,8),%r8d  ; implicit exception: dispatches to 0x00007f6ff1240221
  0.64%    0.74%  ││  0x00007f6ff123fd48: cmp    %r8d,%r9d
                  ││  0x00007f6ff123fd4b: jae    0x00007f6ff123fe2d
  0.15%    0.24%  ││  0x00007f6ff123fd51: lea    (%r12,%rcx,8),%r10
  0.09%    0.08%  ││  0x00007f6ff123fd55: mov    0x10(%r10,%r9,4),%r13d  ;*aaload
                  ││                                                ; - com.google.re2j.Machine$Queue::add@24 (line 59)
                  ││                                                ; - com.google.re2j.Machine::add@19 (line 348)
  1.04%    1.16%  ││  0x00007f6ff123fd5a: test   %r13d,%r13d
                  ││  0x00007f6ff123fd5d: je     0x00007f6ff123fe79  ;*ifnonnull
                  ││                                                ; - com.google.re2j.Machine$Queue::add@27 (line 60)
                  ││                                                ; - com.google.re2j.Machine::add@19 (line 348)
  0.58%    0.69%  ││  0x00007f6ff123fd63: mov    %r11d,0xc(%r12,%r13,8)  ;*putfield pc
                  ││                                                ; - com.google.re2j.Machine$Queue::add@52 (line 64)
                  ││                                                ; - com.google.re2j.Machine::add@19 (line 348)
  0.91%    0.97%  ││  0x00007f6ff123fd68: mov    0x40(%rsp),%r10
  0.79%    0.48%  ││  0x00007f6ff123fd6d: mov    0xc(%r10),%r9d     ;*getfield op
                  ││                                                ; - com.google.re2j.Machine::add@25 (line 349)
  2.70%    2.61%  ││  0x00007f6ff123fd71: mov    %r12d,0x10(%r12,%r13,8)  ;*putfield thread
                  ││                                                ; - com.google.re2j.Machine$Queue::add@47 (line 63)
                  ││                                                ; - com.google.re2j.Machine::add@19 (line 348)
  0.31%    0.22%  ││  0x00007f6ff123fd76: mov    %r9d,%r11d
  0.13%    0.12%  ││  0x00007f6ff123fd79: dec    %r11d
  0.86%    0.94%  ││  0x00007f6ff123fd7c: cmp    $0xc,%r11d
  1.47%    1.68%  ││  0x00007f6ff123fd80: jae    0x00007f6ff123fe69  ;*tableswitch
                  ││                                                ; - com.google.re2j.Machine::add@28 (line 349)
  1.08%    1.13%  ││  0x00007f6ff123fd86: mov    0x14(%r10),%r10d   ;*getfield arg
                  ││                                                ; - com.google.re2j.Machine::add@145 (line 363)
  0.26%    0.26%  ││  0x00007f6ff123fd8a: mov    0x40(%rsp),%r11
  0.08%    0.05%  ││  0x00007f6ff123fd8f: mov    0x30(%r11),%r11d
  0.73%    0.50%  ││  0x00007f6ff123fd93: movslq %r9d,%r8
  1.14%    1.08%  ││  0x00007f6ff123fd96: mov    %r11,%rcx
  0.15%    0.12%  ││  0x00007f6ff123fd99: shl    $0x3,%rcx          ;*getfield outInst
                  ││                                                ; - com.google.re2j.Machine::add@180 (line 369)
  0.05%    0.05%  ││  0x00007f6ff123fd9d: movabs $0x7f6ff123fc60,%r11  ;   {section_word}
  0.66%    0.62%  ││  0x00007f6ff123fda7: jmpq   *-0x8(%r11,%r8,8)  ;*tableswitch
                  ││                                                ; - com.google.re2j.Machine::add@28 (line 349)
  0.12%    0.11%  ↘│  0x00007f6ff123fdac: mov    0xc(%r12,%rcx,8),%r8d  ; implicit exception: dispatches to 0x00007f6ff1240281
  0.13%    0.19%   │  0x00007f6ff123fdb1: cmp    %r8d,%ebp
                   │  0x00007f6ff123fdb4: jae    0x00007f6ff123feb5
  0.15%    0.09%   │  0x00007f6ff123fdba: lea    (%r12,%rcx,8),%r10
  0.01%    0.00%   │  0x00007f6ff123fdbe: mov    0x10(%r10,%rbp,4),%r10d  ;*aaload
                   │                                                ; - com.google.re2j.Machine$Queue::contains@22 (line 50)
                   │                                                ; - com.google.re2j.Machine::add@5 (line 345)
  0.26%    0.30%   │  0x00007f6ff123fdc3: mov    0xc(%r12,%r10,8),%ebp  ;*getfield pc
                   │                                                ; - com.google.re2j.Machine$Queue::contains@29 (line 51)
                   │                                                ; - com.google.re2j.Machine::add@5 (line 345)
                   │                                                ; implicit exception: dispatches to 0x00007f6ff12402a1
  0.77%    0.96%   │  0x00007f6ff123fdc8: cmp    %r11d,%ebp
                   ╰  0x00007f6ff123fdcb: jne    0x00007f6ff123fd34  ;*if_icmpne
                                                                    ; - com.google.re2j.Machine$Queue::contains@33 (line 51)
                                                                    ; - com.google.re2j.Machine::add@5 (line 345)
                      0x00007f6ff123fdd1: mov    $0xffffff65,%esi
                      0x00007f6ff123fdd6: mov    %rdx,0x10(%rsp)
                      0x00007f6ff123fddb: rex.W pushq 0x30(%rsp)
                      0x00007f6ff123fde0: rex.W popq 0x28(%rsp)
....................................................................................................
 29.52%   30.22%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 532 (342 bytes) 

                          0x00007f6ff123ff8d: mov    %r10,(%rsp)
                          0x00007f6ff123ff91: xchg   %ax,%ax
                          0x00007f6ff123ff93: callq  0x00007f6ff1046020  ; OopMap{off=728}
                                                                        ;*invokespecial add
                                                                        ; - com.google.re2j.Machine::add@190 (line 369)
                                                                        ;   {optimized virtual_call}
                  ╭       0x00007f6ff123ff98: jmpq   0x00007f6ff12400d8
                  │       0x00007f6ff123ff9d: mov    0x70(%rsp),%rax
                  │╭      0x00007f6ff123ffa2: jmpq   0x00007f6ff12400d8  ;*tableswitch
                  ││                                                    ; - com.google.re2j.Machine::add@28 (line 349)
  1.62%    1.65%  ││      0x00007f6ff123ffa7: mov    0x20(%rsp),%r8d
  0.02%    0.03%  ││      0x00007f6ff123ffac: mov    0x30(%rsp),%r9
  0.16%    0.23%  ││      0x00007f6ff123ffb1: mov    0x70(%rsp),%r10
  0.02%    0.02%  ││      0x00007f6ff123ffb6: mov    %r10,(%rsp)
  0.63%    0.41%  ││      0x00007f6ff123ffba: mov    %rsi,%rbp
  0.03%    0.02%  ││      0x00007f6ff123ffbd: xchg   %ax,%ax
  0.19%    0.14%  ││      0x00007f6ff123ffbf: callq  0x00007f6ff1046020  ; OopMap{rbp=Oop [40]=Oop [48]=Oop [64]=Oop off=772}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@118 (line 358)
                  ││                                                    ;   {optimized virtual_call}
  0.01%    0.00%  ││      0x00007f6ff123ffc4: mov    0x40(%rsp),%r10
  0.18%    0.24%  ││      0x00007f6ff123ffc9: mov    0x34(%r10),%r11d
  0.63%    0.75%  ││      0x00007f6ff123ffcd: mov    %r11,%rcx
  0.00%    0.03%  ││      0x00007f6ff123ffd0: shl    $0x3,%rcx          ;*getfield argInst
                  ││                                                    ; - com.google.re2j.Machine::add@126 (line 359)
  0.03%    0.01%  ││      0x00007f6ff123ffd4: mov    %rbp,%rsi
  0.20%    0.20%  ││      0x00007f6ff123ffd7: mov    0x28(%rsp),%rdx
  0.54%    0.66%  ││      0x00007f6ff123ffdc: mov    0x20(%rsp),%r8d
  0.01%    0.02%  ││      0x00007f6ff123ffe1: mov    0x30(%rsp),%r9
  0.01%    0.06%  ││      0x00007f6ff123ffe6: mov    0x38(%rsp),%edi
  0.11%    0.19%  ││      0x00007f6ff123ffea: mov    %rax,(%rsp)
  0.60%    0.90%  ││      0x00007f6ff123ffee: nop
  0.01%    0.04%  ││      0x00007f6ff123ffef: callq  0x00007f6ff1046020  ; OopMap{off=820}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@136 (line 359)
                  ││                                                    ;   {optimized virtual_call}
  0.02%    0.04%  ││╭     0x00007f6ff123fff4: jmpq   0x00007f6ff12400d8  ;*aload
                  │││                                                   ; - com.google.re2j.Machine::add@274 (line 389)
  2.42%    2.47%  │││     0x00007f6ff123fff9: mov    0x40(%rsp),%r10
  0.02%    0.03%  │││     0x00007f6ff123fffe: mov    %r10,%r9
  0.16%    0.24%  │││     0x00007f6ff1240001: shr    $0x3,%r9           ;*putfield inst
                  │││                                                   ; - com.google.re2j.Machine::alloc@45 (line 154)
                  │││                                                   ; - com.google.re2j.Machine::add@281 (line 390)
  0.08%    0.07%  │││     0x00007f6ff1240005: mov    0x70(%rsp),%rbx
  0.73%    0.80%  │││     0x00007f6ff124000a: test   %rbx,%rbx
                  │││╭    0x00007f6ff124000d: jne    0x00007f6ff12400e4  ;*ifnonnull
                  ││││                                                  ; - com.google.re2j.Machine::add@276 (line 389)
  0.04%    0.03%  ││││    0x00007f6ff1240013: mov    %rsi,%r11
  0.14%    0.17%  ││││    0x00007f6ff1240016: mov    0xc(%rsi),%r10d    ;*getfield poolSize
                  ││││                                                  ; - com.google.re2j.Machine::alloc@1 (line 148)
                  ││││                                                  ; - com.google.re2j.Machine::add@281 (line 390)
  0.07%    0.09%  ││││    0x00007f6ff124001a: test   %r10d,%r10d
                  ││││    0x00007f6ff124001d: jle    0x00007f6ff1240185  ;*ifle
                  ││││                                                  ; - com.google.re2j.Machine::alloc@4 (line 148)
                  ││││                                                  ; - com.google.re2j.Machine::add@281 (line 390)
  0.76%    0.71%  ││││    0x00007f6ff1240023: mov    0x24(%rsi),%r8d    ;*getfield pool
                  ││││                                                  ; - com.google.re2j.Machine::alloc@18 (line 150)
                  ││││                                                  ; - com.google.re2j.Machine::add@281 (line 390)
  0.00%    0.03%  ││││    0x00007f6ff1240027: mov    %r10d,%ebp
  0.20%    0.13%  ││││    0x00007f6ff124002a: dec    %ebp               ;*isub
                  ││││                                                  ; - com.google.re2j.Machine::alloc@13 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@281 (line 390)
  0.09%    0.07%  ││││    0x00007f6ff124002c: mov    %ebp,0xc(%rsi)     ;*putfield poolSize
                  ││││                                                  ; - com.google.re2j.Machine::alloc@14 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@281 (line 390)
  0.62%    0.72%  ││││    0x00007f6ff124002f: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x00007f6ff1240245
  0.02%    0.03%  ││││    0x00007f6ff1240034: cmp    %r11d,%ebp
                  ││││    0x00007f6ff1240037: jae    0x00007f6ff124011e
  0.20%    0.16%  ││││    0x00007f6ff124003d: lea    (%r12,%r8,8),%r11
  0.05%    0.08%  ││││    0x00007f6ff1240041: mov    0xc(%r11,%r10,4),%r10d  ;*aaload
                  ││││                                                  ; - com.google.re2j.Machine::alloc@25 (line 150)
                  ││││                                                  ; - com.google.re2j.Machine::add@281 (line 390)
  0.73%    0.78%  ││││    0x00007f6ff1240046: mov    %r9d,0x10(%r12,%r10,8)  ;*putfield inst
                  ││││                                                  ; - com.google.re2j.Machine::alloc@45 (line 154)
                  ││││                                                  ; - com.google.re2j.Machine::add@281 (line 390)
                  ││││                                                  ; implicit exception: dispatches to 0x00007f6ff1240255
  0.09%    0.02%  ││││    0x00007f6ff124004b: lea    (%r12,%r10,8),%rbx  ;*aaload
                  ││││                                                  ; - com.google.re2j.Machine::alloc@25 (line 150)
                  ││││                                                  ; - com.google.re2j.Machine::add@281 (line 390)
  0.27%    0.17%  ││││    0x00007f6ff124004f: mov    %rbx,%r10
  0.06%    0.05%  ││││    0x00007f6ff1240052: shr    $0x9,%r10
  0.75%    0.66%  ││││    0x00007f6ff1240056: movabs $0x7f700151f000,%r11
  0.06%    0.02%  ││││    0x00007f6ff1240060: mov    %r12b,(%r11,%r10,1)  ;*aload
                  ││││                                                  ; - com.google.re2j.Machine::add@295 (line 394)
  0.22%    0.12%  ││││ ↗  0x00007f6ff1240064: mov    0x30(%rsp),%rdi
  0.15%    0.11%  ││││ │  0x00007f6ff1240069: mov    0xc(%rdi),%r10d    ;*arraylength
                  ││││ │                                                ; - com.google.re2j.Machine::add@297 (line 394)
                  ││││ │                                                ; implicit exception: dispatches to 0x00007f6ff1240235
  0.74%    0.77%  ││││ │  0x00007f6ff124006d: test   %r10d,%r10d
                  ││││ │  0x00007f6ff1240070: jle    0x00007f6ff1240163  ;*ifle
                  ││││ │                                                ; - com.google.re2j.Machine::add@298 (line 394)
  0.02%    0.02%  ││││ │  0x00007f6ff1240076: mov    0xc(%rbx),%r11d    ;*getfield cap
                  ││││ │                                                ; - com.google.re2j.Machine::add@303 (line 394)
  0.23%    0.18%  ││││ │  0x00007f6ff124007a: lea    (%r12,%r13,8),%rbp  ;*aaload
                  ││││ │                                                ; - com.google.re2j.Machine$Queue::add@24 (line 59)
                  ││││ │                                                ; - com.google.re2j.Machine::add@19 (line 348)
  0.08%    0.10%  ││││ │  0x00007f6ff124007e: mov    %r11,%r8
  0.75%    0.71%  ││││ │  0x00007f6ff1240081: shl    $0x3,%r8
  0.02%    0.03%  ││││ │  0x00007f6ff1240085: cmp    %rdi,%r8
                  ││││╭│  0x00007f6ff1240088: je     0x00007f6ff12400b5  ;*if_acmpeq
                  ││││││                                                ; - com.google.re2j.Machine::add@308 (line 394)
  0.21%    0.11%  ││││││  0x00007f6ff124008a: mov    0xc(%r12,%r11,8),%r8d  ; implicit exception: dispatches to 0x00007f6ff1240269
  0.10%    0.13%  ││││││  0x00007f6ff124008f: lea    (%r12,%r11,8),%rcx  ;*getfield cap
                  ││││││                                                ; - com.google.re2j.Machine::add@303 (line 394)
  0.64%    0.57%  ││││││  0x00007f6ff1240093: cmp    %r10d,%r8d
                  ││││││  0x00007f6ff1240096: jb     0x00007f6ff1240139
  0.13%    0.06%  ││││││  0x00007f6ff124009c: lea    0x10(%r12,%r11,8),%rsi
  0.16%    0.15%  ││││││  0x00007f6ff12400a1: add    $0x10,%rdi
  0.06%    0.07%  ││││││  0x00007f6ff12400a5: movslq %r10d,%rdx
  0.68%    0.52%  ││││││  0x00007f6ff12400a8: movabs $0x7f6ff1052640,%r10
  0.07%    0.07%  ││││││  0x00007f6ff12400b2: callq  *%r10              ;*aload
                  ││││││                                                ; - com.google.re2j.Machine::add@326 (line 397)
  0.00%           ││││↘│  0x00007f6ff12400b5: mov    %rbp,%r10
  0.08%    0.10%  ││││ │  0x00007f6ff12400b8: mov    %rbx,%r8
  0.05%    0.02%  ││││ │  0x00007f6ff12400bb: shr    $0x3,%r8
  0.89%    0.33%  ││││ │  0x00007f6ff12400bf: mov    %r8d,0x10(%r12,%r13,8)
                  ││││ │  0x00007f6ff12400c4: shr    $0x9,%r10
  0.15%    0.10%  ││││ │  0x00007f6ff12400c8: movabs $0x7f700151f000,%r11
  0.05%    0.05%  ││││ │  0x00007f6ff12400d2: mov    %r12b,(%r11,%r10,1)  ;*putfield thread
                  ││││ │                                                ; - com.google.re2j.Machine::add@330 (line 397)
  0.93%    1.09%  ││││ │  0x00007f6ff12400d6: xor    %eax,%eax          ;*goto
                  ││││ │                                                ; - com.google.re2j.Machine::add@195 (line 370)
  0.73%    1.24%  ↘↘↘│ │  0x00007f6ff12400d8: add    $0x60,%rsp
  0.17%    0.14%     │ │  0x00007f6ff12400dc: pop    %rbp
  0.93%    1.53%     │ │  0x00007f6ff12400dd: test   %eax,0x178d6f1d(%rip)        # 0x00007f7008b17000
                     │ │                                                ;   {poll_return}
  0.75%    1.20%     │ │  0x00007f6ff12400e3: retq   
                     ↘ │  0x00007f6ff12400e4: mov    %r9d,0x10(%rbx)
                       │  0x00007f6ff12400e8: mov    %rbx,%r10
                       │  0x00007f6ff12400eb: shr    $0x9,%r10
  0.05%    0.02%       │  0x00007f6ff12400ef: movabs $0x7f700151f000,%r11
  0.00%                │  0x00007f6ff12400f9: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                       │                                                ; - com.google.re2j.Machine::add@292 (line 392)
  0.00%                ╰  0x00007f6ff12400fd: jmpq   0x00007f6ff1240064  ;*tableswitch
                                                                        ; - com.google.re2j.Machine::add@28 (line 349)
                          0x00007f6ff1240102: mov    0x20(%rsp),%r8d
                          0x00007f6ff1240107: mov    0x30(%rsp),%r9
                          0x00007f6ff124010c: mov    0x70(%rsp),%r10
                          0x00007f6ff1240111: mov    %r10,(%rsp)
                          0x00007f6ff1240115: xchg   %ax,%ax
                          0x00007f6ff1240117: callq  0x00007f6ff1046020  ; OopMap{off=1116}
                                                                        ;*invokespecial add
                                                                        ; - com.google.re2j.Machine::add@169 (line 364)
....................................................................................................
 21.67%   22.78%  <total for region 3>

....[Hottest Regions]...............................................................................
 29.65%   29.02%         C2, level 4  com.google.re2j.Machine::step, version 539 (494 bytes) 
 29.52%   30.22%         C2, level 4  com.google.re2j.Machine::add, version 532 (232 bytes) 
 21.67%   22.78%         C2, level 4  com.google.re2j.Machine::add, version 532 (342 bytes) 
  8.72%    8.48%         C2, level 4  com.google.re2j.Machine::match, version 578 (776 bytes) 
  7.02%    6.66%        runtime stub  StubRoutines::jint_disjoint_arraycopy (128 bytes) 
  0.38%    0.45%         C2, level 4  com.google.re2j.Machine::match, version 578 (106 bytes) 
  0.25%    0.24%         C2, level 4  com.google.re2j.Machine::step, version 539 (20 bytes) 
  0.18%    0.03%         C2, level 4  com.google.re2j.Machine::init, version 587 (96 bytes) 
  0.14%    0.04%         C2, level 4  com.google.re2j.Machine::init, version 587 (62 bytes) 
  0.10%    0.01%   [kernel.kallsyms]  [unknown] (47 bytes) 
  0.10%    0.08%   [kernel.kallsyms]  [unknown] (6 bytes) 
  0.09%    0.02%         C2, level 4  com.google.re2j.Machine::step, version 539 (12 bytes) 
  0.07%    0.06%         C2, level 4  com.google.re2j.Machine::init, version 587 (42 bytes) 
  0.06%    0.01%   [kernel.kallsyms]  [unknown] (39 bytes) 
  0.06%    0.00%   [kernel.kallsyms]  [unknown] (4 bytes) 
  0.05%    0.02%         C2, level 4  com.google.re2j.Matcher::find, version 596 (0 bytes) 
  0.04%    0.04%         C2, level 4  com.google.re2j.Matcher::find, version 596 (0 bytes) 
  0.04%    0.05%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 664 (44 bytes) 
  0.04%    0.00%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.04%    0.04%         C2, level 4  com.google.re2j.Matcher::find, version 596 (12 bytes) 
  1.77%    1.73%  <...other 405 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 51.19%   52.99%         C2, level 4  com.google.re2j.Machine::add, version 532 
 29.99%   29.31%         C2, level 4  com.google.re2j.Machine::step, version 539 
  9.17%    8.98%         C2, level 4  com.google.re2j.Machine::match, version 578 
  7.02%    6.66%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
  0.94%    0.74%   [kernel.kallsyms]  [unknown] 
  0.45%    0.15%         C2, level 4  com.google.re2j.Machine::init, version 587 
  0.25%    0.12%         C2, level 4  com.google.re2j.Matcher::find, version 596 
  0.12%    0.09%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 664 
  0.05%    0.01%           libjvm.so  GenericTaskQueueSet<OverflowTaskQueue<StarTask, (MemoryType)1, 131072u>, (MemoryType)1>::steal_best_of_2 
  0.03%    0.03%        libc-2.26.so  _IO_fwrite 
  0.03%    0.04%         C2, level 4  java.util.Collections::shuffle, version 604 
  0.03%    0.01%           libjvm.so  outputStream::update_position 
  0.02%    0.03%           libjvm.so  xmlTextStream::write 
  0.02%    0.01%           libjvm.so  Monitor::unlock 
  0.02%    0.02%              [vdso]  [unknown] 
  0.02%    0.02%           libjvm.so  Monitor::ILock 
  0.02%    0.02%         C2, level 4  com.google.re2j.Machine::free, version 538 
  0.02%    0.05%      hsdis-amd64.so  [unknown] 
  0.02%    0.02%           libjvm.so  fileStream::write 
  0.02%    0.01%              [vdso]  __vdso_clock_gettime 
  0.54%    0.40%  <...other 77 warm methods...>
....................................................................................................
100.00%   99.73%  <totals>

....[Distribution by Source]........................................................................
 91.24%   91.70%         C2, level 4
  7.02%    6.66%        runtime stub
  0.94%    0.74%   [kernel.kallsyms]
  0.48%    0.51%           libjvm.so
  0.13%    0.24%        libc-2.26.so
  0.06%    0.05%  libpthread-2.26.so
  0.04%    0.03%              [vdso]
  0.03%    0.01%         interpreter
  0.02%    0.05%      hsdis-amd64.so
  0.02%    0.01%         C1, level 3
  0.01%               perf-20961.map
  0.00%                    libzip.so
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                     Mode  Cnt     Score    Error  Units
Re2jFindRegex.testExp2       thrpt   20  7117.091 ± 54.515  ops/s
Re2jFindRegex.testExp2:·asm  thrpt            NaN             ---
