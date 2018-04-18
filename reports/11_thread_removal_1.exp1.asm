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
# Warmup Iteration   1: 10330.832 ops/s
# Warmup Iteration   2: 20019.775 ops/s
# Warmup Iteration   3: 20138.942 ops/s
# Warmup Iteration   4: 20216.465 ops/s
# Warmup Iteration   5: 20273.228 ops/s
# Warmup Iteration   6: 20629.167 ops/s
# Warmup Iteration   7: 20606.891 ops/s
# Warmup Iteration   8: 20669.647 ops/s
# Warmup Iteration   9: 20652.952 ops/s
# Warmup Iteration  10: 20661.284 ops/s
# Warmup Iteration  11: 20670.738 ops/s
# Warmup Iteration  12: 20679.449 ops/s
# Warmup Iteration  13: 20679.668 ops/s
# Warmup Iteration  14: 20679.653 ops/s
# Warmup Iteration  15: 20677.080 ops/s
# Warmup Iteration  16: 19975.606 ops/s
# Warmup Iteration  17: 20675.694 ops/s
# Warmup Iteration  18: 20684.450 ops/s
# Warmup Iteration  19: 20680.234 ops/s
# Warmup Iteration  20: 20686.732 ops/s
Iteration   1: 20682.425 ops/s
Iteration   2: 20679.289 ops/s
Iteration   3: 20672.738 ops/s
Iteration   4: 20584.503 ops/s
Iteration   5: 20609.392 ops/s
Iteration   6: 20613.224 ops/s
Iteration   7: 20617.854 ops/s
Iteration   8: 20614.811 ops/s
Iteration   9: 20617.907 ops/s
Iteration  10: 20612.049 ops/s
Iteration  11: 20546.702 ops/s
Iteration  12: 20615.187 ops/s
Iteration  13: 20679.020 ops/s
Iteration  14: 20678.223 ops/s
Iteration  15: 20675.748 ops/s
Iteration  16: 20676.211 ops/s
Iteration  17: 20680.732 ops/s
Iteration  18: 20678.152 ops/s
Iteration  19: 20683.745 ops/s
Iteration  20: 20574.622 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  20639.627 ±(99.9%) 37.659 ops/s [Average]
  (min, avg, max) = (20546.702, 20639.627, 20683.745), stdev = 43.369
  CI (99.9%): [20601.967, 20677.286] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1:·asm":
