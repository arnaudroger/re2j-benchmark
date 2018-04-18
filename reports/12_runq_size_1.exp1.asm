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
# Warmup Iteration   1: 8864.738 ops/s
# Warmup Iteration   2: 20669.419 ops/s
# Warmup Iteration   3: 20793.731 ops/s
# Warmup Iteration   4: 20755.777 ops/s
# Warmup Iteration   5: 20808.725 ops/s
# Warmup Iteration   6: 20813.699 ops/s
# Warmup Iteration   7: 20724.119 ops/s
# Warmup Iteration   8: 20787.820 ops/s
# Warmup Iteration   9: 20766.992 ops/s
# Warmup Iteration  10: 20624.445 ops/s
# Warmup Iteration  11: 20219.043 ops/s
# Warmup Iteration  12: 20804.673 ops/s
# Warmup Iteration  13: 20807.606 ops/s
# Warmup Iteration  14: 19744.010 ops/s
# Warmup Iteration  15: 20770.762 ops/s
# Warmup Iteration  16: 20883.115 ops/s
# Warmup Iteration  17: 20684.179 ops/s
# Warmup Iteration  18: 20688.517 ops/s
# Warmup Iteration  19: 20693.011 ops/s
# Warmup Iteration  20: 20692.775 ops/s
Iteration   1: 20686.117 ops/s
Iteration   2: 17898.630 ops/s
Iteration   3: 20399.162 ops/s
Iteration   4: 20741.289 ops/s
Iteration   5: 20821.836 ops/s
Iteration   6: 20820.697 ops/s
Iteration   7: 20821.919 ops/s
Iteration   8: 20821.562 ops/s
Iteration   9: 19395.304 ops/s
Iteration  10: 20824.255 ops/s
Iteration  11: 20820.320 ops/s
Iteration  12: 20774.694 ops/s
Iteration  13: 20807.302 ops/s
Iteration  14: 20808.880 ops/s
Iteration  15: 19330.650 ops/s
Iteration  16: 20812.131 ops/s
Iteration  17: 20810.836 ops/s
Iteration  18: 20812.547 ops/s
Iteration  19: 20810.159 ops/s
Iteration  20: 20621.756 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  20482.002 ±(99.9%) 652.885 ops/s [Average]
  (min, avg, max) = (17898.630, 20482.002, 20824.255), stdev = 751.863
  CI (99.9%): [19829.117, 21134.887] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1:·asm":
