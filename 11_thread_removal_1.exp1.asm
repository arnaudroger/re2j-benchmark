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
# Warmup Iteration   1: 9865.215 ops/s
# Warmup Iteration   2: 24958.596 ops/s
# Warmup Iteration   3: 25750.945 ops/s
# Warmup Iteration   4: 25242.884 ops/s
# Warmup Iteration   5: 25511.341 ops/s
# Warmup Iteration   6: 25563.064 ops/s
# Warmup Iteration   7: 26008.404 ops/s
# Warmup Iteration   8: 25971.073 ops/s
# Warmup Iteration   9: 25663.057 ops/s
# Warmup Iteration  10: 25910.641 ops/s
# Warmup Iteration  11: 25754.260 ops/s
# Warmup Iteration  12: 25755.007 ops/s
# Warmup Iteration  13: 25919.958 ops/s
# Warmup Iteration  14: 25831.155 ops/s
# Warmup Iteration  15: 26111.752 ops/s
# Warmup Iteration  16: 26056.368 ops/s
# Warmup Iteration  17: 25688.743 ops/s
# Warmup Iteration  18: 25601.040 ops/s
# Warmup Iteration  19: 25886.329 ops/s
# Warmup Iteration  20: 26087.700 ops/s
Iteration   1: 26062.685 ops/s
Iteration   2: 25789.417 ops/s
Iteration   3: 25642.805 ops/s
Iteration   4: 25619.349 ops/s
Iteration   5: 25362.973 ops/s
Iteration   6: 25989.001 ops/s
Iteration   7: 25865.443 ops/s
Iteration   8: 25800.879 ops/s
Iteration   9: 25556.074 ops/s
Iteration  10: 26067.104 ops/s
Iteration  11: 26071.201 ops/s
Iteration  12: 25961.550 ops/s
Iteration  13: 25910.857 ops/s
Iteration  14: 25754.460 ops/s
Iteration  15: 25953.879 ops/s
Iteration  16: 25585.666 ops/s
Iteration  17: 25701.987 ops/s
Iteration  18: 25930.332 ops/s
Iteration  19: 25741.917 ops/s
Iteration  20: 26082.459 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jRegex.testExp1":
  25822.502 ±(99.9%) 174.986 ops/s [Average]
  (min, avg, max) = (25362.973, 25822.502, 26082.459), stdev = 201.515
  CI (99.9%): [25647.516, 25997.488] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jRegex.testExp1:·asm":
