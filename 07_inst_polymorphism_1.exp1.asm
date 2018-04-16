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
# Warmup Iteration   1: 3355.618 ops/s
# Warmup Iteration   2: 13889.941 ops/s
# Warmup Iteration   3: 14379.911 ops/s
# Warmup Iteration   4: 14506.692 ops/s
# Warmup Iteration   5: 14511.005 ops/s
# Warmup Iteration   6: 14126.826 ops/s
# Warmup Iteration   7: 14328.095 ops/s
# Warmup Iteration   8: 14236.667 ops/s
# Warmup Iteration   9: 14089.413 ops/s
# Warmup Iteration  10: 14519.363 ops/s
# Warmup Iteration  11: 14610.003 ops/s
# Warmup Iteration  12: 14554.433 ops/s
# Warmup Iteration  13: 14549.700 ops/s
# Warmup Iteration  14: 14471.075 ops/s
# Warmup Iteration  15: 14781.028 ops/s
# Warmup Iteration  16: 14578.981 ops/s
# Warmup Iteration  17: 14669.047 ops/s
# Warmup Iteration  18: 14714.946 ops/s
# Warmup Iteration  19: 14683.490 ops/s
# Warmup Iteration  20: 14821.967 ops/s
Iteration   1: 14804.290 ops/s
Iteration   2: 14590.592 ops/s
Iteration   3: 14617.259 ops/s
Iteration   4: 14487.477 ops/s
Iteration   5: 14681.904 ops/s
Iteration   6: 14822.240 ops/s
Iteration   7: 14672.724 ops/s
Iteration   8: 14671.788 ops/s
Iteration   9: 14606.262 ops/s
Iteration  10: 14789.655 ops/s
Iteration  11: 14804.060 ops/s
Iteration  12: 14716.723 ops/s
Iteration  13: 14778.877 ops/s
Iteration  14: 14684.880 ops/s
Iteration  15: 14794.117 ops/s
Iteration  16: 14667.629 ops/s
Iteration  17: 14703.759 ops/s
Iteration  18: 14770.377 ops/s
Iteration  19: 14713.577 ops/s
Iteration  20: 14717.564 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jRegex.testExp1":
  14704.788 ±(99.9%) 74.794 ops/s [Average]
  (min, avg, max) = (14487.477, 14704.788, 14822.240), stdev = 86.133
  CI (99.9%): [14629.994, 14779.582] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jRegex.testExp1:·asm":
