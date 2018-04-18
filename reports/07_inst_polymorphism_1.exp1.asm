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
# Warmup Iteration   1: 4685.904 ops/s
# Warmup Iteration   2: 11601.119 ops/s
# Warmup Iteration   3: 11665.265 ops/s
# Warmup Iteration   4: 11817.090 ops/s
# Warmup Iteration   5: 11790.220 ops/s
# Warmup Iteration   6: 11797.258 ops/s
# Warmup Iteration   7: 11717.206 ops/s
# Warmup Iteration   8: 11724.217 ops/s
# Warmup Iteration   9: 11724.418 ops/s
# Warmup Iteration  10: 11781.344 ops/s
# Warmup Iteration  11: 11804.560 ops/s
# Warmup Iteration  12: 11689.506 ops/s
# Warmup Iteration  13: 11760.602 ops/s
# Warmup Iteration  14: 11745.323 ops/s
# Warmup Iteration  15: 11876.058 ops/s
# Warmup Iteration  16: 11877.332 ops/s
# Warmup Iteration  17: 11840.674 ops/s
# Warmup Iteration  18: 11851.342 ops/s
# Warmup Iteration  19: 11870.664 ops/s
# Warmup Iteration  20: 11885.867 ops/s
Iteration   1: 11868.943 ops/s
Iteration   2: 11875.265 ops/s
Iteration   3: 11860.360 ops/s
Iteration   4: 11871.735 ops/s
Iteration   5: 11867.064 ops/s
Iteration   6: 11887.499 ops/s
Iteration   7: 11825.337 ops/s
Iteration   8: 11812.798 ops/s
Iteration   9: 11875.643 ops/s
Iteration  10: 11872.797 ops/s
Iteration  11: 11874.919 ops/s
Iteration  12: 11887.703 ops/s
Iteration  13: 11876.484 ops/s
Iteration  14: 10999.728 ops/s
Iteration  15: 11184.450 ops/s
Iteration  16: 11712.043 ops/s
Iteration  17: 11862.250 ops/s
Iteration  18: 11874.404 ops/s
Iteration  19: 11883.213 ops/s
Iteration  20: 11873.228 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  11782.293 ±(99.9%) 209.397 ops/s [Average]
  (min, avg, max) = (10999.728, 11782.293, 11887.703), stdev = 241.142
  CI (99.9%): [11572.896, 11991.691] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1:·asm":