PrintAssembly processed: 214167 total address lines.
Perf output processed (skipped 23.848 seconds):
 Column 1: cycles (20595 events)
 Column 2: instructions (20579 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 552 (813 bytes) 

                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f45e124ee01: mov    0xc(%r13),%ebx
                     0x00007f45e124ee05: mov    %rdi,%r10
                     0x00007f45e124ee08: vmovq  %xmm2,%r8
                     0x00007f45e124ee0d: shr    $0x3,%r8
                     0x00007f45e124ee11: mov    %r8d,(%rdi)
                     0x00007f45e124ee14: shr    $0x9,%r10
                     0x00007f45e124ee18: movabs $0x7f45dd1ff000,%r8
                     0x00007f45e124ee22: mov    %r12b,(%r8,%r10,1)  ;*getfield size
                                                                   ; - com.google.re2j.Machine::step@15 (line 281)
  0.15%    0.12%     0x00007f45e124ee26: mov    0x94(%rsp),%edi
  0.00%    0.01%     0x00007f45e124ee2d: mov    0x9c(%rsp),%r10d   ;*goto
                                                                   ; - com.google.re2j.Machine::step@221 (line 281)
  1.66%    1.70%  ↗  0x00007f45e124ee35: inc    %r10d              ; OopMap{r11=Oop r13=Oop [8]=Oop off=280}
                  │                                                ;*goto
                  │                                                ; - com.google.re2j.Machine::step@221 (line 281)
  0.38%    0.41%  │  0x00007f45e124ee38: test   %eax,0x16c731c2(%rip)        # 0x00007f45f7ec2000
                  │                                                ;*goto
                  │                                                ; - com.google.re2j.Machine::step@221 (line 281)
                  │                                                ;   {poll}
  0.25%    0.35%  │  0x00007f45e124ee3e: cmp    %ebx,%r10d
                  │  0x00007f45e124ee41: jge    0x00007f45e124f2e6  ;*aload_0
                  │                                                ; - com.google.re2j.Machine::step@21 (line 284)
  0.24%    0.20%  │  0x00007f45e124ee47: mov    0xc(%r13),%ebx
  1.18%    0.99%  │  0x00007f45e124ee4b: mov    %r11,%rcx          ;*getfield size
                  │                                                ; - com.google.re2j.Machine::step@15 (line 281)
  0.56%    0.84%  │  0x00007f45e124ee4e: mov    0x8(%rsp),%r11
  0.52%    0.53%  │  0x00007f45e124ee53: movzbl 0x11(%r11),%r11d   ;*getfield captures
                  │                                                ; - com.google.re2j.Machine::step@22 (line 284)
  0.96%    0.83%  │  0x00007f45e124ee58: test   %r11d,%r11d
                  │  0x00007f45e124ee5b: jne    0x00007f45e124f451  ;*ifne
                  │                                                ; - com.google.re2j.Machine::step@25 (line 284)
  1.50%    1.43%  │  0x00007f45e124ee61: mov    0x20(%r13),%ebp    ;*getfield denseThreadsInstructions
                  │                                                ; - com.google.re2j.Machine::step@78 (line 294)
  0.51%    0.52%  │  0x00007f45e124ee65: mov    0xc(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007f45e125045d
  0.38%    0.45%  │  0x00007f45e124ee6a: cmp    %r8d,%r10d
                  │  0x00007f45e124ee6d: jae    0x00007f45e124f3e2
  0.33%    0.31%  │  0x00007f45e124ee73: lea    (%r12,%rbp,8),%r11
  1.44%    1.59%  │  0x00007f45e124ee77: mov    0x10(%r11,%r10,4),%r9d  ;*aaload
                  │                                                ; - com.google.re2j.Machine::step@83 (line 294)
  0.51%    0.61%  │  0x00007f45e124ee7c: mov    0xc(%r12,%r9,8),%ebp  ;*getfield op
                  │                                                ; - com.google.re2j.Machine::step@88 (line 296)
                  │                                                ; implicit exception: dispatches to 0x00007f45e1250471
  2.55%    2.46%  │  0x00007f45e124ee81: cmp    $0x6,%ebp
                  │  0x00007f45e124ee84: je     0x00007f45e124f495  ;*if_icmpne
                  │                                                ; - com.google.re2j.Machine::step@93 (line 296)
  1.69%    1.90%  │  0x00007f45e124ee8a: mov    0x8(%r12,%r9,8),%r11d
  0.67%    0.78%  │  0x00007f45e124ee8f: cmp    $0xf8019993,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │  0x00007f45e124ee96: jne    0x00007f45e124f405
  1.17%    1.16%  │  0x00007f45e124ee9c: lea    (%r12,%r9,8),%r8   ;*invokevirtual matchRune
                  │                                                ; - com.google.re2j.Machine::step@181 (line 310)
  0.16%    0.04%  │  0x00007f45e124eea0: mov    0xc(%r8),%ebp      ;*getfield op
                  │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@1 (line 136)
                  │                                                ; - com.google.re2j.Machine::step@181 (line 310)
  1.07%    1.10%  │  0x00007f45e124eea4: cmp    $0xa,%ebp
                  │  0x00007f45e124eea7: jne    0x00007f45e124f277  ;*if_icmpne
                  │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@6 (line 136)
                  │                                                ; - com.google.re2j.Machine::step@181 (line 310)
  0.36%    0.31%  │  0x00007f45e124eead: mov    0x1c(%r8),%r9d     ;*getfield outInst
                  │                                                ; - com.google.re2j.Machine::step@189 (line 311)
  0.23%    0.26%  │  0x00007f45e124eeb1: mov    0x8(%r12,%r9,8),%r11d  ; implicit exception: dispatches to 0x00007f45e1250481
  1.40%    1.40%  │  0x00007f45e124eeb6: lea    (%r12,%r9,8),%r8
  0.01%           │  0x00007f45e124eeba: cmp    $0xf8019844,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                  │  0x00007f45e124eec1: jne    0x00007f45e124f318  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Machine::step@202 (line 311)
  0.50%    0.58%  │  0x00007f45e124eec7: mov    0x18(%r8),%r9d     ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 190)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
           0.00%  │  0x00007f45e124eecb: mov    %rcx,%r11
  0.03%    0.06%  │  0x00007f45e124eece: mov    0x10(%rcx),%rdx    ;*getfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 190)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
                  │                                                ; implicit exception: dispatches to 0x00007f45e125049d
  0.01%    0.01%  │  0x00007f45e124eed2: cmp    $0x40,%r9d
                  │  0x00007f45e124eed6: jg     0x00007f45e124f7dd  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 190)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.61%    0.54%  │  0x00007f45e124eedc: mov    $0x1,%eax
           0.01%  │  0x00007f45e124eee1: mov    %r9d,%ecx
  0.04%    0.05%  │  0x00007f45e124eee4: shl    %cl,%rax           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 190)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  1.11%    1.13%  │  0x00007f45e124eee7: mov    %rdx,%rcx
  0.01%    0.04%  │  0x00007f45e124eeea: and    %rax,%rcx
  0.01%    0.00%  │  0x00007f45e124eeed: test   %rcx,%rcx
                  ╰  0x00007f45e124eef0: jne    0x00007f45e124ee35  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.25%    0.22%     0x00007f45e124eef6: cmp    $0x40,%r9d
                     0x00007f45e124eefa: jge    0x00007f45e124f831  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 193)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.33%    0.34%     0x00007f45e124ef00: mov    %r12b,0x18(%r11)   ;*putfield empty
                                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 193)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.03%     0x00007f45e124ef04: mov    0x1c(%r8),%ebp     ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%              0x00007f45e124ef08: or     %rdx,%rax          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 193)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.19%    0.25%     0x00007f45e124ef0b: mov    %rax,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 193)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.43%    0.37%     0x00007f45e124ef0f: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f45e12504b1
  0.68%    0.59%     0x00007f45e124ef14: cmp    $0xf8019993,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                     0x00007f45e124ef1a: jne    0x00007f45e124f539
  0.60%    0.53%     0x00007f45e124ef20: lea    (%r12,%rbp,8),%rbx  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%              0x00007f45e124ef24: mov    0x18(%rbx),%r9d    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.57%    0.49%     0x00007f45e124ef28: cmp    $0x40,%r9d
                     0x00007f45e124ef2c: jg     0x00007f45e124f885  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.51%    0.56%     0x00007f45e124ef32: mov    $0x1,%edx
  0.03%    0.01%     0x00007f45e124ef37: mov    %r9d,%ecx
  0.00%    0.00%     0x00007f45e124ef3a: shl    %cl,%rdx           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  1.23%    1.24%     0x00007f45e124ef3d: mov    %rax,%rcx
                     0x00007f45e124ef40: and    %rdx,%rcx          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f45e124ef43: test   %rcx,%rcx
                     0x00007f45e124ef46: jne    0x00007f45e124f8dd  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.31%    0.34%     0x00007f45e124ef4c: cmp    $0x40,%r9d
                     0x00007f45e124ef50: jge    0x00007f45e124f945  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.39%    0.32%     0x00007f45e124ef56: or     %rdx,%rax          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f45e124ef59: mov    %rax,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.08%    0.03%     0x00007f45e124ef5d: mov    0x20(%r11),%edx    ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.29%    0.27%     0x00007f45e124ef61: mov    0xc(%r11),%ecx     ;*getfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.31%    0.30%     0x00007f45e124ef65: mov    %ecx,%esi
                     0x00007f45e124ef67: inc    %esi               ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.02%     0x00007f45e124ef69: mov    %esi,0xc(%r11)     ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.32%    0.27%     0x00007f45e124ef6d: mov    0xc(%r12,%rdx,8),%r14d  ; implicit exception: dispatches to 0x00007f45e12504cd
  0.35%    0.30%     0x00007f45e124ef72: cmp    %r14d,%ecx
                     0x00007f45e124ef75: jae    0x00007f45e124f4dd
                     0x00007f45e124ef7b: mov    0x8(%r12,%rdx,8),%r9d
  0.06%    0.03%     0x00007f45e124ef80: cmp    $0xf8019808,%r9d   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                     0x00007f45e124ef87: jne    0x00007f45e124f585  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.28%    0.19%     0x00007f45e124ef8d: vmovd  %esi,%xmm1
  0.24%    0.22%     0x00007f45e124ef91: mov    %ecx,%esi
                     0x00007f45e124ef93: mov    %r10d,0x9c(%rsp)
  0.03%    0.03%     0x00007f45e124ef9b: mov    %edi,0x94(%rsp)
  0.32%    0.17%     0x00007f45e124efa2: vmovq  %r11,%xmm0
  0.29%    0.18%     0x00007f45e124efa7: mov    %r13,0x30(%rsp)
                     0x00007f45e124efac: mov    0x20(%r8),%r10d    ;*getfield inst2
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@41 (line 196)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.06%    0.05%     0x00007f45e124efb0: vmovd  %r10d,%xmm2
  0.30%    0.20%     0x00007f45e124efb5: mov    %rbx,%r10
  0.26%    0.26%     0x00007f45e124efb8: shr    $0x3,%r10          ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
           0.00%     0x00007f45e124efbc: lea    (%r12,%rdx,8),%rbx  ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.03%     0x00007f45e124efc0: lea    0x10(%rbx,%rcx,4),%r11
  0.31%    0.28%     0x00007f45e124efc5: mov    %r10d,(%r11)
  0.30%    0.32%     0x00007f45e124efc8: mov    %r11,%r10
                     0x00007f45e124efcb: shr    $0x9,%r10
  0.03%    0.06%     0x00007f45e124efcf: movabs $0x7f45dd1ff000,%r11
  0.28%    0.31%     0x00007f45e124efd9: mov    %r12b,(%r11,%r10,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.37%    0.33%     0x00007f45e124efdd: vmovd  %xmm2,%r10d
           0.00%     0x00007f45e124efe2: mov    0x8(%r12,%r10,8),%ecx  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                                                                   ; implicit exception: dispatches to 0x00007f45e12504e9
  0.04%    0.02%     0x00007f45e124efe7: movslq %esi,%r10
  0.30%    0.22%     0x00007f45e124efea: lea    (%rbx,%r10,4),%r9  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.30%    0.19%     0x00007f45e124efee: mov    %r9,%rdi
           0.00%     0x00007f45e124eff1: add    $0x14,%rdi         ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.04%     0x00007f45e124eff5: vmovd  %xmm2,%r10d
  0.26%    0.23%     0x00007f45e124effa: lea    (%r12,%r10,8),%r8
  0.34%    0.32%     0x00007f45e124effe: mov    %esi,%r10d
                     0x00007f45e124f001: add    $0x2,%r10d         ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.05%     0x00007f45e124f005: cmp    $0xf8019887,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                     0x00007f45e124f00b: jne    0x00007f45e124eda4  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.32%    0.35%     0x00007f45e124f011: mov    %r8,%r13
  0.31%    0.34%     0x00007f45e124f014: mov    0x18(%r8),%r11d    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@2 (line 476)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f45e124f018: vmovd  %r11d,%xmm2
  0.05%    0.02%     0x00007f45e124f01d: cmp    $0x40,%r11d
                     0x00007f45e124f021: jg     0x00007f45e124fafd  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 476)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.30%    0.24%     0x00007f45e124f027: mov    $0x1,%r8d
  0.28%    0.22%     0x00007f45e124f02d: mov    %r11d,%ecx
  0.00%    0.00%     0x00007f45e124f030: shl    %cl,%r8            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 476)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.64%    0.29%     0x00007f45e124f033: mov    %rax,%r11
           0.00%     0x00007f45e124f036: and    %r8,%r11           ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 476)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.01%     0x00007f45e124f039: test   %r11,%r11
                     0x00007f45e124f03c: jne    0x00007f45e124fb65  ;*ifeq
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@8 (line 476)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.25%    0.14%     0x00007f45e124f042: mov    %ecx,%r11d
  0.35%    0.12%     0x00007f45e124f045: cmp    $0x40,%r11d
                     0x00007f45e124f049: jge    0x00007f45e124fbd9  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@19 (line 479)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f45e124f04f: or     %r8,%rax           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@19 (line 479)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.01%     0x00007f45e124f052: vmovq  %xmm0,%r11
  0.32%    0.15%     0x00007f45e124f057: mov    %rax,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@19 (line 479)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.35%    0.15%     0x00007f45e124f05b: mov    0x1c(%r13),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@83 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f45e124f05f: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007f45e1250529
  0.06%    0.04%     0x00007f45e124f064: cmp    $0xf8019844,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                     0x00007f45e124f06b: jne    0x00007f45e124f739
  0.30%    0.30%     0x00007f45e124f071: lea    (%r12,%rbp,8),%r13  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.29%    0.34%     0x00007f45e124f075: mov    0x18(%r13),%r11d   ;*getfield pc
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 190)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f45e124f079: mov    %r11d,%ecx
  0.02%              0x00007f45e124f07c: cmp    $0x40,%r11d
  0.24%    0.02%     0x00007f45e124f080: jg     0x00007f45e124fd6d  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 190)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.28%    0.01%     0x00007f45e124f086: mov    $0x1,%r8d
           0.00%     0x00007f45e124f08c: shl    %cl,%r8            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 190)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.70%    0.73%     0x00007f45e124f08f: mov    %rax,%r11
                     0x00007f45e124f092: and    %r8,%r11
  0.05%    0.05%     0x00007f45e124f095: test   %r11,%r11
                     0x00007f45e124f098: jne    0x00007f45e124f3cf  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 190)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.28%    0.37%     0x00007f45e124f09e: mov    %ecx,%r11d
  0.29%    0.39%     0x00007f45e124f0a1: cmp    $0x40,%r11d
                     0x00007f45e124f0a5: jge    0x00007f45e124fdd1  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 193)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
           0.00%     0x00007f45e124f0ab: mov    0x1c(%r13),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.06%    0.04%     0x00007f45e124f0af: or     %r8,%rax           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 193)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.30%    0.32%     0x00007f45e124f0b2: vmovq  %xmm0,%r11
  0.34%    0.39%     0x00007f45e124f0b7: mov    %rax,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 193)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
           0.01%     0x00007f45e124f0bb: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007f45e1250545
  0.04%    0.09%     0x00007f45e124f0c0: cmp    $0xf8019993,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                     0x00007f45e124f0c7: jne    0x00007f45e124f789
  0.26%    0.33%     0x00007f45e124f0cd: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.30%    0.61%     0x00007f45e124f0d1: vmovq  %r11,%xmm2
                     0x00007f45e124f0d6: mov    0x18(%r11),%r11d   ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.04%     0x00007f45e124f0da: mov    %r11d,%ecx
  0.32%    0.41%     0x00007f45e124f0dd: cmp    $0x40,%r11d
                     0x00007f45e124f0e1: jg     0x00007f45e124fe35  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.32%    0.38%     0x00007f45e124f0e7: mov    $0x1,%r8d
                     0x00007f45e124f0ed: shl    %cl,%r8            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.69%    0.67%     0x00007f45e124f0f0: mov    %rax,%r11
                     0x00007f45e124f0f3: and    %r8,%r11           ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.02%     0x00007f45e124f0f6: test   %r11,%r11
                     0x00007f45e124f0f9: jne    0x00007f45e124fea1  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.33%    0.33%     0x00007f45e124f0ff: mov    %ecx,%r11d
  0.30%    0.31%     0x00007f45e124f102: cmp    $0x40,%r11d
                     0x00007f45e124f106: jge    0x00007f45e124ff21  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
           0.01%     0x00007f45e124f10c: vmovq  %xmm0,%r11
  0.03%    0.04%     0x00007f45e124f111: mov    %r10d,0xc(%r11)    ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.27%    0.30%     0x00007f45e124f115: or     %r8,%rax           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.28%    0.33%     0x00007f45e124f118: mov    %rax,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%    0.01%     0x00007f45e124f11c: cmp    %r14d,%r10d
                     0x00007f45e124f11f: jae    0x00007f45e124f675  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.06%     0x00007f45e124f125: mov    0x20(%r13),%ecx    ;*getfield inst2
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@41 (line 196)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.33%    0.36%     0x00007f45e124f129: mov    %rdi,%r10
  0.28%    0.35%     0x00007f45e124f12c: vmovq  %xmm2,%r11
  0.00%              0x00007f45e124f131: shr    $0x3,%r11
  0.02%    0.06%     0x00007f45e124f135: mov    %r11d,(%rdi)
  0.35%    0.29%     0x00007f45e124f138: shr    $0x9,%r10
  0.31%    0.30%     0x00007f45e124f13c: movabs $0x7f45dd1ff000,%r11
  0.00%              0x00007f45e124f146: mov    %r12b,(%r11,%r10,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.06%     0x00007f45e124f14a: mov    0x8(%r12,%rcx,8),%r10d  ; implicit exception: dispatches to 0x00007f45e1250561
  0.31%    0.43%     0x00007f45e124f14f: lea    (%r12,%rcx,8),%r8
  0.30%    0.37%     0x00007f45e124f153: cmp    $0xf8019887,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                     0x00007f45e124f15a: jne    0x00007f45e124f1f8  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f45e124f160: mov    0x18(%r8),%ecx     ;*getfield pc
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@2 (line 476)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
....................................................................................................
 45.27%   44.23%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 599 (885 bytes) 

                            0x00007f45e126d4bd: mov    %edi,%ebx
                            0x00007f45e126d4bf: add    $0xffffff9f,%ebx
                            0x00007f45e126d4c2: cmp    $0x1a,%ebx
                            0x00007f45e126d4c5: jae    0x00007f45e126ddb8  ;*iconst_1
                                                                          ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                                                                          ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                                                                          ; - com.google.re2j.Machine::match@121 (line 205)
                            0x00007f45e126d4cb: or     $0x10,%r10d        ;*iload_2
                                                                          ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                          ; - com.google.re2j.Machine::match@121 (line 205)
  0.01%    0.00%            0x00007f45e126d4cf: mov    0x40(%rsp),%r8
  0.00%    0.00%            0x00007f45e126d4d4: movzbl 0x11(%r8),%ebx     ;*getfield captures
                                                                          ; - com.google.re2j.Machine::match@283 (line 240)
                            0x00007f45e126d4d9: vmovd  %xmm1,%edx
                            0x00007f45e126d4dd: mov    %rdx,%r8
           0.00%            0x00007f45e126d4e0: shl    $0x3,%r8           ;*getfield q1
                                                                          ; - com.google.re2j.Machine::match@53 (line 192)
                            0x00007f45e126d4e4: mov    %r8,0x20(%rsp)
  0.00%                     0x00007f45e126d4e9: xor    %eax,%eax
                            0x00007f45e126d4eb: mov    $0x1,%r8d
  0.00%                     0x00007f45e126d4f1: xor    %ebp,%ebp
                            0x00007f45e126d4f3: mov    %r8d,0x14(%rsp)
  0.00%                     0x00007f45e126d4f8: mov    %ebp,0x60(%rsp)
                  ╭         0x00007f45e126d4fc: jmpq   0x00007f45e126d67e
  0.10%    0.09%  │    ↗    0x00007f45e126d501: or     $0x20,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                  │    │                                                  ; - com.google.re2j.Machine::match@322 (line 245)
  0.01%    0.01%  │    │    0x00007f45e126d505: mov    %r8d,0x4c(%rsp)    ;*iload_2
                  │    │                                                  ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                  │    │                                                  ; - com.google.re2j.Machine::match@322 (line 245)
  0.33%    0.32%  │    │↗   0x00007f45e126d50a: mov    0x60(%rsp),%r10d
  0.30%    0.28%  │    ││   0x00007f45e126d50f: cmp    %r14d,%r10d
                  │    ││   0x00007f45e126d512: je     0x00007f45e126dcdc  ;*if_icmpne
                  │    ││                                                 ; - com.google.re2j.Machine::match@347 (line 246)
  0.14%    0.15%  │    ││   0x00007f45e126d518: xor    %ebx,%ebx          ;*invokespecial step
                  │    ││                                                 ; - com.google.re2j.Machine::match@355 (line 246)
  0.06%    0.07%  │    ││   0x00007f45e126d51a: mov    %rax,-0x8(%rsp)
  0.33%    0.25%  │    ││   0x00007f45e126d51f: mov    0x60(%rsp),%eax
  0.15%    0.20%  │    ││   0x00007f45e126d523: mov    %eax,0x38(%rsp)
  0.27%    0.22%  │    ││   0x00007f45e126d527: mov    -0x8(%rsp),%rax    ;*invokevirtual endPos
                  │    ││                                                 ; - com.google.re2j.Machine::match@344 (line 246)
  0.53%    0.22%  │    ││   0x00007f45e126d52c: add    0x28(%rsp),%r10d   ;*iadd
                  │    ││                                                 ; - com.google.re2j.Machine::match@336 (line 246)
  0.27%    0.27%  │    ││   0x00007f45e126d531: mov    %r10d,0x60(%rsp)
  0.19%    0.22%  │    ││   0x00007f45e126d536: mov    0x40(%rsp),%rsi
  0.08%    0.04%  │    ││   0x00007f45e126d53b: mov    0x18(%rsp),%rdx
  0.13%    0.01%  │    ││   0x00007f45e126d540: mov    0x20(%rsp),%rcx
  0.25%    0.29%  │    ││   0x00007f45e126d545: mov    0x38(%rsp),%r8d
  0.45%    0.23%  │    ││   0x00007f45e126d54a: mov    %r10d,%r9d
  0.12%    0.12%  │    ││   0x00007f45e126d54d: mov    0x4c(%rsp),%r11d
  0.07%    0.03%  │    ││   0x00007f45e126d552: mov    %r11d,(%rsp)
  0.28%    0.02%  │    ││   0x00007f45e126d556: mov    0x3c(%rsp),%r11d
  0.20%    0.15%  │    ││   0x00007f45e126d55b: mov    %r11d,0x8(%rsp)
  0.14%    0.16%  │    ││   0x00007f45e126d560: mov    %ebx,0x10(%rsp)
  0.09%    0.07%  │    ││   0x00007f45e126d564: data16 xchg %ax,%ax
  0.18%    0.26%  │    ││   0x00007f45e126d567: callq  0x00007f45e1046020  ; OopMap{[24]=Oop [32]=Oop [52]=NarrowOop [64]=Oop [80]=Oop off=652}
                  │    ││                                                 ;*invokespecial step
                  │    ││                                                 ; - com.google.re2j.Machine::match@355 (line 246)
                  │    ││                                                 ;   {optimized virtual_call}
                  │    ││   0x00007f45e126d56c: mov    0x40(%rsp),%r10
  0.67%    0.52%  │    ││   0x00007f45e126d571: movzbl 0x11(%r10),%ebx    ;*getfield captures
                  │    ││                                                 ; - com.google.re2j.Machine::match@367 (line 250)
  0.01%           │    ││   0x00007f45e126d576: movzbl 0x10(%r10),%eax    ;*getfield matched
                  │    ││                                                 ; - com.google.re2j.Machine::match@374 (line 250)
                  │    ││   0x00007f45e126d57b: mov    0x28(%rsp),%r8d
  0.50%    0.68%  │    ││   0x00007f45e126d580: test   %r8d,%r8d
                  │    ││   0x00007f45e126d583: je     0x00007f45e126dc9d  ;*ifne
                  │    ││                                                 ; - com.google.re2j.Machine::match@360 (line 247)
                  │    ││   0x00007f45e126d589: test   %ebx,%ebx
                  │    ││   0x00007f45e126d58b: jne    0x00007f45e126e0d1  ;*ifne
                  │    ││                                                 ; - com.google.re2j.Machine::match@370 (line 250)
  0.00%    0.00%  │    ││   0x00007f45e126d591: test   %eax,%eax
                  │    ││   0x00007f45e126d593: jne    0x00007f45e126e315  ;*ifeq
                  │    ││                                                 ; - com.google.re2j.Machine::match@377 (line 250)
  0.00%    0.00%  │    ││   0x00007f45e126d599: mov    0x50(%rsp),%r10
  0.71%    0.99%  │    ││   0x00007f45e126d59e: mov    0x10(%r10),%r14d   ;*getfield end
                  │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                  │    ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.01%    0.01%  │    ││   0x00007f45e126d5a2: mov    0xc(%r10),%esi     ;*getfield start
                  │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                  │    ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
                  │    ││   0x00007f45e126d5a6: mov    0x14(%r10),%ecx    ;*getfield str
                  │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                  │    ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.00%    0.01%  │    ││   0x00007f45e126d5aa: mov    0x2c(%rsp),%r11d
  0.63%    0.73%  │    ││   0x00007f45e126d5af: cmp    $0xffffffff,%r11d
                  │    ││   0x00007f45e126d5b3: je     0x00007f45e126dce6  ;*if_icmpeq
                  │    ││                                                 ; - com.google.re2j.Machine::match@399 (line 258)
                  │    ││   0x00007f45e126d5b9: mov    0x30(%rsp),%r9d
                  │    ││   0x00007f45e126d5be: add    0x60(%rsp),%r9d
           0.00%  │    ││   0x00007f45e126d5c3: add    %esi,%r9d          ;*iadd
                  │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                  │    ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.68%    0.78%  │    ││   0x00007f45e126d5c6: cmp    %r14d,%r9d
                  │    ││   0x00007f45e126d5c9: jge    0x00007f45e126dcf5  ;*if_icmpge
                  │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                  │    ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
                  │    ││   0x00007f45e126d5cf: mov    0x8(%r12,%rcx,8),%r11d  ; implicit exception: dispatches to 0x00007f45e126f1c9
  0.37%    0.46%  │    ││   0x00007f45e126d5d4: cmp    $0xf80002da,%r11d  ;   {metadata(&apos;java/lang/String&apos;)}
                  │    ││   0x00007f45e126d5db: jne    0x00007f45e126dfc5
  0.47%    0.49%  │    ││   0x00007f45e126d5e1: lea    (%r12,%rcx,8),%rdi  ;*invokeinterface charAt
                  │    ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                  │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │    ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.31%    0.26%  │    ││   0x00007f45e126d5e5: test   %r9d,%r9d
                  │    ││   0x00007f45e126d5e8: jl     0x00007f45e126e125  ;*iflt
                  │    ││                                                 ; - java.lang.String::charAt@1 (line 657)
                  │    ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                  │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │    ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
                  │    ││   0x00007f45e126d5ee: mov    0xc(%rdi),%r8d     ;*getfield value
                  │    ││                                                 ; - java.lang.String::charAt@6 (line 657)
                  │    ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                  │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │    ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.16%    0.14%  │    ││   0x00007f45e126d5f2: mov    0xc(%r12,%r8,8),%ebp  ;*arraylength
                  │    ││                                                 ; - java.lang.String::charAt@9 (line 657)
                  │    ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                  │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │    ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
                  │    ││                                                 ; implicit exception: dispatches to 0x00007f45e126f1dd
  2.20%    2.21%  │    ││   0x00007f45e126d5f7: cmp    %ebp,%r9d
                  │    ││   0x00007f45e126d5fa: jge    0x00007f45e126e369  ;*if_icmplt
                  │    ││                                                 ; - java.lang.String::charAt@10 (line 657)
                  │    ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                  │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │    ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.63%    0.72%  │    ││   0x00007f45e126d600: cmp    %ebp,%r9d
                  │    ││   0x00007f45e126d603: jae    0x00007f45e126de71
  0.20%    0.25%  │    ││   0x00007f45e126d609: lea    (%r12,%r8,8),%r10
                  │    ││   0x00007f45e126d60d: movzwl 0x10(%r10,%r9,2),%r8d  ;*caload
                  │    ││                                                 ; - java.lang.String::charAt@27 (line 660)
                  │    ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                  │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │    ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.01%    0.01%  │    ││   0x00007f45e126d613: cmp    $0xd800,%r8d
                  │    ││   0x00007f45e126d61a: jge    0x00007f45e126e3e1  ;*if_icmplt
                  │    ││                                                 ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                  │    ││                                                 ; - java.lang.Character::codePointAt@9 (line 4867)
                  │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │    ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.70%    0.64%  │    ││   0x00007f45e126d620: shl    $0x3,%r8d          ;*ishl
                  │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                  │    ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.28%    0.30%  │    ││   0x00007f45e126d624: mov    %r8d,%ebp
                  │    ││   0x00007f45e126d627: or     $0x1,%ebp
  0.55%    0.67%  │    ││   0x00007f45e126d62a: and    $0x7,%r8d
  0.12%    0.20%  │    ││   0x00007f45e126d62e: sar    $0x3,%ebp          ;*ishr
                  │    ││                                                 ; - com.google.re2j.Machine::match@415 (line 260)
  0.47%    0.63%  │    ││   0x00007f45e126d631: or     $0x1,%r8d          ; OopMap{rcx=NarrowOop [24]=Oop [32]=Oop [64]=Oop [80]=Oop off=853}
                  │    ││                                                 ;*goto
                  │    ││                                                 ; - com.google.re2j.Machine::match@437 (line 266)
  0.02%    0.06%  │    ││   0x00007f45e126d635: test   %eax,0x16c549c5(%rip)        # 0x00007f45f7ec2000
                  │    ││                                                 ;*goto
                  │    ││                                                 ; - com.google.re2j.Machine::match@437 (line 266)
                  │    ││                                                 ;   {poll}
  0.02%    0.00%  │    ││   0x00007f45e126d63b: mov    0x40(%rsp),%r10
  0.11%    0.16%  │    ││   0x00007f45e126d640: mov    0x28(%r10),%r11d   ;*getfield matchcap
                  │    ││                                                 ; - com.google.re2j.Machine::match@307 (line 243)
  0.55%    0.59%  │    ││   0x00007f45e126d644: mov    0x14(%r10),%r9d    ;*getfield re2
                  │    ││                                                 ; - com.google.re2j.Machine::match@169 (line 220)
  0.04%    0.04%  │    ││   0x00007f45e126d648: mov    0x20(%rsp),%r10
                  │    ││   0x00007f45e126d64d: mov    %r10,%rdi
  0.13%    0.14%  │    ││   0x00007f45e126d650: shr    $0x3,%rdi
  0.50%    0.61%  │    ││   0x00007f45e126d654: mov    %edi,0x34(%rsp)
  0.03%    0.03%  │    ││   0x00007f45e126d658: mov    0x2c(%rsp),%edi
                  │    ││   0x00007f45e126d65c: mov    0x4c(%rsp),%r10d
  0.08%    0.13%  │    ││   0x00007f45e126d661: mov    0x18(%rsp),%rdx
  0.52%    0.65%  │    ││   0x00007f45e126d666: mov    %rdx,0x20(%rsp)
  0.03%    0.03%  │    ││   0x00007f45e126d66b: mov    0x30(%rsp),%r13d
  0.00%           │    ││   0x00007f45e126d670: mov    %r13d,0x28(%rsp)
  0.11%    0.15%  │    ││   0x00007f45e126d675: mov    %ebp,0x2c(%rsp)
  0.46%    0.65%  │    ││   0x00007f45e126d679: mov    %r8d,0x30(%rsp)    ;*getfield matchcap
                  │    ││                                                 ; - com.google.re2j.Machine::match@307 (line 243)
  0.01%    0.03%  ↘    ││   0x00007f45e126d67e: mov    0x34(%rsp),%r8d
                       ││   0x00007f45e126d683: movzbl 0x18(%r12,%r8,8),%r8d  ; implicit exception: dispatches to 0x00007f45e126f175
  0.13%    0.12%       ││   0x00007f45e126d689: mov    0x34(%rsp),%ebp
  0.49%    0.65%       ││   0x00007f45e126d68d: lea    (%r12,%rbp,8),%rdx  ;*aload
                       ││                                                 ; - com.google.re2j.Machine::match@136 (line 211)
  0.03%    0.04%       ││   0x00007f45e126d691: mov    %rdx,0x18(%rsp)
                       ││   0x00007f45e126d696: test   %r8d,%r8d
                       ││   0x00007f45e126d699: jne    0x00007f45e126d91b  ;*aload_0
                       ││                                                 ; - com.google.re2j.Machine::match@267 (line 237)
  0.11%    0.14%       ││   0x00007f45e126d69f: test   %eax,%eax
                       ││   0x00007f45e126d6a1: jne    0x00007f45e126e02d  ;*ifne
                       ││                                                 ; - com.google.re2j.Machine::match@271 (line 237)
  0.50%    0.53%       ││   0x00007f45e126d6a7: mov    0x60(%rsp),%r8d
  0.05%    0.03%       ││   0x00007f45e126d6ac: test   %r8d,%r8d
                   ╭   ││   0x00007f45e126d6af: je     0x00007f45e126d6bf  ;*ifeq
                   │   ││                                                 ; - com.google.re2j.Machine::match@275 (line 237)
                   │   ││   0x00007f45e126d6b1: mov    0x3c(%rsp),%r9d
  0.14%    0.13%   │   ││   0x00007f45e126d6b6: test   %r9d,%r9d
                   │   ││   0x00007f45e126d6b9: jne    0x00007f45e126e081  ;*aload_0
                   │   ││                                                 ; - com.google.re2j.Machine::match@282 (line 240)
  0.59%    0.58%   ↘   ││   0x00007f45e126d6bf: test   %ebx,%ebx
                       ││   0x00007f45e126d6c1: jne    0x00007f45e126e1a1  ;*ifeq
                       ││                                                 ; - com.google.re2j.Machine::match@286 (line 240)
  0.02%    0.04%       ││   0x00007f45e126d6c7: mov    0x40(%rsp),%r8
                       ││   0x00007f45e126d6cc: mov    0x18(%r8),%r8d     ;*getfield prog
                       ││                                                 ; - com.google.re2j.Machine::match@297 (line 243)
  0.16%    0.07%       ││   0x00007f45e126d6d0: mov    0x1c(%r12,%r8,8),%ebp  ;*getfield startInst
                       ││                                                 ; - com.google.re2j.Machine::match@300 (line 243)
                       ││                                                 ; implicit exception: dispatches to 0x00007f45e126f185
  0.61%    0.52%       ││   0x00007f45e126d6d5: mov    0x8(%r12,%rbp,8),%r9d  ; implicit exception: dispatches to 0x00007f45e126f195
  0.24%    0.23%       ││   0x00007f45e126d6da: cmp    $0xf8019993,%r9d   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                       ││   0x00007f45e126d6e1: jne    0x00007f45e126def5
  0.37%    0.41%       ││   0x00007f45e126d6e7: lea    (%r12,%rbp,8),%r8  ;*invokevirtual add
                       ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.00%                ││   0x00007f45e126d6eb: mov    0x18(%r8),%r10d    ;*getfield pc
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                       ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.26%    0.09%       ││   0x00007f45e126d6ef: cmp    $0x40,%r10d
                       ││   0x00007f45e126d6f3: jg     0x00007f45e126e1f5  ;*if_icmpgt
                       ││                                                 ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                       ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.41%    0.22%       ││   0x00007f45e126d6f9: mov    %r8,%r9
  0.04%    0.03%       ││   0x00007f45e126d6fc: mov    $0x1,%ebx
  0.00%    0.00%       ││   0x00007f45e126d701: mov    %r10d,%ecx
  0.15%    0.05%       ││   0x00007f45e126d704: shl    %cl,%rbx           ;*lshl
                       ││                                                 ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                       ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  1.09%    0.35%       ││   0x00007f45e126d707: mov    0x34(%rsp),%ecx
  0.05%                ││   0x00007f45e126d70b: mov    0x10(%r12,%rcx,8),%rcx  ;*getfield pcsl
                       ││                                                 ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                       ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.01%                ││   0x00007f45e126d710: mov    %rcx,%r8
  0.06%    0.01%       ││   0x00007f45e126d713: and    %rbx,%r8           ;*land
                       ││                                                 ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                       ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.44%    0.14%       ││   0x00007f45e126d716: test   %r8,%r8
                       ││   0x00007f45e126d719: jne    0x00007f45e126e245  ;*ifeq
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                       ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.07%    0.02%       ││   0x00007f45e126d71f: cmp    $0x40,%r10d
                       ││   0x00007f45e126d723: jge    0x00007f45e126e2c1  ;*if_icmpge
                       ││                                                 ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                       ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.03%    0.02%       ││   0x00007f45e126d729: mov    0x34(%rsp),%r10d
  0.03%    0.00%       ││   0x00007f45e126d72e: mov    %r12b,0x18(%r12,%r10,8)  ;*putfield empty
                       ││                                                 ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                       ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.51%    0.24%       ││   0x00007f45e126d733: mov    0xc(%r12,%r10,8),%r10d  ;*getfield size
                       ││                                                 ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                       ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.05%    0.03%       ││   0x00007f45e126d738: mov    0x34(%rsp),%r11d
  0.03%    0.03%       ││   0x00007f45e126d73d: mov    0x20(%r12,%r11,8),%r11d  ;*getfield denseThreadsInstructions
                       ││                                                 ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                       ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.02%    0.05%       ││   0x00007f45e126d742: or     %rcx,%rbx
  0.51%    0.55%       ││   0x00007f45e126d745: mov    0x34(%rsp),%ecx
  0.07%    0.05%       ││   0x00007f45e126d749: mov    %rbx,0x10(%r12,%rcx,8)  ;*putfield pcsl
                       ││                                                 ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                       ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.04%    0.10%       ││   0x00007f45e126d74e: mov    %r10d,%r8d
  0.04%    0.01%       ││   0x00007f45e126d751: inc    %r8d
  0.50%    0.48%       ││   0x00007f45e126d754: mov    %r8d,0xc(%r12,%rcx,8)  ;*putfield size
                       ││                                                 ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                       ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.13%    0.08%       ││   0x00007f45e126d759: mov    0xc(%r12,%r11,8),%r8d  ; implicit exception: dispatches to 0x00007f45e126f1b1
  0.06%    0.04%       ││   0x00007f45e126d75e: cmp    %r8d,%r10d
                       ││   0x00007f45e126d761: jae    0x00007f45e126de01
  0.02%    0.01%       ││   0x00007f45e126d767: mov    0x8(%r12,%r11,8),%r8d
  0.50%    0.33%       ││   0x00007f45e126d76c: cmp    $0xf8019808,%r8d   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                       ││   0x00007f45e126d773: jne    0x00007f45e126df51  ;*aastore
                       ││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                       ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.10%    0.04%       ││   0x00007f45e126d779: test   %edi,%edi
                    ╭  ││   0x00007f45e126d77b: jl     0x00007f45e126d829  ;*ifge
                    │  ││                                                 ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                    │  ││                                                 ; - com.google.re2j.Machine::match@322 (line 245)
  0.03%    0.02%    │  ││   0x00007f45e126d781: xor    %r8d,%r8d          ;*iload_0
                    │  ││                                                 ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                    │  ││                                                 ; - com.google.re2j.Machine::match@322 (line 245)
  0.03%    0.01%    │  ││↗  0x00007f45e126d784: cmp    $0xa,%edi
                    │  │││  0x00007f45e126d787: je     0x00007f45e126db79  ;*iload_1
                    │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                    │  │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.57%    0.52%    │  │││  0x00007f45e126d78d: mov    0x2c(%rsp),%ebx
  0.07%    0.07%    │  │││  0x00007f45e126d791: test   %ebx,%ebx
                    │  │││  0x00007f45e126d793: jl     0x00007f45e126db70  ;*iload_1
                    │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                    │  │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.04%    0.06%    │  │││  0x00007f45e126d799: cmp    $0xa,%ebx
                    │  │││  0x00007f45e126d79c: je     0x00007f45e126db82  ;*iload_0
                    │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                    │  │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.02%    0.02%    │  │││  0x00007f45e126d7a2: mov    %r9,%rcx
  0.53%    0.56%    │  │││  0x00007f45e126d7a5: shr    $0x3,%rcx          ;*aastore
                    │  │││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                    │  │││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                    │  │││                                                ; - com.google.re2j.Machine::match@314 (line 243)
  0.07%    0.10%    │  │││  0x00007f45e126d7a9: shl    $0x3,%r11          ;*getfield denseThreadsInstructions
                    │  │││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                    │  │││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                    │  │││                                                ; - com.google.re2j.Machine::match@314 (line 243)
  0.04%    0.07%    │  │││  0x00007f45e126d7ad: lea    0x10(%r11,%r10,4),%r10
  0.03%    0.03%    │  │││  0x00007f45e126d7b2: mov    %ecx,(%r10)
  0.59%    0.66%    │  │││  0x00007f45e126d7b5: mov    %edi,%r9d
  0.06%    0.07%    │  │││  0x00007f45e126d7b8: add    $0xffffffbf,%r9d
  0.03%    0.05%    │  │││  0x00007f45e126d7bc: shr    $0x9,%r10
  0.01%    0.04%    │  │││  0x00007f45e126d7c0: movabs $0x7f45dd1ff000,%r11
  0.42%    0.57%    │  │││  0x00007f45e126d7ca: mov    %r12b,(%r11,%r10,1)  ;*aastore
                    │  │││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                    │  │││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                    │  │││                                                ; - com.google.re2j.Machine::match@314 (line 243)
  0.65%    0.76%    │  │││  0x00007f45e126d7ce: cmp    $0x1a,%r9d
                    │╭ │││  0x00007f45e126d7d2: jb     0x00007f45e126d7e5  ;*if_icmple
                    ││ │││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                    ││ │││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    ││ │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.02%    0.06%    ││ │││  0x00007f45e126d7d4: mov    %edi,%r11d
  0.00%    0.02%    ││ │││  0x00007f45e126d7d7: add    $0xffffff9f,%r11d
  0.33%    0.45%    ││ │││  0x00007f45e126d7db: cmp    $0x1a,%r11d
                    ││ │││  0x00007f45e126d7df: jae    0x00007f45e126dd34  ;*iconst_1
                    ││ │││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                    ││ │││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    ││ │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.24%    0.34%    │↘ │││  0x00007f45e126d7e5: mov    $0x1,%ebp          ;*ireturn
                    │  │││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                    │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    │  │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.01%    0.02%    │  │││  0x00007f45e126d7ea: mov    0x2c(%rsp),%r10d
  0.06%    0.13%    │  │││  0x00007f45e126d7ef: add    $0xffffffbf,%r10d
  0.25%    0.43%    │  │││  0x00007f45e126d7f3: cmp    $0x1a,%r10d
                    │ ╭│││  0x00007f45e126d7f7: jb     0x00007f45e126d80c  ;*if_icmple
                    │ ││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                    │ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    │ ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.25%    0.25%    │ ││││  0x00007f45e126d7f9: mov    0x2c(%rsp),%r11d
  0.01%    0.08%    │ ││││  0x00007f45e126d7fe: add    $0xffffff9f,%r11d
  0.05%    0.11%    │ ││││  0x00007f45e126d802: cmp    $0x1a,%r11d
                    │ ││││  0x00007f45e126d806: jae    0x00007f45e126dd55  ;*iconst_1
                    │ ││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                    │ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    │ ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.26%    0.39%    │ ↘│││  0x00007f45e126d80c: mov    $0x1,%r10d         ;*ireturn
                    │  │││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                    │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    │  │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.40%    0.40%    │  │││  0x00007f45e126d812: cmp    %r10d,%ebp
                    │  ╰││  0x00007f45e126d815: je     0x00007f45e126d501  ;*if_icmpeq
                    │   ││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                    │   ││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.02%    0.01%    │   ││  0x00007f45e126d81b: or     $0x10,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                    │   ││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.09%    0.09%    │   ││  0x00007f45e126d81f: mov    %r8d,0x4c(%rsp)
  0.13%    0.11%    │   ╰│  0x00007f45e126d824: jmpq   0x00007f45e126d50a
                    ↘    │  0x00007f45e126d829: mov    $0x5,%r8d
                         ╰  0x00007f45e126d82f: jmpq   0x00007f45e126d784
                            0x00007f45e126d834: nopl   0x0(%rax,%rax,1)
                            0x00007f45e126d83c: data16 data16 xchg %ax,%ax
  0.00%    0.00%            0x00007f45e126d840: mov    %edx,0x5c(%rsp)
  0.01%                     0x00007f45e126d844: jmpq   0x00007f45e126dab1
                            0x00007f45e126d849: mov    0x5c(%rsp),%r9d
                            0x00007f45e126d84e: add    $0x2,%r9d
                            0x00007f45e126d852: mov    %r9d,0x5c(%rsp)
                            0x00007f45e126d857: mov    0x5c(%rsp),%r9d
                            0x00007f45e126d85c: inc    %r9d
                            0x00007f45e126d85f: mov    %r9d,0x58(%rsp)
                            0x00007f45e126d864: jmp    0x00007f45e126d891
                            0x00007f45e126d866: mov    0x5c(%rsp),%r9d
                            0x00007f45e126d86b: add    $0x2,%r9d
                            0x00007f45e126d86f: mov    %r9d,0x58(%rsp)
....................................................................................................
 31.08%   30.73%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 552 (466 bytes) 

                                                                      ; - com.google.re2j.Machine::step@202 (line 311)
                                                                      ;   {optimized virtual_call}
                        0x00007f45e124f1dc: test   %rax,%rax
                        0x00007f45e124f1df: jne    0x00007f45e1250205  ;*ifnull
                                                                      ; - com.google.re2j.Machine::step@209 (line 313)
                        0x00007f45e124f1e5: mov    0x30(%rsp),%r13
                        0x00007f45e124f1ea: mov    0xc(%r13),%ebx     ;*getfield size
                                                                      ; - com.google.re2j.Machine::step@15 (line 281)
                        0x00007f45e124f1ee: mov    0x10(%rsp),%r11
                        0x00007f45e124f1f3: jmpq   0x00007f45e124ee26
  0.01%    0.01%        0x00007f45e124f1f8: cmp    $0xf8019993,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                        0x00007f45e124f1ff: jne    0x00007f45e124fa51  ;*invokevirtual add
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.06%        0x00007f45e124f205: mov    0x18(%r8),%ecx     ;*getfield pc
                                                                      ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.37%    0.40%        0x00007f45e124f209: cmp    $0x40,%ecx
                        0x00007f45e124f20c: jg     0x00007f45e12500c9  ;*if_icmpgt
                                                                      ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.21%    0.46%        0x00007f45e124f212: mov    $0x1,%r10d
  0.00%    0.00%        0x00007f45e124f218: shl    %cl,%r10           ;*lshl
                                                                      ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.61%    0.49%        0x00007f45e124f21b: mov    %rax,%r11
  0.01%    0.01%        0x00007f45e124f21e: and    %r10,%r11          ;*land
                                                                      ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.02%        0x00007f45e124f221: test   %r11,%r11
                        0x00007f45e124f224: jne    0x00007f45e125012d  ;*ifeq
                                                                      ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.42%    0.25%        0x00007f45e124f22a: cmp    $0x40,%ecx
                        0x00007f45e124f22d: jge    0x00007f45e12501a1  ;*if_icmpge
                                                                      ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.31%    0.47%        0x00007f45e124f233: or     %r10,%rax
           0.00%        0x00007f45e124f236: vmovq  %xmm0,%r11
  0.03%    0.07%        0x00007f45e124f23b: mov    %rax,0x10(%r11)    ;*putfield pcsl
                                                                      ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.84%    1.07%        0x00007f45e124f23f: add    $0x18,%r9
  0.22%    0.32%        0x00007f45e124f243: mov    %r8,%r10
  0.00%    0.00%        0x00007f45e124f246: shr    $0x3,%r10
  0.04%    0.02%        0x00007f45e124f24a: mov    %r10d,(%r9)        ;*aastore
                                                                      ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.35%    0.48%        0x00007f45e124f24d: mov    %r9,%r10
  0.17%    0.36%        0x00007f45e124f250: add    $0x3,%esi
  0.01%    0.00%        0x00007f45e124f253: mov    %esi,0xc(%r11)     ;*putfield size
                                                                      ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.04%        0x00007f45e124f257: mov    0x30(%rsp),%r13
  0.29%    0.45%        0x00007f45e124f25c: mov    0xc(%r13),%ebx     ;*getfield size
                                                                      ; - com.google.re2j.Machine::step@15 (line 281)
  0.20%    0.24%        0x00007f45e124f260: shr    $0x9,%r10
  0.00%    0.00%        0x00007f45e124f264: movabs $0x7f45dd1ff000,%r8
  0.06%    0.04%        0x00007f45e124f26e: mov    %r12b,(%r8,%r10,1)  ;*aastore
                                                                      ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.38%    0.42%        0x00007f45e124f272: jmpq   0x00007f45e124ee26
  0.34%    0.37%        0x00007f45e124f277: cmp    $0xb,%ebp
                        0x00007f45e124f27a: je     0x00007f45e124f5e1  ;*if_icmpne
                                                                      ; - com.google.re2j.Inst$RuneInst::matchRune@17 (line 140)
                                                                      ; - com.google.re2j.Machine::step@181 (line 310)
  0.80%    0.93%        0x00007f45e124f280: mov    0x20(%r8),%r9d     ;*getfield f0
                                                                      ; - com.google.re2j.Inst$RuneInst::matchRune@42 (line 145)
                                                                      ; - com.google.re2j.Machine::step@181 (line 310)
  0.02%    0.09%        0x00007f45e124f284: cmp    $0x9,%ebp
                  ╭     0x00007f45e124f287: je     0x00007f45e124f2d0  ;*if_icmpne
                  │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@38 (line 144)
                  │                                                   ; - com.google.re2j.Machine::step@181 (line 310)
  0.44%    0.49%  │     0x00007f45e124f289: cmp    $0xc,%ebp
                  │     0x00007f45e124f28c: jne    0x00007f45e124f99d  ;*if_icmpne
                  │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@61 (line 148)
                  │                                                   ; - com.google.re2j.Machine::step@181 (line 310)
  0.24%    0.29%  │     0x00007f45e124f292: cmp    0x28(%rsp),%r9d
                  │╭    0x00007f45e124f297: je     0x00007f45e124f3c4  ;*if_icmpeq
                  ││                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@69 (line 149)
                  ││                                                  ; - com.google.re2j.Machine::step@181 (line 310)
  0.44%    0.61%  ││    0x00007f45e124f29d: mov    0x24(%r8),%r9d     ;*getfield f1
                  ││                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@73 (line 149)
                  ││                                                  ; - com.google.re2j.Machine::step@181 (line 310)
  0.03%    0.06%  ││    0x00007f45e124f2a1: cmp    0x28(%rsp),%r9d
                  ││╭   0x00007f45e124f2a6: je     0x00007f45e124f3c4  ;*if_icmpeq
                  │││                                                 ; - com.google.re2j.Inst$RuneInst::matchRune@77 (line 149)
                  │││                                                 ; - com.google.re2j.Machine::step@181 (line 310)
  0.15%    0.29%  │││   0x00007f45e124f2ac: mov    0x28(%r8),%ebp     ;*getfield f2
                  │││                                                 ; - com.google.re2j.Inst$RuneInst::matchRune@81 (line 149)
                  │││                                                 ; - com.google.re2j.Machine::step@181 (line 310)
  0.01%    0.04%  │││   0x00007f45e124f2b0: cmp    0x28(%rsp),%ebp
                  │││   0x00007f45e124f2b4: je     0x00007f45e124f9e9  ;*if_icmpeq
                  │││                                                 ; - com.google.re2j.Inst$RuneInst::matchRune@85 (line 149)
                  │││                                                 ; - com.google.re2j.Machine::step@181 (line 310)
  0.67%    0.72%  │││   0x00007f45e124f2ba: mov    0x2c(%r8),%ebp     ;*getfield f3
                  │││                                                 ; - com.google.re2j.Inst$RuneInst::matchRune@89 (line 149)
                  │││                                                 ; - com.google.re2j.Machine::step@181 (line 310)
  0.03%    0.02%  │││   0x00007f45e124f2be: cmp    0x28(%rsp),%ebp
                  │││   0x00007f45e124f2c2: je     0x00007f45e124fa1d  ;*if_icmpne
                  │││                                                 ; - com.google.re2j.Inst$RuneInst::matchRune@93 (line 149)
                  │││                                                 ; - com.google.re2j.Machine::step@181 (line 310)
  0.18%    0.22%  │││   0x00007f45e124f2c8: xor    %r11d,%r11d
                  │││   0x00007f45e124f2cb: jmpq   0x00007f45e124ed93
  0.98%    1.13%  ↘││   0x00007f45e124f2d0: cmp    0x28(%rsp),%r9d
                   ││   0x00007f45e124f2d5: jne    0x00007f45e124ed90  ;*if_icmpne
                   ││                                                 ; - com.google.re2j.Inst$RuneInst::matchRune@46 (line 145)
                   ││                                                 ; - com.google.re2j.Machine::step@181 (line 310)
  0.02%    0.00%   ││   0x00007f45e124f2db: mov    $0x1,%r11d
  0.00%            ││   0x00007f45e124f2e1: jmpq   0x00007f45e124ed93  ;*if_icmpge
                   ││                                                 ; - com.google.re2j.Machine::step@18 (line 281)
  0.51%    0.60%   ││   0x00007f45e124f2e6: movzbl 0x18(%r13),%r10d
                   ││   0x00007f45e124f2eb: test   %r10d,%r10d
                   ││╭  0x00007f45e124f2ee: jne    0x00007f45e124f309  ;*ifeq
                   │││                                                ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                   │││                                                ; - com.google.re2j.Machine::step@225 (line 317)
  0.00%            │││  0x00007f45e124f2f0: movb   $0x1,0x18(%r13)    ;*putfield empty
                   │││                                                ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                   │││                                                ; - com.google.re2j.Machine::step@225 (line 317)
  0.00%            │││  0x00007f45e124f2f5: mov    0x1c(%r13),%ebp    ;*getfield pcs
                   │││                                                ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                   │││                                                ; - com.google.re2j.Machine::step@225 (line 317)
  0.66%    0.79%   │││  0x00007f45e124f2f9: mov    %r12d,0xc(%r13)    ;*putfield size
                   │││                                                ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                   │││                                                ; - com.google.re2j.Machine::step@225 (line 317)
  0.00%    0.00%   │││  0x00007f45e124f2fd: mov    %r12,0x10(%r13)    ;*putfield pcsl
                   │││                                                ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                   │││                                                ; - com.google.re2j.Machine::step@225 (line 317)
  0.01%    0.00%   │││  0x00007f45e124f301: test   %ebp,%ebp
                   │││  0x00007f45e124f303: jne    0x00007f45e124f9d1  ;*getfield size
                   │││                                                ; - com.google.re2j.Machine::step@15 (line 281)
                   ││↘  0x00007f45e124f309: add    $0x80,%rsp
  0.72%    0.72%   ││   0x00007f45e124f310: pop    %rbp
           0.00%   ││   0x00007f45e124f311: test   %eax,0x16c72ce9(%rip)        # 0x00007f45f7ec2000
                   ││                                                 ;   {poll_return}
           0.00%   ││   0x00007f45e124f317: retq   
  0.01%    0.01%   ││   0x00007f45e124f318: cmp    $0xf8019993,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                   ││   0x00007f45e124f31f: jne    0x00007f45e12502a5  ;*invokevirtual add
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 311)
  0.01%            ││   0x00007f45e124f325: mov    0x18(%r8),%ebx     ;*getfield pc
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 311)
                   ││   0x00007f45e124f329: mov    %rcx,%r11
                   ││   0x00007f45e124f32c: mov    0x10(%rcx),%rdx    ;*getfield pcsl
                   ││                                                 ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 311)
                   ││                                                 ; implicit exception: dispatches to 0x00007f45e125059d
  0.00%    0.00%   ││   0x00007f45e124f330: cmp    $0x40,%ebx
                   ││   0x00007f45e124f333: jg     0x00007f45e125033d  ;*if_icmpgt
                   ││                                                 ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 311)
  0.00%            ││   0x00007f45e124f339: mov    $0x1,%esi
                   ││   0x00007f45e124f33e: mov    %ebx,%ecx
                   ││   0x00007f45e124f340: shl    %cl,%rsi           ;*lshl
                   ││                                                 ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 311)
  0.03%    0.02%   ││   0x00007f45e124f343: mov    %rdx,%r9
                   ││   0x00007f45e124f346: and    %rsi,%r9           ;*land
                   ││                                                 ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 311)
                   ││   0x00007f45e124f349: test   %r9,%r9
                   ││   0x00007f45e124f34c: jne    0x00007f45e1250395  ;*ifeq
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 311)
           0.01%   ││   0x00007f45e124f352: cmp    $0x40,%ebx
                   ││   0x00007f45e124f355: jge    0x00007f45e12503f5  ;*if_icmpge
                   ││                                                 ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 311)
  0.01%    0.00%   ││   0x00007f45e124f35b: mov    %r12b,0x18(%r11)   ;*putfield empty
                   ││                                                 ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 311)
                   ││   0x00007f45e124f35f: mov    0xc(%r11),%r9d     ;*getfield size
                   ││                                                 ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 311)
           0.00%   ││   0x00007f45e124f363: or     %rdx,%rsi
  0.00%            ││   0x00007f45e124f366: mov    %rsi,0x10(%r11)    ;*putfield pcsl
                   ││                                                 ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 311)
  0.03%    0.00%   ││   0x00007f45e124f36a: mov    0x20(%r11),%ebp    ;*getfield denseThreadsInstructions
                   ││                                                 ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 311)
                   ││   0x00007f45e124f36e: mov    %r9d,%ebx
                   ││   0x00007f45e124f371: inc    %ebx
           0.01%   ││   0x00007f45e124f373: mov    %ebx,0xc(%r11)     ;*putfield size
                   ││                                                 ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 311)
  0.03%    0.00%   ││   0x00007f45e124f377: mov    0xc(%r12,%rbp,8),%ebx  ; implicit exception: dispatches to 0x00007f45e12505b1
  0.03%    0.01%   ││   0x00007f45e124f37c: cmp    %ebx,%r9d
                   ││   0x00007f45e124f37f: jae    0x00007f45e1250259
  0.02%    0.00%   ││   0x00007f45e124f385: mov    0x8(%r12,%rbp,8),%ebx
  0.00%            ││   0x00007f45e124f38a: cmp    $0xf8019808,%ebx   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                   ││   0x00007f45e124f390: jne    0x00007f45e12502f1  ;*aastore
                   ││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 311)
                   ││   0x00007f45e124f396: mov    0xc(%r13),%ebx     ;*getfield size
                   ││                                                 ; - com.google.re2j.Machine::step@15 (line 281)
                   ││   0x00007f45e124f39a: mov    %r8,%rcx
  0.02%            ││   0x00007f45e124f39d: shr    $0x3,%rcx          ;*aastore
                   ││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 311)
                   ││   0x00007f45e124f3a1: lea    (%r12,%rbp,8),%r8  ;*getfield denseThreadsInstructions
                   ││                                                 ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 311)
                   ││   0x00007f45e124f3a5: lea    0x10(%r8,%r9,4),%r8
                   ││   0x00007f45e124f3aa: mov    %ecx,(%r8)
  0.06%    0.00%   ││   0x00007f45e124f3ad: shr    $0x9,%r8
                   ││   0x00007f45e124f3b1: movabs $0x7f45dd1ff000,%r9
  0.00%            ││   0x00007f45e124f3bb: mov    %r12b,(%r9,%r8,1)  ;*aastore
                   ││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 311)
  0.01%    0.02%   ││   0x00007f45e124f3bf: jmpq   0x00007f45e124ee35  ;*iconst_1
                   ││                                                 ; - com.google.re2j.Inst$RuneInst::matchRune@96 (line 149)
                   ││                                                 ; - com.google.re2j.Machine::step@181 (line 310)
  0.06%    0.16%   ↘↘   0x00007f45e124f3c4: mov    $0x1,%r11d
  0.05%    0.03%        0x00007f45e124f3ca: jmpq   0x00007f45e124ed93
                        0x00007f45e124f3cf: mov    0x30(%rsp),%r13
                        0x00007f45e124f3d4: mov    0xc(%r13),%ebx     ;*getfield size
                                                                      ; - com.google.re2j.Machine::step@15 (line 281)
                        0x00007f45e124f3d8: vmovq  %xmm0,%r11
                        0x00007f45e124f3dd: jmpq   0x00007f45e124ee26
                        0x00007f45e124f3e2: mov    $0xffffffe4,%esi
                        0x00007f45e124f3e7: mov    %r10d,0x9c(%rsp)
                        0x00007f45e124f3ef: mov    %r13,0x10(%rsp)
                        0x00007f45e124f3f4: mov    %rcx,0x18(%rsp)
                        0x00007f45e124f3f9: xchg   %ax,%ax
