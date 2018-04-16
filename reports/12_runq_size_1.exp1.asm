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
# Warmup Iteration   1: 13503.355 ops/s
# Warmup Iteration   2: 25395.033 ops/s
# Warmup Iteration   3: 26189.004 ops/s
# Warmup Iteration   4: 26010.472 ops/s
# Warmup Iteration   5: 25822.848 ops/s
# Warmup Iteration   6: 26281.144 ops/s
# Warmup Iteration   7: 26397.746 ops/s
# Warmup Iteration   8: 26615.439 ops/s
# Warmup Iteration   9: 26581.794 ops/s
# Warmup Iteration  10: 26625.377 ops/s
# Warmup Iteration  11: 26445.085 ops/s
# Warmup Iteration  12: 26335.136 ops/s
# Warmup Iteration  13: 26639.419 ops/s
# Warmup Iteration  14: 26377.796 ops/s
# Warmup Iteration  15: 25779.188 ops/s
# Warmup Iteration  16: 26460.827 ops/s
# Warmup Iteration  17: 26041.428 ops/s
# Warmup Iteration  18: 26310.646 ops/s
# Warmup Iteration  19: 26449.758 ops/s
# Warmup Iteration  20: 26586.200 ops/s
Iteration   1: 26561.256 ops/s
Iteration   2: 26205.780 ops/s
Iteration   3: 26130.986 ops/s
Iteration   4: 26416.727 ops/s
Iteration   5: 26379.103 ops/s
Iteration   6: 26595.017 ops/s
Iteration   7: 26303.088 ops/s
Iteration   8: 26486.001 ops/s
Iteration   9: 26118.457 ops/s
Iteration  10: 26633.637 ops/s
Iteration  11: 26513.813 ops/s
Iteration  12: 26447.262 ops/s
Iteration  13: 26578.837 ops/s
Iteration  14: 26636.332 ops/s
Iteration  15: 26641.351 ops/s
Iteration  16: 26416.695 ops/s
Iteration  17: 26241.486 ops/s
Iteration  18: 26520.467 ops/s
Iteration  19: 26638.374 ops/s
Iteration  20: 26626.927 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  26454.580 ±(99.9%) 151.116 ops/s [Average]
  (min, avg, max) = (26118.457, 26454.580, 26641.351), stdev = 174.025
  CI (99.9%): [26303.464, 26605.696] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1:·asm":