PrintAssembly processed: 193272 total address lines.
Perf output processed (skipped 23.313 seconds):
 Column 1: cycles (20284 events)
 Column 2: instructions (20357 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 493 (799 bytes) 

                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f6908389f87: mov    0xc(%rax),%esi
                     0x00007f6908389f8a: mov    %r8,%r10
                     0x00007f6908389f8d: shr    $0x3,%r9
                     0x00007f6908389f91: mov    %r9d,(%r8)
                     0x00007f6908389f94: shr    $0x9,%r10
                     0x00007f6908389f98: movabs $0x7f6903b98000,%r8
                     0x00007f6908389fa2: mov    %r12b,(%r8,%r10,1)  ;*getfield size
                                                                   ; - com.google.re2j.Machine::step@15 (line 281)
  0.12%    0.10%     0x00007f6908389fa6: mov    0x8(%rsp),%r14
  0.20%    0.34%     0x00007f6908389fab: mov    0x94(%rsp),%r10d   ;*goto
                                                                   ; - com.google.re2j.Machine::step@221 (line 281)
  1.42%    1.74%  ↗  0x00007f6908389fb3: inc    %r10d              ; OopMap{r11=Oop rax=Oop r14=Oop off=278}
                  │                                                ;*goto
                  │                                                ; - com.google.re2j.Machine::step@221 (line 281)
  0.24%    0.33%  │  0x00007f6908389fb6: test   %eax,0x15ef1044(%rip)        # 0x00007f691e27b000
                  │                                                ;*goto
                  │                                                ; - com.google.re2j.Machine::step@221 (line 281)
                  │                                                ;   {poll}
  0.25%    0.25%  │  0x00007f6908389fbc: cmp    %esi,%r10d
                  │  0x00007f6908389fbf: jge    0x00007f690838a463  ;*aload_0
                  │                                                ; - com.google.re2j.Machine::step@21 (line 284)
  0.73%    0.94%  │  0x00007f6908389fc5: mov    0xc(%rax),%esi
  0.80%    0.87%  │  0x00007f6908389fc8: mov    %r11,%r9           ;*getfield size
                  │                                                ; - com.google.re2j.Machine::step@15 (line 281)
  0.35%    0.30%  │  0x00007f6908389fcb: movzbl 0x11(%r14),%r8d    ;*getfield captures
                  │                                                ; - com.google.re2j.Machine::step@22 (line 284)
  0.40%    0.43%  │  0x00007f6908389fd0: test   %r8d,%r8d
                  │  0x00007f6908389fd3: jne    0x00007f690838a629  ;*ifne
                  │                                                ; - com.google.re2j.Machine::step@25 (line 284)
  0.76%    0.79%  │  0x00007f6908389fd9: mov    0x20(%rax),%ebp    ;*getfield denseThreadsInstructions
                  │                                                ; - com.google.re2j.Machine::step@78 (line 294)
  0.99%    1.10%  │  0x00007f6908389fdc: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f690838b665
  0.35%    0.28%  │  0x00007f6908389fe1: cmp    %r11d,%r10d
                  │  0x00007f6908389fe4: jae    0x00007f690838a5ae
  0.42%    0.41%  │  0x00007f6908389fea: lea    (%r12,%rbp,8),%r11
  0.70%    0.99%  │  0x00007f6908389fee: mov    0x10(%r11,%r10,4),%ecx  ;*aaload
                  │                                                ; - com.google.re2j.Machine::step@83 (line 294)
  0.87%    1.08%  │  0x00007f6908389ff3: mov    0xc(%r12,%rcx,8),%ebp  ;*getfield op
                  │                                                ; - com.google.re2j.Machine::step@88 (line 296)
                  │                                                ; implicit exception: dispatches to 0x00007f690838b679
  1.96%    1.79%  │  0x00007f6908389ff8: cmp    $0x6,%ebp
                  │  0x00007f6908389ffb: je     0x00007f690838a669  ;*if_icmpne
                  │                                                ; - com.google.re2j.Machine::step@93 (line 296)
  1.50%    1.67%  │  0x00007f690838a001: mov    0x8(%r12,%rcx,8),%r11d
  1.51%    1.64%  │  0x00007f690838a006: cmp    $0xf8019993,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │  0x00007f690838a00d: jne    0x00007f690838a5d5
  1.37%    1.51%  │  0x00007f690838a013: lea    (%r12,%rcx,8),%r11  ;*invokevirtual matchRune
                  │                                                ; - com.google.re2j.Machine::step@181 (line 310)
  0.13%    0.10%  │  0x00007f690838a017: mov    0xc(%r11),%ebp     ;*getfield op
                  │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@1 (line 136)
                  │                                                ; - com.google.re2j.Machine::step@181 (line 310)
  0.75%    0.74%  │  0x00007f690838a01b: cmp    $0xa,%ebp
                  │  0x00007f690838a01e: jne    0x00007f690838a3f7  ;*if_icmpne
                  │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@6 (line 136)
                  │                                                ; - com.google.re2j.Machine::step@181 (line 310)
  0.07%    0.09%  │  0x00007f690838a024: mov    0x1c(%r11),%r11d   ;*getfield outInst
                  │                                                ; - com.google.re2j.Machine::step@189 (line 311)
  0.43%    0.50%  │  0x00007f690838a028: mov    0x8(%r12,%r11,8),%ecx  ; implicit exception: dispatches to 0x00007f690838b689
  1.89%    1.66%  │  0x00007f690838a02d: lea    (%r12,%r11,8),%r8
  0.02%    0.02%  │  0x00007f690838a031: cmp    $0xf8019844,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                  │  0x00007f690838a037: jne    0x00007f690838a493  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Machine::step@202 (line 311)
  0.63%    0.60%  │  0x00007f690838a03d: mov    0x18(%r8),%edx     ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 190)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.05%  │  0x00007f690838a041: mov    %r9,%r11
  0.02%    0.04%  │  0x00007f690838a044: mov    0x10(%r9),%r9      ;*getfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 190)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
                  │                                                ; implicit exception: dispatches to 0x00007f690838b6a5
  0.02%    0.02%  │  0x00007f690838a048: cmp    $0x40,%edx
                  │  0x00007f690838a04b: jg     0x00007f690838a9e5  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 190)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.55%    0.48%  │  0x00007f690838a051: mov    $0x1,%edi
  0.02%    0.03%  │  0x00007f690838a056: mov    %edx,%ecx
  0.00%    0.02%  │  0x00007f690838a058: shl    %cl,%rdi           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 190)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  1.03%    0.90%  │  0x00007f690838a05b: mov    %r9,%rcx
  0.00%           │  0x00007f690838a05e: and    %rdi,%rcx
  0.02%    0.01%  │  0x00007f690838a061: test   %rcx,%rcx
                  ╰  0x00007f690838a064: jne    0x00007f6908389fb3  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.21%    0.26%     0x00007f690838a06a: cmp    $0x40,%edx
                     0x00007f690838a06d: jge    0x00007f690838aa45  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 193)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.42%    0.55%     0x00007f690838a073: mov    %r12b,0x18(%r11)   ;*putfield empty
                                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 193)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.01%     0x00007f690838a077: mov    0x1c(%r8),%ebp     ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.01%     0x00007f690838a07b: or     %r9,%rdi           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 193)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.18%    0.25%     0x00007f690838a07e: mov    %rdi,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 193)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.47%    0.56%     0x00007f690838a082: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f690838b6b9
  0.86%    0.78%     0x00007f690838a087: cmp    $0xf8019993,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                     0x00007f690838a08d: jne    0x00007f690838a71d
  0.51%    0.43%     0x00007f690838a093: lea    (%r12,%rbp,8),%r9  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.18%    0.18%     0x00007f690838a097: mov    0x18(%r9),%ecx     ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.30%    0.20%     0x00007f690838a09b: cmp    $0x40,%ecx
                     0x00007f690838a09e: jg     0x00007f690838aaa5  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.30%    0.32%     0x00007f690838a0a4: mov    $0x1,%ebx
  0.15%    0.11%     0x00007f690838a0a9: shl    %cl,%rbx           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.97%    0.63%     0x00007f690838a0ac: mov    %rdi,%rdx
  0.03%    0.02%     0x00007f690838a0af: and    %rbx,%rdx          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.14%    0.09%     0x00007f690838a0b2: test   %rdx,%rdx
                     0x00007f690838a0b5: jne    0x00007f690838a558  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.28%    0.25%     0x00007f690838a0bb: xor    %ebp,%ebp          ;*ireturn
                                                                   ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.22%    0.18%     0x00007f690838a0bd: test   %rdx,%rdx
  0.06%    0.02%     0x00007f690838a0c0: jne    0x00007f690838ab0d  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.35%    0.23%     0x00007f690838a0c6: cmp    $0x40,%ecx
                     0x00007f690838a0c9: jge    0x00007f690838ab71  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.16%    0.08%     0x00007f690838a0cf: or     %rbx,%rdi          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.18%    0.19%     0x00007f690838a0d2: mov    %rdi,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.04%     0x00007f690838a0d6: mov    0x20(%r11),%ebx    ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.31%    0.13%     0x00007f690838a0da: mov    0xc(%r11),%ecx     ;*getfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.14%    0.07%     0x00007f690838a0de: mov    %ecx,%edx
  0.19%    0.10%     0x00007f690838a0e0: inc    %edx               ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.06%    0.04%     0x00007f690838a0e2: mov    %edx,0xc(%r11)     ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.35%    0.09%     0x00007f690838a0e6: mov    0xc(%r12,%rbx,8),%r13d  ; implicit exception: dispatches to 0x00007f690838b6d5
  0.09%    0.09%     0x00007f690838a0eb: cmp    %r13d,%ecx
                     0x00007f690838a0ee: jae    0x00007f690838a6bd
  0.16%    0.14%     0x00007f690838a0f4: mov    0x8(%r12,%rbx,8),%esi
  0.06%    0.04%     0x00007f690838a0f9: cmp    $0xf8019808,%esi   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                     0x00007f690838a0ff: jne    0x00007f690838a77d  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.32%    0.12%     0x00007f690838a105: mov    0x20(%r8),%r8d     ;*getfield inst2
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@41 (line 196)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.10%    0.05%     0x00007f690838a109: mov    %r9,%rsi
  0.14%    0.05%     0x00007f690838a10c: shr    $0x3,%rsi          ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.01%     0x00007f690838a110: lea    (%r12,%rbx,8),%r9  ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.28%    0.41%     0x00007f690838a114: lea    0x10(%r9,%rcx,4),%rbp
  0.14%    0.02%     0x00007f690838a119: mov    %esi,0x0(%rbp)
  0.19%    0.09%     0x00007f690838a11c: mov    %rbp,%rsi
  0.03%    0.03%     0x00007f690838a11f: shr    $0x9,%rsi
  0.31%    0.20%     0x00007f690838a123: movabs $0x7f6903b98000,%rbp
  0.12%    0.12%     0x00007f690838a12d: mov    %r12b,0x0(%rbp,%rsi,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.22%    0.19%     0x00007f690838a132: mov    0x8(%r12,%r8,8),%esi  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                                                                   ; implicit exception: dispatches to 0x00007f690838b6f1
  0.04%    0.07%     0x00007f690838a137: vmovd  %r8d,%xmm4
  0.38%    0.09%     0x00007f690838a13c: vmovd  %edx,%xmm2
  0.10%    0.17%     0x00007f690838a140: vmovd  %ebx,%xmm0
  0.16%    0.17%     0x00007f690838a144: mov    %r10d,0x94(%rsp)
  0.05%    0.08%     0x00007f690838a14c: mov    %r11,%rdx
  0.27%    0.12%     0x00007f690838a14f: mov    %rax,0x30(%rsp)
  0.10%    0.11%     0x00007f690838a154: mov    %r14,0x8(%rsp)
  0.18%    0.04%     0x00007f690838a159: vmovd  %ecx,%xmm1
  0.06%    0.02%     0x00007f690838a15d: movslq %ecx,%r10
  0.27%    0.18%     0x00007f690838a160: lea    (%r9,%r10,4),%rbx  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.14%    0.10%     0x00007f690838a164: mov    %rbx,%r8
  0.16%    0.12%     0x00007f690838a167: add    $0x14,%r8          ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.06%     0x00007f690838a16b: vmovd  %xmm4,%r10d
  0.31%    0.22%     0x00007f690838a170: lea    (%r12,%r10,8),%rcx
  0.13%    0.17%     0x00007f690838a174: vmovd  %xmm1,%r10d
  0.19%    0.22%     0x00007f690838a179: add    $0x2,%r10d         ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.03%     0x00007f690838a17d: cmp    $0xf8019887,%esi   ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                     0x00007f690838a183: jne    0x00007f6908389f24  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.32%    0.28%     0x00007f690838a189: mov    0x18(%rcx),%r11d   ;*getfield pc
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@2 (line 476)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.16%    0.08%     0x00007f690838a18d: cmp    $0x40,%r11d
                     0x00007f690838a191: jg     0x00007f690838ad55  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 476)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.17%    0.11%     0x00007f690838a197: mov    %rcx,%rax
  0.08%    0.03%     0x00007f690838a19a: mov    $0x1,%esi
  0.25%    0.29%     0x00007f690838a19f: mov    %r11d,%ecx
  0.15%    0.03%     0x00007f690838a1a2: shl    %cl,%rsi           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 476)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.64%    0.21%     0x00007f690838a1a5: mov    %rdi,%r11
  0.14%    0.10%     0x00007f690838a1a8: and    %rsi,%r11          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 476)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.17%    0.02%     0x00007f690838a1ab: test   %r11,%r11
                     0x00007f690838a1ae: jne    0x00007f690838a562  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 476)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.08%    0.01%     0x00007f690838a1b4: xor    %ebp,%ebp          ;*ireturn
                                                                   ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 476)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.32%    0.25%     0x00007f690838a1b6: test   %r11,%r11
                     0x00007f690838a1b9: jne    0x00007f690838adb9  ;*ifeq
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@8 (line 476)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.15%    0.07%     0x00007f690838a1bf: mov    %ecx,%r11d
  0.17%    0.12%     0x00007f690838a1c2: cmp    $0x40,%r11d
                     0x00007f690838a1c6: jge    0x00007f690838ae15  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@19 (line 479)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.03%     0x00007f690838a1cc: or     %rsi,%rdi          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@19 (line 479)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.35%    0.38%     0x00007f690838a1cf: mov    %rdi,0x10(%rdx)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@19 (line 479)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.12%    0.14%     0x00007f690838a1d3: mov    0x1c(%rax),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@83 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.15%    0.19%     0x00007f690838a1d6: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f690838b72d
  0.09%    0.10%     0x00007f690838a1db: cmp    $0xf8019844,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                     0x00007f690838a1e2: jne    0x00007f690838a935
  0.31%    0.28%     0x00007f690838a1e8: lea    (%r12,%rbp,8),%rax  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.11%    0.02%     0x00007f690838a1ec: mov    0x18(%rax),%r11d   ;*getfield pc
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 190)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.21%    0.02%     0x00007f690838a1f0: cmp    $0x40,%r11d
                     0x00007f690838a1f4: jg     0x00007f690838af8d  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 190)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.14%    0.06%     0x00007f690838a1fa: mov    %r11d,%ecx
  0.32%    0.20%     0x00007f690838a1fd: mov    $0x1,%esi
  0.10%    0.09%     0x00007f690838a202: shl    %cl,%rsi           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 190)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.63%    0.63%     0x00007f690838a205: mov    %rdi,%r11
  0.10%    0.17%     0x00007f690838a208: and    %rsi,%r11
  0.08%    0.21%     0x00007f690838a20b: test   %r11,%r11
                     0x00007f690838a20e: jne    0x00007f690838a576  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 190)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.06%     0x00007f690838a214: mov    %ecx,%r11d
  0.30%    0.35%     0x00007f690838a217: cmp    $0x40,%r11d
                     0x00007f690838a21b: jge    0x00007f690838aff9  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 193)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.16%    0.16%     0x00007f690838a221: mov    0x1c(%rax),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.15%    0.21%     0x00007f690838a224: or     %rsi,%rdi          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 193)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.08%    0.06%     0x00007f690838a227: mov    %rdi,0x10(%rdx)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 193)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.23%    0.33%     0x00007f690838a22b: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f690838b749
  0.11%    0.14%     0x00007f690838a230: cmp    $0xf8019993,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                     0x00007f690838a236: jne    0x00007f690838a98d
  0.18%    0.19%     0x00007f690838a23c: lea    (%r12,%rbp,8),%r14  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.06%    0.05%     0x00007f690838a240: mov    0x18(%r14),%r11d   ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.30%    0.40%     0x00007f690838a244: vmovd  %r11d,%xmm3
  0.16%    0.24%     0x00007f690838a249: cmp    $0x40,%r11d
                     0x00007f690838a24d: jg     0x00007f690838b061  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.14%    0.27%     0x00007f690838a253: mov    $0x1,%esi
  0.02%    0.06%     0x00007f690838a258: mov    %r11d,%ecx
  0.31%    0.39%     0x00007f690838a25b: shl    %cl,%rsi           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.44%    0.56%     0x00007f690838a25e: mov    %rdi,%r11
  0.22%    0.21%     0x00007f690838a261: and    %rsi,%r11          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.07%    0.13%     0x00007f690838a264: test   %r11,%r11
                     0x00007f690838a267: jne    0x00007f690838a586  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.22%    0.22%     0x00007f690838a26d: xor    %ebp,%ebp          ;*ireturn
                                                                   ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.09%    0.08%     0x00007f690838a26f: test   %r11,%r11
                     0x00007f690838a272: jne    0x00007f690838b0d5  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.26%    0.33%     0x00007f690838a278: mov    %ecx,%r11d
  0.07%    0.15%     0x00007f690838a27b: cmp    $0x40,%r11d
                     0x00007f690838a27f: jge    0x00007f690838b131  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.28%    0.19%     0x00007f690838a285: mov    %r10d,0xc(%rdx)    ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.09%    0.10%     0x00007f690838a289: or     %rsi,%rdi          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.27%    0.25%     0x00007f690838a28c: mov    %rdi,0x10(%rdx)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.08%    0.11%     0x00007f690838a290: cmp    %r13d,%r10d
                     0x00007f690838a293: jae    0x00007f690838a865  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.19%    0.19%     0x00007f690838a299: mov    0x20(%rax),%r10d   ;*getfield inst2
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@41 (line 196)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.12%    0.09%     0x00007f690838a29d: mov    %r8,%rcx
  0.21%    0.26%     0x00007f690838a2a0: mov    %r14,%r11
  0.10%    0.07%     0x00007f690838a2a3: shr    $0x3,%r11
  0.22%    0.24%     0x00007f690838a2a7: mov    %r11d,(%r8)
  0.09%    0.08%     0x00007f690838a2aa: shr    $0x9,%rcx
  0.20%    0.24%     0x00007f690838a2ae: movabs $0x7f6903b98000,%r11
  0.10%    0.09%     0x00007f690838a2b8: mov    %r12b,(%r11,%rcx,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.19%    0.24%     0x00007f690838a2bc: mov    0x8(%r12,%r10,8),%ecx  ; implicit exception: dispatches to 0x00007f690838b765
  0.06%    0.08%     0x00007f690838a2c1: lea    (%r12,%r10,8),%r8
  0.26%    0.26%     0x00007f690838a2c5: cmp    $0xf8019887,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                     0x00007f690838a2cb: jne    0x00007f690838a36b  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f690838a2d1: mov    0x18(%r8),%ecx     ;*getfield pc
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@2 (line 476)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
....................................................................................................
 44.12%   42.37%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 536 (989 bytes) 

                                                                          ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                          ; - com.google.re2j.Machine::match@96 (line 199)
                            0x00007f69083a3853: cmp    0x1c(%rsp),%r10d
                            0x00007f69083a3858: jge    0x00007f69083a4d1d  ;*if_icmplt
                                                                          ; - java.lang.String::charAt@10 (line 657)
                                                                          ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                          ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                          ; - com.google.re2j.Machine::match@96 (line 199)
                            0x00007f69083a385e: cmp    0x1c(%rsp),%r10d
                            0x00007f69083a3863: jae    0x00007f69083a49b9
  0.01%    0.01%            0x00007f69083a3869: movzwl 0x10(%r8,%r10,2),%r11d  ;*caload
                                                                          ; - java.lang.String::charAt@27 (line 660)
                                                                          ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                          ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                          ; - com.google.re2j.Machine::match@96 (line 199)
                            0x00007f69083a386f: cmp    $0xd800,%r11d
                            0x00007f69083a3876: jge    0x00007f69083a4d71  ;*if_icmplt
                                                                          ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                          ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                          ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                          ; - com.google.re2j.Machine::match@96 (line 199)
                            0x00007f69083a387c: shl    $0x3,%r11d         ;*ishl
                                                                          ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                                                                          ; - com.google.re2j.Machine::match@96 (line 199)
                            0x00007f69083a3880: mov    %r11d,%r10d
           0.01%            0x00007f69083a3883: or     $0x1,%r10d
                            0x00007f69083a3887: and    $0x7,%r11d
                            0x00007f69083a388b: sar    $0x3,%r10d
                            0x00007f69083a388f: or     $0x1,%r11d         ;*ishr
                                                                          ; - com.google.re2j.Machine::match@104 (line 200)
  0.00%    0.00%            0x00007f69083a3893: vmovd  %xmm1,%r8d
                            0x00007f69083a3898: test   %r8d,%r8d
                            0x00007f69083a389b: jne    0x00007f69083a4b4d  ;*ifne
                                                                          ; - com.google.re2j.Machine::match@115 (line 204)
                            0x00007f69083a38a1: test   %edi,%edi
                            0x00007f69083a38a3: jl     0x00007f69083a41b9  ;*ifge
                                                                          ; - com.google.re2j.Utils::emptyOpContext@21 (line 179)
                                                                          ; - com.google.re2j.Machine::match@121 (line 205)
                            0x00007f69083a38a9: mov    %r10d,%ebx
  0.01%    0.02%            0x00007f69083a38ac: mov    %r11d,0x30(%rsp)
                            0x00007f69083a38b1: mov    $0x5,%r10d         ;*iload_1
                                                                          ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                                                                          ; - com.google.re2j.Machine::match@121 (line 205)
                            0x00007f69083a38b7: cmp    $0xa,%edi
                            0x00007f69083a38ba: je     0x00007f69083a41db  ;*iload_0
                                                                          ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                                                                          ; - com.google.re2j.Machine::match@121 (line 205)
                            0x00007f69083a38c0: mov    %edi,%r8d
           0.01%            0x00007f69083a38c3: add    $0xffffffbf,%r8d
                            0x00007f69083a38c7: cmp    $0x1a,%r8d
                  ╭         0x00007f69083a38cb: jb     0x00007f69083a38de  ;*if_icmple
                  │                                                       ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │                                                       ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                       ; - com.google.re2j.Machine::match@121 (line 205)
  0.00%           │         0x00007f69083a38cd: mov    %edi,%r11d
  0.00%           │         0x00007f69083a38d0: add    $0xffffff9f,%r11d
  0.00%           │         0x00007f69083a38d4: cmp    $0x1a,%r11d
                  │         0x00007f69083a38d8: jae    0x00007f69083a41f2  ;*iconst_1
                  │                                                       ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │                                                       ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                       ; - com.google.re2j.Machine::match@121 (line 205)
           0.00%  ↘         0x00007f69083a38de: or     $0x10,%r10d        ;*iload_2
                                                                          ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                          ; - com.google.re2j.Machine::match@121 (line 205)
                            0x00007f69083a38e2: movzbl 0x11(%r13),%r9d    ;*getfield captures
                                                                          ; - com.google.re2j.Machine::match@283 (line 240)
  0.01%                     0x00007f69083a38e7: mov    %rcx,%r11
  0.01%                     0x00007f69083a38ea: shl    $0x3,%r11          ;*getfield q1
                                                                          ; - com.google.re2j.Machine::match@53 (line 192)
                            0x00007f69083a38ee: mov    %r11,0x60(%rsp)
           0.01%            0x00007f69083a38f3: xor    %eax,%eax
                            0x00007f69083a38f5: xor    %r8d,%r8d
  0.01%    0.00%            0x00007f69083a38f8: mov    %r8d,0x5c(%rsp)
                   ╭        0x00007f69083a38fd: jmpq   0x00007f69083a3a87
  0.09%    0.13%   │   ↗    0x00007f69083a3902: or     $0x20,%r9d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                   │   │                                                  ; - com.google.re2j.Machine::match@322 (line 245)
  0.11%    0.23%   │   │    0x00007f69083a3906: mov    %r9d,0x2c(%rsp)    ;*iload_2
                   │   │                                                  ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   │   │                                                  ; - com.google.re2j.Machine::match@322 (line 245)
  0.32%    0.33%   │   │↗   0x00007f69083a390b: cmp    0x14(%rsp),%eax
                   │   ││   0x00007f69083a390f: je     0x00007f69083a40f6  ;*if_icmpne
                   │   ││                                                 ; - com.google.re2j.Machine::match@347 (line 246)
  0.38%    0.41%   │   ││   0x00007f69083a3915: xor    %ebx,%ebx          ;*invokespecial step
                   │   ││                                                 ; - com.google.re2j.Machine::match@355 (line 246)
  0.05%    0.08%   │   ││   0x00007f69083a3917: mov    %rax,-0x8(%rsp)
  0.17%    0.14%   │   ││   0x00007f69083a391c: mov    0x5c(%rsp),%eax
  0.13%    0.21%   │   ││   0x00007f69083a3920: mov    %eax,0x38(%rsp)
  0.48%    0.40%   │   ││   0x00007f69083a3924: mov    -0x8(%rsp),%rax
  0.46%    0.30%   │   ││   0x00007f69083a3929: mov    %r10d,0x20(%rsp)   ;*invokevirtual endPos
                   │   ││                                                 ; - com.google.re2j.Machine::match@344 (line 246)
  0.21%    0.23%   │   ││   0x00007f69083a392e: add    0x28(%rsp),%eax    ;*iadd
                   │   ││                                                 ; - com.google.re2j.Machine::match@336 (line 246)
  0.31%    0.26%   │   ││   0x00007f69083a3932: mov    %eax,0x5c(%rsp)
  0.32%    0.18%   │   ││   0x00007f69083a3936: mov    0x50(%rsp),%rsi
  0.06%    0.08%   │   ││   0x00007f69083a393b: mov    0x18(%rsp),%rdx
  0.19%    0.19%   │   ││   0x00007f69083a3940: mov    0x60(%rsp),%rcx
  0.13%    0.19%   │   ││   0x00007f69083a3945: mov    0x38(%rsp),%r8d
  0.29%    0.35%   │   ││   0x00007f69083a394a: mov    %eax,%r9d
  0.04%    0.06%   │   ││   0x00007f69083a394d: mov    0x2c(%rsp),%r11d
  0.22%    0.16%   │   ││   0x00007f69083a3952: mov    %r11d,(%rsp)
  0.12%    0.18%   │   ││   0x00007f69083a3956: mov    0x3c(%rsp),%r11d
  0.28%    0.28%   │   ││   0x00007f69083a395b: mov    %r11d,0x8(%rsp)
  0.04%    0.07%   │   ││   0x00007f69083a3960: mov    %ebx,0x10(%rsp)
  0.12%    0.18%   │   ││   0x00007f69083a3964: data16 xchg %ax,%ax
  0.16%    0.13%   │   ││   0x00007f69083a3967: callq  0x00007f69081b0020  ; OopMap{[24]=Oop [52]=NarrowOop [72]=Oop [80]=Oop [96]=Oop off=652}
                   │   ││                                                 ;*invokespecial step
                   │   ││                                                 ; - com.google.re2j.Machine::match@355 (line 246)
                   │   ││                                                 ;   {optimized virtual_call}
                   │   ││   0x00007f69083a396c: mov    0x50(%rsp),%r10
  0.77%    0.84%   │   ││   0x00007f69083a3971: movzbl 0x11(%r10),%r9d    ;*getfield captures
                   │   ││                                                 ; - com.google.re2j.Machine::match@367 (line 250)
  0.00%    0.01%   │   ││   0x00007f69083a3976: movzbl 0x10(%r10),%eax    ;*getfield matched
                   │   ││                                                 ; - com.google.re2j.Machine::match@374 (line 250)
  0.00%            │   ││   0x00007f69083a397b: mov    0x28(%rsp),%r8d
  0.66%    0.84%   │   ││   0x00007f69083a3980: test   %r8d,%r8d
                   │   ││   0x00007f69083a3983: je     0x00007f69083a40b6  ;*ifne
                   │   ││                                                 ; - com.google.re2j.Machine::match@360 (line 247)
  0.00%            │   ││   0x00007f69083a3989: test   %r9d,%r9d
                   │   ││   0x00007f69083a398c: jne    0x00007f69083a4481  ;*ifne
                   │   ││                                                 ; - com.google.re2j.Machine::match@370 (line 250)
  0.00%    0.00%   │   ││   0x00007f69083a3992: test   %eax,%eax
                   │   ││   0x00007f69083a3994: jne    0x00007f69083a4675  ;*ifeq
                   │   ││                                                 ; - com.google.re2j.Machine::match@377 (line 250)
  0.00%            │   ││   0x00007f69083a399a: mov    0x48(%rsp),%rdx
  0.68%    0.71%   │   ││   0x00007f69083a399f: mov    0x10(%rdx),%ecx    ;*getfield end
                   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                   │   ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.00%    0.01%   │   ││   0x00007f69083a39a2: mov    0xc(%rdx),%r11d    ;*getfield start
                   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                   │   ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.00%    0.01%   │   ││   0x00007f69083a39a6: mov    %r11d,0x24(%rsp)
  0.00%    0.00%   │   ││   0x00007f69083a39ab: mov    0x14(%rdx),%r11d   ;*getfield str
                   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                   │   ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.64%    0.89%   │   ││   0x00007f69083a39af: mov    0x20(%rsp),%ebp
           0.00%   │   ││   0x00007f69083a39b3: cmp    $0xffffffff,%ebp
                   │   ││   0x00007f69083a39b6: je     0x00007f69083a4100  ;*if_icmpeq
                   │   ││                                                 ; - com.google.re2j.Machine::match@399 (line 258)
  0.00%            │   ││   0x00007f69083a39bc: mov    0x30(%rsp),%ebx
           0.00%   │   ││   0x00007f69083a39c0: add    0x5c(%rsp),%ebx
  0.69%    0.76%   │   ││   0x00007f69083a39c4: add    0x24(%rsp),%ebx    ;*iadd
                   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                   │   ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.21%    0.22%   │   ││   0x00007f69083a39c8: cmp    %ecx,%ebx
                   │   ││   0x00007f69083a39ca: jge    0x00007f69083a4121  ;*if_icmpge
                   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                   │   ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.41%    0.52%   │   ││   0x00007f69083a39d0: mov    %ebp,%r14d
                   │   ││   0x00007f69083a39d3: mov    %r10,%rdi
  0.24%    0.36%   │   ││   0x00007f69083a39d6: mov    0x8(%r12,%r11,8),%r8d  ; implicit exception: dispatches to 0x00007f69083a535d
  0.05%    0.05%   │   ││   0x00007f69083a39db: cmp    $0xf80002da,%r8d   ;   {metadata(&apos;java/lang/String&apos;)}
                   │   ││   0x00007f69083a39e2: jne    0x00007f69083a4395
  0.33%    0.59%   │   ││   0x00007f69083a39e8: lea    (%r12,%r11,8),%r13  ;*invokeinterface charAt
                   │   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │   ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
                   │   ││   0x00007f69083a39ec: test   %ebx,%ebx
                   │   ││   0x00007f69083a39ee: jl     0x00007f69083a44c1  ;*iflt
                   │   ││                                                 ; - java.lang.String::charAt@1 (line 657)
                   │   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │   ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.35%    0.27%   │   ││   0x00007f69083a39f4: mov    0xc(%r13),%r8d     ;*getfield value
                   │   ││                                                 ; - java.lang.String::charAt@6 (line 657)
                   │   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │   ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.01%    0.00%   │   ││   0x00007f69083a39f8: mov    0xc(%r12,%r8,8),%ebp  ;*arraylength
                   │   ││                                                 ; - java.lang.String::charAt@9 (line 657)
                   │   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │   ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
                   │   ││                                                 ; implicit exception: dispatches to 0x00007f69083a5371
  1.92%    1.75%   │   ││   0x00007f69083a39fd: cmp    %ebp,%ebx
                   │   ││   0x00007f69083a39ff: jge    0x00007f69083a46b5  ;*if_icmplt
                   │   ││                                                 ; - java.lang.String::charAt@10 (line 657)
                   │   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │   ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.80%    0.70%   │   ││   0x00007f69083a3a05: cmp    %ebp,%ebx
                   │   ││   0x00007f69083a3a07: jae    0x00007f69083a4291
  0.19%    0.18%   │   ││   0x00007f69083a3a0d: lea    (%r12,%r8,8),%r10
                   │   ││   0x00007f69083a3a11: movzwl 0x10(%r10,%rbx,2),%r8d  ;*caload
                   │   ││                                                 ; - java.lang.String::charAt@27 (line 660)
                   │   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │   ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.22%    0.23%   │   ││   0x00007f69083a3a17: cmp    $0xd800,%r8d
                   │   ││   0x00007f69083a3a1e: jge    0x00007f69083a4719  ;*if_icmplt
                   │   ││                                                 ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   │   ││                                                 ; - java.lang.Character::codePointAt@9 (line 4867)
                   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │   ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.62%    0.58%   │   ││   0x00007f69083a3a24: shl    $0x3,%r8d          ;*ishl
                   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                   │   ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.41%    0.45%   │   ││   0x00007f69083a3a28: mov    %r8d,%ebx
                   │   ││   0x00007f69083a3a2b: or     $0x1,%ebx
  0.56%    0.69%   │   ││   0x00007f69083a3a2e: and    $0x7,%r8d
  0.07%    0.10%   │   ││   0x00007f69083a3a32: sar    $0x3,%ebx          ;*ishr
                   │   ││                                                 ; - com.google.re2j.Machine::match@415 (line 260)
  0.70%    0.71%   │   ││   0x00007f69083a3a35: or     $0x1,%r8d          ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                   │   ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.05%    0.03%   │   ││   0x00007f69083a3a39: mov    %rdi,%r10
                   │   ││   0x00007f69083a3a3c: mov    %r14d,%ebp         ;*aload
                   │   ││                                                 ; - com.google.re2j.Machine::match@425 (line 263)
  0.10%    0.07%   │   ││   0x00007f69083a3a3f: mov    %r10,%r13          ; OopMap{r10=Oop r11=NarrowOop r13=Oop [24]=Oop [72]=Oop [96]=Oop off=866}
                   │   ││                                                 ;*goto
                   │   ││                                                 ; - com.google.re2j.Machine::match@437 (line 266)
  0.66%    0.72%   │   ││   0x00007f69083a3a42: test   %eax,0x15ed75b8(%rip)        # 0x00007f691e27b000
                   │   ││                                                 ;*goto
                   │   ││                                                 ; - com.google.re2j.Machine::match@437 (line 266)
                   │   ││                                                 ;   {poll}
  0.05%    0.02%   │   ││   0x00007f69083a3a48: mov    0x28(%r10),%r14d   ;*getfield matchcap
                   │   ││                                                 ; - com.google.re2j.Machine::match@307 (line 243)
           0.00%   │   ││   0x00007f69083a3a4c: mov    0x14(%r10),%esi    ;*getfield re2
                   │   ││                                                 ; - com.google.re2j.Machine::match@169 (line 220)
  0.06%    0.09%   │   ││   0x00007f69083a3a50: mov    0x60(%rsp),%r10
  0.54%    0.72%   │   ││   0x00007f69083a3a55: mov    %r10,%rdi
  0.02%    0.04%   │   ││   0x00007f69083a3a58: shr    $0x3,%rdi
                   │   ││   0x00007f69083a3a5c: mov    %edi,0x34(%rsp)
  0.07%    0.08%   │   ││   0x00007f69083a3a60: mov    %ebp,%edi
  0.47%    0.72%   │   ││   0x00007f69083a3a62: mov    0x2c(%rsp),%r10d
  0.03%    0.02%   │   ││   0x00007f69083a3a67: mov    0x18(%rsp),%rdx
  0.01%    0.00%   │   ││   0x00007f69083a3a6c: mov    %rdx,0x60(%rsp)
  0.08%    0.07%   │   ││   0x00007f69083a3a71: mov    0x30(%rsp),%ebp
  0.65%    0.63%   │   ││   0x00007f69083a3a75: mov    %ebp,0x28(%rsp)
  0.02%    0.03%   │   ││   0x00007f69083a3a79: mov    %r8d,0x30(%rsp)
                   │   ││   0x00007f69083a3a7e: mov    %ecx,0x14(%rsp)
  0.06%    0.09%   │   ││   0x00007f69083a3a82: vmovd  %r11d,%xmm2        ;*getfield matchcap
                   │   ││                                                 ; - com.google.re2j.Machine::match@307 (line 243)
  0.54%    0.53%   ↘   ││   0x00007f69083a3a87: mov    0x34(%rsp),%r11d
  0.05%    0.02%       ││   0x00007f69083a3a8c: movzbl 0x18(%r12,%r11,8),%r8d  ; implicit exception: dispatches to 0x00007f69083a5305
  0.04%    0.06%       ││   0x00007f69083a3a92: shl    $0x3,%r11          ;*aload
                       ││                                                 ; - com.google.re2j.Machine::match@136 (line 211)
  0.05%    0.08%       ││   0x00007f69083a3a96: mov    %r11,0x18(%rsp)
  0.62%    0.56%       ││   0x00007f69083a3a9b: test   %r8d,%r8d
                       ││   0x00007f69083a3a9e: jne    0x00007f69083a3d23  ;*aload_0
                       ││                                                 ; - com.google.re2j.Machine::match@267 (line 237)
  0.03%    0.02%       ││   0x00007f69083a3aa4: test   %eax,%eax
                       ││   0x00007f69083a3aa6: jne    0x00007f69083a43f1  ;*ifne
                       ││                                                 ; - com.google.re2j.Machine::match@271 (line 237)
                       ││   0x00007f69083a3aac: mov    0x5c(%rsp),%r11d
  0.06%    0.11%       ││   0x00007f69083a3ab1: test   %r11d,%r11d
                       ││   0x00007f69083a3ab4: je     0x00007f69083a41a6  ;*ifeq
                       ││                                                 ; - com.google.re2j.Machine::match@275 (line 237)
  0.56%    0.60%       ││   0x00007f69083a3aba: mov    0x3c(%rsp),%edx
  0.03%    0.04%       ││   0x00007f69083a3abe: test   %edx,%edx
  0.00%                ││   0x00007f69083a3ac0: jne    0x00007f69083a4439  ;*aload_0
                       ││                                                 ; - com.google.re2j.Machine::match@282 (line 240)
  0.04%    0.06%       ││   0x00007f69083a3ac6: test   %r9d,%r9d
                       ││   0x00007f69083a3ac9: jne    0x00007f69083a4525  ;*ifeq
                       ││                                                 ; - com.google.re2j.Machine::match@286 (line 240)
  0.44%    0.59%       ││   0x00007f69083a3acf: mov    %r13,%r9
  0.06%    0.04%       ││   0x00007f69083a3ad2: mov    0x18(%r13),%r8d    ;*getfield prog
                       ││                                                 ; - com.google.re2j.Machine::match@297 (line 243)
                       ││   0x00007f69083a3ad6: mov    0x1c(%r12,%r8,8),%ebp  ;*getfield startInst
                       ││                                                 ; - com.google.re2j.Machine::match@300 (line 243)
                       ││                                                 ; implicit exception: dispatches to 0x00007f69083a5315
  0.06%    0.13%       ││   0x00007f69083a3adb: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f69083a5325
  0.60%    0.52%       ││   0x00007f69083a3ae0: cmp    $0xf8019993,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                       ││   0x00007f69083a3ae6: jne    0x00007f69083a42ed
  0.04%    0.01%       ││   0x00007f69083a3aec: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                       ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
                       ││   0x00007f69083a3af0: mov    0x18(%r10),%ecx    ;*getfield pc
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                       ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.07%    0.06%       ││   0x00007f69083a3af4: cmp    $0x40,%ecx
                       ││   0x00007f69083a3af7: jg     0x00007f69083a4565  ;*if_icmpgt
                       ││                                                 ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                       ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.57%    0.41%       ││   0x00007f69083a3afd: mov    %r10,%r13
  0.04%                ││   0x00007f69083a3b00: mov    0x5c(%rsp),%eax
                       ││   0x00007f69083a3b04: mov    %edx,0x3c(%rsp)
  0.05%    0.04%       ││   0x00007f69083a3b08: mov    %r9,0x50(%rsp)
  0.56%    0.17%       ││   0x00007f69083a3b0d: mov    $0x1,%r10d
  0.02%    0.01%       ││   0x00007f69083a3b13: shl    %cl,%r10           ;*lshl
                       ││                                                 ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                       ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.59%    0.17%       ││   0x00007f69083a3b16: mov    0x34(%rsp),%r8d
  0.05%    0.01%       ││   0x00007f69083a3b1b: mov    0x10(%r12,%r8,8),%r9  ;*getfield pcsl
                       ││                                                 ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                       ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.00%                ││   0x00007f69083a3b20: mov    %r9,%r8
  0.08%    0.02%       ││   0x00007f69083a3b23: and    %r10,%r8           ;*land
                       ││                                                 ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                       ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.59%    0.23%       ││   0x00007f69083a3b26: test   %r8,%r8
                       ││   0x00007f69083a3b29: jne    0x00007f69083a41af  ;*ifeq
                       ││                                                 ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                       ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.04%    0.03%       ││   0x00007f69083a3b2f: xor    %ebp,%ebp          ;*ireturn
                       ││                                                 ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                       ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
                       ││   0x00007f69083a3b31: test   %r8,%r8
                       ││   0x00007f69083a3b34: jne    0x00007f69083a45c1  ;*ifeq
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                       ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.07%    0.03%       ││   0x00007f69083a3b3a: cmp    $0x40,%ecx
                       ││   0x00007f69083a3b3d: jge    0x00007f69083a461d  ;*if_icmpge
                       ││                                                 ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                       ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.52%    0.40%       ││   0x00007f69083a3b43: mov    0x34(%rsp),%r8d
  0.03%    0.02%       ││   0x00007f69083a3b48: mov    %r12b,0x18(%r12,%r8,8)  ;*putfield empty
                       ││                                                 ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                       ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
           0.00%       ││   0x00007f69083a3b4d: mov    0xc(%r12,%r8,8),%r11d  ;*getfield size
                       ││                                                 ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                       ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.08%    0.02%       ││   0x00007f69083a3b52: mov    0x20(%r12,%r8,8),%r8d  ;*getfield denseThreadsInstructions
                       ││                                                 ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                       ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.51%    0.48%       ││   0x00007f69083a3b57: or     %r9,%r10
  0.04%    0.06%       ││   0x00007f69083a3b5a: mov    0x34(%rsp),%ecx
                       ││   0x00007f69083a3b5e: mov    %r10,0x10(%r12,%rcx,8)  ;*putfield pcsl
                       ││                                                 ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                       ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.07%    0.07%       ││   0x00007f69083a3b63: mov    %r11d,%r9d
  0.56%    0.41%       ││   0x00007f69083a3b66: inc    %r9d
  0.04%                ││   0x00007f69083a3b69: mov    %r9d,0xc(%r12,%rcx,8)  ;*putfield size
                       ││                                                 ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                       ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.01%    0.03%       ││   0x00007f69083a3b6e: mov    0xc(%r12,%r8,8),%r9d  ; implicit exception: dispatches to 0x00007f69083a5345
  0.16%    0.13%       ││   0x00007f69083a3b73: cmp    %r9d,%r11d
                       ││   0x00007f69083a3b76: jae    0x00007f69083a423b
  0.73%    0.41%       ││   0x00007f69083a3b7c: mov    0x8(%r12,%r8,8),%r9d
  0.01%    0.02%       ││   0x00007f69083a3b81: cmp    $0xf8019808,%r9d   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                       ││   0x00007f69083a3b88: jne    0x00007f69083a433d  ;*aastore
                       ││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                       ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.08%    0.04%       ││   0x00007f69083a3b8e: test   %edi,%edi
                    ╭  ││   0x00007f69083a3b90: jl     0x00007f69083a3c36  ;*ifge
                    │  ││                                                 ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                    │  ││                                                 ; - com.google.re2j.Machine::match@322 (line 245)
  0.03%    0.05%    │  ││   0x00007f69083a3b96: xor    %r9d,%r9d          ;*iload_0
                    │  ││                                                 ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                    │  ││                                                 ; - com.google.re2j.Machine::match@322 (line 245)
  0.46%    0.45%    │  ││↗  0x00007f69083a3b99: cmp    $0xa,%edi
                    │  │││  0x00007f69083a3b9c: je     0x00007f69083a410f  ;*iload_1
                    │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                    │  │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.02%    0.02%    │  │││  0x00007f69083a3ba2: mov    %ebx,%r10d
  0.07%    0.07%    │  │││  0x00007f69083a3ba5: test   %ebx,%ebx
                    │  │││  0x00007f69083a3ba7: jl     0x00007f69083a3f8c  ;*iload_1
                    │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                    │  │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.08%    0.03%    │  │││  0x00007f69083a3bad: cmp    $0xa,%ebx
                    │  │││  0x00007f69083a3bb0: je     0x00007f69083a4118  ;*iload_0
                    │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                    │  │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.54%    0.53%    │  │││  0x00007f69083a3bb6: mov    %r13,%rcx
  0.02%    0.01%    │  │││  0x00007f69083a3bb9: shr    $0x3,%rcx          ;*aastore
                    │  │││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                    │  │││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                    │  │││                                                ; - com.google.re2j.Machine::match@314 (line 243)
  0.09%    0.04%    │  │││  0x00007f69083a3bbd: shl    $0x3,%r8           ;*getfield denseThreadsInstructions
                    │  │││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                    │  │││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                    │  │││                                                ; - com.google.re2j.Machine::match@314 (line 243)
  0.07%    0.05%    │  │││  0x00007f69083a3bc1: lea    0x10(%r8,%r11,4),%r11
  0.40%    0.50%    │  │││  0x00007f69083a3bc6: mov    %ecx,(%r11)
  0.75%    1.02%    │  │││  0x00007f69083a3bc9: mov    %edi,%ecx
  0.03%    0.04%    │  │││  0x00007f69083a3bcb: add    $0xffffffbf,%ecx
  0.04%    0.02%    │  │││  0x00007f69083a3bce: shr    $0x9,%r11
  0.32%    0.34%    │  │││  0x00007f69083a3bd2: movabs $0x7f6903b98000,%r8
  0.29%    0.25%    │  │││  0x00007f69083a3bdc: mov    %r12b,(%r8,%r11,1)  ;*aastore
                    │  │││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                    │  │││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                    │  │││                                                ; - com.google.re2j.Machine::match@314 (line 243)
  0.43%    0.59%    │  │││  0x00007f69083a3be0: cmp    $0x1a,%ecx
                    │╭ │││  0x00007f69083a3be3: jb     0x00007f69083a3bf6  ;*if_icmple
                    ││ │││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                    ││ │││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    ││ │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.02%    0.02%    ││ │││  0x00007f69083a3be5: mov    %edi,%r8d
  0.27%    0.24%    ││ │││  0x00007f69083a3be8: add    $0xffffff9f,%r8d
  0.26%    0.29%    ││ │││  0x00007f69083a3bec: cmp    $0x1a,%r8d
                    ││ │││  0x00007f69083a3bf0: jae    0x00007f69083a4163  ;*iconst_1
                    ││ │││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                    ││ │││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    ││ │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.17%    0.18%    │↘ │││  0x00007f69083a3bf6: mov    $0x1,%ebp          ;*ireturn
                    │  │││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                    │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    │  │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.05%    0.12%    │  │││  0x00007f69083a3bfb: mov    %ebx,%r11d
  0.20%    0.19%    │  │││  0x00007f69083a3bfe: add    $0xffffffbf,%r11d
  0.24%    0.29%    │  │││  0x00007f69083a3c02: cmp    $0x1a,%r11d
                    │ ╭│││  0x00007f69083a3c06: jb     0x00007f69083a3c19  ;*if_icmple
                    │ ││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                    │ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    │ ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.17%    0.19%    │ ││││  0x00007f69083a3c08: mov    %ebx,%r8d
  0.07%    0.06%    │ ││││  0x00007f69083a3c0b: add    $0xffffff9f,%r8d
  0.20%    0.22%    │ ││││  0x00007f69083a3c0f: cmp    $0x1a,%r8d
                    │ ││││  0x00007f69083a3c13: jae    0x00007f69083a4184  ;*iconst_1
                    │ ││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                    │ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    │ ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.19%    0.21%    │ ↘│││  0x00007f69083a3c19: mov    $0x1,%r11d         ;*ireturn
                    │  │││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                    │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    │  │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.16%    0.19%    │  │││  0x00007f69083a3c1f: cmp    %r11d,%ebp
                    │  ╰││  0x00007f69083a3c22: je     0x00007f69083a3902  ;*if_icmpeq
                    │   ││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                    │   ││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.22%    0.16%    │   ││  0x00007f69083a3c28: or     $0x10,%r9d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                    │   ││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.03%    0.06%    │   ││  0x00007f69083a3c2c: mov    %r9d,0x2c(%rsp)
  0.38%    0.35%    │   ╰│  0x00007f69083a3c31: jmpq   0x00007f69083a390b
                    ↘    │  0x00007f69083a3c36: mov    $0x5,%r9d
                         ╰  0x00007f69083a3c3c: jmpq   0x00007f69083a3b99
  0.01%                     0x00007f69083a3c41: mov    %r11d,0x54(%rsp)
           0.00%            0x00007f69083a3c46: jmpq   0x00007f69083a3ec6
                            0x00007f69083a3c4b: mov    0x54(%rsp),%r11d
                            0x00007f69083a3c50: add    $0x2,%r11d
                            0x00007f69083a3c54: mov    %r11d,0x54(%rsp)
                            0x00007f69083a3c59: mov    0x54(%rsp),%r11d
                            0x00007f69083a3c5e: inc    %r11d
                            0x00007f69083a3c61: mov    %r11d,0x50(%rsp)
                            0x00007f69083a3c66: jmp    0x00007f69083a3c93
                            0x00007f69083a3c68: mov    0x54(%rsp),%r11d
                            0x00007f69083a3c6d: add    $0x2,%r11d
                            0x00007f69083a3c71: mov    %r11d,0x50(%rsp)
....................................................................................................
 33.33%   33.20%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 493 (488 bytes) 

                                                                      ; - com.google.re2j.Machine::step@202 (line 311)
                                                                      ;   {optimized virtual_call}
                        0x00007f690838a350: test   %rax,%rax
                        0x00007f690838a353: jne    0x00007f690838b3f9  ;*ifnull
                                                                      ; - com.google.re2j.Machine::step@209 (line 313)
                        0x00007f690838a359: mov    0x30(%rsp),%rax
                        0x00007f690838a35e: mov    0xc(%rax),%esi     ;*getfield size
                                                                      ; - com.google.re2j.Machine::step@15 (line 281)
                        0x00007f690838a361: mov    0x10(%rsp),%r11
                        0x00007f690838a366: jmpq   0x00007f6908389fa6
  0.11%    0.15%        0x00007f690838a36b: cmp    $0xf8019993,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                        0x00007f690838a371: jne    0x00007f690838ac99  ;*invokevirtual add
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.14%    0.35%        0x00007f690838a377: mov    0x18(%r8),%ecx     ;*getfield pc
                                                                      ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.09%    0.12%        0x00007f690838a37b: cmp    $0x40,%ecx
                        0x00007f690838a37e: jg     0x00007f690838b2d5  ;*if_icmpgt
                                                                      ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.25%    0.35%        0x00007f690838a384: mov    $0x1,%r10d
  0.09%    0.12%        0x00007f690838a38a: shl    %cl,%r10           ;*lshl
                                                                      ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.54%    0.52%        0x00007f690838a38d: mov    %rdi,%r11
  0.14%    0.06%        0x00007f690838a390: and    %r10,%r11          ;*land
                                                                      ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.17%    0.11%        0x00007f690838a393: test   %r11,%r11
                        0x00007f690838a396: jne    0x00007f690838a59a  ;*ifeq
                                                                      ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.07%    0.07%        0x00007f690838a39c: xor    %ebp,%ebp          ;*ireturn
                                                                      ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.18%    0.32%        0x00007f690838a39e: test   %r11,%r11
                        0x00007f690838a3a1: jne    0x00007f690838b341  ;*ifeq
                                                                      ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.08%    0.15%        0x00007f690838a3a7: cmp    $0x40,%ecx
                        0x00007f690838a3aa: jge    0x00007f690838b38d  ;*if_icmpge
                                                                      ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.22%    0.27%        0x00007f690838a3b0: or     %r10,%rdi
  0.08%    0.11%        0x00007f690838a3b3: mov    %rdx,%r11
  0.21%    0.31%        0x00007f690838a3b6: mov    %rdi,0x10(%r11)    ;*putfield pcsl
                                                                      ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.12%    0.20%        0x00007f690838a3ba: add    $0x18,%rbx
  0.26%    0.27%        0x00007f690838a3be: mov    %r8,%r10
  0.10%    0.07%        0x00007f690838a3c1: shr    $0x3,%r10
  0.22%    0.28%        0x00007f690838a3c5: mov    %r10d,(%rbx)       ;*aastore
                                                                      ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.09%    0.14%        0x00007f690838a3c8: mov    %rbx,%r10
  0.24%    0.24%        0x00007f690838a3cb: vmovd  %xmm1,%r9d
  0.07%    0.09%        0x00007f690838a3d0: add    $0x3,%r9d
  0.19%    0.39%        0x00007f690838a3d4: mov    %r9d,0xc(%r11)     ;*putfield size
                                                                      ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.13%    0.11%        0x00007f690838a3d8: mov    0x30(%rsp),%rax
  0.21%    0.25%        0x00007f690838a3dd: mov    0xc(%rax),%esi     ;*getfield size
                                                                      ; - com.google.re2j.Machine::step@15 (line 281)
  0.10%    0.08%        0x00007f690838a3e0: shr    $0x9,%r10
  0.23%    0.10%        0x00007f690838a3e4: movabs $0x7f6903b98000,%r8
  0.14%    0.04%        0x00007f690838a3ee: mov    %r12b,(%r8,%r10,1)  ;*aastore
                                                                      ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.28%    0.20%        0x00007f690838a3f2: jmpq   0x00007f6908389fa6
  0.63%    0.68%        0x00007f690838a3f7: cmp    $0xb,%ebp
                        0x00007f690838a3fa: je     0x00007f690838a7dd  ;*if_icmpne
                                                                      ; - com.google.re2j.Inst$RuneInst::matchRune@17 (line 140)
                                                                      ; - com.google.re2j.Machine::step@181 (line 310)
  0.87%    1.17%        0x00007f690838a400: mov    0x20(%r11),%ecx    ;*getfield f0
                                                                      ; - com.google.re2j.Inst$RuneInst::matchRune@42 (line 145)
                                                                      ; - com.google.re2j.Machine::step@181 (line 310)
  0.04%    0.11%        0x00007f690838a404: cmp    $0x9,%ebp
                  ╭     0x00007f690838a407: je     0x00007f690838a44e  ;*if_icmpne
                  │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@38 (line 144)
                  │                                                   ; - com.google.re2j.Machine::step@181 (line 310)
  0.41%    0.39%  │     0x00007f690838a409: cmp    $0xc,%ebp
                  │     0x00007f690838a40c: jne    0x00007f690838abd9  ;*if_icmpne
                  │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@61 (line 148)
                  │                                                   ; - com.google.re2j.Machine::step@181 (line 310)
  0.35%    0.41%  │     0x00007f690838a412: cmp    0x28(%rsp),%ecx
                  │╭    0x00007f690838a416: je     0x00007f690838a54d  ;*if_icmpeq
                  ││                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@69 (line 149)
                  ││                                                  ; - com.google.re2j.Machine::step@181 (line 310)
  0.47%    0.54%  ││    0x00007f690838a41c: mov    0x24(%r11),%ecx    ;*getfield f1
                  ││                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@73 (line 149)
                  ││                                                  ; - com.google.re2j.Machine::step@181 (line 310)
  0.02%    0.03%  ││    0x00007f690838a420: cmp    0x28(%rsp),%ecx
                  ││╭   0x00007f690838a424: je     0x00007f690838a54d  ;*if_icmpeq
                  │││                                                 ; - com.google.re2j.Inst$RuneInst::matchRune@77 (line 149)
                  │││                                                 ; - com.google.re2j.Machine::step@181 (line 310)
  0.37%    0.36%  │││   0x00007f690838a42a: mov    0x28(%r11),%ebp    ;*getfield f2
                  │││                                                 ; - com.google.re2j.Inst$RuneInst::matchRune@81 (line 149)
                  │││                                                 ; - com.google.re2j.Machine::step@181 (line 310)
  0.13%    0.13%  │││   0x00007f690838a42e: cmp    0x28(%rsp),%ebp
                  │││   0x00007f690838a432: je     0x00007f690838ac11  ;*if_icmpeq
                  │││                                                 ; - com.google.re2j.Inst$RuneInst::matchRune@85 (line 149)
                  │││                                                 ; - com.google.re2j.Machine::step@181 (line 310)
  0.45%    0.50%  │││   0x00007f690838a438: mov    0x2c(%r11),%ebp    ;*getfield f3
                  │││                                                 ; - com.google.re2j.Inst$RuneInst::matchRune@89 (line 149)
                  │││                                                 ; - com.google.re2j.Machine::step@181 (line 310)
  0.02%    0.04%  │││   0x00007f690838a43c: cmp    0x28(%rsp),%ebp
  0.19%    0.28%  │││   0x00007f690838a440: je     0x00007f690838ac49  ;*if_icmpne
                  │││                                                 ; - com.google.re2j.Inst$RuneInst::matchRune@93 (line 149)
                  │││                                                 ; - com.google.re2j.Machine::step@181 (line 310)
  0.38%    0.53%  │││   0x00007f690838a446: xor    %r8d,%r8d
  0.13%    0.11%  │││   0x00007f690838a449: jmpq   0x00007f6908389f13
  0.77%    0.93%  ↘││   0x00007f690838a44e: cmp    0x28(%rsp),%ecx
                   ││   0x00007f690838a452: jne    0x00007f6908389f10  ;*if_icmpne
                   ││                                                 ; - com.google.re2j.Inst$RuneInst::matchRune@46 (line 145)
                   ││                                                 ; - com.google.re2j.Machine::step@181 (line 310)
  0.01%    0.00%   ││   0x00007f690838a458: mov    $0x1,%r8d
           0.01%   ││   0x00007f690838a45e: jmpq   0x00007f6908389f13  ;*if_icmpge
                   ││                                                 ; - com.google.re2j.Machine::step@18 (line 281)
  0.60%    0.78%   ││   0x00007f690838a463: movzbl 0x18(%rax),%r10d
                   ││   0x00007f690838a468: test   %r10d,%r10d
                   ││╭  0x00007f690838a46b: jne    0x00007f690838a484  ;*ifeq
                   │││                                                ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                   │││                                                ; - com.google.re2j.Machine::step@225 (line 317)
           0.00%   │││  0x00007f690838a46d: mov    %r12d,0xc(%rax)    ;*putfield size
                   │││                                                ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                   │││                                                ; - com.google.re2j.Machine::step@225 (line 317)
  0.00%            │││  0x00007f690838a471: mov    0x1c(%rax),%ebp    ;*getfield pcs
                   │││                                                ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                   │││                                                ; - com.google.re2j.Machine::step@225 (line 317)
  0.80%    0.97%   │││  0x00007f690838a474: movb   $0x1,0x18(%rax)    ;*putfield empty
                   │││                                                ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                   │││                                                ; - com.google.re2j.Machine::step@225 (line 317)
  0.00%            │││  0x00007f690838a478: mov    %r12,0x10(%rax)    ;*putfield pcsl
                   │││                                                ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                   │││                                                ; - com.google.re2j.Machine::step@225 (line 317)
                   │││  0x00007f690838a47c: test   %ebp,%ebp
                   │││  0x00007f690838a47e: jne    0x00007f690838ac81  ;*getfield size
                   │││                                                ; - com.google.re2j.Machine::step@15 (line 281)
  0.00%            ││↘  0x00007f690838a484: add    $0x80,%rsp
  0.64%    0.89%   ││   0x00007f690838a48b: pop    %rbp
  0.01%            ││   0x00007f690838a48c: test   %eax,0x15ef0b6e(%rip)        # 0x00007f691e27b000
                   ││                                                 ;   {poll_return}
  0.01%    0.00%   ││   0x00007f690838a492: retq   
  0.02%    0.00%   ││   0x00007f690838a493: cmp    $0xf8019993,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                   ││   0x00007f690838a499: jne    0x00007f690838b4a1  ;*invokevirtual add
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 311)
                   ││   0x00007f690838a49f: mov    0x18(%r8),%r13d    ;*getfield pc
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 311)
           0.00%   ││   0x00007f690838a4a3: mov    %r9,%r11
                   ││   0x00007f690838a4a6: mov    0x10(%r9),%r9      ;*getfield pcsl
                   ││                                                 ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 311)
                   ││                                                 ; implicit exception: dispatches to 0x00007f690838b79d
  0.04%    0.01%   ││   0x00007f690838a4aa: cmp    $0x40,%r13d
                   ││   0x00007f690838a4ae: jg     0x00007f690838b551  ;*if_icmpgt
                   ││                                                 ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 311)
  0.00%    0.00%   ││   0x00007f690838a4b4: mov    $0x1,%ebx
                   ││   0x00007f690838a4b9: mov    %r13d,%ecx
                   ││   0x00007f690838a4bc: shl    %cl,%rbx           ;*lshl
                   ││                                                 ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 311)
  0.03%    0.04%   ││   0x00007f690838a4bf: mov    %r9,%rcx
                   ││   0x00007f690838a4c2: and    %rbx,%rcx          ;*land
                   ││                                                 ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 311)
  0.00%            ││   0x00007f690838a4c5: test   %rcx,%rcx
                   ││   0x00007f690838a4c8: jne    0x00007f690838a5a4  ;*ifeq
                   ││                                                 ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 311)
  0.01%    0.01%   ││   0x00007f690838a4ce: xor    %ebp,%ebp          ;*ireturn
                   ││                                                 ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 311)
  0.00%            ││   0x00007f690838a4d0: test   %rcx,%rcx
                   ││   0x00007f690838a4d3: jne    0x00007f690838b5b1  ;*ifeq
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 311)
  0.01%    0.01%   ││   0x00007f690838a4d9: cmp    $0x40,%r13d
                   ││   0x00007f690838a4dd: jge    0x00007f690838b5f5  ;*if_icmpge
                   ││                                                 ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 311)
                   ││   0x00007f690838a4e3: mov    %r12b,0x18(%r11)   ;*putfield empty
                   ││                                                 ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 311)
                   ││   0x00007f690838a4e7: mov    0xc(%r11),%r13d    ;*getfield size
                   ││                                                 ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 311)
  0.00%            ││   0x00007f690838a4eb: or     %r9,%rbx
  0.00%    0.01%   ││   0x00007f690838a4ee: mov    %rbx,0x10(%r11)    ;*putfield pcsl
                   ││                                                 ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 311)
  0.01%    0.01%   ││   0x00007f690838a4f2: mov    0x20(%r11),%ebp    ;*getfield denseThreadsInstructions
                   ││                                                 ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 311)
  0.00%            ││   0x00007f690838a4f6: mov    %r13d,%r9d
  0.01%            ││   0x00007f690838a4f9: inc    %r9d
  0.00%            ││   0x00007f690838a4fc: mov    %r9d,0xc(%r11)     ;*putfield size
                   ││                                                 ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 311)
  0.01%            ││   0x00007f690838a500: mov    0xc(%r12,%rbp,8),%r9d  ; implicit exception: dispatches to 0x00007f690838b7b1
  0.05%            ││   0x00007f690838a505: cmp    %r9d,%r13d
                   ││   0x00007f690838a508: jae    0x00007f690838b445
  0.01%    0.01%   ││   0x00007f690838a50e: mov    0x8(%r12,%rbp,8),%r9d
                   ││   0x00007f690838a513: cmp    $0xf8019808,%r9d   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                   ││   0x00007f690838a51a: jne    0x00007f690838b4f5  ;*aastore
                   ││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 311)
  0.00%            ││   0x00007f690838a520: mov    0xc(%rax),%esi     ;*getfield size
                   ││                                                 ; - com.google.re2j.Machine::step@15 (line 281)
                   ││   0x00007f690838a523: mov    %r8,%r9
  0.01%            ││   0x00007f690838a526: shr    $0x3,%r9           ;*aastore
                   ││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 311)
           0.00%   ││   0x00007f690838a52a: lea    (%r12,%rbp,8),%r8  ;*getfield denseThreadsInstructions
                   ││                                                 ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 311)
  0.01%            ││   0x00007f690838a52e: lea    0x10(%r8,%r13,4),%r8
                   ││   0x00007f690838a533: mov    %r9d,(%r8)
  0.03%    0.01%   ││   0x00007f690838a536: shr    $0x9,%r8
  0.01%            ││   0x00007f690838a53a: movabs $0x7f6903b98000,%r9
                   ││   0x00007f690838a544: mov    %r12b,(%r9,%r8,1)  ;*aastore
                   ││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 311)
  0.00%    0.05%   ││   0x00007f690838a548: jmpq   0x00007f6908389fb3  ;*iconst_1
                   ││                                                 ; - com.google.re2j.Inst$RuneInst::matchRune@96 (line 149)
                   ││                                                 ; - com.google.re2j.Machine::step@181 (line 310)
  0.11%    0.13%   ↘↘   0x00007f690838a54d: mov    $0x1,%r8d
  0.09%    0.08%        0x00007f690838a553: jmpq   0x00007f6908389f13
                        0x00007f690838a558: mov    $0x1,%ebp
                        0x00007f690838a55d: jmpq   0x00007f690838a0bd
                        0x00007f690838a562: mov    $0x1,%ebp
                        0x00007f690838a567: jmpq   0x00007f690838a1b6
                        0x00007f690838a56c: mov    $0x1,%ebp
                        0x00007f690838a571: jmpq   0x00007f6908389f59
                        0x00007f690838a576: mov    0x30(%rsp),%rax
                        0x00007f690838a57b: mov    0xc(%rax),%esi     ;*getfield size
                                                                      ; - com.google.re2j.Machine::step@15 (line 281)
                        0x00007f690838a57e: mov    %rdx,%r11
