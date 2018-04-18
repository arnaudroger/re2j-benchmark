# JMH version: 1.19
# VM version: JDK 1.8.0_131, VM 25.131-b11
# VM invoker: /usr/lib/jvm/java-8-oracle/jre/bin/java
# VM options: <none>
# Warmup: 20 iterations, 1 s each
# Measurement: 20 iterations, 1 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Throughput, ops/time
# Benchmark: com.github.arnaudroger.re2j.Re2jFindRegex.testCombine

# Run progress: 0.00% complete, ETA 00:00:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 747.533 ops/s
# Warmup Iteration   2: 1617.549 ops/s
# Warmup Iteration   3: 1641.112 ops/s
# Warmup Iteration   4: 1640.635 ops/s
# Warmup Iteration   5: 1640.737 ops/s
# Warmup Iteration   6: 1640.715 ops/s
# Warmup Iteration   7: 1640.188 ops/s
# Warmup Iteration   8: 1647.839 ops/s
# Warmup Iteration   9: 1650.841 ops/s
# Warmup Iteration  10: 1650.779 ops/s
# Warmup Iteration  11: 1573.344 ops/s
# Warmup Iteration  12: 1651.111 ops/s
# Warmup Iteration  13: 1650.640 ops/s
# Warmup Iteration  14: 1647.920 ops/s
# Warmup Iteration  15: 1647.476 ops/s
# Warmup Iteration  16: 1647.587 ops/s
# Warmup Iteration  17: 1649.119 ops/s
# Warmup Iteration  18: 1644.193 ops/s
# Warmup Iteration  19: 1649.221 ops/s
# Warmup Iteration  20: 1649.108 ops/s
Iteration   1: 1648.948 ops/s
Iteration   2: 1632.764 ops/s
Iteration   3: 1554.282 ops/s
Iteration   4: 1608.190 ops/s
Iteration   5: 1653.539 ops/s
Iteration   6: 1652.805 ops/s
Iteration   7: 1653.466 ops/s
Iteration   8: 1649.264 ops/s
Iteration   9: 1649.834 ops/s
Iteration  10: 1655.789 ops/s
Iteration  11: 1654.525 ops/s
Iteration  12: 1628.001 ops/s
Iteration  13: 1658.143 ops/s
Iteration  14: 1658.058 ops/s
Iteration  15: 1657.938 ops/s
Iteration  16: 1657.899 ops/s
Iteration  17: 1653.043 ops/s
Iteration  18: 1635.562 ops/s
Iteration  19: 1660.124 ops/s
Iteration  20: 1658.028 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  1644.010 ±(99.9%) 21.551 ops/s [Average]
  (min, avg, max) = (1554.282, 1644.010, 1660.124), stdev = 24.818
  CI (99.9%): [1622.459, 1665.561] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine:·asm":