PrintAssembly processed: 210052 total address lines.
Perf output processed (skipped 23.019 seconds):
 Column 1: cycles (20580 events)
 Column 2: instructions (20563 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 536 (793 bytes) 

                     0x00007fa854e18dac: shr    $0x9,%r10
                     0x00007fa854e18db0: movabs $0x7fa850601000,%r11
                     0x00007fa854e18dba: mov    %r12b,(%r11,%r10,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007fa854e18dbe: mov    %r13,%r11          ;*synchronization entry
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%    0.02%     0x00007fa854e18dc1: mov    0x30(%rsp),%rax
  0.49%    0.59%     0x00007fa854e18dc6: mov    0x9c(%rsp),%r13d
  0.08%    0.08%     0x00007fa854e18dce: mov    0x94(%rsp),%ebx
  0.08%    0.05%     0x00007fa854e18dd5: mov    0x10(%rsp),%r10d   ;*aload
                                                                   ; - com.google.re2j.Machine::step@207 (line 315)
  1.48%    1.37%  ↗  0x00007fa854e18dda: inc    %r10d              ;*iinc
                  │                                                ; - com.google.re2j.Machine::step@218 (line 282)
  0.51%    0.44%  │  0x00007fa854e18ddd: cmp    %r13d,%r10d
                  │  0x00007fa854e18de0: jge    0x00007fa854e19254
  0.08%    0.09%  │  0x00007fa854e18de6: mov    %r11,%rdi          ;*aload_0
                  │                                                ; - com.google.re2j.Machine::step@25 (line 285)
  0.72%    0.75%  │  0x00007fa854e18de9: mov    0x8(%rsp),%r11
  0.99%    0.66%  │  0x00007fa854e18dee: movzbl 0x11(%r11),%r11d   ;*getfield captures
                  │                                                ; - com.google.re2j.Machine::step@26 (line 285)
  1.37%    1.46%  │  0x00007fa854e18df3: test   %r11d,%r11d
                  │  0x00007fa854e18df6: jne    0x00007fa854e193b5  ;*ifne
                  │                                                ; - com.google.re2j.Machine::step@29 (line 285)
  0.76%    0.91%  │  0x00007fa854e18dfc: mov    0x20(%rax),%ebp    ;*getfield denseThreadsInstructions
                  │                                                ; - com.google.re2j.Machine::step@82 (line 295)
  0.77%    0.67%  │  0x00007fa854e18dff: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007fa854e1a0f1
  1.03%    1.01%  │  0x00007fa854e18e04: cmp    %r11d,%r10d
                  │  0x00007fa854e18e07: jae    0x00007fa854e1933b
  0.40%    0.44%  │  0x00007fa854e18e0d: lea    (%r12,%rbp,8),%r11
  0.67%    0.70%  │  0x00007fa854e18e11: mov    0x10(%r11,%r10,4),%r8d  ;*aaload
                  │                                                ; - com.google.re2j.Machine::step@87 (line 295)
  0.58%    0.60%  │  0x00007fa854e18e16: mov    0xc(%r12,%r8,8),%ebp  ;*getfield op
                  │                                                ; - com.google.re2j.Machine::step@92 (line 297)
                  │                                                ; implicit exception: dispatches to 0x00007fa854e1a105
  2.49%    2.63%  │  0x00007fa854e18e1b: cmp    $0x6,%ebp
                  │  0x00007fa854e18e1e: je     0x00007fa854e19409  ;*if_icmpne
                  │                                                ; - com.google.re2j.Machine::step@97 (line 297)
  1.21%    1.21%  │  0x00007fa854e18e24: mov    0x8(%r12,%r8,8),%r11d
  0.49%    0.47%  │  0x00007fa854e18e29: cmp    $0xf8019993,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │  0x00007fa854e18e30: jne    0x00007fa854e19361
  1.70%    1.80%  │  0x00007fa854e18e36: shl    $0x3,%r8           ;*invokevirtual matchRune
                  │                                                ; - com.google.re2j.Machine::step@181 (line 312)
  0.40%    0.50%  │  0x00007fa854e18e3a: mov    0xc(%r8),%ebp      ;*getfield op
                  │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@1 (line 136)
                  │                                                ; - com.google.re2j.Machine::step@181 (line 312)
  0.72%    0.86%  │  0x00007fa854e18e3e: cmp    $0xa,%ebp
                  │  0x00007fa854e18e41: jne    0x00007fa854e191e5  ;*if_icmpne
                  │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@6 (line 136)
                  │                                                ; - com.google.re2j.Machine::step@181 (line 312)
  0.40%    0.52%  │  0x00007fa854e18e47: mov    0x1c(%r8),%r9d     ;*getfield outInst
                  │                                                ; - com.google.re2j.Machine::step@189 (line 313)
  0.24%    0.23%  │  0x00007fa854e18e4b: mov    0x8(%r12,%r9,8),%r11d  ; implicit exception: dispatches to 0x00007fa854e1a115
  1.14%    1.13%  │  0x00007fa854e18e50: lea    (%r12,%r9,8),%r8
  0.01%    0.03%  │  0x00007fa854e18e54: cmp    $0xf8019844,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                  │  0x00007fa854e18e5b: jne    0x00007fa854e19284  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Machine::step@202 (line 313)
  0.61%    0.65%  │  0x00007fa854e18e61: mov    0x18(%r8),%ecx     ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 190)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.06%    0.08%  │  0x00007fa854e18e65: mov    %rdi,%r11
  0.01%    0.02%  │  0x00007fa854e18e68: mov    0x10(%rdi),%r9     ;*getfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 190)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
                  │                                                ; implicit exception: dispatches to 0x00007fa854e1a131
  0.01%    0.00%  │  0x00007fa854e18e6c: cmp    $0x40,%ecx
                  │  0x00007fa854e18e6f: jg     0x00007fa854e196d9  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 190)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.61%    0.64%  │  0x00007fa854e18e75: mov    $0x1,%edx
  0.07%    0.12%  │  0x00007fa854e18e7a: shl    %cl,%rdx           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 190)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  1.13%    1.07%  │  0x00007fa854e18e7d: mov    %r9,%rdi
  0.02%    0.03%  │  0x00007fa854e18e80: and    %rdx,%rdi
  0.02%    0.02%  │  0x00007fa854e18e83: test   %rdi,%rdi
                  ╰  0x00007fa854e18e86: jne    0x00007fa854e18dda  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.40%    0.35%     0x00007fa854e18e8c: cmp    $0x40,%ecx
                     0x00007fa854e18e8f: jge    0x00007fa854e19735  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 193)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.21%    0.11%     0x00007fa854e18e95: mov    %r12b,0x18(%r11)   ;*putfield empty
                                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 193)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.06%     0x00007fa854e18e99: mov    0x1c(%r8),%ebp     ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%              0x00007fa854e18e9d: or     %r9,%rdx           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 193)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.32%    0.45%     0x00007fa854e18ea0: mov    %rdx,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 193)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.18%    0.19%     0x00007fa854e18ea4: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007fa854e1a145
  0.83%    0.83%     0x00007fa854e18ea9: cmp    $0xf8019993,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                     0x00007fa854e18eaf: jne    0x00007fa854e194b1
  0.63%    0.51%     0x00007fa854e18eb5: lea    (%r12,%rbp,8),%r9  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007fa854e18eb9: mov    0x18(%r9),%ecx     ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.35%    0.27%     0x00007fa854e18ebd: cmp    $0x40,%ecx
  0.50%    0.46%     0x00007fa854e18ec0: jg     0x00007fa854e19791  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.63%    0.75%     0x00007fa854e18ec6: mov    $0x1,%edi
                     0x00007fa854e18ecb: shl    %cl,%rdi           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.86%    0.84%     0x00007fa854e18ece: mov    %rdx,%rsi
                     0x00007fa854e18ed1: and    %rdi,%rsi          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007fa854e18ed4: test   %rsi,%rsi
                     0x00007fa854e18ed7: jne    0x00007fa854e197ed  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.02%     0x00007fa854e18edd: cmp    $0x40,%ecx
                     0x00007fa854e18ee0: jge    0x00007fa854e19851  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.71%    0.53%     0x00007fa854e18ee6: or     %rdi,%rdx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007fa854e18ee9: mov    %rdx,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
           0.00%     0x00007fa854e18eed: mov    0x20(%r11),%ecx    ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.01%     0x00007fa854e18ef1: mov    0xc(%r11),%edi     ;*getfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.57%    0.65%     0x00007fa854e18ef5: mov    %edi,%esi
                     0x00007fa854e18ef7: inc    %esi               ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007fa854e18ef9: mov    %esi,0xc(%r11)     ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.02%     0x00007fa854e18efd: mov    0xc(%r12,%rcx,8),%r14d  ; implicit exception: dispatches to 0x00007fa854e1a161
  0.62%    0.60%     0x00007fa854e18f02: cmp    %r14d,%edi
                     0x00007fa854e18f05: jae    0x00007fa854e19455
                     0x00007fa854e18f0b: vmovd  %esi,%xmm1
           0.01%     0x00007fa854e18f0f: mov    %edi,0x14(%rsp)
  0.02%    0.01%     0x00007fa854e18f13: vmovd  %ecx,%xmm0
  0.62%    0.61%     0x00007fa854e18f17: mov    %r10d,0x10(%rsp)
                     0x00007fa854e18f1c: mov    %ebx,0x94(%rsp)
                     0x00007fa854e18f23: mov    %r13d,0x9c(%rsp)
  0.02%    0.01%     0x00007fa854e18f2b: mov    %r11,%r13
  0.64%    0.50%     0x00007fa854e18f2e: mov    %rax,0x30(%rsp)
                     0x00007fa854e18f33: mov    0x8(%r12,%rcx,8),%r11d
                     0x00007fa854e18f38: cmp    $0xf8019808,%r11d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                     0x00007fa854e18f3f: jne    0x00007fa854e19505  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.00%     0x00007fa854e18f45: mov    0x20(%r8),%r10d    ;*getfield inst2
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@41 (line 196)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.70%    0.62%     0x00007fa854e18f49: vmovd  %r10d,%xmm2
                     0x00007fa854e18f4e: mov    %r9,%r11
                     0x00007fa854e18f51: shr    $0x3,%r11          ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.02%     0x00007fa854e18f55: lea    (%r12,%rcx,8),%r8  ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.58%    0.83%     0x00007fa854e18f59: lea    0x10(%r8,%rdi,4),%r10
  0.00%              0x00007fa854e18f5e: mov    %r11d,(%r10)
  0.00%              0x00007fa854e18f61: shr    $0x9,%r10
  0.02%    0.02%     0x00007fa854e18f65: movabs $0x7fa850601000,%r11
  0.76%    0.53%     0x00007fa854e18f6f: mov    %r12b,(%r11,%r10,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.01%     0x00007fa854e18f73: vmovd  %xmm2,%r10d
                     0x00007fa854e18f78: mov    0x8(%r12,%r10,8),%r11d  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                                                                   ; implicit exception: dispatches to 0x00007fa854e1a17d
  0.02%    0.02%     0x00007fa854e18f7d: movslq %edi,%r10
  0.69%    0.41%     0x00007fa854e18f80: lea    (%r8,%r10,4),%r9   ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007fa854e18f84: mov    %r9,%rbx
  0.01%              0x00007fa854e18f87: add    $0x14,%rbx         ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.01%     0x00007fa854e18f8b: vmovd  %xmm2,%r10d
  0.58%    0.58%     0x00007fa854e18f90: lea    (%r12,%r10,8),%rax
  0.00%    0.01%     0x00007fa854e18f94: add    $0x2,%edi          ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%              0x00007fa854e18f97: cmp    $0xf8019887,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                     0x00007fa854e18f9e: jne    0x00007fa854e18d45  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%              0x00007fa854e18fa4: mov    0x18(%rax),%r10d   ;*getfield pc
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@2 (line 476)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.79%    0.86%     0x00007fa854e18fa8: vmovd  %r10d,%xmm2
  0.06%    0.02%     0x00007fa854e18fad: cmp    $0x40,%r10d
                     0x00007fa854e18fb1: jg     0x00007fa854e199d1  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 476)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007fa854e18fb7: mov    $0x1,%r11d
  0.01%    0.01%     0x00007fa854e18fbd: mov    %r10d,%ecx
  0.62%    0.30%     0x00007fa854e18fc0: shl    %cl,%r11           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 476)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.11%    0.06%     0x00007fa854e18fc3: mov    %rdx,%r10
  0.57%    0.21%     0x00007fa854e18fc6: and    %r11,%r10          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 476)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%              0x00007fa854e18fc9: test   %r10,%r10
                     0x00007fa854e18fcc: jne    0x00007fa854e19a11  ;*ifeq
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@8 (line 476)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.01%     0x00007fa854e18fd2: mov    %ecx,%r10d
  0.04%    0.04%     0x00007fa854e18fd5: cmp    $0x40,%r10d
                     0x00007fa854e18fd9: jge    0x00007fa854e19a61  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@19 (line 479)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.66%    0.35%     0x00007fa854e18fdf: or     %r11,%rdx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@19 (line 479)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%              0x00007fa854e18fe2: mov    %rdx,0x10(%r13)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@19 (line 479)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
           0.01%     0x00007fa854e18fe6: mov    0x1c(%rax),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@83 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.04%     0x00007fa854e18fe9: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007fa854e1a1b9
  0.58%    0.26%     0x00007fa854e18fee: cmp    $0xf8019844,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                     0x00007fa854e18ff5: jne    0x00007fa854e19681
           0.01%     0x00007fa854e18ffb: lea    (%r12,%rbp,8),%rax  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.01%     0x00007fa854e18fff: mov    0x18(%rax),%r10d   ;*getfield pc
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 190)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.03%     0x00007fa854e19003: vmovd  %r10d,%xmm2
  0.66%    0.45%     0x00007fa854e19008: cmp    $0x40,%r10d
                     0x00007fa854e1900c: jg     0x00007fa854e19b71  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 190)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
           0.01%     0x00007fa854e19012: mov    $0x1,%r11d
           0.00%     0x00007fa854e19018: mov    %r10d,%ecx
  0.03%    0.03%     0x00007fa854e1901b: shl    %cl,%r11           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 190)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.65%    0.38%     0x00007fa854e1901e: mov    %rdx,%r10
  0.03%    0.03%     0x00007fa854e19021: and    %r11,%r10
  0.61%    0.81%     0x00007fa854e19024: test   %r10,%r10
                     0x00007fa854e19027: jne    0x00007fa854e19333  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 190)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.03%     0x00007fa854e1902d: mov    %ecx,%r10d
  0.03%    0.03%     0x00007fa854e19030: cmp    $0x40,%r10d
                     0x00007fa854e19034: jge    0x00007fa854e19bb1  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 193)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.07%     0x00007fa854e1903a: mov    0x1c(%rax),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.59%    0.82%     0x00007fa854e1903d: or     %r11,%rdx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 193)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.01%     0x00007fa854e19040: mov    %rdx,0x10(%r13)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 193)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.01%     0x00007fa854e19044: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007fa854e1a1d5
  0.05%    0.04%     0x00007fa854e19049: cmp    $0xf8019993,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                     0x00007fa854e19050: jne    0x00007fa854e196ad
  0.56%    0.63%     0x00007fa854e19056: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.01%     0x00007fa854e1905a: vmovq  %r10,%xmm2
  0.00%    0.00%     0x00007fa854e1905f: mov    0x18(%r10),%r10d   ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.07%    0.10%     0x00007fa854e19063: mov    %r10d,%ecx
  0.62%    0.72%     0x00007fa854e19066: cmp    $0x40,%r10d
                     0x00007fa854e1906a: jg     0x00007fa854e19bf1  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.08%    0.11%     0x00007fa854e19070: mov    $0x1,%r11d
  0.00%    0.00%     0x00007fa854e19076: shl    %cl,%r11           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.77%    0.90%     0x00007fa854e19079: mov    %rdx,%r10
  0.01%              0x00007fa854e1907c: and    %r11,%r10          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.01%     0x00007fa854e1907f: test   %r10,%r10
                     0x00007fa854e19082: jne    0x00007fa854e19c35  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.60%    0.76%     0x00007fa854e19088: mov    %ecx,%r10d
  0.06%    0.09%     0x00007fa854e1908b: cmp    $0x40,%r10d
                     0x00007fa854e1908f: jge    0x00007fa854e19c91  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.01%     0x00007fa854e19095: mov    %edi,0xc(%r13)     ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%              0x00007fa854e19099: or     %r11,%rdx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.68%    0.55%     0x00007fa854e1909c: mov    %rdx,0x10(%r13)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.09%    0.07%     0x00007fa854e190a0: cmp    %r14d,%edi
                     0x00007fa854e190a3: jae    0x00007fa854e19601  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.03%     0x00007fa854e190a9: mov    0x20(%rax),%r10d   ;*getfield inst2
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@41 (line 196)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.01%     0x00007fa854e190ad: mov    %rbx,%rcx
  0.50%    0.49%     0x00007fa854e190b0: vmovq  %xmm2,%r11
  0.10%    0.11%     0x00007fa854e190b5: shr    $0x3,%r11
  0.05%    0.02%     0x00007fa854e190b9: mov    %r11d,(%rbx)
  0.01%    0.02%     0x00007fa854e190bc: shr    $0x9,%rcx
  0.48%    0.59%     0x00007fa854e190c0: movabs $0x7fa850601000,%r11
  0.10%    0.09%     0x00007fa854e190ca: mov    %r12b,(%r11,%rcx,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 195)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.04%     0x00007fa854e190ce: mov    0x8(%r12,%r10,8),%ebx  ; implicit exception: dispatches to 0x00007fa854e1a1f1
  0.04%    0.01%     0x00007fa854e190d3: mov    %r10d,%r11d
  0.48%    0.51%     0x00007fa854e190d6: shl    $0x3,%r10
  0.08%    0.07%     0x00007fa854e190da: cmp    $0xf8019887,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                     0x00007fa854e190e0: jne    0x00007fa854e1916f  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007fa854e190e6: mov    0x18(%r10),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@2 (line 476)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
