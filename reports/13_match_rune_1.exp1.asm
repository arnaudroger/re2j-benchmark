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
# Warmup Iteration   1: 11265.578 ops/s
# Warmup Iteration   2: 21332.081 ops/s
# Warmup Iteration   3: 21348.135 ops/s
# Warmup Iteration   4: 21340.992 ops/s
# Warmup Iteration   5: 21401.548 ops/s
# Warmup Iteration   6: 21412.385 ops/s
# Warmup Iteration   7: 21243.209 ops/s
# Warmup Iteration   8: 21570.634 ops/s
# Warmup Iteration   9: 21584.552 ops/s
# Warmup Iteration  10: 21599.147 ops/s
# Warmup Iteration  11: 21592.008 ops/s
# Warmup Iteration  12: 21596.412 ops/s
# Warmup Iteration  13: 19572.573 ops/s
# Warmup Iteration  14: 21594.987 ops/s
# Warmup Iteration  15: 21543.262 ops/s
# Warmup Iteration  16: 21578.845 ops/s
# Warmup Iteration  17: 21428.194 ops/s
# Warmup Iteration  18: 21424.439 ops/s
# Warmup Iteration  19: 21426.859 ops/s
# Warmup Iteration  20: 21426.540 ops/s
Iteration   1: 21425.027 ops/s
Iteration   2: 21408.134 ops/s
Iteration   3: 20911.970 ops/s
Iteration   4: 19037.730 ops/s
Iteration   5: 20751.165 ops/s
Iteration   6: 20749.039 ops/s
Iteration   7: 20713.305 ops/s
Iteration   8: 20744.907 ops/s
Iteration   9: 20751.214 ops/s
Iteration  10: 20747.468 ops/s
Iteration  11: 21152.379 ops/s
Iteration  12: 21406.756 ops/s
Iteration  13: 21559.376 ops/s
Iteration  14: 21569.287 ops/s
Iteration  15: 21577.605 ops/s
Iteration  16: 21539.209 ops/s
Iteration  17: 21563.067 ops/s
Iteration  18: 21553.226 ops/s
Iteration  19: 21517.126 ops/s
Iteration  20: 21568.772 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  21112.338 ±(99.9%) 527.635 ops/s [Average]
  (min, avg, max) = (19037.730, 21112.338, 21577.605), stdev = 607.626
  CI (99.9%): [20584.703, 21639.973] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1:·asm":
