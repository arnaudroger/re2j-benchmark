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
# Warmup Iteration   1: 15208.336 ops/s
# Warmup Iteration   2: 27685.954 ops/s
# Warmup Iteration   3: 27959.671 ops/s
# Warmup Iteration   4: 27682.973 ops/s
# Warmup Iteration   5: 28177.996 ops/s
# Warmup Iteration   6: 28133.035 ops/s
# Warmup Iteration   7: 28450.483 ops/s
# Warmup Iteration   8: 28315.395 ops/s
# Warmup Iteration   9: 28260.360 ops/s
# Warmup Iteration  10: 28182.443 ops/s
# Warmup Iteration  11: 27728.946 ops/s
# Warmup Iteration  12: 28298.387 ops/s
# Warmup Iteration  13: 28459.467 ops/s
# Warmup Iteration  14: 28231.715 ops/s
# Warmup Iteration  15: 28275.047 ops/s
# Warmup Iteration  16: 27381.629 ops/s
# Warmup Iteration  17: 27912.570 ops/s
# Warmup Iteration  18: 28324.332 ops/s
# Warmup Iteration  19: 28461.759 ops/s
# Warmup Iteration  20: 28298.046 ops/s
Iteration   1: 28377.416 ops/s
Iteration   2: 28414.677 ops/s
Iteration   3: 28125.656 ops/s
Iteration   4: 27817.851 ops/s
Iteration   5: 27962.751 ops/s
Iteration   6: 26728.085 ops/s
Iteration   7: 28018.393 ops/s
Iteration   8: 28075.651 ops/s
Iteration   9: 28150.919 ops/s
Iteration  10: 28320.472 ops/s
Iteration  11: 28353.756 ops/s
Iteration  12: 27708.403 ops/s
Iteration  13: 28426.409 ops/s
Iteration  14: 28444.787 ops/s
Iteration  15: 28349.717 ops/s
Iteration  16: 28292.194 ops/s
Iteration  17: 28138.746 ops/s
Iteration  18: 28446.192 ops/s
Iteration  19: 28388.529 ops/s
Iteration  20: 28445.781 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  28149.319 ±(99.9%) 346.980 ops/s [Average]
  (min, avg, max) = (26728.085, 28149.319, 28446.192), stdev = 399.583
  CI (99.9%): [27802.339, 28496.299] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1:·asm":
