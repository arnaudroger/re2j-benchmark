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
# Warmup Iteration   1: 9907.540 ops/s
# Warmup Iteration   2: 25852.557 ops/s
# Warmup Iteration   3: 26244.966 ops/s
# Warmup Iteration   4: 24571.043 ops/s
# Warmup Iteration   5: 24377.614 ops/s
# Warmup Iteration   6: 25994.662 ops/s
# Warmup Iteration   7: 26689.150 ops/s
# Warmup Iteration   8: 26732.834 ops/s
# Warmup Iteration   9: 26506.067 ops/s
# Warmup Iteration  10: 26589.650 ops/s
# Warmup Iteration  11: 26636.940 ops/s
# Warmup Iteration  12: 26714.516 ops/s
# Warmup Iteration  13: 26655.880 ops/s
# Warmup Iteration  14: 26519.692 ops/s
# Warmup Iteration  15: 26787.680 ops/s
# Warmup Iteration  16: 26739.704 ops/s
# Warmup Iteration  17: 26671.345 ops/s
# Warmup Iteration  18: 26446.088 ops/s
# Warmup Iteration  19: 26539.934 ops/s
# Warmup Iteration  20: 26764.278 ops/s
Iteration   1: 26759.334 ops/s
Iteration   2: 26560.341 ops/s
Iteration   3: 26520.553 ops/s
Iteration   4: 26187.201 ops/s
Iteration   5: 26463.302 ops/s
Iteration   6: 26531.282 ops/s
Iteration   7: 26356.931 ops/s
Iteration   8: 26152.923 ops/s
Iteration   9: 26318.400 ops/s
Iteration  10: 26472.280 ops/s
Iteration  11: 26550.932 ops/s
Iteration  12: 26648.089 ops/s
Iteration  13: 26714.713 ops/s
Iteration  14: 26540.772 ops/s
Iteration  15: 26713.466 ops/s
Iteration  16: 26477.223 ops/s
Iteration  17: 26398.037 ops/s
Iteration  18: 26471.338 ops/s
Iteration  19: 26383.687 ops/s
Iteration  20: 26577.331 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jRegex.testExp1":
  26489.907 ±(99.9%) 139.909 ops/s [Average]
  (min, avg, max) = (26152.923, 26489.907, 26759.334), stdev = 161.119
  CI (99.9%): [26349.998, 26629.816] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jRegex.testExp1:·asm":
