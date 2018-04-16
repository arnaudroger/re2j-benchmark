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
# Warmup Iteration   1: 5809.069 ops/s
# Warmup Iteration   2: 14241.284 ops/s
# Warmup Iteration   3: 15065.871 ops/s
# Warmup Iteration   4: 15208.526 ops/s
# Warmup Iteration   5: 15070.874 ops/s
# Warmup Iteration   6: 15042.104 ops/s
# Warmup Iteration   7: 15273.833 ops/s
# Warmup Iteration   8: 15123.190 ops/s
# Warmup Iteration   9: 15247.253 ops/s
# Warmup Iteration  10: 15125.991 ops/s
# Warmup Iteration  11: 14774.225 ops/s
# Warmup Iteration  12: 14424.181 ops/s
# Warmup Iteration  13: 14962.637 ops/s
# Warmup Iteration  14: 15276.356 ops/s
# Warmup Iteration  15: 15293.497 ops/s
# Warmup Iteration  16: 15247.954 ops/s
# Warmup Iteration  17: 15222.978 ops/s
# Warmup Iteration  18: 15049.772 ops/s
# Warmup Iteration  19: 15312.162 ops/s
# Warmup Iteration  20: 15280.871 ops/s
Iteration   1: 15257.873 ops/s
Iteration   2: 15232.705 ops/s
Iteration   3: 14807.977 ops/s
Iteration   4: 15198.082 ops/s
Iteration   5: 15281.026 ops/s
Iteration   6: 15253.891 ops/s
Iteration   7: 15236.201 ops/s
Iteration   8: 15173.200 ops/s
Iteration   9: 15256.418 ops/s
Iteration  10: 15250.283 ops/s
Iteration  11: 15277.109 ops/s
Iteration  12: 15221.593 ops/s
Iteration  13: 15244.102 ops/s
Iteration  14: 15251.844 ops/s
Iteration  15: 15271.865 ops/s
Iteration  16: 15202.606 ops/s
Iteration  17: 15215.381 ops/s
Iteration  18: 14975.412 ops/s
Iteration  19: 15294.494 ops/s
Iteration  20: 15299.728 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  15210.089 ±(99.9%) 101.393 ops/s [Average]
  (min, avg, max) = (14807.977, 15210.089, 15299.728), stdev = 116.765
  CI (99.9%): [15108.696, 15311.483] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1:·asm":
