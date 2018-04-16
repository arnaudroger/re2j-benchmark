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
# Warmup Iteration   1: 15428.832 ops/s
# Warmup Iteration   2: 27340.334 ops/s
# Warmup Iteration   3: 27371.886 ops/s
# Warmup Iteration   4: 27670.654 ops/s
# Warmup Iteration   5: 27696.598 ops/s
# Warmup Iteration   6: 27249.984 ops/s
# Warmup Iteration   7: 27354.325 ops/s
# Warmup Iteration   8: 27358.744 ops/s
# Warmup Iteration   9: 27401.118 ops/s
# Warmup Iteration  10: 27449.977 ops/s
# Warmup Iteration  11: 27309.122 ops/s
# Warmup Iteration  12: 27844.705 ops/s
# Warmup Iteration  13: 27446.031 ops/s
# Warmup Iteration  14: 28009.024 ops/s
# Warmup Iteration  15: 28026.703 ops/s
# Warmup Iteration  16: 27988.125 ops/s
# Warmup Iteration  17: 27731.594 ops/s
# Warmup Iteration  18: 27862.010 ops/s
# Warmup Iteration  19: 28090.240 ops/s
# Warmup Iteration  20: 28105.885 ops/s
Iteration   1: 28008.881 ops/s
Iteration   2: 27778.029 ops/s
Iteration   3: 27813.362 ops/s
Iteration   4: 27890.399 ops/s
Iteration   5: 27656.867 ops/s
Iteration   6: 28020.162 ops/s
Iteration   7: 27751.651 ops/s
Iteration   8: 27896.774 ops/s
Iteration   9: 28021.443 ops/s
Iteration  10: 28007.741 ops/s
Iteration  11: 27982.040 ops/s
Iteration  12: 27989.711 ops/s
Iteration  13: 28024.601 ops/s
Iteration  14: 27990.278 ops/s
Iteration  15: 27921.282 ops/s
Iteration  16: 27861.424 ops/s
Iteration  17: 27581.708 ops/s
Iteration  18: 27901.729 ops/s
Iteration  19: 28052.571 ops/s
Iteration  20: 27910.702 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  27903.068 ±(99.9%) 112.898 ops/s [Average]
  (min, avg, max) = (27581.708, 27903.068, 28052.571), stdev = 130.014
  CI (99.9%): [27790.169, 28015.966] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1:·asm":