PrintAssembly processed: 200670 total address lines.
Perf output processed (skipped 23.413 seconds):
 Column 1: cycles (20567 events)
 Column 2: instructions (20542 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 509 (793 bytes) 

                     0x00007fae7d2323ec: shr    $0x9,%r10
                     0x00007fae7d2323f0: movabs $0x7fae8cc41000,%r11
                     0x00007fae7d2323fa: mov    %r12b,(%r11,%r10,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007fae7d2323fe: mov    %r13,%r11          ;*synchronization entry
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%              0x00007fae7d232401: mov    0x30(%rsp),%rax
  0.38%    0.50%     0x00007fae7d232406: mov    0x9c(%rsp),%r13d
  0.04%    0.08%     0x00007fae7d23240e: mov    0x94(%rsp),%ebx
  0.15%    0.11%     0x00007fae7d232415: mov    0x10(%rsp),%r10d   ;*aload
                                                                   ; - com.google.re2j.Machine::step@207 (line 315)
  1.48%    1.35%  ↗  0x00007fae7d23241a: inc    %r10d              ;*iinc
                  │                                                ; - com.google.re2j.Machine::step@218 (line 282)
  0.42%    0.27%  │  0x00007fae7d23241d: cmp    %r13d,%r10d
                  │  0x00007fae7d232420: jge    0x00007fae7d232894
  0.12%    0.08%  │  0x00007fae7d232426: mov    %r11,%rdi          ;*aload_0
                  │                                                ; - com.google.re2j.Machine::step@25 (line 285)
  1.00%    1.13%  │  0x00007fae7d232429: mov    0x8(%rsp),%r11
  0.95%    0.73%  │  0x00007fae7d23242e: movzbl 0x11(%r11),%r11d   ;*getfield captures
                  │                                                ; - com.google.re2j.Machine::step@26 (line 285)
  1.34%    1.44%  │  0x00007fae7d232433: test   %r11d,%r11d
                  │  0x00007fae7d232436: jne    0x00007fae7d2329f5  ;*ifne
                  │                                                ; - com.google.re2j.Machine::step@29 (line 285)
  0.70%    0.73%  │  0x00007fae7d23243c: mov    0x20(%rax),%ebp    ;*getfield denseThreadsInstructions
                  │                                                ; - com.google.re2j.Machine::step@82 (line 295)
  0.69%    0.79%  │  0x00007fae7d23243f: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007fae7d233731
  1.48%    1.42%  │  0x00007fae7d232444: cmp    %r11d,%r10d
                  │  0x00007fae7d232447: jae    0x00007fae7d23297b
  0.49%    0.47%  │  0x00007fae7d23244d: lea    (%r12,%rbp,8),%r11
  0.52%    0.39%  │  0x00007fae7d232451: mov    0x10(%r11,%r10,4),%r8d  ;*aaload
                  │                                                ; - com.google.re2j.Machine::step@87 (line 295)
  0.72%    0.76%  │  0x00007fae7d232456: mov    0xc(%r12,%r8,8),%ebp  ;*getfield op
                  │                                                ; - com.google.re2j.Machine::step@92 (line 297)
                  │                                                ; implicit exception: dispatches to 0x00007fae7d233745
  2.23%    2.45%  │  0x00007fae7d23245b: cmp    $0x6,%ebp
                  │  0x00007fae7d23245e: je     0x00007fae7d232a49  ;*if_icmpne
                  │                                                ; - com.google.re2j.Machine::step@97 (line 297)
  1.25%    1.44%  │  0x00007fae7d232464: mov    0x8(%r12,%r8,8),%r11d
  0.64%    0.76%  │  0x00007fae7d232469: cmp    $0xf8019993,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │  0x00007fae7d232470: jne    0x00007fae7d2329a1
  1.68%    1.79%  │  0x00007fae7d232476: shl    $0x3,%r8           ;*invokevirtual matchRune
                  │                                                ; - com.google.re2j.Machine::step@181 (line 312)
  0.45%    0.53%  │  0x00007fae7d23247a: mov    0xc(%r8),%ebp      ;*getfield op
                  │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@1 (line 136)
                  │                                                ; - com.google.re2j.Machine::step@181 (line 312)
  0.74%    0.95%  │  0x00007fae7d23247e: cmp    $0xa,%ebp
                  │  0x00007fae7d232481: jne    0x00007fae7d232825  ;*if_icmpne
                  │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@6 (line 136)
                  │                                                ; - com.google.re2j.Machine::step@181 (line 312)
  0.29%    0.24%  │  0x00007fae7d232487: mov    0x1c(%r8),%r9d     ;*getfield outInst
                  │                                                ; - com.google.re2j.Machine::step@189 (line 313)
  0.25%    0.22%  │  0x00007fae7d23248b: mov    0x8(%r12,%r9,8),%r11d  ; implicit exception: dispatches to 0x00007fae7d233755
  1.63%    1.97%  │  0x00007fae7d232490: lea    (%r12,%r9,8),%r8
  0.02%    0.05%  │  0x00007fae7d232494: cmp    $0xf8019844,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                  │  0x00007fae7d23249b: jne    0x00007fae7d2328c4  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Machine::step@202 (line 313)
  0.52%    0.57%  │  0x00007fae7d2324a1: mov    0x18(%r8),%ecx     ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 190)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.28%    0.33%  │  0x00007fae7d2324a5: mov    %rdi,%r11
  0.00%    0.01%  │  0x00007fae7d2324a8: mov    0x10(%rdi),%r9     ;*getfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 190)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
                  │                                                ; implicit exception: dispatches to 0x00007fae7d233771
  0.01%    0.04%  │  0x00007fae7d2324ac: cmp    $0x40,%ecx
                  │  0x00007fae7d2324af: jg     0x00007fae7d232d19  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 190)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.62%    0.58%  │  0x00007fae7d2324b5: mov    $0x1,%edx
  0.07%    0.04%  │  0x00007fae7d2324ba: shl    %cl,%rdx           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 190)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  1.17%    0.96%  │  0x00007fae7d2324bd: mov    %r9,%rdi
  0.02%    0.05%  │  0x00007fae7d2324c0: and    %rdx,%rdi
           0.01%  │  0x00007fae7d2324c3: test   %rdi,%rdi
                  ╰  0x00007fae7d2324c6: jne    0x00007fae7d23241a  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.41%    0.29%     0x00007fae7d2324cc: cmp    $0x40,%ecx
                     0x00007fae7d2324cf: jge    0x00007fae7d232d75  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 193)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.25%    0.23%     0x00007fae7d2324d5: mov    %r12b,0x18(%r11)   ;*putfield empty
                                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 193)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.01%     0x00007fae7d2324d9: mov    0x1c(%r8),%ebp     ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
           0.01%     0x00007fae7d2324dd: or     %r9,%rdx           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 193)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.31%    0.25%     0x00007fae7d2324e0: mov    %rdx,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 193)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.36%    0.26%     0x00007fae7d2324e4: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007fae7d233785
  0.68%    0.59%     0x00007fae7d2324e9: cmp    $0xf8019993,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                     0x00007fae7d2324ef: jne    0x00007fae7d232af1
  0.47%    0.35%     0x00007fae7d2324f5: lea    (%r12,%rbp,8),%r9  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.01%     0x00007fae7d2324f9: mov    0x18(%r9),%ecx     ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.36%    0.30%     0x00007fae7d2324fd: cmp    $0x40,%ecx
  0.41%    0.37%     0x00007fae7d232500: jg     0x00007fae7d232dd1  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.48%    0.45%     0x00007fae7d232506: mov    $0x1,%edi
  0.04%    0.02%     0x00007fae7d23250b: shl    %cl,%rdi           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.73%    0.66%     0x00007fae7d23250e: mov    %rdx,%rsi
  0.03%    0.00%     0x00007fae7d232511: and    %rdi,%rsi          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.10%    0.14%     0x00007fae7d232514: test   %rsi,%rsi
                     0x00007fae7d232517: jne    0x00007fae7d232e2d  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.00%     0x00007fae7d23251d: cmp    $0x40,%ecx
                     0x00007fae7d232520: jge    0x00007fae7d232e91  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.47%    0.38%     0x00007fae7d232526: or     %rdi,%rdx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%              0x00007fae7d232529: mov    %rdx,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.13%    0.12%     0x00007fae7d23252d: mov    0x20(%r11),%ecx    ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%              0x00007fae7d232531: mov    0xc(%r11),%edi     ;*getfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.53%    0.54%     0x00007fae7d232535: mov    %edi,%esi
  0.02%              0x00007fae7d232537: inc    %esi               ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.17%    0.10%     0x00007fae7d232539: mov    %esi,0xc(%r11)     ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
           0.01%     0x00007fae7d23253d: mov    0xc(%r12,%rcx,8),%r14d  ; implicit exception: dispatches to 0x00007fae7d2337a1
  0.47%    0.44%     0x00007fae7d232542: cmp    %r14d,%edi
                     0x00007fae7d232545: jae    0x00007fae7d232a95
  0.02%    0.01%     0x00007fae7d23254b: vmovd  %esi,%xmm1
  0.11%    0.08%     0x00007fae7d23254f: mov    %edi,0x14(%rsp)
  0.02%    0.00%     0x00007fae7d232553: vmovd  %ecx,%xmm0
  0.48%    0.33%     0x00007fae7d232557: mov    %r10d,0x10(%rsp)
  0.01%    0.00%     0x00007fae7d23255c: mov    %ebx,0x94(%rsp)
  0.10%    0.06%     0x00007fae7d232563: mov    %r13d,0x9c(%rsp)
  0.01%    0.02%     0x00007fae7d23256b: mov    %r11,%r13
  0.48%    0.25%     0x00007fae7d23256e: mov    %rax,0x30(%rsp)
  0.00%    0.00%     0x00007fae7d232573: mov    0x8(%r12,%rcx,8),%r11d
  0.12%    0.01%     0x00007fae7d232578: cmp    $0xf8019808,%r11d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                     0x00007fae7d23257f: jne    0x00007fae7d232b45  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007fae7d232585: mov    0x20(%r8),%r10d    ;*getfield inst2
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@41 (line 196)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.55%    0.39%     0x00007fae7d232589: vmovd  %r10d,%xmm2
                     0x00007fae7d23258e: mov    %r9,%r11
  0.14%    0.01%     0x00007fae7d232591: shr    $0x3,%r11          ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.00%     0x00007fae7d232595: lea    (%r12,%rcx,8),%r8  ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.47%    0.62%     0x00007fae7d232599: lea    0x10(%r8,%rdi,4),%r10
  0.02%              0x00007fae7d23259e: mov    %r11d,(%r10)
  0.15%    0.00%     0x00007fae7d2325a1: shr    $0x9,%r10
  0.01%    0.01%     0x00007fae7d2325a5: movabs $0x7fae8cc41000,%r11
  0.50%    0.50%     0x00007fae7d2325af: mov    %r12b,(%r11,%r10,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.04%     0x00007fae7d2325b3: vmovd  %xmm2,%r10d
  0.13%              0x00007fae7d2325b8: mov    0x8(%r12,%r10,8),%r11d  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                                                                   ; implicit exception: dispatches to 0x00007fae7d2337bd
           0.00%     0x00007fae7d2325bd: movslq %edi,%r10
  0.58%    0.25%     0x00007fae7d2325c0: lea    (%r8,%r10,4),%r9   ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.00%     0x00007fae7d2325c4: mov    %r9,%rbx
  0.15%    0.01%     0x00007fae7d2325c7: add    $0x14,%rbx         ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.01%     0x00007fae7d2325cb: vmovd  %xmm2,%r10d
  0.55%    0.52%     0x00007fae7d2325d0: lea    (%r12,%r10,8),%rax
  0.04%    0.00%     0x00007fae7d2325d4: add    $0x2,%edi          ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.14%    0.06%     0x00007fae7d2325d7: cmp    $0xf8019887,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                     0x00007fae7d2325de: jne    0x00007fae7d232385  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%    0.00%     0x00007fae7d2325e4: mov    0x18(%rax),%r10d   ;*getfield pc
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@2 (line 476)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.46%    0.48%     0x00007fae7d2325e8: vmovd  %r10d,%xmm2
  0.02%    0.03%     0x00007fae7d2325ed: cmp    $0x40,%r10d
                     0x00007fae7d2325f1: jg     0x00007fae7d233011  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 476)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.13%    0.17%     0x00007fae7d2325f7: mov    $0x1,%r11d
  0.01%              0x00007fae7d2325fd: mov    %r10d,%ecx
  0.55%    0.40%     0x00007fae7d232600: shl    %cl,%r11           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 476)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.13%    0.10%     0x00007fae7d232603: mov    %rdx,%r10
  0.45%    0.23%     0x00007fae7d232606: and    %r11,%r10          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 476)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.01%     0x00007fae7d232609: test   %r10,%r10
                     0x00007fae7d23260c: jne    0x00007fae7d233051  ;*ifeq
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@8 (line 476)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.14%    0.14%     0x00007fae7d232612: mov    %ecx,%r10d
  0.02%    0.01%     0x00007fae7d232615: cmp    $0x40,%r10d
                     0x00007fae7d232619: jge    0x00007fae7d2330a1  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@19 (line 479)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.57%    0.35%     0x00007fae7d23261f: or     %r11,%rdx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@19 (line 479)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.02%     0x00007fae7d232622: mov    %rdx,0x10(%r13)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@19 (line 479)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.09%    0.20%     0x00007fae7d232626: mov    0x1c(%rax),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@83 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
           0.03%     0x00007fae7d232629: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007fae7d2337f9
  0.52%    0.25%     0x00007fae7d23262e: cmp    $0xf8019844,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                     0x00007fae7d232635: jne    0x00007fae7d232cc1
  0.04%    0.04%     0x00007fae7d23263b: lea    (%r12,%rbp,8),%rax  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.11%    0.15%     0x00007fae7d23263f: mov    0x18(%rax),%r10d   ;*getfield pc
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 190)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.02%     0x00007fae7d232643: vmovd  %r10d,%xmm2
  0.55%    0.28%     0x00007fae7d232648: cmp    $0x40,%r10d
                     0x00007fae7d23264c: jg     0x00007fae7d2331b1  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 190)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.03%     0x00007fae7d232652: mov    $0x1,%r11d
  0.10%    0.16%     0x00007fae7d232658: mov    %r10d,%ecx
  0.01%    0.00%     0x00007fae7d23265b: shl    %cl,%r11           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 190)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.69%    0.37%     0x00007fae7d23265e: mov    %rdx,%r10
  0.01%    0.00%     0x00007fae7d232661: and    %r11,%r10
  0.51%    0.62%     0x00007fae7d232664: test   %r10,%r10
                     0x00007fae7d232667: jne    0x00007fae7d232973  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 190)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.05%     0x00007fae7d23266d: mov    %ecx,%r10d
  0.11%    0.19%     0x00007fae7d232670: cmp    $0x40,%r10d
                     0x00007fae7d232674: jge    0x00007fae7d2331f1  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 193)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.05%     0x00007fae7d23267a: mov    0x1c(%rax),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.50%    0.53%     0x00007fae7d23267d: or     %r11,%rdx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 193)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.04%     0x00007fae7d232680: mov    %rdx,0x10(%r13)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 193)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.09%    0.15%     0x00007fae7d232684: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007fae7d233815
  0.02%    0.04%     0x00007fae7d232689: cmp    $0xf8019993,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                     0x00007fae7d232690: jne    0x00007fae7d232ced
  0.58%    0.55%     0x00007fae7d232696: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.03%     0x00007fae7d23269a: vmovq  %r10,%xmm2
  0.12%    0.13%     0x00007fae7d23269f: mov    0x18(%r10),%r10d   ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.06%    0.07%     0x00007fae7d2326a3: mov    %r10d,%ecx
  0.53%    0.59%     0x00007fae7d2326a6: cmp    $0x40,%r10d
                     0x00007fae7d2326aa: jg     0x00007fae7d233231  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.07%    0.08%     0x00007fae7d2326b0: mov    $0x1,%r11d
  0.10%    0.10%     0x00007fae7d2326b6: shl    %cl,%r11           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.61%    0.78%     0x00007fae7d2326b9: mov    %rdx,%r10
  0.06%    0.11%     0x00007fae7d2326bc: and    %r11,%r10          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.01%     0x00007fae7d2326bf: test   %r10,%r10
                     0x00007fae7d2326c2: jne    0x00007fae7d233275  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.46%    0.63%     0x00007fae7d2326c8: mov    %ecx,%r10d
  0.09%    0.04%     0x00007fae7d2326cb: cmp    $0x40,%r10d
                     0x00007fae7d2326cf: jge    0x00007fae7d2332d1  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.12%    0.13%     0x00007fae7d2326d5: mov    %edi,0xc(%r13)     ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
           0.00%     0x00007fae7d2326d9: or     %r11,%rdx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.48%    0.65%     0x00007fae7d2326dc: mov    %rdx,0x10(%r13)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.08%    0.09%     0x00007fae7d2326e0: cmp    %r14d,%edi
                     0x00007fae7d2326e3: jae    0x00007fae7d232c41  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.14%    0.12%     0x00007fae7d2326e9: mov    0x20(%rax),%r10d   ;*getfield inst2
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@41 (line 196)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007fae7d2326ed: mov    %rbx,%rcx
  0.42%    0.44%     0x00007fae7d2326f0: vmovq  %xmm2,%r11
  0.11%    0.13%     0x00007fae7d2326f5: shr    $0x3,%r11
  0.16%    0.15%     0x00007fae7d2326f9: mov    %r11d,(%rbx)
  0.01%    0.02%     0x00007fae7d2326fc: shr    $0x9,%rcx
  0.52%    0.49%     0x00007fae7d232700: movabs $0x7fae8cc41000,%r11
  0.08%    0.11%     0x00007fae7d23270a: mov    %r12b,(%r11,%rcx,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.10%    0.14%     0x00007fae7d23270e: mov    0x8(%r12,%r10,8),%ebx  ; implicit exception: dispatches to 0x00007fae7d233831
  0.00%    0.00%     0x00007fae7d232713: mov    %r10d,%r11d
  0.41%    0.44%     0x00007fae7d232716: shl    $0x3,%r10
  0.08%    0.10%     0x00007fae7d23271a: cmp    $0xf8019887,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                     0x00007fae7d232720: jne    0x00007fae7d2327af  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007fae7d232726: mov    0x18(%r10),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@2 (line 476)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
....................................................................................................
 45.35%   43.34%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 558 (1010 bytes) 

                                                                             ; - java.lang.String::charAt@27 (line 660)
                                                                             ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                             ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                             ; - com.google.re2j.Machine::match@96 (line 199)
                               0x00007fae7d252cdd: cmp    $0xd800,%r10d
                               0x00007fae7d252ce4: jge    0x00007fae7d254379  ;*if_icmplt
                                                                             ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                             ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                             ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                             ; - com.google.re2j.Machine::match@96 (line 199)
  0.00%    0.00%               0x00007fae7d252cea: shl    $0x3,%r10d         ;*ishl
                                                                             ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                                                                             ; - com.google.re2j.Machine::match@96 (line 199)
                               0x00007fae7d252cee: mov    %r10d,%r8d
                               0x00007fae7d252cf1: or     $0x1,%r8d
           0.00%               0x00007fae7d252cf5: and    $0x7,%r10d
                               0x00007fae7d252cf9: sar    $0x3,%r8d          ;*ishr
                                                                             ; - com.google.re2j.Machine::match@104 (line 200)
           0.00%               0x00007fae7d252cfd: mov    %r8d,0x2c(%rsp)
  0.00%                        0x00007fae7d252d02: or     $0x1,%r10d         ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                                                                             ; - com.google.re2j.Machine::match@96 (line 199)
                               0x00007fae7d252d06: mov    %r10d,0x30(%rsp)   ;*ishr
                                                                             ; - com.google.re2j.Machine::match@104 (line 200)
  0.00%                        0x00007fae7d252d0b: vmovd  %xmm0,%r10d
                               0x00007fae7d252d10: test   %r10d,%r10d
                               0x00007fae7d252d13: jne    0x00007fae7d254129  ;*ifne
                                                                             ; - com.google.re2j.Machine::match@115 (line 204)
                               0x00007fae7d252d19: test   %edi,%edi
                               0x00007fae7d252d1b: jl     0x00007fae7d2535f6  ;*ifge
                                                                             ; - com.google.re2j.Utils::emptyOpContext@21 (line 179)
                                                                             ; - com.google.re2j.Machine::match@121 (line 205)
                               0x00007fae7d252d21: mov    $0x5,%r10d         ;*iload_1
                                                                             ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                                                                             ; - com.google.re2j.Machine::match@121 (line 205)
  0.01%    0.00%               0x00007fae7d252d27: cmp    $0xa,%edi
                               0x00007fae7d252d2a: je     0x00007fae7d25360e  ;*iload_0
                                                                             ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                                                                             ; - com.google.re2j.Machine::match@121 (line 205)
                               0x00007fae7d252d30: mov    %edi,%r8d
                               0x00007fae7d252d33: add    $0xffffffbf,%r8d
                               0x00007fae7d252d37: cmp    $0x1a,%r8d
                  ╭            0x00007fae7d252d3b: jb     0x00007fae7d252d4b  ;*if_icmple
                  │                                                          ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │                                                          ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                          ; - com.google.re2j.Machine::match@121 (line 205)
           0.00%  │            0x00007fae7d252d3d: mov    %edi,%ebx
                  │            0x00007fae7d252d3f: add    $0xffffff9f,%ebx
                  │            0x00007fae7d252d42: cmp    $0x1a,%ebx
                  │            0x00007fae7d252d45: jae    0x00007fae7d25362f  ;*iconst_1
                  │                                                          ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │                                                          ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                          ; - com.google.re2j.Machine::match@121 (line 205)
                  ↘            0x00007fae7d252d4b: or     $0x10,%r10d        ;*iload_2
                                                                             ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                             ; - com.google.re2j.Machine::match@121 (line 205)
  0.01%    0.01%               0x00007fae7d252d4f: mov    0x40(%rsp),%r8
  0.00%                        0x00007fae7d252d54: movzbl 0x11(%r8),%ebx     ;*getfield captures
                                                                             ; - com.google.re2j.Machine::match@283 (line 240)
                               0x00007fae7d252d59: vmovd  %xmm1,%edx
                               0x00007fae7d252d5d: mov    %rdx,%r8
                               0x00007fae7d252d60: shl    $0x3,%r8           ;*getfield q1
                                                                             ; - com.google.re2j.Machine::match@53 (line 192)
                               0x00007fae7d252d64: mov    %r8,0x20(%rsp)
                               0x00007fae7d252d69: xor    %eax,%eax
                               0x00007fae7d252d6b: mov    $0x1,%r8d
  0.01%    0.00%               0x00007fae7d252d71: xor    %ebp,%ebp
                               0x00007fae7d252d73: mov    %r8d,0x14(%rsp)
  0.00%                        0x00007fae7d252d78: mov    %ebp,0x60(%rsp)
                   ╭           0x00007fae7d252d7c: jmpq   0x00007fae7d252efe
  0.10%    0.11%   │     ↗     0x00007fae7d252d81: or     $0x20,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                   │     │                                                   ; - com.google.re2j.Machine::match@322 (line 245)
  0.02%    0.01%   │     │     0x00007fae7d252d85: mov    %r8d,0x4c(%rsp)    ;*iload_2
                   │     │                                                   ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   │     │                                                   ; - com.google.re2j.Machine::match@322 (line 245)
  0.32%    0.44%   │     │↗    0x00007fae7d252d8a: mov    0x60(%rsp),%r10d
  0.20%    0.24%   │     ││    0x00007fae7d252d8f: cmp    %r14d,%r10d
                   │     ││    0x00007fae7d252d92: je     0x00007fae7d253553  ;*if_icmpne
                   │     ││                                                  ; - com.google.re2j.Machine::match@347 (line 246)
  0.18%    0.19%   │     ││    0x00007fae7d252d98: xor    %ebx,%ebx          ;*invokespecial step
                   │     ││                                                  ; - com.google.re2j.Machine::match@355 (line 246)
  0.04%    0.07%   │     ││    0x00007fae7d252d9a: mov    %rax,-0x8(%rsp)
  0.34%    0.30%   │     ││    0x00007fae7d252d9f: mov    0x60(%rsp),%eax
  0.22%    0.22%   │     ││    0x00007fae7d252da3: mov    %eax,0x38(%rsp)
  0.35%    0.25%   │     ││    0x00007fae7d252da7: mov    -0x8(%rsp),%rax    ;*invokevirtual endPos
                   │     ││                                                  ; - com.google.re2j.Machine::match@344 (line 246)
  0.53%    0.16%   │     ││    0x00007fae7d252dac: add    0x28(%rsp),%r10d   ;*iadd
                   │     ││                                                  ; - com.google.re2j.Machine::match@336 (line 246)
  0.26%    0.19%   │     ││    0x00007fae7d252db1: mov    %r10d,0x60(%rsp)
  0.18%    0.21%   │     ││    0x00007fae7d252db6: mov    0x40(%rsp),%rsi
  0.11%    0.10%   │     ││    0x00007fae7d252dbb: mov    0x18(%rsp),%rdx
  0.10%    0.08%   │     ││    0x00007fae7d252dc0: mov    0x20(%rsp),%rcx
  0.18%    0.23%   │     ││    0x00007fae7d252dc5: mov    0x38(%rsp),%r8d
  0.63%    0.32%   │     ││    0x00007fae7d252dca: mov    %r10d,%r9d
  0.10%    0.14%   │     ││    0x00007fae7d252dcd: mov    0x4c(%rsp),%r11d
  0.05%    0.03%   │     ││    0x00007fae7d252dd2: mov    %r11d,(%rsp)
  0.20%    0.03%   │     ││    0x00007fae7d252dd6: mov    0x3c(%rsp),%r11d
  0.22%    0.23%   │     ││    0x00007fae7d252ddb: mov    %r11d,0x8(%rsp)
  0.17%    0.19%   │     ││    0x00007fae7d252de0: mov    %ebx,0x10(%rsp)
  0.12%    0.05%   │     ││    0x00007fae7d252de4: data16 xchg %ax,%ax
  0.24%    0.18%   │     ││    0x00007fae7d252de7: callq  0x00007fae7d046020  ; OopMap{[24]=Oop [32]=Oop [52]=NarrowOop [64]=Oop [80]=Oop off=652}
                   │     ││                                                  ;*invokespecial step
                   │     ││                                                  ; - com.google.re2j.Machine::match@355 (line 246)
                   │     ││                                                  ;   {optimized virtual_call}
           0.01%   │     ││    0x00007fae7d252dec: mov    0x40(%rsp),%r10
  0.72%    0.59%   │     ││    0x00007fae7d252df1: movzbl 0x11(%r10),%ebx    ;*getfield captures
                   │     ││                                                  ; - com.google.re2j.Machine::match@367 (line 250)
  0.02%            │     ││    0x00007fae7d252df6: movzbl 0x10(%r10),%eax    ;*getfield matched
                   │     ││                                                  ; - com.google.re2j.Machine::match@374 (line 250)
           0.00%   │     ││    0x00007fae7d252dfb: mov    0x28(%rsp),%r8d
  0.70%    0.64%   │     ││    0x00007fae7d252e00: test   %r8d,%r8d
                   │     ││    0x00007fae7d252e03: je     0x00007fae7d253514  ;*ifne
                   │     ││                                                  ; - com.google.re2j.Machine::match@360 (line 247)
                   │     ││    0x00007fae7d252e09: test   %ebx,%ebx
                   │     ││    0x00007fae7d252e0b: jne    0x00007fae7d253949  ;*ifne
                   │     ││                                                  ; - com.google.re2j.Machine::match@370 (line 250)
  0.00%    0.01%   │     ││    0x00007fae7d252e11: test   %eax,%eax
                   │     ││    0x00007fae7d252e13: jne    0x00007fae7d253b8d  ;*ifeq
                   │     ││                                                  ; - com.google.re2j.Machine::match@377 (line 250)
  0.01%    0.01%   │     ││    0x00007fae7d252e19: mov    0x50(%rsp),%r10
  0.59%    0.53%   │     ││    0x00007fae7d252e1e: mov    0x10(%r10),%r14d   ;*getfield end
                   │     ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                   │     ││                                                  ; - com.google.re2j.Machine::match@407 (line 259)
  0.01%    0.01%   │     ││    0x00007fae7d252e22: mov    0xc(%r10),%esi     ;*getfield start
                   │     ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                   │     ││                                                  ; - com.google.re2j.Machine::match@407 (line 259)
           0.01%   │     ││    0x00007fae7d252e26: mov    0x14(%r10),%ecx    ;*getfield str
                   │     ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                   │     ││                                                  ; - com.google.re2j.Machine::match@407 (line 259)
  0.01%    0.01%   │     ││    0x00007fae7d252e2a: mov    0x2c(%rsp),%r11d
  0.60%    0.49%   │     ││    0x00007fae7d252e2f: cmp    $0xffffffff,%r11d
                   │     ││    0x00007fae7d252e33: je     0x00007fae7d25355d  ;*if_icmpeq
                   │     ││                                                  ; - com.google.re2j.Machine::match@399 (line 258)
                   │     ││    0x00007fae7d252e39: mov    0x30(%rsp),%r9d
  0.00%            │     ││    0x00007fae7d252e3e: add    0x60(%rsp),%r9d
           0.02%   │     ││    0x00007fae7d252e43: add    %esi,%r9d          ;*iadd
                   │     ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                   │     ││                                                  ; - com.google.re2j.Machine::match@407 (line 259)
  0.71%    0.74%   │     ││    0x00007fae7d252e46: cmp    %r14d,%r9d
                   │     ││    0x00007fae7d252e49: jge    0x00007fae7d25356c  ;*if_icmpge
                   │     ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                   │     ││                                                  ; - com.google.re2j.Machine::match@407 (line 259)
  0.00%            │     ││    0x00007fae7d252e4f: mov    0x8(%r12,%rcx,8),%r11d  ; implicit exception: dispatches to 0x00007fae7d254a41
  0.01%    0.03%   │     ││    0x00007fae7d252e54: cmp    $0xf80002da,%r11d  ;   {metadata(&apos;java/lang/String&apos;)}
                   │     ││    0x00007fae7d252e5b: jne    0x00007fae7d25383d
  0.02%    0.03%   │     ││    0x00007fae7d252e61: lea    (%r12,%rcx,8),%rdi  ;*invokeinterface charAt
                   │     ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │     ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │     ││                                                  ; - com.google.re2j.Machine::match@407 (line 259)
  0.59%    0.71%   │     ││    0x00007fae7d252e65: test   %r9d,%r9d
                   │     ││    0x00007fae7d252e68: jl     0x00007fae7d25399d  ;*iflt
                   │     ││                                                  ; - java.lang.String::charAt@1 (line 657)
                   │     ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │     ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │     ││                                                  ; - com.google.re2j.Machine::match@407 (line 259)
                   │     ││    0x00007fae7d252e6e: mov    0xc(%rdi),%r8d     ;*getfield value
                   │     ││                                                  ; - java.lang.String::charAt@6 (line 657)
                   │     ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │     ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │     ││                                                  ; - com.google.re2j.Machine::match@407 (line 259)
  0.00%    0.00%   │     ││    0x00007fae7d252e72: mov    0xc(%r12,%r8,8),%ebp  ;*arraylength
                   │     ││                                                  ; - java.lang.String::charAt@9 (line 657)
                   │     ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │     ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │     ││                                                  ; - com.google.re2j.Machine::match@407 (line 259)
                   │     ││                                                  ; implicit exception: dispatches to 0x00007fae7d254a55
  0.95%    1.21%   │     ││    0x00007fae7d252e77: cmp    %ebp,%r9d
                   │     ││    0x00007fae7d252e7a: jge    0x00007fae7d253be1  ;*if_icmplt
                   │     ││                                                  ; - java.lang.String::charAt@10 (line 657)
                   │     ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │     ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │     ││                                                  ; - com.google.re2j.Machine::match@407 (line 259)
  0.68%    0.83%   │     ││    0x00007fae7d252e80: cmp    %ebp,%r9d
                   │     ││    0x00007fae7d252e83: jae    0x00007fae7d2536e9
  0.10%    0.10%   │     ││    0x00007fae7d252e89: lea    (%r12,%r8,8),%r10
                   │     ││    0x00007fae7d252e8d: movzwl 0x10(%r10,%r9,2),%r8d  ;*caload
                   │     ││                                                  ; - java.lang.String::charAt@27 (line 660)
                   │     ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │     ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │     ││                                                  ; - com.google.re2j.Machine::match@407 (line 259)
  0.01%    0.03%   │     ││    0x00007fae7d252e93: cmp    $0xd800,%r8d
                   │     ││    0x00007fae7d252e9a: jge    0x00007fae7d253c59  ;*if_icmplt
                   │     ││                                                  ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   │     ││                                                  ; - java.lang.Character::codePointAt@9 (line 4867)
                   │     ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │     ││                                                  ; - com.google.re2j.Machine::match@407 (line 259)
  0.65%    0.61%   │     ││    0x00007fae7d252ea0: shl    $0x3,%r8d          ;*ishl
                   │     ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                   │     ││                                                  ; - com.google.re2j.Machine::match@407 (line 259)
  0.15%    0.14%   │     ││    0x00007fae7d252ea4: mov    %r8d,%ebp
                   │     ││    0x00007fae7d252ea7: or     $0x1,%ebp
  0.58%    0.61%   │     ││    0x00007fae7d252eaa: and    $0x7,%r8d
  0.38%    0.29%   │     ││    0x00007fae7d252eae: sar    $0x3,%ebp          ;*ishr
                   │     ││                                                  ; - com.google.re2j.Machine::match@415 (line 260)
  0.35%    0.36%   │     ││    0x00007fae7d252eb1: or     $0x1,%r8d          ; OopMap{rcx=NarrowOop [24]=Oop [32]=Oop [64]=Oop [80]=Oop off=853}
                   │     ││                                                  ;*goto
                   │     ││                                                  ; - com.google.re2j.Machine::match@437 (line 266)
  0.37%    0.33%   │     ││    0x00007fae7d252eb5: test   %eax,0x16fe6145(%rip)        # 0x00007fae94239000
                   │     ││                                                  ;*goto
                   │     ││                                                  ; - com.google.re2j.Machine::match@437 (line 266)
                   │     ││                                                  ;   {poll}
  0.03%    0.00%   │     ││    0x00007fae7d252ebb: mov    0x40(%rsp),%r10
  0.04%    0.06%   │     ││    0x00007fae7d252ec0: mov    0x28(%r10),%r11d   ;*getfield matchcap
                   │     ││                                                  ; - com.google.re2j.Machine::match@307 (line 243)
  0.36%    0.37%   │     ││    0x00007fae7d252ec4: mov    0x14(%r10),%r9d    ;*getfield re2
                   │     ││                                                  ; - com.google.re2j.Machine::match@169 (line 220)
  0.27%    0.24%   │     ││    0x00007fae7d252ec8: mov    0x20(%rsp),%r10
                   │     ││    0x00007fae7d252ecd: mov    %r10,%rdi
  0.03%    0.07%   │     ││    0x00007fae7d252ed0: shr    $0x3,%rdi
  0.34%    0.41%   │     ││    0x00007fae7d252ed4: mov    %edi,0x34(%rsp)
  0.21%    0.32%   │     ││    0x00007fae7d252ed8: mov    0x2c(%rsp),%edi
  0.00%            │     ││    0x00007fae7d252edc: mov    0x4c(%rsp),%r10d
  0.04%    0.03%   │     ││    0x00007fae7d252ee1: mov    0x18(%rsp),%rdx
  0.31%    0.31%   │     ││    0x00007fae7d252ee6: mov    %rdx,0x20(%rsp)
  0.24%    0.26%   │     ││    0x00007fae7d252eeb: mov    0x30(%rsp),%r13d
                   │     ││    0x00007fae7d252ef0: mov    %r13d,0x28(%rsp)
  0.05%    0.02%   │     ││    0x00007fae7d252ef5: mov    %ebp,0x2c(%rsp)
  0.40%    0.38%   │     ││    0x00007fae7d252ef9: mov    %r8d,0x30(%rsp)    ;*getfield matchcap
                   │     ││                                                  ; - com.google.re2j.Machine::match@307 (line 243)
  0.25%    0.34%   ↘     ││    0x00007fae7d252efe: mov    0x34(%rsp),%r8d
                         ││    0x00007fae7d252f03: movzbl 0x18(%r12,%r8,8),%r8d  ; implicit exception: dispatches to 0x00007fae7d2549ed
  0.06%    0.08%         ││    0x00007fae7d252f09: mov    0x34(%rsp),%ebp
  0.34%    0.36%         ││    0x00007fae7d252f0d: lea    (%r12,%rbp,8),%rdx  ;*aload
                         ││                                                  ; - com.google.re2j.Machine::match@136 (line 211)
  0.25%    0.31%         ││    0x00007fae7d252f11: mov    %rdx,0x18(%rsp)
                         ││    0x00007fae7d252f16: test   %r8d,%r8d
                         ││    0x00007fae7d252f19: jne    0x00007fae7d25319b  ;*aload_0
                         ││                                                  ; - com.google.re2j.Machine::match@267 (line 237)
  0.09%    0.03%         ││    0x00007fae7d252f1f: test   %eax,%eax
                         ││    0x00007fae7d252f21: jne    0x00007fae7d2538a5  ;*ifne
                         ││                                                  ; - com.google.re2j.Machine::match@271 (line 237)
  0.36%    0.52%         ││    0x00007fae7d252f27: mov    0x60(%rsp),%r8d
  0.24%    0.34%         ││    0x00007fae7d252f2c: test   %r8d,%r8d
                    ╭    ││    0x00007fae7d252f2f: je     0x00007fae7d252f3f  ;*ifeq
                    │    ││                                                  ; - com.google.re2j.Machine::match@275 (line 237)
                    │    ││    0x00007fae7d252f31: mov    0x3c(%rsp),%r9d
  0.04%    0.06%    │    ││    0x00007fae7d252f36: test   %r9d,%r9d
                    │    ││    0x00007fae7d252f39: jne    0x00007fae7d2538f9  ;*aload_0
                    │    ││                                                  ; - com.google.re2j.Machine::match@282 (line 240)
  0.32%    0.40%    ↘    ││    0x00007fae7d252f3f: test   %ebx,%ebx
                         ││    0x00007fae7d252f41: jne    0x00007fae7d253a19  ;*ifeq
                         ││                                                  ; - com.google.re2j.Machine::match@286 (line 240)
  0.27%    0.26%         ││    0x00007fae7d252f47: mov    0x40(%rsp),%r8
                         ││    0x00007fae7d252f4c: mov    0x18(%r8),%r8d     ;*getfield prog
                         ││                                                  ; - com.google.re2j.Machine::match@297 (line 243)
  0.07%    0.07%         ││    0x00007fae7d252f50: mov    0x1c(%r12,%r8,8),%ebp  ;*getfield startInst
                         ││                                                  ; - com.google.re2j.Machine::match@300 (line 243)
                         ││                                                  ; implicit exception: dispatches to 0x00007fae7d2549fd
  0.33%    0.33%         ││    0x00007fae7d252f55: mov    0x8(%r12,%rbp,8),%r9d  ; implicit exception: dispatches to 0x00007fae7d254a0d
  0.48%    0.63%         ││    0x00007fae7d252f5a: cmp    $0xf8019993,%r9d   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                         ││    0x00007fae7d252f61: jne    0x00007fae7d25376d
  0.35%    0.45%         ││    0x00007fae7d252f67: lea    (%r12,%rbp,8),%r8  ;*invokevirtual add
                         ││                                                  ; - com.google.re2j.Machine::match@314 (line 243)
  0.01%                  ││    0x00007fae7d252f6b: mov    0x18(%r8),%r10d    ;*getfield pc
                         ││                                                  ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                         ││                                                  ; - com.google.re2j.Machine::match@314 (line 243)
  0.13%    0.14%         ││    0x00007fae7d252f6f: cmp    $0x40,%r10d
                         ││    0x00007fae7d252f73: jg     0x00007fae7d253a6d  ;*if_icmpgt
                         ││                                                  ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                         ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                         ││                                                  ; - com.google.re2j.Machine::match@314 (line 243)
  0.54%    0.65%         ││    0x00007fae7d252f79: mov    %r8,%r9
  0.07%    0.08%         ││    0x00007fae7d252f7c: mov    $0x1,%ebx
  0.01%                  ││    0x00007fae7d252f81: mov    %r10d,%ecx
  0.11%    0.13%         ││    0x00007fae7d252f84: shl    %cl,%rbx           ;*lshl
                         ││                                                  ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                         ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                         ││                                                  ; - com.google.re2j.Machine::match@314 (line 243)
  1.14%    1.20%         ││    0x00007fae7d252f87: mov    0x34(%rsp),%ecx
  0.01%    0.00%         ││    0x00007fae7d252f8b: mov    0x10(%r12,%rcx,8),%rcx  ;*getfield pcsl
                         ││                                                  ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                         ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                         ││                                                  ; - com.google.re2j.Machine::match@314 (line 243)
  0.05%    0.03%         ││    0x00007fae7d252f90: mov    %rcx,%r8
  0.09%    0.04%         ││    0x00007fae7d252f93: and    %rbx,%r8           ;*land
                         ││                                                  ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                         ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                         ││                                                  ; - com.google.re2j.Machine::match@314 (line 243)
  0.54%    0.55%         ││    0x00007fae7d252f96: test   %r8,%r8
                         ││    0x00007fae7d252f99: jne    0x00007fae7d253abd  ;*ifeq
                         ││                                                  ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                         ││                                                  ; - com.google.re2j.Machine::match@314 (line 243)
  0.03%    0.02%         ││    0x00007fae7d252f9f: cmp    $0x40,%r10d
                         ││    0x00007fae7d252fa3: jge    0x00007fae7d253b39  ;*if_icmpge
                         ││                                                  ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                         ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                         ││                                                  ; - com.google.re2j.Machine::match@314 (line 243)
  0.04%    0.01%         ││    0x00007fae7d252fa9: mov    0x34(%rsp),%r10d
  0.10%    0.08%         ││    0x00007fae7d252fae: mov    %r12b,0x18(%r12,%r10,8)  ;*putfield empty
                         ││                                                  ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                         ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                         ││                                                  ; - com.google.re2j.Machine::match@314 (line 243)
  0.49%    0.40%         ││    0x00007fae7d252fb3: mov    0xc(%r12,%r10,8),%r10d  ;*getfield size
                         ││                                                  ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                         ││                                                  ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                         ││                                                  ; - com.google.re2j.Machine::match@314 (line 243)
  0.03%    0.01%         ││    0x00007fae7d252fb8: mov    0x34(%rsp),%r11d
  0.04%    0.05%         ││    0x00007fae7d252fbd: mov    0x20(%r12,%r11,8),%r11d  ;*getfield denseThreadsInstructions
                         ││                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                         ││                                                  ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                         ││                                                  ; - com.google.re2j.Machine::match@314 (line 243)
  0.13%    0.09%         ││    0x00007fae7d252fc2: or     %rcx,%rbx
  0.50%    0.68%         ││    0x00007fae7d252fc5: mov    0x34(%rsp),%ecx
  0.02%    0.02%         ││    0x00007fae7d252fc9: mov    %rbx,0x10(%r12,%rcx,8)  ;*putfield pcsl
                         ││                                                  ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                         ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                         ││                                                  ; - com.google.re2j.Machine::match@314 (line 243)
  0.19%    0.22%         ││    0x00007fae7d252fce: mov    %r10d,%r8d
  0.05%    0.02%         ││    0x00007fae7d252fd1: inc    %r8d
  0.53%    0.37%         ││    0x00007fae7d252fd4: mov    %r8d,0xc(%r12,%rcx,8)  ;*putfield size
                         ││                                                  ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                         ││                                                  ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                         ││                                                  ; - com.google.re2j.Machine::match@314 (line 243)
  0.08%    0.06%         ││    0x00007fae7d252fd9: mov    0xc(%r12,%r11,8),%r8d  ; implicit exception: dispatches to 0x00007fae7d254a29
  0.09%    0.07%         ││    0x00007fae7d252fde: cmp    %r8d,%r10d
                         ││    0x00007fae7d252fe1: jae    0x00007fae7d253678
  0.02%    0.01%         ││    0x00007fae7d252fe7: mov    0x8(%r12,%r11,8),%r8d
  0.48%    0.30%         ││    0x00007fae7d252fec: cmp    $0xf8019808,%r8d   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                         ││    0x00007fae7d252ff3: jne    0x00007fae7d2537c9  ;*aastore
                         ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                         ││                                                  ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                         ││                                                  ; - com.google.re2j.Machine::match@314 (line 243)
  0.10%    0.06%         ││    0x00007fae7d252ff9: test   %edi,%edi
                     ╭   ││    0x00007fae7d252ffb: jl     0x00007fae7d2530a9  ;*ifge
                     │   ││                                                  ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                     │   ││                                                  ; - com.google.re2j.Machine::match@322 (line 245)
  0.08%    0.05%     │   ││    0x00007fae7d253001: xor    %r8d,%r8d          ;*iload_0
                     │   ││                                                  ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                     │   ││                                                  ; - com.google.re2j.Machine::match@322 (line 245)
  0.02%    0.01%     │   ││↗   0x00007fae7d253004: cmp    $0xa,%edi
                     │   │││   0x00007fae7d253007: je     0x00007fae7d2533f0  ;*iload_1
                     │   │││                                                 ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                     │   │││                                                 ; - com.google.re2j.Machine::match@322 (line 245)
  0.47%    0.41%     │   │││   0x00007fae7d25300d: mov    0x2c(%rsp),%ebx
  0.05%    0.06%     │   │││   0x00007fae7d253011: test   %ebx,%ebx
                     │╭  │││   0x00007fae7d253013: jl     0x00007fae7d2530b4  ;*iload_1
                     ││  │││                                                 ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                     ││  │││                                                 ; - com.google.re2j.Machine::match@322 (line 245)
  0.12%    0.07%     ││  │││↗  0x00007fae7d253019: cmp    $0xa,%ebx
                     ││  ││││  0x00007fae7d25301c: je     0x00007fae7d2533f9  ;*iload_0
                     ││  ││││                                                ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                     ││  ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.01%    0.01%     ││  ││││  0x00007fae7d253022: mov    %r9,%rcx
  0.41%    0.45%     ││  ││││  0x00007fae7d253025: shr    $0x3,%rcx          ;*aastore
                     ││  ││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                     ││  ││││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                     ││  ││││                                                ; - com.google.re2j.Machine::match@314 (line 243)
  0.10%    0.07%     ││  ││││  0x00007fae7d253029: shl    $0x3,%r11          ;*getfield denseThreadsInstructions
                     ││  ││││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                     ││  ││││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                     ││  ││││                                                ; - com.google.re2j.Machine::match@314 (line 243)
  0.12%    0.07%     ││  ││││  0x00007fae7d25302d: lea    0x10(%r11,%r10,4),%r10
  0.00%    0.01%     ││  ││││  0x00007fae7d253032: mov    %ecx,(%r10)
  0.58%    0.63%     ││  ││││  0x00007fae7d253035: mov    %edi,%r9d
  0.07%    0.10%     ││  ││││  0x00007fae7d253038: add    $0xffffffbf,%r9d
  0.11%    0.08%     ││  ││││  0x00007fae7d25303c: shr    $0x9,%r10
  0.01%    0.02%     ││  ││││  0x00007fae7d253040: movabs $0x7fae8cc41000,%r11
  0.45%    0.48%     ││  ││││  0x00007fae7d25304a: mov    %r12b,(%r11,%r10,1)  ;*aastore
                     ││  ││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                     ││  ││││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                     ││  ││││                                                ; - com.google.re2j.Machine::match@314 (line 243)
  0.65%    0.84%     ││  ││││  0x00007fae7d25304e: cmp    $0x1a,%r9d
                     ││╭ ││││  0x00007fae7d253052: jb     0x00007fae7d253065  ;*if_icmple
                     │││ ││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                     │││ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     │││ ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.07%    0.11%     │││ ││││  0x00007fae7d253054: mov    %edi,%r11d
  0.00%    0.00%     │││ ││││  0x00007fae7d253057: add    $0xffffff9f,%r11d
  0.32%    0.30%     │││ ││││  0x00007fae7d25305b: cmp    $0x1a,%r11d
                     │││ ││││  0x00007fae7d25305f: jae    0x00007fae7d2535ab  ;*iconst_1
                     │││ ││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                     │││ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     │││ ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.19%    0.21%     ││↘ ││││  0x00007fae7d253065: mov    $0x1,%ebp          ;*ireturn
                     ││  ││││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                     ││  ││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     ││  ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.04%    0.09%     ││  ││││  0x00007fae7d25306a: mov    0x2c(%rsp),%r10d
  0.10%    0.07%     ││  ││││  0x00007fae7d25306f: add    $0xffffffbf,%r10d
  0.27%    0.29%     ││  ││││  0x00007fae7d253073: cmp    $0x1a,%r10d
                     ││ ╭││││  0x00007fae7d253077: jb     0x00007fae7d25308c  ;*if_icmple
                     ││ │││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                     ││ │││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     ││ │││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.29%    0.31%     ││ │││││  0x00007fae7d253079: mov    0x2c(%rsp),%r11d
  0.06%    0.03%     ││ │││││  0x00007fae7d25307e: add    $0xffffff9f,%r11d
  0.07%    0.09%     ││ │││││  0x00007fae7d253082: cmp    $0x1a,%r11d
                     ││ │││││  0x00007fae7d253086: jae    0x00007fae7d2535cc  ;*iconst_1
                     ││ │││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                     ││ │││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     ││ │││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.28%    0.34%     ││ ↘││││  0x00007fae7d25308c: mov    $0x1,%r10d         ;*ireturn
                     ││  ││││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                     ││  ││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     ││  ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.40%    0.39%     ││  ││││  0x00007fae7d253092: cmp    %r10d,%ebp
                     ││  ╰│││  0x00007fae7d253095: je     0x00007fae7d252d81  ;*if_icmpeq
                     ││   │││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                     ││   │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.03%    0.02%     ││   │││  0x00007fae7d25309b: or     $0x10,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                     ││   │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.05%    0.06%     ││   │││  0x00007fae7d25309f: mov    %r8d,0x4c(%rsp)
  0.08%    0.19%     ││   ╰││  0x00007fae7d2530a4: jmpq   0x00007fae7d252d8a
                     ↘│    ││  0x00007fae7d2530a9: mov    $0x5,%r8d
                      │    ╰│  0x00007fae7d2530af: jmpq   0x00007fae7d253004
           0.00%      ↘     │  0x00007fae7d2530b4: or     $0xa,%r8d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@27 (line 180)
                            │                                                ; - com.google.re2j.Machine::match@322 (line 245)
                            ╰  0x00007fae7d2530b8: jmpq   0x00007fae7d253019
                               0x00007fae7d2530bd: data16 xchg %ax,%ax
           0.00%               0x00007fae7d2530c0: mov    %edx,0x5c(%rsp)
  0.00%    0.01%               0x00007fae7d2530c4: jmpq   0x00007fae7d253331
                               0x00007fae7d2530c9: mov    0x5c(%rsp),%r9d
                               0x00007fae7d2530ce: add    $0x2,%r9d
                               0x00007fae7d2530d2: mov    %r9d,0x5c(%rsp)
  0.00%    0.00%               0x00007fae7d2530d7: mov    0x5c(%rsp),%r9d
           0.00%               0x00007fae7d2530dc: inc    %r9d
                               0x00007fae7d2530df: mov    %r9d,0x58(%rsp)
                               0x00007fae7d2530e4: jmp    0x00007fae7d253111
                               0x00007fae7d2530e6: mov    0x5c(%rsp),%r9d
                               0x00007fae7d2530eb: add    $0x2,%r9d
                               0x00007fae7d2530ef: mov    %r9d,0x58(%rsp)
                               0x00007fae7d2530f4: jmp    0x00007fae7d253104
                               0x00007fae7d2530f6: mov    0x5c(%rsp),%r9d
                               0x00007fae7d2530fb: add    $0x2,%r9d
                               0x00007fae7d2530ff: mov    %r9d,0x5c(%rsp)
                               0x00007fae7d253104: mov    0x5c(%rsp),%r9d
....................................................................................................
 30.10%   30.28%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 509 (447 bytes) 

                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                      ; - com.google.re2j.Machine::step@202 (line 313)
                                                                      ;   {optimized virtual_call}
                        0x00007fae7d23279c: test   %rax,%rax
                        0x00007fae7d23279f: jne    0x00007fae7d2334b1  ;*ifnull
                                                                      ; - com.google.re2j.Machine::step@209 (line 315)
                        0x00007fae7d2327a5: mov    0x18(%rsp),%r11
                        0x00007fae7d2327aa: jmpq   0x00007fae7d232401
  0.15%    0.15%        0x00007fae7d2327af: cmp    $0xf8019993,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                        0x00007fae7d2327b5: jne    0x00007fae7d232fad  ;*invokevirtual add
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%    0.01%        0x00007fae7d2327bb: mov    0x18(%r10),%ecx    ;*getfield pc
                                                                      ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.46%    0.71%        0x00007fae7d2327bf: cmp    $0x40,%ecx
                        0x00007fae7d2327c2: jg     0x00007fae7d2333e5  ;*if_icmpgt
                                                                      ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.12%    0.14%        0x00007fae7d2327c8: mov    $0x1,%r11d
  0.12%    0.15%        0x00007fae7d2327ce: shl    %cl,%r11           ;*lshl
                                                                      ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.58%    0.75%        0x00007fae7d2327d1: mov    %rdx,%rbx
  0.14%    0.17%        0x00007fae7d2327d4: and    %r11,%rbx          ;*land
                                                                      ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
           0.00%        0x00007fae7d2327d7: test   %rbx,%rbx
                        0x00007fae7d2327da: jne    0x00007fae7d233425  ;*ifeq
                                                                      ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.53%    0.34%        0x00007fae7d2327e0: cmp    $0x40,%ecx
                        0x00007fae7d2327e3: jge    0x00007fae7d233471  ;*if_icmpge
                                                                      ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.09%    0.07%        0x00007fae7d2327e9: or     %r11,%rdx
  0.10%    0.10%        0x00007fae7d2327ec: mov    %r13,%r11
           0.00%        0x00007fae7d2327ef: mov    %rdx,0x10(%r11)    ;*putfield pcsl
                                                                      ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.45%    0.51%        0x00007fae7d2327f3: add    $0x18,%r9
  0.10%    0.13%        0x00007fae7d2327f7: shr    $0x3,%r10
  0.14%    0.17%        0x00007fae7d2327fb: mov    %r10d,(%r9)        ;*aastore
                                                                      ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.02%        0x00007fae7d2327fe: mov    %r9,%r10
  0.45%    0.53%        0x00007fae7d232801: mov    0x14(%rsp),%r8d
  0.06%    0.11%        0x00007fae7d232806: add    $0x3,%r8d
  0.15%    0.18%        0x00007fae7d23280a: mov    %r8d,0xc(%r11)     ;*putfield size
                                                                      ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.00%        0x00007fae7d23280e: shr    $0x9,%r10
  0.53%    0.50%        0x00007fae7d232812: movabs $0x7fae8cc41000,%r8
  0.10%    0.11%        0x00007fae7d23281c: mov    %r12b,(%r8,%r10,1)  ;*aastore
                                                                      ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.15%    0.17%        0x00007fae7d232820: jmpq   0x00007fae7d232401
  1.32%    1.66%        0x00007fae7d232825: cmp    $0xb,%ebp
                        0x00007fae7d232828: je     0x00007fae7d232b9d  ;*if_icmpne
                                                                      ; - com.google.re2j.Inst$RuneInst::matchRune@17 (line 140)
                                                                      ; - com.google.re2j.Machine::step@181 (line 312)
  0.92%    1.14%        0x00007fae7d23282e: mov    0x20(%r8),%r9d     ;*getfield f0
                                                                      ; - com.google.re2j.Inst$RuneInst::matchRune@42 (line 145)
                                                                      ; - com.google.re2j.Machine::step@181 (line 312)
  0.15%    0.19%        0x00007fae7d232832: cmp    $0x9,%ebp
                  ╭     0x00007fae7d232835: je     0x00007fae7d23287e  ;*if_icmpne
                  │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@38 (line 144)
                  │                                                   ; - com.google.re2j.Machine::step@181 (line 312)
  0.38%    0.41%  │     0x00007fae7d232837: cmp    $0xc,%ebp
                  │     0x00007fae7d23283a: jne    0x00007fae7d232eed  ;*if_icmpne
                  │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@61 (line 148)
                  │                                                   ; - com.google.re2j.Machine::step@181 (line 312)
  0.28%    0.48%  │     0x00007fae7d232840: cmp    0x28(%rsp),%r9d
                  │╭    0x00007fae7d232845: je     0x00007fae7d232968  ;*if_icmpeq
                  ││                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@69 (line 149)
                  ││                                                  ; - com.google.re2j.Machine::step@181 (line 312)
  0.31%    0.38%  ││    0x00007fae7d23284b: mov    0x24(%r8),%r9d     ;*getfield f1
                  ││                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@73 (line 149)
                  ││                                                  ; - com.google.re2j.Machine::step@181 (line 312)
  0.01%    0.00%  ││    0x00007fae7d23284f: cmp    0x28(%rsp),%r9d
                  ││╭   0x00007fae7d232854: je     0x00007fae7d232968  ;*if_icmpeq
                  │││                                                 ; - com.google.re2j.Inst$RuneInst::matchRune@77 (line 149)
                  │││                                                 ; - com.google.re2j.Machine::step@181 (line 312)
  0.44%    0.48%  │││   0x00007fae7d23285a: mov    0x28(%r8),%ebp     ;*getfield f2
                  │││                                                 ; - com.google.re2j.Inst$RuneInst::matchRune@81 (line 149)
                  │││                                                 ; - com.google.re2j.Machine::step@181 (line 312)
  0.16%    0.11%  │││   0x00007fae7d23285e: cmp    0x28(%rsp),%ebp
                  │││   0x00007fae7d232862: je     0x00007fae7d232f3d  ;*if_icmpeq
                  │││                                                 ; - com.google.re2j.Inst$RuneInst::matchRune@85 (line 149)
                  │││                                                 ; - com.google.re2j.Machine::step@181 (line 312)
  0.22%    0.20%  │││   0x00007fae7d232868: mov    0x2c(%r8),%ebp     ;*getfield f3
                  │││                                                 ; - com.google.re2j.Inst$RuneInst::matchRune@89 (line 149)
                  │││                                                 ; - com.google.re2j.Machine::step@181 (line 312)
           0.00%  │││   0x00007fae7d23286c: cmp    0x28(%rsp),%ebp
                  │││   0x00007fae7d232870: je     0x00007fae7d232f75  ;*if_icmpne
                  │││                                                 ; - com.google.re2j.Inst$RuneInst::matchRune@93 (line 149)
                  │││                                                 ; - com.google.re2j.Machine::step@181 (line 312)
  0.39%    0.51%  │││   0x00007fae7d232876: xor    %r11d,%r11d
  0.01%    0.02%  │││   0x00007fae7d232879: jmpq   0x00007fae7d232374
  1.20%    1.41%  ↘││   0x00007fae7d23287e: cmp    0x28(%rsp),%r9d
                   ││   0x00007fae7d232883: jne    0x00007fae7d232371  ;*if_icmpne
                   ││                                                 ; - com.google.re2j.Inst$RuneInst::matchRune@46 (line 145)
                   ││                                                 ; - com.google.re2j.Machine::step@181 (line 312)
  0.00%    0.01%   ││   0x00007fae7d232889: mov    $0x1,%r11d
           0.00%   ││   0x00007fae7d23288f: jmpq   0x00007fae7d232374  ;*if_icmpge
                   ││                                                 ; - com.google.re2j.Machine::step@22 (line 282)
  0.56%    0.86%   ││   0x00007fae7d232894: movzbl 0x18(%rax),%r10d
                   ││   0x00007fae7d232899: test   %r10d,%r10d
                   ││╭  0x00007fae7d23289c: jne    0x00007fae7d2328b5  ;*ifeq
                   │││                                                ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                   │││                                                ; - com.google.re2j.Machine::step@225 (line 319)
                   │││  0x00007fae7d23289e: movb   $0x1,0x18(%rax)    ;*putfield empty
                   │││                                                ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                   │││                                                ; - com.google.re2j.Machine::step@225 (line 319)
  0.00%    0.00%   │││  0x00007fae7d2328a2: mov    0x1c(%rax),%ebp    ;*getfield pcs
                   │││                                                ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                   │││                                                ; - com.google.re2j.Machine::step@225 (line 319)
  0.58%    0.86%   │││  0x00007fae7d2328a5: mov    %r12d,0xc(%rax)    ;*putfield size
                   │││                                                ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                   │││                                                ; - com.google.re2j.Machine::step@225 (line 319)
  0.01%    0.01%   │││  0x00007fae7d2328a9: mov    %r12,0x10(%rax)    ;*putfield pcsl
                   │││                                                ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                   │││                                                ; - com.google.re2j.Machine::step@225 (line 319)
  0.01%            │││  0x00007fae7d2328ad: test   %ebp,%ebp
                   │││  0x00007fae7d2328af: jne    0x00007fae7d232f25  ;*getfield size
                   │││                                                ; - com.google.re2j.Machine::step@10 (line 281)
           0.01%   ││↘  0x00007fae7d2328b5: add    $0x80,%rsp
  0.66%    0.78%   ││   0x00007fae7d2328bc: pop    %rbp
  0.00%    0.00%   ││   0x00007fae7d2328bd: test   %eax,0x1700673d(%rip)        # 0x00007fae94239000
                   ││                                                 ;   {poll_return}
  0.01%            ││   0x00007fae7d2328c3: retq   
  0.01%    0.01%   ││   0x00007fae7d2328c4: cmp    $0xf8019993,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                   ││   0x00007fae7d2328cb: jne    0x00007fae7d233565  ;*invokevirtual add
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
  0.02%            ││   0x00007fae7d2328d1: mov    0x18(%r8),%ecx     ;*getfield pc
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
                   ││   0x00007fae7d2328d5: mov    %rdi,%r11
                   ││   0x00007fae7d2328d8: mov    0x10(%rdi),%r9     ;*getfield pcsl
                   ││                                                 ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
                   ││                                                 ; implicit exception: dispatches to 0x00007fae7d233869
  0.00%    0.02%   ││   0x00007fae7d2328dc: cmp    $0x40,%ecx
                   ││   0x00007fae7d2328df: jg     0x00007fae7d233609  ;*if_icmpgt
                   ││                                                 ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
  0.01%    0.00%   ││   0x00007fae7d2328e5: mov    $0x1,%edi
                   ││   0x00007fae7d2328ea: shl    %cl,%rdi           ;*lshl
                   ││                                                 ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
  0.04%    0.02%   ││   0x00007fae7d2328ed: mov    %r9,%rdx
                   ││   0x00007fae7d2328f0: and    %rdi,%rdx          ;*land
                   ││                                                 ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
                   ││   0x00007fae7d2328f3: test   %rdx,%rdx
                   ││   0x00007fae7d2328f6: jne    0x00007fae7d233665  ;*ifeq
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
           0.01%   ││   0x00007fae7d2328fc: cmp    $0x40,%ecx
                   ││   0x00007fae7d2328ff: jge    0x00007fae7d2336c5  ;*if_icmpge
                   ││                                                 ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
  0.01%    0.00%   ││   0x00007fae7d232905: mov    %r12b,0x18(%r11)   ;*putfield empty
                   ││                                                 ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
                   ││   0x00007fae7d232909: mov    0x20(%r11),%ecx    ;*getfield denseThreadsInstructions
                   ││                                                 ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
                   ││   0x00007fae7d23290d: or     %r9,%rdi
           0.01%   ││   0x00007fae7d232910: mov    %rdi,0x10(%r11)    ;*putfield pcsl
                   ││                                                 ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
  0.01%            ││   0x00007fae7d232914: mov    0xc(%r11),%ebp     ;*getfield size
                   ││                                                 ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
  0.00%            ││   0x00007fae7d232918: mov    %ebp,%edi
                   ││   0x00007fae7d23291a: inc    %edi
  0.01%    0.01%   ││   0x00007fae7d23291c: mov    %edi,0xc(%r11)     ;*putfield size
                   ││                                                 ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
  0.00%    0.00%   ││   0x00007fae7d232920: mov    0xc(%r12,%rcx,8),%edi  ; implicit exception: dispatches to 0x00007fae7d23387d
           0.00%   ││   0x00007fae7d232925: cmp    %edi,%ebp
                   ││   0x00007fae7d232927: jae    0x00007fae7d233515
  0.01%            ││   0x00007fae7d23292d: mov    0x8(%r12,%rcx,8),%edi
  0.01%    0.00%   ││   0x00007fae7d232932: cmp    $0xf8019808,%edi   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                   ││   0x00007fae7d232938: jne    0x00007fae7d2335b9  ;*aastore
                   ││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
  0.01%    0.00%   ││   0x00007fae7d23293e: lea    (%r12,%rcx,8),%r9  ;*getfield denseThreadsInstructions
                   ││                                                 ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
                   ││   0x00007fae7d232942: lea    0x10(%r9,%rbp,4),%r9
  0.01%    0.00%   ││   0x00007fae7d232947: shr    $0x3,%r8
                   ││   0x00007fae7d23294b: mov    %r8d,(%r9)
  0.09%    0.00%   ││   0x00007fae7d23294e: mov    %r9,%r8
                   ││   0x00007fae7d232951: shr    $0x9,%r8
                   ││   0x00007fae7d232955: movabs $0x7fae8cc41000,%r9
           0.00%   ││   0x00007fae7d23295f: mov    %r12b,(%r9,%r8,1)  ;*aastore
                   ││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
  0.02%    0.01%   ││   0x00007fae7d232963: jmpq   0x00007fae7d23241a  ;*iconst_1
                   ││                                                 ; - com.google.re2j.Inst$RuneInst::matchRune@96 (line 149)
                   ││                                                 ; - com.google.re2j.Machine::step@181 (line 312)
  0.20%    0.16%   ↘↘   0x00007fae7d232968: mov    $0x1,%r11d
  0.06%    0.05%        0x00007fae7d23296e: jmpq   0x00007fae7d232374
                        0x00007fae7d232973: mov    %r13,%r11
                        0x00007fae7d232976: jmpq   0x00007fae7d232401
                        0x00007fae7d23297b: mov    $0xffffffe4,%esi
                        0x00007fae7d232980: mov    %r10d,0x9c(%rsp)
                        0x00007fae7d232988: mov    %rax,0x10(%rsp)
                        0x00007fae7d23298d: mov    %rdi,0x18(%rsp)
                        0x00007fae7d232992: mov    %r13d,0x30(%rsp)
                        0x00007fae7d232997: callq  0x00007fae7d0051a0  ; OopMap{rbp=NarrowOop [8]=Oop [16]=Oop [24]=Oop off=1692}
                                                                      ;*aaload
                                                                      ; - com.google.re2j.Machine::step@87 (line 295)
....................................................................................................
 12.62%   14.93%  <total for region 3>

....[Hottest Regions]...............................................................................
 45.35%   43.34%         C2, level 4  com.google.re2j.Machine::step, version 509 (793 bytes) 
 30.10%   30.28%         C2, level 4  com.google.re2j.Machine::match, version 558 (1010 bytes) 
 12.62%   14.93%         C2, level 4  com.google.re2j.Machine::step, version 509 (447 bytes) 
  5.98%    6.19%         C2, level 4  com.google.re2j.Machine::step, version 509 (96 bytes) 
  1.63%    1.74%         C2, level 4  com.google.re2j.Machine::match, version 558 (761 bytes) 
  1.13%    1.12%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.19%    0.13%         C2, level 4  java.util.Collections::shuffle, version 571 (312 bytes) 
  0.13%    0.10%         C2, level 4  com.google.re2j.Pattern::find, version 560 (32 bytes) 
  0.12%    0.10%         C2, level 4  com.google.re2j.Pattern::find, version 560 (23 bytes) 
  0.11%    0.01%   [kernel.kallsyms]  [unknown] (39 bytes) 
  0.11%    0.09%         C2, level 4  com.google.re2j.Pattern::find, version 560 (8 bytes) 
  0.11%    0.07%         C2, level 4  com.google.re2j.Pattern::find, version 560 (0 bytes) 
  0.09%    0.13%         C2, level 4  com.google.re2j.Machine::match, version 558 (303 bytes) 
  0.08%    0.00%         C2, level 4  com.google.re2j.Pattern::find, version 560 (189 bytes) 
  0.08%    0.01%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 604 (90 bytes) 
  0.07%                  C2, level 4  com.google.re2j.Pattern::find, version 560 (33 bytes) 
  0.07%    0.00%   [kernel.kallsyms]  [unknown] (1 bytes) 
  0.06%    0.04%         C2, level 4  com.google.re2j.Machine::match, version 558 (195 bytes) 
  0.05%    0.02%              [vdso]  [unknown] (2 bytes) 
  0.04%    0.00%   [kernel.kallsyms]  [unknown] (24 bytes) 
  1.88%    1.67%  <...other 413 warm regions...>
....................................................................................................
 99.99%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 63.95%   64.45%         C2, level 4  com.google.re2j.Machine::step, version 509 
 31.93%   32.21%         C2, level 4  com.google.re2j.Machine::match, version 558 
  2.21%    1.95%   [kernel.kallsyms]  [unknown] 
  0.76%    0.39%         C2, level 4  com.google.re2j.Pattern::find, version 560 
  0.21%    0.14%         C2, level 4  java.util.Collections::shuffle, version 571 
  0.13%    0.05%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 604 
  0.05%    0.02%              [vdso]  [unknown] 
  0.04%    0.04%      hsdis-amd64.so  [unknown] 
  0.03%    0.03%           libjvm.so  GenericTaskQueueSet<OverflowTaskQueue<StarTask, (MemoryType)1, 131072u>, (MemoryType)1>::steal_best_of_2 
  0.02%                  C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 569 
  0.02%                 libc-2.26.so  __clock_gettime 
  0.02%                       [vdso]  __vdso_clock_gettime 
  0.02%    0.06%        libc-2.26.so  vfprintf 
  0.02%    0.04%        libc-2.26.so  _IO_fwrite 
  0.02%    0.00%           libjvm.so  os::javaTimeNanos 
  0.01%    0.01%        libc-2.26.so  __strchr_avx2 
  0.01%    0.02%        libc-2.26.so  _IO_default_xsputn 
  0.01%           libpthread-2.26.so  __libc_write 
  0.01%    0.01%           libjvm.so  PSPromotionManager::drain_stacks_depth 
  0.01%                  interpreter  invoke return entry points  
  0.46%    0.30%  <...other 80 warm methods...>
....................................................................................................
 99.99%   99.73%  <totals>

....[Distribution by Source]........................................................................
 97.02%   97.24%         C2, level 4
  2.21%    1.95%   [kernel.kallsyms]
  0.38%    0.44%           libjvm.so
  0.17%    0.24%        libc-2.26.so
  0.07%    0.02%              [vdso]
  0.05%    0.02%         interpreter
  0.04%    0.05%      hsdis-amd64.so
  0.03%    0.04%  libpthread-2.26.so
  0.01%                  C1, level 3
  0.00%                             
  0.00%    0.00%    Unknown, level 0
....................................................................................................
 99.99%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                 Mode  Cnt      Score     Error  Units
Re2jRegex.testExp1       thrpt   20  26489.907 ± 139.909  ops/s
Re2jRegex.testExp1:·asm  thrpt             NaN              ---