PrintAssembly processed: 217627 total address lines.
Perf output processed (skipped 23.791 seconds):
 Column 1: cycles (20710 events)
 Column 2: instructions (20679 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 547 (1150 bytes) 

                       # parm6:    [sp+0xc8]   = int
                       # parm7:    [sp+0xd0]   = boolean
                       0x00007f151524f900: mov    0x8(%rsi),%r10d
                       0x00007f151524f904: shl    $0x3,%r10
                       0x00007f151524f908: cmp    %r10,%rax
                       0x00007f151524f90b: jne    0x00007f1515045e20  ;   {runtime_call}
                       0x00007f151524f911: data16 xchg %ax,%ax
                       0x00007f151524f914: nopl   0x0(%rax,%rax,1)
                       0x00007f151524f91c: data16 data16 xchg %ax,%ax
                     [Verified Entry Point]
  0.23%    0.33%       0x00007f151524f920: mov    %eax,-0x14000(%rsp)
  0.10%    0.09%       0x00007f151524f927: push   %rbp
  0.26%    0.42%       0x00007f151524f928: sub    $0xb0,%rsp         ;*synchronization entry
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.08%    0.03%       0x00007f151524f92f: mov    %edi,0x18(%rsp)
  0.09%    0.06%       0x00007f151524f933: mov    %r9d,0x14(%rsp)
  0.34%    0.17%       0x00007f151524f938: mov    %r8d,0x10(%rsp)
  0.09%    0.07%       0x00007f151524f93d: vmovq  %rcx,%xmm0
  0.06%    0.00%       0x00007f151524f942: mov    %rdx,0x8(%rsp)
  0.03%    0.07%       0x00007f151524f947: mov    %rsi,0x20(%rsp)
  0.28%    0.11%       0x00007f151524f94c: mov    0x14(%rsi),%r10d   ;*getfield re2
                                                                     ; - com.google.re2j.Machine::step@1 (line 276)
  0.05%    0.03%       0x00007f151524f950: movzbl 0x18(%r12,%r10,8),%r10d  ;*getfield longest
                                                                     ; - com.google.re2j.Machine::step@4 (line 276)
                                                                     ; implicit exception: dispatches to 0x00007f15152515e9
  0.04%    0.03%       0x00007f151524f956: mov    %r10d,0x1c(%rsp)
  0.02%    0.00%       0x00007f151524f95b: mov    0xc(%rdx),%r11d    ; implicit exception: dispatches to 0x00007f15152515f9
  0.27%    0.07%       0x00007f151524f95f: test   %r11d,%r11d
                       0x00007f151524f962: jle    0x00007f1515250267  ;*if_icmpge
                                                                     ; - com.google.re2j.Machine::step@18 (line 277)
  0.03%    0.02%       0x00007f151524f968: mov    0x1c(%rsp),%r10d
  0.36%    0.15%       0x00007f151524f96d: test   %r10d,%r10d
                       0x00007f151524f970: jne    0x00007f15152509b1  ;*aload_1
                                                                     ; - com.google.re2j.Machine::step@21 (line 278)
  0.08%    0.05%       0x00007f151524f976: mov    $0x1,%ebx
  0.21%    0.04%       0x00007f151524f97b: xor    %r10d,%r10d
  0.03%    0.03%       0x00007f151524f97e: jmpq   0x00007f1515250193
  0.76%    0.93%       0x00007f151524f983: xor    %r8d,%r8d
  0.09%    0.09%       0x00007f151524f986: test   %r8d,%r8d
                  ╭    0x00007f151524f989: jne    0x00007f151524f995
           0.00%  │    0x00007f151524f98b: vmovq  %xmm0,%r11
  0.32%    0.29%  │    0x00007f151524f990: jmpq   0x00007f1515250122
  0.01%    0.03%  ↘    0x00007f151524f995: mov    0x1c(%r11),%ecx    ;*getfield outInst
                                                                     ; - com.google.re2j.Machine::step@195 (line 300)
  0.04%    0.01%       0x00007f151524f999: mov    0xc(%r12,%r14,8),%eax  ;*getfield cap
                                                                     ; - com.google.re2j.Machine::step@203 (line 300)
  0.00%                0x00007f151524f99e: mov    0x8(%r12,%rcx,8),%r11d  ; implicit exception: dispatches to 0x00007f151525154d
  1.61%    0.76%       0x00007f151524f9a3: lea    (%r12,%rcx,8),%r8
                       0x00007f151524f9a7: cmp    $0xf8019843,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$AltInst&apos;)}
                       0x00007f151524f9ae: jne    0x00007f15152502a3  ;*invokevirtual add
                                                                     ; - com.google.re2j.Machine::step@211 (line 300)
  0.36%    0.40%       0x00007f151524f9b4: mov    0x18(%r8),%ecx     ;*getfield pc
                                                                     ; - com.google.re2j.Inst$AltInst::add@2 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%    0.00%       0x00007f151524f9b8: vmovq  %xmm0,%r11
                       0x00007f151524f9bd: mov    0x10(%r11),%rsi    ;*getfield pcsl
                                                                     ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                                                                     ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                                                                     ; implicit exception: dispatches to 0x00007f1515251571
                       0x00007f151524f9c1: cmp    $0x40,%ecx
                       0x00007f151524f9c4: jg     0x00007f151525081d  ;*if_icmpgt
                                                                     ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                                                                     ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.40%    0.06%       0x00007f151524f9ca: mov    $0x1,%r9d
                       0x00007f151524f9d0: shl    %cl,%r9            ;*lshl
                                                                     ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                                                                     ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.85%    0.03%       0x00007f151524f9d3: mov    %rsi,%rbp
                       0x00007f151524f9d6: and    %r9,%rbp
  0.01%                0x00007f151524f9d9: test   %rbp,%rbp
                       0x00007f151524f9dc: jne    0x00007f1515250122  ;*ifeq
                                                                     ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                                                                     ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.27%    0.00%       0x00007f151524f9e2: cmp    $0x40,%ecx
                       0x00007f151524f9e5: jge    0x00007f1515250865  ;*if_icmpge
                                                                     ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                                                                     ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.12%    0.02%       0x00007f151524f9eb: mov    %r12b,0x18(%r11)   ;*putfield empty
                                                                     ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                                                                     ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                       0x00007f151524f9ef: mov    0x1c(%r8),%ebp     ;*getfield outInst
                                                                     ; - com.google.re2j.Inst$AltInst::add@23 (line 192)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                       0x00007f151524f9f3: or     %rsi,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                                                                     ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.33%    0.09%       0x00007f151524f9f6: mov    %r9,0x10(%r11)     ;*putfield pcsl
                                                                     ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                                                                     ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.17%    0.02%       0x00007f151524f9fa: mov    0x8(%r12,%rbp,8),%esi  ; implicit exception: dispatches to 0x00007f1515251585
  0.60%    0.01%       0x00007f151524f9ff: cmp    $0xf8019992,%esi   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                       0x00007f151524fa05: jne    0x00007f1515250509
  0.32%    0.03%       0x00007f151524fa0b: shl    $0x3,%rbp          ;*invokevirtual add
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                       0x00007f151524fa0f: mov    0x18(%rbp),%ecx    ;*getfield pc
                                                                     ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.38%    0.06%       0x00007f151524fa12: cmp    $0x40,%ecx
                       0x00007f151524fa15: jg     0x00007f15152508ad  ;*if_icmpgt
                                                                     ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.34%    0.13%       0x00007f151524fa1b: vmovq  %rbp,%xmm1
  0.05%    0.05%       0x00007f151524fa20: mov    %r9,%rsi
                       0x00007f151524fa23: vmovq  %r8,%xmm0
                       0x00007f151524fa28: mov    %edi,0x28(%rsp)
  0.37%    0.30%       0x00007f151524fa2c: mov    %r10d,0xcc(%rsp)
  0.03%    0.03%       0x00007f151524fa34: mov    %ebx,0xc4(%rsp)
                       0x00007f151524fa3b: mov    %r11,%r9
                       0x00007f151524fa3e: mov    $0x1,%r10d
  0.33%    0.38%       0x00007f151524fa44: shl    %cl,%r10           ;*lshl
                                                                     ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.05%    0.04%       0x00007f151524fa47: mov    %rsi,%r11
  0.27%    0.33%       0x00007f151524fa4a: and    %r10,%r11          ;*land
                                                                     ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.03%    0.01%       0x00007f151524fa4d: test   %r11,%r11
                       0x00007f151524fa50: jne    0x00007f15152508f1  ;*ifeq
                                                                     ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                       0x00007f151524fa56: cmp    $0x40,%ecx
                       0x00007f151524fa59: jge    0x00007f151525095d  ;*if_icmpge
                                                                     ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%                0x00007f151524fa5f: mov    %rsi,%rdi
  0.34%    0.17%       0x00007f151524fa62: or     %r10,%rdi          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.05%                0x00007f151524fa65: mov    %r9,%rcx
                       0x00007f151524fa68: mov    %rdi,0x10(%r9)     ;*putfield pcsl
                                                                     ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%                0x00007f151524fa6c: mov    %rdx,%r10
  0.28%    0.04%       0x00007f151524fa6f: mov    %rbp,%r11
  0.05%    0.00%       0x00007f151524fa72: shr    $0x3,%r11
                       0x00007f151524fa76: mov    %r11d,0x10(%r12,%r14,8)
  0.01%                0x00007f151524fa7b: shr    $0x9,%r10
  0.31%    0.08%       0x00007f151524fa7f: movabs $0x7f1525109000,%r11
  0.05%    0.01%       0x00007f151524fa89: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                                                                     ; - com.google.re2j.Inst$MatchInst::add@41 (line 101)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                       0x00007f151524fa8d: mov    0xc(%r12,%rax,8),%r8d  ;*arraylength
                                                                     ; - com.google.re2j.Inst$MatchInst::add@45 (line 103)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                                                                     ; implicit exception: dispatches to 0x00007f15152515a9
  0.00%                0x00007f151524fa92: test   %r8d,%r8d
                       0x00007f151524fa95: jle    0x00007f151525072d  ;*ifle
                                                                     ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.28%    0.16%       0x00007f151524fa9b: mov    %r8d,0x38(%rsp)
  0.05%    0.03%       0x00007f151524faa0: mov    %eax,0x2c(%rsp)
           0.00%       0x00007f151524faa4: mov    %r9,0x30(%rsp)
           0.00%       0x00007f151524faa9: mov    0xc(%r9),%r10d     ;*getfield size
                                                                     ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.32%    0.29%       0x00007f151524faad: mov    %r10d,0x3c(%rsp)
  0.04%    0.02%       0x00007f151524fab2: mov    0x20(%r9),%r10d    ;*getfield denseThreads
                                                                     ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
           0.00%       0x00007f151524fab6: mov    %r10d,%edx
  0.01%    0.01%       0x00007f151524fab9: mov    0x3c(%rsp),%r11d
  0.33%    0.29%       0x00007f151524fabe: inc    %r11d              ;*iadd
                                                                     ; - com.google.re2j.Machine$Queue::addThread@11 (line 65)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.07%    0.00%       0x00007f151524fac1: mov    %r11d,0x40(%rsp)
           0.00%       0x00007f151524fac6: mov    0x40(%rsp),%r10d
  0.13%    0.06%       0x00007f151524facb: mov    %r10d,0xc(%r9)     ;*putfield size
                                                                     ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.32%    0.15%       0x00007f151524facf: mov    %edx,%r10d
  0.06%    0.03%       0x00007f151524fad2: mov    0xc(%r12,%r10,8),%r10d  ; implicit exception: dispatches to 0x00007f15152515b9
                       0x00007f151524fad7: mov    0x3c(%rsp),%r8d
  0.00%    0.00%       0x00007f151524fadc: cmp    %r10d,%r8d
                       0x00007f151524fadf: jae    0x00007f15152504bd  ;*aastore
                                                                     ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.32%    0.27%       0x00007f151524fae5: vmovq  %xmm0,%r10
  0.03%    0.05%       0x00007f151524faea: mov    0x20(%r10),%r10d   ;*getfield argInst
                                                                     ; - com.google.re2j.Inst$AltInst::add@41 (line 193)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                       0x00007f151524faee: mov    %r10d,%ecx
           0.00%       0x00007f151524faf1: lea    (%r12,%rdx,8),%r10  ;*getfield denseThreads
                                                                     ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.31%    0.39%       0x00007f151524faf5: lea    0x10(%r10,%r8,4),%r10
  0.07%    0.02%       0x00007f151524fafa: mov    %r14d,(%r10)
  0.01%                0x00007f151524fafd: shr    $0x9,%r10
  0.00%                0x00007f151524fb01: movabs $0x7f1525109000,%r11
  0.29%    0.31%       0x00007f151524fb0b: mov    %r12b,(%r11,%r10,1)  ;*aastore
                                                                     ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.04%    0.00%       0x00007f151524fb0f: mov    %ecx,%r10d
                       0x00007f151524fb12: mov    0x8(%r12,%r10,8),%r10d  ;*invokevirtual add
                                                                     ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                                                                     ; implicit exception: dispatches to 0x00007f15152515d5
  0.00%                0x00007f151524fb17: movslq 0x38(%rsp),%r11    ;*invokestatic arraycopy
                                                                     ; - com.google.re2j.Inst$MatchInst::add@68 (line 104)
                                                                     ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.25%    0.16%       0x00007f151524fb1c: mov    %r11,0x48(%rsp)
  0.04%    0.00%       0x00007f151524fb21: mov    0x28(%rsp),%r11d
  0.01%    0.00%       0x00007f151524fb26: dec    %r11d              ;*isub
                                                                     ; - com.google.re2j.Machine::alloc@13 (line 133)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                                                     ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
           0.00%       0x00007f151524fb29: mov    %r11d,0x44(%rsp)
  0.40%    0.14%       0x00007f151524fb2e: lea    (%r12,%rax,8),%r11  ;*getfield cap
                                                                     ; - com.google.re2j.Machine::step@203 (line 300)
  0.05%                0x00007f151524fb32: mov    %r11,0x50(%rsp)
                       0x00007f151524fb37: lea    0x10(%r12,%rax,8),%r11  ;*invokestatic arraycopy
                                                                     ; - com.google.re2j.Inst$MatchInst::add@68 (line 104)
                                                                     ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%                0x00007f151524fb3c: mov    %r11,0x58(%rsp)
  0.37%    0.14%       0x00007f151524fb41: lea    (%r12,%rcx,8),%r11
  0.04%    0.00%       0x00007f151524fb45: mov    0x3c(%rsp),%r8d
                       0x00007f151524fb4a: add    $0x2,%r8d          ;*iadd
                                                                     ; - com.google.re2j.Machine$Queue::addThread@11 (line 65)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                     ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                       0x00007f151524fb4e: mov    %r8d,0x60(%rsp)
  0.28%    0.15%       0x00007f151524fb53: movslq 0x3c(%rsp),%r8
  0.03%    0.08%       0x00007f151524fb58: shl    $0x2,%r8
           0.01%       0x00007f151524fb5c: mov    %r8,0x68(%rsp)
  0.01%    0.00%       0x00007f151524fb61: cmp    $0xf8019886,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                       0x00007f151524fb68: jne    0x00007f151524ffbc  ;*invokevirtual add
                                                                     ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.34%    0.41%       0x00007f151524fb6e: mov    %r11,%r8
  0.04%    0.06%       0x00007f151524fb71: mov    0x18(%r11),%ecx    ;*getfield pc
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@2 (line 248)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%                0x00007f151524fb75: cmp    $0x40,%ecx
                       0x00007f151524fb78: jg     0x00007f1515250cf9  ;*if_icmpgt
                                                                     ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@5 (line 248)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%                0x00007f151524fb7e: mov    $0x1,%r10d
  0.26%    0.46%       0x00007f151524fb84: shl    %cl,%r10           ;*lshl
                                                                     ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@5 (line 248)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.04%    0.04%       0x00007f151524fb87: mov    %rdi,%r11
  0.28%    0.18%       0x00007f151524fb8a: and    %r10,%r11          ;*land
                                                                     ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@5 (line 248)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.04%    0.04%       0x00007f151524fb8d: test   %r11,%r11
                       0x00007f151524fb90: jne    0x00007f1515250d39  ;*ifeq
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@8 (line 248)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%    0.01%       0x00007f151524fb96: cmp    $0x40,%ecx
                       0x00007f151524fb99: jge    0x00007f1515250d8d  ;*if_icmpge
                                                                     ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@19 (line 251)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
           0.01%       0x00007f151524fb9f: mov    %r8,%r11
  0.32%    0.50%       0x00007f151524fba2: mov    0x14(%r11),%ebp    ;*getfield arg
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@23 (line 253)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.05%    0.09%       0x00007f151524fba6: or     %r10,%rdi          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@19 (line 251)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
           0.00%       0x00007f151524fba9: mov    %rdi,0x10(%r9)     ;*putfield pcsl
                                                                     ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@19 (line 251)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%                0x00007f151524fbad: cmp    0x38(%rsp),%ebp
                       0x00007f151524fbb1: jl     0x00007f1515250e21  ;*if_icmpge
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@28 (line 253)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.36%    0.38%       0x00007f151524fbb7: mov    0x1c(%r11),%ebp    ;*getfield outInst
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@75 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.03%    0.04%       0x00007f151524fbbb: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f1515251609
                       0x00007f151524fbc0: cmp    $0xf8019843,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$AltInst&apos;)}
                       0x00007f151524fbc7: jne    0x00007f15152507b9
  0.02%    0.00%       0x00007f151524fbcd: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.30%    0.31%       0x00007f151524fbd1: mov    %r10,0x70(%rsp)
  0.04%    0.07%       0x00007f151524fbd6: mov    0x18(%r10),%ecx    ;*getfield pc
                                                                     ; - com.google.re2j.Inst$AltInst::add@2 (line 187)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%    0.00%       0x00007f151524fbda: cmp    $0x40,%ecx
                       0x00007f151524fbdd: jg     0x00007f1515250f15  ;*if_icmpgt
                                                                     ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                                                                     ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%    0.01%       0x00007f151524fbe3: mov    $0x1,%r10d
  0.28%    0.29%       0x00007f151524fbe9: shl    %cl,%r10           ;*lshl
                                                                     ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                                                                     ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%    0.10%       0x00007f151524fbec: mov    %rdi,%r11
  0.28%    0.50%       0x00007f151524fbef: and    %r10,%r11
  0.06%    0.05%       0x00007f151524fbf2: test   %r11,%r11
                       0x00007f151524fbf5: jne    0x00007f151525036f  ;*ifeq
                                                                     ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                                                                     ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%                0x00007f151524fbfb: cmp    $0x40,%ecx
                       0x00007f151524fbfe: jge    0x00007f1515250f51  ;*if_icmpge
                                                                     ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                                                                     ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%    0.00%       0x00007f151524fc04: mov    0x70(%rsp),%r11
  0.28%    0.41%       0x00007f151524fc09: mov    0x1c(%r11),%ebp    ;*getfield outInst
                                                                     ; - com.google.re2j.Inst$AltInst::add@23 (line 192)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.03%    0.05%       0x00007f151524fc0d: or     %r10,%rdi          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                                                                     ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
           0.00%       0x00007f151524fc10: mov    %rdi,%r11
           0.01%       0x00007f151524fc13: mov    %rdi,0x10(%r9)     ;*putfield pcsl
                                                                     ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                                                                     ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.30%    0.28%       0x00007f151524fc17: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f1515251645
  0.09%    0.08%       0x00007f151524fc1c: cmp    $0xf8019992,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                       0x00007f151524fc23: jne    0x00007f15152507e5
  0.00%    0.03%       0x00007f151524fc29: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
           0.00%       0x00007f151524fc2d: mov    %r10,%r9
  0.29%    0.34%       0x00007f151524fc30: mov    0x18(%r10),%ecx    ;*getfield pc
                                                                     ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.06%    0.08%       0x00007f151524fc34: cmp    $0x40,%ecx
                       0x00007f151524fc37: jg     0x00007f1515250f8d  ;*if_icmpgt
                                                                     ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%    0.02%       0x00007f151524fc3d: mov    $0x1,%r10d
  0.01%    0.01%       0x00007f151524fc43: shl    %cl,%r10           ;*lshl
                                                                     ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.42%    0.59%       0x00007f151524fc46: mov    %rdi,%r8
  0.01%    0.00%       0x00007f151524fc49: and    %r10,%r8           ;*land
                                                                     ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.33%    0.37%       0x00007f151524fc4c: test   %r8,%r8
                       0x00007f151524fc4f: jne    0x00007f1515250fc9  ;*ifeq
                                                                     ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.04%    0.06%       0x00007f151524fc55: cmp    $0x40,%ecx
                       0x00007f151524fc58: jge    0x00007f1515251019  ;*if_icmpge
                                                                     ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%    0.02%       0x00007f151524fc5e: or     %r10,%r11          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
           0.01%       0x00007f151524fc61: mov    %r11,0x78(%rsp)
  0.28%    0.35%       0x00007f151524fc66: mov    0x30(%rsp),%r11
  0.03%    0.04%       0x00007f151524fc6b: mov    0x78(%rsp),%r10
  0.22%    0.28%       0x00007f151524fc70: mov    %r10,0x10(%r11)    ;*putfield pcsl
                                                                     ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.48%    0.64%       0x00007f151524fc74: mov    0x28(%rsp),%r10d
  0.05%    0.03%       0x00007f151524fc79: test   %r10d,%r10d
                       0x00007f151524fc7c: jle    0x00007f1515250c55  ;*ifle
                                                                     ; - com.google.re2j.Machine::alloc@4 (line 132)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.03%    0.04%       0x00007f151524fc82: mov    0x20(%rsp),%r10
                       0x00007f151524fc87: mov    0x44(%rsp),%r11d
  0.26%    0.36%       0x00007f151524fc8c: mov    %r11d,0xc(%r10)    ;*putfield poolSize
                                                                     ; - com.google.re2j.Machine::alloc@14 (line 133)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.06%    0.06%       0x00007f151524fc90: mov    0xc(%r12,%r13,8),%r10d  ; implicit exception: dispatches to 0x00007f1515251659
  0.03%    0.03%       0x00007f151524fc95: cmp    %r10d,%r11d
                       0x00007f151524fc98: jae    0x00007f15152506b1
                       0x00007f151524fc9e: lea    (%r12,%r13,8),%r10
  0.25%    0.34%       0x00007f151524fca2: mov    0x28(%rsp),%r11d
  0.03%    0.04%       0x00007f151524fca7: mov    0xc(%r10,%r11,4),%r11d  ;*aaload
                                                                     ; - com.google.re2j.Machine::alloc@25 (line 134)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%    0.03%       0x00007f151524fcac: mov    %r11d,0x64(%rsp)
                       0x00007f151524fcb1: mov    0xc(%r12,%r11,8),%r10d  ;*getfield cap
                                                                     ; - com.google.re2j.Inst$MatchInst::add@51 (line 103)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                                                                     ; implicit exception: dispatches to 0x00007f151525166d
  0.23%    0.33%       0x00007f151524fcb6: lea    (%r12,%r11,8),%rbp  ;*aaload
                                                                     ; - com.google.re2j.Machine::alloc@25 (line 134)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.04%    0.03%       0x00007f151524fcba: mov    %r9,%r11
  0.02%    0.05%       0x00007f151524fcbd: shr    $0x3,%r11
                       0x00007f151524fcc1: mov    0x64(%rsp),%r9d
  0.35%    0.46%       0x00007f151524fcc6: mov    %r11d,0x10(%r12,%r9,8)
  0.21%    0.22%       0x00007f151524fccb: mov    %rbp,%r11
  0.03%    0.04%       0x00007f151524fcce: shr    $0x9,%r11
                       0x00007f151524fcd2: movabs $0x7f1525109000,%r8
  0.24%    0.29%       0x00007f151524fcdc: mov    %r12b,(%r8,%r11,1)  ;*putfield inst
                                                                     ; - com.google.re2j.Machine::alloc@45 (line 138)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.10%    0.13%       0x00007f151524fce0: cmp    %eax,%r10d
                   ╭   0x00007f151524fce3: jne    0x00007f151524fcfe  ;*if_acmpeq
                   │                                                 ; - com.google.re2j.Inst$MatchInst::add@55 (line 103)
                   │                                                 ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                   │                                                 ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                   │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                   │                                                 ; - com.google.re2j.Machine::step@-1 (line 276)
                   │   0x00007f151524fce5: mov    0x30(%rsp),%r10
                   │   0x00007f151524fcea: mov    0x60(%rsp),%r8d
                   │   0x00007f151524fcef: mov    %r8d,0xc(%r10)     ;*putfield size
                   │                                                 ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                   │                                                 ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                   │                                                 ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                   │                                                 ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                   │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                   │                                                 ; - com.google.re2j.Machine::step@-1 (line 276)
                   │   0x00007f151524fcf3: mov    0x70(%rsp),%r10
                   │   0x00007f151524fcf8: mov    0x20(%r10),%r10d   ;*getfield argInst
                   │                                                 ; - com.google.re2j.Inst$AltInst::add@41 (line 193)
                   │                                                 ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                   │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                   │                                                 ; - com.google.re2j.Machine::step@-1 (line 276)
                   │╭  0x00007f151524fcfc: jmp    0x00007f151524fd5a
  0.02%    0.02%   ↘│  0x00007f151524fcfe: mov    0xc(%r12,%r10,8),%r11d  ; implicit exception: dispatches to 0x00007f15152516a9
  0.00%    0.02%    │  0x00007f151524fd03: lea    (%r12,%r10,8),%rcx  ;*getfield cap
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@51 (line 103)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.20%    0.37%    │  0x00007f151524fd07: cmp    0x38(%rsp),%r11d
                    │  0x00007f151524fd0c: jb     0x00007f1515250a29
  0.13%    0.17%    │  0x00007f151524fd12: lea    0x10(%r12,%r10,8),%rsi
  0.02%    0.05%    │  0x00007f151524fd17: mov    0x58(%rsp),%rdi
                    │  0x00007f151524fd1c: mov    0x48(%rsp),%rdx
  0.23%    0.29%    │  0x00007f151524fd21: movabs $0x7f1515052640,%r10
  0.11%    0.13%    │  0x00007f151524fd2b: callq  *%r10              ;*invokestatic arraycopy
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@68 (line 104)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%             │  0x00007f151524fd2e: mov    0x30(%rsp),%r10
  0.14%    0.13%    │  0x00007f151524fd33: mov    0x60(%rsp),%r11d
  0.24%    0.25%    │  0x00007f151524fd38: mov    %r11d,0xc(%r10)    ;*putfield size
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%             │  0x00007f151524fd3c: mov    0x20(%r10),%edx    ;*getfield denseThreads
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%    0.02%    │  0x00007f151524fd40: test   %edx,%edx
                    │  0x00007f151524fd42: je     0x00007f15152509f9  ;*aastore
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.09%    0.09%    │  0x00007f151524fd48: mov    0x20(%rsp),%r10
  0.24%    0.24%    │  0x00007f151524fd4d: mov    0x24(%r10),%r13d   ;*getfield pool
                    │                                                ; - com.google.re2j.Machine::alloc@18 (line 134)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%             │  0x00007f151524fd51: mov    0x70(%rsp),%r10
  0.01%    0.00%    │  0x00007f151524fd56: mov    0x20(%r10),%r10d   ;*aload_1
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@71 (line 106)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.14%    0.18%    ↘  0x00007f151524fd5a: mov    0xc(%r12,%rdx,8),%r11d
  0.42%    0.21%       0x00007f151524fd5f: mov    0x40(%rsp),%r8d
  0.00%                0x00007f151524fd64: cmp    %r11d,%r8d
                       0x00007f151524fd67: jae    0x00007f15152506ed  ;*aastore
                                                                     ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.34%    0.43%       0x00007f151524fd6d: lea    (%r12,%rdx,8),%r11  ;*getfield denseThreads
                                                                     ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.03%    0.08%       0x00007f151524fd71: mov    0x68(%rsp),%r8
  0.12%    0.16%       0x00007f151524fd76: lea    0x14(%r11,%r8,1),%r11
  0.00%                0x00007f151524fd7b: mov    0x64(%rsp),%r9d
  0.17%    0.27%       0x00007f151524fd80: mov    %r9d,(%r11)
  0.45%    0.63%       0x00007f151524fd83: shr    $0x9,%r11
  0.06%    0.07%       0x00007f151524fd87: movabs $0x7f1525109000,%r8
  0.01%                0x00007f151524fd91: mov    %r12b,(%r8,%r11,1)  ;*aastore
                                                                     ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.31%    0.36%       0x00007f151524fd95: mov    0x8(%r12,%r10,8),%r11d  ; implicit exception: dispatches to 0x00007f1515251681
  0.05%    0.03%       0x00007f151524fd9a: lea    (%r12,%r10,8),%r8
  0.03%    0.03%       0x00007f151524fd9e: cmp    $0xf8019886,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                       0x00007f151524fda5: jne    0x00007f151524fe51
                       0x00007f151524fdab: mov    %r8,%r9            ;*invokevirtual add
                                                                     ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                       0x00007f151524fdae: mov    0x18(%r9),%ecx     ;*getfield pc
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@2 (line 248)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
....................................................................................................
 27.47%   23.05%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 547 (456 bytes) 

                        0x00007f15152500f2: shr    $0x9,%r10
                        0x00007f15152500f6: movabs $0x7f1525109000,%r8
                        0x00007f1515250100: mov    %r12b,(%r8,%r10,1)  ;*aastore
                                                                      ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                      ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 276)
                        0x00007f1515250104: xor    %edx,%edx          ;*synchronization entry
                                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 276)
  0.03%    0.03%        0x00007f1515250106: mov    0x20(%rsp),%r10
                        0x00007f151525010b: mov    0x24(%r10),%r13d   ;*getfield pool
                                                                      ; - com.google.re2j.Machine::free@5 (line 167)
                                                                      ; - com.google.re2j.Machine::step@224 (line 303)
  0.28%    0.33%        0x00007f151525010f: mov    0xc(%r10),%edi     ;*getfield poolSize
                                                                      ; - com.google.re2j.Machine::free@1 (line 167)
                                                                      ; - com.google.re2j.Machine::step@224 (line 303)
  0.05%    0.06%        0x00007f1515250113: mov    0xc4(%rsp),%ebx
  0.04%    0.03%        0x00007f151525011a: mov    0xcc(%rsp),%r10d   ;*aload
                                                                      ; - com.google.re2j.Machine::step@216 (line 302)
  0.82%    1.07%        0x00007f1515250122: test   %rdx,%rdx
                  ╭     0x00007f1515250125: je     0x00007f1515250173  ;*ifnull
                  │                                                   ; - com.google.re2j.Machine::step@218 (line 302)
                  │     0x00007f1515250127: mov    0xc(%r12,%r13,8),%ebp  ;*arraylength
                  │                                                   ; - com.google.re2j.Machine::free@8 (line 167)
                  │                                                   ; - com.google.re2j.Machine::step@224 (line 303)
                  │                                                   ; implicit exception: dispatches to 0x00007f151525153d
                  │     0x00007f151525012c: cmp    %ebp,%edi
                  │     0x00007f151525012e: jge    0x00007f151525059d  ;*if_icmplt
                  │                                                   ; - com.google.re2j.Machine::free@9 (line 167)
                  │                                                   ; - com.google.re2j.Machine::step@224 (line 303)
  0.38%    0.34%  │     0x00007f1515250134: mov    %edi,%r9d
  0.87%    1.00%  │     0x00007f1515250137: inc    %r9d
                  │     0x00007f151525013a: mov    0x20(%rsp),%r8
                  │     0x00007f151525013f: mov    %r9d,0xc(%r8)      ;*putfield poolSize
                  │                                                   ; - com.google.re2j.Machine::free@45 (line 170)
                  │                                                   ; - com.google.re2j.Machine::step@224 (line 303)
  0.31%    0.40%  │     0x00007f1515250143: cmp    %ebp,%edi
                  │     0x00007f1515250145: jae    0x00007f1515250405  ;*aastore
                  │                                                   ; - com.google.re2j.Machine::free@49 (line 170)
                  │                                                   ; - com.google.re2j.Machine::step@224 (line 303)
  0.87%    0.84%  │     0x00007f151525014b: mov    %rdx,%r8
                  │     0x00007f151525014e: shr    $0x3,%r8
           0.00%  │     0x00007f1515250152: lea    (%r12,%r13,8),%r9  ;*getfield pool
                  │                                                   ; - com.google.re2j.Machine::free@5 (line 167)
                  │                                                   ; - com.google.re2j.Machine::step@224 (line 303)
  0.37%    0.40%  │     0x00007f1515250156: lea    0x10(%r9,%rdi,4),%r9
  0.75%    1.22%  │     0x00007f151525015b: mov    %r8d,(%r9)
                  │     0x00007f151525015e: mov    %r9,%r8
  0.00%           │     0x00007f1515250161: shr    $0x9,%r8
  0.27%    0.24%  │     0x00007f1515250165: movabs $0x7f1525109000,%r9
  0.85%    1.12%  │     0x00007f151525016f: mov    %r12b,(%r9,%r8,1)  ;*goto
                  │                                                   ; - com.google.re2j.Machine::step@230 (line 277)
  0.29%    0.37%  ↘     0x00007f1515250173: mov    0x8(%rsp),%r8
  0.02%    0.03%        0x00007f1515250178: mov    0xc(%r8),%r9d      ;*getfield size
                                                                      ; - com.google.re2j.Machine::step@15 (line 277)
  0.31%    0.20%        0x00007f151525017c: inc    %r10d              ; OopMap{r11=Oop [8]=Oop [32]=Oop off=2175}
                                                                      ;*goto
                                                                      ; - com.google.re2j.Machine::step@230 (line 277)
  0.81%    0.89%        0x00007f151525017f: test   %eax,0x174b0e7b(%rip)        # 0x00007f152c701000
                                                                      ;*goto
                                                                      ; - com.google.re2j.Machine::step@230 (line 277)
                                                                      ;   {poll}
  0.31%    0.31%        0x00007f1515250185: cmp    %r9d,%r10d
                   ╭    0x00007f1515250188: jge    0x00007f1515250267
  0.05%    0.02%   │    0x00007f151525018e: vmovq  %r11,%xmm0         ;*aload_1
                   │                                                  ; - com.google.re2j.Machine::step@21 (line 278)
  0.41%    0.17%   │    0x00007f1515250193: mov    0x8(%rsp),%r11
  0.44%    0.44%   │    0x00007f1515250198: mov    0x20(%r11),%r11d   ;*getfield denseThreads
                   │                                                  ; - com.google.re2j.Machine::step@22 (line 278)
  0.57%    0.33%   │    0x00007f151525019c: mov    0xc(%r12,%r11,8),%r9d  ; implicit exception: dispatches to 0x00007f1515251509
  1.00%    1.16%   │    0x00007f15152501a1: cmp    %r9d,%r10d
                   │    0x00007f15152501a4: jae    0x00007f1515250379
  0.70%    0.56%   │    0x00007f15152501aa: shl    $0x3,%r11
  0.41%    0.43%   │    0x00007f15152501ae: mov    0x10(%r11,%r10,4),%r14d  ;*aaload
                   │                                                  ; - com.google.re2j.Machine::step@27 (line 278)
  0.35%    0.35%   │    0x00007f15152501b3: mov    0x10(%r12,%r14,8),%ebp  ;*getfield inst
                   │                                                  ; - com.google.re2j.Machine::step@78 (line 283)
                   │                                                  ; implicit exception: dispatches to 0x00007f151525151d
  2.58%    3.06%   │    0x00007f15152501b8: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f151525152d
  4.86%    5.30%   │    0x00007f15152501bd: cmp    $0xf8019992,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                   │    0x00007f15152501c4: jne    0x00007f15152503c1
  1.32%    1.25%   │    0x00007f15152501ca: lea    (%r12,%rbp,8),%r11  ;*invokevirtual isMatch
                   │                                                  ; - com.google.re2j.Machine::step@85 (line 285)
                   │    0x00007f15152501ce: mov    0xc(%r11),%r9d     ;*getfield op
                   │                                                  ; - com.google.re2j.Inst::isMatch@1 (line 78)
                   │                                                  ; - com.google.re2j.Inst$MatchInst::isMatch@1 (line 82)
                   │                                                  ; - com.google.re2j.Machine::step@85 (line 285)
  0.07%    0.05%   │    0x00007f15152501d2: cmp    $0x6,%r9d
                   │    0x00007f15152501d6: je     0x00007f1515250461  ;*if_icmpne
                   │                                                  ; - com.google.re2j.Inst::isMatch@6 (line 78)
                   │                                                  ; - com.google.re2j.Inst$MatchInst::isMatch@1 (line 82)
                   │                                                  ; - com.google.re2j.Machine::step@85 (line 285)
  1.57%    1.21%   │    0x00007f15152501dc: mov    0x20(%rsp),%r8
  0.03%    0.03%   │    0x00007f15152501e1: mov    0xc(%r8),%edi      ;*getfield poolSize
                   │                                                  ; - com.google.re2j.Machine::alloc@1 (line 132)
                   │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                   │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                   │                                                  ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%            │    0x00007f15152501e5: mov    0x24(%r8),%r13d    ;*getfield pool
                   │                                                  ; - com.google.re2j.Machine::alloc@18 (line 134)
                   │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                   │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                   │                                                  ; - com.google.re2j.Machine::step@-1 (line 276)
                   │    0x00007f15152501e9: lea    (%r12,%r14,8),%rdx  ;*aaload
                   │                                                  ; - com.google.re2j.Machine::step@27 (line 278)
  1.37%    1.43%   │    0x00007f15152501ed: cmp    $0xa,%r9d
                   │    0x00007f15152501f1: je     0x00007f151524f995  ;*if_icmpne
                   │                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@6 (line 134)
                   │                                                  ; - com.google.re2j.Machine::step@187 (line 299)
  0.04%    0.05%   │    0x00007f15152501f7: cmp    $0xb,%r9d
                   │    0x00007f15152501fb: je     0x00007f1515250549  ;*if_icmpne
                   │                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@17 (line 138)
                   │                                                  ; - com.google.re2j.Machine::step@187 (line 299)
  0.08%    0.06%   │    0x00007f1515250201: mov    0x20(%r11),%ecx    ;*getfield f0
                   │                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@42 (line 143)
                   │                                                  ; - com.google.re2j.Machine::step@187 (line 299)
  0.00%    0.00%   │    0x00007f1515250205: cmp    $0x9,%r9d
                   │╭   0x00007f1515250209: je     0x00007f1515250252  ;*if_icmpne
                   ││                                                 ; - com.google.re2j.Inst$RuneInst::matchRune@38 (line 142)
                   ││                                                 ; - com.google.re2j.Machine::step@187 (line 299)
  0.37%    0.30%   ││   0x00007f151525020b: cmp    $0xc,%r9d
                   ││   0x00007f151525020f: jne    0x00007f1515250a45  ;*if_icmpne
                   ││                                                 ; - com.google.re2j.Inst$RuneInst::matchRune@61 (line 146)
                   ││                                                 ; - com.google.re2j.Machine::step@187 (line 299)
  0.10%    0.11%   ││   0x00007f1515250215: cmp    0x18(%rsp),%ecx
                   ││   0x00007f1515250219: je     0x00007f1515250364  ;*if_icmpeq
                   ││                                                 ; - com.google.re2j.Inst$RuneInst::matchRune@69 (line 147)
                   ││                                                 ; - com.google.re2j.Machine::step@187 (line 299)
  0.12%    0.10%   ││   0x00007f151525021f: mov    0x24(%r11),%r9d    ;*getfield f1
                   ││                                                 ; - com.google.re2j.Inst$RuneInst::matchRune@73 (line 147)
                   ││                                                 ; - com.google.re2j.Machine::step@187 (line 299)
           0.00%   ││   0x00007f1515250223: cmp    0x18(%rsp),%r9d
                   ││   0x00007f1515250228: je     0x00007f1515250364  ;*if_icmpeq
                   ││                                                 ; - com.google.re2j.Inst$RuneInst::matchRune@77 (line 147)
                   ││                                                 ; - com.google.re2j.Machine::step@187 (line 299)
  0.41%    0.33%   ││   0x00007f151525022e: mov    0x28(%r11),%ebp    ;*getfield f2
                   ││                                                 ; - com.google.re2j.Inst$RuneInst::matchRune@81 (line 147)
                   ││                                                 ; - com.google.re2j.Machine::step@187 (line 299)
  0.04%    0.02%   ││   0x00007f1515250232: cmp    0x18(%rsp),%ebp
                   ││   0x00007f1515250236: je     0x00007f1515250a99  ;*if_icmpeq
                   ││                                                 ; - com.google.re2j.Inst$RuneInst::matchRune@85 (line 147)
                   ││                                                 ; - com.google.re2j.Machine::step@187 (line 299)
  0.35%    0.37%   ││   0x00007f151525023c: mov    0x2c(%r11),%ebp    ;*getfield f3
                   ││                                                 ; - com.google.re2j.Inst$RuneInst::matchRune@89 (line 147)
                   ││                                                 ; - com.google.re2j.Machine::step@187 (line 299)
                   ││   0x00007f1515250240: cmp    0x18(%rsp),%ebp
                   ││   0x00007f1515250244: je     0x00007f1515250ad9  ;*if_icmpne
                   ││                                                 ; - com.google.re2j.Inst$RuneInst::matchRune@93 (line 147)
                   ││                                                 ; - com.google.re2j.Machine::step@187 (line 299)
  0.35%    0.43%   ││   0x00007f151525024a: xor    %r8d,%r8d
  0.00%    0.00%   ││   0x00007f151525024d: jmpq   0x00007f151524f986
  0.72%    0.82%   │↘   0x00007f1515250252: cmp    0x18(%rsp),%ecx
                   │    0x00007f1515250256: jne    0x00007f151524f983  ;*if_icmpne
                   │                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@46 (line 143)
                   │                                                  ; - com.google.re2j.Machine::step@187 (line 299)
                   │    0x00007f151525025c: mov    $0x1,%r8d
                   │    0x00007f1515250262: jmpq   0x00007f151524f986  ;*if_icmpge
                   │                                                  ; - com.google.re2j.Machine::step@18 (line 277)
  0.00%            ↘    0x00007f1515250267: mov    0x8(%rsp),%r10
                        0x00007f151525026c: movzbl 0x18(%r10),%r10d
  0.35%    0.46%        0x00007f1515250271: test   %r10d,%r10d
                     ╭  0x00007f1515250274: jne    0x00007f1515250294  ;*ifeq
                     │                                                ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                     │                                                ; - com.google.re2j.Machine::step@234 (line 306)
  0.00%              │  0x00007f1515250276: mov    0x8(%rsp),%r10
                     │  0x00007f151525027b: mov    %r12d,0xc(%r10)    ;*putfield size
                     │                                                ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                     │                                                ; - com.google.re2j.Machine::step@234 (line 306)
  0.00%              │  0x00007f151525027f: mov    0x1c(%r10),%ebp    ;*getfield pcs
                     │                                                ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                     │                                                ; - com.google.re2j.Machine::step@234 (line 306)
  0.31%    0.26%     │  0x00007f1515250283: movb   $0x1,0x18(%r10)    ;*putfield empty
                     │                                                ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                     │                                                ; - com.google.re2j.Machine::step@234 (line 306)
           0.00%     │  0x00007f1515250288: mov    %r12,0x10(%r10)    ;*putfield pcsl
                     │                                                ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                     │                                                ; - com.google.re2j.Machine::step@234 (line 306)
                     │  0x00007f151525028c: test   %ebp,%ebp
                     │  0x00007f151525028e: jne    0x00007f1515250b19  ;*getfield size
                     │                                                ; - com.google.re2j.Machine::step@15 (line 277)
  0.00%    0.01%     ↘  0x00007f1515250294: add    $0xb0,%rsp
  0.31%    0.33%        0x00007f151525029b: pop    %rbp
  0.12%    0.13%        0x00007f151525029c: test   %eax,0x174b0d5e(%rip)        # 0x00007f152c701000
                                                                      ;   {poll_return}
                        0x00007f15152502a2: retq   
  0.01%    0.00%        0x00007f15152502a3: cmp    $0xf8019992,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                        0x00007f15152502aa: jne    0x00007f151525136d  ;*invokevirtual add
                                                                      ; - com.google.re2j.Machine::step@211 (line 300)
  0.01%                 0x00007f15152502b0: mov    0x18(%r8),%ecx     ;*getfield pc
                                                                      ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                                                                      ; - com.google.re2j.Machine::step@211 (line 300)
                        0x00007f15152502b4: vmovq  %xmm0,%r11
                        0x00007f15152502b9: mov    0x10(%r11),%r9     ;*getfield pcsl
                                                                      ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                      ; - com.google.re2j.Machine::step@211 (line 300)
                                                                      ; implicit exception: dispatches to 0x00007f151525170d
                        0x00007f15152502bd: cmp    $0x40,%ecx
                        0x00007f15152502c0: jg     0x00007f15152513f1  ;*if_icmpgt
                                                                      ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                      ; - com.google.re2j.Machine::step@211 (line 300)
  0.01%                 0x00007f15152502c6: mov    $0x1,%esi
                        0x00007f15152502cb: shl    %cl,%rsi           ;*lshl
                                                                      ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                      ; - com.google.re2j.Machine::step@211 (line 300)
  0.02%                 0x00007f15152502ce: mov    %r9,%rbp
                        0x00007f15152502d1: and    %rsi,%rbp          ;*land
                                                                      ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                      ; - com.google.re2j.Machine::step@211 (line 300)
                        0x00007f15152502d4: test   %rbp,%rbp
                        0x00007f15152502d7: jne    0x00007f151525144d  ;*ifeq
                                                                      ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
