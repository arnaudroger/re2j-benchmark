# JMH version: 1.19
# VM version: JDK 1.8.0_131, VM 25.131-b11
# VM invoker: /usr/lib/jvm/java-8-oracle/jre/bin/java
# VM options: <none>
# Warmup: 20 iterations, 1 s each
# Measurement: 20 iterations, 1 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Throughput, ops/time
# Benchmark: com.github.arnaudroger.re2j.Re2jRegex.testExp2

# Run progress: 0.00% complete, ETA 00:00:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5888.191 ops/s
# Warmup Iteration   2: 11564.118 ops/s
# Warmup Iteration   3: 11961.196 ops/s
# Warmup Iteration   4: 11859.620 ops/s
# Warmup Iteration   5: 12158.979 ops/s
# Warmup Iteration   6: 12047.582 ops/s
# Warmup Iteration   7: 12038.235 ops/s
# Warmup Iteration   8: 12302.768 ops/s
# Warmup Iteration   9: 10464.646 ops/s
# Warmup Iteration  10: 12083.501 ops/s
# Warmup Iteration  11: 12336.707 ops/s
# Warmup Iteration  12: 10347.074 ops/s
# Warmup Iteration  13: 12466.429 ops/s
# Warmup Iteration  14: 12364.969 ops/s
# Warmup Iteration  15: 12387.791 ops/s
# Warmup Iteration  16: 12461.930 ops/s
# Warmup Iteration  17: 12333.751 ops/s
# Warmup Iteration  18: 12342.383 ops/s
# Warmup Iteration  19: 12498.102 ops/s
# Warmup Iteration  20: 12498.096 ops/s
Iteration   1: 12400.723 ops/s
Iteration   2: 12466.321 ops/s
Iteration   3: 12305.413 ops/s
Iteration   4: 12216.037 ops/s
Iteration   5: 12377.305 ops/s
Iteration   6: 12545.383 ops/s
Iteration   7: 12301.834 ops/s
Iteration   8: 12454.751 ops/s
Iteration   9: 12503.526 ops/s
Iteration  10: 12484.934 ops/s
Iteration  11: 12492.728 ops/s
Iteration  12: 12509.668 ops/s
Iteration  13: 12515.614 ops/s
Iteration  14: 12562.049 ops/s
Iteration  15: 12562.279 ops/s
Iteration  16: 12436.544 ops/s
Iteration  17: 12390.577 ops/s
Iteration  18: 12529.935 ops/s
Iteration  19: 12547.493 ops/s
Iteration  20: 12521.181 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jRegex.testExp2":
  12456.215 ±(99.9%) 83.939 ops/s [Average]
  (min, avg, max) = (12216.037, 12456.215, 12562.279), stdev = 96.664
  CI (99.9%): [12372.276, 12540.154] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jRegex.testExp2:·asm":