PrintAssembly processed: 195417 total address lines.
Perf output processed (skipped 23.421 seconds):
 Column 1: cycles (20604 events)
 Column 2: instructions (20606 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 502 (394 bytes) 

                       # parm4:    rdi       = int
                       # parm5:    [sp+0x70]   = &apos;com/google/re2j/Machine$Thread&apos;  (sp of caller)
                       0x00007f34b9214ca0: mov    0x8(%rsi),%r10d    ;   {no_reloc}
                       0x00007f34b9214ca4: shl    $0x3,%r10
                       0x00007f34b9214ca8: cmp    %r10,%rax
                       0x00007f34b9214cab: jne    0x00007f34b9045e20  ;   {runtime_call}
                       0x00007f34b9214cb1: data16 xchg %ax,%ax
                       0x00007f34b9214cb4: nopl   0x0(%rax,%rax,1)
                       0x00007f34b9214cbc: data16 data16 xchg %ax,%ax
                     [Verified Entry Point]
  0.52%    0.56%       0x00007f34b9214cc0: mov    %eax,-0x14000(%rsp)
  0.35%    0.37%       0x00007f34b9214cc7: push   %rbp
  0.26%    0.38%       0x00007f34b9214cc8: sub    $0x60,%rsp         ;*synchronization entry
                                                                     ; - com.google.re2j.Machine::add@-1 (line 341)
  0.22%    0.25%       0x00007f34b9214ccc: mov    %edi,0x28(%rsp)
  0.48%    0.35%       0x00007f34b9214cd0: mov    %r9,0x20(%rsp)
  0.32%    0.32%       0x00007f34b9214cd5: mov    %r8d,0x1c(%rsp)
  0.18%    0.24%       0x00007f34b9214cda: mov    %rsi,0x8(%rsp)
  0.04%    0.01%       0x00007f34b9214cdf: mov    %ecx,0x40(%rsp)
  0.38%    0.37%       0x00007f34b9214ce3: test   %ecx,%ecx
                       0x00007f34b9214ce5: je     0x00007f34b9215245  ;*ifne
                                                                     ; - com.google.re2j.Machine::add@1 (line 341)
  0.35%    0.29%       0x00007f34b9214ceb: mov    %rdx,0x48(%rsp)
  0.17%    0.20%       0x00007f34b9214cf0: mov    0x14(%rdx),%r9d    ;*getfield sparse
                                                                     ; - com.google.re2j.Machine$Queue::contains@1 (line 48)
                                                                     ; - com.google.re2j.Machine::add@9 (line 344)
                                                                     ; implicit exception: dispatches to 0x00007f34b921542d
  0.03%    0.02%       0x00007f34b9214cf4: mov    0xc(%r12,%r9,8),%r10d  ; implicit exception: dispatches to 0x00007f34b9215441
  0.45%    0.36%       0x00007f34b9214cf9: cmp    %r10d,%ecx
                       0x00007f34b9214cfc: jae    0x00007f34b921511a  ;*iaload
                                                                     ; - com.google.re2j.Machine$Queue::contains@5 (line 48)
                                                                     ; - com.google.re2j.Machine::add@9 (line 344)
  0.30%    0.42%       0x00007f34b9214d02: mov    0x10(%rdx),%ecx    ;*getfield dense
                                                                     ; - com.google.re2j.Machine$Queue::contains@18 (line 52)
                                                                     ; - com.google.re2j.Machine::add@9 (line 344)
  0.24%    0.14%       0x00007f34b9214d05: mov    0xc(%rdx),%r11d    ;*getfield size
                                                                     ; - com.google.re2j.Machine$Queue::contains@9 (line 49)
                                                                     ; - com.google.re2j.Machine::add@9 (line 344)
  0.02%    0.02%       0x00007f34b9214d09: lea    (%r12,%r9,8),%rdi
  0.36%    0.43%       0x00007f34b9214d0d: mov    0x40(%rsp),%ebx
  0.48%    0.29%       0x00007f34b9214d11: mov    0x10(%rdi,%rbx,4),%ebp  ;*iaload
                                                                     ; - com.google.re2j.Machine$Queue::contains@5 (line 48)
                                                                     ; - com.google.re2j.Machine::add@9 (line 344)
  0.29%    0.32%       0x00007f34b9214d15: cmp    %r11d,%ebp
                  ╭    0x00007f34b9214d18: jl     0x00007f34b9214e2e  ;*iastore
                  │                                                  ; - com.google.re2j.Machine$Queue::add@18 (line 60)
                  │                                                  ; - com.google.re2j.Machine::add@20 (line 347)
  0.43%    0.38%  │ ↗  0x00007f34b9214d1e: mov    %r11d,%r8d
  0.23%    0.20%  │ │  0x00007f34b9214d21: inc    %r8d
  0.25%    0.15%  │ │  0x00007f34b9214d24: mov    %r8d,0xc(%rdx)     ;*putfield size
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@8 (line 59)
                  │ │                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.15%    0.24%  │ │  0x00007f34b9214d28: mov    0x40(%rsp),%r8d
  0.36%    0.21%  │ │  0x00007f34b9214d2d: cmp    %r10d,%r8d
                  │ │  0x00007f34b9214d30: jae    0x00007f34b9215155
  0.33%    0.10%  │ │  0x00007f34b9214d36: mov    %r11d,0x10(%rdi,%r8,4)  ;*iastore
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@18 (line 60)
                  │ │                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.37%    0.24%  │ │  0x00007f34b9214d3b: mov    0xc(%r12,%rcx,8),%r10d  ; implicit exception: dispatches to 0x00007f34b9215455
  0.11%    0.18%  │ │  0x00007f34b9214d40: cmp    %r10d,%r11d
                  │ │  0x00007f34b9214d43: jae    0x00007f34b921519d  ;*aaload
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@24 (line 61)
                  │ │                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.25%    0.20%  │ │  0x00007f34b9214d49: lea    (%r12,%rcx,8),%r10  ;*getfield dense
                  │ │                                                ; - com.google.re2j.Machine$Queue::contains@18 (line 52)
                  │ │                                                ; - com.google.re2j.Machine::add@9 (line 344)
  0.24%    0.21%  │ │  0x00007f34b9214d4d: mov    %r10,0x38(%rsp)
  0.20%    0.25%  │ │  0x00007f34b9214d52: lea    0x10(%r10,%r11,4),%rbp
  0.14%    0.20%  │ │  0x00007f34b9214d57: mov    0x0(%rbp),%r10d    ;*aaload
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@24 (line 61)
                  │ │                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.31%    0.19%  │ │  0x00007f34b9214d5b: test   %r10d,%r10d
                  │╭│  0x00007f34b9214d5e: je     0x00007f34b9214e5d  ;*ifnonnull
                  │││                                                ; - com.google.re2j.Machine$Queue::add@27 (line 62)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.29%    0.26%  │││  0x00007f34b9214d64: lea    (%r12,%r10,8),%rbx  ;*aload_3
                  │││                                                ; - com.google.re2j.Machine$Queue::add@45 (line 65)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.26%    0.33%  │││  0x00007f34b9214d68: mov    0x40(%rsp),%r10d
  0.17%    0.18%  │││  0x00007f34b9214d6d: mov    %r10d,0xc(%rbx)    ;*putfield pc
                  │││                                                ; - com.google.re2j.Machine$Queue::add@52 (line 66)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.49%    0.39%  │││  0x00007f34b9214d71: mov    0x8(%rsp),%r10
  0.29%    0.16%  │││  0x00007f34b9214d76: mov    0x14(%r10),%r10d   ;*getfield prog
                  │││                                                ; - com.google.re2j.Machine::add@26 (line 348)
  0.28%    0.38%  │││  0x00007f34b9214d7a: mov    %r12d,0x10(%rbx)   ;*putfield thread
                  │││                                                ; - com.google.re2j.Machine$Queue::add@47 (line 65)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.22%    0.30%  │││  0x00007f34b9214d7e: mov    0x14(%r12,%r10,8),%ebp  ;*getfield inst
                  │││                                                ; - com.google.re2j.Prog::getInst@1 (line 29)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 348)
                  │││                                                ; implicit exception: dispatches to 0x00007f34b9215469
  0.55%    0.46%  │││  0x00007f34b9214d83: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f34b921547d
  0.96%    0.84%  │││  0x00007f34b9214d88: cmp    $0xf8002f22,%r11d  ;   {metadata(&apos;java/util/ArrayList&apos;)}
                  │││  0x00007f34b9214d8f: jne    0x00007f34b921521d
  0.33%    0.32%  │││  0x00007f34b9214d95: lea    (%r12,%rbp,8),%r11  ;*invokeinterface get
                  │││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.14%    0.19%  │││  0x00007f34b9214d99: mov    0x10(%r11),%ebp    ;*getfield size
                  │││                                                ; - java.util.ArrayList::rangeCheck@2 (line 652)
                  │││                                                ; - java.util.ArrayList::get@2 (line 429)
                  │││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.22%    0.16%  │││  0x00007f34b9214d9d: mov    0x40(%rsp),%r8d
  0.17%    0.10%  │││  0x00007f34b9214da2: cmp    %ebp,%r8d
                  │││  0x00007f34b9214da5: jge    0x00007f34b921526d  ;*if_icmplt
                  │││                                                ; - java.util.ArrayList::rangeCheck@5 (line 652)
                  │││                                                ; - java.util.ArrayList::get@2 (line 429)
                  │││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.66%    0.49%  │││  0x00007f34b9214dab: mov    0x14(%r11),%ebp    ;*getfield elementData
                  │││                                                ; - java.util.ArrayList::elementData@1 (line 418)
                  │││                                                ; - java.util.ArrayList::get@7 (line 431)
                  │││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.17%    0.15%  │││  0x00007f34b9214daf: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f34b9215491
  1.47%    1.05%  │││  0x00007f34b9214db4: cmp    %r11d,%r8d
                  │││  0x00007f34b9214db7: jae    0x00007f34b92151e5
  1.14%    0.84%  │││  0x00007f34b9214dbd: lea    (%r12,%rbp,8),%r10
  0.13%    0.06%  │││  0x00007f34b9214dc1: mov    0x10(%r10,%r8,4),%ebp  ;*aaload
                  │││                                                ; - java.util.ArrayList::elementData@5 (line 418)
                  │││                                                ; - java.util.ArrayList::get@7 (line 431)
                  │││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.06%    0.05%  │││  0x00007f34b9214dc6: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f34b92154a5
  2.55%    2.19%  │││  0x00007f34b9214dcb: cmp    $0xf80197c3,%r10d  ;   {metadata(&apos;com/google/re2j/Inst&apos;)}
                  │││  0x00007f34b9214dd2: jne    0x00007f34b92153f0
  0.76%    0.50%  │││  0x00007f34b9214dd8: lea    (%r12,%rbp,8),%r10  ;*checkcast
                  │││                                                ; - com.google.re2j.Prog::getInst@10 (line 29)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.08%    0.03%  │││  0x00007f34b9214ddc: mov    %r10,0x38(%rsp)
  0.02%    0.04%  │││  0x00007f34b9214de1: mov    0xc(%r10),%r10d    ;*getfield op
                  │││                                                ; - com.google.re2j.Inst::op@1 (line 42)
                  │││                                                ; - com.google.re2j.Machine::add@37 (line 349)
  0.66%    0.49%  │││  0x00007f34b9214de5: mov    %r10d,%r8d
  0.30%    0.22%  │││  0x00007f34b9214de8: add    $0xfffffff7,%r8d
  0.51%    0.33%  │││  0x00007f34b9214dec: mov    $0x8,%r9d
  0.03%    0.02%  │││  0x00007f34b9214df2: cmp    $0x3,%r8d
  0.69%    0.61%  │││  0x00007f34b9214df6: cmovb  %r9d,%r10d         ;*invokevirtual op
                  │││                                                ; - com.google.re2j.Machine::add@37 (line 349)
  1.38%    1.49%  │││  0x00007f34b9214dfa: mov    %r10d,%r8d
  0.01%    0.01%  │││  0x00007f34b9214dfd: dec    %r8d
  0.83%    0.85%  │││  0x00007f34b9214e00: cmp    $0xb,%r8d
                  │││  0x00007f34b9214e04: jae    0x00007f34b921520d  ;*tableswitch
                  │││                                                ; - com.google.re2j.Machine::add@40 (line 349)
  0.87%    0.90%  │││  0x00007f34b9214e0a: mov    0x38(%rsp),%r11
  0.04%    0.03%  │││  0x00007f34b9214e0f: mov    0x14(%r11),%r11d   ;*getfield arg
                  │││                                                ; - com.google.re2j.Machine::add@156 (line 363)
  0.01%    0.02%  │││  0x00007f34b9214e13: mov    0x38(%rsp),%r8
  0.01%    0.01%  │││  0x00007f34b9214e18: mov    0x10(%r8),%ecx     ;*getfield out
                  │││                                                ; - com.google.re2j.Machine::add@193 (line 369)
  0.88%    0.74%  │││  0x00007f34b9214e1c: movslq %r10d,%r10
  0.02%    0.02%  │││  0x00007f34b9214e1f: movabs $0x7f34b9214c40,%r8  ;   {section_word}
  0.01%           │││  0x00007f34b9214e29: jmpq   *-0x8(%r8,%r10,8)  ;*tableswitch
                  │││                                                ; - com.google.re2j.Machine::add@40 (line 349)
  0.03%    0.03%  ↘││  0x00007f34b9214e2e: mov    0xc(%r12,%rcx,8),%r8d  ; implicit exception: dispatches to 0x00007f34b921554d
  0.02%    0.04%   ││  0x00007f34b9214e33: cmp    %r8d,%ebp
                   ││  0x00007f34b9214e36: jae    0x00007f34b92153b1
  0.02%    0.01%   ││  0x00007f34b9214e3c: lea    (%r12,%rcx,8),%r8
  0.02%    0.05%   ││  0x00007f34b9214e40: mov    0x10(%r8,%rbp,4),%ebp  ;*aaload
                   ││                                                ; - com.google.re2j.Machine$Queue::contains@22 (line 52)
                   ││                                                ; - com.google.re2j.Machine::add@9 (line 344)
  0.08%    0.07%   ││  0x00007f34b9214e45: mov    0xc(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007f34b921555d
  0.33%    0.32%   ││  0x00007f34b9214e4a: cmp    %ebx,%r8d
                   │╰  0x00007f34b9214e4d: jne    0x00007f34b9214d1e
                   │   0x00007f34b9214e53: mov    0x70(%rsp),%rax
                   │   0x00007f34b9214e58: jmpq   0x00007f34b92150e8
                   ↘   0x00007f34b9214e5d: mov    0x60(%r15),%rbx
                       0x00007f34b9214e61: mov    %rbx,%r10
                       0x00007f34b9214e64: add    $0x18,%r10
                       0x00007f34b9214e68: cmp    0x70(%r15),%r10
                       0x00007f34b9214e6c: jae    0x00007f34b92153c9
                       0x00007f34b9214e72: mov    %r10,0x60(%r15)
                       0x00007f34b9214e76: prefetchnta 0xc0(%r10)
....................................................................................................
 26.96%   23.84%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 508 (342 bytes) 

                          0x00007f34b9223abd: cmp    %esi,%ecx
                          0x00007f34b9223abf: jge    0x00007f34b92238e3  ;*aload_1
                                                                        ; - com.google.re2j.Machine::step@253 (line 294)
                          0x00007f34b9223ac5: mov    0x8(%rsp),%rdx
                          0x00007f34b9223aca: mov    0x10(%rdx),%ebp    ;*getfield dense
                                                                        ; - com.google.re2j.Machine::step@254 (line 294)
                          0x00007f34b9223acd: mov    0xc(%r12,%rbp,8),%edx  ; implicit exception: dispatches to 0x00007f34b9224a75
                          0x00007f34b9223ad2: cmp    %edx,%ecx
                          0x00007f34b9223ad4: jae    0x00007f34b9224239
                          0x00007f34b9223ada: lea    (%r12,%rbp,8),%rdx
           0.00%          0x00007f34b9223ade: mov    0x10(%rdx,%rcx,4),%esi  ;*aaload
                                                                        ; - com.google.re2j.Machine::step@259 (line 294)
                          0x00007f34b9223ae2: mov    0x10(%r12,%rsi,8),%edx  ;*getfield thread
                                                                        ; - com.google.re2j.Machine::step@264 (line 295)
                                                                        ; implicit exception: dispatches to 0x00007f34b9224a89
           0.00%          0x00007f34b9223ae7: test   %edx,%edx
                          0x00007f34b9223ae9: jne    0x00007f34b9223a40  ;*ifnull
                                                                        ; - com.google.re2j.Machine::step@267 (line 295)
                          0x00007f34b9223aef: jmp    0x00007f34b9223aad
  0.59%    0.84%   ↗      0x00007f34b9223af1: mov    %r8d,0x30(%rsp)
  0.64%    0.78%   │      0x00007f34b9223af6: mov    %r11d,%ebx
  0.23%    0.34%   │      0x00007f34b9223af9: sub    %r8d,%r11d         ;*isub
                   │                                                    ; - com.google.re2j.Unicode::simpleFold@15 (line 208)
                   │                                                    ; - com.google.re2j.Inst::matchRune@50 (line 65)
                   │                                                    ; - com.google.re2j.Machine::step@308 (line 306)
  0.24%    0.26%   │      0x00007f34b9223afc: mov    %r11d,%r10d
  0.53%    0.70%   │      0x00007f34b9223aff: sar    $0x1f,%r10d
  0.63%    0.76%   │      0x00007f34b9223b03: shr    $0x1f,%r10d
  0.24%    0.31%   │      0x00007f34b9223b07: add    %r11d,%r10d
  0.25%    0.33%   │      0x00007f34b9223b0a: sar    %r10d
  0.54%    0.85%   │      0x00007f34b9223b0d: mov    %r8d,%r11d
  0.57%    0.84%   │      0x00007f34b9223b10: add    %r10d,%r11d        ;*idiv
                   │                                                    ; - com.google.re2j.Unicode::simpleFold@17 (line 208)
                   │                                                    ; - com.google.re2j.Inst::matchRune@50 (line 65)
                   │                                                    ; - com.google.re2j.Machine::step@308 (line 306)
  0.37%    0.60%   │  ↗   0x00007f34b9223b13: cmp    $0x3f,%r11d
                   │  │   0x00007f34b9223b17: jae    0x00007f34b922404d
  0.28%    0.47%   │  │   0x00007f34b9223b1d: movslq %r10d,%r10
  0.67%    0.93%   │  │   0x00007f34b9223b20: movslq 0x30(%rsp),%r8
  0.59%    0.82%   │  │   0x00007f34b9223b25: add    %r10,%r8
  0.44%    0.65%   │  │   0x00007f34b9223b28: mov    0x10(%r9,%r8,4),%ebp  ;*aaload
                   │  │                                                 ; - com.google.re2j.Unicode::simpleFold@24 (line 209)
                   │  │                                                 ; - com.google.re2j.Inst::matchRune@50 (line 65)
                   │  │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.32%    0.45%   │  │   0x00007f34b9223b2d: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f34b92249b5
  1.58%    2.17%   │  │   0x00007f34b9223b32: test   %r10d,%r10d
                   │  │   0x00007f34b9223b35: jbe    0x00007f34b922409d  ;*iaload
                   │  │                                                 ; - com.google.re2j.Unicode::simpleFold@26 (line 209)
                   │  │                                                 ; - com.google.re2j.Inst::matchRune@50 (line 65)
                   │  │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  1.02%    1.35%   │  │   0x00007f34b9223b3b: mov    0x10(%r12,%rbp,8),%r8d
  0.36%    0.38%   │  │   0x00007f34b9223b40: cmp    0x20(%rsp),%r8d
                  ╭│  │   0x00007f34b9223b45: jl     0x00007f34b9223c18  ;*if_icmpge
                  ││  │                                                 ; - com.google.re2j.Unicode::simpleFold@28 (line 209)
                  ││  │                                                 ; - com.google.re2j.Inst::matchRune@50 (line 65)
                  ││  │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.87%    1.04%  ││  │   0x00007f34b9223b4b: mov    0x30(%rsp),%r8d    ; OopMap{r9=Oop rdi=NarrowOop rdx=NarrowOop rsi=Oop rax=Oop r14=NarrowOop [8]=Oop [24]=Oop [40]=Oop off=1584}
                  ││  │                                                 ;*goto
                  ││  │                                                 ; - com.google.re2j.Unicode::simpleFold@40 (line 214)
                  ││  │                                                 ; - com.google.re2j.Inst::matchRune@50 (line 65)
                  ││  │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.67%    0.78%  ││  │↗  0x00007f34b9223b50: test   %eax,0x1787b4aa(%rip)        # 0x00007f34d0a9f000
                  ││  ││                                                ;*goto
                  ││  ││                                                ; - com.google.re2j.Unicode::simpleFold@40 (line 214)
                  ││  ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 65)
                  ││  ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
                  ││  ││                                                ;   {poll}
  0.23%    0.25%  ││  ││  0x00007f34b9223b56: cmp    %r11d,%r8d
                  │╰  ││  0x00007f34b9223b59: jl     0x00007f34b9223af1  ;*if_icmpge
                  │   ││                                                ; - com.google.re2j.Unicode::simpleFold@9 (line 207)
                  │   ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 65)
                  │   ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
                  │   ││  0x00007f34b9223b5b: cmp    $0x3f,%r8d
                  │   ││  0x00007f34b9223b5f: jge    0x00007f34b92244e1  ;*if_icmpge
                  │   ││                                                ; - com.google.re2j.Unicode::simpleFold@48 (line 215)
                  │   ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 65)
                  │   ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.15%    0.19%  │   ││  0x00007f34b9223b65: cmp    $0x3f,%r8d
                  │   ││  0x00007f34b9223b69: jae    0x00007f34b9224329
  0.16%    0.17%  │   ││  0x00007f34b9223b6f: mov    0x10(%r9,%r8,4),%ebp  ;*aaload
                  │   ││                                                ; - com.google.re2j.Unicode::simpleFold@55 (line 215)
                  │   ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 65)
                  │   ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.02%    0.04%  │   ││  0x00007f34b9223b74: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f34b9224ac9
  0.00%    0.00%  │   ││  0x00007f34b9223b79: test   %r10d,%r10d
                  │   ││  0x00007f34b9223b7c: jbe    0x00007f34b9224375
  0.15%    0.23%  │   ││  0x00007f34b9223b82: mov    0x10(%r12,%rbp,8),%ebp  ;*iaload
                  │   ││                                                ; - com.google.re2j.Unicode::simpleFold@57 (line 215)
                  │   ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 65)
                  │   ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.16%    0.12%  │   ││  0x00007f34b9223b87: cmp    0x20(%rsp),%ebp
                  │   ││  0x00007f34b9223b8b: je     0x00007f34b922452d  ;*if_icmpne
                  │   ││                                                ; - com.google.re2j.Unicode::simpleFold@59 (line 215)
                  │   ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 65)
                  │   ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.05%    0.02%  │   ││  0x00007f34b9223b91: mov    0x20(%rsp),%r8d
                  │   ││  0x00007f34b9223b96: cmp    $0x7f,%r8d
                  │   ││  0x00007f34b9223b9a: jg     0x00007f34b9224569  ;*if_icmpgt
                  │   ││                                                ; - com.google.re2j.Unicode::toLower@3 (line 177)
                  │   ││                                                ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                  │   ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 65)
                  │   ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.19%    0.17%  │   ││  0x00007f34b9223ba0: cmp    $0x41,%r8d
                  │   ││  0x00007f34b9223ba4: jl     0x00007f34b9224491  ;*if_icmpgt
                  │   ││                                                ; - com.google.re2j.Unicode::toLower@9 (line 178)
                  │   ││                                                ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                  │   ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 65)
                  │   ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.14%    0.15%  │   ││  0x00007f34b9223baa: cmp    $0x5a,%r8d
                  │ ╭ ││  0x00007f34b9223bae: jg     0x00007f34b9223bbc  ;*if_icmpgt
                  │ │ ││                                                ; - com.google.re2j.Unicode::toLower@15 (line 178)
                  │ │ ││                                                ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                  │ │ ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 65)
                  │ │ ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
                  │ │ ││  0x00007f34b9223bb0: mov    %r8d,%r10d
                  │ │ ││  0x00007f34b9223bb3: add    $0x20,%r10d        ;*iinc
                  │ │ ││                                                ; - com.google.re2j.Unicode::toLower@18 (line 179)
                  │ │ ││                                                ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                  │ │ ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 65)
                  │ │ ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
                  │ │ ││  0x00007f34b9223bb7: cmp    %r8d,%r10d
                  │ │╭││  0x00007f34b9223bba: jne    0x00007f34b9223bd7  ;*if_icmpeq
                  │ ││││                                                ; - com.google.re2j.Unicode::simpleFold@77 (line 224)
                  │ ││││                                                ; - com.google.re2j.Inst::matchRune@50 (line 65)
                  │ ││││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.04%    0.02%  │ ↘│││  0x00007f34b9223bbc: cmp    $0x61,%r8d
                  │  │││  0x00007f34b9223bc0: jl     0x00007f34b92247e1  ;*if_icmpgt
                  │  │││                                                ; - com.google.re2j.Unicode::toUpper@9 (line 167)
                  │  │││                                                ; - com.google.re2j.Unicode::simpleFold@83 (line 227)
                  │  │││                                                ; - com.google.re2j.Inst::matchRune@50 (line 65)
                  │  │││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.18%    0.17%  │  │││  0x00007f34b9223bc6: cmp    $0x7a,%r8d
                  │  │││  0x00007f34b9223bca: jg     0x00007f34b922482d  ;*if_icmpgt
                  │  │││                                                ; - com.google.re2j.Unicode::toUpper@15 (line 167)
                  │  │││                                                ; - com.google.re2j.Unicode::simpleFold@83 (line 227)
                  │  │││                                                ; - com.google.re2j.Inst::matchRune@50 (line 65)
                  │  │││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.12%    0.15%  │  │││  0x00007f34b9223bd0: mov    %r8d,%r10d
  0.02%    0.03%  │  │││  0x00007f34b9223bd3: add    $0xffffffe0,%r10d  ; OopMap{r9=Oop rdi=NarrowOop rdx=NarrowOop rsi=Oop rax=Oop r14=NarrowOop [8]=Oop [24]=Oop [40]=Oop off=1719}
                  │  │││                                                ;*goto
                  │  │││                                                ; - com.google.re2j.Inst::matchRune@54 (line 65)
                  │  │││                                                ; - com.google.re2j.Machine::step@308 (line 306)
                  │  ↘││  0x00007f34b9223bd7: test   %eax,0x1787b423(%rip)        # 0x00007f34d0a9f000
                  │   ││                                                ;*goto
                  │   ││                                                ; - com.google.re2j.Inst::matchRune@54 (line 65)
                  │   ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
                  │   ││                                                ;   {poll}
  0.14%    0.17%  │   ││  0x00007f34b9223bdd: cmp    %r13d,%r10d
                  │   ││  0x00007f34b9223be0: je     0x00007f34b9223a10  ;*if_icmpeq
                  │   ││                                                ; - com.google.re2j.Inst::matchRune@39 (line 64)
                  │   ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
                  │   ││  0x00007f34b9223be6: mov    %r13d,%r11d        ;*iload_1
                  │   ││                                                ; - com.google.re2j.Inst::matchRune@42 (line 66)
                  │   ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.05%    0.03%  │   ││  0x00007f34b9223be9: cmp    %r10d,%ecx
                  │   ││  0x00007f34b9223bec: je     0x00007f34b9223f00  ;*if_icmpne
                  │   ││                                                ; - com.google.re2j.Inst::matchRune@44 (line 66)
                  │   ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.11%    0.13%  │   ││  0x00007f34b9223bf2: mov    %r10d,0x20(%rsp)
  0.06%    0.12%  │   ││  0x00007f34b9223bf7: mov    %r11d,%r13d
  0.07%    0.09%  │   ││  0x00007f34b9223bfa: mov    $0x1f,%r10d
  0.06%    0.04%  │   ││  0x00007f34b9223c00: mov    $0x1f,%r11d
  0.11%    0.15%  │   ││  0x00007f34b9223c06: xor    %r8d,%r8d
  0.10%    0.06%  │   ││  0x00007f34b9223c09: mov    $0x3f,%ebx
  0.06%    0.13%  │   ││  0x00007f34b9223c0e: mov    %r8d,0x30(%rsp)
  0.03%    0.05%  │   ╰│  0x00007f34b9223c13: jmpq   0x00007f34b9223b13
  0.36%    0.49%  ↘    │  0x00007f34b9223c18: mov    %r11d,%r8d
  0.05%    0.04%       │  0x00007f34b9223c1b: inc    %r8d               ;*iadd
                       │                                                ; - com.google.re2j.Unicode::simpleFold@33 (line 210)
                       │                                                ; - com.google.re2j.Inst::matchRune@50 (line 65)
                       │                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.07%    0.10%       │  0x00007f34b9223c1e: mov    %ebx,%r11d
  0.03%    0.03%       ╰  0x00007f34b9223c21: jmpq   0x00007f34b9223b50
  0.08%    0.06%          0x00007f34b9223c26: xor    %r11d,%r11d
                          0x00007f34b9223c29: mov    0x20(%rsp),%ecx
                          0x00007f34b9223c2d: mov    0x9c(%rsp),%edi
  0.08%    0.05%          0x00007f34b9223c34: jmpq   0x00007f34b92236c6
                          0x00007f34b9223c39: mov    %eax,%ebx
                          0x00007f34b9223c3b: sar    %ebx
                          0x00007f34b9223c3d: add    %eax,%ebx          ;*iadd
                                                                        ; - java.util.ArrayList::grow@10 (line 255)
                                                                        ; - java.util.ArrayList::ensureExplicitCapacity@22 (line 235)
                                                                        ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                                        ; - java.util.ArrayList::add@7 (line 458)
                                                                        ; - com.google.re2j.Machine::step@410 (line 329)
                          0x00007f34b9223c3f: mov    %ebx,%r10d
                          0x00007f34b9223c42: sub    %esi,%r10d
