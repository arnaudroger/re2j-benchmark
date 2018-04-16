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
# Warmup Iteration   1: 13989.325 ops/s
# Warmup Iteration   2: 25645.752 ops/s
# Warmup Iteration   3: 25599.444 ops/s
# Warmup Iteration   4: 25330.768 ops/s
# Warmup Iteration   5: 25840.435 ops/s
# Warmup Iteration   6: 25255.474 ops/s
# Warmup Iteration   7: 25966.858 ops/s
# Warmup Iteration   8: 26057.453 ops/s
# Warmup Iteration   9: 25887.043 ops/s
# Warmup Iteration  10: 25870.904 ops/s
# Warmup Iteration  11: 21874.821 ops/s
# Warmup Iteration  12: 25196.244 ops/s
# Warmup Iteration  13: 25698.968 ops/s
# Warmup Iteration  14: 25993.715 ops/s
# Warmup Iteration  15: 25843.525 ops/s
# Warmup Iteration  16: 25862.381 ops/s
# Warmup Iteration  17: 25945.973 ops/s
# Warmup Iteration  18: 25918.798 ops/s
# Warmup Iteration  19: 25697.588 ops/s
# Warmup Iteration  20: 25854.109 ops/s
Iteration   1: 25588.535 ops/s
Iteration   2: 25288.596 ops/s
Iteration   3: 25457.041 ops/s
Iteration   4: 25726.410 ops/s
Iteration   5: 25794.216 ops/s
Iteration   6: 25603.946 ops/s
Iteration   7: 24217.246 ops/s
Iteration   8: 25077.428 ops/s
Iteration   9: 25092.738 ops/s
Iteration  10: 25802.478 ops/s
Iteration  11: 25732.520 ops/s
Iteration  12: 25147.472 ops/s
Iteration  13: 25770.587 ops/s
Iteration  14: 25933.006 ops/s
Iteration  15: 25827.248 ops/s
Iteration  16: 25396.119 ops/s
Iteration  17: 25903.425 ops/s
Iteration  18: 25905.963 ops/s
Iteration  19: 25812.650 ops/s
Iteration  20: 25894.001 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  25548.581 ±(99.9%) 365.962 ops/s [Average]
  (min, avg, max) = (24217.246, 25548.581, 25933.006), stdev = 421.442
  CI (99.9%): [25182.619, 25914.543] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1:·asm":
