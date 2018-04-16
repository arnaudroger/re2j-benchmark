# JMH version: 1.19
# VM version: JDK 1.8.0_131, VM 25.131-b11
# VM invoker: /usr/lib/jvm/java-8-oracle/jre/bin/java
# VM options: <none>
# Warmup: 20 iterations, 1 s each
# Measurement: 20 iterations, 1 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Throughput, ops/time
# Benchmark: com.github.arnaudroger.re2j.Re2jRegex.testExp1

# Run progress: 0.00% complete, ETA 00:00:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 12029.971 ops/s
# Warmup Iteration   2: 27697.279 ops/s
# Warmup Iteration   3: 27854.913 ops/s
# Warmup Iteration   4: 27757.850 ops/s
# Warmup Iteration   5: 27874.242 ops/s
# Warmup Iteration   6: 27916.984 ops/s
# Warmup Iteration   7: 28830.162 ops/s
# Warmup Iteration   8: 28650.730 ops/s
# Warmup Iteration   9: 28703.645 ops/s
# Warmup Iteration  10: 28675.546 ops/s
# Warmup Iteration  11: 28511.624 ops/s
# Warmup Iteration  12: 28529.223 ops/s
# Warmup Iteration  13: 28146.007 ops/s
# Warmup Iteration  14: 28537.602 ops/s
# Warmup Iteration  15: 28735.185 ops/s
# Warmup Iteration  16: 28529.935 ops/s
# Warmup Iteration  17: 28561.879 ops/s
# Warmup Iteration  18: 28644.707 ops/s
# Warmup Iteration  19: 28873.613 ops/s
# Warmup Iteration  20: 28922.575 ops/s
Iteration   1: 28932.079 ops/s
Iteration   2: 28730.746 ops/s
Iteration   3: 28487.142 ops/s
Iteration   4: 28108.403 ops/s
Iteration   5: 28431.123 ops/s
Iteration   6: 28666.236 ops/s
Iteration   7: 28082.976 ops/s
Iteration   8: 28123.778 ops/s
Iteration   9: 28499.893 ops/s
Iteration  10: 28579.162 ops/s
Iteration  11: 28926.331 ops/s
Iteration  12: 28791.982 ops/s
Iteration  13: 28611.403 ops/s
Iteration  14: 28899.599 ops/s
Iteration  15: 28831.911 ops/s
Iteration  16: 28703.982 ops/s
Iteration  17: 28814.448 ops/s
Iteration  18: 28697.065 ops/s
Iteration  19: 28921.590 ops/s
Iteration  20: 28893.316 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jRegex.testExp1":
  28636.658 ±(99.9%) 238.647 ops/s [Average]
  (min, avg, max) = (28082.976, 28636.658, 28932.079), stdev = 274.826
  CI (99.9%): [28398.011, 28875.305] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jRegex.testExp1:·asm":