....................................................................................................
 14.73%   19.13%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 508 (228 bytes) 

                                                                    ; - com.google.re2j.Machine::step@250 (line 293)
                      0x00007f34b92238e3: mov    0x8(%rsp),%r11
                      0x00007f34b92238e8: mov    %r12d,0xc(%r11)    ;*putfield size
                                                                    ; - com.google.re2j.Machine::step@293 (line 300)
                      0x00007f34b92238ec: mov    0x28(%rsp),%r11
                      0x00007f34b92238f1: movb   $0x1,0xc(%r11)     ;*putfield matched
                                                                    ; - com.google.re2j.Machine::step@298 (line 302)
                      0x00007f34b92238f6: mov    0x20(%rsp),%ecx
                      0x00007f34b92238fa: jmpq   0x00007f34b92235af  ;*if_icmpge
                                                                    ; - com.google.re2j.Machine::step@18 (line 264)
  0.00%               0x00007f34b92238ff: mov    0x8(%rsp),%r10
  0.05%    0.03%      0x00007f34b9223904: mov    %r12d,0xc(%r10)    ;*getfield size
                                                                    ; - com.google.re2j.Machine::step@15 (line 264)
  0.01%    0.01%      0x00007f34b9223908: add    $0x80,%rsp
  0.07%    0.08%      0x00007f34b922390f: pop    %rbp
  0.00%               0x00007f34b9223910: test   %eax,0x1787b6ea(%rip)        # 0x00007f34d0a9f000
                                                                    ;   {poll_return}
  0.06%    0.10%      0x00007f34b9223916: retq   
                      0x00007f34b9223917: nopw   0x0(%rax,%rax,1)
  0.28%    0.31%  ↗   0x00007f34b9223920: mov    %r8d,%r10d
  0.52%    0.59%  │   0x00007f34b9223923: vmovd  %r8d,%xmm1
  0.59%    0.41%  │   0x00007f34b9223928: mov    %r11d,0x20(%rsp)
  0.43%    0.24%  │   0x00007f34b922392d: sub    %r11d,%r10d        ;*isub
                  │                                                 ; - com.google.re2j.Unicode::simpleFold@15 (line 208)
                  │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 63)
                  │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.24%    0.42%  │   0x00007f34b9223930: mov    %r10d,%ebx
  0.53%    0.59%  │   0x00007f34b9223933: sar    $0x1f,%ebx
  0.51%    0.29%  │   0x00007f34b9223936: shr    $0x1f,%ebx
  0.45%    0.18%  │   0x00007f34b9223939: add    %r10d,%ebx
  0.37%    0.41%  │   0x00007f34b922393c: sar    %ebx
  0.50%    0.74%  │   0x00007f34b922393e: mov    %r11d,%r8d
  0.57%    0.34%  │   0x00007f34b9223941: add    %ebx,%r8d          ;*idiv
                  │                                                 ; - com.google.re2j.Unicode::simpleFold@17 (line 208)
                  │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 63)
                  │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.40%    0.19%  │   0x00007f34b9223944: cmp    $0x3f,%r8d
                  │   0x00007f34b9223948: jae    0x00007f34b92241a1
  0.36%    0.45%  │   0x00007f34b922394e: movslq %ebx,%r10
  0.76%    0.90%  │   0x00007f34b9223951: movslq 0x20(%rsp),%r11
  0.61%    0.61%  │   0x00007f34b9223956: add    %r10,%r11
  0.43%    0.67%  │   0x00007f34b9223959: mov    0x10(%r9,%r11,4),%ebp  ;*aaload
                  │                                                 ; - com.google.re2j.Unicode::simpleFold@24 (line 209)
                  │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 63)
                  │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.33%    0.48%  │   0x00007f34b922395e: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f34b9224a05
  1.43%    1.46%  │   0x00007f34b9223963: test   %r11d,%r11d
                  │   0x00007f34b9223966: jbe    0x00007f34b92241f5  ;*iaload
                  │                                                 ; - com.google.re2j.Unicode::simpleFold@26 (line 209)
                  │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 63)
                  │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.92%    1.01%  │   0x00007f34b922396c: mov    0x10(%r12,%rbp,8),%r11d
  0.36%    0.72%  │   0x00007f34b9223971: cmp    %r13d,%r11d
                  │   0x00007f34b9223974: jl     0x00007f34b9223a27  ;*if_icmpge
                  │                                                 ; - com.google.re2j.Unicode::simpleFold@28 (line 209)
                  │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 63)
                  │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.58%    0.76%  │   0x00007f34b922397a: mov    0x20(%rsp),%r11d   ; OopMap{r9=Oop rdi=NarrowOop rdx=NarrowOop rsi=Oop rax=Oop r14=NarrowOop [8]=Oop [24]=Oop [40]=Oop off=1119}
                  │                                                 ;*goto
                  │                                                 ; - com.google.re2j.Unicode::simpleFold@40 (line 214)
                  │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 63)
                  │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.71%    0.56%  │   0x00007f34b922397f: test   %eax,0x1787b67b(%rip)        # 0x00007f34d0a9f000
                  │                                                 ;*goto
                  │                                                 ; - com.google.re2j.Unicode::simpleFold@40 (line 214)
                  │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 63)
                  │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
                  │                                                 ;   {poll}
  0.63%    0.67%  │   0x00007f34b9223985: cmp    %r8d,%r11d
                  ╰   0x00007f34b9223988: jl     0x00007f34b9223920  ;*if_icmpge
                                                                    ; - com.google.re2j.Unicode::simpleFold@9 (line 207)
                                                                    ; - com.google.re2j.Inst::matchRune@33 (line 63)
                                                                    ; - com.google.re2j.Machine::step@308 (line 306)
  0.09%    0.14%      0x00007f34b922398a: cmp    $0x3f,%r11d
                      0x00007f34b922398e: jge    0x00007f34b92246fd  ;*if_icmpge
                                                                    ; - com.google.re2j.Unicode::simpleFold@48 (line 215)
                                                                    ; - com.google.re2j.Inst::matchRune@33 (line 63)
                                                                    ; - com.google.re2j.Machine::step@308 (line 306)
  0.07%    0.13%      0x00007f34b9223994: cmp    $0x3f,%r11d
                      0x00007f34b9223998: jae    0x00007f34b92243b1
  0.03%    0.06%      0x00007f34b922399e: mov    0x10(%r9,%r11,4),%ebp  ;*aaload
                                                                    ; - com.google.re2j.Unicode::simpleFold@55 (line 215)
                                                                    ; - com.google.re2j.Inst::matchRune@33 (line 63)
                                                                    ; - com.google.re2j.Machine::step@308 (line 306)
  0.13%    0.13%      0x00007f34b92239a3: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f34b9224ae9
  0.09%    0.13%      0x00007f34b92239a8: test   %r10d,%r10d
                      0x00007f34b92239ab: jbe    0x00007f34b9224449
  0.07%    0.10%      0x00007f34b92239b1: mov    0x10(%r12,%rbp,8),%ebp  ;*iaload
                                                                    ; - com.google.re2j.Unicode::simpleFold@57 (line 215)
                                                                    ; - com.google.re2j.Inst::matchRune@33 (line 63)
                                                                    ; - com.google.re2j.Machine::step@308 (line 306)
  0.04%    0.04%      0x00007f34b92239b6: cmp    %r13d,%ebp
                      0x00007f34b92239b9: je     0x00007f34b9224749  ;*if_icmpne
                                                                    ; - com.google.re2j.Unicode::simpleFold@59 (line 215)
                                                                    ; - com.google.re2j.Inst::matchRune@33 (line 63)
                                                                    ; - com.google.re2j.Machine::step@308 (line 306)
  0.09%    0.18%      0x00007f34b92239bf: mov    %r13d,%r11d
  0.06%    0.12%      0x00007f34b92239c2: cmp    $0x7f,%r11d
                      0x00007f34b92239c6: jg     0x00007f34b9224795  ;*if_icmpgt
                                                                    ; - com.google.re2j.Unicode::toLower@3 (line 177)
                                                                    ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                                                                    ; - com.google.re2j.Inst::matchRune@33 (line 63)
                                                                    ; - com.google.re2j.Machine::step@308 (line 306)
  0.07%    0.10%      0x00007f34b92239cc: cmp    $0x41,%r11d
                      0x00007f34b92239d0: jl     0x00007f34b92245f1  ;*if_icmpgt
                                                                    ; - com.google.re2j.Unicode::toLower@9 (line 178)
                                                                    ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                                                                    ; - com.google.re2j.Inst::matchRune@33 (line 63)
                                                                    ; - com.google.re2j.Machine::step@308 (line 306)
  0.02%    0.02%      0x00007f34b92239d6: cmp    $0x5a,%r11d
                   ╭  0x00007f34b92239da: jg     0x00007f34b92239ec  ;*if_icmpgt
                   │                                                ; - com.google.re2j.Unicode::toLower@15 (line 178)
                   │                                                ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                   │                                                ; - com.google.re2j.Inst::matchRune@33 (line 63)
                   │                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.17%    0.16%   │  0x00007f34b92239dc: mov    %r11d,%r10d
  0.08%    0.11%   │  0x00007f34b92239df: add    $0x20,%r10d        ;*iinc
                   │                                                ; - com.google.re2j.Unicode::toLower@18 (line 179)
                   │                                                ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                   │                                                ; - com.google.re2j.Inst::matchRune@33 (line 63)
                   │                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.07%    0.12%   │  0x00007f34b92239e3: cmp    %r11d,%r10d
                   │  0x00007f34b92239e6: jne    0x00007f34b9223be9  ;*if_icmpeq
                   │                                                ; - com.google.re2j.Unicode::simpleFold@77 (line 224)
                   │                                                ; - com.google.re2j.Inst::matchRune@33 (line 63)
                   │                                                ; - com.google.re2j.Machine::step@308 (line 306)
                   ↘  0x00007f34b92239ec: cmp    $0x61,%r11d
                      0x00007f34b92239f0: jl     0x00007f34b9224879  ;*if_icmpgt
