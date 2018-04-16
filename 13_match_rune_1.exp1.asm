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
# Warmup Iteration   1: 9632.280 ops/s
# Warmup Iteration   2: 26243.808 ops/s
# Warmup Iteration   3: 27086.411 ops/s
# Warmup Iteration   4: 26372.171 ops/s
# Warmup Iteration   5: 26788.211 ops/s
# Warmup Iteration   6: 26610.355 ops/s
# Warmup Iteration   7: 27103.105 ops/s
# Warmup Iteration   8: 27218.331 ops/s
# Warmup Iteration   9: 26981.372 ops/s
# Warmup Iteration  10: 26938.808 ops/s
# Warmup Iteration  11: 27046.092 ops/s
# Warmup Iteration  12: 26906.148 ops/s
# Warmup Iteration  13: 27367.475 ops/s
# Warmup Iteration  14: 27241.011 ops/s
# Warmup Iteration  15: 27190.659 ops/s
# Warmup Iteration  16: 27134.908 ops/s
# Warmup Iteration  17: 27152.347 ops/s
# Warmup Iteration  18: 27094.072 ops/s
# Warmup Iteration  19: 27244.682 ops/s
# Warmup Iteration  20: 27237.697 ops/s
Iteration   1: 27431.110 ops/s
Iteration   2: 27026.235 ops/s
Iteration   3: 27214.824 ops/s
Iteration   4: 27152.727 ops/s
Iteration   5: 27167.035 ops/s
Iteration   6: 27413.552 ops/s
Iteration   7: 27228.185 ops/s
Iteration   8: 27273.451 ops/s
Iteration   9: 27336.044 ops/s
Iteration  10: 27208.685 ops/s
Iteration  11: 27346.205 ops/s
Iteration  12: 27403.454 ops/s
Iteration  13: 27419.406 ops/s
Iteration  14: 27329.308 ops/s
Iteration  15: 27268.485 ops/s
Iteration  16: 27163.312 ops/s
Iteration  17: 27251.803 ops/s
Iteration  18: 27347.658 ops/s
Iteration  19: 27314.847 ops/s
Iteration  20: 27330.559 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jRegex.testExp1":
  27281.344 ±(99.9%) 92.065 ops/s [Average]
  (min, avg, max) = (27026.235, 27281.344, 27431.110), stdev = 106.022
  CI (99.9%): [27189.279, 27373.409] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jRegex.testExp1:·asm":