PrintAssembly processed: 212422 total address lines.
Perf output processed (skipped 23.227 seconds):
 Column 1: cycles (20416 events)
 Column 2: instructions (20417 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 555 (942 bytes) 

                      0x00007f3494e22462: jae    0x00007f3494e22c15
                      0x00007f3494e22468: mov    %rdx,%r10
                      0x00007f3494e2246b: mov    %r9,%r11
                      0x00007f3494e2246e: shr    $0x3,%r11
                      0x00007f3494e22472: mov    %r11d,(%rdx)
                      0x00007f3494e22475: shr    $0x9,%r10
                      0x00007f3494e22479: movabs $0x7f3490601000,%r11
                      0x00007f3494e22483: mov    %r12b,(%r11,%r10,1)  ;*synchronization entry
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 280)
  0.27%    0.27%   ↗  0x00007f3494e22487: mov    0x28(%rsp),%r13
  0.24%    0.36%   │  0x00007f3494e2248c: mov    0x30(%rsp),%r11
  0.14%    0.11%   │  0x00007f3494e22491: mov    0xac(%rsp),%r9d
  0.03%    0.04%   │  0x00007f3494e22499: mov    0xc(%rsp),%r14d
  0.29%    0.22%   │  0x00007f3494e2249e: mov    0x38(%rsp),%rdx
  0.26%    0.29%   │  0x00007f3494e224a3: mov    0xa4(%rsp),%ebx
  0.14%    0.14%   │  0x00007f3494e224aa: mov    0x44(%rsp),%r10d   ;*aload
                   │                                                ; - com.google.re2j.Machine::step@219 (line 320)
  1.67%    1.89%  ↗│  0x00007f3494e224af: inc    %r10d              ;*iinc
                  ││                                                ; - com.google.re2j.Machine::step@230 (line 286)
  0.34%    0.21%  ││  0x00007f3494e224b2: cmp    %r9d,%r10d
                  ││  0x00007f3494e224b5: jge    0x00007f3494e22994
  0.25%    0.37%  ││  0x00007f3494e224bb: mov    %r11,%rax          ;*iload
                  ││                                                ; - com.google.re2j.Machine::step@43 (line 289)
  0.80%    0.68%  ││  0x00007f3494e224be: mov    0x10(%rdx,%r10,4),%r11d  ;*aaload
                  ││                                                ; - com.google.re2j.Machine::step@99 (line 299)
  1.32%    1.41%  ││  0x00007f3494e224c3: mov    0xc(%r12,%r11,8),%r8d  ;*getfield op
                  ││                                                ; - com.google.re2j.Machine::step@104 (line 301)
                  ││                                                ; implicit exception: dispatches to 0x00007f3494e23981
  0.91%    0.75%  ││  0x00007f3494e224c8: cmp    $0x6,%r8d
                  ││  0x00007f3494e224cc: je     0x00007f3494e22a79  ;*if_icmpne
                  ││                                                ; - com.google.re2j.Machine::step@109 (line 301)
  0.93%    0.76%  ││  0x00007f3494e224d2: cmp    $0xa,%r8d
                  ││  0x00007f3494e224d6: jne    0x00007f3494e22921  ;*if_icmpne
                  ││                                                ; - com.google.re2j.Inst::matchRune@6 (line 90)
                  ││                                                ; - com.google.re2j.Machine::step@191 (line 316)
  0.18%    0.28%  ││  0x00007f3494e224dc: mov    0x2c(%r12,%r11,8),%ecx  ;*getfield outInst
                  ││                                                ; - com.google.re2j.Machine::step@199 (line 317)
  0.40%    0.44%  ││  0x00007f3494e224e1: mov    0x8(%r12,%rcx,8),%r11d  ; implicit exception: dispatches to 0x00007f3494e23991
  0.79%    0.69%  ││  0x00007f3494e224e6: lea    (%r12,%rcx,8),%r8
  0.06%    0.07%  ││  0x00007f3494e224ea: cmp    $0xf8019843,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                  ││  0x00007f3494e224f1: jne    0x00007f3494e229c6  ;*invokevirtual add
                  ││                                                ; - com.google.re2j.Machine::step@214 (line 317)
  0.42%    0.48%  ││  0x00007f3494e224f7: mov    0x18(%r8),%edi     ;*getfield pc
                  ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 175)
                  ││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.22%    0.21%  ││  0x00007f3494e224fb: mov    %rax,%r11
  0.04%    0.05%  ││  0x00007f3494e224fe: mov    0x10(%rax),%rsi    ;*getfield pcsl
                  ││                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                  ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                  ││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
                  ││                                                ; implicit exception: dispatches to 0x00007f3494e239a5
  0.03%    0.08%  ││  0x00007f3494e22502: cmp    $0x40,%edi
                  ││  0x00007f3494e22505: jg     0x00007f3494e22d65  ;*if_icmpgt
                  ││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                  ││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.46%    0.52%  ││  0x00007f3494e2250b: mov    $0x1,%eax
  0.21%    0.23%  ││  0x00007f3494e22510: mov    %edi,%ecx
  0.05%    0.06%  ││  0x00007f3494e22512: shl    %cl,%rax           ;*lshl
                  ││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                  ││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  1.01%    1.25%  ││  0x00007f3494e22515: mov    %rsi,%rcx
  0.04%    0.04%  ││  0x00007f3494e22518: and    %rax,%rcx
  0.08%    0.09%  ││  0x00007f3494e2251b: test   %rcx,%rcx
                  ╰│  0x00007f3494e2251e: jne    0x00007f3494e224af  ;*ifeq
                   │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.35%    0.34%   │  0x00007f3494e22520: cmp    $0x40,%edi
                   │  0x00007f3494e22523: jge    0x00007f3494e22dd5  ;*if_icmpge
                   │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.26%    0.31%   │  0x00007f3494e22529: mov    %r12b,0x18(%r11)   ;*putfield empty
                   │                                                ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.04%   │  0x00007f3494e2252d: mov    0x2c(%r8),%ebp     ;*getfield outInst
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.05%   │  0x00007f3494e22531: or     %rsi,%rax          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.42%    0.35%   │  0x00007f3494e22534: mov    %rax,0x10(%r11)    ;*putfield pcsl
                   │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.24%    0.25%   │  0x00007f3494e22538: mov    0x8(%r12,%rbp,8),%esi  ; implicit exception: dispatches to 0x00007f3494e239b9
  0.74%    0.84%   │  0x00007f3494e2253d: cmp    $0xf8019909,%esi   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                   │  0x00007f3494e22543: jne    0x00007f3494e22b29
  0.67%    0.57%   │  0x00007f3494e22549: shl    $0x3,%rbp          ;*invokevirtual add
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.02%   │  0x00007f3494e2254d: mov    0x18(%rbp),%edi    ;*getfield pc
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  1.37%    1.40%   │  0x00007f3494e22550: cmp    $0x40,%edi
                   │  0x00007f3494e22553: jg     0x00007f3494e22e41  ;*if_icmpgt
                   │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.56%    0.48%   │  0x00007f3494e22559: mov    $0x1,%esi
  0.09%    0.08%   │  0x00007f3494e2255e: mov    %edi,%ecx
  0.00%    0.00%   │  0x00007f3494e22560: shl    %cl,%rsi           ;*lshl
                   │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  1.35%    1.38%   │  0x00007f3494e22563: mov    %rax,%rcx
                   │  0x00007f3494e22566: and    %rsi,%rcx          ;*land
                   │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%            │  0x00007f3494e22569: test   %rcx,%rcx
                   │  0x00007f3494e2256c: jne    0x00007f3494e22eb5  ;*ifeq
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.41%    0.42%   │  0x00007f3494e22572: cmp    $0x40,%edi
                   │  0x00007f3494e22575: jge    0x00007f3494e22f35  ;*if_icmpge
                   │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.52%    0.44%   │  0x00007f3494e2257b: mov    %rbp,%rcx
  0.01%            │  0x00007f3494e2257e: mov    %r10d,0x44(%rsp)
                   │  0x00007f3494e22583: mov    %ebx,0xa4(%rsp)
  0.22%    0.26%   │  0x00007f3494e2258a: mov    %rdx,0x38(%rsp)
  0.42%    0.60%   │  0x00007f3494e2258f: mov    %r14d,0xc(%rsp)
                   │  0x00007f3494e22594: mov    %r9d,0xac(%rsp)
                   │  0x00007f3494e2259c: mov    %r11,0x30(%rsp)
  0.23%    0.31%   │  0x00007f3494e225a1: mov    %r13,0x28(%rsp)
  0.40%    0.41%   │  0x00007f3494e225a6: or     %rsi,%rax          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
                   │  0x00007f3494e225a9: mov    %rax,0x10(%r11)    ;*putfield pcsl
                   │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
                   │  0x00007f3494e225ad: mov    0x20(%r11),%r10d   ;*getfield denseThreadsInstructions
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.27%    0.37%   │  0x00007f3494e225b1: mov    %r10d,%r13d
  0.30%    0.34%   │  0x00007f3494e225b4: mov    0xc(%r11),%r10d    ;*getfield size
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
           0.01%   │  0x00007f3494e225b8: mov    %r10d,%r14d
                   │  0x00007f3494e225bb: inc    %r10d              ;*iadd
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.27%    0.30%   │  0x00007f3494e225be: vmovd  %r10d,%xmm0
  0.44%    0.30%   │  0x00007f3494e225c3: mov    %r10d,0xc(%r11)    ;*putfield size
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
                   │  0x00007f3494e225c7: mov    %r13d,%r10d
  0.01%            │  0x00007f3494e225ca: mov    0xc(%r12,%r10,8),%ebx  ; implicit exception: dispatches to 0x00007f3494e239cd
  0.31%    0.31%   │  0x00007f3494e225cf: mov    %r14d,%r10d
  0.50%    0.42%   │  0x00007f3494e225d2: cmp    %ebx,%r10d
                   │  0x00007f3494e225d5: jae    0x00007f3494e22ae1
           0.01%   │  0x00007f3494e225db: mov    %r13d,%r10d
  0.00%    0.00%   │  0x00007f3494e225de: mov    0x8(%r12,%r10,8),%r11d
  0.24%    0.32%   │  0x00007f3494e225e3: cmp    $0xf8019807,%r11d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                   │  0x00007f3494e225ea: jne    0x00007f3494e22b99  ;*aastore
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.32%    0.45%   │  0x00007f3494e225f0: mov    0x34(%r8),%r10d    ;*getfield inst2
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@43 (line 181)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
           0.00%   │  0x00007f3494e225f4: vmovd  %r10d,%xmm2
                   │  0x00007f3494e225f9: mov    %rbp,%r10
  0.33%    0.22%   │  0x00007f3494e225fc: shr    $0x3,%r10          ;*aastore
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.37%    0.32%   │  0x00007f3494e22600: lea    (%r12,%r13,8),%r9  ;*getfield denseThreadsInstructions
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
           0.01%   │  0x00007f3494e22604: lea    0x10(%r9,%r14,4),%r11
  0.00%    0.00%   │  0x00007f3494e22609: mov    %r10d,(%r11)
  0.26%    0.24%   │  0x00007f3494e2260c: mov    %r11,%r10
  0.43%    0.25%   │  0x00007f3494e2260f: shr    $0x9,%r10
  0.00%    0.00%   │  0x00007f3494e22613: movabs $0x7f3490601000,%r11
                   │  0x00007f3494e2261d: mov    %r12b,(%r11,%r10,1)  ;*aastore
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.32%    0.22%   │  0x00007f3494e22621: vmovd  %xmm2,%r10d
  0.46%    0.42%   │  0x00007f3494e22626: mov    0x8(%r12,%r10,8),%r10d  ;*invokevirtual add
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
                   │                                                ; implicit exception: dispatches to 0x00007f3494e239e9
  0.00%            │  0x00007f3494e2262b: movslq %r14d,%r11
  0.00%    0.00%   │  0x00007f3494e2262e: lea    (%r9,%r11,4),%rdi  ;*aastore
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.31%    0.21%   │  0x00007f3494e22632: mov    %rdi,%rdx
  0.46%    0.33%   │  0x00007f3494e22635: add    $0x14,%rdx         ;*aastore
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%    0.00%   │  0x00007f3494e22639: vmovd  %xmm2,%r11d
           0.00%   │  0x00007f3494e2263e: shl    $0x3,%r11
  0.23%    0.13%   │  0x00007f3494e22642: mov    %r14d,%r8d
  0.43%    0.19%   │  0x00007f3494e22645: add    $0x2,%r8d          ;*iadd
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
           0.00%   │  0x00007f3494e22649: cmp    $0xf8019885,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                   │  0x00007f3494e22650: jne    0x00007f3494e22404  ;*invokevirtual add
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%            │  0x00007f3494e22656: vmovq  %r11,%xmm1
  0.24%    0.16%   │  0x00007f3494e2265b: mov    0x18(%r11),%r10d   ;*getfield pc
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@2 (line 461)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.48%    0.25%   │  0x00007f3494e2265f: mov    %r10d,%ecx
                   │  0x00007f3494e22662: cmp    $0x40,%r10d
                   │  0x00007f3494e22666: jg     0x00007f3494e23135  ;*if_icmpgt
                   │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
                   │  0x00007f3494e2266c: mov    $0x1,%r11d
  0.32%    0.06%   │  0x00007f3494e22672: shl    %cl,%r11           ;*lshl
                   │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.42%    0.14%   │  0x00007f3494e22675: mov    %rax,%r10
  0.26%    0.13%   │  0x00007f3494e22678: and    %r11,%r10          ;*land
                   │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.33%    0.23%   │  0x00007f3494e2267b: test   %r10,%r10
                   │  0x00007f3494e2267e: jne    0x00007f3494e23171  ;*ifeq
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@8 (line 461)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%    0.01%   │  0x00007f3494e22684: mov    %ecx,%r10d
           0.00%   │  0x00007f3494e22687: cmp    $0x40,%r10d
                   │  0x00007f3494e2268b: jge    0x00007f3494e231c5  ;*if_icmpge
                   │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.24%    0.30%   │  0x00007f3494e22691: or     %r11,%rax          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.41%    0.49%   │  0x00007f3494e22694: mov    0x30(%rsp),%r10
                   │  0x00007f3494e22699: mov    %rax,0x10(%r10)    ;*putfield pcsl
                   │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
                   │  0x00007f3494e2269d: vmovq  %xmm1,%r10
  0.25%    0.09%   │  0x00007f3494e226a2: mov    0x2c(%r10),%ebp    ;*getfield outInst
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@82 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.48%    0.02%   │  0x00007f3494e226a6: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f3494e23a1d
                   │  0x00007f3494e226ab: cmp    $0xf8019843,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                   │  0x00007f3494e226b2: jne    0x00007f3494e22d01
  0.05%    0.01%   │  0x00007f3494e226b8: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.25%    0.21%   │  0x00007f3494e226bc: vmovq  %r10,%xmm1
  0.45%    0.55%   │  0x00007f3494e226c1: mov    0x18(%r10),%r10d   ;*getfield pc
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 175)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%    0.01%   │  0x00007f3494e226c5: mov    %r10d,%ecx
  0.00%    0.03%   │  0x00007f3494e226c8: cmp    $0x40,%r10d
                   │  0x00007f3494e226cc: jg     0x00007f3494e23341  ;*if_icmpgt
                   │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.36%    0.39%   │  0x00007f3494e226d2: mov    $0x1,%r11d
  0.36%    0.52%   │  0x00007f3494e226d8: shl    %cl,%r11           ;*lshl
                   │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.30%    0.34%   │  0x00007f3494e226db: mov    %rax,%r10
  0.35%    0.40%   │  0x00007f3494e226de: and    %r11,%r10
                   │  0x00007f3494e226e1: test   %r10,%r10
                   ╰  0x00007f3494e226e4: jne    0x00007f3494e22487  ;*ifeq
                                                                    ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.04%      0x00007f3494e226ea: mov    %ecx,%r10d
  0.31%    0.25%      0x00007f3494e226ed: cmp    $0x40,%r10d
                      0x00007f3494e226f1: jge    0x00007f3494e2337d  ;*if_icmpge
                                                                    ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 280)
  0.45%    0.46%      0x00007f3494e226f7: or     %r11,%rax          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%               0x00007f3494e226fa: mov    0x30(%rsp),%r10
  0.02%    0.02%      0x00007f3494e226ff: mov    %rax,0x10(%r10)    ;*putfield pcsl
                                                                    ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 280)
  0.26%    0.26%      0x00007f3494e22703: vmovq  %xmm1,%r10
  0.35%    0.39%      0x00007f3494e22708: mov    0x2c(%r10),%ebp    ;*getfield outInst
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 180)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 280)
           0.00%      0x00007f3494e2270c: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f3494e23a31
  0.44%    0.47%      0x00007f3494e22711: cmp    $0xf8019909,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                      0x00007f3494e22718: jne    0x00007f3494e22d31
  0.55%    0.58%      0x00007f3494e2271e: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 280)
  0.23%    0.17%      0x00007f3494e22722: vmovq  %r10,%xmm2
                      0x00007f3494e22727: mov    0x18(%r10),%r10d   ;*getfield pc
                                                                    ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 280)
  0.09%    0.07%      0x00007f3494e2272b: vmovd  %r10d,%xmm3
  0.57%    0.63%      0x00007f3494e22730: cmp    $0x40,%r10d
                      0x00007f3494e22734: jg     0x00007f3494e233b9  ;*if_icmpgt
                                                                    ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                    ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 280)
  0.15%    0.23%      0x00007f3494e2273a: mov    $0x1,%r11d
                      0x00007f3494e22740: mov    %r10d,%ecx
  0.01%               0x00007f3494e22743: shl    %cl,%r11           ;*lshl
                                                                    ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                    ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 280)
  1.02%    1.19%      0x00007f3494e22746: mov    %rax,%r10
                      0x00007f3494e22749: and    %r11,%r10          ;*land
                                                                    ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                    ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 280)
  0.27%    0.28%      0x00007f3494e2274c: test   %r10,%r10
                      0x00007f3494e2274f: jne    0x00007f3494e233fd  ;*ifeq
                                                                    ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 280)
  0.36%    0.38%      0x00007f3494e22755: mov    %ecx,%r10d
  0.11%    0.16%      0x00007f3494e22758: cmp    $0x40,%r10d
                      0x00007f3494e2275c: jge    0x00007f3494e23455  ;*if_icmpge
                                                                    ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                    ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.03%      0x00007f3494e22762: mov    0x30(%rsp),%r10
  0.28%    0.35%      0x00007f3494e22767: mov    %r8d,0xc(%r10)     ;*putfield size
                                                                    ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                    ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 280)
  0.32%    0.25%      0x00007f3494e2276b: or     %r11,%rax          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                    ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 280)
  0.15%    0.14%      0x00007f3494e2276e: mov    %rax,0x10(%r10)    ;*putfield pcsl
                                                                    ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                    ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.06%      0x00007f3494e22772: cmp    %ebx,%r8d
                      0x00007f3494e22775: jae    0x00007f3494e22c7d  ;*aastore
                                                                    ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                    ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 280)
  0.26%    0.28%      0x00007f3494e2277b: vmovq  %xmm1,%r10
  0.24%    0.33%      0x00007f3494e22780: mov    0x34(%r10),%r10d   ;*getfield inst2
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@43 (line 181)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 280)
  0.12%    0.16%      0x00007f3494e22784: mov    %rdx,%r11
  0.03%    0.04%      0x00007f3494e22787: vmovq  %xmm2,%r8
  0.26%    0.23%      0x00007f3494e2278c: shr    $0x3,%r8
  0.29%    0.33%      0x00007f3494e22790: mov    %r8d,(%rdx)
  0.15%    0.16%      0x00007f3494e22793: shr    $0x9,%r11
  0.05%    0.07%      0x00007f3494e22797: movabs $0x7f3490601000,%r8
  0.33%    0.33%      0x00007f3494e227a1: mov    %r12b,(%r8,%r11,1)  ;*aastore
                                                                    ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                    ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 280)
  0.31%    0.36%      0x00007f3494e227a5: mov    0x8(%r12,%r10,8),%ecx  ; implicit exception: dispatches to 0x00007f3494e23a45
  0.14%    0.20%      0x00007f3494e227aa: lea    (%r12,%r10,8),%r11
  0.04%    0.04%      0x00007f3494e227ae: cmp    $0xf8019885,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                      0x00007f3494e227b4: je     0x00007f3494e2283a
  0.20%    0.36%      0x00007f3494e227ba: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
  0.24%    0.35%      0x00007f3494e227c0: jne    0x00007f3494e230cd  ;*invokevirtual add
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 280)
  0.15%    0.10%      0x00007f3494e227c6: mov    0x18(%r11),%r10d   ;*getfield pc
                                                                    ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 280)
  0.06%    0.05%      0x00007f3494e227ca: cmp    $0x40,%r10d
                      0x00007f3494e227ce: jg     0x00007f3494e23565  ;*if_icmpgt
                                                                    ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                    ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 280)
  0.28%    0.24%      0x00007f3494e227d4: mov    $0x1,%r8d
  0.23%    0.25%      0x00007f3494e227da: mov    %r10d,%ecx
  0.12%    0.20%      0x00007f3494e227dd: shl    %cl,%r8            ;*lshl
                                                                    ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                    ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 280)
  0.52%    0.83%      0x00007f3494e227e0: mov    %rax,%rcx
  0.09%    0.14%      0x00007f3494e227e3: and    %r8,%rcx           ;*land
                                                                    ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                    ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.03%      0x00007f3494e227e6: test   %rcx,%rcx
                      0x00007f3494e227e9: jne    0x00007f3494e235c9  ;*ifeq
                                                                    ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 280)
  0.19%    0.35%      0x00007f3494e227ef: cmp    $0x40,%r10d
                      0x00007f3494e227f3: jge    0x00007f3494e2363d  ;*if_icmpge
                                                                    ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                    ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 280)
  0.26%    0.37%      0x00007f3494e227f9: or     %r8,%rax
  0.11%    0.13%      0x00007f3494e227fc: mov    0x30(%rsp),%r10
  0.04%    0.02%      0x00007f3494e22801: mov    %rax,0x10(%r10)    ;*putfield pcsl
                                                                    ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                    ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 280)
  0.20%    0.32%      0x00007f3494e22805: add    $0x18,%rdi
  0.24%    0.35%      0x00007f3494e22809: mov    %r11,%r10
  0.14%    0.11%      0x00007f3494e2280c: shr    $0x3,%r10
  0.05%    0.05%      0x00007f3494e22810: mov    %r10d,(%rdi)       ;*aastore
                                                                    ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                    ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 280)
  0.23%    0.31%      0x00007f3494e22813: mov    %rdi,%r10
  0.25%    0.32%      0x00007f3494e22816: add    $0x3,%r14d
  0.12%    0.12%      0x00007f3494e2281a: mov    0x30(%rsp),%r11
  0.04%    0.02%      0x00007f3494e2281f: mov    %r14d,0xc(%r11)    ;*putfield size
                                                                    ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                    ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 280)
  0.32%    0.26%      0x00007f3494e22823: shr    $0x9,%r10
  0.20%    0.24%      0x00007f3494e22827: movabs $0x7f3490601000,%r11
  0.13%    0.12%      0x00007f3494e22831: mov    %r12b,(%r11,%r10,1)  ;*aastore
                                                                    ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                    ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.04%      0x00007f3494e22835: jmpq   0x00007f3494e22487  ;*invokevirtual add
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 280)
....................................................................................................
 44.55%   44.92%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 600 (1175 bytes) 

                            0x00007f3494e40180: cmp    %eax,%ebx
                            0x00007f3494e40182: jge    0x00007f3494e412ad  ;*if_icmpge
                                                                          ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                                                                          ; - com.google.re2j.Machine::match@60 (line 193)
                            0x00007f3494e40188: mov    0x14(%rdx),%r8d    ;*getfield str
                                                                          ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                                                                          ; - com.google.re2j.Machine::match@60 (line 193)
                            0x00007f3494e4018c: mov    0x8(%r12,%r8,8),%r13d  ; implicit exception: dispatches to 0x00007f3494e41dc5
                            0x00007f3494e40191: cmp    $0xf80002da,%r13d  ;   {metadata(&apos;java/lang/String&apos;)}
                            0x00007f3494e40198: jne    0x00007f3494e413e1
  0.01%                     0x00007f3494e4019e: lea    (%r12,%r8,8),%rbp  ;*invokeinterface charAt
                                                                          ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                          ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                          ; - com.google.re2j.Machine::match@60 (line 193)
                            0x00007f3494e401a2: test   %ebx,%ebx
                            0x00007f3494e401a4: jl     0x00007f3494e414f9  ;*iflt
                                                                          ; - java.lang.String::charAt@1 (line 657)
                                                                          ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                          ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                          ; - com.google.re2j.Machine::match@60 (line 193)
                            0x00007f3494e401aa: vmovd  %r8d,%xmm4
                            0x00007f3494e401af: mov    %eax,0x20(%rsp)
                            0x00007f3494e401b3: mov    0xc(%rbp),%r8d     ;*getfield value
                                                                          ; - java.lang.String::charAt@6 (line 657)
                                                                          ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                          ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                          ; - com.google.re2j.Machine::match@60 (line 193)
                            0x00007f3494e401b7: mov    0xc(%r12,%r8,8),%eax  ;*arraylength
                                                                          ; - java.lang.String::charAt@9 (line 657)
                                                                          ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                          ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                          ; - com.google.re2j.Machine::match@60 (line 193)
                                                                          ; implicit exception: dispatches to 0x00007f3494e41dd9
  0.01%                     0x00007f3494e401bc: cmp    %eax,%ebx
                            0x00007f3494e401be: jge    0x00007f3494e41679  ;*if_icmplt
                                                                          ; - java.lang.String::charAt@10 (line 657)
                                                                          ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                          ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                          ; - com.google.re2j.Machine::match@60 (line 193)
  0.01%                     0x00007f3494e401c4: cmp    %eax,%ebx
                            0x00007f3494e401c6: jae    0x00007f3494e41315
  0.01%    0.00%            0x00007f3494e401cc: mov    %eax,%r13d
                            0x00007f3494e401cf: vmovd  %r8d,%xmm1
                            0x00007f3494e401d4: mov    %rbp,%rax
                            0x00007f3494e401d7: mov    %rdx,0x50(%rsp)
  0.01%                     0x00007f3494e401dc: mov    %edi,0x38(%rsp)
                            0x00007f3494e401e0: mov    %r9d,0x48(%rsp)
                            0x00007f3494e401e5: mov    %r11d,0x3c(%rsp)
           0.00%            0x00007f3494e401ea: mov    %r10,0x40(%rsp)
  0.01%                     0x00007f3494e401ef: shl    $0x3,%r8
                            0x00007f3494e401f3: movzwl 0x10(%r8,%rbx,2),%r11d  ;*caload
                                                                          ; - java.lang.String::charAt@27 (line 660)
                                                                          ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                          ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                          ; - com.google.re2j.Machine::match@60 (line 193)
                            0x00007f3494e401f9: cmp    $0xd800,%r11d
           0.00%            0x00007f3494e40200: jge    0x00007f3494e416b9  ;*if_icmplt
                                                                          ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                          ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                          ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                          ; - com.google.re2j.Machine::match@60 (line 193)
  0.00%                     0x00007f3494e40206: shl    $0x3,%r11d         ;*ishl
                                                                          ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                                                                          ; - com.google.re2j.Machine::match@60 (line 193)
  0.00%                     0x00007f3494e4020a: mov    %r11d,%r10d
                            0x00007f3494e4020d: and    $0x7,%r10d
           0.00%            0x00007f3494e40211: or     $0x1,%r11d
           0.00%            0x00007f3494e40215: vmovd  %r11d,%xmm2
                            0x00007f3494e4021a: or     $0x1,%r10d         ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                                                                          ; - com.google.re2j.Machine::match@60 (line 193)
                            0x00007f3494e4021e: mov    %r10d,0x28(%rsp)
                            0x00007f3494e40223: mov    %r11d,%edi
           0.00%            0x00007f3494e40226: sar    $0x3,%edi          ;*ishr
                                                                          ; - com.google.re2j.Machine::match@68 (line 194)
  0.01%    0.01%            0x00007f3494e40229: cmp    $0xfffffff8,%r11d
                            0x00007f3494e4022d: je     0x00007f3494e412bd  ;*if_icmpeq
                                                                          ; - com.google.re2j.Machine::match@88 (line 198)
                            0x00007f3494e40233: vmovd  %xmm0,%r10d
                            0x00007f3494e40238: add    0x28(%rsp),%r10d
  0.04%    0.02%            0x00007f3494e4023d: add    0x24(%rsp),%r10d   ;*iadd
                                                                          ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                                                                          ; - com.google.re2j.Machine::match@96 (line 199)
                            0x00007f3494e40242: mov    %r10d,%ebx
                            0x00007f3494e40245: cmp    0x20(%rsp),%r10d
                            0x00007f3494e4024a: jge    0x00007f3494e40b9b  ;*if_icmpge
                                                                          ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                                                                          ; - com.google.re2j.Machine::match@96 (line 199)
                            0x00007f3494e40250: test   %r10d,%r10d
                            0x00007f3494e40253: jl     0x00007f3494e4157d  ;*iflt
                                                                          ; - java.lang.String::charAt@1 (line 657)
                                                                          ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                          ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                          ; - com.google.re2j.Machine::match@96 (line 199)
           0.01%            0x00007f3494e40259: cmp    %r13d,%r10d
                            0x00007f3494e4025c: jge    0x00007f3494e41701  ;*if_icmplt
                                                                          ; - java.lang.String::charAt@10 (line 657)
                                                                          ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                          ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                          ; - com.google.re2j.Machine::match@96 (line 199)
  0.00%                     0x00007f3494e40262: cmp    %r13d,%r10d
                            0x00007f3494e40265: jae    0x00007f3494e41355
                            0x00007f3494e4026b: movzwl 0x10(%r8,%r10,2),%r10d  ;*caload
                                                                          ; - java.lang.String::charAt@27 (line 660)
                                                                          ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                          ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                          ; - com.google.re2j.Machine::match@96 (line 199)
           0.00%            0x00007f3494e40271: cmp    $0xd800,%r10d
                            0x00007f3494e40278: jge    0x00007f3494e4175d  ;*if_icmplt
                                                                          ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                          ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                          ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                          ; - com.google.re2j.Machine::match@96 (line 199)
           0.00%            0x00007f3494e4027e: shl    $0x3,%r10d         ;*ishl
                                                                          ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                                                                          ; - com.google.re2j.Machine::match@96 (line 199)
                            0x00007f3494e40282: mov    %r10d,%r11d
                            0x00007f3494e40285: or     $0x1,%r11d
                            0x00007f3494e40289: and    $0x7,%r10d
                            0x00007f3494e4028d: sar    $0x3,%r11d
  0.00%    0.01%            0x00007f3494e40291: or     $0x1,%r10d         ;*ishr
                                                                          ; - com.google.re2j.Machine::match@104 (line 200)
                            0x00007f3494e40295: vmovd  %xmm0,%r8d
                            0x00007f3494e4029a: test   %r8d,%r8d
                            0x00007f3494e4029d: jne    0x00007f3494e41535  ;*ifne
                                                                          ; - com.google.re2j.Machine::match@115 (line 204)
                            0x00007f3494e402a3: test   %edi,%edi
                            0x00007f3494e402a5: jl     0x00007f3494e40b71  ;*ifge
                                                                          ; - com.google.re2j.Utils::emptyOpContext@21 (line 179)
                                                                          ; - com.google.re2j.Machine::match@121 (line 205)
  0.01%    0.01%            0x00007f3494e402ab: mov    %r11d,%edx
                            0x00007f3494e402ae: mov    %r10d,0x30(%rsp)
                            0x00007f3494e402b3: mov    $0x5,%r10d         ;*iload_1
                                                                          ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                                                                          ; - com.google.re2j.Machine::match@121 (line 205)
                            0x00007f3494e402b9: cmp    $0xa,%edi
                            0x00007f3494e402bc: je     0x00007f3494e40b92  ;*iload_0
                                                                          ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                                                                          ; - com.google.re2j.Machine::match@121 (line 205)
  0.00%    0.00%            0x00007f3494e402c2: mov    %edi,%r11d
                            0x00007f3494e402c5: add    $0xffffffbf,%r11d
                            0x00007f3494e402c9: cmp    $0x1a,%r11d
                  ╭         0x00007f3494e402cd: jb     0x00007f3494e402e0  ;*if_icmple
                  │                                                       ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │                                                       ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                       ; - com.google.re2j.Machine::match@121 (line 205)
                  │         0x00007f3494e402cf: mov    %edi,%r8d
           0.02%  │         0x00007f3494e402d2: add    $0xffffff9f,%r8d
                  │         0x00007f3494e402d6: cmp    $0x1a,%r8d
                  │         0x00007f3494e402da: jae    0x00007f3494e40ba9  ;*iconst_1
                  │                                                       ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │                                                       ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                       ; - com.google.re2j.Machine::match@121 (line 205)
                  ↘         0x00007f3494e402e0: or     $0x10,%r10d        ;*iload_2
                                                                          ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                          ; - com.google.re2j.Machine::match@121 (line 205)
           0.01%            0x00007f3494e402e4: mov    0x3c(%rsp),%r11d
  0.02%    0.01%            0x00007f3494e402e9: test   %r11d,%r11d
                            0x00007f3494e402ec: jne    0x00007f3494e4141d  ;*aload
                                                                          ; - com.google.re2j.Machine::match@136 (line 211)
           0.01%            0x00007f3494e402f2: mov    0x40(%rsp),%r11
                            0x00007f3494e402f7: movzbl 0x11(%r11),%r11d   ;*getfield captures
                                                                          ; - com.google.re2j.Machine::match@283 (line 240)
  0.00%    0.02%            0x00007f3494e402fc: mov    %rcx,%r8
                            0x00007f3494e402ff: shl    $0x3,%r8           ;*getfield q1
                                                                          ; - com.google.re2j.Machine::match@53 (line 192)
                            0x00007f3494e40303: mov    %r8,0x68(%rsp)
  0.00%                     0x00007f3494e40308: xor    %eax,%eax
                            0x00007f3494e4030a: mov    $0x1,%r9d
                            0x00007f3494e40310: xor    %r8d,%r8d
                            0x00007f3494e40313: mov    %r9d,0x14(%rsp)
  0.00%                     0x00007f3494e40318: mov    %r8d,0x60(%rsp)
  0.00%            ╭        0x00007f3494e4031d: jmpq   0x00007f3494e404a7
  0.37%    0.08%   │   ↗    0x00007f3494e40322: or     $0x20,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                   │   │                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.02%    0.01%   │   │    0x00007f3494e40326: mov    %r8d,0x2c(%rsp)    ;*iload_2
                   │   │                                                  ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   │   │                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.19%    0.19%   │   │↗   0x00007f3494e4032b: mov    0x60(%rsp),%r8d
  0.18%    0.05%   │   ││   0x00007f3494e40330: cmp    0x20(%rsp),%r8d
                   │   ││   0x00007f3494e40335: je     0x00007f3494e40ad6  ;*if_icmpne
                   │   ││                                                 ; - com.google.re2j.Machine::match@351 (line 246)
  0.51%    0.30%   │   ││   0x00007f3494e4033b: xor    %r10d,%r10d        ;*invokespecial step
                   │   ││                                                 ; - com.google.re2j.Machine::match@359 (line 246)
  0.07%    0.03%   │   ││   0x00007f3494e4033e: mov    %rax,-0x8(%rsp)
  0.38%    0.43%   │   ││   0x00007f3494e40343: mov    0x60(%rsp),%eax
  0.19%    0.08%   │   ││   0x00007f3494e40347: mov    %eax,0x34(%rsp)
  0.36%    0.44%   │   ││   0x00007f3494e4034b: mov    -0x8(%rsp),%rax
  0.40%    0.29%   │   ││   0x00007f3494e40350: mov    %edx,0x20(%rsp)    ;*invokevirtual endPos
                   │   ││                                                 ; - com.google.re2j.Machine::match@348 (line 246)
  0.06%    0.09%   │   ││   0x00007f3494e40354: add    0x28(%rsp),%r8d    ;*iadd
                   │   ││                                                 ; - com.google.re2j.Machine::match@340 (line 246)
  0.23%    0.17%   │   ││   0x00007f3494e40359: mov    %r8d,0x60(%rsp)
  0.40%    0.17%   │   ││   0x00007f3494e4035e: mov    0x40(%rsp),%rsi
  0.10%    0.07%   │   ││   0x00007f3494e40363: mov    0x18(%rsp),%rdx
  0.09%    0.06%   │   ││   0x00007f3494e40368: mov    0x68(%rsp),%rcx
  0.20%    0.08%   │   ││   0x00007f3494e4036d: mov    0x34(%rsp),%r8d
  0.35%    0.31%   │   ││   0x00007f3494e40372: mov    0x60(%rsp),%r9d
  0.53%    0.42%   │   ││   0x00007f3494e40377: mov    0x2c(%rsp),%r11d
  0.05%    0.04%   │   ││   0x00007f3494e4037c: mov    %r11d,(%rsp)
  0.19%    0.17%   │   ││   0x00007f3494e40380: xor    %r11d,%r11d
  0.30%    0.02%   │   ││   0x00007f3494e40383: mov    %r11d,0x8(%rsp)
  0.22%    0.19%   │   ││   0x00007f3494e40388: mov    %r10d,0x10(%rsp)
  0.06%    0.10%   │   ││   0x00007f3494e4038d: xchg   %ax,%ax
  0.18%    0.16%   │   ││   0x00007f3494e4038f: callq  0x00007f3494c19020  ; OopMap{[24]=Oop [56]=NarrowOop [64]=Oop [80]=Oop [104]=Oop off=692}
                   │   ││                                                 ;*invokespecial step
                   │   ││                                                 ; - com.google.re2j.Machine::match@359 (line 246)
                   │   ││                                                 ;   {optimized virtual_call}
                   │   ││   0x00007f3494e40394: mov    0x40(%rsp),%r10
  0.80%    0.74%   │   ││   0x00007f3494e40399: movzbl 0x11(%r10),%r11d   ;*getfield captures
                   │   ││                                                 ; - com.google.re2j.Machine::match@371 (line 250)
  0.01%    0.01%   │   ││   0x00007f3494e4039e: movzbl 0x10(%r10),%eax    ;*getfield matched
                   │   ││                                                 ; - com.google.re2j.Machine::match@378 (line 250)
  0.00%            │   ││   0x00007f3494e403a3: mov    0x28(%rsp),%r8d
  0.68%    0.85%   │   ││   0x00007f3494e403a8: test   %r8d,%r8d
                   │   ││   0x00007f3494e403ab: je     0x00007f3494e40a96  ;*ifne
                   │   ││                                                 ; - com.google.re2j.Machine::match@364 (line 247)
                   │   ││   0x00007f3494e403b1: test   %r11d,%r11d
                   │   ││   0x00007f3494e403b4: jne    0x00007f3494e40dfd  ;*ifne
                   │   ││                                                 ; - com.google.re2j.Machine::match@374 (line 250)
  0.00%            │   ││   0x00007f3494e403ba: test   %eax,%eax
                   │   ││   0x00007f3494e403bc: jne    0x00007f3494e40ff9  ;*ifeq
                   │   ││                                                 ; - com.google.re2j.Machine::match@381 (line 250)
  0.01%    0.01%   │   ││   0x00007f3494e403c2: mov    0x50(%rsp),%r8
  0.70%    0.86%   │   ││   0x00007f3494e403c7: mov    0x10(%r8),%ebx     ;*getfield end
                   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                   │   ││                                                 ; - com.google.re2j.Machine::match@411 (line 259)
  0.01%    0.00%   │   ││   0x00007f3494e403cb: mov    0xc(%r8),%ecx      ;*getfield start
                   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                   │   ││                                                 ; - com.google.re2j.Machine::match@411 (line 259)
                   │   ││   0x00007f3494e403cf: mov    %ecx,0x24(%rsp)
  0.01%    0.01%   │   ││   0x00007f3494e403d3: mov    0x14(%r8),%r9d     ;*getfield str
                   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                   │   ││                                                 ; - com.google.re2j.Machine::match@411 (line 259)
  0.73%    0.90%   │   ││   0x00007f3494e403d7: mov    0x20(%rsp),%edi
                   │   ││   0x00007f3494e403db: cmp    $0xffffffff,%edi
                   │   ││   0x00007f3494e403de: je     0x00007f3494e40ae1  ;*if_icmpeq
                   │   ││                                                 ; - com.google.re2j.Machine::match@403 (line 258)
                   │   ││   0x00007f3494e403e4: mov    0x30(%rsp),%r8d
  0.02%    0.02%   │   ││   0x00007f3494e403e9: add    0x60(%rsp),%r8d
  0.69%    1.11%   │   ││   0x00007f3494e403ee: add    %ecx,%r8d          ;*iadd
                   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                   │   ││                                                 ; - com.google.re2j.Machine::match@411 (line 259)
                   │   ││   0x00007f3494e403f1: cmp    %ebx,%r8d
                   │   ││   0x00007f3494e403f4: jge    0x00007f3494e40af0  ;*if_icmpge
                   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                   │   ││                                                 ; - com.google.re2j.Machine::match@411 (line 259)
  0.01%            │   ││   0x00007f3494e403fa: mov    0x8(%r12,%r9,8),%r10d  ; implicit exception: dispatches to 0x00007f3494e41d6d
  0.21%    0.15%   │   ││   0x00007f3494e403ff: cmp    $0xf80002da,%r10d  ;   {metadata(&apos;java/lang/String&apos;)}
                   │   ││   0x00007f3494e40406: jne    0x00007f3494e40d59
  0.63%    0.76%   │   ││   0x00007f3494e4040c: lea    (%r12,%r9,8),%rdx  ;*invokeinterface charAt
                   │   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │   ││                                                 ; - com.google.re2j.Machine::match@411 (line 259)
                   │   ││   0x00007f3494e40410: test   %r8d,%r8d
                   │   ││   0x00007f3494e40413: jl     0x00007f3494e40e51  ;*iflt
                   │   ││                                                 ; - java.lang.String::charAt@1 (line 657)
                   │   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │   ││                                                 ; - com.google.re2j.Machine::match@411 (line 259)
                   │   ││   0x00007f3494e40419: mov    0xc(%rdx),%ecx     ;*getfield value
                   │   ││                                                 ; - java.lang.String::charAt@6 (line 657)
                   │   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │   ││                                                 ; - com.google.re2j.Machine::match@411 (line 259)
  0.01%    0.03%   │   ││   0x00007f3494e4041c: mov    0xc(%r12,%rcx,8),%ebp  ;*arraylength
                   │   ││                                                 ; - java.lang.String::charAt@9 (line 657)
                   │   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │   ││                                                 ; - com.google.re2j.Machine::match@411 (line 259)
                   │   ││                                                 ; implicit exception: dispatches to 0x00007f3494e41d81
  2.17%    3.08%   │   ││   0x00007f3494e40421: cmp    %ebp,%r8d
                   │   ││   0x00007f3494e40424: jge    0x00007f3494e4104d  ;*if_icmplt
                   │   ││                                                 ; - java.lang.String::charAt@10 (line 657)
                   │   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │   ││                                                 ; - com.google.re2j.Machine::match@411 (line 259)
  0.73%    0.81%   │   ││   0x00007f3494e4042a: cmp    %ebp,%r8d
                   │   ││   0x00007f3494e4042d: jae    0x00007f3494e40c4d
  0.19%    0.18%   │   ││   0x00007f3494e40433: lea    (%r12,%rcx,8),%r10
                   │   ││   0x00007f3494e40437: movzwl 0x10(%r10,%r8,2),%ecx  ;*caload
                   │   ││                                                 ; - java.lang.String::charAt@27 (line 660)
                   │   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │   ││                                                 ; - com.google.re2j.Machine::match@411 (line 259)
  0.10%    0.14%   │   ││   0x00007f3494e4043d: cmp    $0xd800,%ecx
                   │   ││   0x00007f3494e40443: jge    0x00007f3494e410ad  ;*if_icmplt
                   │   ││                                                 ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   │   ││                                                 ; - java.lang.Character::codePointAt@9 (line 4867)
                   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │   ││                                                 ; - com.google.re2j.Machine::match@411 (line 259)
  0.52%    0.84%   │   ││   0x00007f3494e40449: shl    $0x3,%ecx          ;*ishl
                   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                   │   ││                                                 ; - com.google.re2j.Machine::match@411 (line 259)
  0.24%    0.48%   │   ││   0x00007f3494e4044c: mov    %ecx,%r8d
                   │   ││   0x00007f3494e4044f: or     $0x1,%r8d
  0.60%    0.70%   │   ││   0x00007f3494e40453: and    $0x7,%ecx
  0.12%    0.13%   │   ││   0x00007f3494e40456: sar    $0x3,%r8d          ;*ishr
                   │   ││                                                 ; - com.google.re2j.Machine::match@419 (line 260)
  0.56%    0.52%   │   ││   0x00007f3494e4045a: or     $0x1,%ecx          ; OopMap{r9=NarrowOop [24]=Oop [64]=Oop [80]=Oop [104]=Oop off=893}
                   │   ││                                                 ;*goto
                   │   ││                                                 ; - com.google.re2j.Machine::match@441 (line 266)
           0.01%   │   ││   0x00007f3494e4045d: test   %eax,0x15e44b9d(%rip)        # 0x00007f34aac85000
                   │   ││                                                 ;*goto
                   │   ││                                                 ; - com.google.re2j.Machine::match@441 (line 266)
                   │   ││                                                 ;   {poll}
  0.06%    0.08%   │   ││   0x00007f3494e40463: mov    0x40(%rsp),%r10
  0.13%    0.19%   │   ││   0x00007f3494e40468: mov    0x28(%r10),%r14d   ;*getfield matchcap
                   │   ││                                                 ; - com.google.re2j.Machine::match@307 (line 243)
  0.60%    0.78%   │   ││   0x00007f3494e4046c: mov    0x14(%r10),%esi    ;*getfield re2
                   │   ││                                                 ; - com.google.re2j.Machine::match@169 (line 220)
                   │   ││   0x00007f3494e40470: mov    0x68(%rsp),%r10
  0.05%    0.05%   │   ││   0x00007f3494e40475: mov    %r10,%rdx
  0.10%    0.19%   │   ││   0x00007f3494e40478: shr    $0x3,%rdx
  0.55%    0.72%   │   ││   0x00007f3494e4047c: mov    %edx,0x38(%rsp)
           0.00%   │   ││   0x00007f3494e40480: mov    0x2c(%rsp),%r10d
  0.04%    0.05%   │   ││   0x00007f3494e40485: mov    0x18(%rsp),%rdx
  0.13%    0.18%   │   ││   0x00007f3494e4048a: mov    %rdx,0x68(%rsp)
  0.45%    0.61%   │   ││   0x00007f3494e4048f: mov    0x30(%rsp),%edx
                   │   ││   0x00007f3494e40493: mov    %edx,0x28(%rsp)
  0.03%    0.04%   │   ││   0x00007f3494e40497: mov    %r8d,%edx
  0.13%    0.09%   │   ││   0x00007f3494e4049a: mov    %ecx,0x30(%rsp)
  0.52%    0.79%   │   ││   0x00007f3494e4049e: mov    %ebx,0x20(%rsp)
           0.00%   │   ││   0x00007f3494e404a2: vmovd  %r9d,%xmm4         ;*getfield matchcap
                   │   ││                                                 ; - com.google.re2j.Machine::match@307 (line 243)
  0.04%    0.08%   ↘   ││   0x00007f3494e404a7: mov    0x38(%rsp),%r9d
  0.17%    0.14%       ││   0x00007f3494e404ac: movzbl 0x18(%r12,%r9,8),%ecx  ; implicit exception: dispatches to 0x00007f3494e41d15
  0.55%    0.70%       ││   0x00007f3494e404b2: lea    (%r12,%r9,8),%r8   ;*aload
                       ││                                                 ; - com.google.re2j.Machine::match@136 (line 211)
           0.00%       ││   0x00007f3494e404b6: mov    %r8,0x18(%rsp)
  0.05%    0.03%       ││   0x00007f3494e404bb: test   %ecx,%ecx
                       ││   0x00007f3494e404bd: jne    0x00007f3494e40703  ;*iload_3
                       ││                                                 ; - com.google.re2j.Machine::match@267 (line 237)
  0.12%    0.20%       ││   0x00007f3494e404c3: test   %eax,%eax
                       ││   0x00007f3494e404c5: jne    0x00007f3494e40db9  ;*ifne
                       ││                                                 ; - com.google.re2j.Machine::match@279 (line 237)
  0.55%    0.59%       ││   0x00007f3494e404cb: test   %r11d,%r11d
                       ││   0x00007f3494e404ce: jne    0x00007f3494e40eb1  ;*ifeq
                       ││                                                 ; - com.google.re2j.Machine::match@286 (line 240)
  0.01%                ││   0x00007f3494e404d4: mov    0x40(%rsp),%r8
  0.05%    0.07%       ││   0x00007f3494e404d9: mov    0x18(%r8),%r9d     ;*getfield prog
                       ││                                                 ; - com.google.re2j.Machine::match@297 (line 243)
  0.10%    0.12%       ││   0x00007f3494e404dd: mov    0x1c(%r12,%r9,8),%ebp  ;*getfield startInst
                       ││                                                 ; - com.google.re2j.Machine::match@300 (line 243)
                       ││                                                 ; implicit exception: dispatches to 0x00007f3494e41d25
  0.70%    0.70%       ││   0x00007f3494e404e2: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007f3494e41d35
  1.93%    1.72%       ││   0x00007f3494e404e7: cmp    $0xf8019909,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                       ││   0x00007f3494e404ee: jne    0x00007f3494e40cb1
  0.65%    0.45%       ││   0x00007f3494e404f4: lea    (%r12,%rbp,8),%r9  ;*invokevirtual add
                       ││                                                 ; - com.google.re2j.Machine::match@318 (line 243)
                       ││   0x00007f3494e404f8: mov    0x18(%r9),%r10d    ;*getfield pc
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                       ││                                                 ; - com.google.re2j.Machine::match@318 (line 243)
  0.06%    0.06%       ││   0x00007f3494e404fc: cmp    $0x40,%r10d
  0.67%    0.55%       ││   0x00007f3494e40500: jg     0x00007f3494e40ef5  ;*if_icmpgt
                       ││                                                 ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                       ││                                                 ; - com.google.re2j.Machine::match@318 (line 243)
  0.71%    0.55%       ││   0x00007f3494e40506: mov    %r10d,%ecx
                       ││   0x00007f3494e40509: mov    $0x1,%ebx
  0.00%    0.01%       ││   0x00007f3494e4050e: shl    %cl,%rbx           ;*lshl
                       ││                                                 ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                       ││                                                 ; - com.google.re2j.Machine::match@318 (line 243)
  0.93%    0.75%       ││   0x00007f3494e40511: mov    0x38(%rsp),%r10d
  0.01%                ││   0x00007f3494e40516: mov    0x10(%r12,%r10,8),%r8  ;*getfield pcsl
                       ││                                                 ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                       ││                                                 ; - com.google.re2j.Machine::match@318 (line 243)
                       ││   0x00007f3494e4051b: mov    %r8,%r10
  0.23%    0.21%       ││   0x00007f3494e4051e: and    %rbx,%r10          ;*land
                       ││                                                 ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                       ││                                                 ; - com.google.re2j.Machine::match@318 (line 243)
  0.46%    0.51%       ││   0x00007f3494e40521: test   %r10,%r10
                       ││   0x00007f3494e40524: jne    0x00007f3494e40f49  ;*ifeq
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                       ││                                                 ; - com.google.re2j.Machine::match@318 (line 243)
  0.02%                ││   0x00007f3494e4052a: cmp    $0x40,%ecx
                       ││   0x00007f3494e4052d: jge    0x00007f3494e40fa5  ;*if_icmpge
                       ││                                                 ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                       ││                                                 ; - com.google.re2j.Machine::match@318 (line 243)
  0.01%    0.02%       ││   0x00007f3494e40533: mov    0x38(%rsp),%r10d
  0.18%    0.22%       ││   0x00007f3494e40538: mov    %r12b,0x18(%r12,%r10,8)  ;*putfield empty
                       ││                                                 ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                       ││                                                 ; - com.google.re2j.Machine::match@318 (line 243)
  0.48%    0.42%       ││   0x00007f3494e4053d: mov    0xc(%r12,%r10,8),%r10d  ;*getfield size
                       ││                                                 ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                       ││                                                 ; - com.google.re2j.Machine::match@318 (line 243)
  0.01%    0.00%       ││   0x00007f3494e40542: mov    0x38(%rsp),%ecx
  0.01%                ││   0x00007f3494e40546: mov    0x20(%r12,%rcx,8),%r11d  ;*getfield denseThreadsInstructions
                       ││                                                 ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                       ││                                                 ; - com.google.re2j.Machine::match@318 (line 243)
  0.25%    0.20%       ││   0x00007f3494e4054b: or     %r8,%rbx
  0.49%    0.36%       ││   0x00007f3494e4054e: mov    %rbx,0x10(%r12,%rcx,8)  ;*putfield pcsl
                       ││                                                 ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                       ││                                                 ; - com.google.re2j.Machine::match@318 (line 243)
  0.01%                ││   0x00007f3494e40553: mov    %r10d,%ecx
                       ││   0x00007f3494e40556: inc    %ecx
  0.21%    0.23%       ││   0x00007f3494e40558: mov    0x38(%rsp),%ebx
  0.50%    0.56%       ││   0x00007f3494e4055c: mov    %ecx,0xc(%r12,%rbx,8)  ;*putfield size
                       ││                                                 ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                       ││                                                 ; - com.google.re2j.Machine::match@318 (line 243)
  0.01%    0.00%       ││   0x00007f3494e40561: mov    0xc(%r12,%r11,8),%ecx  ; implicit exception: dispatches to 0x00007f3494e41d55
  0.01%    0.01%       ││   0x00007f3494e40566: cmp    %ecx,%r10d
                       ││   0x00007f3494e40569: jae    0x00007f3494e40bf2
  0.17%    0.30%       ││   0x00007f3494e4056f: mov    0x8(%r12,%r11,8),%ecx
  0.53%    0.58%       ││   0x00007f3494e40574: cmp    $0xf8019807,%ecx   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                       ││   0x00007f3494e4057a: jne    0x00007f3494e40d01  ;*aastore
                       ││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                       ││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                       ││                                                 ; - com.google.re2j.Machine::match@318 (line 243)
  0.03%    0.01%       ││   0x00007f3494e40580: test   %edi,%edi
                    ╭  ││   0x00007f3494e40582: jl     0x00007f3494e40625  ;*ifge
                    │  ││                                                 ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                    │  ││                                                 ; - com.google.re2j.Machine::match@326 (line 245)
           0.00%    │  ││   0x00007f3494e40588: xor    %r8d,%r8d          ;*iload_0
                    │  ││                                                 ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                    │  ││                                                 ; - com.google.re2j.Machine::match@326 (line 245)
  0.24%    0.24%    │  ││↗  0x00007f3494e4058b: cmp    $0xa,%edi
                    │  │││  0x00007f3494e4058e: je     0x00007f3494e4096b  ;*iload_1
                    │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                    │  │││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.44%    0.52%    │  │││  0x00007f3494e40594: test   %edx,%edx
                    │  │││  0x00007f3494e40596: jl     0x00007f3494e40962  ;*iload_1
                    │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                    │  │││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.02%    0.01%    │  │││  0x00007f3494e4059c: cmp    $0xa,%edx
                    │  │││  0x00007f3494e4059f: je     0x00007f3494e40974  ;*iload_0
                    │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                    │  │││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.02%    0.00%    │  │││  0x00007f3494e405a5: shr    $0x3,%r9           ;*aastore
                    │  │││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                    │  │││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                    │  │││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.21%    0.20%    │  │││  0x00007f3494e405a9: shl    $0x3,%r11          ;*getfield denseThreadsInstructions
                    │  │││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                    │  │││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                    │  │││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.50%    0.45%    │  │││  0x00007f3494e405ad: lea    0x10(%r11,%r10,4),%r10
  0.01%    0.00%    │  │││  0x00007f3494e405b2: mov    %r9d,(%r10)
  0.12%    0.14%    │  │││  0x00007f3494e405b5: mov    %edi,%r11d
  0.17%    0.21%    │  │││  0x00007f3494e405b8: add    $0xffffffbf,%r11d
  0.52%    0.42%    │  │││  0x00007f3494e405bc: shr    $0x9,%r10
  0.01%    0.01%    │  │││  0x00007f3494e405c0: movabs $0x7f3490601000,%r9
  0.06%    0.05%    │  │││  0x00007f3494e405ca: mov    %r12b,(%r9,%r10,1)  ;*aastore
                    │  │││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                    │  │││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                    │  │││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.46%    0.52%    │  │││  0x00007f3494e405ce: cmp    $0x1a,%r11d
                    │╭ │││  0x00007f3494e405d2: jb     0x00007f3494e405e5  ;*if_icmple
                    ││ │││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                    ││ │││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    ││ │││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.42%    0.26%    ││ │││  0x00007f3494e405d4: mov    %edi,%r10d
  0.02%    0.01%    ││ │││  0x00007f3494e405d7: add    $0xffffff9f,%r10d
  0.05%    0.05%    ││ │││  0x00007f3494e405db: cmp    $0x1a,%r10d
                    ││ │││  0x00007f3494e405df: jae    0x00007f3494e40b2e  ;*iconst_1
                    ││ │││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                    ││ │││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    ││ │││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.24%    0.16%    │↘ │││  0x00007f3494e405e5: mov    $0x1,%ebp          ;*ireturn
                    │  │││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                    │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    │  │││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.30%    0.21%    │  │││  0x00007f3494e405ea: mov    %edx,%r11d
  0.02%    0.01%    │  │││  0x00007f3494e405ed: add    $0xffffffbf,%r11d
  0.14%    0.03%    │  │││  0x00007f3494e405f1: cmp    $0x1a,%r11d
                    │ ╭│││  0x00007f3494e405f5: jb     0x00007f3494e40608  ;*if_icmple
                    │ ││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                    │ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    │ ││││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.22%    0.17%    │ ││││  0x00007f3494e405f7: mov    %edx,%r10d
  0.36%    0.11%    │ ││││  0x00007f3494e405fa: add    $0xffffff9f,%r10d
  0.02%    0.02%    │ ││││  0x00007f3494e405fe: cmp    $0x1a,%r10d
                    │ ││││  0x00007f3494e40602: jae    0x00007f3494e40b4f  ;*iconst_1
                    │ ││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                    │ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    │ ││││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.10%    0.07%    │ ↘│││  0x00007f3494e40608: mov    $0x1,%r11d         ;*ireturn
                    │  │││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                    │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    │  │││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.27%    0.13%    │  │││  0x00007f3494e4060e: cmp    %r11d,%ebp
                    │  ╰││  0x00007f3494e40611: je     0x00007f3494e40322  ;*if_icmpeq
                    │   ││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                    │   ││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.04%    0.03%    │   ││  0x00007f3494e40617: or     $0x10,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                    │   ││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.02%    0.00%    │   ││  0x00007f3494e4061b: mov    %r8d,0x2c(%rsp)
  0.41%    0.32%    │   ╰│  0x00007f3494e40620: jmpq   0x00007f3494e4032b
                    ↘    │  0x00007f3494e40625: mov    $0x5,%r8d
  0.00%    0.00%         ╰  0x00007f3494e4062b: jmpq   0x00007f3494e4058b
  0.00%    0.00%            0x00007f3494e40630: mov    %r8d,0x5c(%rsp)
  0.01%    0.01%            0x00007f3494e40635: jmpq   0x00007f3494e4089e
                            0x00007f3494e4063a: mov    0x5c(%rsp),%r8d
                            0x00007f3494e4063f: add    $0x2,%r8d
                            0x00007f3494e40643: mov    %r8d,0x5c(%rsp)
                            0x00007f3494e40648: mov    0x5c(%rsp),%r8d
                            0x00007f3494e4064d: inc    %r8d
                            0x00007f3494e40650: mov    %r8d,0x58(%rsp)
                            0x00007f3494e40655: jmp    0x00007f3494e40682
  0.00%                     0x00007f3494e40657: mov    0x5c(%rsp),%r8d
                            0x00007f3494e4065c: add    $0x2,%r8d
                            0x00007f3494e40660: mov    %r8d,0x58(%rsp)
