# JMH version: 1.19
# VM version: JDK 1.8.0_131, VM 25.131-b11
# VM invoker: /usr/lib/jvm/java-8-oracle/jre/bin/java
# VM options: <none>
# Warmup: 20 iterations, 1 s each
# Measurement: 20 iterations, 1 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Throughput, ops/time
# Benchmark: com.github.arnaudroger.re2j.Re2jRegex.testExp2

# Run progress: 0.00% complete, ETA 00:00:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 11544.764 ops/s
# Warmup Iteration   2: 21998.995 ops/s
# Warmup Iteration   3: 22508.162 ops/s
# Warmup Iteration   4: 21864.813 ops/s
# Warmup Iteration   5: 22465.173 ops/s
# Warmup Iteration   6: 19821.417 ops/s
# Warmup Iteration   7: 21903.648 ops/s
# Warmup Iteration   8: 21801.950 ops/s
# Warmup Iteration   9: 21940.013 ops/s
# Warmup Iteration  10: 22051.761 ops/s
# Warmup Iteration  11: 21852.022 ops/s
# Warmup Iteration  12: 21725.881 ops/s
# Warmup Iteration  13: 22169.115 ops/s
# Warmup Iteration  14: 21916.589 ops/s
# Warmup Iteration  15: 22789.382 ops/s
# Warmup Iteration  16: 22637.927 ops/s
# Warmup Iteration  17: 22898.878 ops/s
# Warmup Iteration  18: 22601.617 ops/s
# Warmup Iteration  19: 22378.656 ops/s
# Warmup Iteration  20: 22951.736 ops/s
Iteration   1: 22995.870 ops/s
Iteration   2: 21819.114 ops/s
Iteration   3: 21022.113 ops/s
Iteration   4: 21086.107 ops/s
Iteration   5: 21354.078 ops/s
Iteration   6: 21395.674 ops/s
Iteration   7: 21239.218 ops/s
Iteration   8: 21166.118 ops/s
Iteration   9: 21276.461 ops/s
Iteration  10: 22195.478 ops/s
Iteration  11: 22973.880 ops/s
Iteration  12: 22993.617 ops/s
Iteration  13: 22906.849 ops/s
Iteration  14: 22785.581 ops/s
Iteration  15: 22984.063 ops/s
Iteration  16: 22782.917 ops/s
Iteration  17: 22557.392 ops/s
Iteration  18: 22539.546 ops/s
Iteration  19: 22459.064 ops/s
Iteration  20: 22606.625 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jRegex.testExp2":
  22156.988 ±(99.9%) 663.071 ops/s [Average]
  (min, avg, max) = (21022.113, 22156.988, 22995.870), stdev = 763.594
  CI (99.9%): [21493.917, 22820.059] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jRegex.testExp2:·asm":
