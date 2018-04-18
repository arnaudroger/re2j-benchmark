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
# Warmup Iteration   1: 12001.417 ops/s
# Warmup Iteration   2: 23142.977 ops/s
# Warmup Iteration   3: 23180.409 ops/s
# Warmup Iteration   4: 21327.096 ops/s
# Warmup Iteration   5: 23070.941 ops/s
# Warmup Iteration   6: 23242.433 ops/s
# Warmup Iteration   7: 23097.606 ops/s
# Warmup Iteration   8: 23511.004 ops/s
# Warmup Iteration   9: 23550.308 ops/s
# Warmup Iteration  10: 23542.796 ops/s
# Warmup Iteration  11: 23551.478 ops/s
# Warmup Iteration  12: 23547.053 ops/s
# Warmup Iteration  13: 23548.578 ops/s
# Warmup Iteration  14: 22448.946 ops/s
# Warmup Iteration  15: 21815.968 ops/s
# Warmup Iteration  16: 21814.423 ops/s
# Warmup Iteration  17: 23516.041 ops/s
# Warmup Iteration  18: 23445.403 ops/s
# Warmup Iteration  19: 23524.446 ops/s
# Warmup Iteration  20: 23517.443 ops/s
Iteration   1: 23451.110 ops/s
Iteration   2: 23237.561 ops/s
Iteration   3: 23243.430 ops/s
Iteration   4: 23411.456 ops/s
Iteration   5: 23411.663 ops/s
Iteration   6: 23417.460 ops/s
Iteration   7: 23417.238 ops/s
Iteration   8: 23429.776 ops/s
Iteration   9: 23517.731 ops/s
Iteration  10: 23518.435 ops/s
Iteration  11: 23518.326 ops/s
Iteration  12: 23519.888 ops/s
Iteration  13: 23526.227 ops/s
Iteration  14: 23527.413 ops/s
Iteration  15: 23522.300 ops/s
Iteration  16: 23392.371 ops/s
Iteration  17: 23445.808 ops/s
Iteration  18: 23450.322 ops/s
Iteration  19: 23453.885 ops/s
Iteration  20: 23450.607 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  23443.150 ±(99.9%) 72.260 ops/s [Average]
  (min, avg, max) = (23237.561, 23443.150, 23527.413), stdev = 83.215
  CI (99.9%): [23370.890, 23515.410] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1:·asm":