....................................................................................................
 34.76%   34.99%  <total for region 2>

....[Hottest Regions]...............................................................................
 44.55%   44.92%         C2, level 4  com.google.re2j.Machine::step, version 555 (942 bytes) 
 34.76%   34.99%         C2, level 4  com.google.re2j.Machine::match, version 600 (1175 bytes) 
  7.90%    8.77%         C2, level 4  com.google.re2j.Machine::step, version 555 (159 bytes) 
  7.90%    7.83%         C2, level 4  com.google.re2j.Machine::step, version 555 (339 bytes) 
  0.68%    0.40%         C2, level 4  com.google.re2j.Machine::match, version 600 (397 bytes) 
  0.50%    0.49%   [kernel.kallsyms]  [unknown] (6 bytes) 
  0.28%    0.09%         C2, level 4  com.google.re2j.RE2::match, version 601 (102 bytes) 
  0.21%    0.11%         C2, level 4  com.google.re2j.Machine::match, version 600 (218 bytes) 
  0.18%    0.11%         C2, level 4  com.google.re2j.Machine::match, version 600 (352 bytes) 
  0.18%    0.07%         C2, level 4  com.google.re2j.RE2::match, version 601 (28 bytes) 
  0.17%    0.07%         C2, level 4  java.util.Collections::shuffle, version 611 (195 bytes) 
  0.11%    0.15%         C2, level 4  com.google.re2j.RE2::match, version 601 (20 bytes) 
  0.10%    0.02%   [kernel.kallsyms]  [unknown] (45 bytes) 
  0.10%    0.02%   [kernel.kallsyms]  [unknown] (73 bytes) 
  0.09%    0.03%         C2, level 4  com.google.re2j.RE2::match, version 601 (0 bytes) 
  0.08%    0.07%         C2, level 4  com.google.re2j.RE2::match, version 601 (0 bytes) 
  0.08%    0.05%         C2, level 4  com.google.re2j.RE2::match, version 601 (199 bytes) 
  0.08%                  C2, level 4  com.google.re2j.RE2::match, version 601 (105 bytes) 
  0.07%    0.01%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 640 (157 bytes) 
  0.06%                  C2, level 4  com.google.re2j.RE2::match, version 601 (64 bytes) 
  1.92%    1.79%  <...other 377 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 60.34%   61.52%         C2, level 4  com.google.re2j.Machine::step, version 555 
 35.93%   35.66%         C2, level 4  com.google.re2j.Machine::match, version 600 
  1.30%    1.17%   [kernel.kallsyms]  [unknown] 
  1.06%    0.46%         C2, level 4  com.google.re2j.RE2::match, version 601 
  0.21%    0.09%         C2, level 4  java.util.Collections::shuffle, version 611 
  0.14%    0.08%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 640 
  0.09%    0.05%           libjvm.so  GenericTaskQueueSet<OverflowTaskQueue<StarTask, (MemoryType)1, 131072u>, (MemoryType)1>::steal_best_of_2 
  0.07%    0.07%           libjvm.so  PSPromotionManager::copy_to_survivor_space<false> 
  0.06%    0.00%              [vdso]  [unknown] 
  0.04%    0.00%              [vdso]  __vdso_clock_gettime 
  0.03%    0.02%           libjvm.so  InstanceKlass::oop_push_contents 
  0.03%    0.01%           libjvm.so  xmlTextStream::write 
  0.03%    0.03%        libc-2.26.so  _IO_fwrite 
  0.03%    0.04%      hsdis-amd64.so  [unknown] 
  0.03%    0.05%           libjvm.so  RelocIterator::initialize 
  0.02%    0.03%           libjvm.so  fileStream::write 
  0.02%                    libjvm.so  Monitor::unlock 
  0.02%    0.00%  libpthread-2.26.so  __pthread_disable_asynccancel 
  0.02%    0.06%           libjvm.so  PSPromotionManager::drain_stacks_depth 
  0.02%                  interpreter  method entry point (kind = zerolocals)  
  0.48%    0.37%  <...other 72 warm methods...>
....................................................................................................
100.00%   99.73%  <totals>

....[Distribution by Source]........................................................................
 97.70%   97.81%         C2, level 4
  1.30%    1.17%   [kernel.kallsyms]
  0.55%    0.61%           libjvm.so
  0.15%    0.28%        libc-2.26.so
  0.10%    0.01%              [vdso]
  0.08%    0.05%  libpthread-2.26.so
  0.04%    0.01%         interpreter
  0.03%    0.04%      hsdis-amd64.so
  0.01%    0.01%         C1, level 3
  0.01%    0.01%        runtime stub
  0.00%                             
  0.00%                perf-7898.map
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                     Mode  Cnt      Score     Error  Units
Re2jFindRegex.testExp1       thrpt   20  27903.068 ± 112.898  ops/s
Re2jFindRegex.testExp1:·asm  thrpt             NaN              ---