....................................................................................................
 13.81%   14.79%  <total for region 3>

....[Hottest Region 4]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 508 (310 bytes) 

                                                                    ;*invokespecial add
                                                                    ; - com.google.re2j.Machine::step@394 (line 325)
                                                                    ;   {optimized virtual_call}
                      0x00007f34b92235fc: test   %rax,%rax
                      0x00007f34b92235ff: je     0x00007f34b9223c26
                      0x00007f34b9223605: mov    %rax,0x50(%rsp)
                      0x00007f34b922360a: mov    0x20(%rsp),%ecx
                      0x00007f34b922360e: mov    0x94(%rsp),%r8d
                      0x00007f34b9223616: mov    0x9c(%rsp),%edi    ;*aload
                                                                    ; - com.google.re2j.Machine::step@399 (line 327)
  0.33%    0.21%      0x00007f34b922361d: mov    0x28(%rsp),%r10
           0.00%      0x00007f34b9223622: mov    0x20(%r10),%ebp    ;*getfield pool
                                                                    ; - com.google.re2j.Machine::step@405 (line 329)
  0.09%    0.10%      0x00007f34b9223626: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f34b92249d5
  0.06%    0.07%      0x00007f34b922362b: cmp    $0xf8002f22,%r10d  ;   {metadata(&apos;java/util/ArrayList&apos;)}
                      0x00007f34b9223632: jne    0x00007f34b9224121
  0.30%    0.26%      0x00007f34b9223638: lea    (%r12,%rbp,8),%r9  ;*invokeinterface add
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
                      0x00007f34b922363c: mov    0x14(%r9),%edx     ;*getfield elementData
                                                                    ; - java.util.ArrayList::ensureCapacityInternal@1 (line 223)
                                                                    ; - java.util.ArrayList::add@7 (line 458)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
  0.09%    0.19%      0x00007f34b9223640: mov    0x10(%r9),%ebp     ;*getfield size
                                                                    ; - java.util.ArrayList::add@2 (line 458)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
  0.06%    0.03%      0x00007f34b9223644: mov    %ebp,%r11d
  0.33%    0.36%      0x00007f34b9223647: inc    %r11d              ;*iadd
                                                                    ; - java.util.ArrayList::add@6 (line 458)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
                      0x00007f34b922364a: cmp    $0xed9f0db7,%edx   ;   {oop(a &apos;java/lang/Object&apos;[0] )}
                      0x00007f34b9223650: je     0x00007f34b9223ed4  ;*if_acmpne
                                                                    ; - java.util.ArrayList::ensureCapacityInternal@7 (line 223)
                                                                    ; - java.util.ArrayList::add@7 (line 458)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
  0.11%    0.06%      0x00007f34b9223656: mov    %r11d,%esi         ;*aload_0
                                                                    ; - java.util.ArrayList::ensureCapacityInternal@17 (line 227)
                                                                    ; - java.util.ArrayList::add@7 (line 458)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
  0.03%    0.05%      0x00007f34b9223659: mov    0xc(%r9),%ebx      ;*getfield modCount
                                                                    ; - java.util.ArrayList::ensureExplicitCapacity@2 (line 231)
                                                                    ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                                    ; - java.util.ArrayList::add@7 (line 458)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
  0.33%    0.27%      0x00007f34b922365d: inc    %ebx
                      0x00007f34b922365f: mov    %ebx,0xc(%r9)      ;*putfield modCount
                                                                    ; - java.util.ArrayList::ensureExplicitCapacity@7 (line 231)
                                                                    ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                                    ; - java.util.ArrayList::add@7 (line 458)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
  0.09%    0.07%      0x00007f34b9223663: mov    0xc(%r12,%rdx,8),%eax  ;*arraylength
                                                                    ; - java.util.ArrayList::ensureExplicitCapacity@15 (line 234)
                                                                    ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                                    ; - java.util.ArrayList::add@7 (line 458)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
                                                                    ; implicit exception: dispatches to 0x00007f34b92249e5
  0.06%    0.09%      0x00007f34b9223668: mov    %esi,%r10d
  0.29%    0.45%      0x00007f34b922366b: sub    %eax,%r10d
  0.09%    0.04%      0x00007f34b922366e: test   %r10d,%r10d
                      0x00007f34b9223671: jg     0x00007f34b9223c39  ;*ifle
                                                                    ; - java.util.ArrayList::ensureExplicitCapacity@17 (line 234)
                                                                    ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                                    ; - java.util.ArrayList::add@7 (line 458)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
  0.18%    0.12%      0x00007f34b9223677: mov    %rdx,%r10
  0.06%    0.04%      0x00007f34b922367a: shl    $0x3,%r10          ;*return
                                                                    ; - java.util.ArrayList::ensureExplicitCapacity@25 (line 236)
                                                                    ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                                    ; - java.util.ArrayList::add@7 (line 458)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
  0.31%    0.33%      0x00007f34b922367e: mov    %r11d,0x10(%r9)    ;*putfield size
                                                                    ; - java.util.ArrayList::add@22 (line 459)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
  0.00%               0x00007f34b9223682: mov    0xc(%r10),%r11d    ; implicit exception: dispatches to 0x00007f34b92249f5
  0.11%    0.14%      0x00007f34b9223686: cmp    %r11d,%ebp
                      0x00007f34b9223689: jae    0x00007f34b92240dd
  0.04%    0.06%      0x00007f34b922368f: mov    0x8(%r10),%r11d
  0.24%    0.36%      0x00007f34b9223693: cmp    $0xf80022f5,%r11d  ;   {metadata(&apos;java/lang/Object&apos;[])}
                      0x00007f34b922369a: jne    0x00007f34b922415d
  0.01%               0x00007f34b92236a0: lea    0x10(%r10,%rbp,4),%r10
  0.15%    0.10%      0x00007f34b92236a5: mov    0x50(%rsp),%r11
  0.02%    0.04%      0x00007f34b92236aa: shr    $0x3,%r11
  0.25%    0.24%      0x00007f34b92236ae: mov    %r11d,(%r10)
  0.04%    0.02%      0x00007f34b92236b1: shr    $0x9,%r10
  0.08%    0.05%      0x00007f34b92236b5: movabs $0x7f34c94a7000,%r11
  0.03%    0.02%      0x00007f34b92236bf: mov    %r12b,(%r11,%r10,1)  ;*aastore
                                                                    ; - java.util.ArrayList::add@26 (line 459)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
  0.33%    0.31%      0x00007f34b92236c3: xor    %r11d,%r11d        ; OopMap{[8]=Oop [24]=Oop [40]=Oop off=422}
                                                                    ;*goto
                                                                    ; - com.google.re2j.Machine::step@419 (line 264)
  0.08%    0.05%   ↗  0x00007f34b92236c6: test   %eax,0x1787b934(%rip)        # 0x00007f34d0a9f000
                   │                                                ;*goto
                   │                                                ; - com.google.re2j.Machine::step@419 (line 264)
                   │                                                ;   {poll}
  0.23%    0.15%   │  0x00007f34b92236cc: mov    0x8(%rsp),%r10
  0.08%    0.08%   │  0x00007f34b92236d1: mov    0xc(%r10),%r11d
  0.45%    0.34%   │  0x00007f34b92236d5: cmp    %r11d,%edi
                   │  0x00007f34b92236d8: jge    0x00007f34b92238ff
  0.06%    0.04%   │  0x00007f34b92236de: mov    %ecx,0x20(%rsp)
  0.23%    0.17%   │  0x00007f34b92236e2: mov    %edi,%r8d          ;*aload_1
                   │                                                ; - com.google.re2j.Machine::step@21 (line 265)
  0.12%    0.17%   │  0x00007f34b92236e5: mov    0x8(%rsp),%r10
  0.50%    0.59%   │  0x00007f34b92236ea: mov    0x10(%r10),%r10d   ;*getfield dense
                   │                                                ; - com.google.re2j.Machine::step@22 (line 265)
  0.25%    0.20%   │  0x00007f34b92236ee: mov    0xc(%r12,%r10,8),%r9d  ; implicit exception: dispatches to 0x00007f34b92249a1
  0.38%    0.37%   │  0x00007f34b92236f3: cmp    %r9d,%r8d
                   │  0x00007f34b92236f6: jae    0x00007f34b922400d
  0.26%    0.21%   │  0x00007f34b92236fc: shl    $0x3,%r10
  0.41%    0.55%   │  0x00007f34b9223700: mov    0x10(%r10,%r8,4),%r10d  ;*aaload
                   │                                                ; - com.google.re2j.Machine::step@27 (line 265)
  0.16%    0.23%   │  0x00007f34b9223705: mov    0x10(%r12,%r10,8),%r11d  ;*getfield thread
                   │                                                ; - com.google.re2j.Machine::step@40 (line 269)
                   │                                                ; implicit exception: dispatches to 0x00007f34b9224a15
  0.99%    1.31%   │  0x00007f34b922370a: mov    %r8d,%edi
  0.10%    0.07%   │  0x00007f34b922370d: inc    %edi               ;*iadd
                   │                                                ; - com.google.re2j.Machine::step@241 (line 293)
  0.33%    0.29%   │  0x00007f34b922370f: test   %r11d,%r11d
                  ╭│  0x00007f34b9223712: jne    0x00007f34b922371f  ;*ifnonnull
                  ││                                                ; - com.google.re2j.Machine::step@47 (line 270)
  0.15%    0.21%  ││  0x00007f34b9223714: mov    0x24(%rsp),%r11d
  0.06%    0.04%  ││  0x00007f34b9223719: mov    0x20(%rsp),%ecx
  0.07%    0.06%  │╰  0x00007f34b922371d: jmp    0x00007f34b92236c6
  0.20%    0.25%  ↘   0x00007f34b922371f: mov    0x24(%rsp),%r9d
  0.16%    0.06%      0x00007f34b9223724: test   %r9d,%r9d
                      0x00007f34b9223727: jne    0x00007f34b92242cd  ;*ifeq
                                                                    ; - com.google.re2j.Machine::step@55 (line 273)
  0.02%    0.02%      0x00007f34b922372d: mov    0x10(%r12,%r11,8),%r9d  ;*getfield inst
                                                                    ; - com.google.re2j.Machine::step@107 (line 278)
  1.16%    1.51%      0x00007f34b9223732: mov    0xc(%r12,%r9,8),%esi  ;*getfield op
                                                                    ; - com.google.re2j.Machine::step@117 (line 280)
                                                                    ; implicit exception: dispatches to 0x00007f34b92249c5
  2.11%    2.54%      0x00007f34b9223737: mov    0x18(%r12,%r9,8),%ecx  ;*getfield runes
                                                                    ; - com.google.re2j.Machine::step@320 (line 310)
  0.09%    0.03%      0x00007f34b922373c: mov    0xc(%r12,%r11,8),%r14d  ;*getfield cap
                                                                    ; - com.google.re2j.Machine::step@176 (line 287)
                      0x00007f34b9223741: lea    (%r12,%r11,8),%r10  ;*getfield thread
                                                                    ; - com.google.re2j.Machine::step@40 (line 269)
  0.01%    0.01%      0x00007f34b9223745: cmp    $0x9,%esi
                      0x00007f34b9223748: je     0x00007f34b9223590
  0.31%    0.50%      0x00007f34b922374e: cmp    $0x9,%esi
                      0x00007f34b9223751: jle    0x00007f34b9223780
  0.03%    0.01%      0x00007f34b9223753: cmp    $0xb,%esi
                      0x00007f34b9223756: jne    0x00007f34b92235b6  ;*tableswitch
                                                                    ; - com.google.re2j.Machine::step@120 (line 280)
                      0x00007f34b922375c: mov    0x20(%rsp),%ecx
                      0x00007f34b9223760: cmp    $0xa,%ecx
                      0x00007f34b9223763: je     0x00007f34b92235af  ;*if_icmpeq
                                                                    ; - com.google.re2j.Machine::step@348 (line 318)
                      0x00007f34b9223769: mov    %r8d,0x94(%rsp)
                      0x00007f34b9223771: mov    %edi,0x9c(%rsp)
                      0x00007f34b9223778: mov    %r10,%rax
                      0x00007f34b922377b: jmpq   0x00007f34b92235d1
