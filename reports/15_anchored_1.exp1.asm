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
# Warmup Iteration   1: 14067.658 ops/s
# Warmup Iteration   2: 27663.944 ops/s
# Warmup Iteration   3: 27935.555 ops/s
# Warmup Iteration   4: 28103.824 ops/s
# Warmup Iteration   5: 28388.964 ops/s
# Warmup Iteration   6: 28461.477 ops/s
# Warmup Iteration   7: 28596.807 ops/s
# Warmup Iteration   8: 28785.881 ops/s
# Warmup Iteration   9: 28786.735 ops/s
# Warmup Iteration  10: 28779.195 ops/s
# Warmup Iteration  11: 28659.837 ops/s
# Warmup Iteration  12: 28478.799 ops/s
# Warmup Iteration  13: 28811.469 ops/s
# Warmup Iteration  14: 28651.557 ops/s
# Warmup Iteration  15: 28837.287 ops/s
# Warmup Iteration  16: 28689.387 ops/s
# Warmup Iteration  17: 27517.057 ops/s
# Warmup Iteration  18: 28661.387 ops/s
# Warmup Iteration  19: 28862.731 ops/s
# Warmup Iteration  20: 28869.029 ops/s
Iteration   1: 28804.802 ops/s
Iteration   2: 28530.214 ops/s
Iteration   3: 27816.454 ops/s
Iteration   4: 28554.402 ops/s
Iteration   5: 28636.429 ops/s
Iteration   6: 28649.386 ops/s
Iteration   7: 28411.981 ops/s
Iteration   8: 28278.164 ops/s
Iteration   9: 28621.829 ops/s
Iteration  10: 28796.162 ops/s
Iteration  11: 28811.893 ops/s
Iteration  12: 28614.709 ops/s
Iteration  13: 28860.273 ops/s
Iteration  14: 28831.270 ops/s
Iteration  15: 28695.510 ops/s
Iteration  16: 28617.476 ops/s
Iteration  17: 28505.706 ops/s
Iteration  18: 28759.808 ops/s
Iteration  19: 28753.074 ops/s
Iteration  20: 28612.694 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  28608.112 ±(99.9%) 206.739 ops/s [Average]
  (min, avg, max) = (27816.454, 28608.112, 28860.273), stdev = 238.081
  CI (99.9%): [28401.373, 28814.851] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1:·asm":