PrintAssembly processed: 208562 total address lines.
Perf output processed (skipped 23.703 seconds):
 Column 1: cycles (20363 events)
 Column 2: instructions (20347 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 542 (866 bytes) 

                     0x00007f557ce12926: jae    0x00007f557ce130ad
                     0x00007f557ce1292c: mov    %r8,%r10
                     0x00007f557ce1292f: mov    %rax,%rcx
                     0x00007f557ce12932: shr    $0x3,%rcx
                     0x00007f557ce12936: mov    %ecx,(%r8)
                     0x00007f557ce12939: shr    $0x9,%r10
                     0x00007f557ce1293d: movabs $0x7f5578601000,%r8
                     0x00007f557ce12947: mov    %r12b,(%r8,%r10,1)  ;*synchronization entry
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.52%    0.63%     0x00007f557ce1294b: mov    0x10(%rsp),%r13
  0.00%              0x00007f557ce12950: mov    0xac(%rsp),%r14d
  0.02%    0.02%     0x00007f557ce12958: mov    0xa4(%rsp),%ebx
  0.15%    0.25%     0x00007f557ce1295f: mov    0xc(%rsp),%r10d    ;*aload
                                                                   ; - com.google.re2j.Machine::step@211 (line 317)
  2.67%    2.95%  ↗  0x00007f557ce12964: inc    %r10d              ;*iinc
                  │                                                ; - com.google.re2j.Machine::step@222 (line 283)
                  │  0x00007f557ce12967: cmp    %r14d,%r10d
                  │  0x00007f557ce1296a: jge    0x00007f557ce12db6
  0.04%    0.00%  │  0x00007f557ce12970: mov    %r11,%rcx          ;*iload
                  │                                                ; - com.google.re2j.Machine::step@31 (line 286)
  0.54%    0.39%  │  0x00007f557ce12973: mov    0x20(%r13),%r8d    ;*getfield denseThreadsInstructions
                  │                                                ; - com.google.re2j.Machine::step@86 (line 296)
  1.93%    2.21%  │  0x00007f557ce12977: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x00007f557ce13f15
  0.27%    0.25%  │  0x00007f557ce1297c: cmp    %r11d,%r10d
                  │  0x00007f557ce1297f: jae    0x00007f557ce12ea8
  0.15%    0.24%  │  0x00007f557ce12985: lea    (%r12,%r8,8),%r11
  0.43%    0.58%  │  0x00007f557ce12989: mov    0x10(%r11,%r10,4),%r8d  ;*aaload
                  │                                                ; - com.google.re2j.Machine::step@91 (line 296)
  2.10%    2.33%  │  0x00007f557ce1298e: mov    0xc(%r12,%r8,8),%ebp  ;*getfield op
                  │                                                ; - com.google.re2j.Machine::step@96 (line 298)
                  │                                                ; implicit exception: dispatches to 0x00007f557ce13f29
  1.92%    1.62%  │  0x00007f557ce12993: cmp    $0x6,%ebp
                  │  0x00007f557ce12996: je     0x00007f557ce12edd  ;*if_icmpne
                  │                                                ; - com.google.re2j.Machine::step@101 (line 298)
  1.32%    1.33%  │  0x00007f557ce1299c: cmp    $0xa,%ebp
                  │  0x00007f557ce1299f: jne    0x00007f557ce12d43  ;*if_icmpne
                  │                                                ; - com.google.re2j.Inst::matchRune@6 (line 90)
                  │                                                ; - com.google.re2j.Machine::step@183 (line 313)
  0.21%    0.23%  │  0x00007f557ce129a5: mov    0x2c(%r12,%r8,8),%r11d  ;*getfield outInst
                  │                                                ; - com.google.re2j.Machine::step@191 (line 314)
  0.11%    0.14%  │  0x00007f557ce129aa: mov    0x8(%r12,%r11,8),%r9d  ; implicit exception: dispatches to 0x00007f557ce13f39
  1.83%    1.57%  │  0x00007f557ce129af: lea    (%r12,%r11,8),%rax
  0.02%    0.02%  │  0x00007f557ce129b3: cmp    $0xf8019843,%r9d   ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                  │  0x00007f557ce129ba: jne    0x00007f557ce12de8  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Machine::step@206 (line 314)
  0.63%    0.72%  │  0x00007f557ce129c0: mov    0x18(%rax),%edx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 175)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.04%  │  0x00007f557ce129c3: mov    %rcx,%r11
  0.04%    0.07%  │  0x00007f557ce129c6: mov    0x10(%rcx),%r8     ;*getfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
                  │                                                ; implicit exception: dispatches to 0x00007f557ce13f4d
  0.02%    0.04%  │  0x00007f557ce129ca: cmp    $0x40,%edx
                  │  0x00007f557ce129cd: jg     0x00007f557ce13245  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.60%    0.81%  │  0x00007f557ce129d3: mov    $0x1,%edi
  0.04%    0.04%  │  0x00007f557ce129d8: mov    %edx,%ecx
  0.06%    0.08%  │  0x00007f557ce129da: shl    %cl,%rdi           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  1.17%    1.39%  │  0x00007f557ce129dd: mov    %r8,%r9
  0.04%    0.06%  │  0x00007f557ce129e0: and    %rdi,%r9
  0.01%    0.00%  │  0x00007f557ce129e3: test   %r9,%r9
                  ╰  0x00007f557ce129e6: jne    0x00007f557ce12964  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.08%    0.04%     0x00007f557ce129ec: cmp    $0x40,%edx
                     0x00007f557ce129ef: jge    0x00007f557ce132a1  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.64%    0.62%     0x00007f557ce129f5: mov    %r12b,0x18(%r11)   ;*putfield empty
                                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.06%     0x00007f557ce129f9: mov    0x2c(%rax),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.02%     0x00007f557ce129fc: or     %r8,%rdi           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.07%     0x00007f557ce129ff: mov    %rdi,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.53%    0.65%     0x00007f557ce12a03: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007f557ce13f61
  0.89%    0.86%     0x00007f557ce12a08: cmp    $0xf8019909,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007f557ce12a0f: jne    0x00007f557ce12f9d
  0.81%    0.61%     0x00007f557ce12a15: lea    (%r12,%rbp,8),%r9  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
           0.00%     0x00007f557ce12a19: mov    0x18(%r9),%edx     ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  1.00%    1.06%     0x00007f557ce12a1d: cmp    $0x40,%edx
                     0x00007f557ce12a20: jg     0x00007f557ce132fd  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.68%    0.54%     0x00007f557ce12a26: mov    $0x1,%r8d
  0.04%    0.05%     0x00007f557ce12a2c: mov    %edx,%ecx
                     0x00007f557ce12a2e: shl    %cl,%r8            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  1.44%    1.26%     0x00007f557ce12a31: mov    %rdi,%rcx
           0.00%     0x00007f557ce12a34: and    %r8,%rcx           ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%              0x00007f557ce12a37: test   %rcx,%rcx
                     0x00007f557ce12a3a: jne    0x00007f557ce1335d  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.28%    0.21%     0x00007f557ce12a40: cmp    $0x40,%edx
                     0x00007f557ce12a43: jge    0x00007f557ce133c9  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.52%    0.52%     0x00007f557ce12a49: or     %r8,%rdi           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f557ce12a4c: mov    %rdi,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.01%     0x00007f557ce12a50: mov    0x20(%r11),%r8d    ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.22%    0.21%     0x00007f557ce12a54: mov    0xc(%r11),%ecx     ;*getfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.60%    0.50%     0x00007f557ce12a58: mov    %ecx,%edx
                     0x00007f557ce12a5a: inc    %edx               ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.02%     0x00007f557ce12a5c: mov    %edx,0xc(%r11)     ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.19%    0.22%     0x00007f557ce12a60: mov    0xc(%r12,%r8,8),%esi  ; implicit exception: dispatches to 0x00007f557ce13f75
  0.54%    0.49%     0x00007f557ce12a65: mov    %esi,0x34(%rsp)
                     0x00007f557ce12a69: cmp    %esi,%ecx
                     0x00007f557ce12a6b: jae    0x00007f557ce12f3d
  0.02%    0.02%     0x00007f557ce12a71: mov    0x8(%r12,%r8,8),%esi
  0.29%    0.17%     0x00007f557ce12a76: cmp    $0xf8019807,%esi   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                     0x00007f557ce12a7c: jne    0x00007f557ce12ff9  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.53%    0.22%     0x00007f557ce12a82: vmovd  %edx,%xmm1
                     0x00007f557ce12a86: mov    %ecx,0x30(%rsp)
  0.03%    0.01%     0x00007f557ce12a8a: mov    %r10d,0xc(%rsp)
  0.21%    0.12%     0x00007f557ce12a8f: mov    %ebx,0xa4(%rsp)
  0.43%    0.21%     0x00007f557ce12a96: mov    %r14d,0xac(%rsp)
                     0x00007f557ce12a9e: mov    %r11,%rdx
  0.01%    0.02%     0x00007f557ce12aa1: mov    %r13,0x10(%rsp)
  0.23%    0.15%     0x00007f557ce12aa6: mov    0x34(%rax),%r10d   ;*getfield inst2
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@43 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.53%    0.40%     0x00007f557ce12aaa: mov    %r10d,%ecx
  0.00%              0x00007f557ce12aad: mov    %r9,%r10
  0.01%    0.01%     0x00007f557ce12ab0: shr    $0x3,%r10          ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.15%    0.17%     0x00007f557ce12ab4: lea    (%r12,%r8,8),%r9   ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.50%    0.51%     0x00007f557ce12ab8: mov    %r8d,%r14d
           0.00%     0x00007f557ce12abb: mov    0x30(%rsp),%r11d
  0.02%    0.02%     0x00007f557ce12ac0: lea    0x10(%r9,%r11,4),%r11
  0.19%    0.21%     0x00007f557ce12ac5: mov    %r10d,(%r11)
  0.57%    0.39%     0x00007f557ce12ac8: mov    %r11,%r10
                     0x00007f557ce12acb: shr    $0x9,%r10
  0.02%    0.03%     0x00007f557ce12acf: movabs $0x7f5578601000,%r11
  0.20%    0.09%     0x00007f557ce12ad9: mov    %r12b,(%r11,%r10,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.49%    0.30%     0x00007f557ce12add: mov    %ecx,%r10d
           0.00%     0x00007f557ce12ae0: mov    0x8(%r12,%r10,8),%r11d  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                                                                   ; implicit exception: dispatches to 0x00007f557ce13f91
  0.01%    0.00%     0x00007f557ce12ae5: movslq 0x30(%rsp),%r10
  0.18%    0.18%     0x00007f557ce12aea: lea    (%r9,%r10,4),%rbx  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.52%    0.53%     0x00007f557ce12aee: mov    %rbx,%r8
                     0x00007f557ce12af1: add    $0x14,%r8          ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.04%     0x00007f557ce12af5: mov    %ecx,%r10d
  0.21%    0.19%     0x00007f557ce12af8: lea    (%r12,%r10,8),%rax
  0.62%    0.54%     0x00007f557ce12afc: mov    0x30(%rsp),%r10d
                     0x00007f557ce12b01: add    $0x2,%r10d         ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.03%     0x00007f557ce12b05: cmp    $0xf8019885,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                     0x00007f557ce12b0c: jne    0x00007f557ce128d4  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.21%    0.08%     0x00007f557ce12b12: mov    0x18(%rax),%r11d   ;*getfield pc
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@2 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.51%    0.22%     0x00007f557ce12b16: mov    %r11d,%ecx
  0.00%              0x00007f557ce12b19: cmp    $0x40,%r11d
                     0x00007f557ce12b1d: jg     0x00007f557ce135e1  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.00%     0x00007f557ce12b23: mov    $0x1,%esi
  0.25%    0.02%     0x00007f557ce12b28: shl    %cl,%rsi           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.62%    0.27%     0x00007f557ce12b2b: mov    %rdi,%r11
  0.18%    0.04%     0x00007f557ce12b2e: and    %rsi,%r11          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.54%    0.20%     0x00007f557ce12b31: test   %r11,%r11
                     0x00007f557ce12b34: jne    0x00007f557ce13625  ;*ifeq
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@8 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f557ce12b3a: mov    %ecx,%r11d
  0.01%    0.00%     0x00007f557ce12b3d: cmp    $0x40,%r11d
                     0x00007f557ce12b41: jge    0x00007f557ce1367d  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.24%    0.07%     0x00007f557ce12b47: mov    0x2c(%rax),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@82 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.52%    0.20%     0x00007f557ce12b4a: or     %rsi,%rdi          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%    0.00%     0x00007f557ce12b4d: mov    %rdi,0x10(%rdx)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.01%     0x00007f557ce12b51: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f557ce13fc5
  0.21%    0.16%     0x00007f557ce12b56: cmp    $0xf8019843,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                     0x00007f557ce12b5c: jne    0x00007f557ce131c1
  0.63%    0.57%     0x00007f557ce12b62: lea    (%r12,%rbp,8),%rax  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
           0.00%     0x00007f557ce12b66: mov    0x18(%rax),%r11d   ;*getfield pc
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%              0x00007f557ce12b6a: mov    %r11d,%r13d
  0.21%    0.01%     0x00007f557ce12b6d: cmp    $0x40,%r11d
                     0x00007f557ce12b71: jg     0x00007f557ce13845  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.55%    0.03%     0x00007f557ce12b77: mov    $0x1,%esi
                     0x00007f557ce12b7c: mov    %r11d,%ecx
  0.01%    0.03%     0x00007f557ce12b7f: shl    %cl,%rsi           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.76%    0.84%     0x00007f557ce12b82: mov    %rdi,%r11
  0.01%    0.03%     0x00007f557ce12b85: and    %rsi,%r11
  0.19%    0.27%     0x00007f557ce12b88: test   %r11,%r11
                     0x00007f557ce12b8b: jne    0x00007f557ce12ea0  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.49%    0.78%     0x00007f557ce12b91: mov    %ecx,%r11d
  0.00%              0x00007f557ce12b94: cmp    $0x40,%r11d
                     0x00007f557ce12b98: jge    0x00007f557ce1388d  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.02%     0x00007f557ce12b9e: mov    0x2c(%rax),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.23%    0.17%     0x00007f557ce12ba1: or     %rsi,%rdi          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.53%    0.66%     0x00007f557ce12ba4: mov    %rdi,0x10(%rdx)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f557ce12ba8: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f557ce13fd9
  0.03%    0.02%     0x00007f557ce12bad: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007f557ce12bb3: jne    0x00007f557ce131f5
  0.21%    0.26%     0x00007f557ce12bb9: lea    (%r12,%rbp,8),%r13  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.45%    0.79%     0x00007f557ce12bbd: mov    0x18(%r13),%r11d   ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%              0x00007f557ce12bc1: mov    %r11d,%ecx
  0.02%    0.01%     0x00007f557ce12bc4: cmp    $0x40,%r11d
                     0x00007f557ce12bc8: jg     0x00007f557ce138d5  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.25%    0.21%     0x00007f557ce12bce: mov    $0x1,%esi
  0.57%    0.70%     0x00007f557ce12bd3: shl    %cl,%rsi           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.18%    0.28%     0x00007f557ce12bd6: mov    %rdi,%r11
  0.52%    0.47%     0x00007f557ce12bd9: and    %rsi,%r11          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f557ce12bdc: test   %r11,%r11
                     0x00007f557ce12bdf: jne    0x00007f557ce13921  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.00%     0x00007f557ce12be5: mov    %ecx,%r11d
  0.24%    0.24%     0x00007f557ce12be8: cmp    $0x40,%r11d
                     0x00007f557ce12bec: jge    0x00007f557ce13981  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.46%    0.66%     0x00007f557ce12bf2: mov    %r10d,0xc(%rdx)    ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%              0x00007f557ce12bf6: or     %rsi,%rdi          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%    0.02%     0x00007f557ce12bf9: mov    %rdi,0x10(%rdx)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.16%    0.19%     0x00007f557ce12bfd: cmp    0x34(%rsp),%r10d
                     0x00007f557ce12c02: jae    0x00007f557ce13135  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.49%    0.63%     0x00007f557ce12c08: mov    0x34(%rax),%r11d   ;*getfield inst2
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@43 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f557ce12c0c: mov    %r8,%rcx
  0.02%    0.04%     0x00007f557ce12c0f: mov    %r13,%r10
  0.22%    0.18%     0x00007f557ce12c12: shr    $0x3,%r10
  0.50%    0.54%     0x00007f557ce12c16: mov    %r10d,(%r8)
                     0x00007f557ce12c19: shr    $0x9,%rcx
  0.01%    0.03%     0x00007f557ce12c1d: movabs $0x7f5578601000,%r10
  0.15%    0.29%     0x00007f557ce12c27: mov    %r12b,(%r10,%rcx,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.53%    0.58%     0x00007f557ce12c2b: mov    0x8(%r12,%r11,8),%ecx  ; implicit exception: dispatches to 0x00007f557ce13fed
                     0x00007f557ce12c30: lea    (%r12,%r11,8),%r8
  0.01%    0.04%     0x00007f557ce12c34: cmp    $0xf8019885,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                     0x00007f557ce12c3a: je     0x00007f557ce12cb2
  0.20%    0.18%     0x00007f557ce12c3c: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007f557ce12c42: jne    0x00007f557ce1356d  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.57%    0.56%     0x00007f557ce12c48: mov    0x18(%r8),%ecx     ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f557ce12c4c: cmp    $0x40,%ecx
                     0x00007f557ce12c4f: jg     0x00007f557ce13ab5  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.02%     0x00007f557ce12c55: mov    $0x1,%r10d
  0.21%    0.25%     0x00007f557ce12c5b: shl    %cl,%r10           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.44%    0.71%     0x00007f557ce12c5e: mov    %rdi,%r11
  0.22%    0.34%     0x00007f557ce12c61: and    %r10,%r11          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.56%    0.68%     0x00007f557ce12c64: test   %r11,%r11
                     0x00007f557ce12c67: jne    0x00007f557ce13b31  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f557ce12c6d: cmp    $0x40,%ecx
                     0x00007f557ce12c70: jge    0x00007f557ce13bc1  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.02%     0x00007f557ce12c76: or     %r10,%rdi
  0.18%    0.07%     0x00007f557ce12c79: mov    %rdx,%r11
  0.44%    0.38%     0x00007f557ce12c7c: mov    %rdi,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
           0.00%     0x00007f557ce12c80: add    $0x18,%rbx
  0.04%    0.03%     0x00007f557ce12c84: shr    $0x3,%r8
  0.20%    0.20%     0x00007f557ce12c88: mov    %r8d,(%rbx)        ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.46%    0.78%     0x00007f557ce12c8b: mov    %rbx,%r10
           0.00%     0x00007f557ce12c8e: mov    0x30(%rsp),%r9d
  0.01%    0.04%     0x00007f557ce12c93: add    $0x3,%r9d
  0.17%    0.28%     0x00007f557ce12c97: mov    %r9d,0xc(%r11)     ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.50%    0.59%     0x00007f557ce12c9b: shr    $0x9,%r10
                     0x00007f557ce12c9f: movabs $0x7f5578601000,%r8
  0.01%    0.02%     0x00007f557ce12ca9: mov    %r12b,(%r8,%r10,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.21%    0.27%     0x00007f557ce12cad: jmpq   0x00007f557ce1294b  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
....................................................................................................
 48.08%   46.99%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 581 (1156 bytes) 

                                                                            ; - com.google.re2j.Machine::match@60 (line 193)
                              0x00007f557ce2ce79: cmp    $0xd800,%r11d
                              0x00007f557ce2ce80: jge    0x00007f557ce2e339  ;*if_icmplt
                                                                            ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                            ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                            ; - com.google.re2j.Machine::match@60 (line 193)
                              0x00007f557ce2ce86: shl    $0x3,%r11d         ;*ishl
                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                                                                            ; - com.google.re2j.Machine::match@60 (line 193)
  0.01%                       0x00007f557ce2ce8a: mov    %r11d,%r10d
  0.01%    0.02%              0x00007f557ce2ce8d: and    $0x7,%r10d
                              0x00007f557ce2ce91: or     $0x1,%r11d
                              0x00007f557ce2ce95: vmovd  %r11d,%xmm2
                              0x00007f557ce2ce9a: or     $0x1,%r10d         ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                                                                            ; - com.google.re2j.Machine::match@60 (line 193)
           0.01%              0x00007f557ce2ce9e: mov    %r10d,0x28(%rsp)
                              0x00007f557ce2cea3: mov    %r11d,%edi
                              0x00007f557ce2cea6: sar    $0x3,%edi          ;*ishr
                                                                            ; - com.google.re2j.Machine::match@68 (line 194)
  0.00%                       0x00007f557ce2cea9: cmp    $0xfffffff8,%r11d
                              0x00007f557ce2cead: je     0x00007f557ce2df3d  ;*if_icmpeq
                                                                            ; - com.google.re2j.Machine::match@88 (line 198)
  0.00%    0.01%              0x00007f557ce2ceb3: vmovd  %xmm0,%r10d
                              0x00007f557ce2ceb8: add    0x28(%rsp),%r10d
                              0x00007f557ce2cebd: add    0x24(%rsp),%r10d   ;*iadd
                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                                                                            ; - com.google.re2j.Machine::match@96 (line 199)
           0.00%              0x00007f557ce2cec2: mov    %r10d,%ebx
  0.00%    0.00%              0x00007f557ce2cec5: cmp    0x20(%rsp),%r10d
                              0x00007f557ce2ceca: jge    0x00007f557ce2d81b  ;*if_icmpge
                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                                                                            ; - com.google.re2j.Machine::match@96 (line 199)
                              0x00007f557ce2ced0: test   %r10d,%r10d
                              0x00007f557ce2ced3: jl     0x00007f557ce2e1fd  ;*iflt
                                                                            ; - java.lang.String::charAt@1 (line 657)
                                                                            ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                            ; - com.google.re2j.Machine::match@96 (line 199)
                              0x00007f557ce2ced9: cmp    %r13d,%r10d
                              0x00007f557ce2cedc: jge    0x00007f557ce2e381  ;*if_icmplt
                                                                            ; - java.lang.String::charAt@10 (line 657)
                                                                            ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                            ; - com.google.re2j.Machine::match@96 (line 199)
  0.00%    0.01%              0x00007f557ce2cee2: cmp    %r13d,%r10d
                              0x00007f557ce2cee5: jae    0x00007f557ce2dfd5
           0.00%              0x00007f557ce2ceeb: movzwl 0x10(%r8,%r10,2),%r10d  ;*caload
                                                                            ; - java.lang.String::charAt@27 (line 660)
                                                                            ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                            ; - com.google.re2j.Machine::match@96 (line 199)
  0.01%                       0x00007f557ce2cef1: cmp    $0xd800,%r10d
                              0x00007f557ce2cef8: jge    0x00007f557ce2e3dd  ;*if_icmplt
                                                                            ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                            ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                            ; - com.google.re2j.Machine::match@96 (line 199)
                              0x00007f557ce2cefe: shl    $0x3,%r10d         ;*ishl
                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                                                                            ; - com.google.re2j.Machine::match@96 (line 199)
                              0x00007f557ce2cf02: mov    %r10d,%r11d
  0.00%                       0x00007f557ce2cf05: or     $0x1,%r11d
                              0x00007f557ce2cf09: and    $0x7,%r10d
                              0x00007f557ce2cf0d: sar    $0x3,%r11d
                              0x00007f557ce2cf11: or     $0x1,%r10d         ;*ishr
                                                                            ; - com.google.re2j.Machine::match@104 (line 200)
  0.00%    0.00%              0x00007f557ce2cf15: vmovd  %xmm0,%r8d
                              0x00007f557ce2cf1a: test   %r8d,%r8d
                              0x00007f557ce2cf1d: jne    0x00007f557ce2e1b5  ;*ifne
                                                                            ; - com.google.re2j.Machine::match@115 (line 204)
                              0x00007f557ce2cf23: test   %edi,%edi
                              0x00007f557ce2cf25: jl     0x00007f557ce2d7f1  ;*ifge
                                                                            ; - com.google.re2j.Utils::emptyOpContext@21 (line 179)
                                                                            ; - com.google.re2j.Machine::match@121 (line 205)
  0.00%                       0x00007f557ce2cf2b: mov    %r11d,%edx
           0.00%              0x00007f557ce2cf2e: mov    %r10d,0x30(%rsp)
                              0x00007f557ce2cf33: mov    $0x5,%r10d         ;*iload_1
                                                                            ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                                                                            ; - com.google.re2j.Machine::match@121 (line 205)
                              0x00007f557ce2cf39: cmp    $0xa,%edi
                              0x00007f557ce2cf3c: je     0x00007f557ce2d812  ;*iload_0
                                                                            ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                                                                            ; - com.google.re2j.Machine::match@121 (line 205)
           0.00%              0x00007f557ce2cf42: mov    %edi,%r11d
           0.01%              0x00007f557ce2cf45: add    $0xffffffbf,%r11d
                              0x00007f557ce2cf49: cmp    $0x1a,%r11d
                  ╭           0x00007f557ce2cf4d: jb     0x00007f557ce2cf60  ;*if_icmple
                  │                                                         ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │                                                         ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                         ; - com.google.re2j.Machine::match@121 (line 205)
                  │           0x00007f557ce2cf4f: mov    %edi,%r8d
           0.00%  │           0x00007f557ce2cf52: add    $0xffffff9f,%r8d
                  │           0x00007f557ce2cf56: cmp    $0x1a,%r8d
                  │           0x00007f557ce2cf5a: jae    0x00007f557ce2d829  ;*iconst_1
                  │                                                         ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │                                                         ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                         ; - com.google.re2j.Machine::match@121 (line 205)
           0.00%  ↘           0x00007f557ce2cf60: or     $0x10,%r10d        ;*iload_2
                                                                            ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                            ; - com.google.re2j.Machine::match@121 (line 205)
                              0x00007f557ce2cf64: mov    0x3c(%rsp),%r11d
  0.01%                       0x00007f557ce2cf69: test   %r11d,%r11d
                              0x00007f557ce2cf6c: jne    0x00007f557ce2e09d  ;*aload
                                                                            ; - com.google.re2j.Machine::match@136 (line 211)
  0.00%                       0x00007f557ce2cf72: mov    0x40(%rsp),%r11
                              0x00007f557ce2cf77: movzbl 0x11(%r11),%r11d   ;*getfield captures
                                                                            ; - com.google.re2j.Machine::match@283 (line 240)
           0.00%              0x00007f557ce2cf7c: mov    %rcx,%r8
                              0x00007f557ce2cf7f: shl    $0x3,%r8           ;*getfield q1
                                                                            ; - com.google.re2j.Machine::match@53 (line 192)
  0.01%    0.01%              0x00007f557ce2cf83: mov    %r8,0x68(%rsp)
                              0x00007f557ce2cf88: xor    %eax,%eax
                              0x00007f557ce2cf8a: mov    $0x1,%r9d
                              0x00007f557ce2cf90: xor    %r8d,%r8d
  0.00%                       0x00007f557ce2cf93: mov    %r9d,0x14(%rsp)
  0.00%                       0x00007f557ce2cf98: mov    %r8d,0x60(%rsp)
  0.01%            ╭          0x00007f557ce2cf9d: jmpq   0x00007f557ce2d127
  0.13%    0.11%   │   ↗      0x00007f557ce2cfa2: or     $0x20,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                   │   │                                                    ; - com.google.re2j.Machine::match@326 (line 245)
  0.03%    0.03%   │   │      0x00007f557ce2cfa6: mov    %r8d,0x2c(%rsp)    ;*iload_2
                   │   │                                                    ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   │   │                                                    ; - com.google.re2j.Machine::match@326 (line 245)
  0.15%    0.22%   │   │↗     0x00007f557ce2cfab: mov    0x60(%rsp),%r8d
  0.27%    0.23%   │   ││     0x00007f557ce2cfb0: cmp    0x20(%rsp),%r8d
                   │   ││     0x00007f557ce2cfb5: je     0x00007f557ce2d756  ;*if_icmpne
                   │   ││                                                   ; - com.google.re2j.Machine::match@351 (line 246)
  0.31%    0.34%   │   ││     0x00007f557ce2cfbb: xor    %r10d,%r10d        ;*invokespecial step
                   │   ││                                                   ; - com.google.re2j.Machine::match@359 (line 246)
  0.10%    0.06%   │   ││     0x00007f557ce2cfbe: mov    %rax,-0x8(%rsp)
  0.42%    0.35%   │   ││     0x00007f557ce2cfc3: mov    0x60(%rsp),%eax
  0.26%    0.19%   │   ││     0x00007f557ce2cfc7: mov    %eax,0x34(%rsp)
  0.22%    0.25%   │   ││     0x00007f557ce2cfcb: mov    -0x8(%rsp),%rax
  0.49%    0.32%   │   ││     0x00007f557ce2cfd0: mov    %edx,0x20(%rsp)    ;*invokevirtual endPos
                   │   ││                                                   ; - com.google.re2j.Machine::match@348 (line 246)
  0.20%    0.13%   │   ││     0x00007f557ce2cfd4: add    0x28(%rsp),%r8d    ;*iadd
                   │   ││                                                   ; - com.google.re2j.Machine::match@340 (line 246)
  0.28%    0.28%   │   ││     0x00007f557ce2cfd9: mov    %r8d,0x60(%rsp)
  0.26%    0.16%   │   ││     0x00007f557ce2cfde: mov    0x40(%rsp),%rsi
  0.10%    0.09%   │   ││     0x00007f557ce2cfe3: mov    0x18(%rsp),%rdx
  0.14%    0.11%   │   ││     0x00007f557ce2cfe8: mov    0x68(%rsp),%rcx
  0.31%    0.18%   │   ││     0x00007f557ce2cfed: mov    0x34(%rsp),%r8d
  0.30%    0.19%   │   ││     0x00007f557ce2cff2: mov    0x60(%rsp),%r9d
  0.55%    0.39%   │   ││     0x00007f557ce2cff7: mov    0x2c(%rsp),%r11d
  0.08%    0.07%   │   ││     0x00007f557ce2cffc: mov    %r11d,(%rsp)
  0.27%    0.21%   │   ││     0x00007f557ce2d000: xor    %r11d,%r11d
  0.17%    0.07%   │   ││     0x00007f557ce2d003: mov    %r11d,0x8(%rsp)
  0.18%    0.25%   │   ││     0x00007f557ce2d008: mov    %r10d,0x10(%rsp)
  0.08%    0.11%   │   ││     0x00007f557ce2d00d: xchg   %ax,%ax
  0.23%    0.27%   │   ││     0x00007f557ce2d00f: callq  0x00007f557cc19020  ; OopMap{[24]=Oop [56]=NarrowOop [64]=Oop [80]=Oop [104]=Oop off=692}
                   │   ││                                                   ;*invokespecial step
                   │   ││                                                   ; - com.google.re2j.Machine::match@359 (line 246)
                   │   ││                                                   ;   {optimized virtual_call}
           0.00%   │   ││     0x00007f557ce2d014: mov    0x40(%rsp),%r10
  0.66%    0.98%   │   ││     0x00007f557ce2d019: movzbl 0x11(%r10),%r11d   ;*getfield captures
                   │   ││                                                   ; - com.google.re2j.Machine::match@371 (line 250)
  0.00%            │   ││     0x00007f557ce2d01e: movzbl 0x10(%r10),%eax    ;*getfield matched
                   │   ││                                                   ; - com.google.re2j.Machine::match@378 (line 250)
  0.00%            │   ││     0x00007f557ce2d023: mov    0x28(%rsp),%r8d
  0.71%    0.83%   │   ││     0x00007f557ce2d028: test   %r8d,%r8d
                   │   ││     0x00007f557ce2d02b: je     0x00007f557ce2d716  ;*ifne
                   │   ││                                                   ; - com.google.re2j.Machine::match@364 (line 247)
                   │   ││     0x00007f557ce2d031: test   %r11d,%r11d
                   │   ││     0x00007f557ce2d034: jne    0x00007f557ce2da7d  ;*ifne
                   │   ││                                                   ; - com.google.re2j.Machine::match@374 (line 250)
  0.00%            │   ││     0x00007f557ce2d03a: test   %eax,%eax
                   │   ││     0x00007f557ce2d03c: jne    0x00007f557ce2dc79  ;*ifeq
                   │   ││                                                   ; - com.google.re2j.Machine::match@381 (line 250)
           0.01%   │   ││     0x00007f557ce2d042: mov    0x50(%rsp),%r8
  0.68%    0.90%   │   ││     0x00007f557ce2d047: mov    0x10(%r8),%ebx     ;*getfield end
                   │   ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                   │   ││                                                   ; - com.google.re2j.Machine::match@411 (line 259)
                   │   ││     0x00007f557ce2d04b: mov    0xc(%r8),%ecx      ;*getfield start
                   │   ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                   │   ││                                                   ; - com.google.re2j.Machine::match@411 (line 259)
  0.00%    0.01%   │   ││     0x00007f557ce2d04f: mov    %ecx,0x24(%rsp)
           0.01%   │   ││     0x00007f557ce2d053: mov    0x14(%r8),%r9d     ;*getfield str
                   │   ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                   │   ││                                                   ; - com.google.re2j.Machine::match@411 (line 259)
  0.66%    0.96%   │   ││     0x00007f557ce2d057: mov    0x20(%rsp),%edi
           0.01%   │   ││     0x00007f557ce2d05b: cmp    $0xffffffff,%edi
                   │   ││     0x00007f557ce2d05e: je     0x00007f557ce2d761  ;*if_icmpeq
                   │   ││                                                   ; - com.google.re2j.Machine::match@403 (line 258)
           0.00%   │   ││     0x00007f557ce2d064: mov    0x30(%rsp),%r8d
  0.00%            │   ││     0x00007f557ce2d069: add    0x60(%rsp),%r8d
  0.74%    0.88%   │   ││     0x00007f557ce2d06e: add    %ecx,%r8d          ;*iadd
                   │   ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                   │   ││                                                   ; - com.google.re2j.Machine::match@411 (line 259)
           0.00%   │   ││     0x00007f557ce2d071: cmp    %ebx,%r8d
                   │   ││     0x00007f557ce2d074: jge    0x00007f557ce2d770  ;*if_icmpge
                   │   ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                   │   ││                                                   ; - com.google.re2j.Machine::match@411 (line 259)
  0.00%    0.00%   │   ││     0x00007f557ce2d07a: mov    0x8(%r12,%r9,8),%r10d  ; implicit exception: dispatches to 0x00007f557ce2e9ed
  0.02%    0.04%   │   ││     0x00007f557ce2d07f: cmp    $0xf80002da,%r10d  ;   {metadata(&apos;java/lang/String&apos;)}
                   │   ││     0x00007f557ce2d086: jne    0x00007f557ce2d9d9
  0.79%    0.88%   │   ││     0x00007f557ce2d08c: lea    (%r12,%r9,8),%rdx  ;*invokeinterface charAt
                   │   ││                                                   ; - java.lang.Character::codePointAt@2 (line 4866)
                   │   ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │   ││                                                   ; - com.google.re2j.Machine::match@411 (line 259)
                   │   ││     0x00007f557ce2d090: test   %r8d,%r8d
                   │   ││     0x00007f557ce2d093: jl     0x00007f557ce2dad1  ;*iflt
                   │   ││                                                   ; - java.lang.String::charAt@1 (line 657)
                   │   ││                                                   ; - java.lang.Character::codePointAt@2 (line 4866)
                   │   ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │   ││                                                   ; - com.google.re2j.Machine::match@411 (line 259)
                   │   ││     0x00007f557ce2d099: mov    0xc(%rdx),%ecx     ;*getfield value
                   │   ││                                                   ; - java.lang.String::charAt@6 (line 657)
                   │   ││                                                   ; - java.lang.Character::codePointAt@2 (line 4866)
                   │   ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │   ││                                                   ; - com.google.re2j.Machine::match@411 (line 259)
                   │   ││     0x00007f557ce2d09c: mov    0xc(%r12,%rcx,8),%ebp  ;*arraylength
                   │   ││                                                   ; - java.lang.String::charAt@9 (line 657)
                   │   ││                                                   ; - java.lang.Character::codePointAt@2 (line 4866)
                   │   ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │   ││                                                   ; - com.google.re2j.Machine::match@411 (line 259)
                   │   ││                                                   ; implicit exception: dispatches to 0x00007f557ce2ea01
  1.45%    1.69%   │   ││     0x00007f557ce2d0a1: cmp    %ebp,%r8d
                   │   ││     0x00007f557ce2d0a4: jge    0x00007f557ce2dccd  ;*if_icmplt
                   │   ││                                                   ; - java.lang.String::charAt@10 (line 657)
                   │   ││                                                   ; - java.lang.Character::codePointAt@2 (line 4866)
                   │   ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │   ││                                                   ; - com.google.re2j.Machine::match@411 (line 259)
  0.71%    0.56%   │   ││     0x00007f557ce2d0aa: cmp    %ebp,%r8d
                   │   ││     0x00007f557ce2d0ad: jae    0x00007f557ce2d8cd
  0.26%    0.14%   │   ││     0x00007f557ce2d0b3: lea    (%r12,%rcx,8),%r10
                   │   ││     0x00007f557ce2d0b7: movzwl 0x10(%r10,%r8,2),%ecx  ;*caload
                   │   ││                                                   ; - java.lang.String::charAt@27 (line 660)
                   │   ││                                                   ; - java.lang.Character::codePointAt@2 (line 4866)
                   │   ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │   ││                                                   ; - com.google.re2j.Machine::match@411 (line 259)
  0.13%    0.10%   │   ││     0x00007f557ce2d0bd: cmp    $0xd800,%ecx
                   │   ││     0x00007f557ce2d0c3: jge    0x00007f557ce2dd2d  ;*if_icmplt
                   │   ││                                                   ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   │   ││                                                   ; - java.lang.Character::codePointAt@9 (line 4867)
                   │   ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │   ││                                                   ; - com.google.re2j.Machine::match@411 (line 259)
  0.52%    0.46%   │   ││     0x00007f557ce2d0c9: shl    $0x3,%ecx          ;*ishl
                   │   ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                   │   ││                                                   ; - com.google.re2j.Machine::match@411 (line 259)
  0.28%    0.44%   │   ││     0x00007f557ce2d0cc: mov    %ecx,%r8d
                   │   ││     0x00007f557ce2d0cf: or     $0x1,%r8d
  0.71%    0.72%   │   ││     0x00007f557ce2d0d3: and    $0x7,%ecx
  0.12%    0.11%   │   ││     0x00007f557ce2d0d6: sar    $0x3,%r8d          ;*ishr
                   │   ││                                                   ; - com.google.re2j.Machine::match@419 (line 260)
  0.46%    0.55%   │   ││     0x00007f557ce2d0da: or     $0x1,%ecx          ; OopMap{r9=NarrowOop [24]=Oop [64]=Oop [80]=Oop [104]=Oop off=893}
                   │   ││                                                   ;*goto
                   │   ││                                                   ; - com.google.re2j.Machine::match@441 (line 266)
  0.01%    0.01%   │   ││     0x00007f557ce2d0dd: test   %eax,0x15e03f1d(%rip)        # 0x00007f5592c31000
                   │   ││                                                   ;*goto
                   │   ││                                                   ; - com.google.re2j.Machine::match@441 (line 266)
                   │   ││                                                   ;   {poll}
  0.07%    0.11%   │   ││     0x00007f557ce2d0e3: mov    0x40(%rsp),%r10
  0.09%    0.12%   │   ││     0x00007f557ce2d0e8: mov    0x28(%r10),%r14d   ;*getfield matchcap
                   │   ││                                                   ; - com.google.re2j.Machine::match@307 (line 243)
  0.57%    0.61%   │   ││     0x00007f557ce2d0ec: mov    0x14(%r10),%esi    ;*getfield re2
                   │   ││                                                   ; - com.google.re2j.Machine::match@169 (line 220)
  0.02%    0.02%   │   ││     0x00007f557ce2d0f0: mov    0x68(%rsp),%r10
  0.03%    0.07%   │   ││     0x00007f557ce2d0f5: mov    %r10,%rdx
  0.13%    0.12%   │   ││     0x00007f557ce2d0f8: shr    $0x3,%rdx
  0.61%    0.77%   │   ││     0x00007f557ce2d0fc: mov    %edx,0x38(%rsp)
  0.00%    0.01%   │   ││     0x00007f557ce2d100: mov    0x2c(%rsp),%r10d
  0.06%    0.05%   │   ││     0x00007f557ce2d105: mov    0x18(%rsp),%rdx
  0.09%    0.11%   │   ││     0x00007f557ce2d10a: mov    %rdx,0x68(%rsp)
  0.55%    0.62%   │   ││     0x00007f557ce2d10f: mov    0x30(%rsp),%edx
  0.01%    0.02%   │   ││     0x00007f557ce2d113: mov    %edx,0x28(%rsp)
  0.07%    0.08%   │   ││     0x00007f557ce2d117: mov    %r8d,%edx
  0.10%    0.14%   │   ││     0x00007f557ce2d11a: mov    %ecx,0x30(%rsp)
  0.48%    0.67%   │   ││     0x00007f557ce2d11e: mov    %ebx,0x20(%rsp)
  0.02%    0.01%   │   ││     0x00007f557ce2d122: vmovd  %r9d,%xmm4         ;*getfield matchcap
                   │   ││                                                   ; - com.google.re2j.Machine::match@307 (line 243)
  0.04%    0.09%   ↘   ││     0x00007f557ce2d127: mov    0x38(%rsp),%r9d
  0.08%    0.12%       ││     0x00007f557ce2d12c: movzbl 0x18(%r12,%r9,8),%ecx  ; implicit exception: dispatches to 0x00007f557ce2e995
  0.67%    0.80%       ││     0x00007f557ce2d132: lea    (%r12,%r9,8),%r8   ;*aload
                       ││                                                   ; - com.google.re2j.Machine::match@136 (line 211)
  0.01%    0.01%       ││     0x00007f557ce2d136: mov    %r8,0x18(%rsp)
  0.05%    0.02%       ││     0x00007f557ce2d13b: test   %ecx,%ecx
                       ││     0x00007f557ce2d13d: jne    0x00007f557ce2d383  ;*iload_3
                       ││                                                   ; - com.google.re2j.Machine::match@267 (line 237)
  0.17%    0.23%       ││     0x00007f557ce2d143: test   %eax,%eax
                       ││     0x00007f557ce2d145: jne    0x00007f557ce2da39  ;*ifne
                       ││                                                   ; - com.google.re2j.Machine::match@279 (line 237)
  0.43%    0.44%       ││     0x00007f557ce2d14b: test   %r11d,%r11d
                       ││     0x00007f557ce2d14e: jne    0x00007f557ce2db31  ;*ifeq
                       ││                                                   ; - com.google.re2j.Machine::match@286 (line 240)
  0.02%    0.02%       ││     0x00007f557ce2d154: mov    0x40(%rsp),%r8
  0.07%    0.10%       ││     0x00007f557ce2d159: mov    0x18(%r8),%r9d     ;*getfield prog
                       ││                                                   ; - com.google.re2j.Machine::match@297 (line 243)
  0.16%    0.21%       ││     0x00007f557ce2d15d: mov    0x1c(%r12,%r9,8),%ebp  ;*getfield startInst
                       ││                                                   ; - com.google.re2j.Machine::match@300 (line 243)
                       ││                                                   ; implicit exception: dispatches to 0x00007f557ce2e9a5
  0.55%    0.64%       ││     0x00007f557ce2d162: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007f557ce2e9b5
  0.71%    0.86%       ││     0x00007f557ce2d167: cmp    $0xf8019909,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                       ││     0x00007f557ce2d16e: jne    0x00007f557ce2d931
  0.54%    0.61%       ││     0x00007f557ce2d174: lea    (%r12,%rbp,8),%r9  ;*invokevirtual add
                       ││                                                   ; - com.google.re2j.Machine::match@318 (line 243)
  0.06%    0.02%       ││     0x00007f557ce2d178: mov    0x18(%r9),%r10d    ;*getfield pc
                       ││                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                       ││                                                   ; - com.google.re2j.Machine::match@318 (line 243)
  0.14%    0.21%       ││     0x00007f557ce2d17c: cmp    $0x40,%r10d
  0.59%    0.58%       ││     0x00007f557ce2d180: jg     0x00007f557ce2db75  ;*if_icmpgt
                       ││                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                       ││                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                       ││                                                   ; - com.google.re2j.Machine::match@318 (line 243)
  0.51%    0.62%       ││     0x00007f557ce2d186: mov    %r10d,%ecx
  0.04%    0.04%       ││     0x00007f557ce2d189: mov    $0x1,%ebx
  0.07%    0.09%       ││     0x00007f557ce2d18e: shl    %cl,%rbx           ;*lshl
                       ││                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                       ││                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                       ││                                                   ; - com.google.re2j.Machine::match@318 (line 243)
  0.91%    0.81%       ││     0x00007f557ce2d191: mov    0x38(%rsp),%r10d
  0.05%    0.03%       ││     0x00007f557ce2d196: mov    0x10(%r12,%r10,8),%r8  ;*getfield pcsl
                       ││                                                   ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                       ││                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                       ││                                                   ; - com.google.re2j.Machine::match@318 (line 243)
           0.01%       ││     0x00007f557ce2d19b: mov    %r8,%r10
  0.31%    0.33%       ││     0x00007f557ce2d19e: and    %rbx,%r10          ;*land
                       ││                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                       ││                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                       ││                                                   ; - com.google.re2j.Machine::match@318 (line 243)
  0.32%    0.16%       ││     0x00007f557ce2d1a1: test   %r10,%r10
                       ││     0x00007f557ce2d1a4: jne    0x00007f557ce2dbc9  ;*ifeq
                       ││                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                       ││                                                   ; - com.google.re2j.Machine::match@318 (line 243)
  0.09%    0.02%       ││     0x00007f557ce2d1aa: cmp    $0x40,%ecx
                       ││     0x00007f557ce2d1ad: jge    0x00007f557ce2dc25  ;*if_icmpge
                       ││                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                       ││                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                       ││                                                   ; - com.google.re2j.Machine::match@318 (line 243)
  0.01%    0.00%       ││     0x00007f557ce2d1b3: mov    0x38(%rsp),%r10d
  0.37%    0.31%       ││     0x00007f557ce2d1b8: mov    %r12b,0x18(%r12,%r10,8)  ;*putfield empty
                       ││                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                       ││                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                       ││                                                   ; - com.google.re2j.Machine::match@318 (line 243)
  0.31%    0.29%       ││     0x00007f557ce2d1bd: mov    0xc(%r12,%r10,8),%r10d  ;*getfield size
                       ││                                                   ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                       ││                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                       ││                                                   ; - com.google.re2j.Machine::match@318 (line 243)
  0.05%    0.03%       ││     0x00007f557ce2d1c2: mov    0x38(%rsp),%ecx
  0.01%    0.01%       ││     0x00007f557ce2d1c6: mov    0x20(%r12,%rcx,8),%r11d  ;*getfield denseThreadsInstructions
                       ││                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                       ││                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                       ││                                                   ; - com.google.re2j.Machine::match@318 (line 243)
  0.43%    0.38%       ││     0x00007f557ce2d1cb: or     %r8,%rbx
  0.34%    0.30%       ││     0x00007f557ce2d1ce: mov    %rbx,0x10(%r12,%rcx,8)  ;*putfield pcsl
                       ││                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                       ││                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                       ││                                                   ; - com.google.re2j.Machine::match@318 (line 243)
  0.08%    0.06%       ││     0x00007f557ce2d1d3: mov    %r10d,%ecx
  0.01%    0.02%       ││     0x00007f557ce2d1d6: inc    %ecx
  0.30%    0.27%       ││     0x00007f557ce2d1d8: mov    0x38(%rsp),%ebx
  0.26%    0.28%       ││     0x00007f557ce2d1dc: mov    %ecx,0xc(%r12,%rbx,8)  ;*putfield size
                       ││                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                       ││                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                       ││                                                   ; - com.google.re2j.Machine::match@318 (line 243)
  0.09%    0.08%       ││     0x00007f557ce2d1e1: mov    0xc(%r12,%r11,8),%ecx  ; implicit exception: dispatches to 0x00007f557ce2e9d5
  0.19%    0.25%       ││     0x00007f557ce2d1e6: cmp    %ecx,%r10d
                       ││     0x00007f557ce2d1e9: jae    0x00007f557ce2d872
  0.44%    0.50%       ││     0x00007f557ce2d1ef: mov    0x8(%r12,%r11,8),%ecx
  0.24%    0.23%       ││     0x00007f557ce2d1f4: cmp    $0xf8019807,%ecx   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                       ││     0x00007f557ce2d1fa: jne    0x00007f557ce2d981  ;*aastore
                       ││                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                       ││                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                       ││                                                   ; - com.google.re2j.Machine::match@318 (line 243)
  0.17%    0.06%       ││     0x00007f557ce2d200: test   %edi,%edi
                    ╭  ││     0x00007f557ce2d202: jl     0x00007f557ce2d2a5  ;*ifge
                    │  ││                                                   ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                    │  ││                                                   ; - com.google.re2j.Machine::match@326 (line 245)
                    │  ││     0x00007f557ce2d208: xor    %r8d,%r8d          ;*iload_0
                    │  ││                                                   ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                    │  ││                                                   ; - com.google.re2j.Machine::match@326 (line 245)
  0.37%    0.38%    │  ││↗    0x00007f557ce2d20b: cmp    $0xa,%edi
                    │  │││    0x00007f557ce2d20e: je     0x00007f557ce2d5eb  ;*iload_1
                    │  │││                                                  ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                    │  │││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.24%    0.28%    │  │││    0x00007f557ce2d214: test   %edx,%edx
                    │  │││    0x00007f557ce2d216: jl     0x00007f557ce2d5e2  ;*iload_1
                    │  │││                                                  ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                    │  │││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.10%    0.09%    │  │││    0x00007f557ce2d21c: cmp    $0xa,%edx
                    │  │││    0x00007f557ce2d21f: je     0x00007f557ce2d5f4  ;*iload_0
                    │  │││                                                  ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                    │  │││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.01%    0.00%    │  │││    0x00007f557ce2d225: shr    $0x3,%r9           ;*aastore
                    │  │││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                    │  │││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                    │  │││                                                  ; - com.google.re2j.Machine::match@318 (line 243)
  0.35%    0.32%    │  │││    0x00007f557ce2d229: shl    $0x3,%r11          ;*getfield denseThreadsInstructions
                    │  │││                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                    │  │││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                    │  │││                                                  ; - com.google.re2j.Machine::match@318 (line 243)
  0.23%    0.20%    │  │││    0x00007f557ce2d22d: lea    0x10(%r11,%r10,4),%r10
  0.14%    0.11%    │  │││    0x00007f557ce2d232: mov    %r9d,(%r10)
  0.59%    0.50%    │  │││    0x00007f557ce2d235: mov    %edi,%r11d
  0.25%    0.25%    │  │││    0x00007f557ce2d238: add    $0xffffffbf,%r11d
  0.20%    0.19%    │  │││    0x00007f557ce2d23c: shr    $0x9,%r10
  0.04%    0.04%    │  │││    0x00007f557ce2d240: movabs $0x7f5578601000,%r9
  0.26%    0.18%    │  │││    0x00007f557ce2d24a: mov    %r12b,(%r9,%r10,1)  ;*aastore
                    │  │││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                    │  │││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                    │  │││                                                  ; - com.google.re2j.Machine::match@318 (line 243)
  0.83%    0.86%    │  │││    0x00007f557ce2d24e: cmp    $0x1a,%r11d
                    │╭ │││    0x00007f557ce2d252: jb     0x00007f557ce2d265  ;*if_icmple
                    ││ │││                                                  ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                    ││ │││                                                  ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    ││ │││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.13%    0.15%    ││ │││    0x00007f557ce2d254: mov    %edi,%r10d
  0.02%    0.05%    ││ │││    0x00007f557ce2d257: add    $0xffffff9f,%r10d
  0.15%    0.11%    ││ │││    0x00007f557ce2d25b: cmp    $0x1a,%r10d
                    ││ │││    0x00007f557ce2d25f: jae    0x00007f557ce2d7ae  ;*iconst_1
                    ││ │││                                                  ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                    ││ │││                                                  ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    ││ │││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.33%    0.32%    │↘ │││    0x00007f557ce2d265: mov    $0x1,%ebp          ;*ireturn
                    │  │││                                                  ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                    │  │││                                                  ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    │  │││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.15%    0.13%    │  │││    0x00007f557ce2d26a: mov    %edx,%r11d
  0.11%    0.08%    │  │││    0x00007f557ce2d26d: add    $0xffffffbf,%r11d
  0.17%    0.16%    │  │││    0x00007f557ce2d271: cmp    $0x1a,%r11d
                    │ ╭│││    0x00007f557ce2d275: jb     0x00007f557ce2d288  ;*if_icmple
                    │ ││││                                                  ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                    │ ││││                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    │ ││││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.36%    0.27%    │ ││││    0x00007f557ce2d277: mov    %edx,%r10d
  0.15%    0.10%    │ ││││    0x00007f557ce2d27a: add    $0xffffff9f,%r10d
  0.06%    0.07%    │ ││││    0x00007f557ce2d27e: cmp    $0x1a,%r10d
                    │ ││││    0x00007f557ce2d282: jae    0x00007f557ce2d7cf  ;*iconst_1
                    │ ││││                                                  ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                    │ ││││                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    │ ││││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.14%    0.10%    │ ↘│││    0x00007f557ce2d288: mov    $0x1,%r11d         ;*ireturn
                    │  │││                                                  ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                    │  │││                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    │  │││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.32%    0.28%    │  │││    0x00007f557ce2d28e: cmp    %r11d,%ebp
                    │  ╰││    0x00007f557ce2d291: je     0x00007f557ce2cfa2  ;*if_icmpeq
                    │   ││                                                  ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                    │   ││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.06%    0.04%    │   ││    0x00007f557ce2d297: or     $0x10,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                    │   ││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.03%    0.04%    │   ││    0x00007f557ce2d29b: mov    %r8d,0x2c(%rsp)
  0.34%    0.32%    │   ╰│    0x00007f557ce2d2a0: jmpq   0x00007f557ce2cfab
                    ↘    │    0x00007f557ce2d2a5: mov    $0x5,%r8d
  0.00%                  ╰    0x00007f557ce2d2ab: jmpq   0x00007f557ce2d20b
           0.00%              0x00007f557ce2d2b0: mov    %r8d,0x5c(%rsp)
  0.00%    0.02%              0x00007f557ce2d2b5: jmpq   0x00007f557ce2d51e
                              0x00007f557ce2d2ba: mov    0x5c(%rsp),%r8d
                              0x00007f557ce2d2bf: add    $0x2,%r8d
                              0x00007f557ce2d2c3: mov    %r8d,0x5c(%rsp)
  0.00%                       0x00007f557ce2d2c8: mov    0x5c(%rsp),%r8d
                              0x00007f557ce2d2cd: inc    %r8d
                              0x00007f557ce2d2d0: mov    %r8d,0x58(%rsp)
                          ╭   0x00007f557ce2d2d5: jmp    0x00007f557ce2d302
  0.00%                   │   0x00007f557ce2d2d7: mov    0x5c(%rsp),%r8d
                          │   0x00007f557ce2d2dc: add    $0x2,%r8d
                          │   0x00007f557ce2d2e0: mov    %r8d,0x58(%rsp)
                          │╭  0x00007f557ce2d2e5: jmp    0x00007f557ce2d2f5
           0.00%          ││  0x00007f557ce2d2e7: mov    0x5c(%rsp),%r8d
                          ││  0x00007f557ce2d2ec: add    $0x2,%r8d
                          ││  0x00007f557ce2d2f0: mov    %r8d,0x5c(%rsp)
  0.00%                   │↘  0x00007f557ce2d2f5: mov    0x5c(%rsp),%r8d
                          │   0x00007f557ce2d2fa: inc    %r8d               ;*iinc
                          │                                                 ; - java.lang.String::indexOf@69 (line 1772)
                          │                                                 ; - java.lang.String::indexOf@21 (line 1718)
                          │                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                          │                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                          │                                                 ; - com.google.re2j.Machine::match@206 (line 224)
                          │   0x00007f557ce2d2fd: mov    %r8d,0x5c(%rsp)
                          ↘   0x00007f557ce2d302: mov    0x5c(%rsp),%r8d
  0.00%                       0x00007f557ce2d307: cmp    0x28(%rsp),%r8d
                              0x00007f557ce2d30c: jg     0x00007f557ce2d368
  0.00%                       0x00007f557ce2d30e: mov    0x5c(%rsp),%r8d
                              0x00007f557ce2d313: add    0x34(%rsp),%r8d    ;*iadd
                                                                            ; - java.lang.String::indexOf@101 (line 1777)
                                                                            ; - java.lang.String::indexOf@21 (line 1718)
                                                                            ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                                                                            ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                                                                            ; - com.google.re2j.Machine::match@206 (line 224)
                              0x00007f557ce2d318: mov    %r8d,%edi
                              0x00007f557ce2d31b: mov    0x58(%rsp),%r8d
                              0x00007f557ce2d320: cmp    %edi,%r8d
                              0x00007f557ce2d323: jge    0x00007f557ce2d35a  ;*if_icmpge
....................................................................................................
 33.66%   34.40%  <total for region 2>

....[Hottest Regions]...............................................................................
 48.08%   46.99%         C2, level 4  com.google.re2j.Machine::step, version 542 (866 bytes) 
 33.66%   34.40%         C2, level 4  com.google.re2j.Machine::match, version 581 (1156 bytes) 
  7.57%    8.65%         C2, level 4  com.google.re2j.Machine::step, version 542 (344 bytes) 
  6.04%    6.57%         C2, level 4  com.google.re2j.Machine::step, version 542 (111 bytes) 
  0.72%    0.65%         C2, level 4  com.google.re2j.Machine::match, version 581 (264 bytes) 
  0.18%    0.11%         C2, level 4  com.google.re2j.Pattern::find, version 597 (32 bytes) 
  0.18%    0.14%         C2, level 4  com.google.re2j.Machine::match, version 581 (261 bytes) 
  0.16%    0.15%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.16%    0.07%         C2, level 4  com.google.re2j.Pattern::find, version 597 (20 bytes) 
  0.14%    0.04%         C2, level 4  com.google.re2j.Pattern::find, version 597 (0 bytes) 
  0.13%                  C2, level 4  com.google.re2j.Pattern::find, version 597 (149 bytes) 
  0.13%    0.08%         C2, level 4  com.google.re2j.Pattern::find, version 597 (8 bytes) 
  0.09%    0.13%         C2, level 4  com.google.re2j.Machine::match, version 581 (203 bytes) 
  0.09%    0.08%         C2, level 4  java.util.Collections::shuffle, version 605 (50 bytes) 
  0.08%    0.04%         C2, level 4  com.google.re2j.Machine::match, version 581 (126 bytes) 
  0.07%    0.00%         C2, level 4  java.util.Collections::shuffle, version 605 (123 bytes) 
  0.07%    0.01%              [vdso]  [unknown] (9 bytes) 
  0.07%    0.02%   [kernel.kallsyms]  [unknown] (28 bytes) 
  0.07%    0.03%         C2, level 4  com.google.re2j.Machine::match, version 581 (160 bytes) 
  0.06%    0.06%   [kernel.kallsyms]  [unknown] (99 bytes) 
  2.23%    1.78%  <...other 388 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 61.69%   62.21%         C2, level 4  com.google.re2j.Machine::step, version 542 
 34.91%   35.42%         C2, level 4  com.google.re2j.Machine::match, version 581 
  1.17%    0.98%   [kernel.kallsyms]  [unknown] 
  1.00%    0.34%         C2, level 4  com.google.re2j.Pattern::find, version 597 
  0.22%    0.11%         C2, level 4  java.util.Collections::shuffle, version 605 
  0.12%    0.06%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 639 
  0.07%    0.01%              [vdso]  [unknown] 
  0.07%    0.05%           libjvm.so  GenericTaskQueueSet<OverflowTaskQueue<StarTask, (MemoryType)1, 131072u>, (MemoryType)1>::steal_best_of_2 
  0.06%    0.05%                      <unknown> 
  0.03%    0.00%              [vdso]  __vdso_clock_gettime 
  0.03%    0.02%           libjvm.so  PSPromotionManager::drain_stacks_depth 
  0.03%    0.00%           libjvm.so  xmlTextStream::write 
  0.03%    0.04%           libjvm.so  InstanceKlass::oop_push_contents 
  0.03%    0.04%           libjvm.so  RelocIterator::initialize 
  0.02%                  C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 604 
  0.02%    0.02%        libc-2.26.so  _IO_fwrite 
  0.02%    0.06%           libjvm.so  PSPromotionManager::copy_to_survivor_space<false> 
  0.02%                    libjvm.so  Monitor::unlock 
  0.02%    0.08%        libc-2.26.so  vfprintf 
  0.01%    0.02%        libc-2.26.so  __strlen_avx2 
  0.41%    0.24%  <...other 64 warm methods...>
....................................................................................................
100.00%   99.76%  <totals>

....[Distribution by Source]........................................................................
 97.97%   98.14%         C2, level 4
  1.17%    0.98%   [kernel.kallsyms]
  0.49%    0.48%           libjvm.so
  0.12%    0.28%        libc-2.26.so
  0.11%    0.01%              [vdso]
  0.06%    0.05%                    
  0.04%    0.04%  libpthread-2.26.so
  0.02%    0.01%         interpreter
  0.00%    0.00%         C1, level 3
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                 Mode  Cnt      Score     Error  Units
Re2jRegex.testExp1       thrpt   20  28636.658 ± 238.647  ops/s
Re2jRegex.testExp1:·asm  thrpt             NaN              ---