PrintAssembly processed: 199243 total address lines.
Perf output processed (skipped 23.337 seconds):
 Column 1: cycles (20819 events)
 Column 2: instructions (20793 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 504 (1200 bytes) 

                       # parm6:    [sp+0xc8]   = int
                       # parm7:    [sp+0xd0]   = boolean
                       0x00007f382d220b40: mov    0x8(%rsi),%r10d
                       0x00007f382d220b44: shl    $0x3,%r10
                       0x00007f382d220b48: cmp    %r10,%rax
                       0x00007f382d220b4b: jne    0x00007f382d045e20  ;   {runtime_call}
                       0x00007f382d220b51: data16 xchg %ax,%ax
                       0x00007f382d220b54: nopl   0x0(%rax,%rax,1)
                       0x00007f382d220b5c: data16 data16 xchg %ax,%ax
                     [Verified Entry Point]
  0.30%    0.29%       0x00007f382d220b60: mov    %eax,-0x14000(%rsp)
  0.17%    0.11%       0x00007f382d220b67: push   %rbp
  0.07%    0.06%       0x00007f382d220b68: sub    $0xb0,%rsp         ;*synchronization entry
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.26%    0.32%       0x00007f382d220b6f: mov    %edi,0x18(%rsp)
  0.15%    0.16%       0x00007f382d220b73: mov    %r9d,0x14(%rsp)
  0.07%    0.07%       0x00007f382d220b78: mov    %r8d,0x10(%rsp)
  0.23%    0.27%       0x00007f382d220b7d: mov    %rdx,0x8(%rsp)
  0.10%    0.15%       0x00007f382d220b82: mov    %rsi,0x20(%rsp)
  0.09%    0.10%       0x00007f382d220b87: mov    0x14(%rsi),%r10d   ;*getfield re2
                                                                     ; - com.google.re2j.Machine::step@1 (line 276)
  0.03%    0.03%       0x00007f382d220b8b: movzbl 0x18(%r12,%r10,8),%r11d  ;*getfield longest
                                                                     ; - com.google.re2j.Machine::step@4 (line 276)
                                                                     ; implicit exception: dispatches to 0x00007f382d2225bd
  0.17%    0.12%       0x00007f382d220b91: mov    %r11d,0x1c(%rsp)
  0.09%    0.10%       0x00007f382d220b96: mov    0xc(%rdx),%r11d    ; implicit exception: dispatches to 0x00007f382d2225cd
  0.08%    0.03%       0x00007f382d220b9a: test   %r11d,%r11d
                       0x00007f382d220b9d: jle    0x00007f382d22150c  ;*if_icmpge
                                                                     ; - com.google.re2j.Machine::step@18 (line 277)
  0.05%    0.02%       0x00007f382d220ba3: mov    0x1c(%rsp),%r10d
  0.53%    0.18%       0x00007f382d220ba8: test   %r10d,%r10d
                       0x00007f382d220bab: jne    0x00007f382d221bf1  ;*aload_1
                                                                     ; - com.google.re2j.Machine::step@21 (line 278)
  0.11%    0.14%       0x00007f382d220bb1: xor    %r10d,%r10d
  0.03%                0x00007f382d220bb4: jmpq   0x00007f382d221439
                       0x00007f382d220bb9: nopl   0x0(%rax)
  0.66%    1.05%       0x00007f382d220bc0: xor    %r9d,%r9d
  0.03%    0.03%       0x00007f382d220bc3: test   %r9d,%r9d
                  ╭    0x00007f382d220bc6: jne    0x00007f382d220bd0
                  │    0x00007f382d220bc8: mov    %rcx,%r11
  0.36%    0.26%  │    0x00007f382d220bcb: jmpq   0x00007f382d2213cf
  0.03%    0.01%  ↘    0x00007f382d220bd0: mov    0x1c(%r11),%edi    ;*getfield outInst
                                                                     ; - com.google.re2j.Machine::step@195 (line 300)
  0.04%                0x00007f382d220bd4: mov    0xc(%r12,%r14,8),%r13d  ;*getfield cap
                                                                     ; - com.google.re2j.Machine::step@203 (line 300)
  0.01%                0x00007f382d220bd9: mov    0x8(%r12,%rdi,8),%r11d  ; implicit exception: dispatches to 0x00007f382d222521
  1.54%    0.55%       0x00007f382d220bde: lea    (%r12,%rdi,8),%r9
                       0x00007f382d220be2: cmp    $0xf8019843,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$AltInst&apos;)}
                       0x00007f382d220be9: jne    0x00007f382d221548  ;*invokevirtual add
                                                                     ; - com.google.re2j.Machine::step@211 (line 300)
  0.32%    0.46%       0x00007f382d220bef: mov    0x18(%r9),%edi     ;*getfield pc
                                                                     ; - com.google.re2j.Inst$AltInst::add@2 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                       0x00007f382d220bf3: mov    %rcx,%r11
           0.00%       0x00007f382d220bf6: mov    0x10(%rcx),%rsi    ;*getfield pcsl
                                                                     ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                                                                     ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                                                                     ; implicit exception: dispatches to 0x00007f382d222545
                       0x00007f382d220bfa: cmp    $0x40,%edi
                       0x00007f382d220bfd: jg     0x00007f382d221a99  ;*if_icmpgt
                                                                     ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                                                                     ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.36%    0.02%       0x00007f382d220c03: mov    $0x1,%eax
                       0x00007f382d220c08: mov    %edi,%ecx
  0.00%                0x00007f382d220c0a: shl    %cl,%rax           ;*lshl
                                                                     ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                                                                     ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.72%    0.02%       0x00007f382d220c0d: mov    %rsi,%rcx
                       0x00007f382d220c10: and    %rax,%rcx
  0.02%                0x00007f382d220c13: test   %rcx,%rcx
                       0x00007f382d220c16: jne    0x00007f382d2213cf  ;*ifeq
                                                                     ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                                                                     ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.19%    0.01%       0x00007f382d220c1c: cmp    $0x40,%edi
                       0x00007f382d220c1f: jge    0x00007f382d221ae1  ;*if_icmpge
                                                                     ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                                                                     ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.22%    0.00%       0x00007f382d220c25: mov    %r12b,0x18(%r11)   ;*putfield empty
                                                                     ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                                                                     ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%                0x00007f382d220c29: mov    0x1c(%r9),%ebp     ;*getfield outInst
                                                                     ; - com.google.re2j.Inst$AltInst::add@23 (line 192)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                       0x00007f382d220c2d: or     %rsi,%rax          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                                                                     ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.21%    0.07%       0x00007f382d220c30: mov    %rax,0x10(%r11)    ;*putfield pcsl
                                                                     ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                                                                     ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.19%    0.02%       0x00007f382d220c34: mov    0x8(%r12,%rbp,8),%esi  ; implicit exception: dispatches to 0x00007f382d222559
  0.49%                0x00007f382d220c39: cmp    $0xf8019992,%esi   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                       0x00007f382d220c3f: jne    0x00007f382d221811
  0.38%    0.00%       0x00007f382d220c45: shl    $0x3,%rbp          ;*invokevirtual add
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                       0x00007f382d220c49: mov    0x18(%rbp),%edi    ;*getfield pc
                                                                     ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.39%    0.01%       0x00007f382d220c4c: cmp    $0x40,%edi
                       0x00007f382d220c4f: jg     0x00007f382d221b29  ;*if_icmpgt
                                                                     ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.37%    0.09%       0x00007f382d220c55: mov    $0x1,%esi
  0.04%    0.01%       0x00007f382d220c5a: mov    %edi,%ecx
                       0x00007f382d220c5c: shl    %cl,%rsi           ;*lshl
                                                                     ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.66%    0.74%       0x00007f382d220c5f: mov    %rax,%rcx
                       0x00007f382d220c62: and    %rsi,%rcx          ;*land
                                                                     ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
           0.00%       0x00007f382d220c65: test   %rcx,%rcx
                       0x00007f382d220c68: jne    0x00007f382d22161c  ;*ifeq
                                                                     ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.08%    0.18%       0x00007f382d220c6e: vmovd  %edi,%xmm2
  0.26%    0.31%       0x00007f382d220c72: vmovq  %rbp,%xmm1
                       0x00007f382d220c77: vmovq  %rax,%xmm0
                       0x00007f382d220c7c: mov    %r9,%rax
  0.14%    0.08%       0x00007f382d220c7f: mov    %r8d,%edi
  0.28%    0.23%       0x00007f382d220c82: mov    %ebx,0xcc(%rsp)
                       0x00007f382d220c89: mov    %r10d,0xc4(%rsp)
           0.01%       0x00007f382d220c91: mov    %r11,%r8
  0.09%    0.03%       0x00007f382d220c94: xor    %ebp,%ebp          ;*ireturn
                                                                     ; - com.google.re2j.Machine$Queue::contains@24 (line 47)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.27%    0.03%       0x00007f382d220c96: test   %rcx,%rcx
                       0x00007f382d220c99: jne    0x00007f382d221b6d  ;*ifeq
                                                                     ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                       0x00007f382d220c9f: vmovd  %xmm2,%r9d
  0.00%                0x00007f382d220ca4: cmp    $0x40,%r9d
                       0x00007f382d220ca8: jge    0x00007f382d221ba9  ;*if_icmpge
                                                                     ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.10%    0.02%       0x00007f382d220cae: vmovq  %xmm0,%r9
  0.30%    0.02%       0x00007f382d220cb3: or     %rsi,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                       0x00007f382d220cb6: mov    %r8,%rbx
           0.00%       0x00007f382d220cb9: mov    %r9,0x10(%r8)      ;*putfield pcsl
                                                                     ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.09%    0.08%       0x00007f382d220cbd: mov    %rdx,%r11
  0.30%    0.09%       0x00007f382d220cc0: vmovq  %xmm1,%r10
                       0x00007f382d220cc5: mov    %r10,%r8
  0.00%    0.00%       0x00007f382d220cc8: shr    $0x3,%r8
  0.09%    0.09%       0x00007f382d220ccc: mov    %r8d,0x10(%r12,%r14,8)
  0.24%    0.21%       0x00007f382d220cd1: shr    $0x9,%r11
                       0x00007f382d220cd5: movabs $0x7f383db12000,%r8
  0.00%    0.00%       0x00007f382d220cdf: mov    %r12b,(%r8,%r11,1)  ;*putfield inst
                                                                     ; - com.google.re2j.Inst$MatchInst::add@41 (line 101)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.11%    0.11%       0x00007f382d220ce3: mov    0xc(%r12,%r13,8),%r8d  ;*arraylength
                                                                     ; - com.google.re2j.Inst$MatchInst::add@45 (line 103)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                                                                     ; implicit exception: dispatches to 0x00007f382d22257d
  0.23%    0.34%       0x00007f382d220ce8: test   %r8d,%r8d
                       0x00007f382d220ceb: jle    0x00007f382d2219e1  ;*ifle
                                                                     ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                       0x00007f382d220cf1: mov    %r8d,0x34(%rsp)
           0.00%       0x00007f382d220cf6: mov    %r13d,0x30(%rsp)
  0.11%    0.06%       0x00007f382d220cfb: mov    %rbx,0x28(%rsp)
  0.26%    0.22%       0x00007f382d220d00: mov    0xc(%rbx),%r8d     ;*getfield size
                                                                     ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                       0x00007f382d220d04: mov    0x20(%rbx),%r11d   ;*getfield denseThreads
                                                                     ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                       0x00007f382d220d08: mov    %r11d,%r13d
  0.09%    0.09%       0x00007f382d220d0b: mov    %r8d,0x38(%rsp)
  0.29%    0.17%       0x00007f382d220d10: inc    %r8d               ;*iadd
                                                                     ; - com.google.re2j.Machine$Queue::addThread@11 (line 65)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                       0x00007f382d220d13: mov    %r8d,0xc(%rbx)     ;*putfield size
                                                                     ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                       0x00007f382d220d17: mov    %r8d,0x3c(%rsp)
  0.11%    0.12%       0x00007f382d220d1c: mov    0xc(%r12,%r11,8),%r11d  ; implicit exception: dispatches to 0x00007f382d22258d
  0.30%    0.29%       0x00007f382d220d21: mov    0x38(%rsp),%ecx
  0.03%    0.02%       0x00007f382d220d25: cmp    %r11d,%ecx
                       0x00007f382d220d28: jae    0x00007f382d2217d5  ;*aastore
                                                                     ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                       0x00007f382d220d2e: mov    0x20(%rax),%r11d   ;*getfield argInst
                                                                     ; - com.google.re2j.Inst$AltInst::add@41 (line 193)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.12%    0.08%       0x00007f382d220d32: mov    %r11d,%ebx
  0.18%    0.27%       0x00007f382d220d35: lea    (%r12,%r13,8),%r11  ;*getfield denseThreads
                                                                     ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                       0x00007f382d220d39: mov    %ecx,%r8d
           0.01%       0x00007f382d220d3c: lea    0x10(%r11,%r8,4),%r11
  0.05%    0.05%       0x00007f382d220d41: mov    %r14d,(%r11)
  0.29%    0.16%       0x00007f382d220d44: mov    %r11,%r10
                       0x00007f382d220d47: shr    $0x9,%r10
                       0x00007f382d220d4b: movabs $0x7f383db12000,%r11
  0.09%    0.08%       0x00007f382d220d55: mov    %r12b,(%r11,%r10,1)  ;*aastore
                                                                     ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.22%    0.12%       0x00007f382d220d59: mov    0x8(%r12,%rbx,8),%r8d  ;*invokevirtual add
                                                                     ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                                                                     ; implicit exception: dispatches to 0x00007f382d2225a9
                       0x00007f382d220d5e: movslq 0x34(%rsp),%r10    ;*invokestatic arraycopy
                                                                     ; - com.google.re2j.Inst$MatchInst::add@68 (line 104)
                                                                     ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                       0x00007f382d220d63: mov    %r10,0x40(%rsp)
  0.12%    0.01%       0x00007f382d220d68: mov    0xcc(%rsp),%r10d
  0.28%    0.12%       0x00007f382d220d70: dec    %r10d              ;*isub
                                                                     ; - com.google.re2j.Machine::alloc@13 (line 133)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                                                     ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                       0x00007f382d220d73: mov    %r10d,0x48(%rsp)
                       0x00007f382d220d78: mov    0x30(%rsp),%r11d
  0.13%    0.06%       0x00007f382d220d7d: lea    (%r12,%r11,8),%r10  ;*getfield cap
                                                                     ; - com.google.re2j.Machine::step@203 (line 300)
  0.26%    0.08%       0x00007f382d220d81: mov    %r10,0x50(%rsp)
                       0x00007f382d220d86: lea    0x10(%r12,%r11,8),%r10  ;*invokestatic arraycopy
                                                                     ; - com.google.re2j.Inst$MatchInst::add@68 (line 104)
                                                                     ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                       0x00007f382d220d8b: mov    %r10,0x58(%rsp)
  0.07%    0.14%       0x00007f382d220d90: lea    (%r12,%rbx,8),%r11
  0.23%    0.31%       0x00007f382d220d94: mov    %ecx,%r10d
                       0x00007f382d220d97: add    $0x2,%r10d         ;*iadd
                                                                     ; - com.google.re2j.Machine$Queue::addThread@11 (line 65)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                     ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                       0x00007f382d220d9b: mov    %r10d,0x4c(%rsp)
  0.11%                0x00007f382d220da0: movslq %ecx,%r10
  0.29%    0.01%       0x00007f382d220da3: shl    $0x2,%r10
                       0x00007f382d220da7: mov    %r10,0x60(%rsp)
                       0x00007f382d220dac: cmp    $0xf8019886,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                       0x00007f382d220db3: jne    0x00007f382d221248  ;*invokevirtual add
                                                                     ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.10%    0.12%       0x00007f382d220db9: mov    %r11,%r10
  0.26%    0.37%       0x00007f382d220dbc: mov    0x18(%r11),%ecx    ;*getfield pc
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@2 (line 248)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                       0x00007f382d220dc0: cmp    $0x40,%ecx
                       0x00007f382d220dc3: jg     0x00007f382d221eb9  ;*if_icmpgt
                                                                     ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@5 (line 248)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                       0x00007f382d220dc9: mov    $0x1,%r11d
  0.13%    0.13%       0x00007f382d220dcf: shl    %cl,%r11           ;*lshl
                                                                     ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@5 (line 248)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.25%    0.31%       0x00007f382d220dd2: mov    %r9,%r8
  0.13%    0.14%       0x00007f382d220dd5: and    %r11,%r8           ;*land
                                                                     ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@5 (line 248)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.22%    0.34%       0x00007f382d220dd8: test   %r8,%r8
                       0x00007f382d220ddb: jne    0x00007f382d22164c  ;*ifeq
                                                                     ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@5 (line 248)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                       0x00007f382d220de1: xor    %ebp,%ebp          ;*ireturn
                                                                     ; - com.google.re2j.Machine$Queue::contains@24 (line 47)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@5 (line 248)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                       0x00007f382d220de3: test   %r8,%r8
                       0x00007f382d220de6: jne    0x00007f382d221eed  ;*ifeq
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@8 (line 248)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.11%    0.19%       0x00007f382d220dec: cmp    $0x40,%ecx
                       0x00007f382d220def: jge    0x00007f382d221f19  ;*if_icmpge
                                                                     ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@19 (line 251)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.34%    0.43%       0x00007f382d220df5: mov    0x14(%r10),%ebp    ;*getfield arg
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@23 (line 253)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                       0x00007f382d220df9: or     %r11,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@19 (line 251)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                       0x00007f382d220dfc: mov    0x28(%rsp),%r11
  0.13%    0.18%       0x00007f382d220e01: mov    %r9,0x10(%r11)     ;*putfield pcsl
                                                                     ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@19 (line 251)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.24%    0.29%       0x00007f382d220e05: cmp    0x34(%rsp),%ebp
                       0x00007f382d220e09: jl     0x00007f382d221f8d  ;*if_icmpge
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@28 (line 253)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                       0x00007f382d220e0f: mov    0x1c(%r10),%ebp    ;*getfield outInst
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@75 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                       0x00007f382d220e13: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f382d2225dd
  0.13%    0.12%       0x00007f382d220e18: cmp    $0xf8019843,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$AltInst&apos;)}
                       0x00007f382d220e1f: jne    0x00007f382d221a49
  0.25%    0.26%       0x00007f382d220e25: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                       0x00007f382d220e29: mov    %r10,0x68(%rsp)
  0.00%                0x00007f382d220e2e: mov    0x18(%r10),%ecx    ;*getfield pc
                                                                     ; - com.google.re2j.Inst$AltInst::add@2 (line 187)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.12%    0.14%       0x00007f382d220e32: cmp    $0x40,%ecx
                       0x00007f382d220e35: jg     0x00007f382d222031  ;*if_icmpgt
                                                                     ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                                                                     ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.23%    0.32%       0x00007f382d220e3b: mov    $0x1,%r10d
                       0x00007f382d220e41: shl    %cl,%r10           ;*lshl
                                                                     ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                                                                     ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.36%    0.56%       0x00007f382d220e44: mov    %r9,%r11
                       0x00007f382d220e47: and    %r10,%r11
                       0x00007f382d220e4a: test   %r11,%r11
                       0x00007f382d220e4d: jne    0x00007f382d221660  ;*ifeq
                                                                     ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                                                                     ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.12%    0.15%       0x00007f382d220e53: cmp    $0x40,%ecx
                       0x00007f382d220e56: jge    0x00007f382d222061  ;*if_icmpge
                                                                     ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                                                                     ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.25%    0.35%       0x00007f382d220e5c: mov    0x68(%rsp),%r11
  0.00%                0x00007f382d220e61: mov    0x1c(%r11),%ebp    ;*getfield outInst
                                                                     ; - com.google.re2j.Inst$AltInst::add@23 (line 192)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%    0.00%       0x00007f382d220e65: or     %r10,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                                                                     ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.13%    0.14%       0x00007f382d220e68: mov    %r9,%r10
  0.21%    0.26%       0x00007f382d220e6b: mov    0x28(%rsp),%r11
                       0x00007f382d220e70: mov    %r9,0x10(%r11)     ;*putfield pcsl
                                                                     ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                                                                     ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%    0.01%       0x00007f382d220e74: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f382d222619
  0.10%    0.17%       0x00007f382d220e79: cmp    $0xf8019992,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
  0.27%    0.38%       0x00007f382d220e80: jne    0x00007f382d221a71
  0.06%    0.09%       0x00007f382d220e86: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                       0x00007f382d220e8a: mov    %r11,%r9
  0.05%    0.14%       0x00007f382d220e8d: mov    0x18(%r11),%ecx    ;*getfield pc
                                                                     ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.24%    0.18%       0x00007f382d220e91: cmp    $0x40,%ecx
                       0x00007f382d220e94: jg     0x00007f382d222091  ;*if_icmpgt
                                                                     ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.09%    0.12%       0x00007f382d220e9a: mov    $0x1,%r11d
                       0x00007f382d220ea0: shl    %cl,%r11           ;*lshl
                                                                     ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.46%    0.55%       0x00007f382d220ea3: mov    %r10,%r8
                       0x00007f382d220ea6: and    %r11,%r8           ;*land
                                                                     ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.06%    0.09%       0x00007f382d220ea9: test   %r8,%r8
                       0x00007f382d220eac: jne    0x00007f382d22166c  ;*ifeq
                                                                     ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.19%    0.20%       0x00007f382d220eb2: xor    %ebp,%ebp          ;*ireturn
                                                                     ; - com.google.re2j.Machine$Queue::contains@24 (line 47)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.14%    0.13%       0x00007f382d220eb4: test   %r8,%r8
                       0x00007f382d220eb7: jne    0x00007f382d2220c5  ;*ifeq
                                                                     ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%    0.03%       0x00007f382d220ebd: cmp    $0x40,%ecx
  0.03%    0.11%       0x00007f382d220ec0: jge    0x00007f382d2220e9  ;*if_icmpge
                                                                     ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.19%    0.20%       0x00007f382d220ec6: or     %r11,%r10          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.09%    0.16%       0x00007f382d220ec9: mov    %r10,0x70(%rsp)
  0.01%    0.03%       0x00007f382d220ece: mov    0x28(%rsp),%r11
  0.06%    0.12%       0x00007f382d220ed3: mov    %r10,0x10(%r11)    ;*putfield pcsl
                                                                     ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.22%    0.22%       0x00007f382d220ed7: mov    0xcc(%rsp),%r10d
  0.14%    0.14%       0x00007f382d220edf: test   %r10d,%r10d
                       0x00007f382d220ee2: jle    0x00007f382d221e4d  ;*ifle
                                                                     ; - com.google.re2j.Machine::alloc@4 (line 132)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%    0.04%       0x00007f382d220ee8: mov    0x20(%rsp),%r10
  0.07%    0.08%       0x00007f382d220eed: mov    0x48(%rsp),%r11d
  0.16%    0.23%       0x00007f382d220ef2: mov    %r11d,0xc(%r10)    ;*putfield poolSize
                                                                     ; - com.google.re2j.Machine::alloc@14 (line 133)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.08%    0.17%       0x00007f382d220ef6: mov    0xc(%r12,%rdi,8),%r10d  ; implicit exception: dispatches to 0x00007f382d22262d
  0.01%    0.03%       0x00007f382d220efb: cmp    %r10d,%r11d
                       0x00007f382d220efe: jae    0x00007f382d22197d
  0.08%    0.07%       0x00007f382d220f04: lea    (%r12,%rdi,8),%r10
  0.19%    0.26%       0x00007f382d220f08: mov    0xcc(%rsp),%r11d
  0.10%    0.09%       0x00007f382d220f10: mov    0xc(%r10,%r11,4),%r11d  ;*aaload
                                                                     ; - com.google.re2j.Machine::alloc@25 (line 134)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%    0.02%       0x00007f382d220f15: mov    %r11d,0x78(%rsp)
  0.08%    0.12%       0x00007f382d220f1a: mov    0xc(%r12,%r11,8),%r10d  ;*getfield cap
                                                                     ; - com.google.re2j.Inst$MatchInst::add@51 (line 103)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                                                                     ; implicit exception: dispatches to 0x00007f382d222641
  0.20%    0.16%       0x00007f382d220f1f: lea    (%r12,%r11,8),%rbp  ;*aaload
                                                                     ; - com.google.re2j.Machine::alloc@25 (line 134)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.10%    0.11%       0x00007f382d220f23: mov    %r9,%r11
  0.01%    0.03%       0x00007f382d220f26: mov    %r11,%r8
  0.11%    0.04%       0x00007f382d220f29: shr    $0x3,%r8
  0.12%    0.15%       0x00007f382d220f2d: mov    0x78(%rsp),%r9d
  0.48%    0.26%       0x00007f382d220f32: mov    %r8d,0x10(%r12,%r9,8)
  0.26%    0.39%       0x00007f382d220f37: mov    %rbp,%r11
  0.03%    0.07%       0x00007f382d220f3a: shr    $0x9,%r11
  0.11%    0.12%       0x00007f382d220f3e: movabs $0x7f383db12000,%r8
  0.11%    0.13%       0x00007f382d220f48: mov    %r12b,(%r8,%r11,1)  ;*putfield inst
                                                                     ; - com.google.re2j.Machine::alloc@45 (line 138)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.21%    0.25%       0x00007f382d220f4c: mov    0x30(%rsp),%r11d
  0.06%    0.05%       0x00007f382d220f51: cmp    %r11d,%r10d
                   ╭   0x00007f382d220f54: jne    0x00007f382d220f6f  ;*if_acmpeq
                   │                                                 ; - com.google.re2j.Inst$MatchInst::add@55 (line 103)
                   │                                                 ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                   │                                                 ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                   │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                   │                                                 ; - com.google.re2j.Machine::step@-1 (line 276)
                   │   0x00007f382d220f56: mov    0x28(%rsp),%r10
                   │   0x00007f382d220f5b: mov    0x4c(%rsp),%r8d
                   │   0x00007f382d220f60: mov    %r8d,0xc(%r10)     ;*putfield size
                   │                                                 ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                   │                                                 ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                   │                                                 ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                   │                                                 ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                   │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                   │                                                 ; - com.google.re2j.Machine::step@-1 (line 276)
                   │   0x00007f382d220f64: mov    0x68(%rsp),%r10
                   │   0x00007f382d220f69: mov    0x20(%r10),%r10d   ;*getfield argInst
                   │                                                 ; - com.google.re2j.Inst$AltInst::add@41 (line 193)
                   │                                                 ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                   │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                   │                                                 ; - com.google.re2j.Machine::step@-1 (line 276)
                   │╭  0x00007f382d220f6d: jmp    0x00007f382d220fcc
  0.09%    0.07%   ↘│  0x00007f382d220f6f: mov    0xc(%r12,%r10,8),%r11d  ; implicit exception: dispatches to 0x00007f382d22267d
  0.08%    0.15%    │  0x00007f382d220f74: lea    (%r12,%r10,8),%rcx  ;*getfield cap
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@51 (line 103)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.20%    0.19%    │  0x00007f382d220f78: cmp    0x34(%rsp),%r11d
                    │  0x00007f382d220f7d: jb     0x00007f382d221c69
  0.06%    0.09%    │  0x00007f382d220f83: lea    0x10(%r12,%r10,8),%rsi
  0.12%    0.12%    │  0x00007f382d220f88: mov    0x58(%rsp),%rdi
  0.07%    0.08%    │  0x00007f382d220f8d: mov    0x40(%rsp),%rdx
  0.17%    0.22%    │  0x00007f382d220f92: movabs $0x7f382d052640,%r10
  0.06%    0.08%    │  0x00007f382d220f9c: callq  *%r10              ;*invokestatic arraycopy
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@68 (line 104)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%    0.00%    │  0x00007f382d220f9f: mov    0x28(%rsp),%r10
  0.11%    0.11%    │  0x00007f382d220fa4: mov    0x4c(%rsp),%r11d
  0.21%    0.35%    │  0x00007f382d220fa9: mov    %r11d,0xc(%r10)    ;*putfield size
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.07%    0.05%    │  0x00007f382d220fad: mov    0x20(%r10),%r13d   ;*getfield denseThreads
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.15%    0.22%    │  0x00007f382d220fb1: test   %r13d,%r13d
                    │  0x00007f382d220fb4: je     0x00007f382d221c39  ;*aastore
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.09%    0.19%    │  0x00007f382d220fba: mov    0x20(%rsp),%r10
  0.20%    0.34%    │  0x00007f382d220fbf: mov    0x24(%r10),%edi    ;*getfield pool
                    │                                                ; - com.google.re2j.Machine::alloc@18 (line 134)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%    0.03%    │  0x00007f382d220fc3: mov    0x68(%rsp),%r10
  0.02%    0.02%    │  0x00007f382d220fc8: mov    0x20(%r10),%r10d   ;*aload_1
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@71 (line 106)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.11%    0.13%    ↘  0x00007f382d220fcc: mov    0xc(%r12,%r13,8),%r11d
  0.71%    0.88%       0x00007f382d220fd1: mov    0x3c(%rsp),%r8d
  0.00%                0x00007f382d220fd6: cmp    %r11d,%r8d
                       0x00007f382d220fd9: jae    0x00007f382d2219a9  ;*aastore
                                                                     ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.55%    0.58%       0x00007f382d220fdf: lea    (%r12,%r13,8),%r11  ;*getfield denseThreads
                                                                     ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%    0.02%       0x00007f382d220fe3: mov    0x60(%rsp),%r8
  0.08%    0.05%       0x00007f382d220fe8: lea    0x14(%r11,%r8,1),%r11
  0.00%                0x00007f382d220fed: mov    0x78(%rsp),%r9d
  0.26%    0.30%       0x00007f382d220ff2: mov    %r9d,(%r11)
  0.66%    0.78%       0x00007f382d220ff5: shr    $0x9,%r11
  0.01%    0.00%       0x00007f382d220ff9: movabs $0x7f383db12000,%r8
                       0x00007f382d221003: mov    %r12b,(%r8,%r11,1)  ;*aastore
                                                                     ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.35%    0.43%       0x00007f382d221007: mov    0x8(%r12,%r10,8),%r11d  ; implicit exception: dispatches to 0x00007f382d222655
  0.01%    0.03%       0x00007f382d22100c: lea    (%r12,%r10,8),%r8
  0.01%    0.01%       0x00007f382d221010: cmp    $0xf8019886,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                       0x00007f382d221017: jne    0x00007f382d2210c9  ;*invokevirtual add
                                                                     ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                       0x00007f382d22101d: mov    0x18(%r8),%ecx     ;*getfield pc
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@2 (line 248)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
....................................................................................................
 29.17%   26.09%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 504 (605 bytes) 

                           0x00007f382d2213a6: shr    $0x9,%r10
                           0x00007f382d2213aa: movabs $0x7f383db12000,%r8
                           0x00007f382d2213b4: mov    %r12b,(%r8,%r10,1)  ;*aastore
                                                                         ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                                                                         ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                         ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                                                                         ; - com.google.re2j.Machine::step@-1 (line 276)
                           0x00007f382d2213b8: xor    %edx,%edx          ;*synchronization entry
                                                                         ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                         ; - com.google.re2j.Machine::step@-1 (line 276)
  0.07%    0.10%           0x00007f382d2213ba: mov    0x20(%rsp),%r10
  0.00%                    0x00007f382d2213bf: mov    0x24(%r10),%r8d    ;*getfield pool
                                                                         ; - com.google.re2j.Machine::free@5 (line 167)
                                                                         ; - com.google.re2j.Machine::step@224 (line 303)
  0.25%    0.29%           0x00007f382d2213c3: mov    0xc(%r10),%ebx     ;*getfield poolSize
                                                                         ; - com.google.re2j.Machine::free@1 (line 167)
                                                                         ; - com.google.re2j.Machine::step@224 (line 303)
  0.08%    0.08%           0x00007f382d2213c7: mov    0xc4(%rsp),%r10d   ;*aload
                                                                         ; - com.google.re2j.Machine::step@216 (line 302)
  0.87%    0.98%        ↗  0x00007f382d2213cf: test   %rdx,%rdx
                  ╭     │  0x00007f382d2213d2: je     0x00007f382d22141b  ;*ifnull
                  │     │                                                ; - com.google.re2j.Machine::step@218 (line 302)
                  │     │  0x00007f382d2213d4: mov    0xc(%r12,%r8,8),%ebp  ;*arraylength
                  │     │                                                ; - com.google.re2j.Machine::free@8 (line 167)
                  │     │                                                ; - com.google.re2j.Machine::step@224 (line 303)
                  │     │                                                ; implicit exception: dispatches to 0x00007f382d222511
  0.00%           │     │  0x00007f382d2213d9: cmp    %ebp,%ebx
                  │     │  0x00007f382d2213db: jge    0x00007f382d2218a5  ;*if_icmplt
                  │     │                                                ; - com.google.re2j.Machine::free@9 (line 167)
                  │     │                                                ; - com.google.re2j.Machine::step@224 (line 303)
  0.42%    0.43%  │     │  0x00007f382d2213e1: mov    %ebx,%ecx
  0.75%    0.75%  │     │  0x00007f382d2213e3: inc    %ecx
                  │     │  0x00007f382d2213e5: mov    0x20(%rsp),%r9
                  │     │  0x00007f382d2213ea: mov    %ecx,0xc(%r9)      ;*putfield poolSize
                  │     │                                                ; - com.google.re2j.Machine::free@45 (line 170)
                  │     │                                                ; - com.google.re2j.Machine::step@224 (line 303)
  0.36%    0.46%  │     │  0x00007f382d2213ee: cmp    %ebp,%ebx
                  │     │  0x00007f382d2213f0: jae    0x00007f382d22171d  ;*aastore
                  │     │                                                ; - com.google.re2j.Machine::free@49 (line 170)
                  │     │                                                ; - com.google.re2j.Machine::step@224 (line 303)
  0.59%    0.93%  │     │  0x00007f382d2213f6: mov    %rdx,%r9
                  │     │  0x00007f382d2213f9: shr    $0x3,%r9
                  │     │  0x00007f382d2213fd: shl    $0x3,%r8           ;*getfield pool
                  │     │                                                ; - com.google.re2j.Machine::free@5 (line 167)
                  │     │                                                ; - com.google.re2j.Machine::step@224 (line 303)
  0.38%    0.41%  │     │  0x00007f382d221401: lea    0x10(%r8,%rbx,4),%r8
  0.73%    1.07%  │     │  0x00007f382d221406: mov    %r9d,(%r8)
  0.00%           │     │  0x00007f382d221409: shr    $0x9,%r8
                  │     │  0x00007f382d22140d: movabs $0x7f383db12000,%r9
  0.30%    0.33%  │     │  0x00007f382d221417: mov    %r12b,(%r9,%r8,1)  ;*goto
                  │     │                                                ; - com.google.re2j.Machine::step@230 (line 277)
  0.76%    1.12%  ↘     │  0x00007f382d22141b: mov    0x8(%rsp),%r8
  0.30%    0.26%        │  0x00007f382d221420: mov    0xc(%r8),%r9d      ;*getfield size
                        │                                                ; - com.google.re2j.Machine::step@15 (line 277)
  0.05%    0.07%        │  0x00007f382d221424: inc    %r10d              ; OopMap{r11=Oop [8]=Oop [32]=Oop off=2279}
                        │                                                ;*goto
                        │                                                ; - com.google.re2j.Machine::step@230 (line 277)
  0.44%    0.38%        │  0x00007f382d221427: test   %eax,0x17ee8bd3(%rip)        # 0x00007f384510a000
                        │                                                ;*goto
                        │                                                ; - com.google.re2j.Machine::step@230 (line 277)
                        │                                                ;   {poll}
  0.79%    0.93%        │  0x00007f382d22142d: cmp    %r9d,%r10d
                   ╭    │  0x00007f382d221430: jge    0x00007f382d22150c
  0.27%    0.24%   │    │  0x00007f382d221436: mov    %r11,%rcx          ;*aload_1
                   │    │                                                ; - com.google.re2j.Machine::step@21 (line 278)
  0.07%    0.09%   │    │  0x00007f382d221439: mov    0x8(%rsp),%r11
  0.58%    0.28%   │    │  0x00007f382d22143e: mov    0x20(%r11),%r11d   ;*getfield denseThreads
                   │    │                                                ; - com.google.re2j.Machine::step@22 (line 278)
  0.51%    0.65%   │    │  0x00007f382d221442: mov    0xc(%r12,%r11,8),%r9d  ; implicit exception: dispatches to 0x00007f382d2224dd
  1.49%    1.38%   │    │  0x00007f382d221447: cmp    %r9d,%r10d
                   │    │  0x00007f382d22144a: jae    0x00007f382d221694
  0.47%    0.45%   │    │  0x00007f382d221450: shl    $0x3,%r11
  0.35%    0.09%   │    │  0x00007f382d221454: mov    0x10(%r11,%r10,4),%r14d  ;*aaload
                   │    │                                                ; - com.google.re2j.Machine::step@27 (line 278)
  0.33%    0.50%   │    │  0x00007f382d221459: mov    0x10(%r12,%r14,8),%ebp  ;*getfield inst
                   │    │                                                ; - com.google.re2j.Machine::step@78 (line 283)
                   │    │                                                ; implicit exception: dispatches to 0x00007f382d2224f1
  2.24%    2.77%   │    │  0x00007f382d22145e: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f382d222501
  4.34%    4.22%   │    │  0x00007f382d221463: cmp    $0xf8019992,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                   │    │  0x00007f382d22146a: jne    0x00007f382d2216d9
  1.34%    1.33%   │    │  0x00007f382d221470: lea    (%r12,%rbp,8),%r11  ;*invokevirtual isMatch
                   │    │                                                ; - com.google.re2j.Machine::step@85 (line 285)
  0.01%            │    │  0x00007f382d221474: mov    0xc(%r11),%r9d     ;*getfield op
                   │    │                                                ; - com.google.re2j.Inst::isMatch@1 (line 78)
                   │    │                                                ; - com.google.re2j.Inst$MatchInst::isMatch@1 (line 82)
                   │    │                                                ; - com.google.re2j.Machine::step@85 (line 285)
  0.17%    0.19%   │    │  0x00007f382d221478: cmp    $0x6,%r9d
                   │    │  0x00007f382d22147c: je     0x00007f382d221779  ;*if_icmpne
                   │    │                                                ; - com.google.re2j.Inst::isMatch@6 (line 78)
                   │    │                                                ; - com.google.re2j.Inst$MatchInst::isMatch@1 (line 82)
                   │    │                                                ; - com.google.re2j.Machine::step@85 (line 285)
  1.35%    1.31%   │    │  0x00007f382d221482: mov    0x20(%rsp),%r8
  0.05%    0.02%   │    │  0x00007f382d221487: mov    0xc(%r8),%ebx      ;*getfield poolSize
                   │    │                                                ; - com.google.re2j.Machine::alloc@1 (line 132)
                   │    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                   │    │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                   │    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%            │    │  0x00007f382d22148b: mov    0x24(%r8),%r8d     ;*getfield pool
                   │    │                                                ; - com.google.re2j.Machine::alloc@18 (line 134)
                   │    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                   │    │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                   │    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                   │    │  0x00007f382d22148f: lea    (%r12,%r14,8),%rdx  ;*aaload
                   │    │                                                ; - com.google.re2j.Machine::step@27 (line 278)
  1.41%    1.42%   │    │  0x00007f382d221493: cmp    $0xa,%r9d
                   │    │  0x00007f382d221497: je     0x00007f382d220bd0  ;*if_icmpne
                   │    │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@6 (line 134)
                   │    │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.06%    0.06%   │    │  0x00007f382d22149d: cmp    $0xb,%r9d
                   │    │  0x00007f382d2214a1: je     0x00007f382d221851  ;*if_icmpne
                   │    │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@17 (line 138)
                   │    │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.05%    0.06%   │    │  0x00007f382d2214a7: mov    0x20(%r11),%esi    ;*getfield f0
                   │    │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@42 (line 143)
                   │    │                                                ; - com.google.re2j.Machine::step@187 (line 299)
                   │    │  0x00007f382d2214ab: cmp    $0x9,%r9d
                   │╭   │  0x00007f382d2214af: je     0x00007f382d2214f7  ;*if_icmpne
                   ││   │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@38 (line 142)
                   ││   │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.37%    0.42%   ││   │  0x00007f382d2214b1: cmp    $0xc,%r9d
                   ││   │  0x00007f382d2214b5: jne    0x00007f382d221c85  ;*if_icmpne
                   ││   │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@61 (line 146)
                   ││   │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.03%    0.05%   ││   │  0x00007f382d2214bb: cmp    0x18(%rsp),%esi
                   ││╭  │  0x00007f382d2214bf: je     0x00007f382d221611  ;*if_icmpeq
                   │││  │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@69 (line 147)
                   │││  │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.23%    0.29%   │││  │  0x00007f382d2214c5: mov    0x24(%r11),%edi    ;*getfield f1
                   │││  │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@73 (line 147)
                   │││  │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.02%    0.00%   │││  │  0x00007f382d2214c9: cmp    0x18(%rsp),%edi
                   │││╭ │  0x00007f382d2214cd: je     0x00007f382d221611  ;*if_icmpeq
                   ││││ │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@77 (line 147)
                   ││││ │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.36%    0.38%   ││││ │  0x00007f382d2214d3: mov    0x28(%r11),%ebp    ;*getfield f2
                   ││││ │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@81 (line 147)
                   ││││ │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.02%    0.02%   ││││ │  0x00007f382d2214d7: cmp    0x18(%rsp),%ebp
                   ││││ │  0x00007f382d2214db: je     0x00007f382d221cd9  ;*if_icmpeq
                   ││││ │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@85 (line 147)
                   ││││ │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.25%    0.26%   ││││ │  0x00007f382d2214e1: mov    0x2c(%r11),%ebp    ;*getfield f3
                   ││││ │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@89 (line 147)
                   ││││ │                                                ; - com.google.re2j.Machine::step@187 (line 299)
                   ││││ │  0x00007f382d2214e5: cmp    0x18(%rsp),%ebp
                   ││││ │  0x00007f382d2214e9: je     0x00007f382d221d19  ;*if_icmpne
                   ││││ │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@93 (line 147)
                   ││││ │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.33%    0.27%   ││││ │  0x00007f382d2214ef: xor    %r9d,%r9d
  0.00%    0.01%   ││││ │  0x00007f382d2214f2: jmpq   0x00007f382d220bc3
  0.70%    0.97%   │↘││ │  0x00007f382d2214f7: cmp    0x18(%rsp),%esi
                   │ ││ │  0x00007f382d2214fb: jne    0x00007f382d220bc0  ;*if_icmpne
                   │ ││ │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@46 (line 143)
                   │ ││ │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.01%    0.01%   │ ││ │  0x00007f382d221501: mov    $0x1,%r9d
  0.00%    0.00%   │ ││ │  0x00007f382d221507: jmpq   0x00007f382d220bc3  ;*if_icmpge
                   │ ││ │                                                ; - com.google.re2j.Machine::step@18 (line 277)
  0.00%    0.00%   ↘ ││ │  0x00007f382d22150c: mov    0x8(%rsp),%r10
                     ││ │  0x00007f382d221511: movzbl 0x18(%r10),%r10d
  0.00%              ││ │  0x00007f382d221516: test   %r10d,%r10d
                     ││╭│  0x00007f382d221519: jne    0x00007f382d221539  ;*ifeq
                     ││││                                                ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                     ││││                                                ; - com.google.re2j.Machine::step@234 (line 306)
  0.36%    0.50%     ││││  0x00007f382d22151b: mov    0x8(%rsp),%r10
                     ││││  0x00007f382d221520: mov    %r12d,0xc(%r10)    ;*putfield size
                     ││││                                                ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                     ││││                                                ; - com.google.re2j.Machine::step@234 (line 306)
  0.01%              ││││  0x00007f382d221524: mov    0x1c(%r10),%ebp    ;*getfield pcs
                     ││││                                                ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                     ││││                                                ; - com.google.re2j.Machine::step@234 (line 306)
           0.01%     ││││  0x00007f382d221528: movb   $0x1,0x18(%r10)    ;*putfield empty
                     ││││                                                ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                     ││││                                                ; - com.google.re2j.Machine::step@234 (line 306)
  0.34%    0.36%     ││││  0x00007f382d22152d: mov    %r12,0x10(%r10)    ;*putfield pcsl
                     ││││                                                ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                     ││││                                                ; - com.google.re2j.Machine::step@234 (line 306)
  0.00%    0.00%     ││││  0x00007f382d221531: test   %ebp,%ebp
                     ││││  0x00007f382d221533: jne    0x00007f382d221d59  ;*getfield size
                     ││││                                                ; - com.google.re2j.Machine::step@15 (line 277)
                     ││↘│  0x00007f382d221539: add    $0xb0,%rsp
                     ││ │  0x00007f382d221540: pop    %rbp
  0.38%    0.42%     ││ │  0x00007f382d221541: test   %eax,0x17ee8ab9(%rip)        # 0x00007f384510a000
                     ││ │                                                ;   {poll_return}
           0.00%     ││ │  0x00007f382d221547: retq   
  0.01%    0.01%     ││ │  0x00007f382d221548: cmp    $0xf8019992,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                     ││ │  0x00007f382d22154f: jne    0x00007f382d222355  ;*invokevirtual add
                     ││ │                                                ; - com.google.re2j.Machine::step@211 (line 300)
                     ││ │  0x00007f382d221555: mov    0x18(%r9),%edi     ;*getfield pc
                     ││ │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                     ││ │                                                ; - com.google.re2j.Machine::step@211 (line 300)
                     ││ │  0x00007f382d221559: mov    %rcx,%r11
                     ││ │  0x00007f382d22155c: mov    0x10(%rcx),%rsi    ;*getfield pcsl
                     ││ │                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                     ││ │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                     ││ │                                                ; - com.google.re2j.Machine::step@211 (line 300)
                     ││ │                                                ; implicit exception: dispatches to 0x00007f382d2226e1
  0.01%              ││ │  0x00007f382d221560: cmp    $0x40,%edi
                     ││ │  0x00007f382d221563: jg     0x00007f382d2223d9  ;*if_icmpgt
                     ││ │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                     ││ │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                     ││ │                                                ; - com.google.re2j.Machine::step@211 (line 300)
  0.00%              ││ │  0x00007f382d221569: mov    $0x1,%eax
                     ││ │  0x00007f382d22156e: mov    %edi,%ecx
                     ││ │  0x00007f382d221570: shl    %cl,%rax           ;*lshl
                     ││ │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                     ││ │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                     ││ │                                                ; - com.google.re2j.Machine::step@211 (line 300)
  0.03%    0.00%     ││ │  0x00007f382d221573: mov    %rsi,%rcx
                     ││ │  0x00007f382d221576: and    %rax,%rcx          ;*land
                     ││ │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                     ││ │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                     ││ │                                                ; - com.google.re2j.Machine::step@211 (line 300)
                     ││ │  0x00007f382d221579: test   %rcx,%rcx
                     ││ │  0x00007f382d22157c: jne    0x00007f382d22168a  ;*ifeq
                     ││ │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                     ││ │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                     ││ │                                                ; - com.google.re2j.Machine::step@211 (line 300)
  0.00%    0.00%     ││ │  0x00007f382d221582: xor    %ebp,%ebp          ;*ireturn
                     ││ │                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 47)
                     ││ │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                     ││ │                                                ; - com.google.re2j.Machine::step@211 (line 300)
  0.01%    0.00%     ││ │  0x00007f382d221584: test   %rcx,%rcx
                     ││ │  0x00007f382d221587: jne    0x00007f382d222435  ;*ifeq
                     ││ │                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                     ││ │                                                ; - com.google.re2j.Machine::step@211 (line 300)
  0.00%              ││ │  0x00007f382d22158d: cmp    $0x40,%edi
                     ││ │  0x00007f382d221590: jge    0x00007f382d222481  ;*if_icmpge
                     ││ │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                     ││ │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                     ││ │                                                ; - com.google.re2j.Machine::step@211 (line 300)
  0.00%              ││ │  0x00007f382d221596: mov    %r12b,0x18(%r11)   ;*putfield empty
                     ││ │                                                ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                     ││ │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                     ││ │                                                ; - com.google.re2j.Machine::step@211 (line 300)
           0.00%     ││ │  0x00007f382d22159a: or     %rsi,%rax
                     ││ │  0x00007f382d22159d: mov    %rax,0x10(%r11)    ;*putfield pcsl
                     ││ │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                     ││ │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                     ││ │                                                ; - com.google.re2j.Machine::step@211 (line 300)
  0.01%              ││ │  0x00007f382d2215a1: mov    %rdx,%rcx
                     ││ │  0x00007f382d2215a4: mov    %r9,%rdi
  0.00%              ││ │  0x00007f382d2215a7: shr    $0x3,%rdi
  0.00%    0.00%     ││ │  0x00007f382d2215ab: mov    %edi,0x10(%r12,%r14,8)
           0.00%     ││ │  0x00007f382d2215b0: shr    $0x9,%rcx
                     ││ │  0x00007f382d2215b4: movabs $0x7f383db12000,%r9
                     ││ │  0x00007f382d2215be: mov    %r12b,(%r9,%rcx,1)  ;*putfield inst
                     ││ │                                                ; - com.google.re2j.Inst$MatchInst::add@41 (line 101)
                     ││ │                                                ; - com.google.re2j.Machine::step@211 (line 300)
                     ││ │  0x00007f382d2215c2: mov    0xc(%r12,%r13,8),%ebp  ;*arraylength
                     ││ │                                                ; - com.google.re2j.Inst$MatchInst::add@45 (line 103)
                     ││ │                                                ; - com.google.re2j.Machine::step@211 (line 300)
                     ││ │                                                ; implicit exception: dispatches to 0x00007f382d2226f5
  0.00%    0.00%     ││ │  0x00007f382d2215c7: test   %ebp,%ebp
                     ││ │  0x00007f382d2215c9: jle    0x00007f382d222391  ;*ifle
                     ││ │                                                ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                     ││ │                                                ; - com.google.re2j.Machine::step@211 (line 300)
                     ││ │  0x00007f382d2215cf: mov    0x20(%r11),%r9d    ;*getfield denseThreads
                     ││ │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                     ││ │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     ││ │                                                ; - com.google.re2j.Machine::step@211 (line 300)
                     ││ │  0x00007f382d2215d3: mov    0xc(%r11),%ebp     ;*getfield size
                     ││ │                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                     ││ │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     ││ │                                                ; - com.google.re2j.Machine::step@211 (line 300)
                     ││ │  0x00007f382d2215d7: mov    %ebp,%ecx
  0.00%    0.00%     ││ │  0x00007f382d2215d9: inc    %ecx
           0.00%     ││ │  0x00007f382d2215db: mov    %ecx,0xc(%r11)     ;*putfield size
                     ││ │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                     ││ │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     ││ │                                                ; - com.google.re2j.Machine::step@211 (line 300)
                     ││ │  0x00007f382d2215df: mov    0xc(%r12,%r9,8),%ecx  ; implicit exception: dispatches to 0x00007f382d222705
  0.01%              ││ │  0x00007f382d2215e4: cmp    %ecx,%ebp
                     ││ │  0x00007f382d2215e6: jae    0x00007f382d22230d  ;*aastore
                     ││ │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                     ││ │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     ││ │                                                ; - com.google.re2j.Machine::step@211 (line 300)
  0.01%              ││ │  0x00007f382d2215ec: shl    $0x3,%r9           ;*getfield denseThreads
                     ││ │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                     ││ │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     ││ │                                                ; - com.google.re2j.Machine::step@211 (line 300)
           0.00%     ││ │  0x00007f382d2215f0: lea    0x10(%r9,%rbp,4),%r9
  0.00%    0.00%     ││ │  0x00007f382d2215f5: mov    %r14d,(%r9)
  0.03%    0.01%     ││ │  0x00007f382d2215f8: shr    $0x9,%r9
                     ││ │  0x00007f382d2215fc: movabs $0x7f383db12000,%rcx
                     ││ │  0x00007f382d221606: mov    %r12b,(%rcx,%r9,1)  ;*aastore
                     ││ │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                     ││ │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     ││ │                                                ; - com.google.re2j.Machine::step@211 (line 300)
           0.00%     ││ │  0x00007f382d22160a: xor    %edx,%edx
                     ││ ╰  0x00007f382d22160c: jmpq   0x00007f382d2213cf  ;*iconst_1
                     ││                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@96 (line 147)
                     ││                                                  ; - com.google.re2j.Machine::step@187 (line 299)
  0.09%    0.10%     ↘↘    0x00007f382d221611: mov    $0x1,%r9d
  0.05%    0.04%           0x00007f382d221617: jmpq   0x00007f382d220bc3
                           0x00007f382d22161c: vmovd  %edi,%xmm2
                           0x00007f382d221620: vmovq  %rbp,%xmm1
                           0x00007f382d221625: vmovq  %rax,%xmm0
                           0x00007f382d22162a: mov    %r9,%rax
                           0x00007f382d22162d: mov    %r8d,%edi
                           0x00007f382d221630: mov    %ebx,0xcc(%rsp)
                           0x00007f382d221637: mov    %r10d,0xc4(%rsp)
                           0x00007f382d22163f: mov    %r11,%r8
                           0x00007f382d221642: mov    $0x1,%ebp
                           0x00007f382d221647: jmpq   0x00007f382d220c96