....................................................................................................
 13.09%   14.19%  <total for region 4>

....[Hottest Region 5]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 502 (404 bytes) 

                          0x00007f34b9214f46: mov    %r10,(%rsp)
                          0x00007f34b9214f4a: nop
                          0x00007f34b9214f4b: callq  0x00007f34b9046020  ; OopMap{off=688}
                                                                        ;*invokespecial add
                                                                        ; - com.google.re2j.Machine::add@203 (line 369)
                                                                        ;   {optimized virtual_call}
                  ╭       0x00007f34b9214f50: jmpq   0x00007f34b92150e8
                  │       0x00007f34b9214f55: mov    0x70(%rsp),%rax
                  │╭      0x00007f34b9214f5a: jmpq   0x00007f34b92150e8  ;*tableswitch
                  ││                                                    ; - com.google.re2j.Machine::add@40 (line 349)
  1.57%    1.69%  ││      0x00007f34b9214f5f: mov    0x8(%rsp),%rsi
                  ││      0x00007f34b9214f64: mov    0x48(%rsp),%rdx
                  ││      0x00007f34b9214f69: mov    0x1c(%rsp),%r8d
  0.00%           ││      0x00007f34b9214f6e: mov    0x20(%rsp),%r9
  0.37%    0.35%  ││      0x00007f34b9214f73: mov    0x28(%rsp),%edi
           0.00%  ││      0x00007f34b9214f77: mov    0x70(%rsp),%r10
                  ││      0x00007f34b9214f7c: mov    %r10,(%rsp)
  0.01%           ││      0x00007f34b9214f80: mov    %rsi,%rbp
  0.31%    0.35%  ││      0x00007f34b9214f83: callq  0x00007f34b9046020  ; OopMap{rbp=Oop [32]=Oop [56]=Oop [72]=Oop off=744}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@127 (line 358)
                  ││                                                    ;   {optimized virtual_call}
  0.00%    0.00%  ││      0x00007f34b9214f88: mov    0x38(%rsp),%r10
  0.16%    0.10%  ││      0x00007f34b9214f8d: mov    0x14(%r10),%ecx    ;*getfield arg
                  ││                                                    ; - com.google.re2j.Machine::add@136 (line 359)
  0.21%    0.24%  ││      0x00007f34b9214f91: mov    %rbp,%rsi
  0.00%           ││      0x00007f34b9214f94: mov    0x48(%rsp),%rdx
                  ││      0x00007f34b9214f99: mov    0x1c(%rsp),%r8d
  0.21%    0.15%  ││      0x00007f34b9214f9e: mov    0x20(%rsp),%r9
  0.13%    0.24%  ││      0x00007f34b9214fa3: mov    0x28(%rsp),%edi
           0.00%  ││      0x00007f34b9214fa7: mov    %rax,(%rsp)
  0.01%           ││      0x00007f34b9214fab: callq  0x00007f34b9046020  ; OopMap{off=784}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@146 (line 359)
                  ││                                                    ;   {optimized virtual_call}
                  ││╭     0x00007f34b9214fb0: jmpq   0x00007f34b92150e8  ;*aload
                  │││                                                   ; - com.google.re2j.Machine::add@293 (line 388)
  2.51%    1.74%  │││     0x00007f34b9214fb5: mov    0x38(%rsp),%r10
                  │││     0x00007f34b9214fba: mov    %r10,%r8
                  │││     0x00007f34b9214fbd: shr    $0x3,%r8           ;*putfield inst
                  │││                                                   ; - com.google.re2j.Machine::alloc@47 (line 151)
                  │││                                                   ; - com.google.re2j.Machine::add@301 (line 389)
                  │││     0x00007f34b9214fc1: mov    0x70(%rsp),%rbp
  0.57%    0.24%  │││     0x00007f34b9214fc6: test   %rbp,%rbp
                  │││╭    0x00007f34b9214fc9: je     0x00007f34b9214fe9  ;*ifnonnull
                  ││││                                                  ; - com.google.re2j.Machine::add@295 (line 388)
                  ││││    0x00007f34b9214fcb: mov    %r8d,0x10(%rbp)
                  ││││    0x00007f34b9214fcf: mov    %rbp,%r10
                  ││││    0x00007f34b9214fd2: shr    $0x9,%r10
  0.06%    0.03%  ││││    0x00007f34b9214fd6: movabs $0x7f34c94a7000,%r11
                  ││││    0x00007f34b9214fe0: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                  ││││                                                  ; - com.google.re2j.Machine::add@313 (line 391)
                  ││││╭   0x00007f34b9214fe4: jmpq   0x00007f34b9215079
                  │││↘│   0x00007f34b9214fe9: mov    0x8(%rsp),%r10
                  │││ │   0x00007f34b9214fee: mov    0x20(%r10),%ebp    ;*getfield pool
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@1 (line 147)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
  0.01%           │││ │   0x00007f34b9214ff2: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f34b92154e5
  0.45%    0.15%  │││ │   0x00007f34b9214ff7: cmp    $0xf8002f22,%r11d  ;   {metadata(&apos;java/util/ArrayList&apos;)}
                  │││ │   0x00007f34b9214ffe: jne    0x00007f34b92152e1
                  │││ │   0x00007f34b9215004: lea    (%r12,%rbp,8),%rcx  ;*invokeinterface size
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@4 (line 147)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
                  │││ │   0x00007f34b9215008: mov    0x10(%rcx),%r9d    ;*getfield size
                  │││ │                                                 ; - java.util.ArrayList::size@1 (line 278)
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@4 (line 147)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
                  │││ │   0x00007f34b921500c: test   %r9d,%r9d
                  │││ │   0x00007f34b921500f: jle    0x00007f34b9215335  ;*ifle
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@11 (line 148)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
  0.49%    0.14%  │││ │   0x00007f34b9215015: mov    %r9d,%r11d
                  │││ │   0x00007f34b9215018: dec    %r11d              ;*isub
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@20 (line 148)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
                  │││ │   0x00007f34b921501b: cmp    %r9d,%r11d
                  │││ │   0x00007f34b921501e: jge    0x00007f34b9215359  ;*if_icmplt
                  │││ │                                                 ; - java.util.ArrayList::rangeCheck@5 (line 652)
                  │││ │                                                 ; - java.util.ArrayList::remove@2 (line 492)
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@21 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
  0.00%    0.00%  │││ │   0x00007f34b9215024: incl   0xc(%rcx)          ;*putfield modCount
                  │││ │                                                 ; - java.util.ArrayList::remove@12 (line 494)
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@21 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
  0.44%    0.24%  │││ │   0x00007f34b9215027: mov    0x14(%rcx),%ebp    ;*getfield elementData
                  │││ │                                                 ; - java.util.ArrayList::elementData@1 (line 418)
                  │││ │                                                 ; - java.util.ArrayList::remove@17 (line 495)
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@21 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
           0.00%  │││ │   0x00007f34b921502a: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f34b92154f5
  0.43%    0.35%  │││ │   0x00007f34b921502f: cmp    %r10d,%r11d
                  │││ │   0x00007f34b9215032: jae    0x00007f34b92152b9  ;*aaload
                  │││ │                                                 ; - java.util.ArrayList::elementData@5 (line 418)
                  │││ │                                                 ; - java.util.ArrayList::remove@17 (line 495)
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@21 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
  0.00%           │││ │   0x00007f34b9215038: mov    %r11d,0x10(%rcx)   ;*putfield size
                  │││ │                                                 ; - java.util.ArrayList::remove@62 (line 501)
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@21 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
           0.00%  │││ │   0x00007f34b921503c: lea    (%r12,%rbp,8),%r10
                  │││ │   0x00007f34b9215040: mov    0xc(%r10,%r9,4),%ebp  ;*aaload
                  │││ │                                                 ; - java.util.ArrayList::elementData@5 (line 418)
                  │││ │                                                 ; - java.util.ArrayList::remove@17 (line 495)
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@21 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
  0.39%    0.29%  │││ │   0x00007f34b9215045: mov    %r12d,0xc(%r10,%r9,4)  ;*aastore
                  │││ │                                                 ; - java.util.ArrayList::remove@66 (line 501)
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@21 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
                  │││ │   0x00007f34b921504a: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f34b9215509
  0.00%    0.01%  │││ │   0x00007f34b921504f: cmp    $0xf8019b16,%r11d  ;   {metadata(&apos;com/google/re2j/Machine$Thread&apos;)}
                  │││ │   0x00007f34b9215056: jne    0x00007f34b9215419
                  │││ │   0x00007f34b921505c: shl    $0x3,%rbp          ;*checkcast
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@26 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
  0.43%    0.28%  │││ │   0x00007f34b9215060: mov    %r8d,0x10(%rbp)
  0.02%    0.01%  │││ │   0x00007f34b9215064: mov    %rbp,%r10
                  │││ │   0x00007f34b9215067: shr    $0x9,%r10
  0.00%           │││ │   0x00007f34b921506b: movabs $0x7f34c94a7000,%r11
  0.42%    0.20%  │││ │   0x00007f34b9215075: mov    %r12b,(%r11,%r10,1)  ;*aload
                  │││ │                                                 ; - com.google.re2j.Machine::add@316 (line 393)
  0.01%    0.01%  │││ ↘   0x00007f34b9215079: mov    0x20(%rsp),%rdi
  0.05%    0.03%  │││     0x00007f34b921507e: mov    0xc(%rdi),%r10d    ;*arraylength
                  │││                                                   ; - com.google.re2j.Machine::add@318 (line 393)
                  │││                                                   ; implicit exception: dispatches to 0x00007f34b92154d5
  0.01%           │││     0x00007f34b9215082: test   %r10d,%r10d
                  │││     0x00007f34b9215085: jle    0x00007f34b921531a  ;*ifle
                  │││                                                   ; - com.google.re2j.Machine::add@319 (line 393)
  0.41%    0.17%  │││     0x00007f34b921508b: mov    0xc(%rbp),%r11d    ;*getfield cap
                  │││                                                   ; - com.google.re2j.Machine::add@324 (line 393)
  0.00%    0.00%  │││     0x00007f34b921508f: mov    %r11,%r8
  0.08%    0.02%  │││     0x00007f34b9215092: shl    $0x3,%r8
                  │││     0x00007f34b9215096: cmp    %rdi,%r8
                  │││  ╭  0x00007f34b9215099: je     0x00007f34b92150c6  ;*if_acmpeq
                  │││  │                                                ; - com.google.re2j.Machine::add@329 (line 393)
  0.36%    0.18%  │││  │  0x00007f34b921509b: mov    0xc(%r12,%r11,8),%r9d  ; implicit exception: dispatches to 0x00007f34b9215525
  0.01%    0.02%  │││  │  0x00007f34b92150a0: lea    (%r12,%r11,8),%rcx  ;*getfield cap
                  │││  │                                                ; - com.google.re2j.Machine::add@324 (line 393)
                  │││  │  0x00007f34b92150a4: cmp    %r10d,%r9d
                  │││  │  0x00007f34b92150a7: jb     0x00007f34b92152f5
  0.01%    0.00%  │││  │  0x00007f34b92150ad: lea    0x10(%r12,%r11,8),%rsi
  0.43%    0.21%  │││  │  0x00007f34b92150b2: add    $0x10,%rdi
  0.01%    0.00%  │││  │  0x00007f34b92150b6: movslq %r10d,%rdx
           0.01%  │││  │  0x00007f34b92150b9: movabs $0x7f34b9052640,%r10
  0.02%           │││  │  0x00007f34b92150c3: callq  *%r10              ;*aload
                  │││  │                                                ; - com.google.re2j.Machine::add@347 (line 396)
  0.01%    0.00%  │││  ↘  0x00007f34b92150c6: mov    %rbx,%r10
  0.01%    0.03%  │││     0x00007f34b92150c9: mov    %rbp,%r11
  0.10%    0.07%  │││     0x00007f34b92150cc: shr    $0x3,%r11
  0.46%    0.62%  │││     0x00007f34b92150d0: mov    %r11d,0x10(%rbx)
  0.00%           │││     0x00007f34b92150d4: shr    $0x9,%r10
  0.02%    0.02%  │││     0x00007f34b92150d8: movabs $0x7f34c94a7000,%r11
  0.07%    0.05%  │││     0x00007f34b92150e2: mov    %r12b,(%r11,%r10,1)  ;*putfield thread
                  │││                                                   ; - com.google.re2j.Machine::add@351 (line 396)
  0.36%    0.69%  │││     0x00007f34b92150e6: xor    %eax,%eax          ;*synchronization entry
                  │││                                                   ; - com.google.re2j.Machine::add@-1 (line 341)
  0.35%    0.31%  ↘↘↘     0x00007f34b92150e8: add    $0x60,%rsp
  0.03%    0.02%          0x00007f34b92150ec: pop    %rbp
  0.44%    0.72%          0x00007f34b92150ed: test   %eax,0x17889f0d(%rip)        # 0x00007f34d0a9f000
                                                                        ;   {poll_return}
  0.34%    0.52%          0x00007f34b92150f3: retq                      ;*tableswitch
                                                                        ; - com.google.re2j.Machine::add@40 (line 349)
                          0x00007f34b92150f4: mov    0x8(%rsp),%rsi
                          0x00007f34b92150f9: mov    0x48(%rsp),%rdx
                          0x00007f34b92150fe: mov    0x1c(%rsp),%r8d
                          0x00007f34b9215103: mov    0x20(%rsp),%r9
                          0x00007f34b9215108: mov    %ebx,%edi
                          0x00007f34b921510a: mov    0x70(%rsp),%r10
                          0x00007f34b921510f: mov    %r10,(%rsp)
                          0x00007f34b9215113: callq  0x00007f34b9046020  ; OopMap{off=1144}