....................................................................................................
 27.17%   28.51%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 596 (1103 bytes) 

                             0x00007f15152703aa: add    $0xffffff9f,%r11d
                             0x00007f15152703ae: cmp    $0x1a,%r11d
                             0x00007f15152703b2: jae    0x00007f1515270db7  ;*iconst_1
                                                                           ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                                                                           ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                                                                           ; - com.google.re2j.Machine::match@121 (line 201)
                             0x00007f15152703b8: or     $0x10,%r10d        ;*iload_2
                                                                           ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                           ; - com.google.re2j.Machine::match@121 (line 201)
                             0x00007f15152703bc: mov    %r9d,0x38(%rsp)
  0.00%    0.01%             0x00007f15152703c1: mov    %ecx,0x30(%rsp)
  0.00%                      0x00007f15152703c5: mov    %ebx,0x28(%rsp)
                             0x00007f15152703c9: mov    0x40(%rsp),%r11
                             0x00007f15152703ce: mov    0x24(%r11),%r14d   ;*getfield pool
                                                                           ; - com.google.re2j.Machine::alloc@18 (line 134)
                                                                           ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                                                           ; - com.google.re2j.Machine::match@315 (line 239)
                             0x00007f15152703d2: mov    0xc(%r11),%r8d     ;*getfield poolSize
                                                                           ; - com.google.re2j.Machine::alloc@1 (line 132)
                                                                           ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                                                           ; - com.google.re2j.Machine::match@315 (line 239)
                             0x00007f15152703d6: mov    %rdi,%r11
                             0x00007f15152703d9: shl    $0x3,%r11          ;*getfield q1
                                                                           ; - com.google.re2j.Machine::match@53 (line 188)
                             0x00007f15152703dd: mov    %r11,0x70(%rsp)
                             0x00007f15152703e2: xor    %ecx,%ecx
           0.00%             0x00007f15152703e4: mov    $0x1,%r9d
                             0x00007f15152703ea: xor    %r11d,%r11d
                             0x00007f15152703ed: mov    %r9d,0x78(%rsp)
                             0x00007f15152703f2: mov    %r11d,0x5c(%rsp)
                  ╭          0x00007f15152703f7: jmpq   0x00007f1515270582
  0.02%    0.01%  │     ↗    0x00007f15152703fc: or     $0x20,%r9d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                  │     │                                                  ; - com.google.re2j.Machine::match@323 (line 241)
  0.00%    0.00%  │     │    0x00007f1515270400: mov    %r9d,0x38(%rsp)    ;*iload_2
                  │     │                                                  ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                  │     │                                                  ; - com.google.re2j.Machine::match@323 (line 241)
  0.19%    0.22%  │     │↗   0x00007f1515270405: mov    0x5c(%rsp),%r9d
  0.07%    0.06%  │     ││   0x00007f151527040a: cmp    %edi,%r9d
                  │     ││   0x00007f151527040d: je     0x00007f1515270cc4  ;*if_icmpne
                  │     ││                                                 ; - com.google.re2j.Machine::match@348 (line 242)
  0.05%    0.03%  │     ││   0x00007f1515270413: xor    %r10d,%r10d        ;*invokespecial step
                  │     ││                                                 ; - com.google.re2j.Machine::match@356 (line 242)
  0.07%    0.04%  │     ││   0x00007f1515270416: mov    %rax,-0x8(%rsp)
  0.24%    0.20%  │     ││   0x00007f151527041b: mov    0x5c(%rsp),%eax
  0.04%    0.01%  │     ││   0x00007f151527041f: mov    %eax,0x34(%rsp)
  0.17%    0.10%  │     ││   0x00007f1515270423: mov    -0x8(%rsp),%rax
  0.02%    0.01%  │     ││   0x00007f1515270428: mov    %r8d,0x28(%rsp)
  0.35%    0.23%  │     ││   0x00007f151527042d: mov    %r11,0x50(%rsp)
  0.17%    0.02%  │     ││   0x00007f1515270432: mov    %ecx,0x20(%rsp)    ;*invokevirtual endPos
                  │     ││                                                 ; - com.google.re2j.Machine::match@345 (line 242)
  0.05%    0.02%  │     ││   0x00007f1515270436: add    0x2c(%rsp),%r9d    ;*iadd
                  │     ││                                                 ; - com.google.re2j.Machine::match@337 (line 242)
  0.06%    0.01%  │     ││   0x00007f151527043b: mov    %r9d,0x5c(%rsp)
  0.35%    0.12%  │     ││   0x00007f1515270440: mov    0x40(%rsp),%rsi
  0.03%    0.01%  │     ││   0x00007f1515270445: mov    0x18(%rsp),%rdx
  0.08%    0.02%  │     ││   0x00007f151527044a: mov    0x70(%rsp),%rcx
  0.02%    0.00%  │     ││   0x00007f151527044f: mov    0x34(%rsp),%r8d
  0.30%    0.13%  │     ││   0x00007f1515270454: mov    %ebx,%edi
  0.06%    0.03%  │     ││   0x00007f1515270456: mov    0x38(%rsp),%r11d
  0.05%    0.06%  │     ││   0x00007f151527045b: mov    %r11d,(%rsp)
  0.02%    0.03%  │     ││   0x00007f151527045f: mov    0x3c(%rsp),%ebx
  0.28%    0.11%  │     ││   0x00007f1515270463: mov    %ebx,0x8(%rsp)
  0.03%    0.03%  │     ││   0x00007f1515270467: mov    %r10d,0x10(%rsp)
  0.04%    0.09%  │     ││   0x00007f151527046c: data16 xchg %ax,%ax
  0.00%    0.01%  │     ││   0x00007f151527046f: callq  0x00007f1515046020  ; OopMap{[24]=Oop [32]=NarrowOop [64]=Oop [80]=Oop [112]=Oop off=756}
                  │     ││                                                 ;*invokespecial step
                  │     ││                                                 ; - com.google.re2j.Machine::match@356 (line 242)
                  │     ││                                                 ;   {optimized virtual_call}
           0.01%  │     ││   0x00007f1515270474: mov    0x40(%rsp),%r10
  0.41%    0.37%  │     ││   0x00007f1515270479: mov    0x24(%r10),%r14d   ;*getfield pool
                  │     ││                                                 ; - com.google.re2j.Machine::freeQueue@1 (line 156)
                  │     ││                                                 ; - com.google.re2j.Machine::freeQueue@15 (line 150)
                  │     ││                                                 ; - com.google.re2j.Machine::freeQueue@3 (line 144)
                  │     ││                                                 ; - com.google.re2j.Machine::match@445 (line 263)
                  │     ││   0x00007f151527047d: mov    0xc(%r10),%r8d     ;*getfield poolSize
                  │     ││                                                 ; - com.google.re2j.Machine::freeQueue@8 (line 157)
                  │     ││                                                 ; - com.google.re2j.Machine::freeQueue@15 (line 150)
                  │     ││                                                 ; - com.google.re2j.Machine::freeQueue@3 (line 144)
                  │     ││                                                 ; - com.google.re2j.Machine::match@445 (line 263)
  0.00%    0.00%  │     ││   0x00007f1515270481: mov    0x2c(%rsp),%r10d
  0.36%    0.23%  │     ││   0x00007f1515270486: test   %r10d,%r10d
                  │     ││   0x00007f1515270489: je     0x00007f1515270c0f  ;*ifne
                  │     ││                                                 ; - com.google.re2j.Machine::match@361 (line 243)
  0.06%    0.04%  │     ││   0x00007f151527048f: mov    0x40(%rsp),%r11
                  │     ││   0x00007f1515270494: mov    0x28(%r11),%edi    ;*getfield matchcap
                  │     ││                                                 ; - com.google.re2j.Machine::match@368 (line 246)
  0.00%           │     ││   0x00007f1515270498: mov    0xc(%r12,%rdi,8),%ebp  ;*arraylength
                  │     ││                                                 ; - com.google.re2j.Machine::match@371 (line 246)
                  │     ││                                                 ; implicit exception: dispatches to 0x00007f1515272181
  0.35%    0.24%  │     ││   0x00007f151527049d: test   %ebp,%ebp
                  │     ││   0x00007f151527049f: je     0x00007f151527131d  ;*ifne
                  │     ││                                                 ; - com.google.re2j.Machine::match@372 (line 246)
  0.08%    0.10%  │     ││   0x00007f15152704a5: mov    0x50(%rsp),%r10
                  │     ││   0x00007f15152704aa: mov    0x10(%r10),%r9d    ;*getfield end
                  │     ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                  │     ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.00%           │     ││   0x00007f15152704ae: mov    0xc(%r10),%edx     ;*getfield start
                  │     ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                  │     ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.33%    0.17%  │     ││   0x00007f15152704b2: mov    0x14(%r10),%eax    ;*getfield str
                  │     ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                  │     ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.05%    0.07%  │     ││   0x00007f15152704b6: mov    0x28(%rsp),%r11d
                  │     ││   0x00007f15152704bb: cmp    $0xffffffff,%r11d
                  │     ││   0x00007f15152704bf: je     0x00007f1515270ccf  ;*if_icmpeq
                  │     ││                                                 ; - com.google.re2j.Machine::match@401 (line 254)
                  │     ││   0x00007f15152704c5: mov    0x30(%rsp),%ecx
  0.29%    0.26%  │     ││   0x00007f15152704c9: add    0x5c(%rsp),%ecx
  0.09%    0.14%  │     ││   0x00007f15152704cd: add    %edx,%ecx          ;*iadd
                  │     ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                  │     ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
                  │     ││   0x00007f15152704cf: cmp    %r9d,%ecx
                  │     ││   0x00007f15152704d2: jge    0x00007f1515270cde  ;*if_icmpge
                  │     ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                  │     ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.00%           │     ││   0x00007f15152704d8: mov    0x8(%r12,%rax,8),%r11d  ; implicit exception: dispatches to 0x00007f1515272191
  0.29%    0.43%  │     ││   0x00007f15152704dd: cmp    $0xf80002da,%r11d  ;   {metadata(&apos;java/lang/String&apos;)}
                  │     ││   0x00007f15152704e4: jne    0x00007f1515270fe1
  0.09%    0.15%  │     ││   0x00007f15152704ea: lea    (%r12,%rax,8),%rbx  ;*invokeinterface charAt
                  │     ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                  │     ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │     ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
                  │     ││   0x00007f15152704ee: test   %ecx,%ecx
                  │     ││   0x00007f15152704f0: jl     0x00007f1515271189  ;*iflt
                  │     ││                                                 ; - java.lang.String::charAt@1 (line 657)
                  │     ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                  │     ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │     ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
                  │     ││   0x00007f15152704f6: mov    0xc(%rbx),%r13d    ;*getfield value
                  │     ││                                                 ; - java.lang.String::charAt@6 (line 657)
                  │     ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                  │     ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │     ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.27%    0.43%  │     ││   0x00007f15152704fa: mov    0xc(%r12,%r13,8),%ebp  ;*arraylength
                  │     ││                                                 ; - java.lang.String::charAt@9 (line 657)
                  │     ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                  │     ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │     ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
                  │     ││                                                 ; implicit exception: dispatches to 0x00007f15152721a5
  0.47%    0.64%  │     ││   0x00007f15152704ff: cmp    %ebp,%ecx
                  │     ││   0x00007f1515270501: jge    0x00007f1515271369  ;*if_icmplt
                  │     ││                                                 ; - java.lang.String::charAt@10 (line 657)
                  │     ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                  │     ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │     ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.25%    0.46%  │     ││   0x00007f1515270507: cmp    %ebp,%ecx
                  │     ││   0x00007f1515270509: jae    0x00007f1515270ec1
  0.08%    0.07%  │     ││   0x00007f151527050f: lea    (%r12,%r13,8),%r10
  0.08%    0.06%  │     ││   0x00007f1515270513: movzwl 0x10(%r10,%rcx,2),%r11d  ;*caload
                  │     ││                                                 ; - java.lang.String::charAt@27 (line 660)
                  │     ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                  │     ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │     ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.33%    0.44%  │     ││   0x00007f1515270519: cmp    $0xd800,%r11d
                  │     ││   0x00007f1515270520: jge    0x00007f15152713e1  ;*if_icmplt
                  │     ││                                                 ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                  │     ││                                                 ; - java.lang.Character::codePointAt@9 (line 4867)
                  │     ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │     ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.26%    0.46%  │     ││   0x00007f1515270526: shl    $0x3,%r11d         ;*ishl
                  │     ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                  │     ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.16%    0.18%  │     ││   0x00007f151527052a: mov    %r11d,%ebx
  0.03%    0.05%  │     ││   0x00007f151527052d: or     $0x1,%ebx
  0.28%    0.44%  │     ││   0x00007f1515270530: and    $0x7,%r11d
  0.04%    0.10%  │     ││   0x00007f1515270534: sar    $0x3,%ebx          ;*ishr
                  │     ││                                                 ; - com.google.re2j.Machine::match@417 (line 256)
  0.30%    0.44%  │     ││   0x00007f1515270537: or     $0x1,%r11d         ; OopMap{rdi=NarrowOop rax=NarrowOop r14=NarrowOop [24]=Oop [64]=Oop [80]=Oop [112]=Oop off=955}
                  │     ││                                                 ;*goto
                  │     ││                                                 ; - com.google.re2j.Machine::match@439 (line 262)
  0.02%    0.12%  │     ││   0x00007f151527053b: test   %eax,0x17490abf(%rip)        # 0x00007f152c701000
                  │     ││                                                 ;*goto
                  │     ││                                                 ; - com.google.re2j.Machine::match@439 (line 262)
                  │     ││                                                 ;   {poll}
  0.01%    0.01%  │     ││   0x00007f1515270541: mov    0x40(%rsp),%r10
  0.01%    0.04%  │     ││   0x00007f1515270546: movzbl 0x10(%r10),%ecx    ;*getfield matched
                  │     ││                                                 ; - com.google.re2j.Machine::match@159 (line 212)
  0.27%    0.37%  │     ││   0x00007f151527054b: mov    0x70(%rsp),%r10
  0.05%    0.07%  │     ││   0x00007f1515270550: shr    $0x3,%r10
  0.00%    0.00%  │     ││   0x00007f1515270554: mov    %r10d,0x34(%rsp)
  0.01%    0.02%  │     ││   0x00007f1515270559: mov    0x38(%rsp),%r10d
  0.26%    0.32%  │     ││   0x00007f151527055e: mov    %ebx,0x38(%rsp)
  0.05%    0.05%  │     ││   0x00007f1515270562: mov    0x18(%rsp),%rbx
  0.00%    0.01%  │     ││   0x00007f1515270567: mov    %rbx,0x70(%rsp)
  0.01%    0.04%  │     ││   0x00007f151527056c: mov    0x30(%rsp),%ebx
  0.23%    0.41%  │     ││   0x00007f1515270570: mov    %ebx,0x2c(%rsp)
  0.05%    0.07%  │     ││   0x00007f1515270574: mov    %r11d,0x30(%rsp)
  0.00%    0.00%  │     ││   0x00007f1515270579: vmovd  %edi,%xmm6
  0.02%    0.03%  │     ││   0x00007f151527057d: mov    %r9d,0x14(%rsp)
  0.26%    0.39%  ↘     ││   0x00007f1515270582: mov    0x34(%rsp),%r11d
  0.04%    0.06%        ││   0x00007f1515270587: movzbl 0x18(%r12,%r11,8),%r11d  ; implicit exception: dispatches to 0x00007f15152720fd
  0.02%    0.01%        ││   0x00007f151527058d: mov    0x34(%rsp),%ebx
  0.02%    0.02%        ││   0x00007f1515270591: lea    (%r12,%rbx,8),%r9  ;*aload
                        ││                                                 ; - com.google.re2j.Machine::match@136 (line 207)
  0.20%    0.50%        ││   0x00007f1515270595: mov    %r9,0x18(%rsp)
  0.04%    0.09%        ││   0x00007f151527059a: test   %r11d,%r11d
                        ││   0x00007f151527059d: jne    0x00007f15152708bf  ;*aload_0
                        ││                                                 ; - com.google.re2j.Machine::match@267 (line 233)
  0.01%                 ││   0x00007f15152705a3: test   %ecx,%ecx
                        ││   0x00007f15152705a5: jne    0x00007f1515271051  ;*ifne
                        ││                                                 ; - com.google.re2j.Machine::match@271 (line 233)
  0.03%    0.02%        ││   0x00007f15152705ab: mov    0x5c(%rsp),%r9d
  0.32%    0.38%        ││   0x00007f15152705b0: test   %r9d,%r9d
                        ││   0x00007f15152705b3: je     0x00007f1515270d7f  ;*ifeq
                        ││                                                 ; - com.google.re2j.Machine::match@275 (line 233)
  0.02%    0.06%        ││   0x00007f15152705b9: mov    0x3c(%rsp),%r11d
  0.00%    0.00%        ││   0x00007f15152705be: test   %r11d,%r11d
                        ││   0x00007f15152705c1: jne    0x00007f151527113d  ;*aload_0
                        ││                                                 ; - com.google.re2j.Machine::match@282 (line 236)
  0.01%    0.04%        ││   0x00007f15152705c7: vmovd  %xmm6,%ebx
  0.27%    0.41%        ││   0x00007f15152705cb: mov    0xc(%r12,%rbx,8),%edx  ;*arraylength
                        ││                                                 ; - com.google.re2j.Machine::match@286 (line 236)
                        ││                                                 ; implicit exception: dispatches to 0x00007f151527210d
  0.04%    0.07%        ││   0x00007f15152705d0: test   %edx,%edx
                        ││   0x00007f15152705d2: jle    0x00007f15152710a1  ;*ifle
                        ││                                                 ; - com.google.re2j.Machine::match@287 (line 236)
                        ││   0x00007f15152705d8: test   %edx,%edx
                        ││   0x00007f15152705da: jbe    0x00007f1515270f39  ;*iastore
                        ││                                                 ; - com.google.re2j.Machine::match@296 (line 237)
  0.04%    0.03%        ││   0x00007f15152705e0: mov    %edx,%eax
  0.36%    0.42%        ││   0x00007f15152705e2: mov    %rax,-0x8(%rsp)
  0.04%    0.06%        ││   0x00007f15152705e7: mov    0x5c(%rsp),%eax
                        ││   0x00007f15152705eb: mov    %eax,0x4c(%rsp)
  0.02%    0.02%        ││   0x00007f15152705ef: mov    -0x8(%rsp),%rax
  0.56%    0.48%        ││   0x00007f15152705f4: mov    %r11d,0x3c(%rsp)
  0.07%    0.05%        ││   0x00007f15152705f9: mov    0x40(%rsp),%r11
           0.00%        ││   0x00007f15152705fe: mov    0x18(%r11),%ecx    ;*getfield prog
                        ││                                                 ; - com.google.re2j.Machine::match@298 (line 239)
  0.07%    0.04%        ││   0x00007f1515270602: lea    (%r12,%rbx,8),%rsi  ;*getfield matchcap
                        ││                                                 ; - com.google.re2j.Machine::match@283 (line 236)
  0.33%    0.29%        ││   0x00007f1515270606: lea    0x10(%r12,%rbx,8),%rdi
  0.03%    0.06%        ││   0x00007f151527060b: mov    %r9d,(%rdi)        ;*iastore
                        ││                                                 ; - com.google.re2j.Machine::match@296 (line 237)
  0.01%    0.00%        ││   0x00007f151527060e: mov    0x1c(%r12,%rcx,8),%ebp  ;*getfield startInst
                        ││                                                 ; - com.google.re2j.Machine::match@301 (line 239)
                        ││                                                 ; implicit exception: dispatches to 0x00007f151527211d
  0.06%    0.06%        ││   0x00007f1515270613: mov    0x8(%r12,%rbp,8),%r9d  ; implicit exception: dispatches to 0x00007f151527212d
  0.78%    0.60%        ││   0x00007f1515270618: cmp    $0xf8019992,%r9d   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                        ││   0x00007f151527061f: jne    0x00007f1515270f95
  0.25%    0.17%        ││   0x00007f1515270625: lea    (%r12,%rbp,8),%rdx  ;*invokevirtual add
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
                        ││   0x00007f1515270629: mov    0x18(%rdx),%r10d   ;*getfield pc
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.04%    0.07%        ││   0x00007f151527062d: mov    %r10d,%r9d
  0.10%    0.11%        ││   0x00007f1515270630: cmp    $0x40,%r10d
                        ││   0x00007f1515270634: jg     0x00007f15152711f9  ;*if_icmpgt
                        ││                                                 ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.23%    0.20%        ││   0x00007f151527063a: mov    $0x1,%r11d
           0.00%        ││   0x00007f1515270640: mov    %r10d,%ecx
                        ││   0x00007f1515270643: shl    %cl,%r11           ;*lshl
                        ││                                                 ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.68%    0.59%        ││   0x00007f1515270646: mov    0x34(%rsp),%r10d
                        ││   0x00007f151527064b: mov    0x10(%r12,%r10,8),%rcx  ;*getfield pcsl
                        ││                                                 ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.05%    0.07%        ││   0x00007f1515270650: mov    %rcx,%r10
  0.00%    0.02%        ││   0x00007f1515270653: and    %r11,%r10          ;*land
                        ││                                                 ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.30%    0.32%        ││   0x00007f1515270656: test   %r10,%r10
                        ││   0x00007f1515270659: jne    0x00007f151527124d  ;*ifeq
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.03%    0.00%        ││   0x00007f151527065f: mov    %r9d,%r10d
  0.05%    0.03%        ││   0x00007f1515270662: cmp    $0x40,%r10d
                        ││   0x00007f1515270666: jge    0x00007f15152712c9  ;*if_icmpge
                        ││                                                 ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.02%    0.04%        ││   0x00007f151527066c: mov    0x34(%rsp),%r9d
  0.26%    0.21%        ││   0x00007f1515270671: mov    %r12b,0x18(%r12,%r9,8)  ;*putfield empty
                        ││                                                 ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.00%    0.02%        ││   0x00007f1515270676: or     %rcx,%r11
  0.06%    0.03%        ││   0x00007f1515270679: mov    %r11,0x10(%r12,%r9,8)  ;*putfield pcsl
                        ││                                                 ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.06%    0.06%        ││   0x00007f151527067e: test   %r8d,%r8d
                        ││   0x00007f1515270681: jle    0x00007f15152710f1  ;*ifle
                        ││                                                 ; - com.google.re2j.Machine::alloc@4 (line 132)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.33%    0.24%        ││   0x00007f1515270687: mov    %r8d,%ebp
  0.01%    0.03%        ││   0x00007f151527068a: dec    %ebp               ;*isub
                        ││                                                 ; - com.google.re2j.Machine::alloc@13 (line 133)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.03%    0.04%        ││   0x00007f151527068c: mov    0x40(%rsp),%r10
  0.03%    0.04%        ││   0x00007f1515270691: mov    %ebp,0xc(%r10)     ;*putfield poolSize
                        ││                                                 ; - com.google.re2j.Machine::alloc@14 (line 133)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.30%    0.39%        ││   0x00007f1515270695: mov    0xc(%r12,%r14,8),%r10d  ; implicit exception: dispatches to 0x00007f1515272149
  0.00%    0.01%        ││   0x00007f151527069a: cmp    %r10d,%ebp
                        ││   0x00007f151527069d: jae    0x00007f1515270e0a
  0.07%    0.05%        ││   0x00007f15152706a3: lea    (%r12,%r14,8),%r10
  0.03%    0.04%        ││   0x00007f15152706a7: mov    0xc(%r10,%r8,4),%r10d  ;*aaload
                        ││                                                 ; - com.google.re2j.Machine::alloc@25 (line 134)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.25%    0.35%        ││   0x00007f15152706ac: mov    %r10d,0x58(%rsp)
  0.01%    0.02%        ││   0x00007f15152706b1: mov    0xc(%r12,%r10,8),%r8d  ;*getfield cap
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@51 (line 103)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
                        ││                                                 ; implicit exception: dispatches to 0x00007f1515272159
  0.05%    0.08%        ││   0x00007f15152706b6: lea    (%r12,%r10,8),%rbp  ;*aaload
                        ││                                                 ; - com.google.re2j.Machine::alloc@25 (line 134)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.04%    0.02%        ││   0x00007f15152706ba: mov    %rdx,%r10
  0.32%    0.38%        ││   0x00007f15152706bd: shr    $0x3,%r10
  0.01%    0.01%        ││   0x00007f15152706c1: mov    0x58(%rsp),%r9d
  0.02%    0.09%        ││   0x00007f15152706c6: mov    %r10d,0x10(%r12,%r9,8)
  0.37%    0.43%        ││   0x00007f15152706cb: mov    %rbp,%r10
  0.11%    0.17%        ││   0x00007f15152706ce: shr    $0x9,%r10
  0.01%    0.01%        ││   0x00007f15152706d2: movabs $0x7f1525109000,%r11
  0.02%    0.02%        ││   0x00007f15152706dc: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                        ││                                                 ; - com.google.re2j.Machine::alloc@45 (line 138)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.16%    0.28%        ││   0x00007f15152706e0: cmp    %ebx,%r8d
                   ╭    ││   0x00007f15152706e3: jne    0x00007f15152706f0  ;*if_acmpeq
                   │    ││                                                 ; - com.google.re2j.Inst$MatchInst::add@55 (line 103)
                   │    ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
                   │    ││   0x00007f15152706e5: mov    0x50(%rsp),%r11
                   │    ││   0x00007f15152706ea: mov    0x14(%rsp),%edi
                   │╭   ││   0x00007f15152706ee: jmp    0x00007f1515270720
  0.09%    0.27%   ↘│   ││   0x00007f15152706f0: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x00007f15152721b5
  0.02%    0.02%    │   ││   0x00007f15152706f5: lea    (%r12,%r8,8),%rcx  ;*getfield cap
                    │   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@51 (line 103)
                    │   ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.02%    0.04%    │   ││   0x00007f15152706f9: cmp    %eax,%r11d
                    │   ││   0x00007f15152706fc: jb     0x00007f151527103d
  0.17%    0.22%    │   ││   0x00007f1515270702: lea    0x10(%r12,%r8,8),%rsi
  0.19%    0.16%    │   ││   0x00007f1515270707: movslq %eax,%rdx
  0.00%    0.00%    │   ││   0x00007f151527070a: movabs $0x7f1515052640,%r10
  0.04%    0.07%    │   ││   0x00007f1515270714: callq  *%r10              ;*invokestatic arraycopy
                    │   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@68 (line 104)
                    │   ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.01%    0.00%    │   ││   0x00007f1515270717: mov    0x50(%rsp),%r11
  0.13%    0.07%    │   ││   0x00007f151527071c: mov    0x10(%r11),%edi    ;*aload_1
                    │   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@71 (line 106)
                    │   ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.30%    0.21%    ↘   ││   0x00007f1515270720: mov    0x34(%rsp),%ecx
                        ││   0x00007f1515270724: mov    0xc(%r12,%rcx,8),%r10d  ;*getfield size
                        ││                                                 ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.12%    0.15%        ││   0x00007f1515270729: mov    0x20(%r12,%rcx,8),%edx  ;*getfield denseThreads
                        ││                                                 ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.02%    0.01%        ││   0x00007f151527072e: mov    %r10d,%r8d
  0.22%    0.32%        ││   0x00007f1515270731: inc    %r8d
  0.03%    0.09%        ││   0x00007f1515270734: mov    %r8d,0xc(%r12,%rcx,8)  ;*putfield size
                        ││                                                 ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.14%    0.20%        ││   0x00007f1515270739: mov    0xc(%r12,%rdx,8),%r9d  ; implicit exception: dispatches to 0x00007f151527216d
  0.52%    0.65%        ││   0x00007f151527073e: cmp    %r9d,%r10d
                        ││   0x00007f1515270741: jae    0x00007f1515270e59  ;*aastore
                        ││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.62%    0.70%        ││   0x00007f1515270747: mov    0x28(%rsp),%ebx
                        ││   0x00007f151527074b: test   %ebx,%ebx
                     ╭  ││   0x00007f151527074d: jl     0x00007f15152707fb  ;*ifge
                     │  ││                                                 ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                     │  ││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.03%    0.02%     │  ││   0x00007f1515270753: xor    %r9d,%r9d          ;*iload_0
                     │  ││                                                 ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                     │  ││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.00%    0.01%     │  ││↗  0x00007f1515270756: cmp    $0xa,%ebx
                     │  │││  0x00007f1515270759: je     0x00007f1515270ceb  ;*iload_1
                     │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                     │  │││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.26%    0.40%     │  │││  0x00007f151527075f: mov    0x38(%rsp),%r8d
                     │  │││  0x00007f1515270764: test   %r8d,%r8d
                     │  │││  0x00007f1515270767: jl     0x00007f1515270afe  ;*iload_1
                     │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                     │  │││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.03%    0.06%     │  │││  0x00007f151527076d: cmp    $0xa,%r8d
                     │  │││  0x00007f1515270771: je     0x00007f1515270cf4  ;*iload_0
                     │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                     │  │││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.00%    0.01%     │  │││  0x00007f1515270777: shl    $0x3,%rdx          ;*getfield denseThreads
                     │  │││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                     │  │││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │  │││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.30%    0.49%     │  │││  0x00007f151527077b: lea    0x10(%rdx,%r10,4),%rdx
           0.00%     │  │││  0x00007f1515270780: mov    0x58(%rsp),%r10d
  0.01%    0.03%     │  │││  0x00007f1515270785: mov    %r10d,(%rdx)
  1.38%    1.54%     │  │││  0x00007f1515270788: mov    0x28(%rsp),%r10d
  0.02%    0.03%     │  │││  0x00007f151527078d: add    $0xffffffbf,%r10d
                     │  │││  0x00007f1515270791: shr    $0x9,%rdx
  0.00%              │  │││  0x00007f1515270795: movabs $0x7f1525109000,%rsi
  0.34%    0.43%     │  │││  0x00007f151527079f: mov    %r12b,(%rsi,%rdx,1)  ;*aastore
                     │  │││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                     │  │││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │  │││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.21%    0.22%     │  │││  0x00007f15152707a3: cmp    $0x1a,%r10d
                     │╭ │││  0x00007f15152707a7: jb     0x00007f15152707bc  ;*if_icmple
                     ││ │││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                     ││ │││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     ││ │││                                                ; - com.google.re2j.Machine::match@323 (line 241)
                     ││ │││  0x00007f15152707a9: mov    0x28(%rsp),%r10d
  0.01%    0.00%     ││ │││  0x00007f15152707ae: add    $0xffffff9f,%r10d
  0.35%    0.29%     ││ │││  0x00007f15152707b2: cmp    $0x1a,%r10d
                     ││ │││  0x00007f15152707b6: jae    0x00007f1515270d3e  ;*iconst_1
                     ││ │││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                     ││ │││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     ││ │││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.04%    0.02%     │↘ │││  0x00007f15152707bc: mov    $0x1,%ebp          ;*ireturn
                     │  │││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                     │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     │  │││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.00%              │  │││  0x00007f15152707c1: mov    0x38(%rsp),%edx
  0.03%    0.10%     │  │││  0x00007f15152707c5: add    $0xffffffbf,%edx
  0.28%    0.29%     │  │││  0x00007f15152707c8: cmp    $0x1a,%edx
                     │ ╭│││  0x00007f15152707cb: jb     0x00007f15152707e0  ;*if_icmple
                     │ ││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                     │ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     │ ││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.01%    0.04%     │ ││││  0x00007f15152707cd: mov    0x38(%rsp),%r10d
                     │ ││││  0x00007f15152707d2: add    $0xffffff9f,%r10d
  0.05%    0.05%     │ ││││  0x00007f15152707d6: cmp    $0x1a,%r10d
                     │ ││││  0x00007f15152707da: jae    0x00007f1515270d5e  ;*iconst_1
                     │ ││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                     │ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     │ ││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.25%    0.21%     │ ↘│││  0x00007f15152707e0: mov    $0x1,%edx          ;*ireturn
                     │  │││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                     │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     │  │││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.08%    0.05%     │  │││  0x00007f15152707e5: cmp    %edx,%ebp
                     │  ╰││  0x00007f15152707e7: je     0x00007f15152703fc  ;*if_icmpeq
                     │   ││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                     │   ││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.05%    0.04%     │   ││  0x00007f15152707ed: or     $0x10,%r9d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                     │   ││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.05%    0.04%     │   ││  0x00007f15152707f1: mov    %r9d,0x38(%rsp)
  0.10%    0.07%     │   ╰│  0x00007f15152707f6: jmpq   0x00007f1515270405
                     ↘    │  0x00007f15152707fb: mov    $0x5,%r9d
                          ╰  0x00007f1515270801: jmpq   0x00007f1515270756
                             0x00007f1515270806: data16 nopw 0x0(%rax,%rax,1)
  0.01%    0.01%             0x00007f1515270810: mov    %ebx,%ebp
                             0x00007f1515270812: jmpq   0x00007f1515270a59
                             0x00007f1515270817: mov    %ebp,%ebx
                             0x00007f1515270819: inc    %ebx
                             0x00007f151527081b: mov    %ebp,%edi
                             0x00007f151527081d: mov    %ebx,0x58(%rsp)
                             0x00007f1515270821: jmp    0x00007f1515270831
                             0x00007f1515270823: mov    %ebp,%edi
                             0x00007f1515270825: add    $0x2,%edi
                             0x00007f1515270828: mov    %ebp,%ebx
                             0x00007f151527082a: add    $0x3,%ebx
