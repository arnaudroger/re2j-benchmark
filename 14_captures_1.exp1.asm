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
# Warmup Iteration   1: 10340.516 ops/s
# Warmup Iteration   2: 27001.657 ops/s
# Warmup Iteration   3: 27419.430 ops/s
# Warmup Iteration   4: 27174.564 ops/s
# Warmup Iteration   5: 27706.245 ops/s
# Warmup Iteration   6: 27610.873 ops/s
# Warmup Iteration   7: 27923.743 ops/s
# Warmup Iteration   8: 27988.433 ops/s
# Warmup Iteration   9: 28159.495 ops/s
# Warmup Iteration  10: 28032.589 ops/s
# Warmup Iteration  11: 27990.360 ops/s
# Warmup Iteration  12: 27923.525 ops/s
# Warmup Iteration  13: 27842.748 ops/s
# Warmup Iteration  14: 28165.048 ops/s
# Warmup Iteration  15: 28206.970 ops/s
# Warmup Iteration  16: 27821.194 ops/s
# Warmup Iteration  17: 28037.708 ops/s
# Warmup Iteration  18: 27727.477 ops/s
# Warmup Iteration  19: 28194.532 ops/s
# Warmup Iteration  20: 28160.452 ops/s
Iteration   1: 21033.534 ops/s
Iteration   2: 28051.448 ops/s
Iteration   3: 27727.649 ops/s
Iteration   4: 27891.832 ops/s
Iteration   5: 27895.067 ops/s
Iteration   6: 28200.286 ops/s
Iteration   7: 27672.977 ops/s
Iteration   8: 27787.585 ops/s
Iteration   9: 28208.905 ops/s
Iteration  10: 27851.633 ops/s
Iteration  11: 28090.897 ops/s
Iteration  12: 27808.342 ops/s
Iteration  13: 20802.455 ops/s
Iteration  14: 28202.619 ops/s
Iteration  15: 28199.418 ops/s
Iteration  16: 27905.901 ops/s
Iteration  17: 27948.600 ops/s
Iteration  18: 28009.813 ops/s
Iteration  19: 28225.529 ops/s
Iteration  20: 28218.369 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jRegex.testExp1":
  27286.643 ±(99.9%) 1897.795 ops/s [Average]
  (min, avg, max) = (20802.455, 27286.643, 28225.529), stdev = 2185.503
  CI (99.9%): [25388.848, 29184.438] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jRegex.testExp1:·asm":