PrintAssembly processed: 214260 total address lines.
Perf output processed (skipped 22.992 seconds):
 Column 1: cycles (20429 events)
 Column 2: instructions (20476 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 538 (1150 bytes) 

                       # parm6:    [sp+0xc8]   = int
                       # parm7:    [sp+0xd0]   = boolean
                       0x00007fba5124ac40: mov    0x8(%rsi),%r10d
                       0x00007fba5124ac44: shl    $0x3,%r10
                       0x00007fba5124ac48: cmp    %r10,%rax
                       0x00007fba5124ac4b: jne    0x00007fba51045e20  ;   {runtime_call}
                       0x00007fba5124ac51: data16 xchg %ax,%ax
                       0x00007fba5124ac54: nopl   0x0(%rax,%rax,1)
                       0x00007fba5124ac5c: data16 data16 xchg %ax,%ax
                     [Verified Entry Point]
  0.31%    0.43%       0x00007fba5124ac60: mov    %eax,-0x14000(%rsp)
  0.10%    0.08%       0x00007fba5124ac67: push   %rbp
  0.25%    0.33%       0x00007fba5124ac68: sub    $0xb0,%rsp         ;*synchronization entry
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.11%    0.09%       0x00007fba5124ac6f: mov    %edi,0x18(%rsp)
  0.09%    0.06%       0x00007fba5124ac73: mov    %r9d,0x14(%rsp)
  0.25%    0.27%       0x00007fba5124ac78: mov    %r8d,0x10(%rsp)
  0.12%    0.17%       0x00007fba5124ac7d: vmovq  %rcx,%xmm0
  0.01%    0.02%       0x00007fba5124ac82: mov    %rdx,0x8(%rsp)
  0.10%    0.07%       0x00007fba5124ac87: mov    %rsi,0x20(%rsp)
  0.29%    0.23%       0x00007fba5124ac8c: mov    0x14(%rsi),%r10d   ;*getfield re2
                                                                     ; - com.google.re2j.Machine::step@1 (line 276)
  0.04%    0.06%       0x00007fba5124ac90: movzbl 0x18(%r12,%r10,8),%r10d  ;*getfield longest
                                                                     ; - com.google.re2j.Machine::step@4 (line 276)
                                                                     ; implicit exception: dispatches to 0x00007fba5124c929
  0.03%    0.00%       0x00007fba5124ac96: mov    %r10d,0x1c(%rsp)
  0.13%    0.04%       0x00007fba5124ac9b: mov    0xc(%rdx),%r11d    ; implicit exception: dispatches to 0x00007fba5124c939
  0.20%    0.13%       0x00007fba5124ac9f: test   %r11d,%r11d
                       0x00007fba5124aca2: jle    0x00007fba5124b5a7  ;*if_icmpge
                                                                     ; - com.google.re2j.Machine::step@18 (line 277)
  0.08%    0.08%       0x00007fba5124aca8: mov    0x1c(%rsp),%r10d
  0.26%    0.10%       0x00007fba5124acad: test   %r10d,%r10d
                       0x00007fba5124acb0: jne    0x00007fba5124bcf1  ;*aload_1
                                                                     ; - com.google.re2j.Machine::step@21 (line 278)
  0.12%    0.08%       0x00007fba5124acb6: mov    $0x1,%ebx
  0.17%    0.03%       0x00007fba5124acbb: xor    %r10d,%r10d
  0.06%    0.05%       0x00007fba5124acbe: jmpq   0x00007fba5124b4d3
  0.69%    0.91%       0x00007fba5124acc3: xor    %r8d,%r8d
  0.05%    0.13%       0x00007fba5124acc6: test   %r8d,%r8d
                  ╭    0x00007fba5124acc9: jne    0x00007fba5124acd5
                  │    0x00007fba5124accb: vmovq  %xmm0,%r11
  0.33%    0.23%  │    0x00007fba5124acd0: jmpq   0x00007fba5124b462
  0.02%    0.01%  ↘    0x00007fba5124acd5: mov    0x1c(%r11),%ecx    ;*getfield outInst
                                                                     ; - com.google.re2j.Machine::step@195 (line 300)
  0.04%    0.02%       0x00007fba5124acd9: mov    0xc(%r12,%r14,8),%eax  ;*getfield cap
                                                                     ; - com.google.re2j.Machine::step@203 (line 300)
  0.01%    0.01%       0x00007fba5124acde: mov    0x8(%r12,%rcx,8),%r11d  ; implicit exception: dispatches to 0x00007fba5124c88d
  1.61%    0.74%       0x00007fba5124ace3: lea    (%r12,%rcx,8),%r8
                       0x00007fba5124ace7: cmp    $0xf8019843,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$AltInst&apos;)}
                       0x00007fba5124acee: jne    0x00007fba5124b5e3  ;*invokevirtual add
                                                                     ; - com.google.re2j.Machine::step@211 (line 300)
  0.30%    0.45%       0x00007fba5124acf4: mov    0x18(%r8),%ecx     ;*getfield pc
                                                                     ; - com.google.re2j.Inst$AltInst::add@2 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%                0x00007fba5124acf8: vmovq  %xmm0,%r11
                       0x00007fba5124acfd: mov    0x10(%r11),%rsi    ;*getfield pcsl
                                                                     ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                                                                     ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                                                                     ; implicit exception: dispatches to 0x00007fba5124c8b1
                       0x00007fba5124ad01: cmp    $0x40,%ecx
                       0x00007fba5124ad04: jg     0x00007fba5124bb5d  ;*if_icmpgt
                                                                     ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                                                                     ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.36%    0.01%       0x00007fba5124ad0a: mov    $0x1,%r9d
                       0x00007fba5124ad10: shl    %cl,%r9            ;*lshl
                                                                     ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                                                                     ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.78%    0.02%       0x00007fba5124ad13: mov    %rsi,%rbp
                       0x00007fba5124ad16: and    %r9,%rbp
  0.01%    0.00%       0x00007fba5124ad19: test   %rbp,%rbp
                       0x00007fba5124ad1c: jne    0x00007fba5124b462  ;*ifeq
                                                                     ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                                                                     ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.26%    0.01%       0x00007fba5124ad22: cmp    $0x40,%ecx
                       0x00007fba5124ad25: jge    0x00007fba5124bba5  ;*if_icmpge
                                                                     ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                                                                     ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.10%    0.00%       0x00007fba5124ad2b: mov    %r12b,0x18(%r11)   ;*putfield empty
                                                                     ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                                                                     ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                       0x00007fba5124ad2f: mov    0x1c(%r8),%ebp     ;*getfield outInst
                                                                     ; - com.google.re2j.Inst$AltInst::add@23 (line 192)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                       0x00007fba5124ad33: or     %rsi,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                                                                     ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.28%    0.07%       0x00007fba5124ad36: mov    %r9,0x10(%r11)     ;*putfield pcsl
                                                                     ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                                                                     ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.25%    0.01%       0x00007fba5124ad3a: mov    0x8(%r12,%rbp,8),%esi  ; implicit exception: dispatches to 0x00007fba5124c8c5
  0.48%                0x00007fba5124ad3f: cmp    $0xf8019992,%esi   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                       0x00007fba5124ad45: jne    0x00007fba5124b849
  0.39%    0.04%       0x00007fba5124ad4b: shl    $0x3,%rbp          ;*invokevirtual add
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                       0x00007fba5124ad4f: mov    0x18(%rbp),%ecx    ;*getfield pc
                                                                     ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.40%    0.01%       0x00007fba5124ad52: cmp    $0x40,%ecx
                       0x00007fba5124ad55: jg     0x00007fba5124bbed  ;*if_icmpgt
                                                                     ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.35%    0.09%       0x00007fba5124ad5b: vmovq  %rbp,%xmm1
  0.06%    0.09%       0x00007fba5124ad60: mov    %r9,%rsi
                       0x00007fba5124ad63: vmovq  %r8,%xmm0
                       0x00007fba5124ad68: mov    %edi,0x28(%rsp)
  0.29%    0.23%       0x00007fba5124ad6c: mov    %r10d,0xcc(%rsp)
  0.07%    0.12%       0x00007fba5124ad74: mov    %ebx,0xc4(%rsp)
                       0x00007fba5124ad7b: mov    %r11,%r9
           0.00%       0x00007fba5124ad7e: mov    $0x1,%r10d
  0.29%    0.45%       0x00007fba5124ad84: shl    %cl,%r10           ;*lshl
                                                                     ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.07%    0.06%       0x00007fba5124ad87: mov    %rsi,%r11
  0.35%    0.35%       0x00007fba5124ad8a: and    %r10,%r11          ;*land
                                                                     ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.08%                0x00007fba5124ad8d: test   %r11,%r11
                       0x00007fba5124ad90: jne    0x00007fba5124bc31  ;*ifeq
                                                                     ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%                0x00007fba5124ad96: cmp    $0x40,%ecx
                       0x00007fba5124ad99: jge    0x00007fba5124bc9d  ;*if_icmpge
                                                                     ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%                0x00007fba5124ad9f: mov    %rsi,%rdi
  0.29%    0.21%       0x00007fba5124ada2: or     %r10,%rdi          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.06%                0x00007fba5124ada5: mov    %r9,%rcx
  0.00%    0.00%       0x00007fba5124ada8: mov    %rdi,0x10(%r9)     ;*putfield pcsl
                                                                     ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                       0x00007fba5124adac: mov    %rdx,%r10
  0.39%    0.01%       0x00007fba5124adaf: mov    %rbp,%r11
  0.06%    0.00%       0x00007fba5124adb2: shr    $0x3,%r11
                       0x00007fba5124adb6: mov    %r11d,0x10(%r12,%r14,8)
           0.00%       0x00007fba5124adbb: shr    $0x9,%r10
  0.31%    0.02%       0x00007fba5124adbf: movabs $0x7fba4cdee000,%r11
  0.08%    0.04%       0x00007fba5124adc9: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                                                                     ; - com.google.re2j.Inst$MatchInst::add@41 (line 101)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                       0x00007fba5124adcd: mov    0xc(%r12,%rax,8),%r8d  ;*arraylength
                                                                     ; - com.google.re2j.Inst$MatchInst::add@45 (line 103)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                                                                     ; implicit exception: dispatches to 0x00007fba5124c8e9
           0.00%       0x00007fba5124add2: test   %r8d,%r8d
                       0x00007fba5124add5: jle    0x00007fba5124ba6d  ;*ifle
                                                                     ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.40%    0.11%       0x00007fba5124addb: mov    %r8d,0x38(%rsp)
  0.06%    0.09%       0x00007fba5124ade0: mov    %eax,0x2c(%rsp)
                       0x00007fba5124ade4: mov    %r9,0x30(%rsp)
                       0x00007fba5124ade9: mov    0xc(%r9),%r10d     ;*getfield size
                                                                     ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.38%    0.29%       0x00007fba5124aded: mov    %r10d,0x3c(%rsp)
  0.07%    0.03%       0x00007fba5124adf2: mov    0x20(%r9),%r10d    ;*getfield denseThreads
                                                                     ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                       0x00007fba5124adf6: mov    %r10d,%edx
                       0x00007fba5124adf9: mov    0x3c(%rsp),%r11d
  0.35%    0.33%       0x00007fba5124adfe: inc    %r11d              ;*iadd
                                                                     ; - com.google.re2j.Machine$Queue::addThread@11 (line 65)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.07%                0x00007fba5124ae01: mov    %r11d,0x40(%rsp)
                       0x00007fba5124ae06: mov    0x40(%rsp),%r10d
  0.43%    0.12%       0x00007fba5124ae0b: mov    %r10d,0xc(%r9)     ;*putfield size
                                                                     ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.23%    0.14%       0x00007fba5124ae0f: mov    %edx,%r10d
  0.06%    0.04%       0x00007fba5124ae12: mov    0xc(%r12,%r10,8),%r10d  ; implicit exception: dispatches to 0x00007fba5124c8f9
                       0x00007fba5124ae17: mov    0x3c(%rsp),%r8d
  0.00%                0x00007fba5124ae1c: cmp    %r10d,%r8d
                       0x00007fba5124ae1f: jae    0x00007fba5124b7fd  ;*aastore
                                                                     ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.34%    0.25%       0x00007fba5124ae25: vmovq  %xmm0,%r10
  0.06%    0.09%       0x00007fba5124ae2a: mov    0x20(%r10),%r10d   ;*getfield argInst
                                                                     ; - com.google.re2j.Inst$AltInst::add@41 (line 193)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                       0x00007fba5124ae2e: mov    %r10d,%ecx
                       0x00007fba5124ae31: lea    (%r12,%rdx,8),%r10  ;*getfield denseThreads
                                                                     ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.34%    0.32%       0x00007fba5124ae35: lea    0x10(%r10,%r8,4),%r10
  0.04%    0.02%       0x00007fba5124ae3a: mov    %r14d,(%r10)
  0.05%    0.00%       0x00007fba5124ae3d: shr    $0x9,%r10
           0.00%       0x00007fba5124ae41: movabs $0x7fba4cdee000,%r11
  0.26%    0.24%       0x00007fba5124ae4b: mov    %r12b,(%r11,%r10,1)  ;*aastore
                                                                     ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.10%    0.01%       0x00007fba5124ae4f: mov    %ecx,%r10d
                       0x00007fba5124ae52: mov    0x8(%r12,%r10,8),%r10d  ;*invokevirtual add
                                                                     ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                                                                     ; implicit exception: dispatches to 0x00007fba5124c915
  0.00%                0x00007fba5124ae57: movslq 0x38(%rsp),%r11    ;*invokestatic arraycopy
                                                                     ; - com.google.re2j.Inst$MatchInst::add@68 (line 104)
                                                                     ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.30%    0.22%       0x00007fba5124ae5c: mov    %r11,0x48(%rsp)
  0.05%                0x00007fba5124ae61: mov    0x28(%rsp),%r11d
           0.00%       0x00007fba5124ae66: dec    %r11d              ;*isub
                                                                     ; - com.google.re2j.Machine::alloc@13 (line 133)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                                                     ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                       0x00007fba5124ae69: mov    %r11d,0x44(%rsp)
  0.35%    0.16%       0x00007fba5124ae6e: lea    (%r12,%rax,8),%r11  ;*getfield cap
                                                                     ; - com.google.re2j.Machine::step@203 (line 300)
  0.06%                0x00007fba5124ae72: mov    %r11,0x50(%rsp)
                       0x00007fba5124ae77: lea    0x10(%r12,%rax,8),%r11  ;*invokestatic arraycopy
                                                                     ; - com.google.re2j.Inst$MatchInst::add@68 (line 104)
                                                                     ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%    0.00%       0x00007fba5124ae7c: mov    %r11,0x58(%rsp)
  0.27%    0.17%       0x00007fba5124ae81: lea    (%r12,%rcx,8),%r11
  0.06%    0.01%       0x00007fba5124ae85: mov    0x3c(%rsp),%r8d
                       0x00007fba5124ae8a: add    $0x2,%r8d          ;*iadd
                                                                     ; - com.google.re2j.Machine$Queue::addThread@11 (line 65)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                     ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                       0x00007fba5124ae8e: mov    %r8d,0x60(%rsp)
  0.29%    0.21%       0x00007fba5124ae93: movslq 0x3c(%rsp),%r8
  0.05%    0.10%       0x00007fba5124ae98: shl    $0x2,%r8
           0.00%       0x00007fba5124ae9c: mov    %r8,0x68(%rsp)
                       0x00007fba5124aea1: cmp    $0xf8019886,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                       0x00007fba5124aea8: jne    0x00007fba5124b2fc  ;*invokevirtual add
                                                                     ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.32%    0.34%       0x00007fba5124aeae: mov    %r11,%r8
  0.10%    0.09%       0x00007fba5124aeb1: mov    0x18(%r11),%ecx    ;*getfield pc
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@2 (line 248)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
           0.00%       0x00007fba5124aeb5: cmp    $0x40,%ecx
                       0x00007fba5124aeb8: jg     0x00007fba5124c039  ;*if_icmpgt
                                                                     ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@5 (line 248)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                       0x00007fba5124aebe: mov    $0x1,%r10d
  0.27%    0.43%       0x00007fba5124aec4: shl    %cl,%r10           ;*lshl
                                                                     ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@5 (line 248)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.06%    0.06%       0x00007fba5124aec7: mov    %rdi,%r11
  0.27%    0.21%       0x00007fba5124aeca: and    %r10,%r11          ;*land
                                                                     ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@5 (line 248)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.07%    0.02%       0x00007fba5124aecd: test   %r11,%r11
                       0x00007fba5124aed0: jne    0x00007fba5124c079  ;*ifeq
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@8 (line 248)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                       0x00007fba5124aed6: cmp    $0x40,%ecx
                       0x00007fba5124aed9: jge    0x00007fba5124c0cd  ;*if_icmpge
                                                                     ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@19 (line 251)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                       0x00007fba5124aedf: mov    %r8,%r11
  0.33%    0.54%       0x00007fba5124aee2: mov    0x14(%r11),%ebp    ;*getfield arg
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@23 (line 253)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.06%    0.08%       0x00007fba5124aee6: or     %r10,%rdi          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@19 (line 251)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
           0.00%       0x00007fba5124aee9: mov    %rdi,0x10(%r9)     ;*putfield pcsl
                                                                     ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@19 (line 251)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
           0.01%       0x00007fba5124aeed: cmp    0x38(%rsp),%ebp
                       0x00007fba5124aef1: jl     0x00007fba5124c161  ;*if_icmpge
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@28 (line 253)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.29%    0.30%       0x00007fba5124aef7: mov    0x1c(%r11),%ebp    ;*getfield outInst
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@75 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.07%    0.09%       0x00007fba5124aefb: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007fba5124c949
                       0x00007fba5124af00: cmp    $0xf8019843,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$AltInst&apos;)}
                       0x00007fba5124af07: jne    0x00007fba5124baf9
  0.00%    0.01%       0x00007fba5124af0d: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.23%    0.35%       0x00007fba5124af11: mov    %r10,0x70(%rsp)
  0.06%    0.10%       0x00007fba5124af16: mov    0x18(%r10),%ecx    ;*getfield pc
                                                                     ; - com.google.re2j.Inst$AltInst::add@2 (line 187)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%                0x00007fba5124af1a: cmp    $0x40,%ecx
                       0x00007fba5124af1d: jg     0x00007fba5124c255  ;*if_icmpgt
                                                                     ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                                                                     ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%                0x00007fba5124af23: mov    $0x1,%r10d
  0.26%    0.43%       0x00007fba5124af29: shl    %cl,%r10           ;*lshl
                                                                     ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                                                                     ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.09%    0.08%       0x00007fba5124af2c: mov    %rdi,%r11
  0.26%    0.39%       0x00007fba5124af2f: and    %r10,%r11
  0.08%    0.08%       0x00007fba5124af32: test   %r11,%r11
                       0x00007fba5124af35: jne    0x00007fba5124b6af  ;*ifeq
                                                                     ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                                                                     ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%                0x00007fba5124af3b: cmp    $0x40,%ecx
                       0x00007fba5124af3e: jge    0x00007fba5124c291  ;*if_icmpge
                                                                     ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                                                                     ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%    0.00%       0x00007fba5124af44: mov    0x70(%rsp),%r11
  0.27%    0.33%       0x00007fba5124af49: mov    0x1c(%r11),%ebp    ;*getfield outInst
                                                                     ; - com.google.re2j.Inst$AltInst::add@23 (line 192)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.08%    0.08%       0x00007fba5124af4d: or     %r10,%rdi          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                                                                     ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                       0x00007fba5124af50: mov    %rdi,%r11
                       0x00007fba5124af53: mov    %rdi,0x10(%r9)     ;*putfield pcsl
                                                                     ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                                                                     ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.26%    0.42%       0x00007fba5124af57: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007fba5124c985
  0.13%    0.09%       0x00007fba5124af5c: cmp    $0xf8019992,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                       0x00007fba5124af63: jne    0x00007fba5124bb25
  0.01%    0.01%       0x00007fba5124af69: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                       0x00007fba5124af6d: mov    %r10,%r9
  0.25%    0.40%       0x00007fba5124af70: mov    0x18(%r10),%ecx    ;*getfield pc
                                                                     ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.09%    0.13%       0x00007fba5124af74: cmp    $0x40,%ecx
                       0x00007fba5124af77: jg     0x00007fba5124c2cd  ;*if_icmpgt
                                                                     ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%    0.01%       0x00007fba5124af7d: mov    $0x1,%r10d
                       0x00007fba5124af83: shl    %cl,%r10           ;*lshl
                                                                     ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.50%    0.52%       0x00007fba5124af86: mov    %rdi,%r8
                       0x00007fba5124af89: and    %r10,%r8           ;*land
                                                                     ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.27%    0.34%       0x00007fba5124af8c: test   %r8,%r8
                       0x00007fba5124af8f: jne    0x00007fba5124c309  ;*ifeq
                                                                     ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.06%    0.11%       0x00007fba5124af95: cmp    $0x40,%ecx
                       0x00007fba5124af98: jge    0x00007fba5124c359  ;*if_icmpge
                                                                     ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.03%    0.05%       0x00007fba5124af9e: or     %r10,%r11          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                       0x00007fba5124afa1: mov    %r11,0x78(%rsp)
  0.25%    0.35%       0x00007fba5124afa6: mov    0x30(%rsp),%r11
  0.09%    0.06%       0x00007fba5124afab: mov    0x78(%rsp),%r10
  0.31%    0.36%       0x00007fba5124afb0: mov    %r10,0x10(%r11)    ;*putfield pcsl
                                                                     ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.53%    0.68%       0x00007fba5124afb4: mov    0x28(%rsp),%r10d
  0.06%    0.03%       0x00007fba5124afb9: test   %r10d,%r10d
                       0x00007fba5124afbc: jle    0x00007fba5124bf95  ;*ifle
                                                                     ; - com.google.re2j.Machine::alloc@4 (line 132)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.06%    0.08%       0x00007fba5124afc2: mov    0x20(%rsp),%r10
                       0x00007fba5124afc7: mov    0x44(%rsp),%r11d
  0.33%    0.35%       0x00007fba5124afcc: mov    %r11d,0xc(%r10)    ;*putfield poolSize
                                                                     ; - com.google.re2j.Machine::alloc@14 (line 133)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.06%    0.03%       0x00007fba5124afd0: mov    0xc(%r12,%r13,8),%r10d  ; implicit exception: dispatches to 0x00007fba5124c999
  0.03%    0.07%       0x00007fba5124afd5: cmp    %r10d,%r11d
                       0x00007fba5124afd8: jae    0x00007fba5124b9f1
                       0x00007fba5124afde: lea    (%r12,%r13,8),%r10
  0.29%    0.31%       0x00007fba5124afe2: mov    0x28(%rsp),%r11d
  0.05%    0.04%       0x00007fba5124afe7: mov    0xc(%r10,%r11,4),%r11d  ;*aaload
                                                                     ; - com.google.re2j.Machine::alloc@25 (line 134)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.06%    0.07%       0x00007fba5124afec: mov    %r11d,0x64(%rsp)
                       0x00007fba5124aff1: mov    0xc(%r12,%r11,8),%r10d  ;*getfield cap
                                                                     ; - com.google.re2j.Inst$MatchInst::add@51 (line 103)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                                                                     ; implicit exception: dispatches to 0x00007fba5124c9ad
  0.32%    0.43%       0x00007fba5124aff6: lea    (%r12,%r11,8),%rbp  ;*aaload
                                                                     ; - com.google.re2j.Machine::alloc@25 (line 134)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.06%    0.02%       0x00007fba5124affa: mov    %r9,%r11
  0.04%    0.07%       0x00007fba5124affd: shr    $0x3,%r11
                       0x00007fba5124b001: mov    0x64(%rsp),%r9d
  0.37%    0.40%       0x00007fba5124b006: mov    %r11d,0x10(%r12,%r9,8)
  0.19%    0.28%       0x00007fba5124b00b: mov    %rbp,%r11
  0.03%    0.04%       0x00007fba5124b00e: shr    $0x9,%r11
                       0x00007fba5124b012: movabs $0x7fba4cdee000,%r8
  0.23%    0.24%       0x00007fba5124b01c: mov    %r12b,(%r8,%r11,1)  ;*putfield inst
                                                                     ; - com.google.re2j.Machine::alloc@45 (line 138)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.15%    0.15%       0x00007fba5124b020: cmp    %eax,%r10d
                   ╭   0x00007fba5124b023: jne    0x00007fba5124b03e  ;*if_acmpeq
                   │                                                 ; - com.google.re2j.Inst$MatchInst::add@55 (line 103)
                   │                                                 ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                   │                                                 ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                   │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                   │                                                 ; - com.google.re2j.Machine::step@-1 (line 276)
                   │   0x00007fba5124b025: mov    0x30(%rsp),%r10
                   │   0x00007fba5124b02a: mov    0x60(%rsp),%r8d
                   │   0x00007fba5124b02f: mov    %r8d,0xc(%r10)     ;*putfield size
                   │                                                 ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                   │                                                 ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                   │                                                 ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                   │                                                 ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                   │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                   │                                                 ; - com.google.re2j.Machine::step@-1 (line 276)
                   │   0x00007fba5124b033: mov    0x70(%rsp),%r10
                   │   0x00007fba5124b038: mov    0x20(%r10),%r10d   ;*getfield argInst
                   │                                                 ; - com.google.re2j.Inst$AltInst::add@41 (line 193)
                   │                                                 ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                   │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                   │                                                 ; - com.google.re2j.Machine::step@-1 (line 276)
                   │╭  0x00007fba5124b03c: jmp    0x00007fba5124b09a
  0.01%    0.00%   ↘│  0x00007fba5124b03e: mov    0xc(%r12,%r10,8),%r11d  ; implicit exception: dispatches to 0x00007fba5124c9e9
  0.00%    0.01%    │  0x00007fba5124b043: lea    (%r12,%r10,8),%rcx  ;*getfield cap
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@51 (line 103)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.22%    0.35%    │  0x00007fba5124b047: cmp    0x38(%rsp),%r11d
                    │  0x00007fba5124b04c: jb     0x00007fba5124bd69
  0.15%    0.19%    │  0x00007fba5124b052: lea    0x10(%r12,%r10,8),%rsi
  0.03%    0.07%    │  0x00007fba5124b057: mov    0x58(%rsp),%rdi
                    │  0x00007fba5124b05c: mov    0x48(%rsp),%rdx
  0.24%    0.32%    │  0x00007fba5124b061: movabs $0x7fba51052640,%r10
  0.14%    0.13%    │  0x00007fba5124b06b: callq  *%r10              ;*invokestatic arraycopy
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@68 (line 104)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
           0.01%    │  0x00007fba5124b06e: mov    0x30(%rsp),%r10
  0.12%    0.11%    │  0x00007fba5124b073: mov    0x60(%rsp),%r11d
  0.29%    0.24%    │  0x00007fba5124b078: mov    %r11d,0xc(%r10)    ;*putfield size
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%             │  0x00007fba5124b07c: mov    0x20(%r10),%edx    ;*getfield denseThreads
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%    0.01%    │  0x00007fba5124b080: test   %edx,%edx
                    │  0x00007fba5124b082: je     0x00007fba5124bd39  ;*aastore
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.10%    0.15%    │  0x00007fba5124b088: mov    0x20(%rsp),%r10
  0.26%    0.25%    │  0x00007fba5124b08d: mov    0x24(%r10),%r13d   ;*getfield pool
                    │                                                ; - com.google.re2j.Machine::alloc@18 (line 134)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │  0x00007fba5124b091: mov    0x70(%rsp),%r10
                    │  0x00007fba5124b096: mov    0x20(%r10),%r10d   ;*aload_1
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@71 (line 106)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.09%    0.15%    ↘  0x00007fba5124b09a: mov    0xc(%r12,%rdx,8),%r11d
  0.31%    0.15%       0x00007fba5124b09f: mov    0x40(%rsp),%r8d
           0.00%       0x00007fba5124b0a4: cmp    %r11d,%r8d
                       0x00007fba5124b0a7: jae    0x00007fba5124ba2d  ;*aastore
                                                                     ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.10%    0.17%       0x00007fba5124b0ad: lea    (%r12,%rdx,8),%r11  ;*getfield denseThreads
                                                                     ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.14%    0.09%       0x00007fba5124b0b1: mov    0x68(%rsp),%r8
  0.27%    0.25%       0x00007fba5124b0b6: lea    0x14(%r11,%r8,1),%r11
                       0x00007fba5124b0bb: mov    0x64(%rsp),%r9d
  0.07%    0.07%       0x00007fba5124b0c0: mov    %r9d,(%r11)
  0.35%    0.52%       0x00007fba5124b0c3: shr    $0x9,%r11
  0.10%    0.15%       0x00007fba5124b0c7: movabs $0x7fba4cdee000,%r8
                       0x00007fba5124b0d1: mov    %r12b,(%r8,%r11,1)  ;*aastore
                                                                     ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.22%    0.25%       0x00007fba5124b0d5: mov    0x8(%r12,%r10,8),%r11d  ; implicit exception: dispatches to 0x00007fba5124c9c1
  0.03%    0.06%       0x00007fba5124b0da: lea    (%r12,%r10,8),%r8
  0.08%    0.08%       0x00007fba5124b0de: cmp    $0xf8019886,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                       0x00007fba5124b0e5: jne    0x00007fba5124b191
                       0x00007fba5124b0eb: mov    %r8,%r9            ;*invokevirtual add
                                                                     ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                       0x00007fba5124b0ee: mov    0x18(%r9),%ecx     ;*getfield pc
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@2 (line 248)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
....................................................................................................
 28.34%   23.66%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 538 (612 bytes) 

                             0x00007fba5124b432: shr    $0x9,%r10
                             0x00007fba5124b436: movabs $0x7fba4cdee000,%r8
                             0x00007fba5124b440: mov    %r12b,(%r8,%r10,1)  ;*aastore
                                                                           ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                                                                           ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                           ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                                                                           ; - com.google.re2j.Machine::step@-1 (line 276)
                             0x00007fba5124b444: xor    %edx,%edx          ;*synchronization entry
                                                                           ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                           ; - com.google.re2j.Machine::step@-1 (line 276)
  0.04%    0.03%          ↗  0x00007fba5124b446: mov    0x20(%rsp),%r10
  0.00%                   │  0x00007fba5124b44b: mov    0x24(%r10),%r13d   ;*getfield pool
                          │                                                ; - com.google.re2j.Machine::free@5 (line 167)
                          │                                                ; - com.google.re2j.Machine::step@224 (line 303)
  0.32%    0.42%          │  0x00007fba5124b44f: mov    0xc(%r10),%edi     ;*getfield poolSize
                          │                                                ; - com.google.re2j.Machine::free@1 (line 167)
                          │                                                ; - com.google.re2j.Machine::step@224 (line 303)
  0.02%    0.05%          │  0x00007fba5124b453: mov    0xc4(%rsp),%ebx
  0.04%    0.03%          │  0x00007fba5124b45a: mov    0xcc(%rsp),%r10d   ;*aload
                          │                                                ; - com.google.re2j.Machine::step@216 (line 302)
  0.93%    1.26%         ↗│  0x00007fba5124b462: test   %rdx,%rdx
                  ╭      ││  0x00007fba5124b465: je     0x00007fba5124b4b3  ;*ifnull
                  │      ││                                                ; - com.google.re2j.Machine::step@218 (line 302)
                  │      ││  0x00007fba5124b467: mov    0xc(%r12,%r13,8),%ebp  ;*arraylength
                  │      ││                                                ; - com.google.re2j.Machine::free@8 (line 167)
                  │      ││                                                ; - com.google.re2j.Machine::step@224 (line 303)
                  │      ││                                                ; implicit exception: dispatches to 0x00007fba5124c87d
                  │      ││  0x00007fba5124b46c: cmp    %ebp,%edi
                  │      ││  0x00007fba5124b46e: jge    0x00007fba5124b8dd  ;*if_icmplt
                  │      ││                                                ; - com.google.re2j.Machine::free@9 (line 167)
                  │      ││                                                ; - com.google.re2j.Machine::step@224 (line 303)
  0.34%    0.29%  │      ││  0x00007fba5124b474: mov    %edi,%r9d
  0.80%    1.06%  │      ││  0x00007fba5124b477: inc    %r9d
                  │      ││  0x00007fba5124b47a: mov    0x20(%rsp),%r8
                  │      ││  0x00007fba5124b47f: mov    %r9d,0xc(%r8)      ;*putfield poolSize
                  │      ││                                                ; - com.google.re2j.Machine::free@45 (line 170)
                  │      ││                                                ; - com.google.re2j.Machine::step@224 (line 303)
  0.36%    0.17%  │      ││  0x00007fba5124b483: cmp    %ebp,%edi
                  │      ││  0x00007fba5124b485: jae    0x00007fba5124b745  ;*aastore
                  │      ││                                                ; - com.google.re2j.Machine::free@49 (line 170)
                  │      ││                                                ; - com.google.re2j.Machine::step@224 (line 303)
  0.83%    0.90%  │      ││  0x00007fba5124b48b: mov    %rdx,%r8
  0.00%           │      ││  0x00007fba5124b48e: shr    $0x3,%r8
                  │      ││  0x00007fba5124b492: lea    (%r12,%r13,8),%r9  ;*getfield pool
                  │      ││                                                ; - com.google.re2j.Machine::free@5 (line 167)
                  │      ││                                                ; - com.google.re2j.Machine::step@224 (line 303)
  0.39%    0.16%  │      ││  0x00007fba5124b496: lea    0x10(%r9,%rdi,4),%r9
  0.83%    1.25%  │      ││  0x00007fba5124b49b: mov    %r8d,(%r9)
  0.01%           │      ││  0x00007fba5124b49e: mov    %r9,%r8
                  │      ││  0x00007fba5124b4a1: shr    $0x9,%r8
  0.23%    0.13%  │      ││  0x00007fba5124b4a5: movabs $0x7fba4cdee000,%r9
  0.76%    1.09%  │      ││  0x00007fba5124b4af: mov    %r12b,(%r9,%r8,1)  ;*goto
                  │      ││                                                ; - com.google.re2j.Machine::step@230 (line 277)
  0.34%    0.44%  ↘      ││  0x00007fba5124b4b3: mov    0x8(%rsp),%r8
  0.03%    0.03%         ││  0x00007fba5124b4b8: mov    0xc(%r8),%r9d      ;*getfield size
                         ││                                                ; - com.google.re2j.Machine::step@15 (line 277)
  0.27%    0.17%         ││  0x00007fba5124b4bc: inc    %r10d              ; OopMap{r11=Oop [8]=Oop [32]=Oop off=2175}
                         ││                                                ;*goto
                         ││                                                ; - com.google.re2j.Machine::step@230 (line 277)
  0.91%    1.00%         ││  0x00007fba5124b4bf: test   %eax,0x162bab3b(%rip)        # 0x00007fba67506000
                         ││                                                ;*goto
                         ││                                                ; - com.google.re2j.Machine::step@230 (line 277)
                         ││                                                ;   {poll}
  0.32%    0.36%         ││  0x00007fba5124b4c5: cmp    %r9d,%r10d
                   ╭     ││  0x00007fba5124b4c8: jge    0x00007fba5124b5a7
  0.03%    0.02%   │     ││  0x00007fba5124b4ce: vmovq  %r11,%xmm0         ;*aload_1
                   │     ││                                                ; - com.google.re2j.Machine::step@21 (line 278)
  0.35%    0.10%   │     ││  0x00007fba5124b4d3: mov    0x8(%rsp),%r11
  0.56%    0.60%   │     ││  0x00007fba5124b4d8: mov    0x20(%r11),%r11d   ;*getfield denseThreads
                   │     ││                                                ; - com.google.re2j.Machine::step@22 (line 278)
  0.70%    0.34%   │     ││  0x00007fba5124b4dc: mov    0xc(%r12,%r11,8),%r9d  ; implicit exception: dispatches to 0x00007fba5124c849
  1.19%    1.24%   │     ││  0x00007fba5124b4e1: cmp    %r9d,%r10d
                   │╭    ││  0x00007fba5124b4e4: jae    0x00007fba5124b6b9
  0.72%    0.54%   ││    ││  0x00007fba5124b4ea: shl    $0x3,%r11
  0.45%    0.51%   ││    ││  0x00007fba5124b4ee: mov    0x10(%r11,%r10,4),%r14d  ;*aaload
                   ││    ││                                                ; - com.google.re2j.Machine::step@27 (line 278)
  0.31%    0.34%   ││    ││  0x00007fba5124b4f3: mov    0x10(%r12,%r14,8),%ebp  ;*getfield inst
                   ││    ││                                                ; - com.google.re2j.Machine::step@78 (line 283)
                   ││    ││                                                ; implicit exception: dispatches to 0x00007fba5124c85d
  2.43%    2.82%   ││    ││  0x00007fba5124b4f8: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007fba5124c86d
  4.79%    4.67%   ││    ││  0x00007fba5124b4fd: cmp    $0xf8019992,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                   ││    ││  0x00007fba5124b504: jne    0x00007fba5124b701
  1.39%    1.33%   ││    ││  0x00007fba5124b50a: lea    (%r12,%rbp,8),%r11  ;*invokevirtual isMatch
                   ││    ││                                                ; - com.google.re2j.Machine::step@85 (line 285)
                   ││    ││  0x00007fba5124b50e: mov    0xc(%r11),%r9d     ;*getfield op
                   ││    ││                                                ; - com.google.re2j.Inst::isMatch@1 (line 78)
                   ││    ││                                                ; - com.google.re2j.Inst$MatchInst::isMatch@1 (line 82)
                   ││    ││                                                ; - com.google.re2j.Machine::step@85 (line 285)
  0.65%    0.54%   ││    ││  0x00007fba5124b512: cmp    $0x6,%r9d
                   ││    ││  0x00007fba5124b516: je     0x00007fba5124b7a1  ;*if_icmpne
                   ││    ││                                                ; - com.google.re2j.Inst::isMatch@6 (line 78)
                   ││    ││                                                ; - com.google.re2j.Inst$MatchInst::isMatch@1 (line 82)
                   ││    ││                                                ; - com.google.re2j.Machine::step@85 (line 285)
  1.27%    1.31%   ││    ││  0x00007fba5124b51c: mov    0x20(%rsp),%r8
  0.11%    0.08%   ││    ││  0x00007fba5124b521: mov    0xc(%r8),%edi      ;*getfield poolSize
                   ││    ││                                                ; - com.google.re2j.Machine::alloc@1 (line 132)
                   ││    ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                   ││    ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                   ││    ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%    0.00%   ││    ││  0x00007fba5124b525: mov    0x24(%r8),%r13d    ;*getfield pool
                   ││    ││                                                ; - com.google.re2j.Machine::alloc@18 (line 134)
                   ││    ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                   ││    ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                   ││    ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                   ││    ││  0x00007fba5124b529: lea    (%r12,%r14,8),%rdx  ;*aaload
                   ││    ││                                                ; - com.google.re2j.Machine::step@27 (line 278)
  1.46%    1.29%   ││    ││  0x00007fba5124b52d: cmp    $0xa,%r9d
                   ││    ││  0x00007fba5124b531: je     0x00007fba5124acd5  ;*if_icmpne
                   ││    ││                                                ; - com.google.re2j.Inst$RuneInst::matchRune@6 (line 134)
                   ││    ││                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.13%    0.09%   ││    ││  0x00007fba5124b537: cmp    $0xb,%r9d
                   ││    ││  0x00007fba5124b53b: je     0x00007fba5124b889  ;*if_icmpne
                   ││    ││                                                ; - com.google.re2j.Inst$RuneInst::matchRune@17 (line 138)
                   ││    ││                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.10%    0.16%   ││    ││  0x00007fba5124b541: mov    0x20(%r11),%ecx    ;*getfield f0
                   ││    ││                                                ; - com.google.re2j.Inst$RuneInst::matchRune@42 (line 143)
                   ││    ││                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.00%    0.00%   ││    ││  0x00007fba5124b545: cmp    $0x9,%r9d
                   ││╭   ││  0x00007fba5124b549: je     0x00007fba5124b592  ;*if_icmpne
                   │││   ││                                                ; - com.google.re2j.Inst$RuneInst::matchRune@38 (line 142)
                   │││   ││                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.38%    0.39%   │││   ││  0x00007fba5124b54b: cmp    $0xc,%r9d
                   │││   ││  0x00007fba5124b54f: jne    0x00007fba5124bd85  ;*if_icmpne
                   │││   ││                                                ; - com.google.re2j.Inst$RuneInst::matchRune@61 (line 146)
                   │││   ││                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.10%    0.15%   │││   ││  0x00007fba5124b555: cmp    0x18(%rsp),%ecx
                   │││╭  ││  0x00007fba5124b559: je     0x00007fba5124b6a4  ;*if_icmpeq
                   ││││  ││                                                ; - com.google.re2j.Inst$RuneInst::matchRune@69 (line 147)
                   ││││  ││                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.07%    0.06%   ││││  ││  0x00007fba5124b55f: mov    0x24(%r11),%r9d    ;*getfield f1
                   ││││  ││                                                ; - com.google.re2j.Inst$RuneInst::matchRune@73 (line 147)
                   ││││  ││                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.01%    0.00%   ││││  ││  0x00007fba5124b563: cmp    0x18(%rsp),%r9d
                   ││││╭ ││  0x00007fba5124b568: je     0x00007fba5124b6a4  ;*if_icmpeq
                   │││││ ││                                                ; - com.google.re2j.Inst$RuneInst::matchRune@77 (line 147)
                   │││││ ││                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.30%    0.40%   │││││ ││  0x00007fba5124b56e: mov    0x28(%r11),%ebp    ;*getfield f2
                   │││││ ││                                                ; - com.google.re2j.Inst$RuneInst::matchRune@81 (line 147)
                   │││││ ││                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.03%    0.01%   │││││ ││  0x00007fba5124b572: cmp    0x18(%rsp),%ebp
                   │││││ ││  0x00007fba5124b576: je     0x00007fba5124bdd9  ;*if_icmpeq
                   │││││ ││                                                ; - com.google.re2j.Inst$RuneInst::matchRune@85 (line 147)
                   │││││ ││                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.40%    0.32%   │││││ ││  0x00007fba5124b57c: mov    0x2c(%r11),%ebp    ;*getfield f3
                   │││││ ││                                                ; - com.google.re2j.Inst$RuneInst::matchRune@89 (line 147)
                   │││││ ││                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.02%            │││││ ││  0x00007fba5124b580: cmp    0x18(%rsp),%ebp
                   │││││ ││  0x00007fba5124b584: je     0x00007fba5124be19  ;*if_icmpne
                   │││││ ││                                                ; - com.google.re2j.Inst$RuneInst::matchRune@93 (line 147)
                   │││││ ││                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.35%    0.32%   │││││ ││  0x00007fba5124b58a: xor    %r8d,%r8d
  0.03%    0.01%   │││││ ││  0x00007fba5124b58d: jmpq   0x00007fba5124acc6
  0.50%    0.73%   ││↘││ ││  0x00007fba5124b592: cmp    0x18(%rsp),%ecx
                   ││ ││ ││  0x00007fba5124b596: jne    0x00007fba5124acc3  ;*if_icmpne
                   ││ ││ ││                                                ; - com.google.re2j.Inst$RuneInst::matchRune@46 (line 143)
                   ││ ││ ││                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.01%            ││ ││ ││  0x00007fba5124b59c: mov    $0x1,%r8d
                   ││ ││ ││  0x00007fba5124b5a2: jmpq   0x00007fba5124acc6  ;*if_icmpge
                   ││ ││ ││                                                ; - com.google.re2j.Machine::step@18 (line 277)
                   ↘│ ││ ││  0x00007fba5124b5a7: mov    0x8(%rsp),%r10
           0.00%    │ ││ ││  0x00007fba5124b5ac: movzbl 0x18(%r10),%r10d
  0.39%    0.53%    │ ││ ││  0x00007fba5124b5b1: test   %r10d,%r10d
                    │ ││╭││  0x00007fba5124b5b4: jne    0x00007fba5124b5d4  ;*ifeq
                    │ │││││                                                ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                    │ │││││                                                ; - com.google.re2j.Machine::step@234 (line 306)
                    │ │││││  0x00007fba5124b5b6: mov    0x8(%rsp),%r10
                    │ │││││  0x00007fba5124b5bb: mov    %r12d,0xc(%r10)    ;*putfield size
                    │ │││││                                                ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                    │ │││││                                                ; - com.google.re2j.Machine::step@234 (line 306)
           0.00%    │ │││││  0x00007fba5124b5bf: mov    0x1c(%r10),%ebp    ;*getfield pcs
                    │ │││││                                                ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                    │ │││││                                                ; - com.google.re2j.Machine::step@234 (line 306)
  0.41%    0.42%    │ │││││  0x00007fba5124b5c3: movb   $0x1,0x18(%r10)    ;*putfield empty
                    │ │││││                                                ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                    │ │││││                                                ; - com.google.re2j.Machine::step@234 (line 306)
  0.00%             │ │││││  0x00007fba5124b5c8: mov    %r12,0x10(%r10)    ;*putfield pcsl
                    │ │││││                                                ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                    │ │││││                                                ; - com.google.re2j.Machine::step@234 (line 306)
                    │ │││││  0x00007fba5124b5cc: test   %ebp,%ebp
                    │ │││││  0x00007fba5124b5ce: jne    0x00007fba5124be59  ;*getfield size
                    │ │││││                                                ; - com.google.re2j.Machine::step@15 (line 277)
                    │ ││↘││  0x00007fba5124b5d4: add    $0xb0,%rsp
  0.39%    0.39%    │ ││ ││  0x00007fba5124b5db: pop    %rbp
                    │ ││ ││  0x00007fba5124b5dc: test   %eax,0x162baa1e(%rip)        # 0x00007fba67506000
                    │ ││ ││                                                ;   {poll_return}
                    │ ││ ││  0x00007fba5124b5e2: retq   
  0.01%             │ ││ ││  0x00007fba5124b5e3: cmp    $0xf8019992,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                    │ ││ ││  0x00007fba5124b5ea: jne    0x00007fba5124c6ad  ;*invokevirtual add
                    │ ││ ││                                                ; - com.google.re2j.Machine::step@211 (line 300)
  0.00%             │ ││ ││  0x00007fba5124b5f0: mov    0x18(%r8),%ecx     ;*getfield pc
                    │ ││ ││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                    │ ││ ││                                                ; - com.google.re2j.Machine::step@211 (line 300)
                    │ ││ ││  0x00007fba5124b5f4: vmovq  %xmm0,%r11
                    │ ││ ││  0x00007fba5124b5f9: mov    0x10(%r11),%r9     ;*getfield pcsl
                    │ ││ ││                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                    │ ││ ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │ ││ ││                                                ; - com.google.re2j.Machine::step@211 (line 300)
                    │ ││ ││                                                ; implicit exception: dispatches to 0x00007fba5124ca4d
  0.00%             │ ││ ││  0x00007fba5124b5fd: cmp    $0x40,%ecx
  0.01%             │ ││ ││  0x00007fba5124b600: jg     0x00007fba5124c731  ;*if_icmpgt
                    │ ││ ││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                    │ ││ ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │ ││ ││                                                ; - com.google.re2j.Machine::step@211 (line 300)
  0.00%             │ ││ ││  0x00007fba5124b606: mov    $0x1,%esi
                    │ ││ ││  0x00007fba5124b60b: shl    %cl,%rsi           ;*lshl
                    │ ││ ││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                    │ ││ ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │ ││ ││                                                ; - com.google.re2j.Machine::step@211 (line 300)
  0.03%    0.01%    │ ││ ││  0x00007fba5124b60e: mov    %r9,%rbp
                    │ ││ ││  0x00007fba5124b611: and    %rsi,%rbp          ;*land
                    │ ││ ││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                    │ ││ ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │ ││ ││                                                ; - com.google.re2j.Machine::step@211 (line 300)
                    │ ││ ││  0x00007fba5124b614: test   %rbp,%rbp
                    │ ││ ││  0x00007fba5124b617: jne    0x00007fba5124c78d  ;*ifeq
                    │ ││ ││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                    │ ││ ││                                                ; - com.google.re2j.Machine::step@211 (line 300)
  0.01%             │ ││ ││  0x00007fba5124b61d: cmp    $0x40,%ecx
                    │ ││ ││  0x00007fba5124b620: jge    0x00007fba5124c7ed  ;*if_icmpge
                    │ ││ ││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                    │ ││ ││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │ ││ ││                                                ; - com.google.re2j.Machine::step@211 (line 300)
  0.01%    0.00%    │ ││ ││  0x00007fba5124b626: mov    %r12b,0x18(%r11)   ;*putfield empty
                    │ ││ ││                                                ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                    │ ││ ││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │ ││ ││                                                ; - com.google.re2j.Machine::step@211 (line 300)
                    │ ││ ││  0x00007fba5124b62a: or     %r9,%rsi
                    │ ││ ││  0x00007fba5124b62d: mov    %rsi,0x10(%r11)    ;*putfield pcsl
                    │ ││ ││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                    │ ││ ││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │ ││ ││                                                ; - com.google.re2j.Machine::step@211 (line 300)
  0.00%             │ ││ ││  0x00007fba5124b631: mov    %rdx,%r9
           0.01%    │ ││ ││  0x00007fba5124b634: mov    %r8,%rcx
                    │ ││ ││  0x00007fba5124b637: shr    $0x3,%rcx
                    │ ││ ││  0x00007fba5124b63b: mov    %ecx,0x10(%r12,%r14,8)
  0.01%             │ ││ ││  0x00007fba5124b640: shr    $0x9,%r9
  0.00%    0.01%    │ ││ ││  0x00007fba5124b644: movabs $0x7fba4cdee000,%r8
                    │ ││ ││  0x00007fba5124b64e: mov    %r12b,(%r8,%r9,1)  ;*putfield inst
                    │ ││ ││                                                ; - com.google.re2j.Inst$MatchInst::add@41 (line 101)
                    │ ││ ││                                                ; - com.google.re2j.Machine::step@211 (line 300)
  0.00%    0.00%    │ ││ ││  0x00007fba5124b652: mov    0xc(%r12,%rax,8),%ebp  ;*arraylength
                    │ ││ ││                                                ; - com.google.re2j.Inst$MatchInst::add@45 (line 103)
                    │ ││ ││                                                ; - com.google.re2j.Machine::step@211 (line 300)
                    │ ││ ││                                                ; implicit exception: dispatches to 0x00007fba5124ca61
                    │ ││ ││  0x00007fba5124b657: test   %ebp,%ebp
                    │ ││ ││  0x00007fba5124b659: jle    0x00007fba5124c6e9  ;*ifle
                    │ ││ ││                                                ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                    │ ││ ││                                                ; - com.google.re2j.Machine::step@211 (line 300)
                    │ ││ ││  0x00007fba5124b65f: mov    0x20(%r11),%ecx    ;*getfield denseThreads
                    │ ││ ││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                    │ ││ ││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │ ││ ││                                                ; - com.google.re2j.Machine::step@211 (line 300)
                    │ ││ ││  0x00007fba5124b663: mov    0xc(%r11),%ebp     ;*getfield size
                    │ ││ ││                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                    │ ││ ││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │ ││ ││                                                ; - com.google.re2j.Machine::step@211 (line 300)
  0.02%             │ ││ ││  0x00007fba5124b667: mov    %ebp,%r9d
                    │ ││ ││  0x00007fba5124b66a: inc    %r9d
  0.00%             │ ││ ││  0x00007fba5124b66d: mov    %r9d,0xc(%r11)     ;*putfield size
                    │ ││ ││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                    │ ││ ││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │ ││ ││                                                ; - com.google.re2j.Machine::step@211 (line 300)
                    │ ││ ││  0x00007fba5124b671: mov    0xc(%r12,%rcx,8),%r9d  ; implicit exception: dispatches to 0x00007fba5124ca71
  0.01%    0.00%    │ ││ ││  0x00007fba5124b676: cmp    %r9d,%ebp
                    │ ││ ││  0x00007fba5124b679: jae    0x00007fba5124c665  ;*aastore
                    │ ││ ││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    │ ││ ││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │ ││ ││                                                ; - com.google.re2j.Machine::step@211 (line 300)
  0.02%             │ ││ ││  0x00007fba5124b67f: lea    (%r12,%rcx,8),%r8  ;*getfield denseThreads
                    │ ││ ││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                    │ ││ ││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │ ││ ││                                                ; - com.google.re2j.Machine::step@211 (line 300)
  0.00%    0.00%    │ ││ ││  0x00007fba5124b683: lea    0x10(%r8,%rbp,4),%r8
                    │ ││ ││  0x00007fba5124b688: mov    %r14d,(%r8)
  0.03%             │ ││ ││  0x00007fba5124b68b: shr    $0x9,%r8
                    │ ││ ││  0x00007fba5124b68f: movabs $0x7fba4cdee000,%r9
                    │ ││ ││  0x00007fba5124b699: mov    %r12b,(%r9,%r8,1)  ;*aastore
                    │ ││ ││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    │ ││ ││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │ ││ ││                                                ; - com.google.re2j.Machine::step@211 (line 300)
           0.00%    │ ││ ││  0x00007fba5124b69d: xor    %edx,%edx
                    │ ││ ╰│  0x00007fba5124b69f: jmpq   0x00007fba5124b462  ;*iconst_1
                    │ ││  │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@96 (line 147)
                    │ ││  │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.12%    0.07%    │ ↘↘  │  0x00007fba5124b6a4: mov    $0x1,%r8d
  0.06%    0.04%    │     │  0x00007fba5124b6aa: jmpq   0x00007fba5124acc6
                    │     │  0x00007fba5124b6af: xor    %edx,%edx
                    │     │  0x00007fba5124b6b1: mov    %r9,%r11
                    │     ╰  0x00007fba5124b6b4: jmpq   0x00007fba5124b446
                    ↘        0x00007fba5124b6b9: mov    $0xffffffe4,%esi
                             0x00007fba5124b6be: mov    0x8(%rsp),%rbp
                             0x00007fba5124b6c3: mov    %r11d,0xcc(%rsp)
                             0x00007fba5124b6cb: mov    %r10d,0x8(%rsp)
                             0x00007fba5124b6d0: vmovsd %xmm0,0x28(%rsp)
                             0x00007fba5124b6d6: mov    0x10(%rsp),%r10d
                             0x00007fba5124b6db: mov    %r10d,0xc(%rsp)