PrintAssembly processed: 206067 total address lines.
Perf output processed (skipped 23.507 seconds):
 Column 1: cycles (20388 events)
 Column 2: instructions (20448 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 530 (718 bytes) 

                               # parm6:    [sp+0x78]   = int
                               # parm7:    [sp+0x80]   = boolean
                               0x00007f9245234720: mov    0x8(%rsi),%r10d
                               0x00007f9245234724: shl    $0x3,%r10
                               0x00007f9245234728: cmp    %r10,%rax
                               0x00007f924523472b: jne    0x00007f9245045e20  ;   {runtime_call}
                               0x00007f9245234731: data16 xchg %ax,%ax
                               0x00007f9245234734: nopl   0x0(%rax,%rax,1)
                               0x00007f924523473c: data16 data16 xchg %ax,%ax
                             [Verified Entry Point]
  0.19%    0.14%               0x00007f9245234740: mov    %eax,-0x14000(%rsp)
  0.17%    0.21%               0x00007f9245234747: push   %rbp
  0.16%    0.13%               0x00007f9245234748: sub    $0x60,%rsp         ;*synchronization entry
                                                                             ; - com.google.re2j.Machine::step@-1 (line 276)
  0.15%    0.17%               0x00007f924523474c: mov    %edi,0x18(%rsp)
  0.12%    0.10%               0x00007f9245234750: mov    %r9d,0x14(%rsp)
  0.11%    0.12%               0x00007f9245234755: mov    %r8d,0x10(%rsp)
  0.08%    0.08%               0x00007f924523475a: mov    %rcx,0x8(%rsp)
  0.12%    0.07%               0x00007f924523475f: vmovq  %rdx,%xmm0
  0.07%    0.08%               0x00007f9245234764: vmovq  %rsi,%xmm1
  0.15%    0.11%               0x00007f9245234769: mov    0x14(%rsi),%r11d   ;*getfield re2
                                                                             ; - com.google.re2j.Machine::step@1 (line 276)
  0.08%    0.04%               0x00007f924523476d: movzbl 0x18(%r12,%r11,8),%r10d  ;*getfield longest
                                                                             ; - com.google.re2j.Machine::step@4 (line 276)
                                                                             ; implicit exception: dispatches to 0x00007f92452353bd
  0.13%    0.07%               0x00007f9245234773: vmovd  %r10d,%xmm2
  0.10%    0.09%               0x00007f9245234778: mov    0xc(%rdx),%ecx     ;*getfield size
                                                                             ; - com.google.re2j.Machine::step@15 (line 277)
                                                                             ; implicit exception: dispatches to 0x00007f92452353cd
  0.10%    0.07%               0x00007f924523477b: test   %ecx,%ecx
                  ╭            0x00007f924523477d: jle    0x00007f92452348f7  ;*if_icmpge
                  │                                                          ; - com.google.re2j.Machine::step@18 (line 277)
  0.07%    0.04%  │            0x00007f9245234783: vmovd  %xmm2,%r11d
  0.09%    0.05%  │            0x00007f9245234788: test   %r11d,%r11d
                  │            0x00007f924523478b: jne    0x00007f9245234ee7
  0.10%    0.08%  │            0x00007f9245234791: xor    %r10d,%r10d
  0.10%    0.09%  │╭           0x00007f9245234794: jmp    0x00007f92452347b6
                  ││           0x00007f9245234796: data16 nopw 0x0(%rax,%rax,1)
  1.29%    0.81%  ││     ↗     0x00007f92452347a0: mov    %r10d,%ecx
  0.02%    0.01%  ││     │     0x00007f92452347a3: mov    %r11,0x8(%rsp)
  0.19%    0.08%  ││     │     0x00007f92452347a8: mov    %ebx,0x78(%rsp)
  0.05%    0.04%  ││     │     0x00007f92452347ac: mov    %edi,0x80(%rsp)
  1.14%    0.73%  ││     │     0x00007f92452347b3: mov    %edx,%r10d         ;*getfield size
                  ││     │                                                   ; - com.google.re2j.Machine::step@15 (line 277)
  0.09%    0.05%  │↘     │     0x00007f92452347b6: vmovq  %xmm0,%r11
  0.20%    0.15%  │      │     0x00007f92452347bb: mov    0x20(%r11),%r8d    ;*getfield denseThreads
                  │      │                                                   ; - com.google.re2j.Machine::step@22 (line 278)
  0.10%    0.10%  │      │     0x00007f92452347bf: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x00007f9245235379
  1.30%    0.71%  │      │     0x00007f92452347c4: cmp    %r11d,%r10d
                  │      │     0x00007f92452347c7: jae    0x00007f9245234c64
  0.04%    0.12%  │      │     0x00007f92452347cd: lea    (%r12,%r8,8),%r11
  0.18%    0.14%  │      │     0x00007f92452347d1: mov    0x10(%r11,%r10,4),%r8d  ;*aaload
                  │      │                                                   ; - com.google.re2j.Machine::step@27 (line 278)
  0.13%    0.14%  │      │     0x00007f92452347d6: mov    0x10(%r12,%r8,8),%r9d  ;*getfield inst
                  │      │                                                   ; - com.google.re2j.Machine::step@78 (line 283)
                  │      │                                                   ; implicit exception: dispatches to 0x00007f924523538d
  2.60%    1.50%  │      │     0x00007f92452347db: mov    0x8(%r12,%r9,8),%r11d  ; implicit exception: dispatches to 0x00007f924523539d
  5.22%    5.97%  │      │     0x00007f92452347e0: lea    (%r12,%r9,8),%rdi
  0.03%    0.01%  │      │     0x00007f92452347e4: cmp    $0xf8019992,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │      │     0x00007f92452347eb: jne    0x00007f9245234b78  ;*invokevirtual isMatch
                  │      │                                                   ; - com.google.re2j.Machine::step@85 (line 285)
  1.64%    1.93%  │      │     0x00007f92452347f1: mov    0xc(%rdi),%r9d
  0.19%    0.19%  │      │     0x00007f92452347f5: cmp    $0x6,%r9d
                  │ ╭    │     0x00007f92452347f9: je     0x00007f9245234a13  ;*if_icmpne
                  │ │    │                                                   ; - com.google.re2j.Inst::isMatch@6 (line 78)
                  │ │    │                                                   ; - com.google.re2j.Inst$MatchInst::isMatch@1 (line 82)
                  │ │    │                                                   ; - com.google.re2j.Machine::step@-1 (line 276)
  1.57%    1.96%  │ │    │     0x00007f92452347ff: xor    %eax,%eax          ;*synchronization entry
                  │ │    │                                                   ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%    0.00%  │ │    │  ↗  0x00007f9245234801: mov    0xc(%r12,%r8,8),%r14d  ;*getfield cap
                  │ │    │  │                                                ; - com.google.re2j.Machine::step@104 (line 289)
  0.03%    0.03%  │ │    │  │  0x00007f9245234806: vmovq  %xmm1,%r11
  0.10%    0.11%  │ │    │  │  0x00007f924523480b: mov    0xc(%r11),%r9d     ;*getfield poolSize
                  │ │    │  │                                                ; - com.google.re2j.Machine::free@1 (line 167)
                  │ │    │  │                                                ; - com.google.re2j.Machine::step@224 (line 303)
  1.59%    2.09%  │ │    │  │  0x00007f924523480f: mov    0x24(%r11),%r11d   ;*getfield pool
                  │ │    │  │                                                ; - com.google.re2j.Machine::free@5 (line 167)
                  │ │    │  │                                                ; - com.google.re2j.Machine::step@224 (line 303)
  0.01%    0.01%  │ │    │  │  0x00007f9245234813: mov    %r10d,%edx
  0.02%    0.04%  │ │    │  │  0x00007f9245234816: inc    %edx               ;*iadd
                  │ │    │  │                                                ; - com.google.re2j.Machine::step@171 (line 295)
  0.09%    0.14%  │ │    │  │  0x00007f9245234818: lea    (%r12,%r8,8),%rsi  ;*aaload
                  │ │    │  │                                                ; - com.google.re2j.Machine::step@27 (line 278)
  1.68%    2.11%  │ │    │  │  0x00007f924523481c: test   %eax,%eax
                  │ │╭   │  │  0x00007f924523481e: jne    0x00007f9245234a1d  ;*ifeq
                  │ ││   │  │                                                ; - com.google.re2j.Machine::step@88 (line 285)
  0.01%    0.01%  │ ││   │  │  0x00007f9245234824: mov    0x8(%rdi),%ebx
  0.02%    0.03%  │ ││   │  │  0x00007f9245234827: cmp    $0xf8019992,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │ ││   │  │  0x00007f924523482d: jne    0x00007f9245234cad  ;*invokevirtual matchRune
                  │ ││   │  │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.09%    0.19%  │ ││   │  │  0x00007f9245234833: mov    0xc(%rdi),%ebp     ;*getfield op
                  │ ││   │  │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@1 (line 134)
                  │ ││   │  │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  1.58%    2.25%  │ ││   │  │  0x00007f9245234836: cmp    $0xa,%ebp
                  │ ││╭  │  │  0x00007f9245234839: je     0x00007f9245234930  ;*if_icmpne
                  │ │││  │  │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@6 (line 134)
                  │ │││  │  │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.02%    0.01%  │ │││  │  │  0x00007f924523483f: cmp    $0xb,%ebp
                  │ │││  │  │  0x00007f9245234842: je     0x00007f9245234d89  ;*if_icmpne
                  │ │││  │  │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@17 (line 138)
                  │ │││  │  │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.02%    0.03%  │ │││  │  │  0x00007f9245234848: cmp    $0x9,%ebp
                  │ │││  │  │  0x00007f924523484b: je     0x00007f9245234dc9  ;*if_icmpne
                  │ │││  │  │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@38 (line 142)
                  │ │││  │  │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.55%    0.46%  │ │││  │  │  0x00007f9245234851: cmp    $0xc,%ebp
                  │ │││  │  │  0x00007f9245234854: jne    0x00007f9245234d49  ;*if_icmpne
                  │ │││  │  │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@61 (line 146)
                  │ │││  │  │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  1.63%    2.01%  │ │││  │  │  0x00007f924523485a: mov    0x20(%rdi),%eax    ;*getfield f0
                  │ │││  │  │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@65 (line 147)
                  │ │││  │  │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.03%    0.03%  │ │││  │  │  0x00007f924523485d: cmp    0x18(%rsp),%eax
                  │ │││╭ │  │  0x00007f9245234861: je     0x00007f9245234930  ;*if_icmpeq
                  │ ││││ │  │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@69 (line 147)
                  │ ││││ │  │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.48%    0.52%  │ ││││ │  │  0x00007f9245234867: mov    0x24(%rdi),%ebx    ;*getfield f1
                  │ ││││ │  │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@73 (line 147)
                  │ ││││ │  │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.08%    0.06%  │ ││││ │  │  0x00007f924523486a: cmp    0x18(%rsp),%ebx
                  │ ││││╭│  │  0x00007f924523486e: je     0x00007f9245234930  ;*if_icmpeq
                  │ ││││││  │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@77 (line 147)
                  │ ││││││  │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  1.66%    2.05%  │ ││││││  │  0x00007f9245234874: mov    0x28(%rdi),%ebp    ;*getfield f2
                  │ ││││││  │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@81 (line 147)
                  │ ││││││  │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.11%    0.12%  │ ││││││  │  0x00007f9245234877: cmp    0x18(%rsp),%ebp
                  │ ││││││  │  0x00007f924523487b: je     0x00007f9245234e5d  ;*if_icmpeq
                  │ ││││││  │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@85 (line 147)
                  │ ││││││  │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.49%    0.54%  │ ││││││  │  0x00007f9245234881: mov    0x2c(%rdi),%ebp    ;*getfield f3
                  │ ││││││  │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@89 (line 147)
                  │ ││││││  │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.06%    0.03%  │ ││││││  │  0x00007f9245234884: cmp    0x18(%rsp),%ebp
                  │ ││││││  │  0x00007f9245234888: je     0x00007f9245234e9d  ;*if_icmpne
                  │ ││││││  │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@93 (line 147)
                  │ ││││││  │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  1.62%    1.76%  │ ││││││  │  0x00007f924523488e: mov    0x78(%rsp),%ebx
  0.01%           │ ││││││  │  0x00007f9245234892: mov    0x80(%rsp),%edi    ;*getfield size
                  │ ││││││  │                                                ; - com.google.re2j.Machine::step@15 (line 277)
  0.15%    0.23%  │ ││││││  │  0x00007f9245234899: mov    0xc(%r12,%r11,8),%ebp  ;*arraylength
                  │ ││││││  │                                                ; - com.google.re2j.Machine::free@8 (line 167)
                  │ ││││││  │                                                ; - com.google.re2j.Machine::step@224 (line 303)
                  │ ││││││  │                                                ; implicit exception: dispatches to 0x00007f92452353ad
  0.08%    0.05%  │ ││││││  │  0x00007f924523489e: cmp    %ebp,%r9d
                  │ ││││││  │  0x00007f92452348a1: jge    0x00007f9245234e09  ;*if_icmplt
                  │ ││││││  │                                                ; - com.google.re2j.Machine::free@9 (line 167)
                  │ ││││││  │                                                ; - com.google.re2j.Machine::step@224 (line 303)
  1.46%    1.58%  │ ││││││  │  0x00007f92452348a7: mov    %r9d,%esi
  0.00%           │ ││││││  │  0x00007f92452348aa: inc    %esi
  0.20%    0.22%  │ ││││││  │  0x00007f92452348ac: vmovq  %xmm1,%rax
  0.03%    0.05%  │ ││││││  │  0x00007f92452348b1: mov    %esi,0xc(%rax)     ;*putfield poolSize
                  │ ││││││  │                                                ; - com.google.re2j.Machine::free@45 (line 170)
                  │ ││││││  │                                                ; - com.google.re2j.Machine::step@224 (line 303)
  1.43%    1.73%  │ ││││││  │  0x00007f92452348b4: cmp    %ebp,%r9d
                  │ ││││││  │  0x00007f92452348b7: jae    0x00007f9245234ce9  ;*aastore
                  │ ││││││  │                                                ; - com.google.re2j.Machine::free@49 (line 170)
                  │ ││││││  │                                                ; - com.google.re2j.Machine::step@224 (line 303)
  0.00%           │ ││││││  │  0x00007f92452348bd: vmovq  %xmm0,%r10
  0.16%    0.13%  │ ││││││  │  0x00007f92452348c2: mov    0xc(%r10),%r10d    ;*getfield size
                  │ ││││││  │                                                ; - com.google.re2j.Machine::step@15 (line 277)
  0.07%    0.05%  │ ││││││  │  0x00007f92452348c6: shl    $0x3,%r11          ;*getfield pool
                  │ ││││││  │                                                ; - com.google.re2j.Machine::free@5 (line 167)
                  │ ││││││  │                                                ; - com.google.re2j.Machine::step@224 (line 303)
  1.47%    1.21%  │ ││││││  │  0x00007f92452348ca: lea    0x10(%r11,%r9,4),%r11
           0.01%  │ ││││││  │  0x00007f92452348cf: mov    %r8d,(%r11)
  0.21%    0.09%  │ ││││││  │  0x00007f92452348d2: shr    $0x9,%r11
  0.04%    0.02%  │ ││││││  │  0x00007f92452348d6: movabs $0x7f9254a5b000,%r8
  1.46%    1.06%  │ ││││││  │  0x00007f92452348e0: mov    %r12b,(%r8,%r11,1)  ;*aastore
                  │ ││││││  │                                                ; - com.google.re2j.Machine::free@49 (line 170)
                  │ ││││││  │                                                ; - com.google.re2j.Machine::step@224 (line 303)
  0.04%    0.02%  │ ││││││  │  0x00007f92452348e4: mov    0x8(%rsp),%r11     ; OopMap{r11=Oop xmm0=Oop xmm1=Oop off=457}
                  │ ││││││  │                                                ;*goto
                  │ ││││││  │                                                ; - com.google.re2j.Machine::step@230 (line 277)
  0.30%    0.21%  │ ││││││ ↗│  0x00007f92452348e9: test   %eax,0x16e1e711(%rip)        # 0x00007f925c053000
                  │ ││││││ ││                                                ;*goto
                  │ ││││││ ││                                                ; - com.google.re2j.Machine::step@230 (line 277)
                  │ ││││││ ││                                                ;   {poll}
  0.06%    0.02%  │ ││││││ ││  0x00007f92452348ef: cmp    %ecx,%edx
                  │ │││││╰ ││  0x00007f92452348f1: jl     0x00007f92452347a0  ;*if_icmpge
                  │ │││││  ││                                                ; - com.google.re2j.Machine::step@18 (line 277)
  0.29%    0.21%  ↘ │││││  ││  0x00007f92452348f7: vmovq  %xmm0,%r10
  0.01%             │││││  ││  0x00007f92452348fc: movzbl 0x18(%r10),%r10d
  0.08%    0.03%    │││││  ││  0x00007f9245234901: test   %r10d,%r10d
                    │││││ ╭││  0x00007f9245234904: jne    0x00007f9245234924  ;*ifeq
                    │││││ │││                                                ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                    │││││ │││                                                ; - com.google.re2j.Machine::step@234 (line 306)
  0.01%    0.01%    │││││ │││  0x00007f9245234906: vmovq  %xmm0,%r10
  0.29%    0.21%    │││││ │││  0x00007f924523490b: mov    %r12d,0xc(%r10)    ;*putfield size
                    │││││ │││                                                ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                    │││││ │││                                                ; - com.google.re2j.Machine::step@234 (line 306)
           0.01%    │││││ │││  0x00007f924523490f: mov    0x1c(%r10),%ebp    ;*getfield pcs
                    │││││ │││                                                ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                    │││││ │││                                                ; - com.google.re2j.Machine::step@234 (line 306)
  0.07%    0.01%    │││││ │││  0x00007f9245234913: movb   $0x1,0x18(%r10)    ;*putfield empty
                    │││││ │││                                                ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                    │││││ │││                                                ; - com.google.re2j.Machine::step@234 (line 306)
  0.01%    0.00%    │││││ │││  0x00007f9245234918: mov    %r12,0x10(%r10)    ;*putfield pcsl
                    │││││ │││                                                ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                    │││││ │││                                                ; - com.google.re2j.Machine::step@234 (line 306)
  0.29%    0.19%    │││││ │││  0x00007f924523491c: test   %ebp,%ebp
                    │││││ │││  0x00007f924523491e: jne    0x00007f9245234f11  ;*getfield size
                    │││││ │││                                                ; - com.google.re2j.Machine::step@15 (line 277)
                    │││││ ↘││  0x00007f9245234924: add    $0x60,%rsp
  0.05%    0.01%    │││││  ││  0x00007f9245234928: pop    %rbp
           0.01%    │││││  ││  0x00007f9245234929: test   %eax,0x16e1e6d1(%rip)        # 0x00007f925c053000
                    │││││  ││                                                ;   {poll_return}
  0.25%    0.15%    │││││  ││  0x00007f924523492f: retq   
  0.47%    0.34%    ││↘↘↘  ││  0x00007f9245234930: mov    0x1c(%rdi),%r11d   ;*getfield outInst
                    ││     ││                                                ; - com.google.re2j.Machine::step@195 (line 300)
  0.26%    0.23%    ││     ││  0x00007f9245234934: mov    0x8(%r12,%r11,8),%ebx  ; implicit exception: dispatches to 0x00007f92452353dd
  0.37%    0.12%    ││     ││  0x00007f9245234939: lea    (%r12,%r11,8),%r9
                    ││     ││  0x00007f924523493d: xor    %edi,%edi
                    ││     ││  0x00007f924523493f: mov    $0x1,%eax
                    ││     ││  0x00007f9245234944: cmp    $0xf8019992,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                    ││     ││  0x00007f924523494a: jne    0x00007f9245234b9a  ;*invokevirtual add
                    ││     ││                                                ; - com.google.re2j.Machine::step@211 (line 300)
  0.10%    0.03%    ││     ││  0x00007f9245234950: mov    0x18(%r9),%ebx     ;*getfield pc
                    ││     ││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                    ││     ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%             ││     ││  0x00007f9245234954: mov    0x8(%rsp),%r11
                    ││     ││  0x00007f9245234959: mov    0x10(%r11),%rbp    ;*getfield pcsl
                    ││     ││                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                    ││     ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    ││     ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    ││     ││                                                ; implicit exception: dispatches to 0x00007f92452353fd
  0.08%             ││     ││  0x00007f924523495d: cmp    $0x40,%ebx
                    ││     ││  0x00007f9245234960: jg     0x00007f9245234f75  ;*if_icmpgt
                    ││     ││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                    ││     ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    ││     ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%    0.02%    ││     ││  0x00007f9245234966: mov    %ebx,%ecx
                    ││     ││  0x00007f9245234968: shl    %cl,%rax           ;*lshl
                    ││     ││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                    ││     ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    ││     ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.17%    0.12%    ││     ││  0x00007f924523496b: mov    %rbp,%rcx
                    ││     ││  0x00007f924523496e: and    %rax,%rcx          ;*land
                    ││     ││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                    ││     ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    ││     ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.03%             ││     ││  0x00007f9245234971: test   %rcx,%rcx
                    ││     ││  0x00007f9245234974: jne    0x00007f9245234fc5  ;*ifeq
                    ││     ││                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                    ││     ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    ││     ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.06%    0.02%    ││     ││  0x00007f924523497a: cmp    $0x40,%ebx
                    ││     ││  0x00007f924523497d: jge    0x00007f9245235025  ;*if_icmpge
                    ││     ││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                    ││     ││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    ││     ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%    0.00%    ││     ││  0x00007f9245234983: mov    %r12b,0x18(%r11)   ;*putfield empty
                    ││     ││                                                ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                    ││     ││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    ││     ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.06%             ││     ││  0x00007f9245234987: or     %rbp,%rax
                    ││     ││  0x00007f924523498a: mov    %rax,0x10(%r11)    ;*putfield pcsl
                    ││     ││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                    ││     ││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    ││     ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.05%    0.02%    ││     ││  0x00007f924523498e: mov    %rsi,%rbx
  0.01%             ││     ││  0x00007f9245234991: mov    %r9,%rcx
  0.01%    0.00%    ││     ││  0x00007f9245234994: shr    $0x3,%rcx
                    ││     ││  0x00007f9245234998: mov    %ecx,0x10(%r12,%r8,8)
  0.06%    0.02%    ││     ││  0x00007f924523499d: shr    $0x9,%rbx
  0.01%             ││     ││  0x00007f92452349a1: movabs $0x7f9254a5b000,%r9
  0.02%             ││     ││  0x00007f92452349ab: mov    %r12b,(%r9,%rbx,1)  ;*putfield inst
                    ││     ││                                                ; - com.google.re2j.Inst$MatchInst::add@41 (line 101)
                    ││     ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    ││     ││  0x00007f92452349af: mov    0xc(%r12,%r14,8),%ebp  ;*arraylength
                    ││     ││                                                ; - com.google.re2j.Inst$MatchInst::add@45 (line 103)
                    ││     ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    ││     ││                                                ; implicit exception: dispatches to 0x00007f9245235411
  0.04%    0.02%    ││     ││  0x00007f92452349b4: test   %ebp,%ebp
                    ││     ││  0x00007f92452349b6: jg     0x00007f9245235075  ;*ifle
                    ││     ││                                                ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                    ││     ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%    0.00%    ││     ││  0x00007f92452349bc: mov    0x20(%r11),%r9d    ;*getfield denseThreads
                    ││     ││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                    ││     ││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    ││     ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    ││     ││  0x00007f92452349c0: mov    0xc(%r11),%ebp     ;*getfield size
                    ││     ││                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                    ││     ││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    ││     ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    ││     ││  0x00007f92452349c4: mov    %ebp,%ebx
  0.05%    0.03%    ││     ││  0x00007f92452349c6: inc    %ebx
  0.00%    0.00%    ││     ││  0x00007f92452349c8: mov    %ebx,0xc(%r11)     ;*putfield size
                    ││     ││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                    ││     ││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    ││     ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%             ││     ││  0x00007f92452349cc: mov    0xc(%r12,%r9,8),%ecx  ; implicit exception: dispatches to 0x00007f9245235421
  0.01%             ││     ││  0x00007f92452349d1: cmp    %ecx,%ebp
                    ││     ││  0x00007f92452349d3: jae    0x00007f9245234f29  ;*aastore
                    ││     ││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    ││     ││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    ││     ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.07%    0.03%    ││     ││  0x00007f92452349d9: lea    (%r12,%r9,8),%r10  ;*getfield denseThreads
                    ││     ││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                    ││     ││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    ││     ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%    0.01%    ││     ││  0x00007f92452349dd: lea    0x10(%r10,%rbp,4),%r10
  0.00%             ││     ││  0x00007f92452349e2: mov    %r8d,(%r10)
  0.09%    0.05%    ││     ││  0x00007f92452349e5: shr    $0x9,%r10
  0.03%    0.04%    ││     ││  0x00007f92452349e9: movabs $0x7f9254a5b000,%r8
  0.01%    0.02%    ││     ││  0x00007f92452349f3: mov    %r12b,(%r8,%r10,1)  ;*synchronization entry
                    ││     ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.09%    0.05%    ││     ││  0x00007f92452349f7: vmovq  %xmm0,%r10
           0.01%    ││     ││  0x00007f92452349fc: mov    0xc(%r10),%ecx     ;*getfield size
                    ││     ││                                                ; - com.google.re2j.Machine::step@15 (line 277)
  0.00%    0.05%    ││     ││  0x00007f9245234a00: mov    %ecx,%r10d
           0.03%    ││     ││  0x00007f9245234a03: mov    0x78(%rsp),%ebx
  0.05%    0.04%    ││     ││  0x00007f9245234a07: mov    0x80(%rsp),%edi
  0.00%             ││     ╰│  0x00007f9245234a0e: jmpq   0x00007f92452348e9
                    ↘│      │  0x00007f9245234a13: mov    $0x1,%eax
                     │      ╰  0x00007f9245234a18: jmpq   0x00007f9245234801
                     ↘         0x00007f9245234a1d: mov    0x78(%rsp),%ebx
                               0x00007f9245234a21: cmp    $0x2,%ebx
                               0x00007f9245234a24: je     0x00007f9245234c50  ;*if_icmpne
                                                                             ; - com.google.re2j.Machine::step@94 (line 288)
                               0x00007f9245234a2a: mov    0x80(%rsp),%edi    ;*aload
                                                                             ; - com.google.re2j.Machine::step@102 (line 289)
                               0x00007f9245234a31: mov    0xc(%r12,%r14,8),%ebp  ;*arraylength
                                                                             ; - com.google.re2j.Machine::step@107 (line 289)
....................................................................................................
 40.94%   39.93%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Inst$AltInst::add, version 525 (1006 bytes) 

                        0x00007f92452373c8: movabs $0x7f9254a5b000,%r11
                        0x00007f92452373d2: mov    %r12b,(%r11,%r10,1)  ;*aastore
                                                                      ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                      ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                        0x00007f92452373d6: mov    %rbx,%rdx
                        0x00007f92452373d9: mov    0xa0(%rsp),%r10
                        0x00007f92452373e1: mov    %r8d,%edi
                  ╭     0x00007f92452373e4: jmpq   0x00007f92452376d6  ;*invokevirtual add
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.23%    0.05%  │     0x00007f92452373e9: mov    0x18(%r10),%ecx    ;*getfield pc
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@2 (line 187)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.30%    0.37%  │     0x00007f92452373ed: cmp    $0x40,%ecx
                  │     0x00007f92452373f0: jg     0x00007f9245237af9  ;*if_icmpgt
                  │                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.13%    0.21%  │     0x00007f92452373f6: mov    $0x1,%r9d
  0.08%    0.09%  │     0x00007f92452373fc: shl    %cl,%r9            ;*lshl
                  │                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.60%    0.67%  │     0x00007f92452373ff: mov    %rbx,%rsi
  0.07%    0.03%  │     0x00007f9245237402: and    %r9,%rsi           ;*land
                  │                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.21%    0.40%  │     0x00007f9245237405: test   %rsi,%rsi
                  │     0x00007f9245237408: jne    0x00007f9245237b41  ;*ifeq
                  │                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.32%    0.26%  │     0x00007f924523740e: cmp    $0x40,%ecx
                  │     0x00007f9245237411: jge    0x00007f9245237b8d  ;*if_icmpge
                  │                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.16%    0.17%  │     0x00007f9245237417: mov    0x1c(%r10),%ebp    ;*getfield outInst
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@23 (line 192)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.04%    0.10%  │     0x00007f924523741b: or     %r9,%rbx           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.24%    0.32%  │     0x00007f924523741e: mov    %rbx,0x10(%rax)    ;*putfield pcsl
                  │                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.29%    0.48%  │     0x00007f9245237422: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f92452381b5
  0.17%    0.23%  │     0x00007f9245237427: lea    (%r12,%rbp,8),%r9
  0.05%    0.06%  │     0x00007f924523742b: cmp    $0xf8019843,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$AltInst&apos;)}
                  │╭    0x00007f9245237431: je     0x00007f9245237564
  0.03%    0.01%  ││    0x00007f9245237437: cmp    $0xf8019992,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  ││    0x00007f924523743d: jne    0x00007f9245237dc5  ;*invokevirtual add
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.19%    0.23%  ││    0x00007f9245237443: mov    0x18(%r9),%ecx     ;*getfield pc
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.07%    0.11%  ││    0x00007f9245237447: cmp    $0x40,%ecx
                  ││    0x00007f924523744a: jg     0x00007f9245237fed  ;*if_icmpgt
                  ││                                                  ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.04%    0.07%  ││    0x00007f9245237450: mov    $0x1,%esi
  0.01%    0.01%  ││    0x00007f9245237455: shl    %cl,%rsi           ;*lshl
                  ││                                                  ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.33%    0.42%  ││    0x00007f9245237458: mov    %rbx,%rbp
  0.01%    0.03%  ││    0x00007f924523745b: and    %rsi,%rbp          ;*land
                  ││                                                  ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.20%    0.25%  ││    0x00007f924523745e: test   %rbp,%rbp
                  ││    0x00007f9245237461: jne    0x00007f924523803d  ;*ifeq
                  ││                                                  ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.08%    0.07%  ││    0x00007f9245237467: cmp    $0x40,%ecx
                  ││    0x00007f924523746a: jge    0x00007f9245238095  ;*if_icmpge
                  ││                                                  ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.04%    0.05%  ││    0x00007f9245237470: or     %rsi,%rbx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.00%    0.02%  ││    0x00007f9245237473: mov    %rbx,0x10(%rax)    ;*putfield pcsl
                  ││                                                  ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.29%    0.21%  ││    0x00007f9245237477: mov    %r9,%rcx
  0.06%    0.04%  ││    0x00007f924523747a: shr    $0x3,%rcx          ;*putfield inst
                  ││                                                  ; - com.google.re2j.Machine::alloc@45 (line 138)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.04%    0.06%  ││    0x00007f924523747e: test   %rdi,%rdi
                  ││    0x00007f9245237481: jne    0x00007f924523781b  ;*ifnonnull
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@24 (line 98)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.01%    0.02%  ││    0x00007f9245237487: mov    0xa0(%rsp),%r14
  0.20%    0.16%  ││    0x00007f924523748f: mov    0xc(%r14),%edi     ;*getfield poolSize
                  ││                                                  ; - com.google.re2j.Machine::alloc@1 (line 132)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  ││                                                  ; implicit exception: dispatches to 0x00007f92452382dd
  0.07%    0.05%  ││    0x00007f9245237493: test   %edi,%edi
                  ││    0x00007f9245237495: jle    0x00007f9245237f99  ;*ifle
                  ││                                                  ; - com.google.re2j.Machine::alloc@4 (line 132)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.05%    0.03%  ││    0x00007f924523749b: vmovd  %edi,%xmm2
  0.01%           ││    0x00007f924523749f: mov    %r9,%rdi
  0.21%    0.19%  ││    0x00007f92452374a2: vmovd  %r8d,%xmm1
  0.08%    0.03%  ││    0x00007f92452374a7: mov    %r10,%r8
  0.05%    0.03%  ││    0x00007f92452374aa: mov    %r11d,%r9d
  0.03%    0.01%  ││    0x00007f92452374ad: mov    0x24(%r14),%r10d   ;*getfield pool
                  ││                                                  ; - com.google.re2j.Machine::alloc@18 (line 134)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.22%    0.19%  ││    0x00007f92452374b1: vmovd  %r10d,%xmm3
  0.06%    0.06%  ││    0x00007f92452374b6: vmovd  %xmm2,%ebp
  0.04%    0.07%  ││    0x00007f92452374ba: dec    %ebp               ;*isub
                  ││                                                  ; - com.google.re2j.Machine::alloc@13 (line 133)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.01%    0.00%  ││    0x00007f92452374bc: mov    %ebp,0xc(%r14)     ;*putfield poolSize
                  ││                                                  ; - com.google.re2j.Machine::alloc@14 (line 133)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.24%    0.23%  ││    0x00007f92452374c0: vmovd  %xmm3,%r10d
  0.09%    0.07%  ││    0x00007f92452374c5: mov    0xc(%r12,%r10,8),%r10d  ; implicit exception: dispatches to 0x00007f92452382f1
  0.11%    0.08%  ││    0x00007f92452374ca: cmp    %r10d,%ebp
                  ││    0x00007f92452374cd: jae    0x00007f9245237e0d
  0.02%    0.03%  ││    0x00007f92452374d3: vmovd  %xmm3,%r10d
  0.21%    0.25%  ││    0x00007f92452374d8: lea    (%r12,%r10,8),%r11
  0.07%    0.05%  ││    0x00007f92452374dc: vmovd  %xmm2,%r10d
  0.04%    0.02%  ││    0x00007f92452374e1: mov    0xc(%r11,%r10,4),%r11d  ;*aaload
                  ││                                                  ; - com.google.re2j.Machine::alloc@25 (line 134)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.01%    0.00%  ││    0x00007f92452374e6: mov    %ecx,0x10(%r12,%r11,8)  ;*putfield inst
                  ││                                                  ; - com.google.re2j.Machine::alloc@45 (line 138)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  ││                                                  ; implicit exception: dispatches to 0x00007f9245238301
  1.32%    1.86%  ││    0x00007f92452374eb: lea    (%r12,%r11,8),%rdi  ;*aaload
                  ││                                                  ; - com.google.re2j.Machine::alloc@25 (line 134)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.00%    0.00%  ││    0x00007f92452374ef: mov    %rdi,%r10
                  ││    0x00007f92452374f2: shr    $0x9,%r10
                  ││    0x00007f92452374f6: movabs $0x7f9254a5b000,%r11
  0.37%    0.38%  ││    0x00007f9245237500: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                  ││                                                  ; - com.google.re2j.Machine::alloc@45 (line 138)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.64%    0.78%  ││    0x00007f9245237504: mov    %r9d,%r11d
                  ││    0x00007f9245237507: mov    %r8,%r10
                  ││    0x00007f924523750a: vmovd  %xmm1,%r8d         ;*aload_3
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@44 (line 103)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.06%    0.07%  ││    0x00007f924523750f: mov    0x58(%rsp),%r14
  0.31%    0.33%  ││    0x00007f9245237514: mov    0xc(%r14),%ebp     ;*arraylength
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@45 (line 103)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  ││                                                  ; implicit exception: dispatches to 0x00007f92452382b1
                  ││    0x00007f9245237518: test   %ebp,%ebp
                  ││    0x00007f924523751a: jg     0x00007f92452380e5  ;*ifle
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  ││    0x00007f9245237520: mov    %r8d,0xc(%rax)     ;*putfield size
                  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.05%    0.06%  ││    0x00007f9245237524: vmovd  %xmm0,%ecx
  0.35%    0.43%  ││    0x00007f9245237528: mov    0xc(%r12,%rcx,8),%ecx  ; implicit exception: dispatches to 0x00007f92452382c1
                  ││    0x00007f924523752d: cmp    %ecx,%r11d
                  ││    0x00007f9245237530: jae    0x00007f9245237d7d
                  ││    0x00007f9245237536: mov    %rdi,%rcx
  0.05%    0.07%  ││    0x00007f9245237539: shr    $0x3,%rcx          ;*aastore
                  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.32%    0.32%  ││    0x00007f924523753d: vmovd  %xmm0,%esi
           0.00%  ││    0x00007f9245237541: lea    (%r12,%rsi,8),%r11  ;*getfield denseThreads
                  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││    0x00007f9245237545: lea    0x10(%r11,%rdx,1),%r11
  0.07%    0.09%  ││    0x00007f924523754a: mov    %ecx,(%r11)
  0.26%    0.36%  ││    0x00007f924523754d: shr    $0x9,%r11
                  ││    0x00007f9245237551: movabs $0x7f9254a5b000,%r9
                  ││    0x00007f924523755b: mov    %r12b,(%r9,%r11,1)  ;*aastore
                  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.09%    0.11%  ││    0x00007f924523755f: xor    %r11d,%r11d
  0.22%    0.32%  ││╭   0x00007f9245237562: jmp    0x00007f92452375d0
  0.24%    0.30%  │↘│   0x00007f9245237564: mov    %r10,0x18(%rsp)
  0.07%    0.05%  │ │   0x00007f9245237569: mov    %r13,0x10(%rsp)
  0.06%    0.08%  │ │   0x00007f924523756e: mov    %rax,0x8(%rsp)     ;*invokevirtual add
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.01%    0.01%  │ │   0x00007f9245237573: mov    %r9,%rsi           ;*invokevirtual add
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.20%    0.28%  │ │   0x00007f9245237576: mov    %rax,%rdx
  0.08%    0.11%  │ │   0x00007f9245237579: mov    0x30(%rsp),%ecx
  0.06%    0.06%  │ │   0x00007f924523757d: mov    0x58(%rsp),%r8
  0.02%    0.00%  │ │   0x00007f9245237582: mov    0x54(%rsp),%r9d
  0.18%    0.20%  │ │   0x00007f9245237587: mov    0xa0(%rsp),%r10
  0.07%    0.08%  │ │   0x00007f924523758f: mov    %r10,(%rsp)
  0.08%    0.03%  │ │   0x00007f9245237593: mov    %ecx,0x20(%rsp)
  0.01%    0.02%  │ │   0x00007f9245237597: mov    %r8,0x28(%rsp)
  0.22%    0.21%  │ │   0x00007f924523759c: mov    %r9d,0x24(%rsp)
  0.08%    0.06%  │ │   0x00007f92452375a1: xchg   %ax,%ax
  0.03%    0.07%  │ │   0x00007f92452375a3: callq  0x00007f9245046020  ; OopMap{[160]=Oop [8]=Oop [16]=Oop [24]=Oop [40]=Oop [88]=Oop off=904}
                  │ │                                                 ;*invokevirtual add
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                 ;   {optimized virtual_call}
                  │ │   0x00007f92452375a8: mov    %rax,%r11
  0.04%    0.08%  │ │   0x00007f92452375ab: mov    0x8(%rsp),%rax
  0.22%    0.36%  │ │   0x00007f92452375b0: mov    0xc(%rax),%r8d     ;*getfield size
                  │ │                                                 ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                  │ │                                                 ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.00%           │ │   0x00007f92452375b4: mov    0x10(%rax),%rbx    ;*getfield pcsl
                  │ │                                                 ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                  │ │                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.04%    0.05%  │ │   0x00007f92452375b8: mov    0x20(%rax),%r9d    ;*getfield denseThreads
                  │ │                                                 ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                  │ │                                                 ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.20%    0.22%  │ │   0x00007f92452375bc: vmovd  %r9d,%xmm0
  0.12%    0.13%  │ │   0x00007f92452375c1: mov    0x10(%rsp),%r13
           0.00%  │ │   0x00007f92452375c6: mov    0x28(%rsp),%r14
  0.04%    0.07%  │ │   0x00007f92452375cb: mov    0x18(%rsp),%r10    ;*getfield size
                  │ │                                                 ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                  │ │                                                 ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.17%    0.32%  │ ↘   0x00007f92452375d0: mov    0x20(%r10),%ebp    ;*getfield argInst
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@41 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.09%    0.11%  │     0x00007f92452375d4: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f92452381cd
  0.10%    0.08%  │     0x00007f92452375d9: cmp    $0xf8019992,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │     0x00007f92452375e0: jne    0x00007f92452378e9
  0.27%    0.39%  │     0x00007f92452375e6: lea    (%r12,%rbp,8),%r9  ;*invokevirtual add
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.20%    0.17%  │     0x00007f92452375ea: mov    0x18(%r9),%ecx     ;*getfield pc
                  │                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.15%    0.12%  │     0x00007f92452375ee: cmp    $0x40,%ecx
                  │     0x00007f92452375f1: jg     0x00007f9245237bd5  ;*if_icmpgt
                  │                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                  │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.11%    0.13%  │     0x00007f92452375f7: mov    $0x1,%edx
  0.29%    0.42%  │     0x00007f92452375fc: shl    %cl,%rdx           ;*lshl
                  │                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                  │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.42%    0.51%  │     0x00007f92452375ff: mov    %rdx,%r10
  0.25%    0.37%  │     0x00007f9245237602: and    %rbx,%r10          ;*land
                  │                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                  │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.15%    0.26%  │     0x00007f9245237605: test   %r10,%r10
                  │     0x00007f9245237608: jne    0x00007f9245237c19  ;*ifeq
                  │                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                  │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.20%    0.18%  │     0x00007f924523760e: cmp    $0x40,%ecx
                  │     0x00007f9245237611: jge    0x00007f9245237c61  ;*if_icmpge
                  │                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                  │                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.07%    0.08%  │     0x00007f9245237617: mov    %r12b,0x18(%rax)   ;*putfield empty
                  │                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                  │                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.31%    0.29%  │     0x00007f924523761b: or     %rbx,%rdx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                  │                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.17%    0.06%  │     0x00007f924523761e: mov    %rdx,0x10(%rax)    ;*putfield pcsl
                  │                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                  │                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.08%    0.09%  │     0x00007f9245237622: mov    %r9,%rsi
  0.06%    0.07%  │     0x00007f9245237625: shr    $0x3,%rsi          ;*putfield inst
                  │                                                   ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │                                                   ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.31%    0.29%  │     0x00007f9245237629: test   %r11,%r11
                  │  ╭  0x00007f924523762c: jne    0x00007f92452377d8  ;*ifnonnull
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@24 (line 98)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.16%    0.21%  │  │  0x00007f9245237632: mov    0xa0(%rsp),%r10
  0.18%    0.19%  │  │  0x00007f924523763a: mov    0xc(%r10),%edi     ;*getfield poolSize
                  │  │                                                ; - com.google.re2j.Machine::alloc@1 (line 132)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │  │                                                ; implicit exception: dispatches to 0x00007f9245238215
  0.06%    0.04%  │  │  0x00007f924523763e: test   %edi,%edi
  0.36%    0.28%  │  │  0x00007f9245237640: jle    0x00007f9245237ac5  ;*ifle
                  │  │                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.18%    0.14%  │  │  0x00007f9245237646: mov    0x24(%r10),%r11d   ;*getfield pool
                  │  │                                                ; - com.google.re2j.Machine::alloc@18 (line 134)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.15%    0.20%  │  │  0x00007f924523764a: mov    %edi,%ebp
  0.09%    0.03%  │  │  0x00007f924523764c: dec    %ebp               ;*isub
                  │  │                                                ; - com.google.re2j.Machine::alloc@13 (line 133)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.34%    0.27%  │  │  0x00007f924523764e: mov    %ebp,0xc(%r10)     ;*putfield poolSize
                  │  │                                                ; - com.google.re2j.Machine::alloc@14 (line 133)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.18%    0.25%  │  │  0x00007f9245237652: mov    0xc(%r12,%r11,8),%ecx  ; implicit exception: dispatches to 0x00007f9245238229
  0.12%    0.16%  │  │  0x00007f9245237657: cmp    %ecx,%ebp
                  │  │  0x00007f9245237659: jae    0x00007f9245237919
  0.07%    0.01%  │  │  0x00007f924523765f: shl    $0x3,%r11
  0.40%    0.18%  │  │  0x00007f9245237663: mov    0xc(%r11,%rdi,4),%ecx  ;*aaload
                  │  │                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.15%    0.26%  │  │  0x00007f9245237668: mov    %esi,0x10(%r12,%rcx,8)  ;*putfield inst
                  │  │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │  │                                                ; implicit exception: dispatches to 0x00007f9245238239
  0.76%    0.64%  │  │  0x00007f924523766d: lea    (%r12,%rcx,8),%r11  ;*aaload
                  │  │                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.06%    0.01%  │  │  0x00007f9245237671: mov    %r11,%r9
  0.20%    0.06%  │  │  0x00007f9245237674: shr    $0x9,%r9
  0.10%    0.21%  │  │  0x00007f9245237678: movabs $0x7f9254a5b000,%rcx
  0.31%    0.28%  │  │  0x00007f9245237682: mov    %r12b,(%rcx,%r9,1)  ;*aload_3
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@44 (line 103)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.54%    0.36%  │  │  0x00007f9245237686: mov    0xc(%r14),%r9d     ;*arraylength
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@45 (line 103)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │  │                                                ; implicit exception: dispatches to 0x00007f92452381e9
  0.13%    0.03%  │  │  0x00007f924523768a: test   %r9d,%r9d
                  │  │  0x00007f924523768d: jg     0x00007f9245237ca5  ;*ifle
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.10%    0.10%  │  │  0x00007f9245237693: mov    %r8d,%edi
  0.21%    0.18%  │  │  0x00007f9245237696: inc    %edi               ;*iadd
                  │  │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 65)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.26%    0.22%  │  │  0x00007f9245237698: mov    %edi,0xc(%rax)     ;*putfield size
                  │  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.14%    0.12%  │  │  0x00007f924523769b: vmovd  %xmm0,%ecx
  0.12%    0.13%  │  │  0x00007f924523769f: mov    0xc(%r12,%rcx,8),%ecx  ; implicit exception: dispatches to 0x00007f92452381f9
  0.13%    0.24%  │  │  0x00007f92452376a4: cmp    %ecx,%r8d
                  │  │  0x00007f92452376a7: jae    0x00007f92452378b5
  0.32%    0.21%  │  │  0x00007f92452376ad: mov    %r11,%rcx
  0.18%    0.05%  │  │  0x00007f92452376b0: shr    $0x3,%rcx          ;*aastore
                  │  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.13%    0.15%  │  │  0x00007f92452376b4: vmovd  %xmm0,%esi
  0.22%    0.20%  │  │  0x00007f92452376b8: lea    (%r12,%rsi,8),%r11  ;*getfield denseThreads
                  │  │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.29%    0.33%  │  │  0x00007f92452376bc: lea    0x10(%r11,%r8,4),%r11
  0.16%    0.20%  │  │  0x00007f92452376c1: mov    %ecx,(%r11)
  0.05%    0.17%  │  │  0x00007f92452376c4: shr    $0x9,%r11
  0.22%    0.17%  │  │  0x00007f92452376c8: movabs $0x7f9254a5b000,%r8
  0.27%    0.26%  │  │  0x00007f92452376d2: mov    %r12b,(%r8,%r11,1)  ;*getfield size
                  │  │                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.14%    0.18%  ↘  │  0x00007f92452376d6: mov    0x20(%r13),%ebp    ;*getfield argInst
                     │                                                ; - com.google.re2j.Inst$AltInst::add@41 (line 193)
  0.10%    0.10%     │  0x00007f92452376da: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007f924523815d
  0.17%    0.16%     │  0x00007f92452376df: cmp    $0xf8019992,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                     │  0x00007f92452376e6: jne    0x00007f9245237891
  0.20%    0.26%     │  0x00007f92452376ec: lea    (%r12,%rbp,8),%rbx  ;*invokevirtual add
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.23%    0.22%     │  0x00007f92452376f0: mov    0x18(%rbx),%ecx    ;*getfield pc
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.08%    0.14%     │  0x00007f92452376f3: cmp    $0x40,%ecx
                     │  0x00007f92452376f6: jg     0x00007f9245237a0d  ;*if_icmpgt
                     │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.21%    0.15%     │  0x00007f92452376fc: mov    $0x1,%r8d
  0.24%    0.30%     │  0x00007f9245237702: shl    %cl,%r8            ;*lshl
                     │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.40%    0.38%     │  0x00007f9245237705: mov    %r8,%r11
  0.25%    0.34%     │  0x00007f9245237708: and    %rdx,%r11          ;*land
                     │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.12%    0.15%     │  0x00007f924523770b: test   %r11,%r11
                     │  0x00007f924523770e: jne    0x00007f9245237a39  ;*ifeq
                     │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.09%    0.14%     │  0x00007f9245237714: cmp    $0x40,%ecx
                     │  0x00007f9245237717: jge    0x00007f9245237a75  ;*if_icmpge
                     │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.21%    0.19%     │  0x00007f924523771d: mov    %r12b,0x18(%rax)   ;*putfield empty
                     │                                                ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.25%    0.39%     │  0x00007f9245237721: or     %rdx,%r8
  0.22%    0.18%     │  0x00007f9245237724: mov    %r8,0x10(%rax)     ;*putfield pcsl
                     │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.15%    0.11%     │  0x00007f9245237728: mov    0xc(%r10),%r11d    ;*getfield poolSize
                     │                                                ; - com.google.re2j.Machine::alloc@1 (line 132)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                     │                                                ; implicit exception: dispatches to 0x00007f9245238179
  0.18%    0.21%     │  0x00007f924523772c: test   %r11d,%r11d
                     │  0x00007f924523772f: jle    0x00007f9245237955  ;*ifle
                     │                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.26%    0.29%     │  0x00007f9245237735: mov    0x24(%r10),%ecx    ;*getfield pool
                     │                                                ; - com.google.re2j.Machine::alloc@18 (line 134)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.17%    0.21%     │  0x00007f9245237739: mov    %r11d,%ebp
  0.07%    0.13%     │  0x00007f924523773c: dec    %ebp               ;*isub
                     │                                                ; - com.google.re2j.Machine::alloc@13 (line 133)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.13%    0.21%     │  0x00007f924523773e: mov    %ebp,0xc(%r10)     ;*putfield poolSize
                     │                                                ; - com.google.re2j.Machine::alloc@14 (line 133)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.26%    0.28%     │  0x00007f9245237742: mov    0xc(%r12,%rcx,8),%r10d  ; implicit exception: dispatches to 0x00007f924523818d
  0.17%    0.10%     │  0x00007f9245237747: cmp    %r10d,%ebp
                     │  0x00007f924523774a: jae    0x00007f9245237838
  0.16%    0.06%     │  0x00007f9245237750: lea    (%r12,%rcx,8),%r10
  0.19%    0.19%     │  0x00007f9245237754: mov    0xc(%r10,%r11,4),%ebp  ;*aaload
                     │                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.28%    0.36%     │  0x00007f9245237759: test   %ebp,%ebp
                     │  0x00007f924523775b: je     0x00007f924523785d
  0.12%    0.20%     │  0x00007f9245237761: lea    (%r12,%rbp,8),%r10
  0.09%    0.13%     │  0x00007f9245237765: mov    %rbx,%r8
  0.20%    0.22%     │  0x00007f9245237768: shr    $0x3,%r8
  0.27%    0.30%     │  0x00007f924523776c: mov    %r8d,0x10(%r12,%rbp,8)
  0.24%    0.23%     │  0x00007f9245237771: shr    $0x9,%r10
  0.10%    0.06%     │  0x00007f9245237775: movabs $0x7f9254a5b000,%r11
  0.24%    0.16%     │  0x00007f924523777f: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                     │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.49%    0.40%     │  0x00007f9245237783: test   %r9d,%r9d
                     │  0x00007f9245237786: jg     0x00007f9245237aa1  ;*ifle
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.10%    0.20%     │  0x00007f924523778c: mov    %edi,%r11d
  0.07%    0.13%     │  0x00007f924523778f: inc    %r11d
  0.15%    0.12%     │  0x00007f9245237792: mov    %r11d,0xc(%rax)    ;*putfield size
                     │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.31%    0.27%     │  0x00007f9245237796: vmovd  %xmm0,%r10d
  0.18%    0.18%     │  0x00007f924523779b: mov    0xc(%r12,%r10,8),%r11d  ; implicit exception: dispatches to 0x00007f924523819d
  0.06%    0.08%     │  0x00007f92452377a0: cmp    %r11d,%edi
                     │  0x00007f92452377a3: jae    0x00007f9245237871  ;*aastore
                     │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.19%    0.09%     │  0x00007f92452377a9: shl    $0x3,%r10          ;*getfield denseThreads
                     │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.31%    0.24%     │  0x00007f92452377ad: lea    0x10(%r10,%rdi,4),%r10
  0.15%    0.16%     │  0x00007f92452377b2: mov    %ebp,(%r10)
  0.06%    0.10%     │  0x00007f92452377b5: shr    $0x9,%r10
  0.10%    0.15%     │  0x00007f92452377b9: movabs $0x7f9254a5b000,%r11
  0.30%    0.22%     │  0x00007f92452377c3: mov    %r12b,(%r11,%r10,1)  ;*if_icmpgt
                     │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
  0.18%    0.20%     │  0x00007f92452377c7: xor    %eax,%eax
  0.06%    0.08%     │  0x00007f92452377c9: add    $0x90,%rsp
  0.13%    0.16%     │  0x00007f92452377d0: pop    %rbp
  0.33%    0.16%     │  0x00007f92452377d1: test   %eax,0x16e1b829(%rip)        # 0x00007f925c053000
                     │                                                ;   {poll_return}
  0.15%    0.19%     │  0x00007f92452377d7: retq   
                     ↘  0x00007f92452377d8: mov    %esi,0x10(%r11)
                        0x00007f92452377dc: mov    %r11,%r10
                        0x00007f92452377df: shr    $0x9,%r10
                        0x00007f92452377e3: movabs $0x7f9254a5b000,%r9
                        0x00007f92452377ed: mov    %r12b,(%r9,%r10,1)  ;*putfield inst
                                                                      ; - com.google.re2j.Inst$MatchInst::add@41 (line 101)
                                                                      ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                        0x00007f92452377f1: mov    0xa0(%rsp),%r10