PrintAssembly processed: 193871 total address lines.
Perf output processed (skipped 23.351 seconds):
 Column 1: cycles (20690 events)
 Column 2: instructions (20681 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 497 (730 bytes) 

                     0x00007f0a5122045b: shr    $0x9,%r10
                     0x00007f0a5122045f: movabs $0x7f0a61175000,%r11
                     0x00007f0a51220469: mov    %r12b,(%r11,%r10,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
                     0x00007f0a5122046d: mov    0x30(%rsp),%r11    ;*synchronization entry
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.30%    0.35%     0x00007f0a51220472: mov    0x28(%rsp),%rax
  0.10%    0.08%     0x00007f0a51220477: mov    0xac(%rsp),%r9d
  0.14%    0.07%     0x00007f0a5122047f: mov    0xc(%rsp),%r14d
  0.21%    0.21%     0x00007f0a51220484: mov    0x38(%rsp),%rbx
  0.35%    0.21%     0x00007f0a51220489: mov    0xa4(%rsp),%r10d   ;*aload
                                                                   ; - com.google.re2j.Machine::step@219 (line 322)
  2.09%    2.31%  ↗  0x00007f0a51220491: inc    %r10d              ;*iinc
                  │                                                ; - com.google.re2j.Machine::step@230 (line 288)
  0.14%    0.08%  │  0x00007f0a51220494: cmp    %r9d,%r10d
                  │  0x00007f0a51220497: jge    0x00007f0a512208ab
  0.33%    0.28%  │  0x00007f0a5122049d: mov    %r11,%r13          ;*iload
                  │                                                ; - com.google.re2j.Machine::step@43 (line 291)
  0.59%    0.67%  │  0x00007f0a512204a0: mov    0x10(%rbx,%r10,4),%ecx  ;*aaload
                  │                                                ; - com.google.re2j.Machine::step@99 (line 301)
  1.36%    1.46%  │  0x00007f0a512204a5: mov    0xc(%r12,%rcx,8),%r11d  ;*getfield op
                  │                                                ; - com.google.re2j.Machine::step@104 (line 303)
                  │                                                ; implicit exception: dispatches to 0x00007f0a512216bd
  0.60%    0.58%  │  0x00007f0a512204aa: cmp    $0x6,%r11d
                  │  0x00007f0a512204ae: je     0x00007f0a512209d1  ;*if_icmpne
                  │                                                ; - com.google.re2j.Machine::step@109 (line 303)
  0.87%    0.94%  │  0x00007f0a512204b4: cmp    $0xa,%r11d
                  │  0x00007f0a512204b8: jne    0x00007f0a51220835  ;*if_icmpne
                  │                                                ; - com.google.re2j.Inst::matchRune@6 (line 90)
                  │                                                ; - com.google.re2j.Machine::step@191 (line 318)
  0.17%    0.19%  │  0x00007f0a512204be: mov    0x2c(%r12,%rcx,8),%edi  ;*getfield outInst
                  │                                                ; - com.google.re2j.Machine::step@199 (line 319)
  0.15%    0.12%  │  0x00007f0a512204c3: mov    0x8(%r12,%rdi,8),%r11d  ; implicit exception: dispatches to 0x00007f0a512216cd
  1.73%    1.63%  │  0x00007f0a512204c8: lea    (%r12,%rdi,8),%r8
  0.07%    0.06%  │  0x00007f0a512204cc: cmp    $0xf8019843,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                  │  0x00007f0a512204d3: jne    0x00007f0a512208db  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
  0.70%    0.59%  │  0x00007f0a512204d9: mov    0x18(%r8),%ecx     ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 175)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.07%    0.16%  │  0x00007f0a512204dd: mov    %r13,%r11
  0.06%    0.06%  │  0x00007f0a512204e0: mov    0x10(%r13),%rdi    ;*getfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
                  │                                                ; implicit exception: dispatches to 0x00007f0a512216e1
  0.05%    0.07%  │  0x00007f0a512204e4: cmp    $0x40,%ecx
                  │  0x00007f0a512204e7: jg     0x00007f0a51220ca9  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.69%    0.78%  │  0x00007f0a512204ed: mov    $0x1,%edx
  0.01%    0.01%  │  0x00007f0a512204f2: shl    %cl,%rdx           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  1.48%    1.44%  │  0x00007f0a512204f5: mov    %rdi,%rsi
  0.00%           │  0x00007f0a512204f8: and    %rdx,%rsi
  0.11%    0.06%  │  0x00007f0a512204fb: test   %rsi,%rsi
                  ╰  0x00007f0a512204fe: jne    0x00007f0a51220491  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.59%    0.45%     0x00007f0a51220500: cmp    $0x40,%ecx
                     0x00007f0a51220503: jge    0x00007f0a51220d15  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.24%    0.28%     0x00007f0a51220509: mov    %r12b,0x18(%r13)   ;*putfield empty
                                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
                     0x00007f0a5122050d: mov    0x2c(%r8),%ebp     ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.03%    0.03%     0x00007f0a51220511: or     %rdi,%rdx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.46%    0.41%     0x00007f0a51220514: mov    %rdx,0x10(%r13)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.25%    0.22%     0x00007f0a51220518: mov    0x8(%r12,%rbp,8),%esi  ; implicit exception: dispatches to 0x00007f0a512216f5
  0.93%    0.86%     0x00007f0a5122051d: cmp    $0xf8019909,%esi   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007f0a51220523: jne    0x00007f0a51220a81
  0.69%    0.69%     0x00007f0a51220529: lea    (%r12,%rbp,8),%rdi  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.00%    0.03%     0x00007f0a5122052d: mov    0x18(%rdi),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.37%    0.44%     0x00007f0a51220530: cmp    $0x40,%ecx
                     0x00007f0a51220533: jg     0x00007f0a51220d85  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.54%    0.69%     0x00007f0a51220539: mov    $0x1,%esi
  0.16%    0.16%     0x00007f0a5122053e: shl    %cl,%rsi           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  1.30%    1.36%     0x00007f0a51220541: mov    %rdx,%r13
  0.05%    0.03%     0x00007f0a51220544: and    %rsi,%r13          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.00%    0.00%     0x00007f0a51220547: test   %r13,%r13
                     0x00007f0a5122054a: jne    0x00007f0a51220995  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.64%    0.62%     0x00007f0a51220550: xor    %ebp,%ebp          ;*ireturn
                                                                   ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.22%    0.15%     0x00007f0a51220552: test   %r13,%r13
                     0x00007f0a51220555: jne    0x00007f0a51220df5  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.40%    0.42%     0x00007f0a5122055b: cmp    $0x40,%ecx
                     0x00007f0a5122055e: jge    0x00007f0a51220e69  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
           0.00%     0x00007f0a51220564: mov    %r10d,0xa4(%rsp)
  0.13%    0.11%     0x00007f0a5122056c: mov    %rbx,0x38(%rsp)
  0.18%    0.15%     0x00007f0a51220571: mov    %r14d,0xc(%rsp)
  0.46%    0.39%     0x00007f0a51220576: mov    %r9d,0xac(%rsp)
  0.01%    0.01%     0x00007f0a5122057e: mov    %r11,0x30(%rsp)
  0.13%    0.10%     0x00007f0a51220583: mov    %rax,0x28(%rsp)
  0.14%    0.15%     0x00007f0a51220588: or     %rsi,%rdx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.43%    0.29%     0x00007f0a5122058b: mov    %rdx,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
           0.01%     0x00007f0a5122058f: mov    0x20(%r11),%r10d   ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.14%    0.08%     0x00007f0a51220593: mov    %r10d,%eax
  0.21%    0.07%     0x00007f0a51220596: mov    0xc(%r11),%r10d    ;*getfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.41%    0.32%     0x00007f0a5122059a: mov    %r10d,%r14d
  0.01%              0x00007f0a5122059d: inc    %r10d              ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.14%    0.04%     0x00007f0a512205a0: mov    %r10d,0xc(%r11)    ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.13%    0.05%     0x00007f0a512205a4: mov    %r10d,%r13d
  0.50%    0.33%     0x00007f0a512205a7: mov    %eax,%r10d
           0.01%     0x00007f0a512205aa: mov    0xc(%r12,%r10,8),%r9d  ; implicit exception: dispatches to 0x00007f0a51221709
  0.14%    0.10%     0x00007f0a512205af: mov    %r14d,%r10d
  0.18%    0.09%     0x00007f0a512205b2: cmp    %r9d,%r10d
                     0x00007f0a512205b5: jae    0x00007f0a51220a39
  0.44%    0.42%     0x00007f0a512205bb: mov    %eax,%r10d
           0.01%     0x00007f0a512205be: mov    0x8(%r12,%r10,8),%r11d
  0.15%    0.14%     0x00007f0a512205c3: cmp    $0xf8019807,%r11d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                     0x00007f0a512205ca: jne    0x00007f0a51220aed  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.20%    0.27%     0x00007f0a512205d0: mov    0x34(%r8),%r10d    ;*getfield inst2
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@43 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.42%    0.32%     0x00007f0a512205d4: vmovd  %r10d,%xmm0
  0.00%    0.00%     0x00007f0a512205d9: mov    %rdi,%r11
  0.10%    0.11%     0x00007f0a512205dc: shr    $0x3,%r11          ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.15%    0.17%     0x00007f0a512205e0: mov    %eax,%r10d
  0.36%    0.22%     0x00007f0a512205e3: lea    (%r12,%r10,8),%r8  ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.01%              0x00007f0a512205e7: mov    %r14d,%r10d
  0.11%    0.01%     0x00007f0a512205ea: lea    0x10(%r8,%r10,4),%r10
  0.17%    0.07%     0x00007f0a512205ef: mov    %r11d,(%r10)
  0.45%    0.35%     0x00007f0a512205f2: shr    $0x9,%r10
  0.00%    0.00%     0x00007f0a512205f6: movabs $0x7f0a61175000,%r11
  0.12%    0.11%     0x00007f0a51220600: mov    %r12b,(%r11,%r10,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.18%    0.22%     0x00007f0a51220604: vmovd  %xmm0,%r10d
  0.40%    0.32%     0x00007f0a51220609: mov    0x8(%r12,%r10,8),%r10d  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
                                                                   ; implicit exception: dispatches to 0x00007f0a51221725
           0.00%     0x00007f0a5122060e: movslq %r14d,%r11
  0.15%    0.15%     0x00007f0a51220611: lea    (%r8,%r11,4),%rbx  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.18%    0.15%     0x00007f0a51220615: mov    %rbx,%rdi
  0.32%    0.33%     0x00007f0a51220618: add    $0x14,%rdi         ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
                     0x00007f0a5122061c: vmovd  %xmm0,%r11d
  0.10%    0.08%     0x00007f0a51220621: lea    (%r12,%r11,8),%rsi
  0.16%    0.10%     0x00007f0a51220625: mov    %r14d,%r11d
  0.42%    0.24%     0x00007f0a51220628: add    $0x2,%r11d         ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.00%              0x00007f0a5122062c: cmp    $0xf8019885,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                     0x00007f0a51220633: jne    0x00007f0a512203e4  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.11%    0.05%     0x00007f0a51220639: mov    0x2c(%rsi),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@82 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.21%    0.09%     0x00007f0a5122063c: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f0a51221759
  0.44%    0.21%     0x00007f0a51220641: cmp    $0xf8019843,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                     0x00007f0a51220647: jne    0x00007f0a51220c5d
  0.03%    0.04%     0x00007f0a5122064d: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.12%    0.06%     0x00007f0a51220651: vmovq  %r10,%xmm0
  0.15%    0.05%     0x00007f0a51220656: mov    0x18(%r10),%r10d   ;*getfield pc
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.42%    0.15%     0x00007f0a5122065a: mov    %r10d,%ecx
  0.05%    0.03%     0x00007f0a5122065d: cmp    $0x40,%r10d
                     0x00007f0a51220661: jg     0x00007f0a5122114d  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.10%    0.07%     0x00007f0a51220667: mov    $0x1,%esi
  0.18%    0.07%     0x00007f0a5122066c: shl    %cl,%rsi           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.75%    0.44%     0x00007f0a5122066f: mov    %rdx,%r10
  0.18%    0.14%     0x00007f0a51220672: and    %rsi,%r10
  0.35%    0.08%     0x00007f0a51220675: test   %r10,%r10
                     0x00007f0a51220678: jne    0x00007f0a512209a9  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.05%    0.09%     0x00007f0a5122067e: mov    %ecx,%r10d
  0.15%    0.08%     0x00007f0a51220681: cmp    $0x40,%r10d
                     0x00007f0a51220685: jge    0x00007f0a5122118d  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.15%    0.06%     0x00007f0a5122068b: or     %rsi,%rdx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.34%    0.23%     0x00007f0a5122068e: mov    0x30(%rsp),%r10
  0.01%    0.02%     0x00007f0a51220693: mov    %rdx,0x10(%r10)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.10%    0.12%     0x00007f0a51220697: vmovq  %xmm0,%r10
  0.20%    0.31%     0x00007f0a5122069c: mov    0x2c(%r10),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.38%    0.27%     0x00007f0a512206a0: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f0a5122176d
  0.26%    0.29%     0x00007f0a512206a5: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007f0a512206ac: jne    0x00007f0a51220c81
  0.24%    0.33%     0x00007f0a512206b2: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.13%    0.21%     0x00007f0a512206b6: vmovq  %r10,%xmm1
  0.34%    0.56%     0x00007f0a512206bb: mov    0x18(%r10),%r10d   ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.61%    0.64%     0x00007f0a512206bf: vmovd  %r10d,%xmm2
  0.40%    0.32%     0x00007f0a512206c4: cmp    $0x40,%r10d
                     0x00007f0a512206c8: jg     0x00007f0a512211cd  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.09%    0.14%     0x00007f0a512206ce: mov    $0x1,%esi
  0.21%    0.22%     0x00007f0a512206d3: mov    %r10d,%ecx
  0.00%    0.00%     0x00007f0a512206d6: shl    %cl,%rsi           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  1.02%    1.25%     0x00007f0a512206d9: mov    %rdx,%r10
  0.00%    0.00%     0x00007f0a512206dc: and    %rsi,%r10          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.12%    0.13%     0x00007f0a512206df: test   %r10,%r10
                     0x00007f0a512206e2: jne    0x00007f0a512209b3  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.14%    0.27%     0x00007f0a512206e8: xor    %ebp,%ebp          ;*ireturn
                                                                   ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.39%    0.40%     0x00007f0a512206ea: test   %r10,%r10
                     0x00007f0a512206ed: jne    0x00007f0a51221215  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.13%    0.10%     0x00007f0a512206f3: mov    %ecx,%r10d
  0.09%    0.15%     0x00007f0a512206f6: cmp    $0x40,%r10d
                     0x00007f0a512206fa: jge    0x00007f0a51221245  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.27%    0.25%     0x00007f0a51220700: mov    0x30(%rsp),%r10
  0.30%    0.44%     0x00007f0a51220705: mov    %r11d,0xc(%r10)    ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.07%    0.08%     0x00007f0a51220709: or     %rsi,%rdx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.14%    0.08%     0x00007f0a5122070c: mov    %rdx,0x10(%r10)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.21%    0.34%     0x00007f0a51220710: cmp    %r9d,%r11d
                     0x00007f0a51220713: jae    0x00007f0a51220bd5  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.34%    0.47%     0x00007f0a51220719: vmovq  %xmm0,%r10
  0.09%    0.08%     0x00007f0a5122071e: mov    0x34(%r10),%r11d   ;*getfield inst2
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@43 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.09%    0.11%     0x00007f0a51220722: mov    %rdi,%r9
  0.27%    0.34%     0x00007f0a51220725: vmovq  %xmm1,%r10
  0.38%    0.41%     0x00007f0a5122072a: shr    $0x3,%r10
  0.06%    0.07%     0x00007f0a5122072e: mov    %r10d,(%rdi)
  0.09%    0.10%     0x00007f0a51220731: shr    $0x9,%r9
  0.27%    0.30%     0x00007f0a51220735: movabs $0x7f0a61175000,%r10
  0.40%    0.34%     0x00007f0a5122073f: mov    %r12b,(%r10,%r9,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.07%    0.09%     0x00007f0a51220743: mov    0x8(%r12,%r11,8),%r10d  ; implicit exception: dispatches to 0x00007f0a51221781
  0.10%    0.09%     0x00007f0a51220748: lea    (%r12,%r11,8),%r9
  0.26%    0.26%     0x00007f0a5122074c: cmp    $0xf8019885,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                     0x00007f0a51220753: jne    0x00007f0a512207af  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
                     0x00007f0a51220755: mov    0x2c(%r9),%ebp     ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@82 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
....................................................................................................
 39.25%   36.92%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 541 (923 bytes) 

                                                                          ; - com.google.re2j.Machine::match@130 (line 207)
                            0x00007f0a5123cd0e: mov    %edi,%r9d
                            0x00007f0a5123cd11: add    $0xffffffbf,%r9d
                            0x00007f0a5123cd15: cmp    $0x1a,%r9d
                  ╭         0x00007f0a5123cd19: jb     0x00007f0a5123cd2c  ;*if_icmple
                  │                                                       ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │                                                       ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                       ; - com.google.re2j.Machine::match@130 (line 207)
                  │         0x00007f0a5123cd1b: mov    %edi,%r11d
                  │         0x00007f0a5123cd1e: add    $0xffffff9f,%r11d
           0.01%  │         0x00007f0a5123cd22: cmp    $0x1a,%r11d
                  │         0x00007f0a5123cd26: jae    0x00007f0a5123d632  ;*iconst_1
                  │                                                       ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │                                                       ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                       ; - com.google.re2j.Machine::match@130 (line 207)
                  ↘         0x00007f0a5123cd2c: or     $0x10,%r10d        ;*iload_2
                                                                          ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                          ; - com.google.re2j.Machine::match@130 (line 207)
                            0x00007f0a5123cd30: mov    0x3c(%rsp),%r9d
  0.02%    0.00%            0x00007f0a5123cd35: test   %r9d,%r9d
                            0x00007f0a5123cd38: jne    0x00007f0a5123dfb9
  0.00%    0.01%            0x00007f0a5123cd3e: mov    0x4c(%rsp),%r11d
                            0x00007f0a5123cd43: mov    0x8(%r12,%r11,8),%r11d  ; implicit exception: dispatches to 0x00007f0a5123dfb9
  0.01%                     0x00007f0a5123cd48: cmp    $0xf8019909,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                            0x00007f0a5123cd4f: jne    0x00007f0a5123dfb9  ;*aload
                                                                          ; - com.google.re2j.Machine::match@145 (line 213)
           0.01%            0x00007f0a5123cd55: mov    0x40(%rsp),%r11
           0.01%            0x00007f0a5123cd5a: movzbl 0x11(%r11),%r11d   ;*getfield captures
                                                                          ; - com.google.re2j.Machine::match@292 (line 242)
  0.00%                     0x00007f0a5123cd5f: mov    0x4c(%rsp),%ecx
                            0x00007f0a5123cd63: lea    (%r12,%rcx,8),%r9  ;*invokevirtual add
                                                                          ; - com.google.re2j.Machine::match@322 (line 245)
  0.00%    0.00%            0x00007f0a5123cd67: mov    %r9,0x60(%rsp)
                            0x00007f0a5123cd6c: mov    %rbx,%rcx
                            0x00007f0a5123cd6f: shl    $0x3,%rcx          ;*getfield q1
                                                                          ; - com.google.re2j.Machine::match@62 (line 194)
                            0x00007f0a5123cd73: shr    $0x3,%r9           ;*aastore
                                                                          ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                          ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                          ; - com.google.re2j.Machine::match@322 (line 245)
                            0x00007f0a5123cd77: mov    %r9d,0x14(%rsp)
  0.00%    0.00%            0x00007f0a5123cd7c: mov    %rcx,0x20(%rsp)
                            0x00007f0a5123cd81: xor    %eax,%eax
                            0x00007f0a5123cd83: xor    %ecx,%ecx
                            0x00007f0a5123cd85: mov    %ecx,0x6c(%rsp)
  0.01%            ╭        0x00007f0a5123cd89: jmpq   0x00007f0a5123cf0f
  0.29%    0.27%   │   ↗    0x00007f0a5123cd8e: or     $0x20,%r9d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                   │   │                                                  ; - com.google.re2j.Machine::match@330 (line 247)
  0.01%    0.02%   │   │    0x00007f0a5123cd92: mov    %r9d,0x2c(%rsp)    ;*iload_2
                   │   │                                                  ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   │   │                                                  ; - com.google.re2j.Machine::match@330 (line 247)
  0.24%    0.26%   │   │↗   0x00007f0a5123cd97: mov    0x6c(%rsp),%r8d
  0.32%    0.23%   │   ││   0x00007f0a5123cd9c: cmp    0x70(%rsp),%r8d
                   │   ││   0x00007f0a5123cda1: je     0x00007f0a5123d53a  ;*if_icmpne
                   │   ││                                                 ; - com.google.re2j.Machine::match@355 (line 248)
  0.60%    0.32%   │   ││   0x00007f0a5123cda7: xor    %r10d,%r10d        ;*invokespecial step
                   │   ││                                                 ; - com.google.re2j.Machine::match@363 (line 248)
  0.02%    0.03%   │   ││   0x00007f0a5123cdaa: mov    %rax,-0x8(%rsp)
  0.15%    0.15%   │   ││   0x00007f0a5123cdaf: mov    0x6c(%rsp),%eax
  0.21%    0.30%   │   ││   0x00007f0a5123cdb3: mov    %eax,0x34(%rsp)
  0.34%    0.34%   │   ││   0x00007f0a5123cdb7: mov    -0x8(%rsp),%rax    ;*invokevirtual endPos
                   │   ││                                                 ; - com.google.re2j.Machine::match@352 (line 248)
  0.28%    0.13%   │   ││   0x00007f0a5123cdbc: add    0x28(%rsp),%r8d    ;*iadd
                   │   ││                                                 ; - com.google.re2j.Machine::match@344 (line 248)
  0.23%    0.14%   │   ││   0x00007f0a5123cdc1: mov    %r8d,0x6c(%rsp)
  0.32%    0.35%   │   ││   0x00007f0a5123cdc6: mov    0x40(%rsp),%rsi
  0.33%    0.32%   │   ││   0x00007f0a5123cdcb: mov    0x18(%rsp),%rdx
  0.03%    0.03%   │   ││   0x00007f0a5123cdd0: mov    0x20(%rsp),%rcx
  0.12%    0.10%   │   ││   0x00007f0a5123cdd5: mov    0x34(%rsp),%r8d
  0.56%    0.36%   │   ││   0x00007f0a5123cdda: mov    0x6c(%rsp),%r9d
  0.50%    0.38%   │   ││   0x00007f0a5123cddf: mov    0x2c(%rsp),%r11d
  0.04%    0.04%   │   ││   0x00007f0a5123cde4: mov    %r11d,(%rsp)
  0.11%    0.09%   │   ││   0x00007f0a5123cde8: xor    %r11d,%r11d
  0.24%    0.22%   │   ││   0x00007f0a5123cdeb: mov    %r11d,0x8(%rsp)
  0.41%    0.19%   │   ││   0x00007f0a5123cdf0: mov    %r10d,0x10(%rsp)
  0.03%    0.03%   │   ││   0x00007f0a5123cdf5: xchg   %ax,%ax
  0.07%    0.12%   │   ││   0x00007f0a5123cdf7: callq  0x00007f0a51046020  ; OopMap{[20]=NarrowOop [24]=Oop [32]=Oop [56]=NarrowOop [64]=Oop [76]=NarrowOop [80]=Oop [96]=Oop off=732}
                   │   ││                                                 ;*invokespecial step
                   │   ││                                                 ; - com.google.re2j.Machine::match@363 (line 248)
                   │   ││                                                 ;   {optimized virtual_call}
                   │   ││   0x00007f0a5123cdfc: mov    0x40(%rsp),%r10
  0.63%    0.98%   │   ││   0x00007f0a5123ce01: movzbl 0x11(%r10),%r11d   ;*getfield captures
                   │   ││                                                 ; - com.google.re2j.Machine::match@375 (line 252)
           0.00%   │   ││   0x00007f0a5123ce06: movzbl 0x10(%r10),%eax    ;*getfield matched
                   │   ││                                                 ; - com.google.re2j.Machine::match@382 (line 252)
                   │   ││   0x00007f0a5123ce0b: mov    0x28(%rsp),%r9d
  0.68%    0.99%   │   ││   0x00007f0a5123ce10: test   %r9d,%r9d
                   │   ││   0x00007f0a5123ce13: je     0x00007f0a5123d4fa  ;*ifne
                   │   ││                                                 ; - com.google.re2j.Machine::match@368 (line 249)
           0.00%   │   ││   0x00007f0a5123ce19: test   %r11d,%r11d
                   │   ││   0x00007f0a5123ce1c: jne    0x00007f0a5123d899  ;*ifne
                   │   ││                                                 ; - com.google.re2j.Machine::match@378 (line 252)
  0.00%            │   ││   0x00007f0a5123ce22: test   %eax,%eax
                   │   ││   0x00007f0a5123ce24: jne    0x00007f0a5123dac9  ;*ifeq
                   │   ││                                                 ; - com.google.re2j.Machine::match@385 (line 252)
  0.00%    0.00%   │   ││   0x00007f0a5123ce2a: mov    0x50(%rsp),%r10
  0.75%    1.03%   │   ││   0x00007f0a5123ce2f: mov    0x10(%r10),%ecx    ;*getfield end
                   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                   │   ││                                                 ; - com.google.re2j.Machine::match@415 (line 261)
           0.02%   │   ││   0x00007f0a5123ce33: mov    0xc(%r10),%r13d    ;*getfield start
                   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                   │   ││                                                 ; - com.google.re2j.Machine::match@415 (line 261)
  0.00%    0.00%   │   ││   0x00007f0a5123ce37: mov    0x14(%r10),%r14d   ;*getfield str
                   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                   │   ││                                                 ; - com.google.re2j.Machine::match@415 (line 261)
  0.02%    0.01%   │   ││   0x00007f0a5123ce3b: mov    0x58(%rsp),%r10d
  0.65%    1.03%   │   ││   0x00007f0a5123ce40: cmp    $0xffffffff,%r10d
                   │   ││   0x00007f0a5123ce44: je     0x00007f0a5123d545  ;*if_icmpeq
                   │   ││                                                 ; - com.google.re2j.Machine::match@407 (line 260)
           0.00%   │   ││   0x00007f0a5123ce4a: mov    0x30(%rsp),%r8d
                   │   ││   0x00007f0a5123ce4f: add    0x6c(%rsp),%r8d
  0.10%    0.10%   │   ││   0x00007f0a5123ce54: add    %r13d,%r8d         ;*iadd
                   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                   │   ││                                                 ; - com.google.re2j.Machine::match@415 (line 261)
  0.75%    1.05%   │   ││   0x00007f0a5123ce57: cmp    %ecx,%r8d
                   │   ││   0x00007f0a5123ce5a: jge    0x00007f0a5123d566  ;*if_icmpge
                   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                   │   ││                                                 ; - com.google.re2j.Machine::match@415 (line 261)
  0.12%    0.12%   │   ││   0x00007f0a5123ce60: mov    0x8(%r12,%r14,8),%r10d  ; implicit exception: dispatches to 0x00007f0a5123ea95
  0.15%    0.10%   │   ││   0x00007f0a5123ce65: cmp    $0xf80002da,%r10d  ;   {metadata(&apos;java/lang/String&apos;)}
                   │   ││   0x00007f0a5123ce6c: jne    0x00007f0a5123d7dd
  0.17%    0.19%   │   ││   0x00007f0a5123ce72: lea    (%r12,%r14,8),%rbx  ;*invokeinterface charAt
                   │   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │   ││                                                 ; - com.google.re2j.Machine::match@415 (line 261)
  0.54%    0.61%   │   ││   0x00007f0a5123ce76: test   %r8d,%r8d
                   │   ││   0x00007f0a5123ce79: jl     0x00007f0a5123d901  ;*iflt
                   │   ││                                                 ; - java.lang.String::charAt@1 (line 657)
                   │   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │   ││                                                 ; - com.google.re2j.Machine::match@415 (line 261)
  0.03%    0.04%   │   ││   0x00007f0a5123ce7f: mov    0xc(%rbx),%r10d    ;*getfield value
                   │   ││                                                 ; - java.lang.String::charAt@6 (line 657)
                   │   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │   ││                                                 ; - com.google.re2j.Machine::match@415 (line 261)
  0.06%    0.10%   │   ││   0x00007f0a5123ce83: mov    0xc(%r12,%r10,8),%ebp  ;*arraylength
                   │   ││                                                 ; - java.lang.String::charAt@9 (line 657)
                   │   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │   ││                                                 ; - com.google.re2j.Machine::match@415 (line 261)
                   │   ││                                                 ; implicit exception: dispatches to 0x00007f0a5123eaa9
  2.58%    3.06%   │   ││   0x00007f0a5123ce88: cmp    %ebp,%r8d
                   │   ││   0x00007f0a5123ce8b: jge    0x00007f0a5123db31  ;*if_icmplt
                   │   ││                                                 ; - java.lang.String::charAt@10 (line 657)
                   │   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │   ││                                                 ; - com.google.re2j.Machine::match@415 (line 261)
  0.95%    1.32%   │   ││   0x00007f0a5123ce91: cmp    %ebp,%r8d
                   │   ││   0x00007f0a5123ce94: jae    0x00007f0a5123d6f1
  0.20%    0.31%   │   ││   0x00007f0a5123ce9a: shl    $0x3,%r10
                   │   ││   0x00007f0a5123ce9e: movzwl 0x10(%r10,%r8,2),%r9d  ;*caload
                   │   ││                                                 ; - java.lang.String::charAt@27 (line 660)
                   │   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │   ││                                                 ; - com.google.re2j.Machine::match@415 (line 261)
  0.11%    0.09%   │   ││   0x00007f0a5123cea4: cmp    $0xd800,%r9d
                   │   ││   0x00007f0a5123ceab: jge    0x00007f0a5123db95  ;*if_icmplt
                   │   ││                                                 ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   │   ││                                                 ; - java.lang.Character::codePointAt@9 (line 4867)
                   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │   ││                                                 ; - com.google.re2j.Machine::match@415 (line 261)
  0.65%    0.77%   │   ││   0x00007f0a5123ceb1: shl    $0x3,%r9d          ;*ishl
                   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                   │   ││                                                 ; - com.google.re2j.Machine::match@415 (line 261)
  0.20%    0.23%   │   ││   0x00007f0a5123ceb5: mov    %r9d,%edx
                   │   ││   0x00007f0a5123ceb8: or     $0x1,%edx
  0.41%    0.52%   │   ││   0x00007f0a5123cebb: and    $0x7,%r9d
  0.18%    0.29%   │   ││   0x00007f0a5123cebf: sar    $0x3,%edx          ;*ishr
                   │   ││                                                 ; - com.google.re2j.Machine::match@423 (line 262)
  0.50%    0.55%   │   ││   0x00007f0a5123cec2: or     $0x1,%r9d          ; OopMap{r14=NarrowOop [20]=NarrowOop [24]=Oop [32]=Oop [64]=Oop [76]=NarrowOop [80]=Oop [96]=Oop off=934}
                   │   ││                                                 ;*goto
                   │   ││                                                 ; - com.google.re2j.Machine::match@445 (line 268)
  0.00%    0.01%   │   ││   0x00007f0a5123cec6: test   %eax,0x17530134(%rip)        # 0x00007f0a6876d000
                   │   ││                                                 ;*goto
                   │   ││                                                 ; - com.google.re2j.Machine::match@445 (line 268)
                   │   ││                                                 ;   {poll}
  0.01%    0.00%   │   ││   0x00007f0a5123cecc: mov    0x40(%rsp),%r10
  0.30%    0.35%   │   ││   0x00007f0a5123ced1: mov    0x28(%r10),%r8d    ;*getfield matchcap
                   │   ││                                                 ; - com.google.re2j.Machine::match@311 (line 245)
  0.41%    0.53%   │   ││   0x00007f0a5123ced5: mov    0x14(%r10),%esi    ;*getfield re2
                   │   ││                                                 ; - com.google.re2j.Machine::match@178 (line 222)
  0.01%    0.02%   │   ││   0x00007f0a5123ced9: mov    0x20(%rsp),%r10
                   │   ││   0x00007f0a5123cede: shr    $0x3,%r10
  0.28%    0.39%   │   ││   0x00007f0a5123cee2: mov    %r10d,0x38(%rsp)
  0.44%    0.45%   │   ││   0x00007f0a5123cee7: mov    0x2c(%rsp),%r10d
  0.01%            │   ││   0x00007f0a5123ceec: mov    0x58(%rsp),%edi
                   │   ││   0x00007f0a5123cef0: mov    %edx,0x58(%rsp)
  0.27%    0.29%   │   ││   0x00007f0a5123cef4: mov    0x18(%rsp),%rbx
  0.44%    0.57%   │   ││   0x00007f0a5123cef9: mov    %rbx,0x20(%rsp)
  0.01%    0.01%   │   ││   0x00007f0a5123cefe: mov    0x30(%rsp),%edx
                   │   ││   0x00007f0a5123cf02: mov    %edx,0x28(%rsp)
  0.27%    0.42%   │   ││   0x00007f0a5123cf06: mov    %r9d,0x30(%rsp)
  0.39%    0.47%   │   ││   0x00007f0a5123cf0b: mov    %ecx,0x70(%rsp)    ;*getfield matchcap
                   │   ││                                                 ; - com.google.re2j.Machine::match@311 (line 245)
  0.00%    0.01%   ↘   ││   0x00007f0a5123cf0f: mov    0x38(%rsp),%ecx
  0.00%    0.00%       ││   0x00007f0a5123cf13: movzbl 0x18(%r12,%rcx,8),%ecx  ; implicit exception: dispatches to 0x00007f0a5123ea71
  0.34%    0.34%       ││   0x00007f0a5123cf19: mov    0x38(%rsp),%r9d
  0.43%    0.38%       ││   0x00007f0a5123cf1e: shl    $0x3,%r9           ;*aload
                       ││                                                 ; - com.google.re2j.Machine::match@145 (line 213)
  0.00%    0.00%       ││   0x00007f0a5123cf22: mov    %r9,0x18(%rsp)
                       ││   0x00007f0a5123cf27: test   %ecx,%ecx
                       ││   0x00007f0a5123cf29: jne    0x00007f0a5123d17c  ;*iload_3
                       ││                                                 ; - com.google.re2j.Machine::match@276 (line 239)
  0.26%    0.36%       ││   0x00007f0a5123cf2f: test   %eax,%eax
                       ││   0x00007f0a5123cf31: jne    0x00007f0a5123d851  ;*ifne
                       ││                                                 ; - com.google.re2j.Machine::match@288 (line 239)
  0.43%    0.44%       ││   0x00007f0a5123cf37: test   %r11d,%r11d
                       ││   0x00007f0a5123cf3a: jne    0x00007f0a5123d97d  ;*ifeq
                       ││                                                 ; - com.google.re2j.Machine::match@295 (line 242)
  0.00%    0.01%       ││   0x00007f0a5123cf40: mov    0x60(%rsp),%r10
  0.00%                ││   0x00007f0a5123cf45: mov    0x18(%r10),%r9d    ;*getfield pc
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                       ││                                                 ; - com.google.re2j.Machine::match@322 (line 245)
  0.27%    0.35%       ││   0x00007f0a5123cf49: cmp    $0x40,%r9d
                       ││   0x00007f0a5123cf4d: jg     0x00007f0a5123d9c9  ;*if_icmpgt
                       ││                                                 ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                       ││                                                 ; - com.google.re2j.Machine::match@322 (line 245)
  0.44%    0.49%       ││   0x00007f0a5123cf53: mov    0x38(%rsp),%ecx
  0.02%    0.02%       ││   0x00007f0a5123cf57: mov    0x10(%r12,%rcx,8),%r10  ;*getfield pcsl
                       ││                                                 ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                       ││                                                 ; - com.google.re2j.Machine::match@322 (line 245)
  0.10%    0.10%       ││   0x00007f0a5123cf5c: mov    $0x1,%ebx
  0.33%    0.32%       ││   0x00007f0a5123cf61: mov    %r9d,%ecx
  0.35%    0.48%       ││   0x00007f0a5123cf64: shl    %cl,%rbx           ;*lshl
                       ││                                                 ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                       ││                                                 ; - com.google.re2j.Machine::match@322 (line 245)
  0.29%    0.41%       ││   0x00007f0a5123cf67: mov    %r10,%rcx
  0.50%    0.55%       ││   0x00007f0a5123cf6a: and    %rbx,%rcx          ;*land
                       ││                                                 ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                       ││                                                 ; - com.google.re2j.Machine::match@322 (line 245)
  0.02%    0.01%       ││   0x00007f0a5123cf6d: test   %rcx,%rcx
                       ││   0x00007f0a5123cf70: jne    0x00007f0a5123d5ee  ;*ifeq
                       ││                                                 ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                       ││                                                 ; - com.google.re2j.Machine::match@322 (line 245)
  0.06%    0.03%       ││   0x00007f0a5123cf76: xor    %ebp,%ebp          ;*ireturn
                       ││                                                 ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                       ││                                                 ; - com.google.re2j.Machine::match@322 (line 245)
  0.22%    0.28%       ││   0x00007f0a5123cf78: test   %rcx,%rcx
                       ││   0x00007f0a5123cf7b: jne    0x00007f0a5123da19  ;*ifeq
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                       ││                                                 ; - com.google.re2j.Machine::match@322 (line 245)
  0.57%    0.28%       ││   0x00007f0a5123cf81: cmp    $0x40,%r9d
                       ││   0x00007f0a5123cf85: jge    0x00007f0a5123da75  ;*if_icmpge
                       ││                                                 ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                       ││                                                 ; - com.google.re2j.Machine::match@322 (line 245)
  0.00%    0.01%       ││   0x00007f0a5123cf8b: mov    0x38(%rsp),%r8d
  0.02%    0.00%       ││   0x00007f0a5123cf90: mov    %r12b,0x18(%r12,%r8,8)  ;*putfield empty
                       ││                                                 ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                       ││                                                 ; - com.google.re2j.Machine::match@322 (line 245)
  0.21%    0.18%       ││   0x00007f0a5123cf95: mov    0x20(%r12,%r8,8),%r11d  ;*getfield denseThreadsInstructions
                       ││                                                 ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                       ││                                                 ; - com.google.re2j.Machine::match@322 (line 245)
  0.43%    0.17%       ││   0x00007f0a5123cf9a: mov    0xc(%r12,%r8,8),%r8d  ;*getfield size
                       ││                                                 ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                       ││                                                 ; - com.google.re2j.Machine::match@322 (line 245)
  0.00%                ││   0x00007f0a5123cf9f: or     %r10,%rbx
  0.03%    0.01%       ││   0x00007f0a5123cfa2: mov    0x38(%rsp),%r10d
  0.24%    0.10%       ││   0x00007f0a5123cfa7: mov    %rbx,0x10(%r12,%r10,8)  ;*putfield pcsl
                       ││                                                 ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                       ││                                                 ; - com.google.re2j.Machine::match@322 (line 245)
  0.41%    0.21%       ││   0x00007f0a5123cfac: mov    %r8d,%r10d
  0.01%    0.01%       ││   0x00007f0a5123cfaf: inc    %r10d
  0.01%    0.01%       ││   0x00007f0a5123cfb2: mov    0x38(%rsp),%ecx
  0.26%    0.07%       ││   0x00007f0a5123cfb6: mov    %r10d,0xc(%r12,%rcx,8)  ;*putfield size
                       ││                                                 ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                       ││                                                 ; - com.google.re2j.Machine::match@322 (line 245)
  0.41%    0.17%       ││   0x00007f0a5123cfbb: mov    0xc(%r12,%r11,8),%r10d  ; implicit exception: dispatches to 0x00007f0a5123ea81
  0.09%    0.02%       ││   0x00007f0a5123cfc0: cmp    %r10d,%r8d
                       ││   0x00007f0a5123cfc3: jae    0x00007f0a5123d67d
  0.28%    0.23%       ││   0x00007f0a5123cfc9: mov    0x8(%r12,%r11,8),%r10d
  0.16%    0.12%       ││   0x00007f0a5123cfce: cmp    $0xf8019807,%r10d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                       ││   0x00007f0a5123cfd5: jne    0x00007f0a5123d769  ;*aastore
                       ││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                       ││                                                 ; - com.google.re2j.Machine::match@322 (line 245)
  0.32%    0.23%       ││   0x00007f0a5123cfdb: test   %edi,%edi
                    ╭  ││   0x00007f0a5123cfdd: jl     0x00007f0a5123d089  ;*ifge
                    │  ││                                                 ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                    │  ││                                                 ; - com.google.re2j.Machine::match@330 (line 247)
  0.00%    0.00%    │  ││   0x00007f0a5123cfe3: xor    %r9d,%r9d          ;*iload_0
                    │  ││                                                 ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                    │  ││                                                 ; - com.google.re2j.Machine::match@330 (line 247)
  0.13%    0.23%    │  ││↗  0x00007f0a5123cfe6: cmp    $0xa,%edi
                    │  │││  0x00007f0a5123cfe9: je     0x00007f0a5123d554  ;*iload_1
                    │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                    │  │││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.24%    0.09%    │  │││  0x00007f0a5123cfef: mov    0x58(%rsp),%r10d
  0.39%    0.36%    │  │││  0x00007f0a5123cff4: test   %r10d,%r10d
                    │  │││  0x00007f0a5123cff7: jl     0x00007f0a5123d3e1  ;*iload_1
                    │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                    │  │││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.01%    0.00%    │  │││  0x00007f0a5123cffd: cmp    $0xa,%r10d
                    │  │││  0x00007f0a5123d001: je     0x00007f0a5123d55d  ;*iload_0
                    │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                    │  │││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.14%    0.13%    │  │││  0x00007f0a5123d007: mov    %edi,%ebx
  0.17%    0.30%    │  │││  0x00007f0a5123d009: add    $0xffffffbf,%ebx
  0.35%    0.40%    │  │││  0x00007f0a5123d00c: lea    (%r12,%r11,8),%r10  ;*getfield denseThreadsInstructions
                    │  │││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                    │  │││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                    │  │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.01%             │  │││  0x00007f0a5123d010: lea    0x10(%r10,%r8,4),%r10
  0.20%    0.15%    │  │││  0x00007f0a5123d015: mov    0x14(%rsp),%r11d
  0.16%    0.32%    │  │││  0x00007f0a5123d01a: mov    %r11d,(%r10)
  0.64%    0.66%    │  │││  0x00007f0a5123d01d: shr    $0x9,%r10
  0.01%             │  │││  0x00007f0a5123d021: movabs $0x7f0a61175000,%r11
  0.07%    0.12%    │  │││  0x00007f0a5123d02b: mov    %r12b,(%r11,%r10,1)  ;*aastore
                    │  │││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                    │  │││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                    │  │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.53%    0.47%    │  │││  0x00007f0a5123d02f: cmp    $0x1a,%ebx
                    │╭ │││  0x00007f0a5123d032: jb     0x00007f0a5123d045  ;*if_icmple
                    ││ │││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                    ││ │││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    ││ │││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.33%    0.37%    ││ │││  0x00007f0a5123d034: mov    %edi,%r10d
  0.01%    0.01%    ││ │││  0x00007f0a5123d037: add    $0xffffff9f,%r10d
  0.08%    0.12%    ││ │││  0x00007f0a5123d03b: cmp    $0x1a,%r10d
                    ││ │││  0x00007f0a5123d03f: jae    0x00007f0a5123d5a3  ;*iconst_1
                    ││ │││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                    ││ │││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    ││ │││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.25%    0.25%    │↘ │││  0x00007f0a5123d045: mov    $0x1,%ebp          ;*ireturn
                    │  │││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                    │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    │  │││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.28%    0.25%    │  │││  0x00007f0a5123d04a: mov    0x58(%rsp),%r11d
  0.01%    0.03%    │  │││  0x00007f0a5123d04f: add    $0xffffffbf,%r11d
  0.10%    0.08%    │  │││  0x00007f0a5123d053: cmp    $0x1a,%r11d
                    │ ╭│││  0x00007f0a5123d057: jb     0x00007f0a5123d06c  ;*if_icmple
                    │ ││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                    │ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    │ ││││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.32%    0.39%    │ ││││  0x00007f0a5123d059: mov    0x58(%rsp),%r10d
  0.28%    0.32%    │ ││││  0x00007f0a5123d05e: add    $0xffffff9f,%r10d
  0.01%    0.02%    │ ││││  0x00007f0a5123d062: cmp    $0x1a,%r10d
                    │ ││││  0x00007f0a5123d066: jae    0x00007f0a5123d5c4  ;*iconst_1
                    │ ││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                    │ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    │ ││││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.12%    0.11%    │ ↘│││  0x00007f0a5123d06c: mov    $0x1,%r11d         ;*ireturn
                    │  │││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                    │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    │  │││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.52%    0.46%    │  │││  0x00007f0a5123d072: cmp    %r11d,%ebp
                    │  ╰││  0x00007f0a5123d075: je     0x00007f0a5123cd8e  ;*if_icmpeq
                    │   ││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                    │   ││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.02%    0.01%    │   ││  0x00007f0a5123d07b: or     $0x10,%r9d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                    │   ││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.01%    0.02%    │   ││  0x00007f0a5123d07f: mov    %r9d,0x2c(%rsp)
  0.02%    0.08%    │   ╰│  0x00007f0a5123d084: jmpq   0x00007f0a5123cd97
                    ↘    │  0x00007f0a5123d089: mov    $0x5,%r9d
  0.00%    0.00%         ╰  0x00007f0a5123d08f: jmpq   0x00007f0a5123cfe6
                            0x00007f0a5123d094: nopl   0x0(%rax,%rax,1)
                            0x00007f0a5123d09c: data16 data16 xchg %ax,%ax
                            0x00007f0a5123d0a0: mov    %r9d,0x68(%rsp)
  0.01%    0.01%            0x00007f0a5123d0a5: jmpq   0x00007f0a5123d323
                            0x00007f0a5123d0aa: mov    0x68(%rsp),%r9d
                            0x00007f0a5123d0af: add    $0x2,%r9d
                            0x00007f0a5123d0b3: mov    %r9d,0x68(%rsp)
  0.00%                     0x00007f0a5123d0b8: mov    0x68(%rsp),%r9d
  0.00%                     0x00007f0a5123d0bd: inc    %r9d
                            0x00007f0a5123d0c0: mov    %r9d,0x5c(%rsp)
                            0x00007f0a5123d0c5: jmp    0x00007f0a5123d0f2
                            0x00007f0a5123d0c7: mov    0x68(%rsp),%r9d
                            0x00007f0a5123d0cc: add    $0x2,%r9d
                            0x00007f0a5123d0d0: mov    %r9d,0x5c(%rsp)
                            0x00007f0a5123d0d5: jmp    0x00007f0a5123d0e5
                            0x00007f0a5123d0d7: mov    0x68(%rsp),%r9d
                            0x00007f0a5123d0dc: add    $0x2,%r9d
                            0x00007f0a5123d0e0: mov    %r9d,0x68(%rsp)
                            0x00007f0a5123d0e5: mov    0x68(%rsp),%r9d
....................................................................................................
 31.81%   33.78%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 497 (481 bytes) 

                                                                       ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                       ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                       ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                       ; - com.google.re2j.Machine::step@214 (line 319)
                                                                       ;   {optimized virtual_call}
                         0x00007f0a5122079c: test   %rax,%rax
                         0x00007f0a5122079f: jne    0x00007f0a51221381  ;*ifnull
                                                                       ; - com.google.re2j.Machine::step@221 (line 322)
                         0x00007f0a512207a5: mov    0x30(%rsp),%r11
                         0x00007f0a512207aa: jmpq   0x00007f0a51220472
  0.33%    0.36%         0x00007f0a512207af: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                         0x00007f0a512207b6: jne    0x00007f0a51220ffd  ;*invokevirtual add
                                                                       ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                       ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                       ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                       ; - com.google.re2j.Machine::step@-1 (line 282)
  0.08%    0.09%         0x00007f0a512207bc: mov    0x18(%r9),%ecx     ;*getfield pc
                                                                       ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                       ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                       ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                       ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                       ; - com.google.re2j.Machine::step@-1 (line 282)
  0.14%    0.11%         0x00007f0a512207c0: cmp    $0x40,%ecx
                         0x00007f0a512207c3: jg     0x00007f0a5122128d  ;*if_icmpgt
                                                                       ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                       ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                       ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                       ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                       ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                       ; - com.google.re2j.Machine::step@-1 (line 282)
  0.20%    0.25%         0x00007f0a512207c9: mov    $0x1,%r11d
  0.28%    0.28%         0x00007f0a512207cf: mov    %ecx,%r10d
  0.06%    0.10%         0x00007f0a512207d2: shl    %cl,%r11           ;*lshl
                                                                       ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                       ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                       ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                       ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                       ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                       ; - com.google.re2j.Machine::step@-1 (line 282)
  0.74%    0.73%         0x00007f0a512207d5: mov    %rdx,%rcx
  0.06%    0.06%         0x00007f0a512207d8: and    %r11,%rcx          ;*land
                                                                       ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                       ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                       ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                       ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                       ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                       ; - com.google.re2j.Machine::step@-1 (line 282)
  0.14%    0.06%         0x00007f0a512207db: test   %rcx,%rcx
                  ╭      0x00007f0a512207de: jne    0x00007f0a512209bd  ;*ifeq
                  │                                                    ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                    ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                  │                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                  │                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                  │                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.26%    0.35%  │      0x00007f0a512207e4: xor    %ebp,%ebp          ;*ireturn
                  │                                                    ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                    ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                  │                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                  │                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                  │                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.30%    0.36%  │      0x00007f0a512207e6: test   %rcx,%rcx
                  │      0x00007f0a512207e9: jne    0x00007f0a512212f1  ;*ifeq
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  │                                                    ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                  │                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                  │                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                  │                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.09%    0.15%  │      0x00007f0a512207ef: cmp    $0x40,%r10d
                  │      0x00007f0a512207f3: jge    0x00007f0a51221319  ;*if_icmpge
                  │                                                    ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                    ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                  │                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                  │                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                  │                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.11%    0.17%  │      0x00007f0a512207f9: or     %r11,%rdx
  0.25%    0.22%  │      0x00007f0a512207fc: mov    0x30(%rsp),%r11
  0.34%    0.46%  │      0x00007f0a51220801: mov    %rdx,0x10(%r11)    ;*putfield pcsl
                  │                                                    ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                    ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                  │                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                  │                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                  │                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.09%    0.04%  │      0x00007f0a51220805: add    $0x18,%rbx
  0.12%    0.12%  │      0x00007f0a51220809: mov    %r9,%r10
  0.32%    0.25%  │      0x00007f0a5122080c: shr    $0x3,%r10
  0.38%    0.42%  │      0x00007f0a51220810: mov    %r10d,(%rbx)       ;*aastore
                  │                                                    ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                    ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                  │                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                  │                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                  │                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.10%    0.06%  │      0x00007f0a51220813: mov    %rbx,%r10
  0.10%    0.07%  │      0x00007f0a51220816: add    $0x3,%r14d
  0.29%    0.12%  │      0x00007f0a5122081a: mov    %r14d,0xc(%r11)    ;*putfield size
                  │                                                    ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                    ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                  │                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                  │                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                  │                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.26%    0.17%  │      0x00007f0a5122081e: shr    $0x9,%r10
  0.11%    0.12%  │      0x00007f0a51220822: movabs $0x7f0a61175000,%r8
  0.11%    0.12%  │      0x00007f0a5122082c: mov    %r12b,(%r8,%r10,1)  ;*aastore
                  │                                                    ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                    ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                  │                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                  │                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                  │                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.30%    0.21%  │      0x00007f0a51220830: jmpq   0x00007f0a51220472
  0.57%    0.71%  │      0x00007f0a51220835: cmp    $0xb,%r11d
                  │      0x00007f0a51220839: je     0x00007f0a51220b35  ;*if_icmpne
                  │                                                    ; - com.google.re2j.Inst::matchRune@17 (line 94)
                  │                                                    ; - com.google.re2j.Machine::step@191 (line 318)
  1.56%    1.75%  │      0x00007f0a5122083f: mov    0x1c(%r12,%rcx,8),%r8d  ;*getfield f0
                  │                                                    ; - com.google.re2j.Inst::matchRune@42 (line 99)
                  │                                                    ; - com.google.re2j.Machine::step@191 (line 318)
  0.03%    0.08%  │      0x00007f0a51220844: cmp    $0x9,%r11d
                  │╭     0x00007f0a51220848: je     0x00007f0a51220895  ;*if_icmpne
                  ││                                                   ; - com.google.re2j.Inst::matchRune@38 (line 98)
                  ││                                                   ; - com.google.re2j.Machine::step@191 (line 318)
  0.33%    0.28%  ││     0x00007f0a5122084a: cmp    $0xc,%r11d
                  ││     0x00007f0a5122084e: jne    0x00007f0a51220f39  ;*if_icmpne
                  ││                                                   ; - com.google.re2j.Inst::matchRune@61 (line 102)
                  ││                                                   ; - com.google.re2j.Machine::step@191 (line 318)
  0.45%    0.25%  ││     0x00007f0a51220854: cmp    0x18(%rsp),%r8d
                  ││╭    0x00007f0a51220859: je     0x00007f0a5122098a  ;*if_icmpeq
                  │││                                                  ; - com.google.re2j.Inst::matchRune@69 (line 103)
                  │││                                                  ; - com.google.re2j.Machine::step@191 (line 318)
  0.28%    0.30%  │││    0x00007f0a5122085f: mov    0x20(%r12,%rcx,8),%r8d  ;*getfield f1
                  │││                                                  ; - com.google.re2j.Inst::matchRune@73 (line 103)
                  │││                                                  ; - com.google.re2j.Machine::step@191 (line 318)
  0.04%    0.01%  │││    0x00007f0a51220864: cmp    0x18(%rsp),%r8d
                  │││╭   0x00007f0a51220869: je     0x00007f0a5122098a  ;*if_icmpeq
                  ││││                                                 ; - com.google.re2j.Inst::matchRune@77 (line 103)
                  ││││                                                 ; - com.google.re2j.Machine::step@191 (line 318)
  0.37%    0.41%  ││││   0x00007f0a5122086f: mov    0x24(%r12,%rcx,8),%ebp  ;*getfield f2
                  ││││                                                 ; - com.google.re2j.Inst::matchRune@81 (line 103)
                  ││││                                                 ; - com.google.re2j.Machine::step@191 (line 318)
  0.17%    0.29%  ││││   0x00007f0a51220874: cmp    0x18(%rsp),%ebp
                  ││││   0x00007f0a51220878: je     0x00007f0a51220f6d  ;*if_icmpeq
                  ││││                                                 ; - com.google.re2j.Inst::matchRune@85 (line 103)
                  ││││                                                 ; - com.google.re2j.Machine::step@191 (line 318)
  0.33%    0.53%  ││││   0x00007f0a5122087e: mov    0x28(%r12,%rcx,8),%ebp  ;*getfield f3
                  ││││                                                 ; - com.google.re2j.Inst::matchRune@89 (line 103)
                  ││││                                                 ; - com.google.re2j.Machine::step@191 (line 318)
  0.00%    0.02%  ││││   0x00007f0a51220883: cmp    0x18(%rsp),%ebp
                  ││││   0x00007f0a51220887: je     0x00007f0a51220f9d  ;*if_icmpne
                  ││││                                                 ; - com.google.re2j.Inst::matchRune@93 (line 103)
                  ││││                                                 ; - com.google.re2j.Machine::step@191 (line 318)
  0.17%    0.21%  ││││   0x00007f0a5122088d: xor    %r11d,%r11d
  0.12%    0.24%  ││││   0x00007f0a51220890: jmpq   0x00007f0a512203d3
  0.26%    0.33%  │↘││   0x00007f0a51220895: cmp    0x18(%rsp),%r8d
                  │ ││   0x00007f0a5122089a: jne    0x00007f0a512203d0  ;*if_icmpne
                  │ ││                                                 ; - com.google.re2j.Inst::matchRune@46 (line 99)
                  │ ││                                                 ; - com.google.re2j.Machine::step@191 (line 318)
  0.00%    0.00%  │ ││   0x00007f0a512208a0: mov    $0x1,%r11d
  0.00%    0.01%  │ ││   0x00007f0a512208a6: jmpq   0x00007f0a512203d3  ;*if_icmpge
                  │ ││                                                 ; - com.google.re2j.Machine::step@40 (line 288)
  0.83%    0.81%  │ ││   0x00007f0a512208ab: movzbl 0x18(%rax),%r10d
  0.00%           │ ││   0x00007f0a512208b0: test   %r10d,%r10d
                  │ ││╭  0x00007f0a512208b3: jne    0x00007f0a512208cc  ;*ifeq
                  │ │││                                                ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                  │ │││                                                ; - com.google.re2j.Machine::step@237 (line 326)
                  │ │││  0x00007f0a512208b5: movb   $0x1,0x18(%rax)    ;*putfield empty
                  │ │││                                                ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                  │ │││                                                ; - com.google.re2j.Machine::step@237 (line 326)
                  │ │││  0x00007f0a512208b9: mov    0x1c(%rax),%ebp    ;*getfield pcs
                  │ │││                                                ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                  │ │││                                                ; - com.google.re2j.Machine::step@237 (line 326)
  0.79%    0.80%  │ │││  0x00007f0a512208bc: mov    %r12d,0xc(%rax)    ;*putfield size
                  │ │││                                                ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                  │ │││                                                ; - com.google.re2j.Machine::step@237 (line 326)
                  │ │││  0x00007f0a512208c0: mov    %r12,0x10(%rax)    ;*putfield pcsl
                  │ │││                                                ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                  │ │││                                                ; - com.google.re2j.Machine::step@237 (line 326)
           0.01%  │ │││  0x00007f0a512208c4: test   %ebp,%ebp
                  │ │││  0x00007f0a512208c6: jne    0x00007f0a51220fe5  ;*getfield size
                  │ │││                                                ; - com.google.re2j.Machine::step@10 (line 283)
           0.00%  │ ││↘  0x00007f0a512208cc: add    $0x90,%rsp
  0.76%    0.79%  │ ││   0x00007f0a512208d3: pop    %rbp
                  │ ││   0x00007f0a512208d4: test   %eax,0x1754c726(%rip)        # 0x00007f0a6876d000
                  │ ││                                                 ;   {poll_return}
  0.00%    0.00%  │ ││   0x00007f0a512208da: retq   
  0.02%    0.01%  │ ││   0x00007f0a512208db: cmp    $0xf8019909,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │ ││   0x00007f0a512208e2: jne    0x00007f0a5122145d  ;*invokevirtual add
                  │ ││                                                 ; - com.google.re2j.Machine::step@214 (line 319)
  0.02%    0.00%  │ ││   0x00007f0a512208e8: mov    0x18(%r8),%ecx     ;*getfield pc
                  │ ││                                                 ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │ ││                                                 ; - com.google.re2j.Machine::step@214 (line 319)
           0.00%  │ ││   0x00007f0a512208ec: mov    %r13,%r11
                  │ ││   0x00007f0a512208ef: mov    0x10(%r13),%rdx    ;*getfield pcsl
                  │ ││                                                 ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                  │ ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │ ││                                                 ; - com.google.re2j.Machine::step@214 (line 319)
                  │ ││                                                 ; implicit exception: dispatches to 0x00007f0a512217a9
           0.00%  │ ││   0x00007f0a512208f3: cmp    $0x40,%ecx
                  │ ││   0x00007f0a512208f6: jg     0x00007f0a51221541  ;*if_icmpgt
                  │ ││                                                 ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │ ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │ ││                                                 ; - com.google.re2j.Machine::step@214 (line 319)
  0.04%           │ ││   0x00007f0a512208fc: mov    $0x1,%esi
                  │ ││   0x00007f0a51220901: shl    %cl,%rsi           ;*lshl
                  │ ││                                                 ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │ ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │ ││                                                 ; - com.google.re2j.Machine::step@214 (line 319)
  0.05%    0.02%  │ ││   0x00007f0a51220904: mov    %rdx,%rdi
                  │ ││   0x00007f0a51220907: and    %rsi,%rdi          ;*land
                  │ ││                                                 ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │ ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │ ││                                                 ; - com.google.re2j.Machine::step@214 (line 319)
                  │ ││   0x00007f0a5122090a: test   %rdi,%rdi
                  │ ││   0x00007f0a5122090d: jne    0x00007f0a512209c7  ;*ifeq
                  │ ││                                                 ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │ ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │ ││                                                 ; - com.google.re2j.Machine::step@214 (line 319)
  0.01%    0.00%  │ ││   0x00007f0a51220913: xor    %ebp,%ebp          ;*ireturn
                  │ ││                                                 ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  │ ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │ ││                                                 ; - com.google.re2j.Machine::step@214 (line 319)
  0.01%    0.02%  │ ││   0x00007f0a51220915: test   %rdi,%rdi
                  │ ││   0x00007f0a51220918: jne    0x00007f0a512215bd  ;*ifeq
                  │ ││                                                 ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  │ ││                                                 ; - com.google.re2j.Machine::step@214 (line 319)
                  │ ││   0x00007f0a5122091e: cmp    $0x40,%ecx
                  │ ││   0x00007f0a51220921: jge    0x00007f0a51221631  ;*if_icmpge
                  │ ││                                                 ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │ ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │ ││                                                 ; - com.google.re2j.Machine::step@214 (line 319)
                  │ ││   0x00007f0a51220927: mov    %r12b,0x18(%r13)   ;*putfield empty
                  │ ││                                                 ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                  │ ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │ ││                                                 ; - com.google.re2j.Machine::step@214 (line 319)
           0.00%  │ ││   0x00007f0a5122092b: mov    0x20(%r13),%ecx    ;*getfield denseThreadsInstructions
                  │ ││                                                 ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  │ ││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │ ││                                                 ; - com.google.re2j.Machine::step@214 (line 319)
  0.01%    0.01%  │ ││   0x00007f0a5122092f: or     %rdx,%rsi
           0.00%  │ ││   0x00007f0a51220932: mov    %rsi,0x10(%r13)    ;*putfield pcsl
                  │ ││                                                 ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │ ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │ ││                                                 ; - com.google.re2j.Machine::step@214 (line 319)
           0.00%  │ ││   0x00007f0a51220936: mov    0xc(%r13),%ebp     ;*getfield size
                  │ ││                                                 ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                  │ ││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │ ││                                                 ; - com.google.re2j.Machine::step@214 (line 319)
                  │ ││   0x00007f0a5122093a: mov    %ebp,%esi
  0.01%           │ ││   0x00007f0a5122093c: inc    %esi
                  │ ││   0x00007f0a5122093e: mov    %esi,0xc(%r13)     ;*putfield size
                  │ ││                                                 ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │ ││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │ ││                                                 ; - com.google.re2j.Machine::step@214 (line 319)
  0.02%    0.01%  │ ││   0x00007f0a51220942: mov    0xc(%r12,%rcx,8),%esi  ; implicit exception: dispatches to 0x00007f0a512217bd
  0.00%    0.00%  │ ││   0x00007f0a51220947: cmp    %esi,%ebp
                  │ ││   0x00007f0a51220949: jae    0x00007f0a512213e1
  0.01%    0.00%  │ ││   0x00007f0a5122094f: mov    0x8(%r12,%rcx,8),%esi
           0.00%  │ ││   0x00007f0a51220954: cmp    $0xf8019807,%esi   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                  │ ││   0x00007f0a5122095a: jne    0x00007f0a512214c5  ;*aastore
                  │ ││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │ ││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │ ││                                                 ; - com.google.re2j.Machine::step@214 (line 319)
                  │ ││   0x00007f0a51220960: shl    $0x3,%rcx          ;*getfield denseThreadsInstructions
                  │ ││                                                 ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  │ ││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │ ││                                                 ; - com.google.re2j.Machine::step@214 (line 319)
                  │ ││   0x00007f0a51220964: lea    0x10(%rcx,%rbp,4),%rcx
           0.00%  │ ││   0x00007f0a51220969: shr    $0x3,%r8
  0.00%    0.00%  │ ││   0x00007f0a5122096d: mov    %r8d,(%rcx)
  0.09%           │ ││   0x00007f0a51220970: mov    %rcx,%r8
                  │ ││   0x00007f0a51220973: shr    $0x9,%r8
  0.00%    0.01%  │ ││   0x00007f0a51220977: movabs $0x7f0a61175000,%rcx
                  │ ││   0x00007f0a51220981: mov    %r12b,(%rcx,%r8,1)  ;*aastore
                  │ ││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │ ││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │ ││                                                 ; - com.google.re2j.Machine::step@214 (line 319)
  0.06%    0.02%  │ ││   0x00007f0a51220985: jmpq   0x00007f0a51220491  ;*iconst_1
                  │ ││                                                 ; - com.google.re2j.Inst::matchRune@96 (line 103)
                  │ ││                                                 ; - com.google.re2j.Machine::step@191 (line 318)
  0.15%    0.15%  │ ↘↘   0x00007f0a5122098a: mov    $0x1,%r11d
  0.05%    0.04%  │      0x00007f0a51220990: jmpq   0x00007f0a512203d3
                  │      0x00007f0a51220995: mov    $0x1,%ebp
                  │      0x00007f0a5122099a: jmpq   0x00007f0a51220552
                  │      0x00007f0a5122099f: mov    $0x1,%ebp
                  │      0x00007f0a512209a4: jmpq   0x00007f0a5122041f
                  │      0x00007f0a512209a9: mov    0x30(%rsp),%r11
                  │      0x00007f0a512209ae: jmpq   0x00007f0a51220472
                  │      0x00007f0a512209b3: mov    $0x1,%ebp
                  │      0x00007f0a512209b8: jmpq   0x00007f0a512206ea
                  ↘      0x00007f0a512209bd: mov    $0x1,%ebp
                         0x00007f0a512209c2: jmpq   0x00007f0a512207e6
....................................................................................................
 13.23%   13.68%  <total for region 3>

....[Hottest Regions]...............................................................................
 39.25%   36.92%         C2, level 4  com.google.re2j.Machine::step, version 497 (730 bytes) 
 31.81%   33.78%         C2, level 4  com.google.re2j.Machine::match, version 541 (923 bytes) 
 13.23%   13.68%         C2, level 4  com.google.re2j.Machine::step, version 497 (481 bytes) 
  7.81%    8.51%         C2, level 4  com.google.re2j.Machine::step, version 497 (159 bytes) 
  2.14%    2.41%         C2, level 4  com.google.re2j.Machine::match, version 541 (70 bytes) 
  1.88%    1.88%   [kernel.kallsyms]  [unknown] (6 bytes) 
  0.21%    0.21%         C2, level 4  com.google.re2j.Machine::match, version 541 (287 bytes) 
  0.17%                  C2, level 4  com.google.re2j.Pattern::find, version 554 (189 bytes) 
  0.17%    0.14%         C2, level 4  com.google.re2j.Machine::match, version 541 (304 bytes) 
  0.15%    0.12%         C2, level 4  com.google.re2j.Machine::match, version 541 (370 bytes) 
  0.13%    0.09%         C2, level 4  com.google.re2j.Pattern::find, version 554 (0 bytes) 
  0.13%    0.13%         C2, level 4  com.google.re2j.Pattern::find, version 554 (20 bytes) 
  0.13%    0.04%         C2, level 4  com.google.re2j.Pattern::find, version 554 (8 bytes) 
  0.12%            [kernel.kallsyms]  [unknown] (47 bytes) 
  0.12%    0.04%         C2, level 4  java.util.Collections::shuffle, version 564 (41 bytes) 
  0.11%    0.01%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.11%    0.07%         C2, level 4  com.google.re2j.Pattern::find, version 554 (20 bytes) 
  0.10%    0.01%   [kernel.kallsyms]  [unknown] (26 bytes) 
  0.08%                  C2, level 4  com.google.re2j.Pattern::find, version 554 (55 bytes) 
  0.07%    0.03%   [kernel.kallsyms]  [unknown] (5 bytes) 
  2.09%    1.92%  <...other 380 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 60.29%   59.11%         C2, level 4  com.google.re2j.Machine::step, version 497 
 34.60%   36.79%         C2, level 4  com.google.re2j.Machine::match, version 541 
  2.92%    2.71%   [kernel.kallsyms]  [unknown] 
  0.93%    0.39%         C2, level 4  com.google.re2j.Pattern::find, version 554 
  0.30%    0.06%         C2, level 4  java.util.Collections::shuffle, version 564 
  0.12%    0.01%              [vdso]  [unknown] 
  0.07%    0.04%      hsdis-amd64.so  [unknown] 
  0.06%    0.03%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 598 
  0.05%    0.11%        libc-2.26.so  vfprintf 
  0.04%                 libc-2.26.so  _IO_fflush 
  0.03%    0.08%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.03%    0.10%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.03%                  C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 563 
  0.02%    0.05%        libc-2.26.so  _IO_fwrite 
  0.02%    0.02%        libc-2.26.so  __strlen_avx2 
  0.02%    0.01%           libjvm.so  _ZN18PSPromotionManager18drain_stacks_depthEb 
  0.02%    0.00%           libjvm.so  _ZN7Monitor6unlockEv 
  0.01%                    libjvm.so  _ZN2os13javaTimeNanosEv 
  0.01%                    libjvm.so  _ZN19GenericTaskQueueSetI17OverflowTaskQueueI8StarTaskL10MemoryType1ELj131072EELS2_1EE15steal_best_of_2EjPiRS1_ 
  0.01%    0.01%        libc-2.26.so  __strchr_avx2 
  0.39%    0.30%  <...other 61 warm methods...>
....................................................................................................
100.00%   99.82%  <totals>

....[Distribution by Source]........................................................................
 96.21%   96.37%         C2, level 4
  2.92%    2.71%   [kernel.kallsyms]
  0.36%    0.56%           libjvm.so
  0.22%    0.27%        libc-2.26.so
  0.12%    0.01%              [vdso]
  0.07%    0.04%      hsdis-amd64.so
  0.04%    0.02%  libpthread-2.26.so
  0.03%    0.01%         interpreter
  0.01%    0.00%         C1, level 3
  0.00%    0.00%        runtime stub
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                     Mode  Cnt      Score    Error  Units
Re2jFindRegex.testExp1       thrpt   20  23443.150 ± 72.260  ops/s
Re2jFindRegex.testExp1:·asm  thrpt             NaN             ---
