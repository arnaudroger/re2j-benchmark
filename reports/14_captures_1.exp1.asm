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
# Warmup Iteration   1: 10354.371 ops/s
# Warmup Iteration   2: 22221.284 ops/s
# Warmup Iteration   3: 22228.872 ops/s
# Warmup Iteration   4: 22231.775 ops/s
# Warmup Iteration   5: 22254.877 ops/s
# Warmup Iteration   6: 22220.622 ops/s
# Warmup Iteration   7: 22222.597 ops/s
# Warmup Iteration   8: 22289.636 ops/s
# Warmup Iteration   9: 22309.060 ops/s
# Warmup Iteration  10: 22311.315 ops/s
# Warmup Iteration  11: 22306.973 ops/s
# Warmup Iteration  12: 22203.725 ops/s
# Warmup Iteration  13: 22309.664 ops/s
# Warmup Iteration  14: 22184.138 ops/s
# Warmup Iteration  15: 21284.180 ops/s
# Warmup Iteration  16: 21284.535 ops/s
# Warmup Iteration  17: 22348.663 ops/s
# Warmup Iteration  18: 22350.927 ops/s
# Warmup Iteration  19: 22350.904 ops/s
# Warmup Iteration  20: 17754.789 ops/s
Iteration   1: 22356.336 ops/s
Iteration   2: 22358.576 ops/s
Iteration   3: 22370.510 ops/s
Iteration   4: 22370.800 ops/s
Iteration   5: 22372.747 ops/s
Iteration   6: 22376.588 ops/s
Iteration   7: 22374.753 ops/s
Iteration   8: 22374.282 ops/s
Iteration   9: 22371.748 ops/s
Iteration  10: 22387.797 ops/s
Iteration  11: 21825.081 ops/s
Iteration  12: 21827.372 ops/s
Iteration  13: 21828.396 ops/s
Iteration  14: 22451.683 ops/s
Iteration  15: 22451.005 ops/s
Iteration  16: 22449.155 ops/s
Iteration  17: 22429.704 ops/s
Iteration  18: 22360.314 ops/s
Iteration  19: 22354.049 ops/s
Iteration  20: 22351.624 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  22302.126 ±(99.9%) 180.073 ops/s [Average]
  (min, avg, max) = (21825.081, 22302.126, 22451.683), stdev = 207.372
  CI (99.9%): [22122.053, 22482.199] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1:·asm":