....................................................................................................
 12.85%   10.54%  <total for region 5>

....[Hottest Regions]...............................................................................
 26.96%   23.84%         C2, level 4  com.google.re2j.Machine::add, version 502 (394 bytes) 
 14.73%   19.13%         C2, level 4  com.google.re2j.Machine::step, version 508 (342 bytes) 
 13.81%   14.79%         C2, level 4  com.google.re2j.Machine::step, version 508 (228 bytes) 
 13.09%   14.19%         C2, level 4  com.google.re2j.Machine::step, version 508 (310 bytes) 
 12.85%   10.54%         C2, level 4  com.google.re2j.Machine::add, version 502 (404 bytes) 
  5.09%    5.69%         C2, level 4  com.google.re2j.Machine::match, version 546 (815 bytes) 
  3.64%    3.76%         C2, level 4  com.google.re2j.Machine::step, version 508 (149 bytes) 
  3.15%    1.63%        runtime stub  StubRoutines::jint_disjoint_arraycopy (128 bytes) 
  1.57%    1.55%         C2, level 4  com.google.re2j.Machine::step, version 508 (183 bytes) 
  0.63%    0.62%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.51%    0.58%         C2, level 4  com.google.re2j.Machine::step, version 508 (34 bytes) 
  0.32%    0.40%         C2, level 4  com.google.re2j.Machine::add, version 502 (56 bytes) 
  0.26%    0.26%         C2, level 4  com.google.re2j.Machine::match, version 546 (103 bytes) 
  0.15%    0.06%         C2, level 4  com.google.re2j.Machine::init, version 559 (56 bytes) 
  0.14%    0.02%   [kernel.kallsyms]  [unknown] (2 bytes) 
  0.10%                  C2, level 4  com.google.re2j.Machine::init, version 559 (72 bytes) 
  0.08%    0.02%   [kernel.kallsyms]  [unknown] (5 bytes) 
  0.08%    0.01%   [kernel.kallsyms]  [unknown] (42 bytes) 
  0.08%    0.03%   [kernel.kallsyms]  [unknown] (36 bytes) 
  0.07%    0.08%         C2, level 4  com.google.re2j.Machine::step, version 508 (43 bytes) 
  2.69%    2.81%  <...other 530 warm regions...>