....................................................................................................
 28.26%   28.75%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 589 (1111 bytes) 

                                                                            ; - com.google.re2j.Utils::emptyOpContext@21 (line 179)
                                                                            ; - com.google.re2j.Machine::match@121 (line 201)
                              0x00007fba5127218a: mov    $0x5,%r10d         ;*iload_1
                                                                            ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                                                                            ; - com.google.re2j.Machine::match@121 (line 201)
                              0x00007fba51272190: cmp    $0xa,%ebx
                              0x00007fba51272193: je     0x00007fba51272be2  ;*iload_0
                                                                            ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                                                                            ; - com.google.re2j.Machine::match@121 (line 201)
                              0x00007fba51272199: mov    %ebx,%r11d
  0.00%                       0x00007fba5127219c: add    $0xffffffbf,%r11d
                              0x00007fba512721a0: cmp    $0x1a,%r11d
                  ╭           0x00007fba512721a4: jb     0x00007fba512721b7  ;*if_icmple
                  │                                                         ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │                                                         ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                         ; - com.google.re2j.Machine::match@121 (line 201)
                  │           0x00007fba512721a6: mov    %ebx,%r8d
                  │           0x00007fba512721a9: add    $0xffffff9f,%r8d
                  │           0x00007fba512721ad: cmp    $0x1a,%r8d
                  │           0x00007fba512721b1: jae    0x00007fba51272bf8  ;*iconst_1
                  │                                                         ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │                                                         ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                         ; - com.google.re2j.Machine::match@121 (line 201)
  0.00%           ↘           0x00007fba512721b7: or     $0x10,%r10d        ;*iload_2
                                                                            ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                            ; - com.google.re2j.Machine::match@121 (line 201)
                              0x00007fba512721bb: mov    %ecx,0x38(%rsp)
           0.01%              0x00007fba512721bf: mov    %r9d,0x30(%rsp)
  0.00%                       0x00007fba512721c4: mov    %ebx,0x28(%rsp)
  0.00%                       0x00007fba512721c8: mov    0x40(%rsp),%r11
                              0x00007fba512721cd: mov    0x24(%r11),%ebx    ;*getfield pool
                                                                            ; - com.google.re2j.Machine::alloc@18 (line 134)
                                                                            ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                                                            ; - com.google.re2j.Machine::match@315 (line 239)
                              0x00007fba512721d1: mov    0xc(%r11),%r8d     ;*getfield poolSize
                                                                            ; - com.google.re2j.Machine::alloc@1 (line 132)
                                                                            ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                                                            ; - com.google.re2j.Machine::match@315 (line 239)
                              0x00007fba512721d5: vmovd  %xmm0,%r9d
                              0x00007fba512721da: mov    %r9,%r11
                              0x00007fba512721dd: shl    $0x3,%r11          ;*getfield q1
                                                                            ; - com.google.re2j.Machine::match@53 (line 188)
  0.00%                       0x00007fba512721e1: mov    %r11,0x60(%rsp)
                              0x00007fba512721e6: xor    %r13d,%r13d
           0.00%              0x00007fba512721e9: mov    $0x1,%r11d
                              0x00007fba512721ef: xor    %ecx,%ecx
                              0x00007fba512721f1: mov    %r11d,0x70(%rsp)
                              0x00007fba512721f6: mov    %ecx,0x5c(%rsp)
  0.00%            ╭          0x00007fba512721fa: jmpq   0x00007fba5127237a
  0.21%    0.25%   │     ↗    0x00007fba512721ff: or     $0x20,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                   │     │                                                  ; - com.google.re2j.Machine::match@323 (line 241)
  0.05%    0.06%   │     │    0x00007fba51272203: mov    %r8d,0x38(%rsp)    ;*iload_2
                   │     │                                                  ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   │     │                                                  ; - com.google.re2j.Machine::match@323 (line 241)
  0.06%    0.05%   │     │↗   0x00007fba51272208: mov    0x5c(%rsp),%esi
  0.09%    0.08%   │     ││   0x00007fba5127220c: cmp    %edx,%esi
                   │     ││   0x00007fba5127220e: je     0x00007fba51272b12  ;*if_icmpne
                   │     ││                                                 ; - com.google.re2j.Machine::match@348 (line 242)
  0.23%    0.20%   │     ││   0x00007fba51272214: xor    %r11d,%r11d
  0.08%    0.09%   │     ││   0x00007fba51272217: mov    %rax,-0x8(%rsp)
  0.05%    0.06%   │     ││   0x00007fba5127221c: mov    0x5c(%rsp),%eax
  0.05%    0.04%   │     ││   0x00007fba51272220: mov    %eax,0x34(%rsp)
  0.32%    0.23%   │     ││   0x00007fba51272224: mov    -0x8(%rsp),%rax
  0.11%    0.12%   │     ││   0x00007fba51272229: mov    %r9d,0x5c(%rsp)
  0.05%    0.03%   │     ││   0x00007fba5127222e: mov    %ecx,0x28(%rsp)
  0.16%    0.12%   │     ││   0x00007fba51272232: mov    %r10,0x50(%rsp)
  0.23%    0.25%   │     ││   0x00007fba51272237: mov    %edi,0x20(%rsp)
  0.12%    0.18%   │     ││   0x00007fba5127223b: mov    0x40(%rsp),%rsi
  0.03%    0.05%   │     ││   0x00007fba51272240: mov    0x18(%rsp),%rdx
  0.06%    0.03%   │     ││   0x00007fba51272245: mov    0x60(%rsp),%rcx
  0.21%    0.15%   │     ││   0x00007fba5127224a: mov    0x34(%rsp),%r8d
  0.12%    0.08%   │     ││   0x00007fba5127224f: mov    %ebx,%edi
  0.02%    0.03%   │     ││   0x00007fba51272251: mov    0x38(%rsp),%r10d
  0.03%    0.05%   │     ││   0x00007fba51272256: mov    %r10d,(%rsp)
  0.21%    0.21%   │     ││   0x00007fba5127225a: mov    0x3c(%rsp),%ebx
  0.07%    0.08%   │     ││   0x00007fba5127225e: mov    %ebx,0x8(%rsp)
  0.06%    0.05%   │     ││   0x00007fba51272262: mov    %r11d,0x10(%rsp)
  0.02%    0.05%   │     ││   0x00007fba51272267: callq  0x00007fba51046020  ; OopMap{[24]=Oop [32]=NarrowOop [64]=Oop [80]=Oop [96]=Oop off=748}
                   │     ││                                                 ;*invokespecial step
                   │     ││                                                 ; - com.google.re2j.Machine::match@356 (line 242)
                   │     ││                                                 ;   {optimized virtual_call}
                   │     ││   0x00007fba5127226c: mov    0x40(%rsp),%r10
  0.39%    0.46%   │     ││   0x00007fba51272271: mov    0x24(%r10),%ebx    ;*getfield pool
                   │     ││                                                 ; - com.google.re2j.Machine::freeQueue@1 (line 156)
                   │     ││                                                 ; - com.google.re2j.Machine::freeQueue@15 (line 150)
                   │     ││                                                 ; - com.google.re2j.Machine::freeQueue@3 (line 144)
                   │     ││                                                 ; - com.google.re2j.Machine::match@445 (line 263)
  0.00%            │     ││   0x00007fba51272275: mov    0xc(%r10),%r8d     ;*getfield poolSize
                   │     ││                                                 ; - com.google.re2j.Machine::freeQueue@8 (line 157)
                   │     ││                                                 ; - com.google.re2j.Machine::freeQueue@15 (line 150)
                   │     ││                                                 ; - com.google.re2j.Machine::freeQueue@3 (line 144)
                   │     ││                                                 ; - com.google.re2j.Machine::match@445 (line 263)
  0.00%            │     ││   0x00007fba51272279: mov    0x2c(%rsp),%r11d
  0.35%    0.43%   │     ││   0x00007fba5127227e: test   %r11d,%r11d
                   │     ││   0x00007fba51272281: je     0x00007fba51272a3f  ;*ifne
                   │     ││                                                 ; - com.google.re2j.Machine::match@361 (line 243)
                   │     ││   0x00007fba51272287: mov    0x28(%r10),%esi    ;*getfield matchcap
                   │     ││                                                 ; - com.google.re2j.Machine::match@368 (line 246)
  0.00%            │     ││   0x00007fba5127228b: mov    0xc(%r12,%rsi,8),%ebp  ;*arraylength
                   │     ││                                                 ; - com.google.re2j.Machine::match@371 (line 246)
                   │     ││                                                 ; implicit exception: dispatches to 0x00007fba51274031
  0.01%    0.04%   │     ││   0x00007fba51272290: test   %ebp,%ebp
                   │     ││   0x00007fba51272292: je     0x00007fba51273195  ;*ifne
                   │     ││                                                 ; - com.google.re2j.Machine::match@372 (line 246)
  0.32%    0.25%   │     ││   0x00007fba51272298: mov    0x50(%rsp),%r10
  0.00%            │     ││   0x00007fba5127229d: mov    0x10(%r10),%ecx    ;*getfield end
                   │     ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                   │     ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.00%            │     ││   0x00007fba512722a1: mov    0xc(%r10),%eax     ;*getfield start
                   │     ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                   │     ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.01%    0.00%   │     ││   0x00007fba512722a5: mov    0x14(%r10),%edx    ;*getfield str
                   │     ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                   │     ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.33%    0.22%   │     ││   0x00007fba512722a9: mov    0x28(%rsp),%r10d
  0.00%            │     ││   0x00007fba512722ae: cmp    $0xffffffff,%r10d
                   │     ││   0x00007fba512722b2: je     0x00007fba51272b1d  ;*if_icmpeq
                   │     ││                                                 ; - com.google.re2j.Machine::match@401 (line 254)
                   │     ││   0x00007fba512722b8: mov    0x30(%rsp),%edi
                   │     ││   0x00007fba512722bc: add    0x5c(%rsp),%edi
  0.39%    0.45%   │     ││   0x00007fba512722c0: add    %eax,%edi          ;*iadd
                   │     ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                   │     ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
                   │     ││   0x00007fba512722c2: cmp    %ecx,%edi
                   │     ││   0x00007fba512722c4: jge    0x00007fba51272b2d  ;*if_icmpge
                   │     ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                   │     ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
                   │     ││   0x00007fba512722ca: mov    0x8(%r12,%rdx,8),%r10d  ; implicit exception: dispatches to 0x00007fba51274041
           0.01%   │     ││   0x00007fba512722cf: cmp    $0xf80002da,%r10d  ;   {metadata(&apos;java/lang/String&apos;)}
                   │     ││   0x00007fba512722d6: jne    0x00007fba51272e25
  0.33%    0.60%   │     ││   0x00007fba512722dc: lea    (%r12,%rdx,8),%r13  ;*invokeinterface charAt
                   │     ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │     ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │     ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
                   │     ││   0x00007fba512722e0: test   %edi,%edi
                   │     ││   0x00007fba512722e2: jl     0x00007fba51272fe1  ;*iflt
                   │     ││                                                 ; - java.lang.String::charAt@1 (line 657)
                   │     ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │     ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │     ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
                   │     ││   0x00007fba512722e8: mov    0xc(%r13),%r9d     ;*getfield value
                   │     ││                                                 ; - java.lang.String::charAt@6 (line 657)
                   │     ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │     ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │     ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.01%    0.00%   │     ││   0x00007fba512722ec: mov    0xc(%r12,%r9,8),%ebp  ;*arraylength
                   │     ││                                                 ; - java.lang.String::charAt@9 (line 657)
                   │     ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │     ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │     ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
                   │     ││                                                 ; implicit exception: dispatches to 0x00007fba51274055
  0.57%    0.73%   │     ││   0x00007fba512722f1: cmp    %ebp,%edi
                   │     ││   0x00007fba512722f3: jge    0x00007fba512731e1  ;*if_icmplt
                   │     ││                                                 ; - java.lang.String::charAt@10 (line 657)
                   │     ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │     ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │     ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.23%    0.28%   │     ││   0x00007fba512722f9: cmp    %ebp,%edi
                   │     ││   0x00007fba512722fb: jae    0x00007fba51272cf9
  0.02%    0.04%   │     ││   0x00007fba51272301: lea    (%r12,%r9,8),%r10
                   │     ││   0x00007fba51272305: movzwl 0x10(%r10,%rdi,2),%r9d  ;*caload
                   │     ││                                                 ; - java.lang.String::charAt@27 (line 660)
                   │     ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │     ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │     ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.37%    0.45%   │     ││   0x00007fba5127230b: cmp    $0xd800,%r9d
                   │     ││   0x00007fba51272312: jge    0x00007fba51273261  ;*if_icmplt
                   │     ││                                                 ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   │     ││                                                 ; - java.lang.Character::codePointAt@9 (line 4867)
                   │     ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │     ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.26%    0.40%   │     ││   0x00007fba51272318: shl    $0x3,%r9d          ;*ishl
                   │     ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                   │     ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.07%    0.12%   │     ││   0x00007fba5127231c: mov    %r9d,%r11d
                   │     ││   0x00007fba5127231f: or     $0x1,%r11d
  0.31%    0.49%   │     ││   0x00007fba51272323: and    $0x7,%r9d
  0.10%    0.12%   │     ││   0x00007fba51272327: sar    $0x3,%r11d         ;*ishr
                   │     ││                                                 ; - com.google.re2j.Machine::match@417 (line 256)
  0.18%    0.22%   │     ││   0x00007fba5127232b: or     $0x1,%r9d          ; OopMap{rbx=NarrowOop rdx=NarrowOop rsi=NarrowOop [24]=Oop [64]=Oop [80]=Oop [96]=Oop off=943}
                   │     ││                                                 ;*goto
                   │     ││                                                 ; - com.google.re2j.Machine::match@439 (line 262)
  0.08%    0.09%   │     ││   0x00007fba5127232f: test   %eax,0x16293ccb(%rip)        # 0x00007fba67506000
                   │     ││                                                 ;*goto
                   │     ││                                                 ; - com.google.re2j.Machine::match@439 (line 262)
                   │     ││                                                 ;   {poll}
  0.08%    0.17%   │     ││   0x00007fba51272335: mov    0x40(%rsp),%r10
  0.02%    0.03%   │     ││   0x00007fba5127233a: movzbl 0x10(%r10),%r13d   ;*getfield matched
                   │     ││                                                 ; - com.google.re2j.Machine::match@159 (line 212)
  0.21%    0.23%   │     ││   0x00007fba5127233f: mov    0x60(%rsp),%r10
  0.10%    0.12%   │     ││   0x00007fba51272344: mov    %r10,%rdi
  0.06%    0.09%   │     ││   0x00007fba51272347: shr    $0x3,%rdi
  0.02%    0.01%   │     ││   0x00007fba5127234b: mov    %edi,0x34(%rsp)
  0.22%    0.21%   │     ││   0x00007fba5127234f: mov    0x38(%rsp),%r10d
  0.09%    0.10%   │     ││   0x00007fba51272354: mov    %r11d,0x38(%rsp)
  0.07%    0.08%   │     ││   0x00007fba51272359: mov    0x18(%rsp),%r11
  0.05%    0.02%   │     ││   0x00007fba5127235e: mov    %r11,0x60(%rsp)
  0.16%    0.21%   │     ││   0x00007fba51272363: mov    0x30(%rsp),%r11d
  0.12%    0.12%   │     ││   0x00007fba51272368: mov    %r11d,0x2c(%rsp)
  0.10%    0.06%   │     ││   0x00007fba5127236d: mov    %r9d,0x30(%rsp)
  0.06%    0.01%   │     ││   0x00007fba51272372: vmovd  %esi,%xmm5
  0.20%    0.25%   │     ││   0x00007fba51272376: mov    %ecx,0x14(%rsp)
  0.13%    0.11%   ↘     ││   0x00007fba5127237a: mov    0x34(%rsp),%r11d
  0.06%    0.08%         ││   0x00007fba5127237f: movzbl 0x18(%r12,%r11,8),%r11d  ; implicit exception: dispatches to 0x00007fba51273fad
  0.04%    0.03%         ││   0x00007fba51272385: mov    0x34(%rsp),%ecx
  0.20%    0.32%         ││   0x00007fba51272389: lea    (%r12,%rcx,8),%r9  ;*aload
                         ││                                                 ; - com.google.re2j.Machine::match@136 (line 207)
  0.11%    0.09%         ││   0x00007fba5127238d: mov    %r9,0x18(%rsp)
  0.06%    0.08%         ││   0x00007fba51272392: test   %r11d,%r11d
                         ││   0x00007fba51272395: jne    0x00007fba512726ca  ;*aload_0
                         ││                                                 ; - com.google.re2j.Machine::match@267 (line 233)
  0.01%    0.02%         ││   0x00007fba5127239b: test   %r13d,%r13d
                         ││   0x00007fba5127239e: jne    0x00007fba51272e95  ;*ifne
                         ││                                                 ; - com.google.re2j.Machine::match@271 (line 233)
  0.11%    0.21%         ││   0x00007fba512723a4: mov    0x5c(%rsp),%r11d
  0.10%    0.08%         ││   0x00007fba512723a9: test   %r11d,%r11d
                         ││   0x00007fba512723ac: je     0x00007fba51272bc1  ;*ifeq
                         ││                                                 ; - com.google.re2j.Machine::match@275 (line 233)
  0.09%    0.14%         ││   0x00007fba512723b2: mov    0x3c(%rsp),%edi
  0.03%    0.03%         ││   0x00007fba512723b6: test   %edi,%edi
                         ││   0x00007fba512723b8: jne    0x00007fba51272f91  ;*aload_0
                         ││                                                 ; - com.google.re2j.Machine::match@282 (line 236)
  0.19%    0.27%         ││   0x00007fba512723be: vmovd  %xmm5,%r9d
  0.13%    0.15%         ││   0x00007fba512723c3: mov    0xc(%r12,%r9,8),%edx  ;*arraylength
                         ││                                                 ; - com.google.re2j.Machine::match@286 (line 236)
                         ││                                                 ; implicit exception: dispatches to 0x00007fba51273fbd
  0.03%    0.12%         ││   0x00007fba512723c8: test   %edx,%edx
                         ││   0x00007fba512723ca: jle    0x00007fba51272ee5  ;*ifle
                         ││                                                 ; - com.google.re2j.Machine::match@287 (line 236)
  0.02%    0.04%         ││   0x00007fba512723d0: test   %edx,%edx
                         ││   0x00007fba512723d2: jbe    0x00007fba51272d71  ;*iastore
                         ││                                                 ; - com.google.re2j.Machine::match@296 (line 237)
  0.19%    0.19%         ││   0x00007fba512723d8: mov    %edx,%eax
  0.12%    0.14%         ││   0x00007fba512723da: mov    %rax,-0x8(%rsp)
  0.06%    0.04%         ││   0x00007fba512723df: mov    0x5c(%rsp),%eax
  0.02%    0.04%         ││   0x00007fba512723e3: mov    %eax,0x4c(%rsp)
  0.13%    0.31%         ││   0x00007fba512723e7: mov    -0x8(%rsp),%rax
  0.33%    0.24%         ││   0x00007fba512723ec: mov    %edi,0x3c(%rsp)
  0.06%    0.02%         ││   0x00007fba512723f0: mov    0x40(%rsp),%r11
  0.03%    0.03%         ││   0x00007fba512723f5: mov    0x18(%r11),%edx    ;*getfield prog
                         ││                                                 ; - com.google.re2j.Machine::match@298 (line 239)
  0.23%    0.28%         ││   0x00007fba512723f9: lea    (%r12,%r9,8),%rsi  ;*getfield matchcap
                         ││                                                 ; - com.google.re2j.Machine::match@283 (line 236)
  0.09%    0.09%         ││   0x00007fba512723fd: lea    0x10(%r12,%r9,8),%rdi
  0.06%    0.09%         ││   0x00007fba51272402: mov    0x5c(%rsp),%r11d
  0.03%    0.02%         ││   0x00007fba51272407: mov    %r11d,(%rdi)       ;*iastore
                         ││                                                 ; - com.google.re2j.Machine::match@296 (line 237)
  0.22%    0.29%         ││   0x00007fba5127240a: mov    0x1c(%r12,%rdx,8),%ebp  ;*getfield startInst
                         ││                                                 ; - com.google.re2j.Machine::match@301 (line 239)
                         ││                                                 ; implicit exception: dispatches to 0x00007fba51273fcd
  0.14%    0.09%         ││   0x00007fba5127240f: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007fba51273fdd
  0.37%    0.40%         ││   0x00007fba51272414: cmp    $0xf8019992,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                         ││   0x00007fba5127241a: jne    0x00007fba51272dcd
  0.10%    0.22%         ││   0x00007fba51272420: lea    (%r12,%rbp,8),%r13  ;*invokevirtual add
                         ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.09%    0.15%         ││   0x00007fba51272424: mov    0x18(%r13),%r10d   ;*getfield pc
                         ││                                                 ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                         ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.11%    0.10%         ││   0x00007fba51272428: mov    %r10d,%ecx
  0.04%    0.07%         ││   0x00007fba5127242b: cmp    $0x40,%r10d
                         ││   0x00007fba5127242f: jg     0x00007fba5127305d  ;*if_icmpgt
                         ││                                                 ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                         ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                         ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.18%    0.17%         ││   0x00007fba51272435: mov    $0x1,%r11d
  0.09%    0.10%         ││   0x00007fba5127243b: shl    %cl,%r11           ;*lshl
                         ││                                                 ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                         ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                         ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.55%    0.60%         ││   0x00007fba5127243e: mov    0x34(%rsp),%r10d
  0.07%    0.10%         ││   0x00007fba51272443: mov    0x10(%r12,%r10,8),%rdx  ;*getfield pcsl
                         ││                                                 ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                         ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                         ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.04%    0.03%         ││   0x00007fba51272448: mov    %rdx,%r10
  0.01%    0.04%         ││   0x00007fba5127244b: and    %r11,%r10          ;*land
                         ││                                                 ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                         ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                         ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.23%    0.25%         ││   0x00007fba5127244e: test   %r10,%r10
                         ││   0x00007fba51272451: jne    0x00007fba512730b9  ;*ifeq
                         ││                                                 ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                         ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.10%    0.07%         ││   0x00007fba51272457: mov    %ecx,%r10d
  0.04%    0.02%         ││   0x00007fba5127245a: cmp    $0x40,%r10d
                         ││   0x00007fba5127245e: jge    0x00007fba51273139  ;*if_icmpge
                         ││                                                 ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                         ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                         ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.06%    0.06%         ││   0x00007fba51272464: mov    0x34(%rsp),%ecx
  0.25%    0.23%         ││   0x00007fba51272468: mov    %r12b,0x18(%r12,%rcx,8)  ;*putfield empty
                         ││                                                 ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                         ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                         ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.06%    0.08%         ││   0x00007fba5127246d: or     %rdx,%r11
  0.06%    0.01%         ││   0x00007fba51272470: mov    %r11,0x10(%r12,%rcx,8)  ;*putfield pcsl
                         ││                                                 ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                         ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                         ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.06%    0.09%         ││   0x00007fba51272475: test   %r8d,%r8d
                         ││   0x00007fba51272478: jle    0x00007fba51272f39  ;*ifle
                         ││                                                 ; - com.google.re2j.Machine::alloc@4 (line 132)
                         ││                                                 ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                         ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.20%    0.21%         ││   0x00007fba5127247e: mov    %r8d,%ebp
  0.10%    0.05%         ││   0x00007fba51272481: dec    %ebp               ;*isub
                         ││                                                 ; - com.google.re2j.Machine::alloc@13 (line 133)
                         ││                                                 ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                         ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.03%    0.02%         ││   0x00007fba51272483: mov    0x40(%rsp),%r10
  0.03%    0.07%         ││   0x00007fba51272488: mov    %ebp,0xc(%r10)     ;*putfield poolSize
                         ││                                                 ; - com.google.re2j.Machine::alloc@14 (line 133)
                         ││                                                 ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                         ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.18%    0.27%         ││   0x00007fba5127248c: mov    0xc(%r12,%rbx,8),%r10d  ; implicit exception: dispatches to 0x00007fba51273ff9
  0.08%    0.09%         ││   0x00007fba51272491: cmp    %r10d,%ebp
                         ││   0x00007fba51272494: jae    0x00007fba51272c49
  0.07%    0.02%         ││   0x00007fba5127249a: lea    (%r12,%rbx,8),%r10
  0.07%    0.08%         ││   0x00007fba5127249e: mov    0xc(%r10,%r8,4),%r10d  ;*aaload
                         ││                                                 ; - com.google.re2j.Machine::alloc@25 (line 134)
                         ││                                                 ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                         ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.20%    0.20%         ││   0x00007fba512724a3: mov    %r10d,0x58(%rsp)
  0.07%    0.08%         ││   0x00007fba512724a8: mov    0xc(%r12,%r10,8),%r8d  ;*getfield cap
                         ││                                                 ; - com.google.re2j.Inst$MatchInst::add@51 (line 103)
                         ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
                         ││                                                 ; implicit exception: dispatches to 0x00007fba51274009
  0.07%    0.06%         ││   0x00007fba512724ad: lea    (%r12,%r10,8),%rbp  ;*aaload
                         ││                                                 ; - com.google.re2j.Machine::alloc@25 (line 134)
                         ││                                                 ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                         ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.08%    0.05%         ││   0x00007fba512724b1: mov    %r13,%r10
  0.19%    0.29%         ││   0x00007fba512724b4: shr    $0x3,%r10
  0.10%    0.16%         ││   0x00007fba512724b8: mov    0x58(%rsp),%ecx
  0.09%    0.06%         ││   0x00007fba512724bc: mov    %r10d,0x10(%r12,%rcx,8)
  0.19%    0.28%         ││   0x00007fba512724c1: mov    %rbp,%r10
  0.13%    0.16%         ││   0x00007fba512724c4: shr    $0x9,%r10
  0.10%    0.10%         ││   0x00007fba512724c8: movabs $0x7fba4cdee000,%r11
  0.07%    0.05%         ││   0x00007fba512724d2: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                         ││                                                 ; - com.google.re2j.Machine::alloc@45 (line 138)
                         ││                                                 ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                         ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.08%    0.15%         ││   0x00007fba512724d6: cmp    %r9d,%r8d
                    ╭    ││   0x00007fba512724d9: jne    0x00007fba512724e6  ;*if_acmpeq
                    │    ││                                                 ; - com.google.re2j.Inst$MatchInst::add@55 (line 103)
                    │    ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
                    │    ││   0x00007fba512724db: mov    0x50(%rsp),%r10
                    │    ││   0x00007fba512724e0: mov    0x14(%rsp),%edx
                    │╭   ││   0x00007fba512724e4: jmp    0x00007fba51272516
  0.12%    0.23%    ↘│   ││   0x00007fba512724e6: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x00007fba51274065
  0.07%    0.11%     │   ││   0x00007fba512724eb: lea    (%r12,%r8,8),%rcx  ;*getfield cap
                     │   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@51 (line 103)
                     │   ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.04%    0.06%     │   ││   0x00007fba512724ef: cmp    %eax,%r11d
                     │   ││   0x00007fba512724f2: jb     0x00007fba51272e81
  0.13%    0.17%     │   ││   0x00007fba512724f8: lea    0x10(%r12,%r8,8),%rsi
  0.15%    0.18%     │   ││   0x00007fba512724fd: movslq %eax,%rdx
  0.07%    0.09%     │   ││   0x00007fba51272500: movabs $0x7fba51052640,%r10
  0.03%    0.04%     │   ││   0x00007fba5127250a: callq  *%r10              ;*invokestatic arraycopy
                     │   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@68 (line 104)
                     │   ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
                     │   ││   0x00007fba5127250d: mov    0x50(%rsp),%r10
  0.17%    0.18%     │   ││   0x00007fba51272512: mov    0x10(%r10),%edx    ;*aload_1
                     │   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@71 (line 106)
                     │   ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.34%    0.08%     ↘   ││   0x00007fba51272516: mov    0x34(%rsp),%edi
                         ││   0x00007fba5127251a: mov    0xc(%r12,%rdi,8),%r9d  ;*getfield size
                         ││                                                 ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                         ││                                                 ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                         ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.14%    0.16%         ││   0x00007fba5127251f: mov    0x20(%r12,%rdi,8),%r11d  ;*getfield denseThreads
                         ││                                                 ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                         ││                                                 ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                         ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.01%    0.01%         ││   0x00007fba51272524: mov    %r9d,%r8d
  0.24%    0.30%         ││   0x00007fba51272527: inc    %r8d
  0.00%    0.00%         ││   0x00007fba5127252a: mov    %r8d,0xc(%r12,%rdi,8)  ;*putfield size
                         ││                                                 ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                         ││                                                 ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                         ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.10%    0.23%         ││   0x00007fba5127252f: mov    0xc(%r12,%r11,8),%ecx  ; implicit exception: dispatches to 0x00007fba5127401d
  0.10%    0.16%         ││   0x00007fba51272534: cmp    %ecx,%r9d
                         ││   0x00007fba51272537: jae    0x00007fba51272c95  ;*aastore
                         ││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                         ││                                                 ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                         ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.41%    0.50%         ││   0x00007fba5127253d: mov    0x28(%rsp),%ebx
  0.00%                  ││   0x00007fba51272541: test   %ebx,%ebx
                      ╭  ││   0x00007fba51272543: jl     0x00007fba512725f8  ;*ifge
                      │  ││                                                 ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                      │  ││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.07%    0.09%      │  ││   0x00007fba51272549: xor    %r8d,%r8d          ;*iload_0
                      │  ││                                                 ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                      │  ││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.01%    0.01%      │  ││↗  0x00007fba5127254c: cmp    $0xa,%ebx
                      │  │││  0x00007fba5127254f: je     0x00007fba51272b00  ;*iload_1
                      │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                      │  │││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.25%    0.35%      │  │││  0x00007fba51272555: mov    0x38(%rsp),%ecx
           0.00%      │  │││  0x00007fba51272559: test   %ecx,%ecx
                      │  │││  0x00007fba5127255b: jl     0x00007fba5127291c  ;*iload_1
                      │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                      │  │││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.11%    0.12%      │  │││  0x00007fba51272561: cmp    $0xa,%ecx
                      │  │││  0x00007fba51272564: je     0x00007fba51272b09  ;*iload_0
                      │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                      │  │││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.03%    0.02%      │  │││  0x00007fba5127256a: shl    $0x3,%r11          ;*getfield denseThreads
                      │  │││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                      │  │││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                      │  │││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.30%    0.39%      │  │││  0x00007fba5127256e: lea    0x10(%r11,%r9,4),%r9
           0.00%      │  │││  0x00007fba51272573: mov    0x58(%rsp),%r11d
  0.07%    0.12%      │  │││  0x00007fba51272578: mov    %r11d,(%r9)
  0.98%    1.27%      │  │││  0x00007fba5127257b: mov    0x28(%rsp),%r11d
  0.05%    0.11%      │  │││  0x00007fba51272580: add    $0xffffffbf,%r11d
                      │  │││  0x00007fba51272584: shr    $0x9,%r9
  0.03%    0.02%      │  │││  0x00007fba51272588: movabs $0x7fba4cdee000,%rsi
  0.36%    0.31%      │  │││  0x00007fba51272592: mov    %r12b,(%rsi,%r9,1)  ;*aastore
                      │  │││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                      │  │││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                      │  │││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.26%    0.20%      │  │││  0x00007fba51272596: cmp    $0x1a,%r11d
                      │╭ │││  0x00007fba5127259a: jb     0x00007fba512725af  ;*if_icmple
                      ││ │││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                      ││ │││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                      ││ │││                                                ; - com.google.re2j.Machine::match@323 (line 241)
                      ││ │││  0x00007fba5127259c: mov    0x28(%rsp),%r11d
  0.02%    0.02%      ││ │││  0x00007fba512725a1: add    $0xffffff9f,%r11d
  0.29%    0.33%      ││ │││  0x00007fba512725a5: cmp    $0x1a,%r11d
                      ││ │││  0x00007fba512725a9: jae    0x00007fba51272b7e  ;*iconst_1
                      ││ │││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                      ││ │││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                      ││ │││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.08%    0.06%      │↘ │││  0x00007fba512725af: mov    $0x1,%ebp          ;*invokevirtual endPos
                      │  │││                                                ; - com.google.re2j.Machine::match@345 (line 242)
           0.01%      │  │││  0x00007fba512725b4: mov    0x5c(%rsp),%r9d
  0.09%    0.08%      │  │││  0x00007fba512725b9: add    0x2c(%rsp),%r9d    ;*iadd
                      │  │││                                                ; - com.google.re2j.Machine::match@337 (line 242)
  0.27%    0.26%      │  │││  0x00007fba512725be: mov    0x38(%rsp),%esi
  0.06%    0.10%      │  │││  0x00007fba512725c2: add    $0xffffffbf,%esi
                      │  │││  0x00007fba512725c5: cmp    $0x1a,%esi
                      │ ╭│││  0x00007fba512725c8: jb     0x00007fba512725dd  ;*if_icmple
                      │ ││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                      │ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                      │ ││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.06%    0.07%      │ ││││  0x00007fba512725ca: mov    0x38(%rsp),%r11d
  0.22%    0.27%      │ ││││  0x00007fba512725cf: add    $0xffffff9f,%r11d
  0.09%    0.10%      │ ││││  0x00007fba512725d3: cmp    $0x1a,%r11d
                      │ ││││  0x00007fba512725d7: jae    0x00007fba51272ba1  ;*iconst_1
                      │ ││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                      │ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                      │ ││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.00%    0.03%      │ ↘│││  0x00007fba512725dd: mov    $0x1,%esi          ;*ireturn
                      │  │││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                      │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                      │  │││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.05%    0.06%      │  │││  0x00007fba512725e2: cmp    %esi,%ebp
                      │  ╰││  0x00007fba512725e4: je     0x00007fba512721ff  ;*if_icmpeq
                      │   ││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                      │   ││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.09%    0.04%      │   ││  0x00007fba512725ea: or     $0x10,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                      │   ││                                                ; - com.google.re2j.Machine::match@323 (line 241)
                      │   ││  0x00007fba512725ee: mov    %r8d,0x38(%rsp)
  0.08%    0.11%      │   ╰│  0x00007fba512725f3: jmpq   0x00007fba51272208
                      ↘    │  0x00007fba512725f8: mov    $0x5,%r8d
                           ╰  0x00007fba512725fe: jmpq   0x00007fba5127254c
                              0x00007fba51272603: mov    %edi,%ebp
                              0x00007fba51272605: jmpq   0x00007fba5127286a
                              0x00007fba5127260a: mov    %ebp,%r9d
                              0x00007fba5127260d: inc    %r9d
                              0x00007fba51272610: mov    %ebp,%edi
                              0x00007fba51272612: mov    %r9d,0x58(%rsp)
                              0x00007fba51272617: jmp    0x00007fba5127262a
                              0x00007fba51272619: mov    %ebp,%edi