....................................................................................................
 25.99%   27.85%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 557 (1126 bytes) 

                                                                              ; - com.google.re2j.Machine::match@121 (line 201)
                                0x00007f382d249699: mov    %ebx,%r11d
                                0x00007f382d24969c: add    $0xffffffbf,%r11d
                                0x00007f382d2496a0: cmp    $0x1a,%r11d
                  ╭             0x00007f382d2496a4: jb     0x00007f382d2496b7  ;*if_icmple
                  │                                                           ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │                                                           ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                           ; - com.google.re2j.Machine::match@121 (line 201)
                  │             0x00007f382d2496a6: mov    %ebx,%r8d
                  │             0x00007f382d2496a9: add    $0xffffff9f,%r8d
  0.01%           │             0x00007f382d2496ad: cmp    $0x1a,%r8d
                  │             0x00007f382d2496b1: jae    0x00007f382d24a11c  ;*iconst_1
                  │                                                           ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │                                                           ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                           ; - com.google.re2j.Machine::match@121 (line 201)
  0.00%    0.00%  ↘             0x00007f382d2496b7: or     $0x10,%r10d        ;*iload_2
                                                                              ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                              ; - com.google.re2j.Machine::match@121 (line 201)
  0.01%                         0x00007f382d2496bb: mov    %ecx,0x38(%rsp)
  0.02%    0.00%                0x00007f382d2496bf: mov    %r9d,0x30(%rsp)
  0.01%                         0x00007f382d2496c4: mov    %ebx,0x28(%rsp)
                                0x00007f382d2496c8: mov    0x24(%r13),%r13d   ;*getfield pool
                                                                              ; - com.google.re2j.Machine::alloc@18 (line 134)
                                                                              ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                                                              ; - com.google.re2j.Machine::match@315 (line 239)
                                0x00007f382d2496cc: mov    0x40(%rsp),%r11
                                0x00007f382d2496d1: mov    0xc(%r11),%r8d     ;*getfield poolSize
                                                                              ; - com.google.re2j.Machine::alloc@1 (line 132)
                                                                              ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                                                              ; - com.google.re2j.Machine::match@315 (line 239)
  0.00%                         0x00007f382d2496d5: vmovd  %xmm0,%r9d
                                0x00007f382d2496da: mov    %r9,%r11
                                0x00007f382d2496dd: shl    $0x3,%r11          ;*getfield q1
                                                                              ; - com.google.re2j.Machine::match@53 (line 188)
                                0x00007f382d2496e1: mov    %r11,0x60(%rsp)
  0.00%                         0x00007f382d2496e6: xor    %ecx,%ecx
                                0x00007f382d2496e8: xor    %r9d,%r9d
                                0x00007f382d2496eb: mov    %r9d,0x5c(%rsp)
                   ╭            0x00007f382d2496f0: jmpq   0x00007f382d24987d
  0.02%    0.04%   │      ↗     0x00007f382d2496f5: or     $0x20,%r9d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                   │      │                                                   ; - com.google.re2j.Machine::match@323 (line 241)
  0.02%    0.01%   │      │     0x00007f382d2496f9: mov    %r9d,0x38(%rsp)    ;*iload_2
                   │      │                                                   ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   │      │                                                   ; - com.google.re2j.Machine::match@323 (line 241)
  0.21%    0.19%   │      │↗    0x00007f382d2496fe: mov    0x5c(%rsp),%r9d
  0.07%    0.07%   │      ││    0x00007f382d249703: cmp    %ecx,%r9d
                   │      ││    0x00007f382d249706: je     0x00007f382d24a023  ;*if_icmpne
                   │      ││                                                  ; - com.google.re2j.Machine::match@348 (line 242)
  0.04%    0.04%   │      ││    0x00007f382d24970c: xor    %eax,%eax          ;*invokespecial step
                   │      ││                                                  ; - com.google.re2j.Machine::match@356 (line 242)
  0.09%    0.11%   │      ││    0x00007f382d24970e: mov    %rax,-0x8(%rsp)
  0.36%    0.31%   │      ││    0x00007f382d249713: mov    0x5c(%rsp),%eax
  0.06%    0.04%   │      ││    0x00007f382d249717: mov    %eax,0x34(%rsp)
  0.17%    0.13%   │      ││    0x00007f382d24971b: mov    -0x8(%rsp),%rax
  0.12%    0.08%   │      ││    0x00007f382d249720: mov    %r8d,0x24(%rsp)
  0.24%    0.20%   │      ││    0x00007f382d249725: mov    %r10,0x50(%rsp)
  0.10%    0.12%   │      ││    0x00007f382d24972a: mov    %edi,0x20(%rsp)    ;*invokevirtual endPos
                   │      ││                                                  ; - com.google.re2j.Machine::match@345 (line 242)
  0.07%    0.08%   │      ││    0x00007f382d24972e: add    0x2c(%rsp),%r9d    ;*iadd
                   │      ││                                                  ; - com.google.re2j.Machine::match@337 (line 242)
  0.08%    0.03%   │      ││    0x00007f382d249733: mov    %r9d,0x5c(%rsp)
  0.27%    0.17%   │      ││    0x00007f382d249738: mov    0x40(%rsp),%rsi
  0.06%    0.06%   │      ││    0x00007f382d24973d: mov    0x18(%rsp),%rdx
  0.06%    0.05%   │      ││    0x00007f382d249742: mov    0x60(%rsp),%rcx
  0.03%    0.03%   │      ││    0x00007f382d249747: mov    0x34(%rsp),%r8d
  0.20%    0.19%   │      ││    0x00007f382d24974c: mov    0x28(%rsp),%edi
  0.07%    0.07%   │      ││    0x00007f382d249750: mov    0x38(%rsp),%r11d
  0.06%    0.04%   │      ││    0x00007f382d249755: mov    %r11d,(%rsp)
  0.05%    0.04%   │      ││    0x00007f382d249759: mov    0x3c(%rsp),%r10d
  0.24%    0.16%   │      ││    0x00007f382d24975e: mov    %r10d,0x8(%rsp)
  0.03%    0.06%   │      ││    0x00007f382d249763: mov    %eax,0x10(%rsp)
  0.09%    0.06%   │      ││    0x00007f382d249767: callq  0x00007f382d046020  ; OopMap{[24]=Oop [32]=NarrowOop [64]=Oop [80]=Oop [96]=Oop off=748}
                   │      ││                                                  ;*invokespecial step
                   │      ││                                                  ; - com.google.re2j.Machine::match@356 (line 242)
                   │      ││                                                  ;   {optimized virtual_call}
  0.00%    0.00%   │      ││    0x00007f382d24976c: mov    0x40(%rsp),%r10
  0.38%    0.42%   │      ││    0x00007f382d249771: mov    0x24(%r10),%r13d   ;*getfield pool
                   │      ││                                                  ; - com.google.re2j.Machine::freeQueue@1 (line 156)
                   │      ││                                                  ; - com.google.re2j.Machine::freeQueue@15 (line 150)
                   │      ││                                                  ; - com.google.re2j.Machine::freeQueue@3 (line 144)
                   │      ││                                                  ; - com.google.re2j.Machine::match@445 (line 263)
           0.01%   │      ││    0x00007f382d249775: mov    0xc(%r10),%r8d     ;*getfield poolSize
                   │      ││                                                  ; - com.google.re2j.Machine::freeQueue@8 (line 157)
                   │      ││                                                  ; - com.google.re2j.Machine::freeQueue@15 (line 150)
                   │      ││                                                  ; - com.google.re2j.Machine::freeQueue@3 (line 144)
                   │      ││                                                  ; - com.google.re2j.Machine::match@445 (line 263)
           0.00%   │      ││    0x00007f382d249779: mov    0x2c(%rsp),%r11d
           0.00%   │      ││    0x00007f382d24977e: test   %r11d,%r11d
                   │      ││    0x00007f382d249781: je     0x00007f382d249f60  ;*ifne
                   │      ││                                                  ; - com.google.re2j.Machine::match@361 (line 243)
  0.39%    0.34%   │      ││    0x00007f382d249787: mov    0x28(%r10),%edi    ;*getfield matchcap
                   │      ││                                                  ; - com.google.re2j.Machine::match@368 (line 246)
  0.00%    0.01%   │      ││    0x00007f382d24978b: mov    0xc(%r12,%rdi,8),%ebp  ;*arraylength
                   │      ││                                                  ; - com.google.re2j.Machine::match@371 (line 246)
                   │      ││                                                  ; implicit exception: dispatches to 0x00007f382d24b531
  0.04%    0.04%   │      ││    0x00007f382d249790: test   %ebp,%ebp
                   │      ││    0x00007f382d249792: je     0x00007f382d24a691  ;*ifne
                   │      ││                                                  ; - com.google.re2j.Machine::match@372 (line 246)
  0.01%    0.01%   │      ││    0x00007f382d249798: mov    0x50(%rsp),%r10
  0.27%    0.20%   │      ││    0x00007f382d24979d: mov    0x10(%r10),%ebx    ;*getfield end
                   │      ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                   │      ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.00%            │      ││    0x00007f382d2497a1: mov    0xc(%r10),%eax     ;*getfield start
                   │      ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                   │      ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.00%            │      ││    0x00007f382d2497a5: mov    0x14(%r10),%edx    ;*getfield str
                   │      ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                   │      ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.02%    0.01%   │      ││    0x00007f382d2497a9: mov    0x24(%rsp),%r9d
  0.31%    0.13%   │      ││    0x00007f382d2497ae: cmp    $0xffffffff,%r9d
                   │      ││    0x00007f382d2497b2: je     0x00007f382d24a02d  ;*if_icmpeq
                   │      ││                                                  ; - com.google.re2j.Machine::match@401 (line 254)
           0.00%   │      ││    0x00007f382d2497b8: mov    %r9d,0x28(%rsp)
  0.01%    0.00%   │      ││    0x00007f382d2497bd: mov    0x30(%rsp),%ecx
                   │      ││    0x00007f382d2497c1: add    0x5c(%rsp),%ecx
  0.36%    0.38%   │      ││    0x00007f382d2497c5: add    %eax,%ecx          ;*iadd
                   │      ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                   │      ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.00%    0.00%   │      ││    0x00007f382d2497c7: cmp    %ebx,%ecx
                   │      ││    0x00007f382d2497c9: jge    0x00007f382d24a015  ;*if_icmpge
                   │      ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                   │      ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
           0.01%   │      ││    0x00007f382d2497cf: mov    0x8(%r12,%rdx,8),%r11d  ; implicit exception: dispatches to 0x00007f382d24b541
  0.03%    0.03%   │      ││    0x00007f382d2497d4: cmp    $0xf80002da,%r11d  ;   {metadata(&apos;java/lang/String&apos;)}
                   │      ││    0x00007f382d2497db: jne    0x00007f382d24a355
  0.36%    0.49%   │      ││    0x00007f382d2497e1: lea    (%r12,%rdx,8),%r14  ;*invokeinterface charAt
                   │      ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │      ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │      ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.00%            │      ││    0x00007f382d2497e5: test   %ecx,%ecx
                   │      ││    0x00007f382d2497e7: jl     0x00007f382d24a509  ;*iflt
                   │      ││                                                  ; - java.lang.String::charAt@1 (line 657)
                   │      ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │      ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │      ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
           0.02%   │      ││    0x00007f382d2497ed: mov    0xc(%r14),%r9d     ;*getfield value
                   │      ││                                                  ; - java.lang.String::charAt@6 (line 657)
                   │      ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │      ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │      ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.02%    0.02%   │      ││    0x00007f382d2497f1: mov    0xc(%r12,%r9,8),%ebp  ;*arraylength
                   │      ││                                                  ; - java.lang.String::charAt@9 (line 657)
                   │      ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │      ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │      ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
                   │      ││                                                  ; implicit exception: dispatches to 0x00007f382d24b555
  0.51%    0.75%   │      ││    0x00007f382d2497f6: cmp    %ebp,%ecx
                   │      ││    0x00007f382d2497f8: jge    0x00007f382d24a6d1  ;*if_icmplt
                   │      ││                                                  ; - java.lang.String::charAt@10 (line 657)
                   │      ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │      ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │      ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.17%    0.27%   │      ││    0x00007f382d2497fe: cmp    %ebp,%ecx
  0.01%    0.03%   │      ││    0x00007f382d249800: jae    0x00007f382d24a225
  0.19%    0.28%   │      ││    0x00007f382d249806: lea    (%r12,%r9,8),%r10
  0.16%    0.11%   │      ││    0x00007f382d24980a: movzwl 0x10(%r10,%rcx,2),%r9d  ;*caload
                   │      ││                                                  ; - java.lang.String::charAt@27 (line 660)
                   │      ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │      ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │      ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
           0.05%   │      ││    0x00007f382d249810: cmp    $0xd800,%r9d
                   │      ││    0x00007f382d249817: jge    0x00007f382d24a751  ;*if_icmplt
                   │      ││                                                  ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   │      ││                                                  ; - java.lang.Character::codePointAt@9 (line 4867)
                   │      ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │      ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.16%    0.16%   │      ││    0x00007f382d24981d: shl    $0x3,%r9d          ;*ishl
                   │      ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                   │      ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.11%    0.21%   │      ││    0x00007f382d249821: mov    %r9d,%r11d
  0.13%    0.26%   │      ││    0x00007f382d249824: or     $0x1,%r11d
  0.13%    0.19%   │      ││    0x00007f382d249828: and    $0x7,%r9d
  0.19%    0.20%   │      ││    0x00007f382d24982c: sar    $0x3,%r11d         ;*ishr
                   │      ││                                                  ; - com.google.re2j.Machine::match@417 (line 256)
  0.08%    0.15%   │      ││    0x00007f382d249830: or     $0x1,%r9d          ; OopMap{rdi=NarrowOop rdx=NarrowOop r13=NarrowOop [24]=Oop [64]=Oop [80]=Oop [96]=Oop off=948}
                   │      ││                                                  ;*goto
                   │      ││                                                  ; - com.google.re2j.Machine::match@439 (line 262)
  0.23%    0.33%   │      ││    0x00007f382d249834: test   %eax,0x17ec07c6(%rip)        # 0x00007f384510a000
                   │      ││                                                  ;*goto
                   │      ││                                                  ; - com.google.re2j.Machine::match@439 (line 262)
                   │      ││                                                  ;   {poll}
           0.01%   │      ││    0x00007f382d24983a: mov    0x40(%rsp),%r10
  0.02%    0.04%   │      ││    0x00007f382d24983f: movzbl 0x10(%r10),%ecx    ;*getfield matched
                   │      ││                                                  ; - com.google.re2j.Machine::match@159 (line 212)
  0.15%    0.12%   │      ││    0x00007f382d249844: mov    0x60(%rsp),%r10
  0.25%    0.27%   │      ││    0x00007f382d249849: mov    %r10,%rsi
  0.00%            │      ││    0x00007f382d24984c: shr    $0x3,%rsi
  0.02%    0.06%   │      ││    0x00007f382d249850: mov    %esi,0x34(%rsp)
  0.08%    0.19%   │      ││    0x00007f382d249854: mov    0x38(%rsp),%r10d
  0.21%    0.25%   │      ││    0x00007f382d249859: mov    %r11d,0x38(%rsp)
           0.01%   │      ││    0x00007f382d24985e: mov    0x18(%rsp),%r11
  0.04%    0.04%   │      ││    0x00007f382d249863: mov    %r11,0x60(%rsp)
  0.14%    0.18%   │      ││    0x00007f382d249868: mov    0x30(%rsp),%esi
  0.17%    0.26%   │      ││    0x00007f382d24986c: mov    %esi,0x2c(%rsp)
  0.00%            │      ││    0x00007f382d249870: mov    %r9d,0x30(%rsp)
  0.01%    0.04%   │      ││    0x00007f382d249875: vmovd  %edi,%xmm6
  0.16%    0.21%   │      ││    0x00007f382d249879: mov    %ebx,0x14(%rsp)
  0.19%    0.24%   ↘      ││    0x00007f382d24987d: mov    0x34(%rsp),%r11d
           0.00%          ││    0x00007f382d249882: movzbl 0x18(%r12,%r11,8),%r9d  ; implicit exception: dispatches to 0x00007f382d24b4ad
  0.05%    0.07%          ││    0x00007f382d249888: shl    $0x3,%r11          ;*aload
                          ││                                                  ; - com.google.re2j.Machine::match@136 (line 207)
  0.20%    0.16%          ││    0x00007f382d24988c: mov    %r11,0x18(%rsp)
  0.17%    0.32%          ││    0x00007f382d249891: test   %r9d,%r9d
                          ││    0x00007f382d249894: jne    0x00007f382d249be3  ;*aload_0
                          ││                                                  ; - com.google.re2j.Machine::match@267 (line 233)
  0.00%    0.00%          ││    0x00007f382d24989a: test   %ecx,%ecx
                          ││    0x00007f382d24989c: jne    0x00007f382d24a3c1  ;*ifne
                          ││                                                  ; - com.google.re2j.Machine::match@271 (line 233)
  0.03%    0.06%          ││    0x00007f382d2498a2: mov    0x5c(%rsp),%r11d
  0.16%    0.13%          ││    0x00007f382d2498a7: test   %r11d,%r11d
                          ││    0x00007f382d2498aa: je     0x00007f382d24a0da  ;*ifeq
                          ││                                                  ; - com.google.re2j.Machine::match@275 (line 233)
  0.24%    0.29%          ││    0x00007f382d2498b0: mov    0x3c(%rsp),%ecx
  0.01%                   ││    0x00007f382d2498b4: test   %ecx,%ecx
                          ││    0x00007f382d2498b6: jne    0x00007f382d24a4b9  ;*aload_0
                          ││                                                  ; - com.google.re2j.Machine::match@282 (line 236)
  0.04%    0.03%          ││    0x00007f382d2498bc: vmovd  %xmm6,%ebx
  0.12%    0.14%          ││    0x00007f382d2498c0: mov    0xc(%r12,%rbx,8),%r9d  ;*arraylength
                          ││                                                  ; - com.google.re2j.Machine::match@286 (line 236)
                          ││                                                  ; implicit exception: dispatches to 0x00007f382d24b4bd
  0.24%    0.30%          ││    0x00007f382d2498c5: test   %r9d,%r9d
                          ││    0x00007f382d2498c8: jle    0x00007f382d24a411  ;*ifle
                          ││                                                  ; - com.google.re2j.Machine::match@287 (line 236)
  0.00%    0.00%          ││    0x00007f382d2498ce: test   %r9d,%r9d
                          ││    0x00007f382d2498d1: jbe    0x00007f382d24a29d  ;*iastore
                          ││                                                  ; - com.google.re2j.Machine::match@296 (line 237)
  0.03%    0.01%          ││    0x00007f382d2498d7: mov    %r9d,%r14d
  0.13%    0.13%          ││    0x00007f382d2498da: mov    %rax,-0x8(%rsp)
  0.20%    0.19%          ││    0x00007f382d2498df: mov    0x5c(%rsp),%eax
  0.01%                   ││    0x00007f382d2498e3: mov    %eax,0x4c(%rsp)
  0.04%    0.04%          ││    0x00007f382d2498e7: mov    -0x8(%rsp),%rax
  0.62%    0.38%          ││    0x00007f382d2498ec: mov    %ecx,0x3c(%rsp)
  0.24%    0.20%          ││    0x00007f382d2498f0: mov    0x40(%rsp),%r11
  0.01%    0.00%          ││    0x00007f382d2498f5: mov    0x18(%r11),%r9d    ;*getfield prog
                          ││                                                  ; - com.google.re2j.Machine::match@298 (line 239)
  0.08%    0.04%          ││    0x00007f382d2498f9: lea    (%r12,%rbx,8),%rsi  ;*getfield matchcap
                          ││                                                  ; - com.google.re2j.Machine::match@283 (line 236)
  0.14%    0.21%          ││    0x00007f382d2498fd: lea    0x10(%r12,%rbx,8),%rdi
  0.16%    0.30%          ││    0x00007f382d249902: mov    0x5c(%rsp),%r11d
                          ││    0x00007f382d249907: mov    %r11d,(%rdi)       ;*iastore
                          ││                                                  ; - com.google.re2j.Machine::match@296 (line 237)
  0.04%    0.06%          ││    0x00007f382d24990a: mov    0x1c(%r12,%r9,8),%ebp  ;*getfield startInst
                          ││                                                  ; - com.google.re2j.Machine::match@301 (line 239)
                          ││                                                  ; implicit exception: dispatches to 0x00007f382d24b4cd
  0.20%    0.10%          ││    0x00007f382d24990f: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f382d24b4dd
  0.59%    0.62%          ││    0x00007f382d249914: cmp    $0xf8019992,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                          ││    0x00007f382d24991b: jne    0x00007f382d24a2fd
  0.21%    0.19%          ││    0x00007f382d249921: lea    (%r12,%rbp,8),%rdx  ;*invokevirtual add
                          ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.01%                   ││    0x00007f382d249925: mov    0x18(%rdx),%r10d   ;*getfield pc
                          ││                                                  ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                          ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.08%    0.06%          ││    0x00007f382d249929: mov    %r10d,%eax
  0.08%    0.07%          ││    0x00007f382d24992c: cmp    $0x40,%r10d
                          ││    0x00007f382d249930: jg     0x00007f382d24a581  ;*if_icmpgt
                          ││                                                  ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                          ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                          ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.23%    0.17%          ││    0x00007f382d249936: mov    $0x1,%r10d
           0.01%          ││    0x00007f382d24993c: mov    %eax,%ecx
  0.06%    0.02%          ││    0x00007f382d24993e: shl    %cl,%r10           ;*lshl
                          ││                                                  ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                          ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                          ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.67%    0.71%          ││    0x00007f382d249941: mov    0x34(%rsp),%r9d
  0.04%    0.03%          ││    0x00007f382d249946: mov    0x10(%r12,%r9,8),%r9  ;*getfield pcsl
                          ││                                                  ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                          ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                          ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.06%    0.11%          ││    0x00007f382d24994b: mov    %r9,%r11
                          ││    0x00007f382d24994e: and    %r10,%r11          ;*land
                          ││                                                  ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                          ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                          ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.25%    0.31%          ││    0x00007f382d249951: test   %r11,%r11
                          ││    0x00007f382d249954: jne    0x00007f382d24a0e3  ;*ifeq
                          ││                                                  ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                          ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                          ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.04%    0.06%          ││    0x00007f382d24995a: xor    %ebp,%ebp          ;*ireturn
                          ││                                                  ; - com.google.re2j.Machine$Queue::contains@24 (line 47)
                          ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                          ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.04%    0.04%          ││    0x00007f382d24995c: test   %r11,%r11
                          ││    0x00007f382d24995f: jne    0x00007f382d24a5dd  ;*ifeq
                          ││                                                  ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                          ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.10%    0.13%          ││    0x00007f382d249965: cmp    $0x40,%ecx
                          ││    0x00007f382d249968: jge    0x00007f382d24a635  ;*if_icmpge
                          ││                                                  ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                          ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                          ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.20%    0.22%          ││    0x00007f382d24996e: mov    0x34(%rsp),%r11d
  0.04%    0.05%          ││    0x00007f382d249973: mov    %r12b,0x18(%r12,%r11,8)  ;*putfield empty
                          ││                                                  ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                          ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                          ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.05%    0.04%          ││    0x00007f382d249978: or     %r9,%r10
  0.10%    0.16%          ││    0x00007f382d24997b: mov    %r10,0x10(%r12,%r11,8)  ;*putfield pcsl
                          ││                                                  ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                          ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                          ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.20%    0.20%          ││    0x00007f382d249980: test   %r8d,%r8d
                          ││    0x00007f382d249983: jle    0x00007f382d24a461  ;*ifle
                          ││                                                  ; - com.google.re2j.Machine::alloc@4 (line 132)
                          ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                          ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.05%    0.03%          ││    0x00007f382d249989: mov    %r8d,%ebp
  0.06%    0.03%          ││    0x00007f382d24998c: dec    %ebp               ;*isub
                          ││                                                  ; - com.google.re2j.Machine::alloc@13 (line 133)
                          ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                          ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.08%    0.17%          ││    0x00007f382d24998e: mov    0x40(%rsp),%r10
  0.16%    0.21%          ││    0x00007f382d249993: mov    %ebp,0xc(%r10)     ;*putfield poolSize
                          ││                                                  ; - com.google.re2j.Machine::alloc@14 (line 133)
                          ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                          ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.02%    0.05%          ││    0x00007f382d249997: mov    0xc(%r12,%r13,8),%r11d  ; implicit exception: dispatches to 0x00007f382d24b4f9
  0.06%    0.05%          ││    0x00007f382d24999c: cmp    %r11d,%ebp
                          ││    0x00007f382d24999f: jae    0x00007f382d24a16b
  0.14%    0.13%          ││    0x00007f382d2499a5: lea    (%r12,%r13,8),%r10
  0.17%    0.24%          ││    0x00007f382d2499a9: mov    0xc(%r10,%r8,4),%r10d  ;*aaload
                          ││                                                  ; - com.google.re2j.Machine::alloc@25 (line 134)
                          ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                          ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.05%    0.03%          ││    0x00007f382d2499ae: mov    %r10d,0x58(%rsp)
  0.02%    0.06%          ││    0x00007f382d2499b3: mov    0xc(%r12,%r10,8),%r9d  ;*getfield cap
                          ││                                                  ; - com.google.re2j.Inst$MatchInst::add@51 (line 103)
                          ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
                          ││                                                  ; implicit exception: dispatches to 0x00007f382d24b509
  0.12%    0.17%          ││    0x00007f382d2499b8: lea    (%r12,%r10,8),%rbp  ;*aaload
                          ││                                                  ; - com.google.re2j.Machine::alloc@25 (line 134)
                          ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                          ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.14%    0.17%          ││    0x00007f382d2499bc: mov    %rdx,%r11
  0.04%    0.04%          ││    0x00007f382d2499bf: shr    $0x3,%r11
  0.06%    0.07%          ││    0x00007f382d2499c3: mov    %r11d,0x10(%r12,%r10,8)
  0.11%    0.17%          ││    0x00007f382d2499c8: mov    %rbp,%r10
  0.17%    0.21%          ││    0x00007f382d2499cb: shr    $0x9,%r10
  0.02%    0.05%          ││    0x00007f382d2499cf: movabs $0x7f383db12000,%r11
  0.08%    0.06%          ││    0x00007f382d2499d9: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                          ││                                                  ; - com.google.re2j.Machine::alloc@45 (line 138)
                          ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                          ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.07%    0.16%          ││    0x00007f382d2499dd: cmp    %ebx,%r9d
                    ╭     ││    0x00007f382d2499e0: jne    0x00007f382d2499ed  ;*if_acmpeq
                    │     ││                                                  ; - com.google.re2j.Inst$MatchInst::add@55 (line 103)
                    │     ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
                    │     ││    0x00007f382d2499e2: mov    0x50(%rsp),%r10
                    │     ││    0x00007f382d2499e7: mov    0x14(%rsp),%ecx
                    │╭    ││    0x00007f382d2499eb: jmp    0x00007f382d249a1d
  0.14%    0.24%    ↘│    ││    0x00007f382d2499ed: mov    0xc(%r12,%r9,8),%r10d  ; implicit exception: dispatches to 0x00007f382d24b565
  0.07%    0.09%     │    ││    0x00007f382d2499f2: lea    (%r12,%r9,8),%rcx  ;*getfield cap
                     │    ││                                                  ; - com.google.re2j.Inst$MatchInst::add@51 (line 103)
                     │    ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.03%    0.07%     │    ││    0x00007f382d2499f6: cmp    %r14d,%r10d
                     │    ││    0x00007f382d2499f9: jb     0x00007f382d24a3ad
  0.18%    0.12%     │    ││    0x00007f382d2499ff: lea    0x10(%r12,%r9,8),%rsi
  0.15%    0.20%     │    ││    0x00007f382d249a04: movslq %r14d,%rdx
  0.03%    0.07%     │    ││    0x00007f382d249a07: movabs $0x7f382d052640,%r10
  0.05%    0.10%     │    ││    0x00007f382d249a11: callq  *%r10              ;*invokestatic arraycopy
                     │    ││                                                  ; - com.google.re2j.Inst$MatchInst::add@68 (line 104)
                     │    ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.01%    0.00%     │    ││    0x00007f382d249a14: mov    0x50(%rsp),%r10
  0.11%    0.13%     │    ││    0x00007f382d249a19: mov    0x10(%r10),%ecx    ;*aload_1
                     │    ││                                                  ; - com.google.re2j.Inst$MatchInst::add@71 (line 106)
                     │    ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.26%    0.07%     ↘    ││    0x00007f382d249a1d: mov    0x34(%rsp),%edi
                          ││    0x00007f382d249a21: mov    0xc(%r12,%rdi,8),%r11d  ;*getfield size
                          ││                                                  ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                          ││                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                          ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.13%    0.14%          ││    0x00007f382d249a26: mov    0x20(%r12,%rdi,8),%edx  ;*getfield denseThreads
                          ││                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                          ││                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                          ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.01%    0.01%          ││    0x00007f382d249a2b: mov    %r11d,%r9d
  0.24%    0.29%          ││    0x00007f382d249a2e: inc    %r9d
  0.02%    0.01%          ││    0x00007f382d249a31: mov    %r9d,0xc(%r12,%rdi,8)  ;*putfield size
                          ││                                                  ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                          ││                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                          ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.07%    0.16%          ││    0x00007f382d249a36: mov    0xc(%r12,%rdx,8),%r9d  ; implicit exception: dispatches to 0x00007f382d24b51d
  0.12%    0.16%          ││    0x00007f382d249a3b: cmp    %r9d,%r11d
                          ││    0x00007f382d249a3e: jae    0x00007f382d24a1bd  ;*aastore
                          ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                          ││                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                          ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.37%    0.55%          ││    0x00007f382d249a44: mov    0x28(%rsp),%ebx
                          ││    0x00007f382d249a48: test   %ebx,%ebx
                      ╭   ││    0x00007f382d249a4a: jl     0x00007f382d249af8  ;*ifge
                      │   ││                                                  ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                      │   ││                                                  ; - com.google.re2j.Machine::match@323 (line 241)
  0.05%    0.07%      │   ││    0x00007f382d249a50: xor    %r9d,%r9d          ;*iload_0
                      │   ││                                                  ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                      │   ││                                                  ; - com.google.re2j.Machine::match@323 (line 241)
  0.01%    0.04%      │   ││↗   0x00007f382d249a53: cmp    $0xa,%ebx
                      │   │││   0x00007f382d249a56: je     0x00007f382d24a042  ;*iload_1
                      │   │││                                                 ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                      │   │││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.31%    0.45%      │   │││   0x00007f382d249a5c: mov    0x38(%rsp),%r8d
                      │   │││   0x00007f382d249a61: test   %r8d,%r8d
                      │╭  │││   0x00007f382d249a64: jl     0x00007f382d249b03  ;*iload_1
                      ││  │││                                                 ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                      ││  │││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.08%    0.09%      ││  │││↗  0x00007f382d249a6a: cmp    $0xa,%r8d
                      ││  ││││  0x00007f382d249a6e: je     0x00007f382d24a04b  ;*iload_0
                      ││  ││││                                                ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                      ││  ││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.01%    0.02%      ││  ││││  0x00007f382d249a74: shl    $0x3,%rdx          ;*getfield denseThreads
                      ││  ││││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                      ││  ││││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                      ││  ││││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.24%    0.37%      ││  ││││  0x00007f382d249a78: lea    0x10(%rdx,%r11,4),%rdx
  0.00%               ││  ││││  0x00007f382d249a7d: mov    0x58(%rsp),%r11d
  0.09%    0.05%      ││  ││││  0x00007f382d249a82: mov    %r11d,(%rdx)
  1.11%    1.28%      ││  ││││  0x00007f382d249a85: mov    0x28(%rsp),%r11d
  0.07%    0.07%      ││  ││││  0x00007f382d249a8a: add    $0xffffffbf,%r11d
                      ││  ││││  0x00007f382d249a8e: shr    $0x9,%rdx
  0.03%    0.01%      ││  ││││  0x00007f382d249a92: movabs $0x7f383db12000,%rsi
  0.29%    0.35%      ││  ││││  0x00007f382d249a9c: mov    %r12b,(%rsi,%rdx,1)  ;*aastore
                      ││  ││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                      ││  ││││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                      ││  ││││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.19%    0.19%      ││  ││││  0x00007f382d249aa0: cmp    $0x1a,%r11d
                      ││╭ ││││  0x00007f382d249aa4: jb     0x00007f382d249ab9  ;*if_icmple
                      │││ ││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                      │││ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                      │││ ││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
                      │││ ││││  0x00007f382d249aa6: mov    0x28(%rsp),%r11d
  0.00%    0.00%      │││ ││││  0x00007f382d249aab: add    $0xffffff9f,%r11d
  0.30%    0.30%      │││ ││││  0x00007f382d249aaf: cmp    $0x1a,%r11d
                      │││ ││││  0x00007f382d249ab3: jae    0x00007f382d24a099  ;*iconst_1
                      │││ ││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                      │││ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                      │││ ││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.09%    0.09%      ││↘ ││││  0x00007f382d249ab9: mov    $0x1,%ebp          ;*ireturn
                      ││  ││││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                      ││  ││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                      ││  ││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.00%               ││  ││││  0x00007f382d249abe: mov    0x38(%rsp),%edx
  0.06%    0.06%      ││  ││││  0x00007f382d249ac2: add    $0xffffffbf,%edx
  0.24%    0.26%      ││  ││││  0x00007f382d249ac5: cmp    $0x1a,%edx
                      ││ ╭││││  0x00007f382d249ac8: jb     0x00007f382d249add  ;*if_icmple
                      ││ │││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                      ││ │││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                      ││ │││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.08%    0.09%      ││ │││││  0x00007f382d249aca: mov    0x38(%rsp),%r11d
  0.00%    0.00%      ││ │││││  0x00007f382d249acf: add    $0xffffff9f,%r11d
  0.04%    0.05%      ││ │││││  0x00007f382d249ad3: cmp    $0x1a,%r11d
                      ││ │││││  0x00007f382d249ad7: jae    0x00007f382d24a0b9  ;*iconst_1
                      ││ │││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                      ││ │││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                      ││ │││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.26%    0.25%      ││ ↘││││  0x00007f382d249add: mov    $0x1,%edx          ;*ireturn
                      ││  ││││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                      ││  ││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                      ││  ││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.07%    0.09%      ││  ││││  0x00007f382d249ae2: cmp    %edx,%ebp
                      ││  ╰│││  0x00007f382d249ae4: je     0x00007f382d2496f5  ;*if_icmpeq
                      ││   │││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                      ││   │││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.07%    0.05%      ││   │││  0x00007f382d249aea: or     $0x10,%r9d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                      ││   │││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.04%    0.05%      ││   │││  0x00007f382d249aee: mov    %r9d,0x38(%rsp)
  0.11%    0.08%      ││   ╰││  0x00007f382d249af3: jmpq   0x00007f382d2496fe
                      ↘│    ││  0x00007f382d249af8: mov    $0x5,%r9d
                       │    ╰│  0x00007f382d249afe: jmpq   0x00007f382d249a53
                       ↘     │  0x00007f382d249b03: or     $0xa,%r9d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@27 (line 180)
                             │                                                ; - com.google.re2j.Machine::match@323 (line 241)
                             ╰  0x00007f382d249b07: jmpq   0x00007f382d249a6a
                                0x00007f382d249b0c: nopl   0x0(%rax)
                                0x00007f382d249b10: mov    %r9d,%ebp
  0.00%                         0x00007f382d249b13: jmpq   0x00007f382d249d8e
                                0x00007f382d249b18: mov    %ebp,%r11d
                                0x00007f382d249b1b: inc    %r11d
                                0x00007f382d249b1e: mov    %ebp,%r9d
                                0x00007f382d249b21: mov    %r11d,0x58(%rsp)
                                0x00007f382d249b26: jmp    0x00007f382d249b3b
                                0x00007f382d249b28: mov    %ebp,%r9d
                                0x00007f382d249b2b: add    $0x2,%r9d
                                0x00007f382d249b2f: mov    %ebp,%r11d
                                0x00007f382d249b32: add    $0x3,%r11d
                                0x00007f382d249b36: mov    %r11d,0x58(%rsp)