PrintAssembly processed: 207588 total address lines.
Perf output processed (skipped 23.574 seconds):
 Column 1: cycles (20544 events)
 Column 2: instructions (20541 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 531 (779 bytes) 

                     0x00007f603523f7ea: shr    $0x9,%r10
                     0x00007f603523f7ee: movabs $0x7f60463f7000,%r11
                     0x00007f603523f7f8: mov    %r12b,(%r11,%r10,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f603523f7fc: mov    %rdx,%r11          ;*synchronization entry
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.62%    0.32%     0x00007f603523f7ff: mov    0x30(%rsp),%r13
                     0x00007f603523f804: mov    0x9c(%rsp),%r14d
  0.05%    0.01%     0x00007f603523f80c: mov    0x94(%rsp),%r9d
  0.01%    0.00%     0x00007f603523f814: mov    0x10(%rsp),%r10d   ;*aload
                                                                   ; - com.google.re2j.Machine::step@207 (line 315)
  2.38%    2.98%  ↗  0x00007f603523f819: inc    %r10d              ;*iinc
                  │                                                ; - com.google.re2j.Machine::step@218 (line 282)
  0.01%           │  0x00007f603523f81c: cmp    %r14d,%r10d
                  │  0x00007f603523f81f: jge    0x00007f603523fc89
  0.19%    0.21%  │  0x00007f603523f825: mov    %r11,%rbx          ;*aload_0
                  │                                                ; - com.google.re2j.Machine::step@25 (line 285)
  0.26%    0.25%  │  0x00007f603523f828: mov    0x8(%rsp),%r11
  2.03%    2.16%  │  0x00007f603523f82d: movzbl 0x11(%r11),%r11d   ;*getfield captures
                  │                                                ; - com.google.re2j.Machine::step@26 (line 285)
  0.91%    0.75%  │  0x00007f603523f832: test   %r11d,%r11d
                  │  0x00007f603523f835: jne    0x00007f603523fd99  ;*ifne
                  │                                                ; - com.google.re2j.Machine::step@29 (line 285)
  0.81%    0.84%  │  0x00007f603523f83b: mov    0x20(%r13),%ebp    ;*getfield denseThreadsInstructions
                  │                                                ; - com.google.re2j.Machine::step@82 (line 295)
  0.16%    0.12%  │  0x00007f603523f83f: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f6035240a55
  1.75%    2.28%  │  0x00007f603523f844: cmp    %r11d,%r10d
                  │  0x00007f603523f847: jae    0x00007f603523fd72
  0.04%    0.06%  │  0x00007f603523f84d: lea    (%r12,%rbp,8),%r11
  0.72%    0.71%  │  0x00007f603523f851: mov    0x10(%r11,%r10,4),%r11d  ;*aaload
                  │                                                ; - com.google.re2j.Machine::step@87 (line 295)
  0.12%    0.11%  │  0x00007f603523f856: mov    0xc(%r12,%r11,8),%ebp  ;*getfield op
                  │                                                ; - com.google.re2j.Machine::step@92 (line 297)
                  │                                                ; implicit exception: dispatches to 0x00007f6035240a69
  2.67%    2.67%  │  0x00007f603523f85b: cmp    $0x6,%ebp
                  │  0x00007f603523f85e: je     0x00007f603523fded  ;*if_icmpne
                  │                                                ; - com.google.re2j.Machine::step@97 (line 297)
  1.01%    0.91%  │  0x00007f603523f864: cmp    $0xa,%ebp
                  │  0x00007f603523f867: jne    0x00007f603523fc18  ;*if_icmpne
                  │                                                ; - com.google.re2j.Inst::matchRune@6 (line 90)
                  │                                                ; - com.google.re2j.Machine::step@181 (line 312)
  0.45%    0.52%  │  0x00007f603523f86d: mov    0x2c(%r12,%r11,8),%ecx  ;*getfield outInst
                  │                                                ; - com.google.re2j.Machine::step@189 (line 313)
  0.12%    0.03%  │  0x00007f603523f872: mov    0x8(%r12,%rcx,8),%edi  ; implicit exception: dispatches to 0x00007f6035240a79
  1.01%    1.11%  │  0x00007f603523f877: lea    (%r12,%rcx,8),%r8
  0.02%    0.04%  │  0x00007f603523f87b: cmp    $0xf8019843,%edi   ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                  │  0x00007f603523f881: jne    0x00007f603523fcbb  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Machine::step@202 (line 313)
  0.64%    0.72%  │  0x00007f603523f887: mov    0x18(%r8),%edx     ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 175)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.05%  │  0x00007f603523f88b: mov    %rbx,%r11
  0.01%    0.01%  │  0x00007f603523f88e: mov    0x10(%rbx),%rbx    ;*getfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
                  │                                                ; implicit exception: dispatches to 0x00007f6035240a91
  0.01%    0.00%  │  0x00007f603523f892: cmp    $0x40,%edx
                  │  0x00007f603523f895: jg     0x00007f60352400ad  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.52%    0.74%  │  0x00007f603523f89b: mov    $0x1,%eax
  0.05%    0.06%  │  0x00007f603523f8a0: mov    %edx,%ecx
  0.02%    0.01%  │  0x00007f603523f8a2: shl    %cl,%rax           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  1.13%    1.26%  │  0x00007f603523f8a5: mov    %rbx,%rcx
  0.01%    0.00%  │  0x00007f603523f8a8: and    %rax,%rcx
  0.00%    0.01%  │  0x00007f603523f8ab: test   %rcx,%rcx
                  ╰  0x00007f603523f8ae: jne    0x00007f603523f819  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.27%    0.27%     0x00007f603523f8b4: cmp    $0x40,%edx
                     0x00007f603523f8b7: jge    0x00007f6035240105  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.43%    0.37%     0x00007f603523f8bd: mov    %r12b,0x18(%r11)   ;*putfield empty
                                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.00%     0x00007f603523f8c1: mov    0x2c(%r8),%ebp     ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.01%     0x00007f603523f8c5: or     %rbx,%rax          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.28%    0.29%     0x00007f603523f8c8: mov    %rax,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.36%    0.35%     0x00007f603523f8cc: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f6035240aa5
  1.37%    0.96%     0x00007f603523f8d1: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007f603523f8d7: jne    0x00007f603523fe95
  0.65%    0.54%     0x00007f603523f8dd: lea    (%r12,%rbp,8),%rdi  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
           0.00%     0x00007f603523f8e1: mov    0x18(%rdi),%edx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.54%    0.55%     0x00007f603523f8e4: cmp    $0x40,%edx
                     0x00007f603523f8e7: jg     0x00007f603524015d  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.55%    0.54%     0x00007f603523f8ed: mov    $0x1,%ebx
  0.12%    0.05%     0x00007f603523f8f2: mov    %edx,%ecx
                     0x00007f603523f8f4: shl    %cl,%rbx           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  1.45%    1.21%     0x00007f603523f8f7: mov    %rax,%rcx
                     0x00007f603523f8fa: and    %rbx,%rcx          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f603523f8fd: test   %rcx,%rcx
  0.18%    0.22%     0x00007f603523f900: jne    0x00007f60352401b9  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.64%    0.61%     0x00007f603523f906: cmp    $0x40,%edx
                     0x00007f603523f909: jge    0x00007f603524021d  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.00%     0x00007f603523f90f: or     %rbx,%rax          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f603523f912: mov    %rax,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%    0.00%     0x00007f603523f916: mov    0x20(%r11),%edx    ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.73%    0.50%     0x00007f603523f91a: mov    0xc(%r11),%ecx     ;*getfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f603523f91e: mov    %ecx,%esi
                     0x00007f603523f920: inc    %esi               ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.02%     0x00007f603523f922: mov    %esi,0xc(%r11)     ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.62%    0.44%     0x00007f603523f926: mov    0xc(%r12,%rdx,8),%ebx  ; implicit exception: dispatches to 0x00007f6035240abd
  0.00%              0x00007f603523f92b: mov    %ebx,0x18(%rsp)
                     0x00007f603523f92f: cmp    %ebx,%ecx
                     0x00007f603523f931: jae    0x00007f603523fe39
  0.01%    0.01%     0x00007f603523f937: vmovd  %esi,%xmm0
  0.69%    0.45%     0x00007f603523f93b: mov    %ecx,0x14(%rsp)
                     0x00007f603523f93f: vmovd  %edx,%xmm1
  0.00%              0x00007f603523f943: mov    %r10d,0x10(%rsp)
  0.02%    0.01%     0x00007f603523f948: mov    %r9d,0x94(%rsp)
  0.69%    0.54%     0x00007f603523f950: mov    %r14d,0x9c(%rsp)
                     0x00007f603523f958: mov    %r11,%rdx
                     0x00007f603523f95b: mov    %r13,0x30(%rsp)
  0.00%    0.03%     0x00007f603523f960: vmovd  %xmm1,%r10d
  0.60%    0.79%     0x00007f603523f965: mov    0x8(%r12,%r10,8),%r11d
           0.00%     0x00007f603523f96a: cmp    $0xf8019807,%r11d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                     0x00007f603523f971: jne    0x00007f603523fee9  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f603523f977: mov    0x34(%r8),%r10d    ;*getfield inst2
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@41 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.01%     0x00007f603523f97b: mov    %r10d,%r13d
  0.58%    0.61%     0x00007f603523f97e: mov    %rdi,%r10
           0.00%     0x00007f603523f981: shr    $0x3,%r10          ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f603523f985: vmovd  %xmm1,%r8d
  0.01%    0.00%     0x00007f603523f98a: shl    $0x3,%r8           ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.62%    0.47%     0x00007f603523f98e: lea    0x10(%r8,%rcx,4),%r11
                     0x00007f603523f993: mov    %r10d,(%r11)
  0.03%    0.02%     0x00007f603523f996: mov    %r11,%r10
  0.01%    0.02%     0x00007f603523f999: shr    $0x9,%r10
  0.57%    0.48%     0x00007f603523f99d: movabs $0x7f60463f7000,%r11
  0.00%    0.00%     0x00007f603523f9a7: mov    %r12b,(%r11,%r10,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.08%    0.11%     0x00007f603523f9ab: mov    %r13d,%r10d
  0.00%    0.01%     0x00007f603523f9ae: mov    0x8(%r12,%r10,8),%ecx  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                                                                   ; implicit exception: dispatches to 0x00007f6035240ad9
  0.58%    0.62%     0x00007f603523f9b3: movslq 0x14(%rsp),%r10
                     0x00007f603523f9b8: lea    (%r8,%r10,4),%r9   ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.08%     0x00007f603523f9bc: mov    %r9,%r11
           0.01%     0x00007f603523f9bf: add    $0x14,%r11         ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.54%    0.48%     0x00007f603523f9c3: mov    %r13d,%r10d
  0.00%              0x00007f603523f9c6: lea    (%r12,%r10,8),%rdi
  0.05%    0.04%     0x00007f603523f9ca: mov    0x14(%rsp),%ebx
           0.00%     0x00007f603523f9ce: add    $0x2,%ebx          ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.69%    0.30%     0x00007f603523f9d1: cmp    $0xf8019885,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                     0x00007f603523f9d7: jne    0x00007f603523f784  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%              0x00007f603523f9dd: mov    %rdi,%r13
  0.03%    0.02%     0x00007f603523f9e0: mov    0x18(%rdi),%r10d   ;*getfield pc
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@2 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%    0.00%     0x00007f603523f9e4: mov    %r10d,%ecx
  0.71%    0.27%     0x00007f603523f9e7: cmp    $0x40,%r10d
                     0x00007f603523f9eb: jg     0x00007f6035240395  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%              0x00007f603523f9f1: mov    $0x1,%edi
  0.04%    0.04%     0x00007f603523f9f6: shl    %cl,%rdi           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.57%    0.23%     0x00007f603523f9f9: mov    %rax,%r10
  0.06%    0.04%     0x00007f603523f9fc: and    %rdi,%r10          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.01%     0x00007f603523f9ff: test   %r10,%r10
                     0x00007f603523fa02: jne    0x00007f60352403d1  ;*ifeq
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@8 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.59%    0.44%     0x00007f603523fa08: mov    %ecx,%r10d
                     0x00007f603523fa0b: cmp    $0x40,%r10d
                     0x00007f603523fa0f: jge    0x00007f603524041d  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.01%     0x00007f603523fa15: or     %rdi,%rax          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.01%     0x00007f603523fa18: mov    %rax,0x10(%rdx)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.71%    0.55%     0x00007f603523fa1c: mov    0x2c(%r13),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@83 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f603523fa20: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f6035240b11
  0.06%    0.05%     0x00007f603523fa25: cmp    $0xf8019843,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                     0x00007f603523fa2b: jne    0x00007f6035240055
  0.01%              0x00007f603523fa31: lea    (%r12,%rbp,8),%r13  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.61%    0.18%     0x00007f603523fa35: mov    0x18(%r13),%r10d   ;*getfield pc
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f603523fa39: mov    %r10d,%ecx
  0.07%    0.02%     0x00007f603523fa3c: cmp    $0x40,%r10d
  0.00%    0.01%     0x00007f603523fa40: jg     0x00007f603524051d  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.69%    0.53%     0x00007f603523fa46: mov    $0x1,%edi
  0.01%              0x00007f603523fa4b: shl    %cl,%rdi           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.80%    0.83%     0x00007f603523fa4e: mov    %rax,%r10
           0.00%     0x00007f603523fa51: and    %rdi,%r10
  0.07%    0.06%     0x00007f603523fa54: test   %r10,%r10
                     0x00007f603523fa57: jne    0x00007f603523fd6a  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.01%     0x00007f603523fa5d: mov    %ecx,%r10d
  0.71%    0.71%     0x00007f603523fa60: cmp    $0x40,%r10d
                     0x00007f603523fa64: jge    0x00007f6035240559  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.00%     0x00007f603523fa6a: mov    0x2c(%r13),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.06%     0x00007f603523fa6e: or     %rdi,%rax          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.04%     0x00007f603523fa71: mov    %rax,0x10(%rdx)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.60%    0.80%     0x00007f603523fa75: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f6035240b29
           0.00%     0x00007f603523fa7a: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
  0.04%    0.05%     0x00007f603523fa80: jne    0x00007f6035240081
  0.03%    0.01%     0x00007f603523fa86: lea    (%r12,%rbp,8),%r14  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.72%    0.76%     0x00007f603523fa8a: mov    0x18(%r14),%r10d   ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
           0.01%     0x00007f603523fa8e: vmovd  %r10d,%xmm2
  0.04%    0.07%     0x00007f603523fa93: cmp    $0x40,%r10d
                     0x00007f603523fa97: jg     0x00007f6035240595  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.01%     0x00007f603523fa9d: mov    $0x1,%edi
  0.68%    0.79%     0x00007f603523faa2: mov    %r10d,%ecx
           0.00%     0x00007f603523faa5: shl    %cl,%rdi           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.74%    0.87%     0x00007f603523faa8: mov    %rax,%r10
                     0x00007f603523faab: and    %rdi,%r10          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.06%    0.04%     0x00007f603523faae: test   %r10,%r10
                     0x00007f603523fab1: jne    0x00007f60352405d5  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
           0.02%     0x00007f603523fab7: mov    %ecx,%r10d
  0.61%    0.60%     0x00007f603523faba: cmp    $0x40,%r10d
                     0x00007f603523fabe: jge    0x00007f6035240629  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f603523fac4: mov    %ebx,0xc(%rdx)     ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.02%     0x00007f603523fac7: or     %rdi,%rax          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.02%     0x00007f603523faca: mov    %rax,0x10(%rdx)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.64%    0.73%     0x00007f603523face: cmp    0x18(%rsp),%ebx
                     0x00007f603523fad2: jae    0x00007f603523ffe1  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f603523fad8: mov    0x34(%r13),%r10d   ;*getfield inst2
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@41 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.06%    0.03%     0x00007f603523fadc: mov    %r10d,%edi
           0.01%     0x00007f603523fadf: mov    %r11,%rcx
  0.56%    0.66%     0x00007f603523fae2: mov    %r14,%r10
  0.00%              0x00007f603523fae5: shr    $0x3,%r10
  0.03%    0.06%     0x00007f603523fae9: mov    %r10d,(%r11)
  0.01%    0.02%     0x00007f603523faec: shr    $0x9,%rcx
  0.57%    0.63%     0x00007f603523faf0: movabs $0x7f60463f7000,%r10
  0.00%              0x00007f603523fafa: mov    %r12b,(%r10,%rcx,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.06%     0x00007f603523fafe: mov    0x8(%r12,%rdi,8),%ecx  ; implicit exception: dispatches to 0x00007f6035240b41
  0.02%              0x00007f603523fb03: mov    %edi,%r11d
  0.60%    0.68%     0x00007f603523fb06: lea    (%r12,%r11,8),%r10
  0.00%    0.00%     0x00007f603523fb0a: cmp    $0xf8019885,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                     0x00007f603523fb10: jne    0x00007f603523fb9f  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f603523fb16: mov    0x18(%r10),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@2 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
....................................................................................................
 43.94%   42.22%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 581 (1089 bytes) 

                             0x00007f6035260af2: jge    0x00007f6035262151  ;*if_icmplt
                                                                           ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                           ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                           ; - com.google.re2j.Machine::match@60 (line 193)
                             0x00007f6035260af8: shl    $0x3,%r10d         ;*ishl
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                                                                           ; - com.google.re2j.Machine::match@60 (line 193)
                             0x00007f6035260afc: mov    %r10d,%r8d
                             0x00007f6035260aff: and    $0x7,%r8d
  0.00%    0.00%             0x00007f6035260b03: or     $0x1,%r10d
                             0x00007f6035260b07: vmovd  %r10d,%xmm3
  0.01%    0.02%             0x00007f6035260b0c: or     $0x1,%r8d          ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                                                                           ; - com.google.re2j.Machine::match@60 (line 193)
                             0x00007f6035260b10: mov    %r8d,0x28(%rsp)
  0.00%    0.00%             0x00007f6035260b15: mov    %r10d,%edi
                             0x00007f6035260b18: sar    $0x3,%edi          ;*ishr
                                                                           ; - com.google.re2j.Machine::match@68 (line 194)
                             0x00007f6035260b1b: cmp    $0xfffffff8,%r10d
                             0x00007f6035260b1f: je     0x00007f6035261d6d  ;*if_icmpeq
                                                                           ; - com.google.re2j.Machine::match@88 (line 198)
                             0x00007f6035260b25: vmovd  %xmm0,%r10d
           0.00%             0x00007f6035260b2a: add    %r8d,%r10d
                             0x00007f6035260b2d: add    %esi,%r10d         ;*iadd
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                                                                           ; - com.google.re2j.Machine::match@96 (line 199)
                             0x00007f6035260b30: mov    %r10d,%edx
                             0x00007f6035260b33: cmp    %r14d,%r10d
                             0x00007f6035260b36: jge    0x00007f60352614a0  ;*if_icmpge
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                                                                           ; - com.google.re2j.Machine::match@96 (line 199)
           0.00%             0x00007f6035260b3c: test   %r10d,%r10d
                             0x00007f6035260b3f: jl     0x00007f6035262009  ;*iflt
                                                                           ; - java.lang.String::charAt@1 (line 657)
                                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                           ; - com.google.re2j.Machine::match@96 (line 199)
  0.01%                      0x00007f6035260b45: cmp    %eax,%r10d
                             0x00007f6035260b48: jge    0x00007f603526219d  ;*if_icmplt
                                                                           ; - java.lang.String::charAt@10 (line 657)
                                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                           ; - com.google.re2j.Machine::match@96 (line 199)
                             0x00007f6035260b4e: cmp    %eax,%r10d
                             0x00007f6035260b51: jae    0x00007f6035261e11
  0.01%    0.00%             0x00007f6035260b57: movzwl 0x10(%rbx,%r10,2),%r10d  ;*caload
                                                                           ; - java.lang.String::charAt@27 (line 660)
                                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                           ; - com.google.re2j.Machine::match@96 (line 199)
           0.01%             0x00007f6035260b5d: cmp    $0xd800,%r10d
                             0x00007f6035260b64: jge    0x00007f6035262201  ;*if_icmplt
                                                                           ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                           ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                           ; - com.google.re2j.Machine::match@96 (line 199)
  0.00%                      0x00007f6035260b6a: shl    $0x3,%r10d         ;*ishl
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                                                                           ; - com.google.re2j.Machine::match@96 (line 199)
                             0x00007f6035260b6e: mov    %r10d,%r8d
                             0x00007f6035260b71: or     $0x1,%r8d
  0.01%    0.00%             0x00007f6035260b75: and    $0x7,%r10d
                             0x00007f6035260b79: sar    $0x3,%r8d          ;*ishr
                                                                           ; - com.google.re2j.Machine::match@104 (line 200)
  0.01%                      0x00007f6035260b7d: mov    %r8d,0x2c(%rsp)
  0.01%                      0x00007f6035260b82: or     $0x1,%r10d         ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                                                                           ; - com.google.re2j.Machine::match@96 (line 199)
                             0x00007f6035260b86: mov    %r10d,0x30(%rsp)   ;*ishr
                                                                           ; - com.google.re2j.Machine::match@104 (line 200)
  0.01%    0.00%             0x00007f6035260b8b: vmovd  %xmm0,%r10d
                             0x00007f6035260b90: test   %r10d,%r10d
                             0x00007f6035260b93: jne    0x00007f6035261fb1  ;*ifne
                                                                           ; - com.google.re2j.Machine::match@115 (line 204)
                             0x00007f6035260b99: test   %edi,%edi
                             0x00007f6035260b9b: jl     0x00007f603526147f  ;*ifge
                                                                           ; - com.google.re2j.Utils::emptyOpContext@21 (line 179)
                                                                           ; - com.google.re2j.Machine::match@121 (line 205)
                             0x00007f6035260ba1: mov    $0x5,%r10d         ;*iload_1
                                                                           ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                                                                           ; - com.google.re2j.Machine::match@121 (line 205)
  0.01%    0.00%             0x00007f6035260ba7: cmp    $0xa,%edi
                             0x00007f6035260baa: je     0x00007f6035261497  ;*iload_0
                                                                           ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                                                                           ; - com.google.re2j.Machine::match@121 (line 205)
                             0x00007f6035260bb0: mov    %edi,%r8d
                             0x00007f6035260bb3: add    $0xffffffbf,%r8d
                             0x00007f6035260bb7: cmp    $0x1a,%r8d
                  ╭          0x00007f6035260bbb: jb     0x00007f6035260bcb  ;*if_icmple
                  │                                                        ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │                                                        ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                        ; - com.google.re2j.Machine::match@121 (line 205)
           0.00%  │          0x00007f6035260bbd: mov    %edi,%ebx
                  │          0x00007f6035260bbf: add    $0xffffff9f,%ebx
                  │          0x00007f6035260bc2: cmp    $0x1a,%ebx
                  │          0x00007f6035260bc5: jae    0x00007f60352614b8  ;*iconst_1
                  │                                                        ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │                                                        ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                        ; - com.google.re2j.Machine::match@121 (line 205)
           0.00%  ↘          0x00007f6035260bcb: or     $0x10,%r10d        ;*iload_2
                                                                           ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                           ; - com.google.re2j.Machine::match@121 (line 205)
  0.02%    0.00%             0x00007f6035260bcf: mov    0x40(%rsp),%r8
  0.01%                      0x00007f6035260bd4: movzbl 0x11(%r8),%ebx     ;*getfield captures
                                                                           ; - com.google.re2j.Machine::match@283 (line 240)
  0.02%    0.01%             0x00007f6035260bd9: vmovd  %xmm1,%edx
                             0x00007f6035260bdd: mov    %rdx,%r8
  0.00%                      0x00007f6035260be0: shl    $0x3,%r8           ;*getfield q1
                                                                           ; - com.google.re2j.Machine::match@53 (line 192)
                             0x00007f6035260be4: mov    %r8,0x20(%rsp)
  0.00%                      0x00007f6035260be9: xor    %eax,%eax
                             0x00007f6035260beb: mov    $0x1,%r8d
  0.00%                      0x00007f6035260bf1: xor    %ebp,%ebp
                             0x00007f6035260bf3: mov    %r8d,0x14(%rsp)
                             0x00007f6035260bf8: mov    %ebp,0x60(%rsp)
  0.00%            ╭         0x00007f6035260bfc: jmpq   0x00007f6035260d7e
  0.05%    0.06%   │    ↗    0x00007f6035260c01: or     $0x20,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                   │    │                                                  ; - com.google.re2j.Machine::match@322 (line 245)
  0.04%    0.03%   │    │    0x00007f6035260c05: mov    %r8d,0x4c(%rsp)    ;*iload_2
                   │    │                                                  ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   │    │                                                  ; - com.google.re2j.Machine::match@322 (line 245)
  0.40%    0.43%   │    │↗   0x00007f6035260c0a: mov    0x60(%rsp),%r10d
  0.26%    0.19%   │    ││   0x00007f6035260c0f: cmp    %r14d,%r10d
                   │    ││   0x00007f6035260c12: je     0x00007f60352612c7  ;*if_icmpne
                   │    ││                                                 ; - com.google.re2j.Machine::match@347 (line 246)
  0.19%    0.19%   │    ││   0x00007f6035260c18: xor    %ebx,%ebx          ;*invokespecial step
                   │    ││                                                 ; - com.google.re2j.Machine::match@355 (line 246)
  0.05%    0.09%   │    ││   0x00007f6035260c1a: mov    %rax,-0x8(%rsp)
  0.42%    0.27%   │    ││   0x00007f6035260c1f: mov    0x60(%rsp),%eax
  0.13%    0.19%   │    ││   0x00007f6035260c23: mov    %eax,0x38(%rsp)
  0.34%    0.26%   │    ││   0x00007f6035260c27: mov    -0x8(%rsp),%rax    ;*invokevirtual endPos
                   │    ││                                                 ; - com.google.re2j.Machine::match@344 (line 246)
  0.51%    0.22%   │    ││   0x00007f6035260c2c: add    0x28(%rsp),%r10d   ;*iadd
                   │    ││                                                 ; - com.google.re2j.Machine::match@336 (line 246)
  0.25%    0.39%   │    ││   0x00007f6035260c31: mov    %r10d,0x60(%rsp)
  0.18%    0.21%   │    ││   0x00007f6035260c36: mov    0x40(%rsp),%rsi
  0.14%    0.00%   │    ││   0x00007f6035260c3b: mov    0x18(%rsp),%rdx
  0.12%    0.05%   │    ││   0x00007f6035260c40: mov    0x20(%rsp),%rcx
  0.27%    0.35%   │    ││   0x00007f6035260c45: mov    0x38(%rsp),%r8d
  0.36%    0.19%   │    ││   0x00007f6035260c4a: mov    %r10d,%r9d
  0.09%    0.11%   │    ││   0x00007f6035260c4d: mov    0x4c(%rsp),%r11d
  0.07%    0.09%   │    ││   0x00007f6035260c52: mov    %r11d,(%rsp)
  0.31%    0.02%   │    ││   0x00007f6035260c56: mov    0x3c(%rsp),%r11d
  0.21%    0.16%   │    ││   0x00007f6035260c5b: mov    %r11d,0x8(%rsp)
  0.12%    0.12%   │    ││   0x00007f6035260c60: mov    %ebx,0x10(%rsp)
  0.09%    0.02%   │    ││   0x00007f6035260c64: data16 xchg %ax,%ax
  0.29%    0.31%   │    ││   0x00007f6035260c67: callq  0x00007f6035046020  ; OopMap{[24]=Oop [32]=Oop [52]=NarrowOop [64]=Oop [80]=Oop off=652}
                   │    ││                                                 ;*invokespecial step
                   │    ││                                                 ; - com.google.re2j.Machine::match@355 (line 246)
                   │    ││                                                 ;   {optimized virtual_call}
                   │    ││   0x00007f6035260c6c: mov    0x40(%rsp),%r10
  0.74%    0.82%   │    ││   0x00007f6035260c71: movzbl 0x11(%r10),%ebx    ;*getfield captures
                   │    ││                                                 ; - com.google.re2j.Machine::match@367 (line 250)
                   │    ││   0x00007f6035260c76: movzbl 0x10(%r10),%eax    ;*getfield matched
                   │    ││                                                 ; - com.google.re2j.Machine::match@374 (line 250)
                   │    ││   0x00007f6035260c7b: mov    0x28(%rsp),%r8d
  0.66%    0.85%   │    ││   0x00007f6035260c80: test   %r8d,%r8d
                   │    ││   0x00007f6035260c83: je     0x00007f6035261288  ;*ifne
                   │    ││                                                 ; - com.google.re2j.Machine::match@360 (line 247)
                   │    ││   0x00007f6035260c89: test   %ebx,%ebx
                   │    ││   0x00007f6035260c8b: jne    0x00007f60352617d1  ;*ifne
                   │    ││                                                 ; - com.google.re2j.Machine::match@370 (line 250)
           0.00%   │    ││   0x00007f6035260c91: test   %eax,%eax
                   │    ││   0x00007f6035260c93: jne    0x00007f6035261a15  ;*ifeq
                   │    ││                                                 ; - com.google.re2j.Machine::match@377 (line 250)
  0.00%    0.00%   │    ││   0x00007f6035260c99: mov    0x50(%rsp),%r10
  0.64%    0.73%   │    ││   0x00007f6035260c9e: mov    0x10(%r10),%r14d   ;*getfield end
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                   │    ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
           0.01%   │    ││   0x00007f6035260ca2: mov    0xc(%r10),%esi     ;*getfield start
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                   │    ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
                   │    ││   0x00007f6035260ca6: mov    0x14(%r10),%ecx    ;*getfield str
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                   │    ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.00%    0.00%   │    ││   0x00007f6035260caa: mov    0x2c(%rsp),%r11d
  0.65%    0.51%   │    ││   0x00007f6035260caf: cmp    $0xffffffff,%r11d
                   │    ││   0x00007f6035260cb3: je     0x00007f60352612d1  ;*if_icmpeq
                   │    ││                                                 ; - com.google.re2j.Machine::match@399 (line 258)
                   │    ││   0x00007f6035260cb9: mov    0x30(%rsp),%r9d
                   │    ││   0x00007f6035260cbe: add    0x60(%rsp),%r9d
  0.01%    0.00%   │    ││   0x00007f6035260cc3: add    %esi,%r9d          ;*iadd
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                   │    ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.64%    0.64%   │    ││   0x00007f6035260cc6: cmp    %r14d,%r9d
                   │    ││   0x00007f6035260cc9: jge    0x00007f60352612f2  ;*if_icmpge
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                   │    ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.00%            │    ││   0x00007f6035260ccf: mov    0x8(%r12,%rcx,8),%r11d  ; implicit exception: dispatches to 0x00007f60352628c9
  0.36%    0.44%   │    ││   0x00007f6035260cd4: cmp    $0xf80002da,%r11d  ;   {metadata(&apos;java/lang/String&apos;)}
                   │    ││   0x00007f6035260cdb: jne    0x00007f60352616c5
  0.07%    0.07%   │    ││   0x00007f6035260ce1: lea    (%r12,%rcx,8),%rdi  ;*invokeinterface charAt
                   │    ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.61%    0.77%   │    ││   0x00007f6035260ce5: test   %r9d,%r9d
                   │    ││   0x00007f6035260ce8: jl     0x00007f6035261825  ;*iflt
                   │    ││                                                 ; - java.lang.String::charAt@1 (line 657)
                   │    ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
                   │    ││   0x00007f6035260cee: mov    0xc(%rdi),%r8d     ;*getfield value
                   │    ││                                                 ; - java.lang.String::charAt@6 (line 657)
                   │    ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.00%            │    ││   0x00007f6035260cf2: mov    0xc(%r12,%r8,8),%ebp  ;*arraylength
                   │    ││                                                 ; - java.lang.String::charAt@9 (line 657)
                   │    ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
                   │    ││                                                 ; implicit exception: dispatches to 0x00007f60352628dd
  1.44%    1.83%   │    ││   0x00007f6035260cf7: cmp    %ebp,%r9d
                   │    ││   0x00007f6035260cfa: jge    0x00007f6035261a69  ;*if_icmplt
                   │    ││                                                 ; - java.lang.String::charAt@10 (line 657)
                   │    ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.68%    0.71%   │    ││   0x00007f6035260d00: cmp    %ebp,%r9d
                   │    ││   0x00007f6035260d03: jae    0x00007f6035261571
  0.08%    0.09%   │    ││   0x00007f6035260d09: lea    (%r12,%r8,8),%r10
                   │    ││   0x00007f6035260d0d: movzwl 0x10(%r10,%r9,2),%r8d  ;*caload
                   │    ││                                                 ; - java.lang.String::charAt@27 (line 660)
                   │    ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.09%    0.07%   │    ││   0x00007f6035260d13: cmp    $0xd800,%r8d
                   │    ││   0x00007f6035260d1a: jge    0x00007f6035261ae1  ;*if_icmplt
                   │    ││                                                 ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   │    ││                                                 ; - java.lang.Character::codePointAt@9 (line 4867)
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.66%    0.51%   │    ││   0x00007f6035260d20: shl    $0x3,%r8d          ;*ishl
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                   │    ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.44%    0.41%   │    ││   0x00007f6035260d24: mov    %r8d,%ebp
                   │    ││   0x00007f6035260d27: or     $0x1,%ebp
  0.62%    0.58%   │    ││   0x00007f6035260d2a: and    $0x7,%r8d
  0.02%    0.05%   │    ││   0x00007f6035260d2e: sar    $0x3,%ebp          ;*ishr
                   │    ││                                                 ; - com.google.re2j.Machine::match@415 (line 260)
  0.58%    0.66%   │    ││   0x00007f6035260d31: or     $0x1,%r8d          ; OopMap{rcx=NarrowOop [24]=Oop [32]=Oop [64]=Oop [80]=Oop off=853}
                   │    ││                                                 ;*goto
                   │    ││                                                 ; - com.google.re2j.Machine::match@437 (line 266)
  0.00%    0.02%   │    ││   0x00007f6035260d35: test   %eax,0x1878e2c5(%rip)        # 0x00007f604d9ef000
                   │    ││                                                 ;*goto
                   │    ││                                                 ; - com.google.re2j.Machine::match@437 (line 266)
                   │    ││                                                 ;   {poll}
  0.12%    0.06%   │    ││   0x00007f6035260d3b: mov    0x40(%rsp),%r10
  0.02%    0.06%   │    ││   0x00007f6035260d40: mov    0x28(%r10),%r11d   ;*getfield matchcap
                   │    ││                                                 ; - com.google.re2j.Machine::match@307 (line 243)
  0.68%    0.54%   │    ││   0x00007f6035260d44: mov    0x14(%r10),%r9d    ;*getfield re2
                   │    ││                                                 ; - com.google.re2j.Machine::match@169 (line 220)
                   │    ││   0x00007f6035260d48: mov    0x20(%rsp),%r10
  0.04%    0.07%   │    ││   0x00007f6035260d4d: mov    %r10,%rdi
  0.05%    0.08%   │    ││   0x00007f6035260d50: shr    $0x3,%rdi
  0.57%    0.61%   │    ││   0x00007f6035260d54: mov    %edi,0x34(%rsp)
  0.00%            │    ││   0x00007f6035260d58: mov    0x2c(%rsp),%edi
  0.08%    0.05%   │    ││   0x00007f6035260d5c: mov    0x4c(%rsp),%r10d
  0.03%    0.07%   │    ││   0x00007f6035260d61: mov    0x18(%rsp),%rdx
  0.62%    0.75%   │    ││   0x00007f6035260d66: mov    %rdx,0x20(%rsp)
  0.01%            │    ││   0x00007f6035260d6b: mov    0x30(%rsp),%r13d
  0.07%    0.12%   │    ││   0x00007f6035260d70: mov    %r13d,0x28(%rsp)
  0.03%    0.05%   │    ││   0x00007f6035260d75: mov    %ebp,0x2c(%rsp)
  0.49%    0.68%   │    ││   0x00007f6035260d79: mov    %r8d,0x30(%rsp)    ;*getfield matchcap
                   │    ││                                                 ; - com.google.re2j.Machine::match@307 (line 243)
  0.00%    0.02%   ↘    ││   0x00007f6035260d7e: mov    0x34(%rsp),%r8d
  0.06%    0.10%        ││   0x00007f6035260d83: movzbl 0x18(%r12,%r8,8),%r8d  ; implicit exception: dispatches to 0x00007f6035262875
  0.03%    0.04%        ││   0x00007f6035260d89: mov    0x34(%rsp),%ebp
  0.60%    0.61%        ││   0x00007f6035260d8d: lea    (%r12,%rbp,8),%rdx  ;*aload
                        ││                                                 ; - com.google.re2j.Machine::match@136 (line 211)
           0.00%        ││   0x00007f6035260d91: mov    %rdx,0x18(%rsp)
  0.05%    0.06%        ││   0x00007f6035260d96: test   %r8d,%r8d
                        ││   0x00007f6035260d99: jne    0x00007f603526101b  ;*aload_0
                        ││                                                 ; - com.google.re2j.Machine::match@267 (line 237)
  0.06%    0.05%        ││   0x00007f6035260d9f: test   %eax,%eax
                        ││   0x00007f6035260da1: jne    0x00007f603526172d  ;*ifne
                        ││                                                 ; - com.google.re2j.Machine::match@271 (line 237)
  0.60%    0.84%        ││   0x00007f6035260da7: mov    0x60(%rsp),%r8d
  0.00%    0.00%        ││   0x00007f6035260dac: test   %r8d,%r8d
                    ╭   ││   0x00007f6035260daf: je     0x00007f6035260dbf  ;*ifeq
                    │   ││                                                 ; - com.google.re2j.Machine::match@275 (line 237)
  0.05%    0.03%    │   ││   0x00007f6035260db1: mov    0x3c(%rsp),%r9d
  0.03%    0.05%    │   ││   0x00007f6035260db6: test   %r9d,%r9d
                    │   ││   0x00007f6035260db9: jne    0x00007f6035261781  ;*aload_0
                    │   ││                                                 ; - com.google.re2j.Machine::match@282 (line 240)
  0.58%    0.65%    ↘   ││   0x00007f6035260dbf: test   %ebx,%ebx
                        ││   0x00007f6035260dc1: jne    0x00007f60352618a1  ;*ifeq
                        ││                                                 ; - com.google.re2j.Machine::match@286 (line 240)
  0.00%                 ││   0x00007f6035260dc7: mov    0x40(%rsp),%r8
  0.04%                 ││   0x00007f6035260dcc: mov    0x18(%r8),%r8d     ;*getfield prog
                        ││                                                 ; - com.google.re2j.Machine::match@297 (line 243)
  0.06%    0.08%        ││   0x00007f6035260dd0: mov    0x1c(%r12,%r8,8),%ebp  ;*getfield startInst
                        ││                                                 ; - com.google.re2j.Machine::match@300 (line 243)
                        ││                                                 ; implicit exception: dispatches to 0x00007f6035262885
  0.65%    0.71%        ││   0x00007f6035260dd5: mov    0x8(%r12,%rbp,8),%r9d  ; implicit exception: dispatches to 0x00007f6035262895
  0.56%    0.64%        ││   0x00007f6035260dda: cmp    $0xf8019909,%r9d   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                        ││   0x00007f6035260de1: jne    0x00007f60352615f5
  0.61%    0.47%        ││   0x00007f6035260de7: lea    (%r12,%rbp,8),%r8  ;*invokevirtual add
                        ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.02%    0.01%        ││   0x00007f6035260deb: mov    0x18(%r8),%r10d    ;*getfield pc
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                        ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.22%    0.33%        ││   0x00007f6035260def: cmp    $0x40,%r10d
                        ││   0x00007f6035260df3: jg     0x00007f60352618f5  ;*if_icmpgt
                        ││                                                 ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                        ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.38%    0.46%        ││   0x00007f6035260df9: mov    %r8,%r9
  0.06%    0.01%        ││   0x00007f6035260dfc: mov    $0x1,%ebx
  0.01%    0.01%        ││   0x00007f6035260e01: mov    %r10d,%ecx
  0.18%    0.18%        ││   0x00007f6035260e04: shl    %cl,%rbx           ;*lshl
                        ││                                                 ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                        ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  1.28%    0.74%        ││   0x00007f6035260e07: mov    0x34(%rsp),%ecx
  0.07%    0.00%        ││   0x00007f6035260e0b: mov    0x10(%r12,%rcx,8),%rcx  ;*getfield pcsl
                        ││                                                 ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                        ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.01%                 ││   0x00007f6035260e10: mov    %rcx,%r8
  0.04%                 ││   0x00007f6035260e13: and    %rbx,%r8           ;*land
                        ││                                                 ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                        ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.57%    0.30%        ││   0x00007f6035260e16: test   %r8,%r8
                        ││   0x00007f6035260e19: jne    0x00007f6035261945  ;*ifeq
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                        ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.08%    0.03%        ││   0x00007f6035260e1f: cmp    $0x40,%r10d
                        ││   0x00007f6035260e23: jge    0x00007f60352619c1  ;*if_icmpge
                        ││                                                 ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                        ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.00%    0.00%        ││   0x00007f6035260e29: mov    0x34(%rsp),%r10d
  0.07%    0.01%        ││   0x00007f6035260e2e: mov    %r12b,0x18(%r12,%r10,8)  ;*putfield empty
                        ││                                                 ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                        ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.52%    0.49%        ││   0x00007f6035260e33: mov    0xc(%r12,%r10,8),%r10d  ;*getfield size
                        ││                                                 ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                        ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.07%    0.03%        ││   0x00007f6035260e38: mov    0x34(%rsp),%r11d
  0.01%    0.00%        ││   0x00007f6035260e3d: mov    0x20(%r12,%r11,8),%r11d  ;*getfield denseThreadsInstructions
                        ││                                                 ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                        ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.06%    0.04%        ││   0x00007f6035260e42: or     %rcx,%rbx
  0.50%    0.51%        ││   0x00007f6035260e45: mov    0x34(%rsp),%ecx
  0.07%    0.05%        ││   0x00007f6035260e49: mov    %rbx,0x10(%r12,%rcx,8)  ;*putfield pcsl
                        ││                                                 ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                        ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.02%    0.00%        ││   0x00007f6035260e4e: mov    %r10d,%r8d
  0.09%    0.07%        ││   0x00007f6035260e51: inc    %r8d
  0.55%    0.48%        ││   0x00007f6035260e54: mov    %r8d,0xc(%r12,%rcx,8)  ;*putfield size
                        ││                                                 ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                        ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.06%    0.06%        ││   0x00007f6035260e59: mov    0xc(%r12,%r11,8),%r8d  ; implicit exception: dispatches to 0x00007f60352628b1
  0.00%    0.00%        ││   0x00007f6035260e5e: cmp    %r8d,%r10d
                        ││   0x00007f6035260e61: jae    0x00007f6035261501
  0.03%    0.07%        ││   0x00007f6035260e67: mov    0x8(%r12,%r11,8),%r8d
  0.59%    0.44%        ││   0x00007f6035260e6c: cmp    $0xf8019807,%r8d   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                        ││   0x00007f6035260e73: jne    0x00007f6035261651  ;*aastore
                        ││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                        ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.06%    0.05%        ││   0x00007f6035260e79: test   %edi,%edi
                     ╭  ││   0x00007f6035260e7b: jl     0x00007f6035260f29  ;*ifge
                     │  ││                                                 ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                     │  ││                                                 ; - com.google.re2j.Machine::match@322 (line 245)
  0.01%    0.00%     │  ││   0x00007f6035260e81: xor    %r8d,%r8d          ;*iload_0
                     │  ││                                                 ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                     │  ││                                                 ; - com.google.re2j.Machine::match@322 (line 245)
  0.06%    0.09%     │  ││↗  0x00007f6035260e84: cmp    $0xa,%edi
                     │  │││  0x00007f6035260e87: je     0x00007f60352612e0  ;*iload_1
                     │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                     │  │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.57%    0.56%     │  │││  0x00007f6035260e8d: mov    0x2c(%rsp),%ebx
  0.05%    0.09%     │  │││  0x00007f6035260e91: test   %ebx,%ebx
                     │  │││  0x00007f6035260e93: jl     0x00007f6035261270  ;*iload_1
                     │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                     │  │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.01%    0.03%     │  │││  0x00007f6035260e99: cmp    $0xa,%ebx
                     │  │││  0x00007f6035260e9c: je     0x00007f60352612e9  ;*iload_0
                     │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                     │  │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.05%    0.06%     │  │││  0x00007f6035260ea2: mov    %r9,%rcx
  0.59%    0.60%     │  │││  0x00007f6035260ea5: shr    $0x3,%rcx          ;*aastore
                     │  │││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                     │  │││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                     │  │││                                                ; - com.google.re2j.Machine::match@314 (line 243)
  0.07%    0.07%     │  │││  0x00007f6035260ea9: shl    $0x3,%r11          ;*getfield denseThreadsInstructions
                     │  │││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                     │  │││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                     │  │││                                                ; - com.google.re2j.Machine::match@314 (line 243)
  0.02%    0.01%     │  │││  0x00007f6035260ead: lea    0x10(%r11,%r10,4),%r10
  0.06%    0.04%     │  │││  0x00007f6035260eb2: mov    %ecx,(%r10)
  0.57%    0.74%     │  │││  0x00007f6035260eb5: mov    %edi,%r9d
  0.05%    0.08%     │  │││  0x00007f6035260eb8: add    $0xffffffbf,%r9d
  0.02%    0.02%     │  │││  0x00007f6035260ebc: shr    $0x9,%r10
  0.03%    0.04%     │  │││  0x00007f6035260ec0: movabs $0x7f60463f7000,%r11
  0.57%    0.65%     │  │││  0x00007f6035260eca: mov    %r12b,(%r11,%r10,1)  ;*aastore
                     │  │││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                     │  │││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                     │  │││                                                ; - com.google.re2j.Machine::match@314 (line 243)
  0.38%    0.47%     │  │││  0x00007f6035260ece: cmp    $0x1a,%r9d
                     │╭ │││  0x00007f6035260ed2: jb     0x00007f6035260ee5  ;*if_icmple
                     ││ │││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                     ││ │││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     ││ │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.00%              ││ │││  0x00007f6035260ed4: mov    %edi,%r11d
  0.02%    0.04%     ││ │││  0x00007f6035260ed7: add    $0xffffff9f,%r11d
  0.36%    0.43%     ││ │││  0x00007f6035260edb: cmp    $0x1a,%r11d
                     ││ │││  0x00007f6035260edf: jae    0x00007f6035261434  ;*iconst_1
                     ││ │││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                     ││ │││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     ││ │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.13%    0.21%     │↘ │││  0x00007f6035260ee5: mov    $0x1,%ebp          ;*ireturn
                     │  │││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                     │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     │  │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.02%    0.01%     │  │││  0x00007f6035260eea: mov    0x2c(%rsp),%r10d
  0.11%    0.18%     │  │││  0x00007f6035260eef: add    $0xffffffbf,%r10d
  0.39%    0.52%     │  │││  0x00007f6035260ef3: cmp    $0x1a,%r10d
                     │ ╭│││  0x00007f6035260ef7: jb     0x00007f6035260f0c  ;*if_icmple
                     │ ││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                     │ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     │ ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.13%    0.24%     │ ││││  0x00007f6035260ef9: mov    0x2c(%rsp),%r11d
  0.04%    0.01%     │ ││││  0x00007f6035260efe: add    $0xffffff9f,%r11d
  0.11%    0.11%     │ ││││  0x00007f6035260f02: cmp    $0x1a,%r11d
                     │ ││││  0x00007f6035260f06: jae    0x00007f6035261455  ;*iconst_1
                     │ ││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                     │ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     │ ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.31%    0.29%     │ ↘│││  0x00007f6035260f0c: mov    $0x1,%r10d         ;*ireturn
                     │  │││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                     │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     │  │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.33%    0.34%     │  │││  0x00007f6035260f12: cmp    %r10d,%ebp
                     │  ╰││  0x00007f6035260f15: je     0x00007f6035260c01  ;*if_icmpeq
                     │   ││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                     │   ││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.03%    0.04%     │   ││  0x00007f6035260f1b: or     $0x10,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                     │   ││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.07%    0.05%     │   ││  0x00007f6035260f1f: mov    %r8d,0x4c(%rsp)
  0.14%    0.08%     │   ╰│  0x00007f6035260f24: jmpq   0x00007f6035260c0a
                     ↘    │  0x00007f6035260f29: mov    $0x5,%r8d
                          ╰  0x00007f6035260f2f: jmpq   0x00007f6035260e84
                             0x00007f6035260f34: nopl   0x0(%rax,%rax,1)
                             0x00007f6035260f3c: data16 data16 xchg %ax,%ax
  0.00%                      0x00007f6035260f40: mov    %edx,0x5c(%rsp)
  0.01%    0.02%             0x00007f6035260f44: jmpq   0x00007f60352611b1
                             0x00007f6035260f49: mov    0x5c(%rsp),%r9d
                             0x00007f6035260f4e: add    $0x2,%r9d
                             0x00007f6035260f52: mov    %r9d,0x5c(%rsp)
                             0x00007f6035260f57: mov    0x5c(%rsp),%r9d
                             0x00007f6035260f5c: inc    %r9d
                             0x00007f6035260f5f: mov    %r9d,0x58(%rsp)
                             0x00007f6035260f64: jmp    0x00007f6035260f91
                             0x00007f6035260f66: mov    0x5c(%rsp),%r9d
  0.00%                      0x00007f6035260f6b: add    $0x2,%r9d
                             0x00007f6035260f6f: mov    %r9d,0x58(%rsp)
....................................................................................................
 31.86%   31.96%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 531 (454 bytes) 

                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                      ; - com.google.re2j.Machine::step@202 (line 313)
                                                                      ;   {optimized virtual_call}
                        0x00007f603523fb8c: test   %rax,%rax
                        0x00007f603523fb8f: jne    0x00007f60352407ed  ;*ifnull
                                                                      ; - com.google.re2j.Machine::step@209 (line 315)
                        0x00007f603523fb95: mov    0x18(%rsp),%r11
                        0x00007f603523fb9a: jmpq   0x00007f603523f7ff
  0.05%    0.06%        0x00007f603523fb9f: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                        0x00007f603523fba5: jne    0x00007f6035240339  ;*invokevirtual add
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.01%        0x00007f603523fbab: mov    0x18(%r10),%ecx    ;*getfield pc
                                                                      ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.56%    0.75%        0x00007f603523fbaf: cmp    $0x40,%ecx
                        0x00007f603523fbb2: jg     0x00007f603524072d  ;*if_icmpgt
                                                                      ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%    0.00%        0x00007f603523fbb8: mov    $0x1,%r11d
  0.05%    0.05%        0x00007f603523fbbe: shl    %cl,%r11           ;*lshl
                                                                      ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.66%    0.62%        0x00007f603523fbc1: mov    %rax,%rbx
  0.05%    0.03%        0x00007f603523fbc4: and    %r11,%rbx          ;*land
                                                                      ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.00%        0x00007f603523fbc7: test   %rbx,%rbx
                        0x00007f603523fbca: jne    0x00007f6035240769  ;*ifeq
                                                                      ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.75%    0.67%        0x00007f603523fbd0: cmp    $0x40,%ecx
                        0x00007f603523fbd3: jge    0x00007f60352407b1  ;*if_icmpge
                                                                      ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
                        0x00007f603523fbd9: or     %r11,%rax
  0.01%    0.05%        0x00007f603523fbdc: mov    %rdx,%r11
  0.02%    0.00%        0x00007f603523fbdf: mov    %rax,0x10(%r11)    ;*putfield pcsl
                                                                      ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.56%    1.01%        0x00007f603523fbe3: add    $0x18,%r9
  0.00%    0.00%        0x00007f603523fbe7: mov    %r10,%r8
  0.06%    0.05%        0x00007f603523fbea: shr    $0x3,%r8
  0.01%    0.01%        0x00007f603523fbee: mov    %r8d,(%r9)         ;*aastore
                                                                      ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.64%    0.86%        0x00007f603523fbf1: mov    %r9,%r10
                        0x00007f603523fbf4: mov    0x14(%rsp),%r8d
  0.03%    0.08%        0x00007f603523fbf9: add    $0x3,%r8d
  0.01%    0.02%        0x00007f603523fbfd: mov    %r8d,0xc(%r11)     ;*putfield size
                                                                      ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.55%    0.71%        0x00007f603523fc01: shr    $0x9,%r10
                        0x00007f603523fc05: movabs $0x7f60463f7000,%r8
  0.03%    0.03%        0x00007f603523fc0f: mov    %r12b,(%r8,%r10,1)  ;*aastore
                                                                      ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.00%        0x00007f603523fc13: jmpq   0x00007f603523f7ff
  0.85%    0.73%        0x00007f603523fc18: cmp    $0xb,%ebp
                        0x00007f603523fc1b: je     0x00007f603523ff3d  ;*if_icmpne
                                                                      ; - com.google.re2j.Inst::matchRune@17 (line 94)
                                                                      ; - com.google.re2j.Machine::step@181 (line 312)
  0.81%    1.01%        0x00007f603523fc21: mov    0x1c(%r12,%r11,8),%r8d  ;*getfield f0
                                                                      ; - com.google.re2j.Inst::matchRune@42 (line 99)
                                                                      ; - com.google.re2j.Machine::step@181 (line 312)
  0.56%    0.55%        0x00007f603523fc26: cmp    $0x9,%ebp
                  ╭     0x00007f603523fc29: je     0x00007f603523fc74  ;*if_icmpne
                  │                                                   ; - com.google.re2j.Inst::matchRune@38 (line 98)
                  │                                                   ; - com.google.re2j.Machine::step@181 (line 312)
  0.16%    0.24%  │     0x00007f603523fc2b: cmp    $0xc,%ebp
                  │     0x00007f603523fc2e: jne    0x00007f6035240279  ;*if_icmpne
                  │                                                   ; - com.google.re2j.Inst::matchRune@61 (line 102)
                  │                                                   ; - com.google.re2j.Machine::step@181 (line 312)
  0.20%    0.28%  │     0x00007f603523fc34: cmp    0x28(%rsp),%r8d
                  │╭    0x00007f603523fc39: je     0x00007f603523fd60  ;*if_icmpeq
                  ││                                                  ; - com.google.re2j.Inst::matchRune@69 (line 103)
                  ││                                                  ; - com.google.re2j.Machine::step@181 (line 312)
  0.22%    0.39%  ││    0x00007f603523fc3f: mov    0x20(%r12,%r11,8),%r8d  ;*getfield f1
                  ││                                                  ; - com.google.re2j.Inst::matchRune@73 (line 103)
                  ││                                                  ; - com.google.re2j.Machine::step@181 (line 312)
  0.25%    0.33%  ││    0x00007f603523fc44: cmp    0x28(%rsp),%r8d
                  ││╭   0x00007f603523fc49: je     0x00007f603523fd60  ;*if_icmpeq
                  │││                                                 ; - com.google.re2j.Inst::matchRune@77 (line 103)
                  │││                                                 ; - com.google.re2j.Machine::step@181 (line 312)
  0.22%    0.33%  │││   0x00007f603523fc4f: mov    0x24(%r12,%r11,8),%ebp  ;*getfield f2
                  │││                                                 ; - com.google.re2j.Inst::matchRune@81 (line 103)
                  │││                                                 ; - com.google.re2j.Machine::step@181 (line 312)
  0.08%    0.02%  │││   0x00007f603523fc54: cmp    0x28(%rsp),%ebp
                  │││   0x00007f603523fc58: je     0x00007f60352402c9  ;*if_icmpeq
                  │││                                                 ; - com.google.re2j.Inst::matchRune@85 (line 103)
                  │││                                                 ; - com.google.re2j.Machine::step@181 (line 312)
  0.50%    0.58%  │││   0x00007f603523fc5e: mov    0x28(%r12,%r11,8),%ebp  ;*getfield f3
                  │││                                                 ; - com.google.re2j.Inst::matchRune@89 (line 103)
                  │││                                                 ; - com.google.re2j.Machine::step@181 (line 312)
  0.12%    0.18%  │││   0x00007f603523fc63: cmp    0x28(%rsp),%ebp
                  │││   0x00007f603523fc67: je     0x00007f6035240301  ;*if_icmpne
                  │││                                                 ; - com.google.re2j.Inst::matchRune@93 (line 103)
                  │││                                                 ; - com.google.re2j.Machine::step@181 (line 312)
  0.04%    0.03%  │││   0x00007f603523fc6d: xor    %ecx,%ecx
  0.03%    0.03%  │││   0x00007f603523fc6f: jmpq   0x00007f603523f774
  0.62%    0.68%  ↘││   0x00007f603523fc74: cmp    0x28(%rsp),%r8d
                   ││   0x00007f603523fc79: jne    0x00007f603523f772  ;*if_icmpne
                   ││                                                 ; - com.google.re2j.Inst::matchRune@46 (line 99)
                   ││                                                 ; - com.google.re2j.Machine::step@181 (line 312)
  0.03%    0.00%   ││   0x00007f603523fc7f: mov    $0x1,%ecx
  0.00%    0.01%   ││   0x00007f603523fc84: jmpq   0x00007f603523f774  ;*if_icmpge
                   ││                                                 ; - com.google.re2j.Machine::step@22 (line 282)
  0.64%    0.98%   ││   0x00007f603523fc89: movzbl 0x18(%r13),%r11d
  0.00%            ││   0x00007f603523fc8e: test   %r11d,%r11d
                   ││╭  0x00007f603523fc91: jne    0x00007f603523fcac  ;*ifeq
                   │││                                                ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                   │││                                                ; - com.google.re2j.Machine::step@225 (line 319)
           0.01%   │││  0x00007f603523fc93: movb   $0x1,0x18(%r13)    ;*putfield empty
                   │││                                                ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                   │││                                                ; - com.google.re2j.Machine::step@225 (line 319)
                   │││  0x00007f603523fc98: mov    0x1c(%r13),%ebp    ;*getfield pcs
                   │││                                                ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                   │││                                                ; - com.google.re2j.Machine::step@225 (line 319)
  0.66%    0.89%   │││  0x00007f603523fc9c: mov    %r12d,0xc(%r13)    ;*putfield size
                   │││                                                ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                   │││                                                ; - com.google.re2j.Machine::step@225 (line 319)
  0.00%            │││  0x00007f603523fca0: mov    %r12,0x10(%r13)    ;*putfield pcsl
                   │││                                                ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                   │││                                                ; - com.google.re2j.Machine::step@225 (line 319)
  0.01%    0.00%   │││  0x00007f603523fca4: test   %ebp,%ebp
                   │││  0x00007f603523fca6: jne    0x00007f60352402b1  ;*getfield size
                   │││                                                ; - com.google.re2j.Machine::step@10 (line 281)
                   ││↘  0x00007f603523fcac: add    $0x80,%rsp
  0.70%    0.90%   ││   0x00007f603523fcb3: pop    %rbp
                   ││   0x00007f603523fcb4: test   %eax,0x187af346(%rip)        # 0x00007f604d9ef000
                   ││                                                 ;   {poll_return}
           0.00%   ││   0x00007f603523fcba: retq   
  0.04%            ││   0x00007f603523fcbb: cmp    $0xf8019909,%edi   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                   ││   0x00007f603523fcc1: jne    0x00007f60352408a1  ;*invokevirtual add
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
  0.01%            ││   0x00007f603523fcc7: mov    0x18(%r8),%ecx     ;*getfield pc
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
                   ││   0x00007f603523fccb: mov    %rbx,%r11
                   ││   0x00007f603523fcce: mov    0x10(%rbx),%rdi    ;*getfield pcsl
                   ││                                                 ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
                   ││                                                 ; implicit exception: dispatches to 0x00007f6035240b71
  0.01%    0.01%   ││   0x00007f603523fcd2: cmp    $0x40,%ecx
                   ││   0x00007f603523fcd5: jg     0x00007f603524093d  ;*if_icmpgt
                   ││                                                 ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
  0.02%            ││   0x00007f603523fcdb: mov    $0x1,%edx
                   ││   0x00007f603523fce0: shl    %cl,%rdx           ;*lshl
                   ││                                                 ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
  0.02%    0.03%   ││   0x00007f603523fce3: mov    %rdi,%rbx
                   ││   0x00007f603523fce6: and    %rdx,%rbx          ;*land
                   ││                                                 ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
                   ││   0x00007f603523fce9: test   %rbx,%rbx
                   ││   0x00007f603523fcec: jne    0x00007f6035240995  ;*ifeq
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
  0.01%            ││   0x00007f603523fcf2: cmp    $0x40,%ecx
                   ││   0x00007f603523fcf5: jge    0x00007f60352409ed  ;*if_icmpge
                   ││                                                 ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
  0.01%    0.01%   ││   0x00007f603523fcfb: mov    %r12b,0x18(%r11)   ;*putfield empty
                   ││                                                 ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
                   ││   0x00007f603523fcff: mov    0x20(%r11),%ebx    ;*getfield denseThreadsInstructions
                   ││                                                 ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
                   ││   0x00007f603523fd03: or     %rdi,%rdx
  0.02%    0.02%   ││   0x00007f603523fd06: mov    %rdx,0x10(%r11)    ;*putfield pcsl
                   ││                                                 ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
  0.02%            ││   0x00007f603523fd0a: mov    0xc(%r11),%ebp     ;*getfield size
                   ││                                                 ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
                   ││   0x00007f603523fd0e: mov    %ebp,%ecx
                   ││   0x00007f603523fd10: inc    %ecx
  0.00%    0.02%   ││   0x00007f603523fd12: mov    %ecx,0xc(%r11)     ;*putfield size
                   ││                                                 ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
  0.02%            ││   0x00007f603523fd16: mov    0xc(%r12,%rbx,8),%ecx  ; implicit exception: dispatches to 0x00007f6035240b85
                   ││   0x00007f603523fd1b: cmp    %ecx,%ebp
                   ││   0x00007f603523fd1d: jae    0x00007f6035240851
  0.01%    0.00%   ││   0x00007f603523fd23: mov    0x8(%r12,%rbx,8),%ecx
  0.00%    0.00%   ││   0x00007f603523fd28: cmp    $0xf8019807,%ecx   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                   ││   0x00007f603523fd2e: jne    0x00007f60352408ed  ;*aastore
                   ││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
  0.00%            ││   0x00007f603523fd34: lea    (%r12,%rbx,8),%rcx  ;*getfield denseThreadsInstructions
                   ││                                                 ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
                   ││   0x00007f603523fd38: lea    0x10(%rcx,%rbp,4),%rcx
  0.01%            ││   0x00007f603523fd3d: mov    %r8,%rbx
  0.01%    0.00%   ││   0x00007f603523fd40: shr    $0x3,%rbx
  0.00%            ││   0x00007f603523fd44: mov    %ebx,(%rcx)
  0.06%    0.01%   ││   0x00007f603523fd46: mov    %rcx,%r8
                   ││   0x00007f603523fd49: shr    $0x9,%r8
  0.01%            ││   0x00007f603523fd4d: movabs $0x7f60463f7000,%rcx
  0.00%            ││   0x00007f603523fd57: mov    %r12b,(%rcx,%r8,1)  ;*aastore
                   ││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
  0.02%    0.00%   ││   0x00007f603523fd5b: jmpq   0x00007f603523f819  ;*iconst_1
                   ││                                                 ; - com.google.re2j.Inst::matchRune@96 (line 103)
                   ││                                                 ; - com.google.re2j.Machine::step@181 (line 312)
  0.16%    0.21%   ↘↘   0x00007f603523fd60: mov    $0x1,%ecx
  0.10%    0.05%        0x00007f603523fd65: jmpq   0x00007f603523f774
                        0x00007f603523fd6a: mov    %rdx,%r11
                        0x00007f603523fd6d: jmpq   0x00007f603523f7ff
                        0x00007f603523fd72: mov    $0xffffffe4,%esi
                        0x00007f603523fd77: mov    %r10d,0x9c(%rsp)
                        0x00007f603523fd7f: mov    %r13,0x10(%rsp)
                        0x00007f603523fd84: mov    %rbx,0x18(%rsp)
                        0x00007f603523fd89: mov    %r14d,0x30(%rsp)
                        0x00007f603523fd8e: nop
                        0x00007f603523fd8f: callq  0x00007f60350051a0  ; OopMap{rbp=NarrowOop [8]=Oop [16]=Oop [24]=Oop off=1684}
                                                                      ;*aaload
....................................................................................................
 11.41%   13.62%  <total for region 3>

....[Hottest Regions]...............................................................................
 43.94%   42.22%         C2, level 4  com.google.re2j.Machine::step, version 531 (779 bytes) 
 31.86%   31.96%         C2, level 4  com.google.re2j.Machine::match, version 581 (1089 bytes) 
 11.41%   13.62%         C2, level 4  com.google.re2j.Machine::step, version 531 (454 bytes) 
  6.20%    6.90%         C2, level 4  com.google.re2j.Machine::step, version 531 (95 bytes) 
  1.52%    1.50%         C2, level 4  com.google.re2j.Machine::match, version 581 (96 bytes) 
  1.17%    1.16%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.40%    0.09%         C2, level 4  com.google.re2j.RE2::match, version 583 (314 bytes) 
  0.26%    0.10%         C2, level 4  com.google.re2j.Machine::match, version 581 (300 bytes) 
  0.12%    0.13%         C2, level 4  com.google.re2j.Machine::match, version 581 (186 bytes) 
  0.11%    0.10%         C2, level 4  com.google.re2j.RE2::match, version 583 (33 bytes) 
  0.11%    0.08%         C2, level 4  com.google.re2j.RE2::match, version 583 (0 bytes) 
  0.10%    0.01%   [kernel.kallsyms]  [unknown] (39 bytes) 
  0.10%    0.09%         C2, level 4  java.util.Collections::shuffle, version 595 (91 bytes) 
  0.09%                  C2, level 4  com.google.re2j.RE2::match, version 583 (111 bytes) 
  0.08%    0.03%         C2, level 4  com.google.re2j.Machine::match, version 581 (118 bytes) 
  0.08%    0.06%   [kernel.kallsyms]  [unknown] (133 bytes) 
  0.08%    0.09%         C2, level 4  com.google.re2j.RE2::match, version 583 (23 bytes) 
  0.07%    0.06%         C2, level 4  com.google.re2j.RE2::match, version 583 (0 bytes) 
  0.07%    0.02%         C2, level 4  com.google.re2j.Machine::match, version 581 (144 bytes) 
  0.07%    0.07%         C2, level 4  com.google.re2j.Machine::match, version 581 (48 bytes) 
  2.15%    1.70%  <...other 365 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 61.56%   62.74%         C2, level 4  com.google.re2j.Machine::step, version 531 
 34.17%   33.88%         C2, level 4  com.google.re2j.Machine::match, version 581 
  2.13%    2.02%   [kernel.kallsyms]  [unknown] 
  1.01%    0.47%         C2, level 4  com.google.re2j.RE2::match, version 583 
  0.22%    0.13%         C2, level 4  java.util.Collections::shuffle, version 595 
  0.14%    0.05%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 626 
  0.06%    0.01%              [vdso]  [unknown] 
  0.04%    0.01%              [vdso]  __vdso_clock_gettime 
  0.04%    0.03%      hsdis-amd64.so  [unknown] 
  0.03%    0.07%        libc-2.26.so  vfprintf 
  0.03%    0.05%           libjvm.so  RelocIterator::initialize 
  0.03%                    libjvm.so  os::javaTimeNanos 
  0.03%    0.00%        libc-2.26.so  __clock_gettime 
  0.03%    0.03%           libjvm.so  outputStream::update_position 
  0.02%    0.04%           libjvm.so  fileStream::write 
  0.02%    0.01%        libc-2.26.so  __strchrnul_avx2 
  0.01%    0.02%        libc-2.26.so  __strlen_avx2 
  0.01%    0.00%        libc-2.26.so  _IO_fflush 
  0.01%                    libjvm.so  nmethod::print_block_comment 
  0.01%    0.00%           libjvm.so  StringTable::unlink_or_oops_do 
  0.38%    0.25%  <...other 62 warm methods...>
....................................................................................................
100.00%   99.83%  <totals>

....[Distribution by Source]........................................................................
 97.09%   97.27%         C2, level 4
  2.13%    2.02%   [kernel.kallsyms]
  0.37%    0.36%           libjvm.so
  0.18%    0.24%        libc-2.26.so
  0.10%    0.02%              [vdso]
  0.05%    0.03%      hsdis-amd64.so
  0.04%    0.03%  libpthread-2.26.so
  0.02%    0.01%         interpreter
  0.00%    0.01%        runtime stub
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                 Mode  Cnt      Score    Error  Units
Re2jRegex.testExp1       thrpt   20  27281.344 ± 92.065  ops/s
Re2jRegex.testExp1:·asm  thrpt             NaN             ---
