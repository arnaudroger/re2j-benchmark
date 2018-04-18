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
# Warmup Iteration   1: 10672.564 ops/s
# Warmup Iteration   2: 22303.665 ops/s
# Warmup Iteration   3: 22435.804 ops/s
# Warmup Iteration   4: 22466.462 ops/s
# Warmup Iteration   5: 22517.508 ops/s
# Warmup Iteration   6: 22502.251 ops/s
# Warmup Iteration   7: 22515.572 ops/s
# Warmup Iteration   8: 22632.811 ops/s
# Warmup Iteration   9: 22670.663 ops/s
# Warmup Iteration  10: 22667.678 ops/s
# Warmup Iteration  11: 22672.165 ops/s
# Warmup Iteration  12: 22673.910 ops/s
# Warmup Iteration  13: 22670.760 ops/s
# Warmup Iteration  14: 22668.697 ops/s
# Warmup Iteration  15: 22644.494 ops/s
# Warmup Iteration  16: 22653.743 ops/s
# Warmup Iteration  17: 21621.078 ops/s
# Warmup Iteration  18: 21617.372 ops/s
# Warmup Iteration  19: 21614.593 ops/s
# Warmup Iteration  20: 21619.213 ops/s
Iteration   1: 21619.426 ops/s
Iteration   2: 22259.072 ops/s
Iteration   3: 22677.073 ops/s
Iteration   4: 22675.582 ops/s
Iteration   5: 22669.176 ops/s
Iteration   6: 22675.523 ops/s
Iteration   7: 22683.368 ops/s
Iteration   8: 22682.616 ops/s
Iteration   9: 22629.651 ops/s
Iteration  10: 22670.063 ops/s
Iteration  11: 22673.229 ops/s
Iteration  12: 22674.414 ops/s
Iteration  13: 22672.254 ops/s
Iteration  14: 22671.271 ops/s
Iteration  15: 22672.484 ops/s
Iteration  16: 22670.693 ops/s
Iteration  17: 22616.150 ops/s
Iteration  18: 22659.122 ops/s
Iteration  19: 22659.770 ops/s
Iteration  20: 22659.187 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  22593.506 ±(99.9%) 214.644 ops/s [Average]
  (min, avg, max) = (21619.426, 22593.506, 22683.368), stdev = 247.184
  CI (99.9%): [22378.862, 22808.150] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1:·asm":