....................................................................................................
 23.35%   25.76%  <total for region 3>

....[Hottest Regions]...............................................................................
 27.47%   23.05%         C2, level 4  com.google.re2j.Machine::step, version 547 (1150 bytes) 
 27.17%   28.51%         C2, level 4  com.google.re2j.Machine::step, version 547 (456 bytes) 
 23.35%   25.76%         C2, level 4  com.google.re2j.Machine::match, version 596 (1103 bytes) 
  7.38%    8.63%        runtime stub  StubRoutines::jint_disjoint_arraycopy (128 bytes) 
  6.04%    6.82%         C2, level 4  com.google.re2j.Machine::step, version 547 (275 bytes) 
  1.57%    1.57%   [kernel.kallsyms]  [unknown] (6 bytes) 
  1.54%    1.65%         C2, level 4  com.google.re2j.Machine::step, version 547 (46 bytes) 
  0.85%    0.85%         C2, level 4  com.google.re2j.Machine::match, version 596 (48 bytes) 
  0.43%    0.09%         C2, level 4  com.google.re2j.Machine::init, version 589 (182 bytes) 
  0.25%    0.09%         C2, level 4  com.google.re2j.Machine::init, version 589 (80 bytes) 
  0.24%    0.19%         C2, level 4  com.google.re2j.Machine::step, version 547 (121 bytes) 
  0.18%    0.09%         C2, level 4  com.google.re2j.Matcher::find, version 611 (91 bytes) 
  0.17%    0.05%         C2, level 4  com.google.re2j.Machine::init, version 589 (147 bytes) 
  0.11%    0.09%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 664 (75 bytes) 
  0.10%            [kernel.kallsyms]  [unknown] (1 bytes) 
  0.09%    0.06%         C2, level 4  java.util.Collections::shuffle, version 620 (260 bytes) 
  0.09%    0.07%         C2, level 4  com.google.re2j.Machine::match, version 596 (207 bytes) 
  0.08%    0.07%         C2, level 4  com.google.re2j.Machine::match, version 596 (231 bytes) 
  0.07%    0.05%         C2, level 4  com.google.re2j.Matcher::find, version 611 (20 bytes) 
  0.06%    0.07%         C2, level 4  com.google.re2j.Machine::init, version 589 (66 bytes) 
  2.77%    2.24%  <...other 460 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 62.46%   60.22%         C2, level 4  com.google.re2j.Machine::step, version 547 
 24.66%   26.98%         C2, level 4  com.google.re2j.Machine::match, version 596 
  7.38%    8.63%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
  2.75%    2.51%   [kernel.kallsyms]  [unknown] 
  0.94%    0.30%         C2, level 4  com.google.re2j.Machine::init, version 589 
  0.48%    0.19%         C2, level 4  com.google.re2j.Matcher::find, version 611 
  0.25%    0.15%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 664 
  0.11%    0.04%      hsdis-amd64.so  [unknown] 
  0.10%    0.07%         C2, level 4  java.util.Collections::shuffle, version 620 
  0.06%    0.04%           libjvm.so  SpinPause 
  0.05%    0.02%        runtime stub  StubRoutines::oop_disjoint_arraycopy 
  0.03%    0.01%           libjvm.so  xmlTextStream::write 
  0.03%    0.08%           libjvm.so  RelocIterator::initialize 
  0.03%    0.00%              [vdso]  __vdso_clock_gettime 
  0.03%    0.09%        libc-2.26.so  vfprintf 
  0.02%    0.02%           libjvm.so  ParallelTaskTerminator::offer_termination 
  0.02%    0.03%           libjvm.so  outputStream::update_position 
  0.02%                  C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 612 
  0.02%    0.01%        libc-2.26.so  _IO_fwrite 
  0.02%    0.01%        libc-2.26.so  _IO_file_xsputn@@GLIBC_2.2.5 
  0.51%    0.32%  <...other 78 warm methods...>
....................................................................................................
100.00%   99.74%  <totals>

....[Distribution by Source]........................................................................
 88.92%   87.92%         C2, level 4
  7.45%    8.66%        runtime stub
  2.75%    2.51%   [kernel.kallsyms]
  0.43%    0.49%           libjvm.so
  0.19%    0.30%        libc-2.26.so
  0.11%    0.04%      hsdis-amd64.so
  0.06%    0.07%  libpthread-2.26.so
  0.05%    0.00%              [vdso]
  0.03%    0.00%         interpreter
  0.01%                  C1, level 3
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                 Mode  Cnt      Score    Error  Units
Re2jRegex.testExp1       thrpt   20  14704.788 ± 74.794  ops/s
Re2jRegex.testExp1:·asm  thrpt             NaN             ---