....................................................................................................
 99.99%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 47.42%   54.07%         C2, level 4  com.google.re2j.Machine::step, version 508 
 40.13%   34.77%         C2, level 4  com.google.re2j.Machine::add, version 502 
  5.45%    6.03%         C2, level 4  com.google.re2j.Machine::match, version 546 
  3.15%    1.63%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
  2.26%    1.88%   [kernel.kallsyms]  [unknown] 
  0.33%    0.11%         C2, level 4  com.google.re2j.Machine::init, version 559 
  0.13%    0.05%         C2, level 4  com.google.re2j.Matcher::find, version 577 
  0.07%    0.11%        libc-2.26.so  vfprintf 
  0.06%    0.08%      hsdis-amd64.so  decode_instructions 
  0.04%    0.06%        libc-2.26.so  _IO_fwrite 
  0.04%    0.15%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.04%    0.05%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.03%    0.05%        libc-2.26.so  __strlen_avx2 
  0.03%    0.03%         C2, level 4  com.github.arnaudroger.re2j.Re2jFindRegex::testCombine, version 601 
  0.03%    0.00%           libjvm.so  _ZN13defaultStream5writeEPKcm 
  0.03%    0.04%           libjvm.so  _ZN13xmlTextStream5writeEPKcm 
  0.02%    0.01%  libpthread-2.26.so  __libc_write 
  0.02%    0.03%        libc-2.26.so  __strchr_avx2 
  0.02%    0.00%  libpthread-2.26.so  __pthread_disable_asynccancel 
  0.02%    0.02%           libjvm.so  _ZN7Monitor6unlockEv 
  0.66%    0.49%  <...other 102 warm methods...>
....................................................................................................
 99.99%   99.68%  <totals>

....[Distribution by Source]........................................................................
 93.54%   95.12%         C2, level 4
  3.15%    1.63%        runtime stub
  2.26%    1.88%   [kernel.kallsyms]
  0.53%    0.70%           libjvm.so
  0.29%    0.46%        libc-2.26.so
  0.08%    0.09%  libpthread-2.26.so
  0.07%    0.08%      hsdis-amd64.so
  0.04%    0.02%         interpreter
  0.02%    0.01%         C1, level 3
  0.00%    0.00%              [vdso]
  0.00%               perf-10409.map
....................................................................................................
 99.99%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                        Mode  Cnt     Score    Error  Units
Re2jFindRegex.testCombine       thrpt   20  1644.010 ± 21.551  ops/s
Re2jFindRegex.testCombine:·asm  thrpt            NaN             ---