PrintAssembly processed: 195132 total address lines.
Perf output processed (skipped 23.364 seconds):
 Column 1: cycles (20645 events)
 Column 2: instructions (20648 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 500 (797 bytes) 

                     0x00007fb44122255f: jae    0x00007fb441222d91
                     0x00007fb441222565: mov    %rdx,%r10
                     0x00007fb441222568: mov    %rcx,%r9
                     0x00007fb44122256b: shr    $0x3,%r9
                     0x00007fb44122256f: mov    %r9d,(%rdx)
                     0x00007fb441222572: shr    $0x9,%r10
                     0x00007fb441222576: movabs $0x7fb451f2f000,%r8
                     0x00007fb441222580: mov    %r12b,(%r8,%r10,1)  ;*synchronization entry
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.17%    0.07%     0x00007fb441222584: mov    0x30(%rsp),%rax
  0.07%    0.12%     0x00007fb441222589: mov    0x9c(%rsp),%r13d
  0.10%    0.10%     0x00007fb441222591: mov    0x94(%rsp),%r10d   ;*aload
                                                                   ; - com.google.re2j.Machine::step@207 (line 315)
  2.10%    2.76%  ↗  0x00007fb441222599: inc    %r10d              ;*iinc
                  │                                                ; - com.google.re2j.Machine::step@218 (line 282)
  0.16%    0.29%  │  0x00007fb44122259c: cmp    %r13d,%r10d
                  │  0x00007fb44122259f: jge    0x00007fb441222a33  ;*aload_0
                  │                                                ; - com.google.re2j.Machine::step@25 (line 285)
  0.27%    0.24%  │  0x00007fb4412225a5: mov    0x8(%rsp),%r8
  0.40%    0.32%  │  0x00007fb4412225aa: movzbl 0x11(%r8),%r8d     ;*getfield captures
                  │                                                ; - com.google.re2j.Machine::step@26 (line 285)
  3.35%    3.22%  │  0x00007fb4412225af: test   %r8d,%r8d
                  │  0x00007fb4412225b2: jne    0x00007fb441222b95  ;*ifne
                  │                                                ; - com.google.re2j.Machine::step@29 (line 285)
  0.76%    0.76%  │  0x00007fb4412225b8: mov    0x20(%rax),%ebp    ;*getfield denseThreadsInstructions
                  │                                                ; - com.google.re2j.Machine::step@82 (line 295)
  0.45%    0.48%  │  0x00007fb4412225bb: mov    0xc(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007fb4412236dd
  0.78%    0.81%  │  0x00007fb4412225c0: cmp    %r8d,%r10d
                  │  0x00007fb4412225c3: jae    0x00007fb441222b6d
  1.77%    2.03%  │  0x00007fb4412225c9: lea    (%r12,%rbp,8),%r8
  0.70%    0.74%  │  0x00007fb4412225cd: mov    0x10(%r8,%r10,4),%r9d  ;*aaload
                  │                                                ; - com.google.re2j.Machine::step@87 (line 295)
  0.88%    0.82%  │  0x00007fb4412225d2: mov    0xc(%r12,%r9,8),%ebp  ;*getfield op
                  │                                                ; - com.google.re2j.Machine::step@92 (line 297)
                  │                                                ; implicit exception: dispatches to 0x00007fb4412236f1
  2.59%    2.10%  │  0x00007fb4412225d7: cmp    $0x6,%ebp
                  │  0x00007fb4412225da: je     0x00007fb441222be9  ;*if_icmpne
                  │                                                ; - com.google.re2j.Machine::step@97 (line 297)
  2.30%    2.21%  │  0x00007fb4412225e0: cmp    $0xa,%ebp
                  │  0x00007fb4412225e3: jne    0x00007fb4412229c2  ;*if_icmpne
                  │                                                ; - com.google.re2j.Inst::matchRune@6 (line 90)
                  │                                                ; - com.google.re2j.Machine::step@181 (line 312)
  0.44%    0.46%  │  0x00007fb4412225e9: mov    0x2c(%r12,%r9,8),%r9d  ;*getfield outInst
                  │                                                ; - com.google.re2j.Machine::step@189 (line 313)
  0.14%    0.05%  │  0x00007fb4412225ee: mov    0x8(%r12,%r9,8),%ebx  ; implicit exception: dispatches to 0x00007fb441223701
  0.82%    0.53%  │  0x00007fb4412225f3: lea    (%r12,%r9,8),%r8
  0.07%    0.07%  │  0x00007fb4412225f7: cmp    $0xf8019843,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                  │  0x00007fb4412225fd: jne    0x00007fb441222a63  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Machine::step@202 (line 313)
  0.59%    0.58%  │  0x00007fb441222603: mov    0x18(%r8),%edx     ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 175)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.09%    0.06%  │  0x00007fb441222607: mov    0x10(%r11),%r9     ;*getfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
                  │                                                ; implicit exception: dispatches to 0x00007fb441223719
  0.01%    0.03%  │  0x00007fb44122260b: cmp    $0x40,%edx
                  │  0x00007fb44122260e: jg     0x00007fb441222e91  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.40%    0.44%  │  0x00007fb441222614: mov    $0x1,%edi
  0.14%    0.16%  │  0x00007fb441222619: mov    %edx,%ecx
  0.03%    0.03%  │  0x00007fb44122261b: shl    %cl,%rdi           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  1.08%    0.85%  │  0x00007fb44122261e: mov    %r9,%rcx
  0.00%    0.00%  │  0x00007fb441222621: and    %rdi,%rcx
  0.00%    0.04%  │  0x00007fb441222624: test   %rcx,%rcx
                  ╰  0x00007fb441222627: jne    0x00007fb441222599  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.35%    0.37%     0x00007fb44122262d: cmp    $0x40,%edx
                     0x00007fb441222630: jge    0x00007fb441222ef1  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.27%    0.21%     0x00007fb441222636: mov    %r12b,0x18(%r11)   ;*putfield empty
                                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.02%     0x00007fb44122263a: mov    0x2c(%r8),%ebp     ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.02%     0x00007fb44122263e: or     %r9,%rdi           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.39%    0.29%     0x00007fb441222641: mov    %rdi,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.31%    0.23%     0x00007fb441222645: mov    0x8(%r12,%rbp,8),%r9d  ; implicit exception: dispatches to 0x00007fb44122372d
  1.08%    1.06%     0x00007fb44122264a: cmp    $0xf8019909,%r9d   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007fb441222651: jne    0x00007fb441222c9d
  0.59%    0.49%     0x00007fb441222657: lea    (%r12,%rbp,8),%r9  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.04%     0x00007fb44122265b: mov    0x18(%r9),%ecx     ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.28%    0.17%     0x00007fb44122265f: cmp    $0x40,%ecx
                     0x00007fb441222662: jg     0x00007fb441222f51  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.44%    0.17%     0x00007fb441222668: mov    $0x1,%ebx
  0.25%    0.16%     0x00007fb44122266d: shl    %cl,%rbx           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.94%    0.52%     0x00007fb441222670: mov    %rdi,%rdx
  0.16%    0.15%     0x00007fb441222673: and    %rbx,%rdx          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%              0x00007fb441222676: test   %rdx,%rdx
                     0x00007fb441222679: jne    0x00007fb441222b1a  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.20%    0.15%     0x00007fb44122267f: xor    %ebp,%ebp          ;*ireturn
                                                                   ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.21%    0.12%     0x00007fb441222681: test   %rdx,%rdx
                     0x00007fb441222684: jne    0x00007fb441222fb1  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.29%    0.21%     0x00007fb44122268a: cmp    $0x40,%ecx
                     0x00007fb44122268d: jge    0x00007fb44122300d  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.00%     0x00007fb441222693: or     %rbx,%rdi          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.02%     0x00007fb441222696: mov    %rdi,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.31%    0.20%     0x00007fb44122269a: mov    0x20(%r11),%ebx    ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.33%    0.17%     0x00007fb44122269e: mov    0xc(%r11),%ecx     ;*getfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%              0x00007fb4412226a2: mov    %ecx,%edx
  0.05%    0.07%     0x00007fb4412226a4: inc    %edx               ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.32%    0.17%     0x00007fb4412226a6: mov    %edx,0xc(%r11)     ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.35%    0.20%     0x00007fb4412226aa: mov    0xc(%r12,%rbx,8),%r14d  ; implicit exception: dispatches to 0x00007fb441223745
  0.01%    0.01%     0x00007fb4412226af: cmp    %r14d,%ecx
                     0x00007fb4412226b2: jae    0x00007fb441222c3d
  0.02%    0.03%     0x00007fb4412226b8: mov    0x8(%r12,%rbx,8),%esi
  0.24%    0.14%     0x00007fb4412226bd: cmp    $0xf8019807,%esi   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                     0x00007fb4412226c3: jne    0x00007fb441222cf9  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.34%    0.32%     0x00007fb4412226c9: mov    0x34(%r8),%r8d     ;*getfield inst2
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@41 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%              0x00007fb4412226cd: mov    %r9,%rsi
  0.04%    0.04%     0x00007fb4412226d0: shr    $0x3,%rsi          ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.24%    0.15%     0x00007fb4412226d4: lea    (%r12,%rbx,8),%r9  ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.24%    0.36%     0x00007fb4412226d8: lea    0x10(%r9,%rcx,4),%rbp
  0.03%    0.00%     0x00007fb4412226dd: mov    %esi,0x0(%rbp)
  0.06%    0.06%     0x00007fb4412226e0: mov    %rbp,%rsi
  0.29%    0.24%     0x00007fb4412226e3: shr    $0x9,%rsi
  0.21%    0.35%     0x00007fb4412226e7: movabs $0x7fb451f2f000,%rbp
  0.01%              0x00007fb4412226f1: mov    %r12b,0x0(%rbp,%rsi,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.13%    0.12%     0x00007fb4412226f6: mov    0x8(%r12,%r8,8),%esi  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                                                                   ; implicit exception: dispatches to 0x00007fb441223761
  0.26%    0.26%     0x00007fb4412226fb: vmovd  %edx,%xmm2
  0.23%    0.32%     0x00007fb4412226ff: vmovd  %ebx,%xmm1
  0.02%    0.01%     0x00007fb441222703: mov    %r10d,0x94(%rsp)
  0.09%    0.06%     0x00007fb44122270b: mov    %r13d,0x9c(%rsp)
  0.23%    0.26%     0x00007fb441222713: mov    %r11,%r13
  0.29%    0.31%     0x00007fb441222716: mov    %rax,0x30(%rsp)
  0.03%    0.02%     0x00007fb44122271b: mov    %ecx,%eax
  0.11%    0.07%     0x00007fb44122271d: movslq %ecx,%r10
  0.32%    0.16%     0x00007fb441222720: lea    (%r9,%r10,4),%rbx  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.25%    0.24%     0x00007fb441222724: mov    %rbx,%rdx
  0.01%    0.01%     0x00007fb441222727: add    $0x14,%rdx         ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.09%    0.09%     0x00007fb44122272b: lea    (%r12,%r8,8),%r11
  0.30%    0.20%     0x00007fb44122272f: mov    %ecx,%r10d
  0.31%    0.14%     0x00007fb441222732: add    $0x2,%r10d         ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.03%     0x00007fb441222736: cmp    $0xf8019885,%esi   ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                     0x00007fb44122273c: jne    0x00007fb4412224ff  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.09%    0.05%     0x00007fb441222742: vmovq  %r11,%xmm0
  0.32%    0.33%     0x00007fb441222747: mov    0x18(%r11),%r11d   ;*getfield pc
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@2 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.28%    0.23%     0x00007fb44122274b: mov    %r11d,%ecx
  0.01%    0.04%     0x00007fb44122274e: cmp    $0x40,%r11d
                     0x00007fb441222752: jg     0x00007fb441223171  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.06%    0.04%     0x00007fb441222758: mov    $0x1,%r8d
  0.28%    0.18%     0x00007fb44122275e: shl    %cl,%r8            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.42%    0.15%     0x00007fb441222761: mov    %rdi,%r11
  0.34%    0.15%     0x00007fb441222764: and    %r8,%r11           ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.29%    0.06%     0x00007fb441222767: test   %r11,%r11
                     0x00007fb44122276a: jne    0x00007fb441222b24  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.01%     0x00007fb441222770: xor    %ebp,%ebp          ;*ireturn
                                                                   ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.03%     0x00007fb441222772: test   %r11,%r11
                     0x00007fb441222775: jne    0x00007fb4412231a1  ;*ifeq
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@8 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.27%    0.17%     0x00007fb44122277b: mov    %ecx,%r11d
  0.30%    0.05%     0x00007fb44122277e: cmp    $0x40,%r11d
                     0x00007fb441222782: jge    0x00007fb4412231c5  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.02%     0x00007fb441222788: or     %r8,%rdi           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.09%    0.09%     0x00007fb44122278b: mov    %rdi,0x10(%r13)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.21%    0.16%     0x00007fb44122278f: vmovq  %xmm0,%r11
  0.28%    0.17%     0x00007fb441222794: mov    0x2c(%r11),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@83 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.04%     0x00007fb441222798: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007fb441223799
  0.13%    0.12%     0x00007fb44122279d: cmp    $0xf8019843,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                     0x00007fb4412227a4: jne    0x00007fb441222e51
  0.34%    0.21%     0x00007fb4412227aa: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.31%    0.30%     0x00007fb4412227ae: vmovq  %r11,%xmm0
  0.00%              0x00007fb4412227b3: mov    0x18(%r11),%r11d   ;*getfield pc
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.08%    0.05%     0x00007fb4412227b7: vmovd  %r11d,%xmm3
  0.41%    0.03%     0x00007fb4412227bc: cmp    $0x40,%r11d
  0.21%    0.21%     0x00007fb4412227c0: jg     0x00007fb441223271  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.09%    0.05%     0x00007fb4412227c6: mov    $0x1,%r8d
  0.07%    0.02%     0x00007fb4412227cc: mov    %r11d,%ecx
  0.31%    0.36%     0x00007fb4412227cf: shl    %cl,%r8            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.34%    0.59%     0x00007fb4412227d2: mov    %rdi,%r11
  0.30%    0.47%     0x00007fb4412227d5: and    %r8,%r11
  0.33%    0.42%     0x00007fb4412227d8: test   %r11,%r11
                     0x00007fb4412227db: jne    0x00007fb441222b3d  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.07%     0x00007fb4412227e1: mov    %ecx,%r11d
  0.05%    0.11%     0x00007fb4412227e4: cmp    $0x40,%r11d
                     0x00007fb4412227e8: jge    0x00007fb4412232a1  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.27%    0.27%     0x00007fb4412227ee: vmovq  %xmm0,%r11
  0.24%    0.30%     0x00007fb4412227f3: mov    0x2c(%r11),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.06%    0.06%     0x00007fb4412227f7: or     %r8,%rdi           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.06%    0.07%     0x00007fb4412227fa: mov    %rdi,0x10(%r13)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.26%    0.35%     0x00007fb4412227fe: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007fb4412237b1
  0.41%    0.66%     0x00007fb441222803: cmp    $0xf8019909,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007fb44122280a: jne    0x00007fb441222e71
  0.13%    0.15%     0x00007fb441222810: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.06%    0.06%     0x00007fb441222814: vmovq  %r11,%xmm3
  0.23%    0.36%     0x00007fb441222819: mov    0x18(%r11),%r11d   ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.26%    0.33%     0x00007fb44122281d: mov    %r11d,%ecx
  0.14%    0.15%     0x00007fb441222820: cmp    $0x40,%r11d
                     0x00007fb441222824: jg     0x00007fb4412232d1  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.13%    0.07%     0x00007fb44122282a: mov    $0x1,%r8d
  0.19%    0.23%     0x00007fb441222830: shl    %cl,%r8            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.58%    0.62%     0x00007fb441222833: mov    %rdi,%r11
  0.21%    0.21%     0x00007fb441222836: and    %r8,%r11           ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.18%    0.18%     0x00007fb441222839: test   %r11,%r11
                     0x00007fb44122283c: jne    0x00007fb441222b45  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.19%    0.20%     0x00007fb441222842: xor    %ebp,%ebp          ;*ireturn
                                                                   ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.09%    0.05%     0x00007fb441222844: test   %r11,%r11
                     0x00007fb441222847: jne    0x00007fb441223305  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.28%    0.37%     0x00007fb44122284d: mov    %ecx,%r11d
  0.19%    0.23%     0x00007fb441222850: cmp    $0x40,%r11d
                     0x00007fb441222854: jge    0x00007fb44122332d  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.09%    0.14%     0x00007fb44122285a: mov    %r10d,0xc(%r13)    ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.09%    0.12%     0x00007fb44122285e: or     %r8,%rdi           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.38%    0.35%     0x00007fb441222861: mov    %rdi,0x10(%r13)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.19%    0.21%     0x00007fb441222865: cmp    %r14d,%r10d
                     0x00007fb441222868: jae    0x00007fb441222df5  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.10%    0.08%     0x00007fb44122286e: vmovq  %xmm0,%r10
  0.10%    0.05%     0x00007fb441222873: mov    0x34(%r10),%r11d   ;*getfield inst2
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@41 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.37%    0.37%     0x00007fb441222877: mov    %rdx,%r10
  0.17%    0.18%     0x00007fb44122287a: vmovq  %xmm3,%r8
  0.08%    0.17%     0x00007fb44122287f: shr    $0x3,%r8
  0.07%    0.06%     0x00007fb441222883: mov    %r8d,(%rdx)
  0.37%    0.42%     0x00007fb441222886: shr    $0x9,%r10
  0.13%    0.27%     0x00007fb44122288a: movabs $0x7fb451f2f000,%r8
  0.08%    0.09%     0x00007fb441222894: mov    %r12b,(%r8,%r10,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.08%    0.08%     0x00007fb441222898: mov    0x8(%r12,%r11,8),%r8d  ; implicit exception: dispatches to 0x00007fb4412237c9
  0.32%    0.40%     0x00007fb44122289d: lea    (%r12,%r11,8),%r10
  0.18%    0.22%     0x00007fb4412228a1: cmp    $0xf8019885,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                     0x00007fb4412228a8: jne    0x00007fb441222943  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007fb4412228ae: mov    0x18(%r10),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@2 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
....................................................................................................
 45.75%   42.75%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 540 (923 bytes) 

                            0x00007fb44123af69: mov    %r10d,%ebx
                            0x00007fb44123af6c: mov    %r11d,0x30(%rsp)
                            0x00007fb44123af71: mov    $0x5,%r10d         ;*iload_1
                                                                          ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                                                                          ; - com.google.re2j.Machine::match@121 (line 205)
                            0x00007fb44123af77: cmp    $0xa,%edi
                            0x00007fb44123af7a: je     0x00007fb44123b89b  ;*iload_0
                                                                          ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                                                                          ; - com.google.re2j.Machine::match@121 (line 205)
                            0x00007fb44123af80: mov    %edi,%r8d
           0.01%            0x00007fb44123af83: add    $0xffffffbf,%r8d
                            0x00007fb44123af87: cmp    $0x1a,%r8d
                  ╭         0x00007fb44123af8b: jb     0x00007fb44123af9e  ;*if_icmple
                  │                                                       ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │                                                       ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                       ; - com.google.re2j.Machine::match@121 (line 205)
                  │         0x00007fb44123af8d: mov    %edi,%r11d
                  │         0x00007fb44123af90: add    $0xffffff9f,%r11d
  0.01%           │         0x00007fb44123af94: cmp    $0x1a,%r11d
                  │         0x00007fb44123af98: jae    0x00007fb44123b8b2  ;*iconst_1
                  │                                                       ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │                                                       ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                       ; - com.google.re2j.Machine::match@121 (line 205)
           0.00%  ↘         0x00007fb44123af9e: or     $0x10,%r10d        ;*iload_2
                                                                          ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                          ; - com.google.re2j.Machine::match@121 (line 205)
                            0x00007fb44123afa2: movzbl 0x11(%r13),%r9d    ;*getfield captures
                                                                          ; - com.google.re2j.Machine::match@283 (line 240)
  0.01%    0.01%            0x00007fb44123afa7: mov    %rcx,%r11
  0.00%    0.01%            0x00007fb44123afaa: shl    $0x3,%r11          ;*getfield q1
                                                                          ; - com.google.re2j.Machine::match@53 (line 192)
                            0x00007fb44123afae: mov    %r11,0x60(%rsp)
                            0x00007fb44123afb3: xor    %eax,%eax
                            0x00007fb44123afb5: xor    %r8d,%r8d
           0.01%            0x00007fb44123afb8: mov    %r8d,0x5c(%rsp)
           0.00%   ╭        0x00007fb44123afbd: jmpq   0x00007fb44123b147
  0.09%    0.13%   │   ↗    0x00007fb44123afc2: or     $0x20,%r9d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                   │   │                                                  ; - com.google.re2j.Machine::match@322 (line 245)
  0.14%    0.17%   │   │    0x00007fb44123afc6: mov    %r9d,0x2c(%rsp)    ;*iload_2
                   │   │                                                  ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   │   │                                                  ; - com.google.re2j.Machine::match@322 (line 245)
  0.39%    0.42%   │   │↗   0x00007fb44123afcb: cmp    0x14(%rsp),%eax
                   │   ││   0x00007fb44123afcf: je     0x00007fb44123b7c8  ;*if_icmpne
                   │   ││                                                 ; - com.google.re2j.Machine::match@347 (line 246)
  0.46%    0.46%   │   ││   0x00007fb44123afd5: xor    %ebx,%ebx          ;*invokespecial step
                   │   ││                                                 ; - com.google.re2j.Machine::match@355 (line 246)
  0.05%    0.09%   │   ││   0x00007fb44123afd7: mov    %rax,-0x8(%rsp)
  0.19%    0.18%   │   ││   0x00007fb44123afdc: mov    0x5c(%rsp),%eax
  0.14%    0.12%   │   ││   0x00007fb44123afe0: mov    %eax,0x38(%rsp)
  0.52%    0.41%   │   ││   0x00007fb44123afe4: mov    -0x8(%rsp),%rax
  0.45%    0.24%   │   ││   0x00007fb44123afe9: mov    %r10d,0x20(%rsp)   ;*invokevirtual endPos
                   │   ││                                                 ; - com.google.re2j.Machine::match@344 (line 246)
  0.27%    0.18%   │   ││   0x00007fb44123afee: add    0x28(%rsp),%eax    ;*iadd
                   │   ││                                                 ; - com.google.re2j.Machine::match@336 (line 246)
  0.35%    0.27%   │   ││   0x00007fb44123aff2: mov    %eax,0x5c(%rsp)
  0.24%    0.20%   │   ││   0x00007fb44123aff6: mov    0x50(%rsp),%rsi
  0.05%    0.05%   │   ││   0x00007fb44123affb: mov    0x18(%rsp),%rdx
  0.20%    0.18%   │   ││   0x00007fb44123b000: mov    0x60(%rsp),%rcx
  0.18%    0.24%   │   ││   0x00007fb44123b005: mov    0x38(%rsp),%r8d
  0.31%    0.25%   │   ││   0x00007fb44123b00a: mov    %eax,%r9d
  0.04%    0.06%   │   ││   0x00007fb44123b00d: mov    0x2c(%rsp),%r11d
  0.15%    0.09%   │   ││   0x00007fb44123b012: mov    %r11d,(%rsp)
  0.19%    0.14%   │   ││   0x00007fb44123b016: mov    0x3c(%rsp),%r11d
  0.27%    0.21%   │   ││   0x00007fb44123b01b: mov    %r11d,0x8(%rsp)
  0.04%    0.12%   │   ││   0x00007fb44123b020: mov    %ebx,0x10(%rsp)
  0.19%    0.15%   │   ││   0x00007fb44123b024: data16 xchg %ax,%ax
  0.21%    0.23%   │   ││   0x00007fb44123b027: callq  0x00007fb441046020  ; OopMap{[24]=Oop [52]=NarrowOop [72]=Oop [80]=Oop [96]=Oop off=652}
                   │   ││                                                 ;*invokespecial step
                   │   ││                                                 ; - com.google.re2j.Machine::match@355 (line 246)
                   │   ││                                                 ;   {optimized virtual_call}
           0.00%   │   ││   0x00007fb44123b02c: mov    0x50(%rsp),%r10
  0.56%    0.89%   │   ││   0x00007fb44123b031: movzbl 0x11(%r10),%r9d    ;*getfield captures
                   │   ││                                                 ; - com.google.re2j.Machine::match@367 (line 250)
  0.02%    0.00%   │   ││   0x00007fb44123b036: movzbl 0x10(%r10),%eax    ;*getfield matched
                   │   ││                                                 ; - com.google.re2j.Machine::match@374 (line 250)
                   │   ││   0x00007fb44123b03b: mov    0x28(%rsp),%r8d
  0.66%    0.77%   │   ││   0x00007fb44123b040: test   %r8d,%r8d
                   │   ││   0x00007fb44123b043: je     0x00007fb44123b788  ;*ifne
                   │   ││                                                 ; - com.google.re2j.Machine::match@360 (line 247)
                   │   ││   0x00007fb44123b049: test   %r9d,%r9d
                   │   ││   0x00007fb44123b04c: jne    0x00007fb44123bb41  ;*ifne
                   │   ││                                                 ; - com.google.re2j.Machine::match@370 (line 250)
  0.00%    0.01%   │   ││   0x00007fb44123b052: test   %eax,%eax
                   │   ││   0x00007fb44123b054: jne    0x00007fb44123bd35  ;*ifeq
                   │   ││                                                 ; - com.google.re2j.Machine::match@377 (line 250)
                   │   ││   0x00007fb44123b05a: mov    0x48(%rsp),%rdx
  0.60%    0.78%   │   ││   0x00007fb44123b05f: mov    0x10(%rdx),%ecx    ;*getfield end
                   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                   │   ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.01%    0.01%   │   ││   0x00007fb44123b062: mov    0xc(%rdx),%r11d    ;*getfield start
                   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                   │   ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.01%    0.00%   │   ││   0x00007fb44123b066: mov    %r11d,0x24(%rsp)
  0.01%            │   ││   0x00007fb44123b06b: mov    0x14(%rdx),%r11d   ;*getfield str
                   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                   │   ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.69%    0.82%   │   ││   0x00007fb44123b06f: mov    0x20(%rsp),%ebp
                   │   ││   0x00007fb44123b073: cmp    $0xffffffff,%ebp
                   │   ││   0x00007fb44123b076: je     0x00007fb44123b7d2  ;*if_icmpeq
                   │   ││                                                 ; - com.google.re2j.Machine::match@399 (line 258)
  0.01%    0.00%   │   ││   0x00007fb44123b07c: mov    0x30(%rsp),%ebx
  0.00%    0.00%   │   ││   0x00007fb44123b080: add    0x5c(%rsp),%ebx
  0.66%    0.80%   │   ││   0x00007fb44123b084: add    0x24(%rsp),%ebx    ;*iadd
                   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                   │   ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.10%    0.10%   │   ││   0x00007fb44123b088: cmp    %ecx,%ebx
                   │   ││   0x00007fb44123b08a: jge    0x00007fb44123b7e1  ;*if_icmpge
                   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                   │   ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.02%    0.03%   │   ││   0x00007fb44123b090: mov    %ebp,%r14d
                   │   ││   0x00007fb44123b093: mov    %r10,%rdi
  0.65%    0.77%   │   ││   0x00007fb44123b096: mov    0x8(%r12,%r11,8),%r8d  ; implicit exception: dispatches to 0x00007fb44123ca1d
  0.02%    0.01%   │   ││   0x00007fb44123b09b: cmp    $0xf80002da,%r8d   ;   {metadata(&apos;java/lang/String&apos;)}
                   │   ││   0x00007fb44123b0a2: jne    0x00007fb44123ba55
  0.01%    0.01%   │   ││   0x00007fb44123b0a8: lea    (%r12,%r11,8),%r13  ;*invokeinterface charAt
                   │   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │   ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
           0.00%   │   ││   0x00007fb44123b0ac: test   %ebx,%ebx
                   │   ││   0x00007fb44123b0ae: jl     0x00007fb44123bb81  ;*iflt
                   │   ││                                                 ; - java.lang.String::charAt@1 (line 657)
                   │   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │   ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.65%    0.63%   │   ││   0x00007fb44123b0b4: mov    0xc(%r13),%r8d     ;*getfield value
                   │   ││                                                 ; - java.lang.String::charAt@6 (line 657)
                   │   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │   ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.01%    0.01%   │   ││   0x00007fb44123b0b8: mov    0xc(%r12,%r8,8),%ebp  ;*arraylength
                   │   ││                                                 ; - java.lang.String::charAt@9 (line 657)
                   │   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │   ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
                   │   ││                                                 ; implicit exception: dispatches to 0x00007fb44123ca31
  0.38%    0.49%   │   ││   0x00007fb44123b0bd: cmp    %ebp,%ebx
                   │   ││   0x00007fb44123b0bf: jge    0x00007fb44123bd75  ;*if_icmplt
                   │   ││                                                 ; - java.lang.String::charAt@10 (line 657)
                   │   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │   ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.42%    0.45%   │   ││   0x00007fb44123b0c5: cmp    %ebp,%ebx
                   │   ││   0x00007fb44123b0c7: jae    0x00007fb44123b951
  0.43%    0.33%   │   ││   0x00007fb44123b0cd: lea    (%r12,%r8,8),%r10
  0.01%            │   ││   0x00007fb44123b0d1: movzwl 0x10(%r10,%rbx,2),%r8d  ;*caload
                   │   ││                                                 ; - java.lang.String::charAt@27 (line 660)
                   │   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │   ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.12%    0.14%   │   ││   0x00007fb44123b0d7: cmp    $0xd800,%r8d
                   │   ││   0x00007fb44123b0de: jge    0x00007fb44123bdd9  ;*if_icmplt
                   │   ││                                                 ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   │   ││                                                 ; - java.lang.Character::codePointAt@9 (line 4867)
                   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │   ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.49%    0.43%   │   ││   0x00007fb44123b0e4: shl    $0x3,%r8d          ;*ishl
                   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                   │   ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.30%    0.26%   │   ││   0x00007fb44123b0e8: mov    %r8d,%ebx
                   │   ││   0x00007fb44123b0eb: or     $0x1,%ebx
  0.39%    0.37%   │   ││   0x00007fb44123b0ee: and    $0x7,%r8d
  0.16%    0.16%   │   ││   0x00007fb44123b0f2: sar    $0x3,%ebx          ;*ishr
                   │   ││                                                 ; - com.google.re2j.Machine::match@415 (line 260)
  0.44%    0.48%   │   ││   0x00007fb44123b0f5: or     $0x1,%r8d          ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                   │   ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.02%    0.03%   │   ││   0x00007fb44123b0f9: mov    %rdi,%r10
                   │   ││   0x00007fb44123b0fc: mov    %r14d,%ebp         ;*aload
                   │   ││                                                 ; - com.google.re2j.Machine::match@425 (line 263)
  0.15%    0.12%   │   ││   0x00007fb44123b0ff: mov    %r10,%r13          ; OopMap{r10=Oop r11=NarrowOop r13=Oop [24]=Oop [72]=Oop [96]=Oop off=866}
                   │   ││                                                 ;*goto
                   │   ││                                                 ; - com.google.re2j.Machine::match@437 (line 266)
  0.46%    0.46%   │   ││   0x00007fb44123b102: test   %eax,0x182ebef8(%rip)        # 0x00007fb459527000
                   │   ││                                                 ;*goto
                   │   ││                                                 ; - com.google.re2j.Machine::match@437 (line 266)
                   │   ││                                                 ;   {poll}
  0.02%    0.02%   │   ││   0x00007fb44123b108: mov    0x28(%r10),%r14d   ;*getfield matchcap
                   │   ││                                                 ; - com.google.re2j.Machine::match@307 (line 243)
           0.01%   │   ││   0x00007fb44123b10c: mov    0x14(%r10),%esi    ;*getfield re2
                   │   ││                                                 ; - com.google.re2j.Machine::match@169 (line 220)
  0.13%    0.12%   │   ││   0x00007fb44123b110: mov    0x60(%rsp),%r10
  0.40%    0.50%   │   ││   0x00007fb44123b115: mov    %r10,%rdi
  0.02%    0.01%   │   ││   0x00007fb44123b118: shr    $0x3,%rdi
                   │   ││   0x00007fb44123b11c: mov    %edi,0x34(%rsp)
  0.14%    0.14%   │   ││   0x00007fb44123b120: mov    %ebp,%edi
  0.52%    0.54%   │   ││   0x00007fb44123b122: mov    0x2c(%rsp),%r10d
  0.05%    0.02%   │   ││   0x00007fb44123b127: mov    0x18(%rsp),%rdx
  0.01%    0.00%   │   ││   0x00007fb44123b12c: mov    %rdx,0x60(%rsp)
  0.11%    0.18%   │   ││   0x00007fb44123b131: mov    0x30(%rsp),%ebp
  0.43%    0.51%   │   ││   0x00007fb44123b135: mov    %ebp,0x28(%rsp)
  0.04%    0.04%   │   ││   0x00007fb44123b139: mov    %r8d,0x30(%rsp)
  0.01%    0.02%   │   ││   0x00007fb44123b13e: mov    %ecx,0x14(%rsp)
  0.18%    0.18%   │   ││   0x00007fb44123b142: vmovd  %r11d,%xmm2        ;*getfield matchcap
                   │   ││                                                 ; - com.google.re2j.Machine::match@307 (line 243)
  0.44%    0.67%   ↘   ││   0x00007fb44123b147: mov    0x34(%rsp),%r11d
  0.10%    0.08%       ││   0x00007fb44123b14c: movzbl 0x18(%r12,%r11,8),%r8d  ; implicit exception: dispatches to 0x00007fb44123c9c5
  0.07%    0.00%       ││   0x00007fb44123b152: shl    $0x3,%r11          ;*aload
                       ││                                                 ; - com.google.re2j.Machine::match@136 (line 211)
  0.15%    0.15%       ││   0x00007fb44123b156: mov    %r11,0x18(%rsp)
  0.52%    0.64%       ││   0x00007fb44123b15b: test   %r8d,%r8d
                       ││   0x00007fb44123b15e: jne    0x00007fb44123b3e3  ;*aload_0
                       ││                                                 ; - com.google.re2j.Machine::match@267 (line 237)
  0.01%    0.04%       ││   0x00007fb44123b164: test   %eax,%eax
                       ││   0x00007fb44123b166: jne    0x00007fb44123bab1  ;*ifne
                       ││                                                 ; - com.google.re2j.Machine::match@271 (line 237)
  0.01%                ││   0x00007fb44123b16c: mov    0x5c(%rsp),%r11d
  0.13%    0.12%       ││   0x00007fb44123b171: test   %r11d,%r11d
                       ││   0x00007fb44123b174: je     0x00007fb44123b866  ;*ifeq
                       ││                                                 ; - com.google.re2j.Machine::match@275 (line 237)
  0.55%    0.64%       ││   0x00007fb44123b17a: mov    0x3c(%rsp),%edx
  0.03%    0.03%       ││   0x00007fb44123b17e: test   %edx,%edx
           0.00%       ││   0x00007fb44123b180: jne    0x00007fb44123baf9  ;*aload_0
                       ││                                                 ; - com.google.re2j.Machine::match@282 (line 240)
  0.16%    0.17%       ││   0x00007fb44123b186: test   %r9d,%r9d
                       ││   0x00007fb44123b189: jne    0x00007fb44123bbe5  ;*ifeq
                       ││                                                 ; - com.google.re2j.Machine::match@286 (line 240)
  0.50%    0.53%       ││   0x00007fb44123b18f: mov    %r13,%r9
  0.05%    0.02%       ││   0x00007fb44123b192: mov    0x18(%r13),%r8d    ;*getfield prog
                       ││                                                 ; - com.google.re2j.Machine::match@297 (line 243)
  0.01%                ││   0x00007fb44123b196: mov    0x1c(%r12,%r8,8),%ebp  ;*getfield startInst
                       ││                                                 ; - com.google.re2j.Machine::match@300 (line 243)
                       ││                                                 ; implicit exception: dispatches to 0x00007fb44123c9d5
  0.20%    0.15%       ││   0x00007fb44123b19b: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007fb44123c9e5
  0.54%    0.65%       ││   0x00007fb44123b1a0: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                       ││   0x00007fb44123b1a6: jne    0x00007fb44123b9ad
  0.14%    0.15%       ││   0x00007fb44123b1ac: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                       ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
           0.00%       ││   0x00007fb44123b1b0: mov    0x18(%r10),%ecx    ;*getfield pc
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                       ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.11%    0.17%       ││   0x00007fb44123b1b4: cmp    $0x40,%ecx
                       ││   0x00007fb44123b1b7: jg     0x00007fb44123bc25  ;*if_icmpgt
                       ││                                                 ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                       ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.44%    0.57%       ││   0x00007fb44123b1bd: mov    %r10,%r13
  0.08%    0.10%       ││   0x00007fb44123b1c0: mov    0x5c(%rsp),%eax
  0.01%    0.01%       ││   0x00007fb44123b1c4: mov    %edx,0x3c(%rsp)
  0.16%    0.17%       ││   0x00007fb44123b1c8: mov    %r9,0x50(%rsp)
  0.42%    0.49%       ││   0x00007fb44123b1cd: mov    $0x1,%r10d
  0.10%    0.10%       ││   0x00007fb44123b1d3: shl    %cl,%r10           ;*lshl
                       ││                                                 ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                       ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.58%    0.63%       ││   0x00007fb44123b1d6: mov    0x34(%rsp),%r8d
  0.15%    0.09%       ││   0x00007fb44123b1db: mov    0x10(%r12,%r8,8),%r9  ;*getfield pcsl
                       ││                                                 ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                       ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.00%    0.01%       ││   0x00007fb44123b1e0: mov    %r9,%r8
  0.16%    0.13%       ││   0x00007fb44123b1e3: and    %r10,%r8           ;*land
                       ││                                                 ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                       ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.39%    0.40%       ││   0x00007fb44123b1e6: test   %r8,%r8
                       ││   0x00007fb44123b1e9: jne    0x00007fb44123b86f  ;*ifeq
                       ││                                                 ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                       ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.11%    0.14%       ││   0x00007fb44123b1ef: xor    %ebp,%ebp          ;*ireturn
                       ││                                                 ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                       ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
                       ││   0x00007fb44123b1f1: test   %r8,%r8
                       ││   0x00007fb44123b1f4: jne    0x00007fb44123bc81  ;*ifeq
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                       ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.12%    0.10%       ││   0x00007fb44123b1fa: cmp    $0x40,%ecx
                       ││   0x00007fb44123b1fd: jge    0x00007fb44123bcdd  ;*if_icmpge
                       ││                                                 ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                       ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.50%    0.44%       ││   0x00007fb44123b203: mov    0x34(%rsp),%r8d
  0.12%    0.09%       ││   0x00007fb44123b208: mov    %r12b,0x18(%r12,%r8,8)  ;*putfield empty
                       ││                                                 ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                       ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.02%    0.02%       ││   0x00007fb44123b20d: mov    0xc(%r12,%r8,8),%r11d  ;*getfield size
                       ││                                                 ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                       ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.14%    0.08%       ││   0x00007fb44123b212: mov    0x20(%r12,%r8,8),%r8d  ;*getfield denseThreadsInstructions
                       ││                                                 ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                       ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.36%    0.46%       ││   0x00007fb44123b217: or     %r9,%r10
  0.12%    0.15%       ││   0x00007fb44123b21a: mov    0x34(%rsp),%ecx
                       ││   0x00007fb44123b21e: mov    %r10,0x10(%r12,%rcx,8)  ;*putfield pcsl
                       ││                                                 ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                       ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.15%    0.17%       ││   0x00007fb44123b223: mov    %r11d,%r9d
  0.44%    0.37%       ││   0x00007fb44123b226: inc    %r9d
  0.09%    0.05%       ││   0x00007fb44123b229: mov    %r9d,0xc(%r12,%rcx,8)  ;*putfield size
                       ││                                                 ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                       ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.02%    0.01%       ││   0x00007fb44123b22e: mov    0xc(%r12,%r8,8),%r9d  ; implicit exception: dispatches to 0x00007fb44123ca05
  0.15%    0.27%       ││   0x00007fb44123b233: cmp    %r9d,%r11d
                       ││   0x00007fb44123b236: jae    0x00007fb44123b8fb
  0.52%    0.31%       ││   0x00007fb44123b23c: mov    0x8(%r12,%r8,8),%r9d
  0.11%    0.08%       ││   0x00007fb44123b241: cmp    $0xf8019807,%r9d   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                       ││   0x00007fb44123b248: jne    0x00007fb44123b9fd  ;*aastore
                       ││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                       ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.02%    0.05%       ││   0x00007fb44123b24e: test   %edi,%edi
                    ╭  ││   0x00007fb44123b250: jl     0x00007fb44123b2f6  ;*ifge
                    │  ││                                                 ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                    │  ││                                                 ; - com.google.re2j.Machine::match@322 (line 245)
  0.14%    0.07%    │  ││   0x00007fb44123b256: xor    %r9d,%r9d          ;*iload_0
                    │  ││                                                 ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                    │  ││                                                 ; - com.google.re2j.Machine::match@322 (line 245)
  0.50%    0.47%    │  ││↗  0x00007fb44123b259: cmp    $0xa,%edi
                    │  │││  0x00007fb44123b25c: je     0x00007fb44123b655  ;*iload_1
                    │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                    │  │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.08%    0.13%    │  │││  0x00007fb44123b262: mov    %ebx,%r10d
  0.02%    0.03%    │  │││  0x00007fb44123b265: test   %ebx,%ebx
                    │  │││  0x00007fb44123b267: jl     0x00007fb44123b64c  ;*iload_1
                    │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                    │  │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.09%    0.09%    │  │││  0x00007fb44123b26d: cmp    $0xa,%ebx
                    │  │││  0x00007fb44123b270: je     0x00007fb44123b65e  ;*iload_0
                    │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                    │  │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.43%    0.46%    │  │││  0x00007fb44123b276: mov    %r13,%rcx
  0.09%    0.10%    │  │││  0x00007fb44123b279: shr    $0x3,%rcx          ;*aastore
                    │  │││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                    │  │││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                    │  │││                                                ; - com.google.re2j.Machine::match@314 (line 243)
  0.03%    0.05%    │  │││  0x00007fb44123b27d: shl    $0x3,%r8           ;*getfield denseThreadsInstructions
                    │  │││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                    │  │││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                    │  │││                                                ; - com.google.re2j.Machine::match@314 (line 243)
  0.13%    0.11%    │  │││  0x00007fb44123b281: lea    0x10(%r8,%r11,4),%r11
  0.55%    0.44%    │  │││  0x00007fb44123b286: mov    %ecx,(%r11)
  0.70%    0.78%    │  │││  0x00007fb44123b289: mov    %edi,%ecx
  0.02%    0.01%    │  │││  0x00007fb44123b28b: add    $0xffffffbf,%ecx
  0.06%    0.10%    │  │││  0x00007fb44123b28e: shr    $0x9,%r11
  0.30%    0.32%    │  │││  0x00007fb44123b292: movabs $0x7fb451f2f000,%r8
  0.25%    0.40%    │  │││  0x00007fb44123b29c: mov    %r12b,(%r8,%r11,1)  ;*aastore
                    │  │││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                    │  │││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                    │  │││                                                ; - com.google.re2j.Machine::match@314 (line 243)
  0.37%    0.51%    │  │││  0x00007fb44123b2a0: cmp    $0x1a,%ecx
                    │╭ │││  0x00007fb44123b2a3: jb     0x00007fb44123b2b6  ;*if_icmple
                    ││ │││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                    ││ │││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    ││ │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.03%    0.07%    ││ │││  0x00007fb44123b2a5: mov    %edi,%r8d
  0.20%    0.23%    ││ │││  0x00007fb44123b2a8: add    $0xffffff9f,%r8d
  0.23%    0.33%    ││ │││  0x00007fb44123b2ac: cmp    $0x1a,%r8d
                    ││ │││  0x00007fb44123b2b0: jae    0x00007fb44123b823  ;*iconst_1
                    ││ │││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                    ││ │││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    ││ │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.13%    0.18%    │↘ │││  0x00007fb44123b2b6: mov    $0x1,%ebp          ;*ireturn
                    │  │││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                    │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    │  │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.06%    0.11%    │  │││  0x00007fb44123b2bb: mov    %ebx,%r11d
  0.23%    0.23%    │  │││  0x00007fb44123b2be: add    $0xffffffbf,%r11d
  0.24%    0.31%    │  │││  0x00007fb44123b2c2: cmp    $0x1a,%r11d
                    │ ╭│││  0x00007fb44123b2c6: jb     0x00007fb44123b2d9  ;*if_icmple
                    │ ││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                    │ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    │ ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.14%    0.21%    │ ││││  0x00007fb44123b2c8: mov    %ebx,%r8d
  0.09%    0.09%    │ ││││  0x00007fb44123b2cb: add    $0xffffff9f,%r8d
  0.20%    0.30%    │ ││││  0x00007fb44123b2cf: cmp    $0x1a,%r8d
                    │ ││││  0x00007fb44123b2d3: jae    0x00007fb44123b844  ;*iconst_1
                    │ ││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                    │ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    │ ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.20%    0.25%    │ ↘│││  0x00007fb44123b2d9: mov    $0x1,%r11d         ;*ireturn
                    │  │││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                    │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    │  │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.15%    0.18%    │  │││  0x00007fb44123b2df: cmp    %r11d,%ebp
                    │  ╰││  0x00007fb44123b2e2: je     0x00007fb44123afc2  ;*if_icmpeq
                    │   ││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                    │   ││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.16%    0.19%    │   ││  0x00007fb44123b2e8: or     $0x10,%r9d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                    │   ││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.04%    0.06%    │   ││  0x00007fb44123b2ec: mov    %r9d,0x2c(%rsp)
  0.37%    0.44%    │   ╰│  0x00007fb44123b2f1: jmpq   0x00007fb44123afcb
                    ↘    │  0x00007fb44123b2f6: mov    $0x5,%r9d
                         ╰  0x00007fb44123b2fc: jmpq   0x00007fb44123b259
                            0x00007fb44123b301: mov    %r11d,0x54(%rsp)
  0.02%                     0x00007fb44123b306: jmpq   0x00007fb44123b586
                            0x00007fb44123b30b: mov    0x54(%rsp),%r11d
                            0x00007fb44123b310: add    $0x2,%r11d
                            0x00007fb44123b314: mov    %r11d,0x54(%rsp)
                            0x00007fb44123b319: mov    0x54(%rsp),%r11d
  0.00%                     0x00007fb44123b31e: inc    %r11d
                            0x00007fb44123b321: mov    %r11d,0x50(%rsp)
                            0x00007fb44123b326: jmp    0x00007fb44123b353
                            0x00007fb44123b328: mov    0x54(%rsp),%r11d
                            0x00007fb44123b32d: add    $0x2,%r11d
                            0x00007fb44123b331: mov    %r11d,0x50(%rsp)
                            0x00007fb44123b336: jmp    0x00007fb44123b346
                            0x00007fb44123b338: mov    0x54(%rsp),%r11d
                            0x00007fb44123b33d: add    $0x2,%r11d
                            0x00007fb44123b341: mov    %r11d,0x54(%rsp)
           0.00%            0x00007fb44123b346: mov    0x54(%rsp),%r11d
....................................................................................................
 31.14%   33.33%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 500 (466 bytes) 

                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                      ; - com.google.re2j.Machine::step@202 (line 313)
                                                                      ;   {optimized virtual_call}
                        0x00007fb441222930: test   %rax,%rax
                        0x00007fb441222933: jne    0x00007fb441223459  ;*ifnull
                                                                      ; - com.google.re2j.Machine::step@209 (line 315)
                        0x00007fb441222939: mov    0x10(%rsp),%r11
                        0x00007fb44122293e: jmpq   0x00007fb441222584
  0.14%    0.10%        0x00007fb441222943: cmp    $0xf8019909,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                        0x00007fb44122294a: jne    0x00007fb44122312d  ;*invokevirtual add
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.11%    0.06%        0x00007fb441222950: mov    0x18(%r10),%ecx    ;*getfield pc
                                                                      ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.30%    0.27%        0x00007fb441222954: cmp    $0x40,%ecx
                        0x00007fb441222957: jg     0x00007fb4412233dd  ;*if_icmpgt
                                                                      ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.19%    0.06%        0x00007fb44122295d: mov    $0x1,%r11d
  0.05%    0.10%        0x00007fb441222963: shl    %cl,%r11           ;*lshl
                                                                      ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.53%    0.80%        0x00007fb441222966: mov    %rdi,%r8
  0.09%    0.12%        0x00007fb441222969: and    %r11,%r8           ;*land
                                                                      ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.10%    0.11%        0x00007fb44122296c: test   %r8,%r8
                        0x00007fb44122296f: jne    0x00007fb441222b59  ;*ifeq
                                                                      ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.30%    0.41%        0x00007fb441222975: xor    %ebp,%ebp          ;*ireturn
                                                                      ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.15%    0.26%        0x00007fb441222977: test   %r8,%r8
                        0x00007fb44122297a: jne    0x00007fb441223409  ;*ifeq
                                                                      ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.11%    0.10%        0x00007fb441222980: cmp    $0x40,%ecx
                        0x00007fb441222983: jge    0x00007fb44122342d  ;*if_icmpge
                                                                      ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.08%    0.08%        0x00007fb441222989: or     %r11,%rdi
  0.36%    0.36%        0x00007fb44122298c: mov    %r13,%r11
  0.15%    0.25%        0x00007fb44122298f: mov    %rdi,0x10(%r11)    ;*putfield pcsl
                                                                      ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.15%    0.12%        0x00007fb441222993: add    $0x18,%rbx
  0.09%    0.11%        0x00007fb441222997: mov    %r10,%r8
  0.31%    0.37%        0x00007fb44122299a: shr    $0x3,%r8
  0.18%    0.19%        0x00007fb44122299e: mov    %r8d,(%rbx)        ;*aastore
                                                                      ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.09%    0.09%        0x00007fb4412229a1: mov    %rbx,%r10
  0.06%    0.09%        0x00007fb4412229a4: add    $0x3,%eax
  0.35%    0.33%        0x00007fb4412229a7: mov    %eax,0xc(%r11)     ;*putfield size
                                                                      ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.15%    0.19%        0x00007fb4412229ab: shr    $0x9,%r10
  0.09%    0.09%        0x00007fb4412229af: movabs $0x7fb451f2f000,%r8
  0.04%    0.05%        0x00007fb4412229b9: mov    %r12b,(%r8,%r10,1)  ;*aastore
                                                                      ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.35%    0.27%        0x00007fb4412229bd: jmpq   0x00007fb441222584
  0.56%    0.67%        0x00007fb4412229c2: cmp    $0xb,%ebp
                        0x00007fb4412229c5: je     0x00007fb441222d59  ;*if_icmpne
                                                                      ; - com.google.re2j.Inst::matchRune@17 (line 94)
                                                                      ; - com.google.re2j.Machine::step@181 (line 312)
  0.58%    0.75%        0x00007fb4412229cb: mov    0x1c(%r12,%r9,8),%r8d  ;*getfield f0
                                                                      ; - com.google.re2j.Inst::matchRune@42 (line 99)
                                                                      ; - com.google.re2j.Machine::step@181 (line 312)
  0.03%    0.02%        0x00007fb4412229d0: cmp    $0x9,%ebp
                  ╭     0x00007fb4412229d3: je     0x00007fb441222a1e  ;*if_icmpne
                  │                                                   ; - com.google.re2j.Inst::matchRune@38 (line 98)
                  │                                                   ; - com.google.re2j.Machine::step@181 (line 312)
  0.41%    0.48%  │     0x00007fb4412229d5: cmp    $0xc,%ebp
                  │     0x00007fb4412229d8: jne    0x00007fb44122306d  ;*if_icmpne
                  │                                                   ; - com.google.re2j.Inst::matchRune@61 (line 102)
                  │                                                   ; - com.google.re2j.Machine::step@181 (line 312)
  0.37%    0.42%  │     0x00007fb4412229de: cmp    0x28(%rsp),%r8d
                  │╭    0x00007fb4412229e3: je     0x00007fb441222b10  ;*if_icmpeq
                  ││                                                  ; - com.google.re2j.Inst::matchRune@69 (line 103)
                  ││                                                  ; - com.google.re2j.Machine::step@181 (line 312)
  0.21%    0.30%  ││    0x00007fb4412229e9: mov    0x20(%r12,%r9,8),%r8d  ;*getfield f1
                  ││                                                  ; - com.google.re2j.Inst::matchRune@73 (line 103)
                  ││                                                  ; - com.google.re2j.Machine::step@181 (line 312)
  0.00%    0.01%  ││    0x00007fb4412229ee: cmp    0x28(%rsp),%r8d
                  ││╭   0x00007fb4412229f3: je     0x00007fb441222b10  ;*if_icmpeq
                  │││                                                 ; - com.google.re2j.Inst::matchRune@77 (line 103)
                  │││                                                 ; - com.google.re2j.Machine::step@181 (line 312)
  0.37%    0.47%  │││   0x00007fb4412229f9: mov    0x24(%r12,%r9,8),%ebp  ;*getfield f2
                  │││                                                 ; - com.google.re2j.Inst::matchRune@81 (line 103)
                  │││                                                 ; - com.google.re2j.Machine::step@181 (line 312)
  0.14%    0.16%  │││   0x00007fb4412229fe: cmp    0x28(%rsp),%ebp
                  │││   0x00007fb441222a02: je     0x00007fb4412230bd  ;*if_icmpeq
                  │││                                                 ; - com.google.re2j.Inst::matchRune@85 (line 103)
                  │││                                                 ; - com.google.re2j.Machine::step@181 (line 312)
  0.41%    0.34%  │││   0x00007fb441222a08: mov    0x28(%r12,%r9,8),%ebp  ;*getfield f3
                  │││                                                 ; - com.google.re2j.Inst::matchRune@89 (line 103)
                  │││                                                 ; - com.google.re2j.Machine::step@181 (line 312)
  0.00%    0.02%  │││   0x00007fb441222a0d: cmp    0x28(%rsp),%ebp
                  │││   0x00007fb441222a11: je     0x00007fb4412230f5  ;*if_icmpne
                  │││                                                 ; - com.google.re2j.Inst::matchRune@93 (line 103)
                  │││                                                 ; - com.google.re2j.Machine::step@181 (line 312)
  0.22%    0.33%  │││   0x00007fb441222a17: xor    %ecx,%ecx
  0.11%    0.12%  │││   0x00007fb441222a19: jmpq   0x00007fb4412224f2
  1.14%    1.19%  ↘││   0x00007fb441222a1e: cmp    0x28(%rsp),%r8d
                   ││   0x00007fb441222a23: jne    0x00007fb4412224f0  ;*if_icmpne
                   ││                                                 ; - com.google.re2j.Inst::matchRune@46 (line 99)
                   ││                                                 ; - com.google.re2j.Machine::step@181 (line 312)
  0.01%    0.01%   ││   0x00007fb441222a29: mov    $0x1,%ecx
                   ││   0x00007fb441222a2e: jmpq   0x00007fb4412224f2  ;*if_icmpge
                   ││                                                 ; - com.google.re2j.Machine::step@22 (line 282)
  0.66%    0.89%   ││   0x00007fb441222a33: movzbl 0x18(%rax),%r10d
  0.00%            ││   0x00007fb441222a38: test   %r10d,%r10d
                   ││╭  0x00007fb441222a3b: jne    0x00007fb441222a54  ;*ifeq
                   │││                                                ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                   │││                                                ; - com.google.re2j.Machine::step@225 (line 319)
           0.01%   │││  0x00007fb441222a3d: movb   $0x1,0x18(%rax)    ;*putfield empty
                   │││                                                ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                   │││                                                ; - com.google.re2j.Machine::step@225 (line 319)
                   │││  0x00007fb441222a41: mov    0x1c(%rax),%ebp    ;*getfield pcs
                   │││                                                ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                   │││                                                ; - com.google.re2j.Machine::step@225 (line 319)
  0.78%    0.70%   │││  0x00007fb441222a44: mov    %r12d,0xc(%rax)    ;*putfield size
                   │││                                                ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                   │││                                                ; - com.google.re2j.Machine::step@225 (line 319)
  0.00%    0.00%   │││  0x00007fb441222a48: mov    %r12,0x10(%rax)    ;*putfield pcsl
                   │││                                                ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                   │││                                                ; - com.google.re2j.Machine::step@225 (line 319)
  0.01%            │││  0x00007fb441222a4c: test   %ebp,%ebp
                   │││  0x00007fb441222a4e: jne    0x00007fb4412230a5  ;*getfield size
                   │││                                                ; - com.google.re2j.Machine::step@10 (line 281)
  0.00%            ││↘  0x00007fb441222a54: add    $0x80,%rsp
  0.69%    0.84%   ││   0x00007fb441222a5b: pop    %rbp
                   ││   0x00007fb441222a5c: test   %eax,0x1830459e(%rip)        # 0x00007fb459527000
                   ││                                                 ;   {poll_return}
  0.00%            ││   0x00007fb441222a62: retq   
  0.02%    0.01%   ││   0x00007fb441222a63: cmp    $0xf8019909,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                   ││   0x00007fb441222a69: jne    0x00007fb441223509  ;*invokevirtual add
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
  0.01%            ││   0x00007fb441222a6f: mov    0x18(%r8),%edx     ;*getfield pc
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
                   ││   0x00007fb441222a73: mov    0x10(%r11),%rbx    ;*getfield pcsl
                   ││                                                 ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
                   ││                                                 ; implicit exception: dispatches to 0x00007fb4412237f9
                   ││   0x00007fb441222a77: cmp    $0x40,%edx
                   ││   0x00007fb441222a7a: jg     0x00007fb4412235b9  ;*if_icmpgt
                   ││                                                 ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
  0.02%    0.03%   ││   0x00007fb441222a80: mov    $0x1,%edi
           0.00%   ││   0x00007fb441222a85: mov    %edx,%ecx
                   ││   0x00007fb441222a87: shl    %cl,%rdi           ;*lshl
                   ││                                                 ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
  0.04%    0.02%   ││   0x00007fb441222a8a: mov    %rbx,%r9
                   ││   0x00007fb441222a8d: and    %rdi,%r9           ;*land
                   ││                                                 ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
                   ││   0x00007fb441222a90: test   %r9,%r9
                   ││   0x00007fb441222a93: jne    0x00007fb441222b63  ;*ifeq
                   ││                                                 ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
           0.01%   ││   0x00007fb441222a99: xor    %ebp,%ebp          ;*ireturn
                   ││                                                 ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
  0.01%    0.00%   ││   0x00007fb441222a9b: test   %r9,%r9
                   ││   0x00007fb441222a9e: jne    0x00007fb441223619  ;*ifeq
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
                   ││   0x00007fb441222aa4: cmp    $0x40,%edx
                   ││   0x00007fb441222aa7: jge    0x00007fb44122366d  ;*if_icmpge
                   ││                                                 ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
                   ││   0x00007fb441222aad: mov    %r12b,0x18(%r11)   ;*putfield empty
                   ││                                                 ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
  0.01%    0.01%   ││   0x00007fb441222ab1: mov    0x20(%r11),%r9d    ;*getfield denseThreadsInstructions
                   ││                                                 ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
  0.01%            ││   0x00007fb441222ab5: or     %rbx,%rdi
           0.00%   ││   0x00007fb441222ab8: mov    %rdi,0x10(%r11)    ;*putfield pcsl
                   ││                                                 ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
                   ││   0x00007fb441222abc: mov    0xc(%r11),%ebp     ;*getfield size
                   ││                                                 ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
  0.00%    0.00%   ││   0x00007fb441222ac0: mov    %ebp,%ebx
  0.02%    0.01%   ││   0x00007fb441222ac2: inc    %ebx
                   ││   0x00007fb441222ac4: mov    %ebx,0xc(%r11)     ;*putfield size
                   ││                                                 ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
                   ││   0x00007fb441222ac8: mov    0xc(%r12,%r9,8),%ebx  ; implicit exception: dispatches to 0x00007fb44122380d
  0.01%    0.01%   ││   0x00007fb441222acd: cmp    %ebx,%ebp
                   ││   0x00007fb441222acf: jae    0x00007fb4412234ad
  0.01%            ││   0x00007fb441222ad5: mov    0x8(%r12,%r9,8),%ebx
  0.01%    0.01%   ││   0x00007fb441222ada: cmp    $0xf8019807,%ebx   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                   ││   0x00007fb441222ae0: jne    0x00007fb44122355d  ;*aastore
                   ││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
                   ││   0x00007fb441222ae6: shl    $0x3,%r9           ;*getfield denseThreadsInstructions
                   ││                                                 ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
                   ││   0x00007fb441222aea: lea    0x10(%r9,%rbp,4),%r9
  0.00%    0.01%   ││   0x00007fb441222aef: shr    $0x3,%r8
                   ││   0x00007fb441222af3: mov    %r8d,(%r9)
  0.06%    0.01%   ││   0x00007fb441222af6: mov    %r9,%r8
  0.00%    0.00%   ││   0x00007fb441222af9: shr    $0x9,%r8
           0.01%   ││   0x00007fb441222afd: movabs $0x7fb451f2f000,%r9
                   ││   0x00007fb441222b07: mov    %r12b,(%r9,%r8,1)  ;*aastore
                   ││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
  0.05%    0.01%   ││   0x00007fb441222b0b: jmpq   0x00007fb441222599  ;*iconst_1
                   ││                                                 ; - com.google.re2j.Inst::matchRune@96 (line 103)
                   ││                                                 ; - com.google.re2j.Machine::step@181 (line 312)
  0.14%    0.15%   ↘↘   0x00007fb441222b10: mov    $0x1,%ecx
  0.09%    0.07%        0x00007fb441222b15: jmpq   0x00007fb4412224f2
                        0x00007fb441222b1a: mov    $0x1,%ebp
                        0x00007fb441222b1f: jmpq   0x00007fb441222681
                        0x00007fb441222b24: mov    $0x1,%ebp
                        0x00007fb441222b29: jmpq   0x00007fb441222772
                        0x00007fb441222b2e: mov    %ecx,%ebx
                        0x00007fb441222b30: mov    %r11,%rcx
                        0x00007fb441222b33: mov    $0x1,%ebp
                        0x00007fb441222b38: jmpq   0x00007fb441222537
                        0x00007fb441222b3d: mov    %r13,%r11
                        0x00007fb441222b40: jmpq   0x00007fb441222584
....................................................................................................
 11.77%   13.12%  <total for region 3>

....[Hottest Regions]...............................................................................
 45.75%   42.75%         C2, level 4  com.google.re2j.Machine::step, version 500 (797 bytes) 
 31.14%   33.33%         C2, level 4  com.google.re2j.Machine::match, version 540 (923 bytes) 
 11.77%   13.12%         C2, level 4  com.google.re2j.Machine::step, version 500 (466 bytes) 
  5.31%    5.42%         C2, level 4  com.google.re2j.Machine::step, version 500 (90 bytes) 
  1.84%    1.84%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.61%    0.79%         C2, level 4  com.google.re2j.Machine::match, version 540 (62 bytes) 
  0.17%    0.11%         C2, level 4  com.google.re2j.Pattern::find, version 556 (20 bytes) 
  0.16%    0.12%         C2, level 4  com.google.re2j.Machine::match, version 540 (309 bytes) 
  0.16%    0.11%         C2, level 4  com.google.re2j.Machine::match, version 540 (230 bytes) 
  0.14%    0.07%         C2, level 4  com.google.re2j.Pattern::find, version 556 (8 bytes) 
  0.12%    0.15%         C2, level 4  com.google.re2j.Pattern::find, version 556 (20 bytes) 
  0.12%    0.02%         C2, level 4  java.util.Collections::shuffle, version 565 (228 bytes) 
  0.11%                  C2, level 4  com.google.re2j.Pattern::find, version 556 (112 bytes) 
  0.10%    0.01%   [kernel.kallsyms]  [unknown] (2 bytes) 
  0.09%    0.01%   [kernel.kallsyms]  [unknown] (49 bytes) 
  0.09%    0.10%         C2, level 4  com.google.re2j.Pattern::find, version 556 (8 bytes) 
  0.08%    0.07%         C2, level 4  com.google.re2j.Machine::match, version 540 (234 bytes) 
  0.08%                  C2, level 4  com.google.re2j.Pattern::find, version 556 (113 bytes) 
  0.08%    0.09%         C2, level 4  java.util.Collections::shuffle, version 565 (35 bytes) 
  0.06%    0.06%         C2, level 4  com.google.re2j.Machine::match, version 540 (212 bytes) 
  2.03%    1.83%  <...other 387 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 62.84%   61.30%         C2, level 4  com.google.re2j.Machine::step, version 500 
 32.37%   34.57%         C2, level 4  com.google.re2j.Machine::match, version 540 
  2.79%    2.57%   [kernel.kallsyms]  [unknown] 
  0.85%    0.44%         C2, level 4  com.google.re2j.Pattern::find, version 556 
  0.24%    0.12%         C2, level 4  java.util.Collections::shuffle, version 565 
  0.14%    0.06%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 596 
  0.07%    0.04%           libjvm.so  _ZN19GenericTaskQueueSetI17OverflowTaskQueueI8StarTaskL10MemoryType1ELj131072EELS2_1EE15steal_best_of_2EjPiRS1_ 
  0.06%    0.03%              [vdso]  [unknown] 
  0.05%    0.02%      hsdis-amd64.so  decode_instructions 
  0.03%    0.05%           libjvm.so  _ZN18PSPromotionManager22copy_to_survivor_spaceILb0EEEP7oopDescS2_ 
  0.03%    0.07%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.03%    0.00%        libc-2.26.so  __clock_gettime 
  0.03%    0.09%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.02%                  C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 557 
  0.02%    0.01%           libjvm.so  _ZN18PSPromotionManager18drain_stacks_depthEb 
  0.02%                    libjvm.so  _ZN2os13javaTimeNanosEv 
  0.01%    0.04%        libc-2.26.so  _IO_fwrite 
  0.01%    0.02%           libjvm.so  _ZN13xmlTextStream5writeEPKcm 
  0.01%    0.00%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
  0.01%    0.02%        libc-2.26.so  _IO_fflush 
  0.35%    0.26%  <...other 63 warm methods...>
....................................................................................................
100.00%   99.72%  <totals>

....[Distribution by Source]........................................................................
 96.45%   96.49%         C2, level 4
  2.79%    2.57%   [kernel.kallsyms]
  0.42%    0.56%           libjvm.so
  0.14%    0.26%        libc-2.26.so
  0.06%    0.03%              [vdso]
  0.05%    0.02%      hsdis-amd64.so
  0.03%    0.04%  libpthread-2.26.so
  0.03%    0.01%         interpreter
  0.01%    0.00%        runtime stub
  0.00%                    libnet.so
  0.00%                  C1, level 3
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                     Mode  Cnt      Score     Error  Units
Re2jFindRegex.testExp1       thrpt   20  21112.338 ± 527.635  ops/s
Re2jFindRegex.testExp1:·asm  thrpt             NaN              ---