PrintAssembly processed: 202345 total address lines.
Perf output processed (skipped 23.509 seconds):
 Column 1: cycles (20590 events)
 Column 2: instructions (20574 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Inst$Alt5Inst::add, version 535 (852 bytes) 

                     # parm4:    rdi:rdi   = &apos;[I&apos;
                     # parm5:    [sp+0x70]   = &apos;com/google/re2j/Machine&apos;  (sp of caller)
                     0x00007f75c122fec0: mov    0x8(%rsi),%r10d
                     0x00007f75c122fec4: shl    $0x3,%r10
                     0x00007f75c122fec8: cmp    %r10,%rax
                     0x00007f75c122fecb: jne    0x00007f75c1045e20  ;   {runtime_call}
                     0x00007f75c122fed1: data16 xchg %ax,%ax
                     0x00007f75c122fed4: nopl   0x0(%rax,%rax,1)
                     0x00007f75c122fedc: data16 data16 xchg %ax,%ax
                   [Verified Entry Point]
  0.24%    0.29%     0x00007f75c122fee0: mov    %eax,-0x14000(%rsp)
  0.41%    0.35%     0x00007f75c122fee7: push   %rbp
  0.26%    0.42%     0x00007f75c122fee8: sub    $0x60,%rsp         ;*synchronization entry
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@-1 (line 275)
  0.33%    0.47%     0x00007f75c122feec: vmovq  %r8,%xmm6
  0.00%              0x00007f75c122fef1: vmovq  %rsi,%xmm4
  0.23%    0.24%     0x00007f75c122fef6: vmovd  %ecx,%xmm0
  0.02%    0.01%     0x00007f75c122fefa: mov    0x18(%rsi),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@2 (line 275)
  0.42%    0.17%     0x00007f75c122fefd: mov    0x10(%rdx),%r11    ;*getfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 275)
                                                                   ; implicit exception: dispatches to 0x00007f75c1230871
  0.00%    0.00%     0x00007f75c122ff01: cmp    $0x40,%ecx
                     0x00007f75c122ff04: jg     0x00007f75c12303dd  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 275)
  0.25%    0.05%     0x00007f75c122ff0a: mov    $0x1,%eax
  0.01%    0.01%     0x00007f75c122ff0f: mov    $0x1,%r8d
  0.36%    0.38%     0x00007f75c122ff15: shl    %cl,%r8            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 275)
  0.26%    0.10%     0x00007f75c122ff18: mov    %r11,%r10
  0.33%    0.30%     0x00007f75c122ff1b: and    %r8,%r10           ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 275)
                     0x00007f75c122ff1e: xor    %r13d,%r13d
  0.26%    0.08%     0x00007f75c122ff21: test   %r10,%r10
                     0x00007f75c122ff24: jne    0x00007f75c1230411  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 275)
  0.01%    0.02%     0x00007f75c122ff2a: cmp    $0x40,%ecx
                     0x00007f75c122ff2d: jge    0x00007f75c1230455  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 278)
  0.29%    0.31%     0x00007f75c122ff33: mov    %r12b,0x18(%rdx)   ;*putfield empty
                                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 278)
           0.00%     0x00007f75c122ff37: mov    0x1c(%rsi),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@23 (line 280)
  1.17%    0.10%     0x00007f75c122ff3a: or     %r11,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 278)
  0.00%    0.00%     0x00007f75c122ff3d: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 278)
  0.32%    0.27%     0x00007f75c122ff41: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f75c1230885
  1.33%    0.75%     0x00007f75c122ff46: cmp    $0xf8019993,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                     0x00007f75c122ff4d: jne    0x00007f75c12302b1
  0.25%    0.28%     0x00007f75c122ff53: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.00%    0.01%     0x00007f75c122ff57: mov    0x18(%r10),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.39%    0.28%     0x00007f75c122ff5b: cmp    $0x40,%ecx
                     0x00007f75c122ff5e: jg     0x00007f75c1230489  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.17%    0.25%     0x00007f75c122ff64: mov    $0x1,%r11d
  0.09%    0.07%     0x00007f75c122ff6a: shl    %cl,%r11           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.82%    0.68%     0x00007f75c122ff6d: mov    %r8,%rbx
  0.09%    0.09%     0x00007f75c122ff70: and    %r11,%rbx          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.01%    0.01%     0x00007f75c122ff73: test   %rbx,%rbx
                     0x00007f75c122ff76: jne    0x00007f75c12304c9  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.51%    0.59%     0x00007f75c122ff7c: cmp    $0x40,%ecx
                     0x00007f75c122ff7f: jge    0x00007f75c1230511  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.04%    0.03%     0x00007f75c122ff85: or     %r11,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.09%    0.05%     0x00007f75c122ff88: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.04%    0.01%     0x00007f75c122ff8c: mov    0x70(%rsp),%r11
  0.49%    0.47%     0x00007f75c122ff91: movzbl 0x11(%r11),%ebp    ;*getfield captures
                                                                   ; - com.google.re2j.Inst$MatchInst::add@24 (line 98)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
                                                                   ; implicit exception: dispatches to 0x00007f75c12308ad
  0.06%    0.03%     0x00007f75c122ff96: test   %ebp,%ebp
                     0x00007f75c122ff98: jne    0x00007f75c1230551  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@27 (line 98)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.08%    0.12%     0x00007f75c122ff9e: mov    0xc(%rdx),%ecx     ;*getfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.03%    0.04%     0x00007f75c122ffa1: mov    0x20(%rdx),%ebx    ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.46%    0.65%     0x00007f75c122ffa4: mov    %ecx,%esi
  0.04%    0.03%     0x00007f75c122ffa6: inc    %esi               ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.05%    0.07%     0x00007f75c122ffa8: mov    %esi,0xc(%rdx)     ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.00%    0.04%     0x00007f75c122ffab: mov    0xc(%r12,%rbx,8),%edi  ; implicit exception: dispatches to 0x00007f75c12308bd
  0.40%    0.71%     0x00007f75c122ffb0: cmp    %edi,%ecx
                  ╭  0x00007f75c122ffb2: jae    0x00007f75c1230235
  0.03%    0.08%  │  0x00007f75c122ffb8: vmovd  %esi,%xmm1
  0.05%    0.06%  │  0x00007f75c122ffbc: vmovd  %ebx,%xmm2
  0.02%    0.00%  │  0x00007f75c122ffc0: mov    %ecx,0x18(%rsp)
  0.44%    0.40%  │  0x00007f75c122ffc4: mov    %r10,%rcx
  0.03%    0.01%  │  0x00007f75c122ffc7: mov    0x70(%rsp),%r14
  0.11%    0.11%  │  0x00007f75c122ffcc: mov    0x8(%r12,%rbx,8),%r11d
  0.02%    0.00%  │  0x00007f75c122ffd1: cmp    $0xf8019808,%r11d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                  │  0x00007f75c122ffd8: jne    0x00007f75c12302e1  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.52%    0.37%  │  0x00007f75c122ffde: vmovq  %xmm4,%r10
  0.04%           │  0x00007f75c122ffe3: mov    0x20(%r10),%ebp    ;*getfield inst2
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@41 (line 281)
  0.09%    0.05%  │  0x00007f75c122ffe7: shr    $0x3,%rcx          ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.02%    0.02%  │  0x00007f75c122ffeb: lea    (%r12,%rbx,8),%r11  ;*getfield denseThreadsInstructions
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.38%    0.34%  │  0x00007f75c122ffef: mov    0x18(%rsp),%r10d
  0.15%    0.04%  │  0x00007f75c122fff4: lea    0x10(%r11,%r10,4),%r10
  0.11%    0.09%  │  0x00007f75c122fff9: mov    %ecx,(%r10)
  0.12%    0.06%  │  0x00007f75c122fffc: shr    $0x9,%r10
  0.42%    0.34%  │  0x00007f75c1230000: movabs $0x7f75d1aaa000,%rbx
  0.02%           │  0x00007f75c123000a: mov    %r12b,(%rbx,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.10%    0.09%  │  0x00007f75c123000e: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f75c12308d5
  0.03%    0.02%  │  0x00007f75c1230013: cmp    $0xf8019993,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │  0x00007f75c123001a: jne    0x00007f75c1230319
  0.38%    0.29%  │  0x00007f75c1230020: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.05%    0.03%  │  0x00007f75c1230024: vmovq  %r10,%xmm3
  0.12%    0.08%  │  0x00007f75c1230029: mov    0x18(%r10),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.04%    0.01%  │  0x00007f75c123002d: vmovd  %ecx,%xmm5
  0.45%    0.16%  │  0x00007f75c1230031: cmp    $0x40,%ecx
                  │  0x00007f75c1230034: jg     0x00007f75c123058d  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.05%    0.01%  │  0x00007f75c123003a: mov    $0x1,%r10d
  0.11%    0.08%  │  0x00007f75c1230040: shl    %cl,%r10           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.58%    0.27%  │  0x00007f75c1230043: mov    %r8,%rcx
  0.11%    0.09%  │  0x00007f75c1230046: and    %r10,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.04%    0.02%  │  0x00007f75c1230049: test   %rcx,%rcx
                  │  0x00007f75c123004c: jne    0x00007f75c12305c9  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.58%    0.38%  │  0x00007f75c1230052: vmovd  %xmm5,%ecx
  0.02%    0.00%  │  0x00007f75c1230056: cmp    $0x40,%ecx
                  │  0x00007f75c1230059: jge    0x00007f75c1230611  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.08%    0.08%  │  0x00007f75c123005f: or     %r10,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.04%    0.01%  │  0x00007f75c1230062: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.39%    0.14%  │  0x00007f75c1230066: mov    0x18(%rsp),%ecx
  0.06%           │  0x00007f75c123006a: add    $0x2,%ecx
  0.08%    0.07%  │  0x00007f75c123006d: mov    %ecx,0xc(%rdx)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.03%    0.01%  │  0x00007f75c1230070: mov    0x18(%rsp),%r10d
  0.43%    0.43%  │  0x00007f75c1230075: add    $0x4,%r10d         ;*iadd
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.04%    0.02%  │  0x00007f75c1230079: cmp    %edi,%r10d
                  │  0x00007f75c123007c: jae    0x00007f75c1230271  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.10%    0.12%  │  0x00007f75c1230082: vmovd  %r9d,%xmm7
  0.06%    0.03%  │  0x00007f75c1230087: vmovq  %xmm4,%r9
  0.51%    0.51%  │  0x00007f75c123008c: mov    0x24(%r9),%ebp     ;*getfield inst3
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@59 (line 282)
  0.03%    0.03%  │  0x00007f75c1230090: vmovq  %xmm3,%r9
  0.09%    0.10%  │  0x00007f75c1230095: mov    %r9,%rcx
  0.02%    0.03%  │  0x00007f75c1230098: shr    $0x3,%rcx          ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.38%    0.47%  │  0x00007f75c123009c: movslq 0x18(%rsp),%r9
  0.06%    0.01%  │  0x00007f75c12300a1: lea    (%r11,%r9,4),%r9   ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.15%    0.14%  │  0x00007f75c12300a5: mov    %r9,%rdi
  0.06%    0.01%  │  0x00007f75c12300a8: add    $0x14,%rdi
  0.49%    0.29%  │  0x00007f75c12300ac: mov    %ecx,(%rdi)
  0.05%           │  0x00007f75c12300ae: mov    %rdi,%rcx
  0.08%    0.07%  │  0x00007f75c12300b1: shr    $0x9,%rcx
  0.03%    0.03%  │  0x00007f75c12300b5: mov    %r12b,(%rbx,%rcx,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.40%    0.34%  │  0x00007f75c12300b9: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f75c12308fd
  0.04%    0.07%  │  0x00007f75c12300be: cmp    $0xf8019993,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │  0x00007f75c12300c4: jne    0x00007f75c1230349
  0.13%    0.12%  │  0x00007f75c12300ca: lea    (%r12,%rbp,8),%rcx  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.05%    0.05%  │  0x00007f75c12300ce: vmovq  %rcx,%xmm1
  0.46%    0.57%  │  0x00007f75c12300d3: mov    0x18(%rcx),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.02%    0.04%  │  0x00007f75c12300d6: vmovd  %ecx,%xmm2
  0.09%    0.09%  │  0x00007f75c12300da: cmp    $0x40,%ecx
                  │  0x00007f75c12300dd: jg     0x00007f75c1230651  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.04%    0.03%  │  0x00007f75c12300e3: mov    $0x1,%edi
  0.47%    0.58%  │  0x00007f75c12300e8: shl    %cl,%rdi           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.22%    0.22%  │  0x00007f75c12300eb: mov    %r8,%rcx
  0.40%    0.39%  │  0x00007f75c12300ee: and    %rdi,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.04%    0.06%  │  0x00007f75c12300f1: test   %rcx,%rcx
                  │  0x00007f75c12300f4: jne    0x00007f75c1230691  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.10%    0.12%  │  0x00007f75c12300fa: vmovd  %xmm2,%ecx
  0.03%    0.03%  │  0x00007f75c12300fe: cmp    $0x40,%ecx
                  │  0x00007f75c1230101: jge    0x00007f75c12306dd  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.44%    0.58%  │  0x00007f75c1230107: or     %rdi,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.04%    0.03%  │  0x00007f75c123010a: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.13%    0.07%  │  0x00007f75c123010e: vmovq  %xmm4,%rcx
  0.03%    0.04%  │  0x00007f75c1230113: mov    0x28(%rcx),%ebp    ;*getfield inst4
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 283)
  0.48%    0.41%  │  0x00007f75c1230116: mov    %r9,%rdi
  0.04%    0.05%  │  0x00007f75c1230119: add    $0x18,%rdi
  0.10%    0.08%  │  0x00007f75c123011d: vmovq  %xmm1,%rsi
  0.04%    0.08%  │  0x00007f75c1230122: mov    %rsi,%rcx
  0.38%    0.50%  │  0x00007f75c1230125: shr    $0x3,%rcx
  0.05%    0.04%  │  0x00007f75c1230129: mov    %ecx,(%rdi)        ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.09%    0.10%  │  0x00007f75c123012b: mov    0x18(%rsp),%ecx
  0.05%    0.04%  │  0x00007f75c123012f: add    $0x3,%ecx
  0.52%    0.47%  │  0x00007f75c1230132: mov    %ecx,0xc(%rdx)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.03%    0.03%  │  0x00007f75c1230135: shr    $0x9,%rdi
  0.11%    0.10%  │  0x00007f75c1230139: mov    %r12b,(%rbx,%rdi,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.05%    0.03%  │  0x00007f75c123013d: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f75c1230925
  0.42%    0.51%  │  0x00007f75c1230142: cmp    $0xf8019993,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │  0x00007f75c1230148: jne    0x00007f75c123037d
  0.08%    0.05%  │  0x00007f75c123014e: lea    (%r12,%rbp,8),%rcx  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.09%    0.09%  │  0x00007f75c1230152: vmovq  %rcx,%xmm1
  0.03%    0.04%  │  0x00007f75c1230157: mov    0x18(%rcx),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.46%    0.60%  │  0x00007f75c123015a: vmovd  %ecx,%xmm3
  0.05%    0.02%  │  0x00007f75c123015e: cmp    $0x40,%ecx
                  │  0x00007f75c1230161: jg     0x00007f75c123071d  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.06%    0.11%  │  0x00007f75c1230167: mov    $0x1,%edi
  0.04%    0.04%  │  0x00007f75c123016c: shl    %cl,%rdi           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.62%    0.59%  │  0x00007f75c123016f: mov    %r8,%rcx
  0.03%    0.01%  │  0x00007f75c1230172: and    %rdi,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.46%    0.30%  │  0x00007f75c1230175: test   %rcx,%rcx
                  │  0x00007f75c1230178: jne    0x00007f75c123075d  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.02%    0.06%  │  0x00007f75c123017e: vmovd  %xmm3,%ecx
  0.09%    0.13%  │  0x00007f75c1230182: cmp    $0x40,%ecx
                  │  0x00007f75c1230185: jge    0x00007f75c12307a9  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.02%    0.05%  │  0x00007f75c123018b: mov    %r10d,0xc(%rdx)    ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.39%    0.64%  │  0x00007f75c123018f: vmovq  %xmm4,%r10
  0.04%    0.03%  │  0x00007f75c1230194: mov    0x2c(%r10),%ebp    ;*getfield inst5
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@95 (line 284)
  0.14%    0.17%  │  0x00007f75c1230198: mov    %r9,%rcx
  0.05%    0.03%  │  0x00007f75c123019b: add    $0x1c,%rcx         ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.44%    0.46%  │  0x00007f75c123019f: or     %rdi,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.03%    0.05%  │  0x00007f75c12301a2: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.10%    0.11%  │  0x00007f75c12301a6: vmovq  %xmm1,%r10
  0.04%    0.03%  │  0x00007f75c12301ab: shr    $0x3,%r10
  0.40%    0.63%  │  0x00007f75c12301af: mov    %r10d,(%rcx)
  0.04%    0.05%  │  0x00007f75c12301b2: mov    %rcx,%r10
  0.10%    0.10%  │  0x00007f75c12301b5: shr    $0x9,%r10
  0.03%    0.03%  │  0x00007f75c12301b9: mov    %r12b,(%rbx,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.49%    0.44%  │  0x00007f75c12301bd: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f75c123094d
  0.04%    0.01%  │  0x00007f75c12301c2: cmp    $0xf8019993,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │  0x00007f75c12301c9: jne    0x00007f75c12303b1
  0.10%    0.11%  │  0x00007f75c12301cf: lea    (%r12,%rbp,8),%rdi  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.03%    0.03%  │  0x00007f75c12301d3: mov    0x18(%rdi),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.45%    0.35%  │  0x00007f75c12301d6: cmp    $0x40,%ecx
                  │  0x00007f75c12301d9: jg     0x00007f75c12307e9  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.07%    0.01%  │  0x00007f75c12301df: shl    %cl,%rax           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.65%    0.68%  │  0x00007f75c12301e2: mov    %r8,%r10
  0.06%    0.03%  │  0x00007f75c12301e5: and    %rax,%r10          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.11%    0.08%  │  0x00007f75c12301e8: test   %r10,%r10
                  │  0x00007f75c12301eb: jne    0x00007f75c1230811  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.03%    0.04%  │  0x00007f75c12301f1: cmp    $0x40,%ecx
                  │  0x00007f75c12301f4: jge    0x00007f75c1230849  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.45%    0.56%  │  0x00007f75c12301fa: or     %rax,%r8
  0.04%    0.07%  │  0x00007f75c12301fd: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.09%    0.15%  │  0x00007f75c1230201: add    $0x20,%r9
  0.04%    0.03%  │  0x00007f75c1230205: mov    %rdi,%r10
  0.44%    0.49%  │  0x00007f75c1230208: shr    $0x3,%r10
  0.03%    0.05%  │  0x00007f75c123020c: mov    %r10d,(%r9)        ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.07%    0.08%  │  0x00007f75c123020f: mov    %r9,%r10
  0.04%    0.01%  │  0x00007f75c1230212: mov    0x18(%rsp),%r11d
  0.45%    0.18%  │  0x00007f75c1230217: add    $0x5,%r11d
  0.02%    0.03%  │  0x00007f75c123021b: mov    %r11d,0xc(%rdx)    ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.09%    0.07%  │  0x00007f75c123021f: shr    $0x9,%r10
  0.03%    0.06%  │  0x00007f75c1230223: mov    %r12b,(%rbx,%r10,1)  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 275)
  0.50%    0.47%  │  0x00007f75c1230227: xor    %eax,%eax
  0.03%    0.04%  │  0x00007f75c1230229: add    $0x60,%rsp
  0.10%    0.17%  │  0x00007f75c123022d: pop    %rbp
  0.02%    0.07%  │  0x00007f75c123022e: test   %eax,0x17e71dcc(%rip)        # 0x00007f75d90a2000
                  │                                                ;   {poll_return}
  0.49%    0.56%  │  0x00007f75c1230234: retq                      ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
                  ↘  0x00007f75c1230235: mov    $0xffffffe4,%esi
                     0x00007f75c123023a: vmovq  %xmm4,%rbp
                     0x00007f75c123023f: mov    %rdx,0x70(%rsp)
                     0x00007f75c1230244: vmovss %xmm0,(%rsp)
                     0x00007f75c1230249: vmovsd %xmm6,0x8(%rsp)
                     0x00007f75c123024f: mov    %r9d,0x4(%rsp)
....................................................................................................
 33.50%   30.18%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 529 (532 bytes) 

                             # parm6:    [sp+0x78]   = int
                             # parm7:    [sp+0x80]   = boolean
                             0x00007f75c1234f20: mov    0x8(%rsi),%r10d
                             0x00007f75c1234f24: shl    $0x3,%r10
                             0x00007f75c1234f28: cmp    %r10,%rax
                             0x00007f75c1234f2b: jne    0x00007f75c1045e20  ;   {runtime_call}
                             0x00007f75c1234f31: data16 xchg %ax,%ax
                             0x00007f75c1234f34: nopl   0x0(%rax,%rax,1)
                             0x00007f75c1234f3c: data16 data16 xchg %ax,%ax
                           [Verified Entry Point]
  0.29%    0.31%             0x00007f75c1234f40: mov    %eax,-0x14000(%rsp)
  0.40%    0.35%             0x00007f75c1234f47: push   %rbp
  0.16%    0.18%             0x00007f75c1234f48: sub    $0x60,%rsp         ;*synchronization entry
                                                                           ; - com.google.re2j.Machine::step@-1 (line 280)
  0.38%    0.44%             0x00007f75c1234f4c: mov    %edi,(%rsp)
  0.05%    0.07%             0x00007f75c1234f4f: vmovd  %r9d,%xmm2
  0.14%    0.16%             0x00007f75c1234f54: vmovd  %r8d,%xmm1
  0.05%    0.06%             0x00007f75c1234f59: vmovq  %rcx,%xmm0
  0.38%    0.50%             0x00007f75c1234f5e: mov    %rsi,%r13
  0.04%    0.04%             0x00007f75c1234f61: mov    0x14(%rsi),%r11d   ;*getfield re2
                                                                           ; - com.google.re2j.Machine::step@1 (line 280)
  0.13%    0.17%             0x00007f75c1234f65: movzbl 0x18(%r12,%r11,8),%r14d  ;*getfield longest
                                                                           ; - com.google.re2j.Machine::step@4 (line 280)
                                                                           ; implicit exception: dispatches to 0x00007f75c123572d
  0.07%    0.08%             0x00007f75c1234f6b: mov    %rdx,%rax
  0.22%    0.28%             0x00007f75c1234f6e: mov    0xc(%rdx),%r9d     ;*getfield size
                                                                           ; - com.google.re2j.Machine::step@10 (line 281)
                                                                           ; implicit exception: dispatches to 0x00007f75c123573d
  0.08%    0.05%             0x00007f75c1234f72: test   %r9d,%r9d
                  ╭          0x00007f75c1234f75: jle    0x00007f75c123505e  ;*if_icmpge
                  │                                                        ; - com.google.re2j.Machine::step@22 (line 282)
  0.12%    0.17%  │          0x00007f75c1234f7b: movzbl 0x11(%rsi),%r11d
  0.05%    0.06%  │          0x00007f75c1234f80: test   %r11d,%r11d
                  │          0x00007f75c1234f83: jne    0x00007f75c12353c1  ;*aload_0
                  │                                                        ; - com.google.re2j.Machine::step@25 (line 285)
  0.34%    0.35%  │          0x00007f75c1234f89: mov    0x20(%rdx),%r11d   ;*getfield denseThreadsInstructions
                  │                                                        ; - com.google.re2j.Machine::step@82 (line 295)
  0.07%    0.05%  │          0x00007f75c1234f8d: mov    0xc(%r12,%r11,8),%r10d  ;*aaload
                  │                                                        ; - com.google.re2j.Machine::step@87 (line 295)
                  │                                                        ; implicit exception: dispatches to 0x00007f75c12353c1
  0.22%    0.20%  │          0x00007f75c1234f92: test   %r10d,%r10d
                  │          0x00007f75c1234f95: jbe    0x00007f75c12353c1
  0.06%    0.05%  │          0x00007f75c1234f9b: mov    %r9d,%ecx
  0.40%    0.27%  │          0x00007f75c1234f9e: dec    %ecx
  0.03%    0.04%  │          0x00007f75c1234fa0: cmp    %r10d,%ecx
                  │          0x00007f75c1234fa3: jae    0x00007f75c12353c1
  0.23%    0.20%  │          0x00007f75c1234fa9: lea    (%r12,%r11,8),%rbx
  0.05%    0.02%  │          0x00007f75c1234fad: xor    %r11d,%r11d
  0.34%    0.28%  │╭         0x00007f75c1234fb0: jmp    0x00007f75c1234fc3
  0.69%    0.81%  ││   ↗     0x00007f75c1234fb2: vmovq  %r10,%xmm0
  0.55%    0.67%  ││   │     0x00007f75c1234fb7: mov    %r8d,0x78(%rsp)
  0.44%    0.56%  ││   │     0x00007f75c1234fbc: mov    %edi,0x80(%rsp)    ;*aload_0
                  ││   │                                                   ; - com.google.re2j.Machine::step@25 (line 285)
  1.07%    1.44%  │↘   │     0x00007f75c1234fc3: mov    0x10(%rbx,%r11,4),%r10d  ;*aaload
                  │    │                                                   ; - com.google.re2j.Machine::step@87 (line 295)
  0.91%    1.19%  │    │     0x00007f75c1234fc8: mov    0xc(%r12,%r10,8),%r8d  ; implicit exception: dispatches to 0x00007f75c123571d
  1.05%    1.17%  │    │     0x00007f75c1234fcd: cmp    $0x6,%r8d
                  │    │     0x00007f75c1234fd1: je     0x00007f75c12351f2  ;*if_icmpne
                  │    │                                                   ; - com.google.re2j.Machine::step@97 (line 297)
  1.35%    1.68%  │    │     0x00007f75c1234fd7: mov    0x8(%r12,%r10,8),%ecx
  1.39%    1.80%  │    │     0x00007f75c1234fdc: cmp    $0xf8019993,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │    │     0x00007f75c1234fe2: jne    0x00007f75c1235241
  0.88%    1.19%  │    │     0x00007f75c1234fe8: shl    $0x3,%r10          ;*invokevirtual matchRune
                  │    │                                                   ; - com.google.re2j.Machine::step@181 (line 312)
  0.50%    0.52%  │    │     0x00007f75c1234fec: mov    0xc(%r10),%ebp     ;*getfield op
                  │    │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@1 (line 136)
                  │    │                                                   ; - com.google.re2j.Machine::step@181 (line 312)
  0.86%    1.19%  │    │     0x00007f75c1234ff0: cmp    $0xa,%ebp
                  │ ╭  │     0x00007f75c1234ff3: je     0x00007f75c123508b  ;*if_icmpne
                  │ │  │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@6 (line 136)
                  │ │  │                                                   ; - com.google.re2j.Machine::step@181 (line 312)
  1.28%    1.39%  │ │  │     0x00007f75c1234ff9: cmp    $0xb,%ebp
                  │ │  │     0x00007f75c1234ffc: je     0x00007f75c12352c1  ;*if_icmpne
                  │ │  │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@17 (line 140)
                  │ │  │                                                   ; - com.google.re2j.Machine::step@181 (line 312)
  0.78%    0.98%  │ │  │     0x00007f75c1235002: cmp    $0x9,%ebp
                  │ │  │     0x00007f75c1235005: je     0x00007f75c1235301  ;*if_icmpne
                  │ │  │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@38 (line 144)
                  │ │  │                                                   ; - com.google.re2j.Machine::step@181 (line 312)
  1.00%    1.10%  │ │  │     0x00007f75c123500b: cmp    $0xc,%ebp
                  │ │  │     0x00007f75c123500e: jne    0x00007f75c1235281  ;*if_icmpne
                  │ │  │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@61 (line 148)
                  │ │  │                                                   ; - com.google.re2j.Machine::step@181 (line 312)
  0.99%    1.24%  │ │  │     0x00007f75c1235014: mov    0x20(%r10),%ecx    ;*getfield f0
                  │ │  │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@65 (line 149)
                  │ │  │                                                   ; - com.google.re2j.Machine::step@181 (line 312)
  0.84%    1.02%  │ │  │     0x00007f75c1235018: cmp    (%rsp),%ecx
                  │ │╭ │     0x00007f75c123501b: je     0x00007f75c123508b  ;*if_icmpeq
                  │ ││ │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@69 (line 149)
                  │ ││ │                                                   ; - com.google.re2j.Machine::step@181 (line 312)
  1.17%    1.23%  │ ││ │     0x00007f75c123501d: mov    0x24(%r10),%r8d    ;*getfield f1
                  │ ││ │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@73 (line 149)
                  │ ││ │                                                   ; - com.google.re2j.Machine::step@181 (line 312)
  0.55%    0.71%  │ ││ │     0x00007f75c1235021: cmp    (%rsp),%r8d
                  │ ││╭│     0x00007f75c1235025: je     0x00007f75c123508b  ;*if_icmpeq
                  │ ││││                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@77 (line 149)
                  │ ││││                                                   ; - com.google.re2j.Machine::step@181 (line 312)
  1.25%    1.51%  │ ││││     0x00007f75c1235027: mov    0x28(%r10),%ebp    ;*getfield f2
                  │ ││││                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@81 (line 149)
                  │ ││││                                                   ; - com.google.re2j.Machine::step@181 (line 312)
  0.96%    1.06%  │ ││││     0x00007f75c123502b: cmp    (%rsp),%ebp
                  │ ││││     0x00007f75c123502e: je     0x00007f75c1235341  ;*if_icmpeq
                  │ ││││                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@85 (line 149)
                  │ ││││                                                   ; - com.google.re2j.Machine::step@181 (line 312)
  1.02%    1.20%  │ ││││     0x00007f75c1235034: mov    0x2c(%r10),%ebp    ;*getfield f3
                  │ ││││                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@89 (line 149)
                  │ ││││                                                   ; - com.google.re2j.Machine::step@181 (line 312)
  0.39%    0.55%  │ ││││     0x00007f75c1235038: cmp    (%rsp),%ebp
                  │ ││││     0x00007f75c123503b: je     0x00007f75c1235381  ;*if_icmpne
                  │ ││││                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@93 (line 149)
                  │ ││││                                                   ; - com.google.re2j.Machine::step@181 (line 312)
  1.15%    1.45%  │ ││││     0x00007f75c1235041: vmovq  %xmm0,%r10
  0.69%    0.85%  │ ││││     0x00007f75c1235046: mov    0x78(%rsp),%r8d
  0.66%    0.95%  │ ││││     0x00007f75c123504b: mov    0x80(%rsp),%edi    ;*aload
                  │ ││││                                                   ; - com.google.re2j.Machine::step@207 (line 315)
  0.50%    0.49%  │ ││││  ↗  0x00007f75c1235052: inc    %r11d              ;*iinc
                  │ ││││  │                                                ; - com.google.re2j.Machine::step@218 (line 282)
  1.23%    1.67%  │ ││││  │  0x00007f75c1235055: cmp    %r9d,%r11d
                  │ │││╰  │  0x00007f75c1235058: jl     0x00007f75c1234fb2  ;*if_icmpge
                  │ │││   │                                                ; - com.google.re2j.Machine::step@22 (line 282)
  0.14%    0.27%  ↘ │││   │  0x00007f75c123505e: movzbl 0x18(%rax),%r10d
  0.15%    0.23%    │││   │  0x00007f75c1235063: test   %r10d,%r10d
                    │││ ╭ │  0x00007f75c1235066: jne    0x00007f75c123507f  ;*ifeq
                    │││ │ │                                                ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                    │││ │ │                                                ; - com.google.re2j.Machine::step@225 (line 319)
  0.07%    0.10%    │││ │ │  0x00007f75c1235068: mov    %r12d,0xc(%rax)    ;*putfield size
                    │││ │ │                                                ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                    │││ │ │                                                ; - com.google.re2j.Machine::step@225 (line 319)
  0.24%    0.35%    │││ │ │  0x00007f75c123506c: mov    0x1c(%rax),%ebp    ;*getfield pcs
                    │││ │ │                                                ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                    │││ │ │                                                ; - com.google.re2j.Machine::step@225 (line 319)
  0.17%    0.23%    │││ │ │  0x00007f75c123506f: movb   $0x1,0x18(%rax)    ;*putfield empty
                    │││ │ │                                                ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                    │││ │ │                                                ; - com.google.re2j.Machine::step@225 (line 319)
  0.16%    0.24%    │││ │ │  0x00007f75c1235073: mov    %r12,0x10(%rax)    ;*putfield pcsl
                    │││ │ │                                                ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                    │││ │ │                                                ; - com.google.re2j.Machine::step@225 (line 319)
  0.04%    0.09%    │││ │ │  0x00007f75c1235077: test   %ebp,%ebp
                    │││ │ │  0x00007f75c1235079: jne    0x00007f75c12353f5  ;*getfield size
                    │││ │ │                                                ; - com.google.re2j.Machine::step@10 (line 281)
  0.19%    0.34%    │││ ↘ │  0x00007f75c123507f: add    $0x60,%rsp
  0.12%    0.18%    │││   │  0x00007f75c1235083: pop    %rbp
  0.17%    0.17%    │││   │  0x00007f75c1235084: test   %eax,0x17e6cf76(%rip)        # 0x00007f75d90a2000
                    │││   │                                                ;   {poll_return}
  0.05%    0.02%    │││   │  0x00007f75c123508a: retq   
  0.31%    0.30%    ↘↘↘   │  0x00007f75c123508b: mov    0x1c(%r10),%ecx    ;*getfield outInst
                          │                                                ; - com.google.re2j.Machine::step@189 (line 313)
  0.32%    0.28%          │  0x00007f75c123508f: mov    0x8(%r12,%rcx,8),%r10d  ; implicit exception: dispatches to 0x00007f75c123574d
  0.26%    0.21%          │  0x00007f75c1235094: lea    (%r12,%rcx,8),%r8
  0.00%    0.01%          │  0x00007f75c1235098: xor    %esi,%esi
  0.02%    0.01%          │  0x00007f75c123509a: movabs $0x7f75d1aaa000,%rdi
  0.00%    0.01%          │  0x00007f75c12350a4: mov    $0x1,%edx
  0.07%    0.10%          │  0x00007f75c12350a9: cmp    $0xf8019993,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                         ╭│  0x00007f75c12350b0: jne    0x00007f75c1235159  ;*invokevirtual add
                         ││                                                ; - com.google.re2j.Machine::step@202 (line 313)
  0.01%    0.02%         ││  0x00007f75c12350b6: mov    0x18(%r8),%ecx     ;*getfield pc
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.05%         ││  0x00007f75c12350ba: vmovq  %xmm0,%r10
  0.01%    0.00%         ││  0x00007f75c12350bf: mov    0x10(%r10),%rbp    ;*getfield pcsl
                         ││                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
                         ││                                                ; implicit exception: dispatches to 0x00007f75c123576d
  0.07%    0.07%         ││  0x00007f75c12350c3: cmp    $0x40,%ecx
                         ││  0x00007f75c12350c6: jg     0x00007f75c1235491  ;*if_icmpgt
                         ││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%    0.01%         ││  0x00007f75c12350cc: vmovd  %r11d,%xmm0
  0.03%    0.03%         ││  0x00007f75c12350d1: shl    %cl,%rdx           ;*lshl
                         ││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.21%    0.13%         ││  0x00007f75c12350d4: mov    %rbp,%r11
  0.02%    0.03%         ││  0x00007f75c12350d7: and    %rdx,%r11          ;*land
                         ││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%    0.00%         ││  0x00007f75c12350da: test   %r11,%r11
                         ││  0x00007f75c12350dd: jne    0x00007f75c12354d9  ;*ifeq
                         ││                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.10%    0.06%         ││  0x00007f75c12350e3: cmp    $0x40,%ecx
                         ││  0x00007f75c12350e6: jge    0x00007f75c123552d  ;*if_icmpge
                         ││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.04%         ││  0x00007f75c12350ec: mov    %r12b,0x18(%r10)   ;*putfield empty
                         ││                                                ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.04%         ││  0x00007f75c12350f0: mov    0x20(%r10),%r11d   ;*getfield denseThreadsInstructions
                         ││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.00%         ││  0x00007f75c12350f4: or     %rbp,%rdx
  0.05%    0.05%         ││  0x00007f75c12350f7: mov    %rdx,0x10(%r10)    ;*putfield pcsl
                         ││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.02%         ││  0x00007f75c12350fb: mov    0xc(%r10),%ebp     ;*getfield size
                         ││                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.02%         ││  0x00007f75c12350ff: mov    %ebp,%esi
           0.01%         ││  0x00007f75c1235101: inc    %esi
  0.08%    0.10%         ││  0x00007f75c1235103: mov    %esi,0xc(%r10)     ;*putfield size
                         ││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.02%         ││  0x00007f75c1235107: mov    0xc(%r12,%r11,8),%esi  ; implicit exception: dispatches to 0x00007f75c1235781
  0.03%    0.02%         ││  0x00007f75c123510c: cmp    %esi,%ebp
                         ││  0x00007f75c123510e: jae    0x00007f75c1235409
  0.04%    0.02%         ││  0x00007f75c1235114: mov    0x8(%r12,%r11,8),%esi
  0.06%    0.05%         ││  0x00007f75c1235119: cmp    $0xf8019808,%esi   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                         ││  0x00007f75c123511f: jne    0x00007f75c123544d  ;*aastore
                         ││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.02%         ││  0x00007f75c1235125: shl    $0x3,%r11          ;*getfield denseThreadsInstructions
                         ││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.01%         ││  0x00007f75c1235129: lea    0x10(%r11,%rbp,4),%rcx
  0.05%    0.01%         ││  0x00007f75c123512e: mov    %r8,%r11
  0.04%    0.07%         ││  0x00007f75c1235131: shr    $0x3,%r11
  0.04%    0.01%         ││  0x00007f75c1235135: mov    %r11d,(%rcx)
  0.14%    0.05%         ││  0x00007f75c1235138: mov    %rcx,%r11
  0.01%                  ││  0x00007f75c123513b: shr    $0x9,%r11
  0.04%    0.11%         ││  0x00007f75c123513f: mov    %r12b,(%rdi,%r11,1)  ;*synchronization entry
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.06%    0.09%         ││  0x00007f75c1235143: mov    0x78(%rsp),%r8d
  0.03%    0.03%         ││  0x00007f75c1235148: mov    0x80(%rsp),%edi
           0.00%         ││  0x00007f75c123514f: vmovd  %xmm0,%r11d
  0.05%    0.04%         │╰  0x00007f75c1235154: jmpq   0x00007f75c1235052
                         ↘   0x00007f75c1235159: cmp    $0xf801990d,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                             0x00007f75c1235160: jne    0x00007f75c12355b9  ;*invokevirtual add
                                                                           ; - com.google.re2j.Machine::step@202 (line 313)
                             0x00007f75c1235166: mov    0x18(%r8),%ecx     ;*getfield pc
                                                                           ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                                                                           ; - com.google.re2j.Machine::step@202 (line 313)
                             0x00007f75c123516a: vmovq  %xmm0,%r10
                             0x00007f75c123516f: mov    0x10(%r10),%rbp    ;*getfield pcsl
                                                                           ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                                                                           ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
....................................................................................................
 32.36%   38.43%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 562 (873 bytes) 

                                                                                  ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                                                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                                                                                  ; - com.google.re2j.Machine::match@121 (line 205)
                                    0x00007f75c1247556: mov    %ebx,%r10d
                                    0x00007f75c1247559: add    $0xffffff9f,%r10d
                                    0x00007f75c124755d: cmp    $0x1a,%r10d
                                    0x00007f75c1247561: jae    0x00007f75c12479a0  ;*iconst_1
                                                                                  ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                                                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                                                                                  ; - com.google.re2j.Machine::match@121 (line 205)
  0.00%                             0x00007f75c1247567: or     $0x10,%r9d         ;*iload_2
                                                                                  ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                                  ; - com.google.re2j.Machine::match@121 (line 205)
                                    0x00007f75c124756b: mov    %r11d,0x30(%rsp)
  0.02%                             0x00007f75c1247570: mov    %ecx,0x2c(%rsp)
                                    0x00007f75c1247574: movzbl 0x11(%r13),%edi    ;*getfield captures
                                                                                  ; - com.google.re2j.Machine::match@283 (line 240)
                                    0x00007f75c1247579: mov    0x44(%rsp),%r11d
  0.00%    0.00%                    0x00007f75c124757e: and    $0x4,%r11d         ;*iand
                                                                                  ; - com.google.re2j.Machine::match@147 (line 212)
                                    0x00007f75c1247582: mov    %r11d,0x14(%rsp)
                                    0x00007f75c1247587: mov    %rax,%r10
           0.00%                    0x00007f75c124758a: shl    $0x3,%r10          ;*getfield q1
                                                                                  ; - com.google.re2j.Machine::match@53 (line 192)
                                    0x00007f75c124758e: mov    %r10,0x58(%rsp)
                                    0x00007f75c1247593: mov    %ebx,0x34(%rsp)
                                    0x00007f75c1247597: xor    %eax,%eax
                                    0x00007f75c1247599: xor    %r10d,%r10d
                                    0x00007f75c124759c: mov    %r10d,0x1c(%rsp)
  0.00%    0.00%  ╭                 0x00007f75c12475a1: jmpq   0x00007f75c124773d
  0.08%    0.06%  │   ↗             0x00007f75c12475a6: mov    0x14(%rsp),%ecx
  0.00%           │╭  │             0x00007f75c12475aa: jmpq   0x00007f75c1247781
                  ││  │             0x00007f75c12475af: nop
  0.40%    0.22%  ││  │     ↗       0x00007f75c12475b0: or     $0x20,%r11d        ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                  ││  │     │                                                     ; - com.google.re2j.Machine::match@322 (line 245)
  0.03%    0.03%  ││  │     │       0x00007f75c12475b4: mov    %r11d,0x3c(%rsp)   ;*iload_2
                  ││  │     │                                                     ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                  ││  │     │                                                     ; - com.google.re2j.Machine::match@322 (line 245)
  0.24%    0.29%  ││  │     │↗      0x00007f75c12475b9: mov    0x48(%rsp),%r11
  0.04%    0.07%  ││  │     ││      0x00007f75c12475be: mov    0x10(%r11),%r10d   ;*getfield end
                  ││  │     ││                                                    ; - com.google.re2j.MachineInput$UTF16Input::endPos@1 (line 221)
                  ││  │     ││                                                    ; - com.google.re2j.Machine::match@344 (line 246)
  0.47%    0.64%  ││  │     ││      0x00007f75c12475c2: mov    0x1c(%rsp),%ecx
  0.04%    0.06%  ││  │     ││      0x00007f75c12475c6: cmp    %r10d,%ecx
                  ││╭ │     ││      0x00007f75c12475c9: je     0x00007f75c12478b8  ;*if_icmpne
                  │││ │     ││                                                    ; - com.google.re2j.Machine::match@347 (line 246)
  0.22%    0.27%  │││ │     ││      0x00007f75c12475cf: xor    %r10d,%r10d        ;*invokespecial step
                  │││ │     ││                                                    ; - com.google.re2j.Machine::match@355 (line 246)
  0.06%    0.06%  │││ │     ││   ↗  0x00007f75c12475d2: mov    0x1c(%rsp),%ebp
  0.34%    0.33%  │││ │     ││   │  0x00007f75c12475d6: add    0x28(%rsp),%ecx    ;*iadd
                  │││ │     ││   │                                                ; - com.google.re2j.Machine::match@336 (line 246)
  0.04%    0.06%  │││ │     ││   │  0x00007f75c12475da: mov    %ecx,0x1c(%rsp)
  0.21%    0.24%  │││ │     ││   │  0x00007f75c12475de: mov    0x50(%rsp),%rsi
  0.05%    0.04%  │││ │     ││   │  0x00007f75c12475e3: mov    0x20(%rsp),%rdx
  0.34%    0.35%  │││ │     ││   │  0x00007f75c12475e8: mov    0x58(%rsp),%rcx
  0.02%    0.02%  │││ │     ││   │  0x00007f75c12475ed: mov    %ebp,%r8d
  0.21%    0.18%  │││ │     ││   │  0x00007f75c12475f0: mov    0x1c(%rsp),%r9d
  0.12%    0.06%  │││ │     ││   │  0x00007f75c12475f5: mov    0x34(%rsp),%edi
  0.33%    0.32%  │││ │     ││   │  0x00007f75c12475f9: mov    0x3c(%rsp),%ebx
  0.05%    0.07%  │││ │     ││   │  0x00007f75c12475fd: mov    %ebx,(%rsp)
  0.23%    0.15%  │││ │     ││   │  0x00007f75c1247600: mov    0x38(%rsp),%r11d
  0.07%    0.03%  │││ │     ││   │  0x00007f75c1247605: mov    %r11d,0x8(%rsp)
  0.29%    0.40%  │││ │     ││   │  0x00007f75c124760a: mov    %r10d,0x10(%rsp)
  0.02%    0.04%  │││ │     ││   │  0x00007f75c124760f: callq  0x00007f75c1046020  ; OopMap{[24]=NarrowOop [32]=Oop [72]=Oop [80]=Oop [88]=Oop off=660}
                  │││ │     ││   │                                                ;*invokespecial step
                  │││ │     ││   │                                                ; - com.google.re2j.Machine::match@355 (line 246)
                  │││ │     ││   │                                                ;   {optimized virtual_call}
  0.29%    0.37%  │││ │     ││   │  0x00007f75c1247614: mov    0x50(%rsp),%r8
  0.34%    0.25%  │││ │     ││   │  0x00007f75c1247619: movzbl 0x10(%r8),%eax     ;*getfield matched
                  │││ │     ││   │                                                ; - com.google.re2j.Machine::match@374 (line 250)
  0.05%    0.09%  │││ │     ││   │  0x00007f75c124761e: movzbl 0x11(%r8),%edi     ;*getfield captures
                  │││ │     ││   │                                                ; - com.google.re2j.Machine::match@367 (line 250)
  0.25%    0.36%  │││ │     ││   │  0x00007f75c1247623: mov    0x28(%rsp),%r10d
  0.14%    0.10%  │││ │     ││   │  0x00007f75c1247628: test   %r10d,%r10d
                  │││╭│     ││   │  0x00007f75c124762b: je     0x00007f75c12478c3  ;*ifne
                  │││││     ││   │                                                ; - com.google.re2j.Machine::match@360 (line 247)
  0.16%    0.13%  │││││     ││   │  0x00007f75c1247631: test   %edi,%edi
                  │││││     ││   │  0x00007f75c1247633: jne    0x00007f75c1247b89  ;*ifne
                  │││││     ││   │                                                ; - com.google.re2j.Machine::match@370 (line 250)
  0.05%    0.05%  │││││     ││   │  0x00007f75c1247639: test   %eax,%eax
                  │││││     ││   │  0x00007f75c124763b: jne    0x00007f75c1247ca5  ;*ifeq
                  │││││     ││   │                                                ; - com.google.re2j.Machine::match@377 (line 250)
  0.32%    0.34%  │││││     ││   │  0x00007f75c1247641: mov    0x2c(%rsp),%r9d
  0.15%    0.21%  │││││     ││   │  0x00007f75c1247646: cmp    $0xffffffff,%r9d
                  │││││     ││   │  0x00007f75c124764a: je     0x00007f75c1247902  ;*if_icmpeq
                  │││││     ││   │                                                ; - com.google.re2j.Machine::match@399 (line 258)
  0.13%    0.11%  │││││     ││   │  0x00007f75c1247650: mov    0x48(%rsp),%rdx
  0.02%    0.04%  │││││     ││   │  0x00007f75c1247655: mov    0x10(%rdx),%r11d   ;*getfield end
                  │││││     ││   │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                  │││││     ││   │                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.40%    0.42%  │││││     ││   │  0x00007f75c1247659: mov    0x30(%rsp),%ecx
  0.10%    0.16%  │││││     ││   │  0x00007f75c124765d: add    0x1c(%rsp),%ecx
  0.16%    0.11%  │││││     ││   │  0x00007f75c1247661: add    0xc(%rdx),%ecx     ;*iadd
                  │││││     ││   │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                  │││││     ││   │                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.53%    0.74%  │││││     ││   │  0x00007f75c1247664: cmp    %r11d,%ecx
                  │││││     ││   │  0x00007f75c1247667: jge    0x00007f75c1247917  ;*if_icmpge
                  │││││     ││   │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                  │││││     ││   │                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.38%    0.41%  │││││     ││   │  0x00007f75c124766d: mov    0x14(%rdx),%ebp    ;*getfield str
                  │││││     ││   │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                  │││││     ││   │                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.06%    0.05%  │││││     ││   │  0x00007f75c1247670: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f75c1248421
  1.63%    1.85%  │││││     ││   │  0x00007f75c1247675: cmp    $0xf80002da,%r11d  ;   {metadata(&apos;java/lang/String&apos;)}
                  │││││     ││   │  0x00007f75c124767c: jne    0x00007f75c1247a7d
  0.62%    0.58%  │││││     ││   │  0x00007f75c1247682: lea    (%r12,%rbp,8),%rbx  ;*invokeinterface charAt
                  │││││     ││   │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││││     ││   │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││││     ││   │                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.00%    0.00%  │││││     ││   │  0x00007f75c1247686: test   %ecx,%ecx
                  │││││     ││   │  0x00007f75c1247688: jl     0x00007f75c1247bd9  ;*iflt
                  │││││     ││   │                                                ; - java.lang.String::charAt@1 (line 657)
                  │││││     ││   │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││││     ││   │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││││     ││   │                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.01%    0.02%  │││││     ││   │  0x00007f75c124768e: mov    %ecx,%r13d
  0.03%    0.01%  │││││     ││   │  0x00007f75c1247691: mov    %r8,%r9
  0.57%    0.59%  │││││     ││   │  0x00007f75c1247694: mov    0xc(%rbx),%r11d    ;*getfield value
                  │││││     ││   │                                                ; - java.lang.String::charAt@6 (line 657)
                  │││││     ││   │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││││     ││   │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││││     ││   │                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.00%    0.01%  │││││     ││   │  0x00007f75c1247698: mov    0xc(%r12,%r11,8),%ebp  ;*arraylength
                  │││││     ││   │                                                ; - java.lang.String::charAt@9 (line 657)
                  │││││     ││   │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││││     ││   │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││││     ││   │                                                ; - com.google.re2j.Machine::match@407 (line 259)
                  │││││     ││   │                                                ; implicit exception: dispatches to 0x00007f75c1248435
  2.30%    3.14%  │││││     ││   │  0x00007f75c124769d: cmp    %ebp,%r13d
                  │││││     ││   │  0x00007f75c12476a0: jge    0x00007f75c1247cf5  ;*if_icmplt
                  │││││     ││   │                                                ; - java.lang.String::charAt@10 (line 657)
                  │││││     ││   │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││││     ││   │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││││     ││   │                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.75%    0.83%  │││││     ││   │  0x00007f75c12476a6: cmp    %ebp,%r13d
                  │││││     ││   │  0x00007f75c12476a9: jae    0x00007f75c1247a01
  0.13%    0.11%  │││││     ││   │  0x00007f75c12476af: lea    (%r12,%r11,8),%r10
  0.00%           │││││     ││   │  0x00007f75c12476b3: mov    %r13d,%r8d
                  │││││     ││   │  0x00007f75c12476b6: movzwl 0x10(%r10,%r8,2),%r11d  ;*caload
                  │││││     ││   │                                                ; - java.lang.String::charAt@27 (line 660)
                  │││││     ││   │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││││     ││   │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││││     ││   │                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.40%    0.53%  │││││     ││   │  0x00007f75c12476bc: cmp    $0xd800,%r11d
                  │││││     ││   │  0x00007f75c12476c3: jge    0x00007f75c1247d5d  ;*if_icmplt
                  │││││     ││   │                                                ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                  │││││     ││   │                                                ; - java.lang.Character::codePointAt@9 (line 4867)
                  │││││     ││   │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││││     ││   │                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.16%    0.21%  │││││     ││   │  0x00007f75c12476c9: shl    $0x3,%r11d         ;*ishl
                  │││││     ││   │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                  │││││     ││   │                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.06%    0.07%  │││││     ││   │  0x00007f75c12476cd: mov    %r11d,%r10d
                  │││││     ││   │  0x00007f75c12476d0: or     $0x1,%r10d
  0.62%    0.80%  │││││     ││   │  0x00007f75c12476d4: and    $0x7,%r11d
  0.03%    0.05%  │││││     ││   │  0x00007f75c12476d8: sar    $0x3,%r10d         ;*ishr
                  │││││     ││   │                                                ; - com.google.re2j.Machine::match@415 (line 260)
  0.51%    0.54%  │││││     ││   │  0x00007f75c12476dc: or     $0x1,%r11d         ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                  │││││     ││   │                                                ; - com.google.re2j.Machine::match@407 (line 259)
                  │││││     ││   │  0x00007f75c12476e0: mov    %r9,%r8
  0.04%    0.03%  │││││     ││   │  0x00007f75c12476e3: mov    0x2c(%rsp),%r9d    ;*aload
                  │││││     ││   │                                                ; - com.google.re2j.Machine::match@425 (line 263)
  0.03%    0.02%  │││││     ││   │  0x00007f75c12476e8: mov    %r8,%r13
  0.51%    0.54%  │││││     ││   │  0x00007f75c12476eb: mov    %rdx,0x48(%rsp)
  0.01%    0.01%  │││││     ││   │  0x00007f75c12476f0: mov    %r9d,0x34(%rsp)    ; OopMap{r8=Oop rdx=Oop r13=Oop [32]=Oop [72]=Oop [88]=Oop off=885}
                  │││││     ││   │                                                ;*goto
                  │││││     ││   │                                                ; - com.google.re2j.Machine::match@437 (line 266)
  0.04%    0.01%  │││││     ││   │  0x00007f75c12476f5: test   %eax,0x17e5a905(%rip)        # 0x00007f75d90a2000
                  │││││     ││   │                                                ;*goto
                  │││││     ││   │                                                ; - com.google.re2j.Machine::match@437 (line 266)
                  │││││     ││   │                                                ;   {poll}
  0.02%    0.03%  │││││     ││   │  0x00007f75c12476fb: mov    0x28(%r8),%ebx     ;*getfield matchcap
                  │││││     ││   │                                                ; - com.google.re2j.Machine::match@307 (line 243)
  0.53%    0.44%  │││││     ││   │  0x00007f75c12476ff: mov    0x14(%r8),%r9d     ;*getfield re2
                  │││││     ││   │                                                ; - com.google.re2j.Machine::match@169 (line 220)
  0.01%    0.01%  │││││     ││   │  0x00007f75c1247703: vmovd  %r9d,%xmm3
  0.02%    0.03%  │││││     ││   │  0x00007f75c1247708: mov    0x58(%rsp),%r8
  0.05%    0.04%  │││││     ││   │  0x00007f75c124770d: shr    $0x3,%r8
  0.51%    0.40%  │││││     ││   │  0x00007f75c1247711: mov    %r8d,0x18(%rsp)
  0.00%           │││││     ││   │  0x00007f75c1247716: mov    0x3c(%rsp),%r9d
  0.04%    0.00%  │││││     ││   │  0x00007f75c124771b: mov    0x20(%rsp),%r8
  0.02%    0.03%  │││││     ││   │  0x00007f75c1247720: mov    %r8,0x58(%rsp)
  0.58%    0.34%  │││││     ││   │  0x00007f75c1247725: mov    0x30(%rsp),%r8d
  0.01%    0.01%  │││││     ││   │  0x00007f75c124772a: mov    %r8d,0x28(%rsp)
  0.05%    0.00%  │││││     ││   │  0x00007f75c124772f: mov    %r11d,0x30(%rsp)
  0.02%    0.01%  │││││     ││   │  0x00007f75c1247734: mov    %r10d,0x2c(%rsp)
  0.53%    0.26%  │││││     ││   │  0x00007f75c1247739: vmovd  %ebx,%xmm1         ;*aload
                  │││││     ││   │                                                ; - com.google.re2j.Machine::match@136 (line 211)
           0.01%  ↘││││     ││   │  0x00007f75c124773d: mov    0x18(%rsp),%r10d
  0.05%    0.01%   ││││     ││   │  0x00007f75c1247742: movzbl 0x18(%r12,%r10,8),%r11d  ; implicit exception: dispatches to 0x00007f75c12483ca
  0.04%    0.02%   ││││     ││   │  0x00007f75c1247748: test   %r11d,%r11d
                   │││╰     ││   │  0x00007f75c124774b: je     0x00007f75c12475a6  ;*ifeq
                   │││      ││   │                                                ; - com.google.re2j.Machine::match@141 (line 211)
  0.42%    0.17%   │││      ││   │  0x00007f75c1247751: mov    0x14(%rsp),%ecx
  0.00%            │││      ││   │  0x00007f75c1247755: test   %ecx,%ecx
                   │││      ││   │  0x00007f75c1247757: jne    0x00007f75c1247e01  ;*ifeq
                   │││      ││   │                                                ; - com.google.re2j.Machine::match@148 (line 212)
  0.03%    0.01%   │││      ││   │  0x00007f75c124775d: test   %eax,%eax
                   │││      ││   │  0x00007f75c124775f: jne    0x00007f75c1247e59  ;*ifeq
                   │││      ││   │                                                ; - com.google.re2j.Machine::match@162 (line 216)
  0.01%    0.01%   │││      ││   │  0x00007f75c1247765: vmovd  %xmm3,%r10d
  0.36%    0.20%   │││      ││   │  0x00007f75c124776a: mov    0x24(%r12,%r10,8),%r11d  ;*getfield prefix
                   │││      ││   │                                                ; - com.google.re2j.Machine::match@172 (line 220)
                   │││      ││   │                                                ; implicit exception: dispatches to 0x00007f75c1248445
                   │││      ││   │  0x00007f75c124776f: mov    0xc(%r12,%r11,8),%r10d  ;*getfield value
                   │││      ││   │                                                ; - java.lang.String::isEmpty@1 (line 635)
                   │││      ││   │                                                ; - com.google.re2j.Machine::match@175 (line 220)
                   │││      ││   │                                                ; implicit exception: dispatches to 0x00007f75c1248455
  0.02%    0.03%   │││      ││   │  0x00007f75c1247774: mov    0xc(%r12,%r10,8),%ebp  ;*arraylength
                   │││      ││   │                                                ; - java.lang.String::isEmpty@4 (line 635)
                   │││      ││   │                                                ; - com.google.re2j.Machine::match@175 (line 220)
                   │││      ││   │                                                ; implicit exception: dispatches to 0x00007f75c1248465
  0.04%    0.03%   │││      ││   │  0x00007f75c1247779: test   %ebp,%ebp
                   │││      ││   │  0x00007f75c124777b: jne    0x00007f75c1247dd1  ;*aload_0
                   │││      ││   │                                                ; - com.google.re2j.Machine::match@267 (line 237)
  0.51%    0.45%   ↘││      ││   │  0x00007f75c1247781: test   %eax,%eax
                    ││      ││   │  0x00007f75c1247783: jne    0x00007f75c1247ad5  ;*ifne
                    ││      ││   │                                                ; - com.google.re2j.Machine::match@271 (line 237)
  0.00%    0.00%    ││      ││   │  0x00007f75c1247789: mov    0x1c(%rsp),%r10d
  0.04%    0.02%    ││      ││   │  0x00007f75c124778e: test   %r10d,%r10d
                    ││ ╭    ││   │  0x00007f75c1247791: je     0x00007f75c12478ae  ;*ifeq
                    ││ │    ││   │                                                ; - com.google.re2j.Machine::match@275 (line 237)
  0.01%             ││ │    ││   │  0x00007f75c1247797: mov    0x38(%rsp),%r8d
  0.60%    0.44%    ││ │    ││   │  0x00007f75c124779c: test   %r8d,%r8d
                    ││ │    ││   │  0x00007f75c124779f: jne    0x00007f75c1247b29  ;*aload_0
                    ││ │    ││   │                                                ; - com.google.re2j.Machine::match@282 (line 240)
                    ││ │    ││  ↗│  0x00007f75c12477a5: test   %edi,%edi
                    ││ │    ││  ││  0x00007f75c12477a7: jne    0x00007f75c1247c4d  ;*ifeq
                    ││ │    ││  ││                                                ; - com.google.re2j.Machine::match@286 (line 240)
  0.04%    0.01%    ││ │    ││  ││  0x00007f75c12477ad: mov    0x18(%r13),%ebx    ;*getfield prog
                    ││ │    ││  ││                                                ; - com.google.re2j.Machine::match@297 (line 243)
  0.01%    0.00%    ││ │    ││  ││  0x00007f75c12477b1: mov    0x1c(%r12,%rbx,8),%ebp  ;*getfield startInst
                    ││ │    ││  ││                                                ; - com.google.re2j.Machine::match@300 (line 243)
                    ││ │    ││  ││                                                ; implicit exception: dispatches to 0x00007f75c12483d9
  1.62%    0.59%    ││ │    ││  ││  0x00007f75c12477b6: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f75c12483e9
  0.92%    0.95%    ││ │    ││  ││  0x00007f75c12477bb: cmp    $0xf8019a53,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$Alt5Inst&apos;)}
                    ││ │    ││  ││  0x00007f75c12477c2: jne    0x00007f75c12479c3  ;*invokevirtual add
                    ││ │    ││  ││                                                ; - com.google.re2j.Machine::match@314 (line 243)
  0.27%    0.20%    ││ │    ││  ││  0x00007f75c12477c8: mov    %ecx,0x14(%rsp)
  0.01%             ││ │    ││  ││  0x00007f75c12477cc: mov    %r8d,0x38(%rsp)
  0.39%    0.04%    ││ │    ││  ││  0x00007f75c12477d1: mov    %r13,0x50(%rsp)    ;*ifeq
                    ││ │    ││  ││                                                ; - com.google.re2j.Machine::match@286 (line 240)
                    ││ │    ││  ││  0x00007f75c12477d6: lea    (%r12,%rbp,8),%rsi  ;*invokevirtual add
                    ││ │    ││  ││                                                ; - com.google.re2j.Machine::match@314 (line 243)
  0.24%    0.17%    ││ │    ││  ││  0x00007f75c12477da: mov    0x18(%rsp),%r11d
           0.00%    ││ │    ││  ││  0x00007f75c12477df: lea    (%r12,%r11,8),%r10  ;*aload
                    ││ │    ││  ││                                                ; - com.google.re2j.Machine::match@136 (line 211)
  0.31%    0.03%    ││ │    ││  ││  0x00007f75c12477e3: mov    %r10,0x20(%rsp)
                    ││ │    ││  ││  0x00007f75c12477e8: vmovd  %xmm1,%r11d
  0.28%    0.22%    ││ │    ││  ││  0x00007f75c12477ed: mov    %r11,%r8
                    ││ │    ││  ││  0x00007f75c12477f0: shl    $0x3,%r8           ;*getfield matchcap
                    ││ │    ││  ││                                                ; - com.google.re2j.Machine::match@307 (line 243)
  0.38%    0.07%    ││ │    ││  ││  0x00007f75c12477f4: mov    %r10,%rdx
           0.01%    ││ │    ││  ││  0x00007f75c12477f7: mov    0x1c(%rsp),%ecx
  0.20%    0.40%    ││ │    ││  ││  0x00007f75c12477fb: xor    %edi,%edi
  0.00%    0.00%    ││ │    ││  ││  0x00007f75c12477fd: mov    %r13,(%rsp)
  0.41%    0.12%    ││ │    ││  ││  0x00007f75c1247801: xchg   %ax,%ax
                    ││ │    ││  ││  0x00007f75c1247803: callq  0x00007f75c1046020  ; OopMap{[24]=NarrowOop [32]=Oop [72]=Oop [80]=Oop [88]=Oop off=1160}
                    ││ │    ││  ││                                                ;*invokevirtual add
                    ││ │    ││  ││                                                ; - com.google.re2j.Machine::match@314 (line 243)
                    ││ │    ││  ││                                                ;   {optimized virtual_call}
  0.02%    0.04%    ││ │    ││  ││  0x00007f75c1247808: mov    0x34(%rsp),%ebx
  0.10%    0.16%    ││ │    ││  ││  0x00007f75c124780c: test   %ebx,%ebx
                    ││ │╭   ││  ││  0x00007f75c124780e: jl     0x00007f75c124789a  ;*ifge
                    ││ ││   ││  ││                                                ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                    ││ ││   ││  ││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.45%    0.37%    ││ ││   ││  ││  0x00007f75c1247814: xor    %r11d,%r11d        ;*iload_0
                    ││ ││   ││  ││                                                ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                    ││ ││   ││  ││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.04%    0.03%    ││ ││   ││↗ ││  0x00007f75c1247817: cmp    $0xa,%ebx
                    ││ ││   │││ ││  0x00007f75c124781a: je     0x00007f75c1247925  ;*iload_1
                    ││ ││   │││ ││                                                ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                    ││ ││   │││ ││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.08%    0.13%    ││ ││   │││ ││  0x00007f75c1247820: mov    0x2c(%rsp),%r8d
  0.02%    0.03%    ││ ││   │││ ││  0x00007f75c1247825: test   %r8d,%r8d
                    ││ ││╭  │││ ││  0x00007f75c1247828: jl     0x00007f75c12478a5  ;*iload_1
                    ││ │││  │││ ││                                                ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                    ││ │││  │││ ││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.50%    0.46%    ││ │││  │││↗││  0x00007f75c124782a: cmp    $0xa,%r8d
                    ││ │││  ││││││  0x00007f75c124782e: je     0x00007f75c124792e  ;*iload_0
                    ││ │││  ││││││                                                ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                    ││ │││  ││││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.02%    0.01%    ││ │││  ││││││  0x00007f75c1247834: mov    0x34(%rsp),%r10d
  0.10%    0.11%    ││ │││  ││││││  0x00007f75c1247839: add    $0xffffffbf,%r10d
  0.03%    0.03%    ││ │││  ││││││  0x00007f75c124783d: cmp    $0x1a,%r10d
                    ││ │││╭ ││││││  0x00007f75c1247841: jb     0x00007f75c1247856  ;*if_icmple
                    ││ ││││ ││││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                    ││ ││││ ││││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    ││ ││││ ││││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.40%    0.34%    ││ ││││ ││││││  0x00007f75c1247843: mov    0x34(%rsp),%r9d
  0.06%    0.03%    ││ ││││ ││││││  0x00007f75c1247848: add    $0xffffff9f,%r9d
  0.11%    0.11%    ││ ││││ ││││││  0x00007f75c124784c: cmp    $0x1a,%r9d
                    ││ ││││ ││││││  0x00007f75c1247850: jae    0x00007f75c1247937  ;*iconst_1
                    ││ ││││ ││││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                    ││ ││││ ││││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    ││ ││││ ││││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.03%    0.04%    ││ │││↘ ││││││  0x00007f75c1247856: mov    $0x1,%ebp          ;*ireturn
                    ││ │││  ││││││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                    ││ │││  ││││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    ││ │││  ││││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.34%    0.40%    ││ │││  ││││││  0x00007f75c124785b: mov    0x2c(%rsp),%r10d
  0.06%    0.04%    ││ │││  ││││││  0x00007f75c1247860: add    $0xffffffbf,%r10d
  0.09%    0.10%    ││ │││  ││││││  0x00007f75c1247864: cmp    $0x1a,%r10d
                    ││ │││ ╭││││││  0x00007f75c1247868: jb     0x00007f75c124787d  ;*if_icmple
                    ││ │││ │││││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                    ││ │││ │││││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    ││ │││ │││││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.10%    0.08%    ││ │││ │││││││  0x00007f75c124786a: mov    0x2c(%rsp),%r9d
  0.37%    0.46%    ││ │││ │││││││  0x00007f75c124786f: add    $0xffffff9f,%r9d
  0.03%    0.10%    ││ │││ │││││││  0x00007f75c1247873: cmp    $0x1a,%r9d
                    ││ │││ │││││││  0x00007f75c1247877: jae    0x00007f75c124795a  ;*iconst_1
                    ││ │││ │││││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                    ││ │││ │││││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    ││ │││ │││││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.12%    0.06%    ││ │││ ↘││││││  0x00007f75c124787d: mov    $0x1,%r10d         ;*ireturn
                    ││ │││  ││││││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                    ││ │││  ││││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    ││ │││  ││││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.18%    0.17%    ││ │││  ││││││  0x00007f75c1247883: cmp    %r10d,%ebp
                    ││ │││  ╰│││││  0x00007f75c1247886: je     0x00007f75c12475b0  ;*if_icmpeq
                    ││ │││   │││││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                    ││ │││   │││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.03%    0.03%    ││ │││   │││││  0x00007f75c124788c: or     $0x10,%r11d        ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                    ││ │││   │││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.01%    0.03%    ││ │││   │││││  0x00007f75c1247890: mov    %r11d,0x3c(%rsp)
  0.04%    0.08%    ││ │││   ╰││││  0x00007f75c1247895: jmpq   0x00007f75c12475b9
  0.01%             ││ │↘│    ││││  0x00007f75c124789a: mov    $0x5,%r11d
                    ││ │ │    ╰│││  0x00007f75c12478a0: jmpq   0x00007f75c1247817
  0.01%    0.01%    ││ │ ↘     │││  0x00007f75c12478a5: or     $0xa,%r11d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@27 (line 180)
                    ││ │       │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
                    ││ │       ╰││  0x00007f75c12478a9: jmpq   0x00007f75c124782a
                    ││ ↘        ││  0x00007f75c12478ae: mov    0x38(%rsp),%r8d
  0.01%    0.01%    ││          ╰│  0x00007f75c12478b3: jmpq   0x00007f75c12477a5
  0.01%    0.00%    ↘│           │  0x00007f75c12478b8: mov    $0x1,%r10d
           0.01%     │           ╰  0x00007f75c12478be: jmpq   0x00007f75c12475d2
                     ↘              0x00007f75c12478c3: test   %edi,%edi
                                    0x00007f75c12478c5: jne    0x00007f75c124822d  ;*ifeq
                                                                                  ; - com.google.re2j.Machine::freeQueue@4 (line 150)
                                                                                  ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                                                                                  ; - com.google.re2j.Machine::match@443 (line 267)
                                    0x00007f75c12478cb: mov    0x58(%rsp),%r11
           0.00%                    0x00007f75c12478d0: movzbl 0x18(%r11),%r10d   ; implicit exception: dispatches to 0x00007f75c12484cd
                                    0x00007f75c12478d5: test   %r10d,%r10d
                                    0x00007f75c12478d8: jne    0x00007f75c12478f3  ;*ifeq
                                                                                  ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                                                                                  ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                                                                                  ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                                                                                  ; - com.google.re2j.Machine::match@443 (line 267)
                                    0x00007f75c12478da: movb   $0x1,0x18(%r11)    ;*putfield empty
                                                                                  ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                                                                                  ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                                                                                  ; - com.google.re2j.Machine::freeQueue@3 (line 146)