....................................................................................................
 12.57%   14.74%  <total for region 3>

....[Hottest Regions]...............................................................................
 44.12%   42.37%         C2, level 4  com.google.re2j.Machine::step, version 493 (799 bytes) 
 33.33%   33.20%         C2, level 4  com.google.re2j.Machine::match, version 536 (989 bytes) 
 12.57%   14.74%         C2, level 4  com.google.re2j.Machine::step, version 493 (488 bytes) 
  5.41%    5.99%         C2, level 4  com.google.re2j.Machine::step, version 493 (95 bytes) 
  0.69%    0.74%         C2, level 4  com.google.re2j.Machine::match, version 536 (178 bytes) 
  0.36%    0.35%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.20%    0.20%         C2, level 4  com.google.re2j.Machine::match, version 536 (496 bytes) 
  0.19%    0.08%         C2, level 4  java.util.Collections::shuffle, version 563 (195 bytes) 
  0.13%    0.10%         C2, level 4  com.google.re2j.Pattern::find, version 550 (20 bytes) 
  0.12%    0.07%         C2, level 4  com.google.re2j.Pattern::find, version 550 (0 bytes) 
  0.10%    0.09%         C2, level 4  com.google.re2j.Pattern::find, version 550 (23 bytes) 
  0.09%    0.01%   [kernel.kallsyms]  [unknown] (1 bytes) 
  0.09%    0.01%   [kernel.kallsyms]  [unknown] (47 bytes) 
  0.09%                  C2, level 4  com.google.re2j.Pattern::find, version 550 (33 bytes) 
  0.08%    0.09%         C2, level 4  com.google.re2j.Pattern::find, version 550 (0 bytes) 
  0.06%    0.00%              [vdso]  [unknown] (2 bytes) 
  0.05%                  C2, level 4  com.google.re2j.Pattern::find, version 550 (39 bytes) 
  0.05%    0.01%         C2, level 4  com.google.re2j.Machine::match, version 536 (120 bytes) 
  0.05%    0.04%         C2, level 4  com.google.re2j.Machine::match, version 536 (90 bytes) 
  0.04%    0.02%   [kernel.kallsyms]  [unknown] (0 bytes) 
  2.16%    1.90%  <...other 395 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 62.10%   63.10%         C2, level 4  com.google.re2j.Machine::step, version 493 
 34.45%   34.33%         C2, level 4  com.google.re2j.Machine::match, version 536 
  1.35%    1.18%   [kernel.kallsyms]  [unknown] 
  0.76%    0.37%         C2, level 4  com.google.re2j.Pattern::find, version 550 
  0.28%    0.08%         C2, level 4  java.util.Collections::shuffle, version 563 
  0.11%    0.04%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 596 
  0.11%    0.01%              [vdso]  [unknown] 
  0.05%    0.05%      hsdis-amd64.so  [unknown] 
  0.05%    0.05%        libc-2.26.so  vfprintf 
  0.04%    0.03%           libjvm.so  _ZN18PSPromotionManager22copy_to_survivor_spaceILb0EEEP7oopDescS2_ 
  0.04%    0.06%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.03%                    libjvm.so  _ZN2os13javaTimeNanosEv 
  0.03%    0.09%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.02%           libpthread-2.26.so  __libc_write 
  0.02%    0.01%           libjvm.so  _ZN13defaultStream4holdEl 
  0.02%    0.01%           libjvm.so  _ZN19GenericTaskQueueSetI17OverflowTaskQueueI8StarTaskL10MemoryType1ELj131072EELS2_1EE15steal_best_of_2EjPiRS1_ 
  0.02%    0.06%        libc-2.26.so  _IO_fwrite 
  0.02%    0.02%           libjvm.so  _ZN13xmlTextStream5writeEPKcm 
  0.01%    0.05%        libc-2.26.so  __strlen_avx2 
  0.01%    0.00%        libc-2.26.so  _IO_fflush 
  0.44%    0.30%  <...other 71 warm methods...>
....................................................................................................
100.00%   99.86%  <totals>

....[Distribution by Source]........................................................................
 97.72%   97.92%         C2, level 4
  1.35%    1.18%   [kernel.kallsyms]
  0.45%    0.50%           libjvm.so
  0.20%    0.29%        libc-2.26.so
  0.11%    0.01%              [vdso]
  0.06%    0.02%  libpthread-2.26.so
  0.05%    0.05%      hsdis-amd64.so
  0.03%    0.01%         interpreter
  0.01%                  C1, level 3
  0.00%                 runtime stub
  0.00%                  C1, level 1
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                     Mode  Cnt      Score    Error  Units
Re2jFindRegex.testExp1       thrpt   20  20639.627 ± 37.659  ops/s
Re2jFindRegex.testExp1:·asm  thrpt             NaN             ---