PrintAssembly processed: 211231 total address lines.
Perf output processed (skipped 23.843 seconds):
 Column 1: cycles (20394 events)
 Column 2: instructions (20362 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 545 (866 bytes) 

                     0x00007f4ab12470a6: jae    0x00007f4ab124782d
                     0x00007f4ab12470ac: mov    %r8,%r10
                     0x00007f4ab12470af: mov    %rax,%rcx
                     0x00007f4ab12470b2: shr    $0x3,%rcx
                     0x00007f4ab12470b6: mov    %ecx,(%r8)
                     0x00007f4ab12470b9: shr    $0x9,%r10
                     0x00007f4ab12470bd: movabs $0x7f4ac1392000,%r8
                     0x00007f4ab12470c7: mov    %r12b,(%r8,%r10,1)  ;*synchronization entry
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.57%    0.64%     0x00007f4ab12470cb: mov    0x10(%rsp),%r13
  0.01%              0x00007f4ab12470d0: mov    0xac(%rsp),%r14d
  0.03%    0.03%     0x00007f4ab12470d8: mov    0xa4(%rsp),%ebx
  0.11%    0.12%     0x00007f4ab12470df: mov    0xc(%rsp),%r10d    ;*aload
                                                                   ; - com.google.re2j.Machine::step@211 (line 316)
  2.70%    2.78%  ↗  0x00007f4ab12470e4: inc    %r10d              ;*iinc
                  │                                                ; - com.google.re2j.Machine::step@222 (line 283)
  0.03%    0.00%  │  0x00007f4ab12470e7: cmp    %r14d,%r10d
                  │  0x00007f4ab12470ea: jge    0x00007f4ab1247536
  0.02%    0.01%  │  0x00007f4ab12470f0: mov    %r11,%rcx          ;*iload
                  │                                                ; - com.google.re2j.Machine::step@31 (line 286)
  0.33%    0.21%  │  0x00007f4ab12470f3: mov    0x20(%r13),%r8d    ;*getfield denseThreadsInstructions
                  │                                                ; - com.google.re2j.Machine::step@86 (line 296)
  2.14%    2.31%  │  0x00007f4ab12470f7: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x00007f4ab1248695
  0.28%    0.18%  │  0x00007f4ab12470fc: cmp    %r11d,%r10d
                  │  0x00007f4ab12470ff: jae    0x00007f4ab1247628
  0.24%    0.27%  │  0x00007f4ab1247105: lea    (%r12,%r8,8),%r11
  0.36%    0.40%  │  0x00007f4ab1247109: mov    0x10(%r11,%r10,4),%r8d  ;*aaload
                  │                                                ; - com.google.re2j.Machine::step@91 (line 296)
  2.12%    2.78%  │  0x00007f4ab124710e: mov    0xc(%r12,%r8,8),%ebp  ;*getfield op
                  │                                                ; - com.google.re2j.Machine::step@96 (line 298)
                  │                                                ; implicit exception: dispatches to 0x00007f4ab12486a9
  2.21%    2.08%  │  0x00007f4ab1247113: cmp    $0x6,%ebp
                  │  0x00007f4ab1247116: je     0x00007f4ab124765d  ;*if_icmpne
                  │                                                ; - com.google.re2j.Machine::step@101 (line 298)
  1.52%    1.36%  │  0x00007f4ab124711c: cmp    $0xa,%ebp
                  │  0x00007f4ab124711f: jne    0x00007f4ab12474c3  ;*if_icmpne
                  │                                                ; - com.google.re2j.Inst::matchRune@6 (line 90)
                  │                                                ; - com.google.re2j.Machine::step@183 (line 313)
  0.27%    0.29%  │  0x00007f4ab1247125: mov    0x2c(%r12,%r8,8),%r11d  ;*getfield outInst
                  │                                                ; - com.google.re2j.Machine::step@191 (line 314)
  0.20%    0.22%  │  0x00007f4ab124712a: mov    0x8(%r12,%r11,8),%r9d  ; implicit exception: dispatches to 0x00007f4ab12486b9
  1.97%    1.87%  │  0x00007f4ab124712f: lea    (%r12,%r11,8),%rax
  0.03%           │  0x00007f4ab1247133: cmp    $0xf8019843,%r9d   ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                  │  0x00007f4ab124713a: jne    0x00007f4ab1247568  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Machine::step@206 (line 314)
  0.65%    0.66%  │  0x00007f4ab1247140: mov    0x18(%rax),%edx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 175)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.04%  │  0x00007f4ab1247143: mov    %rcx,%r11
  0.03%    0.01%  │  0x00007f4ab1247146: mov    0x10(%rcx),%r8     ;*getfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
                  │                                                ; implicit exception: dispatches to 0x00007f4ab12486cd
  0.02%    0.05%  │  0x00007f4ab124714a: cmp    $0x40,%edx
                  │  0x00007f4ab124714d: jg     0x00007f4ab12479c5  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.67%    0.64%  │  0x00007f4ab1247153: mov    $0x1,%edi
  0.04%    0.05%  │  0x00007f4ab1247158: mov    %edx,%ecx
  0.00%    0.01%  │  0x00007f4ab124715a: shl    %cl,%rdi           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  1.33%    1.38%  │  0x00007f4ab124715d: mov    %r8,%r9
           0.01%  │  0x00007f4ab1247160: and    %rdi,%r9
  0.02%    0.05%  │  0x00007f4ab1247163: test   %r9,%r9
                  ╰  0x00007f4ab1247166: jne    0x00007f4ab12470e4  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.16%    0.16%     0x00007f4ab124716c: cmp    $0x40,%edx
                     0x00007f4ab124716f: jge    0x00007f4ab1247a21  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.57%    0.47%     0x00007f4ab1247175: mov    %r12b,0x18(%r11)   ;*putfield empty
                                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.02%     0x00007f4ab1247179: mov    0x2c(%rax),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.03%     0x00007f4ab124717c: or     %r8,%rdi           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.09%    0.13%     0x00007f4ab124717f: mov    %rdi,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.62%    0.50%     0x00007f4ab1247183: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007f4ab12486e1
  0.80%    1.04%     0x00007f4ab1247188: cmp    $0xf8019909,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007f4ab124718f: jne    0x00007f4ab124771d
  0.76%    0.64%     0x00007f4ab1247195: lea    (%r12,%rbp,8),%r9  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
           0.00%     0x00007f4ab1247199: mov    0x18(%r9),%edx     ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.32%    0.40%     0x00007f4ab124719d: cmp    $0x40,%edx
                     0x00007f4ab12471a0: jg     0x00007f4ab1247a7d  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.57%    0.51%     0x00007f4ab12471a6: mov    $0x1,%r8d
  0.10%    0.10%     0x00007f4ab12471ac: mov    %edx,%ecx
                     0x00007f4ab12471ae: shl    %cl,%r8            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  1.27%    1.23%     0x00007f4ab12471b1: mov    %rdi,%rcx
                     0x00007f4ab12471b4: and    %r8,%rcx           ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f4ab12471b7: test   %rcx,%rcx
                     0x00007f4ab12471ba: jne    0x00007f4ab1247add  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.13%    0.07%     0x00007f4ab12471c0: cmp    $0x40,%edx
                     0x00007f4ab12471c3: jge    0x00007f4ab1247b49  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.62%    0.59%     0x00007f4ab12471c9: or     %r8,%rdi           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f4ab12471cc: mov    %rdi,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.02%     0x00007f4ab12471d0: mov    0x20(%r11),%r8d    ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.07%    0.11%     0x00007f4ab12471d4: mov    0xc(%r11),%ecx     ;*getfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.52%    0.55%     0x00007f4ab12471d8: mov    %ecx,%edx
                     0x00007f4ab12471da: inc    %edx               ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.02%     0x00007f4ab12471dc: mov    %edx,0xc(%r11)     ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.10%    0.08%     0x00007f4ab12471e0: mov    0xc(%r12,%r8,8),%esi  ; implicit exception: dispatches to 0x00007f4ab12486f5
  0.51%    0.57%     0x00007f4ab12471e5: mov    %esi,0x34(%rsp)
           0.00%     0x00007f4ab12471e9: cmp    %esi,%ecx
                     0x00007f4ab12471eb: jae    0x00007f4ab12476bd
  0.05%    0.01%     0x00007f4ab12471f1: mov    0x8(%r12,%r8,8),%esi
  0.10%    0.05%     0x00007f4ab12471f6: cmp    $0xf8019807,%esi   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                     0x00007f4ab12471fc: jne    0x00007f4ab1247779  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.64%    0.34%     0x00007f4ab1247202: vmovd  %edx,%xmm1
                     0x00007f4ab1247206: mov    %ecx,0x30(%rsp)
  0.05%    0.05%     0x00007f4ab124720a: mov    %r10d,0xc(%rsp)
  0.08%    0.04%     0x00007f4ab124720f: mov    %ebx,0xa4(%rsp)
  0.58%    0.33%     0x00007f4ab1247216: mov    %r14d,0xac(%rsp)
  0.01%    0.00%     0x00007f4ab124721e: mov    %r11,%rdx
  0.02%    0.02%     0x00007f4ab1247221: mov    %r13,0x10(%rsp)
  0.09%    0.06%     0x00007f4ab1247226: mov    0x34(%rax),%r10d   ;*getfield inst2
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@43 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.50%    0.38%     0x00007f4ab124722a: mov    %r10d,%ecx
                     0x00007f4ab124722d: mov    %r9,%r10
  0.01%    0.03%     0x00007f4ab1247230: shr    $0x3,%r10          ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.08%    0.12%     0x00007f4ab1247234: lea    (%r12,%r8,8),%r9   ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.55%    0.57%     0x00007f4ab1247238: mov    %r8d,%r14d
  0.00%              0x00007f4ab124723b: mov    0x30(%rsp),%r11d
  0.05%    0.04%     0x00007f4ab1247240: lea    0x10(%r9,%r11,4),%r11
  0.12%    0.12%     0x00007f4ab1247245: mov    %r10d,(%r11)
  0.58%    0.70%     0x00007f4ab1247248: mov    %r11,%r10
                     0x00007f4ab124724b: shr    $0x9,%r10
  0.03%    0.02%     0x00007f4ab124724f: movabs $0x7f4ac1392000,%r11
  0.08%    0.04%     0x00007f4ab1247259: mov    %r12b,(%r11,%r10,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.61%    0.50%     0x00007f4ab124725d: mov    %ecx,%r10d
                     0x00007f4ab1247260: mov    0x8(%r12,%r10,8),%r11d  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                                                                   ; implicit exception: dispatches to 0x00007f4ab1248711
  0.00%    0.00%     0x00007f4ab1247265: movslq 0x30(%rsp),%r10
  0.08%    0.09%     0x00007f4ab124726a: lea    (%r9,%r10,4),%rbx  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.61%    0.49%     0x00007f4ab124726e: mov    %rbx,%r8
  0.00%              0x00007f4ab1247271: add    $0x14,%r8          ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.02%     0x00007f4ab1247275: mov    %ecx,%r10d
  0.10%    0.12%     0x00007f4ab1247278: lea    (%r12,%r10,8),%rax
  0.61%    0.58%     0x00007f4ab124727c: mov    0x30(%rsp),%r10d
                     0x00007f4ab1247281: add    $0x2,%r10d         ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.00%     0x00007f4ab1247285: cmp    $0xf8019885,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                     0x00007f4ab124728c: jne    0x00007f4ab1247054  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.07%    0.03%     0x00007f4ab1247292: mov    0x18(%rax),%r11d   ;*getfield pc
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@2 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.53%    0.38%     0x00007f4ab1247296: mov    %r11d,%ecx
                     0x00007f4ab1247299: cmp    $0x40,%r11d
                     0x00007f4ab124729d: jg     0x00007f4ab1247d61  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.00%     0x00007f4ab12472a3: mov    $0x1,%esi
  0.11%    0.01%     0x00007f4ab12472a8: shl    %cl,%rsi           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.50%    0.34%     0x00007f4ab12472ab: mov    %rdi,%r11
  0.06%    0.02%     0x00007f4ab12472ae: and    %rsi,%r11          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.53%    0.30%     0x00007f4ab12472b1: test   %r11,%r11
                     0x00007f4ab12472b4: jne    0x00007f4ab1247da5  ;*ifeq
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@8 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
           0.00%     0x00007f4ab12472ba: mov    %ecx,%r11d
  0.02%              0x00007f4ab12472bd: cmp    $0x40,%r11d
                     0x00007f4ab12472c1: jge    0x00007f4ab1247dfd  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.11%    0.02%     0x00007f4ab12472c7: mov    0x2c(%rax),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@82 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.63%    0.32%     0x00007f4ab12472ca: or     %rsi,%rdi          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f4ab12472cd: mov    %rdi,0x10(%rdx)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.02%     0x00007f4ab12472d1: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f4ab1248745
  0.09%    0.11%     0x00007f4ab12472d6: cmp    $0xf8019843,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                     0x00007f4ab12472dc: jne    0x00007f4ab1247941
  0.59%    0.69%     0x00007f4ab12472e2: lea    (%r12,%rbp,8),%rax  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f4ab12472e6: mov    0x18(%rax),%r11d   ;*getfield pc
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.03%     0x00007f4ab12472ea: mov    %r11d,%r13d
  0.06%    0.02%     0x00007f4ab12472ed: cmp    $0x40,%r11d
                     0x00007f4ab12472f1: jg     0x00007f4ab1247fc5  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.57%    0.12%     0x00007f4ab12472f7: mov    $0x1,%esi
                     0x00007f4ab12472fc: mov    %r11d,%ecx
  0.05%    0.02%     0x00007f4ab12472ff: shl    %cl,%rsi           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.64%    0.80%     0x00007f4ab1247302: mov    %rdi,%r11
  0.02%    0.04%     0x00007f4ab1247305: and    %rsi,%r11
  0.09%    0.16%     0x00007f4ab1247308: test   %r11,%r11
                     0x00007f4ab124730b: jne    0x00007f4ab1247620  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.65%    0.72%     0x00007f4ab1247311: mov    %ecx,%r11d
           0.00%     0x00007f4ab1247314: cmp    $0x40,%r11d
                     0x00007f4ab1247318: jge    0x00007f4ab124800d  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.02%     0x00007f4ab124731e: mov    0x2c(%rax),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.08%    0.11%     0x00007f4ab1247321: or     %rsi,%rdi          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.57%    0.63%     0x00007f4ab1247324: mov    %rdi,0x10(%rdx)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.07%     0x00007f4ab1247328: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f4ab1248759
  0.03%    0.04%     0x00007f4ab124732d: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007f4ab1247333: jne    0x00007f4ab1247975
  0.08%    0.18%     0x00007f4ab1247339: lea    (%r12,%rbp,8),%r13  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.58%    0.69%     0x00007f4ab124733d: mov    0x18(%r13),%r11d   ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.05%     0x00007f4ab1247341: mov    %r11d,%ecx
  0.03%    0.04%     0x00007f4ab1247344: cmp    $0x40,%r11d
                     0x00007f4ab1247348: jg     0x00007f4ab1248055  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.09%    0.15%     0x00007f4ab124734e: mov    $0x1,%esi
  0.57%    0.77%     0x00007f4ab1247353: shl    %cl,%rsi           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.12%    0.19%     0x00007f4ab1247356: mov    %rdi,%r11
  0.69%    0.59%     0x00007f4ab1247359: and    %rsi,%r11          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f4ab124735c: test   %r11,%r11
                     0x00007f4ab124735f: jne    0x00007f4ab12480a1  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.05%     0x00007f4ab1247365: mov    %ecx,%r11d
  0.13%    0.10%     0x00007f4ab1247368: cmp    $0x40,%r11d
                     0x00007f4ab124736c: jge    0x00007f4ab1248101  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.52%    0.63%     0x00007f4ab1247372: mov    %r10d,0xc(%rdx)    ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.01%     0x00007f4ab1247376: or     %rsi,%rdi          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.02%     0x00007f4ab1247379: mov    %rdi,0x10(%rdx)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.11%    0.12%     0x00007f4ab124737d: cmp    0x34(%rsp),%r10d
                     0x00007f4ab1247382: jae    0x00007f4ab12478b5  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.56%    0.56%     0x00007f4ab1247388: mov    0x34(%rax),%r11d   ;*getfield inst2
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@43 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.01%     0x00007f4ab124738c: mov    %r8,%rcx
  0.04%    0.03%     0x00007f4ab124738f: mov    %r13,%r10
  0.08%    0.08%     0x00007f4ab1247392: shr    $0x3,%r10
  0.51%    0.40%     0x00007f4ab1247396: mov    %r10d,(%r8)
  0.02%    0.04%     0x00007f4ab1247399: shr    $0x9,%rcx
  0.05%    0.03%     0x00007f4ab124739d: movabs $0x7f4ac1392000,%r10
  0.10%    0.07%     0x00007f4ab12473a7: mov    %r12b,(%r10,%rcx,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.65%    0.66%     0x00007f4ab12473ab: mov    0x8(%r12,%r11,8),%ecx  ; implicit exception: dispatches to 0x00007f4ab124876d
  0.03%    0.02%     0x00007f4ab12473b0: lea    (%r12,%r11,8),%r8
  0.01%    0.00%     0x00007f4ab12473b4: cmp    $0xf8019885,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                     0x00007f4ab12473ba: je     0x00007f4ab1247432
  0.10%    0.10%     0x00007f4ab12473bc: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007f4ab12473c2: jne    0x00007f4ab1247ced  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.63%    0.56%     0x00007f4ab12473c8: mov    0x18(%r8),%ecx     ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.01%     0x00007f4ab12473cc: cmp    $0x40,%ecx
                     0x00007f4ab12473cf: jg     0x00007f4ab1248235  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.03%     0x00007f4ab12473d5: mov    $0x1,%r10d
  0.09%    0.07%     0x00007f4ab12473db: shl    %cl,%r10           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.69%    0.83%     0x00007f4ab12473de: mov    %rdi,%r11
  0.09%    0.14%     0x00007f4ab12473e1: and    %r10,%r11          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.56%    0.79%     0x00007f4ab12473e4: test   %r11,%r11
                     0x00007f4ab12473e7: jne    0x00007f4ab12482b1  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.02%     0x00007f4ab12473ed: cmp    $0x40,%ecx
                     0x00007f4ab12473f0: jge    0x00007f4ab1248341  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.03%     0x00007f4ab12473f6: or     %r10,%rdi
  0.09%    0.06%     0x00007f4ab12473f9: mov    %rdx,%r11
  0.52%    0.28%     0x00007f4ab12473fc: mov    %rdi,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.01%     0x00007f4ab1247400: add    $0x18,%rbx
  0.01%    0.05%     0x00007f4ab1247404: shr    $0x3,%r8
  0.08%    0.15%     0x00007f4ab1247408: mov    %r8d,(%rbx)        ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.60%    1.06%     0x00007f4ab124740b: mov    %rbx,%r10
           0.00%     0x00007f4ab124740e: mov    0x30(%rsp),%r9d
  0.02%    0.00%     0x00007f4ab1247413: add    $0x3,%r9d
  0.13%    0.08%     0x00007f4ab1247417: mov    %r9d,0xc(%r11)     ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.59%    0.59%     0x00007f4ab124741b: shr    $0x9,%r10
  0.00%    0.00%     0x00007f4ab124741f: movabs $0x7f4ac1392000,%r8
  0.01%    0.04%     0x00007f4ab1247429: mov    %r12b,(%r8,%r10,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.12%    0.17%     0x00007f4ab124742d: jmpq   0x00007f4ab12470cb  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
....................................................................................................
 46.81%   46.11%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 597 (1019 bytes) 

                                 0x00007f4ab1264825: test   %r10d,%r10d
                                 0x00007f4ab1264828: jne    0x00007f4ab1265c3d  ;*ifne
                                                                               ; - com.google.re2j.Machine::match@115 (line 204)
                                 0x00007f4ab126482e: test   %edi,%edi
                                 0x00007f4ab1264830: jl     0x00007f4ab1265124  ;*ifge
                                                                               ; - com.google.re2j.Utils::emptyOpContext@21 (line 179)
                                                                               ; - com.google.re2j.Machine::match@121 (line 205)
                                 0x00007f4ab1264836: mov    $0x5,%r10d         ;*iload_1
                                                                               ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                                                                               ; - com.google.re2j.Machine::match@121 (line 205)
  0.00%                          0x00007f4ab126483c: cmp    $0xa,%edi
                                 0x00007f4ab126483f: je     0x00007f4ab126513c  ;*iload_0
                                                                               ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                                                                               ; - com.google.re2j.Machine::match@121 (line 205)
                                 0x00007f4ab1264845: mov    %edi,%ebx
                                 0x00007f4ab1264847: add    $0xffffffbf,%ebx
                                 0x00007f4ab126484a: cmp    $0x1a,%ebx
                  ╭              0x00007f4ab126484d: jb     0x00007f4ab1264860  ;*if_icmple
                  │                                                            ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │                                                            ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                            ; - com.google.re2j.Machine::match@121 (line 205)
  0.00%           │              0x00007f4ab126484f: mov    %edi,%r8d
                  │              0x00007f4ab1264852: add    $0xffffff9f,%r8d
                  │              0x00007f4ab1264856: cmp    $0x1a,%r8d
                  │              0x00007f4ab126485a: jae    0x00007f4ab126515b  ;*iconst_1
                  │                                                            ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │                                                            ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                            ; - com.google.re2j.Machine::match@121 (line 205)
           0.00%  ↘              0x00007f4ab1264860: or     $0x10,%r10d        ;*iload_2
                                                                               ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                               ; - com.google.re2j.Machine::match@121 (line 205)
  0.00%    0.01%                 0x00007f4ab1264864: mov    0x40(%rsp),%r8
  0.01%    0.02%                 0x00007f4ab1264869: movzbl 0x11(%r8),%r13d    ;*getfield captures
                                                                               ; - com.google.re2j.Machine::match@283 (line 240)
           0.00%                 0x00007f4ab126486e: mov    %rdx,%r8
                                 0x00007f4ab1264871: shl    $0x3,%r8           ;*getfield q1
                                                                               ; - com.google.re2j.Machine::match@53 (line 192)
                                 0x00007f4ab1264875: mov    %r8,0x20(%rsp)
                                 0x00007f4ab126487a: xor    %eax,%eax
                                 0x00007f4ab126487c: mov    $0x1,%ebx
                                 0x00007f4ab1264881: xor    %r8d,%r8d
  0.00%    0.00%                 0x00007f4ab1264884: mov    %ebx,0x14(%rsp)
                                 0x00007f4ab1264888: mov    %r8d,0x60(%rsp)
  0.01%            ╭             0x00007f4ab126488d: jmpq   0x00007f4ab1264a08
  0.07%    0.05%   │     ↗       0x00007f4ab1264892: or     $0x20,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                   │     │                                                     ; - com.google.re2j.Machine::match@326 (line 245)
  0.25%    0.32%   │     │       0x00007f4ab1264896: mov    %r8d,0x3c(%rsp)    ;*iload_2
                   │     │                                                     ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   │     │                                                     ; - com.google.re2j.Machine::match@326 (line 245)
  0.19%    0.15%   │     │↗      0x00007f4ab126489b: mov    0x60(%rsp),%r10d
  0.31%    0.35%   │     ││      0x00007f4ab12648a0: cmp    %r14d,%r10d
                   │     ││      0x00007f4ab12648a3: je     0x00007f4ab1265083  ;*if_icmpne
                   │     ││                                                    ; - com.google.re2j.Machine::match@351 (line 246)
  0.19%    0.11%   │     ││      0x00007f4ab12648a9: xor    %ebx,%ebx          ;*invokespecial step
                   │     ││                                                    ; - com.google.re2j.Machine::match@359 (line 246)
  0.29%    0.22%   │     ││      0x00007f4ab12648ab: mov    %rax,-0x8(%rsp)
  0.23%    0.21%   │     ││      0x00007f4ab12648b0: mov    0x60(%rsp),%eax
  0.18%    0.22%   │     ││      0x00007f4ab12648b4: mov    %eax,0x34(%rsp)
  0.22%    0.09%   │     ││      0x00007f4ab12648b8: mov    -0x8(%rsp),%rax    ;*invokevirtual endPos
                   │     ││                                                    ; - com.google.re2j.Machine::match@348 (line 246)
  1.07%    0.45%   │     ││      0x00007f4ab12648bd: add    0x28(%rsp),%r10d   ;*iadd
                   │     ││                                                    ; - com.google.re2j.Machine::match@340 (line 246)
  0.14%    0.07%   │     ││      0x00007f4ab12648c2: mov    %r10d,0x60(%rsp)
  0.30%    0.12%   │     ││      0x00007f4ab12648c7: mov    0x40(%rsp),%rsi
  0.06%    0.05%   │     ││      0x00007f4ab12648cc: mov    0x18(%rsp),%rdx
  0.27%    0.21%   │     ││      0x00007f4ab12648d1: mov    0x20(%rsp),%rcx
  0.04%    0.05%   │     ││      0x00007f4ab12648d6: mov    0x34(%rsp),%r8d
  0.56%    0.37%   │     ││      0x00007f4ab12648db: mov    %r10d,%r9d
  0.04%    0.04%   │     ││      0x00007f4ab12648de: mov    0x3c(%rsp),%r11d
  0.25%    0.08%   │     ││      0x00007f4ab12648e3: mov    %r11d,(%rsp)
  0.16%    0.15%   │     ││      0x00007f4ab12648e7: mov    0x48(%rsp),%r11d
  0.34%    0.28%   │     ││      0x00007f4ab12648ec: mov    %r11d,0x8(%rsp)
  0.12%    0.06%   │     ││      0x00007f4ab12648f1: mov    %ebx,0x10(%rsp)
  0.24%    0.28%   │     ││      0x00007f4ab12648f5: xchg   %ax,%ax
  0.09%    0.10%   │     ││      0x00007f4ab12648f7: callq  0x00007f4ab1046020  ; OopMap{[24]=Oop [32]=Oop [56]=NarrowOop [64]=Oop [80]=Oop off=668}
                   │     ││                                                    ;*invokespecial step
                   │     ││                                                    ; - com.google.re2j.Machine::match@359 (line 246)
                   │     ││                                                    ;   {optimized virtual_call}
  0.00%            │     ││      0x00007f4ab12648fc: mov    0x40(%rsp),%r10
  0.71%    0.87%   │     ││      0x00007f4ab1264901: movzbl 0x11(%r10),%r13d   ;*getfield captures
                   │     ││                                                    ; - com.google.re2j.Machine::match@371 (line 250)
  0.04%    0.08%   │     ││      0x00007f4ab1264906: movzbl 0x10(%r10),%eax    ;*getfield matched
                   │     ││                                                    ; - com.google.re2j.Machine::match@378 (line 250)
           0.00%   │     ││      0x00007f4ab126490b: mov    0x28(%rsp),%r11d
  0.76%    1.00%   │     ││      0x00007f4ab1264910: test   %r11d,%r11d
                   │     ││      0x00007f4ab1264913: je     0x00007f4ab1265043  ;*ifne
                   │     ││                                                    ; - com.google.re2j.Machine::match@364 (line 247)
                   │     ││      0x00007f4ab1264919: test   %r13d,%r13d
                   │     ││      0x00007f4ab126491c: jne    0x00007f4ab1265485  ;*ifne
                   │     ││                                                    ; - com.google.re2j.Machine::match@374 (line 250)
  0.04%    0.01%   │     ││      0x00007f4ab1264922: test   %eax,%eax
                   │     ││      0x00007f4ab1264924: jne    0x00007f4ab12656e5  ;*ifeq
                   │     ││                                                    ; - com.google.re2j.Machine::match@381 (line 250)
  0.00%    0.01%   │     ││      0x00007f4ab126492a: mov    0x50(%rsp),%r10
  0.66%    0.86%   │     ││      0x00007f4ab126492f: mov    0x10(%r10),%r14d   ;*getfield end
                   │     ││                                                    ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                   │     ││                                                    ; - com.google.re2j.Machine::match@411 (line 259)
  0.02%    0.00%   │     ││      0x00007f4ab1264933: mov    0xc(%r10),%esi     ;*getfield start
                   │     ││                                                    ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                   │     ││                                                    ; - com.google.re2j.Machine::match@411 (line 259)
  0.04%    0.05%   │     ││      0x00007f4ab1264937: mov    0x14(%r10),%ecx    ;*getfield str
                   │     ││                                                    ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                   │     ││                                                    ; - com.google.re2j.Machine::match@411 (line 259)
  0.01%    0.03%   │     ││      0x00007f4ab126493b: mov    0x2c(%rsp),%r11d
  0.82%    0.87%   │     ││      0x00007f4ab1264940: cmp    $0xffffffff,%r11d
                   │     ││      0x00007f4ab1264944: je     0x00007f4ab126508d  ;*if_icmpeq
                   │     ││                                                    ; - com.google.re2j.Machine::match@403 (line 258)
  0.00%    0.01%   │     ││      0x00007f4ab126494a: mov    0x30(%rsp),%r8d
  0.01%    0.02%   │     ││      0x00007f4ab126494f: add    0x60(%rsp),%r8d
  0.02%    0.05%   │     ││      0x00007f4ab1264954: add    %esi,%r8d          ;*iadd
                   │     ││                                                    ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                   │     ││                                                    ; - com.google.re2j.Machine::match@411 (line 259)
  0.60%    0.90%   │     ││      0x00007f4ab1264957: cmp    %r14d,%r8d
                   │     ││      0x00007f4ab126495a: jge    0x00007f4ab126509b  ;*if_icmpge
                   │     ││                                                    ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                   │     ││                                                    ; - com.google.re2j.Machine::match@411 (line 259)
  0.02%    0.04%   │     ││      0x00007f4ab1264960: mov    0x8(%r12,%rcx,8),%r10d  ; implicit exception: dispatches to 0x00007f4ab1266599
  0.05%    0.08%   │     ││      0x00007f4ab1264965: cmp    $0xf80002da,%r10d  ;   {metadata(&apos;java/lang/String&apos;)}
                   │     ││      0x00007f4ab126496c: jne    0x00007f4ab1265365
  0.06%    0.06%   │     ││      0x00007f4ab1264972: lea    (%r12,%rcx,8),%r9  ;*invokeinterface charAt
                   │     ││                                                    ; - java.lang.Character::codePointAt@2 (line 4866)
                   │     ││                                                    ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │     ││                                                    ; - com.google.re2j.Machine::match@411 (line 259)
  0.70%    0.93%   │     ││      0x00007f4ab1264976: test   %r8d,%r8d
                   │     ││      0x00007f4ab1264979: jl     0x00007f4ab12654f5  ;*iflt
                   │     ││                                                    ; - java.lang.String::charAt@1 (line 657)
                   │     ││                                                    ; - java.lang.Character::codePointAt@2 (line 4866)
                   │     ││                                                    ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │     ││                                                    ; - com.google.re2j.Machine::match@411 (line 259)
  0.00%    0.01%   │     ││      0x00007f4ab126497f: mov    0xc(%r9),%ebx      ;*getfield value
                   │     ││                                                    ; - java.lang.String::charAt@6 (line 657)
                   │     ││                                                    ; - java.lang.Character::codePointAt@2 (line 4866)
                   │     ││                                                    ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │     ││                                                    ; - com.google.re2j.Machine::match@411 (line 259)
  0.03%    0.05%   │     ││      0x00007f4ab1264983: mov    0xc(%r12,%rbx,8),%ebp  ;*arraylength
                   │     ││                                                    ; - java.lang.String::charAt@9 (line 657)
                   │     ││                                                    ; - java.lang.Character::codePointAt@2 (line 4866)
                   │     ││                                                    ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │     ││                                                    ; - com.google.re2j.Machine::match@411 (line 259)
                   │     ││                                                    ; implicit exception: dispatches to 0x00007f4ab12665ad
  1.78%    2.10%   │     ││      0x00007f4ab1264988: cmp    %ebp,%r8d
                   │     ││      0x00007f4ab126498b: jge    0x00007f4ab1265755  ;*if_icmplt
                   │     ││                                                    ; - java.lang.String::charAt@10 (line 657)
                   │     ││                                                    ; - java.lang.Character::codePointAt@2 (line 4866)
                   │     ││                                                    ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │     ││                                                    ; - com.google.re2j.Machine::match@411 (line 259)
  0.75%    0.57%   │     ││      0x00007f4ab1264991: cmp    %ebp,%r8d
                   │     ││      0x00007f4ab1264994: jae    0x00007f4ab1265215
  0.39%    0.17%   │     ││      0x00007f4ab126499a: lea    (%r12,%rbx,8),%r10
                   │     ││      0x00007f4ab126499e: movzwl 0x10(%r10,%r8,2),%ebx  ;*caload
                   │     ││                                                    ; - java.lang.String::charAt@27 (line 660)
                   │     ││                                                    ; - java.lang.Character::codePointAt@2 (line 4866)
                   │     ││                                                    ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │     ││                                                    ; - com.google.re2j.Machine::match@411 (line 259)
  0.04%    0.04%   │     ││      0x00007f4ab12649a4: cmp    $0xd800,%ebx
                   │     ││      0x00007f4ab12649aa: jge    0x00007f4ab12657cd  ;*if_icmplt
                   │     ││                                                    ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   │     ││                                                    ; - java.lang.Character::codePointAt@9 (line 4867)
                   │     ││                                                    ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │     ││                                                    ; - com.google.re2j.Machine::match@411 (line 259)
  0.67%    0.36%   │     ││      0x00007f4ab12649b0: shl    $0x3,%ebx          ;*ishl
                   │     ││                                                    ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                   │     ││                                                    ; - com.google.re2j.Machine::match@411 (line 259)
  0.21%    0.21%   │     ││      0x00007f4ab12649b3: mov    %ebx,%edx
                   │     ││      0x00007f4ab12649b5: or     $0x1,%edx
  0.30%    0.30%   │     ││      0x00007f4ab12649b8: and    $0x7,%ebx
  0.35%    0.40%   │     ││      0x00007f4ab12649bb: sar    $0x3,%edx          ;*ishr
                   │     ││                                                    ; - com.google.re2j.Machine::match@419 (line 260)
  0.28%    0.39%   │     ││      0x00007f4ab12649be: or     $0x1,%ebx          ; OopMap{rcx=NarrowOop [24]=Oop [32]=Oop [64]=Oop [80]=Oop off=865}
                   │     ││                                                    ;*goto
                   │     ││                                                    ; - com.google.re2j.Machine::match@441 (line 266)
  0.01%    0.01%   │     ││      0x00007f4ab12649c1: test   %eax,0x17725639(%rip)        # 0x00007f4ac898a000
                   │     ││                                                    ;*goto
                   │     ││                                                    ; - com.google.re2j.Machine::match@441 (line 266)
                   │     ││                                                    ;   {poll}
  0.05%    0.01%   │     ││      0x00007f4ab12649c7: mov    0x40(%rsp),%r10
  0.31%    0.56%   │     ││      0x00007f4ab12649cc: mov    0x28(%r10),%r11d   ;*getfield matchcap
                   │     ││                                                    ; - com.google.re2j.Machine::match@307 (line 243)
  0.29%    0.45%   │     ││      0x00007f4ab12649d0: mov    0x14(%r10),%r9d    ;*getfield re2
                   │     ││                                                    ; - com.google.re2j.Machine::match@169 (line 220)
  0.00%    0.00%   │     ││      0x00007f4ab12649d4: mov    0x20(%rsp),%r10
  0.01%    0.01%   │     ││      0x00007f4ab12649d9: mov    %r10,%r8
  0.41%    0.57%   │     ││      0x00007f4ab12649dc: shr    $0x3,%r8
  0.31%    0.36%   │     ││      0x00007f4ab12649e0: mov    %r8d,0x38(%rsp)
  0.02%    0.00%   │     ││      0x00007f4ab12649e5: mov    0x2c(%rsp),%edi
  0.00%    0.01%   │     ││      0x00007f4ab12649e9: mov    0x3c(%rsp),%r10d
  0.36%    0.31%   │     ││      0x00007f4ab12649ee: mov    0x18(%rsp),%r8
  0.35%    0.38%   │     ││      0x00007f4ab12649f3: mov    %r8,0x20(%rsp)
  0.01%    0.02%   │     ││      0x00007f4ab12649f8: mov    0x30(%rsp),%ebp
           0.02%   │     ││      0x00007f4ab12649fc: mov    %ebp,0x28(%rsp)
  0.40%    0.65%   │     ││      0x00007f4ab1264a00: mov    %edx,0x2c(%rsp)
  0.31%    0.36%   │     ││      0x00007f4ab1264a04: mov    %ebx,0x30(%rsp)    ;*getfield matchcap
                   │     ││                                                    ; - com.google.re2j.Machine::match@307 (line 243)
                   ↘     ││      0x00007f4ab1264a08: mov    0x38(%rsp),%ebx
  0.01%    0.01%         ││      0x00007f4ab1264a0c: movzbl 0x18(%r12,%rbx,8),%ebx  ; implicit exception: dispatches to 0x00007f4ab1266541
  0.43%    0.56%         ││      0x00007f4ab1264a12: mov    0x38(%rsp),%r8d
  0.29%    0.33%         ││      0x00007f4ab1264a17: shl    $0x3,%r8           ;*aload
                         ││                                                    ; - com.google.re2j.Machine::match@136 (line 211)
  0.02%                  ││      0x00007f4ab1264a1b: mov    %r8,0x18(%rsp)
           0.00%         ││      0x00007f4ab1264a20: test   %ebx,%ebx
                         ││      0x00007f4ab1264a22: jne    0x00007f4ab1264cab  ;*aload_0
                         ││                                                    ; - com.google.re2j.Machine::match@267 (line 237)
  0.32%    0.45%         ││      0x00007f4ab1264a28: test   %eax,%eax
                         ││      0x00007f4ab1264a2a: jne    0x00007f4ab12653e1  ;*ifne
                         ││                                                    ; - com.google.re2j.Machine::match@271 (line 237)
  0.30%    0.37%         ││      0x00007f4ab1264a30: mov    0x60(%rsp),%r9d
  0.01%    0.02%         ││      0x00007f4ab1264a35: test   %r9d,%r9d
                    ╭    ││      0x00007f4ab1264a38: je     0x00007f4ab1264a48  ;*ifeq
                    │    ││                                                    ; - com.google.re2j.Machine::match@275 (line 237)
           0.01%    │    ││      0x00007f4ab1264a3a: mov    0x48(%rsp),%r8d
  0.37%    0.41%    │    ││      0x00007f4ab1264a3f: test   %r8d,%r8d
                    │    ││      0x00007f4ab1264a42: jne    0x00007f4ab1265435  ;*aload_0
                    │    ││                                                    ; - com.google.re2j.Machine::match@282 (line 240)
  0.27%    0.44%    ↘    ││      0x00007f4ab1264a48: test   %r13d,%r13d
                         ││      0x00007f4ab1264a4b: jne    0x00007f4ab1265571  ;*ifeq
                         ││                                                    ; - com.google.re2j.Machine::match@286 (line 240)
  0.00%    0.00%         ││      0x00007f4ab1264a51: mov    0x40(%rsp),%r8
  0.02%    0.00%         ││      0x00007f4ab1264a56: mov    0x18(%r8),%r9d     ;*getfield prog
                         ││                                                    ; - com.google.re2j.Machine::match@297 (line 243)
  0.27%    0.66%         ││      0x00007f4ab1264a5a: mov    0x1c(%r12,%r9,8),%ebp  ;*getfield startInst
                         ││                                                    ; - com.google.re2j.Machine::match@300 (line 243)
                         ││                                                    ; implicit exception: dispatches to 0x00007f4ab1266551
  0.34%    0.41%         ││      0x00007f4ab1264a5f: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007f4ab1266561
  0.42%    0.41%         ││      0x00007f4ab1264a64: cmp    $0xf8019909,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                         ││      0x00007f4ab1264a6b: jne    0x00007f4ab1265291
  0.50%    0.41%         ││      0x00007f4ab1264a71: lea    (%r12,%rbp,8),%r9  ;*invokevirtual add
                         ││                                                    ; - com.google.re2j.Machine::match@318 (line 243)
  0.07%    0.11%         ││      0x00007f4ab1264a75: mov    0x18(%r9),%ecx     ;*getfield pc
                         ││                                                    ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                         ││                                                    ; - com.google.re2j.Machine::match@318 (line 243)
  0.17%    0.23%         ││      0x00007f4ab1264a79: cmp    $0x40,%ecx
                         ││      0x00007f4ab1264a7c: jg     0x00007f4ab12655c5  ;*if_icmpgt
                         ││                                                    ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                         ││                                                    ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                         ││                                                    ; - com.google.re2j.Machine::match@318 (line 243)
  0.40%    0.44%         ││      0x00007f4ab1264a82: mov    $0x1,%ebx
  0.09%    0.05%         ││      0x00007f4ab1264a87: shl    %cl,%rbx           ;*lshl
                         ││                                                    ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                         ││                                                    ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                         ││                                                    ; - com.google.re2j.Machine::match@318 (line 243)
  1.12%    1.15%         ││      0x00007f4ab1264a8a: mov    0x38(%rsp),%r8d
  0.00%                  ││      0x00007f4ab1264a8f: mov    0x10(%r12,%r8,8),%r8  ;*getfield pcsl
                         ││                                                    ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                         ││                                                    ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                         ││                                                    ; - com.google.re2j.Machine::match@318 (line 243)
  0.04%    0.05%         ││      0x00007f4ab1264a94: mov    %r8,%r10
  0.08%    0.00%         ││      0x00007f4ab1264a97: and    %rbx,%r10          ;*land
                         ││                                                    ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                         ││                                                    ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                         ││                                                    ; - com.google.re2j.Machine::match@318 (line 243)
  0.67%    0.21%         ││      0x00007f4ab1264a9a: test   %r10,%r10
                         ││      0x00007f4ab1264a9d: jne    0x00007f4ab126561d  ;*ifeq
                         ││                                                    ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                         ││                                                    ; - com.google.re2j.Machine::match@318 (line 243)
  0.02%    0.01%         ││      0x00007f4ab1264aa3: cmp    $0x40,%ecx
                         ││      0x00007f4ab1264aa6: jge    0x00007f4ab126568d  ;*if_icmpge
                         ││                                                    ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                         ││                                                    ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                         ││                                                    ; - com.google.re2j.Machine::match@318 (line 243)
  0.06%    0.01%         ││      0x00007f4ab1264aac: mov    0x38(%rsp),%r10d
  0.05%    0.01%         ││      0x00007f4ab1264ab1: mov    %r12b,0x18(%r12,%r10,8)  ;*putfield empty
                         ││                                                    ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                         ││                                                    ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                         ││                                                    ; - com.google.re2j.Machine::match@318 (line 243)
  0.60%    0.25%         ││      0x00007f4ab1264ab6: mov    0xc(%r12,%r10,8),%r10d  ;*getfield size
                         ││                                                    ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                         ││                                                    ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                         ││                                                    ; - com.google.re2j.Machine::match@318 (line 243)
  0.01%    0.01%         ││      0x00007f4ab1264abb: mov    0x38(%rsp),%r11d
  0.06%    0.01%         ││      0x00007f4ab1264ac0: mov    0x20(%r12,%r11,8),%r11d  ;*getfield denseThreadsInstructions
                         ││                                                    ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                         ││                                                    ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                         ││                                                    ; - com.google.re2j.Machine::match@318 (line 243)
  0.09%    0.01%         ││      0x00007f4ab1264ac5: or     %r8,%rbx
  0.61%    0.47%         ││      0x00007f4ab1264ac8: mov    0x38(%rsp),%ecx
  0.02%    0.01%         ││      0x00007f4ab1264acc: mov    %rbx,0x10(%r12,%rcx,8)  ;*putfield pcsl
                         ││                                                    ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                         ││                                                    ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                         ││                                                    ; - com.google.re2j.Machine::match@318 (line 243)
  0.05%    0.06%         ││      0x00007f4ab1264ad1: mov    %r10d,%ecx
  0.04%    0.13%         ││      0x00007f4ab1264ad4: inc    %ecx
  0.59%    0.61%         ││      0x00007f4ab1264ad6: mov    0x38(%rsp),%r8d
  0.01%    0.02%         ││      0x00007f4ab1264adb: mov    %ecx,0xc(%r12,%r8,8)  ;*putfield size
                         ││                                                    ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                         ││                                                    ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                         ││                                                    ; - com.google.re2j.Machine::match@318 (line 243)
  0.05%    0.04%         ││      0x00007f4ab1264ae0: mov    0xc(%r12,%r11,8),%ecx  ; implicit exception: dispatches to 0x00007f4ab1266581
  0.08%    0.06%         ││      0x00007f4ab1264ae5: cmp    %ecx,%r10d
                         ││      0x00007f4ab1264ae8: jae    0x00007f4ab12651a3
  0.50%    0.64%         ││      0x00007f4ab1264aee: mov    0x8(%r12,%r11,8),%ecx
  0.03%    0.02%         ││      0x00007f4ab1264af3: cmp    $0xf8019807,%ecx   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                         ││      0x00007f4ab1264af9: jne    0x00007f4ab12652f1  ;*aastore
                         ││                                                    ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                         ││                                                    ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                         ││                                                    ; - com.google.re2j.Machine::match@318 (line 243)
  0.05%    0.05%         ││      0x00007f4ab1264aff: test   %edi,%edi
                     ╭   ││      0x00007f4ab1264b01: jl     0x00007f4ab1264baf  ;*ifge
                     │   ││                                                    ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                     │   ││                                                    ; - com.google.re2j.Machine::match@326 (line 245)
  0.06%    0.03%     │   ││      0x00007f4ab1264b07: xor    %r8d,%r8d          ;*iload_0
                     │   ││                                                    ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                     │   ││                                                    ; - com.google.re2j.Machine::match@326 (line 245)
  0.49%    0.55%     │   ││↗     0x00007f4ab1264b0a: cmp    $0xa,%edi
                     │   │││     0x00007f4ab1264b0d: je     0x00007f4ab1264f14  ;*iload_1
                     │   │││                                                   ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                     │   │││                                                   ; - com.google.re2j.Machine::match@326 (line 245)
  0.00%    0.02%     │   │││     0x00007f4ab1264b13: mov    0x2c(%rsp),%ebx
  0.06%    0.05%     │   │││     0x00007f4ab1264b17: test   %ebx,%ebx
                     │╭  │││     0x00007f4ab1264b19: jl     0x00007f4ab1264bba  ;*iload_1
                     ││  │││                                                   ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                     ││  │││                                                   ; - com.google.re2j.Machine::match@326 (line 245)
  0.06%    0.04%     ││  │││↗    0x00007f4ab1264b1f: cmp    $0xa,%ebx
                     ││  ││││    0x00007f4ab1264b22: je     0x00007f4ab1264f1d  ;*iload_0
                     ││  ││││                                                  ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                     ││  ││││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.69%    0.70%     ││  ││││    0x00007f4ab1264b28: mov    %r9,%rcx
  0.01%    0.01%     ││  ││││    0x00007f4ab1264b2b: shr    $0x3,%rcx          ;*aastore
                     ││  ││││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                     ││  ││││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                     ││  ││││                                                  ; - com.google.re2j.Machine::match@318 (line 243)
  0.06%    0.03%     ││  ││││    0x00007f4ab1264b2f: shl    $0x3,%r11          ;*getfield denseThreadsInstructions
                     ││  ││││                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                     ││  ││││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                     ││  ││││                                                  ; - com.google.re2j.Machine::match@318 (line 243)
  0.07%    0.06%     ││  ││││    0x00007f4ab1264b33: lea    0x10(%r11,%r10,4),%r10
  0.64%    0.57%     ││  ││││    0x00007f4ab1264b38: mov    %ecx,(%r10)
  0.23%    0.20%     ││  ││││    0x00007f4ab1264b3b: mov    %edi,%r11d
  0.02%    0.02%     ││  ││││    0x00007f4ab1264b3e: add    $0xffffffbf,%r11d
  0.07%    0.10%     ││  ││││    0x00007f4ab1264b42: shr    $0x9,%r10
  0.58%    0.55%     ││  ││││    0x00007f4ab1264b46: movabs $0x7f4ac1392000,%r9
  0.07%    0.08%     ││  ││││    0x00007f4ab1264b50: mov    %r12b,(%r9,%r10,1)  ;*aastore
                     ││  ││││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                     ││  ││││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                     ││  ││││                                                  ; - com.google.re2j.Machine::match@318 (line 243)
  0.71%    0.83%     ││  ││││    0x00007f4ab1264b54: cmp    $0x1a,%r11d
                     ││╭ ││││    0x00007f4ab1264b58: jb     0x00007f4ab1264b6b  ;*if_icmple
                     │││ ││││                                                  ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                     │││ ││││                                                  ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     │││ ││││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.04%    0.06%     │││ ││││    0x00007f4ab1264b5a: mov    %edi,%r10d
  0.37%    0.41%     │││ ││││    0x00007f4ab1264b5d: add    $0xffffff9f,%r10d
  0.07%    0.09%     │││ ││││    0x00007f4ab1264b61: cmp    $0x1a,%r10d
                     │││ ││││    0x00007f4ab1264b65: jae    0x00007f4ab12650d9  ;*iconst_1
                     │││ ││││                                                  ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                     │││ ││││                                                  ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     │││ ││││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.23%    0.26%     ││↘ ││││    0x00007f4ab1264b6b: mov    $0x1,%ebp          ;*ireturn
                     ││  ││││                                                  ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                     ││  ││││                                                  ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     ││  ││││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.08%    0.09%     ││  ││││    0x00007f4ab1264b70: mov    0x2c(%rsp),%r11d
  0.36%    0.31%     ││  ││││    0x00007f4ab1264b75: add    $0xffffffbf,%r11d
  0.09%    0.09%     ││  ││││    0x00007f4ab1264b79: cmp    $0x1a,%r11d
                     ││ ╭││││    0x00007f4ab1264b7d: jb     0x00007f4ab1264b92  ;*if_icmple
                     ││ │││││                                                  ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                     ││ │││││                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     ││ │││││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.28%    0.26%     ││ │││││    0x00007f4ab1264b7f: mov    0x2c(%rsp),%r10d
  0.09%    0.09%     ││ │││││    0x00007f4ab1264b84: add    $0xffffff9f,%r10d
  0.25%    0.40%     ││ │││││    0x00007f4ab1264b88: cmp    $0x1a,%r10d
                     ││ │││││    0x00007f4ab1264b8c: jae    0x00007f4ab12650fa  ;*iconst_1
                     ││ │││││                                                  ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                     ││ │││││                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     ││ │││││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.07%    0.11%     ││ ↘││││    0x00007f4ab1264b92: mov    $0x1,%r11d         ;*ireturn
                     ││  ││││                                                  ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                     ││  ││││                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     ││  ││││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.30%    0.29%     ││  ││││    0x00007f4ab1264b98: cmp    %r11d,%ebp
                     ││  ╰│││    0x00007f4ab1264b9b: je     0x00007f4ab1264892  ;*if_icmpeq
                     ││   │││                                                  ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                     ││   │││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.12%    0.11%     ││   │││    0x00007f4ab1264ba1: or     $0x10,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                     ││   │││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.05%    0.03%     ││   │││    0x00007f4ab1264ba5: mov    %r8d,0x3c(%rsp)
  0.25%    0.22%     ││   ╰││    0x00007f4ab1264baa: jmpq   0x00007f4ab126489b
                     ↘│    ││    0x00007f4ab1264baf: mov    $0x5,%r8d
  0.01%               │    ╰│    0x00007f4ab1264bb5: jmpq   0x00007f4ab1264b0a
           0.00%      ↘     │    0x00007f4ab1264bba: or     $0xa,%r8d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@27 (line 180)
                            │                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.00%    0.00%            ╰    0x00007f4ab1264bbe: jmpq   0x00007f4ab1264b1f
                                 0x00007f4ab1264bc3: nopw   0x0(%rax,%rax,1)
                                 0x00007f4ab1264bcc: data16 data16 xchg %ax,%ax
           0.00%                 0x00007f4ab1264bd0: mov    %edx,0x5c(%rsp)
  0.02%    0.01%                 0x00007f4ab1264bd4: jmpq   0x00007f4ab1264e55
                                 0x00007f4ab1264bd9: mov    0x5c(%rsp),%r9d
                                 0x00007f4ab1264bde: add    $0x2,%r9d
                                 0x00007f4ab1264be2: mov    %r9d,0x5c(%rsp)
  0.00%                          0x00007f4ab1264be7: mov    0x5c(%rsp),%r9d
  0.01%                          0x00007f4ab1264bec: inc    %r9d
  0.00%                          0x00007f4ab1264bef: mov    %r9d,0x58(%rsp)
                             ╭   0x00007f4ab1264bf4: jmp    0x00007f4ab1264c21
                             │   0x00007f4ab1264bf6: mov    0x5c(%rsp),%r9d
           0.00%             │   0x00007f4ab1264bfb: add    $0x2,%r9d
                             │   0x00007f4ab1264bff: mov    %r9d,0x58(%rsp)
                             │╭  0x00007f4ab1264c04: jmp    0x00007f4ab1264c14
                             ││  0x00007f4ab1264c06: mov    0x5c(%rsp),%r9d
                             ││  0x00007f4ab1264c0b: add    $0x2,%r9d
  0.00%                      ││  0x00007f4ab1264c0f: mov    %r9d,0x5c(%rsp)
                             │↘  0x00007f4ab1264c14: mov    0x5c(%rsp),%r9d
                             │   0x00007f4ab1264c19: inc    %r9d               ;*iinc
                             │                                                 ; - java.lang.String::indexOf@69 (line 1772)
                             │                                                 ; - java.lang.String::indexOf@21 (line 1718)
                             │                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                             │                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                             │                                                 ; - com.google.re2j.Machine::match@206 (line 224)
                             │   0x00007f4ab1264c1c: mov    %r9d,0x5c(%rsp)
                             ↘   0x00007f4ab1264c21: mov    0x5c(%rsp),%r9d
                                 0x00007f4ab1264c26: cmp    0x28(%rsp),%r9d
                                 0x00007f4ab1264c2b: jg     0x00007f4ab1264c90
  0.01%    0.01%                 0x00007f4ab1264c2d: mov    0x5c(%rsp),%r9d
                                 0x00007f4ab1264c32: add    0x34(%rsp),%r9d    ;*iadd
                                                                               ; - java.lang.String::indexOf@101 (line 1777)
                                                                               ; - java.lang.String::indexOf@21 (line 1718)
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                                                                               ; - com.google.re2j.Machine::match@206 (line 224)
  0.00%                          0x00007f4ab1264c37: mov    %r9d,%edx
                                 0x00007f4ab1264c3a: mov    0x58(%rsp),%r9d
                                 0x00007f4ab1264c3f: cmp    %edx,%r9d
                                 0x00007f4ab1264c42: jge    0x00007f4ab1264c82  ;*if_icmpge
                                                                               ; - java.lang.String::indexOf@123 (line 1779)
                                                                               ; - java.lang.String::indexOf@21 (line 1718)
....................................................................................................
 33.68%   34.22%  <total for region 2>

....[Hottest Regions]...............................................................................
 46.81%   46.11%         C2, level 4  com.google.re2j.Machine::step, version 545 (866 bytes) 
 33.68%   34.22%         C2, level 4  com.google.re2j.Machine::match, version 597 (1019 bytes) 
  7.07%    8.13%         C2, level 4  com.google.re2j.Machine::step, version 545 (344 bytes) 
  6.31%    6.86%         C2, level 4  com.google.re2j.Machine::step, version 545 (111 bytes) 
  1.48%    1.72%         C2, level 4  com.google.re2j.Machine::match, version 597 (70 bytes) 
  0.27%    0.04%         C2, level 4  com.google.re2j.RE2::match, version 599 (109 bytes) 
  0.24%    0.14%         C2, level 4  com.google.re2j.Machine::match, version 597 (166 bytes) 
  0.21%    0.09%         C2, level 4  com.google.re2j.Machine::match, version 597 (357 bytes) 
  0.19%    0.18%   [kernel.kallsyms]  [unknown] (6 bytes) 
  0.16%    0.06%         C2, level 4  com.google.re2j.RE2::match, version 599 (28 bytes) 
  0.15%    0.11%         C2, level 4  com.google.re2j.RE2::match, version 599 (0 bytes) 
  0.14%    0.00%         C2, level 4  com.google.re2j.RE2::match, version 599 (171 bytes) 
  0.13%                  C2, level 4  com.google.re2j.RE2::match, version 599 (209 bytes) 
  0.11%    0.04%         C2, level 4  com.google.re2j.RE2::match, version 599 (0 bytes) 
  0.10%    0.09%         C2, level 4  com.google.re2j.RE2::match, version 599 (0 bytes) 
  0.10%    0.03%         C2, level 4  com.google.re2j.Machine::match, version 597 (111 bytes) 
  0.09%    0.01%   [kernel.kallsyms]  [unknown] (39 bytes) 
  0.09%    0.01%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 643 (142 bytes) 
  0.08%            [kernel.kallsyms]  [unknown] (2 bytes) 
  0.07%    0.11%         C2, level 4  java.util.Collections::shuffle, version 610 (77 bytes) 
  2.51%    2.03%  <...other 424 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 60.19%   61.10%         C2, level 4  com.google.re2j.Machine::step, version 545 
 35.98%   36.38%         C2, level 4  com.google.re2j.Machine::match, version 597 
  1.31%    1.13%   [kernel.kallsyms]  [unknown] 
  1.17%    0.40%         C2, level 4  com.google.re2j.RE2::match, version 599 
  0.23%    0.14%         C2, level 4  java.util.Collections::shuffle, version 610 
  0.16%    0.05%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 643 
  0.09%    0.01%              [vdso]  __vdso_clock_gettime 
  0.06%    0.01%              [vdso]  [unknown] 
  0.05%    0.04%      hsdis-amd64.so  [unknown] 
  0.03%    0.04%           libjvm.so  PSPromotionManager::copy_to_survivor_space<false> 
  0.03%                    libjvm.so  os::javaTimeNanos 
  0.03%    0.02%        libc-2.26.so  __strchr_avx2 
  0.03%    0.06%           libjvm.so  RelocIterator::initialize 
  0.03%                  C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 607 
  0.02%    0.01%           libjvm.so  outputStream::do_vsnprintf 
  0.02%    0.00%  libpthread-2.26.so  __pthread_disable_asynccancel 
  0.01%                 libc-2.26.so  __clock_gettime 
  0.01%    0.01%           libjvm.so  Monitor::unlock 
  0.01%    0.01%        libc-2.26.so  _IO_fflush 
  0.01%    0.02%           libjvm.so  outputStream::update_position 
  0.49%    0.36%  <...other 78 warm methods...>
....................................................................................................
100.00%   99.81%  <totals>

....[Distribution by Source]........................................................................
 97.76%   98.07%         C2, level 4
  1.31%    1.13%   [kernel.kallsyms]
  0.45%    0.46%           libjvm.so
  0.16%    0.20%        libc-2.26.so
  0.16%    0.02%              [vdso]
  0.06%    0.05%  libpthread-2.26.so
  0.05%    0.04%      hsdis-amd64.so
  0.01%    0.01%         interpreter
  0.01%                  C1, level 3
  0.00%    0.00%        runtime stub
  0.00%                    libzip.so
  0.00%    0.00%    Unknown, level 0
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                 Mode  Cnt      Score      Error  Units
Re2jRegex.testExp1       thrpt   20  27286.643 ± 1897.795  ops/s
Re2jRegex.testExp1:·asm  thrpt             NaN               ---