PrintAssembly processed: 195092 total address lines.
Perf output processed (skipped 23.340 seconds):
 Column 1: cycles (20387 events)
 Column 2: instructions (20383 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 501 (942 bytes) 

                      0x00007f17a1223162: jae    0x00007f17a1223915
                      0x00007f17a1223168: mov    %rdx,%r10
                      0x00007f17a122316b: mov    %r9,%r11
                      0x00007f17a122316e: shr    $0x3,%r11
                      0x00007f17a1223172: mov    %r11d,(%rdx)
                      0x00007f17a1223175: shr    $0x9,%r10
                      0x00007f17a1223179: movabs $0x7f17b1991000,%r11
                      0x00007f17a1223183: mov    %r12b,(%r11,%r10,1)  ;*synchronization entry
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.26%    0.09%   ↗  0x00007f17a1223187: mov    0x28(%rsp),%r13
  0.23%    0.22%   │  0x00007f17a122318c: mov    0x30(%rsp),%r11
  0.19%    0.15%   │  0x00007f17a1223191: mov    0xac(%rsp),%r9d
  0.07%    0.10%   │  0x00007f17a1223199: mov    0xc(%rsp),%r14d
  0.27%    0.14%   │  0x00007f17a122319e: mov    0x38(%rsp),%rdx
  0.26%    0.22%   │  0x00007f17a12231a3: mov    0xa4(%rsp),%ebx
  0.19%    0.14%   │  0x00007f17a12231aa: mov    0x44(%rsp),%r10d   ;*aload
                   │                                                ; - com.google.re2j.Machine::step@219 (line 322)
  1.79%    1.94%  ↗│  0x00007f17a12231af: inc    %r10d              ;*iinc
                  ││                                                ; - com.google.re2j.Machine::step@230 (line 288)
  0.22%    0.10%  ││  0x00007f17a12231b2: cmp    %r9d,%r10d
                  ││  0x00007f17a12231b5: jge    0x00007f17a1223694
  0.30%    0.25%  ││  0x00007f17a12231bb: mov    %r11,%rax          ;*iload
                  ││                                                ; - com.google.re2j.Machine::step@43 (line 291)
  0.87%    0.86%  ││  0x00007f17a12231be: mov    0x10(%rdx,%r10,4),%r11d  ;*aaload
                  ││                                                ; - com.google.re2j.Machine::step@99 (line 301)
  1.22%    1.38%  ││  0x00007f17a12231c3: mov    0xc(%r12,%r11,8),%r8d  ;*getfield op
                  ││                                                ; - com.google.re2j.Machine::step@104 (line 303)
                  ││                                                ; implicit exception: dispatches to 0x00007f17a1224681
  1.18%    1.13%  ││  0x00007f17a12231c8: cmp    $0x6,%r8d
                  ││  0x00007f17a12231cc: je     0x00007f17a1223779  ;*if_icmpne
                  ││                                                ; - com.google.re2j.Machine::step@109 (line 303)
  1.20%    1.08%  ││  0x00007f17a12231d2: cmp    $0xa,%r8d
                  ││  0x00007f17a12231d6: jne    0x00007f17a1223621  ;*if_icmpne
                  ││                                                ; - com.google.re2j.Inst::matchRune@6 (line 90)
                  ││                                                ; - com.google.re2j.Machine::step@191 (line 318)
  0.30%    0.27%  ││  0x00007f17a12231dc: mov    0x2c(%r12,%r11,8),%ecx  ;*getfield outInst
                  ││                                                ; - com.google.re2j.Machine::step@199 (line 319)
  0.12%    0.10%  ││  0x00007f17a12231e1: mov    0x8(%r12,%rcx,8),%r11d  ; implicit exception: dispatches to 0x00007f17a1224691
  1.33%    1.41%  ││  0x00007f17a12231e6: lea    (%r12,%rcx,8),%r8
  0.09%    0.12%  ││  0x00007f17a12231ea: cmp    $0xf8019843,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                  ││  0x00007f17a12231f1: jne    0x00007f17a12236c6  ;*invokevirtual add
                  ││                                                ; - com.google.re2j.Machine::step@214 (line 319)
  0.53%    0.60%  ││  0x00007f17a12231f7: mov    0x18(%r8),%edi     ;*getfield pc
                  ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 175)
                  ││                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.05%    0.05%  ││  0x00007f17a12231fb: mov    %rax,%r11
  0.01%    0.01%  ││  0x00007f17a12231fe: mov    0x10(%rax),%rsi    ;*getfield pcsl
                  ││                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                  ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                  ││                                                ; - com.google.re2j.Machine::step@-1 (line 282)
                  ││                                                ; implicit exception: dispatches to 0x00007f17a12246a5
  0.16%    0.15%  ││  0x00007f17a1223202: cmp    $0x40,%edi
                  ││  0x00007f17a1223205: jg     0x00007f17a1223a65  ;*if_icmpgt
                  ││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                  ││                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.61%    0.60%  ││  0x00007f17a122320b: mov    $0x1,%eax
  0.01%    0.03%  ││  0x00007f17a1223210: mov    %edi,%ecx
  0.02%    0.03%  ││  0x00007f17a1223212: shl    %cl,%rax           ;*lshl
                  ││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                  ││                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  1.34%    1.47%  ││  0x00007f17a1223215: mov    %rsi,%rcx
  0.00%    0.02%  ││  0x00007f17a1223218: and    %rax,%rcx
  0.16%    0.13%  ││  0x00007f17a122321b: test   %rcx,%rcx
                  ╰│  0x00007f17a122321e: jne    0x00007f17a12231af  ;*ifeq
                   │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.31%    0.31%   │  0x00007f17a1223220: cmp    $0x40,%edi
                   │  0x00007f17a1223223: jge    0x00007f17a1223ad5  ;*if_icmpge
                   │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.23%    0.26%   │  0x00007f17a1223229: mov    %r12b,0x18(%r11)   ;*putfield empty
                   │                                                ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.02%    0.03%   │  0x00007f17a122322d: mov    0x2c(%r8),%ebp     ;*getfield outInst
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.16%    0.13%   │  0x00007f17a1223231: or     %rsi,%rax          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.23%    0.36%   │  0x00007f17a1223234: mov    %rax,0x10(%r11)    ;*putfield pcsl
                   │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.30%    0.28%   │  0x00007f17a1223238: mov    0x8(%r12,%rbp,8),%esi  ; implicit exception: dispatches to 0x00007f17a12246b9
  0.84%    0.77%   │  0x00007f17a122323d: cmp    $0xf8019909,%esi   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                   │  0x00007f17a1223243: jne    0x00007f17a1223829
  0.74%    0.64%   │  0x00007f17a1223249: shl    $0x3,%rbp          ;*invokevirtual add
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.01%    0.00%   │  0x00007f17a122324d: mov    0x18(%rbp),%edi    ;*getfield pc
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.90%    0.89%   │  0x00007f17a1223250: cmp    $0x40,%edi
                   │  0x00007f17a1223253: jg     0x00007f17a1223b41  ;*if_icmpgt
                   │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.52%    0.61%   │  0x00007f17a1223259: mov    $0x1,%esi
  0.09%    0.11%   │  0x00007f17a122325e: mov    %edi,%ecx
  0.01%    0.00%   │  0x00007f17a1223260: shl    %cl,%rsi           ;*lshl
                   │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  1.29%    1.38%   │  0x00007f17a1223263: mov    %rax,%rcx
  0.00%            │  0x00007f17a1223266: and    %rsi,%rcx          ;*land
                   │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
                   │  0x00007f17a1223269: test   %rcx,%rcx
                   │  0x00007f17a122326c: jne    0x00007f17a1223bb5  ;*ifeq
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.22%    0.20%   │  0x00007f17a1223272: cmp    $0x40,%edi
                   │  0x00007f17a1223275: jge    0x00007f17a1223c35  ;*if_icmpge
                   │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.46%    0.31%   │  0x00007f17a122327b: mov    %rbp,%rcx
                   │  0x00007f17a122327e: mov    %r10d,0x44(%rsp)
                   │  0x00007f17a1223283: mov    %ebx,0xa4(%rsp)
  0.28%    0.26%   │  0x00007f17a122328a: mov    %rdx,0x38(%rsp)
  0.52%    0.47%   │  0x00007f17a122328f: mov    %r14d,0xc(%rsp)
           0.00%   │  0x00007f17a1223294: mov    %r9d,0xac(%rsp)
                   │  0x00007f17a122329c: mov    %r11,0x30(%rsp)
  0.26%    0.21%   │  0x00007f17a12232a1: mov    %r13,0x28(%rsp)
  0.39%    0.26%   │  0x00007f17a12232a6: or     %rsi,%rax          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
           0.00%   │  0x00007f17a12232a9: mov    %rax,0x10(%r11)    ;*putfield pcsl
                   │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
                   │  0x00007f17a12232ad: mov    0x20(%r11),%r10d   ;*getfield denseThreadsInstructions
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.30%    0.20%   │  0x00007f17a12232b1: mov    %r10d,%r13d
  0.52%    0.21%   │  0x00007f17a12232b4: mov    0xc(%r11),%r10d    ;*getfield size
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
           0.00%   │  0x00007f17a12232b8: mov    %r10d,%r14d
                   │  0x00007f17a12232bb: inc    %r10d              ;*iadd
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.22%    0.22%   │  0x00007f17a12232be: vmovd  %r10d,%xmm0
  0.43%    0.32%   │  0x00007f17a12232c3: mov    %r10d,0xc(%r11)    ;*putfield size
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.01%    0.00%   │  0x00007f17a12232c7: mov    %r13d,%r10d
                   │  0x00007f17a12232ca: mov    0xc(%r12,%r10,8),%ebx  ; implicit exception: dispatches to 0x00007f17a12246cd
  0.25%    0.22%   │  0x00007f17a12232cf: mov    %r14d,%r10d
  0.39%    0.47%   │  0x00007f17a12232d2: cmp    %ebx,%r10d
                   │  0x00007f17a12232d5: jae    0x00007f17a12237e1
  0.00%            │  0x00007f17a12232db: mov    %r13d,%r10d
                   │  0x00007f17a12232de: mov    0x8(%r12,%r10,8),%r11d
  0.25%    0.24%   │  0x00007f17a12232e3: cmp    $0xf8019807,%r11d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                   │  0x00007f17a12232ea: jne    0x00007f17a1223899  ;*aastore
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.42%    0.55%   │  0x00007f17a12232f0: mov    0x34(%r8),%r10d    ;*getfield inst2
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@43 (line 181)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
                   │  0x00007f17a12232f4: vmovd  %r10d,%xmm2
                   │  0x00007f17a12232f9: mov    %rbp,%r10
  0.27%    0.18%   │  0x00007f17a12232fc: shr    $0x3,%r10          ;*aastore
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.45%    0.36%   │  0x00007f17a1223300: lea    (%r12,%r13,8),%r9  ;*getfield denseThreadsInstructions
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.01%    0.00%   │  0x00007f17a1223304: lea    0x10(%r9,%r14,4),%r11
                   │  0x00007f17a1223309: mov    %r10d,(%r11)
  0.20%    0.20%   │  0x00007f17a122330c: mov    %r11,%r10
  0.48%    0.41%   │  0x00007f17a122330f: shr    $0x9,%r10
  0.01%            │  0x00007f17a1223313: movabs $0x7f17b1991000,%r11
                   │  0x00007f17a122331d: mov    %r12b,(%r11,%r10,1)  ;*aastore
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.26%    0.19%   │  0x00007f17a1223321: vmovd  %xmm2,%r10d
  0.42%    0.48%   │  0x00007f17a1223326: mov    0x8(%r12,%r10,8),%r10d  ;*invokevirtual add
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
                   │                                                ; implicit exception: dispatches to 0x00007f17a12246e9
           0.00%   │  0x00007f17a122332b: movslq %r14d,%r11
                   │  0x00007f17a122332e: lea    (%r9,%r11,4),%rdi  ;*aastore
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.24%    0.26%   │  0x00007f17a1223332: mov    %rdi,%rdx
  0.43%    0.33%   │  0x00007f17a1223335: add    $0x14,%rdx         ;*aastore
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
           0.00%   │  0x00007f17a1223339: vmovd  %xmm2,%r11d
           0.00%   │  0x00007f17a122333e: shl    $0x3,%r11
  0.26%    0.16%   │  0x00007f17a1223342: mov    %r14d,%r8d
  0.48%    0.31%   │  0x00007f17a1223345: add    $0x2,%r8d          ;*iadd
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
           0.00%   │  0x00007f17a1223349: cmp    $0xf8019885,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                   │  0x00007f17a1223350: jne    0x00007f17a1223104  ;*invokevirtual add
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
                   │  0x00007f17a1223356: vmovq  %r11,%xmm1
  0.24%    0.08%   │  0x00007f17a122335b: mov    0x18(%r11),%r10d   ;*getfield pc
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@2 (line 461)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.41%    0.30%   │  0x00007f17a122335f: mov    %r10d,%ecx
           0.00%   │  0x00007f17a1223362: cmp    $0x40,%r10d
                   │  0x00007f17a1223366: jg     0x00007f17a1223e35  ;*if_icmpgt
                   │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.03%    0.01%   │  0x00007f17a122336c: mov    $0x1,%r11d
  0.24%    0.05%   │  0x00007f17a1223372: shl    %cl,%r11           ;*lshl
                   │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.50%    0.22%   │  0x00007f17a1223375: mov    %rax,%r10
  0.28%    0.13%   │  0x00007f17a1223378: and    %r11,%r10          ;*land
                   │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.38%    0.22%   │  0x00007f17a122337b: test   %r10,%r10
                   │  0x00007f17a122337e: jne    0x00007f17a1223e71  ;*ifeq
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@8 (line 461)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.04%    0.01%   │  0x00007f17a1223384: mov    %ecx,%r10d
  0.01%    0.02%   │  0x00007f17a1223387: cmp    $0x40,%r10d
                   │  0x00007f17a122338b: jge    0x00007f17a1223ec5  ;*if_icmpge
                   │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.24%    0.29%   │  0x00007f17a1223391: or     %r11,%rax          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.51%    0.50%   │  0x00007f17a1223394: mov    0x30(%rsp),%r10
  0.00%            │  0x00007f17a1223399: mov    %rax,0x10(%r10)    ;*putfield pcsl
                   │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.02%    0.03%   │  0x00007f17a122339d: vmovq  %xmm1,%r10
  0.31%    0.06%   │  0x00007f17a12233a2: mov    0x2c(%r10),%ebp    ;*getfield outInst
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@82 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.44%    0.00%   │  0x00007f17a12233a6: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f17a122471d
  0.10%    0.13%   │  0x00007f17a12233ab: cmp    $0xf8019843,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                   │  0x00007f17a12233b2: jne    0x00007f17a1223a01
  0.09%    0.12%   │  0x00007f17a12233b8: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.21%    0.15%   │  0x00007f17a12233bc: vmovq  %r10,%xmm1
  0.35%    0.47%   │  0x00007f17a12233c1: mov    0x18(%r10),%r10d   ;*getfield pc
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 175)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.01%    0.01%   │  0x00007f17a12233c5: mov    %r10d,%ecx
  0.12%    0.16%   │  0x00007f17a12233c8: cmp    $0x40,%r10d
                   │  0x00007f17a12233cc: jg     0x00007f17a1224041  ;*if_icmpgt
                   │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.30%    0.41%   │  0x00007f17a12233d2: mov    $0x1,%r11d
  0.40%    0.43%   │  0x00007f17a12233d8: shl    %cl,%r11           ;*lshl
                   │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.37%    0.43%   │  0x00007f17a12233db: mov    %rax,%r10
  0.28%    0.37%   │  0x00007f17a12233de: and    %r11,%r10
           0.00%   │  0x00007f17a12233e1: test   %r10,%r10
                   ╰  0x00007f17a12233e4: jne    0x00007f17a1223187  ;*ifeq
                                                                    ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.11%    0.10%      0x00007f17a12233ea: mov    %ecx,%r10d
  0.33%    0.23%      0x00007f17a12233ed: cmp    $0x40,%r10d
                      0x00007f17a12233f1: jge    0x00007f17a122407d  ;*if_icmpge
                                                                    ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.41%    0.48%      0x00007f17a12233f7: or     %r11,%rax          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
                      0x00007f17a12233fa: mov    0x30(%rsp),%r10
  0.10%    0.11%      0x00007f17a12233ff: mov    %rax,0x10(%r10)    ;*putfield pcsl
                                                                    ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.32%    0.30%      0x00007f17a1223403: vmovq  %xmm1,%r10
  0.42%    0.39%      0x00007f17a1223408: mov    0x2c(%r10),%ebp    ;*getfield outInst
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 180)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
                      0x00007f17a122340c: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f17a1224731
  0.60%    0.71%      0x00007f17a1223411: cmp    $0xf8019909,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                      0x00007f17a1223418: jne    0x00007f17a1223a31
  0.57%    0.61%      0x00007f17a122341e: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.15%    0.16%      0x00007f17a1223422: vmovq  %r10,%xmm2
                      0x00007f17a1223427: mov    0x18(%r10),%r10d   ;*getfield pc
                                                                    ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.12%    0.16%      0x00007f17a122342b: vmovd  %r10d,%xmm3
  0.59%    0.69%      0x00007f17a1223430: cmp    $0x40,%r10d
                      0x00007f17a1223434: jg     0x00007f17a12240b9  ;*if_icmpgt
                                                                    ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                    ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.15%    0.19%      0x00007f17a122343a: mov    $0x1,%r11d
                      0x00007f17a1223440: mov    %r10d,%ecx
  0.01%               0x00007f17a1223443: shl    %cl,%r11           ;*lshl
                                                                    ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                    ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  1.10%    1.33%      0x00007f17a1223446: mov    %rax,%r10
                      0x00007f17a1223449: and    %r11,%r10          ;*land
                                                                    ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                    ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.22%    0.34%      0x00007f17a122344c: test   %r10,%r10
                      0x00007f17a122344f: jne    0x00007f17a12240fd  ;*ifeq
                                                                    ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.32%    0.34%      0x00007f17a1223455: mov    %ecx,%r10d
  0.16%    0.25%      0x00007f17a1223458: cmp    $0x40,%r10d
                      0x00007f17a122345c: jge    0x00007f17a1224155  ;*if_icmpge
                                                                    ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                    ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.06%    0.03%      0x00007f17a1223462: mov    0x30(%rsp),%r10
  0.25%    0.25%      0x00007f17a1223467: mov    %r8d,0xc(%r10)     ;*putfield size
                                                                    ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                    ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.28%    0.27%      0x00007f17a122346b: or     %r11,%rax          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                    ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.17%    0.19%      0x00007f17a122346e: mov    %rax,0x10(%r10)    ;*putfield pcsl
                                                                    ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                    ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.06%    0.06%      0x00007f17a1223472: cmp    %ebx,%r8d
                      0x00007f17a1223475: jae    0x00007f17a122397d  ;*aastore
                                                                    ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                    ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.27%    0.24%      0x00007f17a122347b: vmovq  %xmm1,%r10
  0.25%    0.26%      0x00007f17a1223480: mov    0x34(%r10),%r10d   ;*getfield inst2
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@43 (line 181)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.13%    0.18%      0x00007f17a1223484: mov    %rdx,%r11
  0.10%    0.04%      0x00007f17a1223487: vmovq  %xmm2,%r8
  0.17%    0.21%      0x00007f17a122348c: shr    $0x3,%r8
  0.22%    0.22%      0x00007f17a1223490: mov    %r8d,(%rdx)
  0.19%    0.21%      0x00007f17a1223493: shr    $0x9,%r11
  0.05%    0.05%      0x00007f17a1223497: movabs $0x7f17b1991000,%r8
  0.23%    0.26%      0x00007f17a12234a1: mov    %r12b,(%r8,%r11,1)  ;*aastore
                                                                    ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                    ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.28%    0.25%      0x00007f17a12234a5: mov    0x8(%r12,%r10,8),%ecx  ; implicit exception: dispatches to 0x00007f17a1224745
  0.17%    0.18%      0x00007f17a12234aa: lea    (%r12,%r10,8),%r11
  0.07%    0.07%      0x00007f17a12234ae: cmp    $0xf8019885,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                      0x00007f17a12234b4: je     0x00007f17a122353a
  0.27%    0.24%      0x00007f17a12234ba: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
  0.26%    0.39%      0x00007f17a12234c0: jne    0x00007f17a1223dcd  ;*invokevirtual add
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.24%    0.20%      0x00007f17a12234c6: mov    0x18(%r11),%r10d   ;*getfield pc
                                                                    ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.06%    0.06%      0x00007f17a12234ca: cmp    $0x40,%r10d
                      0x00007f17a12234ce: jg     0x00007f17a1224265  ;*if_icmpgt
                                                                    ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                    ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.25%    0.22%      0x00007f17a12234d4: mov    $0x1,%r8d
  0.20%    0.25%      0x00007f17a12234da: mov    %r10d,%ecx
  0.20%    0.17%      0x00007f17a12234dd: shl    %cl,%r8            ;*lshl
                                                                    ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                    ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.45%    0.68%      0x00007f17a12234e0: mov    %rax,%rcx
  0.20%    0.25%      0x00007f17a12234e3: and    %r8,%rcx           ;*land
                                                                    ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                    ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.05%    0.05%      0x00007f17a12234e6: test   %rcx,%rcx
                      0x00007f17a12234e9: jne    0x00007f17a12242c9  ;*ifeq
                                                                    ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.17%    0.28%      0x00007f17a12234ef: cmp    $0x40,%r10d
                      0x00007f17a12234f3: jge    0x00007f17a122433d  ;*if_icmpge
                                                                    ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                    ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.28%    0.29%      0x00007f17a12234f9: or     %r8,%rax
  0.17%    0.26%      0x00007f17a12234fc: mov    0x30(%rsp),%r10
  0.04%    0.07%      0x00007f17a1223501: mov    %rax,0x10(%r10)    ;*putfield pcsl
                                                                    ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                    ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.24%    0.32%      0x00007f17a1223505: add    $0x18,%rdi
  0.22%    0.29%      0x00007f17a1223509: mov    %r11,%r10
  0.19%    0.16%      0x00007f17a122350c: shr    $0x3,%r10
  0.03%    0.06%      0x00007f17a1223510: mov    %r10d,(%rdi)       ;*aastore
                                                                    ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                    ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.24%    0.28%      0x00007f17a1223513: mov    %rdi,%r10
  0.25%    0.26%      0x00007f17a1223516: add    $0x3,%r14d
  0.18%    0.17%      0x00007f17a122351a: mov    0x30(%rsp),%r11
  0.05%    0.08%      0x00007f17a122351f: mov    %r14d,0xc(%r11)    ;*putfield size
                                                                    ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                    ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.24%    0.20%      0x00007f17a1223523: shr    $0x9,%r10
  0.22%    0.17%      0x00007f17a1223527: movabs $0x7f17b1991000,%r11
  0.17%    0.19%      0x00007f17a1223531: mov    %r12b,(%r11,%r10,1)  ;*aastore
                                                                    ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                    ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.08%    0.08%      0x00007f17a1223535: jmpq   0x00007f17a1223187  ;*invokevirtual add
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
....................................................................................................
 46.45%   45.22%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 540 (1142 bytes) 

                                                                           ; - java.lang.String::charAt@27 (line 660)
                                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                           ; - com.google.re2j.Machine::match@69 (line 195)
                             0x00007f17a123e1c2: cmp    $0xd800,%r8d
                             0x00007f17a123e1c9: jge    0x00007f17a123f7e5  ;*if_icmplt
                                                                           ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                           ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                           ; - com.google.re2j.Machine::match@69 (line 195)
           0.00%             0x00007f17a123e1cf: shl    $0x3,%r8d          ;*ishl
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                                                                           ; - com.google.re2j.Machine::match@69 (line 195)
                             0x00007f17a123e1d3: mov    %r8d,%r10d
                             0x00007f17a123e1d6: and    $0x7,%r10d
                             0x00007f17a123e1da: or     $0x1,%r8d
                             0x00007f17a123e1de: mov    %r8d,%edx
                             0x00007f17a123e1e1: or     $0x1,%r10d         ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                                                                           ; - com.google.re2j.Machine::match@69 (line 195)
                             0x00007f17a123e1e5: mov    %r10d,0x28(%rsp)
           0.01%             0x00007f17a123e1ea: mov    %r8d,%edi
  0.01%                      0x00007f17a123e1ed: sar    $0x3,%edi          ;*ishr
                                                                           ; - com.google.re2j.Machine::match@77 (line 196)
                             0x00007f17a123e1f0: cmp    $0xfffffff8,%r8d
                             0x00007f17a123e1f4: je     0x00007f17a123f310  ;*if_icmpeq
                                                                           ; - com.google.re2j.Machine::match@97 (line 200)
                             0x00007f17a123e1fa: vmovd  %xmm1,%r10d
           0.00%             0x00007f17a123e1ff: add    0x28(%rsp),%r10d
  0.04%    0.03%             0x00007f17a123e204: add    0x78(%rsp),%r10d   ;*iadd
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                                                                           ; - com.google.re2j.Machine::match@105 (line 201)
  0.01%    0.01%             0x00007f17a123e209: mov    %r10d,%r8d
                             0x00007f17a123e20c: cmp    0x6c(%rsp),%r10d
                             0x00007f17a123e211: jge    0x00007f17a123eb8c  ;*if_icmpge
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                                                                           ; - com.google.re2j.Machine::match@105 (line 201)
           0.00%             0x00007f17a123e217: test   %r10d,%r10d
                             0x00007f17a123e21a: jl     0x00007f17a123f675  ;*iflt
                                                                           ; - java.lang.String::charAt@1 (line 657)
                                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                           ; - com.google.re2j.Machine::match@105 (line 201)
  0.00%                      0x00007f17a123e220: cmp    %r13d,%r10d
                             0x00007f17a123e223: jge    0x00007f17a123f845  ;*if_icmplt
                                                                           ; - java.lang.String::charAt@10 (line 657)
                                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                           ; - com.google.re2j.Machine::match@105 (line 201)
  0.00%    0.01%             0x00007f17a123e229: cmp    %r13d,%r10d
                             0x00007f17a123e22c: jae    0x00007f17a123f3c1
  0.00%                      0x00007f17a123e232: movzwl 0x10(%r9,%r10,2),%r10d  ;*caload
                                                                           ; - java.lang.String::charAt@27 (line 660)
                                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                           ; - com.google.re2j.Machine::match@105 (line 201)
  0.00%                      0x00007f17a123e238: cmp    $0xd800,%r10d
                             0x00007f17a123e23f: jge    0x00007f17a123f8b9  ;*if_icmplt
                                                                           ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                           ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                           ; - com.google.re2j.Machine::match@105 (line 201)
  0.00%                      0x00007f17a123e245: shl    $0x3,%r10d         ;*ishl
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                                                                           ; - com.google.re2j.Machine::match@105 (line 201)
                             0x00007f17a123e249: mov    %r10d,%r8d
                             0x00007f17a123e24c: or     $0x1,%r8d
  0.01%                      0x00007f17a123e250: and    $0x7,%r10d
                             0x00007f17a123e254: sar    $0x3,%r8d          ;*ishr
                                                                           ; - com.google.re2j.Machine::match@113 (line 202)
  0.01%    0.00%             0x00007f17a123e258: mov    %r8d,0x38(%rsp)
           0.00%             0x00007f17a123e25d: or     $0x1,%r10d         ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                                                                           ; - com.google.re2j.Machine::match@105 (line 201)
                             0x00007f17a123e261: mov    %r10d,0x30(%rsp)   ;*ishr
                                                                           ; - com.google.re2j.Machine::match@113 (line 202)
  0.01%                      0x00007f17a123e266: vmovd  %xmm1,%r10d
                             0x00007f17a123e26b: test   %r10d,%r10d
                             0x00007f17a123e26e: jne    0x00007f17a123f615  ;*ifne
                                                                           ; - com.google.re2j.Machine::match@124 (line 206)
                             0x00007f17a123e274: test   %edi,%edi
                             0x00007f17a123e276: jl     0x00007f17a123eb69  ;*ifge
                                                                           ; - com.google.re2j.Utils::emptyOpContext@21 (line 179)
                                                                           ; - com.google.re2j.Machine::match@130 (line 207)
                             0x00007f17a123e27c: mov    $0x5,%r10d         ;*iload_1
                                                                           ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                                                                           ; - com.google.re2j.Machine::match@130 (line 207)
           0.00%             0x00007f17a123e282: cmp    $0xa,%edi
                             0x00007f17a123e285: je     0x00007f17a123eb83  ;*iload_0
                                                                           ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                                                                           ; - com.google.re2j.Machine::match@130 (line 207)
                             0x00007f17a123e28b: mov    %edi,%r9d
                             0x00007f17a123e28e: add    $0xffffffbf,%r9d
                             0x00007f17a123e292: cmp    $0x1a,%r9d
                  ╭          0x00007f17a123e296: jb     0x00007f17a123e2a9  ;*if_icmple
                  │                                                        ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │                                                        ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                        ; - com.google.re2j.Machine::match@130 (line 207)
           0.00%  │          0x00007f17a123e298: mov    %edi,%r8d
                  │          0x00007f17a123e29b: add    $0xffffff9f,%r8d
                  │          0x00007f17a123e29f: cmp    $0x1a,%r8d
                  │          0x00007f17a123e2a3: jae    0x00007f17a123eba4  ;*iconst_1
                  │                                                        ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │                                                        ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                        ; - com.google.re2j.Machine::match@130 (line 207)
                  ↘          0x00007f17a123e2a9: or     $0x10,%r10d        ;*iload_2
                                                                           ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                           ; - com.google.re2j.Machine::match@130 (line 207)
  0.02%                      0x00007f17a123e2ad: mov    0x3c(%rsp),%r8d
  0.01%    0.00%             0x00007f17a123e2b2: test   %r8d,%r8d
                             0x00007f17a123e2b5: jne    0x00007f17a123f4a5
                             0x00007f17a123e2bb: mov    0x4c(%rsp),%r9d
                             0x00007f17a123e2c0: mov    0x8(%r12,%r9,8),%r8d  ; implicit exception: dispatches to 0x00007f17a123f4a5
  0.02%    0.00%             0x00007f17a123e2c5: cmp    $0xf8019909,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                             0x00007f17a123e2cc: jne    0x00007f17a123f4a5  ;*aload
                                                                           ; - com.google.re2j.Machine::match@145 (line 213)
           0.00%             0x00007f17a123e2d2: mov    0x40(%rsp),%r8
                             0x00007f17a123e2d7: movzbl 0x11(%r8),%r9d     ;*getfield captures
                                                                           ; - com.google.re2j.Machine::match@292 (line 242)
  0.01%                      0x00007f17a123e2dc: mov    0x4c(%rsp),%ebx
  0.01%                      0x00007f17a123e2e0: lea    (%r12,%rbx,8),%r8  ;*invokevirtual add
                                                                           ; - com.google.re2j.Machine::match@322 (line 245)
                             0x00007f17a123e2e4: mov    %r8,0x58(%rsp)
                             0x00007f17a123e2e9: shl    $0x3,%rcx          ;*getfield q1
                                                                           ; - com.google.re2j.Machine::match@62 (line 194)
  0.00%                      0x00007f17a123e2ed: shr    $0x3,%r8           ;*aastore
                                                                           ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                           ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                           ; - com.google.re2j.Machine::match@322 (line 245)
                             0x00007f17a123e2f1: mov    %r8d,0x14(%rsp)
           0.00%             0x00007f17a123e2f6: mov    %rcx,0x70(%rsp)
           0.00%             0x00007f17a123e2fb: xor    %eax,%eax
                             0x00007f17a123e2fd: mov    $0x1,%ecx
  0.01%                      0x00007f17a123e302: xor    %r8d,%r8d
                             0x00007f17a123e305: mov    %ecx,0x24(%rsp)
                             0x00007f17a123e309: mov    %r8d,0x20(%rsp)
                   ╭         0x00007f17a123e30e: jmpq   0x00007f17a123e478
  0.40%    0.34%   │   ↗     0x00007f17a123e313: or     $0x20,%r9d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                   │   │                                                   ; - com.google.re2j.Machine::match@330 (line 247)
  0.09%    0.07%   │   │     0x00007f17a123e317: mov    %r9d,0x34(%rsp)    ;*iload_2
                   │   │                                                   ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   │   │                                                   ; - com.google.re2j.Machine::match@330 (line 247)
  0.16%    0.26%   │   │↗    0x00007f17a123e31c: mov    0x60(%rsp),%r11d
  0.10%    0.06%   │   ││    0x00007f17a123e321: cmp    0x6c(%rsp),%r11d
                   │   ││    0x00007f17a123e326: je     0x00007f17a123eaa1  ;*if_icmpne
                   │   ││                                                  ; - com.google.re2j.Machine::match@355 (line 248)
  0.49%    0.60%   │   ││    0x00007f17a123e32c: xor    %r10d,%r10d
  0.10%    0.14%   │   ││    0x00007f17a123e32f: mov    0x40(%rsp),%rsi
  0.12%    0.09%   │   ││    0x00007f17a123e334: mov    0x18(%rsp),%rdx
  0.10%    0.11%   │   ││    0x00007f17a123e339: mov    0x70(%rsp),%rcx
  0.44%    0.63%   │   ││    0x00007f17a123e33e: mov    0x60(%rsp),%r8d
  0.10%    0.13%   │   ││    0x00007f17a123e343: mov    0x20(%rsp),%r9d
  0.06%    0.08%   │   ││    0x00007f17a123e348: mov    0x34(%rsp),%r11d
  0.08%    0.12%   │   ││    0x00007f17a123e34d: mov    %r11d,(%rsp)
  0.78%    0.55%   │   ││    0x00007f17a123e351: xor    %r11d,%r11d
  0.08%    0.14%   │   ││    0x00007f17a123e354: mov    %r11d,0x8(%rsp)
  0.25%    0.12%   │   ││    0x00007f17a123e359: mov    %r10d,0x10(%rsp)
  0.30%    0.06%   │   ││    0x00007f17a123e35e: nop
  0.42%    0.21%   │   ││    0x00007f17a123e35f: callq  0x00007f17a1046020  ; OopMap{[20]=NarrowOop [24]=Oop [44]=NarrowOop [64]=Oop [76]=NarrowOop [80]=Oop [88]=Oop [112]=Oop off=708}
                   │   ││                                                  ;*invokespecial step
                   │   ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
                   │   ││                                                  ;   {optimized virtual_call}
  0.01%            │   ││    0x00007f17a123e364: mov    0x40(%rsp),%r10
  0.78%    0.59%   │   ││    0x00007f17a123e369: movzbl 0x11(%r10),%r9d    ;*getfield captures
                   │   ││                                                  ; - com.google.re2j.Machine::match@375 (line 252)
  0.02%    0.01%   │   ││    0x00007f17a123e36e: movzbl 0x10(%r10),%eax    ;*getfield matched
                   │   ││                                                  ; - com.google.re2j.Machine::match@382 (line 252)
  0.00%    0.00%   │   ││    0x00007f17a123e373: mov    0x28(%rsp),%r10d
  0.72%    0.70%   │   ││    0x00007f17a123e378: test   %r10d,%r10d
                   │   ││    0x00007f17a123e37b: je     0x00007f17a123eaac  ;*ifne
                   │   ││                                                  ; - com.google.re2j.Machine::match@368 (line 249)
  0.00%            │   ││    0x00007f17a123e381: test   %r9d,%r9d
                   │   ││    0x00007f17a123e384: jne    0x00007f17a123edd9  ;*ifne
                   │   ││                                                  ; - com.google.re2j.Machine::match@378 (line 252)
  0.01%    0.00%   │   ││    0x00007f17a123e38a: test   %eax,%eax
                   │   ││    0x00007f17a123e38c: jne    0x00007f17a123efe5  ;*ifeq
                   │   ││                                                  ; - com.google.re2j.Machine::match@385 (line 252)
           0.01%   │   ││    0x00007f17a123e392: mov    0x50(%rsp),%r10
  0.72%    0.76%   │   ││    0x00007f17a123e397: mov    0x10(%r10),%r8d    ;*getfield end
                   │   ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                   │   ││                                                  ; - com.google.re2j.Machine::match@415 (line 261)
  0.00%    0.00%   │   ││    0x00007f17a123e39b: mov    0xc(%r10),%r10d    ;*getfield start
                   │   ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                   │   ││                                                  ; - com.google.re2j.Machine::match@415 (line 261)
  0.01%    0.01%   │   ││    0x00007f17a123e39f: mov    %r10d,0x78(%rsp)
  0.03%    0.03%   │   ││    0x00007f17a123e3a4: mov    0x50(%rsp),%r10
  0.66%    0.89%   │   ││    0x00007f17a123e3a9: mov    0x14(%r10),%r14d   ;*getfield str
                   │   ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                   │   ││                                                  ; - com.google.re2j.Machine::match@415 (line 261)
  0.02%    0.01%   │   ││    0x00007f17a123e3ad: mov    0x38(%rsp),%r11d
           0.00%   │   ││    0x00007f17a123e3b2: cmp    $0xffffffff,%r11d
                   │   ││    0x00007f17a123e3b6: je     0x00007f17a123ead1  ;*if_icmpeq
                   │   ││                                                  ; - com.google.re2j.Machine::match@407 (line 260)
  0.03%    0.03%   │   ││    0x00007f17a123e3bc: mov    0x30(%rsp),%ebx
  0.70%    1.10%   │   ││    0x00007f17a123e3c0: add    0x20(%rsp),%ebx
  0.00%            │   ││    0x00007f17a123e3c4: add    0x78(%rsp),%ebx    ;*iadd
                   │   ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                   │   ││                                                  ; - com.google.re2j.Machine::match@415 (line 261)
  0.07%    0.08%   │   ││    0x00007f17a123e3c8: cmp    %r8d,%ebx
                   │   ││    0x00007f17a123e3cb: jge    0x00007f17a123eadf  ;*if_icmpge
                   │   ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                   │   ││                                                  ; - com.google.re2j.Machine::match@415 (line 261)
  0.16%    0.18%   │   ││    0x00007f17a123e3d1: mov    0x8(%r12,%r14,8),%r11d  ; implicit exception: dispatches to 0x00007f17a123ffa5
  0.60%    0.81%   │   ││    0x00007f17a123e3d6: cmp    $0xf80002da,%r11d  ;   {metadata(&apos;java/lang/String&apos;)}
                   │   ││    0x00007f17a123e3dd: jne    0x00007f17a123ed21
  0.08%    0.12%   │   ││    0x00007f17a123e3e3: lea    (%r12,%r14,8),%r10  ;*invokeinterface charAt
                   │   ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │   ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │   ││                                                  ; - com.google.re2j.Machine::match@415 (line 261)
                   │   ││    0x00007f17a123e3e7: test   %ebx,%ebx
                   │   ││    0x00007f17a123e3e9: jl     0x00007f17a123ee2d  ;*iflt
                   │   ││                                                  ; - java.lang.String::charAt@1 (line 657)
                   │   ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │   ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │   ││                                                  ; - com.google.re2j.Machine::match@415 (line 261)
  0.14%    0.25%   │   ││    0x00007f17a123e3ef: mov    0xc(%r10),%edi     ;*getfield value
                   │   ││                                                  ; - java.lang.String::charAt@6 (line 657)
                   │   ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │   ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │   ││                                                  ; - com.google.re2j.Machine::match@415 (line 261)
  0.46%    0.59%   │   ││    0x00007f17a123e3f3: mov    0xc(%r12,%rdi,8),%ebp  ;*arraylength
                   │   ││                                                  ; - java.lang.String::charAt@9 (line 657)
                   │   ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │   ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │   ││                                                  ; - com.google.re2j.Machine::match@415 (line 261)
                   │   ││                                                  ; implicit exception: dispatches to 0x00007f17a123ffb9
  1.39%    1.89%   │   ││    0x00007f17a123e3f8: cmp    %ebp,%ebx
                   │   ││    0x00007f17a123e3fa: jge    0x00007f17a123f039  ;*if_icmplt
                   │   ││                                                  ; - java.lang.String::charAt@10 (line 657)
                   │   ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │   ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │   ││                                                  ; - com.google.re2j.Machine::match@415 (line 261)
  0.71%    1.11%   │   ││    0x00007f17a123e400: cmp    %ebp,%ebx
                   │   ││    0x00007f17a123e402: jae    0x00007f17a123ec4d
  0.19%    0.24%   │   ││    0x00007f17a123e408: lea    (%r12,%rdi,8),%r11
  0.07%    0.10%   │   ││    0x00007f17a123e40c: movzwl 0x10(%r11,%rbx,2),%ecx  ;*caload
                   │   ││                                                  ; - java.lang.String::charAt@27 (line 660)
                   │   ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │   ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │   ││                                                  ; - com.google.re2j.Machine::match@415 (line 261)
  0.05%    0.07%   │   ││    0x00007f17a123e412: cmp    $0xd800,%ecx
                   │   ││    0x00007f17a123e418: jge    0x00007f17a123f0b1  ;*if_icmplt
                   │   ││                                                  ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   │   ││                                                  ; - java.lang.Character::codePointAt@9 (line 4867)
                   │   ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │   ││                                                  ; - com.google.re2j.Machine::match@415 (line 261)
  0.57%    0.76%   │   ││    0x00007f17a123e41e: shl    $0x3,%ecx          ;*ishl
                   │   ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                   │   ││                                                  ; - com.google.re2j.Machine::match@415 (line 261)
  0.30%    0.40%   │   ││    0x00007f17a123e421: mov    %ecx,%ebx
  0.05%    0.04%   │   ││    0x00007f17a123e423: or     $0x1,%ebx
  0.65%    0.70%   │   ││    0x00007f17a123e426: and    $0x7,%ecx
  0.14%    0.17%   │   ││    0x00007f17a123e429: sar    $0x3,%ebx          ;*ishr
                   │   ││                                                  ; - com.google.re2j.Machine::match@423 (line 262)
  0.52%    0.77%   │   ││    0x00007f17a123e42c: or     $0x1,%ecx          ; OopMap{r14=NarrowOop [20]=NarrowOop [24]=Oop [64]=Oop [76]=NarrowOop [80]=Oop [88]=Oop [112]=Oop off=911}
                   │   ││                                                  ;*goto
                   │   ││                                                  ; - com.google.re2j.Machine::match@445 (line 268)
  0.05%    0.04%   │   ││    0x00007f17a123e42f: test   %eax,0x17d4abcb(%rip)        # 0x00007f17b8f89000
                   │   ││                                                  ;*goto
                   │   ││                                                  ; - com.google.re2j.Machine::match@445 (line 268)
                   │   ││                                                  ;   {poll}
  0.01%            │   ││    0x00007f17a123e435: mov    0x40(%rsp),%r10
  0.06%    0.18%   │   ││    0x00007f17a123e43a: mov    0x28(%r10),%r11d   ;*getfield matchcap
                   │   ││                                                  ; - com.google.re2j.Machine::match@311 (line 245)
  0.67%    0.60%   │   ││    0x00007f17a123e43e: mov    0x14(%r10),%esi    ;*getfield re2
                   │   ││                                                  ; - com.google.re2j.Machine::match@178 (line 222)
  0.01%    0.03%   │   ││    0x00007f17a123e442: mov    0x70(%rsp),%r10
                   │   ││    0x00007f17a123e447: shr    $0x3,%r10
  0.12%    0.16%   │   ││    0x00007f17a123e44b: mov    %r10d,0x2c(%rsp)
  0.54%    0.70%   │   ││    0x00007f17a123e450: mov    0x34(%rsp),%r10d
  0.03%    0.03%   │   ││    0x00007f17a123e455: mov    0x38(%rsp),%edi
                   │   ││    0x00007f17a123e459: mov    %ebx,0x38(%rsp)
  0.10%    0.15%   │   ││    0x00007f17a123e45d: mov    0x18(%rsp),%rbx
  0.59%    0.64%   │   ││    0x00007f17a123e462: mov    %rbx,0x70(%rsp)
  0.04%    0.04%   │   ││    0x00007f17a123e467: mov    0x30(%rsp),%ebx
                   │   ││    0x00007f17a123e46b: mov    %ebx,0x28(%rsp)
  0.13%    0.14%   │   ││    0x00007f17a123e46f: mov    %ecx,0x30(%rsp)
  0.54%    0.69%   │   ││    0x00007f17a123e473: mov    %r8d,0x6c(%rsp)    ;*getfield matchcap
                   │   ││                                                  ; - com.google.re2j.Machine::match@311 (line 245)
  0.02%    0.05%   ↘   ││    0x00007f17a123e478: mov    0x2c(%rsp),%ecx
  0.12%    0.06%       ││    0x00007f17a123e47c: movzbl 0x18(%r12,%rcx,8),%r8d  ; implicit exception: dispatches to 0x00007f17a123ff81
  0.15%    0.10%       ││    0x00007f17a123e482: shl    $0x3,%rcx          ;*aload
                       ││                                                  ; - com.google.re2j.Machine::match@145 (line 213)
  0.51%    0.59%       ││    0x00007f17a123e486: mov    %rcx,0x18(%rsp)
  0.02%    0.01%       ││    0x00007f17a123e48b: test   %r8d,%r8d
                       ││    0x00007f17a123e48e: jne    0x00007f17a123e6ec  ;*ifeq
                       ││                                                  ; - com.google.re2j.Machine::match@150 (line 213)
  0.01%    0.00%       ││    0x00007f17a123e494: mov    0x20(%rsp),%r8d
  0.15%    0.14%       ││    0x00007f17a123e499: mov    %r8d,0x60(%rsp)    ;*iload_3
                       ││                                                  ; - com.google.re2j.Machine::match@276 (line 239)
  0.61%    0.68%       ││    0x00007f17a123e49e: test   %eax,%eax
                       ││    0x00007f17a123e4a0: jne    0x00007f17a123ed91  ;*ifne
                       ││                                                  ; - com.google.re2j.Machine::match@288 (line 239)
  0.01%    0.03%       ││    0x00007f17a123e4a6: test   %r9d,%r9d
                       ││    0x00007f17a123e4a9: jne    0x00007f17a123ee9d  ;*ifeq
                       ││                                                  ; - com.google.re2j.Machine::match@295 (line 242)
           0.00%       ││    0x00007f17a123e4af: mov    0x58(%rsp),%r10
  0.12%    0.09%       ││    0x00007f17a123e4b4: mov    0x18(%r10),%r8d    ;*getfield pc
                       ││                                                  ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                       ││                                                  ; - com.google.re2j.Machine::match@322 (line 245)
  0.52%    0.59%       ││    0x00007f17a123e4b8: cmp    $0x40,%r8d
                       ││    0x00007f17a123e4bc: jg     0x00007f17a123eee9  ;*if_icmpgt
                       ││                                                  ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                       ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                       ││                                                  ; - com.google.re2j.Machine::match@322 (line 245)
  0.05%    0.03%       ││    0x00007f17a123e4c2: mov    0x2c(%rsp),%r10d
  0.01%    0.01%       ││    0x00007f17a123e4c7: mov    0x10(%r12,%r10,8),%r10  ;*getfield pcsl
                       ││                                                  ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                       ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                       ││                                                  ; - com.google.re2j.Machine::match@322 (line 245)
  0.11%    0.13%       ││    0x00007f17a123e4cc: mov    $0x1,%ebx
  0.54%    0.61%       ││    0x00007f17a123e4d1: mov    %r8d,%ecx
  0.02%    0.05%       ││    0x00007f17a123e4d4: shl    %cl,%rbx           ;*lshl
                       ││                                                  ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                       ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                       ││                                                  ; - com.google.re2j.Machine::match@322 (line 245)
  0.68%    0.72%       ││    0x00007f17a123e4d7: mov    %r10,%rcx
  0.01%    0.04%       ││    0x00007f17a123e4da: and    %rbx,%rcx          ;*land
                       ││                                                  ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                       ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                       ││                                                  ; - com.google.re2j.Machine::match@322 (line 245)
  0.01%    0.00%       ││    0x00007f17a123e4dd: test   %rcx,%rcx
                       ││    0x00007f17a123e4e0: jne    0x00007f17a123ef39  ;*ifeq
                       ││                                                  ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                       ││                                                  ; - com.google.re2j.Machine::match@322 (line 245)
  0.11%    0.10%       ││    0x00007f17a123e4e6: cmp    $0x40,%r8d
                       ││    0x00007f17a123e4ea: jge    0x00007f17a123ef95  ;*if_icmpge
                       ││                                                  ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                       ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                       ││                                                  ; - com.google.re2j.Machine::match@322 (line 245)
  0.50%    0.56%       ││    0x00007f17a123e4f0: mov    0x2c(%rsp),%r11d
  0.03%    0.04%       ││    0x00007f17a123e4f5: mov    %r12b,0x18(%r12,%r11,8)  ;*putfield empty
                       ││                                                  ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                       ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                       ││                                                  ; - com.google.re2j.Machine::match@322 (line 245)
  0.01%    0.00%       ││    0x00007f17a123e4fa: mov    0x20(%r12,%r11,8),%r11d  ;*getfield denseThreadsInstructions
                       ││                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                       ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                       ││                                                  ; - com.google.re2j.Machine::match@322 (line 245)
  0.14%    0.07%       ││    0x00007f17a123e4ff: mov    0x2c(%rsp),%r8d
  0.57%    0.34%       ││    0x00007f17a123e504: mov    0xc(%r12,%r8,8),%r8d  ;*getfield size
                       ││                                                  ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                       ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                       ││                                                  ; - com.google.re2j.Machine::match@322 (line 245)
  0.02%    0.02%       ││    0x00007f17a123e509: or     %r10,%rbx
           0.00%       ││    0x00007f17a123e50c: mov    0x2c(%rsp),%r9d
  0.17%    0.11%       ││    0x00007f17a123e511: mov    %rbx,0x10(%r12,%r9,8)  ;*putfield pcsl
                       ││                                                  ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                       ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                       ││                                                  ; - com.google.re2j.Machine::match@322 (line 245)
  0.57%    0.25%       ││    0x00007f17a123e516: mov    %r8d,%r9d
  0.03%    0.01%       ││    0x00007f17a123e519: inc    %r9d
  0.00%    0.01%       ││    0x00007f17a123e51c: mov    0x2c(%rsp),%r10d
  0.08%    0.05%       ││    0x00007f17a123e521: mov    %r9d,0xc(%r12,%r10,8)  ;*putfield size
                       ││                                                  ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                       ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                       ││                                                  ; - com.google.re2j.Machine::match@322 (line 245)
  0.56%    0.24%       ││    0x00007f17a123e526: mov    0xc(%r12,%r11,8),%r9d  ; implicit exception: dispatches to 0x00007f17a123ff91
  0.02%    0.03%       ││    0x00007f17a123e52b: cmp    %r9d,%r8d
                       ││    0x00007f17a123e52e: jae    0x00007f17a123ebed
  0.07%    0.04%       ││    0x00007f17a123e534: mov    0x8(%r12,%r11,8),%r9d
  0.13%    0.02%       ││    0x00007f17a123e539: cmp    $0xf8019807,%r9d   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
  0.49%    0.61%       ││    0x00007f17a123e540: jne    0x00007f17a123ecc1  ;*aastore
                       ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                       ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                       ││                                                  ; - com.google.re2j.Machine::match@322 (line 245)
  0.02%    0.07%       ││    0x00007f17a123e546: test   %edi,%edi
                    ╭  ││    0x00007f17a123e548: jl     0x00007f17a123e5fc  ;*ifge
                    │  ││                                                  ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                    │  ││                                                  ; - com.google.re2j.Machine::match@330 (line 247)
  0.05%    0.03%    │  ││    0x00007f17a123e54e: xor    %r9d,%r9d          ;*iload_0
                    │  ││                                                  ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                    │  ││                                                  ; - com.google.re2j.Machine::match@330 (line 247)
  0.10%    0.10%    │  ││↗   0x00007f17a123e551: cmp    $0xa,%edi
                    │  │││   0x00007f17a123e554: je     0x00007f17a123e93e  ;*iload_1
                    │  │││                                                 ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                    │  │││                                                 ; - com.google.re2j.Machine::match@330 (line 247)
  0.54%    0.52%    │  │││   0x00007f17a123e55a: mov    0x38(%rsp),%ecx
  0.03%    0.06%    │  │││   0x00007f17a123e55e: test   %ecx,%ecx
                    │  │││   0x00007f17a123e560: jl     0x00007f17a123e935  ;*iload_1
                    │  │││                                                 ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                    │  │││                                                 ; - com.google.re2j.Machine::match@330 (line 247)
  0.04%    0.03%    │  │││   0x00007f17a123e566: cmp    $0xa,%ecx
                    │  │││   0x00007f17a123e569: je     0x00007f17a123e947  ;*iload_0
                    │  │││                                                 ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                    │  │││                                                 ; - com.google.re2j.Machine::match@330 (line 247)
  0.08%    0.12%    │  │││   0x00007f17a123e56f: mov    0x60(%rsp),%ecx
  0.56%    0.39%    │  │││   0x00007f17a123e573: add    0x28(%rsp),%ecx    ;*iadd
                    │  │││                                                 ; - com.google.re2j.Machine::match@344 (line 248)
  0.04%    0.06%    │  │││   0x00007f17a123e577: mov    %ecx,0x20(%rsp)
  0.03%    0.02%    │  │││   0x00007f17a123e57b: mov    0x38(%rsp),%ecx
  0.07%    0.12%    │  │││   0x00007f17a123e57f: add    $0xffffffbf,%ecx
  0.58%    0.31%    │  │││   0x00007f17a123e582: mov    %edi,%r10d
  0.04%    0.03%    │  │││   0x00007f17a123e585: add    $0xffffffbf,%r10d
  0.07%    0.02%    │  │││   0x00007f17a123e589: shl    $0x3,%r11          ;*getfield denseThreadsInstructions
                    │  │││                                                 ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                    │  │││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                    │  │││                                                 ; - com.google.re2j.Machine::match@322 (line 245)
  0.07%    0.15%    │  │││   0x00007f17a123e58d: lea    0x10(%r11,%r8,4),%r11
  0.56%    0.55%    │  │││   0x00007f17a123e592: mov    0x14(%rsp),%ebx
  0.05%    0.04%    │  │││   0x00007f17a123e596: mov    %ebx,(%r11)
  0.28%    0.29%    │  │││   0x00007f17a123e599: shr    $0x9,%r11
  0.06%    0.09%    │  │││   0x00007f17a123e59d: movabs $0x7f17b1991000,%r8
  0.61%    0.58%    │  │││   0x00007f17a123e5a7: mov    %r12b,(%r8,%r11,1)  ;*invokevirtual endPos
                    │  │││                                                 ; - com.google.re2j.Machine::match@352 (line 248)
  0.14%    0.19%    │  │││   0x00007f17a123e5ab: cmp    $0x1a,%r10d
                    │╭ │││   0x00007f17a123e5af: jb     0x00007f17a123e5c2  ;*if_icmple
                    ││ │││                                                 ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                    ││ │││                                                 ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    ││ │││                                                 ; - com.google.re2j.Machine::match@330 (line 247)
  0.04%    0.08%    ││ │││   0x00007f17a123e5b1: mov    %edi,%r10d
  0.11%    0.09%    ││ │││   0x00007f17a123e5b4: add    $0xffffff9f,%r10d
  0.44%    0.50%    ││ │││   0x00007f17a123e5b8: cmp    $0x1a,%r10d
                    ││ │││   0x00007f17a123e5bc: jae    0x00007f17a123eb48  ;*iconst_1
                    ││ │││                                                 ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                    ││ │││                                                 ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    ││ │││                                                 ; - com.google.re2j.Machine::match@330 (line 247)
  0.09%    0.15%    │↘ │││   0x00007f17a123e5c2: mov    $0x1,%ebp          ;*ireturn
                    │  │││                                                 ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                    │  │││                                                 ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    │  │││                                                 ; - com.google.re2j.Machine::match@330 (line 247)
  0.06%    0.07%    │  │││   0x00007f17a123e5c7: cmp    $0x1a,%ecx
                    │ ╭│││   0x00007f17a123e5ca: jb     0x00007f17a123e5df  ;*if_icmple
                    │ ││││                                                 ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                    │ ││││                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    │ ││││                                                 ; - com.google.re2j.Machine::match@330 (line 247)
  0.10%    0.15%    │ ││││   0x00007f17a123e5cc: mov    0x38(%rsp),%r10d
  0.40%    0.50%    │ ││││   0x00007f17a123e5d1: add    $0xffffff9f,%r10d
  0.09%    0.15%    │ ││││   0x00007f17a123e5d5: cmp    $0x1a,%r10d
                    │ ││││   0x00007f17a123e5d9: jae    0x00007f17a123eb1e  ;*iconst_1
                    │ ││││                                                 ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                    │ ││││                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    │ ││││                                                 ; - com.google.re2j.Machine::match@330 (line 247)
  0.07%    0.08%    │ ↘│││   0x00007f17a123e5df: mov    $0x1,%r11d         ;*ireturn
                    │  │││                                                 ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                    │  │││                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    │  │││                                                 ; - com.google.re2j.Machine::match@330 (line 247)
  0.27%    0.26%    │  │││   0x00007f17a123e5e5: cmp    %r11d,%ebp
                    │  ╰││   0x00007f17a123e5e8: je     0x00007f17a123e313  ;*if_icmpeq
                    │   ││                                                 ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                    │   ││                                                 ; - com.google.re2j.Machine::match@330 (line 247)
  0.06%    0.03%    │   ││   0x00007f17a123e5ee: or     $0x10,%r9d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                    │   ││                                                 ; - com.google.re2j.Machine::match@330 (line 247)
  0.11%    0.10%    │   ││   0x00007f17a123e5f2: mov    %r9d,0x34(%rsp)
  0.11%    0.14%    │   ╰│   0x00007f17a123e5f7: jmpq   0x00007f17a123e31c
           0.00%    ↘    │   0x00007f17a123e5fc: mov    $0x5,%r9d
                         ╰   0x00007f17a123e602: jmpq   0x00007f17a123e551
                             0x00007f17a123e607: nopw   0x0(%rax,%rax,1)
           0.00%             0x00007f17a123e610: mov    %r8d,0x68(%rsp)
  0.01%    0.01%             0x00007f17a123e615: jmpq   0x00007f17a123e877
                             0x00007f17a123e61a: mov    0x68(%rsp),%r8d
                             0x00007f17a123e61f: add    $0x2,%r8d
                             0x00007f17a123e623: mov    %r8d,0x68(%rsp)
                             0x00007f17a123e628: mov    0x68(%rsp),%r8d
                             0x00007f17a123e62d: inc    %r8d
  0.00%                      0x00007f17a123e630: mov    %r8d,0x64(%rsp)
                             0x00007f17a123e635: jmp    0x00007f17a123e662
  0.01%                      0x00007f17a123e637: mov    0x68(%rsp),%r8d
  0.01%                      0x00007f17a123e63c: add    $0x2,%r8d
                             0x00007f17a123e640: mov    %r8d,0x64(%rsp)
  0.00%                   ╭  0x00007f17a123e645: jmp    0x00007f17a123e655
                          │  0x00007f17a123e647: mov    0x68(%rsp),%r8d
                          │  0x00007f17a123e64c: add    $0x2,%r8d
                          │  0x00007f17a123e650: mov    %r8d,0x68(%rsp)
                          ↘  0x00007f17a123e655: mov    0x68(%rsp),%r8d
                             0x00007f17a123e65a: inc    %r8d               ;*iinc
                                                                           ; - java.lang.String::indexOf@69 (line 1772)
                                                                           ; - java.lang.String::indexOf@21 (line 1718)
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                                                                           ; - com.google.re2j.Machine::match@215 (line 226)
....................................................................................................
 30.31%   32.34%  <total for region 2>