....................................................................................................
 32.57%   34.58%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 568 (891 bytes) 

                                                                                   ; - com.google.re2j.Machine::match@121 (line 201)
                                     0x00007f9245257158: mov    $0x5,%r9d          ;*iload_1
                                                                                   ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                                                                                   ; - com.google.re2j.Machine::match@121 (line 201)
                                     0x00007f924525715e: cmp    $0xa,%ebx
                                     0x00007f9245257161: je     0x00007f9245257752  ;*iload_0
                                                                                   ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                                                                                   ; - com.google.re2j.Machine::match@121 (line 201)
                                     0x00007f9245257167: mov    %ebx,%ecx
                                     0x00007f9245257169: add    $0xffffffbf,%ecx
  0.00%    0.01%                     0x00007f924525716c: cmp    $0x1a,%ecx
                  ╭                  0x00007f924525716f: jb     0x00007f9245257182  ;*if_icmple
                  │                                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │                                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                                ; - com.google.re2j.Machine::match@121 (line 201)
                  │                  0x00007f9245257171: mov    %ebx,%r10d
                  │                  0x00007f9245257174: add    $0xffffff9f,%r10d
                  │                  0x00007f9245257178: cmp    $0x1a,%r10d
                  │                  0x00007f924525717c: jae    0x00007f924525775b  ;*iconst_1
                  │                                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │                                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                                ; - com.google.re2j.Machine::match@121 (line 201)
  0.00%           ↘                  0x00007f9245257182: or     $0x10,%r9d         ;*iload_2
                                                                                   ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                                   ; - com.google.re2j.Machine::match@121 (line 201)
  0.00%                              0x00007f9245257186: mov    %r8d,0x30(%rsp)
  0.01%                              0x00007f924525718b: mov    %r11d,0x2c(%rsp)
           0.00%                     0x00007f9245257190: mov    0x44(%rsp),%r11d
           0.01%                     0x00007f9245257195: and    $0x4,%r11d         ;*iand
                                                                                   ; - com.google.re2j.Machine::match@147 (line 208)
                                     0x00007f9245257199: mov    %r11d,0x14(%rsp)
                                     0x00007f924525719e: mov    %r13,%r10
                                     0x00007f92452571a1: shl    $0x3,%r10          ;*getfield q1
                                                                                   ; - com.google.re2j.Machine::match@53 (line 188)
           0.00%                     0x00007f92452571a5: mov    %r10,0x50(%rsp)
                                     0x00007f92452571aa: mov    %ebx,0x34(%rsp)
  0.01%                              0x00007f92452571ae: xor    %eax,%eax
                                     0x00007f92452571b0: xor    %r10d,%r10d
                                     0x00007f92452571b3: mov    %r10d,0x58(%rsp)
                   ╭                 0x00007f92452571b8: jmpq   0x00007f9245257365
                   │   ↗             0x00007f92452571bd: mov    0x14(%rsp),%ebx
  0.02%    0.03%   │╭  │             0x00007f92452571c1: jmpq   0x00007f92452573a9
                   ││  │             0x00007f92452571c6: data16 nopw 0x0(%rax,%rax,1)
  0.10%    0.10%   ││  │     ↗       0x00007f92452571d0: or     $0x20,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                   ││  │     │                                                     ; - com.google.re2j.Machine::match@323 (line 241)
  0.06%    0.05%   ││  │     │       0x00007f92452571d4: mov    %r8d,0x5c(%rsp)    ;*iload_2
                   ││  │     │                                                     ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   ││  │     │                                                     ; - com.google.re2j.Machine::match@323 (line 241)
  0.08%    0.13%   ││  │     │↗      0x00007f92452571d9: mov    0x48(%rsp),%r9
  0.09%    0.13%   ││  │     ││      0x00007f92452571de: mov    0x10(%r9),%r8d     ;*getfield end
                   ││  │     ││                                                    ; - com.google.re2j.MachineInput$UTF16Input::endPos@1 (line 221)
                   ││  │     ││                                                    ; - com.google.re2j.Machine::match@345 (line 242)
  0.26%    0.18%   ││  │     ││      0x00007f92452571e2: mov    0x58(%rsp),%ecx
  0.12%    0.14%   ││  │     ││      0x00007f92452571e6: cmp    %r8d,%ecx
                   ││╭ │     ││      0x00007f92452571e9: je     0x00007f92452574e2  ;*if_icmpne
                   │││ │     ││                                                    ; - com.google.re2j.Machine::match@348 (line 242)
  0.12%    0.15%   │││ │     ││      0x00007f92452571ef: xor    %eax,%eax          ;*invokespecial step
                   │││ │     ││                                                    ; - com.google.re2j.Machine::match@356 (line 242)
  0.06%    0.11%   │││ │     ││   ↗  0x00007f92452571f1: mov    %rax,-0x8(%rsp)
  0.09%    0.13%   │││ │     ││   │  0x00007f92452571f6: mov    0x58(%rsp),%eax
  0.07%    0.11%   │││ │     ││   │  0x00007f92452571fa: mov    %eax,0x1c(%rsp)
  0.06%    0.12%   │││ │     ││   │  0x00007f92452571fe: mov    -0x8(%rsp),%rax
  0.14%    0.07%   │││ │     ││   │  0x00007f9245257203: add    0x28(%rsp),%ecx    ;*iadd
                   │││ │     ││   │                                                ; - com.google.re2j.Machine::match@337 (line 242)
  0.09%    0.09%   │││ │     ││   │  0x00007f9245257207: mov    %ecx,0x58(%rsp)
  0.11%    0.12%   │││ │     ││   │  0x00007f924525720b: mov    0x38(%rsp),%rsi
  0.09%    0.07%   │││ │     ││   │  0x00007f9245257210: mov    0x20(%rsp),%rdx
  0.13%    0.08%   │││ │     ││   │  0x00007f9245257215: mov    0x50(%rsp),%rcx
  0.07%    0.10%   │││ │     ││   │  0x00007f924525721a: mov    0x1c(%rsp),%r8d
  0.11%    0.08%   │││ │     ││   │  0x00007f924525721f: mov    0x58(%rsp),%r9d
  0.18%    0.06%   │││ │     ││   │  0x00007f9245257224: mov    0x34(%rsp),%edi
  0.05%    0.09%   │││ │     ││   │  0x00007f9245257228: mov    0x5c(%rsp),%r10d
  0.08%    0.14%   │││ │     ││   │  0x00007f924525722d: mov    %r10d,(%rsp)
  0.09%    0.11%   │││ │     ││   │  0x00007f9245257231: mov    0x40(%rsp),%r11d
  0.10%    0.07%   │││ │     ││   │  0x00007f9245257236: mov    %r11d,0x8(%rsp)
  0.08%    0.11%   │││ │     ││   │  0x00007f924525723b: mov    %eax,0x10(%rsp)
  0.07%    0.12%   │││ │     ││   │  0x00007f924525723f: callq  0x00007f9245046020  ; OopMap{[24]=NarrowOop [32]=Oop [56]=Oop [72]=Oop [80]=Oop off=676}
                   │││ │     ││   │                                                ;*invokespecial step
                   │││ │     ││   │                                                ; - com.google.re2j.Machine::match@356 (line 242)
                   │││ │     ││   │                                                ;   {optimized virtual_call}
           0.00%   │││ │     ││   │  0x00007f9245257244: mov    0x38(%rsp),%r10
  0.05%    0.02%   │││ │     ││   │  0x00007f9245257249: movzbl 0x10(%r10),%eax    ;*getfield matched
                   │││ │     ││   │                                                ; - com.google.re2j.Machine::match@376 (line 246)
  0.28%    0.09%   │││ │     ││   │  0x00007f924525724e: mov    0x28(%rsp),%r8d
                   │││ │     ││   │  0x00007f9245257253: test   %r8d,%r8d
                   │││╭│     ││   │  0x00007f9245257256: je     0x00007f92452574ec  ;*ifne
                   │││││     ││   │                                                ; - com.google.re2j.Machine::match@361 (line 243)
  0.03%    0.01%   │││││     ││   │  0x00007f924525725c: mov    0x28(%r10),%ebx    ;*getfield matchcap
                   │││││     ││   │                                                ; - com.google.re2j.Machine::match@368 (line 246)
  0.01%    0.00%   │││││     ││   │  0x00007f9245257260: mov    0xc(%r12,%rbx,8),%ebp  ;*arraylength
                   │││││     ││   │                                                ; - com.google.re2j.Machine::match@371 (line 246)
                   │││││     ││   │                                                ; implicit exception: dispatches to 0x00007f9245258285
  0.39%    0.27%   │││││     ││   │  0x00007f9245257265: test   %ebp,%ebp
                   │││││     ││   │  0x00007f9245257267: jne    0x00007f9245257969  ;*ifne
                   │││││     ││   │                                                ; - com.google.re2j.Machine::match@372 (line 246)
  0.02%    0.02%   │││││     ││   │  0x00007f924525726d: test   %eax,%eax
                   │││││     ││   │  0x00007f924525726f: jne    0x00007f9245257a59  ;*ifeq
                   │││││     ││   │                                                ; - com.google.re2j.Machine::match@379 (line 246)
  0.01%    0.05%   │││││     ││   │  0x00007f9245257275: mov    0x2c(%rsp),%r9d
  0.00%    0.03%   │││││     ││   │  0x00007f924525727a: cmp    $0xffffffff,%r9d
                   │││││     ││   │  0x00007f924525727e: je     0x00007f9245257539  ;*if_icmpeq
                   │││││     ││   │                                                ; - com.google.re2j.Machine::match@401 (line 254)
  0.23%    0.27%   │││││     ││   │  0x00007f9245257284: mov    0x48(%rsp),%r8
  0.02%    0.02%   │││││     ││   │  0x00007f9245257289: mov    0x10(%r8),%r11d    ;*getfield end
                   │││││     ││   │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                   │││││     ││   │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.04%    0.05%   │││││     ││   │  0x00007f924525728d: mov    0x30(%rsp),%r10d
  0.02%    0.02%   │││││     ││   │  0x00007f9245257292: add    0x58(%rsp),%r10d
  0.29%    0.38%   │││││     ││   │  0x00007f9245257297: add    0xc(%r8),%r10d     ;*iadd
                   │││││     ││   │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                   │││││     ││   │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.03%    0.03%   │││││     ││   │  0x00007f924525729b: cmp    %r11d,%r10d
                   │││││     ││   │  0x00007f924525729e: jge    0x00007f924525754d  ;*if_icmpge
                   │││││     ││   │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                   │││││     ││   │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.05%    0.04%   │││││     ││   │  0x00007f92452572a4: mov    0x14(%r8),%ebp     ;*getfield str
                   │││││     ││   │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                   │││││     ││   │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.01%    0.01%   │││││     ││   │  0x00007f92452572a8: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f9245258295
  0.23%    0.36%   │││││     ││   │  0x00007f92452572ad: cmp    $0xf80002da,%ecx   ;   {metadata(&apos;java/lang/String&apos;)}
                   │││││     ││   │  0x00007f92452572b3: jne    0x00007f9245257841
  0.11%    0.10%   │││││     ││   │  0x00007f92452572b9: lea    (%r12,%rbp,8),%r9  ;*invokeinterface charAt
                   │││││     ││   │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││││     ││   │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││     ││   │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.02%    0.04%   │││││     ││   │  0x00007f92452572bd: test   %r10d,%r10d
  0.01%    0.02%   │││││     ││   │  0x00007f92452572c0: jl     0x00007f92452579b5  ;*iflt
                   │││││     ││   │                                                ; - java.lang.String::charAt@1 (line 657)
                   │││││     ││   │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││││     ││   │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││     ││   │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.25%    0.30%   │││││     ││   │  0x00007f92452572c6: mov    %r10d,%edi
  0.09%    0.18%   │││││     ││   │  0x00007f92452572c9: mov    0xc(%r9),%edx      ;*getfield value
                   │││││     ││   │                                                ; - java.lang.String::charAt@6 (line 657)
                   │││││     ││   │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││││     ││   │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││     ││   │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.02%    0.03%   │││││     ││   │  0x00007f92452572cd: mov    0xc(%r12,%rdx,8),%ebp  ;*arraylength
                   │││││     ││   │                                                ; - java.lang.String::charAt@9 (line 657)
                   │││││     ││   │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││││     ││   │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││     ││   │                                                ; - com.google.re2j.Machine::match@409 (line 255)
                   │││││     ││   │                                                ; implicit exception: dispatches to 0x00007f92452582a9
  0.93%    1.40%   │││││     ││   │  0x00007f92452572d2: cmp    %ebp,%r10d
                   │││││     ││   │  0x00007f92452572d5: jge    0x00007f9245257aad  ;*if_icmplt
                   │││││     ││   │                                                ; - java.lang.String::charAt@10 (line 657)
                   │││││     ││   │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││││     ││   │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││     ││   │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.41%    0.46%   │││││     ││   │  0x00007f92452572db: cmp    %ebp,%r10d
                   │││││     ││   │  0x00007f92452572de: jae    0x00007f92452577c5
  0.05%    0.05%   │││││     ││   │  0x00007f92452572e4: lea    (%r12,%rdx,8),%r10
                   │││││     ││   │  0x00007f92452572e8: movzwl 0x10(%r10,%rdi,2),%ecx  ;*caload
                   │││││     ││   │                                                ; - java.lang.String::charAt@27 (line 660)
                   │││││     ││   │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││││     ││   │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││     ││   │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.01%    0.02%   │││││     ││   │  0x00007f92452572ee: cmp    $0xd800,%ecx
                   │││││     ││   │  0x00007f92452572f4: jge    0x00007f9245257b19  ;*if_icmplt
                   │││││     ││   │                                                ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   │││││     ││   │                                                ; - java.lang.Character::codePointAt@9 (line 4867)
                   │││││     ││   │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││     ││   │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.37%    0.46%   │││││     ││   │  0x00007f92452572fa: shl    $0x3,%ecx          ;*ishl
                   │││││     ││   │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                   │││││     ││   │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.02%    0.04%   │││││     ││   │  0x00007f92452572fd: mov    %ecx,%r10d
                   │││││     ││   │  0x00007f9245257300: or     $0x1,%r10d
  0.30%    0.32%   │││││     ││   │  0x00007f9245257304: and    $0x7,%ecx
  0.10%    0.09%   │││││     ││   │  0x00007f9245257307: sar    $0x3,%r10d         ;*ishr
                   │││││     ││   │                                                ; - com.google.re2j.Machine::match@417 (line 256)
  0.28%    0.34%   │││││     ││   │  0x00007f924525730b: or     $0x1,%ecx          ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                   │││││     ││   │                                                ; - com.google.re2j.Machine::match@409 (line 255)
                   │││││     ││   │  0x00007f924525730e: mov    0x2c(%rsp),%r9d    ;*aload
                   │││││     ││   │                                                ; - com.google.re2j.Machine::match@427 (line 259)
  0.00%    0.00%   │││││     ││   │  0x00007f9245257313: mov    %r8,0x48(%rsp)
  0.08%    0.08%   │││││     ││   │  0x00007f9245257318: mov    %r9d,0x34(%rsp)    ; OopMap{r8=Oop rbx=NarrowOop [32]=Oop [56]=Oop [72]=Oop [80]=Oop off=893}
                   │││││     ││   │                                                ;*goto
                   │││││     ││   │                                                ; - com.google.re2j.Machine::match@439 (line 262)
  0.26%    0.31%   │││││     ││   │  0x00007f924525731d: test   %eax,0x16dfbcdd(%rip)        # 0x00007f925c053000
                   │││││     ││   │                                                ;*goto
                   │││││     ││   │                                                ; - com.google.re2j.Machine::match@439 (line 262)
                   │││││     ││   │                                                ;   {poll}
  0.00%    0.00%   │││││     ││   │  0x00007f9245257323: mov    0x38(%rsp),%r11
  0.01%    0.00%   │││││     ││   │  0x00007f9245257328: mov    0x14(%r11),%r11d   ;*getfield re2
                   │││││     ││   │                                                ; - com.google.re2j.Machine::match@169 (line 216)
  0.08%    0.06%   │││││     ││   │  0x00007f924525732c: vmovd  %r11d,%xmm3
  0.32%    0.27%   │││││     ││   │  0x00007f9245257331: mov    0x50(%rsp),%r11
           0.01%   │││││     ││   │  0x00007f9245257336: shr    $0x3,%r11
  0.00%            │││││     ││   │  0x00007f924525733a: mov    %r11d,0x18(%rsp)
  0.06%    0.09%   │││││     ││   │  0x00007f924525733f: mov    0x5c(%rsp),%r9d
  0.31%    0.33%   │││││     ││   │  0x00007f9245257344: mov    0x20(%rsp),%r11
  0.00%    0.00%   │││││     ││   │  0x00007f9245257349: mov    %r11,0x50(%rsp)
  0.00%    0.00%   │││││     ││   │  0x00007f924525734e: mov    0x30(%rsp),%r11d
  0.08%    0.07%   │││││     ││   │  0x00007f9245257353: mov    %r11d,0x28(%rsp)
  0.27%    0.29%   │││││     ││   │  0x00007f9245257358: mov    %ecx,0x30(%rsp)
  0.00%    0.00%   │││││     ││   │  0x00007f924525735c: mov    %r10d,0x2c(%rsp)
           0.01%   │││││     ││   │  0x00007f9245257361: vmovd  %ebx,%xmm2         ;*aload
                   │││││     ││   │                                                ; - com.google.re2j.Machine::match@136 (line 207)
  0.10%    0.07%   ↘││││     ││   │  0x00007f9245257365: mov    0x18(%rsp),%r11d
  0.19%    0.32%    ││││     ││   │  0x00007f924525736a: movzbl 0x18(%r12,%r11,8),%r11d  ; implicit exception: dispatches to 0x00007f9245258235
  0.01%    0.02%    ││││     ││   │  0x00007f9245257370: test   %r11d,%r11d
                    │││╰     ││   │  0x00007f9245257373: je     0x00007f92452571bd  ;*ifeq
                    │││      ││   │                                                ; - com.google.re2j.Machine::match@141 (line 207)
  0.00%    0.00%    │││      ││   │  0x00007f9245257379: mov    0x14(%rsp),%ebx
  0.04%    0.08%    │││      ││   │  0x00007f924525737d: test   %ebx,%ebx
                    │││      ││   │  0x00007f924525737f: jne    0x00007f9245257b99  ;*ifeq
                    │││      ││   │                                                ; - com.google.re2j.Machine::match@148 (line 208)
  0.26%    0.24%    │││      ││   │  0x00007f9245257385: test   %eax,%eax
                    │││      ││   │  0x00007f9245257387: jne    0x00007f9245257bf9  ;*ifeq
                    │││      ││   │                                                ; - com.google.re2j.Machine::match@162 (line 212)
  0.00%             │││      ││   │  0x00007f924525738d: vmovd  %xmm3,%r10d
                    │││      ││   │  0x00007f9245257392: mov    0x24(%r12,%r10,8),%r11d  ;*getfield prefix
                    │││      ││   │                                                ; - com.google.re2j.Machine::match@172 (line 216)
                    │││      ││   │                                                ; implicit exception: dispatches to 0x00007f92452582b9
  0.04%    0.04%    │││      ││   │  0x00007f9245257397: mov    0xc(%r12,%r11,8),%r10d  ;*getfield value
                    │││      ││   │                                                ; - java.lang.String::isEmpty@1 (line 635)
                    │││      ││   │                                                ; - com.google.re2j.Machine::match@175 (line 216)
                    │││      ││   │                                                ; implicit exception: dispatches to 0x00007f92452582c9
  0.25%    0.29%    │││      ││   │  0x00007f924525739c: mov    0xc(%r12,%r10,8),%ebp  ;*arraylength
                    │││      ││   │                                                ; - java.lang.String::isEmpty@4 (line 635)
                    │││      ││   │                                                ; - com.google.re2j.Machine::match@175 (line 216)
                    │││      ││   │                                                ; implicit exception: dispatches to 0x00007f92452582d9
  0.45%    0.48%    │││      ││   │  0x00007f92452573a1: test   %ebp,%ebp
                    │││      ││   │  0x00007f92452573a3: jne    0x00007f9245257b79  ;*aload_0
                    │││      ││   │                                                ; - com.google.re2j.Machine::match@267 (line 233)
  0.20%    0.19%    ↘││      ││   │  0x00007f92452573a9: test   %eax,%eax
                     ││      ││   │  0x00007f92452573ab: jne    0x00007f92452578c6  ;*ifne
                     ││      ││   │                                                ; - com.google.re2j.Machine::match@271 (line 233)
  0.02%    0.01%     ││      ││   │  0x00007f92452573b1: mov    0x58(%rsp),%r11d
  0.10%    0.07%     ││      ││   │  0x00007f92452573b6: test   %r11d,%r11d
                     ││ ╭    ││   │  0x00007f92452573b9: je     0x00007f92452574d8  ;*ifeq
                     ││ │    ││   │                                                ; - com.google.re2j.Machine::match@275 (line 233)
  0.03%    0.03%     ││ │    ││   │  0x00007f92452573bf: mov    0x40(%rsp),%r8d
  0.19%    0.11%     ││ │    ││   │  0x00007f92452573c4: test   %r8d,%r8d
                     ││ │    ││   │  0x00007f92452573c7: jne    0x00007f9245257911  ;*aload_0
                     ││ │    ││   │                                                ; - com.google.re2j.Machine::match@282 (line 236)
  0.02%    0.02%     ││ │    ││  ↗│  0x00007f92452573cd: vmovd  %xmm2,%r10d
  0.08%    0.13%     ││ │    ││  ││  0x00007f92452573d2: mov    0xc(%r12,%r10,8),%ebp  ;*arraylength
                     ││ │    ││  ││                                                ; - com.google.re2j.Machine::match@286 (line 236)
                     ││ │    ││  ││                                                ; implicit exception: dispatches to 0x00007f9245258245
  0.03%    0.04%     ││ │    ││  ││  0x00007f92452573d7: test   %ebp,%ebp
                     ││ │    ││  ││  0x00007f92452573d9: jg     0x00007f9245257a35  ;*ifle
                     ││ │    ││  ││                                                ; - com.google.re2j.Machine::match@287 (line 236)
  0.24%    0.10%     ││ │    ││  ││  0x00007f92452573df: mov    0x38(%rsp),%rdx
  0.02%    0.03%     ││ │    ││  ││  0x00007f92452573e4: mov    0x18(%rdx),%edi    ;*getfield prog
                     ││ │    ││  ││                                                ; - com.google.re2j.Machine::match@298 (line 239)
  0.06%    0.09%     ││ │    ││  ││  0x00007f92452573e7: mov    0x1c(%r12,%rdi,8),%ebp  ;*getfield startInst
                     ││ │    ││  ││                                                ; - com.google.re2j.Machine::match@301 (line 239)
                     ││ │    ││  ││                                                ; implicit exception: dispatches to 0x00007f9245258255
  0.06%    0.04%     ││ │    ││  ││  0x00007f92452573ec: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f9245258265
  0.23%    0.13%     ││ │    ││  ││  0x00007f92452573f1: cmp    $0xf8019843,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$AltInst&apos;)}
                     ││ │    ││  ││  0x00007f92452573f7: jne    0x00007f924525777b  ;*invokevirtual add
                     ││ │    ││  ││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.08%    0.09%     ││ │    ││  ││  0x00007f92452573fd: mov    %ebx,0x14(%rsp)
  0.06%              ││ │    ││  ││  0x00007f9245257401: mov    %r8d,0x40(%rsp)    ;*ifle
                     ││ │    ││  ││                                                ; - com.google.re2j.Machine::match@287 (line 236)
           0.02%     ││ │    ││  ││  0x00007f9245257406: lea    (%r12,%rbp,8),%rsi  ;*invokevirtual add
                     ││ │    ││  ││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.24%    0.17%     ││ │    ││  ││  0x00007f924525740a: mov    0x18(%rsp),%r11d
  0.07%    0.04%     ││ │    ││  ││  0x00007f924525740f: shl    $0x3,%r11          ;*aload
                     ││ │    ││  ││                                                ; - com.google.re2j.Machine::match@136 (line 207)
  0.04%    0.01%     ││ │    ││  ││  0x00007f9245257413: mov    %r11,0x20(%rsp)
  0.03%    0.00%     ││ │    ││  ││  0x00007f9245257418: mov    %r10,%r8
  0.19%    0.20%     ││ │    ││  ││  0x00007f924525741b: shl    $0x3,%r8           ;*getfield matchcap
                     ││ │    ││  ││                                                ; - com.google.re2j.Machine::match@283 (line 236)
  0.11%    0.04%     ││ │    ││  ││  0x00007f924525741f: mov    %r11,%rdx
  0.03%    0.00%     ││ │    ││  ││  0x00007f9245257422: mov    0x58(%rsp),%ecx
  0.01%              ││ │    ││  ││  0x00007f9245257426: xor    %edi,%edi
  0.22%    0.17%     ││ │    ││  ││  0x00007f9245257428: mov    0x38(%rsp),%r10
  0.11%    0.03%     ││ │    ││  ││  0x00007f924525742d: mov    %r10,(%rsp)
  0.05%    0.02%     ││ │    ││  ││  0x00007f9245257431: xchg   %ax,%ax
                     ││ │    ││  ││  0x00007f9245257433: callq  0x00007f9245046020  ; OopMap{[24]=NarrowOop [32]=Oop [56]=Oop [72]=Oop [80]=Oop off=1176}
                     ││ │    ││  ││                                                ;*invokevirtual add
                     ││ │    ││  ││                                                ; - com.google.re2j.Machine::match@315 (line 239)
                     ││ │    ││  ││                                                ;   {optimized virtual_call}
  0.07%    0.11%     ││ │    ││  ││  0x00007f9245257438: mov    0x34(%rsp),%r10d
  0.26%    0.24%     ││ │    ││  ││  0x00007f924525743d: test   %r10d,%r10d
  0.06%    0.06%     ││ │╭   ││  ││  0x00007f9245257440: jl     0x00007f92452574c7  ;*ifge
                     ││ ││   ││  ││                                                ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                     ││ ││   ││  ││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.07%    0.11%     ││ ││   ││  ││  0x00007f9245257446: xor    %r8d,%r8d          ;*iload_0
                     ││ ││   ││  ││                                                ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                     ││ ││   ││  ││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.12%    0.12%     ││ ││   ││↗ ││  0x00007f9245257449: cmp    $0xa,%r10d
                     ││ ││   │││ ││  0x00007f924525744d: je     0x00007f924525755a  ;*iload_1
                     ││ ││   │││ ││                                                ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                     ││ ││   │││ ││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.11%    0.11%     ││ ││   │││ ││  0x00007f9245257453: mov    0x2c(%rsp),%r11d
  0.08%    0.08%     ││ ││   │││ ││  0x00007f9245257458: test   %r11d,%r11d
                     ││ ││╭  │││ ││  0x00007f924525745b: jl     0x00007f92452574d2  ;*iload_1
                     ││ │││  │││ ││                                                ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                     ││ │││  │││ ││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.10%    0.12%     ││ │││  │││↗││  0x00007f924525745d: cmp    $0xa,%r11d
                     ││ │││  ││││││  0x00007f9245257461: je     0x00007f9245257563  ;*iload_0
                     ││ │││  ││││││                                                ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                     ││ │││  ││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.09%    0.12%     ││ │││  ││││││  0x00007f9245257467: mov    0x34(%rsp),%r9d
  0.10%    0.10%     ││ │││  ││││││  0x00007f924525746c: add    $0xffffffbf,%r9d
  0.06%    0.04%     ││ │││  ││││││  0x00007f9245257470: cmp    $0x1a,%r9d
                     ││ │││╭ ││││││  0x00007f9245257474: jb     0x00007f9245257486  ;*if_icmple
                     ││ ││││ ││││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                     ││ ││││ ││││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     ││ ││││ ││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.06%    0.11%     ││ ││││ ││││││  0x00007f9245257476: mov    0x34(%rsp),%ecx
  0.10%    0.05%     ││ ││││ ││││││  0x00007f924525747a: add    $0xffffff9f,%ecx
  0.15%    0.17%     ││ ││││ ││││││  0x00007f924525747d: cmp    $0x1a,%ecx
  0.06%    0.07%     ││ ││││ ││││││  0x00007f9245257480: jae    0x00007f924525756c  ;*iconst_1
                     ││ ││││ ││││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                     ││ ││││ ││││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     ││ ││││ ││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.13%    0.07%     ││ │││↘ ││││││  0x00007f9245257486: mov    $0x1,%ebp          ;*ireturn
                     ││ │││  ││││││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                     ││ │││  ││││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     ││ │││  ││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.09%    0.14%     ││ │││  ││││││  0x00007f924525748b: mov    0x2c(%rsp),%r9d
  0.13%    0.13%     ││ │││  ││││││  0x00007f9245257490: add    $0xffffffbf,%r9d
  0.08%    0.05%     ││ │││  ││││││  0x00007f9245257494: cmp    $0x1a,%r9d
                     ││ │││ ╭││││││  0x00007f9245257498: jb     0x00007f92452574aa  ;*if_icmple
                     ││ │││ │││││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                     ││ │││ │││││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     ││ │││ │││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.06%    0.07%     ││ │││ │││││││  0x00007f924525749a: mov    0x2c(%rsp),%ecx
  0.06%    0.09%     ││ │││ │││││││  0x00007f924525749e: add    $0xffffff9f,%ecx
  0.13%    0.16%     ││ │││ │││││││  0x00007f92452574a1: cmp    $0x1a,%ecx
                     ││ │││ │││││││  0x00007f92452574a4: jae    0x00007f9245257590  ;*iconst_1
                     ││ │││ │││││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                     ││ │││ │││││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     ││ │││ │││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.05%    0.05%     ││ │││ ↘││││││  0x00007f92452574aa: mov    $0x1,%r9d          ;*ireturn
                     ││ │││  ││││││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                     ││ │││  ││││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     ││ │││  ││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.16%    0.18%     ││ │││  ││││││  0x00007f92452574b0: cmp    %r9d,%ebp
                     ││ │││  ╰│││││  0x00007f92452574b3: je     0x00007f92452571d0  ;*if_icmpeq
                     ││ │││   │││││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                     ││ │││   │││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.09%    0.07%     ││ │││   │││││  0x00007f92452574b9: or     $0x10,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                     ││ │││   │││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.00%    0.02%     ││ │││   │││││  0x00007f92452574bd: mov    %r8d,0x5c(%rsp)
  0.04%    0.06%     ││ │││   ╰││││  0x00007f92452574c2: jmpq   0x00007f92452571d9
                     ││ │↘│    ││││  0x00007f92452574c7: mov    $0x5,%r8d
                     ││ │ │    ╰│││  0x00007f92452574cd: jmpq   0x00007f9245257449
  0.00%    0.01%     ││ │ ↘     │││  0x00007f92452574d2: or     $0xa,%r8d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@27 (line 180)
                     ││ │       │││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.00%              ││ │       ╰││  0x00007f92452574d6: jmp    0x00007f924525745d
                     ││ ↘        ││  0x00007f92452574d8: mov    0x40(%rsp),%r8d
                     ││          ╰│  0x00007f92452574dd: jmpq   0x00007f92452573cd
  0.00%              ↘│           │  0x00007f92452574e2: mov    $0x1,%eax
  0.00%               │           ╰  0x00007f92452574e7: jmpq   0x00007f92452571f1
                      ↘              0x00007f92452574ec: mov    0x50(%rsp),%r10
                                     0x00007f92452574f1: mov    %r10,0x18(%rsp)
                                     0x00007f92452574f6: mov    0xc(%r10),%ebx     ;*getfield size
                                                                                   ; - com.google.re2j.Machine::freeQueue@1 (line 148)
                                                                                   ; - com.google.re2j.Machine::freeQueue@3 (line 144)
                                                                                   ; - com.google.re2j.Machine::match@445 (line 263)
                                                                                   ; implicit exception: dispatches to 0x00007f9245258341
                                     0x00007f92452574fa: test   %ebx,%ebx
                                     0x00007f92452574fc: jg     0x00007f92452575b5  ;*getfield matched
                                                                                   ; - com.google.re2j.Machine::match@449 (line 264)