....................................................................................................
 29.00%   27.34%  <total for region 3>

....[Hottest Regions]...............................................................................
 33.50%   30.18%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 535 (852 bytes) 
 32.36%   38.43%         C2, level 4  com.google.re2j.Machine::step, version 529 (532 bytes) 
 29.00%   27.34%         C2, level 4  com.google.re2j.Machine::match, version 562 (873 bytes) 
  1.08%    1.08%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.61%    0.53%         C2, level 4  com.google.re2j.Machine::match, version 562 (128 bytes) 
  0.24%    0.08%         C2, level 4  com.google.re2j.RE2::match, version 586 (153 bytes) 
  0.12%    0.14%         C2, level 4  com.google.re2j.RE2::match, version 586 (33 bytes) 
  0.10%    0.07%         C2, level 4  com.google.re2j.Machine::match, version 562 (134 bytes) 
  0.10%    0.07%         C2, level 4  com.google.re2j.RE2::match, version 586 (0 bytes) 
  0.10%    0.00%         C2, level 4  com.google.re2j.RE2::match, version 586 (162 bytes) 
  0.10%    0.03%         C2, level 4  com.google.re2j.RE2::match, version 586 (0 bytes) 
  0.08%            [kernel.kallsyms]  [unknown] (6 bytes) 
  0.07%    0.07%         C2, level 4  java.util.Collections::shuffle, version 591 (73 bytes) 
  0.06%    0.01%         C2, level 4  com.google.re2j.Machine::match, version 562 (75 bytes) 
  0.06%    0.05%         C2, level 4  com.google.re2j.RE2::match, version 586 (8 bytes) 
  0.06%            [kernel.kallsyms]  [unknown] (37 bytes) 
  0.04%    0.03%         C2, level 4  com.google.re2j.RE2::match, version 586 (111 bytes) 
  0.04%                  C2, level 4  com.google.re2j.RE2::match, version 586 (27 bytes) 
  0.04%    0.00%         C2, level 4  java.util.Collections::shuffle, version 591 (81 bytes) 
  0.04%    0.01%              [vdso]  [unknown] (2 bytes) 
  2.18%    1.87%  <...other 429 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 33.50%   30.18%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 535 
 32.37%   38.45%         C2, level 4  com.google.re2j.Machine::step, version 529 
 29.82%   27.96%         C2, level 4  com.google.re2j.Machine::match, version 562 
  2.11%    1.95%   [kernel.kallsyms]  [unknown] 
  0.95%    0.40%         C2, level 4  com.google.re2j.RE2::match, version 586 
  0.19%    0.11%         C2, level 4  java.util.Collections::shuffle, version 591 
  0.12%    0.02%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 628 
  0.05%    0.02%      hsdis-amd64.so  [unknown] 
  0.04%    0.01%              [vdso]  [unknown] 
  0.04%    0.01%           libjvm.so  PSPromotionManager::drain_stacks_depth 
  0.04%    0.07%        libc-2.26.so  vfprintf 
  0.03%    0.04%        libc-2.26.so  _IO_fwrite 
  0.03%    0.04%           libjvm.so  RelocIterator::initialize 
  0.03%    0.04%           libjvm.so  fileStream::write 
  0.02%    0.01%           libjvm.so  xmlTextStream::write 
  0.02%                    libjvm.so  GenericTaskQueueSet<OverflowTaskQueue<StarTask, (MemoryType)1, 131072u>, (MemoryType)1>::steal_best_of_2 
  0.02%                 runtime stub  StubRoutines::jint_disjoint_arraycopy 
  0.02%    0.00%              [vdso]  __vdso_clock_gettime 
  0.02%    0.06%           libjvm.so  PSPromotionManager::copy_to_survivor_space<false> 
  0.02%                  interpreter  method entry point (kind = zerolocals)  
  0.53%    0.40%  <...other 83 warm methods...>
....................................................................................................
100.00%   99.79%  <totals>

....[Distribution by Source]........................................................................
 96.96%   97.15%         C2, level 4
  2.11%    1.95%   [kernel.kallsyms]
  0.48%    0.51%           libjvm.so
  0.19%    0.30%        libc-2.26.so
  0.07%    0.01%              [vdso]
  0.05%    0.02%      hsdis-amd64.so
  0.05%    0.03%  libpthread-2.26.so
  0.05%    0.01%         interpreter
  0.02%                 runtime stub
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                 Mode  Cnt      Score     Error  Units
Re2jRegex.testExp2       thrpt   20  22156.988 ± 663.071  ops/s
Re2jRegex.testExp2:·asm  thrpt             NaN              ---
