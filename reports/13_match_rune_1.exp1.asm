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
# Warmup Iteration   1: 14993.819 ops/s
# Warmup Iteration   2: 27398.364 ops/s
# Warmup Iteration   3: 27339.481 ops/s
# Warmup Iteration   4: 26668.972 ops/s
# Warmup Iteration   5: 27607.205 ops/s
# Warmup Iteration   6: 27558.224 ops/s
# Warmup Iteration   7: 27875.802 ops/s
# Warmup Iteration   8: 27852.768 ops/s
# Warmup Iteration   9: 27553.751 ops/s
# Warmup Iteration  10: 27716.134 ops/s
# Warmup Iteration  11: 27539.074 ops/s
# Warmup Iteration  12: 27313.306 ops/s
# Warmup Iteration  13: 27314.644 ops/s
# Warmup Iteration  14: 25245.851 ops/s
# Warmup Iteration  15: 27905.996 ops/s
# Warmup Iteration  16: 27741.510 ops/s
# Warmup Iteration  17: 27622.405 ops/s
# Warmup Iteration  18: 27567.907 ops/s
# Warmup Iteration  19: 27509.601 ops/s
# Warmup Iteration  20: 27707.901 ops/s
Iteration   1: 27697.252 ops/s
Iteration   2: 27468.702 ops/s
Iteration   3: 27453.991 ops/s
Iteration   4: 27350.949 ops/s
Iteration   5: 27519.981 ops/s
Iteration   6: 27706.583 ops/s
Iteration   7: 27761.381 ops/s
Iteration   8: 27552.000 ops/s
Iteration   9: 27613.175 ops/s
Iteration  10: 27730.582 ops/s
Iteration  11: 27852.943 ops/s
Iteration  12: 27792.910 ops/s
Iteration  13: 27827.703 ops/s
Iteration  14: 27677.367 ops/s
Iteration  15: 27914.926 ops/s
Iteration  16: 27634.329 ops/s
Iteration  17: 27659.470 ops/s
Iteration  18: 27710.194 ops/s
Iteration  19: 27570.306 ops/s
Iteration  20: 27505.888 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  27650.032 ±(99.9%) 127.267 ops/s [Average]
  (min, avg, max) = (27350.949, 27650.032, 27914.926), stdev = 146.560
  CI (99.9%): [27522.765, 27777.298] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1:·asm":