....[Hottest Regions]...............................................................................
 46.45%   45.22%         C2, level 4  com.google.re2j.Machine::step, version 501 (942 bytes) 
 30.31%   32.34%         C2, level 4  com.google.re2j.Machine::match, version 540 (1142 bytes) 
  8.37%    8.30%         C2, level 4  com.google.re2j.Machine::step, version 501 (339 bytes) 
  8.29%    8.95%         C2, level 4  com.google.re2j.Machine::step, version 501 (159 bytes) 
  1.65%    1.84%         C2, level 4  com.google.re2j.Machine::match, version 540 (70 bytes) 
  0.35%    0.34%   [kernel.kallsyms]  [unknown] (6 bytes) 
  0.30%    0.12%         C2, level 4  com.google.re2j.Machine::match, version 540 (270 bytes) 
  0.28%    0.08%         C2, level 4  com.google.re2j.RE2::match, version 560 (64 bytes) 
  0.17%    0.06%         C2, level 4  java.util.Collections::shuffle, version 565 (240 bytes) 
  0.16%    0.11%         C2, level 4  com.google.re2j.Machine::match, version 540 (250 bytes) 
  0.15%    0.14%         C2, level 4  com.google.re2j.RE2::match, version 560 (28 bytes) 
  0.14%    0.07%         C2, level 4  com.google.re2j.RE2::match, version 560 (5 bytes) 
  0.14%    0.01%         C2, level 4  com.google.re2j.RE2::match, version 560 (143 bytes) 
  0.13%    0.11%         C2, level 4  com.google.re2j.RE2::match, version 560 (0 bytes) 
  0.09%    0.02%              [vdso]  [unknown] (2 bytes) 
  0.09%    0.07%         C2, level 4  com.google.re2j.RE2::match, version 560 (5 bytes) 
  0.09%                  C2, level 4  com.google.re2j.Machine::match, version 540 (83 bytes) 
  0.09%    0.05%         C2, level 4  com.google.re2j.Machine::match, version 540 (145 bytes) 
  0.08%    0.01%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.07%    0.00%   [kernel.kallsyms]  [unknown] (37 bytes) 
  2.59%    2.13%  <...other 441 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 63.11%   62.47%         C2, level 4  com.google.re2j.Machine::step, version 501 
 32.86%   34.59%         C2, level 4  com.google.re2j.Machine::match, version 540 
  1.44%    1.29%   [kernel.kallsyms]  [unknown] 
  1.23%    0.55%         C2, level 4  com.google.re2j.RE2::match, version 560 
  0.25%    0.11%         C2, level 4  java.util.Collections::shuffle, version 565 
  0.16%    0.03%              [vdso]  [unknown] 
  0.15%    0.05%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 597 
  0.04%                  C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 564 
  0.03%    0.05%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.03%    0.05%      hsdis-amd64.so  [unknown] 
  0.03%    0.09%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.03%    0.03%           libjvm.so  _ZN18PSPromotionManager18drain_stacks_depthEb 
  0.02%    0.00%           libjvm.so  _ZN19GenericTaskQueueSetI17OverflowTaskQueueI8StarTaskL10MemoryType1ELj131072EELS2_1EE15steal_best_of_2EjPiRS1_ 
  0.02%    0.03%        libc-2.26.so  _IO_fwrite 
  0.02%           libpthread-2.26.so  __libc_write 
  0.02%    0.01%  libpthread-2.26.so  __pthread_enable_asynccancel 
  0.02%    0.00%           libjvm.so  _ZN10decode_env12handle_eventEPKcPh 
  0.02%    0.02%        libc-2.26.so  _IO_default_xsputn 
  0.02%    0.01%           libjvm.so  _ZN13defaultStream5writeEPKcm 
  0.02%    0.07%        libc-2.26.so  vfprintf 
  0.47%    0.27%  <...other 71 warm methods...>
....................................................................................................
100.00%   99.76%  <totals>

....[Distribution by Source]........................................................................
 97.63%   97.78%         C2, level 4
  1.44%    1.29%   [kernel.kallsyms]
  0.45%    0.56%           libjvm.so
  0.16%    0.03%              [vdso]
  0.15%    0.24%        libc-2.26.so
  0.10%    0.04%  libpthread-2.26.so
  0.03%    0.05%      hsdis-amd64.so
  0.03%    0.00%         interpreter
  0.01%                 runtime stub
  0.00%                  C1, level 1
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                     Mode  Cnt      Score     Error  Units
Re2jFindRegex.testExp1       thrpt   20  22593.506 ± 214.644  ops/s
Re2jFindRegex.testExp1:·asm  thrpt             NaN              ---