PrintAssembly processed: 192644 total address lines.
Perf output processed (skipped 23.257 seconds):
 Column 1: cycles (20385 events)
 Column 2: instructions (20447 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 485 (796 bytes) 

                     0x00007f0c9921b4a1: jae    0x00007f0c9921bd25
                     0x00007f0c9921b4a7: mov    %rax,%r10
                     0x00007f0c9921b4aa: mov    %rcx,%r8
                     0x00007f0c9921b4ad: shr    $0x3,%r8
                     0x00007f0c9921b4b1: mov    %r8d,(%rax)
                     0x00007f0c9921b4b4: shr    $0x9,%r10
                     0x00007f0c9921b4b8: movabs $0x7f0caa48e000,%r8
                     0x00007f0c9921b4c2: mov    %r12b,(%r8,%r10,1)  ;*synchronization entry
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.25%    0.28%     0x00007f0c9921b4c6: mov    0x30(%rsp),%rax
  0.17%    0.11%     0x00007f0c9921b4cb: mov    0x9c(%rsp),%r13d
  0.34%    0.22%     0x00007f0c9921b4d3: mov    0x94(%rsp),%r10d   ;*aload
                                                                   ; - com.google.re2j.Machine::step@207 (line 315)
  2.00%    1.53%  ↗  0x00007f0c9921b4db: inc    %r10d              ;*iinc
                  │                                                ; - com.google.re2j.Machine::step@218 (line 282)
  0.21%    0.21%  │  0x00007f0c9921b4de: cmp    %r13d,%r10d
                  │  0x00007f0c9921b4e1: jge    0x00007f0c9921b96b  ;*aload_0
                  │                                                ; - com.google.re2j.Machine::step@25 (line 285)
  0.31%    0.35%  │  0x00007f0c9921b4e7: mov    0x8(%rsp),%r8
  0.49%    0.64%  │  0x00007f0c9921b4ec: movzbl 0x11(%r8),%r8d     ;*getfield captures
                  │                                                ; - com.google.re2j.Machine::step@26 (line 285)
  2.60%    2.19%  │  0x00007f0c9921b4f1: test   %r8d,%r8d
                  │  0x00007f0c9921b4f4: jne    0x00007f0c9921bb29  ;*ifne
                  │                                                ; - com.google.re2j.Machine::step@29 (line 285)
  0.79%    1.09%  │  0x00007f0c9921b4fa: mov    0x20(%rax),%ebp    ;*getfield denseThreadsInstructions
                  │                                                ; - com.google.re2j.Machine::step@82 (line 295)
  0.22%    0.25%  │  0x00007f0c9921b4fd: mov    0xc(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007f0c9921c661
  1.10%    1.20%  │  0x00007f0c9921b502: cmp    %r8d,%r10d
                  │  0x00007f0c9921b505: jae    0x00007f0c9921baa9
  1.80%    1.41%  │  0x00007f0c9921b50b: lea    (%r12,%rbp,8),%r8
  0.61%    0.60%  │  0x00007f0c9921b50f: mov    0x10(%r8,%r10,4),%ecx  ;*aaload
                  │                                                ; - com.google.re2j.Machine::step@87 (line 295)
  0.17%    0.16%  │  0x00007f0c9921b514: mov    0xc(%r12,%rcx,8),%ebp  ;*getfield op
                  │                                                ; - com.google.re2j.Machine::step@92 (line 297)
                  │                                                ; implicit exception: dispatches to 0x00007f0c9921c675
  4.15%    4.60%  │  0x00007f0c9921b519: cmp    $0x6,%ebp
                  │  0x00007f0c9921b51c: je     0x00007f0c9921bb7d  ;*if_icmpne
                  │                                                ; - com.google.re2j.Machine::step@97 (line 297)
  2.12%    2.05%  │  0x00007f0c9921b522: mov    0x8(%r12,%rcx,8),%r8d
  0.75%    0.81%  │  0x00007f0c9921b527: cmp    $0xf8019993,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │  0x00007f0c9921b52e: jne    0x00007f0c9921bad1
  0.95%    0.97%  │  0x00007f0c9921b534: lea    (%r12,%rcx,8),%r8  ;*invokevirtual matchRune
                  │                                                ; - com.google.re2j.Machine::step@181 (line 312)
  0.06%    0.05%  │  0x00007f0c9921b538: mov    0xc(%r8),%ebp      ;*getfield op
                  │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@1 (line 136)
                  │                                                ; - com.google.re2j.Machine::step@181 (line 312)
  1.17%    1.17%  │  0x00007f0c9921b53c: cmp    $0xa,%ebp
                  │  0x00007f0c9921b53f: jne    0x00007f0c9921b8ff  ;*if_icmpne
                  │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@6 (line 136)
                  │                                                ; - com.google.re2j.Machine::step@181 (line 312)
  0.38%    0.52%  │  0x00007f0c9921b545: mov    0x1c(%r8),%r9d     ;*getfield outInst
                  │                                                ; - com.google.re2j.Machine::step@189 (line 313)
  0.13%    0.10%  │  0x00007f0c9921b549: mov    0x8(%r12,%r9,8),%ecx  ; implicit exception: dispatches to 0x00007f0c9921c685
  0.77%    0.67%  │  0x00007f0c9921b54e: lea    (%r12,%r9,8),%r8
  0.02%           │  0x00007f0c9921b552: cmp    $0xf8019844,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                  │  0x00007f0c9921b558: jne    0x00007f0c9921b99b  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Machine::step@202 (line 313)
  0.51%    0.60%  │  0x00007f0c9921b55e: mov    0x18(%r8),%edx     ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 190)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.06%  │  0x00007f0c9921b562: mov    0x10(%r11),%r9     ;*getfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 190)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
                  │                                                ; implicit exception: dispatches to 0x00007f0c9921c69d
  0.04%    0.03%  │  0x00007f0c9921b566: cmp    $0x40,%edx
                  │  0x00007f0c9921b569: jg     0x00007f0c9921be25  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 190)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.34%    0.30%  │  0x00007f0c9921b56f: mov    $0x1,%ebx
  0.26%    0.24%  │  0x00007f0c9921b574: mov    %edx,%ecx
  0.08%    0.05%  │  0x00007f0c9921b576: shl    %cl,%rbx           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 190)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  1.06%    1.04%  │  0x00007f0c9921b579: mov    %r9,%rcx
  0.02%    0.04%  │  0x00007f0c9921b57c: and    %rbx,%rcx
  0.07%    0.03%  │  0x00007f0c9921b57f: test   %rcx,%rcx
                  ╰  0x00007f0c9921b582: jne    0x00007f0c9921b4db  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.16%    0.19%     0x00007f0c9921b588: cmp    $0x40,%edx
                     0x00007f0c9921b58b: jge    0x00007f0c9921be85  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 193)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.47%    0.35%     0x00007f0c9921b591: mov    %r12b,0x18(%r11)   ;*putfield empty
                                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 193)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.04%     0x00007f0c9921b595: mov    0x1c(%r8),%ebp     ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.02%     0x00007f0c9921b599: or     %r9,%rbx           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 193)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.17%    0.18%     0x00007f0c9921b59c: mov    %rbx,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 193)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.45%    0.43%     0x00007f0c9921b5a0: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f0c9921c6b1
  0.85%    0.67%     0x00007f0c9921b5a5: cmp    $0xf8019993,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                     0x00007f0c9921b5ab: jne    0x00007f0c9921bc31
  0.62%    0.51%     0x00007f0c9921b5b1: lea    (%r12,%rbp,8),%r9  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.00%     0x00007f0c9921b5b5: mov    0x18(%r9),%ecx     ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.46%    0.35%     0x00007f0c9921b5b9: cmp    $0x40,%ecx
                     0x00007f0c9921b5bc: jg     0x00007f0c9921bee5  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.55%    0.45%     0x00007f0c9921b5c2: mov    $0x1,%edi
  0.06%    0.10%     0x00007f0c9921b5c7: shl    %cl,%rdi           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  1.25%    0.87%     0x00007f0c9921b5ca: mov    %rbx,%rdx
  0.04%    0.04%     0x00007f0c9921b5cd: and    %rdi,%rdx          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f0c9921b5d0: test   %rdx,%rdx
                     0x00007f0c9921b5d3: jne    0x00007f0c9921ba56  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.74%    0.45%     0x00007f0c9921b5d9: xor    %ebp,%ebp          ;*ireturn
                                                                   ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.04%     0x00007f0c9921b5db: test   %rdx,%rdx
                     0x00007f0c9921b5de: jne    0x00007f0c9921bf45  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.32%    0.25%     0x00007f0c9921b5e4: cmp    $0x40,%ecx
                     0x00007f0c9921b5e7: jge    0x00007f0c9921bfa1  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.01%     0x00007f0c9921b5ed: or     %rdi,%rbx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.27%    0.15%     0x00007f0c9921b5f0: mov    %rbx,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.08%    0.06%     0x00007f0c9921b5f4: mov    0x20(%r11),%edi    ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.32%    0.33%     0x00007f0c9921b5f8: mov    0xc(%r11),%ecx     ;*getfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.00%     0x00007f0c9921b5fc: mov    %ecx,%ebp
  0.23%    0.19%     0x00007f0c9921b5fe: inc    %ebp               ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.07%    0.05%     0x00007f0c9921b600: mov    %ebp,0xc(%r11)     ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.28%    0.28%     0x00007f0c9921b604: mov    0xc(%r12,%rdi,8),%esi  ; implicit exception: dispatches to 0x00007f0c9921c6c9
  0.01%              0x00007f0c9921b609: cmp    %esi,%ecx
                     0x00007f0c9921b60b: jae    0x00007f0c9921bbd1
  0.18%    0.22%     0x00007f0c9921b611: mov    0x8(%r12,%rdi,8),%edx
  0.09%    0.05%     0x00007f0c9921b616: cmp    $0xf8019808,%edx   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                     0x00007f0c9921b61c: jne    0x00007f0c9921bc8d  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.34%    0.32%     0x00007f0c9921b622: mov    0x20(%r8),%r8d     ;*getfield inst2
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@41 (line 196)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%    0.00%     0x00007f0c9921b626: mov    %r9,%rdx
  0.25%    0.26%     0x00007f0c9921b629: shr    $0x3,%rdx          ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.08%    0.12%     0x00007f0c9921b62d: lea    (%r12,%rdi,8),%r9  ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.28%    0.29%     0x00007f0c9921b631: lea    0x10(%r9,%rcx,4),%r14
  0.00%    0.00%     0x00007f0c9921b636: mov    %edx,(%r14)
  0.28%    0.33%     0x00007f0c9921b639: mov    %r14,%rdx
  0.10%    0.10%     0x00007f0c9921b63c: shr    $0x9,%rdx
  0.31%    0.31%     0x00007f0c9921b640: movabs $0x7f0caa48e000,%r14
  0.01%              0x00007f0c9921b64a: mov    %r12b,(%r14,%rdx,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.26%    0.33%     0x00007f0c9921b64e: mov    0x8(%r12,%r8,8),%edx  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                                                                   ; implicit exception: dispatches to 0x00007f0c9921c6e5
  0.04%    0.11%     0x00007f0c9921b653: vmovd  %ebp,%xmm2
  0.27%    0.34%     0x00007f0c9921b657: vmovd  %edi,%xmm0
  0.01%    0.00%     0x00007f0c9921b65b: mov    %r10d,0x94(%rsp)
  0.30%    0.29%     0x00007f0c9921b663: mov    %r13d,0x9c(%rsp)
  0.06%    0.07%     0x00007f0c9921b66b: mov    %r11,%r13
  0.31%    0.24%     0x00007f0c9921b66e: mov    %rax,0x30(%rsp)
  0.01%              0x00007f0c9921b673: mov    %ecx,%r14d
  0.26%    0.27%     0x00007f0c9921b676: movslq %ecx,%r10
  0.09%    0.05%     0x00007f0c9921b679: lea    (%r9,%r10,4),%rdi  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.30%    0.35%     0x00007f0c9921b67d: mov    %rdi,%rax
  0.01%              0x00007f0c9921b680: add    $0x14,%rax         ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.26%    0.32%     0x00007f0c9921b684: lea    (%r12,%r8,8),%r11
  0.08%    0.11%     0x00007f0c9921b688: mov    %ecx,%r10d
  0.27%    0.22%     0x00007f0c9921b68b: add    $0x2,%r10d         ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%    0.00%     0x00007f0c9921b68f: cmp    $0xf8019887,%edx   ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                     0x00007f0c9921b695: jne    0x00007f0c9921b441  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.26%    0.30%     0x00007f0c9921b69b: mov    %r11,%rdx
  0.11%    0.06%     0x00007f0c9921b69e: mov    0x18(%r11),%r11d   ;*getfield pc
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@2 (line 476)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.37%    0.24%     0x00007f0c9921b6a2: mov    %r11d,%ecx
           0.01%     0x00007f0c9921b6a5: cmp    $0x40,%r11d
                     0x00007f0c9921b6a9: jg     0x00007f0c9921c105  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 476)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.25%    0.15%     0x00007f0c9921b6af: mov    $0x1,%r8d
  0.08%    0.02%     0x00007f0c9921b6b5: shl    %cl,%r8            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 476)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.49%    0.32%     0x00007f0c9921b6b8: mov    %rbx,%r11
  0.10%    0.01%     0x00007f0c9921b6bb: and    %r8,%r11           ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 476)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.31%    0.11%     0x00007f0c9921b6be: test   %r11,%r11
                     0x00007f0c9921b6c1: jne    0x00007f0c9921ba60  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 476)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%              0x00007f0c9921b6c7: xor    %ebp,%ebp          ;*ireturn
                                                                   ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 476)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.32%    0.18%     0x00007f0c9921b6c9: test   %r11,%r11
                     0x00007f0c9921b6cc: jne    0x00007f0c9921c131  ;*ifeq
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@8 (line 476)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.13%    0.04%     0x00007f0c9921b6d2: mov    %ecx,%r11d
  0.27%    0.16%     0x00007f0c9921b6d5: cmp    $0x40,%r11d
                     0x00007f0c9921b6d9: jge    0x00007f0c9921c155  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@19 (line 479)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%    0.00%     0x00007f0c9921b6df: or     %r8,%rbx           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@19 (line 479)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.31%    0.29%     0x00007f0c9921b6e2: mov    %rbx,0x10(%r13)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@19 (line 479)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.09%    0.06%     0x00007f0c9921b6e6: mov    0x1c(%rdx),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@83 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.28%    0.22%     0x00007f0c9921b6e9: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f0c9921c71d
  0.03%    0.05%     0x00007f0c9921b6ee: cmp    $0xf8019844,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                     0x00007f0c9921b6f5: jne    0x00007f0c9921bde5
  0.30%    0.10%     0x00007f0c9921b6fb: lea    (%r12,%rbp,8),%rdx  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.06%    0.08%     0x00007f0c9921b6ff: mov    0x18(%rdx),%r11d   ;*getfield pc
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 190)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.26%    0.04%     0x00007f0c9921b703: vmovd  %r11d,%xmm1
           0.02%     0x00007f0c9921b708: cmp    $0x40,%r11d
                     0x00007f0c9921b70c: jg     0x00007f0c9921c1fd  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 190)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.31%    0.22%     0x00007f0c9921b712: mov    $0x1,%r8d
  0.07%    0.00%     0x00007f0c9921b718: mov    %r11d,%ecx
  0.31%    0.28%     0x00007f0c9921b71b: shl    %cl,%r8            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 190)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.40%    0.15%     0x00007f0c9921b71e: mov    %rbx,%r11
  0.33%    0.29%     0x00007f0c9921b721: and    %r8,%r11
  0.02%    0.02%     0x00007f0c9921b724: test   %r11,%r11
                     0x00007f0c9921b727: jne    0x00007f0c9921ba79  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 190)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.23%    0.48%     0x00007f0c9921b72d: mov    %ecx,%r11d
  0.07%    0.18%     0x00007f0c9921b730: cmp    $0x40,%r11d
                     0x00007f0c9921b734: jge    0x00007f0c9921c22d  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 193)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.26%    0.53%     0x00007f0c9921b73a: mov    0x1c(%rdx),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%              0x00007f0c9921b73d: or     %r8,%rbx           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 193)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.25%    0.26%     0x00007f0c9921b740: mov    %rbx,0x10(%r13)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 193)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.12%    0.11%     0x00007f0c9921b744: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007f0c9921c735
  0.39%    0.30%     0x00007f0c9921b749: cmp    $0xf8019993,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                     0x00007f0c9921b750: jne    0x00007f0c9921be05
  0.02%    0.01%     0x00007f0c9921b756: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.30%    0.27%     0x00007f0c9921b75a: vmovq  %r11,%xmm1
  0.07%    0.07%     0x00007f0c9921b75f: mov    0x18(%r11),%r11d   ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.32%    0.41%     0x00007f0c9921b763: mov    %r11d,%ecx
  0.00%    0.00%     0x00007f0c9921b766: cmp    $0x40,%r11d
                     0x00007f0c9921b76a: jg     0x00007f0c9921c259  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.25%    0.44%     0x00007f0c9921b770: mov    $0x1,%r8d
  0.08%    0.09%     0x00007f0c9921b776: shl    %cl,%r8            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.57%    0.79%     0x00007f0c9921b779: mov    %rbx,%r11
  0.06%    0.07%     0x00007f0c9921b77c: and    %r8,%r11           ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.22%    0.28%     0x00007f0c9921b77f: test   %r11,%r11
                     0x00007f0c9921b782: jne    0x00007f0c9921ba81  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%    0.01%     0x00007f0c9921b788: xor    %ebp,%ebp          ;*ireturn
                                                                   ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.25%    0.33%     0x00007f0c9921b78a: test   %r11,%r11
                     0x00007f0c9921b78d: jne    0x00007f0c9921c28d  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.06%    0.10%     0x00007f0c9921b793: mov    %ecx,%r11d
  0.27%    0.28%     0x00007f0c9921b796: cmp    $0x40,%r11d
                     0x00007f0c9921b79a: jge    0x00007f0c9921c2b1  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.02%     0x00007f0c9921b7a0: mov    %r10d,0xc(%r13)    ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.22%    0.25%     0x00007f0c9921b7a4: or     %r8,%rbx           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.08%    0.09%     0x00007f0c9921b7a7: mov    %rbx,0x10(%r13)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.37%    0.29%     0x00007f0c9921b7ab: cmp    %esi,%r10d
                     0x00007f0c9921b7ae: jae    0x00007f0c9921bd89  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.00%     0x00007f0c9921b7b4: mov    0x20(%rdx),%r11d   ;*getfield inst2
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@41 (line 196)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.27%    0.22%     0x00007f0c9921b7b8: mov    %rax,%r8
  0.06%    0.07%     0x00007f0c9921b7bb: vmovq  %xmm1,%r10
  0.19%    0.37%     0x00007f0c9921b7c0: shr    $0x3,%r10
  0.00%    0.02%     0x00007f0c9921b7c4: mov    %r10d,(%rax)
  0.28%    0.31%     0x00007f0c9921b7c7: shr    $0x9,%r8
  0.05%    0.07%     0x00007f0c9921b7cb: movabs $0x7f0caa48e000,%r10
  0.23%    0.29%     0x00007f0c9921b7d5: mov    %r12b,(%r10,%r8,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.06%     0x00007f0c9921b7d9: mov    0x8(%r12,%r11,8),%ecx  ; implicit exception: dispatches to 0x00007f0c9921c74d
  0.25%    0.23%     0x00007f0c9921b7de: lea    (%r12,%r11,8),%r10
  0.06%    0.10%     0x00007f0c9921b7e2: cmp    $0xf8019887,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                     0x00007f0c9921b7e8: jne    0x00007f0c9921b883  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f0c9921b7ee: mov    0x18(%r10),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@2 (line 476)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
....................................................................................................
 47.48%   45.20%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 527 (996 bytes) 

                                                                             ; - com.google.re2j.Machine::match@96 (line 199)
                               0x00007f0c9923c63c: shl    $0x3,%r11d         ;*ishl
                                                                             ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                                                                             ; - com.google.re2j.Machine::match@96 (line 199)
                               0x00007f0c9923c640: mov    %r11d,%r10d
                               0x00007f0c9923c643: or     $0x1,%r10d
                               0x00007f0c9923c647: and    $0x7,%r11d
                               0x00007f0c9923c64b: sar    $0x3,%r10d
                               0x00007f0c9923c64f: or     $0x1,%r11d         ;*ishr
                                                                             ; - com.google.re2j.Machine::match@104 (line 200)
  0.01%                        0x00007f0c9923c653: vmovd  %xmm1,%r8d
                               0x00007f0c9923c658: test   %r8d,%r8d
                               0x00007f0c9923c65b: jne    0x00007f0c9923d915  ;*ifne
                                                                             ; - com.google.re2j.Machine::match@115 (line 204)
                               0x00007f0c9923c661: test   %edi,%edi
                               0x00007f0c9923c663: jl     0x00007f0c9923cf76  ;*ifge
                                                                             ; - com.google.re2j.Utils::emptyOpContext@21 (line 179)
                                                                             ; - com.google.re2j.Machine::match@121 (line 205)
                               0x00007f0c9923c669: mov    %r10d,%ebx
  0.00%    0.01%               0x00007f0c9923c66c: mov    %r11d,0x30(%rsp)
                               0x00007f0c9923c671: mov    $0x5,%r10d         ;*iload_1
                                                                             ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                                                                             ; - com.google.re2j.Machine::match@121 (line 205)
                               0x00007f0c9923c677: cmp    $0xa,%edi
                               0x00007f0c9923c67a: je     0x00007f0c9923cfa2  ;*iload_0
                                                                             ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                                                                             ; - com.google.re2j.Machine::match@121 (line 205)
           0.00%               0x00007f0c9923c680: mov    %edi,%r8d
                               0x00007f0c9923c683: add    $0xffffffbf,%r8d
                               0x00007f0c9923c687: cmp    $0x1a,%r8d
                  ╭            0x00007f0c9923c68b: jb     0x00007f0c9923c69e  ;*if_icmple
                  │                                                          ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │                                                          ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                          ; - com.google.re2j.Machine::match@121 (line 205)
                  │            0x00007f0c9923c68d: mov    %edi,%r11d
                  │            0x00007f0c9923c690: add    $0xffffff9f,%r11d
  0.00%    0.01%  │            0x00007f0c9923c694: cmp    $0x1a,%r11d
                  │            0x00007f0c9923c698: jae    0x00007f0c9923cfb9  ;*iconst_1
                  │                                                          ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │                                                          ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                          ; - com.google.re2j.Machine::match@121 (line 205)
                  ↘            0x00007f0c9923c69e: or     $0x10,%r10d        ;*iload_2
                                                                             ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                             ; - com.google.re2j.Machine::match@121 (line 205)
           0.00%               0x00007f0c9923c6a2: movzbl 0x11(%r13),%r9d    ;*getfield captures
                                                                             ; - com.google.re2j.Machine::match@283 (line 240)
  0.01%                        0x00007f0c9923c6a7: mov    %rcx,%r11
  0.01%    0.01%               0x00007f0c9923c6aa: shl    $0x3,%r11          ;*getfield q1
                                                                             ; - com.google.re2j.Machine::match@53 (line 192)
                               0x00007f0c9923c6ae: mov    %r11,0x60(%rsp)
                               0x00007f0c9923c6b3: xor    %eax,%eax
  0.00%    0.00%               0x00007f0c9923c6b5: xor    %r8d,%r8d
           0.01%               0x00007f0c9923c6b8: mov    %r8d,0x5c(%rsp)
  0.00%            ╭           0x00007f0c9923c6bd: jmpq   0x00007f0c9923c847
  0.10%    0.07%   │    ↗      0x00007f0c9923c6c2: or     $0x20,%r9d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                   │    │                                                    ; - com.google.re2j.Machine::match@322 (line 245)
  0.14%    0.27%   │    │      0x00007f0c9923c6c6: mov    %r9d,0x2c(%rsp)    ;*iload_2
                   │    │                                                    ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   │    │                                                    ; - com.google.re2j.Machine::match@322 (line 245)
  0.35%    0.41%   │    │↗     0x00007f0c9923c6cb: cmp    0x14(%rsp),%eax
                   │    ││     0x00007f0c9923c6cf: je     0x00007f0c9923cecf  ;*if_icmpne
                   │    ││                                                   ; - com.google.re2j.Machine::match@347 (line 246)
  0.39%    0.42%   │    ││     0x00007f0c9923c6d5: xor    %ebx,%ebx          ;*invokespecial step
                   │    ││                                                   ; - com.google.re2j.Machine::match@355 (line 246)
  0.08%    0.08%   │    ││     0x00007f0c9923c6d7: mov    %rax,-0x8(%rsp)
  0.20%    0.29%   │    ││     0x00007f0c9923c6dc: mov    0x5c(%rsp),%eax
  0.18%    0.18%   │    ││     0x00007f0c9923c6e0: mov    %eax,0x38(%rsp)
  0.45%    0.45%   │    ││     0x00007f0c9923c6e4: mov    -0x8(%rsp),%rax
  0.26%    0.20%   │    ││     0x00007f0c9923c6e9: mov    %r10d,0x20(%rsp)   ;*invokevirtual endPos
                   │    ││                                                   ; - com.google.re2j.Machine::match@344 (line 246)
  0.35%    0.24%   │    ││     0x00007f0c9923c6ee: add    0x28(%rsp),%eax    ;*iadd
                   │    ││                                                   ; - com.google.re2j.Machine::match@336 (line 246)
  0.32%    0.28%   │    ││     0x00007f0c9923c6f2: mov    %eax,0x5c(%rsp)
  0.32%    0.18%   │    ││     0x00007f0c9923c6f6: mov    0x50(%rsp),%rsi
  0.03%    0.16%   │    ││     0x00007f0c9923c6fb: mov    0x18(%rsp),%rdx
  0.12%    0.20%   │    ││     0x00007f0c9923c700: mov    0x60(%rsp),%rcx
  0.14%    0.15%   │    ││     0x00007f0c9923c705: mov    0x38(%rsp),%r8d
  0.30%    0.31%   │    ││     0x00007f0c9923c70a: mov    %eax,%r9d
  0.07%    0.07%   │    ││     0x00007f0c9923c70d: mov    0x2c(%rsp),%r11d
  0.18%    0.12%   │    ││     0x00007f0c9923c712: mov    %r11d,(%rsp)
  0.16%    0.23%   │    ││     0x00007f0c9923c716: mov    0x3c(%rsp),%r11d
  0.23%    0.33%   │    ││     0x00007f0c9923c71b: mov    %r11d,0x8(%rsp)
  0.08%    0.14%   │    ││     0x00007f0c9923c720: mov    %ebx,0x10(%rsp)
  0.17%    0.16%   │    ││     0x00007f0c9923c724: data16 xchg %ax,%ax
  0.18%    0.17%   │    ││     0x00007f0c9923c727: callq  0x00007f0c99046020  ; OopMap{[24]=Oop [52]=NarrowOop [72]=Oop [80]=Oop [96]=Oop off=652}
                   │    ││                                                   ;*invokespecial step
                   │    ││                                                   ; - com.google.re2j.Machine::match@355 (line 246)
                   │    ││                                                   ;   {optimized virtual_call}
  0.00%    0.00%   │    ││     0x00007f0c9923c72c: mov    0x50(%rsp),%r10
  0.57%    0.64%   │    ││     0x00007f0c9923c731: movzbl 0x11(%r10),%r9d    ;*getfield captures
                   │    ││                                                   ; - com.google.re2j.Machine::match@367 (line 250)
  0.00%    0.00%   │    ││     0x00007f0c9923c736: movzbl 0x10(%r10),%eax    ;*getfield matched
                   │    ││                                                   ; - com.google.re2j.Machine::match@374 (line 250)
  0.00%            │    ││     0x00007f0c9923c73b: mov    0x28(%rsp),%r8d
  0.65%    0.73%   │    ││     0x00007f0c9923c740: test   %r8d,%r8d
                   │    ││     0x00007f0c9923c743: je     0x00007f0c9923ce7d  ;*ifne
                   │    ││                                                   ; - com.google.re2j.Machine::match@360 (line 247)
                   │    ││     0x00007f0c9923c749: test   %r9d,%r9d
                   │    ││     0x00007f0c9923c74c: jne    0x00007f0c9923d249  ;*ifne
                   │    ││                                                   ; - com.google.re2j.Machine::match@370 (line 250)
  0.01%            │    ││     0x00007f0c9923c752: test   %eax,%eax
                   │    ││     0x00007f0c9923c754: jne    0x00007f0c9923d43d  ;*ifeq
                   │    ││                                                   ; - com.google.re2j.Machine::match@377 (line 250)
  0.00%            │    ││     0x00007f0c9923c75a: mov    0x48(%rsp),%rdx
  0.61%    0.70%   │    ││     0x00007f0c9923c75f: mov    0x10(%rdx),%ecx    ;*getfield end
                   │    ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                   │    ││                                                   ; - com.google.re2j.Machine::match@407 (line 259)
  0.00%            │    ││     0x00007f0c9923c762: mov    0xc(%rdx),%r11d    ;*getfield start
                   │    ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                   │    ││                                                   ; - com.google.re2j.Machine::match@407 (line 259)
  0.02%    0.01%   │    ││     0x00007f0c9923c766: mov    %r11d,0x24(%rsp)
  0.01%    0.00%   │    ││     0x00007f0c9923c76b: mov    0x14(%rdx),%r11d   ;*getfield str
                   │    ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                   │    ││                                                   ; - com.google.re2j.Machine::match@407 (line 259)
  0.61%    0.85%   │    ││     0x00007f0c9923c76f: mov    0x20(%rsp),%ebp
  0.01%    0.00%   │    ││     0x00007f0c9923c773: cmp    $0xffffffff,%ebp
                   │    ││     0x00007f0c9923c776: je     0x00007f0c9923ced9  ;*if_icmpeq
                   │    ││                                                   ; - com.google.re2j.Machine::match@399 (line 258)
  0.01%    0.00%   │    ││     0x00007f0c9923c77c: mov    0x30(%rsp),%ebx
  0.01%            │    ││     0x00007f0c9923c780: add    0x5c(%rsp),%ebx
  0.68%    0.66%   │    ││     0x00007f0c9923c784: add    0x24(%rsp),%ebx    ;*iadd
                   │    ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                   │    ││                                                   ; - com.google.re2j.Machine::match@407 (line 259)
  0.06%    0.06%   │    ││     0x00007f0c9923c788: cmp    %ecx,%ebx
                   │    ││     0x00007f0c9923c78a: jge    0x00007f0c9923cee8  ;*if_icmpge
                   │    ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                   │    ││                                                   ; - com.google.re2j.Machine::match@407 (line 259)
  0.01%    0.03%   │    ││     0x00007f0c9923c790: mov    %ebp,%r14d
           0.00%   │    ││     0x00007f0c9923c793: mov    %r10,%rdi
  0.57%    0.61%   │    ││     0x00007f0c9923c796: mov    0x8(%r12,%r11,8),%r8d  ; implicit exception: dispatches to 0x00007f0c9923e125
  0.01%    0.02%   │    ││     0x00007f0c9923c79b: cmp    $0xf80002da,%r8d   ;   {metadata(&apos;java/lang/String&apos;)}
                   │    ││     0x00007f0c9923c7a2: jne    0x00007f0c9923d15d
  0.04%    0.05%   │    ││     0x00007f0c9923c7a8: lea    (%r12,%r11,8),%r13  ;*invokeinterface charAt
                   │    ││                                                   ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                   ; - com.google.re2j.Machine::match@407 (line 259)
                   │    ││     0x00007f0c9923c7ac: test   %ebx,%ebx
                   │    ││     0x00007f0c9923c7ae: jl     0x00007f0c9923d289  ;*iflt
                   │    ││                                                   ; - java.lang.String::charAt@1 (line 657)
                   │    ││                                                   ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                   ; - com.google.re2j.Machine::match@407 (line 259)
  0.61%    0.66%   │    ││     0x00007f0c9923c7b4: mov    0xc(%r13),%r8d     ;*getfield value
                   │    ││                                                   ; - java.lang.String::charAt@6 (line 657)
                   │    ││                                                   ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                   ; - com.google.re2j.Machine::match@407 (line 259)
           0.01%   │    ││     0x00007f0c9923c7b8: mov    0xc(%r12,%r8,8),%ebp  ;*arraylength
                   │    ││                                                   ; - java.lang.String::charAt@9 (line 657)
                   │    ││                                                   ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                   ; - com.google.re2j.Machine::match@407 (line 259)
                   │    ││                                                   ; implicit exception: dispatches to 0x00007f0c9923e139
  0.84%    0.80%   │    ││     0x00007f0c9923c7bd: cmp    %ebp,%ebx
                   │    ││     0x00007f0c9923c7bf: jge    0x00007f0c9923d47d  ;*if_icmplt
                   │    ││                                                   ; - java.lang.String::charAt@10 (line 657)
                   │    ││                                                   ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                   ; - com.google.re2j.Machine::match@407 (line 259)
  0.78%    0.70%   │    ││     0x00007f0c9923c7c5: cmp    %ebp,%ebx
                   │    ││     0x00007f0c9923c7c7: jae    0x00007f0c9923d059
  0.32%    0.29%   │    ││     0x00007f0c9923c7cd: lea    (%r12,%r8,8),%r10
                   │    ││     0x00007f0c9923c7d1: movzwl 0x10(%r10,%rbx,2),%r8d  ;*caload
                   │    ││                                                   ; - java.lang.String::charAt@27 (line 660)
                   │    ││                                                   ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                   ; - com.google.re2j.Machine::match@407 (line 259)
  0.12%    0.09%   │    ││     0x00007f0c9923c7d7: cmp    $0xd800,%r8d
                   │    ││     0x00007f0c9923c7de: jge    0x00007f0c9923d4e1  ;*if_icmplt
                   │    ││                                                   ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   │    ││                                                   ; - java.lang.Character::codePointAt@9 (line 4867)
                   │    ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                   ; - com.google.re2j.Machine::match@407 (line 259)
  0.50%    0.54%   │    ││     0x00007f0c9923c7e4: shl    $0x3,%r8d          ;*ishl
                   │    ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                   │    ││                                                   ; - com.google.re2j.Machine::match@407 (line 259)
  0.15%    0.22%   │    ││     0x00007f0c9923c7e8: mov    %r8d,%ebx
                   │    ││     0x00007f0c9923c7eb: or     $0x1,%ebx
  0.44%    0.48%   │    ││     0x00007f0c9923c7ee: and    $0x7,%r8d
  0.19%    0.20%   │    ││     0x00007f0c9923c7f2: sar    $0x3,%ebx          ;*ishr
                   │    ││                                                   ; - com.google.re2j.Machine::match@415 (line 260)
  0.52%    0.44%   │    ││     0x00007f0c9923c7f5: or     $0x1,%r8d          ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                   │    ││                                                   ; - com.google.re2j.Machine::match@407 (line 259)
  0.03%    0.05%   │    ││     0x00007f0c9923c7f9: mov    %rdi,%r10
           0.00%   │    ││     0x00007f0c9923c7fc: mov    %r14d,%ebp         ;*aload
                   │    ││                                                   ; - com.google.re2j.Machine::match@425 (line 263)
  0.14%    0.12%   │    ││     0x00007f0c9923c7ff: mov    %r10,%r13          ; OopMap{r10=Oop r11=NarrowOop r13=Oop [24]=Oop [72]=Oop [96]=Oop off=866}
                   │    ││                                                   ;*goto
                   │    ││                                                   ; - com.google.re2j.Machine::match@437 (line 266)
  0.45%    0.46%   │    ││     0x00007f0c9923c802: test   %eax,0x188497f8(%rip)        # 0x00007f0cb1a86000
                   │    ││                                                   ;*goto
                   │    ││                                                   ; - com.google.re2j.Machine::match@437 (line 266)
                   │    ││                                                   ;   {poll}
  0.02%    0.03%   │    ││     0x00007f0c9923c808: mov    0x28(%r10),%r14d   ;*getfield matchcap
                   │    ││                                                   ; - com.google.re2j.Machine::match@307 (line 243)
  0.01%            │    ││     0x00007f0c9923c80c: mov    0x14(%r10),%esi    ;*getfield re2
                   │    ││                                                   ; - com.google.re2j.Machine::match@169 (line 220)
  0.13%    0.17%   │    ││     0x00007f0c9923c810: mov    0x60(%rsp),%r10
  0.52%    0.41%   │    ││     0x00007f0c9923c815: mov    %r10,%rdi
  0.04%    0.02%   │    ││     0x00007f0c9923c818: shr    $0x3,%rdi
  0.01%            │    ││     0x00007f0c9923c81c: mov    %edi,0x34(%rsp)
  0.12%    0.13%   │    ││     0x00007f0c9923c820: mov    %ebp,%edi
  0.47%    0.50%   │    ││     0x00007f0c9923c822: mov    0x2c(%rsp),%r10d
  0.02%    0.03%   │    ││     0x00007f0c9923c827: mov    0x18(%rsp),%rdx
  0.00%    0.01%   │    ││     0x00007f0c9923c82c: mov    %rdx,0x60(%rsp)
  0.18%    0.16%   │    ││     0x00007f0c9923c831: mov    0x30(%rsp),%ebp
  0.47%    0.64%   │    ││     0x00007f0c9923c835: mov    %ebp,0x28(%rsp)
  0.05%    0.02%   │    ││     0x00007f0c9923c839: mov    %r8d,0x30(%rsp)
           0.02%   │    ││     0x00007f0c9923c83e: mov    %ecx,0x14(%rsp)
  0.13%    0.18%   │    ││     0x00007f0c9923c842: vmovd  %r11d,%xmm2        ;*getfield matchcap
                   │    ││                                                   ; - com.google.re2j.Machine::match@307 (line 243)
  0.46%    0.55%   ↘    ││     0x00007f0c9923c847: mov    0x34(%rsp),%r11d
  0.04%    0.08%        ││     0x00007f0c9923c84c: movzbl 0x18(%r12,%r11,8),%r8d  ; implicit exception: dispatches to 0x00007f0c9923e0cd
  0.02%    0.04%        ││     0x00007f0c9923c852: shl    $0x3,%r11          ;*aload
                        ││                                                   ; - com.google.re2j.Machine::match@136 (line 211)
  0.13%    0.12%        ││     0x00007f0c9923c856: mov    %r11,0x18(%rsp)
  0.45%    0.49%        ││     0x00007f0c9923c85b: test   %r8d,%r8d
                        ││     0x00007f0c9923c85e: jne    0x00007f0c9923caf2  ;*aload_0
                        ││                                                   ; - com.google.re2j.Machine::match@267 (line 237)
  0.05%    0.04%        ││     0x00007f0c9923c864: test   %eax,%eax
                        ││     0x00007f0c9923c866: jne    0x00007f0c9923d1b9  ;*ifne
                        ││                                                   ; - com.google.re2j.Machine::match@271 (line 237)
  0.00%    0.01%        ││     0x00007f0c9923c86c: mov    0x5c(%rsp),%r11d
  0.17%    0.23%        ││     0x00007f0c9923c871: test   %r11d,%r11d
                        ││     0x00007f0c9923c874: je     0x00007f0c9923cf6d  ;*ifeq
                        ││                                                   ; - com.google.re2j.Machine::match@275 (line 237)
  0.52%    0.63%        ││     0x00007f0c9923c87a: mov    0x3c(%rsp),%edx
  0.04%    0.08%        ││     0x00007f0c9923c87e: test   %edx,%edx
           0.01%        ││     0x00007f0c9923c880: jne    0x00007f0c9923d201  ;*aload_0
                        ││                                                   ; - com.google.re2j.Machine::match@282 (line 240)
  0.21%    0.18%        ││     0x00007f0c9923c886: test   %r9d,%r9d
                        ││     0x00007f0c9923c889: jne    0x00007f0c9923d2ed  ;*ifeq
                        ││                                                   ; - com.google.re2j.Machine::match@286 (line 240)
  0.55%    0.52%        ││     0x00007f0c9923c88f: mov    %r13,%r9
  0.05%    0.04%        ││     0x00007f0c9923c892: mov    0x18(%r13),%r8d    ;*getfield prog
                        ││                                                   ; - com.google.re2j.Machine::match@297 (line 243)
  0.00%    0.02%        ││     0x00007f0c9923c896: mov    0x1c(%r12,%r8,8),%ebp  ;*getfield startInst
                        ││                                                   ; - com.google.re2j.Machine::match@300 (line 243)
                        ││                                                   ; implicit exception: dispatches to 0x00007f0c9923e0dd
  0.19%    0.21%        ││     0x00007f0c9923c89b: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f0c9923e0ed
  0.47%    0.54%        ││     0x00007f0c9923c8a0: cmp    $0xf8019993,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                        ││     0x00007f0c9923c8a6: jne    0x00007f0c9923d0b5
  0.04%    0.04%        ││     0x00007f0c9923c8ac: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                        ││                                                   ; - com.google.re2j.Machine::match@314 (line 243)
  0.00%                 ││     0x00007f0c9923c8b0: mov    0x18(%r10),%ecx    ;*getfield pc
                        ││                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                        ││                                                   ; - com.google.re2j.Machine::match@314 (line 243)
  0.17%    0.18%        ││     0x00007f0c9923c8b4: cmp    $0x40,%ecx
                        ││     0x00007f0c9923c8b7: jg     0x00007f0c9923d32d  ;*if_icmpgt
                        ││                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                        ││                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                        ││                                                   ; - com.google.re2j.Machine::match@314 (line 243)
  0.49%    0.55%        ││     0x00007f0c9923c8bd: mov    %r10,%r13
  0.03%    0.04%        ││     0x00007f0c9923c8c0: mov    0x5c(%rsp),%eax
  0.00%    0.00%        ││     0x00007f0c9923c8c4: mov    %edx,0x3c(%rsp)
  0.19%    0.20%        ││     0x00007f0c9923c8c8: mov    %r9,0x50(%rsp)
  0.58%    0.45%        ││     0x00007f0c9923c8cd: mov    $0x1,%r10d
  0.03%    0.02%        ││     0x00007f0c9923c8d3: shl    %cl,%r10           ;*lshl
                        ││                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                        ││                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                        ││                                                   ; - com.google.re2j.Machine::match@314 (line 243)
  0.47%    0.58%        ││     0x00007f0c9923c8d6: mov    0x34(%rsp),%r8d
  0.03%    0.03%        ││     0x00007f0c9923c8db: mov    0x10(%r12,%r8,8),%r9  ;*getfield pcsl
                        ││                                                   ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                        ││                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                        ││                                                   ; - com.google.re2j.Machine::match@314 (line 243)
  0.00%    0.00%        ││     0x00007f0c9923c8e0: mov    %r9,%r8
  0.16%    0.09%        ││     0x00007f0c9923c8e3: and    %r10,%r8           ;*land
                        ││                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                        ││                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                        ││                                                   ; - com.google.re2j.Machine::match@314 (line 243)
  0.52%    0.25%        ││     0x00007f0c9923c8e6: test   %r8,%r8
                        ││     0x00007f0c9923c8e9: jne    0x00007f0c9923cf98  ;*ifeq
                        ││                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                        ││                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                        ││                                                   ; - com.google.re2j.Machine::match@314 (line 243)
  0.02%    0.05%        ││     0x00007f0c9923c8ef: xor    %ebp,%ebp          ;*ireturn
                        ││                                                   ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                        ││                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                        ││                                                   ; - com.google.re2j.Machine::match@314 (line 243)
  0.00%                 ││     0x00007f0c9923c8f1: test   %r8,%r8
                        ││     0x00007f0c9923c8f4: jne    0x00007f0c9923d389  ;*ifeq
                        ││                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                        ││                                                   ; - com.google.re2j.Machine::match@314 (line 243)
  0.18%    0.05%        ││     0x00007f0c9923c8fa: cmp    $0x40,%ecx
                        ││     0x00007f0c9923c8fd: jge    0x00007f0c9923d3e5  ;*if_icmpge
                        ││                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                        ││                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                        ││                                                   ; - com.google.re2j.Machine::match@314 (line 243)
  0.50%    0.30%        ││     0x00007f0c9923c903: mov    0x34(%rsp),%r8d
  0.03%    0.05%        ││     0x00007f0c9923c908: mov    %r12b,0x18(%r12,%r8,8)  ;*putfield empty
                        ││                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                        ││                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                        ││                                                   ; - com.google.re2j.Machine::match@314 (line 243)
  0.02%    0.06%        ││     0x00007f0c9923c90d: mov    0xc(%r12,%r8,8),%r11d  ;*getfield size
                        ││                                                   ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                        ││                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                        ││                                                   ; - com.google.re2j.Machine::match@314 (line 243)
  0.12%    0.03%        ││     0x00007f0c9923c912: mov    0x20(%r12,%r8,8),%r8d  ;*getfield denseThreadsInstructions
                        ││                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                        ││                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                        ││                                                   ; - com.google.re2j.Machine::match@314 (line 243)
  0.48%    0.63%        ││     0x00007f0c9923c917: or     %r9,%r10
  0.04%    0.02%        ││     0x00007f0c9923c91a: mov    0x34(%rsp),%ecx
           0.03%        ││     0x00007f0c9923c91e: mov    %r10,0x10(%r12,%rcx,8)  ;*putfield pcsl
                        ││                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                        ││                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                        ││                                                   ; - com.google.re2j.Machine::match@314 (line 243)
  0.21%    0.19%        ││     0x00007f0c9923c923: mov    %r11d,%r9d
  0.54%    0.50%        ││     0x00007f0c9923c926: inc    %r9d
  0.04%    0.02%        ││     0x00007f0c9923c929: mov    %r9d,0xc(%r12,%rcx,8)  ;*putfield size
                        ││                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                        ││                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                        ││                                                   ; - com.google.re2j.Machine::match@314 (line 243)
  0.05%    0.04%        ││     0x00007f0c9923c92e: mov    0xc(%r12,%r8,8),%r9d  ; implicit exception: dispatches to 0x00007f0c9923e10d
  0.16%    0.21%        ││     0x00007f0c9923c933: cmp    %r9d,%r11d
                        ││     0x00007f0c9923c936: jae    0x00007f0c9923d002
  0.41%    0.29%        ││     0x00007f0c9923c93c: mov    0x8(%r12,%r8,8),%r9d
  0.04%    0.01%        ││     0x00007f0c9923c941: cmp    $0xf8019808,%r9d   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                        ││     0x00007f0c9923c948: jne    0x00007f0c9923d105  ;*aastore
                        ││                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                        ││                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                        ││                                                   ; - com.google.re2j.Machine::match@314 (line 243)
           0.01%        ││     0x00007f0c9923c94e: test   %edi,%edi
                    ╭   ││     0x00007f0c9923c950: jl     0x00007f0c9923c9f6  ;*ifge
                    │   ││                                                   ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                    │   ││                                                   ; - com.google.re2j.Machine::match@322 (line 245)
  0.18%    0.15%    │   ││     0x00007f0c9923c956: xor    %r9d,%r9d          ;*iload_0
                    │   ││                                                   ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                    │   ││                                                   ; - com.google.re2j.Machine::match@322 (line 245)
  0.45%    0.58%    │   ││↗    0x00007f0c9923c959: cmp    $0xa,%edi
                    │   │││    0x00007f0c9923c95c: je     0x00007f0c9923cebd  ;*iload_1
                    │   │││                                                  ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                    │   │││                                                  ; - com.google.re2j.Machine::match@322 (line 245)
  0.05%    0.04%    │   │││    0x00007f0c9923c962: mov    %ebx,%r10d
  0.03%    0.02%    │   │││    0x00007f0c9923c965: test   %ebx,%ebx
                    │╭  │││    0x00007f0c9923c967: jl     0x00007f0c9923ca01  ;*iload_1
                    ││  │││                                                  ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                    ││  │││                                                  ; - com.google.re2j.Machine::match@322 (line 245)
  0.18%    0.20%    ││  │││↗   0x00007f0c9923c96d: cmp    $0xa,%ebx
                    ││  ││││   0x00007f0c9923c970: je     0x00007f0c9923cec6  ;*iload_0
                    ││  ││││                                                 ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                    ││  ││││                                                 ; - com.google.re2j.Machine::match@322 (line 245)
  0.38%    0.45%    ││  ││││   0x00007f0c9923c976: mov    %r13,%rcx
  0.05%    0.03%    ││  ││││   0x00007f0c9923c979: shr    $0x3,%rcx          ;*aastore
                    ││  ││││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                    ││  ││││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                    ││  ││││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
           0.01%    ││  ││││   0x00007f0c9923c97d: shl    $0x3,%r8           ;*getfield denseThreadsInstructions
                    ││  ││││                                                 ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                    ││  ││││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                    ││  ││││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.14%    0.20%    ││  ││││   0x00007f0c9923c981: lea    0x10(%r8,%r11,4),%r11
  0.41%    0.51%    ││  ││││   0x00007f0c9923c986: mov    %ecx,(%r11)
  0.55%    0.69%    ││  ││││   0x00007f0c9923c989: mov    %edi,%ecx
           0.01%    ││  ││││   0x00007f0c9923c98b: add    $0xffffffbf,%ecx
  0.09%    0.12%    ││  ││││   0x00007f0c9923c98e: shr    $0x9,%r11
  0.27%    0.37%    ││  ││││   0x00007f0c9923c992: movabs $0x7f0caa48e000,%r8
  0.20%    0.30%    ││  ││││   0x00007f0c9923c99c: mov    %r12b,(%r8,%r11,1)  ;*aastore
                    ││  ││││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                    ││  ││││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                    ││  ││││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.30%    0.32%    ││  ││││   0x00007f0c9923c9a0: cmp    $0x1a,%ecx
                    ││╭ ││││   0x00007f0c9923c9a3: jb     0x00007f0c9923c9b6  ;*if_icmple
                    │││ ││││                                                 ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                    │││ ││││                                                 ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    │││ ││││                                                 ; - com.google.re2j.Machine::match@322 (line 245)
  0.09%    0.06%    │││ ││││   0x00007f0c9923c9a5: mov    %edi,%r8d
  0.20%    0.33%    │││ ││││   0x00007f0c9923c9a8: add    $0xffffff9f,%r8d
  0.20%    0.27%    │││ ││││   0x00007f0c9923c9ac: cmp    $0x1a,%r8d
                    │││ ││││   0x00007f0c9923c9b0: jae    0x00007f0c9923cf2a  ;*iconst_1
                    │││ ││││                                                 ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                    │││ ││││                                                 ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    │││ ││││                                                 ; - com.google.re2j.Machine::match@322 (line 245)
  0.11%    0.15%    ││↘ ││││   0x00007f0c9923c9b6: mov    $0x1,%ebp          ;*ireturn
                    ││  ││││                                                 ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                    ││  ││││                                                 ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    ││  ││││                                                 ; - com.google.re2j.Machine::match@322 (line 245)
  0.11%    0.15%    ││  ││││   0x00007f0c9923c9bb: mov    %ebx,%r11d
  0.25%    0.31%    ││  ││││   0x00007f0c9923c9be: add    $0xffffffbf,%r11d
  0.17%    0.27%    ││  ││││   0x00007f0c9923c9c2: cmp    $0x1a,%r11d
                    ││ ╭││││   0x00007f0c9923c9c6: jb     0x00007f0c9923c9d9  ;*if_icmple
                    ││ │││││                                                 ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                    ││ │││││                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    ││ │││││                                                 ; - com.google.re2j.Machine::match@322 (line 245)
  0.13%    0.15%    ││ │││││   0x00007f0c9923c9c8: mov    %ebx,%r8d
  0.08%    0.17%    ││ │││││   0x00007f0c9923c9cb: add    $0xffffff9f,%r8d
  0.20%    0.24%    ││ │││││   0x00007f0c9923c9cf: cmp    $0x1a,%r8d
                    ││ │││││   0x00007f0c9923c9d3: jae    0x00007f0c9923cf4b  ;*iconst_1
                    ││ │││││                                                 ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                    ││ │││││                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    ││ │││││                                                 ; - com.google.re2j.Machine::match@322 (line 245)
  0.17%    0.22%    ││ ↘││││   0x00007f0c9923c9d9: mov    $0x1,%r11d         ;*ireturn
                    ││  ││││                                                 ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                    ││  ││││                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    ││  ││││                                                 ; - com.google.re2j.Machine::match@322 (line 245)
  0.16%    0.17%    ││  ││││   0x00007f0c9923c9df: cmp    %r11d,%ebp
                    ││  ╰│││   0x00007f0c9923c9e2: je     0x00007f0c9923c6c2  ;*if_icmpeq
                    ││   │││                                                 ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                    ││   │││                                                 ; - com.google.re2j.Machine::match@322 (line 245)
  0.17%    0.22%    ││   │││   0x00007f0c9923c9e8: or     $0x10,%r9d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                    ││   │││                                                 ; - com.google.re2j.Machine::match@322 (line 245)
  0.04%    0.06%    ││   │││   0x00007f0c9923c9ec: mov    %r9d,0x2c(%rsp)
  0.32%    0.48%    ││   ╰││   0x00007f0c9923c9f1: jmpq   0x00007f0c9923c6cb
                    ↘│    ││   0x00007f0c9923c9f6: mov    $0x5,%r9d
                     │    ╰│   0x00007f0c9923c9fc: jmpq   0x00007f0c9923c959
                     ↘     │   0x00007f0c9923ca01: or     $0xa,%r9d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@27 (line 180)
                           │                                                 ; - com.google.re2j.Machine::match@322 (line 245)
           0.00%           ╰   0x00007f0c9923ca05: jmpq   0x00007f0c9923c96d
                               0x00007f0c9923ca0a: nopw   0x0(%rax,%rax,1)
  0.00%                        0x00007f0c9923ca10: mov    %r11d,0x54(%rsp)
  0.01%    0.02%               0x00007f0c9923ca15: jmpq   0x00007f0c9923cc95
                               0x00007f0c9923ca1a: mov    0x54(%rsp),%r11d
                               0x00007f0c9923ca1f: add    $0x2,%r11d
                               0x00007f0c9923ca23: mov    %r11d,0x54(%rsp)
  0.00%                        0x00007f0c9923ca28: mov    0x54(%rsp),%r11d
                               0x00007f0c9923ca2d: inc    %r11d
                               0x00007f0c9923ca30: mov    %r11d,0x50(%rsp)
                               0x00007f0c9923ca35: jmp    0x00007f0c9923ca62
  0.00%    0.00%               0x00007f0c9923ca37: mov    0x54(%rsp),%r11d
                               0x00007f0c9923ca3c: add    $0x2,%r11d
                               0x00007f0c9923ca40: mov    %r11d,0x50(%rsp)
                            ╭  0x00007f0c9923ca45: jmp    0x00007f0c9923ca55
                            │  0x00007f0c9923ca47: mov    0x54(%rsp),%r11d
                            │  0x00007f0c9923ca4c: add    $0x2,%r11d
                            │  0x00007f0c9923ca50: mov    %r11d,0x54(%rsp)
                            ↘  0x00007f0c9923ca55: mov    0x54(%rsp),%r11d
                               0x00007f0c9923ca5a: inc    %r11d              ;*iinc
                                                                             ; - java.lang.String::indexOf@69 (line 1772)
                                                                             ; - java.lang.String::indexOf@21 (line 1718)
....................................................................................................
 30.64%   32.99%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 485 (462 bytes) 

                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                      ; - com.google.re2j.Machine::step@202 (line 313)
                                                                      ;   {optimized virtual_call}
                        0x00007f0c9921b870: test   %rax,%rax
                        0x00007f0c9921b873: jne    0x00007f0c9921c3dd  ;*ifnull
                                                                      ; - com.google.re2j.Machine::step@209 (line 315)
                        0x00007f0c9921b879: mov    0x10(%rsp),%r11
                        0x00007f0c9921b87e: jmpq   0x00007f0c9921b4c6
  0.31%    0.30%        0x00007f0c9921b883: cmp    $0xf8019993,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                        0x00007f0c9921b889: jne    0x00007f0c9921c0c1  ;*invokevirtual add
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.02%        0x00007f0c9921b88f: mov    0x18(%r10),%ecx    ;*getfield pc
                                                                      ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.34%    0.45%        0x00007f0c9921b893: cmp    $0x40,%ecx
                        0x00007f0c9921b896: jg     0x00007f0c9921c361  ;*if_icmpgt
                                                                      ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.09%    0.11%        0x00007f0c9921b89c: mov    $0x1,%r11d
  0.38%    0.37%        0x00007f0c9921b8a2: shl    %cl,%r11           ;*lshl
                                                                      ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.42%    0.22%        0x00007f0c9921b8a5: mov    %rbx,%r8
  0.29%    0.10%        0x00007f0c9921b8a8: and    %r11,%r8           ;*land
                                                                      ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.02%        0x00007f0c9921b8ab: test   %r8,%r8
                        0x00007f0c9921b8ae: jne    0x00007f0c9921ba95  ;*ifeq
                                                                      ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.24%    0.45%        0x00007f0c9921b8b4: xor    %ebp,%ebp          ;*ireturn
                                                                      ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.14%        0x00007f0c9921b8b6: test   %r8,%r8
                        0x00007f0c9921b8b9: jne    0x00007f0c9921c38d  ;*ifeq
                                                                      ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.32%    0.47%        0x00007f0c9921b8bf: cmp    $0x40,%ecx
                        0x00007f0c9921b8c2: jge    0x00007f0c9921c3b1  ;*if_icmpge
                                                                      ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.01%        0x00007f0c9921b8c8: or     %r11,%rbx
  0.28%    0.38%        0x00007f0c9921b8cb: mov    %r13,%r11
  0.07%    0.13%        0x00007f0c9921b8ce: mov    %rbx,0x10(%r11)    ;*putfield pcsl
                                                                      ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.25%    0.38%        0x00007f0c9921b8d2: add    $0x18,%rdi
  0.02%    0.02%        0x00007f0c9921b8d6: shr    $0x3,%r10
  0.26%    0.29%        0x00007f0c9921b8da: mov    %r10d,(%rdi)       ;*aastore
                                                                      ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.09%    0.09%        0x00007f0c9921b8dd: mov    %rdi,%r10
  0.32%    0.36%        0x00007f0c9921b8e0: add    $0x3,%r14d
  0.01%    0.01%        0x00007f0c9921b8e4: mov    %r14d,0xc(%r11)    ;*putfield size
                                                                      ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.26%    0.39%        0x00007f0c9921b8e8: shr    $0x9,%r10
  0.07%    0.09%        0x00007f0c9921b8ec: movabs $0x7f0caa48e000,%r8
  0.29%    0.38%        0x00007f0c9921b8f6: mov    %r12b,(%r8,%r10,1)  ;*aastore
                                                                      ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.05%        0x00007f0c9921b8fa: jmpq   0x00007f0c9921b4c6
  0.20%    0.18%        0x00007f0c9921b8ff: cmp    $0xb,%ebp
                        0x00007f0c9921b902: je     0x00007f0c9921bced  ;*if_icmpne
                                                                      ; - com.google.re2j.Inst$RuneInst::matchRune@17 (line 140)
                                                                      ; - com.google.re2j.Machine::step@181 (line 312)
  0.73%    0.75%        0x00007f0c9921b908: mov    0x20(%r8),%ecx     ;*getfield f0
                                                                      ; - com.google.re2j.Inst$RuneInst::matchRune@42 (line 145)
                                                                      ; - com.google.re2j.Machine::step@181 (line 312)
  0.03%    0.02%        0x00007f0c9921b90c: cmp    $0x9,%ebp
                  ╭     0x00007f0c9921b90f: je     0x00007f0c9921b956  ;*if_icmpne
                  │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@38 (line 144)
                  │                                                   ; - com.google.re2j.Machine::step@181 (line 312)
  0.47%    0.69%  │     0x00007f0c9921b911: cmp    $0xc,%ebp
                  │     0x00007f0c9921b914: jne    0x00007f0c9921c001  ;*if_icmpne
                  │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@61 (line 148)
                  │                                                   ; - com.google.re2j.Machine::step@181 (line 312)
  0.15%    0.23%  │     0x00007f0c9921b91a: cmp    0x28(%rsp),%ecx
                  │╭    0x00007f0c9921b91e: je     0x00007f0c9921ba4b  ;*if_icmpeq
                  ││                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@69 (line 149)
                  ││                                                  ; - com.google.re2j.Machine::step@181 (line 312)
  0.55%    0.41%  ││    0x00007f0c9921b924: mov    0x24(%r8),%ecx     ;*getfield f1
                  ││                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@73 (line 149)
                  ││                                                  ; - com.google.re2j.Machine::step@181 (line 312)
           0.01%  ││    0x00007f0c9921b928: cmp    0x28(%rsp),%ecx
                  ││╭   0x00007f0c9921b92c: je     0x00007f0c9921ba4b  ;*if_icmpeq
                  │││                                                 ; - com.google.re2j.Inst$RuneInst::matchRune@77 (line 149)
                  │││                                                 ; - com.google.re2j.Machine::step@181 (line 312)
  0.49%    0.63%  │││   0x00007f0c9921b932: mov    0x28(%r8),%ebp     ;*getfield f2
                  │││                                                 ; - com.google.re2j.Inst$RuneInst::matchRune@81 (line 149)
                  │││                                                 ; - com.google.re2j.Machine::step@181 (line 312)
  0.10%    0.10%  │││   0x00007f0c9921b936: cmp    0x28(%rsp),%ebp
                  │││   0x00007f0c9921b93a: je     0x00007f0c9921c039  ;*if_icmpeq
                  │││                                                 ; - com.google.re2j.Inst$RuneInst::matchRune@85 (line 149)
                  │││                                                 ; - com.google.re2j.Machine::step@181 (line 312)
  0.47%    0.56%  │││   0x00007f0c9921b940: mov    0x2c(%r8),%ebp     ;*getfield f3
                  │││                                                 ; - com.google.re2j.Inst$RuneInst::matchRune@89 (line 149)
                  │││                                                 ; - com.google.re2j.Machine::step@181 (line 312)
           0.00%  │││   0x00007f0c9921b944: cmp    0x28(%rsp),%ebp
                  │││   0x00007f0c9921b948: je     0x00007f0c9921c071  ;*if_icmpne
                  │││                                                 ; - com.google.re2j.Inst$RuneInst::matchRune@93 (line 149)
                  │││                                                 ; - com.google.re2j.Machine::step@181 (line 312)
  0.30%    0.37%  │││   0x00007f0c9921b94e: xor    %r9d,%r9d
  0.02%    0.03%  │││   0x00007f0c9921b951: jmpq   0x00007f0c9921b433
  1.04%    0.80%  ↘││   0x00007f0c9921b956: cmp    0x28(%rsp),%ecx
                   ││   0x00007f0c9921b95a: jne    0x00007f0c9921b430  ;*if_icmpne
                   ││                                                 ; - com.google.re2j.Inst$RuneInst::matchRune@46 (line 145)
                   ││                                                 ; - com.google.re2j.Machine::step@181 (line 312)
           0.00%   ││   0x00007f0c9921b960: mov    $0x1,%r9d
  0.00%    0.02%   ││   0x00007f0c9921b966: jmpq   0x00007f0c9921b433  ;*if_icmpge
                   ││                                                 ; - com.google.re2j.Machine::step@22 (line 282)
  0.63%    0.76%   ││   0x00007f0c9921b96b: movzbl 0x18(%rax),%r11d
                   ││   0x00007f0c9921b970: test   %r11d,%r11d
                   ││╭  0x00007f0c9921b973: jne    0x00007f0c9921b98c  ;*ifeq
                   │││                                                ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                   │││                                                ; - com.google.re2j.Machine::step@225 (line 319)
                   │││  0x00007f0c9921b975: mov    %r12d,0xc(%rax)    ;*putfield size
                   │││                                                ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                   │││                                                ; - com.google.re2j.Machine::step@225 (line 319)
                   │││  0x00007f0c9921b979: mov    0x1c(%rax),%ebp    ;*getfield pcs
                   │││                                                ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                   │││                                                ; - com.google.re2j.Machine::step@225 (line 319)
  0.60%    0.76%   │││  0x00007f0c9921b97c: movb   $0x1,0x18(%rax)    ;*putfield empty
                   │││                                                ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                   │││                                                ; - com.google.re2j.Machine::step@225 (line 319)
  0.00%            │││  0x00007f0c9921b980: mov    %r12,0x10(%rax)    ;*putfield pcsl
                   │││                                                ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                   │││                                                ; - com.google.re2j.Machine::step@225 (line 319)
                   │││  0x00007f0c9921b984: test   %ebp,%ebp
                   │││  0x00007f0c9921b986: jne    0x00007f0c9921c0a9  ;*getfield size
                   │││                                                ; - com.google.re2j.Machine::step@10 (line 281)
           0.01%   ││↘  0x00007f0c9921b98c: add    $0x80,%rsp
  0.49%    0.69%   ││   0x00007f0c9921b993: pop    %rbp
                   ││   0x00007f0c9921b994: test   %eax,0x1886a666(%rip)        # 0x00007f0cb1a86000
                   ││                                                 ;   {poll_return}
           0.01%   ││   0x00007f0c9921b99a: retq   
  0.02%    0.01%   ││   0x00007f0c9921b99b: cmp    $0xf8019993,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                   ││   0x00007f0c9921b9a1: jne    0x00007f0c9921c48d  ;*invokevirtual add
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
  0.00%            ││   0x00007f0c9921b9a7: mov    0x18(%r8),%edx     ;*getfield pc
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
                   ││   0x00007f0c9921b9ab: mov    0x10(%r11),%rbx    ;*getfield pcsl
                   ││                                                 ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
                   ││                                                 ; implicit exception: dispatches to 0x00007f0c9921c77d
                   ││   0x00007f0c9921b9af: cmp    $0x40,%edx
                   ││   0x00007f0c9921b9b2: jg     0x00007f0c9921c53d  ;*if_icmpgt
                   ││                                                 ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
  0.04%    0.01%   ││   0x00007f0c9921b9b8: mov    $0x1,%edi
                   ││   0x00007f0c9921b9bd: mov    %edx,%ecx
                   ││   0x00007f0c9921b9bf: shl    %cl,%rdi           ;*lshl
                   ││                                                 ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
  0.03%    0.01%   ││   0x00007f0c9921b9c2: mov    %rbx,%r9
                   ││   0x00007f0c9921b9c5: and    %rdi,%r9           ;*land
                   ││                                                 ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
                   ││   0x00007f0c9921b9c8: test   %r9,%r9
                   ││   0x00007f0c9921b9cb: jne    0x00007f0c9921ba9f  ;*ifeq
                   ││                                                 ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
  0.01%    0.00%   ││   0x00007f0c9921b9d1: xor    %ebp,%ebp          ;*ireturn
                   ││                                                 ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
  0.01%    0.01%   ││   0x00007f0c9921b9d3: test   %r9,%r9
                   ││   0x00007f0c9921b9d6: jne    0x00007f0c9921c59d  ;*ifeq
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
                   ││   0x00007f0c9921b9dc: cmp    $0x40,%edx
                   ││   0x00007f0c9921b9df: jge    0x00007f0c9921c5f1  ;*if_icmpge
                   ││                                                 ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
                   ││   0x00007f0c9921b9e5: mov    %r12b,0x18(%r11)   ;*putfield empty
                   ││                                                 ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
  0.00%    0.00%   ││   0x00007f0c9921b9e9: mov    0x20(%r11),%r9d    ;*getfield denseThreadsInstructions
                   ││                                                 ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
  0.01%            ││   0x00007f0c9921b9ed: or     %rbx,%rdi
  0.00%    0.00%   ││   0x00007f0c9921b9f0: mov    %rdi,0x10(%r11)    ;*putfield pcsl
                   ││                                                 ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
  0.01%            ││   0x00007f0c9921b9f4: mov    0xc(%r11),%ebp     ;*getfield size
                   ││                                                 ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
                   ││   0x00007f0c9921b9f8: mov    %ebp,%ecx
  0.00%            ││   0x00007f0c9921b9fa: inc    %ecx
  0.01%    0.01%   ││   0x00007f0c9921b9fc: mov    %ecx,0xc(%r11)     ;*putfield size
                   ││                                                 ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
  0.04%            ││   0x00007f0c9921ba00: mov    0xc(%r12,%r9,8),%ecx  ; implicit exception: dispatches to 0x00007f0c9921c791
  0.02%            ││   0x00007f0c9921ba05: cmp    %ecx,%ebp
                   ││   0x00007f0c9921ba07: jae    0x00007f0c9921c431
  0.00%    0.00%   ││   0x00007f0c9921ba0d: mov    0x8(%r12,%r9,8),%ecx
                   ││   0x00007f0c9921ba12: cmp    $0xf8019808,%ecx   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                   ││   0x00007f0c9921ba18: jne    0x00007f0c9921c4e1  ;*aastore
                   ││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
           0.00%   ││   0x00007f0c9921ba1e: shl    $0x3,%r9           ;*getfield denseThreadsInstructions
                   ││                                                 ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
  0.00%            ││   0x00007f0c9921ba22: lea    0x10(%r9,%rbp,4),%r9
  0.01%            ││   0x00007f0c9921ba27: mov    %r8,%rcx
                   ││   0x00007f0c9921ba2a: shr    $0x3,%rcx
                   ││   0x00007f0c9921ba2e: mov    %ecx,(%r9)
  0.03%    0.02%   ││   0x00007f0c9921ba31: mov    %r9,%r8
  0.00%    0.00%   ││   0x00007f0c9921ba34: shr    $0x9,%r8
  0.00%            ││   0x00007f0c9921ba38: movabs $0x7f0caa48e000,%r9
                   ││   0x00007f0c9921ba42: mov    %r12b,(%r9,%r8,1)  ;*aastore
                   ││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
  0.01%    0.02%   ││   0x00007f0c9921ba46: jmpq   0x00007f0c9921b4db  ;*iconst_1
                   ││                                                 ; - com.google.re2j.Inst$RuneInst::matchRune@96 (line 149)
                   ││                                                 ; - com.google.re2j.Machine::step@181 (line 312)
  0.15%    0.15%   ↘↘   0x00007f0c9921ba4b: mov    $0x1,%r9d
  0.09%    0.03%        0x00007f0c9921ba51: jmpq   0x00007f0c9921b433
                        0x00007f0c9921ba56: mov    $0x1,%ebp
                        0x00007f0c9921ba5b: jmpq   0x00007f0c9921b5db
                        0x00007f0c9921ba60: mov    $0x1,%ebp
                        0x00007f0c9921ba65: jmpq   0x00007f0c9921b6c9
                        0x00007f0c9921ba6a: mov    %ecx,%edi
                        0x00007f0c9921ba6c: mov    %r11,%rcx
                        0x00007f0c9921ba6f: mov    $0x1,%ebp
                        0x00007f0c9921ba74: jmpq   0x00007f0c9921b479
                        0x00007f0c9921ba79: mov    %r13,%r11
                        0x00007f0c9921ba7c: jmpq   0x00007f0c9921b4c6
....................................................................................................
 11.28%   12.61%  <total for region 3>

....[Hottest Regions]...............................................................................
 47.48%   45.20%         C2, level 4  com.google.re2j.Machine::step, version 485 (796 bytes) 
 30.64%   32.99%         C2, level 4  com.google.re2j.Machine::match, version 527 (996 bytes) 
 11.28%   12.61%         C2, level 4  com.google.re2j.Machine::step, version 485 (462 bytes) 
  5.34%    4.76%         C2, level 4  com.google.re2j.Machine::step, version 485 (92 bytes) 
  0.85%    0.93%         C2, level 4  com.google.re2j.Machine::match, version 527 (206 bytes) 
  0.70%    0.69%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.20%    0.16%         C2, level 4  com.google.re2j.Machine::match, version 527 (312 bytes) 
  0.17%    0.12%         C2, level 4  com.google.re2j.Machine::match, version 527 (353 bytes) 
  0.14%    0.15%         C2, level 4  com.google.re2j.Pattern::find, version 541 (28 bytes) 
  0.14%    0.11%         C2, level 4  java.util.Collections::shuffle, version 552 (191 bytes) 
  0.10%                  C2, level 4  com.google.re2j.Pattern::find, version 541 (105 bytes) 
  0.10%                  C2, level 4  com.google.re2j.Pattern::find, version 541 (163 bytes) 
  0.10%    0.09%         C2, level 4  com.google.re2j.Pattern::find, version 541 (32 bytes) 
  0.10%    0.10%         C2, level 4  com.google.re2j.Pattern::find, version 541 (0 bytes) 
  0.10%    0.03%   [kernel.kallsyms]  [unknown] (28 bytes) 
  0.10%    0.06%         C2, level 4  com.google.re2j.Pattern::find, version 541 (8 bytes) 
  0.09%    0.00%   [kernel.kallsyms]  [unknown] (20 bytes) 
  0.07%    0.02%   [kernel.kallsyms]  [unknown] (1 bytes) 
  0.07%    0.02%              [vdso]  [unknown] (12 bytes) 
  0.04%    0.02%   [kernel.kallsyms]  [unknown] (0 bytes) 
  2.18%    1.94%  <...other 409 warm regions...>
....................................................................................................
 99.99%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 64.10%   62.57%         C2, level 4  com.google.re2j.Machine::step, version 485 
 32.02%   34.26%         C2, level 4  com.google.re2j.Machine::match, version 527 
  1.88%    1.64%   [kernel.kallsyms]  [unknown] 
  0.78%    0.44%         C2, level 4  com.google.re2j.Pattern::find, version 541 
  0.19%    0.14%         C2, level 4  java.util.Collections::shuffle, version 552 
  0.13%    0.04%              [vdso]  [unknown] 
  0.12%    0.01%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 587 
  0.05%    0.04%      hsdis-amd64.so  [unknown] 
  0.04%    0.03%        libc-2.26.so  _IO_fwrite 
  0.04%    0.08%        libc-2.26.so  vfprintf 
  0.04%    0.08%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.03%    0.02%        libc-2.26.so  __strlen_avx2 
  0.02%    0.07%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.02%    0.00%        libc-2.26.so  __clock_gettime 
  0.02%    0.01%        libc-2.26.so  __strchr_avx2 
  0.02%           libpthread-2.26.so  __libc_write 
  0.02%    0.04%           libjvm.so  _ZN12outputStream15update_positionEPKcm 
  0.01%    0.00%        libc-2.26.so  _IO_file_xsputn@@GLIBC_2.2.5 
  0.01%    0.02%           libjvm.so  _ZN13defaultStream4holdEl 
  0.01%    0.00%           libjvm.so  _ZN2os13PlatformEvent4parkEl 
  0.42%    0.18%  <...other 66 warm methods...>
....................................................................................................
 99.99%   99.71%  <totals>

....[Distribution by Source]........................................................................
 97.22%   97.42%         C2, level 4
  1.88%    1.64%   [kernel.kallsyms]
  0.39%    0.49%           libjvm.so
  0.23%    0.33%        libc-2.26.so
  0.13%    0.04%              [vdso]
  0.06%    0.03%  libpthread-2.26.so
  0.05%    0.04%      hsdis-amd64.so
  0.03%                  interpreter
  0.00%                             
....................................................................................................
 99.99%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                     Mode  Cnt      Score     Error  Units
Re2jFindRegex.testExp1       thrpt   20  20482.002 ± 652.885  ops/s
Re2jFindRegex.testExp1:·asm  thrpt             NaN              ---