PrintAssembly processed: 211597 total address lines.
Perf output processed (skipped 23.014 seconds):
 Column 1: cycles (20398 events)
 Column 2: instructions (20386 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 534 (779 bytes) 

                     0x00007fe7cc3b15ea: shr    $0x9,%r10
                     0x00007fe7cc3b15ee: movabs $0x7fe7c7b98000,%r11
                     0x00007fe7cc3b15f8: mov    %r12b,(%r11,%r10,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007fe7cc3b15fc: mov    %rdx,%r11          ;*synchronization entry
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.66%    0.28%     0x00007fe7cc3b15ff: mov    0x30(%rsp),%r13
                     0x00007fe7cc3b1604: mov    0x9c(%rsp),%r14d
  0.20%    0.18%     0x00007fe7cc3b160c: mov    0x94(%rsp),%r9d
  0.14%    0.13%     0x00007fe7cc3b1614: mov    0x10(%rsp),%r10d   ;*aload
                                                                   ; - com.google.re2j.Machine::step@207 (line 315)
  2.60%    3.04%  ↗  0x00007fe7cc3b1619: inc    %r10d              ;*iinc
                  │                                                ; - com.google.re2j.Machine::step@218 (line 282)
           0.01%  │  0x00007fe7cc3b161c: cmp    %r14d,%r10d
                  │  0x00007fe7cc3b161f: jge    0x00007fe7cc3b1a89
  0.17%    0.25%  │  0x00007fe7cc3b1625: mov    %r11,%rbx          ;*aload_0
                  │                                                ; - com.google.re2j.Machine::step@25 (line 285)
  0.22%    0.25%  │  0x00007fe7cc3b1628: mov    0x8(%rsp),%r11
  2.02%    2.21%  │  0x00007fe7cc3b162d: movzbl 0x11(%r11),%r11d   ;*getfield captures
                  │                                                ; - com.google.re2j.Machine::step@26 (line 285)
  0.52%    0.57%  │  0x00007fe7cc3b1632: test   %r11d,%r11d
                  │  0x00007fe7cc3b1635: jne    0x00007fe7cc3b1b99  ;*ifne
                  │                                                ; - com.google.re2j.Machine::step@29 (line 285)
  0.70%    0.81%  │  0x00007fe7cc3b163b: mov    0x20(%r13),%ebp    ;*getfield denseThreadsInstructions
                  │                                                ; - com.google.re2j.Machine::step@82 (line 295)
  0.24%    0.15%  │  0x00007fe7cc3b163f: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007fe7cc3b2855
  1.88%    1.83%  │  0x00007fe7cc3b1644: cmp    %r11d,%r10d
                  │  0x00007fe7cc3b1647: jae    0x00007fe7cc3b1b72
  0.07%    0.10%  │  0x00007fe7cc3b164d: lea    (%r12,%rbp,8),%r11
  0.62%    0.81%  │  0x00007fe7cc3b1651: mov    0x10(%r11,%r10,4),%r11d  ;*aaload
                  │                                                ; - com.google.re2j.Machine::step@87 (line 295)
  0.18%    0.18%  │  0x00007fe7cc3b1656: mov    0xc(%r12,%r11,8),%ebp  ;*getfield op
                  │                                                ; - com.google.re2j.Machine::step@92 (line 297)
                  │                                                ; implicit exception: dispatches to 0x00007fe7cc3b2869
  2.59%    2.69%  │  0x00007fe7cc3b165b: cmp    $0x6,%ebp
                  │  0x00007fe7cc3b165e: je     0x00007fe7cc3b1bed  ;*if_icmpne
                  │                                                ; - com.google.re2j.Machine::step@97 (line 297)
  1.02%    1.01%  │  0x00007fe7cc3b1664: cmp    $0xa,%ebp
                  │  0x00007fe7cc3b1667: jne    0x00007fe7cc3b1a18  ;*if_icmpne
                  │                                                ; - com.google.re2j.Inst::matchRune@6 (line 90)
                  │                                                ; - com.google.re2j.Machine::step@181 (line 312)
  0.41%    0.38%  │  0x00007fe7cc3b166d: mov    0x2c(%r12,%r11,8),%ecx  ;*getfield outInst
                  │                                                ; - com.google.re2j.Machine::step@189 (line 313)
  0.08%    0.07%  │  0x00007fe7cc3b1672: mov    0x8(%r12,%rcx,8),%edi  ; implicit exception: dispatches to 0x00007fe7cc3b2879
  1.33%    1.00%  │  0x00007fe7cc3b1677: lea    (%r12,%rcx,8),%r8
  0.02%    0.00%  │  0x00007fe7cc3b167b: cmp    $0xf8019843,%edi   ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                  │  0x00007fe7cc3b1681: jne    0x00007fe7cc3b1abb  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Machine::step@202 (line 313)
  0.59%    0.56%  │  0x00007fe7cc3b1687: mov    0x18(%r8),%edx     ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 175)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%           │  0x00007fe7cc3b168b: mov    %rbx,%r11
  0.10%    0.01%  │  0x00007fe7cc3b168e: mov    0x10(%rbx),%rbx    ;*getfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
                  │                                                ; implicit exception: dispatches to 0x00007fe7cc3b2891
  0.01%    0.03%  │  0x00007fe7cc3b1692: cmp    $0x40,%edx
                  │  0x00007fe7cc3b1695: jg     0x00007fe7cc3b1ead  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.60%    0.62%  │  0x00007fe7cc3b169b: mov    $0x1,%eax
  0.01%    0.01%  │  0x00007fe7cc3b16a0: mov    %edx,%ecx
  0.08%    0.00%  │  0x00007fe7cc3b16a2: shl    %cl,%rax           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  1.15%    1.31%  │  0x00007fe7cc3b16a5: mov    %rbx,%rcx
  0.05%    0.07%  │  0x00007fe7cc3b16a8: and    %rax,%rcx
           0.01%  │  0x00007fe7cc3b16ab: test   %rcx,%rcx
                  ╰  0x00007fe7cc3b16ae: jne    0x00007fe7cc3b1619  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.22%    0.31%     0x00007fe7cc3b16b4: cmp    $0x40,%edx
                     0x00007fe7cc3b16b7: jge    0x00007fe7cc3b1f05  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.35%    0.39%     0x00007fe7cc3b16bd: mov    %r12b,0x18(%r11)   ;*putfield empty
                                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.09%    0.08%     0x00007fe7cc3b16c1: mov    0x2c(%r8),%ebp     ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.02%     0x00007fe7cc3b16c5: or     %rbx,%rax          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.20%    0.27%     0x00007fe7cc3b16c8: mov    %rax,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.33%    0.37%     0x00007fe7cc3b16cc: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007fe7cc3b28a5
  0.89%    0.78%     0x00007fe7cc3b16d1: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007fe7cc3b16d7: jne    0x00007fe7cc3b1c95
  0.67%    0.59%     0x00007fe7cc3b16dd: lea    (%r12,%rbp,8),%rdi  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%              0x00007fe7cc3b16e1: mov    0x18(%rdi),%edx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.62%    0.52%     0x00007fe7cc3b16e4: cmp    $0x40,%edx
                     0x00007fe7cc3b16e7: jg     0x00007fe7cc3b1f5d  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.59%    0.62%     0x00007fe7cc3b16ed: mov    $0x1,%ebx
  0.05%    0.05%     0x00007fe7cc3b16f2: mov    %edx,%ecx
  0.00%    0.00%     0x00007fe7cc3b16f4: shl    %cl,%rbx           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  1.58%    1.48%     0x00007fe7cc3b16f7: mov    %rax,%rcx
                     0x00007fe7cc3b16fa: and    %rbx,%rcx          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%              0x00007fe7cc3b16fd: test   %rcx,%rcx
  0.11%    0.12%     0x00007fe7cc3b1700: jne    0x00007fe7cc3b1fb9  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.64%    0.75%     0x00007fe7cc3b1706: cmp    $0x40,%edx
                     0x00007fe7cc3b1709: jge    0x00007fe7cc3b201d  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%              0x00007fe7cc3b170f: or     %rbx,%rax          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007fe7cc3b1712: mov    %rax,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.02%     0x00007fe7cc3b1716: mov    0x20(%r11),%edx    ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.75%    0.69%     0x00007fe7cc3b171a: mov    0xc(%r11),%ecx     ;*getfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%    0.00%     0x00007fe7cc3b171e: mov    %ecx,%esi
  0.00%              0x00007fe7cc3b1720: inc    %esi               ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.02%     0x00007fe7cc3b1722: mov    %esi,0xc(%r11)     ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.68%    0.67%     0x00007fe7cc3b1726: mov    0xc(%r12,%rdx,8),%ebx  ; implicit exception: dispatches to 0x00007fe7cc3b28bd
  0.01%    0.00%     0x00007fe7cc3b172b: mov    %ebx,0x18(%rsp)
           0.00%     0x00007fe7cc3b172f: cmp    %ebx,%ecx
                     0x00007fe7cc3b1731: jae    0x00007fe7cc3b1c39
  0.03%    0.00%     0x00007fe7cc3b1737: vmovd  %esi,%xmm0
  0.69%    0.56%     0x00007fe7cc3b173b: mov    %ecx,0x14(%rsp)
           0.01%     0x00007fe7cc3b173f: vmovd  %edx,%xmm1
           0.00%     0x00007fe7cc3b1743: mov    %r10d,0x10(%rsp)
  0.01%    0.02%     0x00007fe7cc3b1748: mov    %r9d,0x94(%rsp)
  0.57%    0.48%     0x00007fe7cc3b1750: mov    %r14d,0x9c(%rsp)
  0.00%              0x00007fe7cc3b1758: mov    %r11,%rdx
           0.01%     0x00007fe7cc3b175b: mov    %r13,0x30(%rsp)
  0.00%    0.01%     0x00007fe7cc3b1760: vmovd  %xmm1,%r10d
  0.67%    0.68%     0x00007fe7cc3b1765: mov    0x8(%r12,%r10,8),%r11d
  0.01%              0x00007fe7cc3b176a: cmp    $0xf8019807,%r11d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                     0x00007fe7cc3b1771: jne    0x00007fe7cc3b1ce9  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
           0.00%     0x00007fe7cc3b1777: mov    0x34(%r8),%r10d    ;*getfield inst2
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@41 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%    0.01%     0x00007fe7cc3b177b: mov    %r10d,%r13d
  0.62%    0.72%     0x00007fe7cc3b177e: mov    %rdi,%r10
  0.01%    0.00%     0x00007fe7cc3b1781: shr    $0x3,%r10          ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%              0x00007fe7cc3b1785: vmovd  %xmm1,%r8d
  0.01%    0.00%     0x00007fe7cc3b178a: shl    $0x3,%r8           ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.66%    0.48%     0x00007fe7cc3b178e: lea    0x10(%r8,%rcx,4),%r11
                     0x00007fe7cc3b1793: mov    %r10d,(%r11)
  0.07%    0.04%     0x00007fe7cc3b1796: mov    %r11,%r10
  0.02%    0.00%     0x00007fe7cc3b1799: shr    $0x9,%r10
  0.65%    0.62%     0x00007fe7cc3b179d: movabs $0x7fe7c7b98000,%r11
  0.01%    0.00%     0x00007fe7cc3b17a7: mov    %r12b,(%r11,%r10,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.07%    0.06%     0x00007fe7cc3b17ab: mov    %r13d,%r10d
  0.01%    0.01%     0x00007fe7cc3b17ae: mov    0x8(%r12,%r10,8),%ecx  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                                                                   ; implicit exception: dispatches to 0x00007fe7cc3b28d9
  0.66%    0.58%     0x00007fe7cc3b17b3: movslq 0x14(%rsp),%r10
                     0x00007fe7cc3b17b8: lea    (%r8,%r10,4),%r9   ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.08%    0.05%     0x00007fe7cc3b17bc: mov    %r9,%r11
  0.02%    0.01%     0x00007fe7cc3b17bf: add    $0x14,%r11         ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.66%    0.57%     0x00007fe7cc3b17c3: mov    %r13d,%r10d
  0.01%              0x00007fe7cc3b17c6: lea    (%r12,%r10,8),%rdi
  0.03%    0.04%     0x00007fe7cc3b17ca: mov    0x14(%rsp),%ebx
  0.00%    0.02%     0x00007fe7cc3b17ce: add    $0x2,%ebx          ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.75%    0.42%     0x00007fe7cc3b17d1: cmp    $0xf8019885,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                     0x00007fe7cc3b17d7: jne    0x00007fe7cc3b1584  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%              0x00007fe7cc3b17dd: mov    %rdi,%r13
  0.06%    0.03%     0x00007fe7cc3b17e0: mov    0x18(%rdi),%r10d   ;*getfield pc
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@2 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
           0.01%     0x00007fe7cc3b17e4: mov    %r10d,%ecx
  0.54%    0.27%     0x00007fe7cc3b17e7: cmp    $0x40,%r10d
                     0x00007fe7cc3b17eb: jg     0x00007fe7cc3b2195  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%    0.00%     0x00007fe7cc3b17f1: mov    $0x1,%edi
  0.02%    0.03%     0x00007fe7cc3b17f6: shl    %cl,%rdi           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.62%    0.31%     0x00007fe7cc3b17f9: mov    %rax,%r10
  0.02%    0.04%     0x00007fe7cc3b17fc: and    %rdi,%r10          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.00%     0x00007fe7cc3b17ff: test   %r10,%r10
                     0x00007fe7cc3b1802: jne    0x00007fe7cc3b21d1  ;*ifeq
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@8 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.62%    0.40%     0x00007fe7cc3b1808: mov    %ecx,%r10d
           0.01%     0x00007fe7cc3b180b: cmp    $0x40,%r10d
                     0x00007fe7cc3b180f: jge    0x00007fe7cc3b221d  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.04%     0x00007fe7cc3b1815: or     %rdi,%rax          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.01%     0x00007fe7cc3b1818: mov    %rax,0x10(%rdx)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.70%    0.53%     0x00007fe7cc3b181c: mov    0x2c(%r13),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@83 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%              0x00007fe7cc3b1820: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007fe7cc3b2911
  0.20%    0.15%     0x00007fe7cc3b1825: cmp    $0xf8019843,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                     0x00007fe7cc3b182b: jne    0x00007fe7cc3b1e55
  0.05%    0.04%     0x00007fe7cc3b1831: lea    (%r12,%rbp,8),%r13  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.59%    0.08%     0x00007fe7cc3b1835: mov    0x18(%r13),%r10d   ;*getfield pc
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%              0x00007fe7cc3b1839: mov    %r10d,%ecx
  0.03%    0.04%     0x00007fe7cc3b183c: cmp    $0x40,%r10d
  0.06%    0.06%     0x00007fe7cc3b1840: jg     0x00007fe7cc3b231d  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.58%    0.56%     0x00007fe7cc3b1846: mov    $0x1,%edi
                     0x00007fe7cc3b184b: shl    %cl,%rdi           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.74%    0.90%     0x00007fe7cc3b184e: mov    %rax,%r10
           0.01%     0x00007fe7cc3b1851: and    %rdi,%r10
  0.04%    0.11%     0x00007fe7cc3b1854: test   %r10,%r10
                     0x00007fe7cc3b1857: jne    0x00007fe7cc3b1b6a  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.06%     0x00007fe7cc3b185d: mov    %ecx,%r10d
  0.51%    0.64%     0x00007fe7cc3b1860: cmp    $0x40,%r10d
                     0x00007fe7cc3b1864: jge    0x00007fe7cc3b2359  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%    0.00%     0x00007fe7cc3b186a: mov    0x2c(%r13),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.05%     0x00007fe7cc3b186e: or     %rdi,%rax          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.05%     0x00007fe7cc3b1871: mov    %rax,0x10(%rdx)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.65%    0.75%     0x00007fe7cc3b1875: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007fe7cc3b2929
           0.01%     0x00007fe7cc3b187a: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
  0.03%    0.06%     0x00007fe7cc3b1880: jne    0x00007fe7cc3b1e81
  0.06%    0.09%     0x00007fe7cc3b1886: lea    (%r12,%rbp,8),%r14  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.60%    0.62%     0x00007fe7cc3b188a: mov    0x18(%r14),%r10d   ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
           0.00%     0x00007fe7cc3b188e: vmovd  %r10d,%xmm2
  0.04%    0.04%     0x00007fe7cc3b1893: cmp    $0x40,%r10d
                     0x00007fe7cc3b1897: jg     0x00007fe7cc3b2395  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.09%     0x00007fe7cc3b189d: mov    $0x1,%edi
  0.58%    0.63%     0x00007fe7cc3b18a2: mov    %r10d,%ecx
  0.00%    0.01%     0x00007fe7cc3b18a5: shl    %cl,%rdi           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.77%    0.77%     0x00007fe7cc3b18a8: mov    %rax,%r10
           0.00%     0x00007fe7cc3b18ab: and    %rdi,%r10          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.03%     0x00007fe7cc3b18ae: test   %r10,%r10
                     0x00007fe7cc3b18b1: jne    0x00007fe7cc3b23d5  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.06%     0x00007fe7cc3b18b7: mov    %ecx,%r10d
  0.52%    0.68%     0x00007fe7cc3b18ba: cmp    $0x40,%r10d
                     0x00007fe7cc3b18be: jge    0x00007fe7cc3b2429  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007fe7cc3b18c4: mov    %ebx,0xc(%rdx)     ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.00%     0x00007fe7cc3b18c7: or     %rdi,%rax          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.04%     0x00007fe7cc3b18ca: mov    %rax,0x10(%rdx)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.54%    0.64%     0x00007fe7cc3b18ce: cmp    0x18(%rsp),%ebx
                     0x00007fe7cc3b18d2: jae    0x00007fe7cc3b1de1  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007fe7cc3b18d8: mov    0x34(%r13),%r10d   ;*getfield inst2
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@41 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.00%     0x00007fe7cc3b18dc: mov    %r10d,%edi
  0.04%    0.07%     0x00007fe7cc3b18df: mov    %r11,%rcx
  0.59%    0.68%     0x00007fe7cc3b18e2: mov    %r14,%r10
           0.00%     0x00007fe7cc3b18e5: shr    $0x3,%r10
  0.03%    0.08%     0x00007fe7cc3b18e9: mov    %r10d,(%r11)
  0.04%    0.06%     0x00007fe7cc3b18ec: shr    $0x9,%rcx
  0.64%    0.71%     0x00007fe7cc3b18f0: movabs $0x7fe7c7b98000,%r10
                     0x00007fe7cc3b18fa: mov    %r12b,(%r10,%rcx,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.04%     0x00007fe7cc3b18fe: mov    0x8(%r12,%rdi,8),%ecx  ; implicit exception: dispatches to 0x00007fe7cc3b2941
  0.04%    0.02%     0x00007fe7cc3b1903: mov    %edi,%r11d
  0.58%    0.62%     0x00007fe7cc3b1906: lea    (%r12,%r11,8),%r10
           0.00%     0x00007fe7cc3b190a: cmp    $0xf8019885,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                     0x00007fe7cc3b1910: jne    0x00007fe7cc3b199f  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007fe7cc3b1916: mov    0x18(%r10),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@2 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
....................................................................................................
 44.16%   43.15%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 571 (1253 bytes) 

                               0x00007fe7cc3d1f0d: mov    0x14(%rbp),%ecx    ;*getfield str
                                                                             ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                                                                             ; - com.google.re2j.Machine::match@60 (line 193)
                               0x00007fe7cc3d1f10: mov    0x8(%r12,%rcx,8),%esi  ; implicit exception: dispatches to 0x00007fe7cc3d3da9
                               0x00007fe7cc3d1f15: cmp    $0xf80002da,%esi   ;   {metadata(&apos;java/lang/String&apos;)}
                               0x00007fe7cc3d1f1b: jne    0x00007fe7cc3d32d1
                               0x00007fe7cc3d1f21: lea    (%r12,%rcx,8),%r13  ;*invokeinterface charAt
                                                                             ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                             ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                             ; - com.google.re2j.Machine::match@60 (line 193)
  0.01%                        0x00007fe7cc3d1f25: test   %edi,%edi
                               0x00007fe7cc3d1f27: jl     0x00007fe7cc3d33a5  ;*iflt
                                                                             ; - java.lang.String::charAt@1 (line 657)
                                                                             ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                             ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                             ; - com.google.re2j.Machine::match@60 (line 193)
                               0x00007fe7cc3d1f2d: mov    %rbp,0x50(%rsp)
                               0x00007fe7cc3d1f32: mov    %eax,0x34(%rsp)
                               0x00007fe7cc3d1f36: mov    %r11d,0x48(%rsp)
  0.00%                        0x00007fe7cc3d1f3b: mov    %r9d,0x3c(%rsp)
                               0x00007fe7cc3d1f40: mov    %r10,0x40(%rsp)
                               0x00007fe7cc3d1f45: mov    0xc(%r13),%r10d    ;*getfield value
                                                                             ; - java.lang.String::charAt@6 (line 657)
                                                                             ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                             ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                             ; - com.google.re2j.Machine::match@60 (line 193)
                               0x00007fe7cc3d1f49: mov    %r10d,%eax
           0.00%               0x00007fe7cc3d1f4c: mov    0xc(%r12,%r10,8),%r10d  ;*arraylength
                                                                             ; - java.lang.String::charAt@9 (line 657)
                                                                             ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                             ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                             ; - com.google.re2j.Machine::match@60 (line 193)
                                                                             ; implicit exception: dispatches to 0x00007fe7cc3d3dbd
           0.00%               0x00007fe7cc3d1f51: mov    %r10d,0x1c(%rsp)
  0.02%    0.00%               0x00007fe7cc3d1f56: cmp    0x1c(%rsp),%edi
                               0x00007fe7cc3d1f5a: jge    0x00007fe7cc3d3539  ;*if_icmplt
                                                                             ; - java.lang.String::charAt@10 (line 657)
                                                                             ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                             ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                             ; - com.google.re2j.Machine::match@60 (line 193)
  0.02%    0.01%               0x00007fe7cc3d1f60: cmp    0x1c(%rsp),%edi
                               0x00007fe7cc3d1f64: jae    0x00007fe7cc3d31f5
           0.01%               0x00007fe7cc3d1f6a: mov    %eax,%r10d
                               0x00007fe7cc3d1f6d: lea    (%r12,%r10,8),%r9
                               0x00007fe7cc3d1f71: movzwl 0x10(%r9,%rdi,2),%r10d  ;*caload
                                                                             ; - java.lang.String::charAt@27 (line 660)
                                                                             ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                             ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                             ; - com.google.re2j.Machine::match@60 (line 193)
                               0x00007fe7cc3d1f77: cmp    $0xd800,%r10d
                               0x00007fe7cc3d1f7e: jge    0x00007fe7cc3d3581  ;*if_icmplt
                                                                             ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                             ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                             ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                             ; - com.google.re2j.Machine::match@60 (line 193)
  0.00%    0.01%               0x00007fe7cc3d1f84: shl    $0x3,%r10d         ;*ishl
                                                                             ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                                                                             ; - com.google.re2j.Machine::match@60 (line 193)
                               0x00007fe7cc3d1f88: mov    %r10d,%r11d
                               0x00007fe7cc3d1f8b: and    $0x7,%r11d
                               0x00007fe7cc3d1f8f: or     $0x1,%r10d
           0.01%               0x00007fe7cc3d1f93: mov    %r10d,%esi
                               0x00007fe7cc3d1f96: or     $0x1,%r11d         ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                                                                             ; - com.google.re2j.Machine::match@60 (line 193)
                               0x00007fe7cc3d1f9a: mov    %r11d,0x28(%rsp)
           0.00%               0x00007fe7cc3d1f9f: mov    %r10d,%edi
  0.00%                        0x00007fe7cc3d1fa2: sar    $0x3,%edi          ;*ishr
                                                                             ; - com.google.re2j.Machine::match@68 (line 194)
                               0x00007fe7cc3d1fa5: cmp    $0xfffffff8,%r10d
                               0x00007fe7cc3d1fa9: je     0x00007fe7cc3d31a0  ;*if_icmpeq
                                                                             ; - com.google.re2j.Machine::match@88 (line 198)
                               0x00007fe7cc3d1faf: vmovd  %xmm0,%r10d
                               0x00007fe7cc3d1fb4: add    %r11d,%r10d
  0.01%    0.01%               0x00007fe7cc3d1fb7: add    %r14d,%r10d        ;*iadd
                                                                             ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                                                                             ; - com.google.re2j.Machine::match@96 (line 199)
                               0x00007fe7cc3d1fba: vmovd  %r10d,%xmm1
                               0x00007fe7cc3d1fbf: cmp    0x64(%rsp),%r10d
                               0x00007fe7cc3d1fc4: jge    0x00007fe7cc3d28be  ;*if_icmpge
                                                                             ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                                                                             ; - com.google.re2j.Machine::match@96 (line 199)
           0.00%               0x00007fe7cc3d1fca: test   %r10d,%r10d
                               0x00007fe7cc3d1fcd: jl     0x00007fe7cc3d3435  ;*iflt
                                                                             ; - java.lang.String::charAt@1 (line 657)
                                                                             ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                             ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                             ; - com.google.re2j.Machine::match@96 (line 199)
  0.00%    0.00%               0x00007fe7cc3d1fd3: cmp    0x1c(%rsp),%r10d
                               0x00007fe7cc3d1fd8: jge    0x00007fe7cc3d35d1  ;*if_icmplt
                                                                             ; - java.lang.String::charAt@10 (line 657)
                                                                             ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                             ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                             ; - com.google.re2j.Machine::match@96 (line 199)
                               0x00007fe7cc3d1fde: cmp    0x1c(%rsp),%r10d
                               0x00007fe7cc3d1fe3: jae    0x00007fe7cc3d323d
                               0x00007fe7cc3d1fe9: movzwl 0x10(%r9,%r10,2),%r10d  ;*caload
                                                                             ; - java.lang.String::charAt@27 (line 660)
                                                                             ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                             ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                             ; - com.google.re2j.Machine::match@96 (line 199)
  0.00%                        0x00007fe7cc3d1fef: cmp    $0xd800,%r10d
                               0x00007fe7cc3d1ff6: jge    0x00007fe7cc3d3631  ;*if_icmplt
                                                                             ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                             ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                             ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                             ; - com.google.re2j.Machine::match@96 (line 199)
           0.00%               0x00007fe7cc3d1ffc: shl    $0x3,%r10d         ;*ishl
                                                                             ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                                                                             ; - com.google.re2j.Machine::match@96 (line 199)
                               0x00007fe7cc3d2000: mov    %r10d,%r11d
                               0x00007fe7cc3d2003: or     $0x1,%r11d
           0.00%               0x00007fe7cc3d2007: and    $0x7,%r10d
  0.00%                        0x00007fe7cc3d200b: sar    $0x3,%r11d         ;*ishr
                                                                             ; - com.google.re2j.Machine::match@104 (line 200)
                               0x00007fe7cc3d200f: mov    %r11d,0x38(%rsp)
  0.01%                        0x00007fe7cc3d2014: or     $0x1,%r10d         ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                                                                             ; - com.google.re2j.Machine::match@96 (line 199)
                               0x00007fe7cc3d2018: mov    %r10d,0x30(%rsp)   ;*ishr
                                                                             ; - com.google.re2j.Machine::match@104 (line 200)
  0.00%                        0x00007fe7cc3d201d: vmovd  %xmm0,%r10d
                               0x00007fe7cc3d2022: test   %r10d,%r10d
                               0x00007fe7cc3d2025: jne    0x00007fe7cc3d33e1  ;*ifne
                                                                             ; - com.google.re2j.Machine::match@115 (line 204)
                               0x00007fe7cc3d202b: test   %edi,%edi
                               0x00007fe7cc3d202d: jl     0x00007fe7cc3d28a6  ;*ifge
                                                                             ; - com.google.re2j.Utils::emptyOpContext@21 (line 179)
                                                                             ; - com.google.re2j.Machine::match@121 (line 205)
                               0x00007fe7cc3d2033: mov    $0x5,%r10d         ;*iload_1
                                                                             ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                                                                             ; - com.google.re2j.Machine::match@121 (line 205)
  0.00%                        0x00007fe7cc3d2039: cmp    $0xa,%edi
                               0x00007fe7cc3d203c: je     0x00007fe7cc3d28d6  ;*iload_0
                                                                             ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                                                                             ; - com.google.re2j.Machine::match@121 (line 205)
                               0x00007fe7cc3d2042: mov    %edi,%r11d
                               0x00007fe7cc3d2045: add    $0xffffffbf,%r11d
                               0x00007fe7cc3d2049: cmp    $0x1a,%r11d
                  ╭            0x00007fe7cc3d204d: jb     0x00007fe7cc3d2060  ;*if_icmple
                  │                                                          ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │                                                          ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                          ; - com.google.re2j.Machine::match@121 (line 205)
           0.00%  │            0x00007fe7cc3d204f: mov    %edi,%r9d
                  │            0x00007fe7cc3d2052: add    $0xffffff9f,%r9d
                  │            0x00007fe7cc3d2056: cmp    $0x1a,%r9d
                  │            0x00007fe7cc3d205a: jae    0x00007fe7cc3d28df  ;*iconst_1
                  │                                                          ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │                                                          ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                          ; - com.google.re2j.Machine::match@121 (line 205)
  0.01%    0.00%  ↘            0x00007fe7cc3d2060: or     $0x10,%r10d        ;*iload_2
                                                                             ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                             ; - com.google.re2j.Machine::match@121 (line 205)
  0.03%    0.00%               0x00007fe7cc3d2064: mov    0x40(%rsp),%r11
  0.01%    0.00%               0x00007fe7cc3d2069: movzbl 0x11(%r11),%r9d    ;*getfield captures
                                                                             ; - com.google.re2j.Machine::match@283 (line 240)
  0.01%                        0x00007fe7cc3d206e: mov    %rdx,%r11
                               0x00007fe7cc3d2071: shl    $0x3,%r11          ;*getfield q1
                                                                             ; - com.google.re2j.Machine::match@53 (line 192)
  0.00%                        0x00007fe7cc3d2075: mov    %r11,0x20(%rsp)
                               0x00007fe7cc3d207a: xor    %eax,%eax
                               0x00007fe7cc3d207c: mov    $0x1,%r11d
                               0x00007fe7cc3d2082: xor    %esi,%esi
                               0x00007fe7cc3d2084: mov    %r11d,0x60(%rsp)
                               0x00007fe7cc3d2089: mov    %esi,0x14(%rsp)
  0.01%            ╭           0x00007fe7cc3d208d: jmpq   0x00007fe7cc3d21f1
  0.10%    0.09%   │    ↗      0x00007fe7cc3d2092: or     $0x20,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                   │    │                                                    ; - com.google.re2j.Machine::match@322 (line 245)
  0.14%    0.13%   │    │      0x00007fe7cc3d2096: mov    %r8d,0x2c(%rsp)    ;*iload_2
                   │    │                                                    ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   │    │                                                    ; - com.google.re2j.Machine::match@322 (line 245)
  0.18%    0.19%   │    │↗     0x00007fe7cc3d209b: cmp    0x64(%rsp),%edx
                   │    ││     0x00007fe7cc3d209f: je     0x00007fe7cc3d2812  ;*if_icmpne
                   │    ││                                                   ; - com.google.re2j.Machine::match@347 (line 246)
  0.42%    0.22%   │    ││     0x00007fe7cc3d20a5: xor    %r11d,%r11d
  0.08%    0.08%   │    ││     0x00007fe7cc3d20a8: mov    %edx,0x4c(%rsp)
  0.23%    0.21%   │    ││     0x00007fe7cc3d20ac: mov    0x40(%rsp),%rsi
  0.17%    0.04%   │    ││     0x00007fe7cc3d20b1: mov    0x18(%rsp),%rdx
  0.35%    0.37%   │    ││     0x00007fe7cc3d20b6: mov    0x20(%rsp),%rcx
  0.07%    0.08%   │    ││     0x00007fe7cc3d20bb: mov    0x4c(%rsp),%r8d
  0.69%    0.36%   │    ││     0x00007fe7cc3d20c0: mov    0x14(%rsp),%r9d
  0.12%    0.07%   │    ││     0x00007fe7cc3d20c5: mov    0x2c(%rsp),%r10d
  0.30%    0.34%   │    ││     0x00007fe7cc3d20ca: mov    %r10d,(%rsp)
  0.05%    0.06%   │    ││     0x00007fe7cc3d20ce: mov    0x3c(%rsp),%ebx
  0.29%    0.23%   │    ││     0x00007fe7cc3d20d2: mov    %ebx,0x8(%rsp)
  0.17%    0.07%   │    ││     0x00007fe7cc3d20d6: mov    %r11d,0x10(%rsp)
  0.25%    0.06%   │    ││     0x00007fe7cc3d20db: callq  0x00007fe7cc1b0020  ; OopMap{[24]=Oop [32]=Oop [52]=NarrowOop [64]=Oop [80]=Oop off=640}
                   │    ││                                                   ;*invokespecial step
                   │    ││                                                   ; - com.google.re2j.Machine::match@355 (line 246)
                   │    ││                                                   ;   {optimized virtual_call}
  0.01%            │    ││     0x00007fe7cc3d20e0: mov    0x40(%rsp),%r10
  0.77%    0.80%   │    ││     0x00007fe7cc3d20e5: movzbl 0x11(%r10),%r9d    ;*getfield captures
                   │    ││                                                   ; - com.google.re2j.Machine::match@367 (line 250)
  0.01%    0.00%   │    ││     0x00007fe7cc3d20ea: movzbl 0x10(%r10),%eax    ;*getfield matched
                   │    ││                                                   ; - com.google.re2j.Machine::match@374 (line 250)
                   │    ││     0x00007fe7cc3d20ef: mov    0x28(%rsp),%r8d
  0.63%    0.79%   │    ││     0x00007fe7cc3d20f4: test   %r8d,%r8d
                   │    ││     0x00007fe7cc3d20f7: je     0x00007fe7cc3d27d2  ;*ifne
                   │    ││                                                   ; - com.google.re2j.Machine::match@360 (line 247)
                   │    ││     0x00007fe7cc3d20fd: test   %r9d,%r9d
  0.01%            │    ││     0x00007fe7cc3d2100: jne    0x00007fe7cc3d2c09  ;*ifne
                   │    ││                                                   ; - com.google.re2j.Machine::match@370 (line 250)
  0.00%    0.01%   │    ││     0x00007fe7cc3d2106: test   %eax,%eax
                   │    ││     0x00007fe7cc3d2108: jne    0x00007fe7cc3d2e4d  ;*ifeq
                   │    ││                                                   ; - com.google.re2j.Machine::match@377 (line 250)
  0.64%    0.76%   │    ││     0x00007fe7cc3d210e: mov    0x50(%rsp),%r10
                   │    ││     0x00007fe7cc3d2113: mov    0x10(%r10),%r11d   ;*getfield end
                   │    ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                   │    ││                                                   ; - com.google.re2j.Machine::match@407 (line 259)
  0.00%    0.01%   │    ││     0x00007fe7cc3d2117: mov    %r11d,0x64(%rsp)
  0.01%            │    ││     0x00007fe7cc3d211c: mov    0xc(%r10),%r14d    ;*getfield start
                   │    ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                   │    ││                                                   ; - com.google.re2j.Machine::match@407 (line 259)
  0.63%    0.64%   │    ││     0x00007fe7cc3d2120: mov    0x14(%r10),%ecx    ;*getfield str
                   │    ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                   │    ││                                                   ; - com.google.re2j.Machine::match@407 (line 259)
                   │    ││     0x00007fe7cc3d2124: mov    0x38(%rsp),%r10d
                   │    ││     0x00007fe7cc3d2129: cmp    $0xffffffff,%r10d
                   │    ││     0x00007fe7cc3d212d: je     0x00007fe7cc3d281d  ;*if_icmpeq
                   │    ││                                                   ; - com.google.re2j.Machine::match@399 (line 258)
  0.01%    0.01%   │    ││     0x00007fe7cc3d2133: mov    0x30(%rsp),%r8d
  0.68%    0.70%   │    ││     0x00007fe7cc3d2138: add    0x14(%rsp),%r8d
  0.01%            │    ││     0x00007fe7cc3d213d: add    %r14d,%r8d         ;*iadd
                   │    ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                   │    ││                                                   ; - com.google.re2j.Machine::match@407 (line 259)
  0.00%            │    ││     0x00007fe7cc3d2140: cmp    %r11d,%r8d
                   │    ││     0x00007fe7cc3d2143: jge    0x00007fe7cc3d269c  ;*if_icmpge
                   │    ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                   │    ││                                                   ; - com.google.re2j.Machine::match@407 (line 259)
  0.00%    0.00%   │    ││     0x00007fe7cc3d2149: mov    0x8(%r12,%rcx,8),%r11d  ; implicit exception: dispatches to 0x00007fe7cc3d3d51
  0.73%    0.83%   │    ││     0x00007fe7cc3d214e: cmp    $0xf80002da,%r11d  ;   {metadata(&apos;java/lang/String&apos;)}
                   │    ││     0x00007fe7cc3d2155: jne    0x00007fe7cc3d2af5
  0.03%    0.01%   │    ││     0x00007fe7cc3d215b: lea    (%r12,%rcx,8),%rbx  ;*invokeinterface charAt
                   │    ││                                                   ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                   ; - com.google.re2j.Machine::match@407 (line 259)
                   │    ││     0x00007fe7cc3d215f: test   %r8d,%r8d
                   │    ││     0x00007fe7cc3d2162: jl     0x00007fe7cc3d2c65  ;*iflt
                   │    ││                                                   ; - java.lang.String::charAt@1 (line 657)
                   │    ││                                                   ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                   ; - com.google.re2j.Machine::match@407 (line 259)
           0.01%   │    ││     0x00007fe7cc3d2168: mov    0xc(%rbx),%edx     ;*getfield value
                   │    ││                                                   ; - java.lang.String::charAt@6 (line 657)
                   │    ││                                                   ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                   ; - com.google.re2j.Machine::match@407 (line 259)
  0.70%    0.89%   │    ││     0x00007fe7cc3d216b: mov    0xc(%r12,%rdx,8),%ebp  ;*arraylength
                   │    ││                                                   ; - java.lang.String::charAt@9 (line 657)
                   │    ││                                                   ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                   ; - com.google.re2j.Machine::match@407 (line 259)
                   │    ││                                                   ; implicit exception: dispatches to 0x00007fe7cc3d3d65
  0.97%    1.05%   │    ││     0x00007fe7cc3d2170: cmp    %ebp,%r8d
                   │    ││     0x00007fe7cc3d2173: jge    0x00007fe7cc3d2ea9  ;*if_icmplt
                   │    ││                                                   ; - java.lang.String::charAt@10 (line 657)
                   │    ││                                                   ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                   ; - com.google.re2j.Machine::match@407 (line 259)
  0.72%    0.69%   │    ││     0x00007fe7cc3d2179: cmp    %ebp,%r8d
                   │    ││     0x00007fe7cc3d217c: jae    0x00007fe7cc3d29a5
  0.07%    0.04%   │    ││     0x00007fe7cc3d2182: lea    (%r12,%rdx,8),%r10
  0.11%    0.15%   │    ││     0x00007fe7cc3d2186: movzwl 0x10(%r10,%r8,2),%edx  ;*caload
                   │    ││                                                   ; - java.lang.String::charAt@27 (line 660)
                   │    ││                                                   ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                   ; - com.google.re2j.Machine::match@407 (line 259)
  0.09%    0.06%   │    ││     0x00007fe7cc3d218c: cmp    $0xd800,%edx
                   │    ││     0x00007fe7cc3d2192: jge    0x00007fe7cc3d2f0d  ;*if_icmplt
                   │    ││                                                   ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   │    ││                                                   ; - java.lang.Character::codePointAt@9 (line 4867)
                   │    ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                   ; - com.google.re2j.Machine::match@407 (line 259)
  0.57%    0.57%   │    ││     0x00007fe7cc3d2198: shl    $0x3,%edx          ;*ishl
                   │    ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                   │    ││                                                   ; - com.google.re2j.Machine::match@407 (line 259)
  0.33%    0.25%   │    ││     0x00007fe7cc3d219b: mov    %edx,%r11d
  0.07%    0.04%   │    ││     0x00007fe7cc3d219e: or     $0x1,%r11d
  0.56%    0.66%   │    ││     0x00007fe7cc3d21a2: and    $0x7,%edx
  0.13%    0.16%   │    ││     0x00007fe7cc3d21a5: sar    $0x3,%r11d         ;*ishr
                   │    ││                                                   ; - com.google.re2j.Machine::match@415 (line 260)
  0.60%    0.53%   │    ││     0x00007fe7cc3d21a9: or     $0x1,%edx          ; OopMap{rcx=NarrowOop [24]=Oop [32]=Oop [64]=Oop [80]=Oop off=844}
                   │    ││                                                   ;*goto
                   │    ││                                                   ; - com.google.re2j.Machine::match@437 (line 266)
  0.10%    0.12%   │    ││     0x00007fe7cc3d21ac: test   %eax,0x15e16e4e(%rip)        # 0x00007fe7e21e9000
                   │    ││                                                   ;*goto
                   │    ││                                                   ; - com.google.re2j.Machine::match@437 (line 266)
                   │    ││                                                   ;   {poll}
  0.04%    0.03%   │    ││     0x00007fe7cc3d21b2: mov    0x40(%rsp),%r10
  0.06%    0.08%   │    ││     0x00007fe7cc3d21b7: mov    0x28(%r10),%r8d    ;*getfield matchcap
                   │    ││                                                   ; - com.google.re2j.Machine::match@307 (line 243)
  0.53%    0.64%   │    ││     0x00007fe7cc3d21bb: mov    0x14(%r10),%ebx    ;*getfield re2
                   │    ││                                                   ; - com.google.re2j.Machine::match@169 (line 220)
  0.10%    0.10%   │    ││     0x00007fe7cc3d21bf: mov    0x20(%rsp),%r10
                   │    ││     0x00007fe7cc3d21c4: shr    $0x3,%r10
  0.12%    0.12%   │    ││     0x00007fe7cc3d21c8: mov    %r10d,0x34(%rsp)
  0.60%    0.58%   │    ││     0x00007fe7cc3d21cd: mov    0x38(%rsp),%edi
  0.08%    0.10%   │    ││     0x00007fe7cc3d21d1: mov    0x2c(%rsp),%r10d
                   │    ││     0x00007fe7cc3d21d6: mov    0x18(%rsp),%rsi
  0.11%    0.09%   │    ││     0x00007fe7cc3d21db: mov    %rsi,0x20(%rsp)
  0.52%    0.56%   │    ││     0x00007fe7cc3d21e0: mov    0x30(%rsp),%ebp
  0.05%    0.07%   │    ││     0x00007fe7cc3d21e4: mov    %ebp,0x28(%rsp)
                   │    ││     0x00007fe7cc3d21e8: mov    %r11d,0x38(%rsp)
  0.06%    0.13%   │    ││     0x00007fe7cc3d21ed: mov    %edx,0x30(%rsp)    ;*getfield matchcap
                   │    ││                                                   ; - com.google.re2j.Machine::match@307 (line 243)
  0.51%    0.60%   ↘    ││     0x00007fe7cc3d21f1: mov    0x34(%rsp),%edx
  0.08%    0.09%        ││     0x00007fe7cc3d21f5: movzbl 0x18(%r12,%rdx,8),%r11d  ; implicit exception: dispatches to 0x00007fe7cc3d3cf9
  0.01%    0.00%        ││     0x00007fe7cc3d21fb: shl    $0x3,%rdx          ;*aload
                        ││                                                   ; - com.google.re2j.Machine::match@136 (line 211)
  0.11%    0.10%        ││     0x00007fe7cc3d21ff: mov    %rdx,0x18(%rsp)
  0.60%    0.65%        ││     0x00007fe7cc3d2204: test   %r11d,%r11d
                        ││     0x00007fe7cc3d2207: jne    0x00007fe7cc3d2469  ;*ifeq
                        ││                                                   ; - com.google.re2j.Machine::match@141 (line 211)
  0.12%    0.09%        ││     0x00007fe7cc3d220d: mov    0x14(%rsp),%edx    ;*aload_0
                        ││                                                   ; - com.google.re2j.Machine::match@267 (line 237)
  0.00%    0.00%        ││     0x00007fe7cc3d2211: test   %eax,%eax
                        ││     0x00007fe7cc3d2213: jne    0x00007fe7cc3d2b5d  ;*ifne
                        ││                                                   ; - com.google.re2j.Machine::match@271 (line 237)
  0.08%    0.08%        ││     0x00007fe7cc3d2219: test   %edx,%edx
                    ╭   ││     0x00007fe7cc3d221b: je     0x00007fe7cc3d222b  ;*ifeq
                    │   ││                                                   ; - com.google.re2j.Machine::match@275 (line 237)
  0.51%    0.65%    │   ││     0x00007fe7cc3d221d: mov    0x3c(%rsp),%r11d
  0.11%    0.08%    │   ││     0x00007fe7cc3d2222: test   %r11d,%r11d
                    │   ││     0x00007fe7cc3d2225: jne    0x00007fe7cc3d2bb5  ;*aload_0
                    │   ││                                                   ; - com.google.re2j.Machine::match@282 (line 240)
                    ↘   ││     0x00007fe7cc3d222b: test   %r9d,%r9d
                        ││     0x00007fe7cc3d222e: jne    0x00007fe7cc3d2ce1  ;*ifeq
                        ││                                                   ; - com.google.re2j.Machine::match@286 (line 240)
  0.07%    0.14%        ││     0x00007fe7cc3d2234: mov    0x40(%rsp),%r11
  0.57%    0.57%        ││     0x00007fe7cc3d2239: mov    0x18(%r11),%r9d    ;*getfield prog
                        ││                                                   ; - com.google.re2j.Machine::match@297 (line 243)
  0.08%    0.12%        ││     0x00007fe7cc3d223d: mov    0x1c(%r12,%r9,8),%ebp  ;*getfield startInst
                        ││                                                   ; - com.google.re2j.Machine::match@300 (line 243)
                        ││                                                   ; implicit exception: dispatches to 0x00007fe7cc3d3d09
  0.01%                 ││     0x00007fe7cc3d2242: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007fe7cc3d3d19
  0.98%    1.34%        ││     0x00007fe7cc3d2247: cmp    $0xf8019909,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                        ││     0x00007fe7cc3d224e: jne    0x00007fe7cc3d2a25
  0.70%    0.78%        ││     0x00007fe7cc3d2254: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                        ││                                                   ; - com.google.re2j.Machine::match@314 (line 243)
  0.01%    0.02%        ││     0x00007fe7cc3d2258: mov    0x18(%r11),%r10d   ;*getfield pc
                        ││                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                        ││                                                   ; - com.google.re2j.Machine::match@314 (line 243)
  0.01%                 ││     0x00007fe7cc3d225c: cmp    $0x40,%r10d
                        ││     0x00007fe7cc3d2260: jg     0x00007fe7cc3d2d39  ;*if_icmpgt
                        ││                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                        ││                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                        ││                                                   ; - com.google.re2j.Machine::match@314 (line 243)
  0.45%    0.54%        ││     0x00007fe7cc3d2266: mov    %r11,%rbx
  0.15%    0.19%        ││     0x00007fe7cc3d2269: mov    $0x1,%r9d
  0.01%    0.03%        ││     0x00007fe7cc3d226f: mov    %r10d,%ecx
                        ││     0x00007fe7cc3d2272: shl    %cl,%r9            ;*lshl
                        ││                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                        ││                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                        ││                                                   ; - com.google.re2j.Machine::match@314 (line 243)
  1.40%    1.04%        ││     0x00007fe7cc3d2275: mov    0x34(%rsp),%r11d
                        ││     0x00007fe7cc3d227a: mov    0x10(%r12,%r11,8),%rcx  ;*getfield pcsl
                        ││                                                   ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                        ││                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                        ││                                                   ; - com.google.re2j.Machine::match@314 (line 243)
  0.00%                 ││     0x00007fe7cc3d227f: mov    %rcx,%r11
  0.13%    0.07%        ││     0x00007fe7cc3d2282: and    %r9,%r11           ;*land
                        ││                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                        ││                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                        ││                                                   ; - com.google.re2j.Machine::match@314 (line 243)
  0.51%    0.33%        ││     0x00007fe7cc3d2285: test   %r11,%r11
                        ││     0x00007fe7cc3d2288: jne    0x00007fe7cc3d2d85  ;*ifeq
                        ││                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                        ││                                                   ; - com.google.re2j.Machine::match@314 (line 243)
           0.01%        ││     0x00007fe7cc3d228e: cmp    $0x40,%r10d
                        ││     0x00007fe7cc3d2292: jge    0x00007fe7cc3d2dfd  ;*if_icmpge
                        ││                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                        ││                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                        ││                                                   ; - com.google.re2j.Machine::match@314 (line 243)
  0.00%                 ││     0x00007fe7cc3d2298: mov    0x34(%rsp),%r11d
  0.17%    0.08%        ││     0x00007fe7cc3d229d: mov    %r12b,0x18(%r12,%r11,8)  ;*putfield empty
                        ││                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                        ││                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                        ││                                                   ; - com.google.re2j.Machine::match@314 (line 243)
  0.60%    0.50%        ││     0x00007fe7cc3d22a2: mov    0xc(%r12,%r11,8),%r10d  ;*getfield size
                        ││                                                   ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                        ││                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                        ││                                                   ; - com.google.re2j.Machine::match@314 (line 243)
  0.01%                 ││     0x00007fe7cc3d22a7: mov    0x20(%r12,%r11,8),%r11d  ;*getfield denseThreadsInstructions
                        ││                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                        ││                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                        ││                                                   ; - com.google.re2j.Machine::match@314 (line 243)
  0.00%                 ││     0x00007fe7cc3d22ac: or     %rcx,%r9
  0.17%    0.12%        ││     0x00007fe7cc3d22af: mov    0x34(%rsp),%r8d
  0.56%    0.56%        ││     0x00007fe7cc3d22b4: mov    %r9,0x10(%r12,%r8,8)  ;*putfield pcsl
                        ││                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                        ││                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                        ││                                                   ; - com.google.re2j.Machine::match@314 (line 243)
                        ││     0x00007fe7cc3d22b9: mov    %r10d,%r9d
  0.01%    0.00%        ││     0x00007fe7cc3d22bc: inc    %r9d
  0.15%    0.13%        ││     0x00007fe7cc3d22bf: mov    %r9d,0xc(%r12,%r8,8)  ;*putfield size
                        ││                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                        ││                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                        ││                                                   ; - com.google.re2j.Machine::match@314 (line 243)
  0.53%    0.55%        ││     0x00007fe7cc3d22c4: mov    0xc(%r12,%r11,8),%r9d  ; implicit exception: dispatches to 0x00007fe7cc3d3d39
  0.09%    0.10%        ││     0x00007fe7cc3d22c9: cmp    %r9d,%r10d
                        ││     0x00007fe7cc3d22cc: jae    0x00007fe7cc3d2928
  0.13%    0.16%        ││     0x00007fe7cc3d22d2: mov    0x8(%r12,%r11,8),%r9d
  0.13%    0.15%        ││     0x00007fe7cc3d22d7: cmp    $0xf8019807,%r9d   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                        ││     0x00007fe7cc3d22de: jne    0x00007fe7cc3d2a79  ;*aastore
                        ││                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                        ││                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                        ││                                                   ; - com.google.re2j.Machine::match@314 (line 243)
  0.48%    0.55%        ││     0x00007fe7cc3d22e4: test   %edi,%edi
                     ╭  ││     0x00007fe7cc3d22e6: jl     0x00007fe7cc3d23a1  ;*ifge
                     │  ││                                                   ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                     │  ││                                                   ; - com.google.re2j.Machine::match@322 (line 245)
  0.00%              │  ││     0x00007fe7cc3d22ec: xor    %r8d,%r8d          ;*iload_0
                     │  ││                                                   ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                     │  ││                                                   ; - com.google.re2j.Machine::match@322 (line 245)
  0.07%    0.04%     │  ││↗    0x00007fe7cc3d22ef: cmp    $0xa,%edi
                     │  │││    0x00007fe7cc3d22f2: je     0x00007fe7cc3d26a9  ;*iload_1
                     │  │││                                                  ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                     │  │││                                                  ; - com.google.re2j.Machine::match@322 (line 245)
  0.12%    0.11%     │  │││    0x00007fe7cc3d22f8: mov    0x38(%rsp),%r9d
  0.51%    0.56%     │  │││    0x00007fe7cc3d22fd: test   %r9d,%r9d
  0.01%    0.01%     │  │││    0x00007fe7cc3d2300: jl     0x00007fe7cc3d2693  ;*iload_1
                     │  │││                                                  ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                     │  │││                                                  ; - com.google.re2j.Machine::match@322 (line 245)
  0.06%    0.04%     │  │││    0x00007fe7cc3d2306: cmp    $0xa,%r9d
                     │  │││    0x00007fe7cc3d230a: je     0x00007fe7cc3d26b2  ;*iload_0
                     │  │││                                                  ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                     │  │││                                                  ; - com.google.re2j.Machine::match@322 (line 245)
  0.09%    0.09%     │  │││    0x00007fe7cc3d2310: mov    %edx,%r9d
  0.55%    0.53%     │  │││    0x00007fe7cc3d2313: add    0x28(%rsp),%r9d    ;*iadd
                     │  │││                                                  ; - com.google.re2j.Machine::match@336 (line 246)
  0.03%    0.00%     │  │││    0x00007fe7cc3d2318: mov    %r9d,0x14(%rsp)
  0.07%    0.04%     │  │││    0x00007fe7cc3d231d: mov    %rbx,%r9
  0.15%    0.11%     │  │││    0x00007fe7cc3d2320: shr    $0x3,%r9           ;*aastore
                     │  │││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                     │  │││                                                  ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                     │  │││                                                  ; - com.google.re2j.Machine::match@314 (line 243)
  0.51%    0.49%     │  │││    0x00007fe7cc3d2324: mov    %edi,%ebx
  0.02%    0.01%     │  │││    0x00007fe7cc3d2326: add    $0xffffffbf,%ebx
  0.04%    0.05%     │  │││    0x00007fe7cc3d2329: shl    $0x3,%r11          ;*getfield denseThreadsInstructions
                     │  │││                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                     │  │││                                                  ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                     │  │││                                                  ; - com.google.re2j.Machine::match@314 (line 243)
  0.12%    0.13%     │  │││    0x00007fe7cc3d232d: lea    0x10(%r11,%r10,4),%r10
  0.45%    0.53%     │  │││    0x00007fe7cc3d2332: mov    %r9d,(%r10)
  0.12%    0.15%     │  │││    0x00007fe7cc3d2335: mov    0x38(%rsp),%r9d
  0.04%    0.01%     │  │││    0x00007fe7cc3d233a: add    $0xffffffbf,%r9d
  0.11%    0.14%     │  │││    0x00007fe7cc3d233e: shr    $0x9,%r10
  0.57%    0.58%     │  │││    0x00007fe7cc3d2342: movabs $0x7fe7c7b98000,%r11
  0.05%    0.08%     │  │││    0x00007fe7cc3d234c: mov    %r12b,(%r11,%r10,1)  ;*invokevirtual endPos
                     │  │││                                                  ; - com.google.re2j.Machine::match@344 (line 246)
  0.58%    0.63%     │  │││    0x00007fe7cc3d2350: cmp    $0x1a,%ebx
                     │╭ │││    0x00007fe7cc3d2353: jb     0x00007fe7cc3d2366  ;*if_icmple
                     ││ │││                                                  ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                     ││ │││                                                  ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     ││ │││                                                  ; - com.google.re2j.Machine::match@322 (line 245)
  0.07%    0.08%     ││ │││    0x00007fe7cc3d2355: mov    %edi,%r10d
  0.39%    0.45%     ││ │││    0x00007fe7cc3d2358: add    $0xffffff9f,%r10d
  0.02%    0.02%     ││ │││    0x00007fe7cc3d235c: cmp    $0x1a,%r10d
                     ││ │││    0x00007fe7cc3d2360: jae    0x00007fe7cc3d2885  ;*iconst_1
                     ││ │││                                                  ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                     ││ │││                                                  ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     ││ │││                                                  ; - com.google.re2j.Machine::match@322 (line 245)
  0.13%    0.12%     │↘ │││    0x00007fe7cc3d2366: mov    $0x1,%ebp          ;*ireturn
                     │  │││                                                  ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                     │  │││                                                  ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     │  │││                                                  ; - com.google.re2j.Machine::match@322 (line 245)
  0.10%    0.16%     │  │││    0x00007fe7cc3d236b: cmp    $0x1a,%r9d
                     │ ╭│││    0x00007fe7cc3d236f: jb     0x00007fe7cc3d2384  ;*if_icmple
                     │ ││││                                                  ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                     │ ││││                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     │ ││││                                                  ; - com.google.re2j.Machine::match@322 (line 245)
  0.27%    0.35%     │ ││││    0x00007fe7cc3d2371: mov    0x38(%rsp),%r10d
  0.12%    0.09%     │ ││││    0x00007fe7cc3d2376: add    $0xffffff9f,%r10d
  0.13%    0.14%     │ ││││    0x00007fe7cc3d237a: cmp    $0x1a,%r10d
                     │ ││││    0x00007fe7cc3d237e: jae    0x00007fe7cc3d285b  ;*iconst_1
                     │ ││││                                                  ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                     │ ││││                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     │ ││││                                                  ; - com.google.re2j.Machine::match@322 (line 245)
  0.18%    0.12%     │ ↘│││    0x00007fe7cc3d2384: mov    $0x1,%r11d         ;*ireturn
                     │  │││                                                  ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                     │  │││                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     │  │││                                                  ; - com.google.re2j.Machine::match@322 (line 245)
  0.29%    0.30%     │  │││    0x00007fe7cc3d238a: cmp    %r11d,%ebp
                     │  ╰││    0x00007fe7cc3d238d: je     0x00007fe7cc3d2092  ;*if_icmpeq
                     │   ││                                                  ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                     │   ││                                                  ; - com.google.re2j.Machine::match@322 (line 245)
  0.03%    0.06%     │   ││    0x00007fe7cc3d2393: or     $0x10,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                     │   ││                                                  ; - com.google.re2j.Machine::match@322 (line 245)
  0.07%    0.10%     │   ││    0x00007fe7cc3d2397: mov    %r8d,0x2c(%rsp)
  0.19%    0.16%     │   ╰│    0x00007fe7cc3d239c: jmpq   0x00007fe7cc3d209b
                     ↘    │    0x00007fe7cc3d23a1: mov    $0x5,%r8d
                          ╰    0x00007fe7cc3d23a7: jmpq   0x00007fe7cc3d22ef
                               0x00007fe7cc3d23ac: nopl   0x0(%rax)
           0.01%               0x00007fe7cc3d23b0: mov    %ebx,0x5c(%rsp)
  0.00%    0.02%               0x00007fe7cc3d23b4: jmpq   0x00007fe7cc3d25e6
                               0x00007fe7cc3d23b9: mov    0x5c(%rsp),%ebx
                               0x00007fe7cc3d23bd: add    $0x2,%ebx
                               0x00007fe7cc3d23c0: mov    %ebx,0x5c(%rsp)
  0.00%    0.01%               0x00007fe7cc3d23c4: mov    0x5c(%rsp),%ebx
           0.00%               0x00007fe7cc3d23c8: inc    %ebx
                               0x00007fe7cc3d23ca: mov    %ebx,0x58(%rsp)
                           ╭   0x00007fe7cc3d23ce: jmp    0x00007fe7cc3d23f2
                           │   0x00007fe7cc3d23d0: mov    0x5c(%rsp),%ebx
                           │   0x00007fe7cc3d23d4: add    $0x2,%ebx
                           │   0x00007fe7cc3d23d7: mov    %ebx,0x58(%rsp)
                           │╭  0x00007fe7cc3d23db: jmp    0x00007fe7cc3d23e8
  0.00%                    ││  0x00007fe7cc3d23dd: mov    0x5c(%rsp),%ebx
                           ││  0x00007fe7cc3d23e1: add    $0x2,%ebx
  0.00%                    ││  0x00007fe7cc3d23e4: mov    %ebx,0x5c(%rsp)
  0.00%                    │↘  0x00007fe7cc3d23e8: mov    0x5c(%rsp),%ebx
                           │   0x00007fe7cc3d23ec: inc    %ebx               ;*iinc
                           │                                                 ; - java.lang.String::indexOf@69 (line 1772)
                           │                                                 ; - java.lang.String::indexOf@21 (line 1718)
                           │                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                           │                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                           │                                                 ; - com.google.re2j.Machine::match@206 (line 224)
                           │   0x00007fe7cc3d23ee: mov    %ebx,0x5c(%rsp)
  0.00%                    ↘   0x00007fe7cc3d23f2: mov    0x5c(%rsp),%ebx
                               0x00007fe7cc3d23f6: cmp    0x28(%rsp),%ebx
                               0x00007fe7cc3d23fa: jg     0x00007fe7cc3d2450
                               0x00007fe7cc3d23fc: mov    0x5c(%rsp),%ebx
                               0x00007fe7cc3d2400: add    0x4c(%rsp),%ebx    ;*iadd
                                                                             ; - java.lang.String::indexOf@101 (line 1777)
                                                                             ; - java.lang.String::indexOf@21 (line 1718)
                                                                             ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                                                                             ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                                                                             ; - com.google.re2j.Machine::match@206 (line 224)
  0.01%                        0x00007fe7cc3d2404: mov    %ebx,%edx
                               0x00007fe7cc3d2406: mov    0x58(%rsp),%ebx
  0.01%                        0x00007fe7cc3d240a: cmp    %edx,%ebx
                               0x00007fe7cc3d240c: jge    0x00007fe7cc3d2444  ;*if_icmpge
                                                                             ; - java.lang.String::indexOf@123 (line 1779)
                                                                             ; - java.lang.String::indexOf@21 (line 1718)
                                                                             ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                                                                             ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                                                                             ; - com.google.re2j.Machine::match@206 (line 224)
                               0x00007fe7cc3d240e: cmp    0x30(%rsp),%ebx
                               0x00007fe7cc3d2412: jae    0x00007fe7cc3d30ae
                               0x00007fe7cc3d2418: movzwl 0x10(%rsi,%rbx,2),%ebx  ;*caload
                                                                             ; - java.lang.String::indexOf@129 (line 1779)
....................................................................................................
 31.96%   32.04%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 534 (454 bytes) 

                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                      ; - com.google.re2j.Machine::step@202 (line 313)
                                                                      ;   {optimized virtual_call}
                        0x00007fe7cc3b198c: test   %rax,%rax
                        0x00007fe7cc3b198f: jne    0x00007fe7cc3b25ed  ;*ifnull
                                                                      ; - com.google.re2j.Machine::step@209 (line 315)
                        0x00007fe7cc3b1995: mov    0x18(%rsp),%r11
                        0x00007fe7cc3b199a: jmpq   0x00007fe7cc3b15ff
  0.05%    0.05%        0x00007fe7cc3b199f: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                        0x00007fe7cc3b19a5: jne    0x00007fe7cc3b2139  ;*invokevirtual add
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.07%    0.07%        0x00007fe7cc3b19ab: mov    0x18(%r10),%ecx    ;*getfield pc
                                                                      ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.71%    0.71%        0x00007fe7cc3b19af: cmp    $0x40,%ecx
                        0x00007fe7cc3b19b2: jg     0x00007fe7cc3b252d  ;*if_icmpgt
                                                                      ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%    0.00%        0x00007fe7cc3b19b8: mov    $0x1,%r11d
  0.05%    0.05%        0x00007fe7cc3b19be: shl    %cl,%r11           ;*lshl
                                                                      ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.63%    0.65%        0x00007fe7cc3b19c1: mov    %rax,%rbx
  0.04%    0.02%        0x00007fe7cc3b19c4: and    %r11,%rbx          ;*land
                                                                      ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.07%    0.01%        0x00007fe7cc3b19c7: test   %rbx,%rbx
                        0x00007fe7cc3b19ca: jne    0x00007fe7cc3b2569  ;*ifeq
                                                                      ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.66%    0.45%        0x00007fe7cc3b19d0: cmp    $0x40,%ecx
                        0x00007fe7cc3b19d3: jge    0x00007fe7cc3b25b1  ;*if_icmpge
                                                                      ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.01%        0x00007fe7cc3b19d9: or     %r11,%rax
  0.03%    0.05%        0x00007fe7cc3b19dc: mov    %rdx,%r11
  0.05%    0.02%        0x00007fe7cc3b19df: mov    %rax,0x10(%r11)    ;*putfield pcsl
                                                                      ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.55%    0.94%        0x00007fe7cc3b19e3: add    $0x18,%r9
                        0x00007fe7cc3b19e7: mov    %r10,%r8
  0.06%    0.03%        0x00007fe7cc3b19ea: shr    $0x3,%r8
  0.06%    0.01%        0x00007fe7cc3b19ee: mov    %r8d,(%r9)         ;*aastore
                                                                      ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.55%    0.84%        0x00007fe7cc3b19f1: mov    %r9,%r10
                        0x00007fe7cc3b19f4: mov    0x14(%rsp),%r8d
  0.01%    0.05%        0x00007fe7cc3b19f9: add    $0x3,%r8d
  0.06%    0.07%        0x00007fe7cc3b19fd: mov    %r8d,0xc(%r11)     ;*putfield size
                                                                      ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.60%    0.66%        0x00007fe7cc3b1a01: shr    $0x9,%r10
  0.00%                 0x00007fe7cc3b1a05: movabs $0x7fe7c7b98000,%r8
  0.03%    0.03%        0x00007fe7cc3b1a0f: mov    %r12b,(%r8,%r10,1)  ;*aastore
                                                                      ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.04%        0x00007fe7cc3b1a13: jmpq   0x00007fe7cc3b15ff
  0.75%    0.75%        0x00007fe7cc3b1a18: cmp    $0xb,%ebp
                        0x00007fe7cc3b1a1b: je     0x00007fe7cc3b1d3d  ;*if_icmpne
                                                                      ; - com.google.re2j.Inst::matchRune@17 (line 94)
                                                                      ; - com.google.re2j.Machine::step@181 (line 312)
  0.99%    1.10%        0x00007fe7cc3b1a21: mov    0x1c(%r12,%r11,8),%r8d  ;*getfield f0
                                                                      ; - com.google.re2j.Inst::matchRune@42 (line 99)
                                                                      ; - com.google.re2j.Machine::step@181 (line 312)
  0.56%    0.46%        0x00007fe7cc3b1a26: cmp    $0x9,%ebp
                  ╭     0x00007fe7cc3b1a29: je     0x00007fe7cc3b1a74  ;*if_icmpne
                  │                                                   ; - com.google.re2j.Inst::matchRune@38 (line 98)
                  │                                                   ; - com.google.re2j.Machine::step@181 (line 312)
  0.16%    0.22%  │     0x00007fe7cc3b1a2b: cmp    $0xc,%ebp
                  │     0x00007fe7cc3b1a2e: jne    0x00007fe7cc3b2079  ;*if_icmpne
                  │                                                   ; - com.google.re2j.Inst::matchRune@61 (line 102)
                  │                                                   ; - com.google.re2j.Machine::step@181 (line 312)
  0.16%    0.24%  │     0x00007fe7cc3b1a34: cmp    0x28(%rsp),%r8d
                  │╭    0x00007fe7cc3b1a39: je     0x00007fe7cc3b1b60  ;*if_icmpeq
                  ││                                                  ; - com.google.re2j.Inst::matchRune@69 (line 103)
                  ││                                                  ; - com.google.re2j.Machine::step@181 (line 312)
  0.37%    0.35%  ││    0x00007fe7cc3b1a3f: mov    0x20(%r12,%r11,8),%r8d  ;*getfield f1
                  ││                                                  ; - com.google.re2j.Inst::matchRune@73 (line 103)
                  ││                                                  ; - com.google.re2j.Machine::step@181 (line 312)
  0.21%    0.33%  ││    0x00007fe7cc3b1a44: cmp    0x28(%rsp),%r8d
                  ││╭   0x00007fe7cc3b1a49: je     0x00007fe7cc3b1b60  ;*if_icmpeq
                  │││                                                 ; - com.google.re2j.Inst::matchRune@77 (line 103)
                  │││                                                 ; - com.google.re2j.Machine::step@181 (line 312)
  0.18%    0.27%  │││   0x00007fe7cc3b1a4f: mov    0x24(%r12,%r11,8),%ebp  ;*getfield f2
                  │││                                                 ; - com.google.re2j.Inst::matchRune@81 (line 103)
                  │││                                                 ; - com.google.re2j.Machine::step@181 (line 312)
  0.07%    0.09%  │││   0x00007fe7cc3b1a54: cmp    0x28(%rsp),%ebp
                  │││   0x00007fe7cc3b1a58: je     0x00007fe7cc3b20b1  ;*if_icmpeq
                  │││                                                 ; - com.google.re2j.Inst::matchRune@85 (line 103)
                  │││                                                 ; - com.google.re2j.Machine::step@181 (line 312)
  0.52%    0.60%  │││   0x00007fe7cc3b1a5e: mov    0x28(%r12,%r11,8),%ebp  ;*getfield f3
                  │││                                                 ; - com.google.re2j.Inst::matchRune@89 (line 103)
                  │││                                                 ; - com.google.re2j.Machine::step@181 (line 312)
  0.18%    0.24%  │││   0x00007fe7cc3b1a63: cmp    0x28(%rsp),%ebp
                  │││   0x00007fe7cc3b1a67: je     0x00007fe7cc3b20e9  ;*if_icmpne
                  │││                                                 ; - com.google.re2j.Inst::matchRune@93 (line 103)
                  │││                                                 ; - com.google.re2j.Machine::step@181 (line 312)
  0.05%    0.02%  │││   0x00007fe7cc3b1a6d: xor    %ecx,%ecx
  0.00%    0.04%  │││   0x00007fe7cc3b1a6f: jmpq   0x00007fe7cc3b1574
  0.61%    0.75%  ↘││   0x00007fe7cc3b1a74: cmp    0x28(%rsp),%r8d
                   ││   0x00007fe7cc3b1a79: jne    0x00007fe7cc3b1572  ;*if_icmpne
                   ││                                                 ; - com.google.re2j.Inst::matchRune@46 (line 99)
                   ││                                                 ; - com.google.re2j.Machine::step@181 (line 312)
  0.00%    0.01%   ││   0x00007fe7cc3b1a7f: mov    $0x1,%ecx
  0.01%            ││   0x00007fe7cc3b1a84: jmpq   0x00007fe7cc3b1574  ;*if_icmpge
                   ││                                                 ; - com.google.re2j.Machine::step@22 (line 282)
  0.61%    1.00%   ││   0x00007fe7cc3b1a89: movzbl 0x18(%r13),%r11d
                   ││   0x00007fe7cc3b1a8e: test   %r11d,%r11d
                   ││╭  0x00007fe7cc3b1a91: jne    0x00007fe7cc3b1aac  ;*ifeq
                   │││                                                ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                   │││                                                ; - com.google.re2j.Machine::step@225 (line 319)
  0.00%            │││  0x00007fe7cc3b1a93: movb   $0x1,0x18(%r13)    ;*putfield empty
                   │││                                                ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                   │││                                                ; - com.google.re2j.Machine::step@225 (line 319)
  0.01%    0.00%   │││  0x00007fe7cc3b1a98: mov    0x1c(%r13),%ebp    ;*getfield pcs
                   │││                                                ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                   │││                                                ; - com.google.re2j.Machine::step@225 (line 319)
  0.75%    0.96%   │││  0x00007fe7cc3b1a9c: mov    %r12d,0xc(%r13)    ;*putfield size
                   │││                                                ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                   │││                                                ; - com.google.re2j.Machine::step@225 (line 319)
           0.00%   │││  0x00007fe7cc3b1aa0: mov    %r12,0x10(%r13)    ;*putfield pcsl
                   │││                                                ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                   │││                                                ; - com.google.re2j.Machine::step@225 (line 319)
                   │││  0x00007fe7cc3b1aa4: test   %ebp,%ebp
                   │││  0x00007fe7cc3b1aa6: jne    0x00007fe7cc3b2121  ;*getfield size
                   │││                                                ; - com.google.re2j.Machine::step@10 (line 281)
                   ││↘  0x00007fe7cc3b1aac: add    $0x80,%rsp
  0.69%    0.93%   ││   0x00007fe7cc3b1ab3: pop    %rbp
                   ││   0x00007fe7cc3b1ab4: test   %eax,0x15e37546(%rip)        # 0x00007fe7e21e9000
                   ││                                                 ;   {poll_return}
                   ││   0x00007fe7cc3b1aba: retq   
  0.04%    0.02%   ││   0x00007fe7cc3b1abb: cmp    $0xf8019909,%edi   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                   ││   0x00007fe7cc3b1ac1: jne    0x00007fe7cc3b26a1  ;*invokevirtual add
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
  0.01%            ││   0x00007fe7cc3b1ac7: mov    0x18(%r8),%ecx     ;*getfield pc
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
  0.00%            ││   0x00007fe7cc3b1acb: mov    %rbx,%r11
                   ││   0x00007fe7cc3b1ace: mov    0x10(%rbx),%rdi    ;*getfield pcsl
                   ││                                                 ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
                   ││                                                 ; implicit exception: dispatches to 0x00007fe7cc3b2971
  0.04%    0.01%   ││   0x00007fe7cc3b1ad2: cmp    $0x40,%ecx
                   ││   0x00007fe7cc3b1ad5: jg     0x00007fe7cc3b273d  ;*if_icmpgt
                   ││                                                 ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
  0.00%            ││   0x00007fe7cc3b1adb: mov    $0x1,%edx
                   ││   0x00007fe7cc3b1ae0: shl    %cl,%rdx           ;*lshl
                   ││                                                 ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
  0.05%    0.03%   ││   0x00007fe7cc3b1ae3: mov    %rdi,%rbx
                   ││   0x00007fe7cc3b1ae6: and    %rdx,%rbx          ;*land
                   ││                                                 ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
                   ││   0x00007fe7cc3b1ae9: test   %rbx,%rbx
                   ││   0x00007fe7cc3b1aec: jne    0x00007fe7cc3b2795  ;*ifeq
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
           0.00%   ││   0x00007fe7cc3b1af2: cmp    $0x40,%ecx
                   ││   0x00007fe7cc3b1af5: jge    0x00007fe7cc3b27ed  ;*if_icmpge
                   ││                                                 ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
  0.01%            ││   0x00007fe7cc3b1afb: mov    %r12b,0x18(%r11)   ;*putfield empty
                   ││                                                 ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
  0.00%            ││   0x00007fe7cc3b1aff: mov    0x20(%r11),%ebx    ;*getfield denseThreadsInstructions
                   ││                                                 ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
                   ││   0x00007fe7cc3b1b03: or     %rdi,%rdx
  0.01%    0.01%   ││   0x00007fe7cc3b1b06: mov    %rdx,0x10(%r11)    ;*putfield pcsl
                   ││                                                 ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
  0.01%    0.00%   ││   0x00007fe7cc3b1b0a: mov    0xc(%r11),%ebp     ;*getfield size
                   ││                                                 ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
                   ││   0x00007fe7cc3b1b0e: mov    %ebp,%ecx
                   ││   0x00007fe7cc3b1b10: inc    %ecx
  0.01%    0.01%   ││   0x00007fe7cc3b1b12: mov    %ecx,0xc(%r11)     ;*putfield size
                   ││                                                 ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
  0.01%    0.00%   ││   0x00007fe7cc3b1b16: mov    0xc(%r12,%rbx,8),%ecx  ; implicit exception: dispatches to 0x00007fe7cc3b2985
                   ││   0x00007fe7cc3b1b1b: cmp    %ecx,%ebp
                   ││   0x00007fe7cc3b1b1d: jae    0x00007fe7cc3b2651
                   ││   0x00007fe7cc3b1b23: mov    0x8(%r12,%rbx,8),%ecx
  0.01%    0.00%   ││   0x00007fe7cc3b1b28: cmp    $0xf8019807,%ecx   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                   ││   0x00007fe7cc3b1b2e: jne    0x00007fe7cc3b26ed  ;*aastore
                   ││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
  0.03%    0.00%   ││   0x00007fe7cc3b1b34: lea    (%r12,%rbx,8),%rcx  ;*getfield denseThreadsInstructions
                   ││                                                 ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
                   ││   0x00007fe7cc3b1b38: lea    0x10(%rcx,%rbp,4),%rcx
  0.02%            ││   0x00007fe7cc3b1b3d: mov    %r8,%rbx
           0.00%   ││   0x00007fe7cc3b1b40: shr    $0x3,%rbx
                   ││   0x00007fe7cc3b1b44: mov    %ebx,(%rcx)
  0.07%            ││   0x00007fe7cc3b1b46: mov    %rcx,%r8
                   ││   0x00007fe7cc3b1b49: shr    $0x9,%r8
  0.00%    0.00%   ││   0x00007fe7cc3b1b4d: movabs $0x7fe7c7b98000,%rcx
  0.00%            ││   0x00007fe7cc3b1b57: mov    %r12b,(%rcx,%r8,1)  ;*aastore
                   ││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
  0.01%            ││   0x00007fe7cc3b1b5b: jmpq   0x00007fe7cc3b1619  ;*iconst_1
                   ││                                                 ; - com.google.re2j.Inst::matchRune@96 (line 103)
                   ││                                                 ; - com.google.re2j.Machine::step@181 (line 312)
  0.13%    0.14%   ↘↘   0x00007fe7cc3b1b60: mov    $0x1,%ecx
  0.08%    0.06%        0x00007fe7cc3b1b65: jmpq   0x00007fe7cc3b1574
                        0x00007fe7cc3b1b6a: mov    %rdx,%r11
                        0x00007fe7cc3b1b6d: jmpq   0x00007fe7cc3b15ff
                        0x00007fe7cc3b1b72: mov    $0xffffffe4,%esi
                        0x00007fe7cc3b1b77: mov    %r10d,0x9c(%rsp)
                        0x00007fe7cc3b1b7f: mov    %r13,0x10(%rsp)
                        0x00007fe7cc3b1b84: mov    %rbx,0x18(%rsp)
                        0x00007fe7cc3b1b89: mov    %r14d,0x30(%rsp)
                        0x00007fe7cc3b1b8e: nop
                        0x00007fe7cc3b1b8f: callq  0x00007fe7cc16f1a0  ; OopMap{rbp=NarrowOop [8]=Oop [16]=Oop [24]=Oop off=1684}
                                                                      ;*aaload
....................................................................................................
 11.85%   13.47%  <total for region 3>

....[Hottest Regions]...............................................................................
 44.16%   43.15%         C2, level 4  com.google.re2j.Machine::step, version 534 (779 bytes) 
 31.96%   32.04%         C2, level 4  com.google.re2j.Machine::match, version 571 (1253 bytes) 
 11.85%   13.47%         C2, level 4  com.google.re2j.Machine::step, version 534 (454 bytes) 
  6.04%    6.75%         C2, level 4  com.google.re2j.Machine::step, version 534 (95 bytes) 
  1.57%    1.66%         C2, level 4  com.google.re2j.Machine::match, version 571 (128 bytes) 
  0.57%    0.56%   [kernel.kallsyms]  [unknown] (6 bytes) 
  0.38%    0.05%         C2, level 4  com.google.re2j.RE2::match, version 585 (110 bytes) 
  0.21%    0.07%         C2, level 4  com.google.re2j.RE2::match, version 585 (13 bytes) 
  0.19%    0.10%         C2, level 4  com.google.re2j.Machine::match, version 571 (314 bytes) 
  0.18%    0.10%         C2, level 4  com.google.re2j.RE2::match, version 585 (33 bytes) 
  0.17%    0.11%         C2, level 4  com.google.re2j.Machine::match, version 571 (119 bytes) 
  0.13%    0.05%         C2, level 4  com.google.re2j.RE2::match, version 585 (9 bytes) 
  0.10%            [kernel.kallsyms]  [unknown] (39 bytes) 
  0.10%    0.06%         C2, level 4  com.google.re2j.RE2::match, version 585 (8 bytes) 
  0.10%                  C2, level 4  com.google.re2j.RE2::match, version 585 (173 bytes) 
  0.09%    0.02%   [kernel.kallsyms]  [unknown] (26 bytes) 
  0.08%    0.06%         C2, level 4  java.util.Collections::shuffle, version 595 (53 bytes) 
  0.07%    0.02%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 628 (104 bytes) 
  0.07%    0.02%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.07%    0.06%         C2, level 4  com.google.re2j.Machine::match, version 571 (192 bytes) 
  1.91%    1.63%  <...other 333 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 62.06%   63.38%         C2, level 4  com.google.re2j.Machine::step, version 534 
 34.10%   34.10%         C2, level 4  com.google.re2j.Machine::match, version 571 
  1.47%    1.23%   [kernel.kallsyms]  [unknown] 
  1.27%    0.36%         C2, level 4  com.google.re2j.RE2::match, version 585 
  0.23%    0.12%         C2, level 4  java.util.Collections::shuffle, version 595 
  0.13%    0.07%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 628 
  0.06%    0.03%      hsdis-amd64.so  [unknown] 
  0.05%                       [vdso]  __vdso_clock_gettime 
  0.05%    0.01%              [vdso]  [unknown] 
  0.04%    0.09%        libc-2.26.so  vfprintf 
  0.03%                  C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 594 
  0.02%                 libc-2.26.so  __clock_gettime 
  0.02%    0.06%        libc-2.26.so  _IO_fwrite 
  0.02%    0.02%        libc-2.26.so  _IO_fflush 
  0.02%           libpthread-2.26.so  __libc_write 
  0.01%    0.01%        libc-2.26.so  __strlen_avx2 
  0.01%    0.02%  libpthread-2.26.so  __pthread_enable_asynccancel 
  0.01%    0.00%  libpthread-2.26.so  __pthread_getspecific 
  0.01%                  interpreter  invokespecial  183 invokespecial  
  0.01%    0.02%           libjvm.so  fileStream::write 
  0.34%    0.26%  <...other 56 warm methods...>
....................................................................................................
100.00%   99.79%  <totals>

....[Distribution by Source]........................................................................
 97.83%   98.02%         C2, level 4
  1.47%    1.23%   [kernel.kallsyms]
  0.24%    0.37%           libjvm.so
  0.17%    0.27%        libc-2.26.so
  0.11%    0.01%              [vdso]
  0.07%    0.04%  libpthread-2.26.so
  0.06%    0.03%      hsdis-amd64.so
  0.05%    0.01%         interpreter
  0.01%                 runtime stub
  0.00%    0.00%         C1, level 3
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:44

Benchmark                     Mode  Cnt      Score     Error  Units
Re2jFindRegex.testExp1       thrpt   20  27650.032 ± 127.267  ops/s
Re2jFindRegex.testExp1:·asm  thrpt             NaN              ---