....................................................................................................
 22.37%   25.70%  <total for region 3>

....[Hottest Regions]...............................................................................
 28.34%   23.66%         C2, level 4  com.google.re2j.Machine::step, version 538 (1150 bytes) 
 28.26%   28.75%         C2, level 4  com.google.re2j.Machine::step, version 538 (612 bytes) 
 22.37%   25.70%         C2, level 4  com.google.re2j.Machine::match, version 589 (1111 bytes) 
  8.06%    9.23%        runtime stub  StubRoutines::jint_disjoint_arraycopy (128 bytes) 
  5.76%    6.51%         C2, level 4  com.google.re2j.Machine::step, version 538 (275 bytes) 
  1.82%    2.08%         C2, level 4  com.google.re2j.Machine::step, version 538 (46 bytes) 
  0.84%    0.83%   [kernel.kallsyms]  [unknown] (6 bytes) 
  0.65%    0.16%         C2, level 4  com.google.re2j.Machine::init, version 582 (312 bytes) 
  0.55%    0.67%         C2, level 4  com.google.re2j.Machine::match, version 589 (62 bytes) 
  0.19%    0.08%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 651 (263 bytes) 
  0.14%    0.10%         C2, level 4  com.google.re2j.Matcher::genMatch, version 603 (88 bytes) 
  0.12%    0.04%         C2, level 4  com.google.re2j.Machine::init, version 582 (135 bytes) 
  0.10%    0.07%           libjvm.so  SpinPause (9 bytes) 
  0.09%    0.03%   [kernel.kallsyms]  [unknown] (4 bytes) 
  0.09%    0.07%         C2, level 4  com.google.re2j.Machine::init, version 582 (77 bytes) 
  0.08%            [kernel.kallsyms]  [unknown] (44 bytes) 
  0.07%    0.06%         C2, level 4  com.google.re2j.Matcher::genMatch, version 603 (8 bytes) 
  0.07%    0.05%         C2, level 4  com.google.re2j.Machine::match, version 589 (147 bytes) 
  0.06%    0.08%         C2, level 4  com.google.re2j.Matcher::genMatch, version 603 (8 bytes) 
  0.06%    0.06%   [kernel.kallsyms]  [unknown] (28 bytes) 
  2.29%    1.77%  <...other 362 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 64.18%   61.00%         C2, level 4  com.google.re2j.Machine::step, version 538 
 23.29%   26.62%         C2, level 4  com.google.re2j.Machine::match, version 589 
  8.06%    9.23%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
  1.74%    1.48%   [kernel.kallsyms]  [unknown] 
  0.91%    0.27%         C2, level 4  com.google.re2j.Machine::init, version 582 
  0.48%    0.26%         C2, level 4  com.google.re2j.Matcher::genMatch, version 603 
  0.30%    0.11%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 651 
  0.12%    0.07%         C2, level 4  java.util.Collections::shuffle, version 609 
  0.10%    0.07%           libjvm.so  SpinPause 
  0.04%    0.04%        libc-2.26.so  _IO_fwrite 
  0.04%    0.01%      hsdis-amd64.so  [unknown] 
  0.03%    0.02%  libpthread-2.26.so  __pthread_disable_asynccancel 
  0.03%    0.07%           libjvm.so  RelocIterator::initialize 
  0.02%    0.01%           libjvm.so  xmlTextStream::write 
  0.02%    0.01%        runtime stub  StubRoutines::oop_disjoint_arraycopy 
  0.02%    0.07%           libjvm.so  StringTable::unlink_or_oops_do 
  0.02%    0.04%           libjvm.so  ParallelTaskTerminator::offer_termination 
  0.02%    0.00%  libpthread-2.26.so  __libc_write 
  0.01%    0.02%        libc-2.26.so  __strlen_avx2 
  0.01%    0.00%           libjvm.so  MutableSpaceUsedHelper::take_sample 
  0.53%    0.37%  <...other 79 warm methods...>
....................................................................................................
100.00%   99.79%  <totals>

....[Distribution by Source]........................................................................
 89.30%   88.32%         C2, level 4
  8.10%    9.25%        runtime stub
  1.74%    1.48%   [kernel.kallsyms]
  0.52%    0.58%           libjvm.so
  0.14%    0.27%        libc-2.26.so
  0.08%    0.06%  libpthread-2.26.so
  0.04%    0.01%      hsdis-amd64.so
  0.03%                  interpreter
  0.02%    0.02%              [vdso]
  0.01%    0.00%         C1, level 3
  0.00%    0.00%      perf-21775.map
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:44

Benchmark                     Mode  Cnt      Score     Error  Units
Re2jFindRegex.testExp1       thrpt   20  15210.089 ± 101.393  ops/s
Re2jFindRegex.testExp1:·asm  thrpt             NaN              ---