....................................................................................................
 45.00%   43.73%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 575 (1157 bytes) 

                             0x00007fa854e39465: mov    %edi,0x34(%rsp)
                             0x00007fa854e39469: vmovd  %ebx,%xmm1
                             0x00007fa854e3946d: mov    %eax,0x48(%rsp)
                             0x00007fa854e39471: mov    %r8d,0x3c(%rsp)
                             0x00007fa854e39476: mov    %r10,0x40(%rsp)
                             0x00007fa854e3947b: mov    0xc(%r13),%r10d    ;*getfield value
                                                                           ; - java.lang.String::charAt@6 (line 657)
                                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                           ; - com.google.re2j.Machine::match@60 (line 193)
  0.00%                      0x00007fa854e3947f: vmovd  %r10d,%xmm2
                             0x00007fa854e39484: mov    0xc(%r12,%r10,8),%r10d  ;*arraylength
                                                                           ; - java.lang.String::charAt@9 (line 657)
                                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                           ; - com.google.re2j.Machine::match@60 (line 193)
                                                                           ; implicit exception: dispatches to 0x00007fa854e3b2f5
  0.00%                      0x00007fa854e39489: mov    %r10d,%eax
  0.00%                      0x00007fa854e3948c: cmp    %eax,%edx
                             0x00007fa854e3948e: jge    0x00007fa854e3aac1  ;*if_icmplt
                                                                           ; - java.lang.String::charAt@10 (line 657)
                                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                           ; - com.google.re2j.Machine::match@60 (line 193)
  0.01%                      0x00007fa854e39494: cmp    %eax,%edx
                             0x00007fa854e39496: jae    0x00007fa854e3a789
                             0x00007fa854e3949c: vmovd  %xmm2,%r10d
                             0x00007fa854e394a1: lea    (%r12,%r10,8),%rbx
                             0x00007fa854e394a5: movzwl 0x10(%rbx,%rdx,2),%r10d  ;*caload
                                                                           ; - java.lang.String::charAt@27 (line 660)
                                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                           ; - com.google.re2j.Machine::match@60 (line 193)
  0.01%    0.00%             0x00007fa854e394ab: cmp    $0xd800,%r10d
                             0x00007fa854e394b2: jge    0x00007fa854e3ab11  ;*if_icmplt
                                                                           ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                           ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                           ; - com.google.re2j.Machine::match@60 (line 193)
  0.00%                      0x00007fa854e394b8: shl    $0x3,%r10d         ;*ishl
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                                                                           ; - com.google.re2j.Machine::match@60 (line 193)
                             0x00007fa854e394bc: mov    %r10d,%r8d
                             0x00007fa854e394bf: and    $0x7,%r8d
  0.01%                      0x00007fa854e394c3: or     $0x1,%r10d
                             0x00007fa854e394c7: vmovd  %r10d,%xmm3
                             0x00007fa854e394cc: or     $0x1,%r8d          ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                                                                           ; - com.google.re2j.Machine::match@60 (line 193)
                             0x00007fa854e394d0: mov    %r8d,0x28(%rsp)
  0.00%    0.00%             0x00007fa854e394d5: mov    %r10d,%edi
                             0x00007fa854e394d8: sar    $0x3,%edi          ;*ishr
                                                                           ; - com.google.re2j.Machine::match@68 (line 194)
                             0x00007fa854e394db: cmp    $0xfffffff8,%r10d
                             0x00007fa854e394df: je     0x00007fa854e3a72d  ;*if_icmpeq
                                                                           ; - com.google.re2j.Machine::match@88 (line 198)
                             0x00007fa854e394e5: vmovd  %xmm0,%r10d
  0.01%    0.01%             0x00007fa854e394ea: add    %r8d,%r10d
                             0x00007fa854e394ed: add    %esi,%r10d         ;*iadd
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                                                                           ; - com.google.re2j.Machine::match@96 (line 199)
                             0x00007fa854e394f0: mov    %r10d,%edx
                             0x00007fa854e394f3: cmp    %r14d,%r10d
                             0x00007fa854e394f6: jge    0x00007fa854e39e60  ;*if_icmpge
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                                                                           ; - com.google.re2j.Machine::match@96 (line 199)
  0.01%    0.00%             0x00007fa854e394fc: test   %r10d,%r10d
                             0x00007fa854e394ff: jl     0x00007fa854e3a9c9  ;*iflt
                                                                           ; - java.lang.String::charAt@1 (line 657)
                                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                           ; - com.google.re2j.Machine::match@96 (line 199)
                             0x00007fa854e39505: cmp    %eax,%r10d
                             0x00007fa854e39508: jge    0x00007fa854e3ab5d  ;*if_icmplt
                                                                           ; - java.lang.String::charAt@10 (line 657)
                                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                           ; - com.google.re2j.Machine::match@96 (line 199)
           0.01%             0x00007fa854e3950e: cmp    %eax,%r10d
                             0x00007fa854e39511: jae    0x00007fa854e3a7d1
                             0x00007fa854e39517: movzwl 0x10(%rbx,%r10,2),%r10d  ;*caload
                                                                           ; - java.lang.String::charAt@27 (line 660)
                                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                           ; - com.google.re2j.Machine::match@96 (line 199)
  0.00%    0.00%             0x00007fa854e3951d: cmp    $0xd800,%r10d
                             0x00007fa854e39524: jge    0x00007fa854e3abc1  ;*if_icmplt
                                                                           ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                           ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                           ; - com.google.re2j.Machine::match@96 (line 199)
  0.01%    0.00%             0x00007fa854e3952a: shl    $0x3,%r10d         ;*ishl
                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                                                                           ; - com.google.re2j.Machine::match@96 (line 199)
                             0x00007fa854e3952e: mov    %r10d,%r8d
                             0x00007fa854e39531: or     $0x1,%r8d
  0.00%                      0x00007fa854e39535: and    $0x7,%r10d
                             0x00007fa854e39539: sar    $0x3,%r8d          ;*ishr
                                                                           ; - com.google.re2j.Machine::match@104 (line 200)
  0.00%                      0x00007fa854e3953d: mov    %r8d,0x2c(%rsp)
  0.00%                      0x00007fa854e39542: or     $0x1,%r10d         ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                                                                           ; - com.google.re2j.Machine::match@96 (line 199)
                             0x00007fa854e39546: mov    %r10d,0x30(%rsp)   ;*ishr
                                                                           ; - com.google.re2j.Machine::match@104 (line 200)
  0.00%                      0x00007fa854e3954b: vmovd  %xmm0,%r10d
                             0x00007fa854e39550: test   %r10d,%r10d
                             0x00007fa854e39553: jne    0x00007fa854e3a971  ;*ifne
                                                                           ; - com.google.re2j.Machine::match@115 (line 204)
                             0x00007fa854e39559: test   %edi,%edi
                             0x00007fa854e3955b: jl     0x00007fa854e39e3f  ;*ifge
                                                                           ; - com.google.re2j.Utils::emptyOpContext@21 (line 179)
                                                                           ; - com.google.re2j.Machine::match@121 (line 205)
                             0x00007fa854e39561: mov    $0x5,%r10d         ;*iload_1
                                                                           ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                                                                           ; - com.google.re2j.Machine::match@121 (line 205)
  0.00%                      0x00007fa854e39567: cmp    $0xa,%edi
                             0x00007fa854e3956a: je     0x00007fa854e39e57  ;*iload_0
                                                                           ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                                                                           ; - com.google.re2j.Machine::match@121 (line 205)
                             0x00007fa854e39570: mov    %edi,%r8d
                             0x00007fa854e39573: add    $0xffffffbf,%r8d
                             0x00007fa854e39577: cmp    $0x1a,%r8d
                  ╭          0x00007fa854e3957b: jb     0x00007fa854e3958b  ;*if_icmple
                  │                                                        ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │                                                        ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                        ; - com.google.re2j.Machine::match@121 (line 205)
  0.02%    0.00%  │          0x00007fa854e3957d: mov    %edi,%ebx
                  │          0x00007fa854e3957f: add    $0xffffff9f,%ebx
                  │          0x00007fa854e39582: cmp    $0x1a,%ebx
                  │          0x00007fa854e39585: jae    0x00007fa854e39e78  ;*iconst_1
                  │                                                        ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │                                                        ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                        ; - com.google.re2j.Machine::match@121 (line 205)
           0.01%  ↘          0x00007fa854e3958b: or     $0x10,%r10d        ;*iload_2
                                                                           ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                           ; - com.google.re2j.Machine::match@121 (line 205)
  0.00%    0.00%             0x00007fa854e3958f: mov    0x40(%rsp),%r8
  0.01%                      0x00007fa854e39594: movzbl 0x11(%r8),%ebx     ;*getfield captures
                                                                           ; - com.google.re2j.Machine::match@283 (line 240)
  0.00%                      0x00007fa854e39599: vmovd  %xmm1,%edx
                             0x00007fa854e3959d: mov    %rdx,%r8
  0.00%                      0x00007fa854e395a0: shl    $0x3,%r8           ;*getfield q1
                                                                           ; - com.google.re2j.Machine::match@53 (line 192)
                             0x00007fa854e395a4: mov    %r8,0x20(%rsp)
  0.00%                      0x00007fa854e395a9: xor    %eax,%eax
                             0x00007fa854e395ab: mov    $0x1,%r8d
                             0x00007fa854e395b1: xor    %ebp,%ebp
                             0x00007fa854e395b3: mov    %r8d,0x14(%rsp)
  0.00%                      0x00007fa854e395b8: mov    %ebp,0x60(%rsp)
  0.00%            ╭         0x00007fa854e395bc: jmpq   0x00007fa854e3973e
  0.08%    0.08%   │    ↗    0x00007fa854e395c1: or     $0x20,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                   │    │                                                  ; - com.google.re2j.Machine::match@322 (line 245)
  0.01%    0.02%   │    │    0x00007fa854e395c5: mov    %r8d,0x4c(%rsp)    ;*iload_2
                   │    │                                                  ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   │    │                                                  ; - com.google.re2j.Machine::match@322 (line 245)
  0.27%    0.38%   │    │↗   0x00007fa854e395ca: mov    0x60(%rsp),%r10d
  0.17%    0.22%   │    ││   0x00007fa854e395cf: cmp    %r14d,%r10d
                   │    ││   0x00007fa854e395d2: je     0x00007fa854e39da9  ;*if_icmpne
                   │    ││                                                 ; - com.google.re2j.Machine::match@347 (line 246)
  0.17%    0.13%   │    ││   0x00007fa854e395d8: xor    %ebx,%ebx          ;*invokespecial step
                   │    ││                                                 ; - com.google.re2j.Machine::match@355 (line 246)
  0.03%    0.05%   │    ││   0x00007fa854e395da: mov    %rax,-0x8(%rsp)
  0.34%    0.30%   │    ││   0x00007fa854e395df: mov    0x60(%rsp),%eax
  0.19%    0.17%   │    ││   0x00007fa854e395e3: mov    %eax,0x38(%rsp)
  0.26%    0.25%   │    ││   0x00007fa854e395e7: mov    -0x8(%rsp),%rax    ;*invokevirtual endPos
                   │    ││                                                 ; - com.google.re2j.Machine::match@344 (line 246)
  0.57%    0.28%   │    ││   0x00007fa854e395ec: add    0x28(%rsp),%r10d   ;*iadd
                   │    ││                                                 ; - com.google.re2j.Machine::match@336 (line 246)
  0.30%    0.31%   │    ││   0x00007fa854e395f1: mov    %r10d,0x60(%rsp)
  0.17%    0.17%   │    ││   0x00007fa854e395f6: mov    0x40(%rsp),%rsi
  0.17%    0.01%   │    ││   0x00007fa854e395fb: mov    0x18(%rsp),%rdx
  0.09%    0.04%   │    ││   0x00007fa854e39600: mov    0x20(%rsp),%rcx
  0.27%    0.39%   │    ││   0x00007fa854e39605: mov    0x38(%rsp),%r8d
  0.51%    0.29%   │    ││   0x00007fa854e3960a: mov    %r10d,%r9d
  0.11%    0.14%   │    ││   0x00007fa854e3960d: mov    0x4c(%rsp),%r11d
  0.07%    0.02%   │    ││   0x00007fa854e39612: mov    %r11d,(%rsp)
  0.30%    0.01%   │    ││   0x00007fa854e39616: mov    0x3c(%rsp),%r11d
  0.25%    0.22%   │    ││   0x00007fa854e3961b: mov    %r11d,0x8(%rsp)
  0.15%    0.12%   │    ││   0x00007fa854e39620: mov    %ebx,0x10(%rsp)
  0.09%    0.05%   │    ││   0x00007fa854e39624: data16 xchg %ax,%ax
  0.26%    0.24%   │    ││   0x00007fa854e39627: callq  0x00007fa854c19020  ; OopMap{[24]=Oop [32]=Oop [52]=NarrowOop [64]=Oop [80]=Oop off=652}
                   │    ││                                                 ;*invokespecial step
                   │    ││                                                 ; - com.google.re2j.Machine::match@355 (line 246)
                   │    ││                                                 ;   {optimized virtual_call}
                   │    ││   0x00007fa854e3962c: mov    0x40(%rsp),%r10
  0.64%    0.60%   │    ││   0x00007fa854e39631: movzbl 0x11(%r10),%ebx    ;*getfield captures
                   │    ││                                                 ; - com.google.re2j.Machine::match@367 (line 250)
  0.00%    0.02%   │    ││   0x00007fa854e39636: movzbl 0x10(%r10),%eax    ;*getfield matched
                   │    ││                                                 ; - com.google.re2j.Machine::match@374 (line 250)
                   │    ││   0x00007fa854e3963b: mov    0x28(%rsp),%r8d
  0.60%    0.50%   │    ││   0x00007fa854e39640: test   %r8d,%r8d
                   │    ││   0x00007fa854e39643: je     0x00007fa854e39d5d  ;*ifne
                   │    ││                                                 ; - com.google.re2j.Machine::match@360 (line 247)
                   │    ││   0x00007fa854e39649: test   %ebx,%ebx
                   │    ││   0x00007fa854e3964b: jne    0x00007fa854e3a191  ;*ifne
                   │    ││                                                 ; - com.google.re2j.Machine::match@370 (line 250)
  0.02%    0.00%   │    ││   0x00007fa854e39651: test   %eax,%eax
                   │    ││   0x00007fa854e39653: jne    0x00007fa854e3a3d5  ;*ifeq
                   │    ││                                                 ; - com.google.re2j.Machine::match@377 (line 250)
  0.00%    0.01%   │    ││   0x00007fa854e39659: mov    0x50(%rsp),%r10
  0.59%    0.55%   │    ││   0x00007fa854e3965e: mov    0x10(%r10),%r14d   ;*getfield end
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                   │    ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.01%    0.02%   │    ││   0x00007fa854e39662: mov    0xc(%r10),%esi     ;*getfield start
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                   │    ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.01%    0.00%   │    ││   0x00007fa854e39666: mov    0x14(%r10),%ecx    ;*getfield str
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                   │    ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.00%    0.01%   │    ││   0x00007fa854e3966a: mov    0x2c(%rsp),%r11d
  0.56%    0.54%   │    ││   0x00007fa854e3966f: cmp    $0xffffffff,%r11d
                   │    ││   0x00007fa854e39673: je     0x00007fa854e39db3  ;*if_icmpeq
                   │    ││                                                 ; - com.google.re2j.Machine::match@399 (line 258)
                   │    ││   0x00007fa854e39679: mov    0x30(%rsp),%r9d
           0.01%   │    ││   0x00007fa854e3967e: add    0x60(%rsp),%r9d
  0.01%    0.00%   │    ││   0x00007fa854e39683: add    %esi,%r9d          ;*iadd
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                   │    ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.64%    0.78%   │    ││   0x00007fa854e39686: cmp    %r14d,%r9d
                   │    ││   0x00007fa854e39689: jge    0x00007fa854e39d9c  ;*if_icmpge
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                   │    ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.00%            │    ││   0x00007fa854e3968f: mov    0x8(%r12,%rcx,8),%r11d  ; implicit exception: dispatches to 0x00007fa854e3b289
  0.03%    0.03%   │    ││   0x00007fa854e39694: cmp    $0xf80002da,%r11d  ;   {metadata(&apos;java/lang/String&apos;)}
                   │    ││   0x00007fa854e3969b: jne    0x00007fa854e3a085
  0.03%    0.04%   │    ││   0x00007fa854e396a1: lea    (%r12,%rcx,8),%rdi  ;*invokeinterface charAt
                   │    ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.51%    0.71%   │    ││   0x00007fa854e396a5: test   %r9d,%r9d
                   │    ││   0x00007fa854e396a8: jl     0x00007fa854e3a1e5  ;*iflt
                   │    ││                                                 ; - java.lang.String::charAt@1 (line 657)
                   │    ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.00%            │    ││   0x00007fa854e396ae: mov    0xc(%rdi),%r8d     ;*getfield value
                   │    ││                                                 ; - java.lang.String::charAt@6 (line 657)
                   │    ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.00%    0.01%   │    ││   0x00007fa854e396b2: mov    0xc(%r12,%r8,8),%ebp  ;*arraylength
                   │    ││                                                 ; - java.lang.String::charAt@9 (line 657)
                   │    ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
                   │    ││                                                 ; implicit exception: dispatches to 0x00007fa854e3b29d
  1.15%    1.58%   │    ││   0x00007fa854e396b7: cmp    %ebp,%r9d
                   │    ││   0x00007fa854e396ba: jge    0x00007fa854e3a429  ;*if_icmplt
                   │    ││                                                 ; - java.lang.String::charAt@10 (line 657)
                   │    ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.70%    0.75%   │    ││   0x00007fa854e396c0: cmp    %ebp,%r9d
                   │    ││   0x00007fa854e396c3: jae    0x00007fa854e39f31
  0.08%    0.06%   │    ││   0x00007fa854e396c9: lea    (%r12,%r8,8),%r10
                   │    ││   0x00007fa854e396cd: movzwl 0x10(%r10,%r9,2),%r8d  ;*caload
                   │    ││                                                 ; - java.lang.String::charAt@27 (line 660)
                   │    ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.01%    0.03%   │    ││   0x00007fa854e396d3: cmp    $0xd800,%r8d
                   │    ││   0x00007fa854e396da: jge    0x00007fa854e3a4a1  ;*if_icmplt
                   │    ││                                                 ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   │    ││                                                 ; - java.lang.Character::codePointAt@9 (line 4867)
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.61%    0.64%   │    ││   0x00007fa854e396e0: shl    $0x3,%r8d          ;*ishl
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                   │    ││                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.16%    0.18%   │    ││   0x00007fa854e396e4: mov    %r8d,%ebp
                   │    ││   0x00007fa854e396e7: or     $0x1,%ebp
  0.61%    0.54%   │    ││   0x00007fa854e396ea: and    $0x7,%r8d
  0.31%    0.24%   │    ││   0x00007fa854e396ee: sar    $0x3,%ebp          ;*ishr
                   │    ││                                                 ; - com.google.re2j.Machine::match@415 (line 260)
  0.41%    0.45%   │    ││   0x00007fa854e396f1: or     $0x1,%r8d          ; OopMap{rcx=NarrowOop [24]=Oop [32]=Oop [64]=Oop [80]=Oop off=853}
                   │    ││                                                 ;*goto
                   │    ││                                                 ; - com.google.re2j.Machine::match@437 (line 266)
  0.16%    0.17%   │    ││   0x00007fa854e396f5: test   %eax,0x15e2c905(%rip)        # 0x00007fa86ac66000
                   │    ││                                                 ;*goto
                   │    ││                                                 ; - com.google.re2j.Machine::match@437 (line 266)
                   │    ││                                                 ;   {poll}
  0.01%            │    ││   0x00007fa854e396fb: mov    0x40(%rsp),%r10
  0.02%    0.08%   │    ││   0x00007fa854e39700: mov    0x28(%r10),%r11d   ;*getfield matchcap
                   │    ││                                                 ; - com.google.re2j.Machine::match@307 (line 243)
  0.35%    0.39%   │    ││   0x00007fa854e39704: mov    0x14(%r10),%r9d    ;*getfield re2
                   │    ││                                                 ; - com.google.re2j.Machine::match@169 (line 220)
  0.19%    0.11%   │    ││   0x00007fa854e39708: mov    0x20(%rsp),%r10
                   │    ││   0x00007fa854e3970d: mov    %r10,%rdi
  0.04%    0.07%   │    ││   0x00007fa854e39710: shr    $0x3,%rdi
  0.38%    0.45%   │    ││   0x00007fa854e39714: mov    %edi,0x34(%rsp)
  0.16%    0.23%   │    ││   0x00007fa854e39718: mov    0x2c(%rsp),%edi
                   │    ││   0x00007fa854e3971c: mov    0x4c(%rsp),%r10d
  0.07%    0.08%   │    ││   0x00007fa854e39721: mov    0x18(%rsp),%rdx
  0.38%    0.44%   │    ││   0x00007fa854e39726: mov    %rdx,0x20(%rsp)
  0.16%    0.22%   │    ││   0x00007fa854e3972b: mov    0x30(%rsp),%r13d
                   │    ││   0x00007fa854e39730: mov    %r13d,0x28(%rsp)
  0.07%    0.06%   │    ││   0x00007fa854e39735: mov    %ebp,0x2c(%rsp)
  0.43%    0.52%   │    ││   0x00007fa854e39739: mov    %r8d,0x30(%rsp)    ;*getfield matchcap
                   │    ││                                                 ; - com.google.re2j.Machine::match@307 (line 243)
  0.18%    0.24%   ↘    ││   0x00007fa854e3973e: mov    0x34(%rsp),%r8d
  0.00%    0.00%        ││   0x00007fa854e39743: movzbl 0x18(%r12,%r8,8),%r8d  ; implicit exception: dispatches to 0x00007fa854e3b235
  0.10%    0.08%        ││   0x00007fa854e39749: mov    0x34(%rsp),%ebp
  0.37%    0.49%        ││   0x00007fa854e3974d: lea    (%r12,%rbp,8),%rdx  ;*aload
                        ││                                                 ; - com.google.re2j.Machine::match@136 (line 211)
  0.20%    0.18%        ││   0x00007fa854e39751: mov    %rdx,0x18(%rsp)
                        ││   0x00007fa854e39756: test   %r8d,%r8d
                        ││   0x00007fa854e39759: jne    0x00007fa854e399db  ;*aload_0
                        ││                                                 ; - com.google.re2j.Machine::match@267 (line 237)
  0.07%    0.06%        ││   0x00007fa854e3975f: test   %eax,%eax
                        ││   0x00007fa854e39761: jne    0x00007fa854e3a0ed  ;*ifne
                        ││                                                 ; - com.google.re2j.Machine::match@271 (line 237)
  0.36%    0.49%        ││   0x00007fa854e39767: mov    0x60(%rsp),%r8d
  0.19%    0.27%        ││   0x00007fa854e3976c: test   %r8d,%r8d
                    ╭   ││   0x00007fa854e3976f: je     0x00007fa854e3977f  ;*ifeq
                    │   ││                                                 ; - com.google.re2j.Machine::match@275 (line 237)
  0.00%             │   ││   0x00007fa854e39771: mov    0x3c(%rsp),%r9d
  0.04%    0.12%    │   ││   0x00007fa854e39776: test   %r9d,%r9d
                    │   ││   0x00007fa854e39779: jne    0x00007fa854e3a141  ;*aload_0
                    │   ││                                                 ; - com.google.re2j.Machine::match@282 (line 240)
  0.44%    0.45%    ↘   ││   0x00007fa854e3977f: test   %ebx,%ebx
                        ││   0x00007fa854e39781: jne    0x00007fa854e3a261  ;*ifeq
                        ││                                                 ; - com.google.re2j.Machine::match@286 (line 240)
  0.17%    0.28%        ││   0x00007fa854e39787: mov    0x40(%rsp),%r8
                        ││   0x00007fa854e3978c: mov    0x18(%r8),%r8d     ;*getfield prog
                        ││                                                 ; - com.google.re2j.Machine::match@297 (line 243)
  0.08%    0.06%        ││   0x00007fa854e39790: mov    0x1c(%r12,%r8,8),%ebp  ;*getfield startInst
                        ││                                                 ; - com.google.re2j.Machine::match@300 (line 243)
                        ││                                                 ; implicit exception: dispatches to 0x00007fa854e3b245
  0.44%    0.46%        ││   0x00007fa854e39795: mov    0x8(%r12,%rbp,8),%r9d  ; implicit exception: dispatches to 0x00007fa854e3b255
  0.68%    1.02%        ││   0x00007fa854e3979a: cmp    $0xf8019993,%r9d   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                        ││   0x00007fa854e397a1: jne    0x00007fa854e39fb5
  0.47%    0.41%        ││   0x00007fa854e397a7: lea    (%r12,%rbp,8),%r8  ;*invokevirtual add
                        ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.01%    0.01%        ││   0x00007fa854e397ab: mov    0x18(%r8),%r10d    ;*getfield pc
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                        ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.14%    0.15%        ││   0x00007fa854e397af: cmp    $0x40,%r10d
                        ││   0x00007fa854e397b3: jg     0x00007fa854e3a2b5  ;*if_icmpgt
                        ││                                                 ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                        ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.47%    0.56%        ││   0x00007fa854e397b9: mov    %r8,%r9
  0.01%    0.02%        ││   0x00007fa854e397bc: mov    $0x1,%ebx
  0.00%    0.01%        ││   0x00007fa854e397c1: mov    %r10d,%ecx
  0.10%    0.11%        ││   0x00007fa854e397c4: shl    %cl,%rbx           ;*lshl
                        ││                                                 ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                        ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  1.06%    1.13%        ││   0x00007fa854e397c7: mov    0x34(%rsp),%ecx
  0.04%                 ││   0x00007fa854e397cb: mov    0x10(%r12,%rcx,8),%rcx  ;*getfield pcsl
                        ││                                                 ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                        ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.03%    0.01%        ││   0x00007fa854e397d0: mov    %rcx,%r8
  0.01%    0.01%        ││   0x00007fa854e397d3: and    %rbx,%r8           ;*land
                        ││                                                 ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                        ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.61%    0.37%        ││   0x00007fa854e397d6: test   %r8,%r8
                        ││   0x00007fa854e397d9: jne    0x00007fa854e3a305  ;*ifeq
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                        ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.05%    0.02%        ││   0x00007fa854e397df: cmp    $0x40,%r10d
                        ││   0x00007fa854e397e3: jge    0x00007fa854e3a381  ;*if_icmpge
                        ││                                                 ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                        ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.02%    0.01%        ││   0x00007fa854e397e9: mov    0x34(%rsp),%r10d
  0.03%    0.01%        ││   0x00007fa854e397ee: mov    %r12b,0x18(%r12,%r10,8)  ;*putfield empty
                        ││                                                 ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                        ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.61%    0.53%        ││   0x00007fa854e397f3: mov    0xc(%r12,%r10,8),%r10d  ;*getfield size
                        ││                                                 ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                        ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.02%    0.04%        ││   0x00007fa854e397f8: mov    0x34(%rsp),%r11d
  0.04%    0.02%        ││   0x00007fa854e397fd: mov    0x20(%r12,%r11,8),%r11d  ;*getfield denseThreadsInstructions
                        ││                                                 ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                        ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.04%    0.03%        ││   0x00007fa854e39802: or     %rcx,%rbx
  0.69%    0.70%        ││   0x00007fa854e39805: mov    0x34(%rsp),%ecx
  0.05%    0.05%        ││   0x00007fa854e39809: mov    %rbx,0x10(%r12,%rcx,8)  ;*putfield pcsl
                        ││                                                 ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                        ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.03%    0.05%        ││   0x00007fa854e3980e: mov    %r10d,%r8d
  0.01%    0.03%        ││   0x00007fa854e39811: inc    %r8d
  0.62%    0.55%        ││   0x00007fa854e39814: mov    %r8d,0xc(%r12,%rcx,8)  ;*putfield size
                        ││                                                 ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                        ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.08%    0.05%        ││   0x00007fa854e39819: mov    0xc(%r12,%r11,8),%r8d  ; implicit exception: dispatches to 0x00007fa854e3b271
  0.05%    0.01%        ││   0x00007fa854e3981e: cmp    %r8d,%r10d
                        ││   0x00007fa854e39821: jae    0x00007fa854e39ec1
           0.01%        ││   0x00007fa854e39827: mov    0x8(%r12,%r11,8),%r8d
  0.52%    0.37%        ││   0x00007fa854e3982c: cmp    $0xf8019808,%r8d   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                        ││   0x00007fa854e39833: jne    0x00007fa854e3a011  ;*aastore
                        ││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                        ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.07%    0.03%        ││   0x00007fa854e39839: test   %edi,%edi
                     ╭  ││   0x00007fa854e3983b: jl     0x00007fa854e398e9  ;*ifge
                     │  ││                                                 ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                     │  ││                                                 ; - com.google.re2j.Machine::match@322 (line 245)
  0.06%              │  ││   0x00007fa854e39841: xor    %r8d,%r8d          ;*iload_0
                     │  ││                                                 ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                     │  ││                                                 ; - com.google.re2j.Machine::match@322 (line 245)
  0.01%    0.01%     │  ││↗  0x00007fa854e39844: cmp    $0xa,%edi
                     │  │││  0x00007fa854e39847: je     0x00007fa854e39c39  ;*iload_1
                     │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                     │  │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.50%    0.51%     │  │││  0x00007fa854e3984d: mov    0x2c(%rsp),%ebx
  0.04%    0.04%     │  │││  0x00007fa854e39851: test   %ebx,%ebx
                     │  │││  0x00007fa854e39853: jl     0x00007fa854e39c30  ;*iload_1
                     │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                     │  │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.02%    0.04%     │  │││  0x00007fa854e39859: cmp    $0xa,%ebx
                     │  │││  0x00007fa854e3985c: je     0x00007fa854e39c42  ;*iload_0
                     │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                     │  │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.03%    0.01%     │  │││  0x00007fa854e39862: mov    %r9,%rcx
  0.59%    0.68%     │  │││  0x00007fa854e39865: shr    $0x3,%rcx          ;*aastore
                     │  │││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                     │  │││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                     │  │││                                                ; - com.google.re2j.Machine::match@314 (line 243)
  0.05%    0.05%     │  │││  0x00007fa854e39869: shl    $0x3,%r11          ;*getfield denseThreadsInstructions
                     │  │││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                     │  │││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                     │  │││                                                ; - com.google.re2j.Machine::match@314 (line 243)
  0.03%    0.05%     │  │││  0x00007fa854e3986d: lea    0x10(%r11,%r10,4),%r10
  0.01%    0.02%     │  │││  0x00007fa854e39872: mov    %ecx,(%r10)
  0.69%    0.69%     │  │││  0x00007fa854e39875: mov    %edi,%r9d
  0.04%    0.07%     │  │││  0x00007fa854e39878: add    $0xffffffbf,%r9d
  0.03%    0.05%     │  │││  0x00007fa854e3987c: shr    $0x9,%r10
  0.00%              │  │││  0x00007fa854e39880: movabs $0x7fa850601000,%r11
  0.64%    0.64%     │  │││  0x00007fa854e3988a: mov    %r12b,(%r11,%r10,1)  ;*aastore
                     │  │││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                     │  │││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                     │  │││                                                ; - com.google.re2j.Machine::match@314 (line 243)
  0.60%    0.74%     │  │││  0x00007fa854e3988e: cmp    $0x1a,%r9d
                     │╭ │││  0x00007fa854e39892: jb     0x00007fa854e398a5  ;*if_icmple
                     ││ │││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                     ││ │││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     ││ │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.04%    0.02%     ││ │││  0x00007fa854e39894: mov    %edi,%r11d
  0.01%    0.02%     ││ │││  0x00007fa854e39897: add    $0xffffff9f,%r11d
  0.36%    0.41%     ││ │││  0x00007fa854e3989b: cmp    $0x1a,%r11d
                     ││ │││  0x00007fa854e3989f: jae    0x00007fa854e39df4  ;*iconst_1
                     ││ │││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                     ││ │││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     ││ │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.22%    0.25%     │↘ │││  0x00007fa854e398a5: mov    $0x1,%ebp          ;*ireturn
                     │  │││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                     │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     │  │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.03%    0.01%     │  │││  0x00007fa854e398aa: mov    0x2c(%rsp),%r10d
  0.10%    0.10%     │  │││  0x00007fa854e398af: add    $0xffffffbf,%r10d
  0.31%    0.38%     │  │││  0x00007fa854e398b3: cmp    $0x1a,%r10d
                     │ ╭│││  0x00007fa854e398b7: jb     0x00007fa854e398cc  ;*if_icmple
                     │ ││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                     │ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     │ ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.20%    0.27%     │ ││││  0x00007fa854e398b9: mov    0x2c(%rsp),%r11d
  0.01%    0.03%     │ ││││  0x00007fa854e398be: add    $0xffffff9f,%r11d
  0.07%    0.09%     │ ││││  0x00007fa854e398c2: cmp    $0x1a,%r11d
                     │ ││││  0x00007fa854e398c6: jae    0x00007fa854e39e15  ;*iconst_1
                     │ ││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                     │ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     │ ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.28%    0.40%     │ ↘│││  0x00007fa854e398cc: mov    $0x1,%r10d         ;*ireturn
                     │  │││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                     │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     │  │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.31%    0.38%     │  │││  0x00007fa854e398d2: cmp    %r10d,%ebp
                     │  ╰││  0x00007fa854e398d5: je     0x00007fa854e395c1  ;*if_icmpeq
                     │   ││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                     │   ││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.01%    0.01%     │   ││  0x00007fa854e398db: or     $0x10,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                     │   ││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.04%    0.06%     │   ││  0x00007fa854e398df: mov    %r8d,0x4c(%rsp)
  0.09%    0.08%     │   ╰│  0x00007fa854e398e4: jmpq   0x00007fa854e395ca
                     ↘    │  0x00007fa854e398e9: mov    $0x5,%r8d
                          ╰  0x00007fa854e398ef: jmpq   0x00007fa854e39844
                             0x00007fa854e398f4: nopl   0x0(%rax,%rax,1)
                             0x00007fa854e398fc: data16 data16 xchg %ax,%ax
                             0x00007fa854e39900: mov    %edx,0x5c(%rsp)
  0.01%    0.02%             0x00007fa854e39904: jmpq   0x00007fa854e39b71
                             0x00007fa854e39909: mov    0x5c(%rsp),%r9d
                             0x00007fa854e3990e: add    $0x2,%r9d
                             0x00007fa854e39912: mov    %r9d,0x5c(%rsp)
                             0x00007fa854e39917: mov    0x5c(%rsp),%r9d
                             0x00007fa854e3991c: inc    %r9d
                             0x00007fa854e3991f: mov    %r9d,0x58(%rsp)
                             0x00007fa854e39924: jmp    0x00007fa854e39951
                             0x00007fa854e39926: mov    0x5c(%rsp),%r9d
                             0x00007fa854e3992b: add    $0x2,%r9d
                             0x00007fa854e3992f: mov    %r9d,0x58(%rsp)
