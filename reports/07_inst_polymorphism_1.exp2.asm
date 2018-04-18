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
# Warmup Iteration   1: 4205.288 ops/s
# Warmup Iteration   2: 8063.778 ops/s
# Warmup Iteration   3: 8133.911 ops/s
# Warmup Iteration   4: 8115.292 ops/s
# Warmup Iteration   5: 8156.618 ops/s
# Warmup Iteration   6: 8158.678 ops/s
# Warmup Iteration   7: 8120.322 ops/s
# Warmup Iteration   8: 8122.121 ops/s
# Warmup Iteration   9: 8073.478 ops/s
# Warmup Iteration  10: 8134.802 ops/s
# Warmup Iteration  11: 8121.803 ops/s
# Warmup Iteration  12: 8122.659 ops/s
# Warmup Iteration  13: 6998.971 ops/s
# Warmup Iteration  14: 7975.796 ops/s
# Warmup Iteration  15: 7891.576 ops/s
# Warmup Iteration  16: 8131.081 ops/s
# Warmup Iteration  17: 8204.025 ops/s
# Warmup Iteration  18: 8220.768 ops/s
# Warmup Iteration  19: 8223.784 ops/s
# Warmup Iteration  20: 8204.626 ops/s
Iteration   1: 8213.239 ops/s
Iteration   2: 8208.070 ops/s
Iteration   3: 8207.012 ops/s
Iteration   4: 8191.099 ops/s
Iteration   5: 8189.745 ops/s
Iteration   6: 8202.824 ops/s
Iteration   7: 8200.615 ops/s
Iteration   8: 8200.930 ops/s
Iteration   9: 8192.661 ops/s
Iteration  10: 8170.316 ops/s
Iteration  11: 8198.508 ops/s
Iteration  12: 8201.357 ops/s
Iteration  13: 8197.561 ops/s
Iteration  14: 8208.253 ops/s
Iteration  15: 8207.576 ops/s
Iteration  16: 8201.618 ops/s
Iteration  17: 8206.884 ops/s
Iteration  18: 8208.642 ops/s
Iteration  19: 8202.313 ops/s
Iteration  20: 8204.058 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  8200.664 ±(99.9%) 8.193 ops/s [Average]
  (min, avg, max) = (8170.316, 8200.664, 8213.239), stdev = 9.435
  CI (99.9%): [8192.471, 8208.857] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2:·asm":