PrintAssembly processed: 215298 total address lines.
Perf output processed (skipped 23.049 seconds):
 Column 1: cycles (20461 events)
 Column 2: instructions (20440 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 542 (874 bytes) 

                     0x00007f24192514e6: jae    0x00007f2419251c71
                     0x00007f24192514ec: mov    %rdi,%r10
                     0x00007f24192514ef: mov    %rax,%r9
                     0x00007f24192514f2: shr    $0x3,%r9
                     0x00007f24192514f6: mov    %r9d,(%rdi)
                     0x00007f24192514f9: shr    $0x9,%r10
                     0x00007f24192514fd: movabs $0x7f24151ff000,%r8
                     0x00007f2419251507: mov    %r12b,(%r8,%r10,1)  ;*synchronization entry
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.07%    0.07%     0x00007f241925150b: mov    0x10(%rsp),%r13
  0.05%    0.06%     0x00007f2419251510: mov    0xac(%rsp),%r14d
  0.46%    0.64%     0x00007f2419251518: mov    0xa4(%rsp),%edi
  0.02%    0.01%     0x00007f241925151f: mov    0xc(%rsp),%r10d    ;*aload
                                                                   ; - com.google.re2j.Machine::step@211 (line 316)
  1.83%    2.30%  ↗  0x00007f2419251524: inc    %r10d              ;*iinc
                  │                                                ; - com.google.re2j.Machine::step@222 (line 283)
  0.03%    0.02%  │  0x00007f2419251527: cmp    %r14d,%r10d
                  │  0x00007f241925152a: jge    0x00007f241925197e
  0.67%    0.49%  │  0x00007f2419251530: mov    %r11,%rcx          ;*iload
                  │                                                ; - com.google.re2j.Machine::step@31 (line 286)
  0.75%    0.80%  │  0x00007f2419251533: mov    0x20(%r13),%r11d   ;*getfield denseThreadsInstructions
                  │                                                ; - com.google.re2j.Machine::step@86 (line 296)
  1.16%    1.29%  │  0x00007f2419251537: mov    0xc(%r12,%r11,8),%r9d  ; implicit exception: dispatches to 0x00007f2419252ae5
  0.07%    0.12%  │  0x00007f241925153c: cmp    %r9d,%r10d
                  │  0x00007f241925153f: jae    0x00007f2419251a6c
  0.87%    1.38%  │  0x00007f2419251545: shl    $0x3,%r11
  0.71%    0.70%  │  0x00007f2419251549: mov    0x10(%r11,%r10,4),%r8d  ;*aaload
                  │                                                ; - com.google.re2j.Machine::step@91 (line 296)
  1.26%    1.34%  │  0x00007f241925154e: mov    0xc(%r12,%r8,8),%ebp  ;*getfield op
                  │                                                ; - com.google.re2j.Machine::step@96 (line 298)
                  │                                                ; implicit exception: dispatches to 0x00007f2419252af9
  3.36%    2.82%  │  0x00007f2419251553: cmp    $0x6,%ebp
                  │  0x00007f2419251556: je     0x00007f2419251aa1  ;*if_icmpne
                  │                                                ; - com.google.re2j.Machine::step@101 (line 298)
  1.85%    2.00%  │  0x00007f241925155c: cmp    $0xa,%ebp
                  │  0x00007f241925155f: jne    0x00007f241925190b  ;*if_icmpne
                  │                                                ; - com.google.re2j.Inst::matchRune@6 (line 90)
                  │                                                ; - com.google.re2j.Machine::step@183 (line 313)
  0.33%    0.24%  │  0x00007f2419251565: mov    0x2c(%r12,%r8,8),%r11d  ;*getfield outInst
                  │                                                ; - com.google.re2j.Machine::step@191 (line 314)
  0.08%    0.06%  │  0x00007f241925156a: mov    0x8(%r12,%r11,8),%r8d  ; implicit exception: dispatches to 0x00007f2419252b09
  1.31%    1.25%  │  0x00007f241925156f: lea    (%r12,%r11,8),%rax
  0.10%    0.08%  │  0x00007f2419251573: cmp    $0xf8019843,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                  │  0x00007f241925157a: jne    0x00007f24192519b0  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Machine::step@206 (line 314)
  0.58%    0.57%  │  0x00007f2419251580: mov    0x18(%rax),%edx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 175)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.07%  │  0x00007f2419251583: mov    %rcx,%r11
           0.01%  │  0x00007f2419251586: mov    0x10(%rcx),%r8     ;*getfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
                  │                                                ; implicit exception: dispatches to 0x00007f2419252b1d
  0.06%    0.15%  │  0x00007f241925158a: cmp    $0x40,%edx
                  │  0x00007f241925158d: jg     0x00007f2419251e09  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.62%    0.65%  │  0x00007f2419251593: mov    $0x1,%ebx
  0.02%    0.02%  │  0x00007f2419251598: mov    %edx,%ecx
           0.00%  │  0x00007f241925159a: shl    %cl,%rbx           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  1.08%    1.29%  │  0x00007f241925159d: mov    %r8,%r9
           0.00%  │  0x00007f24192515a0: and    %rbx,%r9
  0.13%    0.10%  │  0x00007f24192515a3: test   %r9,%r9
                  ╰  0x00007f24192515a6: jne    0x00007f2419251524  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.25%    0.36%     0x00007f24192515ac: cmp    $0x40,%edx
                     0x00007f24192515af: jge    0x00007f2419251e65  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.29%    0.34%     0x00007f24192515b5: mov    %r12b,0x18(%r11)   ;*putfield empty
                                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.00%     0x00007f24192515b9: mov    0x2c(%rax),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.10%    0.14%     0x00007f24192515bc: or     %r8,%rbx           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.28%    0.35%     0x00007f24192515bf: mov    %rbx,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.38%    0.31%     0x00007f24192515c3: mov    0x8(%r12,%rbp,8),%r9d  ; implicit exception: dispatches to 0x00007f2419252b31
  1.36%    1.55%     0x00007f24192515c8: cmp    $0xf8019909,%r9d   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007f24192515cf: jne    0x00007f2419251b61
  0.68%    0.72%     0x00007f24192515d5: lea    (%r12,%rbp,8),%r9  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.06%    0.02%     0x00007f24192515d9: mov    0x18(%r9),%edx     ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.53%    0.48%     0x00007f24192515dd: cmp    $0x40,%edx
                     0x00007f24192515e0: jg     0x00007f2419251ec1  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.49%    0.49%     0x00007f24192515e6: mov    $0x1,%r8d
  0.22%    0.26%     0x00007f24192515ec: mov    %edx,%ecx
  0.04%              0x00007f24192515ee: shl    %cl,%r8            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  1.24%    1.00%     0x00007f24192515f1: mov    %rbx,%rcx
  0.02%              0x00007f24192515f4: and    %r8,%rcx           ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f24192515f7: test   %rcx,%rcx
                     0x00007f24192515fa: jne    0x00007f2419251f21  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.11%    0.12%     0x00007f2419251600: cmp    $0x40,%edx
                     0x00007f2419251603: jge    0x00007f2419251f91  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.60%    0.67%     0x00007f2419251609: or     %r8,%rbx           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.00%     0x00007f241925160c: mov    %rbx,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.07%    0.04%     0x00007f2419251610: mov    0x20(%r11),%r8d    ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.07%     0x00007f2419251614: mov    0xc(%r11),%ecx     ;*getfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.61%    0.63%     0x00007f2419251618: mov    %ecx,%edx
  0.02%              0x00007f241925161a: inc    %edx               ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.09%    0.08%     0x00007f241925161c: mov    %edx,0xc(%r11)     ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.08%    0.07%     0x00007f2419251620: mov    0xc(%r12,%r8,8),%esi  ; implicit exception: dispatches to 0x00007f2419252b45
  0.63%    0.57%     0x00007f2419251625: mov    %esi,0x34(%rsp)
  0.00%    0.00%     0x00007f2419251629: cmp    %esi,%ecx
                     0x00007f241925162b: jae    0x00007f2419251b01
  0.06%    0.05%     0x00007f2419251631: mov    0x8(%r12,%r8,8),%esi
  0.05%    0.05%     0x00007f2419251636: cmp    $0xf8019807,%esi   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                     0x00007f241925163c: jne    0x00007f2419251bbd  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.56%    0.40%     0x00007f2419251642: vmovd  %edx,%xmm1
  0.02%              0x00007f2419251646: mov    %ecx,0x30(%rsp)
  0.04%    0.03%     0x00007f241925164a: mov    %r10d,0xc(%rsp)
  0.04%    0.03%     0x00007f241925164f: mov    %edi,0xa4(%rsp)
  0.64%    0.39%     0x00007f2419251656: mov    %r14d,0xac(%rsp)
  0.01%              0x00007f241925165e: mov    %r11,%rdx
  0.09%    0.05%     0x00007f2419251661: mov    %r13,0x10(%rsp)
  0.06%    0.05%     0x00007f2419251666: mov    0x34(%rax),%r10d   ;*getfield inst2
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@43 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.53%    0.54%     0x00007f241925166a: mov    %r10d,%ecx
                     0x00007f241925166d: mov    %r9,%r10
  0.05%    0.05%     0x00007f2419251670: shr    $0x3,%r10          ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.08%     0x00007f2419251674: lea    (%r12,%r8,8),%r9   ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.61%    0.55%     0x00007f2419251678: mov    %r8d,%r14d
  0.01%    0.01%     0x00007f241925167b: mov    0x30(%rsp),%r11d
  0.07%    0.07%     0x00007f2419251680: lea    0x10(%r9,%r11,4),%r11
  0.02%    0.06%     0x00007f2419251685: mov    %r10d,(%r11)
  0.54%    0.51%     0x00007f2419251688: mov    %r11,%r10
  0.01%              0x00007f241925168b: shr    $0x9,%r10
  0.09%    0.01%     0x00007f241925168f: movabs $0x7f24151ff000,%r11
  0.03%    0.05%     0x00007f2419251699: mov    %r12b,(%r11,%r10,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.78%    0.45%     0x00007f241925169d: mov    %ecx,%r10d
  0.00%              0x00007f24192516a0: mov    0x8(%r12,%r10,8),%r11d  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                                                                   ; implicit exception: dispatches to 0x00007f2419252b61
  0.07%    0.12%     0x00007f24192516a5: movslq 0x30(%rsp),%r10
  0.04%    0.05%     0x00007f24192516aa: lea    (%r9,%r10,4),%r8   ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.57%    0.65%     0x00007f24192516ae: mov    %r8,%rdi
  0.01%    0.02%     0x00007f24192516b1: add    $0x14,%rdi         ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.03%     0x00007f24192516b5: mov    %ecx,%r10d
  0.05%    0.06%     0x00007f24192516b8: lea    (%r12,%r10,8),%rax
  0.57%    0.44%     0x00007f24192516bc: mov    0x30(%rsp),%r10d
  0.02%              0x00007f24192516c1: add    $0x2,%r10d         ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.06%    0.02%     0x00007f24192516c5: cmp    $0xf8019885,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                     0x00007f24192516cc: jne    0x00007f2419251494  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.03%     0x00007f24192516d2: mov    0x18(%rax),%r11d   ;*getfield pc
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@2 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.55%    0.26%     0x00007f24192516d6: mov    %r11d,%r13d
  0.01%    0.00%     0x00007f24192516d9: cmp    $0x40,%r11d
                     0x00007f24192516dd: jg     0x00007f24192521a9  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.06%    0.02%     0x00007f24192516e3: mov    $0x1,%esi
  0.07%    0.01%     0x00007f24192516e8: mov    %r11d,%ecx
  0.54%    0.30%     0x00007f24192516eb: shl    %cl,%rsi           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.10%    0.05%     0x00007f24192516ee: mov    %rbx,%r11
  0.53%    0.29%     0x00007f24192516f1: and    %rsi,%r11          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
           0.01%     0x00007f24192516f4: test   %r11,%r11
                     0x00007f24192516f7: jne    0x00007f24192521f1  ;*ifeq
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@8 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.05%     0x00007f24192516fd: mov    %ecx,%r11d
  0.03%    0.03%     0x00007f2419251700: cmp    $0x40,%r11d
                     0x00007f2419251704: jge    0x00007f2419252249  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.55%    0.31%     0x00007f241925170a: mov    0x2c(%rax),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@82 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%    0.00%     0x00007f241925170d: or     %rsi,%rbx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.09%     0x00007f2419251710: mov    %rbx,0x10(%rdx)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.07%     0x00007f2419251714: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f2419252b95
  0.50%    0.71%     0x00007f2419251719: cmp    $0xf8019843,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                     0x00007f241925171f: jne    0x00007f2419251d49
  0.02%    0.01%     0x00007f2419251725: lea    (%r12,%rbp,8),%rax  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.08%    0.01%     0x00007f2419251729: mov    0x18(%rax),%r11d   ;*getfield pc
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.00%     0x00007f241925172d: mov    %r11d,%ecx
  0.62%    0.14%     0x00007f2419251730: cmp    $0x40,%r11d
                     0x00007f2419251734: jg     0x00007f2419252291  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.00%     0x00007f241925173a: mov    $0x1,%esi
  0.06%    0.03%     0x00007f241925173f: shl    %cl,%rsi           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.64%    0.80%     0x00007f2419251742: mov    %rbx,%r11
  0.05%    0.03%     0x00007f2419251745: and    %rsi,%r11
  0.06%    0.08%     0x00007f2419251748: test   %r11,%r11
                     0x00007f241925174b: jne    0x00007f2419251a64  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.55%    0.83%     0x00007f2419251751: mov    %ecx,%r11d
  0.01%    0.00%     0x00007f2419251754: cmp    $0x40,%r11d
                     0x00007f2419251758: jge    0x00007f241925245d  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.06%     0x00007f241925175e: mov    0x2c(%rax),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.06%    0.04%     0x00007f2419251761: or     %rsi,%rbx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.54%    0.66%     0x00007f2419251764: mov    %rbx,0x10(%rdx)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.00%     0x00007f2419251768: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f2419252ba9
  0.05%    0.04%     0x00007f241925176d: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007f2419251773: jne    0x00007f2419251db9
  0.06%    0.07%     0x00007f2419251779: lea    (%r12,%rbp,8),%r13  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.65%    0.85%     0x00007f241925177d: mov    0x18(%r13),%r11d   ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%    0.00%     0x00007f2419251781: vmovd  %r11d,%xmm0
  0.08%    0.08%     0x00007f2419251786: cmp    $0x40,%r11d
                     0x00007f241925178a: jg     0x00007f24192524a5  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.06%     0x00007f2419251790: mov    $0x1,%esi
  0.66%    0.65%     0x00007f2419251795: mov    %r11d,%ecx
  0.01%    0.00%     0x00007f2419251798: shl    %cl,%rsi           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.75%    0.79%     0x00007f241925179b: mov    %rbx,%r11
                     0x00007f241925179e: and    %rsi,%r11          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.03%     0x00007f24192517a1: test   %r11,%r11
                     0x00007f24192517a4: jne    0x00007f24192524f5  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.07%     0x00007f24192517aa: mov    %ecx,%r11d
  0.60%    0.69%     0x00007f24192517ad: cmp    $0x40,%r11d
                     0x00007f24192517b1: jge    0x00007f2419252559  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.01%     0x00007f24192517b7: mov    %r10d,0xc(%rdx)    ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.06%    0.06%     0x00007f24192517bb: or     %rsi,%rbx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.04%     0x00007f24192517be: mov    %rbx,0x10(%rdx)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.61%    0.56%     0x00007f24192517c2: cmp    0x34(%rsp),%r10d
                     0x00007f24192517c7: jae    0x00007f2419251cf9  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.03%     0x00007f24192517cd: mov    0x34(%rax),%r11d   ;*getfield inst2
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@43 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.07%    0.04%     0x00007f24192517d1: mov    %rdi,%rcx
  0.05%    0.06%     0x00007f24192517d4: mov    %r13,%r10
  0.59%    0.53%     0x00007f24192517d7: shr    $0x3,%r10
  0.02%    0.01%     0x00007f24192517db: mov    %r10d,(%rdi)
  0.08%    0.07%     0x00007f24192517de: shr    $0x9,%rcx
  0.03%    0.05%     0x00007f24192517e2: movabs $0x7f24151ff000,%r10
  0.59%    0.68%     0x00007f24192517ec: mov    %r12b,(%r10,%rcx,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.04%     0x00007f24192517f0: mov    0x8(%r12,%r11,8),%edi  ; implicit exception: dispatches to 0x00007f2419252bbd
  0.06%    0.05%     0x00007f24192517f5: lea    (%r12,%r11,8),%r10
  0.06%    0.04%     0x00007f24192517f9: cmp    $0xf8019885,%edi   ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                     0x00007f24192517ff: je     0x00007f241925187a
  0.58%    0.65%     0x00007f2419251801: cmp    $0xf8019909,%edi   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007f2419251807: jne    0x00007f2419252169  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.02%     0x00007f241925180d: mov    0x18(%r10),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.05%     0x00007f2419251811: cmp    $0x40,%ecx
                     0x00007f2419251814: jg     0x00007f24192526f9  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.08%     0x00007f241925181a: mov    $0x1,%r11d
  0.65%    0.87%     0x00007f2419251820: shl    %cl,%r11           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.10%    0.19%     0x00007f2419251823: mov    %rbx,%rdi
  0.63%    0.72%     0x00007f2419251826: and    %r11,%rdi          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%    0.01%     0x00007f2419251829: test   %rdi,%rdi
                     0x00007f241925182c: jne    0x00007f2419252775  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.06%    0.07%     0x00007f2419251832: cmp    $0x40,%ecx
                     0x00007f2419251835: jge    0x00007f2419252801  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.07%    0.02%     0x00007f241925183b: or     %r11,%rbx
  0.54%    0.31%     0x00007f241925183e: mov    %rdx,%r11
  0.00%    0.01%     0x00007f2419251841: mov    %rbx,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.04%     0x00007f2419251845: add    $0x18,%r8
  0.08%    0.04%     0x00007f2419251849: mov    %r10,%r9
  0.61%    0.73%     0x00007f241925184c: shr    $0x3,%r9
  0.01%    0.01%     0x00007f2419251850: mov    %r9d,(%r8)         ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.06%    0.11%     0x00007f2419251853: mov    %r8,%r10
  0.05%    0.07%     0x00007f2419251856: mov    0x30(%rsp),%r9d
  0.55%    0.81%     0x00007f241925185b: add    $0x3,%r9d
  0.02%    0.01%     0x00007f241925185f: mov    %r9d,0xc(%r11)     ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.08%    0.07%     0x00007f2419251863: shr    $0x9,%r10
  0.04%    0.03%     0x00007f2419251867: movabs $0x7f24151ff000,%r8
  0.57%    0.81%     0x00007f2419251871: mov    %r12b,(%r8,%r10,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.03%     0x00007f2419251875: jmpq   0x00007f241925150b  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
....................................................................................................
 47.65%   48.09%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 592 (1164 bytes) 

                             0x00007f241927293f: mov    0x14(%rbp),%ecx    ;*getfield str
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                                                                           ; - com.google.re2j.Machine::match@60 (line 193)
                             0x00007f2419272942: mov    0x8(%r12,%rcx,8),%r13d  ; implicit exception: dispatches to 0x00007f2419274811
                             0x00007f2419272947: cmp    $0xf80002da,%r13d  ;   {metadata(&apos;java/lang/String&apos;)}
                             0x00007f241927294e: jne    0x00007f2419273d3d
                             0x00007f2419272954: lea    (%r12,%rcx,8),%r13  ;*invokeinterface charAt
                                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                           ; - com.google.re2j.Machine::match@60 (line 193)
  0.01%                      0x00007f2419272958: test   %edx,%edx
                             0x00007f241927295a: jl     0x00007f2419273e25  ;*iflt
                                                                           ; - java.lang.String::charAt@1 (line 657)
                                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                           ; - com.google.re2j.Machine::match@60 (line 193)
                             0x00007f2419272960: mov    %rbp,0x50(%rsp)
  0.01%                      0x00007f2419272965: mov    %edi,0x38(%rsp)
  0.00%                      0x00007f2419272969: vmovd  %ebx,%xmm2
  0.00%                      0x00007f241927296d: mov    %eax,0x4c(%rsp)
                             0x00007f2419272971: mov    %r8d,0x48(%rsp)
  0.00%                      0x00007f2419272976: mov    %r10,0x40(%rsp)
                             0x00007f241927297b: mov    0xc(%r13),%r10d    ;*getfield value
                                                                           ; - java.lang.String::charAt@6 (line 657)
                                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                           ; - com.google.re2j.Machine::match@60 (line 193)
                             0x00007f241927297f: vmovd  %r10d,%xmm0
                             0x00007f2419272984: mov    0xc(%r12,%r10,8),%r10d  ;*arraylength
                                                                           ; - java.lang.String::charAt@9 (line 657)
                                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                           ; - com.google.re2j.Machine::match@60 (line 193)
                                                                           ; implicit exception: dispatches to 0x00007f2419274825
           0.00%             0x00007f2419272989: mov    %r10d,%eax
                             0x00007f241927298c: cmp    %eax,%edx
                             0x00007f241927298e: jge    0x00007f2419273fa1  ;*if_icmplt
                                                                           ; - java.lang.String::charAt@10 (line 657)
                                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                           ; - com.google.re2j.Machine::match@60 (line 193)
  0.01%                      0x00007f2419272994: cmp    %eax,%edx
                             0x00007f2419272996: jae    0x00007f2419273c69
                             0x00007f241927299c: vmovd  %xmm0,%r10d
                             0x00007f24192729a1: lea    (%r12,%r10,8),%rbx
                             0x00007f24192729a5: movzwl 0x10(%rbx,%rdx,2),%r10d  ;*caload
                                                                           ; - java.lang.String::charAt@27 (line 660)
                                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                           ; - com.google.re2j.Machine::match@60 (line 193)
  0.00%                      0x00007f24192729ab: cmp    $0xd800,%r10d
                             0x00007f24192729b2: jge    0x00007f2419273ff1  ;*if_icmplt
                                                                           ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                           ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                           ; - com.google.re2j.Machine::match@60 (line 193)
  0.00%                      0x00007f24192729b8: shl    $0x3,%r10d         ;*ishl
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                                                                           ; - com.google.re2j.Machine::match@60 (line 193)
                             0x00007f24192729bc: mov    %r10d,%r8d
                             0x00007f24192729bf: and    $0x7,%r8d
  0.01%                      0x00007f24192729c3: or     $0x1,%r10d
                             0x00007f24192729c7: vmovd  %r10d,%xmm3
  0.00%                      0x00007f24192729cc: or     $0x1,%r8d          ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                                                                           ; - com.google.re2j.Machine::match@60 (line 193)
                             0x00007f24192729d0: mov    %r8d,0x28(%rsp)
                             0x00007f24192729d5: mov    %r10d,%edi
                             0x00007f24192729d8: sar    $0x3,%edi          ;*ishr
                                                                           ; - com.google.re2j.Machine::match@68 (line 194)
                             0x00007f24192729db: cmp    $0xfffffff8,%r10d
                             0x00007f24192729df: je     0x00007f2419273c09  ;*if_icmpeq
                                                                           ; - com.google.re2j.Machine::match@88 (line 198)
                             0x00007f24192729e5: vmovd  %xmm1,%r10d
           0.01%             0x00007f24192729ea: add    %r8d,%r10d
                             0x00007f24192729ed: add    %esi,%r10d         ;*iadd
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                                                                           ; - com.google.re2j.Machine::match@96 (line 199)
                             0x00007f24192729f0: mov    %r10d,%edx
                             0x00007f24192729f3: cmp    %r14d,%r10d
                             0x00007f24192729f6: jge    0x00007f2419273361  ;*if_icmpge
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                                                                           ; - com.google.re2j.Machine::match@96 (line 199)
  0.00%    0.00%             0x00007f24192729fc: test   %r10d,%r10d
                             0x00007f24192729ff: jl     0x00007f2419273ea9  ;*iflt
                                                                           ; - java.lang.String::charAt@1 (line 657)
                                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                           ; - com.google.re2j.Machine::match@96 (line 199)
                             0x00007f2419272a05: cmp    %eax,%r10d
                             0x00007f2419272a08: jge    0x00007f241927403d  ;*if_icmplt
                                                                           ; - java.lang.String::charAt@10 (line 657)
                                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                           ; - com.google.re2j.Machine::match@96 (line 199)
  0.02%                      0x00007f2419272a0e: cmp    %eax,%r10d
                             0x00007f2419272a11: jae    0x00007f2419273ca9
  0.00%    0.01%             0x00007f2419272a17: movzwl 0x10(%rbx,%r10,2),%r10d  ;*caload
                                                                           ; - java.lang.String::charAt@27 (line 660)
                                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                           ; - com.google.re2j.Machine::match@96 (line 199)
  0.01%    0.00%             0x00007f2419272a1d: cmp    $0xd800,%r10d
                             0x00007f2419272a24: jge    0x00007f24192740a1  ;*if_icmplt
                                                                           ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                           ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                           ; - com.google.re2j.Machine::match@96 (line 199)
  0.01%    0.02%             0x00007f2419272a2a: shl    $0x3,%r10d         ;*ishl
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                                                                           ; - com.google.re2j.Machine::match@96 (line 199)
                             0x00007f2419272a2e: mov    %r10d,%r8d
                             0x00007f2419272a31: or     $0x1,%r8d
  0.01%                      0x00007f2419272a35: and    $0x7,%r10d
                             0x00007f2419272a39: sar    $0x3,%r8d          ;*ishr
                                                                           ; - com.google.re2j.Machine::match@104 (line 200)
  0.02%    0.01%             0x00007f2419272a3d: mov    %r8d,0x2c(%rsp)
  0.00%                      0x00007f2419272a42: or     $0x1,%r10d         ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                                                                           ; - com.google.re2j.Machine::match@96 (line 199)
                             0x00007f2419272a46: mov    %r10d,0x30(%rsp)   ;*ishr
                                                                           ; - com.google.re2j.Machine::match@104 (line 200)
  0.01%                      0x00007f2419272a4b: vmovd  %xmm1,%r10d
                             0x00007f2419272a50: test   %r10d,%r10d
                             0x00007f2419272a53: jne    0x00007f2419273e5d  ;*ifne
                                                                           ; - com.google.re2j.Machine::match@115 (line 204)
                             0x00007f2419272a59: test   %edi,%edi
                             0x00007f2419272a5b: jl     0x00007f2419273340  ;*ifge
                                                                           ; - com.google.re2j.Utils::emptyOpContext@21 (line 179)
                                                                           ; - com.google.re2j.Machine::match@121 (line 205)
                             0x00007f2419272a61: mov    $0x5,%r10d         ;*iload_1
                                                                           ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                                                                           ; - com.google.re2j.Machine::match@121 (line 205)
  0.00%                      0x00007f2419272a67: cmp    $0xa,%edi
                             0x00007f2419272a6a: je     0x00007f2419273358  ;*iload_0
                                                                           ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                                                                           ; - com.google.re2j.Machine::match@121 (line 205)
                             0x00007f2419272a70: mov    0x40(%rsp),%r8
                             0x00007f2419272a75: movzbl 0x11(%r8),%r13d    ;*getfield captures
                                                                           ; - com.google.re2j.Machine::match@283 (line 240)
                             0x00007f2419272a7a: mov    %edi,%ebx
  0.01%                      0x00007f2419272a7c: add    $0xffffffbf,%ebx
                             0x00007f2419272a7f: vmovd  %xmm2,%r8d
                             0x00007f2419272a84: shl    $0x3,%r8           ;*getfield q1
                                                                           ; - com.google.re2j.Machine::match@53 (line 192)
                             0x00007f2419272a88: cmp    $0x1a,%ebx
                  ╭          0x00007f2419272a8b: jb     0x00007f2419272a9b  ;*if_icmple
                  │                                                        ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │                                                        ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                        ; - com.google.re2j.Machine::match@121 (line 205)
                  │          0x00007f2419272a8d: mov    %edi,%ebx
                  │          0x00007f2419272a8f: add    $0xffffff9f,%ebx
                  │          0x00007f2419272a92: cmp    $0x1a,%ebx
                  │          0x00007f2419272a95: jae    0x00007f2419273379  ;*iconst_1
                  │                                                        ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │                                                        ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                        ; - com.google.re2j.Machine::match@121 (line 205)
           0.00%  ↘          0x00007f2419272a9b: or     $0x10,%r10d        ;*iload_2
                                                                           ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                           ; - com.google.re2j.Machine::match@121 (line 205)
  0.00%                      0x00007f2419272a9f: mov    %r8,0x20(%rsp)
  0.01%    0.01%             0x00007f2419272aa4: xor    %eax,%eax
                             0x00007f2419272aa6: mov    $0x1,%r8d
                             0x00007f2419272aac: xor    %edx,%edx
                             0x00007f2419272aae: mov    %r8d,0x14(%rsp)
                             0x00007f2419272ab3: mov    %edx,0x60(%rsp)
                   ╭         0x00007f2419272ab7: jmpq   0x00007f2419272c31
  0.07%    0.07%   │    ↗    0x00007f2419272abc: or     $0x20,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                   │    │                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.03%    0.01%   │    │    0x00007f2419272ac0: mov    %r8d,0x3c(%rsp)    ;*iload_2
                   │    │                                                  ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   │    │                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.44%    0.42%   │    │↗   0x00007f2419272ac5: mov    0x60(%rsp),%r11d
  0.32%    0.21%   │    ││   0x00007f2419272aca: cmp    %r14d,%r11d
                   │    ││   0x00007f2419272acd: je     0x00007f241927328b  ;*if_icmpne
                   │    ││                                                 ; - com.google.re2j.Machine::match@351 (line 246)
  0.15%    0.12%   │    ││   0x00007f2419272ad3: xor    %eax,%eax          ;*invokespecial step
                   │    ││                                                 ; - com.google.re2j.Machine::match@359 (line 246)
  0.03%    0.04%   │    ││   0x00007f2419272ad5: mov    %rax,-0x8(%rsp)
  0.44%    0.35%   │    ││   0x00007f2419272ada: mov    0x60(%rsp),%eax
  0.24%    0.17%   │    ││   0x00007f2419272ade: mov    %eax,0x34(%rsp)
  0.22%    0.17%   │    ││   0x00007f2419272ae2: mov    -0x8(%rsp),%rax    ;*invokevirtual endPos
                   │    ││                                                 ; - com.google.re2j.Machine::match@348 (line 246)
  0.62%    0.27%   │    ││   0x00007f2419272ae7: add    0x28(%rsp),%r11d   ;*iadd
                   │    ││                                                 ; - com.google.re2j.Machine::match@340 (line 246)
  0.40%    0.28%   │    ││   0x00007f2419272aec: mov    %r11d,0x60(%rsp)
  0.35%    0.22%   │    ││   0x00007f2419272af1: mov    0x40(%rsp),%rsi
  0.05%    0.04%   │    ││   0x00007f2419272af6: mov    0x18(%rsp),%rdx
  0.05%    0.05%   │    ││   0x00007f2419272afb: mov    0x20(%rsp),%rcx
  0.31%    0.28%   │    ││   0x00007f2419272b00: mov    0x34(%rsp),%r8d
  0.37%    0.31%   │    ││   0x00007f2419272b05: mov    %r11d,%r9d
  0.03%    0.04%   │    ││   0x00007f2419272b08: mov    0x3c(%rsp),%r10d
  0.08%    0.04%   │    ││   0x00007f2419272b0d: mov    %r10d,(%rsp)
  0.47%    0.10%   │    ││   0x00007f2419272b11: mov    0x48(%rsp),%r10d
  0.16%    0.24%   │    ││   0x00007f2419272b16: mov    %r10d,0x8(%rsp)
  0.11%    0.09%   │    ││   0x00007f2419272b1b: mov    %eax,0x10(%rsp)
  0.12%    0.03%   │    ││   0x00007f2419272b1f: callq  0x00007f2419046020  ; OopMap{[24]=Oop [32]=Oop [56]=NarrowOop [64]=Oop [80]=Oop off=644}
                   │    ││                                                 ;*invokespecial step
                   │    ││                                                 ; - com.google.re2j.Machine::match@359 (line 246)
                   │    ││                                                 ;   {optimized virtual_call}
           0.00%   │    ││   0x00007f2419272b24: mov    0x40(%rsp),%r10
  0.66%    0.89%   │    ││   0x00007f2419272b29: movzbl 0x11(%r10),%r13d   ;*getfield captures
                   │    ││                                                 ; - com.google.re2j.Machine::match@371 (line 250)
  0.00%    0.00%   │    ││   0x00007f2419272b2e: movzbl 0x10(%r10),%eax    ;*getfield matched
                   │    ││                                                 ; - com.google.re2j.Machine::match@378 (line 250)
                   │    ││   0x00007f2419272b33: mov    0x28(%rsp),%r8d
  0.67%    0.90%   │    ││   0x00007f2419272b38: test   %r8d,%r8d
                   │    ││   0x00007f2419272b3b: je     0x00007f241927324b  ;*ifne
                   │    ││                                                 ; - com.google.re2j.Machine::match@364 (line 247)
  0.00%            │    ││   0x00007f2419272b41: test   %r13d,%r13d
                   │    ││   0x00007f2419272b44: jne    0x00007f24192736a5  ;*ifne
                   │    ││                                                 ; - com.google.re2j.Machine::match@374 (line 250)
                   │    ││   0x00007f2419272b4a: test   %eax,%eax
                   │    ││   0x00007f2419272b4c: jne    0x00007f24192738fd  ;*ifeq
                   │    ││                                                 ; - com.google.re2j.Machine::match@381 (line 250)
                   │    ││   0x00007f2419272b52: mov    0x50(%rsp),%r10
  0.62%    0.83%   │    ││   0x00007f2419272b57: mov    0x10(%r10),%r14d   ;*getfield end
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                   │    ││                                                 ; - com.google.re2j.Machine::match@411 (line 259)
  0.01%            │    ││   0x00007f2419272b5b: mov    0xc(%r10),%esi     ;*getfield start
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                   │    ││                                                 ; - com.google.re2j.Machine::match@411 (line 259)
  0.01%    0.01%   │    ││   0x00007f2419272b5f: mov    0x14(%r10),%ecx    ;*getfield str
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                   │    ││                                                 ; - com.google.re2j.Machine::match@411 (line 259)
  0.02%    0.02%   │    ││   0x00007f2419272b63: mov    0x2c(%rsp),%r10d
  0.72%    0.92%   │    ││   0x00007f2419272b68: cmp    $0xffffffff,%r10d
                   │    ││   0x00007f2419272b6c: je     0x00007f2419273295  ;*if_icmpeq
                   │    ││                                                 ; - com.google.re2j.Machine::match@403 (line 258)
                   │    ││   0x00007f2419272b72: mov    0x30(%rsp),%r8d
                   │    ││   0x00007f2419272b77: add    0x60(%rsp),%r8d
  0.01%            │    ││   0x00007f2419272b7c: add    %esi,%r8d          ;*iadd
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                   │    ││                                                 ; - com.google.re2j.Machine::match@411 (line 259)
  0.62%    0.71%   │    ││   0x00007f2419272b7f: cmp    %r14d,%r8d
                   │    ││   0x00007f2419272b82: jge    0x00007f24192732b6  ;*if_icmpge
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                   │    ││                                                 ; - com.google.re2j.Machine::match@411 (line 259)
                   │    ││   0x00007f2419272b88: mov    0x8(%r12,%rcx,8),%r11d  ; implicit exception: dispatches to 0x00007f24192747b9
  0.04%    0.05%   │    ││   0x00007f2419272b8d: cmp    $0xf80002da,%r11d  ;   {metadata(&apos;java/lang/String&apos;)}
                   │    ││   0x00007f2419272b94: jne    0x00007f2419273585
  0.00%    0.03%   │    ││   0x00007f2419272b9a: lea    (%r12,%rcx,8),%r9  ;*invokeinterface charAt
                   │    ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                 ; - com.google.re2j.Machine::match@411 (line 259)
  0.71%    0.59%   │    ││   0x00007f2419272b9e: test   %r8d,%r8d
                   │    ││   0x00007f2419272ba1: jl     0x00007f2419273715  ;*iflt
                   │    ││                                                 ; - java.lang.String::charAt@1 (line 657)
                   │    ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                 ; - com.google.re2j.Machine::match@411 (line 259)
                   │    ││   0x00007f2419272ba7: mov    0xc(%r9),%edi      ;*getfield value
                   │    ││                                                 ; - java.lang.String::charAt@6 (line 657)
                   │    ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                 ; - com.google.re2j.Machine::match@411 (line 259)
  0.03%    0.01%   │    ││   0x00007f2419272bab: mov    0xc(%r12,%rdi,8),%ebp  ;*arraylength
                   │    ││                                                 ; - java.lang.String::charAt@9 (line 657)
                   │    ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                 ; - com.google.re2j.Machine::match@411 (line 259)
                   │    ││                                                 ; implicit exception: dispatches to 0x00007f24192747cd
  0.36%    0.47%   │    ││   0x00007f2419272bb0: cmp    %ebp,%r8d
                   │    ││   0x00007f2419272bb3: jge    0x00007f241927396d  ;*if_icmplt
                   │    ││                                                 ; - java.lang.String::charAt@10 (line 657)
                   │    ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                 ; - com.google.re2j.Machine::match@411 (line 259)
  0.64%    0.51%   │    ││   0x00007f2419272bb9: cmp    %ebp,%r8d
                   │    ││   0x00007f2419272bbc: jae    0x00007f2419273435
  0.08%    0.08%   │    ││   0x00007f2419272bc2: lea    (%r12,%rdi,8),%r10
                   │    ││   0x00007f2419272bc6: movzwl 0x10(%r10,%r8,2),%ebx  ;*caload
                   │    ││                                                 ; - java.lang.String::charAt@27 (line 660)
                   │    ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                 ; - com.google.re2j.Machine::match@411 (line 259)
  0.02%    0.03%   │    ││   0x00007f2419272bcc: cmp    $0xd800,%ebx
                   │    ││   0x00007f2419272bd2: jge    0x00007f24192739e5  ;*if_icmplt
                   │    ││                                                 ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   │    ││                                                 ; - java.lang.Character::codePointAt@9 (line 4867)
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                 ; - com.google.re2j.Machine::match@411 (line 259)
  0.78%    0.28%   │    ││   0x00007f2419272bd8: shl    $0x3,%ebx          ;*ishl
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                   │    ││                                                 ; - com.google.re2j.Machine::match@411 (line 259)
  0.15%    0.05%   │    ││   0x00007f2419272bdb: mov    %ebx,%r8d
                   │    ││   0x00007f2419272bde: or     $0x1,%r8d
  0.27%    0.19%   │    ││   0x00007f2419272be2: and    $0x7,%ebx
  0.57%    0.29%   │    ││   0x00007f2419272be5: sar    $0x3,%r8d          ;*ishr
                   │    ││                                                 ; - com.google.re2j.Machine::match@419 (line 260)
  0.05%    0.12%   │    ││   0x00007f2419272be9: or     $0x1,%ebx          ; OopMap{rcx=NarrowOop [24]=Oop [32]=Oop [64]=Oop [80]=Oop off=844}
                   │    ││                                                 ;*goto
                   │    ││                                                 ; - com.google.re2j.Machine::match@441 (line 266)
  0.35%    0.40%   │    ││   0x00007f2419272bec: test   %eax,0x168a240e(%rip)        # 0x00007f242fb15000
                   │    ││                                                 ;*goto
                   │    ││                                                 ; - com.google.re2j.Machine::match@441 (line 266)
                   │    ││                                                 ;   {poll}
  0.04%    0.02%   │    ││   0x00007f2419272bf2: mov    0x40(%rsp),%r10
  0.34%    0.10%   │    ││   0x00007f2419272bf7: mov    0x28(%r10),%r11d   ;*getfield matchcap
                   │    ││                                                 ; - com.google.re2j.Machine::match@307 (line 243)
  0.08%    0.08%   │    ││   0x00007f2419272bfb: mov    0x14(%r10),%r9d    ;*getfield re2
                   │    ││                                                 ; - com.google.re2j.Machine::match@169 (line 220)
  0.26%    0.32%   │    ││   0x00007f2419272bff: mov    0x20(%rsp),%r10
  0.00%            │    ││   0x00007f2419272c04: shr    $0x3,%r10
  0.25%    0.19%   │    ││   0x00007f2419272c08: mov    %r10d,0x38(%rsp)
  0.04%    0.10%   │    ││   0x00007f2419272c0d: mov    0x2c(%rsp),%edi
  0.22%    0.44%   │    ││   0x00007f2419272c11: mov    0x3c(%rsp),%r10d
           0.01%   │    ││   0x00007f2419272c16: mov    0x18(%rsp),%rdx
  0.34%    0.38%   │    ││   0x00007f2419272c1b: mov    %rdx,0x20(%rsp)
  0.05%    0.07%   │    ││   0x00007f2419272c20: mov    0x30(%rsp),%edx
  0.26%    0.39%   │    ││   0x00007f2419272c24: mov    %edx,0x28(%rsp)
                   │    ││   0x00007f2419272c28: mov    %r8d,0x2c(%rsp)
  0.31%    0.25%   │    ││   0x00007f2419272c2d: mov    %ebx,0x30(%rsp)    ;*getfield matchcap
                   │    ││                                                 ; - com.google.re2j.Machine::match@307 (line 243)
  0.04%    0.05%   ↘    ││   0x00007f2419272c31: mov    0x38(%rsp),%r8d
  0.37%    0.40%        ││   0x00007f2419272c36: movzbl 0x18(%r12,%r8,8),%r8d  ; implicit exception: dispatches to 0x00007f2419274761
  0.03%                 ││   0x00007f2419272c3c: mov    0x38(%rsp),%edx
  0.34%    0.44%        ││   0x00007f2419272c40: lea    (%r12,%rdx,8),%rbx  ;*aload
                        ││                                                 ; - com.google.re2j.Machine::match@136 (line 211)
  0.07%    0.08%        ││   0x00007f2419272c44: mov    %rbx,0x18(%rsp)
  0.33%    0.42%        ││   0x00007f2419272c49: test   %r8d,%r8d
                        ││   0x00007f2419272c4c: jne    0x00007f2419272ebb  ;*aload_0
                        ││                                                 ; - com.google.re2j.Machine::match@267 (line 237)
  0.01%                 ││   0x00007f2419272c52: test   %eax,%eax
                        ││   0x00007f2419272c54: jne    0x00007f2419273601  ;*ifne
                        ││                                                 ; - com.google.re2j.Machine::match@271 (line 237)
  0.32%    0.17%        ││   0x00007f2419272c5a: mov    0x60(%rsp),%r8d
  0.07%    0.10%        ││   0x00007f2419272c5f: test   %r8d,%r8d
                    ╭   ││   0x00007f2419272c62: je     0x00007f2419272c72  ;*ifeq
                    │   ││                                                 ; - com.google.re2j.Machine::match@275 (line 237)
  0.32%    0.36%    │   ││   0x00007f2419272c64: mov    0x48(%rsp),%r9d
  0.00%    0.00%    │   ││   0x00007f2419272c69: test   %r9d,%r9d
                    │   ││   0x00007f2419272c6c: jne    0x00007f2419273655  ;*aload_0
                    │   ││                                                 ; - com.google.re2j.Machine::match@282 (line 240)
  0.33%    0.54%    ↘   ││   0x00007f2419272c72: test   %r13d,%r13d
                        ││   0x00007f2419272c75: jne    0x00007f2419273791  ;*ifeq
                        ││                                                 ; - com.google.re2j.Machine::match@286 (line 240)
  0.07%    0.04%        ││   0x00007f2419272c7b: mov    0x40(%rsp),%r8
  0.34%    0.43%        ││   0x00007f2419272c80: mov    0x18(%r8),%r8d     ;*getfield prog
                        ││                                                 ; - com.google.re2j.Machine::match@297 (line 243)
  0.01%                 ││   0x00007f2419272c84: mov    0x1c(%r12,%r8,8),%ebp  ;*getfield startInst
                        ││                                                 ; - com.google.re2j.Machine::match@300 (line 243)
                        ││                                                 ; implicit exception: dispatches to 0x00007f2419274771
  0.30%    0.43%        ││   0x00007f2419272c89: mov    0x8(%r12,%rbp,8),%r9d  ; implicit exception: dispatches to 0x00007f2419274781
  2.18%    2.45%        ││   0x00007f2419272c8e: cmp    $0xf8019909,%r9d   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                        ││   0x00007f2419272c95: jne    0x00007f24192734b5
  0.56%    0.67%        ││   0x00007f2419272c9b: lea    (%r12,%rbp,8),%r9  ;*invokevirtual add
                        ││                                                 ; - com.google.re2j.Machine::match@318 (line 243)
                        ││   0x00007f2419272c9f: mov    0x18(%r9),%ecx     ;*getfield pc
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                        ││                                                 ; - com.google.re2j.Machine::match@318 (line 243)
  0.27%    0.33%        ││   0x00007f2419272ca3: cmp    $0x40,%ecx
                        ││   0x00007f2419272ca6: jg     0x00007f24192737e5  ;*if_icmpgt
                        ││                                                 ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                        ││                                                 ; - com.google.re2j.Machine::match@318 (line 243)
  0.44%    0.54%        ││   0x00007f2419272cac: mov    $0x1,%ebx
  0.18%    0.26%        ││   0x00007f2419272cb1: shl    %cl,%rbx           ;*lshl
                        ││                                                 ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                        ││                                                 ; - com.google.re2j.Machine::match@318 (line 243)
  1.11%    1.39%        ││   0x00007f2419272cb4: mov    0x38(%rsp),%r10d
  0.09%    0.10%        ││   0x00007f2419272cb9: mov    0x10(%r12,%r10,8),%r8  ;*getfield pcsl
                        ││                                                 ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                        ││                                                 ; - com.google.re2j.Machine::match@318 (line 243)
                        ││   0x00007f2419272cbe: mov    %r8,%r10
  0.01%    0.02%        ││   0x00007f2419272cc1: and    %rbx,%r10          ;*land
                        ││                                                 ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                        ││                                                 ; - com.google.re2j.Machine::match@318 (line 243)
  0.55%    0.72%        ││   0x00007f2419272cc4: test   %r10,%r10
                        ││   0x00007f2419272cc7: jne    0x00007f241927383d  ;*ifeq
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                        ││                                                 ; - com.google.re2j.Machine::match@318 (line 243)
  0.09%    0.16%        ││   0x00007f2419272ccd: cmp    $0x40,%ecx
                        ││   0x00007f2419272cd0: jge    0x00007f24192738a5  ;*if_icmpge
                        ││                                                 ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                        ││                                                 ; - com.google.re2j.Machine::match@318 (line 243)
  0.01%    0.00%        ││   0x00007f2419272cd6: mov    0x38(%rsp),%r11d
  0.02%    0.01%        ││   0x00007f2419272cdb: mov    %r12b,0x18(%r12,%r11,8)  ;*putfield empty
                        ││                                                 ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                        ││                                                 ; - com.google.re2j.Machine::match@318 (line 243)
  0.55%    0.63%        ││   0x00007f2419272ce0: mov    0xc(%r12,%r11,8),%r10d  ;*getfield size
                        ││                                                 ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                        ││                                                 ; - com.google.re2j.Machine::match@318 (line 243)
  0.12%    0.12%        ││   0x00007f2419272ce5: mov    0x20(%r12,%r11,8),%r11d  ;*getfield denseThreadsInstructions
                        ││                                                 ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                        ││                                                 ; - com.google.re2j.Machine::match@318 (line 243)
           0.02%        ││   0x00007f2419272cea: or     %r8,%rbx
           0.01%        ││   0x00007f2419272ced: mov    0x38(%rsp),%r8d
  0.58%    0.73%        ││   0x00007f2419272cf2: mov    %rbx,0x10(%r12,%r8,8)  ;*putfield pcsl
                        ││                                                 ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                        ││                                                 ; - com.google.re2j.Machine::match@318 (line 243)
  0.12%    0.06%        ││   0x00007f2419272cf7: mov    %r10d,%r8d
                        ││   0x00007f2419272cfa: inc    %r8d
  0.02%    0.03%        ││   0x00007f2419272cfd: mov    0x38(%rsp),%ebx
  0.50%    0.63%        ││   0x00007f2419272d01: mov    %r8d,0xc(%r12,%rbx,8)  ;*putfield size
                        ││                                                 ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                        ││                                                 ; - com.google.re2j.Machine::match@318 (line 243)
  0.09%    0.01%        ││   0x00007f2419272d06: mov    0xc(%r12,%r11,8),%r8d  ; implicit exception: dispatches to 0x00007f24192747a1
  0.02%    0.00%        ││   0x00007f2419272d0b: cmp    %r8d,%r10d
                        ││   0x00007f2419272d0e: jae    0x00007f24192733c3
  0.04%    0.02%        ││   0x00007f2419272d14: mov    0x8(%r12,%r11,8),%r8d
  0.54%    0.68%        ││   0x00007f2419272d19: cmp    $0xf8019807,%r8d   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                        ││   0x00007f2419272d20: jne    0x00007f2419273515  ;*aastore
                        ││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                        ││                                                 ; - com.google.re2j.Machine::match@318 (line 243)
  0.09%    0.05%        ││   0x00007f2419272d26: test   %edi,%edi
                     ╭  ││   0x00007f2419272d28: jl     0x00007f2419272dd3  ;*ifge
                     │  ││                                                 ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                     │  ││                                                 ; - com.google.re2j.Machine::match@326 (line 245)
                     │  ││   0x00007f2419272d2e: xor    %r8d,%r8d          ;*iload_0
                     │  ││                                                 ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                     │  ││                                                 ; - com.google.re2j.Machine::match@326 (line 245)
  0.02%    0.03%     │  ││↗  0x00007f2419272d31: cmp    $0xa,%edi
                     │  │││  0x00007f2419272d34: je     0x00007f24192732a4  ;*iload_1
                     │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                     │  │││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.54%    0.50%     │  │││  0x00007f2419272d3a: mov    0x2c(%rsp),%ecx
  0.08%    0.03%     │  │││  0x00007f2419272d3e: test   %ecx,%ecx
  0.00%              │  │││  0x00007f2419272d40: jl     0x00007f2419273118  ;*iload_1
                     │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                     │  │││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.05%    0.02%     │  │││  0x00007f2419272d46: cmp    $0xa,%ecx
                     │  │││  0x00007f2419272d49: je     0x00007f24192732ad  ;*iload_0
                     │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                     │  │││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.65%    0.38%     │  │││  0x00007f2419272d4f: shr    $0x3,%r9           ;*aastore
                     │  │││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                     │  │││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                     │  │││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.12%    0.04%     │  │││  0x00007f2419272d53: shl    $0x3,%r11          ;*getfield denseThreadsInstructions
                     │  │││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                     │  │││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                     │  │││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.01%    0.00%     │  │││  0x00007f2419272d57: lea    0x10(%r11,%r10,4),%r10
  0.04%    0.02%     │  │││  0x00007f2419272d5c: mov    %r9d,(%r10)
  0.71%    0.64%     │  │││  0x00007f2419272d5f: mov    %edi,%r9d
  0.09%    0.03%     │  │││  0x00007f2419272d62: add    $0xffffffbf,%r9d
  0.00%    0.00%     │  │││  0x00007f2419272d66: shr    $0x9,%r10
  0.02%    0.01%     │  │││  0x00007f2419272d6a: movabs $0x7f24151ff000,%r11
  0.68%    0.49%     │  │││  0x00007f2419272d74: mov    %r12b,(%r11,%r10,1)  ;*aastore
                     │  │││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                     │  │││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                     │  │││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.43%    0.51%     │  │││  0x00007f2419272d78: cmp    $0x1a,%r9d
                     │╭ │││  0x00007f2419272d7c: jb     0x00007f2419272d8f  ;*if_icmple
                     ││ │││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                     ││ │││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     ││ │││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.01%    0.00%     ││ │││  0x00007f2419272d7e: mov    %edi,%r11d
  0.02%    0.02%     ││ │││  0x00007f2419272d81: add    $0xffffff9f,%r11d
  0.45%    0.39%     ││ │││  0x00007f2419272d85: cmp    $0x1a,%r11d
                     ││ │││  0x00007f2419272d89: jae    0x00007f24192732f5  ;*iconst_1
                     ││ │││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                     ││ │││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     ││ │││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.16%    0.10%     │↘ │││  0x00007f2419272d8f: mov    $0x1,%ebp          ;*ireturn
                     │  │││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                     │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     │  │││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.05%    0.10%     │  │││  0x00007f2419272d94: mov    0x2c(%rsp),%r10d
  0.07%    0.04%     │  │││  0x00007f2419272d99: add    $0xffffffbf,%r10d
  0.41%    0.29%     │  │││  0x00007f2419272d9d: cmp    $0x1a,%r10d
                     │ ╭│││  0x00007f2419272da1: jb     0x00007f2419272db6  ;*if_icmple
                     │ ││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                     │ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     │ ││││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.18%    0.15%     │ ││││  0x00007f2419272da3: mov    0x2c(%rsp),%r11d
  0.09%    0.15%     │ ││││  0x00007f2419272da8: add    $0xffffff9f,%r11d
  0.06%    0.07%     │ ││││  0x00007f2419272dac: cmp    $0x1a,%r11d
                     │ ││││  0x00007f2419272db0: jae    0x00007f2419273316  ;*iconst_1
                     │ ││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                     │ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     │ ││││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.42%    0.29%     │ ↘│││  0x00007f2419272db6: mov    $0x1,%r10d         ;*ireturn
                     │  │││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                     │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     │  │││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.22%    0.22%     │  │││  0x00007f2419272dbc: cmp    %r10d,%ebp
                     │  ╰││  0x00007f2419272dbf: je     0x00007f2419272abc  ;*if_icmpeq
                     │   ││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                     │   ││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.11%    0.06%     │   ││  0x00007f2419272dc5: or     $0x10,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                     │   ││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.02%    0.01%     │   ││  0x00007f2419272dc9: mov    %r8d,0x3c(%rsp)
  0.13%    0.10%     │   ╰│  0x00007f2419272dce: jmpq   0x00007f2419272ac5
                     ↘    │  0x00007f2419272dd3: mov    $0x5,%r8d
                          ╰  0x00007f2419272dd9: jmpq   0x00007f2419272d31
                             0x00007f2419272dde: xchg   %ax,%ax
  0.01%    0.01%             0x00007f2419272de0: mov    %edx,0x5c(%rsp)
  0.01%    0.02%             0x00007f2419272de4: jmpq   0x00007f241927305c
                             0x00007f2419272de9: mov    0x5c(%rsp),%r9d
                             0x00007f2419272dee: add    $0x2,%r9d
                             0x00007f2419272df2: mov    %r9d,0x5c(%rsp)
                             0x00007f2419272df7: mov    0x5c(%rsp),%r9d
                             0x00007f2419272dfc: inc    %r9d
                             0x00007f2419272dff: mov    %r9d,0x58(%rsp)
                             0x00007f2419272e04: jmp    0x00007f2419272e31
                             0x00007f2419272e06: mov    0x5c(%rsp),%r9d
                             0x00007f2419272e0b: add    $0x2,%r9d
                             0x00007f2419272e0f: mov    %r9d,0x58(%rsp)
....................................................................................................
 31.97%   31.28%  <total for region 2>

....[Hottest Regions]...............................................................................
 47.65%   48.09%         C2, level 4  com.google.re2j.Machine::step, version 542 (874 bytes) 
 31.97%   31.28%         C2, level 4  com.google.re2j.Machine::match, version 592 (1164 bytes) 
  7.97%    9.09%         C2, level 4  com.google.re2j.Machine::step, version 542 (340 bytes) 
  6.59%    7.20%         C2, level 4  com.google.re2j.Machine::step, version 542 (111 bytes) 
  1.20%    1.13%         C2, level 4  com.google.re2j.Machine::match, version 592 (240 bytes) 
  0.67%    0.67%   [kernel.kallsyms]  [unknown] (5 bytes) 
  0.33%    0.04%         C2, level 4  com.google.re2j.RE2::match, version 596 (152 bytes) 
  0.27%    0.10%         C2, level 4  com.google.re2j.Machine::match, version 592 (307 bytes) 
  0.21%    0.14%         C2, level 4  com.google.re2j.RE2::match, version 596 (33 bytes) 
  0.14%    0.06%         C2, level 4  com.google.re2j.RE2::match, version 596 (0 bytes) 
  0.13%    0.12%         C2, level 4  com.google.re2j.Machine::match, version 592 (190 bytes) 
  0.11%    0.00%   [kernel.kallsyms]  [unknown] (45 bytes) 
  0.11%    0.07%         C2, level 4  java.util.Collections::shuffle, version 607 (138 bytes) 
  0.10%    0.04%         C2, level 4  com.google.re2j.RE2::match, version 596 (0 bytes) 
  0.09%    0.09%         C2, level 4  com.google.re2j.RE2::match, version 596 (28 bytes) 
  0.09%    0.02%         C2, level 4  java.util.Collections::shuffle, version 607 (173 bytes) 
  0.08%    0.02%   [kernel.kallsyms]  [unknown] (44 bytes) 
  0.08%                  C2, level 4  com.google.re2j.RE2::match, version 596 (98 bytes) 
  0.07%    0.03%         C2, level 4  com.google.re2j.RE2::match, version 596 (175 bytes) 
  0.07%    0.02%         C2, level 4  com.google.re2j.Machine::match, version 592 (82 bytes) 
  2.09%    1.76%  <...other 381 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 62.20%   64.38%         C2, level 4  com.google.re2j.Machine::step, version 542 
 33.79%   32.71%         C2, level 4  com.google.re2j.Machine::match, version 592 
  1.56%    1.39%   [kernel.kallsyms]  [unknown] 
  1.16%    0.41%         C2, level 4  com.google.re2j.RE2::match, version 596 
  0.23%    0.13%         C2, level 4  java.util.Collections::shuffle, version 607 
  0.13%    0.03%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 642 
  0.07%    0.03%              [vdso]  [unknown] 
  0.04%    0.03%              [vdso]  __vdso_clock_gettime 
  0.04%    0.06%        libc-2.26.so  vfprintf 
  0.04%    0.01%  libpthread-2.26.so  __libc_write 
  0.03%    0.04%      hsdis-amd64.so  [unknown] 
  0.03%    0.04%           libjvm.so  RelocIterator::initialize 
  0.03%    0.05%        libc-2.26.so  _IO_fwrite 
  0.02%    0.01%           libjvm.so  GenericTaskQueueSet<OverflowTaskQueue<StarTask, (MemoryType)1, 131072u>, (MemoryType)1>::steal_best_of_2 
  0.02%    0.01%           libjvm.so  Monitor::ILock 
  0.02%    0.03%           libjvm.so  xmlTextStream::write 
  0.02%                 libc-2.26.so  __clock_gettime 
  0.02%    0.01%        libc-2.26.so  __strchr_avx2 
  0.02%    0.02%           libjvm.so  StringTable::unlink_or_oops_do 
  0.01%    0.01%           libjvm.so  defaultStream::hold 
  0.49%    0.30%  <...other 77 warm methods...>
....................................................................................................
100.00%   99.76%  <totals>

....[Distribution by Source]........................................................................
 97.53%   97.67%         C2, level 4
  1.56%    1.39%   [kernel.kallsyms]
  0.43%    0.42%           libjvm.so
  0.19%    0.29%        libc-2.26.so
  0.11%    0.07%              [vdso]
  0.09%    0.07%  libpthread-2.26.so
  0.03%    0.04%      hsdis-amd64.so
  0.03%    0.02%         interpreter
  0.01%                             
  0.01%    0.01%        runtime stub
  0.01%    0.00%         C1, level 3
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:44

Benchmark                     Mode  Cnt      Score     Error  Units
Re2jFindRegex.testExp1       thrpt   20  28149.319 ± 346.980  ops/s
Re2jFindRegex.testExp1:·asm  thrpt             NaN              ---