....................................................................................................
 29.84%   30.82%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 536 (447 bytes) 

                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                      ; - com.google.re2j.Machine::step@202 (line 313)
                                                                      ;   {optimized virtual_call}
                        0x00007fa854e1915c: test   %rax,%rax
                        0x00007fa854e1915f: jne    0x00007fa854e19e71  ;*ifnull
                                                                      ; - com.google.re2j.Machine::step@209 (line 315)
                        0x00007fa854e19165: mov    0x18(%rsp),%r11
                        0x00007fa854e1916a: jmpq   0x00007fa854e18dc1
  0.04%    0.04%        0x00007fa854e1916f: cmp    $0xf8019993,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                        0x00007fa854e19175: jne    0x00007fa854e1996d  ;*invokevirtual add
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.01%        0x00007fa854e1917b: mov    0x18(%r10),%ecx    ;*getfield pc
                                                                      ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.66%    0.69%        0x00007fa854e1917f: cmp    $0x40,%ecx
                        0x00007fa854e19182: jg     0x00007fa854e19da5  ;*if_icmpgt
                                                                      ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.12%    0.19%        0x00007fa854e19188: mov    $0x1,%r11d
  0.03%    0.02%        0x00007fa854e1918e: shl    %cl,%r11           ;*lshl
                                                                      ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.72%    0.70%        0x00007fa854e19191: mov    %rdx,%rbx
  0.05%    0.01%        0x00007fa854e19194: and    %r11,%rbx          ;*land
                                                                      ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%                 0x00007fa854e19197: test   %rbx,%rbx
                        0x00007fa854e1919a: jne    0x00007fa854e19de5  ;*ifeq
                                                                      ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.55%    0.38%        0x00007fa854e191a0: cmp    $0x40,%ecx
                        0x00007fa854e191a3: jge    0x00007fa854e19e31  ;*if_icmpge
                                                                      ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.08%        0x00007fa854e191a9: or     %r11,%rdx
  0.04%    0.02%        0x00007fa854e191ac: mov    %r13,%r11
  0.03%    0.02%        0x00007fa854e191af: mov    %rdx,0x10(%r11)    ;*putfield pcsl
                                                                      ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.57%    0.71%        0x00007fa854e191b3: add    $0x18,%r9
  0.08%    0.11%        0x00007fa854e191b7: shr    $0x3,%r10
  0.03%    0.06%        0x00007fa854e191bb: mov    %r10d,(%r9)        ;*aastore
                                                                      ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%    0.02%        0x00007fa854e191be: mov    %r9,%r10
  0.51%    0.71%        0x00007fa854e191c1: mov    0x14(%rsp),%r8d
  0.11%    0.04%        0x00007fa854e191c6: add    $0x3,%r8d
  0.05%    0.04%        0x00007fa854e191ca: mov    %r8d,0xc(%r11)     ;*putfield size
                                                                      ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.02%        0x00007fa854e191ce: shr    $0x9,%r10
  0.62%    0.74%        0x00007fa854e191d2: movabs $0x7fa850601000,%r8
  0.07%    0.08%        0x00007fa854e191dc: mov    %r12b,(%r8,%r10,1)  ;*aastore
                                                                      ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 196)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@95 (line 487)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 190)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 280)
  0.08%    0.05%        0x00007fa854e191e0: jmpq   0x00007fa854e18dc1
  1.32%    1.38%        0x00007fa854e191e5: cmp    $0xb,%ebp
                        0x00007fa854e191e8: je     0x00007fa854e1955d  ;*if_icmpne
                                                                      ; - com.google.re2j.Inst$RuneInst::matchRune@17 (line 140)
                                                                      ; - com.google.re2j.Machine::step@181 (line 312)
  1.02%    1.12%        0x00007fa854e191ee: mov    0x20(%r8),%r9d     ;*getfield f0
                                                                      ; - com.google.re2j.Inst$RuneInst::matchRune@42 (line 145)
                                                                      ; - com.google.re2j.Machine::step@181 (line 312)
  0.09%    0.17%        0x00007fa854e191f2: cmp    $0x9,%ebp
                  ╭     0x00007fa854e191f5: je     0x00007fa854e1923e  ;*if_icmpne
                  │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@38 (line 144)
                  │                                                   ; - com.google.re2j.Machine::step@181 (line 312)
  0.29%    0.38%  │     0x00007fa854e191f7: cmp    $0xc,%ebp
                  │     0x00007fa854e191fa: jne    0x00007fa854e198ad  ;*if_icmpne
                  │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@61 (line 148)
                  │                                                   ; - com.google.re2j.Machine::step@181 (line 312)
  0.24%    0.47%  │     0x00007fa854e19200: cmp    0x28(%rsp),%r9d
                  │╭    0x00007fa854e19205: je     0x00007fa854e19328  ;*if_icmpeq
                  ││                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@69 (line 149)
                  ││                                                  ; - com.google.re2j.Machine::step@181 (line 312)
  0.33%    0.37%  ││    0x00007fa854e1920b: mov    0x24(%r8),%r9d     ;*getfield f1
                  ││                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@73 (line 149)
                  ││                                                  ; - com.google.re2j.Machine::step@181 (line 312)
  0.01%           ││    0x00007fa854e1920f: cmp    0x28(%rsp),%r9d
                  ││╭   0x00007fa854e19214: je     0x00007fa854e19328  ;*if_icmpeq
                  │││                                                 ; - com.google.re2j.Inst$RuneInst::matchRune@77 (line 149)
                  │││                                                 ; - com.google.re2j.Machine::step@181 (line 312)
  0.41%    0.41%  │││   0x00007fa854e1921a: mov    0x28(%r8),%ebp     ;*getfield f2
                  │││                                                 ; - com.google.re2j.Inst$RuneInst::matchRune@81 (line 149)
                  │││                                                 ; - com.google.re2j.Machine::step@181 (line 312)
  0.14%    0.14%  │││   0x00007fa854e1921e: cmp    0x28(%rsp),%ebp
                  │││   0x00007fa854e19222: je     0x00007fa854e198e5  ;*if_icmpeq
                  │││                                                 ; - com.google.re2j.Inst$RuneInst::matchRune@85 (line 149)
                  │││                                                 ; - com.google.re2j.Machine::step@181 (line 312)
  0.26%    0.24%  │││   0x00007fa854e19228: mov    0x2c(%r8),%ebp     ;*getfield f3
                  │││                                                 ; - com.google.re2j.Inst$RuneInst::matchRune@89 (line 149)
                  │││                                                 ; - com.google.re2j.Machine::step@181 (line 312)
                  │││   0x00007fa854e1922c: cmp    0x28(%rsp),%ebp
                  │││   0x00007fa854e19230: je     0x00007fa854e1991d  ;*if_icmpne
                  │││                                                 ; - com.google.re2j.Inst$RuneInst::matchRune@93 (line 149)
                  │││                                                 ; - com.google.re2j.Machine::step@181 (line 312)
  0.45%    0.55%  │││   0x00007fa854e19236: xor    %r11d,%r11d
  0.01%    0.00%  │││   0x00007fa854e19239: jmpq   0x00007fa854e18d34
  1.12%    1.21%  ↘││   0x00007fa854e1923e: cmp    0x28(%rsp),%r9d
                   ││   0x00007fa854e19243: jne    0x00007fa854e18d31  ;*if_icmpne
                   ││                                                 ; - com.google.re2j.Inst$RuneInst::matchRune@46 (line 145)
                   ││                                                 ; - com.google.re2j.Machine::step@181 (line 312)
  0.01%    0.00%   ││   0x00007fa854e19249: mov    $0x1,%r11d
  0.00%    0.01%   ││   0x00007fa854e1924f: jmpq   0x00007fa854e18d34  ;*if_icmpge
                   ││                                                 ; - com.google.re2j.Machine::step@22 (line 282)
  0.67%    0.90%   ││   0x00007fa854e19254: movzbl 0x18(%rax),%r10d
           0.00%   ││   0x00007fa854e19259: test   %r10d,%r10d
                   ││╭  0x00007fa854e1925c: jne    0x00007fa854e19275  ;*ifeq
                   │││                                                ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                   │││                                                ; - com.google.re2j.Machine::step@225 (line 319)
  0.01%            │││  0x00007fa854e1925e: movb   $0x1,0x18(%rax)    ;*putfield empty
                   │││                                                ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                   │││                                                ; - com.google.re2j.Machine::step@225 (line 319)
           0.00%   │││  0x00007fa854e19262: mov    0x1c(%rax),%ebp    ;*getfield pcs
                   │││                                                ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                   │││                                                ; - com.google.re2j.Machine::step@225 (line 319)
  0.62%    0.68%   │││  0x00007fa854e19265: mov    %r12d,0xc(%rax)    ;*putfield size
                   │││                                                ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                   │││                                                ; - com.google.re2j.Machine::step@225 (line 319)
                   │││  0x00007fa854e19269: mov    %r12,0x10(%rax)    ;*putfield pcsl
                   │││                                                ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                   │││                                                ; - com.google.re2j.Machine::step@225 (line 319)
  0.01%            │││  0x00007fa854e1926d: test   %ebp,%ebp
                   │││  0x00007fa854e1926f: jne    0x00007fa854e19955  ;*getfield size
                   │││                                                ; - com.google.re2j.Machine::step@10 (line 281)
                   ││↘  0x00007fa854e19275: add    $0x80,%rsp
  0.61%    0.74%   ││   0x00007fa854e1927c: pop    %rbp
  0.00%    0.00%   ││   0x00007fa854e1927d: test   %eax,0x15e4cd7d(%rip)        # 0x00007fa86ac66000
                   ││                                                 ;   {poll_return}
  0.02%            ││   0x00007fa854e19283: retq   
  0.03%    0.00%   ││   0x00007fa854e19284: cmp    $0xf8019993,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                   ││   0x00007fa854e1928b: jne    0x00007fa854e19f25  ;*invokevirtual add
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
  0.01%            ││   0x00007fa854e19291: mov    0x18(%r8),%ecx     ;*getfield pc
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
                   ││   0x00007fa854e19295: mov    %rdi,%r11
                   ││   0x00007fa854e19298: mov    0x10(%rdi),%r9     ;*getfield pcsl
                   ││                                                 ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
                   ││                                                 ; implicit exception: dispatches to 0x00007fa854e1a229
  0.01%            ││   0x00007fa854e1929c: cmp    $0x40,%ecx
                   ││   0x00007fa854e1929f: jg     0x00007fa854e19fc9  ;*if_icmpgt
                   ││                                                 ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
  0.01%            ││   0x00007fa854e192a5: mov    $0x1,%edi
                   ││   0x00007fa854e192aa: shl    %cl,%rdi           ;*lshl
                   ││                                                 ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
  0.06%    0.02%   ││   0x00007fa854e192ad: mov    %r9,%rdx
                   ││   0x00007fa854e192b0: and    %rdi,%rdx          ;*land
                   ││                                                 ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
                   ││   0x00007fa854e192b3: test   %rdx,%rdx
                   ││   0x00007fa854e192b6: jne    0x00007fa854e1a025  ;*ifeq
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
  0.00%    0.01%   ││   0x00007fa854e192bc: cmp    $0x40,%ecx
                   ││   0x00007fa854e192bf: jge    0x00007fa854e1a085  ;*if_icmpge
                   ││                                                 ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
  0.01%            ││   0x00007fa854e192c5: mov    %r12b,0x18(%r11)   ;*putfield empty
                   ││                                                 ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
                   ││   0x00007fa854e192c9: mov    0x20(%r11),%ecx    ;*getfield denseThreadsInstructions
                   ││                                                 ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
  0.00%            ││   0x00007fa854e192cd: or     %r9,%rdi
  0.02%    0.00%   ││   0x00007fa854e192d0: mov    %rdi,0x10(%r11)    ;*putfield pcsl
                   ││                                                 ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
  0.02%    0.00%   ││   0x00007fa854e192d4: mov    0xc(%r11),%ebp     ;*getfield size
                   ││                                                 ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
                   ││   0x00007fa854e192d8: mov    %ebp,%edi
                   ││   0x00007fa854e192da: inc    %edi
  0.02%    0.00%   ││   0x00007fa854e192dc: mov    %edi,0xc(%r11)     ;*putfield size
                   ││                                                 ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
  0.00%    0.00%   ││   0x00007fa854e192e0: mov    0xc(%r12,%rcx,8),%edi  ; implicit exception: dispatches to 0x00007fa854e1a23d
                   ││   0x00007fa854e192e5: cmp    %edi,%ebp
                   ││   0x00007fa854e192e7: jae    0x00007fa854e19ed5
                   ││   0x00007fa854e192ed: mov    0x8(%r12,%rcx,8),%edi
  0.01%    0.00%   ││   0x00007fa854e192f2: cmp    $0xf8019808,%edi   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                   ││   0x00007fa854e192f8: jne    0x00007fa854e19f79  ;*aastore
                   ││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
  0.01%    0.00%   ││   0x00007fa854e192fe: lea    (%r12,%rcx,8),%r9  ;*getfield denseThreadsInstructions
                   ││                                                 ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
                   ││   0x00007fa854e19302: lea    0x10(%r9,%rbp,4),%r9
  0.01%    0.00%   ││   0x00007fa854e19307: shr    $0x3,%r8
                   ││   0x00007fa854e1930b: mov    %r8d,(%r9)
  0.09%    0.00%   ││   0x00007fa854e1930e: mov    %r9,%r8
                   ││   0x00007fa854e19311: shr    $0x9,%r8
                   ││   0x00007fa854e19315: movabs $0x7fa850601000,%r9
  0.01%            ││   0x00007fa854e1931f: mov    %r12b,(%r9,%r8,1)  ;*aastore
                   ││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                   ││                                                 ; - com.google.re2j.Machine::step@202 (line 313)
  0.01%    0.02%   ││   0x00007fa854e19323: jmpq   0x00007fa854e18dda  ;*iconst_1
                   ││                                                 ; - com.google.re2j.Inst$RuneInst::matchRune@96 (line 149)
                   ││                                                 ; - com.google.re2j.Machine::step@181 (line 312)
  0.18%    0.19%   ↘↘   0x00007fa854e19328: mov    $0x1,%r11d
  0.08%    0.02%        0x00007fa854e1932e: jmpq   0x00007fa854e18d34
                        0x00007fa854e19333: mov    %r13,%r11
                        0x00007fa854e19336: jmpq   0x00007fa854e18dc1
                        0x00007fa854e1933b: mov    $0xffffffe4,%esi
                        0x00007fa854e19340: mov    %r10d,0x9c(%rsp)
                        0x00007fa854e19348: mov    %rax,0x10(%rsp)
                        0x00007fa854e1934d: mov    %rdi,0x18(%rsp)
                        0x00007fa854e19352: mov    %r13d,0x30(%rsp)
                        0x00007fa854e19357: callq  0x00007fa854bd81a0  ; OopMap{rbp=NarrowOop [8]=Oop [16]=Oop [24]=Oop off=1692}
                                                                      ;*aaload
                                                                      ; - com.google.re2j.Machine::step@87 (line 295)