PrintAssembly processed: 211196 total address lines.
Perf output processed (skipped 23.042 seconds):
 Column 1: cycles (20371 events)
 Column 2: instructions (20373 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 534 (931 bytes) 

                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f1ff9245d7f: mov    0xc(%r13),%ebx
                     0x00007f1ff9245d83: mov    %rdi,%r10
                     0x00007f1ff9245d86: shr    $0x3,%r9
                     0x00007f1ff9245d8a: mov    %r9d,(%rdi)
                     0x00007f1ff9245d8d: shr    $0x9,%r10
                     0x00007f1ff9245d91: movabs $0x7f1ff4dee000,%r8
                     0x00007f1ff9245d9b: mov    %r12b,(%r8,%r10,1)  ;*getfield size
                                                                   ; - com.google.re2j.Machine::step@15 (line 281)
  0.08%    0.06%     0x00007f1ff9245d9f: mov    0x94(%rsp),%edi
  0.75%    0.61%     0x00007f1ff9245da6: mov    0x9c(%rsp),%r10d   ;*goto
                                                                   ; - com.google.re2j.Machine::step@221 (line 281)
  1.41%    1.52%  ↗  0x00007f1ff9245dae: inc    %r10d              ; OopMap{r11=Oop r13=Oop [8]=Oop off=273}
                  │                                                ;*goto
                  │                                                ; - com.google.re2j.Machine::step@221 (line 281)
  0.03%    0.07%  │  0x00007f1ff9245db1: test   %eax,0x163d4249(%rip)        # 0x00007f200f61a000
                  │                                                ;*goto
                  │                                                ; - com.google.re2j.Machine::step@221 (line 281)
                  │                                                ;   {poll}
  0.27%    0.30%  │  0x00007f1ff9245db7: cmp    %ebx,%r10d
                  │  0x00007f1ff9245dba: jge    0x00007f1ff924624f  ;*aload_0
                  │                                                ; - com.google.re2j.Machine::step@21 (line 284)
  0.81%    1.00%  │  0x00007f1ff9245dc0: mov    0xc(%r13),%ebx
  0.87%    0.70%  │  0x00007f1ff9245dc4: mov    %r11,%rcx          ;*getfield size
                  │                                                ; - com.google.re2j.Machine::step@15 (line 281)
  0.09%    0.18%  │  0x00007f1ff9245dc7: mov    0x8(%rsp),%r11
  0.42%    0.73%  │  0x00007f1ff9245dcc: movzbl 0x11(%r11),%r8d    ;*getfield captures
                  │                                                ; - com.google.re2j.Machine::step@22 (line 284)
  1.89%    2.03%  │  0x00007f1ff9245dd1: test   %r8d,%r8d
                  │  0x00007f1ff9245dd4: jne    0x00007f1ff92463b9  ;*ifne
                  │                                                ; - com.google.re2j.Machine::step@25 (line 284)
  0.96%    1.08%  │  0x00007f1ff9245dda: mov    0x20(%r13),%ebp    ;*getfield denseThreadsInstructions
                  │                                                ; - com.google.re2j.Machine::step@78 (line 294)
  0.02%    0.11%  │  0x00007f1ff9245dde: mov    0xc(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007f1ff92473c1
  0.32%    0.32%  │  0x00007f1ff9245de3: cmp    %r8d,%r10d
                  │  0x00007f1ff9245de6: jae    0x00007f1ff924634b
  1.21%    1.14%  │  0x00007f1ff9245dec: lea    (%r12,%rbp,8),%r11
  1.18%    1.34%  │  0x00007f1ff9245df0: mov    0x10(%r11,%r10,4),%r9d  ;*aaload
                  │                                                ; - com.google.re2j.Machine::step@83 (line 294)
  0.09%    0.07%  │  0x00007f1ff9245df5: mov    0xc(%r12,%r9,8),%ebp  ;*getfield op
                  │                                                ; - com.google.re2j.Machine::step@88 (line 296)
                  │                                                ; implicit exception: dispatches to 0x00007f1ff92473d5
  1.89%    2.07%  │  0x00007f1ff9245dfa: cmp    $0x6,%ebp
                  │  0x00007f1ff9245dfd: je     0x00007f1ff92463f9  ;*if_icmpne
                  │                                                ; - com.google.re2j.Machine::step@93 (line 296)
  1.98%    2.18%  │  0x00007f1ff9245e03: mov    0x8(%r12,%r9,8),%r11d
  0.55%    0.71%  │  0x00007f1ff9245e08: cmp    $0xf8019993,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │  0x00007f1ff9245e0f: jne    0x00007f1ff924636d
  0.89%    1.01%  │  0x00007f1ff9245e15: lea    (%r12,%r9,8),%r8   ;*invokevirtual matchRune
                  │                                                ; - com.google.re2j.Machine::step@181 (line 310)
  0.24%    0.23%  │  0x00007f1ff9245e19: mov    0xc(%r8),%ebp      ;*getfield op
                  │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@1 (line 136)
                  │                                                ; - com.google.re2j.Machine::step@181 (line 310)
  1.19%    0.95%  │  0x00007f1ff9245e1d: cmp    $0xa,%ebp
                  │  0x00007f1ff9245e20: jne    0x00007f1ff92461e0  ;*if_icmpne
                  │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@6 (line 136)
                  │                                                ; - com.google.re2j.Machine::step@181 (line 310)
  0.20%    0.27%  │  0x00007f1ff9245e26: mov    0x1c(%r8),%r9d     ;*getfield outInst
                  │                                                ; - com.google.re2j.Machine::step@189 (line 311)
  0.11%    0.06%  │  0x00007f1ff9245e2a: mov    0x8(%r12,%r9,8),%r11d  ; implicit exception: dispatches to 0x00007f1ff92473e5
  0.57%    0.54%  │  0x00007f1ff9245e2f: lea    (%r12,%r9,8),%r8
  0.30%    0.11%  │  0x00007f1ff9245e33: cmp    $0xf8019844,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                  │  0x00007f1ff9245e3a: jne    0x00007f1ff9246281  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Machine::step@202 (line 311)
  0.31%    0.39%  │  0x00007f1ff9245e40: mov    0x18(%r8),%r9d     ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 190)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.03%  │  0x00007f1ff9245e44: mov    %rcx,%r11
  0.05%    0.04%  │  0x00007f1ff9245e47: mov    0x10(%rcx),%rdx    ;*getfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 190)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
                  │                                                ; implicit exception: dispatches to 0x00007f1ff9247401
  0.57%    0.35%  │  0x00007f1ff9245e4b: cmp    $0x40,%r9d
                  │  0x00007f1ff9245e4f: jg     0x00007f1ff924673d  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 190)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.30%    0.24%  │  0x00007f1ff9245e55: mov    $0x1,%eax
  0.01%           │  0x00007f1ff9245e5a: mov    %r9d,%ecx
  0.02%    0.04%  │  0x00007f1ff9245e5d: shl    %cl,%rax           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 190)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.81%    0.43%  │  0x00007f1ff9245e60: mov    %rdx,%rcx
  0.01%    0.01%  │  0x00007f1ff9245e63: and    %rax,%rcx
  0.34%    0.10%  │  0x00007f1ff9245e66: test   %rcx,%rcx
                  ╰  0x00007f1ff9245e69: jne    0x00007f1ff9245dae  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.26%    0.30%     0x00007f1ff9245e6f: cmp    $0x40,%r9d
                     0x00007f1ff9245e73: jge    0x00007f1ff9246791  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 193)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.03%     0x00007f1ff9245e79: mov    %r12b,0x18(%r11)   ;*putfield empty
                                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 193)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.02%     0x00007f1ff9245e7d: mov    0x1c(%r8),%ebp     ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.35%    0.02%     0x00007f1ff9245e81: or     %rdx,%rax          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 193)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.26%    0.26%     0x00007f1ff9245e84: mov    %rax,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 193)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.09%    0.06%     0x00007f1ff9245e88: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f1ff9247415
  0.42%    0.39%     0x00007f1ff9245e8d: cmp    $0xf8019993,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                     0x00007f1ff9245e93: jne    0x00007f1ff924649d
  0.61%    0.23%     0x00007f1ff9245e99: lea    (%r12,%rbp,8),%rbx  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.07%    0.04%     0x00007f1ff9245e9d: mov    0x18(%rbx),%r9d    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.09%    0.06%     0x00007f1ff9245ea1: cmp    $0x40,%r9d
                     0x00007f1ff9245ea5: jg     0x00007f1ff92467e5  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.22%    0.15%     0x00007f1ff9245eab: mov    $0x1,%edx
  0.37%    0.10%     0x00007f1ff9245eb0: mov    %r9d,%ecx
  0.06%    0.05%     0x00007f1ff9245eb3: shl    %cl,%rdx           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.87%    0.50%     0x00007f1ff9245eb6: mov    %rax,%rcx
  0.09%    0.03%     0x00007f1ff9245eb9: and    %rdx,%rcx          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f1ff9245ebc: test   %rcx,%rcx
                     0x00007f1ff9245ebf: jne    0x00007f1ff9246841  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.02%     0x00007f1ff9245ec5: cmp    $0x40,%r9d
                     0x00007f1ff9245ec9: jge    0x00007f1ff92468a9  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.54%    0.28%     0x00007f1ff9245ecf: or     %rdx,%rax          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.06%    0.04%     0x00007f1ff9245ed2: mov    %rax,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f1ff9245ed6: mov    0x20(%r11),%edx    ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.02%     0x00007f1ff9245eda: mov    0xc(%r11),%ecx     ;*getfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.52%    0.24%     0x00007f1ff9245ede: mov    %ecx,%esi
  0.04%    0.05%     0x00007f1ff9245ee0: inc    %esi               ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f1ff9245ee2: mov    %esi,0xc(%r11)     ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.02%     0x00007f1ff9245ee6: mov    0xc(%r12,%rdx,8),%r14d  ; implicit exception: dispatches to 0x00007f1ff9247431
  0.57%    0.23%     0x00007f1ff9245eeb: cmp    %r14d,%ecx
                     0x00007f1ff9245eee: jae    0x00007f1ff9246441
  0.05%    0.05%     0x00007f1ff9245ef4: mov    0x8(%r12,%rdx,8),%r9d
                     0x00007f1ff9245ef9: cmp    $0xf8019808,%r9d   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
  0.03%    0.03%     0x00007f1ff9245f00: jne    0x00007f1ff92464e9  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.61%    0.31%     0x00007f1ff9245f06: vmovd  %esi,%xmm2
  0.06%    0.02%     0x00007f1ff9245f0a: mov    %ecx,%esi
                     0x00007f1ff9245f0c: mov    %r10d,0x9c(%rsp)
  0.07%    0.02%     0x00007f1ff9245f14: mov    %edi,0x94(%rsp)
  0.56%    0.62%     0x00007f1ff9245f1b: vmovq  %r11,%xmm0
  0.04%    0.02%     0x00007f1ff9245f20: mov    %r13,0x30(%rsp)
           0.01%     0x00007f1ff9245f25: mov    0x20(%r8),%r10d    ;*getfield inst2
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@41 (line 196)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.06%    0.02%     0x00007f1ff9245f29: mov    %r10d,%ecx
  0.53%    0.52%     0x00007f1ff9245f2c: mov    %rbx,%r11
  0.06%    0.02%     0x00007f1ff9245f2f: shr    $0x3,%r11          ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%    0.01%     0x00007f1ff9245f33: lea    (%r12,%rdx,8),%rbx  ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.02%     0x00007f1ff9245f37: lea    0x10(%rbx,%rsi,4),%r10
  0.53%    0.64%     0x00007f1ff9245f3c: mov    %r11d,(%r10)
  0.08%    0.09%     0x00007f1ff9245f3f: shr    $0x9,%r10
                     0x00007f1ff9245f43: movabs $0x7f1ff4dee000,%r11
  0.04%    0.03%     0x00007f1ff9245f4d: mov    %r12b,(%r11,%r10,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.53%    0.64%     0x00007f1ff9245f51: mov    %ecx,%r10d
  0.06%    0.05%     0x00007f1ff9245f54: mov    0x8(%r12,%r10,8),%r11d  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                                                                   ; implicit exception: dispatches to 0x00007f1ff924744d
  0.00%              0x00007f1ff9245f59: movslq %esi,%r10
  0.02%    0.06%     0x00007f1ff9245f5c: lea    (%rbx,%r10,4),%r9  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.57%    0.73%     0x00007f1ff9245f60: mov    %r9,%rdi
  0.03%    0.06%     0x00007f1ff9245f63: add    $0x14,%rdi         ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f1ff9245f67: mov    %ecx,%r10d
  0.01%    0.04%     0x00007f1ff9245f6a: lea    (%r12,%r10,8),%r8
  0.62%    0.59%     0x00007f1ff9245f6e: mov    %esi,%r10d
  0.03%    0.10%     0x00007f1ff9245f71: add    $0x2,%r10d         ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
           0.01%     0x00007f1ff9245f75: cmp    $0xf8019887,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                     0x00007f1ff9245f7c: jne    0x00007f1ff9245d24  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.01%     0x00007f1ff9245f82: mov    %r8,%r13
  0.54%    0.64%     0x00007f1ff9245f85: mov    0x18(%r8),%r11d    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@2 (line 476)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.08%     0x00007f1ff9245f89: vmovd  %r11d,%xmm1
           0.00%     0x00007f1ff9245f8e: cmp    $0x40,%r11d
                     0x00007f1ff9245f92: jg     0x00007f1ff9246a65  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 476)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%    0.02%     0x00007f1ff9245f98: mov    $0x1,%r8d
  0.61%    0.55%     0x00007f1ff9245f9e: mov    %r11d,%ecx
  0.03%    0.05%     0x00007f1ff9245fa1: shl    %cl,%r8            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 476)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.61%    0.27%     0x00007f1ff9245fa4: mov    %rax,%r11
  0.06%    0.01%     0x00007f1ff9245fa7: and    %r8,%r11           ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 476)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%    0.00%     0x00007f1ff9245faa: test   %r11,%r11
                     0x00007f1ff9245fad: jne    0x00007f1ff9246acd  ;*ifeq
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@8 (line 476)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.02%     0x00007f1ff9245fb3: mov    %ecx,%r11d
  0.56%    0.55%     0x00007f1ff9245fb6: cmp    $0x40,%r11d
                     0x00007f1ff9245fba: jge    0x00007f1ff9246b41  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@19 (line 479)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.10%    0.09%     0x00007f1ff9245fc0: or     %r8,%rax           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@19 (line 479)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%              0x00007f1ff9245fc3: vmovq  %xmm0,%r11
  0.02%    0.01%     0x00007f1ff9245fc8: mov    %rax,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@19 (line 479)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.59%    0.51%     0x00007f1ff9245fcc: mov    0x1c(%r13),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@83 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.07%    0.07%     0x00007f1ff9245fd0: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007f1ff924748d
  0.00%    0.01%     0x00007f1ff9245fd5: cmp    $0xf8019844,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                     0x00007f1ff9245fdc: jne    0x00007f1ff9246645
  0.02%    0.06%     0x00007f1ff9245fe2: lea    (%r12,%rbp,8),%r13  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.58%    0.79%     0x00007f1ff9245fe6: mov    0x18(%r13),%r11d   ;*getfield pc
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 190)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.06%    0.08%     0x00007f1ff9245fea: mov    %r11d,%ecx
                     0x00007f1ff9245fed: cmp    $0x40,%r11d
                     0x00007f1ff9245ff1: jg     0x00007f1ff9246ba5  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 190)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.01%     0x00007f1ff9245ff7: mov    $0x1,%r8d
  0.57%    0.15%     0x00007f1ff9245ffd: shl    %cl,%r8            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 190)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.09%    0.07%     0x00007f1ff9246000: mov    %rax,%r11
  0.54%    0.75%     0x00007f1ff9246003: and    %r8,%r11
  0.08%    0.09%     0x00007f1ff9246006: test   %r11,%r11
                     0x00007f1ff9246009: jne    0x00007f1ff9246338  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 190)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%    0.00%     0x00007f1ff924600f: mov    %ecx,%r11d
  0.05%    0.04%     0x00007f1ff9246012: cmp    $0x40,%r11d
                     0x00007f1ff9246016: jge    0x00007f1ff9246d35  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 193)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.54%    0.70%     0x00007f1ff924601c: mov    0x1c(%r13),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.05%     0x00007f1ff9246020: or     %r8,%rax           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 193)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
           0.01%     0x00007f1ff9246023: vmovq  %xmm0,%r11
  0.05%    0.03%     0x00007f1ff9246028: mov    %rax,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 193)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.51%    0.61%     0x00007f1ff924602c: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007f1ff92474a9
  0.05%    0.06%     0x00007f1ff9246031: cmp    $0xf8019993,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                     0x00007f1ff9246038: jne    0x00007f1ff92466e9
  0.00%              0x00007f1ff924603e: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.02%     0x00007f1ff9246042: vmovq  %r11,%xmm1
  0.60%    0.77%     0x00007f1ff9246047: mov    0x18(%r11),%r11d   ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.08%    0.05%     0x00007f1ff924604b: mov    %r11d,%ecx
  0.00%    0.00%     0x00007f1ff924604e: cmp    $0x40,%r11d
                     0x00007f1ff9246052: jg     0x00007f1ff9246d99  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.02%     0x00007f1ff9246058: mov    $0x1,%r8d
  0.48%    0.70%     0x00007f1ff924605e: shl    %cl,%r8            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.08%    0.10%     0x00007f1ff9246061: mov    %rax,%r11
  0.59%    0.57%     0x00007f1ff9246064: and    %r8,%r11           ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.07%    0.03%     0x00007f1ff9246067: test   %r11,%r11
                     0x00007f1ff924606a: jne    0x00007f1ff9246e05  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
           0.00%     0x00007f1ff9246070: mov    %ecx,%r11d
  0.03%    0.03%     0x00007f1ff9246073: cmp    $0x40,%r11d
                     0x00007f1ff9246077: jge    0x00007f1ff9246e85  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.53%    0.59%     0x00007f1ff924607d: vmovq  %xmm0,%r11
  0.08%    0.06%     0x00007f1ff9246082: mov    %r10d,0xc(%r11)    ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.01%     0x00007f1ff9246086: or     %r8,%rax           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.01%     0x00007f1ff9246089: mov    %rax,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.52%    0.55%     0x00007f1ff924608d: cmp    %r14d,%r10d
                     0x00007f1ff9246090: jae    0x00007f1ff92465d9  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.06%    0.04%     0x00007f1ff9246096: mov    0x20(%r13),%r10d   ;*getfield inst2
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@41 (line 196)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.01%     0x00007f1ff924609a: mov    %rdi,%r8
  0.06%    0.02%     0x00007f1ff924609d: vmovq  %xmm1,%r11
  0.53%    0.58%     0x00007f1ff92460a2: shr    $0x3,%r11
  0.03%    0.04%     0x00007f1ff92460a6: mov    %r11d,(%rdi)
           0.01%     0x00007f1ff92460a9: shr    $0x9,%r8
  0.03%    0.04%     0x00007f1ff92460ad: movabs $0x7f1ff4dee000,%r11
  0.49%    0.68%     0x00007f1ff92460b7: mov    %r12b,(%r11,%r8,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.09%    0.07%     0x00007f1ff92460bb: mov    0x8(%r12,%r10,8),%ecx  ; implicit exception: dispatches to 0x00007f1ff92474c5
  0.01%    0.01%     0x00007f1ff92460c0: lea    (%r12,%r10,8),%r8
  0.02%    0.01%     0x00007f1ff92460c4: cmp    $0xf8019887,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                     0x00007f1ff92460ca: je     0x00007f1ff9246147
  0.58%    0.75%     0x00007f1ff92460cc: cmp    $0xf8019993,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                     0x00007f1ff92460d2: jne    0x00007f1ff9246a09  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.09%     0x00007f1ff92460d8: mov    0x18(%r8),%ecx     ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%              0x00007f1ff92460dc: cmp    $0x40,%ecx
                     0x00007f1ff92460df: jg     0x00007f1ff9247081  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.03%     0x00007f1ff92460e5: mov    $0x1,%r10d
  0.57%    0.79%     0x00007f1ff92460eb: shl    %cl,%r10           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.15%    0.14%     0x00007f1ff92460ee: mov    %rax,%r11
  0.51%    0.29%     0x00007f1ff92460f1: and    %r10,%r11          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.08%    0.05%     0x00007f1ff92460f4: test   %r11,%r11
                     0x00007f1ff92460f7: jne    0x00007f1ff92470e5  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.02%     0x00007f1ff92460fd: cmp    $0x40,%ecx
  0.05%    0.03%     0x00007f1ff9246100: jge    0x00007f1ff9247159  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.59%    0.70%     0x00007f1ff9246106: or     %r10,%rax
  0.05%    0.08%     0x00007f1ff9246109: vmovq  %xmm0,%r11
  0.01%    0.02%     0x00007f1ff924610e: mov    %rax,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.09%    0.16%     0x00007f1ff9246112: add    $0x18,%r9
  0.59%    0.81%     0x00007f1ff9246116: shr    $0x3,%r8
  0.06%    0.08%     0x00007f1ff924611a: mov    %r8d,(%r9)         ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.02%     0x00007f1ff924611d: mov    %r9,%r10
  0.03%    0.06%     0x00007f1ff9246120: add    $0x3,%esi
  0.55%    0.75%     0x00007f1ff9246123: mov    %esi,0xc(%r11)     ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.06%    0.09%     0x00007f1ff9246127: mov    0x30(%rsp),%r13
  0.02%    0.01%     0x00007f1ff924612c: mov    0xc(%r13),%ebx     ;*getfield size
                                                                   ; - com.google.re2j.Machine::step@15 (line 281)
  0.05%    0.11%     0x00007f1ff9246130: shr    $0x9,%r10
  0.47%    0.79%     0x00007f1ff9246134: movabs $0x7f1ff4dee000,%r8
  0.05%    0.09%     0x00007f1ff924613e: mov    %r12b,(%r8,%r10,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%    0.04%     0x00007f1ff9246142: jmpq   0x00007f1ff9245d9f  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
....................................................................................................
 46.96%   46.43%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 577 (1298 bytes) 

                                                                           ; - com.google.re2j.Machine::match@1 (line 182)
                             0x00007f1ff925fd1a: mov    0xc(%r12,%r9,8),%eax  ;*getfield cond
                                                                           ; - com.google.re2j.Machine::match@4 (line 182)
                                                                           ; implicit exception: dispatches to 0x00007f1ff9261bed
                             0x00007f1ff925fd1f: cmp    $0xffffffff,%eax
                             0x00007f1ff925fd22: je     0x00007f1ff9261369  ;*if_icmpne
                                                                           ; - com.google.re2j.Machine::match@12 (line 183)
                             0x00007f1ff925fd28: cmp    $0x1,%r8d
                             0x00007f1ff925fd2c: je     0x00007f1ff926138d  ;*if_icmpeq
                                                                           ; - com.google.re2j.Machine::match@19 (line 186)
  0.00%                      0x00007f1ff925fd32: cmp    $0x2,%r8d
                             0x00007f1ff925fd36: je     0x00007f1ff92613b1  ;*if_icmpne
                                                                           ; - com.google.re2j.Machine::match@24 (line 186)
                             0x00007f1ff925fd3c: mov    %r12b,0x10(%rsi)   ;*putfield matched
                                                                           ; - com.google.re2j.Machine::match@35 (line 190)
                             0x00007f1ff925fd40: mov    0x28(%rsi),%r11d   ;*getfield matchcap
                                                                           ; - com.google.re2j.Machine::match@39 (line 191)
                             0x00007f1ff925fd44: mov    0xc(%r12,%r11,8),%ebp  ;*arraylength
                                                                           ; - java.util.Arrays::fill@3 (line 2881)
                                                                           ; - com.google.re2j.Machine::match@43 (line 191)
                                                                           ; implicit exception: dispatches to 0x00007f1ff9261bfd
  0.01%                      0x00007f1ff925fd49: test   %ebp,%ebp
                             0x00007f1ff925fd4b: jg     0x00007f1ff92613d5  ;*if_icmpge
                                                                           ; - java.util.Arrays::fill@7 (line 2881)
                                                                           ; - com.google.re2j.Machine::match@43 (line 191)
                             0x00007f1ff925fd51: mov    0x8(%rdx),%ecx     ; implicit exception: dispatches to 0x00007f1ff9261c0d
                             0x00007f1ff925fd54: mov    0x20(%rsi),%ebx    ;*getfield q1
                                                                           ; - com.google.re2j.Machine::match@53 (line 192)
  0.00%                      0x00007f1ff925fd57: mov    0x1c(%rsi),%edi    ;*getfield q0
                                                                           ; - com.google.re2j.Machine::match@47 (line 192)
                             0x00007f1ff925fd5a: cmp    $0xf8019bdb,%ecx   ;   {metadata(&apos;com/google/re2j/MachineInput$UTF16Input&apos;)}
                             0x00007f1ff925fd60: jne    0x00007f1ff9261175
  0.01%                      0x00007f1ff925fd66: mov    %rdx,%rbp          ;*invokevirtual step
                                                                           ; - com.google.re2j.Machine::match@60 (line 193)
                             0x00007f1ff925fd69: mov    0xc(%rbp),%esi     ;*getfield start
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                                                                           ; - com.google.re2j.Machine::match@60 (line 193)
  0.00%                      0x00007f1ff925fd6c: mov    0x10(%rbp),%r14d   ;*getfield end
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                                                                           ; - com.google.re2j.Machine::match@60 (line 193)
                             0x00007f1ff925fd70: vmovd  %xmm0,%edx
                             0x00007f1ff925fd74: add    %esi,%edx          ;*iadd
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                                                                           ; - com.google.re2j.Machine::match@60 (line 193)
                             0x00007f1ff925fd76: cmp    %r14d,%edx
                             0x00007f1ff925fd79: jge    0x00007f1ff926105d  ;*if_icmpge
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                                                                           ; - com.google.re2j.Machine::match@60 (line 193)
                             0x00007f1ff925fd7f: mov    0x14(%rbp),%ecx    ;*getfield str
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                                                                           ; - com.google.re2j.Machine::match@60 (line 193)
                             0x00007f1ff925fd82: mov    0x8(%r12,%rcx,8),%r13d  ; implicit exception: dispatches to 0x00007f1ff9261c21
  0.01%                      0x00007f1ff925fd87: cmp    $0xf80002da,%r13d  ;   {metadata(&apos;java/lang/String&apos;)}
                             0x00007f1ff925fd8e: jne    0x00007f1ff92611a5
  0.00%    0.01%             0x00007f1ff925fd94: lea    (%r12,%rcx,8),%r13  ;*invokeinterface charAt
                                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                           ; - com.google.re2j.Machine::match@60 (line 193)
                             0x00007f1ff925fd98: test   %edx,%edx
                             0x00007f1ff925fd9a: jl     0x00007f1ff9261279  ;*iflt
                                                                           ; - java.lang.String::charAt@1 (line 657)
                                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                           ; - com.google.re2j.Machine::match@60 (line 193)
                             0x00007f1ff925fda0: mov    %rbp,0x50(%rsp)
  0.00%                      0x00007f1ff925fda5: mov    %edi,0x34(%rsp)
  0.00%                      0x00007f1ff925fda9: vmovd  %ebx,%xmm1
                             0x00007f1ff925fdad: mov    %eax,0x48(%rsp)
                             0x00007f1ff925fdb1: mov    %r8d,0x3c(%rsp)
  0.00%                      0x00007f1ff925fdb6: mov    %r10,0x40(%rsp)
  0.00%                      0x00007f1ff925fdbb: mov    0xc(%r13),%r10d    ;*getfield value
                                                                           ; - java.lang.String::charAt@6 (line 657)
                                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                           ; - com.google.re2j.Machine::match@60 (line 193)
  0.00%    0.00%             0x00007f1ff925fdbf: vmovd  %r10d,%xmm2
                             0x00007f1ff925fdc4: mov    0xc(%r12,%r10,8),%r10d  ;*arraylength
                                                                           ; - java.lang.String::charAt@9 (line 657)
                                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                           ; - com.google.re2j.Machine::match@60 (line 193)
                                                                           ; implicit exception: dispatches to 0x00007f1ff9261c35
  0.01%    0.01%             0x00007f1ff925fdc9: mov    %r10d,%eax
                             0x00007f1ff925fdcc: cmp    %eax,%edx
                             0x00007f1ff925fdce: jge    0x00007f1ff9261401  ;*if_icmplt
                                                                           ; - java.lang.String::charAt@10 (line 657)
                                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                           ; - com.google.re2j.Machine::match@60 (line 193)
                             0x00007f1ff925fdd4: cmp    %eax,%edx
                             0x00007f1ff925fdd6: jae    0x00007f1ff92610c9
  0.01%                      0x00007f1ff925fddc: vmovd  %xmm2,%r10d
                             0x00007f1ff925fde1: lea    (%r12,%r10,8),%rbx
                             0x00007f1ff925fde5: movzwl 0x10(%rbx,%rdx,2),%r10d  ;*caload
                                                                           ; - java.lang.String::charAt@27 (line 660)
                                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                           ; - com.google.re2j.Machine::match@60 (line 193)
  0.00%                      0x00007f1ff925fdeb: cmp    $0xd800,%r10d
                             0x00007f1ff925fdf2: jge    0x00007f1ff9261451  ;*if_icmplt
                                                                           ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                           ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                           ; - com.google.re2j.Machine::match@60 (line 193)
  0.00%    0.00%             0x00007f1ff925fdf8: shl    $0x3,%r10d         ;*ishl
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                                                                           ; - com.google.re2j.Machine::match@60 (line 193)
                             0x00007f1ff925fdfc: mov    %r10d,%r8d
                             0x00007f1ff925fdff: and    $0x7,%r8d
  0.01%                      0x00007f1ff925fe03: or     $0x1,%r10d
           0.00%             0x00007f1ff925fe07: vmovd  %r10d,%xmm3
                             0x00007f1ff925fe0c: or     $0x1,%r8d          ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                                                                           ; - com.google.re2j.Machine::match@60 (line 193)
                             0x00007f1ff925fe10: mov    %r8d,0x28(%rsp)
           0.01%             0x00007f1ff925fe15: mov    %r10d,%edi
                             0x00007f1ff925fe18: sar    $0x3,%edi          ;*ishr
                                                                           ; - com.google.re2j.Machine::match@68 (line 194)
                             0x00007f1ff925fe1b: cmp    $0xfffffff8,%r10d
                             0x00007f1ff925fe1f: je     0x00007f1ff926106d  ;*if_icmpeq
                                                                           ; - com.google.re2j.Machine::match@88 (line 198)
                             0x00007f1ff925fe25: vmovd  %xmm0,%r10d
  0.00%                      0x00007f1ff925fe2a: add    %r8d,%r10d
                             0x00007f1ff925fe2d: add    %esi,%r10d         ;*iadd
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                                                                           ; - com.google.re2j.Machine::match@96 (line 199)
                             0x00007f1ff925fe30: mov    %r10d,%edx
                             0x00007f1ff925fe33: cmp    %r14d,%r10d
                             0x00007f1ff925fe36: jge    0x00007f1ff9260797  ;*if_icmpge
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                                                                           ; - com.google.re2j.Machine::match@96 (line 199)
                             0x00007f1ff925fe3c: test   %r10d,%r10d
                             0x00007f1ff925fe3f: jl     0x00007f1ff9261309  ;*iflt
                                                                           ; - java.lang.String::charAt@1 (line 657)
                                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                           ; - com.google.re2j.Machine::match@96 (line 199)
  0.01%    0.00%             0x00007f1ff925fe45: cmp    %eax,%r10d
                             0x00007f1ff925fe48: jge    0x00007f1ff926149d  ;*if_icmplt
                                                                           ; - java.lang.String::charAt@10 (line 657)
                                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                           ; - com.google.re2j.Machine::match@96 (line 199)
  0.01%    0.01%             0x00007f1ff925fe4e: cmp    %eax,%r10d
                             0x00007f1ff925fe51: jae    0x00007f1ff9261111
  0.00%                      0x00007f1ff925fe57: movzwl 0x10(%rbx,%r10,2),%r10d  ;*caload
                                                                           ; - java.lang.String::charAt@27 (line 660)
                                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                           ; - com.google.re2j.Machine::match@96 (line 199)
  0.00%    0.00%             0x00007f1ff925fe5d: cmp    $0xd800,%r10d
                             0x00007f1ff925fe64: jge    0x00007f1ff9261501  ;*if_icmplt
                                                                           ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                           ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                           ; - com.google.re2j.Machine::match@96 (line 199)
  0.00%    0.00%             0x00007f1ff925fe6a: shl    $0x3,%r10d         ;*ishl
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                                                                           ; - com.google.re2j.Machine::match@96 (line 199)
                             0x00007f1ff925fe6e: mov    %r10d,%r8d
                             0x00007f1ff925fe71: or     $0x1,%r8d
           0.00%             0x00007f1ff925fe75: and    $0x7,%r10d
                             0x00007f1ff925fe79: sar    $0x3,%r8d          ;*ishr
                                                                           ; - com.google.re2j.Machine::match@104 (line 200)
           0.00%             0x00007f1ff925fe7d: mov    %r8d,0x2c(%rsp)
           0.00%             0x00007f1ff925fe82: or     $0x1,%r10d         ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                                                                           ; - com.google.re2j.Machine::match@96 (line 199)
                             0x00007f1ff925fe86: mov    %r10d,0x30(%rsp)   ;*ishr
                                                                           ; - com.google.re2j.Machine::match@104 (line 200)
  0.00%    0.00%             0x00007f1ff925fe8b: vmovd  %xmm0,%r10d
                             0x00007f1ff925fe90: test   %r10d,%r10d
                             0x00007f1ff925fe93: jne    0x00007f1ff92612b1  ;*ifne
                                                                           ; - com.google.re2j.Machine::match@115 (line 204)
                             0x00007f1ff925fe99: test   %edi,%edi
                             0x00007f1ff925fe9b: jl     0x00007f1ff926077f  ;*ifge
                                                                           ; - com.google.re2j.Utils::emptyOpContext@21 (line 179)
                                                                           ; - com.google.re2j.Machine::match@121 (line 205)
                             0x00007f1ff925fea1: mov    $0x5,%r10d         ;*iload_1
                                                                           ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                                                                           ; - com.google.re2j.Machine::match@121 (line 205)
  0.01%    0.00%             0x00007f1ff925fea7: cmp    $0xa,%edi
                             0x00007f1ff925feaa: je     0x00007f1ff92607af  ;*iload_0
                                                                           ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                                                                           ; - com.google.re2j.Machine::match@121 (line 205)
                             0x00007f1ff925feb0: mov    %edi,%r8d
                             0x00007f1ff925feb3: add    $0xffffffbf,%r8d
                             0x00007f1ff925feb7: cmp    $0x1a,%r8d
                  ╭          0x00007f1ff925febb: jb     0x00007f1ff925fecb  ;*if_icmple
                  │                                                        ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │                                                        ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                        ; - com.google.re2j.Machine::match@121 (line 205)
           0.01%  │          0x00007f1ff925febd: mov    %edi,%ebx
                  │          0x00007f1ff925febf: add    $0xffffff9f,%ebx
  0.00%           │          0x00007f1ff925fec2: cmp    $0x1a,%ebx
                  │          0x00007f1ff925fec5: jae    0x00007f1ff92607b8  ;*iconst_1
                  │                                                        ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │                                                        ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                        ; - com.google.re2j.Machine::match@121 (line 205)
           0.01%  ↘          0x00007f1ff925fecb: or     $0x10,%r10d        ;*iload_2
                                                                           ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                           ; - com.google.re2j.Machine::match@121 (line 205)
  0.00%    0.00%             0x00007f1ff925fecf: mov    0x40(%rsp),%r8
           0.00%             0x00007f1ff925fed4: movzbl 0x11(%r8),%ebx     ;*getfield captures
                                                                           ; - com.google.re2j.Machine::match@283 (line 240)
  0.01%    0.00%             0x00007f1ff925fed9: vmovd  %xmm1,%edx
                             0x00007f1ff925fedd: mov    %rdx,%r8
  0.00%                      0x00007f1ff925fee0: shl    $0x3,%r8           ;*getfield q1
                                                                           ; - com.google.re2j.Machine::match@53 (line 192)
                             0x00007f1ff925fee4: mov    %r8,0x20(%rsp)
                             0x00007f1ff925fee9: xor    %eax,%eax
                             0x00007f1ff925feeb: mov    $0x1,%r8d
  0.00%                      0x00007f1ff925fef1: xor    %ebp,%ebp
                             0x00007f1ff925fef3: mov    %r8d,0x14(%rsp)
  0.01%                      0x00007f1ff925fef8: mov    %ebp,0x60(%rsp)
                   ╭         0x00007f1ff925fefc: jmpq   0x00007f1ff926007e
  0.07%    0.08%   │    ↗    0x00007f1ff925ff01: or     $0x20,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                   │    │                                                  ; - com.google.re2j.Machine::match@322 (line 245)
  0.01%    0.02%   │    │    0x00007f1ff925ff05: mov    %r8d,0x4c(%rsp)    ;*iload_2
                   │    │                                                  ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   │    │                                                  ; - com.google.re2j.Machine::match@322 (line 245)
  0.28%    0.28%   │    │↗   0x00007f1ff925ff0a: mov    0x60(%rsp),%r10d
  0.31%    0.34%   │    ││   0x00007f1ff925ff0f: cmp    %r14d,%r10d
                   │    ││   0x00007f1ff925ff12: je     0x00007f1ff92606e9  ;*if_icmpne
                   │    ││                                                 ; - com.google.re2j.Machine::match@347 (line 246)
  0.13%    0.09%   │    ││   0x00007f1ff925ff18: xor    %ebx,%ebx          ;*invokespecial step
                   │    ││                                                 ; - com.google.re2j.Machine::match@355 (line 246)
  0.10%    0.12%   │    ││   0x00007f1ff925ff1a: mov    %rax,-0x8(%rsp)
  0.23%    0.20%   │    ││   0x00007f1ff925ff1f: mov    0x60(%rsp),%eax
  0.26%    0.24%   │    ││   0x00007f1ff925ff23: mov    %eax,0x38(%rsp)
  0.25%    0.18%   │    ││   0x00007f1ff925ff27: mov    -0x8(%rsp),%rax    ;*invokevirtual endPos
                   │    ││                                                 ; - com.google.re2j.Machine::match@344 (line 246)
  0.94%    0.34%   │    ││   0x00007f1ff925ff2c: add    0x28(%rsp),%r10d   ;*iadd
                   │    ││                                                 ; - com.google.re2j.Machine::match@336 (line 246)
  0.19%    0.22%   │    ││   0x00007f1ff925ff31: mov    %r10d,0x60(%rsp)
  0.23%    0.22%   │    ││   0x00007f1ff925ff36: mov    0x40(%rsp),%rsi
  0.07%    0.04%   │    ││   0x00007f1ff925ff3b: mov    0x18(%rsp),%rdx
  0.10%    0.04%   │    ││   0x00007f1ff925ff40: mov    0x20(%rsp),%rcx
  0.15%    0.25%   │    ││   0x00007f1ff925ff45: mov    0x38(%rsp),%r8d
  0.46%    0.20%   │    ││   0x00007f1ff925ff4a: mov    %r10d,%r9d
  0.09%    0.05%   │    ││   0x00007f1ff925ff4d: mov    0x4c(%rsp),%r11d
  0.09%    0.08%   │    ││   0x00007f1ff925ff52: mov    %r11d,(%rsp)
  0.17%    0.02%   │    ││   0x00007f1ff925ff56: mov    0x3c(%rsp),%r11d
  0.31%    0.31%   │    ││   0x00007f1ff925ff5b: mov    %r11d,0x8(%rsp)
  0.13%    0.09%   │    ││   0x00007f1ff925ff60: mov    %ebx,0x10(%rsp)
  0.11%    0.08%   │    ││   0x00007f1ff925ff64: data16 xchg %ax,%ax
  0.25%    0.23%   │    ││   0x00007f1ff925ff67: callq  0x00007f1ff9046020  ; OopMap{[24]=Oop [32]=Oop [52]=NarrowOop [64]=Oop [80]=Oop off=652}
                   │    ││                                                 ;*invokespecial step
                   │    ││                                                 ; - com.google.re2j.Machine::match@355 (line 246)
                   │    ││                                                 ;   {optimized virtual_call}
  0.00%            │    ││   0x00007f1ff925ff6c: mov    0x40(%rsp),%r10
  0.73%    0.68%   │    ││   0x00007f1ff925ff71: movzbl 0x11(%r10),%ebx    ;*getfield captures
                   │    ││                                                 ; - com.google.re2j.Machine::match@367 (line 250)
  0.02%    0.01%   │    ││   0x00007f1ff925ff76: movzbl 0x10(%r10),%eax    ;*getfield matched
                   │    ││                                                 ; - com.google.re2j.Machine::match@374 (line 250)
                   │    ││   0x00007f1ff925ff7b: mov    0x28(%rsp),%r8d
  0.74%    0.87%   │    ││   0x00007f1ff925ff80: test   %r8d,%r8d
                   │    ││   0x00007f1ff925ff83: je     0x00007f1ff92606aa  ;*ifne
                   │    ││                                                 ; - com.google.re2j.Machine::match@360 (line 247)
                   │    ││   0x00007f1ff925ff89: test   %ebx,%ebx
                   │    ││   0x00007f1ff925ff8b: jne    0x00007f1ff9260ad1  ;*ifne
                   │    ││                                                 ; - com.google.re2j.Machine::match@370 (line 250)
           0.00%   │    ││   0x00007f1ff925ff91: test   %eax,%eax
                   │    ││   0x00007f1ff925ff93: jne    0x00007f1ff9260d15  ;*ifeq
                   │    ││                                                 ; - com.google.re2j.Machine::match@377 (line 250)
  0.03%    0.01%   │    ││   0x00007f1ff925ff99: mov    0x50(%rsp),%r10
  0.52%    0.87%   │    ││   0x00007f1ff925ff9e: mov    0x10(%r10),%r14d   ;*getfield end
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                   │    ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.01%    0.03%   │    ││   0x00007f1ff925ffa2: mov    0xc(%r10),%esi     ;*getfield start
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                   │    ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.01%    0.01%   │    ││   0x00007f1ff925ffa6: mov    0x14(%r10),%ecx    ;*getfield str
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                   │    ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.01%    0.01%   │    ││   0x00007f1ff925ffaa: mov    0x2c(%rsp),%r11d
  0.68%    0.69%   │    ││   0x00007f1ff925ffaf: cmp    $0xffffffff,%r11d
                   │    ││   0x00007f1ff925ffb3: je     0x00007f1ff92606f3  ;*if_icmpeq
                   │    ││                                                 ; - com.google.re2j.Machine::match@399 (line 258)
  0.00%            │    ││   0x00007f1ff925ffb9: mov    0x30(%rsp),%r9d
  0.00%            │    ││   0x00007f1ff925ffbe: add    0x60(%rsp),%r9d
  0.01%    0.01%   │    ││   0x00007f1ff925ffc3: add    %esi,%r9d          ;*iadd
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                   │    ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.74%    0.85%   │    ││   0x00007f1ff925ffc6: cmp    %r14d,%r9d
                   │    ││   0x00007f1ff925ffc9: jge    0x00007f1ff9260579  ;*if_icmpge
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                   │    ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.00%    0.00%   │    ││   0x00007f1ff925ffcf: mov    0x8(%r12,%rcx,8),%r11d  ; implicit exception: dispatches to 0x00007f1ff9261bc9
  0.22%    0.27%   │    ││   0x00007f1ff925ffd4: cmp    $0xf80002da,%r11d  ;   {metadata(&apos;java/lang/String&apos;)}
                   │    ││   0x00007f1ff925ffdb: jne    0x00007f1ff92609c5
  0.31%    0.36%   │    ││   0x00007f1ff925ffe1: lea    (%r12,%rcx,8),%rdi  ;*invokeinterface charAt
                   │    ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.30%    0.47%   │    ││   0x00007f1ff925ffe5: test   %r9d,%r9d
                   │    ││   0x00007f1ff925ffe8: jl     0x00007f1ff9260b25  ;*iflt
                   │    ││                                                 ; - java.lang.String::charAt@1 (line 657)
                   │    ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.01%            │    ││   0x00007f1ff925ffee: mov    0xc(%rdi),%r8d     ;*getfield value
                   │    ││                                                 ; - java.lang.String::charAt@6 (line 657)
                   │    ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.08%    0.12%   │    ││   0x00007f1ff925fff2: mov    0xc(%r12,%r8,8),%ebp  ;*arraylength
                   │    ││                                                 ; - java.lang.String::charAt@9 (line 657)
                   │    ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
                   │    ││                                                 ; implicit exception: dispatches to 0x00007f1ff9261bdd
  2.16%    2.19%   │    ││   0x00007f1ff925fff7: cmp    %ebp,%r9d
                   │    ││   0x00007f1ff925fffa: jge    0x00007f1ff9260d69  ;*if_icmplt
                   │    ││                                                 ; - java.lang.String::charAt@10 (line 657)
                   │    ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.57%    0.83%   │    ││   0x00007f1ff9260000: cmp    %ebp,%r9d
                   │    ││   0x00007f1ff9260003: jae    0x00007f1ff9260871
  0.06%    0.09%   │    ││   0x00007f1ff9260009: lea    (%r12,%r8,8),%r10
                   │    ││   0x00007f1ff926000d: movzwl 0x10(%r10,%r9,2),%r8d  ;*caload
                   │    ││                                                 ; - java.lang.String::charAt@27 (line 660)
                   │    ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.06%    0.06%   │    ││   0x00007f1ff9260013: cmp    $0xd800,%r8d
                   │    ││   0x00007f1ff926001a: jge    0x00007f1ff9260de1  ;*if_icmplt
                   │    ││                                                 ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   │    ││                                                 ; - java.lang.Character::codePointAt@9 (line 4867)
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.63%    0.76%   │    ││   0x00007f1ff9260020: shl    $0x3,%r8d          ;*ishl
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                   │    ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.43%    0.41%   │    ││   0x00007f1ff9260024: mov    %r8d,%ebp
                   │    ││   0x00007f1ff9260027: or     $0x1,%ebp
  0.67%    0.78%   │    ││   0x00007f1ff926002a: and    $0x7,%r8d
  0.11%    0.13%   │    ││   0x00007f1ff926002e: sar    $0x3,%ebp          ;*ishr
                   │    ││                                                 ; - com.google.re2j.Machine::match@415 (line 260)
  0.55%    0.76%   │    ││   0x00007f1ff9260031: or     $0x1,%r8d          ; OopMap{rcx=NarrowOop [24]=Oop [32]=Oop [64]=Oop [80]=Oop off=853}
                   │    ││                                                 ;*goto
                   │    ││                                                 ; - com.google.re2j.Machine::match@437 (line 266)
  0.06%    0.07%   │    ││   0x00007f1ff9260035: test   %eax,0x163b9fc5(%rip)        # 0x00007f200f61a000
                   │    ││                                                 ;*goto
                   │    ││                                                 ; - com.google.re2j.Machine::match@437 (line 266)
                   │    ││                                                 ;   {poll}
  0.03%    0.00%   │    ││   0x00007f1ff926003b: mov    0x40(%rsp),%r10
  0.07%    0.07%   │    ││   0x00007f1ff9260040: mov    0x28(%r10),%r11d   ;*getfield matchcap
                   │    ││                                                 ; - com.google.re2j.Machine::match@307 (line 243)
  0.42%    0.61%   │    ││   0x00007f1ff9260044: mov    0x14(%r10),%r9d    ;*getfield re2
                   │    ││                                                 ; - com.google.re2j.Machine::match@169 (line 220)
  0.06%    0.06%   │    ││   0x00007f1ff9260048: mov    0x20(%rsp),%r10
                   │    ││   0x00007f1ff926004d: mov    %r10,%rdi
  0.05%    0.07%   │    ││   0x00007f1ff9260050: shr    $0x3,%rdi
  0.47%    0.58%   │    ││   0x00007f1ff9260054: mov    %edi,0x34(%rsp)
  0.05%    0.07%   │    ││   0x00007f1ff9260058: mov    0x2c(%rsp),%edi
                   │    ││   0x00007f1ff926005c: mov    0x4c(%rsp),%r10d
  0.05%    0.07%   │    ││   0x00007f1ff9260061: mov    0x18(%rsp),%rdx
  0.57%    0.71%   │    ││   0x00007f1ff9260066: mov    %rdx,0x20(%rsp)
  0.07%    0.07%   │    ││   0x00007f1ff926006b: mov    0x30(%rsp),%r13d
                   │    ││   0x00007f1ff9260070: mov    %r13d,0x28(%rsp)
  0.05%    0.04%   │    ││   0x00007f1ff9260075: mov    %ebp,0x2c(%rsp)
  0.51%    0.76%   │    ││   0x00007f1ff9260079: mov    %r8d,0x30(%rsp)    ;*getfield matchcap
                   │    ││                                                 ; - com.google.re2j.Machine::match@307 (line 243)
  0.06%    0.09%   ↘    ││   0x00007f1ff926007e: mov    0x34(%rsp),%r8d
  0.00%                 ││   0x00007f1ff9260083: movzbl 0x18(%r12,%r8,8),%r8d  ; implicit exception: dispatches to 0x00007f1ff9261b75
  0.08%    0.06%        ││   0x00007f1ff9260089: mov    0x34(%rsp),%ebp
  0.47%    0.71%        ││   0x00007f1ff926008d: lea    (%r12,%rbp,8),%rdx  ;*aload
                        ││                                                 ; - com.google.re2j.Machine::match@136 (line 211)
  0.06%    0.06%        ││   0x00007f1ff9260091: mov    %rdx,0x18(%rsp)
                        ││   0x00007f1ff9260096: test   %r8d,%r8d
                        ││   0x00007f1ff9260099: jne    0x00007f1ff926031b  ;*aload_0
                        ││                                                 ; - com.google.re2j.Machine::match@267 (line 237)
  0.07%    0.11%        ││   0x00007f1ff926009f: test   %eax,%eax
                        ││   0x00007f1ff92600a1: jne    0x00007f1ff9260a2d  ;*ifne
                        ││                                                 ; - com.google.re2j.Machine::match@271 (line 237)
  0.60%    0.66%        ││   0x00007f1ff92600a7: mov    0x60(%rsp),%r8d
  0.05%    0.06%        ││   0x00007f1ff92600ac: test   %r8d,%r8d
                    ╭   ││   0x00007f1ff92600af: je     0x00007f1ff92600bf  ;*ifeq
                    │   ││                                                 ; - com.google.re2j.Machine::match@275 (line 237)
                    │   ││   0x00007f1ff92600b1: mov    0x3c(%rsp),%r9d
  0.03%    0.06%    │   ││   0x00007f1ff92600b6: test   %r9d,%r9d
                    │   ││   0x00007f1ff92600b9: jne    0x00007f1ff9260a81  ;*aload_0
                    │   ││                                                 ; - com.google.re2j.Machine::match@282 (line 240)
  0.55%    0.56%    ↘   ││   0x00007f1ff92600bf: test   %ebx,%ebx
                        ││   0x00007f1ff92600c1: jne    0x00007f1ff9260ba1  ;*ifeq
                        ││                                                 ; - com.google.re2j.Machine::match@286 (line 240)
  0.04%    0.05%        ││   0x00007f1ff92600c7: mov    0x40(%rsp),%r8
                        ││   0x00007f1ff92600cc: mov    0x18(%r8),%r8d     ;*getfield prog
                        ││                                                 ; - com.google.re2j.Machine::match@297 (line 243)
  0.06%    0.05%        ││   0x00007f1ff92600d0: mov    0x1c(%r12,%r8,8),%ebp  ;*getfield startInst
                        ││                                                 ; - com.google.re2j.Machine::match@300 (line 243)
                        ││                                                 ; implicit exception: dispatches to 0x00007f1ff9261b85
  0.63%    0.55%        ││   0x00007f1ff92600d5: mov    0x8(%r12,%rbp,8),%r9d  ; implicit exception: dispatches to 0x00007f1ff9261b95
  0.36%    0.41%        ││   0x00007f1ff92600da: cmp    $0xf8019993,%r9d   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                        ││   0x00007f1ff92600e1: jne    0x00007f1ff92608f5
  0.33%    0.39%        ││   0x00007f1ff92600e7: lea    (%r12,%rbp,8),%r8  ;*invokevirtual add
                        ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.02%    0.01%        ││   0x00007f1ff92600eb: mov    0x18(%r8),%r10d    ;*getfield pc
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                        ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.22%    0.12%        ││   0x00007f1ff92600ef: cmp    $0x40,%r10d
                        ││   0x00007f1ff92600f3: jg     0x00007f1ff9260bf5  ;*if_icmpgt
                        ││                                                 ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                        ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.41%    0.29%        ││   0x00007f1ff92600f9: mov    %r8,%r9
  0.03%    0.02%        ││   0x00007f1ff92600fc: mov    $0x1,%ebx
                        ││   0x00007f1ff9260101: mov    %r10d,%ecx
  0.27%    0.06%        ││   0x00007f1ff9260104: shl    %cl,%rbx           ;*lshl
                        ││                                                 ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                        ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.86%    0.44%        ││   0x00007f1ff9260107: mov    0x34(%rsp),%ecx
  0.02%    0.01%        ││   0x00007f1ff926010b: mov    0x10(%r12,%rcx,8),%rcx  ;*getfield pcsl
                        ││                                                 ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                        ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.06%                 ││   0x00007f1ff9260110: mov    %rcx,%r8
  0.02%                 ││   0x00007f1ff9260113: and    %rbx,%r8           ;*land
                        ││                                                 ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                        ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.55%    0.20%        ││   0x00007f1ff9260116: test   %r8,%r8
                        ││   0x00007f1ff9260119: jne    0x00007f1ff9260c45  ;*ifeq
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                        ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.06%    0.01%        ││   0x00007f1ff926011f: cmp    $0x40,%r10d
                        ││   0x00007f1ff9260123: jge    0x00007f1ff9260cc1  ;*if_icmpge
                        ││                                                 ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                        ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.13%    0.05%        ││   0x00007f1ff9260129: mov    0x34(%rsp),%r10d
  0.00%    0.03%        ││   0x00007f1ff926012e: mov    %r12b,0x18(%r12,%r10,8)  ;*putfield empty
                        ││                                                 ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                        ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.42%    0.25%        ││   0x00007f1ff9260133: mov    0xc(%r12,%r10,8),%r10d  ;*getfield size
                        ││                                                 ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                        ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.09%    0.02%        ││   0x00007f1ff9260138: mov    0x34(%rsp),%r11d
  0.14%    0.14%        ││   0x00007f1ff926013d: mov    0x20(%r12,%r11,8),%r11d  ;*getfield denseThreadsInstructions
                        ││                                                 ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                        ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.01%    0.02%        ││   0x00007f1ff9260142: or     %rcx,%rbx
  0.49%    0.53%        ││   0x00007f1ff9260145: mov    0x34(%rsp),%ecx
  0.07%    0.06%        ││   0x00007f1ff9260149: mov    %rbx,0x10(%r12,%rcx,8)  ;*putfield pcsl
                        ││                                                 ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                        ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.11%    0.10%        ││   0x00007f1ff926014e: mov    %r10d,%r8d
  0.01%    0.01%        ││   0x00007f1ff9260151: inc    %r8d
  0.40%    0.28%        ││   0x00007f1ff9260154: mov    %r8d,0xc(%r12,%rcx,8)  ;*putfield size
                        ││                                                 ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                        ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.06%    0.07%        ││   0x00007f1ff9260159: mov    0xc(%r12,%r11,8),%r8d  ; implicit exception: dispatches to 0x00007f1ff9261bb1
  0.11%    0.11%        ││   0x00007f1ff926015e: cmp    %r8d,%r10d
                        ││   0x00007f1ff9260161: jae    0x00007f1ff9260801
  0.01%    0.01%        ││   0x00007f1ff9260167: mov    0x8(%r12,%r11,8),%r8d
  0.43%    0.32%        ││   0x00007f1ff926016c: cmp    $0xf8019808,%r8d   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                        ││   0x00007f1ff9260173: jne    0x00007f1ff9260951  ;*aastore
                        ││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                        ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.04%    0.04%        ││   0x00007f1ff9260179: test   %edi,%edi
                     ╭  ││   0x00007f1ff926017b: jl     0x00007f1ff9260229  ;*ifge
                     │  ││                                                 ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                     │  ││                                                 ; - com.google.re2j.Machine::match@322 (line 245)
  0.17%    0.10%     │  ││   0x00007f1ff9260181: xor    %r8d,%r8d          ;*iload_0
                     │  ││                                                 ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                     │  ││                                                 ; - com.google.re2j.Machine::match@322 (line 245)
  0.01%    0.01%     │  ││↗  0x00007f1ff9260184: cmp    $0xa,%edi
                     │  │││  0x00007f1ff9260187: je     0x00007f1ff9260586  ;*iload_1
                     │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                     │  │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.49%    0.32%     │  │││  0x00007f1ff926018d: mov    0x2c(%rsp),%ebx
  0.05%    0.06%     │  │││  0x00007f1ff9260191: test   %ebx,%ebx
                     │  │││  0x00007f1ff9260193: jl     0x00007f1ff9260570  ;*iload_1
                     │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                     │  │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.11%    0.18%     │  │││  0x00007f1ff9260199: cmp    $0xa,%ebx
                     │  │││  0x00007f1ff926019c: je     0x00007f1ff926058f  ;*iload_0
                     │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                     │  │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.01%    0.01%     │  │││  0x00007f1ff92601a2: mov    %r9,%rcx
  0.43%    0.57%     │  │││  0x00007f1ff92601a5: shr    $0x3,%rcx          ;*aastore
                     │  │││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                     │  │││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                     │  │││                                                ; - com.google.re2j.Machine::match@314 (line 243)
  0.06%    0.05%     │  │││  0x00007f1ff92601a9: shl    $0x3,%r11          ;*getfield denseThreadsInstructions
                     │  │││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                     │  │││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                     │  │││                                                ; - com.google.re2j.Machine::match@314 (line 243)
  0.14%    0.15%     │  │││  0x00007f1ff92601ad: lea    0x10(%r11,%r10,4),%r10
  0.01%    0.01%     │  │││  0x00007f1ff92601b2: mov    %ecx,(%r10)
  0.56%    0.48%     │  │││  0x00007f1ff92601b5: mov    %edi,%r9d
  0.02%    0.06%     │  │││  0x00007f1ff92601b8: add    $0xffffffbf,%r9d
  0.14%    0.11%     │  │││  0x00007f1ff92601bc: shr    $0x9,%r10
  0.00%    0.01%     │  │││  0x00007f1ff92601c0: movabs $0x7f1ff4dee000,%r11
  0.44%    0.46%     │  │││  0x00007f1ff92601ca: mov    %r12b,(%r11,%r10,1)  ;*aastore
                     │  │││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                     │  │││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                     │  │││                                                ; - com.google.re2j.Machine::match@314 (line 243)
  0.82%    1.15%     │  │││  0x00007f1ff92601ce: cmp    $0x1a,%r9d
                     │╭ │││  0x00007f1ff92601d2: jb     0x00007f1ff92601e5  ;*if_icmple
                     ││ │││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                     ││ │││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     ││ │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.04%    0.03%     ││ │││  0x00007f1ff92601d4: mov    %edi,%r11d
  0.00%              ││ │││  0x00007f1ff92601d7: add    $0xffffff9f,%r11d
  0.29%    0.26%     ││ │││  0x00007f1ff92601db: cmp    $0x1a,%r11d
                     ││ │││  0x00007f1ff92601df: jae    0x00007f1ff9260734  ;*iconst_1
                     ││ │││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                     ││ │││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     ││ │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.24%    0.30%     │↘ │││  0x00007f1ff92601e5: mov    $0x1,%ebp          ;*ireturn
                     │  │││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                     │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     │  │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.01%    0.03%     │  │││  0x00007f1ff92601ea: mov    0x2c(%rsp),%r10d
  0.04%    0.07%     │  │││  0x00007f1ff92601ef: add    $0xffffffbf,%r10d
  0.34%    0.31%     │  │││  0x00007f1ff92601f3: cmp    $0x1a,%r10d
                     │ ╭│││  0x00007f1ff92601f7: jb     0x00007f1ff926020c  ;*if_icmple
                     │ ││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                     │ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     │ ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.28%    0.30%     │ ││││  0x00007f1ff92601f9: mov    0x2c(%rsp),%r11d
  0.01%    0.03%     │ ││││  0x00007f1ff92601fe: add    $0xffffff9f,%r11d
  0.07%    0.05%     │ ││││  0x00007f1ff9260202: cmp    $0x1a,%r11d
                     │ ││││  0x00007f1ff9260206: jae    0x00007f1ff9260755  ;*iconst_1
                     │ ││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                     │ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     │ ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.20%    0.31%     │ ↘│││  0x00007f1ff926020c: mov    $0x1,%r10d         ;*ireturn
                     │  │││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                     │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     │  │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.33%    0.42%     │  │││  0x00007f1ff9260212: cmp    %r10d,%ebp
                     │  ╰││  0x00007f1ff9260215: je     0x00007f1ff925ff01  ;*if_icmpeq
                     │   ││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                     │   ││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.02%    0.02%     │   ││  0x00007f1ff926021b: or     $0x10,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                     │   ││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.02%    0.07%     │   ││  0x00007f1ff926021f: mov    %r8d,0x4c(%rsp)
  0.15%    0.13%     │   ╰│  0x00007f1ff9260224: jmpq   0x00007f1ff925ff0a
                     ↘    │  0x00007f1ff9260229: mov    $0x5,%r8d
                          ╰  0x00007f1ff926022f: jmpq   0x00007f1ff9260184
                             0x00007f1ff9260234: nopl   0x0(%rax,%rax,1)
                             0x00007f1ff926023c: data16 data16 xchg %ax,%ax
           0.01%             0x00007f1ff9260240: mov    %edx,0x5c(%rsp)
  0.01%    0.01%             0x00007f1ff9260244: jmpq   0x00007f1ff92604b1
                             0x00007f1ff9260249: mov    0x5c(%rsp),%r9d
                             0x00007f1ff926024e: add    $0x2,%r9d
                             0x00007f1ff9260252: mov    %r9d,0x5c(%rsp)
                             0x00007f1ff9260257: mov    0x5c(%rsp),%r9d
                             0x00007f1ff926025c: inc    %r9d
                             0x00007f1ff926025f: mov    %r9d,0x58(%rsp)
                             0x00007f1ff9260264: jmp    0x00007f1ff9260291
                             0x00007f1ff9260266: mov    0x5c(%rsp),%r9d
                             0x00007f1ff926026b: add    $0x2,%r9d
                             0x00007f1ff926026f: mov    %r9d,0x58(%rsp)
....................................................................................................
 31.32%   31.48%  <total for region 2>

....[Hottest Regions]...............................................................................
 46.96%   46.43%         C2, level 4  com.google.re2j.Machine::step, version 534 (931 bytes) 
 31.32%   31.48%         C2, level 4  com.google.re2j.Machine::match, version 577 (1298 bytes) 
  8.87%    9.53%         C2, level 4  com.google.re2j.Machine::step, version 534 (95 bytes) 
  7.08%    7.91%         C2, level 4  com.google.re2j.Machine::step, version 534 (339 bytes) 
  1.76%    1.88%         C2, level 4  com.google.re2j.Machine::match, version 577 (390 bytes) 
  0.44%    0.26%         C2, level 4  com.google.re2j.Machine::match, version 577 (563 bytes) 
  0.33%    0.03%         C2, level 4  com.google.re2j.RE2::match, version 591 (222 bytes) 
  0.17%    0.17%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.15%    0.07%         C2, level 4  com.google.re2j.RE2::match, version 591 (20 bytes) 
  0.14%    0.07%         C2, level 4  com.google.re2j.RE2::match, version 591 (8 bytes) 
  0.12%    0.07%         C2, level 4  com.google.re2j.RE2::match, version 591 (28 bytes) 
  0.11%            [kernel.kallsyms]  [unknown] (36 bytes) 
  0.09%                  C2, level 4  com.google.re2j.RE2::match, version 591 (131 bytes) 
  0.08%    0.05%         C2, level 4  com.google.re2j.RE2::match, version 591 (0 bytes) 
  0.07%                  C2, level 4  com.google.re2j.RE2::match, version 591 (120 bytes) 
  0.06%    0.01%   [kernel.kallsyms]  [unknown] (1 bytes) 
  0.06%    0.07%         C2, level 4  java.util.Collections::shuffle, version 598 (27 bytes) 
  0.05%    0.04%              [vdso]  [unknown] (9 bytes) 
  0.05%    0.01%              [vdso]  __vdso_clock_gettime (44 bytes) 
  0.04%    0.02%   [kernel.kallsyms]  [unknown] (28 bytes) 
  2.03%    1.88%  <...other 380 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 62.91%   63.87%         C2, level 4  com.google.re2j.Machine::step, version 534 
 33.63%   33.63%         C2, level 4  com.google.re2j.Machine::match, version 577 
  1.10%    0.90%   [kernel.kallsyms]  [unknown] 
  1.06%    0.33%         C2, level 4  com.google.re2j.RE2::match, version 591 
  0.17%    0.10%         C2, level 4  java.util.Collections::shuffle, version 598 
  0.10%    0.08%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 632 
  0.06%    0.02%              [vdso]  __vdso_clock_gettime 
  0.06%    0.04%           libjvm.so  GenericTaskQueueSet<OverflowTaskQueue<StarTask, (MemoryType)1, 131072u>, (MemoryType)1>::steal_best_of_2 
  0.05%    0.01%        libc-2.26.so  __clock_gettime 
  0.05%    0.06%           libjvm.so  PSPromotionManager::copy_to_survivor_space<false> 
  0.05%    0.04%              [vdso]  [unknown] 
  0.04%    0.05%        libc-2.26.so  _IO_fwrite 
  0.04%    0.04%      hsdis-amd64.so  [unknown] 
  0.03%    0.06%           libjvm.so  PSPromotionManager::drain_stacks_depth 
  0.03%    0.05%           libjvm.so  RelocIterator::initialize 
  0.02%    0.00%  libpthread-2.26.so  __libc_write 
  0.02%           libpthread-2.26.so  __pthread_disable_asynccancel 
  0.02%    0.04%           libjvm.so  InstanceKlass::oop_push_contents 
  0.02%    0.01%           libjvm.so  StealTask::do_it 
  0.02%    0.01%        libc-2.26.so  __strlen_avx2 
  0.49%    0.42%  <...other 68 warm methods...>
....................................................................................................
100.00%   99.78%  <totals>

....[Distribution by Source]........................................................................
 97.89%   98.02%         C2, level 4
  1.10%    0.90%   [kernel.kallsyms]
  0.53%    0.64%           libjvm.so
  0.21%    0.27%        libc-2.26.so
  0.12%    0.06%              [vdso]
  0.08%    0.03%  libpthread-2.26.so
  0.04%    0.04%      hsdis-amd64.so
  0.01%    0.02%         interpreter
  0.01%    0.01%        runtime stub
  0.00%                  C1, level 3
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:44

Benchmark                     Mode  Cnt      Score     Error  Units
Re2jFindRegex.testExp1       thrpt   20  25548.581 ± 365.962  ops/s
Re2jFindRegex.testExp1:·asm  thrpt             NaN              ---