....................................................................................................
 15.26%   15.88%  <total for region 3>

....[Hottest Regions]...............................................................................
 40.94%   39.93%         C2, level 4  com.google.re2j.Machine::step, version 530 (718 bytes) 
 32.57%   34.58%         C2, level 4  com.google.re2j.Inst$AltInst::add, version 525 (1006 bytes) 
 15.26%   15.88%         C2, level 4  com.google.re2j.Machine::match, version 568 (891 bytes) 
  6.28%    5.96%         C2, level 4  com.google.re2j.Inst$AltInst::add, version 525 (133 bytes) 
  0.93%    0.16%         C2, level 4  com.google.re2j.Machine::init, version 574 (279 bytes) 
  0.53%    0.53%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.51%    0.70%         C2, level 4  com.google.re2j.Machine::match, version 568 (164 bytes) 
  0.17%    0.03%         C2, level 4  com.google.re2j.Machine::init, version 574 (147 bytes) 
  0.10%    0.04%         C2, level 4  com.google.re2j.Machine::init, version 574 (8 bytes) 
  0.09%    0.00%   [kernel.kallsyms]  [unknown] (1 bytes) 
  0.07%    0.00%   [kernel.kallsyms]  [unknown] (20 bytes) 
  0.06%            [kernel.kallsyms]  [unknown] (49 bytes) 
  0.06%    0.01%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.06%    0.02%         C2, level 4  com.google.re2j.Machine::match, version 568 (115 bytes) 
  0.06%    0.03%         C2, level 4  com.google.re2j.RE2::match, version 589 (0 bytes) 
  0.06%    0.03%         C2, level 4  com.google.re2j.RE2::match, version 589 (33 bytes) 
  0.05%    0.06%         C2, level 4  com.google.re2j.RE2::match, version 589 (9 bytes) 
  0.05%                  C2, level 4  com.google.re2j.RE2::match, version 589 (36 bytes) 
  0.04%    0.01%   [kernel.kallsyms]  [unknown] (59 bytes) 
  0.03%    0.03%   [kernel.kallsyms]  [unknown] (6 bytes) 
  2.08%    1.98%  <...other 445 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 40.96%   39.94%         C2, level 4  com.google.re2j.Machine::step, version 530 
 38.85%   40.54%         C2, level 4  com.google.re2j.Inst$AltInst::add, version 525 
 15.89%   16.65%         C2, level 4  com.google.re2j.Machine::match, version 568 
  1.57%    1.42%   [kernel.kallsyms]  [unknown] 
  1.26%    0.23%         C2, level 4  com.google.re2j.Machine::init, version 574 
  0.36%    0.18%         C2, level 4  com.google.re2j.RE2::match, version 589 
  0.08%    0.05%         C2, level 4  java.util.Collections::shuffle, version 593 
  0.07%    0.01%              [vdso]  __vdso_clock_gettime 
  0.05%    0.02%           libjvm.so  PSPromotionManager::drain_stacks_depth 
  0.04%    0.03%           libjvm.so  GenericTaskQueueSet<OverflowTaskQueue<StarTask, (MemoryType)1, 131072u>, (MemoryType)1>::steal_best_of_2 
  0.04%    0.06%           libjvm.so  PSPromotionManager::copy_to_survivor_space<false> 
  0.04%    0.05%        libc-2.26.so  vfprintf 
  0.03%    0.04%        libc-2.26.so  _IO_fwrite 
  0.03%    0.01%      hsdis-amd64.so  [unknown] 
  0.03%           libpthread-2.26.so  __libc_write 
  0.02%    0.01%           libjvm.so  StealTask::do_it 
  0.02%    0.01%           libjvm.so  defaultStream::hold 
  0.02%    0.05%           libjvm.so  RelocIterator::initialize 
  0.02%    0.02%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 639 
  0.02%    0.03%           libjvm.so  xmlTextStream::write 
  0.57%    0.36%  <...other 82 warm methods...>
....................................................................................................
100.00%   99.73%  <totals>

....[Distribution by Source]........................................................................
 97.44%   97.61%         C2, level 4
  1.57%    1.42%   [kernel.kallsyms]
  0.56%    0.66%           libjvm.so
  0.17%    0.22%        libc-2.26.so
  0.09%    0.01%              [vdso]
  0.06%    0.02%  libpthread-2.26.so
  0.04%    0.01%         interpreter
  0.03%    0.01%      hsdis-amd64.so
  0.01%    0.02%        runtime stub
  0.01%                  C1, level 3
  0.00%                             
  0.00%             Unknown, level 0
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                 Mode  Cnt      Score    Error  Units
Re2jRegex.testExp2       thrpt   20  12456.215 ± 83.939  ops/s
Re2jRegex.testExp2:·asm  thrpt             NaN             ---