PrintAssembly processed: 214550 total address lines.
Perf output processed (skipped 23.211 seconds):
 Column 1: cycles (20471 events)
 Column 2: instructions (20458 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 549 (866 bytes) 

                     0x00007fe72d24d726: jae    0x00007fe72d24dead
                     0x00007fe72d24d72c: mov    %r8,%r10
                     0x00007fe72d24d72f: mov    %rax,%rcx
                     0x00007fe72d24d732: shr    $0x3,%rcx
                     0x00007fe72d24d736: mov    %ecx,(%r8)
                     0x00007fe72d24d739: shr    $0x9,%r10
                     0x00007fe72d24d73d: movabs $0x7fe73e92c000,%r8
                     0x00007fe72d24d747: mov    %r12b,(%r8,%r10,1)  ;*synchronization entry
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.38%    0.50%     0x00007fe72d24d74b: mov    0x10(%rsp),%r13
  0.07%    0.06%     0x00007fe72d24d750: mov    0xac(%rsp),%r14d
  0.04%    0.08%     0x00007fe72d24d758: mov    0xa4(%rsp),%ebx
  0.21%    0.25%     0x00007fe72d24d75f: mov    0xc(%rsp),%r10d    ;*aload
                                                                   ; - com.google.re2j.Machine::step@211 (line 317)
  2.63%    2.76%  ↗  0x00007fe72d24d764: inc    %r10d              ;*iinc
                  │                                                ; - com.google.re2j.Machine::step@222 (line 283)
  0.10%    0.11%  │  0x00007fe72d24d767: cmp    %r14d,%r10d
                  │  0x00007fe72d24d76a: jge    0x00007fe72d24dbb6
  0.07%    0.06%  │  0x00007fe72d24d770: mov    %r11,%rcx          ;*iload
                  │                                                ; - com.google.re2j.Machine::step@31 (line 286)
  0.46%    0.40%  │  0x00007fe72d24d773: mov    0x20(%r13),%r8d    ;*getfield denseThreadsInstructions
                  │                                                ; - com.google.re2j.Machine::step@86 (line 296)
  1.97%    1.88%  │  0x00007fe72d24d777: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x00007fe72d24ed15
  0.46%    0.51%  │  0x00007fe72d24d77c: cmp    %r11d,%r10d
                  │  0x00007fe72d24d77f: jae    0x00007fe72d24dca8
  0.24%    0.40%  │  0x00007fe72d24d785: lea    (%r12,%r8,8),%r11
  0.45%    0.53%  │  0x00007fe72d24d789: mov    0x10(%r11,%r10,4),%r8d  ;*aaload
                  │                                                ; - com.google.re2j.Machine::step@91 (line 296)
  1.80%    2.18%  │  0x00007fe72d24d78e: mov    0xc(%r12,%r8,8),%ebp  ;*getfield op
                  │                                                ; - com.google.re2j.Machine::step@96 (line 298)
                  │                                                ; implicit exception: dispatches to 0x00007fe72d24ed29
  2.01%    1.85%  │  0x00007fe72d24d793: cmp    $0x6,%ebp
                  │  0x00007fe72d24d796: je     0x00007fe72d24dcdd  ;*if_icmpne
                  │                                                ; - com.google.re2j.Machine::step@101 (line 298)
  1.43%    1.57%  │  0x00007fe72d24d79c: cmp    $0xa,%ebp
                  │  0x00007fe72d24d79f: jne    0x00007fe72d24db43  ;*if_icmpne
                  │                                                ; - com.google.re2j.Inst::matchRune@6 (line 90)
                  │                                                ; - com.google.re2j.Machine::step@183 (line 313)
  0.21%    0.25%  │  0x00007fe72d24d7a5: mov    0x2c(%r12,%r8,8),%r11d  ;*getfield outInst
                  │                                                ; - com.google.re2j.Machine::step@191 (line 314)
  0.10%    0.07%  │  0x00007fe72d24d7aa: mov    0x8(%r12,%r11,8),%r9d  ; implicit exception: dispatches to 0x00007fe72d24ed39
  1.63%    1.54%  │  0x00007fe72d24d7af: lea    (%r12,%r11,8),%rax
  0.03%    0.04%  │  0x00007fe72d24d7b3: cmp    $0xf8019843,%r9d   ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                  │  0x00007fe72d24d7ba: jne    0x00007fe72d24dbe8  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Machine::step@206 (line 314)
  0.59%    0.68%  │  0x00007fe72d24d7c0: mov    0x18(%rax),%edx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 175)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.01%  │  0x00007fe72d24d7c3: mov    %rcx,%r11
  0.12%    0.10%  │  0x00007fe72d24d7c6: mov    0x10(%rcx),%r8     ;*getfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
                  │                                                ; implicit exception: dispatches to 0x00007fe72d24ed4d
  0.06%    0.10%  │  0x00007fe72d24d7ca: cmp    $0x40,%edx
                  │  0x00007fe72d24d7cd: jg     0x00007fe72d24e045  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.55%    0.65%  │  0x00007fe72d24d7d3: mov    $0x1,%edi
  0.03%    0.01%  │  0x00007fe72d24d7d8: mov    %edx,%ecx
  0.06%    0.08%  │  0x00007fe72d24d7da: shl    %cl,%rdi           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  1.27%    1.47%  │  0x00007fe72d24d7dd: mov    %r8,%r9
  0.04%    0.07%  │  0x00007fe72d24d7e0: and    %rdi,%r9
  0.03%    0.03%  │  0x00007fe72d24d7e3: test   %r9,%r9
                  ╰  0x00007fe72d24d7e6: jne    0x00007fe72d24d764  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.07%    0.08%     0x00007fe72d24d7ec: cmp    $0x40,%edx
                     0x00007fe72d24d7ef: jge    0x00007fe72d24e0a1  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.58%    0.62%     0x00007fe72d24d7f5: mov    %r12b,0x18(%r11)   ;*putfield empty
                                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.09%     0x00007fe72d24d7f9: mov    0x2c(%rax),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%    0.02%     0x00007fe72d24d7fc: or     %r8,%rdi           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.09%    0.07%     0x00007fe72d24d7ff: mov    %rdi,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.55%    0.51%     0x00007fe72d24d803: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007fe72d24ed61
  0.80%    0.82%     0x00007fe72d24d808: cmp    $0xf8019909,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007fe72d24d80f: jne    0x00007fe72d24dd9d
  0.67%    0.77%     0x00007fe72d24d815: lea    (%r12,%rbp,8),%r9  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007fe72d24d819: mov    0x18(%r9),%edx     ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.63%    0.52%     0x00007fe72d24d81d: cmp    $0x40,%edx
                     0x00007fe72d24d820: jg     0x00007fe72d24e0fd  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.66%    0.58%     0x00007fe72d24d826: mov    $0x1,%r8d
  0.08%    0.06%     0x00007fe72d24d82c: mov    %edx,%ecx
           0.00%     0x00007fe72d24d82e: shl    %cl,%r8            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  1.27%    1.09%     0x00007fe72d24d831: mov    %rdi,%rcx
           0.00%     0x00007fe72d24d834: and    %r8,%rcx           ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007fe72d24d837: test   %rcx,%rcx
                     0x00007fe72d24d83a: jne    0x00007fe72d24e15d  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.29%    0.23%     0x00007fe72d24d840: cmp    $0x40,%edx
                     0x00007fe72d24d843: jge    0x00007fe72d24e1c9  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.47%    0.51%     0x00007fe72d24d849: or     %r8,%rdi           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007fe72d24d84c: mov    %rdi,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.01%     0x00007fe72d24d850: mov    0x20(%r11),%r8d    ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.22%    0.31%     0x00007fe72d24d854: mov    0xc(%r11),%ecx     ;*getfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.52%    0.49%     0x00007fe72d24d858: mov    %ecx,%edx
                     0x00007fe72d24d85a: inc    %edx               ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.03%     0x00007fe72d24d85c: mov    %edx,0xc(%r11)     ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.27%    0.26%     0x00007fe72d24d860: mov    0xc(%r12,%r8,8),%esi  ; implicit exception: dispatches to 0x00007fe72d24ed75
  0.41%    0.47%     0x00007fe72d24d865: mov    %esi,0x34(%rsp)
                     0x00007fe72d24d869: cmp    %esi,%ecx
                     0x00007fe72d24d86b: jae    0x00007fe72d24dd3d
  0.03%    0.02%     0x00007fe72d24d871: mov    0x8(%r12,%r8,8),%esi
  0.21%    0.18%     0x00007fe72d24d876: cmp    $0xf8019807,%esi   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                     0x00007fe72d24d87c: jne    0x00007fe72d24ddf9  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.41%    0.31%     0x00007fe72d24d882: vmovd  %edx,%xmm1
           0.00%     0x00007fe72d24d886: mov    %ecx,0x30(%rsp)
  0.02%    0.01%     0x00007fe72d24d88a: mov    %r10d,0xc(%rsp)
  0.15%    0.15%     0x00007fe72d24d88f: mov    %ebx,0xa4(%rsp)
  0.52%    0.23%     0x00007fe72d24d896: mov    %r14d,0xac(%rsp)
                     0x00007fe72d24d89e: mov    %r11,%rdx
  0.02%    0.01%     0x00007fe72d24d8a1: mov    %r13,0x10(%rsp)
  0.21%    0.20%     0x00007fe72d24d8a6: mov    0x34(%rax),%r10d   ;*getfield inst2
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@43 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.43%    0.28%     0x00007fe72d24d8aa: mov    %r10d,%ecx
                     0x00007fe72d24d8ad: mov    %r9,%r10
  0.02%    0.02%     0x00007fe72d24d8b0: shr    $0x3,%r10          ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.21%    0.30%     0x00007fe72d24d8b4: lea    (%r12,%r8,8),%r9   ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.48%    0.64%     0x00007fe72d24d8b8: mov    %r8d,%r14d
  0.00%              0x00007fe72d24d8bb: mov    0x30(%rsp),%r11d
  0.04%    0.04%     0x00007fe72d24d8c0: lea    0x10(%r9,%r11,4),%r11
  0.19%    0.23%     0x00007fe72d24d8c5: mov    %r10d,(%r11)
  0.41%    0.47%     0x00007fe72d24d8c8: mov    %r11,%r10
                     0x00007fe72d24d8cb: shr    $0x9,%r10
  0.04%    0.02%     0x00007fe72d24d8cf: movabs $0x7fe73e92c000,%r11
  0.23%    0.14%     0x00007fe72d24d8d9: mov    %r12b,(%r11,%r10,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.53%    0.37%     0x00007fe72d24d8dd: mov    %ecx,%r10d
                     0x00007fe72d24d8e0: mov    0x8(%r12,%r10,8),%r11d  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                                                                   ; implicit exception: dispatches to 0x00007fe72d24ed91
  0.02%              0x00007fe72d24d8e5: movslq 0x30(%rsp),%r10
  0.19%    0.28%     0x00007fe72d24d8ea: lea    (%r9,%r10,4),%rbx  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.48%    0.49%     0x00007fe72d24d8ee: mov    %rbx,%r8
           0.00%     0x00007fe72d24d8f1: add    $0x14,%r8          ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.04%     0x00007fe72d24d8f5: mov    %ecx,%r10d
  0.20%    0.29%     0x00007fe72d24d8f8: lea    (%r12,%r10,8),%rax
  0.46%    0.40%     0x00007fe72d24d8fc: mov    0x30(%rsp),%r10d
  0.00%              0x00007fe72d24d901: add    $0x2,%r10d         ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.03%     0x00007fe72d24d905: cmp    $0xf8019885,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                     0x00007fe72d24d90c: jne    0x00007fe72d24d6d4  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.20%    0.09%     0x00007fe72d24d912: mov    0x18(%rax),%r11d   ;*getfield pc
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@2 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.49%    0.27%     0x00007fe72d24d916: mov    %r11d,%ecx
                     0x00007fe72d24d919: cmp    $0x40,%r11d
                     0x00007fe72d24d91d: jg     0x00007fe72d24e3e1  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.00%     0x00007fe72d24d923: mov    $0x1,%esi
  0.23%    0.08%     0x00007fe72d24d928: shl    %cl,%rsi           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.60%    0.22%     0x00007fe72d24d92b: mov    %rdi,%r11
  0.19%    0.10%     0x00007fe72d24d92e: and    %rsi,%r11          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.44%    0.25%     0x00007fe72d24d931: test   %r11,%r11
                     0x00007fe72d24d934: jne    0x00007fe72d24e425  ;*ifeq
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@8 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007fe72d24d93a: mov    %ecx,%r11d
  0.03%    0.03%     0x00007fe72d24d93d: cmp    $0x40,%r11d
                     0x00007fe72d24d941: jge    0x00007fe72d24e47d  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.18%    0.09%     0x00007fe72d24d947: mov    0x2c(%rax),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@82 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.54%    0.22%     0x00007fe72d24d94a: or     %rsi,%rdi          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007fe72d24d94d: mov    %rdi,0x10(%rdx)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.03%     0x00007fe72d24d951: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007fe72d24edc5
  0.22%    0.20%     0x00007fe72d24d956: cmp    $0xf8019843,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                     0x00007fe72d24d95c: jne    0x00007fe72d24dfc1
  0.47%    0.52%     0x00007fe72d24d962: lea    (%r12,%rbp,8),%rax  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
           0.00%     0x00007fe72d24d966: mov    0x18(%rax),%r11d   ;*getfield pc
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.00%     0x00007fe72d24d96a: mov    %r11d,%r13d
  0.22%    0.02%     0x00007fe72d24d96d: cmp    $0x40,%r11d
                     0x00007fe72d24d971: jg     0x00007fe72d24e645  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.42%    0.06%     0x00007fe72d24d977: mov    $0x1,%esi
                     0x00007fe72d24d97c: mov    %r11d,%ecx
  0.03%    0.01%     0x00007fe72d24d97f: shl    %cl,%rsi           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.66%    0.90%     0x00007fe72d24d982: mov    %rdi,%r11
  0.01%    0.03%     0x00007fe72d24d985: and    %rsi,%r11
  0.21%    0.31%     0x00007fe72d24d988: test   %r11,%r11
                     0x00007fe72d24d98b: jne    0x00007fe72d24dca0  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.49%    0.62%     0x00007fe72d24d991: mov    %ecx,%r11d
                     0x00007fe72d24d994: cmp    $0x40,%r11d
                     0x00007fe72d24d998: jge    0x00007fe72d24e68d  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%              0x00007fe72d24d99e: mov    0x2c(%rax),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.19%    0.24%     0x00007fe72d24d9a1: or     %rsi,%rdi          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.51%    0.53%     0x00007fe72d24d9a4: mov    %rdi,0x10(%rdx)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%              0x00007fe72d24d9a8: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007fe72d24edd9
  0.01%    0.02%     0x00007fe72d24d9ad: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007fe72d24d9b3: jne    0x00007fe72d24dff5
  0.20%    0.31%     0x00007fe72d24d9b9: lea    (%r12,%rbp,8),%r13  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.55%    0.63%     0x00007fe72d24d9bd: mov    0x18(%r13),%r11d   ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.03%     0x00007fe72d24d9c1: mov    %r11d,%ecx
           0.05%     0x00007fe72d24d9c4: cmp    $0x40,%r11d
                     0x00007fe72d24d9c8: jg     0x00007fe72d24e6d5  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.27%    0.27%     0x00007fe72d24d9ce: mov    $0x1,%esi
  0.40%    0.49%     0x00007fe72d24d9d3: shl    %cl,%rsi           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.37%    0.37%     0x00007fe72d24d9d6: mov    %rdi,%r11
  0.47%    0.41%     0x00007fe72d24d9d9: and    %rsi,%r11          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007fe72d24d9dc: test   %r11,%r11
                     0x00007fe72d24d9df: jne    0x00007fe72d24e721  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.07%    0.07%     0x00007fe72d24d9e5: mov    %ecx,%r11d
  0.21%    0.27%     0x00007fe72d24d9e8: cmp    $0x40,%r11d
                     0x00007fe72d24d9ec: jge    0x00007fe72d24e781  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.51%    0.45%     0x00007fe72d24d9f2: mov    %r10d,0xc(%rdx)    ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%              0x00007fe72d24d9f6: or     %rsi,%rdi          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.06%     0x00007fe72d24d9f9: mov    %rdi,0x10(%rdx)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.22%    0.24%     0x00007fe72d24d9fd: cmp    0x34(%rsp),%r10d
                     0x00007fe72d24da02: jae    0x00007fe72d24df35  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.45%    0.44%     0x00007fe72d24da08: mov    0x34(%rax),%r11d   ;*getfield inst2
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@43 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007fe72d24da0c: mov    %r8,%rcx
  0.05%    0.04%     0x00007fe72d24da0f: mov    %r13,%r10
  0.24%    0.22%     0x00007fe72d24da12: shr    $0x3,%r10
  0.43%    0.41%     0x00007fe72d24da16: mov    %r10d,(%r8)
           0.00%     0x00007fe72d24da19: shr    $0x9,%rcx
  0.04%    0.06%     0x00007fe72d24da1d: movabs $0x7fe73e92c000,%r10
  0.21%    0.25%     0x00007fe72d24da27: mov    %r12b,(%r10,%rcx,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.45%    0.50%     0x00007fe72d24da2b: mov    0x8(%r12,%r11,8),%ecx  ; implicit exception: dispatches to 0x00007fe72d24eded
  0.02%    0.03%     0x00007fe72d24da30: lea    (%r12,%r11,8),%r8
  0.06%    0.06%     0x00007fe72d24da34: cmp    $0xf8019885,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                     0x00007fe72d24da3a: je     0x00007fe72d24dab2
  0.24%    0.35%     0x00007fe72d24da3c: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007fe72d24da42: jne    0x00007fe72d24e36d  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.41%    0.34%     0x00007fe72d24da48: mov    0x18(%r8),%ecx     ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
           0.01%     0x00007fe72d24da4c: cmp    $0x40,%ecx
                     0x00007fe72d24da4f: jg     0x00007fe72d24e8b5  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.11%    0.11%     0x00007fe72d24da55: mov    $0x1,%r10d
  0.23%    0.25%     0x00007fe72d24da5b: shl    %cl,%r10           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.60%    0.73%     0x00007fe72d24da5e: mov    %rdi,%r11
  0.19%    0.31%     0x00007fe72d24da61: and    %r10,%r11          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.46%    0.51%     0x00007fe72d24da64: test   %r11,%r11
                     0x00007fe72d24da67: jne    0x00007fe72d24e931  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.09%     0x00007fe72d24da6d: cmp    $0x40,%ecx
                     0x00007fe72d24da70: jge    0x00007fe72d24e9c1  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.08%     0x00007fe72d24da76: or     %r10,%rdi
  0.20%    0.10%     0x00007fe72d24da79: mov    %rdx,%r11
  0.37%    0.26%     0x00007fe72d24da7c: mov    %rdi,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.06%     0x00007fe72d24da80: add    $0x18,%rbx
  0.05%    0.08%     0x00007fe72d24da84: shr    $0x3,%r8
  0.21%    0.27%     0x00007fe72d24da88: mov    %r8d,(%rbx)        ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.42%    0.63%     0x00007fe72d24da8b: mov    %rbx,%r10
  0.10%    0.06%     0x00007fe72d24da8e: mov    0x30(%rsp),%r9d
  0.05%    0.07%     0x00007fe72d24da93: add    $0x3,%r9d
  0.18%    0.22%     0x00007fe72d24da97: mov    %r9d,0xc(%r11)     ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.32%    0.51%     0x00007fe72d24da9b: shr    $0x9,%r10
  0.06%    0.05%     0x00007fe72d24da9f: movabs $0x7fe73e92c000,%r8
  0.03%    0.06%     0x00007fe72d24daa9: mov    %r12b,(%r8,%r10,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.19%    0.32%     0x00007fe72d24daad: jmpq   0x00007fe72d24d74b  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
....................................................................................................
 46.68%   47.06%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 589 (956 bytes) 

                                                                            ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                                                                            ; - com.google.re2j.Machine::match@121 (line 205)
                              0x00007fe72d266a42: mov    %edi,%r11d
                              0x00007fe72d266a45: add    $0xffffffbf,%r11d
                              0x00007fe72d266a49: cmp    $0x1a,%r11d
                  ╭           0x00007fe72d266a4d: jb     0x00007fe72d266a60  ;*if_icmple
                  │                                                         ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │                                                         ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                         ; - com.google.re2j.Machine::match@121 (line 205)
                  │           0x00007fe72d266a4f: mov    %edi,%r8d
           0.00%  │           0x00007fe72d266a52: add    $0xffffff9f,%r8d
                  │           0x00007fe72d266a56: cmp    $0x1a,%r8d
                  │           0x00007fe72d266a5a: jae    0x00007fe72d267329  ;*iconst_1
                  │                                                         ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │                                                         ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                         ; - com.google.re2j.Machine::match@121 (line 205)
  0.01%           ↘           0x00007fe72d266a60: or     $0x10,%r10d        ;*iload_2
                                                                            ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                            ; - com.google.re2j.Machine::match@121 (line 205)
           0.00%              0x00007fe72d266a64: mov    0x3c(%rsp),%r11d
  0.01%    0.01%              0x00007fe72d266a69: test   %r11d,%r11d
                              0x00007fe72d266a6c: jne    0x00007fe72d267b9d  ;*aload
                                                                            ; - com.google.re2j.Machine::match@136 (line 211)
           0.01%              0x00007fe72d266a72: mov    0x40(%rsp),%r11
                              0x00007fe72d266a77: movzbl 0x11(%r11),%r11d   ;*getfield captures
                                                                            ; - com.google.re2j.Machine::match@283 (line 240)
  0.01%    0.00%              0x00007fe72d266a7c: mov    %rcx,%r8
                              0x00007fe72d266a7f: shl    $0x3,%r8           ;*getfield q1
                                                                            ; - com.google.re2j.Machine::match@53 (line 192)
                              0x00007fe72d266a83: mov    %r8,0x68(%rsp)
                              0x00007fe72d266a88: xor    %eax,%eax
  0.00%    0.00%              0x00007fe72d266a8a: mov    $0x1,%r9d
                              0x00007fe72d266a90: xor    %r8d,%r8d
                              0x00007fe72d266a93: mov    %r9d,0x14(%rsp)
  0.00%                       0x00007fe72d266a98: mov    %r8d,0x60(%rsp)
                   ╭          0x00007fe72d266a9d: jmpq   0x00007fe72d266c27
  0.13%    0.05%   │   ↗      0x00007fe72d266aa2: or     $0x20,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                   │   │                                                    ; - com.google.re2j.Machine::match@326 (line 245)
  0.00%    0.04%   │   │      0x00007fe72d266aa6: mov    %r8d,0x2c(%rsp)    ;*iload_2
                   │   │                                                    ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   │   │                                                    ; - com.google.re2j.Machine::match@326 (line 245)
  0.15%    0.12%   │   │↗     0x00007fe72d266aab: mov    0x60(%rsp),%r8d
  0.31%    0.12%   │   ││     0x00007fe72d266ab0: cmp    0x20(%rsp),%r8d
                   │   ││     0x00007fe72d266ab5: je     0x00007fe72d267256  ;*if_icmpne
                   │   ││                                                   ; - com.google.re2j.Machine::match@351 (line 246)
  0.33%    0.29%   │   ││     0x00007fe72d266abb: xor    %r10d,%r10d        ;*invokespecial step
                   │   ││                                                   ; - com.google.re2j.Machine::match@359 (line 246)
  0.08%    0.05%   │   ││     0x00007fe72d266abe: mov    %rax,-0x8(%rsp)
  0.19%    0.24%   │   ││     0x00007fe72d266ac3: mov    0x60(%rsp),%eax
  0.21%    0.19%   │   ││     0x00007fe72d266ac7: mov    %eax,0x34(%rsp)
  0.35%    0.33%   │   ││     0x00007fe72d266acb: mov    -0x8(%rsp),%rax
  0.58%    0.41%   │   ││     0x00007fe72d266ad0: mov    %edx,0x20(%rsp)    ;*invokevirtual endPos
                   │   ││                                                   ; - com.google.re2j.Machine::match@348 (line 246)
  0.10%    0.07%   │   ││     0x00007fe72d266ad4: add    0x28(%rsp),%r8d    ;*iadd
                   │   ││                                                   ; - com.google.re2j.Machine::match@340 (line 246)
  0.41%    0.45%   │   ││     0x00007fe72d266ad9: mov    %r8d,0x60(%rsp)
  0.23%    0.13%   │   ││     0x00007fe72d266ade: mov    0x40(%rsp),%rsi
  0.11%    0.05%   │   ││     0x00007fe72d266ae3: mov    0x18(%rsp),%rdx
  0.09%    0.02%   │   ││     0x00007fe72d266ae8: mov    0x68(%rsp),%rcx
  0.25%    0.11%   │   ││     0x00007fe72d266aed: mov    0x34(%rsp),%r8d
  0.24%    0.23%   │   ││     0x00007fe72d266af2: mov    0x60(%rsp),%r9d
  0.59%    0.43%   │   ││     0x00007fe72d266af7: mov    0x2c(%rsp),%r11d
  0.04%    0.06%   │   ││     0x00007fe72d266afc: mov    %r11d,(%rsp)
  0.23%    0.23%   │   ││     0x00007fe72d266b00: xor    %r11d,%r11d
  0.16%    0.05%   │   ││     0x00007fe72d266b03: mov    %r11d,0x8(%rsp)
  0.22%    0.24%   │   ││     0x00007fe72d266b08: mov    %r10d,0x10(%rsp)
  0.07%    0.08%   │   ││     0x00007fe72d266b0d: xchg   %ax,%ax
  0.32%    0.32%   │   ││     0x00007fe72d266b0f: callq  0x00007fe72d046020  ; OopMap{[24]=Oop [56]=NarrowOop [64]=Oop [80]=Oop [104]=Oop off=692}
                   │   ││                                                   ;*invokespecial step
                   │   ││                                                   ; - com.google.re2j.Machine::match@359 (line 246)
                   │   ││                                                   ;   {optimized virtual_call}
           0.00%   │   ││     0x00007fe72d266b14: mov    0x40(%rsp),%r10
  0.69%    0.93%   │   ││     0x00007fe72d266b19: movzbl 0x11(%r10),%r11d   ;*getfield captures
                   │   ││                                                   ; - com.google.re2j.Machine::match@371 (line 250)
                   │   ││     0x00007fe72d266b1e: movzbl 0x10(%r10),%eax    ;*getfield matched
                   │   ││                                                   ; - com.google.re2j.Machine::match@378 (line 250)
  0.00%    0.00%   │   ││     0x00007fe72d266b23: mov    0x28(%rsp),%r8d
  0.77%    0.83%   │   ││     0x00007fe72d266b28: test   %r8d,%r8d
                   │   ││     0x00007fe72d266b2b: je     0x00007fe72d267216  ;*ifne
                   │   ││                                                   ; - com.google.re2j.Machine::match@364 (line 247)
           0.00%   │   ││     0x00007fe72d266b31: test   %r11d,%r11d
                   │   ││     0x00007fe72d266b34: jne    0x00007fe72d26757d  ;*ifne
                   │   ││                                                   ; - com.google.re2j.Machine::match@374 (line 250)
  0.00%    0.00%   │   ││     0x00007fe72d266b3a: test   %eax,%eax
                   │   ││     0x00007fe72d266b3c: jne    0x00007fe72d267779  ;*ifeq
                   │   ││                                                   ; - com.google.re2j.Machine::match@381 (line 250)
           0.00%   │   ││     0x00007fe72d266b42: mov    0x50(%rsp),%r8
  0.77%    0.81%   │   ││     0x00007fe72d266b47: mov    0x10(%r8),%ebx     ;*getfield end
                   │   ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                   │   ││                                                   ; - com.google.re2j.Machine::match@411 (line 259)
  0.00%            │   ││     0x00007fe72d266b4b: mov    0xc(%r8),%ecx      ;*getfield start
                   │   ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                   │   ││                                                   ; - com.google.re2j.Machine::match@411 (line 259)
  0.02%    0.01%   │   ││     0x00007fe72d266b4f: mov    %ecx,0x24(%rsp)
  0.00%    0.00%   │   ││     0x00007fe72d266b53: mov    0x14(%r8),%r9d     ;*getfield str
                   │   ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                   │   ││                                                   ; - com.google.re2j.Machine::match@411 (line 259)
  0.65%    0.94%   │   ││     0x00007fe72d266b57: mov    0x20(%rsp),%edi
                   │   ││     0x00007fe72d266b5b: cmp    $0xffffffff,%edi
                   │   ││     0x00007fe72d266b5e: je     0x00007fe72d267261  ;*if_icmpeq
                   │   ││                                                   ; - com.google.re2j.Machine::match@403 (line 258)
                   │   ││     0x00007fe72d266b64: mov    0x30(%rsp),%r8d
  0.00%            │   ││     0x00007fe72d266b69: add    0x60(%rsp),%r8d
  0.82%    0.83%   │   ││     0x00007fe72d266b6e: add    %ecx,%r8d          ;*iadd
                   │   ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                   │   ││                                                   ; - com.google.re2j.Machine::match@411 (line 259)
                   │   ││     0x00007fe72d266b71: cmp    %ebx,%r8d
                   │   ││     0x00007fe72d266b74: jge    0x00007fe72d267270  ;*if_icmpge
                   │   ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                   │   ││                                                   ; - com.google.re2j.Machine::match@411 (line 259)
  0.01%    0.02%   │   ││     0x00007fe72d266b7a: mov    0x8(%r12,%r9,8),%r10d  ; implicit exception: dispatches to 0x00007fe72d2684ed
  0.03%    0.05%   │   ││     0x00007fe72d266b7f: cmp    $0xf80002da,%r10d  ;   {metadata(&apos;java/lang/String&apos;)}
                   │   ││     0x00007fe72d266b86: jne    0x00007fe72d2674d9
  0.80%    0.82%   │   ││     0x00007fe72d266b8c: lea    (%r12,%r9,8),%rdx  ;*invokeinterface charAt
                   │   ││                                                   ; - java.lang.Character::codePointAt@2 (line 4866)
                   │   ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │   ││                                                   ; - com.google.re2j.Machine::match@411 (line 259)
                   │   ││     0x00007fe72d266b90: test   %r8d,%r8d
                   │   ││     0x00007fe72d266b93: jl     0x00007fe72d2675d1  ;*iflt
                   │   ││                                                   ; - java.lang.String::charAt@1 (line 657)
                   │   ││                                                   ; - java.lang.Character::codePointAt@2 (line 4866)
                   │   ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │   ││                                                   ; - com.google.re2j.Machine::match@411 (line 259)
                   │   ││     0x00007fe72d266b99: mov    0xc(%rdx),%ecx     ;*getfield value
                   │   ││                                                   ; - java.lang.String::charAt@6 (line 657)
                   │   ││                                                   ; - java.lang.Character::codePointAt@2 (line 4866)
                   │   ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │   ││                                                   ; - com.google.re2j.Machine::match@411 (line 259)
           0.01%   │   ││     0x00007fe72d266b9c: mov    0xc(%r12,%rcx,8),%ebp  ;*arraylength
                   │   ││                                                   ; - java.lang.String::charAt@9 (line 657)
                   │   ││                                                   ; - java.lang.Character::codePointAt@2 (line 4866)
                   │   ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │   ││                                                   ; - com.google.re2j.Machine::match@411 (line 259)
                   │   ││                                                   ; implicit exception: dispatches to 0x00007fe72d268501
  1.50%    1.67%   │   ││     0x00007fe72d266ba1: cmp    %ebp,%r8d
                   │   ││     0x00007fe72d266ba4: jge    0x00007fe72d2677cd  ;*if_icmplt
                   │   ││                                                   ; - java.lang.String::charAt@10 (line 657)
                   │   ││                                                   ; - java.lang.Character::codePointAt@2 (line 4866)
                   │   ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │   ││                                                   ; - com.google.re2j.Machine::match@411 (line 259)
  0.62%    0.55%   │   ││     0x00007fe72d266baa: cmp    %ebp,%r8d
                   │   ││     0x00007fe72d266bad: jae    0x00007fe72d2673cd
  0.20%    0.20%   │   ││     0x00007fe72d266bb3: lea    (%r12,%rcx,8),%r10
                   │   ││     0x00007fe72d266bb7: movzwl 0x10(%r10,%r8,2),%ecx  ;*caload
                   │   ││                                                   ; - java.lang.String::charAt@27 (line 660)
                   │   ││                                                   ; - java.lang.Character::codePointAt@2 (line 4866)
                   │   ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │   ││                                                   ; - com.google.re2j.Machine::match@411 (line 259)
  0.11%    0.08%   │   ││     0x00007fe72d266bbd: cmp    $0xd800,%ecx
                   │   ││     0x00007fe72d266bc3: jge    0x00007fe72d26782d  ;*if_icmplt
                   │   ││                                                   ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   │   ││                                                   ; - java.lang.Character::codePointAt@9 (line 4867)
                   │   ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │   ││                                                   ; - com.google.re2j.Machine::match@411 (line 259)
  0.46%    0.44%   │   ││     0x00007fe72d266bc9: shl    $0x3,%ecx          ;*ishl
                   │   ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                   │   ││                                                   ; - com.google.re2j.Machine::match@411 (line 259)
  0.28%    0.34%   │   ││     0x00007fe72d266bcc: mov    %ecx,%r8d
                   │   ││     0x00007fe72d266bcf: or     $0x1,%r8d
  0.65%    0.71%   │   ││     0x00007fe72d266bd3: and    $0x7,%ecx
  0.19%    0.19%   │   ││     0x00007fe72d266bd6: sar    $0x3,%r8d          ;*ishr
                   │   ││                                                   ; - com.google.re2j.Machine::match@419 (line 260)
  0.62%    0.51%   │   ││     0x00007fe72d266bda: or     $0x1,%ecx          ; OopMap{r9=NarrowOop [24]=Oop [64]=Oop [80]=Oop [104]=Oop off=893}
                   │   ││                                                   ;*goto
                   │   ││                                                   ; - com.google.re2j.Machine::match@441 (line 266)
  0.02%    0.03%   │   ││     0x00007fe72d266bdd: test   %eax,0x18cbd41d(%rip)        # 0x00007fe745f24000
                   │   ││                                                   ;*goto
                   │   ││                                                   ; - com.google.re2j.Machine::match@441 (line 266)
                   │   ││                                                   ;   {poll}
  0.04%    0.03%   │   ││     0x00007fe72d266be3: mov    0x40(%rsp),%r10
  0.11%    0.20%   │   ││     0x00007fe72d266be8: mov    0x28(%r10),%r14d   ;*getfield matchcap
                   │   ││                                                   ; - com.google.re2j.Machine::match@307 (line 243)
  0.55%    0.76%   │   ││     0x00007fe72d266bec: mov    0x14(%r10),%esi    ;*getfield re2
                   │   ││                                                   ; - com.google.re2j.Machine::match@169 (line 220)
  0.02%    0.03%   │   ││     0x00007fe72d266bf0: mov    0x68(%rsp),%r10
  0.04%    0.03%   │   ││     0x00007fe72d266bf5: mov    %r10,%rdx
  0.10%    0.12%   │   ││     0x00007fe72d266bf8: shr    $0x3,%rdx
  0.57%    0.66%   │   ││     0x00007fe72d266bfc: mov    %edx,0x38(%rsp)
  0.01%    0.02%   │   ││     0x00007fe72d266c00: mov    0x2c(%rsp),%r10d
  0.06%    0.06%   │   ││     0x00007fe72d266c05: mov    0x18(%rsp),%rdx
  0.14%    0.10%   │   ││     0x00007fe72d266c0a: mov    %rdx,0x68(%rsp)
  0.51%    0.70%   │   ││     0x00007fe72d266c0f: mov    0x30(%rsp),%edx
  0.01%    0.02%   │   ││     0x00007fe72d266c13: mov    %edx,0x28(%rsp)
  0.05%    0.05%   │   ││     0x00007fe72d266c17: mov    %r8d,%edx
  0.12%    0.14%   │   ││     0x00007fe72d266c1a: mov    %ecx,0x30(%rsp)
  0.47%    0.67%   │   ││     0x00007fe72d266c1e: mov    %ebx,0x20(%rsp)
  0.01%    0.04%   │   ││     0x00007fe72d266c22: vmovd  %r9d,%xmm4         ;*getfield matchcap
                   │   ││                                                   ; - com.google.re2j.Machine::match@307 (line 243)
  0.05%    0.08%   ↘   ││     0x00007fe72d266c27: mov    0x38(%rsp),%r9d
  0.09%    0.13%       ││     0x00007fe72d266c2c: movzbl 0x18(%r12,%r9,8),%ecx  ; implicit exception: dispatches to 0x00007fe72d268495
  0.58%    0.64%       ││     0x00007fe72d266c32: lea    (%r12,%r9,8),%r8   ;*aload
                       ││                                                   ; - com.google.re2j.Machine::match@136 (line 211)
  0.01%    0.01%       ││     0x00007fe72d266c36: mov    %r8,0x18(%rsp)
  0.04%    0.03%       ││     0x00007fe72d266c3b: test   %ecx,%ecx
                       ││     0x00007fe72d266c3d: jne    0x00007fe72d266e83  ;*iload_3
                       ││                                                   ; - com.google.re2j.Machine::match@267 (line 237)
  0.12%    0.16%       ││     0x00007fe72d266c43: test   %eax,%eax
                       ││     0x00007fe72d266c45: jne    0x00007fe72d267539  ;*ifne
                       ││                                                   ; - com.google.re2j.Machine::match@279 (line 237)
  0.49%    0.69%       ││     0x00007fe72d266c4b: test   %r11d,%r11d
                       ││     0x00007fe72d266c4e: jne    0x00007fe72d267631  ;*ifeq
                       ││                                                   ; - com.google.re2j.Machine::match@286 (line 240)
  0.03%    0.04%       ││     0x00007fe72d266c54: mov    0x40(%rsp),%r8
  0.05%    0.10%       ││     0x00007fe72d266c59: mov    0x18(%r8),%r9d     ;*getfield prog
                       ││                                                   ; - com.google.re2j.Machine::match@297 (line 243)
  0.14%    0.15%       ││     0x00007fe72d266c5d: mov    0x1c(%r12,%r9,8),%ebp  ;*getfield startInst
                       ││                                                   ; - com.google.re2j.Machine::match@300 (line 243)
                       ││                                                   ; implicit exception: dispatches to 0x00007fe72d2684a5
  0.65%    0.80%       ││     0x00007fe72d266c62: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007fe72d2684b5
  1.63%    2.11%       ││     0x00007fe72d266c67: cmp    $0xf8019909,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                       ││     0x00007fe72d266c6e: jne    0x00007fe72d267431
  0.62%    0.53%       ││     0x00007fe72d266c74: lea    (%r12,%rbp,8),%r9  ;*invokevirtual add
                       ││                                                   ; - com.google.re2j.Machine::match@318 (line 243)
                       ││     0x00007fe72d266c78: mov    0x18(%r9),%r10d    ;*getfield pc
                       ││                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                       ││                                                   ; - com.google.re2j.Machine::match@318 (line 243)
  0.08%    0.12%       ││     0x00007fe72d266c7c: cmp    $0x40,%r10d
  0.60%    0.56%       ││     0x00007fe72d266c80: jg     0x00007fe72d267675  ;*if_icmpgt
                       ││                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                       ││                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                       ││                                                   ; - com.google.re2j.Machine::match@318 (line 243)
  0.78%    0.58%       ││     0x00007fe72d266c86: mov    %r10d,%ecx
                       ││     0x00007fe72d266c89: mov    $0x1,%ebx
  0.03%    0.03%       ││     0x00007fe72d266c8e: shl    %cl,%rbx           ;*lshl
                       ││                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                       ││                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                       ││                                                   ; - com.google.re2j.Machine::match@318 (line 243)
  1.07%    0.80%       ││     0x00007fe72d266c91: mov    0x38(%rsp),%r10d
  0.03%    0.02%       ││     0x00007fe72d266c96: mov    0x10(%r12,%r10,8),%r8  ;*getfield pcsl
                       ││                                                   ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                       ││                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                       ││                                                   ; - com.google.re2j.Machine::match@318 (line 243)
                       ││     0x00007fe72d266c9b: mov    %r8,%r10
  0.41%    0.37%       ││     0x00007fe72d266c9e: and    %rbx,%r10          ;*land
                       ││                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                       ││                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                       ││                                                   ; - com.google.re2j.Machine::match@318 (line 243)
  0.27%    0.25%       ││     0x00007fe72d266ca1: test   %r10,%r10
                       ││     0x00007fe72d266ca4: jne    0x00007fe72d2676c9  ;*ifeq
                       ││                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                       ││                                                   ; - com.google.re2j.Machine::match@318 (line 243)
  0.04%    0.00%       ││     0x00007fe72d266caa: cmp    $0x40,%ecx
                       ││     0x00007fe72d266cad: jge    0x00007fe72d267725  ;*if_icmpge
                       ││                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                       ││                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                       ││                                                   ; - com.google.re2j.Machine::match@318 (line 243)
  0.01%    0.00%       ││     0x00007fe72d266cb3: mov    0x38(%rsp),%r10d
  0.39%    0.43%       ││     0x00007fe72d266cb8: mov    %r12b,0x18(%r12,%r10,8)  ;*putfield empty
                       ││                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                       ││                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                       ││                                                   ; - com.google.re2j.Machine::match@318 (line 243)
  0.21%    0.25%       ││     0x00007fe72d266cbd: mov    0xc(%r12,%r10,8),%r10d  ;*getfield size
                       ││                                                   ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                       ││                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                       ││                                                   ; - com.google.re2j.Machine::match@318 (line 243)
  0.02%    0.01%       ││     0x00007fe72d266cc2: mov    0x38(%rsp),%ecx
  0.01%    0.01%       ││     0x00007fe72d266cc6: mov    0x20(%r12,%rcx,8),%r11d  ;*getfield denseThreadsInstructions
                       ││                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                       ││                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                       ││                                                   ; - com.google.re2j.Machine::match@318 (line 243)
  0.40%    0.39%       ││     0x00007fe72d266ccb: or     %r8,%rbx
  0.29%    0.23%       ││     0x00007fe72d266cce: mov    %rbx,0x10(%r12,%rcx,8)  ;*putfield pcsl
                       ││                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                       ││                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                       ││                                                   ; - com.google.re2j.Machine::match@318 (line 243)
  0.02%    0.01%       ││     0x00007fe72d266cd3: mov    %r10d,%ecx
  0.01%    0.01%       ││     0x00007fe72d266cd6: inc    %ecx
  0.41%    0.36%       ││     0x00007fe72d266cd8: mov    0x38(%rsp),%ebx
  0.30%    0.25%       ││     0x00007fe72d266cdc: mov    %ecx,0xc(%r12,%rbx,8)  ;*putfield size
                       ││                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                       ││                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                       ││                                                   ; - com.google.re2j.Machine::match@318 (line 243)
  0.02%    0.01%       ││     0x00007fe72d266ce1: mov    0xc(%r12,%r11,8),%ecx  ; implicit exception: dispatches to 0x00007fe72d2684d5
  0.04%    0.02%       ││     0x00007fe72d266ce6: cmp    %ecx,%r10d
                       ││     0x00007fe72d266ce9: jae    0x00007fe72d267372
  0.51%    0.37%       ││     0x00007fe72d266cef: mov    0x8(%r12,%r11,8),%ecx
  0.29%    0.28%       ││     0x00007fe72d266cf4: cmp    $0xf8019807,%ecx   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                       ││     0x00007fe72d266cfa: jne    0x00007fe72d267481  ;*aastore
                       ││                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                       ││                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                       ││                                                   ; - com.google.re2j.Machine::match@318 (line 243)
  0.05%    0.02%       ││     0x00007fe72d266d00: test   %edi,%edi
                    ╭  ││     0x00007fe72d266d02: jl     0x00007fe72d266da5  ;*ifge
                    │  ││                                                   ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                    │  ││                                                   ; - com.google.re2j.Machine::match@326 (line 245)
  0.01%    0.01%    │  ││     0x00007fe72d266d08: xor    %r8d,%r8d          ;*iload_0
                    │  ││                                                   ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                    │  ││                                                   ; - com.google.re2j.Machine::match@326 (line 245)
  0.42%    0.42%    │  ││↗    0x00007fe72d266d0b: cmp    $0xa,%edi
                    │  │││    0x00007fe72d266d0e: je     0x00007fe72d2670eb  ;*iload_1
                    │  │││                                                  ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                    │  │││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.25%    0.25%    │  │││    0x00007fe72d266d14: test   %edx,%edx
                    │  │││    0x00007fe72d266d16: jl     0x00007fe72d2670e2  ;*iload_1
                    │  │││                                                  ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                    │  │││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.05%    0.02%    │  │││    0x00007fe72d266d1c: cmp    $0xa,%edx
                    │  │││    0x00007fe72d266d1f: je     0x00007fe72d2670f4  ;*iload_0
                    │  │││                                                  ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                    │  │││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.03%    0.01%    │  │││    0x00007fe72d266d25: shr    $0x3,%r9           ;*aastore
                    │  │││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                    │  │││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                    │  │││                                                  ; - com.google.re2j.Machine::match@318 (line 243)
  0.35%    0.45%    │  │││    0x00007fe72d266d29: shl    $0x3,%r11          ;*getfield denseThreadsInstructions
                    │  │││                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                    │  │││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                    │  │││                                                  ; - com.google.re2j.Machine::match@318 (line 243)
  0.24%    0.24%    │  │││    0x00007fe72d266d2d: lea    0x10(%r11,%r10,4),%r10
  0.03%    0.05%    │  │││    0x00007fe72d266d32: mov    %r9d,(%r10)
  0.21%    0.20%    │  │││    0x00007fe72d266d35: mov    %edi,%r11d
  0.39%    0.36%    │  │││    0x00007fe72d266d38: add    $0xffffffbf,%r11d
  0.24%    0.28%    │  │││    0x00007fe72d266d3c: shr    $0x9,%r10
  0.03%    0.02%    │  │││    0x00007fe72d266d40: movabs $0x7fe73e92c000,%r9
  0.06%    0.13%    │  │││    0x00007fe72d266d4a: mov    %r12b,(%r9,%r10,1)  ;*aastore
                    │  │││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                    │  │││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                    │  │││                                                  ; - com.google.re2j.Machine::match@318 (line 243)
  0.74%    0.73%    │  │││    0x00007fe72d266d4e: cmp    $0x1a,%r11d
                    │╭ │││    0x00007fe72d266d52: jb     0x00007fe72d266d65  ;*if_icmple
                    ││ │││                                                  ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                    ││ │││                                                  ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    ││ │││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.20%    0.14%    ││ │││    0x00007fe72d266d54: mov    %edi,%r10d
  0.03%    0.03%    ││ │││    0x00007fe72d266d57: add    $0xffffff9f,%r10d
  0.04%    0.06%    ││ │││    0x00007fe72d266d5b: cmp    $0x1a,%r10d
                    ││ │││    0x00007fe72d266d5f: jae    0x00007fe72d2672d0  ;*iconst_1
                    ││ │││                                                  ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                    ││ │││                                                  ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    ││ │││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.42%    0.32%    │↘ │││    0x00007fe72d266d65: mov    $0x1,%ebp          ;*ireturn
                    │  │││                                                  ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                    │  │││                                                  ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    │  │││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.14%    0.10%    │  │││    0x00007fe72d266d6a: mov    %edx,%r11d
  0.03%    0.01%    │  │││    0x00007fe72d266d6d: add    $0xffffffbf,%r11d
  0.11%    0.11%    │  │││    0x00007fe72d266d71: cmp    $0x1a,%r11d
                    │ ╭│││    0x00007fe72d266d75: jb     0x00007fe72d266d88  ;*if_icmple
                    │ ││││                                                  ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                    │ ││││                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    │ ││││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.42%    0.27%    │ ││││    0x00007fe72d266d77: mov    %edx,%r10d
  0.18%    0.06%    │ ││││    0x00007fe72d266d7a: add    $0xffffff9f,%r10d
  0.05%    0.02%    │ ││││    0x00007fe72d266d7e: cmp    $0x1a,%r10d
                    │ ││││    0x00007fe72d266d82: jae    0x00007fe72d2672ae  ;*iconst_1
                    │ ││││                                                  ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                    │ ││││                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    │ ││││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.16%    0.04%    │ ↘│││    0x00007fe72d266d88: mov    $0x1,%r11d         ;*ireturn
                    │  │││                                                  ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                    │  │││                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    │  │││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.36%    0.22%    │  │││    0x00007fe72d266d8e: cmp    %r11d,%ebp
                    │  ╰││    0x00007fe72d266d91: je     0x00007fe72d266aa2  ;*if_icmpeq
                    │   ││                                                  ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                    │   ││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.10%    0.05%    │   ││    0x00007fe72d266d97: or     $0x10,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                    │   ││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.00%    0.00%    │   ││    0x00007fe72d266d9b: mov    %r8d,0x2c(%rsp)
  0.39%    0.32%    │   ╰│    0x00007fe72d266da0: jmpq   0x00007fe72d266aab
                    ↘    │    0x00007fe72d266da5: mov    $0x5,%r8d
  0.00%                  ╰    0x00007fe72d266dab: jmpq   0x00007fe72d266d0b
  0.00%                       0x00007fe72d266db0: mov    %r8d,0x5c(%rsp)
  0.00%    0.00%              0x00007fe72d266db5: jmpq   0x00007fe72d26701e
                              0x00007fe72d266dba: mov    0x5c(%rsp),%r8d
                              0x00007fe72d266dbf: add    $0x2,%r8d
                              0x00007fe72d266dc3: mov    %r8d,0x5c(%rsp)
  0.00%                       0x00007fe72d266dc8: mov    0x5c(%rsp),%r8d
                              0x00007fe72d266dcd: inc    %r8d
                              0x00007fe72d266dd0: mov    %r8d,0x58(%rsp)
                          ╭   0x00007fe72d266dd5: jmp    0x00007fe72d266e02
                          │   0x00007fe72d266dd7: mov    0x5c(%rsp),%r8d
                          │   0x00007fe72d266ddc: add    $0x2,%r8d
                          │   0x00007fe72d266de0: mov    %r8d,0x58(%rsp)
                          │╭  0x00007fe72d266de5: jmp    0x00007fe72d266df5
  0.00%                   ││  0x00007fe72d266de7: mov    0x5c(%rsp),%r8d
  0.00%                   ││  0x00007fe72d266dec: add    $0x2,%r8d
                          ││  0x00007fe72d266df0: mov    %r8d,0x5c(%rsp)
  0.00%                   │↘  0x00007fe72d266df5: mov    0x5c(%rsp),%r8d
  0.00%                   │   0x00007fe72d266dfa: inc    %r8d               ;*iinc
                          │                                                 ; - java.lang.String::indexOf@69 (line 1772)
                          │                                                 ; - java.lang.String::indexOf@21 (line 1718)
                          │                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                          │                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                          │                                                 ; - com.google.re2j.Machine::match@206 (line 224)
                          │   0x00007fe72d266dfd: mov    %r8d,0x5c(%rsp)
                          ↘   0x00007fe72d266e02: mov    0x5c(%rsp),%r8d
                              0x00007fe72d266e07: cmp    0x28(%rsp),%r8d
                              0x00007fe72d266e0c: jg     0x00007fe72d266e68
  0.01%                       0x00007fe72d266e0e: mov    0x5c(%rsp),%r8d
                              0x00007fe72d266e13: add    0x34(%rsp),%r8d    ;*iadd
                                                                            ; - java.lang.String::indexOf@101 (line 1777)
                                                                            ; - java.lang.String::indexOf@21 (line 1718)
                                                                            ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                                                                            ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                                                                            ; - com.google.re2j.Machine::match@206 (line 224)
                              0x00007fe72d266e18: mov    %r8d,%edi
                              0x00007fe72d266e1b: mov    0x58(%rsp),%r8d
                              0x00007fe72d266e20: cmp    %edi,%r8d
                              0x00007fe72d266e23: jge    0x00007fe72d266e5a  ;*if_icmpge
....................................................................................................
 34.04%   33.85%  <total for region 2>

....[Hottest Regions]...............................................................................
 46.68%   47.06%         C2, level 4  com.google.re2j.Machine::step, version 549 (866 bytes) 
 34.04%   33.85%         C2, level 4  com.google.re2j.Machine::match, version 589 (956 bytes) 
  7.78%    8.35%         C2, level 4  com.google.re2j.Machine::step, version 549 (344 bytes) 
  6.01%    6.87%         C2, level 4  com.google.re2j.Machine::step, version 549 (111 bytes) 
  0.59%    0.41%         C2, level 4  com.google.re2j.Machine::match, version 589 (62 bytes) 
  0.53%    0.52%   [kernel.kallsyms]  [unknown] (6 bytes) 
  0.36%    0.11%         C2, level 4  com.google.re2j.RE2::match, version 604 (94 bytes) 
  0.30%    0.23%         C2, level 4  com.google.re2j.Machine::match, version 589 (462 bytes) 
  0.17%    0.10%         C2, level 4  com.google.re2j.RE2::match, version 604 (33 bytes) 
  0.15%    0.13%         C2, level 4  com.google.re2j.Machine::match, version 589 (309 bytes) 
  0.15%    0.10%         C2, level 4  java.util.Collections::shuffle, version 613 (193 bytes) 
  0.14%    0.07%         C2, level 4  com.google.re2j.RE2::match, version 604 (14 bytes) 
  0.11%    0.09%         C2, level 4  com.google.re2j.RE2::match, version 604 (0 bytes) 
  0.11%                  C2, level 4  com.google.re2j.RE2::match, version 604 (108 bytes) 
  0.10%    0.06%         C2, level 4  com.google.re2j.Machine::match, version 589 (152 bytes) 
  0.10%    0.00%         C2, level 4  java.util.Collections::shuffle, version 613 (97 bytes) 
  0.10%    0.06%         C2, level 4  com.google.re2j.RE2::match, version 604 (0 bytes) 
  0.07%                  C2, level 4  com.google.re2j.RE2::match, version 604 (90 bytes) 
  0.06%    0.01%   [kernel.kallsyms]  [unknown] (4 bytes) 
  0.06%    0.01%         C2, level 4  com.google.re2j.Machine::match, version 589 (143 bytes) 
  2.38%    1.93%  <...other 441 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 60.47%   62.28%         C2, level 4  com.google.re2j.Machine::step, version 549 
 35.39%   34.71%         C2, level 4  com.google.re2j.Machine::match, version 589 
  1.43%    1.22%   [kernel.kallsyms]  [unknown] 
  1.19%    0.49%         C2, level 4  com.google.re2j.RE2::match, version 604 
  0.29%    0.11%         C2, level 4  java.util.Collections::shuffle, version 613 
  0.13%    0.04%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 647 
  0.09%    0.07%           libjvm.so  PSPromotionManager::copy_to_survivor_space<false> 
  0.06%    0.05%           libjvm.so  GenericTaskQueueSet<OverflowTaskQueue<StarTask, (MemoryType)1, 131072u>, (MemoryType)1>::steal_best_of_2 
  0.06%    0.03%              [vdso]  [unknown] 
  0.05%    0.04%      hsdis-amd64.so  decode_instructions 
  0.05%    0.10%           libjvm.so  PSPromotionManager::drain_stacks_depth 
  0.04%    0.02%           libjvm.so  InstanceKlass::oop_push_contents 
  0.04%    0.03%           libjvm.so  fileStream::write 
  0.03%    0.01%              [vdso]  __vdso_clock_gettime 
  0.03%    0.01%           libjvm.so  Monitor::unlock 
  0.03%                  C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 610 
  0.02%    0.07%           libjvm.so  RelocIterator::initialize 
  0.02%    0.01%           libjvm.so  os::PlatformEvent::park 
  0.02%    0.05%        libc-2.26.so  _IO_fwrite 
  0.02%    0.01%           libjvm.so  defaultStream::write 
  0.52%    0.38%  <...other 79 warm methods...>
....................................................................................................
100.00%   99.75%  <totals>

....[Distribution by Source]........................................................................
 97.50%   97.64%         C2, level 4
  1.43%    1.22%   [kernel.kallsyms]
  0.64%    0.69%           libjvm.so
  0.15%    0.25%        libc-2.26.so
  0.09%    0.04%              [vdso]
  0.06%    0.04%      hsdis-amd64.so
  0.06%    0.04%  libpthread-2.26.so
  0.04%    0.03%         interpreter
  0.02%    0.01%         C1, level 3
  0.00%    0.00%       perf-1325.map
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                     Mode  Cnt      Score     Error  Units
Re2jFindRegex.testExp1       thrpt   20  28608.112 ± 206.739  ops/s
Re2jFindRegex.testExp1:·asm  thrpt             NaN              ---