PrintAssembly processed: 195245 total address lines.
Perf output processed (skipped 23.377 seconds):
 Column 1: cycles (20345 events)
 Column 2: instructions (20339 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 493 (895 bytes) 

                     0x00007fd70921fb74: jae    0x00007fd709220365
                     0x00007fd70921fb7a: mov    %rdx,%r10
                     0x00007fd70921fb7d: mov    %rcx,%r8
                     0x00007fd70921fb80: shr    $0x3,%r8
                     0x00007fd70921fb84: mov    %r8d,(%rdx)
                     0x00007fd70921fb87: shr    $0x9,%r10
                     0x00007fd70921fb8b: movabs $0x7fd719e4b000,%r8
                     0x00007fd70921fb95: mov    %r12b,(%r8,%r10,1)  ;*synchronization entry
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.01%     0x00007fd70921fb99: mov    0x10(%rsp),%rax
  0.21%    0.08%     0x00007fd70921fb9e: mov    0xac(%rsp),%r13d
  0.10%    0.08%     0x00007fd70921fba6: mov    0xa4(%rsp),%r10d   ;*aload
                                                                   ; - com.google.re2j.Machine::step@211 (line 316)
  2.48%    2.98%  ↗  0x00007fd70921fbae: inc    %r10d              ;*iinc
                  │                                                ; - com.google.re2j.Machine::step@222 (line 283)
  0.00%    0.01%  │  0x00007fd70921fbb1: cmp    %r13d,%r10d
                  │  0x00007fd70921fbb4: jge    0x00007fd70922002b  ;*iload
                  │                                                ; - com.google.re2j.Machine::step@31 (line 286)
  0.35%    0.57%  │  0x00007fd70921fbba: mov    0x20(%rax),%r8d    ;*getfield denseThreadsInstructions
                  │                                                ; - com.google.re2j.Machine::step@86 (line 296)
  0.38%    0.49%  │  0x00007fd70921fbbe: mov    0xc(%r12,%r8,8),%ecx  ; implicit exception: dispatches to 0x00007fd709220fb9
  2.09%    2.21%  │  0x00007fd70921fbc3: cmp    %ecx,%r10d
                  │  0x00007fd70921fbc6: jae    0x00007fd709220169
  0.14%    0.07%  │  0x00007fd70921fbcc: shl    $0x3,%r8
  0.36%    0.41%  │  0x00007fd70921fbd0: mov    0x10(%r8,%r10,4),%r9d  ;*aaload
                  │                                                ; - com.google.re2j.Machine::step@91 (line 296)
  0.38%    0.38%  │  0x00007fd70921fbd5: mov    0xc(%r12,%r9,8),%ebp  ;*getfield op
                  │                                                ; - com.google.re2j.Machine::step@96 (line 298)
                  │                                                ; implicit exception: dispatches to 0x00007fd709220fcd
  3.21%    3.54%  │  0x00007fd70921fbda: cmp    $0x6,%ebp
                  │  0x00007fd70921fbdd: je     0x00007fd70922019d  ;*if_icmpne
                  │                                                ; - com.google.re2j.Machine::step@101 (line 298)
  1.08%    1.36%  │  0x00007fd70921fbe3: cmp    $0xa,%ebp
                  │  0x00007fd70921fbe6: jne    0x00007fd70921ffbb  ;*if_icmpne
                  │                                                ; - com.google.re2j.Inst::matchRune@6 (line 90)
                  │                                                ; - com.google.re2j.Machine::step@183 (line 313)
  0.22%    0.24%  │  0x00007fd70921fbec: mov    0x2c(%r12,%r9,8),%r9d  ;*getfield outInst
                  │                                                ; - com.google.re2j.Machine::step@191 (line 314)
  0.25%    0.16%  │  0x00007fd70921fbf1: mov    0x8(%r12,%r9,8),%ecx  ; implicit exception: dispatches to 0x00007fd709220fdd
  3.36%    3.47%  │  0x00007fd70921fbf6: lea    (%r12,%r9,8),%r8
  0.01%    0.01%  │  0x00007fd70921fbfa: cmp    $0xf8019843,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
  0.70%    0.80%  │  0x00007fd70921fc00: jne    0x00007fd70922005b  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Machine::step@206 (line 314)
  0.69%    0.58%  │  0x00007fd70921fc06: mov    0x18(%r8),%edx     ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 175)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%    0.01%  │  0x00007fd70921fc0a: mov    0x10(%r11),%r9     ;*getfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
                  │                                                ; implicit exception: dispatches to 0x00007fd709220ff1
  0.03%    0.06%  │  0x00007fd70921fc0e: cmp    $0x40,%edx
                  │  0x00007fd70921fc11: jg     0x00007fd7092204c1  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.14%    0.10%  │  0x00007fd70921fc17: mov    $0x1,%edi
  0.60%    0.45%  │  0x00007fd70921fc1c: mov    %edx,%ecx
                  │  0x00007fd70921fc1e: shl    %cl,%rdi           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.83%    0.85%  │  0x00007fd70921fc21: mov    %r9,%rcx
  0.01%    0.02%  │  0x00007fd70921fc24: and    %rdi,%rcx
  0.02%           │  0x00007fd70921fc27: test   %rcx,%rcx
                  ╰  0x00007fd70921fc2a: jne    0x00007fd70921fbae  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.29%    0.29%     0x00007fd70921fc30: cmp    $0x40,%edx
                     0x00007fd70921fc33: jge    0x00007fd70922051d  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.37%    0.36%     0x00007fd70921fc39: mov    %r12b,0x18(%r11)   ;*putfield empty
                                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
           0.01%     0x00007fd70921fc3d: mov    0x2c(%r8),%ebp     ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.05%     0x00007fd70921fc41: or     %r9,%rdi           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.23%    0.31%     0x00007fd70921fc44: mov    %rdi,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.46%    0.39%     0x00007fd70921fc48: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007fd709221005
  0.63%    0.65%     0x00007fd70921fc4d: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007fd70921fc53: jne    0x00007fd709220259
  0.48%    0.43%     0x00007fd70921fc59: lea    (%r12,%rbp,8),%r9  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%    0.00%     0x00007fd70921fc5d: mov    0x18(%r9),%ecx     ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.43%    0.32%     0x00007fd70921fc61: cmp    $0x40,%ecx
                     0x00007fd70921fc64: jg     0x00007fd709220579  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.38%    0.23%     0x00007fd70921fc6a: mov    $0x1,%ebx
  0.10%    0.10%     0x00007fd70921fc6f: shl    %cl,%rbx           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  1.13%    0.73%     0x00007fd70921fc72: mov    %rdi,%rdx
  0.08%    0.06%     0x00007fd70921fc75: and    %rbx,%rdx          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007fd70921fc78: test   %rdx,%rdx
                     0x00007fd70921fc7b: jne    0x00007fd709220116  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.47%    0.37%     0x00007fd70921fc81: xor    %ebp,%ebp          ;*ireturn
                                                                   ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.06%    0.04%     0x00007fd70921fc83: test   %rdx,%rdx
                     0x00007fd70921fc86: jne    0x00007fd7092205d9  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.32%    0.29%     0x00007fd70921fc8c: cmp    $0x40,%ecx
                     0x00007fd70921fc8f: jge    0x00007fd709220635  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%    0.01%     0x00007fd70921fc95: or     %rbx,%rdi          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.24%    0.13%     0x00007fd70921fc98: mov    %rdi,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.08%    0.08%     0x00007fd70921fc9c: mov    0x20(%r11),%ebx    ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.35%    0.37%     0x00007fd70921fca0: mov    0xc(%r11),%ecx     ;*getfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%              0x00007fd70921fca4: mov    %ecx,%edx
  0.30%    0.02%     0x00007fd70921fca6: inc    %edx               ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.13%    0.08%     0x00007fd70921fca8: mov    %edx,0xc(%r11)     ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.30%    0.25%     0x00007fd70921fcac: mov    0xc(%r12,%rbx,8),%r14d  ; implicit exception: dispatches to 0x00007fd709221019
  0.01%              0x00007fd70921fcb1: cmp    %r14d,%ecx
                     0x00007fd70921fcb4: jae    0x00007fd7092201fd
  0.29%    0.01%     0x00007fd70921fcba: mov    0x8(%r12,%rbx,8),%esi
  0.09%    0.03%     0x00007fd70921fcbf: cmp    $0xf8019807,%esi   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                     0x00007fd70921fcc5: jne    0x00007fd7092202b5  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.38%    0.24%     0x00007fd70921fccb: mov    0x34(%r8),%r8d     ;*getfield inst2
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@43 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%              0x00007fd70921fccf: mov    %r9,%rsi
  0.20%    0.01%     0x00007fd70921fcd2: shr    $0x3,%rsi          ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.09%    0.02%     0x00007fd70921fcd6: lea    (%r12,%rbx,8),%r9  ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.38%    0.23%     0x00007fd70921fcda: lea    0x10(%r9,%rcx,4),%rbp
  0.01%    0.00%     0x00007fd70921fcdf: mov    %esi,0x0(%rbp)
  0.27%    0.02%     0x00007fd70921fce2: mov    %rbp,%rsi
  0.10%    0.06%     0x00007fd70921fce5: shr    $0x9,%rsi
  0.34%    0.39%     0x00007fd70921fce9: movabs $0x7fd719e4b000,%rbp
  0.00%    0.01%     0x00007fd70921fcf3: mov    %r12b,0x0(%rbp,%rsi,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.32%    0.01%     0x00007fd70921fcf8: mov    0x8(%r12,%r8,8),%esi  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                                                                   ; implicit exception: dispatches to 0x00007fd709221035
  0.06%    0.06%     0x00007fd70921fcfd: vmovd  %edx,%xmm2
  0.30%    0.20%     0x00007fd70921fd01: vmovd  %ebx,%xmm0
  0.00%    0.02%     0x00007fd70921fd05: mov    %r10d,0xa4(%rsp)
  0.24%    0.02%     0x00007fd70921fd0d: mov    %r13d,0xac(%rsp)
  0.10%    0.07%     0x00007fd70921fd15: mov    %r11,%r13
  0.30%    0.30%     0x00007fd70921fd18: mov    %rax,0x10(%rsp)
  0.01%    0.00%     0x00007fd70921fd1d: vmovd  %ecx,%xmm1
  0.23%    0.03%     0x00007fd70921fd21: movslq %ecx,%r10
  0.15%    0.06%     0x00007fd70921fd24: lea    (%r9,%r10,4),%rbx  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.39%    0.30%     0x00007fd70921fd28: mov    %rbx,%rdx
  0.02%    0.02%     0x00007fd70921fd2b: add    $0x14,%rdx         ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.29%    0.13%     0x00007fd70921fd2f: lea    (%r12,%r8,8),%r11
  0.09%    0.04%     0x00007fd70921fd33: mov    %ecx,%r10d
  0.36%    0.30%     0x00007fd70921fd36: add    $0x2,%r10d         ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.02%     0x00007fd70921fd3a: cmp    $0xf8019885,%esi   ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
  0.27%    0.11%     0x00007fd70921fd40: jne    0x00007fd70921fb11  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.07%    0.07%     0x00007fd70921fd46: mov    %r11,%rax
  0.36%    0.31%     0x00007fd70921fd49: mov    0x18(%r11),%r11d   ;*getfield pc
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@2 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%    0.00%     0x00007fd70921fd4d: mov    %r11d,%ecx
  0.23%    0.34%     0x00007fd70921fd50: cmp    $0x40,%r11d
                     0x00007fd70921fd54: jg     0x00007fd709220835  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.08%    0.08%     0x00007fd70921fd5a: mov    $0x1,%r8d
  0.30%    0.19%     0x00007fd70921fd60: shl    %cl,%r8            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.35%    0.16%     0x00007fd70921fd63: mov    %rdi,%r11
  0.35%    0.10%     0x00007fd70921fd66: and    %r8,%r11           ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.01%     0x00007fd70921fd69: test   %r11,%r11
                     0x00007fd70921fd6c: jne    0x00007fd709220120  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.29%    0.36%     0x00007fd70921fd72: xor    %ebp,%ebp          ;*ireturn
                                                                   ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.09%    0.04%     0x00007fd70921fd74: test   %r11,%r11
                     0x00007fd70921fd77: jne    0x00007fd709220871  ;*ifeq
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@8 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.37%    0.17%     0x00007fd70921fd7d: mov    %ecx,%r11d
  0.02%    0.00%     0x00007fd70921fd80: cmp    $0x40,%r11d
                     0x00007fd70921fd84: jge    0x00007fd70922089d  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.25%    0.33%     0x00007fd70921fd8a: mov    0x2c(%rax),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@82 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.08%    0.02%     0x00007fd70921fd8d: or     %r8,%rdi           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.40%    0.20%     0x00007fd70921fd90: mov    %rdi,0x10(%r13)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.01%     0x00007fd70921fd94: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007fd709221069
  0.31%    0.29%     0x00007fd70921fd99: cmp    $0xf8019843,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                     0x00007fd70921fda0: jne    0x00007fd709220455
  0.08%    0.11%     0x00007fd70921fda6: lea    (%r12,%rbp,8),%rax  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.38%    0.12%     0x00007fd70921fdaa: mov    0x18(%rax),%r11d   ;*getfield pc
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%    0.00%     0x00007fd70921fdae: vmovd  %r11d,%xmm3
  0.25%    0.27%     0x00007fd70921fdb3: cmp    $0x40,%r11d
                     0x00007fd70921fdb7: jg     0x00007fd709220a09  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.09%    0.01%     0x00007fd70921fdbd: mov    $0x1,%r8d
  0.29%    0.21%     0x00007fd70921fdc3: mov    %r11d,%ecx
  0.02%    0.00%     0x00007fd70921fdc6: shl    %cl,%r8            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.67%    0.48%     0x00007fd70921fdc9: mov    %rdi,%r11
  0.00%    0.02%     0x00007fd70921fdcc: and    %r8,%r11
  0.25%    0.48%     0x00007fd70921fdcf: test   %r11,%r11
                     0x00007fd70921fdd2: jne    0x00007fd709220139  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.07%    0.10%     0x00007fd70921fdd8: mov    %ecx,%r11d
  0.35%    0.59%     0x00007fd70921fddb: cmp    $0x40,%r11d
                     0x00007fd70921fddf: jge    0x00007fd709220a45  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.02%     0x00007fd70921fde5: mov    0x2c(%rax),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.25%    0.29%     0x00007fd70921fde8: or     %r8,%rdi           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.10%    0.13%     0x00007fd70921fdeb: mov    %rdi,0x10(%r13)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.29%    0.43%     0x00007fd70921fdef: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007fd70922107d
  0.01%    0.03%     0x00007fd70921fdf4: cmp    $0xf8019909,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007fd70921fdfb: jne    0x00007fd70922047d
  0.29%    0.26%     0x00007fd70921fe01: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.12%    0.17%     0x00007fd70921fe05: vmovq  %r11,%xmm3
  0.30%    0.55%     0x00007fd70921fe0a: mov    0x18(%r11),%r11d   ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.01%     0x00007fd70921fe0e: mov    %r11d,%ecx
  0.29%    0.45%     0x00007fd70921fe11: cmp    $0x40,%r11d
                     0x00007fd70921fe15: jg     0x00007fd709220a81  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.09%    0.10%     0x00007fd70921fe1b: mov    $0x1,%r8d
  0.35%    0.46%     0x00007fd70921fe21: shl    %cl,%r8            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.42%    0.38%     0x00007fd70921fe24: mov    %rdi,%r11
  0.31%    0.32%     0x00007fd70921fe27: and    %r8,%r11           ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.02%     0x00007fd70921fe2a: test   %r11,%r11
                     0x00007fd70921fe2d: jne    0x00007fd709220141  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.23%    0.24%     0x00007fd70921fe33: xor    %ebp,%ebp          ;*ireturn
                                                                   ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.11%    0.08%     0x00007fd70921fe35: test   %r11,%r11
                     0x00007fd70921fe38: jne    0x00007fd709220ac1  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.34%    0.38%     0x00007fd70921fe3e: mov    %ecx,%r11d
  0.00%    0.01%     0x00007fd70921fe41: cmp    $0x40,%r11d
                     0x00007fd70921fe45: jge    0x00007fd709220af9  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.27%    0.28%     0x00007fd70921fe4b: mov    %r10d,0xc(%r13)    ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.10%    0.10%     0x00007fd70921fe4f: or     %r8,%rdi           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.37%    0.34%     0x00007fd70921fe52: mov    %rdi,0x10(%r13)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.01%     0x00007fd70921fe56: cmp    %r14d,%r10d
                     0x00007fd70921fe59: jae    0x00007fd7092203e1  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.22%    0.30%     0x00007fd70921fe5f: mov    0x34(%rax),%r11d   ;*getfield inst2
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@43 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.11%    0.12%     0x00007fd70921fe63: mov    %rdx,%r8
  0.33%    0.42%     0x00007fd70921fe66: vmovq  %xmm3,%r10
  0.02%    0.03%     0x00007fd70921fe6b: shr    $0x3,%r10
  0.27%    0.25%     0x00007fd70921fe6f: mov    %r10d,(%rdx)
  0.09%    0.09%     0x00007fd70921fe72: shr    $0x9,%r8
  0.32%    0.50%     0x00007fd70921fe76: movabs $0x7fd719e4b000,%r10
  0.02%    0.03%     0x00007fd70921fe80: mov    %r12b,(%r10,%r8,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.31%    0.33%     0x00007fd70921fe84: mov    0x8(%r12,%r11,8),%ecx  ; implicit exception: dispatches to 0x00007fd709221091
  0.09%    0.09%     0x00007fd70921fe89: lea    (%r12,%r11,8),%r10
  0.29%    0.34%     0x00007fd70921fe8d: cmp    $0xf8019885,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                     0x00007fd70921fe93: je     0x00007fd70921ff1d
           0.02%     0x00007fd70921fe99: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007fd70921fe9f: jne    0x00007fd7092207dd  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.28%    0.36%     0x00007fd70921fea5: mov    0x18(%r10),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.08%    0.12%     0x00007fd70921fea9: cmp    $0x40,%ecx
                     0x00007fd70921feac: jg     0x00007fd709220bdd  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.34%    0.36%     0x00007fd70921feb2: mov    $0x1,%r11d
  0.01%    0.00%     0x00007fd70921feb8: shl    %cl,%r11           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.70%    0.55%     0x00007fd70921febb: mov    %rdi,%r8
  0.01%    0.00%     0x00007fd70921febe: and    %r11,%r8           ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.27%    0.23%     0x00007fd70921fec1: test   %r8,%r8
                     0x00007fd70921fec4: jne    0x00007fd709220155  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.08%    0.13%     0x00007fd70921feca: xor    %ebp,%ebp          ;*ireturn
                                                                   ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.31%    0.47%     0x00007fd70921fecc: test   %r8,%r8
                     0x00007fd70921fecf: jne    0x00007fd709220c4d  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.01%     0x00007fd70921fed5: cmp    $0x40,%ecx
                     0x00007fd70921fed8: jge    0x00007fd709220c9d  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.31%    0.36%     0x00007fd70921fede: or     %r11,%rdi
  0.07%    0.13%     0x00007fd70921fee1: mov    %r13,%r11
  0.32%    0.50%     0x00007fd70921fee4: mov    %rdi,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%    0.02%     0x00007fd70921fee8: add    $0x18,%rbx
  0.32%    0.30%     0x00007fd70921feec: mov    %r10,%r8
  0.08%    0.10%     0x00007fd70921feef: shr    $0x3,%r8
  0.32%    0.43%     0x00007fd70921fef3: mov    %r8d,(%rbx)        ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.03%     0x00007fd70921fef6: mov    %rbx,%r10
  0.19%    0.36%     0x00007fd70921fef9: vmovd  %xmm1,%r9d
  0.10%    0.11%     0x00007fd70921fefe: add    $0x3,%r9d
  0.33%    0.47%     0x00007fd70921ff02: mov    %r9d,0xc(%r11)     ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.01%     0x00007fd70921ff06: shr    $0x9,%r10
  0.26%    0.32%     0x00007fd70921ff0a: movabs $0x7fd719e4b000,%r8
  0.09%    0.09%     0x00007fd70921ff14: mov    %r12b,(%r8,%r10,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.32%    0.20%     0x00007fd70921ff18: jmpq   0x00007fd70921fb99  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
....................................................................................................
 47.30%   45.74%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 534 (978 bytes) 

                              0x00007fd70923a691: or     $0x1,%r11d         ;*ishr
                                                                            ; - com.google.re2j.Machine::match@104 (line 200)
                              0x00007fd70923a695: vmovd  %xmm1,%r10d
                              0x00007fd70923a69a: test   %r10d,%r10d
                              0x00007fd70923a69d: jne    0x00007fd70923b9c1  ;*ifne
                                                                            ; - com.google.re2j.Machine::match@115 (line 204)
                              0x00007fd70923a6a3: test   %edi,%edi
                              0x00007fd70923a6a5: jl     0x00007fd70923afbb  ;*ifge
                                                                            ; - com.google.re2j.Utils::emptyOpContext@21 (line 179)
                                                                            ; - com.google.re2j.Machine::match@121 (line 205)
           0.01%              0x00007fd70923a6ab: mov    %r8d,%ebx
                              0x00007fd70923a6ae: mov    %r11d,0x30(%rsp)
                              0x00007fd70923a6b3: mov    $0x5,%r10d         ;*iload_1
                                                                            ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                                                                            ; - com.google.re2j.Machine::match@121 (line 205)
                              0x00007fd70923a6b9: cmp    $0xa,%edi
                              0x00007fd70923a6bc: je     0x00007fd70923afdc  ;*iload_0
                                                                            ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                                                                            ; - com.google.re2j.Machine::match@121 (line 205)
  0.01%                       0x00007fd70923a6c2: mov    %edi,%r8d
                              0x00007fd70923a6c5: add    $0xffffffbf,%r8d
                              0x00007fd70923a6c9: cmp    $0x1a,%r8d
                  ╭           0x00007fd70923a6cd: jb     0x00007fd70923a6e0  ;*if_icmple
                  │                                                         ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │                                                         ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                         ; - com.google.re2j.Machine::match@121 (line 205)
                  │           0x00007fd70923a6cf: mov    %edi,%r11d
           0.00%  │           0x00007fd70923a6d2: add    $0xffffff9f,%r11d
  0.00%           │           0x00007fd70923a6d6: cmp    $0x1a,%r11d
                  │           0x00007fd70923a6da: jae    0x00007fd70923aff3  ;*iconst_1
                  │                                                         ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │                                                         ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                         ; - com.google.re2j.Machine::match@121 (line 205)
                  ↘           0x00007fd70923a6e0: or     $0x10,%r10d        ;*iload_2
                                                                            ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                            ; - com.google.re2j.Machine::match@121 (line 205)
           0.00%              0x00007fd70923a6e4: vmovq  %xmm0,%r11
  0.00%                       0x00007fd70923a6e9: movzbl 0x11(%r11),%r8d    ;*getfield captures
                                                                            ; - com.google.re2j.Machine::match@283 (line 240)
  0.00%    0.01%              0x00007fd70923a6ee: mov    %rcx,%r11
                              0x00007fd70923a6f1: shl    $0x3,%r11          ;*getfield q1
                                                                            ; - com.google.re2j.Machine::match@53 (line 192)
                              0x00007fd70923a6f5: mov    %r11,0x60(%rsp)
  0.00%    0.00%              0x00007fd70923a6fa: xor    %eax,%eax
                              0x00007fd70923a6fc: xor    %r11d,%r11d
                              0x00007fd70923a6ff: mov    %r11d,0x58(%rsp)
  0.00%            ╭          0x00007fd70923a704: jmpq   0x00007fd70923a891
  0.18%    0.21%   │    ↗     0x00007fd70923a709: or     $0x20,%r10d        ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                   │    │                                                   ; - com.google.re2j.Machine::match@326 (line 245)
  0.09%    0.09%   │    │     0x00007fd70923a70d: mov    %r10d,0x2c(%rsp)   ;*iload_2
                   │    │                                                   ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   │    │                                                   ; - com.google.re2j.Machine::match@326 (line 245)
  0.22%    0.21%   │    │↗    0x00007fd70923a712: cmp    0x14(%rsp),%eax
                   │    ││    0x00007fd70923a716: je     0x00007fd70923af08  ;*if_icmpne
                   │    ││                                                  ; - com.google.re2j.Machine::match@351 (line 246)
  0.35%    0.39%   │    ││    0x00007fd70923a71c: xor    %r10d,%r10d
  0.16%    0.18%   │    ││    0x00007fd70923a71f: mov    %rax,-0x8(%rsp)
  0.16%    0.25%   │    ││    0x00007fd70923a724: mov    0x58(%rsp),%eax
  0.13%    0.07%   │    ││    0x00007fd70923a728: mov    %eax,0x34(%rsp)
  0.48%    0.32%   │    ││    0x00007fd70923a72c: mov    -0x8(%rsp),%rax
  0.55%    0.34%   │    ││    0x00007fd70923a731: mov    %ebx,0x58(%rsp)
  0.19%    0.14%   │    ││    0x00007fd70923a735: mov    %r11d,0x20(%rsp)
  0.12%    0.09%   │    ││    0x00007fd70923a73a: mov    0x50(%rsp),%rsi
  0.18%    0.14%   │    ││    0x00007fd70923a73f: mov    0x18(%rsp),%rdx
  0.14%    0.19%   │    ││    0x00007fd70923a744: mov    0x60(%rsp),%rcx
  0.22%    0.20%   │    ││    0x00007fd70923a749: mov    %eax,%r8d
  0.20%    0.09%   │    ││    0x00007fd70923a74c: mov    %ebx,%r9d
  0.17%    0.07%   │    ││    0x00007fd70923a74f: mov    0x2c(%rsp),%r11d
  0.19%    0.12%   │    ││    0x00007fd70923a754: mov    %r11d,(%rsp)
  0.25%    0.28%   │    ││    0x00007fd70923a758: mov    0x40(%rsp),%r11d
  0.15%    0.11%   │    ││    0x00007fd70923a75d: mov    %r11d,0x8(%rsp)
  0.28%    0.26%   │    ││    0x00007fd70923a762: mov    %r10d,0x10(%rsp)
  0.22%    0.26%   │    ││    0x00007fd70923a767: callq  0x00007fd709046020  ; OopMap{[24]=Oop [56]=NarrowOop [72]=Oop [80]=Oop [96]=Oop off=652}
                   │    ││                                                  ;*invokespecial step
                   │    ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
                   │    ││                                                  ;   {optimized virtual_call}
           0.00%   │    ││    0x00007fd70923a76c: mov    0x50(%rsp),%r10
  0.68%    0.95%   │    ││    0x00007fd70923a771: movzbl 0x11(%r10),%r8d    ;*getfield captures
                   │    ││                                                  ; - com.google.re2j.Machine::match@371 (line 250)
  0.01%    0.00%   │    ││    0x00007fd70923a776: movzbl 0x10(%r10),%eax    ;*getfield matched
                   │    ││                                                  ; - com.google.re2j.Machine::match@378 (line 250)
  0.00%            │    ││    0x00007fd70923a77b: mov    0x28(%rsp),%r11d
  0.72%    0.78%   │    ││    0x00007fd70923a780: test   %r11d,%r11d
                   │    ││    0x00007fd70923a783: je     0x00007fd70923aeb6  ;*ifne
                   │    ││                                                  ; - com.google.re2j.Machine::match@364 (line 247)
                   │    ││    0x00007fd70923a789: test   %r8d,%r8d
                   │    ││    0x00007fd70923a78c: jne    0x00007fd70923b281  ;*ifne
                   │    ││                                                  ; - com.google.re2j.Machine::match@374 (line 250)
           0.01%   │    ││    0x00007fd70923a792: test   %eax,%eax
                   │    ││    0x00007fd70923a794: jne    0x00007fd70923b4a1  ;*ifeq
                   │    ││                                                  ; - com.google.re2j.Machine::match@381 (line 250)
  0.01%            │    ││    0x00007fd70923a79a: mov    0x48(%rsp),%rdx
  0.87%    0.82%   │    ││    0x00007fd70923a79f: mov    0x10(%rdx),%ecx    ;*getfield end
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                   │    ││                                                  ; - com.google.re2j.Machine::match@411 (line 259)
  0.00%    0.00%   │    ││    0x00007fd70923a7a2: mov    0xc(%rdx),%r11d    ;*getfield start
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                   │    ││                                                  ; - com.google.re2j.Machine::match@411 (line 259)
  0.01%    0.03%   │    ││    0x00007fd70923a7a6: mov    %r11d,0x24(%rsp)
           0.01%   │    ││    0x00007fd70923a7ab: mov    0x14(%rdx),%r9d    ;*getfield str
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                   │    ││                                                  ; - com.google.re2j.Machine::match@411 (line 259)
  0.70%    0.40%   │    ││    0x00007fd70923a7af: mov    0x20(%rsp),%ebp
           0.00%   │    ││    0x00007fd70923a7b3: cmp    $0xffffffff,%ebp
                   │    ││    0x00007fd70923a7b6: je     0x00007fd70923af13  ;*if_icmpeq
                   │    ││                                                  ; - com.google.re2j.Machine::match@403 (line 258)
                   │    ││    0x00007fd70923a7bc: mov    0x30(%rsp),%r14d
           0.01%   │    ││    0x00007fd70923a7c1: add    0x58(%rsp),%r14d
  0.63%    0.76%   │    ││    0x00007fd70923a7c6: add    %r11d,%r14d        ;*iadd
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                   │    ││                                                  ; - com.google.re2j.Machine::match@411 (line 259)
                   │    ││    0x00007fd70923a7c9: cmp    %ecx,%r14d
                   │    ││    0x00007fd70923a7cc: jge    0x00007fd70923af22  ;*if_icmpge
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                   │    ││                                                  ; - com.google.re2j.Machine::match@411 (line 259)
                   │    ││    0x00007fd70923a7d2: mov    %ebp,%r13d
  0.01%            │    ││    0x00007fd70923a7d5: mov    %r10,%rdi
  0.73%    0.74%   │    ││    0x00007fd70923a7d8: mov    0x8(%r12,%r9,8),%r10d  ; implicit exception: dispatches to 0x00007fd70923c209
  0.02%    0.02%   │    ││    0x00007fd70923a7dd: cmp    $0xf80002da,%r10d  ;   {metadata(&apos;java/lang/String&apos;)}
                   │    ││    0x00007fd70923a7e4: jne    0x00007fd70923b19d
  0.02%    0.04%   │    ││    0x00007fd70923a7ea: lea    (%r12,%r9,8),%r10  ;*invokeinterface charAt
                   │    ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                  ; - com.google.re2j.Machine::match@411 (line 259)
                   │    ││    0x00007fd70923a7ee: vmovq  %r10,%xmm0
  0.63%    1.00%   │    ││    0x00007fd70923a7f3: test   %r14d,%r14d
                   │    ││    0x00007fd70923a7f6: jl     0x00007fd70923b2d5  ;*iflt
                   │    ││                                                  ; - java.lang.String::charAt@1 (line 657)
                   │    ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                  ; - com.google.re2j.Machine::match@411 (line 259)
                   │    ││    0x00007fd70923a7fc: mov    0xc(%r10),%ebx     ;*getfield value
                   │    ││                                                  ; - java.lang.String::charAt@6 (line 657)
                   │    ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                  ; - com.google.re2j.Machine::match@411 (line 259)
  0.05%    0.01%   │    ││    0x00007fd70923a800: mov    0xc(%r12,%rbx,8),%ebp  ;*arraylength
                   │    ││                                                  ; - java.lang.String::charAt@9 (line 657)
                   │    ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                  ; - com.google.re2j.Machine::match@411 (line 259)
                   │    ││                                                  ; implicit exception: dispatches to 0x00007fd70923c21d
  0.51%    0.45%   │    ││    0x00007fd70923a805: cmp    %ebp,%r14d
                   │    ││    0x00007fd70923a808: jge    0x00007fd70923b4f5  ;*if_icmplt
                   │    ││                                                  ; - java.lang.String::charAt@10 (line 657)
                   │    ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                  ; - com.google.re2j.Machine::match@411 (line 259)
  0.74%    0.62%   │    ││    0x00007fd70923a80e: cmp    %ebp,%r14d
                   │    ││    0x00007fd70923a811: jae    0x00007fd70923b091
  0.02%    0.01%   │    ││    0x00007fd70923a817: lea    (%r12,%rbx,8),%r10
                   │    ││    0x00007fd70923a81b: movzwl 0x10(%r10,%r14,2),%r11d  ;*caload
                   │    ││                                                  ; - java.lang.String::charAt@27 (line 660)
                   │    ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                  ; - com.google.re2j.Machine::match@411 (line 259)
  0.15%    0.19%   │    ││    0x00007fd70923a821: cmp    $0xd800,%r11d
                   │    ││    0x00007fd70923a828: jge    0x00007fd70923b551  ;*if_icmplt
                   │    ││                                                  ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   │    ││                                                  ; - java.lang.Character::codePointAt@9 (line 4867)
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                  ; - com.google.re2j.Machine::match@411 (line 259)
  0.70%    0.80%   │    ││    0x00007fd70923a82e: shl    $0x3,%r11d         ;*ishl
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                   │    ││                                                  ; - com.google.re2j.Machine::match@411 (line 259)
  0.01%    0.04%   │    ││    0x00007fd70923a832: mov    %r11d,%ebx
                   │    ││    0x00007fd70923a835: or     $0x1,%ebx
  0.44%    0.66%   │    ││    0x00007fd70923a838: and    $0x7,%r11d
  0.26%    0.30%   │    ││    0x00007fd70923a83c: sar    $0x3,%ebx          ;*ishr
                   │    ││                                                  ; - com.google.re2j.Machine::match@419 (line 260)
  0.53%    0.55%   │    ││    0x00007fd70923a83f: or     $0x1,%r11d         ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                   │    ││                                                  ; - com.google.re2j.Machine::match@411 (line 259)
                   │    ││    0x00007fd70923a843: mov    %rdi,%r10
           0.00%   │    ││    0x00007fd70923a846: mov    %r13d,%ebp         ;*aload
                   │    ││                                                  ; - com.google.re2j.Machine::match@429 (line 263)
  0.20%    0.28%   │    ││    0x00007fd70923a849: vmovq  %r10,%xmm0         ; OopMap{r10=Oop r9=NarrowOop xmm0=Oop [24]=Oop [72]=Oop [96]=Oop off=878}
                   │    ││                                                  ;*goto
                   │    ││                                                  ; - com.google.re2j.Machine::match@441 (line 266)
  0.47%    0.52%   │    ││    0x00007fd70923a84e: test   %eax,0x182087ac(%rip)        # 0x00007fd721443000
                   │    ││                                                  ;*goto
                   │    ││                                                  ; - com.google.re2j.Machine::match@441 (line 266)
                   │    ││                                                  ;   {poll}
  0.03%    0.02%   │    ││    0x00007fd70923a854: mov    0x28(%r10),%r14d   ;*getfield matchcap
                   │    ││                                                  ; - com.google.re2j.Machine::match@307 (line 243)
  0.00%    0.00%   │    ││    0x00007fd70923a858: mov    0x14(%r10),%r13d   ;*getfield re2
                   │    ││                                                  ; - com.google.re2j.Machine::match@169 (line 220)
  0.29%    0.40%   │    ││    0x00007fd70923a85c: mov    0x60(%rsp),%r10
  0.48%    0.44%   │    ││    0x00007fd70923a861: shr    $0x3,%r10
           0.01%   │    ││    0x00007fd70923a865: mov    %r10d,0x38(%rsp)
  0.00%    0.01%   │    ││    0x00007fd70923a86a: mov    %ebp,%edi
  0.23%    0.17%   │    ││    0x00007fd70923a86c: mov    0x2c(%rsp),%r10d
  0.40%    0.45%   │    ││    0x00007fd70923a871: mov    0x18(%rsp),%rdx
  0.01%    0.01%   │    ││    0x00007fd70923a876: mov    %rdx,0x60(%rsp)
           0.01%   │    ││    0x00007fd70923a87b: mov    0x30(%rsp),%esi
  0.21%    0.20%   │    ││    0x00007fd70923a87f: mov    %esi,0x28(%rsp)
  0.49%    0.54%   │    ││    0x00007fd70923a883: mov    %r11d,0x30(%rsp)
  0.00%    0.00%   │    ││    0x00007fd70923a888: mov    %ecx,0x14(%rsp)
  0.00%            │    ││    0x00007fd70923a88c: vmovd  %r9d,%xmm3         ;*getfield matchcap
                   │    ││                                                  ; - com.google.re2j.Machine::match@307 (line 243)
  0.18%    0.19%   ↘    ││    0x00007fd70923a891: mov    0x38(%rsp),%r11d
  0.46%    0.64%        ││    0x00007fd70923a896: movzbl 0x18(%r12,%r11,8),%ecx  ; implicit exception: dispatches to 0x00007fd70923c1b1
  0.02%    0.02%        ││    0x00007fd70923a89c: shl    $0x3,%r11          ;*aload
                        ││                                                  ; - com.google.re2j.Machine::match@136 (line 211)
  0.02%                 ││    0x00007fd70923a8a0: mov    %r11,0x18(%rsp)
  0.26%    0.36%        ││    0x00007fd70923a8a5: test   %ecx,%ecx
                        ││    0x00007fd70923a8a7: jne    0x00007fd70923ab3c  ;*aload_0
                        ││                                                  ; - com.google.re2j.Machine::match@267 (line 237)
  0.52%    0.44%        ││    0x00007fd70923a8ad: test   %eax,%eax
                        ││    0x00007fd70923a8af: jne    0x00007fd70923b1f9  ;*ifne
                        ││                                                  ; - com.google.re2j.Machine::match@271 (line 237)
  0.01%                 ││    0x00007fd70923a8b5: mov    0x58(%rsp),%r9d
           0.01%        ││    0x00007fd70923a8ba: test   %r9d,%r9d
                        ││    0x00007fd70923a8bd: je     0x00007fd70923afa8  ;*ifeq
                        ││                                                  ; - com.google.re2j.Machine::match@275 (line 237)
  0.18%    0.26%        ││    0x00007fd70923a8c3: mov    0x40(%rsp),%ecx
  0.46%    0.41%        ││    0x00007fd70923a8c7: test   %ecx,%ecx
                        ││    0x00007fd70923a8c9: jne    0x00007fd70923b239  ;*aload_0
                        ││                                                  ; - com.google.re2j.Machine::match@282 (line 240)
  0.03%    0.01%        ││    0x00007fd70923a8cf: test   %r8d,%r8d
                        ││    0x00007fd70923a8d2: jne    0x00007fd70923b345  ;*ifeq
                        ││                                                  ; - com.google.re2j.Machine::match@286 (line 240)
  0.01%    0.01%        ││    0x00007fd70923a8d8: vmovq  %xmm0,%rdx
  0.24%    0.25%        ││    0x00007fd70923a8dd: mov    0x18(%rdx),%r11d   ;*getfield prog
                        ││                                                  ; - com.google.re2j.Machine::match@297 (line 243)
  0.50%    0.66%        ││    0x00007fd70923a8e1: mov    0x1c(%r12,%r11,8),%ebp  ;*getfield startInst
                        ││                                                  ; - com.google.re2j.Machine::match@300 (line 243)
                        ││                                                  ; implicit exception: dispatches to 0x00007fd70923c1c1
  0.26%    0.26%        ││    0x00007fd70923a8e6: mov    0x58(%rsp),%eax
                        ││    0x00007fd70923a8ea: mov    %ecx,0x40(%rsp)
  0.16%    0.19%        ││    0x00007fd70923a8ee: vmovsd %xmm0,0x50(%rsp)
  0.46%    0.59%        ││    0x00007fd70923a8f4: mov    0x8(%r12,%rbp,8),%r9d  ; implicit exception: dispatches to 0x00007fd70923c1d1
  1.04%    1.29%        ││    0x00007fd70923a8f9: cmp    $0xf8019909,%r9d   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
  0.37%    0.45%        ││    0x00007fd70923a900: jne    0x00007fd70923b0f9
  0.43%    0.72%        ││    0x00007fd70923a906: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                        ││                                                  ; - com.google.re2j.Machine::match@318 (line 243)
  0.18%    0.23%        ││    0x00007fd70923a90a: mov    0x18(%r10),%ecx    ;*getfield pc
                        ││                                                  ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                        ││                                                  ; - com.google.re2j.Machine::match@318 (line 243)
           0.00%        ││    0x00007fd70923a90e: cmp    $0x40,%ecx
                        ││    0x00007fd70923a911: jg     0x00007fd70923b389  ;*if_icmpgt
                        ││                                                  ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                        ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                        ││                                                  ; - com.google.re2j.Machine::match@318 (line 243)
  0.08%    0.06%        ││    0x00007fd70923a917: mov    %r10,%rdx
  0.57%    0.50%        ││    0x00007fd70923a91a: mov    $0x1,%r10d
  0.17%    0.22%        ││    0x00007fd70923a920: shl    %cl,%r10           ;*lshl
                        ││                                                  ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                        ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                        ││                                                  ; - com.google.re2j.Machine::match@318 (line 243)
  0.69%    0.61%        ││    0x00007fd70923a923: mov    0x38(%rsp),%r9d
  0.13%    0.13%        ││    0x00007fd70923a928: mov    0x10(%r12,%r9,8),%r11  ;*getfield pcsl
                        ││                                                  ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                        ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                        ││                                                  ; - com.google.re2j.Machine::match@318 (line 243)
                        ││    0x00007fd70923a92d: mov    %r11,%r9
                        ││    0x00007fd70923a930: and    %r10,%r9           ;*land
                        ││                                                  ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                        ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                        ││                                                  ; - com.google.re2j.Machine::match@318 (line 243)
  0.50%    0.56%        ││    0x00007fd70923a933: test   %r9,%r9
                        ││    0x00007fd70923a936: jne    0x00007fd70923afb1  ;*ifeq
                        ││                                                  ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                        ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                        ││                                                  ; - com.google.re2j.Machine::match@318 (line 243)
  0.23%    0.14%        ││    0x00007fd70923a93c: xor    %ebp,%ebp          ;*ireturn
                        ││                                                  ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                        ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                        ││                                                  ; - com.google.re2j.Machine::match@318 (line 243)
                        ││    0x00007fd70923a93e: test   %r9,%r9
                        ││    0x00007fd70923a941: jne    0x00007fd70923b3e5  ;*ifeq
                        ││                                                  ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                        ││                                                  ; - com.google.re2j.Machine::match@318 (line 243)
  0.19%    0.14%        ││    0x00007fd70923a947: cmp    $0x40,%ecx
                        ││    0x00007fd70923a94a: jge    0x00007fd70923b445  ;*if_icmpge
                        ││                                                  ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                        ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                        ││                                                  ; - com.google.re2j.Machine::match@318 (line 243)
  0.37%    0.39%        ││    0x00007fd70923a950: mov    0x38(%rsp),%r9d
  0.15%    0.13%        ││    0x00007fd70923a955: mov    %r12b,0x18(%r12,%r9,8)  ;*putfield empty
                        ││                                                  ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                        ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                        ││                                                  ; - com.google.re2j.Machine::match@318 (line 243)
  0.00%                 ││    0x00007fd70923a95a: mov    0xc(%r12,%r9,8),%r8d  ;*getfield size
                        ││                                                  ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                        ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                        ││                                                  ; - com.google.re2j.Machine::match@318 (line 243)
  0.12%    0.19%        ││    0x00007fd70923a95f: mov    0x20(%r12,%r9,8),%r9d  ;*getfield denseThreadsInstructions
                        ││                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                        ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                        ││                                                  ; - com.google.re2j.Machine::match@318 (line 243)
  0.32%    0.51%        ││    0x00007fd70923a964: or     %r11,%r10
  0.13%    0.22%        ││    0x00007fd70923a967: mov    0x38(%rsp),%ecx
  0.00%                 ││    0x00007fd70923a96b: mov    %r10,0x10(%r12,%rcx,8)  ;*putfield pcsl
                        ││                                                  ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                        ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                        ││                                                  ; - com.google.re2j.Machine::match@318 (line 243)
  0.17%    0.19%        ││    0x00007fd70923a970: mov    %r8d,%r11d
  0.39%    0.38%        ││    0x00007fd70923a973: inc    %r11d
  0.17%    0.15%        ││    0x00007fd70923a976: mov    %r11d,0xc(%r12,%rcx,8)  ;*putfield size
                        ││                                                  ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                        ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                        ││                                                  ; - com.google.re2j.Machine::match@318 (line 243)
  0.01%    0.00%        ││    0x00007fd70923a97b: mov    0xc(%r12,%r9,8),%r11d  ; implicit exception: dispatches to 0x00007fd70923c1f1
  0.22%    0.20%        ││    0x00007fd70923a980: cmp    %r11d,%r8d
                        ││    0x00007fd70923a983: jae    0x00007fd70923b03e
  0.57%    0.63%        ││    0x00007fd70923a989: mov    0x8(%r12,%r9,8),%r11d
  0.17%    0.09%        ││    0x00007fd70923a98e: cmp    $0xf8019807,%r11d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                        ││    0x00007fd70923a995: jne    0x00007fd70923b149  ;*aastore
                        ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                        ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                        ││                                                  ; - com.google.re2j.Machine::match@318 (line 243)
                        ││    0x00007fd70923a99b: test   %edi,%edi
                    ╭   ││    0x00007fd70923a99d: jl     0x00007fd70923aa4b  ;*ifge
                    │   ││                                                  ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                    │   ││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.20%    0.20%    │   ││    0x00007fd70923a9a3: xor    %r10d,%r10d        ;*iload_0
                    │   ││                                                  ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                    │   ││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.48%    0.47%    │   ││↗   0x00007fd70923a9a6: cmp    $0xa,%edi
                    │   │││   0x00007fd70923a9a9: je     0x00007fd70923aef6  ;*iload_1
                    │   │││                                                 ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                    │   │││                                                 ; - com.google.re2j.Machine::match@326 (line 245)
  0.12%    0.15%    │   │││   0x00007fd70923a9af: mov    %ebx,%r11d
                    │   │││   0x00007fd70923a9b2: test   %ebx,%ebx
                    │╭  │││   0x00007fd70923a9b4: jl     0x00007fd70923aa56  ;*iload_1
                    ││  │││                                                 ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                    ││  │││                                                 ; - com.google.re2j.Machine::match@326 (line 245)
  0.18%    0.15%    ││  │││↗  0x00007fd70923a9ba: cmp    $0xa,%ebx
                    ││  ││││  0x00007fd70923a9bd: je     0x00007fd70923aeff  ;*iload_0
                    ││  ││││                                                ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                    ││  ││││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.43%    0.41%    ││  ││││  0x00007fd70923a9c3: mov    %rdx,%rcx
  0.12%    0.12%    ││  ││││  0x00007fd70923a9c6: shr    $0x3,%rcx          ;*aastore
                    ││  ││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                    ││  ││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                    ││  ││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
           0.01%    ││  ││││  0x00007fd70923a9ca: shl    $0x3,%r9           ;*getfield denseThreadsInstructions
                    ││  ││││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                    ││  ││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                    ││  ││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.20%    0.14%    ││  ││││  0x00007fd70923a9ce: lea    0x10(%r9,%r8,4),%r8
  0.37%    0.43%    ││  ││││  0x00007fd70923a9d3: mov    %ecx,(%r8)
  0.50%    0.55%    ││  ││││  0x00007fd70923a9d6: mov    %edi,%ecx
                    ││  ││││  0x00007fd70923a9d8: add    $0xffffffbf,%ecx
  0.17%    0.15%    ││  ││││  0x00007fd70923a9db: shr    $0x9,%r8
  0.27%    0.26%    ││  ││││  0x00007fd70923a9df: movabs $0x7fd719e4b000,%r9
  0.21%    0.23%    ││  ││││  0x00007fd70923a9e9: mov    %r12b,(%r9,%r8,1)  ;*aastore
                    ││  ││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                    ││  ││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                    ││  ││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.55%    0.54%    ││  ││││  0x00007fd70923a9ed: cmp    $0x1a,%ecx
                    ││╭ ││││  0x00007fd70923a9f0: jb     0x00007fd70923aa03  ;*if_icmple
                    │││ ││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                    │││ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    │││ ││││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.17%    0.07%    │││ ││││  0x00007fd70923a9f2: mov    %edi,%r9d
  0.28%    0.15%    │││ ││││  0x00007fd70923a9f5: add    $0xffffff9f,%r9d
  0.18%    0.21%    │││ ││││  0x00007fd70923a9f9: cmp    $0x1a,%r9d
                    │││ ││││  0x00007fd70923a9fd: jae    0x00007fd70923af87  ;*iconst_1
                    │││ ││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                    │││ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    │││ ││││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.13%    0.15%    ││↘ ││││  0x00007fd70923aa03: mov    $0x1,%ebp          ;*invokevirtual endPos
                    ││  ││││                                                ; - com.google.re2j.Machine::match@348 (line 246)
  0.19%    0.11%    ││  ││││  0x00007fd70923aa08: mov    0x58(%rsp),%ebx
  0.24%    0.15%    ││  ││││  0x00007fd70923aa0c: add    0x28(%rsp),%ebx    ;*iadd
                    ││  ││││                                                ; - com.google.re2j.Machine::match@340 (line 246)
  0.12%    0.22%    ││  ││││  0x00007fd70923aa10: mov    %r11d,%r9d
  0.19%    0.15%    ││  ││││  0x00007fd70923aa13: add    $0xffffffbf,%r9d
  0.13%    0.11%    ││  ││││  0x00007fd70923aa17: cmp    $0x1a,%r9d
                    ││ ╭││││  0x00007fd70923aa1b: jb     0x00007fd70923aa2e  ;*if_icmple
                    ││ │││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                    ││ │││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    ││ │││││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.21%    0.16%    ││ │││││  0x00007fd70923aa1d: mov    %r11d,%r8d
  0.19%    0.22%    ││ │││││  0x00007fd70923aa20: add    $0xffffff9f,%r8d
  0.16%    0.09%    ││ │││││  0x00007fd70923aa24: cmp    $0x1a,%r8d
                    ││ │││││  0x00007fd70923aa28: jae    0x00007fd70923af64  ;*iconst_1
                    ││ │││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                    ││ │││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    ││ │││││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.14%    0.10%    ││ ↘││││  0x00007fd70923aa2e: mov    $0x1,%r8d          ;*ireturn
                    ││  ││││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                    ││  ││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    ││  ││││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.20%    0.19%    ││  ││││  0x00007fd70923aa34: cmp    %r8d,%ebp
                    ││  ╰│││  0x00007fd70923aa37: je     0x00007fd70923a709  ;*if_icmpeq
                    ││   │││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                    ││   │││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.12%    0.09%    ││   │││  0x00007fd70923aa3d: or     $0x10,%r10d        ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                    ││   │││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.03%    0.01%    ││   │││  0x00007fd70923aa41: mov    %r10d,0x2c(%rsp)
  0.36%    0.39%    ││   ╰││  0x00007fd70923aa46: jmpq   0x00007fd70923a712
                    ↘│    ││  0x00007fd70923aa4b: mov    $0x5,%r10d
  0.00%              │    ╰│  0x00007fd70923aa51: jmpq   0x00007fd70923a9a6
           0.00%     ↘     │  0x00007fd70923aa56: or     $0xa,%r10d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@27 (line 180)
                           │                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.00%                    ╰  0x00007fd70923aa5a: jmpq   0x00007fd70923a9ba
                              0x00007fd70923aa5f: nop
  0.00%                       0x00007fd70923aa60: mov    %r9d,0x50(%rsp)
  0.02%    0.00%              0x00007fd70923aa65: jmpq   0x00007fd70923acd2
                              0x00007fd70923aa6a: mov    0x50(%rsp),%r11d
                              0x00007fd70923aa6f: add    $0x2,%r11d
                              0x00007fd70923aa73: mov    %r11d,0x50(%rsp)
  0.00%                       0x00007fd70923aa78: mov    0x50(%rsp),%r11d
           0.00%              0x00007fd70923aa7d: inc    %r11d
                              0x00007fd70923aa80: mov    %r11d,0x3c(%rsp)
                              0x00007fd70923aa85: jmp    0x00007fd70923aab2
                              0x00007fd70923aa87: mov    0x50(%rsp),%r11d
                              0x00007fd70923aa8c: add    $0x2,%r11d
                              0x00007fd70923aa90: mov    %r11d,0x3c(%rsp)
                              0x00007fd70923aa95: jmp    0x00007fd70923aaa5
                              0x00007fd70923aa97: mov    0x50(%rsp),%r11d
                              0x00007fd70923aa9c: add    $0x2,%r11d
                              0x00007fd70923aaa0: mov    %r11d,0x50(%rsp)
                              0x00007fd70923aaa5: mov    0x50(%rsp),%r11d
....................................................................................................
 33.95%   35.21%  <total for region 2>

....[Hottest Regions]...............................................................................
 47.30%   45.74%         C2, level 4  com.google.re2j.Machine::step, version 493 (895 bytes) 
 33.95%   35.21%         C2, level 4  com.google.re2j.Machine::match, version 534 (978 bytes) 
  7.48%    8.76%         C2, level 4  com.google.re2j.Machine::step, version 493 (342 bytes) 
  6.17%    6.59%         C2, level 4  com.google.re2j.Machine::step, version 493 (108 bytes) 
  0.77%    0.71%         C2, level 4  com.google.re2j.Machine::match, version 534 (190 bytes) 
  0.34%    0.03%         C2, level 4  com.google.re2j.RE2::match, version 551 (64 bytes) 
  0.27%    0.27%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.20%    0.10%         C2, level 4  com.google.re2j.Machine::match, version 534 (178 bytes) 
  0.18%    0.12%         C2, level 4  com.google.re2j.Machine::match, version 534 (276 bytes) 
  0.17%    0.07%         C2, level 4  com.google.re2j.RE2::match, version 551 (33 bytes) 
  0.14%    0.10%         C2, level 4  com.google.re2j.Machine::match, version 534 (268 bytes) 
  0.14%    0.06%         C2, level 4  com.google.re2j.RE2::match, version 551 (8 bytes) 
  0.13%    0.10%         C2, level 4  java.util.Collections::shuffle, version 559 (94 bytes) 
  0.10%    0.00%   [kernel.kallsyms]  [unknown] (51 bytes) 
  0.09%    0.00%   [kernel.kallsyms]  [unknown] (2 bytes) 
  0.09%    0.11%         C2, level 4  com.google.re2j.RE2::match, version 551 (8 bytes) 
  0.08%    0.03%   [kernel.kallsyms]  [unknown] (28 bytes) 
  0.07%    0.01%   [kernel.kallsyms]  [unknown] (28 bytes) 
  0.06%    0.02%   [kernel.kallsyms]  [unknown] (27 bytes) 
  0.05%                  C2, level 4  com.google.re2j.RE2::match, version 551 (68 bytes) 
  2.20%    1.94%  <...other 370 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 60.95%   61.09%         C2, level 4  com.google.re2j.Machine::step, version 493 
 35.41%   36.29%         C2, level 4  com.google.re2j.Machine::match, version 534 
  1.36%    1.13%   [kernel.kallsyms]  [unknown] 
  1.11%    0.38%         C2, level 4  com.google.re2j.RE2::match, version 551 
  0.29%    0.12%         C2, level 4  java.util.Collections::shuffle, version 559 
  0.10%    0.08%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 594 
  0.09%    0.04%              [vdso]  [unknown] 
  0.04%    0.10%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.03%    0.03%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.03%    0.04%        libc-2.26.so  _IO_fwrite 
  0.03%    0.01%  libpthread-2.26.so  __libc_write 
  0.03%    0.03%           libjvm.so  _ZN12outputStream15update_positionEPKcm 
  0.03%    0.06%        libc-2.26.so  vfprintf 
  0.03%    0.05%      hsdis-amd64.so  [unknown] 
  0.02%    0.03%  libpthread-2.26.so  __pthread_enable_asynccancel 
  0.02%    0.00%           libjvm.so  _ZN12stringStream5writeEPKcm 
  0.02%                  C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 552 
  0.01%    0.02%        libc-2.26.so  __strlen_avx2 
  0.01%           libpthread-2.26.so  __pthread_getspecific 
  0.01%                    libjvm.so  _ZN2os15elapsed_counterEv 
  0.35%    0.23%  <...other 55 warm methods...>
....................................................................................................
100.00%   99.73%  <totals>

....[Distribution by Source]........................................................................
 97.89%   97.96%         C2, level 4
  1.36%    1.13%   [kernel.kallsyms]
  0.38%    0.43%           libjvm.so
  0.14%    0.30%        libc-2.26.so
  0.09%    0.04%              [vdso]
  0.08%    0.06%  libpthread-2.26.so
  0.03%    0.05%      hsdis-amd64.so
  0.01%    0.01%         interpreter
  0.00%    0.00%        runtime stub
  0.00%               perf-15164.map
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                     Mode  Cnt      Score     Error  Units
Re2jFindRegex.testExp1       thrpt   20  22302.126 ± 180.073  ops/s
Re2jFindRegex.testExp1:·asm  thrpt             NaN              ---