....................................................................................................
 22.36%   24.75%  <total for region 3>

....[Hottest Regions]...............................................................................
 29.17%   26.09%         C2, level 4  com.google.re2j.Machine::step, version 504 (1200 bytes) 
 25.99%   27.85%         C2, level 4  com.google.re2j.Machine::step, version 504 (605 bytes) 
 22.36%   24.75%         C2, level 4  com.google.re2j.Machine::match, version 557 (1126 bytes) 
  7.44%    8.03%        runtime stub  StubRoutines::jint_disjoint_arraycopy (128 bytes) 
  7.39%    7.60%         C2, level 4  com.google.re2j.Machine::step, version 504 (365 bytes) 
  2.42%    2.40%   [kernel.kallsyms]  [unknown] (6 bytes) 
  0.66%    0.67%         C2, level 4  com.google.re2j.Machine::match, version 557 (271 bytes) 
  0.36%    0.04%         C2, level 4  com.google.re2j.Machine::init, version 550 (182 bytes) 
  0.25%    0.07%         C2, level 4  com.google.re2j.Machine::init, version 550 (151 bytes) 
  0.19%    0.07%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 634 (243 bytes) 
  0.12%            [kernel.kallsyms]  [unknown] (0 bytes) 
  0.10%    0.08%         C2, level 4  com.google.re2j.Machine::match, version 557 (178 bytes) 
  0.09%    0.02%         C2, level 4  com.google.re2j.Machine::init, version 550 (36 bytes) 
  0.08%    0.00%   [kernel.kallsyms]  [unknown] (37 bytes) 
  0.08%    0.03%         C2, level 4  com.google.re2j.Matcher::genMatch, version 577 (20 bytes) 
  0.07%            [kernel.kallsyms]  [unknown] (39 bytes) 
  0.07%    0.06%         C2, level 4  com.google.re2j.Matcher::genMatch, version 577 (0 bytes) 
  0.06%    0.09%         C2, level 4  com.google.re2j.Machine::init, version 550 (25 bytes) 
  0.06%    0.04%         C2, level 4  com.google.re2j.Machine::match, version 557 (78 bytes) 
  0.06%    0.03%         C2, level 4  java.util.Collections::shuffle, version 583 (17 bytes) 
  2.96%    2.07%  <...other 473 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 62.55%   61.54%         C2, level 4  com.google.re2j.Machine::step, version 504 
 23.40%   25.67%         C2, level 4  com.google.re2j.Machine::match, version 557 
  7.44%    8.03%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
  4.20%    3.26%   [kernel.kallsyms]  [unknown] 
  0.83%    0.23%         C2, level 4  com.google.re2j.Machine::init, version 550 
  0.33%    0.22%         C2, level 4  com.google.re2j.Matcher::genMatch, version 577 
  0.30%    0.08%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 634 
  0.11%    0.06%         C2, level 4  java.util.Collections::shuffle, version 583 
  0.07%    0.05%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.05%    0.05%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.04%    0.09%        libc-2.26.so  _IO_fwrite 
  0.03%    0.01%      hsdis-amd64.so  [unknown] 
  0.02%    0.01%        runtime stub  StubRoutines::arrayof_jint_fill 
  0.02%    0.01%              [vdso]  [unknown] 
  0.02%    0.01%        libc-2.26.so  __strchr_avx2 
  0.02%    0.03%           libjvm.so  _ZN12outputStream15update_positionEPKcm 
  0.02%    0.00%           libjvm.so  _ZN7Monitor6unlockEv 
  0.01%    0.02%        libc-2.26.so  __strlen_avx2 
  0.01%    0.05%           libjvm.so  _ZN13xmlTextStream5writeEPKcm 
  0.01%                 libc-2.26.so  _IO_vsnprintf 
  0.49%    0.38%  <...other 77 warm methods...>
....................................................................................................
100.00%   99.81%  <totals>

....[Distribution by Source]........................................................................
 87.54%   87.79%         C2, level 4
  7.47%    8.07%        runtime stub
  4.20%    3.26%   [kernel.kallsyms]
  0.45%    0.45%           libjvm.so
  0.18%    0.35%        libc-2.26.so
  0.04%    0.04%  libpthread-2.26.so
  0.04%    0.00%         interpreter
  0.04%    0.01%      hsdis-amd64.so
  0.02%    0.01%              [vdso]
  0.01%    0.00%         C1, level 3
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                     Mode  Cnt      Score     Error  Units
Re2jFindRegex.testExp1       thrpt   20  11782.293 ± 209.397  ops/s
Re2jFindRegex.testExp1:·asm  thrpt             NaN              ---