....................................................................................................
 11.41%   13.43%  <total for region 3>

....[Hottest Regions]...............................................................................
 45.27%   44.23%         C2, level 4  com.google.re2j.Machine::step, version 552 (813 bytes) 
 31.08%   30.73%         C2, level 4  com.google.re2j.Machine::match, version 599 (885 bytes) 
 11.41%   13.43%         C2, level 4  com.google.re2j.Machine::step, version 552 (466 bytes) 
  5.58%    5.95%         C2, level 4  com.google.re2j.Machine::step, version 552 (95 bytes) 
  1.46%    1.64%         C2, level 4  com.google.re2j.Machine::match, version 599 (70 bytes) 
  1.13%    1.12%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.26%    0.10%         C2, level 4  com.google.re2j.RE2::match, version 603 (109 bytes) 
  0.24%    0.12%         C2, level 4  com.google.re2j.Machine::match, version 599 (307 bytes) 
  0.16%    0.08%         C2, level 4  com.google.re2j.Machine::match, version 599 (162 bytes) 
  0.12%    0.13%         C2, level 4  com.google.re2j.RE2::match, version 603 (33 bytes) 
  0.11%    0.00%   [kernel.kallsyms]  [unknown] (70 bytes) 
  0.11%    0.06%         C2, level 4  com.google.re2j.RE2::match, version 603 (0 bytes) 
  0.10%    0.07%         C2, level 4  com.google.re2j.RE2::match, version 603 (0 bytes) 
  0.10%    0.08%         C2, level 4  com.google.re2j.RE2::match, version 603 (14 bytes) 
  0.09%    0.02%         C2, level 4  com.google.re2j.RE2::match, version 603 (185 bytes) 
  0.09%    0.05%         C2, level 4  com.google.re2j.Machine::match, version 599 (138 bytes) 
  0.08%    0.01%   [kernel.kallsyms]  [unknown] (1 bytes) 
  0.08%                  C2, level 4  com.github.arnaudroger.re2j.generated.Re2jRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 646 (84 bytes) 
  0.06%                  C2, level 4  com.google.re2j.RE2::match, version 603 (3 bytes) 
  0.06%                  C2, level 4  com.google.re2j.RE2::match, version 603 (47 bytes) 
  2.42%    2.16%  <...other 409 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 62.27%   63.61%         C2, level 4  com.google.re2j.Machine::step, version 552 
 33.28%   32.82%         C2, level 4  com.google.re2j.Machine::match, version 599 
  2.13%    1.94%   [kernel.kallsyms]  [unknown] 
  1.00%    0.47%         C2, level 4  com.google.re2j.RE2::match, version 603 
  0.17%    0.12%         C2, level 4  java.util.Collections::shuffle, version 613 
  0.13%    0.04%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 646 
  0.08%    0.11%           libjvm.so  PSPromotionManager::copy_to_survivor_space<false> 
  0.07%    0.04%           libjvm.so  GenericTaskQueueSet<OverflowTaskQueue<StarTask, (MemoryType)1, 131072u>, (MemoryType)1>::steal_best_of_2 
  0.05%    0.03%      hsdis-amd64.so  decode_instructions 
  0.05%    0.01%           libjvm.so  InstanceKlass::oop_push_contents 
  0.04%    0.01%              [vdso]  __vdso_clock_gettime 
  0.04%    0.05%           libjvm.so  RelocIterator::initialize 
  0.03%    0.04%           libjvm.so  fileStream::write 
  0.03%    0.01%              [vdso]  [unknown] 
  0.03%    0.03%           libjvm.so  PSPromotionManager::drain_stacks_depth 
  0.03%                  C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 611 
  0.03%    0.05%        libc-2.26.so  _IO_fwrite 
  0.02%    0.01%           libjvm.so  TaskQueueSetSuper::randomParkAndMiller 
  0.02%    0.01%           libjvm.so  xmlTextStream::write 
  0.02%           libpthread-2.26.so  __libc_write 
  0.45%    0.37%  <...other 68 warm methods...>
....................................................................................................
100.00%   99.77%  <totals>

....[Distribution by Source]........................................................................
 96.89%   97.05%         C2, level 4
  2.13%    1.94%   [kernel.kallsyms]
  0.60%    0.63%           libjvm.so
  0.14%    0.27%        libc-2.26.so
  0.08%    0.02%              [vdso]
  0.06%    0.03%      hsdis-amd64.so
  0.06%    0.02%  libpthread-2.26.so
  0.03%    0.01%         interpreter
  0.00%                             
  0.00%    0.01%        runtime stub
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                 Mode  Cnt      Score     Error  Units
Re2jRegex.testExp1       thrpt   20  25822.502 ± 174.986  ops/s
Re2jRegex.testExp1:·asm  thrpt             NaN              ---