....................................................................................................
 12.80%   13.87%  <total for region 3>

....[Hottest Regions]...............................................................................
 45.00%   43.73%         C2, level 4  com.google.re2j.Machine::step, version 536 (793 bytes) 
 29.84%   30.82%         C2, level 4  com.google.re2j.Machine::match, version 575 (1157 bytes) 
 12.80%   13.87%         C2, level 4  com.google.re2j.Machine::step, version 536 (447 bytes) 
  5.68%    6.10%         C2, level 4  com.google.re2j.Machine::step, version 536 (96 bytes) 
  1.57%    1.72%         C2, level 4  com.google.re2j.Machine::match, version 575 (420 bytes) 
  1.48%    1.47%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.29%    0.04%         C2, level 4  com.google.re2j.RE2::match, version 588 (91 bytes) 
  0.27%    0.18%         C2, level 4  com.google.re2j.Machine::match, version 575 (316 bytes) 
  0.18%    0.13%         C2, level 4  com.google.re2j.RE2::match, version 588 (23 bytes) 
  0.17%    0.12%         C2, level 4  com.google.re2j.Machine::match, version 575 (302 bytes) 
  0.12%    0.06%         C2, level 4  java.util.Collections::shuffle, version 597 (103 bytes) 
  0.11%                  C2, level 4  com.google.re2j.RE2::match, version 588 (131 bytes) 
  0.10%    0.01%   [kernel.kallsyms]  [unknown] (1 bytes) 
  0.10%    0.09%         C2, level 4  com.google.re2j.RE2::match, version 588 (20 bytes) 
  0.10%    0.10%         C2, level 4  com.google.re2j.RE2::match, version 588 (8 bytes) 
  0.10%    0.02%         C2, level 4  com.google.re2j.RE2::match, version 588 (0 bytes) 
  0.09%    0.00%   [kernel.kallsyms]  [unknown] (39 bytes) 
  0.06%    0.00%   [kernel.kallsyms]  [unknown] (8 bytes) 
  0.06%                  C2, level 4  com.google.re2j.RE2::match, version 588 (98 bytes) 
  0.06%    0.02%              [vdso]  [unknown] (0 bytes) 
  1.81%    1.51%  <...other 340 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 63.48%   63.70%         C2, level 4  com.google.re2j.Machine::step, version 536 
 31.94%   32.86%         C2, level 4  com.google.re2j.Machine::match, version 575 
  2.28%    2.03%   [kernel.kallsyms]  [unknown] 
  1.11%    0.41%         C2, level 4  com.google.re2j.RE2::match, version 588 
  0.20%    0.12%         C2, level 4  java.util.Collections::shuffle, version 597 
  0.14%    0.05%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 630 
  0.06%    0.02%              [vdso]  [unknown] 
  0.04%    0.01%              [vdso]  __vdso_clock_gettime 
  0.04%                  C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 595 
  0.03%    0.00%           libjvm.so  GenericTaskQueueSet<OverflowTaskQueue<StarTask, (MemoryType)1, 131072u>, (MemoryType)1>::steal_best_of_2 
  0.03%                    libjvm.so  os::javaTimeNanos 
  0.03%    0.05%           libjvm.so  PSPromotionManager::copy_to_survivor_space<false> 
  0.03%    0.08%           libjvm.so  RelocIterator::initialize 
  0.02%    0.03%        libc-2.26.so  _IO_fwrite 
  0.02%    0.02%        libc-2.26.so  _IO_fflush 
  0.02%    0.02%           libjvm.so  outputStream::update_position 
  0.02%    0.01%  libpthread-2.26.so  __libc_write 
  0.02%    0.05%        libc-2.26.so  vfprintf 
  0.02%    0.01%           libjvm.so  PSPromotionManager::drain_stacks_depth 
  0.02%    0.03%      hsdis-amd64.so  [unknown] 
  0.43%    0.30%  <...other 69 warm methods...>
....................................................................................................
100.00%   99.80%  <totals>

....[Distribution by Source]........................................................................
 96.92%   97.13%         C2, level 4
  2.28%    2.03%   [kernel.kallsyms]
  0.40%    0.47%           libjvm.so
  0.15%    0.23%        libc-2.26.so
  0.10%    0.03%              [vdso]
  0.06%    0.05%  libpthread-2.26.so
  0.03%    0.03%      hsdis-amd64.so
  0.02%    0.01%         interpreter
  0.01%    0.00%        runtime stub
  0.01%                  C1, level 3
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:44

Benchmark                     Mode  Cnt      Score     Error  Units
Re2jFindRegex.testExp1       thrpt   20  26454.580 ± 151.116  ops/s
Re2jFindRegex.testExp1:·asm  thrpt             NaN              ---