PrintAssembly processed: 199181 total address lines.
Perf output processed (skipped 23.353 seconds):
 Column 1: cycles (20504 events)
 Column 2: instructions (20492 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 504 (733 bytes) 

                               # parm6:    [sp+0x78]   = int
                               # parm7:    [sp+0x80]   = boolean
                               0x00007eff44ffc360: mov    0x8(%rsi),%r10d
                               0x00007eff44ffc364: shl    $0x3,%r10
                               0x00007eff44ffc368: cmp    %r10,%rax
                               0x00007eff44ffc36b: jne    0x00007eff44e2ae20  ;   {runtime_call}
                               0x00007eff44ffc371: data16 xchg %ax,%ax
                               0x00007eff44ffc374: nopl   0x0(%rax,%rax,1)
                               0x00007eff44ffc37c: data16 data16 xchg %ax,%ax
                             [Verified Entry Point]
  0.12%    0.15%               0x00007eff44ffc380: mov    %eax,-0x14000(%rsp)
  0.15%    0.20%               0x00007eff44ffc387: push   %rbp
  0.07%    0.03%               0x00007eff44ffc388: sub    $0x60,%rsp         ;*synchronization entry
                                                                             ; - com.google.re2j.Machine::step@-1 (line 276)
  0.15%    0.10%               0x00007eff44ffc38c: mov    %edi,0x18(%rsp)
  0.18%    0.19%               0x00007eff44ffc390: mov    %r9d,0x14(%rsp)
  0.03%    0.02%               0x00007eff44ffc395: mov    %r8d,0x10(%rsp)
  0.05%    0.02%               0x00007eff44ffc39a: mov    %rcx,0x8(%rsp)
  0.12%    0.10%               0x00007eff44ffc39f: vmovq  %rdx,%xmm0
  0.07%    0.13%               0x00007eff44ffc3a4: vmovq  %rsi,%xmm1
  0.02%                        0x00007eff44ffc3a9: mov    0x14(%rsi),%r11d   ;*getfield re2
                                                                             ; - com.google.re2j.Machine::step@1 (line 276)
  0.05%    0.06%               0x00007eff44ffc3ad: movzbl 0x18(%r12,%r11,8),%r10d  ;*getfield longest
                                                                             ; - com.google.re2j.Machine::step@4 (line 276)
                                                                             ; implicit exception: dispatches to 0x00007eff44ffcff9
  0.08%    0.07%               0x00007eff44ffc3b3: vmovd  %r10d,%xmm2
  0.16%    0.16%               0x00007eff44ffc3b8: mov    0xc(%rdx),%ecx     ;*getfield size
                                                                             ; - com.google.re2j.Machine::step@15 (line 277)
                                                                             ; implicit exception: dispatches to 0x00007eff44ffd009
           0.01%               0x00007eff44ffc3bb: test   %ecx,%ecx
                  ╭            0x00007eff44ffc3bd: jle    0x00007eff44ffc537  ;*if_icmpge
                  │                                                          ; - com.google.re2j.Machine::step@18 (line 277)
  0.01%    0.04%  │            0x00007eff44ffc3c3: vmovd  %xmm2,%r11d
  0.14%    0.05%  │            0x00007eff44ffc3c8: test   %r11d,%r11d
                  │            0x00007eff44ffc3cb: jne    0x00007eff44ffcb23
  0.20%    0.13%  │            0x00007eff44ffc3d1: xor    %r10d,%r10d
  0.02%           │╭           0x00007eff44ffc3d4: jmp    0x00007eff44ffc3f6
                  ││           0x00007eff44ffc3d6: data16 nopw 0x0(%rax,%rax,1)
  1.05%    0.66%  ││    ↗      0x00007eff44ffc3e0: mov    %r10d,%ecx
           0.00%  ││    │      0x00007eff44ffc3e3: mov    %r11,0x8(%rsp)
  0.12%    0.07%  ││    │      0x00007eff44ffc3e8: mov    %ebx,0x78(%rsp)
  0.00%    0.01%  ││    │      0x00007eff44ffc3ec: mov    %edi,0x80(%rsp)
  0.93%    0.66%  ││    │      0x00007eff44ffc3f3: mov    %edx,%r10d         ;*getfield size
                  ││    │                                                    ; - com.google.re2j.Machine::step@15 (line 277)
  0.07%    0.03%  │↘    │      0x00007eff44ffc3f6: vmovq  %xmm0,%r11
  0.20%    0.13%  │     │      0x00007eff44ffc3fb: mov    0x20(%r11),%r8d    ;*getfield denseThreads
                  │     │                                                    ; - com.google.re2j.Machine::step@22 (line 278)
  0.18%    0.08%  │     │      0x00007eff44ffc3ff: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x00007eff44ffcfb5
  1.23%    0.57%  │     │      0x00007eff44ffc404: cmp    %r11d,%r10d
                  │     │      0x00007eff44ffc407: jae    0x00007eff44ffc8a2
  0.04%    0.05%  │     │      0x00007eff44ffc40d: lea    (%r12,%r8,8),%r11
  0.23%    0.15%  │     │      0x00007eff44ffc411: mov    0x10(%r11,%r10,4),%r8d  ;*aaload
                  │     │                                                    ; - com.google.re2j.Machine::step@27 (line 278)
  0.19%    0.15%  │     │      0x00007eff44ffc416: mov    0x10(%r12,%r8,8),%r9d  ;*getfield inst
                  │     │                                                    ; - com.google.re2j.Machine::step@78 (line 283)
                  │     │                                                    ; implicit exception: dispatches to 0x00007eff44ffcfc9
  2.21%    1.29%  │     │      0x00007eff44ffc41b: mov    0x8(%r12,%r9,8),%r11d  ; implicit exception: dispatches to 0x00007eff44ffcfd9
  4.54%    5.31%  │     │      0x00007eff44ffc420: lea    (%r12,%r9,8),%rdi
  0.02%    0.03%  │     │      0x00007eff44ffc424: cmp    $0xf8019992,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │     │      0x00007eff44ffc42b: jne    0x00007eff44ffc86c  ;*invokevirtual isMatch
                  │     │                                                    ; - com.google.re2j.Machine::step@85 (line 285)
  1.37%    1.49%  │     │      0x00007eff44ffc431: mov    0xc(%rdi),%r9d
  0.24%    0.22%  │     │      0x00007eff44ffc435: cmp    $0x6,%r9d
                  │ ╭   │      0x00007eff44ffc439: je     0x00007eff44ffc653  ;*if_icmpne
                  │ │   │                                                    ; - com.google.re2j.Inst::isMatch@6 (line 78)
                  │ │   │                                                    ; - com.google.re2j.Inst$MatchInst::isMatch@1 (line 82)
                  │ │   │                                                    ; - com.google.re2j.Machine::step@-1 (line 276)
  1.40%    1.52%  │ │   │      0x00007eff44ffc43f: xor    %eax,%eax          ;*synchronization entry
                  │ │   │                                                    ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%    0.00%  │ │   │   ↗  0x00007eff44ffc441: mov    0xc(%r12,%r8,8),%r14d  ;*getfield cap
                  │ │   │   │                                                ; - com.google.re2j.Machine::step@104 (line 289)
  0.03%    0.03%  │ │   │   │  0x00007eff44ffc446: vmovq  %xmm1,%r11
  0.09%    0.08%  │ │   │   │  0x00007eff44ffc44b: mov    0xc(%r11),%r9d     ;*getfield poolSize
                  │ │   │   │                                                ; - com.google.re2j.Machine::free@1 (line 167)
                  │ │   │   │                                                ; - com.google.re2j.Machine::step@224 (line 303)
  1.44%    1.89%  │ │   │   │  0x00007eff44ffc44f: mov    0x24(%r11),%r11d   ;*getfield pool
                  │ │   │   │                                                ; - com.google.re2j.Machine::free@5 (line 167)
                  │ │   │   │                                                ; - com.google.re2j.Machine::step@224 (line 303)
  0.01%    0.01%  │ │   │   │  0x00007eff44ffc453: mov    %r10d,%edx
  0.01%    0.01%  │ │   │   │  0x00007eff44ffc456: inc    %edx               ;*iadd
                  │ │   │   │                                                ; - com.google.re2j.Machine::step@171 (line 295)
  0.07%    0.11%  │ │   │   │  0x00007eff44ffc458: lea    (%r12,%r8,8),%rsi  ;*aaload
                  │ │   │   │                                                ; - com.google.re2j.Machine::step@27 (line 278)
  1.47%    1.78%  │ │   │   │  0x00007eff44ffc45c: test   %eax,%eax
                  │ │   │   │  0x00007eff44ffc45e: jne    0x00007eff44ffc713  ;*ifeq
                  │ │   │   │                                                ; - com.google.re2j.Machine::step@88 (line 285)
  0.00%    0.01%  │ │   │   │  0x00007eff44ffc464: mov    0x8(%rdi),%ebx
  0.03%    0.02%  │ │   │   │  0x00007eff44ffc467: cmp    $0xf8019992,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │ │   │   │  0x00007eff44ffc46d: jne    0x00007eff44ffc8e9  ;*invokevirtual matchRune
                  │ │   │   │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.13%    0.12%  │ │   │   │  0x00007eff44ffc473: mov    0xc(%rdi),%ebp     ;*getfield op
                  │ │   │   │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@1 (line 134)
                  │ │   │   │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  1.33%    1.88%  │ │   │   │  0x00007eff44ffc476: cmp    $0xa,%ebp
                  │ │╭  │   │  0x00007eff44ffc479: je     0x00007eff44ffc570  ;*if_icmpne
                  │ ││  │   │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@6 (line 134)
                  │ ││  │   │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.00%    0.01%  │ ││  │   │  0x00007eff44ffc47f: cmp    $0xb,%ebp
                  │ ││  │   │  0x00007eff44ffc482: je     0x00007eff44ffc9c5  ;*if_icmpne
                  │ ││  │   │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@17 (line 138)
                  │ ││  │   │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.03%    0.02%  │ ││  │   │  0x00007eff44ffc488: cmp    $0x9,%ebp
                  │ ││  │   │  0x00007eff44ffc48b: je     0x00007eff44ffca05  ;*if_icmpne
                  │ ││  │   │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@38 (line 142)
                  │ ││  │   │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.41%    0.34%  │ ││  │   │  0x00007eff44ffc491: cmp    $0xc,%ebp
                  │ ││  │   │  0x00007eff44ffc494: jne    0x00007eff44ffc985  ;*if_icmpne
                  │ ││  │   │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@61 (line 146)
                  │ ││  │   │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  1.24%    1.75%  │ ││  │   │  0x00007eff44ffc49a: mov    0x20(%rdi),%eax    ;*getfield f0
                  │ ││  │   │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@65 (line 147)
                  │ ││  │   │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.01%    0.02%  │ ││  │   │  0x00007eff44ffc49d: cmp    0x18(%rsp),%eax
                  │ ││╭ │   │  0x00007eff44ffc4a1: je     0x00007eff44ffc570  ;*if_icmpeq
                  │ │││ │   │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@69 (line 147)
                  │ │││ │   │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.34%    0.49%  │ │││ │   │  0x00007eff44ffc4a7: mov    0x24(%rdi),%ebx    ;*getfield f1
                  │ │││ │   │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@73 (line 147)
                  │ │││ │   │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.04%    0.08%  │ │││ │   │  0x00007eff44ffc4aa: cmp    0x18(%rsp),%ebx
                  │ │││╭│   │  0x00007eff44ffc4ae: je     0x00007eff44ffc570  ;*if_icmpeq
                  │ │││││   │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@77 (line 147)
                  │ │││││   │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  1.42%    1.35%  │ │││││   │  0x00007eff44ffc4b4: mov    0x28(%rdi),%ebp    ;*getfield f2
                  │ │││││   │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@81 (line 147)
                  │ │││││   │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.03%    0.04%  │ │││││   │  0x00007eff44ffc4b7: cmp    0x18(%rsp),%ebp
                  │ │││││   │  0x00007eff44ffc4bb: je     0x00007eff44ffca99  ;*if_icmpeq
                  │ │││││   │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@85 (line 147)
                  │ │││││   │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.45%    0.45%  │ │││││   │  0x00007eff44ffc4c1: mov    0x2c(%rdi),%ebp    ;*getfield f3
                  │ │││││   │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@89 (line 147)
                  │ │││││   │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.01%    0.03%  │ │││││   │  0x00007eff44ffc4c4: cmp    0x18(%rsp),%ebp
                  │ │││││   │  0x00007eff44ffc4c8: je     0x00007eff44ffcad9  ;*if_icmpne
                  │ │││││   │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@93 (line 147)
                  │ │││││   │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  1.31%    1.63%  │ │││││   │  0x00007eff44ffc4ce: mov    0x78(%rsp),%ebx
  0.00%           │ │││││   │  0x00007eff44ffc4d2: mov    0x80(%rsp),%edi    ;*getfield size
                  │ │││││   │                                                ; - com.google.re2j.Machine::step@15 (line 277)
  0.16%    0.22%  │ │││││   │  0x00007eff44ffc4d9: mov    0xc(%r12,%r11,8),%ebp  ;*arraylength
                  │ │││││   │                                                ; - com.google.re2j.Machine::free@8 (line 167)
                  │ │││││   │                                                ; - com.google.re2j.Machine::step@224 (line 303)
                  │ │││││   │                                                ; implicit exception: dispatches to 0x00007eff44ffcfe9
  0.02%    0.04%  │ │││││   │  0x00007eff44ffc4de: cmp    %ebp,%r9d
                  │ │││││   │  0x00007eff44ffc4e1: jge    0x00007eff44ffca45  ;*if_icmplt
                  │ │││││   │                                                ; - com.google.re2j.Machine::free@9 (line 167)
                  │ │││││   │                                                ; - com.google.re2j.Machine::step@224 (line 303)
  1.22%    1.45%  │ │││││   │  0x00007eff44ffc4e7: mov    %r9d,%esi
  0.00%           │ │││││   │  0x00007eff44ffc4ea: inc    %esi
  0.17%    0.14%  │ │││││   │  0x00007eff44ffc4ec: vmovq  %xmm1,%rax
  0.01%    0.02%  │ │││││   │  0x00007eff44ffc4f1: mov    %esi,0xc(%rax)     ;*putfield poolSize
                  │ │││││   │                                                ; - com.google.re2j.Machine::free@45 (line 170)
                  │ │││││   │                                                ; - com.google.re2j.Machine::step@224 (line 303)
  1.25%    1.46%  │ │││││   │  0x00007eff44ffc4f4: cmp    %ebp,%r9d
                  │ │││││   │  0x00007eff44ffc4f7: jae    0x00007eff44ffc925  ;*aastore
                  │ │││││   │                                                ; - com.google.re2j.Machine::free@49 (line 170)
                  │ │││││   │                                                ; - com.google.re2j.Machine::step@224 (line 303)
  0.01%           │ │││││   │  0x00007eff44ffc4fd: vmovq  %xmm0,%r10
  0.15%    0.14%  │ │││││   │  0x00007eff44ffc502: mov    0xc(%r10),%r10d    ;*getfield size
                  │ │││││   │                                                ; - com.google.re2j.Machine::step@15 (line 277)
  0.03%    0.01%  │ │││││   │  0x00007eff44ffc506: shl    $0x3,%r11          ;*getfield pool
                  │ │││││   │                                                ; - com.google.re2j.Machine::free@5 (line 167)
                  │ │││││   │                                                ; - com.google.re2j.Machine::step@224 (line 303)
  1.28%    1.06%  │ │││││   │  0x00007eff44ffc50a: lea    0x10(%r11,%r9,4),%r11
  0.01%           │ │││││   │  0x00007eff44ffc50f: mov    %r8d,(%r11)
  0.17%    0.14%  │ │││││   │  0x00007eff44ffc512: shr    $0x9,%r11
  0.02%    0.00%  │ │││││   │  0x00007eff44ffc516: movabs $0x7eff40813000,%r8
  1.26%    0.73%  │ │││││   │  0x00007eff44ffc520: mov    %r12b,(%r8,%r11,1)  ;*aastore
                  │ │││││   │                                                ; - com.google.re2j.Machine::free@49 (line 170)
                  │ │││││   │                                                ; - com.google.re2j.Machine::step@224 (line 303)
  0.01%    0.00%  │ │││││   │  0x00007eff44ffc524: mov    0x8(%rsp),%r11     ; OopMap{r11=Oop xmm0=Oop xmm1=Oop off=457}
                  │ │││││   │                                                ;*goto
                  │ │││││   │                                                ; - com.google.re2j.Machine::step@230 (line 277)
  0.17%    0.15%  │ │││││  ↗│  0x00007eff44ffc529: test   %eax,0x16012ad1(%rip)        # 0x00007eff5b00f000
                  │ │││││  ││                                                ;*goto
                  │ │││││  ││                                                ; - com.google.re2j.Machine::step@230 (line 277)
                  │ │││││  ││                                                ;   {poll}
  0.03%    0.02%  │ │││││  ││  0x00007eff44ffc52f: cmp    %ecx,%edx
                  │ ││││╰  ││  0x00007eff44ffc531: jl     0x00007eff44ffc3e0  ;*if_icmpge
                  │ ││││   ││                                                ; - com.google.re2j.Machine::step@18 (line 277)
  0.28%    0.17%  ↘ ││││   ││  0x00007eff44ffc537: vmovq  %xmm0,%r10
  0.00%    0.00%    ││││   ││  0x00007eff44ffc53c: movzbl 0x18(%r10),%r10d
  0.03%    0.03%    ││││   ││  0x00007eff44ffc541: test   %r10d,%r10d
                    ││││ ╭ ││  0x00007eff44ffc544: jne    0x00007eff44ffc564  ;*ifeq
                    ││││ │ ││                                                ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                    ││││ │ ││                                                ; - com.google.re2j.Machine::step@234 (line 306)
  0.02%             ││││ │ ││  0x00007eff44ffc546: vmovq  %xmm0,%r10
  0.26%    0.16%    ││││ │ ││  0x00007eff44ffc54b: mov    %r12d,0xc(%r10)    ;*putfield size
                    ││││ │ ││                                                ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                    ││││ │ ││                                                ; - com.google.re2j.Machine::step@234 (line 306)
                    ││││ │ ││  0x00007eff44ffc54f: mov    0x1c(%r10),%ebp    ;*getfield pcs
                    ││││ │ ││                                                ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                    ││││ │ ││                                                ; - com.google.re2j.Machine::step@234 (line 306)
  0.04%    0.03%    ││││ │ ││  0x00007eff44ffc553: movb   $0x1,0x18(%r10)    ;*putfield empty
                    ││││ │ ││                                                ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                    ││││ │ ││                                                ; - com.google.re2j.Machine::step@234 (line 306)
  0.00%             ││││ │ ││  0x00007eff44ffc558: mov    %r12,0x10(%r10)    ;*putfield pcsl
                    ││││ │ ││                                                ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                    ││││ │ ││                                                ; - com.google.re2j.Machine::step@234 (line 306)
  0.25%    0.16%    ││││ │ ││  0x00007eff44ffc55c: test   %ebp,%ebp
                    ││││ │ ││  0x00007eff44ffc55e: jne    0x00007eff44ffcb4d  ;*getfield size
                    ││││ │ ││                                                ; - com.google.re2j.Machine::step@15 (line 277)
                    ││││ ↘ ││  0x00007eff44ffc564: add    $0x60,%rsp
  0.05%    0.04%    ││││   ││  0x00007eff44ffc568: pop    %rbp
  0.00%    0.00%    ││││   ││  0x00007eff44ffc569: test   %eax,0x16012a91(%rip)        # 0x00007eff5b00f000
                    ││││   ││                                                ;   {poll_return}
  0.27%    0.13%    ││││   ││  0x00007eff44ffc56f: retq   
  0.50%    0.41%    │↘↘↘   ││  0x00007eff44ffc570: mov    0x1c(%rdi),%r11d   ;*getfield outInst
                    │      ││                                                ; - com.google.re2j.Machine::step@195 (line 300)
  0.38%    0.37%    │      ││  0x00007eff44ffc574: mov    0x8(%r12,%r11,8),%ebx  ; implicit exception: dispatches to 0x00007eff44ffd019
  0.21%    0.05%    │      ││  0x00007eff44ffc579: lea    (%r12,%r11,8),%r9
                    │      ││  0x00007eff44ffc57d: xor    %edi,%edi
           0.00%    │      ││  0x00007eff44ffc57f: mov    $0x1,%eax
                    │      ││  0x00007eff44ffc584: cmp    $0xf8019992,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                    │     ╭││  0x00007eff44ffc58a: jne    0x00007eff44ffc65d  ;*invokevirtual add
                    │     │││                                                ; - com.google.re2j.Machine::step@211 (line 300)
  0.06%    0.02%    │     │││  0x00007eff44ffc590: mov    0x18(%r9),%ebx     ;*getfield pc
                    │     │││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                    │     │││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.03%             │     │││  0x00007eff44ffc594: mov    0x8(%rsp),%r11
                    │     │││  0x00007eff44ffc599: mov    0x10(%r11),%rbp    ;*getfield pcsl
                    │     │││                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                    │     │││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │     │││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │     │││                                                ; implicit exception: dispatches to 0x00007eff44ffd039
  0.04%             │     │││  0x00007eff44ffc59d: cmp    $0x40,%ebx
                    │     │││  0x00007eff44ffc5a0: jg     0x00007eff44ffcbfd  ;*if_icmpgt
                    │     │││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                    │     │││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │     │││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%    0.01%    │     │││  0x00007eff44ffc5a6: mov    %ebx,%ecx
                    │     │││  0x00007eff44ffc5a8: shl    %cl,%rax           ;*lshl
                    │     │││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                    │     │││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │     │││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.11%    0.02%    │     │││  0x00007eff44ffc5ab: mov    %rbp,%rcx
                    │     │││  0x00007eff44ffc5ae: and    %rax,%rcx          ;*land
                    │     │││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                    │     │││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │     │││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%             │     │││  0x00007eff44ffc5b1: test   %rcx,%rcx
                    │     │││  0x00007eff44ffc5b4: jne    0x00007eff44ffcc4d  ;*ifeq
                    │     │││                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                    │     │││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │     │││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.09%             │     │││  0x00007eff44ffc5ba: cmp    $0x40,%ebx
                    │     │││  0x00007eff44ffc5bd: jge    0x00007eff44ffccad  ;*if_icmpge
                    │     │││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                    │     │││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │     │││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%             │     │││  0x00007eff44ffc5c3: mov    %r12b,0x18(%r11)   ;*putfield empty
                    │     │││                                                ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                    │     │││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │     │││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.08%             │     │││  0x00007eff44ffc5c7: or     %rbp,%rax
  0.00%             │     │││  0x00007eff44ffc5ca: mov    %rax,0x10(%r11)    ;*putfield pcsl
                    │     │││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                    │     │││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │     │││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.07%             │     │││  0x00007eff44ffc5ce: mov    %rsi,%rbx
  0.01%    0.00%    │     │││  0x00007eff44ffc5d1: mov    %r9,%rcx
  0.04%             │     │││  0x00007eff44ffc5d4: shr    $0x3,%rcx
                    │     │││  0x00007eff44ffc5d8: mov    %ecx,0x10(%r12,%r8,8)
  0.04%             │     │││  0x00007eff44ffc5dd: shr    $0x9,%rbx
  0.00%             │     │││  0x00007eff44ffc5e1: movabs $0x7eff40813000,%r9
  0.02%             │     │││  0x00007eff44ffc5eb: mov    %r12b,(%r9,%rbx,1)  ;*putfield inst
                    │     │││                                                ; - com.google.re2j.Inst$MatchInst::add@41 (line 101)
                    │     │││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │     │││  0x00007eff44ffc5ef: mov    0xc(%r12,%r14,8),%ebp  ;*arraylength
                    │     │││                                                ; - com.google.re2j.Inst$MatchInst::add@45 (line 103)
                    │     │││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │     │││                                                ; implicit exception: dispatches to 0x00007eff44ffd04d
  0.03%    0.01%    │     │││  0x00007eff44ffc5f4: test   %ebp,%ebp
                    │     │││  0x00007eff44ffc5f6: jle    0x00007eff44ffcbb1  ;*ifle
                    │     │││                                                ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                    │     │││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%             │     │││  0x00007eff44ffc5fc: mov    0x20(%r11),%r9d    ;*getfield denseThreads
                    │     │││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                    │     │││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │     │││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%             │     │││  0x00007eff44ffc600: mov    0xc(%r11),%ebp     ;*getfield size
                    │     │││                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                    │     │││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │     │││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%             │     │││  0x00007eff44ffc604: mov    %ebp,%ebx
  0.02%    0.01%    │     │││  0x00007eff44ffc606: inc    %ebx
                    │     │││  0x00007eff44ffc608: mov    %ebx,0xc(%r11)     ;*putfield size
                    │     │││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                    │     │││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │     │││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%             │     │││  0x00007eff44ffc60c: mov    0xc(%r12,%r9,8),%ecx  ; implicit exception: dispatches to 0x00007eff44ffd05d
  0.01%             │     │││  0x00007eff44ffc611: cmp    %ecx,%ebp
                    │     │││  0x00007eff44ffc613: jae    0x00007eff44ffcb65  ;*aastore
                    │     │││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    │     │││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │     │││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.06%    0.01%    │     │││  0x00007eff44ffc619: lea    (%r12,%r9,8),%r10  ;*getfield denseThreads
                    │     │││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                    │     │││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │     │││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%             │     │││  0x00007eff44ffc61d: lea    0x10(%r10,%rbp,4),%r10
  0.00%             │     │││  0x00007eff44ffc622: mov    %r8d,(%r10)
  0.19%    0.03%    │     │││  0x00007eff44ffc625: shr    $0x9,%r10
  0.02%    0.01%    │     │││  0x00007eff44ffc629: movabs $0x7eff40813000,%r8
  0.00%             │     │││  0x00007eff44ffc633: mov    %r12b,(%r8,%r10,1)  ;*synchronization entry
                    │     │││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.15%    0.09%    │     │││  0x00007eff44ffc637: vmovq  %xmm0,%r10
           0.00%    │     │││  0x00007eff44ffc63c: mov    0xc(%r10),%ecx     ;*getfield size
                    │     │││                                                ; - com.google.re2j.Machine::step@15 (line 277)
  0.02%    0.01%    │     │││  0x00007eff44ffc640: mov    %ecx,%r10d
  0.00%             │     │││  0x00007eff44ffc643: mov    0x78(%rsp),%ebx
  0.03%    0.01%    │     │││  0x00007eff44ffc647: mov    0x80(%rsp),%edi
                    │     │╰│  0x00007eff44ffc64e: jmpq   0x00007eff44ffc529
                    ↘     │ │  0x00007eff44ffc653: mov    $0x1,%eax
                          │ ╰  0x00007eff44ffc658: jmpq   0x00007eff44ffc441
           0.00%          ↘    0x00007eff44ffc65d: cmp    $0xf801990c,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                               0x00007eff44ffc663: jne    0x00007eff44ffcd49  ;*invokevirtual add
                                                                             ; - com.google.re2j.Machine::step@211 (line 300)
                               0x00007eff44ffc669: mov    0x18(%r9),%ebx     ;*getfield pc
                                                                             ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                                                                             ; - com.google.re2j.Machine::step@211 (line 300)
                               0x00007eff44ffc66d: mov    0x8(%rsp),%r11
                               0x00007eff44ffc672: mov    0x10(%r11),%rbp    ;*getfield pcsl
                                                                             ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                                                                             ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                             ; - com.google.re2j.Machine::step@211 (line 300)
....................................................................................................
 35.13%   33.44%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Inst$AltInst::add, version 508 (1180 bytes) 

                           0x00007eff45008e0e: shr    $0x3,%r11
                           0x00007eff45008e12: mov    %r11d,(%r10)
                           0x00007eff45008e15: shr    $0x9,%r10
                           0x00007eff45008e19: movabs $0x7eff40813000,%r11
                           0x00007eff45008e23: mov    %r12b,(%r11,%r10,1)  ;*aastore
                                                                         ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                                                                         ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                         ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ╭        0x00007eff45008e27: jmpq   0x00007eff4500917c  ;*invokevirtual add
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.01%    0.01%  │        0x00007eff45008e2c: mov    0x18(%r10),%ecx    ;*getfield pc
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@2 (line 187)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.04%    0.08%  │        0x00007eff45008e30: cmp    $0x40,%ecx
                  │        0x00007eff45008e33: jg     0x00007eff450096b5  ;*if_icmpgt
                  │                                                      ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.49%    0.37%  │        0x00007eff45008e39: mov    $0x1,%r11d
  0.01%    0.02%  │        0x00007eff45008e3f: shl    %cl,%r11           ;*lshl
                  │                                                      ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.54%    0.83%  │        0x00007eff45008e42: mov    %rbx,%r8
  0.02%    0.03%  │        0x00007eff45008e45: and    %r11,%r8           ;*land
                  │                                                      ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.00%    0.00%  │        0x00007eff45008e48: test   %r8,%r8
                  │        0x00007eff45008e4b: jne    0x00007eff45009701  ;*ifeq
                  │                                                      ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.05%    0.08%  │        0x00007eff45008e51: cmp    $0x40,%ecx
                  │        0x00007eff45008e54: jge    0x00007eff45009755  ;*if_icmpge
                  │                                                      ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.46%    0.69%  │        0x00007eff45008e5a: mov    0x1c(%r10),%ebp    ;*getfield outInst
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@23 (line 192)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.01%    0.02%  │        0x00007eff45008e5e: or     %r11,%rbx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.01%           │        0x00007eff45008e61: mov    %rbx,0x10(%rdx)    ;*putfield pcsl
                  │                                                      ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.04%    0.08%  │        0x00007eff45008e65: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007eff45009eb5
  0.46%    0.53%  │        0x00007eff45008e6a: lea    (%r12,%rbp,8),%r13
  0.00%    0.02%  │        0x00007eff45008e6e: cmp    $0xf8019843,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$AltInst&apos;)}
                  │╭       0x00007eff45008e75: je     0x00007eff45008fe6
  0.02%    0.00%  ││       0x00007eff45008e7b: cmp    $0xf8019992,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  ││       0x00007eff45008e82: jne    0x00007eff45009a11  ;*invokevirtual add
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.03%    0.01%  ││       0x00007eff45008e88: mov    0x18(%r13),%ecx    ;*getfield pc
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.21%    0.26%  ││       0x00007eff45008e8c: cmp    $0x40,%ecx
                  ││       0x00007eff45008e8f: jg     0x00007eff45009d09  ;*if_icmpgt
                  ││                                                     ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.01%    0.02%  ││       0x00007eff45008e95: mov    $0x1,%r11d
  0.00%           ││       0x00007eff45008e9b: shl    %cl,%r11           ;*lshl
                  ││                                                     ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.31%    0.44%  ││       0x00007eff45008e9e: mov    %rbx,%r8
  0.00%           ││       0x00007eff45008ea1: and    %r11,%r8           ;*land
                  ││                                                     ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.02%    0.05%  ││       0x00007eff45008ea4: test   %r8,%r8
                  ││       0x00007eff45008ea7: jne    0x00007eff45009d59  ;*ifeq
                  ││                                                     ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.22%    0.32%  ││       0x00007eff45008ead: cmp    $0x40,%ecx
                  ││       0x00007eff45008eb0: jge    0x00007eff45009db5  ;*if_icmpge
                  ││                                                     ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.02%    0.00%  ││       0x00007eff45008eb6: or     %r11,%rbx
                  ││       0x00007eff45008eb9: mov    %rbx,0x10(%rdx)    ;*putfield pcsl
                  ││                                                     ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.03%    0.02%  ││       0x00007eff45008ebd: mov    %r13,%r8
  0.22%    0.29%  ││       0x00007eff45008ec0: shr    $0x3,%r8           ;*putfield inst
                  ││                                                     ; - com.google.re2j.Machine::alloc@45 (line 138)
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.01%           ││       0x00007eff45008ec4: test   %rdi,%rdi
                  ││       0x00007eff45008ec7: jne    0x00007eff4500930d  ;*ifnonnull
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@24 (line 98)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.00%    0.01%  ││       0x00007eff45008ecd: mov    0xa0(%rsp),%rbx
  0.02%    0.02%  ││       0x00007eff45008ed5: mov    0xc(%rbx),%r11d    ;*getfield poolSize
                  ││                                                     ; - com.google.re2j.Machine::alloc@1 (line 132)
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  ││                                                     ; implicit exception: dispatches to 0x00007eff4500a011
  0.27%    0.23%  ││       0x00007eff45008ed9: test   %r11d,%r11d
                  ││       0x00007eff45008edc: jle    0x00007eff45009cb1  ;*ifle
                  ││                                                     ; - com.google.re2j.Machine::alloc@4 (line 132)
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.00%    0.01%  ││       0x00007eff45008ee2: mov    0x24(%rbx),%ecx    ;*getfield pool
                  ││                                                     ; - com.google.re2j.Machine::alloc@18 (line 134)
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.00%    0.00%  ││       0x00007eff45008ee5: mov    %r11d,%ebp
  0.02%    0.02%  ││       0x00007eff45008ee8: dec    %ebp               ;*isub
                  ││                                                     ; - com.google.re2j.Machine::alloc@13 (line 133)
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.20%    0.20%  ││       0x00007eff45008eea: mov    %ebp,0xc(%rbx)     ;*putfield poolSize
                  ││                                                     ; - com.google.re2j.Machine::alloc@14 (line 133)
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.00%    0.00%  ││       0x00007eff45008eed: mov    0xc(%r12,%rcx,8),%r9d  ; implicit exception: dispatches to 0x00007eff4500a025
  0.01%    0.01%  ││       0x00007eff45008ef2: cmp    %r9d,%ebp
                  ││       0x00007eff45008ef5: jae    0x00007eff45009a5d
  0.01%    0.03%  ││       0x00007eff45008efb: lea    (%r12,%rcx,8),%r9
  0.26%    0.15%  ││       0x00007eff45008eff: mov    0xc(%r9,%r11,4),%r9d  ;*aaload
                  ││                                                     ; - com.google.re2j.Machine::alloc@25 (line 134)
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.02%    0.01%  ││       0x00007eff45008f04: mov    %r8d,0x10(%r12,%r9,8)  ;*putfield inst
                  ││                                                     ; - com.google.re2j.Machine::alloc@45 (line 138)
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  ││                                                     ; implicit exception: dispatches to 0x00007eff4500a035
  0.56%    0.73%  ││       0x00007eff45008f09: lea    (%r12,%r9,8),%rdi  ;*aaload
                  ││                                                     ; - com.google.re2j.Machine::alloc@25 (line 134)
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  ││       0x00007eff45008f0d: mov    %rdi,%r11
  0.08%    0.08%  ││       0x00007eff45008f10: shr    $0x9,%r11
  0.00%           ││       0x00007eff45008f14: movabs $0x7eff40813000,%r8
  0.22%    0.21%  ││       0x00007eff45008f1e: mov    %r12b,(%r8,%r11,1)  ;*aload_3
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@44 (line 103)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.26%    0.29%  ││       0x00007eff45008f22: mov    0x58(%rsp),%r11
  0.04%    0.04%  ││       0x00007eff45008f27: mov    0xc(%r11),%r11d    ;*arraylength
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@45 (line 103)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  ││                                                     ; implicit exception: dispatches to 0x00007eff45009fe5
  0.01%           ││       0x00007eff45008f2b: test   %r11d,%r11d
                  ││       0x00007eff45008f2e: jle    0x00007eff45009c61  ;*ifle
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.04%    0.03%  ││       0x00007eff45008f34: mov    0xc(%rdi),%r8d     ;*getfield cap
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@51 (line 103)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.18%    0.18%  ││       0x00007eff45008f38: mov    %r8,%r9
  0.02%    0.04%  ││       0x00007eff45008f3b: shl    $0x3,%r9
                  ││       0x00007eff45008f3f: cmp    0x58(%rsp),%r9
                  ││╭      0x00007eff45008f44: je     0x00007eff45008f9c  ;*if_acmpeq
                  │││                                                    ; - com.google.re2j.Inst$MatchInst::add@55 (line 103)
                  │││                                                    ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │││                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.02%    0.03%  │││      0x00007eff45008f46: mov    0xc(%r12,%r8,8),%edx  ; implicit exception: dispatches to 0x00007eff4500a049
  0.50%    0.50%  │││      0x00007eff45008f4b: lea    (%r12,%r8,8),%rcx  ;*getfield cap
                  │││                                                    ; - com.google.re2j.Inst$MatchInst::add@51 (line 103)
                  │││                                                    ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │││                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.02%    0.01%  │││      0x00007eff45008f4f: cmp    %r11d,%edx
                  │││      0x00007eff45008f52: jb     0x00007eff45009aad
  0.40%    0.55%  │││      0x00007eff45008f58: mov    %r10,0x20(%rsp)
  0.03%    0.03%  │││      0x00007eff45008f5d: mov    %rbx,0x8(%rsp)
  0.00%           │││      0x00007eff45008f62: mov    %rdi,0xa0(%rsp)
  0.01%    0.02%  │││      0x00007eff45008f6a: mov    %r14,%rbp
  0.25%    0.25%  │││      0x00007eff45008f6d: lea    0x10(%r12,%r8,8),%rsi
  0.03%    0.02%  │││      0x00007eff45008f72: movslq %r11d,%rdx
  0.01%    0.00%  │││      0x00007eff45008f75: mov    0x18(%rsp),%rdi
  0.02%    0.01%  │││      0x00007eff45008f7a: movabs $0x7eff44e37640,%r10
  0.24%    0.34%  │││      0x00007eff45008f84: callq  *%r10              ;*invokestatic arraycopy
                  │││                                                    ; - com.google.re2j.Inst$MatchInst::add@68 (line 104)
                  │││                                                    ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │││                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │││      0x00007eff45008f87: mov    %rbp,%r14
  0.01%    0.02%  │││      0x00007eff45008f8a: mov    0xa0(%rsp),%rdi
  0.28%    0.26%  │││      0x00007eff45008f92: mov    0x8(%rsp),%rbx
  0.00%           │││      0x00007eff45008f97: mov    0x20(%rsp),%r10    ;*aload_1
                  │││                                                    ; - com.google.re2j.Inst$MatchInst::add@71 (line 106)
                  │││                                                    ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │││                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.02%    0.00%  ││↘      0x00007eff45008f9c: mov    0xc(%r14),%r9d     ;*getfield size
                  ││                                                     ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.24%    0.13%  ││       0x00007eff45008fa0: mov    0x20(%r14),%ebp    ;*getfield denseThreads
                  ││                                                     ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.02%    0.01%  ││       0x00007eff45008fa4: mov    %r9d,%r8d
                  ││       0x00007eff45008fa7: inc    %r8d
  0.02%    0.00%  ││       0x00007eff45008faa: mov    %r8d,0xc(%r14)     ;*putfield size
                  ││                                                     ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.29%    0.29%  ││       0x00007eff45008fae: mov    0xc(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007eff45009ff5
  0.04%    0.03%  ││       0x00007eff45008fb3: cmp    %r8d,%r9d
                  ││       0x00007eff45008fb6: jae    0x00007eff450099c5  ;*aastore
                  ││                                                     ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.00%    0.01%  ││       0x00007eff45008fbc: lea    (%r12,%rbp,8),%r11  ;*getfield denseThreads
                  ││                                                     ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.02%    0.00%  ││       0x00007eff45008fc0: lea    0x10(%r11,%r9,4),%r11
  0.20%    0.14%  ││       0x00007eff45008fc5: mov    %rdi,%r8
  0.03%    0.03%  ││       0x00007eff45008fc8: shr    $0x3,%r8
  0.00%    0.01%  ││       0x00007eff45008fcc: mov    %r8d,(%r11)
  0.24%    0.25%  ││       0x00007eff45008fcf: shr    $0x9,%r11
  0.16%    0.19%  ││       0x00007eff45008fd3: movabs $0x7eff40813000,%r8
  0.02%    0.01%  ││       0x00007eff45008fdd: mov    %r12b,(%r8,%r11,1)  ;*aastore
                  ││                                                     ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.06%    0.04%  ││       0x00007eff45008fe1: xor    %r13d,%r13d
  0.10%    0.05%  ││ ╭     0x00007eff45008fe4: jmp    0x00007eff45009035
  0.02%    0.00%  │↘ │     0x00007eff45008fe6: mov    %r10,0x20(%rsp)
  0.02%    0.03%  │  │     0x00007eff45008feb: mov    %rdx,0x8(%rsp)     ;*invokevirtual add
                  │  │                                                   ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.26%    0.35%  │  │     0x00007eff45008ff0: mov    %r13,%rsi          ;*invokevirtual add
                  │  │                                                   ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                  │  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.01%    0.01%  │  │     0x00007eff45008ff3: mov    0x30(%rsp),%ecx
  0.01%           │  │     0x00007eff45008ff7: mov    0x58(%rsp),%r8
  0.02%    0.03%  │  │     0x00007eff45008ffc: mov    0x54(%rsp),%r9d
  0.22%    0.22%  │  │     0x00007eff45009001: mov    0xa0(%rsp),%r10
  0.01%    0.00%  │  │     0x00007eff45009009: mov    %r10,(%rsp)
  0.02%    0.01%  │  │     0x00007eff4500900d: mov    %ecx,0x28(%rsp)
  0.01%    0.04%  │  │     0x00007eff45009011: mov    %r8,0x38(%rsp)
  0.31%    0.27%  │  │     0x00007eff45009016: mov    %r9d,0x2c(%rsp)
           0.01%  │  │     0x00007eff4500901b: callq  0x00007eff44e2b020  ; OopMap{[160]=Oop [8]=Oop [16]=Oop [24]=Derived_oop_[56] [32]=Oop [56]=Oop [88]=Oop off=992}
                  │  │                                                   ;*invokevirtual add
                  │  │                                                   ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │  │                                                   ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │  │                                                   ;   {optimized virtual_call}
  0.20%    0.22%  │  │     0x00007eff45009020: mov    0x8(%rsp),%r14
  0.03%    0.04%  │  │     0x00007eff45009025: mov    0xa0(%rsp),%rbx
  0.06%    0.06%  │  │     0x00007eff4500902d: mov    0x20(%rsp),%r10
  0.21%    0.19%  │  │     0x00007eff45009032: mov    %rax,%r13          ;*synchronization entry
                  │  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.13%    0.20%  │  ↘     0x00007eff45009035: mov    0x20(%r10),%ebp    ;*getfield argInst
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@41 (line 193)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.07%    0.07%  │        0x00007eff45009039: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007eff45009ecd
  0.49%    0.54%  │        0x00007eff4500903e: cmp    $0xf8019992,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │        0x00007eff45009045: jne    0x00007eff450093fd
  0.31%    0.39%  │        0x00007eff4500904b: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.11%    0.02%  │        0x00007eff4500904f: mov    0x18(%r10),%ecx    ;*getfield pc
                  │                                                      ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.08%    0.06%  │        0x00007eff45009053: cmp    $0x40,%ecx
                  │        0x00007eff45009056: jg     0x00007eff450097a1  ;*if_icmpgt
                  │                                                      ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                  │                                                      ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.17%    0.21%  │        0x00007eff4500905c: mov    $0x1,%r11d
  0.16%    0.12%  │        0x00007eff45009062: shl    %cl,%r11           ;*lshl
                  │                                                      ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                  │                                                      ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.67%    0.68%  │        0x00007eff45009065: mov    0x10(%r14),%r8     ;*getfield pcsl
                  │                                                      ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                  │                                                      ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.09%    0.18%  │        0x00007eff45009069: mov    %r8,%r9
  0.13%           │        0x00007eff4500906c: and    %r11,%r9           ;*land
                  │                                                      ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                  │                                                      ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.07%    0.13%  │        0x00007eff4500906f: test   %r9,%r9
                  │        0x00007eff45009072: jne    0x00007eff450097f1  ;*ifeq
                  │                                                      ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                  │                                                      ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.30%    0.29%  │        0x00007eff45009078: cmp    $0x40,%ecx
                  │        0x00007eff4500907b: jge    0x00007eff4500984d  ;*if_icmpge
                  │                                                      ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                  │                                                      ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.11%    0.12%  │        0x00007eff45009081: mov    %r12b,0x18(%r14)   ;*putfield empty
                  │                                                      ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                  │                                                      ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.16%    0.17%  │        0x00007eff45009085: or     %r8,%r11
  0.05%    0.07%  │        0x00007eff45009088: mov    %r11,0x10(%r14)    ;*putfield pcsl
                  │                                                      ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                  │                                                      ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.25%    0.27%  │        0x00007eff4500908c: mov    %r10,%r8
  0.20%    0.14%  │        0x00007eff4500908f: shr    $0x3,%r8           ;*putfield inst
                  │                                                      ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │                                                      ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.12%    0.16%  │        0x00007eff45009093: test   %r13,%r13
                  │   ╭    0x00007eff45009096: jne    0x00007eff450092c9  ;*ifnonnull
                  │   │                                                  ; - com.google.re2j.Inst$MatchInst::add@24 (line 98)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.01%    0.04%  │   │    0x00007eff4500909c: mov    0xc(%rbx),%edi     ;*getfield poolSize
                  │   │                                                  ; - com.google.re2j.Machine::alloc@1 (line 132)
                  │   │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │   │                                                  ; implicit exception: dispatches to 0x00007eff45009f11
  0.23%    0.23%  │   │    0x00007eff4500909f: test   %edi,%edi
                  │   │    0x00007eff450090a1: jle    0x00007eff45009679  ;*ifle
                  │   │                                                  ; - com.google.re2j.Machine::alloc@4 (line 132)
                  │   │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.13%    0.13%  │   │    0x00007eff450090a7: mov    0x24(%rbx),%r9d    ;*getfield pool
                  │   │                                                  ; - com.google.re2j.Machine::alloc@18 (line 134)
                  │   │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.11%    0.11%  │   │    0x00007eff450090ab: mov    %edi,%ebp
  0.04%    0.01%  │   │    0x00007eff450090ad: dec    %ebp               ;*isub
                  │   │                                                  ; - com.google.re2j.Machine::alloc@13 (line 133)
                  │   │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.31%    0.36%  │   │    0x00007eff450090af: mov    %ebp,0xc(%rbx)     ;*putfield poolSize
                  │   │                                                  ; - com.google.re2j.Machine::alloc@14 (line 133)
                  │   │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.12%    0.13%  │   │    0x00007eff450090b2: mov    0xc(%r12,%r9,8),%r11d  ; implicit exception: dispatches to 0x00007eff45009f25
  0.11%    0.11%  │   │    0x00007eff450090b7: cmp    %r11d,%ebp
                  │   │    0x00007eff450090ba: jae    0x00007eff4500943d
  0.04%    0.03%  │   │    0x00007eff450090c0: lea    (%r12,%r9,8),%r11
  0.27%    0.39%  │   │    0x00007eff450090c4: mov    0xc(%r11,%rdi,4),%r9d  ;*aaload
                  │   │                                                  ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │   │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.07%    0.12%  │   │    0x00007eff450090c9: mov    %r8d,0x10(%r12,%r9,8)  ;*putfield inst
                  │   │                                                  ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │   │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │   │                                                  ; implicit exception: dispatches to 0x00007eff45009f35
  0.40%    0.47%  │   │    0x00007eff450090ce: lea    (%r12,%r9,8),%r13  ;*aaload
                  │   │                                                  ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │   │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.02%    0.04%  │   │    0x00007eff450090d2: mov    %r13,%r10
  0.17%    0.19%  │   │    0x00007eff450090d5: shr    $0x9,%r10
  0.12%    0.14%  │   │    0x00007eff450090d9: movabs $0x7eff40813000,%r11
  0.25%    0.34%  │   │    0x00007eff450090e3: mov    %r12b,(%r11,%r10,1)  ;*aload_3
                  │   │                                                  ; - com.google.re2j.Inst$MatchInst::add@44 (line 103)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.31%    0.41%  │   │    0x00007eff450090e7: mov    0x58(%rsp),%r10
  0.06%    0.09%  │   │    0x00007eff450090ec: mov    0xc(%r10),%r10d    ;*arraylength
                  │   │                                                  ; - com.google.re2j.Inst$MatchInst::add@45 (line 103)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │   │                                                  ; implicit exception: dispatches to 0x00007eff45009ee9
  0.11%    0.12%  │   │    0x00007eff450090f0: test   %r10d,%r10d
                  │   │    0x00007eff450090f3: jle    0x00007eff4500963d  ;*ifle
                  │   │                                                  ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.16%    0.22%  │   │    0x00007eff450090f9: mov    0xc(%r13),%r8d     ;*getfield cap
                  │   │                                                  ; - com.google.re2j.Inst$MatchInst::add@51 (line 103)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.34%    0.28%  │   │    0x00007eff450090fd: mov    %r8,%r11
  0.04%    0.06%  │   │    0x00007eff45009100: shl    $0x3,%r11
  0.18%    0.12%  │   │    0x00007eff45009104: cmp    0x58(%rsp),%r11
                  │   │╭   0x00007eff45009109: je     0x00007eff45009137  ;*if_acmpeq
                  │   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@55 (line 103)
                  │   ││                                                 ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │   ││                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.19%    0.20%  │   ││   0x00007eff4500910b: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x00007eff45009f49
  0.56%    0.49%  │   ││   0x00007eff45009110: lea    (%r12,%r8,8),%rcx  ;*getfield cap
                  │   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@51 (line 103)
                  │   ││                                                 ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │   ││                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.05%    0.04%  │   ││   0x00007eff45009114: cmp    %r10d,%r11d
                  │   ││   0x00007eff45009117: jb     0x00007eff45009481
  0.82%    0.68%  │   ││   0x00007eff4500911d: lea    0x10(%r12,%r8,8),%rsi
  0.07%    0.06%  │   ││   0x00007eff45009122: movslq %r10d,%rdx
  0.02%    0.04%  │   ││   0x00007eff45009125: mov    0x18(%rsp),%rdi
  0.03%    0.04%  │   ││   0x00007eff4500912a: movabs $0x7eff44e37640,%r10
  0.47%    0.32%  │   ││   0x00007eff45009134: callq  *%r10              ;*aload_1
                  │   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@71 (line 106)
                  │   ││                                                 ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │   ││                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
           0.00%  │   │↘   0x00007eff45009137: mov    0x20(%r14),%r8d    ;*getfield denseThreads
                  │   │                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                  │   │                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.17%    0.25%  │   │    0x00007eff4500913b: mov    0xc(%r14),%ebp     ;*getfield size
                  │   │                                                  ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                  │   │                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.26%    0.26%  │   │    0x00007eff4500913f: mov    %ebp,%r10d
  0.10%    0.10%  │   │    0x00007eff45009142: inc    %r10d
                  │   │    0x00007eff45009145: mov    %r10d,0xc(%r14)    ;*putfield size
                  │   │                                                  ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                  │   │                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.26%    0.23%  │   │    0x00007eff45009149: mov    0xc(%r12,%r8,8),%r10d  ; implicit exception: dispatches to 0x00007eff45009ef9
  0.26%    0.32%  │   │    0x00007eff4500914e: cmp    %r10d,%ebp
                  │   │    0x00007eff45009151: jae    0x00007eff450093c2  ;*aastore
                  │   │                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │   │                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.11%    0.19%  │   │    0x00007eff45009157: lea    (%r12,%r8,8),%r10  ;*getfield denseThreads
                  │   │                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                  │   │                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │   │    0x00007eff4500915b: lea    0x10(%r10,%rbp,4),%r10
  0.19%    0.24%  │   │    0x00007eff45009160: mov    %r13,%r8
  0.27%    0.30%  │   │    0x00007eff45009163: shr    $0x3,%r8
  0.16%    0.16%  │   │    0x00007eff45009167: mov    %r8d,(%r10)
  0.00%           │   │    0x00007eff4500916a: shr    $0x9,%r10
  0.22%    0.20%  │   │    0x00007eff4500916e: movabs $0x7eff40813000,%r11
  0.21%    0.26%  │   │    0x00007eff45009178: mov    %r12b,(%r11,%r10,1)  ;*synchronization entry
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.12%    0.14%  ↘   │    0x00007eff4500917c: mov    0x10(%rsp),%r10
  0.17%    0.19%      │    0x00007eff45009181: mov    0x20(%r10),%ebp    ;*getfield argInst
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@41 (line 193)
  0.22%    0.23%      │    0x00007eff45009185: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007eff45009e31
  0.26%    0.18%      │    0x00007eff4500918a: cmp    $0xf8019992,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                      │    0x00007eff45009191: jne    0x00007eff45009375
  0.07%    0.10%      │    0x00007eff45009197: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.20%    0.17%      │    0x00007eff4500919b: mov    0x18(%r10),%ecx    ;*getfield pc
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.17%    0.23%      │    0x00007eff4500919f: cmp    $0x40,%ecx
                      │    0x00007eff450091a2: jg     0x00007eff450095bd  ;*if_icmpgt
                      │                                                  ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.15%    0.16%      │    0x00007eff450091a8: mov    $0x1,%r9d
  0.02%    0.01%      │    0x00007eff450091ae: shl    %cl,%r9            ;*lshl
                      │                                                  ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.72%    0.62%      │    0x00007eff450091b1: mov    0x10(%r14),%r11    ;*getfield pcsl
                      │                                                  ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                      │    0x00007eff450091b5: mov    %r11,%r8
  0.15%    0.14%      │    0x00007eff450091b8: and    %r9,%r8            ;*land
                      │                                                  ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.13%    0.13%      │    0x00007eff450091bb: test   %r8,%r8
                      │    0x00007eff450091be: jne    0x00007eff450095e1  ;*ifeq
                      │                                                  ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.22%    0.26%      │    0x00007eff450091c4: cmp    $0x40,%ecx
                      │    0x00007eff450091c7: jge    0x00007eff45009619  ;*if_icmpge
                      │                                                  ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
           0.01%      │    0x00007eff450091cd: mov    %r12b,0x18(%r14)   ;*putfield empty
                      │                                                  ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.16%    0.16%      │    0x00007eff450091d1: or     %r11,%r9
  0.21%    0.20%      │    0x00007eff450091d4: mov    %r9,0x10(%r14)     ;*putfield pcsl
                      │                                                  ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.16%    0.22%      │    0x00007eff450091d8: mov    0xc(%rbx),%r8d     ;*getfield poolSize
                      │                                                  ; - com.google.re2j.Machine::alloc@1 (line 132)
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                      │                                                  ; implicit exception: dispatches to 0x00007eff45009e49
  0.01%               │    0x00007eff450091dc: test   %r8d,%r8d
                      │    0x00007eff450091df: jle    0x00007eff450094ed  ;*ifle
                      │                                                  ; - com.google.re2j.Machine::alloc@4 (line 132)
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.13%    0.08%      │    0x00007eff450091e5: mov    0x24(%rbx),%ecx    ;*getfield pool
                      │                                                  ; - com.google.re2j.Machine::alloc@18 (line 134)
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.16%    0.07%      │    0x00007eff450091e8: mov    %r8d,%ebp
  0.27%    0.25%      │    0x00007eff450091eb: dec    %ebp               ;*isub
                      │                                                  ; - com.google.re2j.Machine::alloc@13 (line 133)
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.01%    0.00%      │    0x00007eff450091ed: mov    %ebp,0xc(%rbx)     ;*putfield poolSize
                      │                                                  ; - com.google.re2j.Machine::alloc@14 (line 133)
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.21%    0.24%      │    0x00007eff450091f0: mov    0xc(%r12,%rcx,8),%r11d  ; implicit exception: dispatches to 0x00007eff45009e5d
  0.19%    0.22%      │    0x00007eff450091f5: cmp    %r11d,%ebp
                      │    0x00007eff450091f8: jae    0x00007eff45009333
  0.28%    0.27%      │    0x00007eff450091fe: lea    (%r12,%rcx,8),%r11
           0.00%      │    0x00007eff45009202: mov    0xc(%r11,%r8,4),%r13d  ;*aaload
                      │                                                  ; - com.google.re2j.Machine::alloc@25 (line 134)
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.17%    0.18%      │    0x00007eff45009207: mov    0xc(%r12,%r13,8),%r11d  ;*getfield cap
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@51 (line 103)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                      │                                                  ; implicit exception: dispatches to 0x00007eff45009e6d
  0.18%    0.20%      │    0x00007eff4500920c: mov    0x58(%rsp),%r8
  0.26%    0.20%      │    0x00007eff45009211: mov    0xc(%r8),%r9d      ;*arraylength
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@45 (line 103)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
           0.00%      │    0x00007eff45009215: lea    (%r12,%r13,8),%rbp  ;*aaload
                      │                                                  ; - com.google.re2j.Machine::alloc@25 (line 134)
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.14%    0.10%      │    0x00007eff45009219: shr    $0x3,%r10
  0.17%    0.11%      │    0x00007eff4500921d: mov    %r10d,0x10(%r12,%r13,8)
  0.23%    0.29%      │    0x00007eff45009222: mov    %rbp,%r10
  0.00%               │    0x00007eff45009225: shr    $0x9,%r10
  0.21%    0.13%      │    0x00007eff45009229: movabs $0x7eff40813000,%r8
  0.20%    0.21%      │    0x00007eff45009233: mov    %r12b,(%r8,%r10,1)  ;*putfield inst
                      │                                                  ; - com.google.re2j.Machine::alloc@45 (line 138)
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.31%    0.37%      │    0x00007eff45009237: test   %r9d,%r9d
                      │    0x00007eff4500923a: jle    0x00007eff45009511  ;*ifle
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.01%               │    0x00007eff45009240: mov    %r11,%r10
  0.19%    0.13%      │    0x00007eff45009243: shl    $0x3,%r10
  0.17%    0.29%      │    0x00007eff45009247: cmp    0x58(%rsp),%r10
                      │ ╭  0x00007eff4500924c: je     0x00007eff4500927a  ;*if_acmpeq
                      │ │                                                ; - com.google.re2j.Inst$MatchInst::add@55 (line 103)
                      │ │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.22%    0.26%      │ │  0x00007eff4500924e: mov    0xc(%r12,%r11,8),%r8d  ; implicit exception: dispatches to 0x00007eff45009e99
  0.04%    0.07%      │ │  0x00007eff45009253: lea    (%r12,%r11,8),%rcx  ;*getfield cap
                      │ │                                                ; - com.google.re2j.Inst$MatchInst::add@51 (line 103)
                      │ │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.13%    0.08%      │ │  0x00007eff45009257: cmp    %r9d,%r8d
                      │ │  0x00007eff4500925a: jb     0x00007eff45009391
  0.26%    0.29%      │ │  0x00007eff45009260: lea    0x10(%r12,%r11,8),%rsi
  0.24%    0.31%      │ │  0x00007eff45009265: movslq %r9d,%rdx
                      │ │  0x00007eff45009268: mov    0x18(%rsp),%rdi
  0.13%    0.21%      │ │  0x00007eff4500926d: movabs $0x7eff44e37640,%r10
  0.13%    0.27%      │ │  0x00007eff45009277: callq  *%r10              ;*aload_1
                      │ │                                                ; - com.google.re2j.Inst$MatchInst::add@71 (line 106)
                      │ │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                      │ ↘  0x00007eff4500927a: mov    0x20(%r14),%r8d    ;*getfield denseThreads
                      │                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.06%    0.06%      │    0x00007eff4500927e: mov    0xc(%r14),%ebp     ;*getfield size
                      │                                                  ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.17%    0.13%      │    0x00007eff45009282: mov    %ebp,%r10d
  0.33%    0.16%      │    0x00007eff45009285: inc    %r10d
           0.00%      │    0x00007eff45009288: mov    %r10d,0xc(%r14)    ;*putfield size
                      │                                                  ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.08%    0.10%      │    0x00007eff4500928c: mov    0xc(%r12,%r8,8),%r10d  ; implicit exception: dispatches to 0x00007eff45009e81
  0.23%    0.21%      │    0x00007eff45009291: cmp    %r10d,%ebp
                      │    0x00007eff45009294: jae    0x00007eff45009355  ;*aastore
                      │                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.37%    0.46%      │    0x00007eff4500929a: lea    (%r12,%r8,8),%r10  ;*getfield denseThreads
                      │                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                      │    0x00007eff4500929e: lea    0x10(%r10,%rbp,4),%r10
  0.07%    0.08%      │    0x00007eff450092a3: mov    %r13d,(%r10)
  0.11%    0.22%      │    0x00007eff450092a6: shr    $0x9,%r10
  0.34%    0.46%      │    0x00007eff450092aa: movabs $0x7eff40813000,%r11
                      │    0x00007eff450092b4: mov    %r12b,(%r11,%r10,1)  ;*if_icmpgt
                      │                                                  ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
  0.06%    0.10%      │    0x00007eff450092b8: xor    %eax,%eax
  0.15%    0.21%      │    0x00007eff450092ba: add    $0x90,%rsp
  0.36%    0.48%      │    0x00007eff450092c1: pop    %rbp
  0.07%    0.08%      │    0x00007eff450092c2: test   %eax,0x16005d38(%rip)        # 0x00007eff5b00f000
                      │                                                  ;   {poll_return}
  0.20%    0.17%      │    0x00007eff450092c8: retq   
                      ↘    0x00007eff450092c9: mov    %r8d,0x10(%r13)
                           0x00007eff450092cd: mov    %r13,%r10
                           0x00007eff450092d0: shr    $0x9,%r10
                           0x00007eff450092d4: movabs $0x7eff40813000,%r11
                           0x00007eff450092de: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                                                                         ; - com.google.re2j.Inst$MatchInst::add@41 (line 101)
                                                                         ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                                                                         ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                           0x00007eff450092e2: jmpq   0x00007eff450090e7
....................................................................................................
 32.39%   34.65%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 542 (854 bytes) 

                                                                                   ; - com.google.re2j.Machine::match@121 (line 201)
                                     0x00007eff4501c05f: mov    $0x5,%r9d          ;*iload_1
                                                                                   ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                                                                                   ; - com.google.re2j.Machine::match@121 (line 201)
                                     0x00007eff4501c065: cmp    $0xa,%ecx
                                     0x00007eff4501c068: je     0x00007eff4501c635  ;*iload_0
                                                                                   ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                                                                                   ; - com.google.re2j.Machine::match@121 (line 201)
                                     0x00007eff4501c06e: mov    %ecx,%ebx
                                     0x00007eff4501c070: add    $0xffffffbf,%ebx
  0.01%                              0x00007eff4501c073: cmp    $0x1a,%ebx
                  ╭                  0x00007eff4501c076: jb     0x00007eff4501c089  ;*if_icmple
                  │                                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │                                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                                ; - com.google.re2j.Machine::match@121 (line 201)
                  │                  0x00007eff4501c078: mov    %ecx,%r8d
                  │                  0x00007eff4501c07b: add    $0xffffff9f,%r8d
                  │                  0x00007eff4501c07f: cmp    $0x1a,%r8d
                  │                  0x00007eff4501c083: jae    0x00007eff4501c63e  ;*iconst_1
                  │                                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │                                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                                ; - com.google.re2j.Machine::match@121 (line 201)
           0.00%  ↘                  0x00007eff4501c089: or     $0x10,%r9d         ;*iload_2
                                                                                   ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                                   ; - com.google.re2j.Machine::match@121 (line 201)
  0.00%    0.00%                     0x00007eff4501c08d: mov    %rdi,%r8
                                     0x00007eff4501c090: shl    $0x3,%r8           ;*getfield q1
                                                                                   ; - com.google.re2j.Machine::match@53 (line 188)
                                     0x00007eff4501c094: mov    %r14d,%r13d
                                     0x00007eff4501c097: and    $0x4,%r13d         ;*iand
                                                                                   ; - com.google.re2j.Machine::match@147 (line 208)
                                     0x00007eff4501c09b: mov    %ecx,0x28(%rsp)
  0.00%    0.01%                     0x00007eff4501c09f: mov    %r8,0x58(%rsp)
  0.00%                              0x00007eff4501c0a4: xor    %eax,%eax
                                     0x00007eff4501c0a6: xor    %r8d,%r8d
                   ╭                 0x00007eff4501c0a9: jmpq   0x00007eff4501c229
                   │                 0x00007eff4501c0ae: xchg   %ax,%ax
  0.07%    0.10%   │        ↗        0x00007eff4501c0b0: or     $0x20,%r10d        ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                   │        │                                                      ; - com.google.re2j.Machine::match@323 (line 241)
  0.12%    0.10%   │        │        0x00007eff4501c0b4: mov    %r10d,0x34(%rsp)   ;*iload_2
                   │        │                                                      ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   │        │                                                      ; - com.google.re2j.Machine::match@323 (line 241)
  0.05%    0.06%   │        │↗       0x00007eff4501c0b9: mov    0x48(%rsp),%r10
  0.04%    0.02%   │        ││       0x00007eff4501c0be: mov    0x10(%r10),%r11d   ;*getfield end
                   │        ││                                                     ; - com.google.re2j.MachineInput$UTF16Input::endPos@1 (line 221)
                   │        ││                                                     ; - com.google.re2j.Machine::match@345 (line 242)
  0.28%    0.18%   │        ││       0x00007eff4501c0c2: mov    0x20(%rsp),%r9d
  0.11%    0.10%   │        ││       0x00007eff4501c0c7: cmp    %r11d,%r9d
                   │╭       ││       0x00007eff4501c0ca: je     0x00007eff4501c3c9  ;*if_icmpne
                   ││       ││                                                     ; - com.google.re2j.Machine::match@348 (line 242)
  0.12%    0.06%   ││       ││       0x00007eff4501c0d0: xor    %r11d,%r11d        ;*invokespecial step
                   ││       ││                                                     ; - com.google.re2j.Machine::match@356 (line 242)
  0.06%    0.03%   ││       ││    ↗  0x00007eff4501c0d3: mov    %r9d,0x14(%rsp)
  0.08%    0.08%   ││       ││    │  0x00007eff4501c0d8: mov    %r8d,0x28(%rsp)
  0.14%    0.14%   ││       ││    │  0x00007eff4501c0dd: add    0x2c(%rsp),%r9d    ;*iadd
                   ││       ││    │                                                ; - com.google.re2j.Machine::match@337 (line 242)
  0.12%    0.03%   ││       ││    │  0x00007eff4501c0e2: mov    %r9d,0x20(%rsp)
  0.11%    0.06%   ││       ││    │  0x00007eff4501c0e7: mov    0x38(%rsp),%rsi
  0.05%    0.04%   ││       ││    │  0x00007eff4501c0ec: mov    0x50(%rsp),%rdx
  0.13%    0.16%   ││       ││    │  0x00007eff4501c0f1: mov    0x58(%rsp),%rcx
  0.03%    0.01%   ││       ││    │  0x00007eff4501c0f6: mov    0x14(%rsp),%r8d
  0.08%    0.08%   ││       ││    │  0x00007eff4501c0fb: mov    %ebx,%edi
  0.05%    0.06%   ││       ││    │  0x00007eff4501c0fd: mov    0x34(%rsp),%r10d
  0.14%    0.14%   ││       ││    │  0x00007eff4501c102: mov    %r10d,(%rsp)
  0.02%    0.02%   ││       ││    │  0x00007eff4501c106: mov    0x40(%rsp),%ebx
  0.07%    0.03%   ││       ││    │  0x00007eff4501c10a: mov    %ebx,0x8(%rsp)
  0.08%    0.08%   ││       ││    │  0x00007eff4501c10e: mov    %r11d,0x10(%rsp)
  0.09%    0.18%   ││       ││    │  0x00007eff4501c113: callq  0x00007eff44e2b020  ; OopMap{[24]=NarrowOop [56]=Oop [72]=Oop [80]=Oop [88]=Oop off=696}
                   ││       ││    │                                                ;*invokespecial step
                   ││       ││    │                                                ; - com.google.re2j.Machine::match@356 (line 242)
                   ││       ││    │                                                ;   {optimized virtual_call}
           0.00%   ││       ││    │  0x00007eff4501c118: mov    0x38(%rsp),%r10
  0.05%    0.00%   ││       ││    │  0x00007eff4501c11d: movzbl 0x10(%r10),%eax    ;*getfield matched
                   ││       ││    │                                                ; - com.google.re2j.Machine::match@159 (line 212)
  0.28%    0.06%   ││       ││    │  0x00007eff4501c122: mov    0x2c(%rsp),%r8d
                   ││       ││    │  0x00007eff4501c127: test   %r8d,%r8d
                   ││╭      ││    │  0x00007eff4501c12a: je     0x00007eff4501c3d4  ;*ifne
                   │││      ││    │                                                ; - com.google.re2j.Machine::match@361 (line 243)
  0.04%    0.01%   │││      ││    │  0x00007eff4501c130: mov    0x28(%r10),%r11d   ;*getfield matchcap
                   │││      ││    │                                                ; - com.google.re2j.Machine::match@368 (line 246)
  0.01%    0.01%   │││      ││    │  0x00007eff4501c134: mov    %r11d,0x60(%rsp)
  0.21%    0.16%   │││      ││    │  0x00007eff4501c139: mov    0xc(%r12,%r11,8),%ebp  ;*arraylength
                   │││      ││    │                                                ; - com.google.re2j.Machine::match@371 (line 246)
                   │││      ││    │                                                ; implicit exception: dispatches to 0x00007eff4501d0ed
  0.06%    0.06%   │││      ││    │  0x00007eff4501c13e: test   %ebp,%ebp
  0.06%    0.07%   │││      ││    │  0x00007eff4501c140: je     0x00007eff4501c941  ;*ifne
                   │││      ││    │                                                ; - com.google.re2j.Machine::match@372 (line 246)
  0.05%    0.05%   │││      ││    │  0x00007eff4501c146: mov    0x28(%rsp),%r9d
  0.24%    0.21%   │││      ││    │  0x00007eff4501c14b: cmp    $0xffffffff,%r9d
                   │││      ││    │  0x00007eff4501c14f: je     0x00007eff4501c5a3  ;*if_icmpeq
                   │││      ││    │                                                ; - com.google.re2j.Machine::match@401 (line 254)
                   │││      ││    │  0x00007eff4501c155: mov    0x48(%rsp),%r8
  0.03%    0.03%   │││      ││    │  0x00007eff4501c15a: mov    0x10(%r8),%r11d    ;*getfield end
                   │││      ││    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                   │││      ││    │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.03%    0.03%   │││      ││    │  0x00007eff4501c15e: mov    0x30(%rsp),%r10d
  0.20%    0.28%   │││      ││    │  0x00007eff4501c163: add    0x20(%rsp),%r10d
                   │││      ││    │  0x00007eff4501c168: add    0xc(%r8),%r10d     ;*iadd
                   │││      ││    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                   │││      ││    │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.02%    0.03%   │││      ││    │  0x00007eff4501c16c: cmp    %r11d,%r10d
                   │││      ││    │  0x00007eff4501c16f: jge    0x00007eff4501c5b7  ;*if_icmpge
                   │││      ││    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                   │││      ││    │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.04%    0.06%   │││      ││    │  0x00007eff4501c175: mov    %r9d,%r11d
  0.23%    0.24%   │││      ││    │  0x00007eff4501c178: mov    0x14(%r8),%ebp     ;*getfield str
                   │││      ││    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                   │││      ││    │                                                ; - com.google.re2j.Machine::match@409 (line 255)
                   │││      ││    │  0x00007eff4501c17c: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007eff4501d0fd
  0.05%    0.09%   │││      ││    │  0x00007eff4501c181: cmp    $0xf80002da,%ecx   ;   {metadata(&apos;java/lang/String&apos;)}
                   │││      ││    │  0x00007eff4501c187: jne    0x00007eff4501c779
  0.07%    0.09%   │││      ││    │  0x00007eff4501c18d: lea    (%r12,%rbp,8),%r9  ;*invokeinterface charAt
                   │││      ││    │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││      ││    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││      ││    │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.14%    0.27%   │││      ││    │  0x00007eff4501c191: test   %r10d,%r10d
                   │││      ││    │  0x00007eff4501c194: jl     0x00007eff4501c8cd  ;*iflt
                   │││      ││    │                                                ; - java.lang.String::charAt@1 (line 657)
                   │││      ││    │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││      ││    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││      ││    │                                                ; - com.google.re2j.Machine::match@409 (line 255)
                   │││      ││    │  0x00007eff4501c19a: mov    %r9,%rcx
  0.04%    0.03%   │││      ││    │  0x00007eff4501c19d: mov    %r10d,%r9d
  0.09%    0.15%   │││      ││    │  0x00007eff4501c1a0: mov    0xc(%rcx),%ebx     ;*getfield value
                   │││      ││    │                                                ; - java.lang.String::charAt@6 (line 657)
                   │││      ││    │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││      ││    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││      ││    │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.19%    0.25%   │││      ││    │  0x00007eff4501c1a3: mov    0xc(%r12,%rbx,8),%ebp  ;*arraylength
                   │││      ││    │                                                ; - java.lang.String::charAt@9 (line 657)
                   │││      ││    │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││      ││    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││      ││    │                                                ; - com.google.re2j.Machine::match@409 (line 255)
                   │││      ││    │                                                ; implicit exception: dispatches to 0x00007eff4501d111
  0.50%    0.58%   │││      ││    │  0x00007eff4501c1a8: cmp    %ebp,%r10d
                   │││      ││    │  0x00007eff4501c1ab: jge    0x00007eff4501c981  ;*if_icmplt
                   │││      ││    │                                                ; - java.lang.String::charAt@10 (line 657)
                   │││      ││    │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││      ││    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││      ││    │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.31%    0.36%   │││      ││    │  0x00007eff4501c1b1: cmp    %ebp,%r10d
                   │││      ││    │  0x00007eff4501c1b4: jae    0x00007eff4501c6fd
  0.18%    0.18%   │││      ││    │  0x00007eff4501c1ba: lea    (%r12,%rbx,8),%r10
  0.01%    0.00%   │││      ││    │  0x00007eff4501c1be: movzwl 0x10(%r10,%r9,2),%r10d  ;*caload
                   │││      ││    │                                                ; - java.lang.String::charAt@27 (line 660)
                   │││      ││    │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││      ││    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││      ││    │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.03%    0.03%   │││      ││    │  0x00007eff4501c1c4: cmp    $0xd800,%r10d
                   │││      ││    │  0x00007eff4501c1cb: jge    0x00007eff4501c9e1  ;*if_icmplt
                   │││      ││    │                                                ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   │││      ││    │                                                ; - java.lang.Character::codePointAt@9 (line 4867)
                   │││      ││    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││      ││    │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.27%    0.45%   │││      ││    │  0x00007eff4501c1d1: shl    $0x3,%r10d         ;*ishl
                   │││      ││    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                   │││      ││    │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.09%    0.08%   │││      ││    │  0x00007eff4501c1d5: mov    %r10d,%ebx
  0.00%            │││      ││    │  0x00007eff4501c1d8: or     $0x1,%ebx
  0.16%    0.24%   │││      ││    │  0x00007eff4501c1db: and    $0x7,%r10d
  0.13%    0.12%   │││      ││    │  0x00007eff4501c1df: sar    $0x3,%ebx          ;*ishr
                   │││      ││    │                                                ; - com.google.re2j.Machine::match@417 (line 256)
  0.15%    0.21%   │││      ││    │  0x00007eff4501c1e2: or     $0x1,%r10d         ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                   │││      ││    │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.01%    0.00%   │││      ││    │  0x00007eff4501c1e6: mov    %r11d,%r9d         ; OopMap{r8=Oop [56]=Oop [80]=Oop [88]=Oop [96]=NarrowOop off=905}
                   │││      ││    │                                                ;*goto
                   │││      ││    │                                                ; - com.google.re2j.Machine::match@439 (line 262)
           0.00%   │││      ││    │  0x00007eff4501c1e9: test   %eax,0x15ff2e11(%rip)        # 0x00007eff5b00f000
                   │││      ││    │                                                ;*goto
                   │││      ││    │                                                ; - com.google.re2j.Machine::match@439 (line 262)
                   │││      ││    │                                                ;   {poll}
  0.10%    0.15%   │││      ││    │  0x00007eff4501c1ef: mov    0x58(%rsp),%r11
  0.16%    0.20%   │││      ││    │  0x00007eff4501c1f4: mov    %r11,%rdx
           0.01%   │││      ││    │  0x00007eff4501c1f7: shr    $0x3,%rdx
                   │││      ││    │  0x00007eff4501c1fb: mov    %r9d,0x28(%rsp)
  0.09%    0.11%   │││      ││    │  0x00007eff4501c200: mov    0x34(%rsp),%r9d
  0.20%    0.16%   │││      ││    │  0x00007eff4501c205: mov    %ebx,%r11d
  0.02%    0.00%   │││      ││    │  0x00007eff4501c208: mov    0x50(%rsp),%rcx
           0.00%   │││      ││    │  0x00007eff4501c20d: mov    %rcx,0x58(%rsp)
  0.14%    0.15%   │││      ││    │  0x00007eff4501c212: mov    0x30(%rsp),%ecx
  0.19%    0.21%   │││      ││    │  0x00007eff4501c216: mov    %ecx,0x2c(%rsp)
  0.01%    0.00%   │││      ││    │  0x00007eff4501c21a: mov    %r8,0x48(%rsp)
                   │││      ││    │  0x00007eff4501c21f: mov    0x1c(%rsp),%r13d
  0.12%    0.12%   │││      ││    │  0x00007eff4501c224: mov    0x20(%rsp),%r8d    ;*aload
                   │││      ││    │                                                ; - com.google.re2j.Machine::match@136 (line 207)
  0.18%    0.21%   ↘││      ││    │  0x00007eff4501c229: mov    %edx,%ebx
  0.01%    0.00%    ││      ││    │  0x00007eff4501c22b: movzbl 0x18(%r12,%rdx,8),%ecx  ; implicit exception: dispatches to 0x00007eff4501d09d
                    ││      ││    │  0x00007eff4501c231: test   %ecx,%ecx
                    ││╭     ││    │  0x00007eff4501c233: je     0x00007eff4501c3a2  ;*ifeq
                    │││     ││    │                                                ; - com.google.re2j.Machine::match@141 (line 207)
  0.11%    0.13%    │││     ││    │  0x00007eff4501c239: test   %r13d,%r13d
                    │││     ││    │  0x00007eff4501c23c: jne    0x00007eff4501ca71  ;*ifeq
                    │││     ││    │                                                ; - com.google.re2j.Machine::match@148 (line 208)
  0.18%    0.14%    │││     ││    │  0x00007eff4501c242: test   %eax,%eax
                    │││     ││    │  0x00007eff4501c244: jne    0x00007eff4501cac1  ;*ifeq
                    │││     ││    │                                                ; - com.google.re2j.Machine::match@162 (line 212)
                    │││     ││    │  0x00007eff4501c24a: mov    0x38(%rsp),%rcx
  0.00%             │││     ││    │  0x00007eff4501c24f: mov    0x14(%rcx),%edx    ;*getfield re2
                    │││     ││    │                                                ; - com.google.re2j.Machine::match@169 (line 216)
  0.08%    0.08%    │││     ││    │  0x00007eff4501c252: mov    0x24(%r12,%rdx,8),%edi  ;*getfield prefix
                    │││     ││    │                                                ; - com.google.re2j.Machine::match@172 (line 216)
                    │││     ││    │                                                ; implicit exception: dispatches to 0x00007eff4501d121
  0.14%    0.16%    │││     ││    │  0x00007eff4501c257: mov    0xc(%r12,%rdi,8),%edx  ;*getfield value
                    │││     ││    │                                                ; - java.lang.String::isEmpty@1 (line 635)
                    │││     ││    │                                                ; - com.google.re2j.Machine::match@175 (line 216)
                    │││     ││    │                                                ; implicit exception: dispatches to 0x00007eff4501d131
  0.09%    0.06%    │││     ││    │  0x00007eff4501c25c: mov    0xc(%r12,%rdx,8),%ebp  ;*arraylength
                    │││     ││    │                                                ; - java.lang.String::isEmpty@4 (line 635)
                    │││     ││    │                                                ; - com.google.re2j.Machine::match@175 (line 216)
                    │││     ││    │                                                ; implicit exception: dispatches to 0x00007eff4501d141
  0.64%    0.78%    │││     ││    │  0x00007eff4501c261: test   %ebp,%ebp
                    │││     ││    │  0x00007eff4501c263: jne    0x00007eff4501ca35  ;*aload_0
                    │││     ││    │                                                ; - com.google.re2j.Machine::match@267 (line 233)
  0.30%    0.29%    │││     ││↗   │  0x00007eff4501c269: test   %eax,%eax
                    │││     │││   │  0x00007eff4501c26b: jne    0x00007eff4501c7fa  ;*ifne
                    │││     │││   │                                                ; - com.google.re2j.Machine::match@271 (line 233)
  0.00%    0.00%    │││     │││   │  0x00007eff4501c271: test   %r8d,%r8d
                    │││╭    │││   │  0x00007eff4501c274: je     0x00007eff4501c3c0  ;*ifeq
                    ││││    │││   │                                                ; - com.google.re2j.Machine::match@275 (line 233)
                    ││││    │││   │  0x00007eff4501c27a: mov    0x40(%rsp),%edi
  0.01%    0.04%    ││││    │││   │  0x00007eff4501c27e: test   %edi,%edi
  0.22%    0.23%    ││││    │││   │  0x00007eff4501c280: jne    0x00007eff4501c881  ;*aload_0
                    ││││    │││   │                                                ; - com.google.re2j.Machine::match@282 (line 236)
  0.01%             ││││    │││  ↗│  0x00007eff4501c286: mov    0x60(%rsp),%esi
                    ││││    │││  ││  0x00007eff4501c28a: mov    0xc(%r12,%rsi,8),%ebp  ;*arraylength
                    ││││    │││  ││                                                ; - com.google.re2j.Machine::match@286 (line 236)
                    ││││    │││  ││                                                ; implicit exception: dispatches to 0x00007eff4501d0ad
  0.02%    0.04%    ││││    │││  ││  0x00007eff4501c28f: test   %ebp,%ebp
                    ││││    │││  ││  0x00007eff4501c291: jle    0x00007eff4501c83d  ;*ifle
                    ││││    │││  ││                                                ; - com.google.re2j.Machine::match@287 (line 236)
  0.29%    0.19%    ││││    │││  ││  0x00007eff4501c297: test   %ebp,%ebp
                    ││││    │││  ││  0x00007eff4501c299: jbe    0x00007eff4501c65e
  0.01%             ││││    │││  ││  0x00007eff4501c29f: mov    %r8d,0x10(%r12,%rsi,8)  ;*iastore
                    ││││    │││  ││                                                ; - com.google.re2j.Machine::match@296 (line 237)
                    ││││    │││  ││  0x00007eff4501c2a4: mov    0x18(%rcx),%edx    ;*getfield prog
                    ││││    │││  ││                                                ; - com.google.re2j.Machine::match@298 (line 239)
  0.03%    0.08%    ││││    │││  ││  0x00007eff4501c2a7: mov    0x1c(%r12,%rdx,8),%ebp  ;*getfield startInst
                    ││││    │││  ││                                                ; - com.google.re2j.Machine::match@301 (line 239)
                    ││││    │││  ││                                                ; implicit exception: dispatches to 0x00007eff4501d0bd
  0.30%    0.19%    ││││    │││  ││  0x00007eff4501c2ac: mov    0x8(%r12,%rbp,8),%esi  ; implicit exception: dispatches to 0x00007eff4501d0cd
  0.01%    0.00%    ││││    │││  ││  0x00007eff4501c2b1: cmp    $0xf8019843,%esi   ;   {metadata(&apos;com/google/re2j/Inst$AltInst&apos;)}
                    ││││    │││  ││  0x00007eff4501c2b7: jne    0x00007eff4501c6a1  ;*invokevirtual add
                    ││││    │││  ││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.01%             ││││    │││  ││  0x00007eff4501c2bd: mov    %r8d,0x20(%rsp)
  0.01%    0.01%    ││││    │││  ││  0x00007eff4501c2c2: mov    %r13d,0x1c(%rsp)
  0.25%    0.20%    ││││    │││  ││  0x00007eff4501c2c7: mov    %r11d,0x14(%rsp)
  0.01%    0.00%    ││││    │││  ││  0x00007eff4501c2cc: mov    %r10d,0x30(%rsp)
                    ││││    │││  ││  0x00007eff4501c2d1: mov    %ebx,0x18(%rsp)
  0.02%    0.02%    ││││    │││  ││  0x00007eff4501c2d5: mov    %edi,0x40(%rsp)
  0.29%    0.18%    ││││    │││  ││  0x00007eff4501c2d9: mov    %rcx,0x38(%rsp)    ;*ifeq
                    ││││    │││  ││                                                ; - com.google.re2j.Machine::match@275 (line 233)
  0.01%    0.00%    ││││    │││  ││  0x00007eff4501c2de: lea    (%r12,%rbp,8),%rsi  ;*invokevirtual add
                    ││││    │││  ││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.00%             ││││    │││  ││  0x00007eff4501c2e2: lea    (%r12,%rbx,8),%r10  ;*aload
                    ││││    │││  ││                                                ; - com.google.re2j.Machine::match@136 (line 207)
  0.01%    0.02%    ││││    │││  ││  0x00007eff4501c2e6: mov    %r10,0x50(%rsp)
  0.27%    0.23%    ││││    │││  ││  0x00007eff4501c2eb: mov    0x60(%rsp),%r11d
           0.01%    ││││    │││  ││  0x00007eff4501c2f0: mov    %r11,%r8
                    ││││    │││  ││  0x00007eff4501c2f3: shl    $0x3,%r8           ;*getfield matchcap
                    ││││    │││  ││                                                ; - com.google.re2j.Machine::match@283 (line 236)
  0.01%    0.01%    ││││    │││  ││  0x00007eff4501c2f7: mov    %r10,%rdx
  0.27%    0.22%    ││││    │││  ││  0x00007eff4501c2fa: mov    0x20(%rsp),%ecx
  0.01%    0.01%    ││││    │││  ││  0x00007eff4501c2fe: xor    %edi,%edi
                    ││││    │││  ││  0x00007eff4501c300: mov    0x38(%rsp),%r10
  0.36%    0.11%    ││││    │││  ││  0x00007eff4501c305: mov    %r10,(%rsp)
  0.25%    0.22%    ││││    │││  ││  0x00007eff4501c309: xchg   %ax,%ax
  0.01%             ││││    │││  ││  0x00007eff4501c30b: callq  0x00007eff44e2b020  ; OopMap{[24]=NarrowOop [56]=Oop [72]=Oop [80]=Oop [88]=Oop off=1200}
                    ││││    │││  ││                                                ;*invokevirtual add
                    ││││    │││  ││                                                ; - com.google.re2j.Machine::match@315 (line 239)
                    ││││    │││  ││                                                ;   {optimized virtual_call}
  0.17%    0.14%    ││││    │││  ││  0x00007eff4501c310: mov    0x28(%rsp),%ebx
  0.03%    0.03%    ││││    │││  ││  0x00007eff4501c314: test   %ebx,%ebx
                    ││││╭   │││  ││  0x00007eff4501c316: jl     0x00007eff4501c3ac  ;*ifge
                    │││││   │││  ││                                                ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                    │││││   │││  ││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.11%    0.10%    │││││   │││  ││  0x00007eff4501c31c: xor    %r10d,%r10d        ;*iload_0
                    │││││   │││  ││                                                ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                    │││││   │││  ││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.24%    0.23%    │││││   │││↗ ││  0x00007eff4501c31f: cmp    $0xa,%ebx
                    │││││   ││││ ││  0x00007eff4501c322: je     0x00007eff4501c5c4  ;*iload_1
                    │││││   ││││ ││                                                ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                    │││││   ││││ ││                                                ; - com.google.re2j.Machine::match@323 (line 241)
           0.01%    │││││   ││││ ││  0x00007eff4501c328: mov    0x14(%rsp),%r8d
  0.03%    0.03%    │││││   ││││ ││  0x00007eff4501c32d: test   %r8d,%r8d
                    │││││╭  ││││ ││  0x00007eff4501c330: jl     0x00007eff4501c3b7  ;*iload_1
                    ││││││  ││││ ││                                                ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                    ││││││  ││││ ││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.08%    0.10%    ││││││  ││││↗││  0x00007eff4501c336: cmp    $0xa,%r8d
                    ││││││  │││││││  0x00007eff4501c33a: je     0x00007eff4501c5cd  ;*iload_0
                    ││││││  │││││││                                                ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                    ││││││  │││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.16%    0.17%    ││││││  │││││││  0x00007eff4501c340: mov    0x28(%rsp),%r9d
  0.01%             ││││││  │││││││  0x00007eff4501c345: add    $0xffffffbf,%r9d
  0.03%    0.05%    ││││││  │││││││  0x00007eff4501c349: cmp    $0x1a,%r9d
                    ││││││╭ │││││││  0x00007eff4501c34d: jb     0x00007eff4501c362  ;*if_icmple
                    │││││││ │││││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                    │││││││ │││││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    │││││││ │││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.10%    0.12%    │││││││ │││││││  0x00007eff4501c34f: mov    0x28(%rsp),%r11d
  0.12%    0.17%    │││││││ │││││││  0x00007eff4501c354: add    $0xffffff9f,%r11d
                    │││││││ │││││││  0x00007eff4501c358: cmp    $0x1a,%r11d
                    │││││││ │││││││  0x00007eff4501c35c: jae    0x00007eff4501c5d6  ;*iconst_1
                    │││││││ │││││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                    │││││││ │││││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    │││││││ │││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.03%    0.04%    ││││││↘ │││││││  0x00007eff4501c362: mov    $0x1,%ebp          ;*ireturn
                    ││││││  │││││││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                    ││││││  │││││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    ││││││  │││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.12%    0.22%    ││││││  │││││││  0x00007eff4501c367: mov    %r8d,%r9d
  0.10%    0.18%    ││││││  │││││││  0x00007eff4501c36a: add    $0xffffffbf,%r9d
  0.00%    0.00%    ││││││  │││││││  0x00007eff4501c36e: cmp    $0x1a,%r9d
                    ││││││ ╭│││││││  0x00007eff4501c372: jb     0x00007eff4501c385  ;*if_icmple
                    ││││││ ││││││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                    ││││││ ││││││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    ││││││ ││││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.03%    0.04%    ││││││ ││││││││  0x00007eff4501c374: mov    %r8d,%r11d
  0.06%    0.10%    ││││││ ││││││││  0x00007eff4501c377: add    $0xffffff9f,%r11d
  0.13%    0.21%    ││││││ ││││││││  0x00007eff4501c37b: cmp    $0x1a,%r11d
                    ││││││ ││││││││  0x00007eff4501c37f: jae    0x00007eff4501c5f9  ;*iconst_1
                    ││││││ ││││││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                    ││││││ ││││││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    ││││││ ││││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.03%    0.01%    ││││││ ↘│││││││  0x00007eff4501c385: mov    $0x1,%r9d          ;*ireturn
                    ││││││  │││││││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                    ││││││  │││││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    ││││││  │││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.15%    0.12%    ││││││  │││││││  0x00007eff4501c38b: cmp    %r9d,%ebp
                    ││││││  ╰││││││  0x00007eff4501c38e: je     0x00007eff4501c0b0  ;*if_icmpeq
                    ││││││   ││││││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                    ││││││   ││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.07%    0.06%    ││││││   ││││││  0x00007eff4501c394: or     $0x10,%r10d        ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                    ││││││   ││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.01%    0.02%    ││││││   ││││││  0x00007eff4501c398: mov    %r10d,0x34(%rsp)
  0.23%    0.22%    ││││││   ╰│││││  0x00007eff4501c39d: jmpq   0x00007eff4501c0b9
  0.01%    0.02%    ││↘│││    │││││  0x00007eff4501c3a2: mov    0x38(%rsp),%rcx
  0.03%    0.03%    ││ │││    ╰││││  0x00007eff4501c3a7: jmpq   0x00007eff4501c269
  0.01%    0.00%    ││ │↘│     ││││  0x00007eff4501c3ac: mov    $0x5,%r10d
  0.00%    0.00%    ││ │ │     ╰│││  0x00007eff4501c3b2: jmpq   0x00007eff4501c31f
                    ││ │ ↘      │││  0x00007eff4501c3b7: or     $0xa,%r10d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@27 (line 180)
                    ││ │        │││                                                ; - com.google.re2j.Machine::match@323 (line 241)
           0.00%    ││ │        ╰││  0x00007eff4501c3bb: jmpq   0x00007eff4501c336
                    ││ ↘         ││  0x00007eff4501c3c0: mov    0x40(%rsp),%edi
                    ││           ╰│  0x00007eff4501c3c4: jmpq   0x00007eff4501c286
           0.00%    ↘│            │  0x00007eff4501c3c9: mov    $0x1,%r11d
                     │            ╰  0x00007eff4501c3cf: jmpq   0x00007eff4501c0d3
                     ↘               0x00007eff4501c3d4: mov    0x58(%rsp),%r10
                                     0x00007eff4501c3d9: mov    %r10,0x18(%rsp)
                                     0x00007eff4501c3de: mov    0xc(%r10),%ebx     ;*getfield size
                                                                                   ; - com.google.re2j.Machine::freeQueue@1 (line 148)
                                                                                   ; - com.google.re2j.Machine::freeQueue@3 (line 144)
                                                                                   ; - com.google.re2j.Machine::match@445 (line 263)
                                                                                   ; implicit exception: dispatches to 0x00007eff4501d1a9
                                     0x00007eff4501c3e2: test   %ebx,%ebx
                                     0x00007eff4501c3e4: jle    0x00007eff4501c56c  ;*ifle
....................................................................................................
 13.72%   13.73%  <total for region 3>

....[Hottest Regions]...............................................................................
 35.13%   33.44%         C2, level 4  com.google.re2j.Machine::step, version 504 (733 bytes) 
 32.39%   34.65%         C2, level 4  com.google.re2j.Inst$AltInst::add, version 508 (1180 bytes) 
 13.72%   13.73%         C2, level 4  com.google.re2j.Machine::match, version 542 (854 bytes) 
  9.32%   10.16%        runtime stub  StubRoutines::jint_disjoint_arraycopy (130 bytes) 
  4.63%    4.27%         C2, level 4  com.google.re2j.Inst$AltInst::add, version 508 (123 bytes) 
  0.82%    0.81%   [kernel.kallsyms]  [unknown] (6 bytes) 
  0.57%    0.53%         C2, level 4  com.google.re2j.Machine::match, version 542 (117 bytes) 
  0.51%    0.07%         C2, level 4  com.google.re2j.Machine::init, version 550 (299 bytes) 
  0.10%            [kernel.kallsyms]  [unknown] (30 bytes) 
  0.10%    0.02%         C2, level 4  com.google.re2j.Machine::init, version 550 (119 bytes) 
  0.08%    0.07%         C2, level 4  com.google.re2j.Matcher::find, version 577 (73 bytes) 
  0.08%    0.04%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 637 (122 bytes) 
  0.07%    0.01%   [kernel.kallsyms]  [unknown] (3 bytes) 
  0.07%    0.06%         C2, level 4  com.google.re2j.Machine::init, version 550 (56 bytes) 
  0.06%    0.01%   [kernel.kallsyms]  [unknown] (27 bytes) 
  0.05%    0.01%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.05%    0.03%           libjvm.so  _ZN18PSPromotionManager22copy_to_survivor_spaceILb0EEEP7oopDescS2_ (18 bytes) 
  0.04%    0.04%   [kernel.kallsyms]  [unknown] (1 bytes) 
  0.04%    0.03%   [kernel.kallsyms]  [unknown] (74 bytes) 
  0.04%    0.02%         C2, level 4  com.google.re2j.Matcher::find, version 577 (0 bytes) 
  2.13%    1.96%  <...other 449 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 37.02%   38.92%         C2, level 4  com.google.re2j.Inst$AltInst::add, version 508 
 35.17%   33.46%         C2, level 4  com.google.re2j.Machine::step, version 504 
 14.39%   14.31%         C2, level 4  com.google.re2j.Machine::match, version 542 
  9.32%   10.16%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
  1.92%    1.74%   [kernel.kallsyms]  [unknown] 
  0.70%    0.16%         C2, level 4  com.google.re2j.Machine::init, version 550 
  0.28%    0.15%         C2, level 4  com.google.re2j.Matcher::find, version 577 
  0.18%    0.07%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 637 
  0.07%    0.03%         C2, level 4  java.util.Collections::shuffle, version 583 
  0.06%    0.03%      hsdis-amd64.so  [unknown] 
  0.06%    0.05%           libjvm.so  _ZN18PSPromotionManager22copy_to_survivor_spaceILb0EEEP7oopDescS2_ 
  0.05%    0.06%        libc-2.26.so  vfprintf 
  0.03%    0.01%           libjvm.so  _ZN19GenericTaskQueueSetI17OverflowTaskQueueI8StarTaskL10MemoryType1ELj131072EELS2_1EE15steal_best_of_2EjPiRS1_ 
  0.03%    0.01%              [vdso]  [unknown] 
  0.03%    0.03%        libc-2.26.so  _IO_fflush 
  0.03%    0.08%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.02%    0.09%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.02%    0.01%        runtime stub  StubRoutines::arrayof_jint_fill 
  0.02%                  C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 572 
  0.02%           libpthread-2.26.so  __libc_write 
  0.58%    0.39%  <...other 85 warm methods...>
....................................................................................................
100.00%   99.78%  <totals>

....[Distribution by Source]........................................................................
 87.84%   87.11%         C2, level 4
  9.34%   10.18%        runtime stub
  1.92%    1.74%   [kernel.kallsyms]
  0.46%    0.53%           libjvm.so
  0.19%    0.29%        libc-2.26.so
  0.10%    0.08%  libpthread-2.26.so
  0.06%    0.03%      hsdis-amd64.so
  0.04%    0.01%         interpreter
  0.03%    0.01%              [vdso]
  0.00%                libdl-2.26.so
  0.00%    0.00%         C1, level 3
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                     Mode  Cnt     Score   Error  Units
Re2jFindRegex.testExp2       thrpt   20  8200.664 ± 8.193  ops/s
Re2jFindRegex.testExp2:·asm  thrpt            NaN            ---
