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
# Warmup Iteration   1: 2864.079 ops/s
# Warmup Iteration   2: 5696.932 ops/s
# Warmup Iteration   3: 5802.596 ops/s
# Warmup Iteration   4: 5785.471 ops/s
# Warmup Iteration   5: 5783.813 ops/s
# Warmup Iteration   6: 5803.903 ops/s
# Warmup Iteration   7: 5802.183 ops/s
# Warmup Iteration   8: 5801.508 ops/s
# Warmup Iteration   9: 5733.435 ops/s
# Warmup Iteration  10: 5727.520 ops/s
# Warmup Iteration  11: 5730.500 ops/s
# Warmup Iteration  12: 5789.409 ops/s
# Warmup Iteration  13: 5795.136 ops/s
# Warmup Iteration  14: 5797.205 ops/s
# Warmup Iteration  15: 5796.892 ops/s
# Warmup Iteration  16: 5797.441 ops/s
# Warmup Iteration  17: 5744.003 ops/s
# Warmup Iteration  18: 5813.082 ops/s
# Warmup Iteration  19: 5813.328 ops/s
# Warmup Iteration  20: 5817.281 ops/s
Iteration   1: 5618.315 ops/s
Iteration   2: 5217.716 ops/s
Iteration   3: 5218.561 ops/s
Iteration   4: 5218.456 ops/s
Iteration   5: 5218.095 ops/s
Iteration   6: 5685.529 ops/s
Iteration   7: 5834.516 ops/s
Iteration   8: 5834.035 ops/s
Iteration   9: 5833.740 ops/s
Iteration  10: 5814.855 ops/s
Iteration  11: 5775.875 ops/s
Iteration  12: 5825.088 ops/s
Iteration  13: 5824.864 ops/s
Iteration  14: 5820.510 ops/s
Iteration  15: 5824.591 ops/s
Iteration  16: 5823.598 ops/s
Iteration  17: 5823.856 ops/s
Iteration  18: 5819.564 ops/s
Iteration  19: 5824.919 ops/s
Iteration  20: 5824.367 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  5684.053 ±(99.9%) 212.745 ops/s [Average]
  (min, avg, max) = (5217.716, 5684.053, 5834.516), stdev = 244.998
  CI (99.9%): [5471.307, 5896.798] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1:·asm":
PrintAssembly processed: 201295 total address lines.
Perf output processed (skipped 23.468 seconds):
 Column 1: cycles (20360 events)
 Column 2: instructions (20333 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 514 (351 bytes) 

                      # parm4:    rdi       = int
                      # parm5:    [sp+0x70]   = &apos;com/google/re2j/Machine$Thread&apos;  (sp of caller)
                      0x00007f1cc85a18a0: mov    0x8(%rsi),%r10d    ;   {no_reloc}
                      0x00007f1cc85a18a4: shl    $0x3,%r10
                      0x00007f1cc85a18a8: cmp    %r10,%rax
                      0x00007f1cc85a18ab: jne    0x00007f1cc83bde20  ;   {runtime_call}
                      0x00007f1cc85a18b1: data16 xchg %ax,%ax
                      0x00007f1cc85a18b4: nopl   0x0(%rax,%rax,1)
                      0x00007f1cc85a18bc: data16 data16 xchg %ax,%ax
                    [Verified Entry Point]
  0.36%    0.50%      0x00007f1cc85a18c0: mov    %eax,-0x14000(%rsp)
  0.85%    0.78%      0x00007f1cc85a18c7: push   %rbp
  0.19%    0.34%      0x00007f1cc85a18c8: sub    $0x60,%rsp         ;*synchronization entry
                                                                    ; - com.google.re2j.Machine::add@-1 (line 341)
  0.29%    0.32%      0x00007f1cc85a18cc: mov    %edi,0x28(%rsp)
  0.80%    0.94%      0x00007f1cc85a18d0: mov    %r9,0x20(%rsp)
  0.14%    0.27%      0x00007f1cc85a18d5: mov    %r8d,0x1c(%rsp)
  0.23%    0.21%      0x00007f1cc85a18da: mov    %rsi,0x8(%rsp)
  0.11%    0.11%      0x00007f1cc85a18df: test   %ecx,%ecx
                      0x00007f1cc85a18e1: je     0x00007f1cc85a1da5  ;*ifne
                                                                    ; - com.google.re2j.Machine::add@1 (line 341)
  0.79%    1.05%      0x00007f1cc85a18e7: mov    %rdx,0x40(%rsp)
  0.16%    0.30%      0x00007f1cc85a18ec: mov    0x14(%rdx),%r8d    ;*getfield sparse
                                                                    ; - com.google.re2j.Machine$Queue::contains@1 (line 48)
                                                                    ; - com.google.re2j.Machine::add@9 (line 344)
                                                                    ; implicit exception: dispatches to 0x00007f1cc85a1fb5
  0.25%    0.19%      0x00007f1cc85a18f0: mov    0xc(%r12,%r8,8),%edi  ; implicit exception: dispatches to 0x00007f1cc85a1fc9
  0.12%    0.10%      0x00007f1cc85a18f5: cmp    %edi,%ecx
                      0x00007f1cc85a18f7: jae    0x00007f1cc85a1c6a  ;*iaload
                                                                    ; - com.google.re2j.Machine$Queue::contains@5 (line 48)
                                                                    ; - com.google.re2j.Machine::add@9 (line 344)
  0.76%    0.92%      0x00007f1cc85a18fd: mov    0x10(%rdx),%r9d    ;*getfield dense
                                                                    ; - com.google.re2j.Machine$Queue::contains@18 (line 52)
                                                                    ; - com.google.re2j.Machine::add@9 (line 344)
  0.22%    0.30%      0x00007f1cc85a1901: mov    0xc(%rdx),%r10d    ;*getfield size
                                                                    ; - com.google.re2j.Machine$Queue::contains@9 (line 49)
                                                                    ; - com.google.re2j.Machine::add@9 (line 344)
  0.18%    0.15%      0x00007f1cc85a1905: lea    (%r12,%r8,8),%rdx
  0.06%    0.10%      0x00007f1cc85a1909: mov    0x10(%rdx,%rcx,4),%ebp  ;*iaload
                                                                    ; - com.google.re2j.Machine$Queue::contains@5 (line 48)
                                                                    ; - com.google.re2j.Machine::add@9 (line 344)
  0.89%    0.98%      0x00007f1cc85a190d: cmp    %r10d,%ebp
                  ╭   0x00007f1cc85a1910: jl     0x00007f1cc85a1a04  ;*iastore
                  │                                                 ; - com.google.re2j.Machine$Queue::add@18 (line 60)
                  │                                                 ; - com.google.re2j.Machine::add@20 (line 347)
  0.40%    0.39%  │↗  0x00007f1cc85a1916: mov    %r10d,%r11d
  0.19%    0.17%  ││  0x00007f1cc85a1919: inc    %r11d
  0.07%    0.06%  ││  0x00007f1cc85a191c: mov    0x40(%rsp),%rbx
  1.05%    0.64%  ││  0x00007f1cc85a1921: mov    %r11d,0xc(%rbx)    ;*putfield size
                  ││                                                ; - com.google.re2j.Machine$Queue::add@8 (line 59)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.36%    0.38%  ││  0x00007f1cc85a1925: cmp    %edi,%ecx
                  ││  0x00007f1cc85a1927: jae    0x00007f1cc85a1ca9
  0.17%    0.11%  ││  0x00007f1cc85a192d: mov    %r10d,0x10(%rdx,%rcx,4)  ;*iastore
                  ││                                                ; - com.google.re2j.Machine$Queue::add@18 (line 60)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.04%    0.05%  ││  0x00007f1cc85a1932: mov    0xc(%r12,%r9,8),%r8d  ; implicit exception: dispatches to 0x00007f1cc85a1fdd
  0.62%    0.51%  ││  0x00007f1cc85a1937: cmp    %r8d,%r10d
                  ││  0x00007f1cc85a193a: jae    0x00007f1cc85a1cf5
  0.29%    0.30%  ││  0x00007f1cc85a1940: lea    (%r12,%r9,8),%r11
  0.26%    0.10%  ││  0x00007f1cc85a1944: mov    0x10(%r11,%r10,4),%ebx  ;*aaload
                  ││                                                ; - com.google.re2j.Machine$Queue::add@24 (line 61)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.08%    0.08%  ││  0x00007f1cc85a1949: test   %ebx,%ebx
                  ││  0x00007f1cc85a194b: je     0x00007f1cc85a1dcd  ;*ifnonnull
                  ││                                                ; - com.google.re2j.Machine$Queue::add@27 (line 62)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.61%    0.62%  ││  0x00007f1cc85a1951: mov    %ecx,0xc(%r12,%rbx,8)  ;*putfield pc
                  ││                                                ; - com.google.re2j.Machine$Queue::add@52 (line 66)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.58%    0.60%  ││  0x00007f1cc85a1956: mov    0x14(%rsi),%r11d   ;*getfield prog
                  ││                                                ; - com.google.re2j.Machine::add@26 (line 348)
  0.37%    0.28%  ││  0x00007f1cc85a195a: mov    %r12d,0x10(%r12,%rbx,8)  ;*putfield thread
                  ││                                                ; - com.google.re2j.Machine$Queue::add@47 (line 65)
                  ││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.23%    0.23%  ││  0x00007f1cc85a195f: mov    0x14(%r12,%r11,8),%ebp  ;*getfield inst
                  ││                                                ; - com.google.re2j.Prog::getInst@1 (line 29)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 348)
                  ││                                                ; implicit exception: dispatches to 0x00007f1cc85a1ff1
  0.99%    0.98%  ││  0x00007f1cc85a1964: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f1cc85a2005
  0.79%    0.91%  ││  0x00007f1cc85a1969: cmp    $0xf8002f22,%r10d  ;   {metadata(&apos;java/util/ArrayList&apos;)}
                  ││  0x00007f1cc85a1970: jne    0x00007f1cc85a1d79
  0.29%    0.25%  ││  0x00007f1cc85a1976: lea    (%r12,%rbp,8),%r11  ;*invokeinterface get
                  ││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.13%    0.07%  ││  0x00007f1cc85a197a: mov    0x10(%r11),%ebp    ;*getfield size
                  ││                                                ; - java.util.ArrayList::rangeCheck@2 (line 652)
                  ││                                                ; - java.util.ArrayList::get@2 (line 429)
                  ││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.58%    0.64%  ││  0x00007f1cc85a197e: cmp    %ebp,%ecx
  0.60%    0.52%  ││  0x00007f1cc85a1980: jge    0x00007f1cc85a1e19  ;*if_icmplt
                  ││                                                ; - java.util.ArrayList::rangeCheck@5 (line 652)
                  ││                                                ; - java.util.ArrayList::get@2 (line 429)
                  ││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.43%    0.35%  ││  0x00007f1cc85a1986: mov    0x14(%r11),%ebp    ;*getfield elementData
                  ││                                                ; - java.util.ArrayList::elementData@1 (line 418)
                  ││                                                ; - java.util.ArrayList::get@7 (line 431)
                  ││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.21%    0.16%  ││  0x00007f1cc85a198a: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f1cc85a2019
  1.14%    0.94%  ││  0x00007f1cc85a198f: cmp    %r10d,%ecx
                  ││  0x00007f1cc85a1992: jae    0x00007f1cc85a1d3d
  0.79%    0.89%  ││  0x00007f1cc85a1998: lea    (%r12,%rbp,8),%r10
  0.16%    0.10%  ││  0x00007f1cc85a199c: mov    0x10(%r10,%rcx,4),%ebp  ;*aaload
                  ││                                                ; - java.util.ArrayList::elementData@5 (line 418)
                  ││                                                ; - java.util.ArrayList::get@7 (line 431)
                  ││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.12%    0.03%  ││  0x00007f1cc85a19a1: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f1cc85a202d
  2.90%    2.66%  ││  0x00007f1cc85a19a6: cmp    $0xf80197c3,%r11d  ;   {metadata(&apos;com/google/re2j/Inst&apos;)}
                  ││  0x00007f1cc85a19ad: jne    0x00007f1cc85a1f79
  0.91%    0.74%  ││  0x00007f1cc85a19b3: lea    (%r12,%rbp,8),%r10  ;*checkcast
                  ││                                                ; - com.google.re2j.Prog::getInst@10 (line 29)
                  ││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.11%    0.02%  ││  0x00007f1cc85a19b7: mov    %r10,0x38(%rsp)
  0.05%    0.06%  ││  0x00007f1cc85a19bc: mov    0xc(%r10),%r8d     ;*getfield op
                  ││                                                ; - com.google.re2j.Inst::op@1 (line 42)
                  ││                                                ; - com.google.re2j.Machine::add@37 (line 349)
  0.32%    0.16%  ││  0x00007f1cc85a19c0: mov    %r8d,%r10d
  0.79%    0.67%  ││  0x00007f1cc85a19c3: add    $0xfffffff7,%r10d
  0.17%    0.09%  ││  0x00007f1cc85a19c7: mov    $0x8,%r9d
  0.01%    0.08%  ││  0x00007f1cc85a19cd: cmp    $0x3,%r10d
  1.04%    0.75%  ││  0x00007f1cc85a19d1: cmovb  %r9d,%r8d          ;*invokevirtual op
                  ││                                                ; - com.google.re2j.Machine::add@37 (line 349)
  1.88%    1.97%  ││  0x00007f1cc85a19d5: mov    %r8d,%r11d
  0.03%    0.06%  ││  0x00007f1cc85a19d8: dec    %r11d
  1.03%    1.24%  ││  0x00007f1cc85a19db: cmp    $0xb,%r11d
                  ││  0x00007f1cc85a19df: jae    0x00007f1cc85a1d69  ;*tableswitch
                  ││                                                ; - com.google.re2j.Machine::add@40 (line 349)
  1.06%    1.37%  ││  0x00007f1cc85a19e5: mov    0x38(%rsp),%r10
  0.03%    0.03%  ││  0x00007f1cc85a19ea: mov    0x14(%r10),%r11d   ;*getfield arg
                  ││                                                ; - com.google.re2j.Machine::add@156 (line 363)
  0.03%    0.02%  ││  0x00007f1cc85a19ee: mov    0x10(%r10),%ecx    ;*getfield out
                  ││                                                ; - com.google.re2j.Machine::add@193 (line 369)
  0.05%    0.12%  ││  0x00007f1cc85a19f2: movslq %r8d,%r8
  1.13%    1.07%  ││  0x00007f1cc85a19f5: movabs $0x7f1cc85a1840,%r10  ;   {section_word}
  0.01%    0.00%  ││  0x00007f1cc85a19ff: jmpq   *-0x8(%r10,%r8,8)  ;*tableswitch
                  ││                                                ; - com.google.re2j.Machine::add@40 (line 349)
  0.02%    0.01%  ↘│  0x00007f1cc85a1a04: mov    0xc(%r12,%r9,8),%ebx  ; implicit exception: dispatches to 0x00007f1cc85a20cd
  0.00%    0.01%   │  0x00007f1cc85a1a09: cmp    %ebx,%ebp
                   │  0x00007f1cc85a1a0b: jae    0x00007f1cc85a1f61
           0.00%   │  0x00007f1cc85a1a11: lea    (%r12,%r9,8),%r11
                   │  0x00007f1cc85a1a15: mov    0x10(%r11,%rbp,4),%ebp  ;*aaload
                   │                                                ; - com.google.re2j.Machine$Queue::contains@22 (line 52)
                   │                                                ; - com.google.re2j.Machine::add@9 (line 344)
  0.01%    0.00%   │  0x00007f1cc85a1a1a: mov    0xc(%r12,%rbp,8),%ebx  ; implicit exception: dispatches to 0x00007f1cc85a20dd
  0.02%    0.02%   │  0x00007f1cc85a1a1f: cmp    %ecx,%ebx
                   ╰  0x00007f1cc85a1a21: jne    0x00007f1cc85a1916
                      0x00007f1cc85a1a27: mov    0x70(%rsp),%rax
                      0x00007f1cc85a1a2c: jmpq   0x00007f1cc85a1c3b
                      0x00007f1cc85a1a31: mov    0x28(%rsp),%r10d
                      0x00007f1cc85a1a36: andn   %r11d,%r10d,%r11d
                      0x00007f1cc85a1a3b: test   %r11d,%r11d
                      0x00007f1cc85a1a3e: je     0x00007f1cc85a1c47  ;*ifne
                                                                    ; - com.google.re2j.Machine::add@164 (line 363)
                      0x00007f1cc85a1a44: mov    0x70(%rsp),%rax
                      0x00007f1cc85a1a49: jmpq   0x00007f1cc85a1c3b
....................................................................................................
 29.60%   29.11%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 501 (549 bytes) 

                              # parm6:    [sp+0x98]   = int
                              # parm7:    [sp+0xa0]   = boolean
                              0x00007f1cc859b1a0: mov    0x8(%rsi),%r10d
                              0x00007f1cc859b1a4: shl    $0x3,%r10
                              0x00007f1cc859b1a8: cmp    %r10,%rax
                              0x00007f1cc859b1ab: jne    0x00007f1cc83bde20  ;   {runtime_call}
                              0x00007f1cc859b1b1: data16 xchg %ax,%ax
                              0x00007f1cc859b1b4: nopl   0x0(%rax,%rax,1)
                              0x00007f1cc859b1bc: data16 data16 xchg %ax,%ax
                            [Verified Entry Point]
  0.08%    0.07%              0x00007f1cc859b1c0: mov    %eax,-0x14000(%rsp)
  0.11%    0.19%              0x00007f1cc859b1c7: push   %rbp
  0.02%    0.02%              0x00007f1cc859b1c8: sub    $0x80,%rsp         ;*synchronization entry
                                                                            ; - com.google.re2j.Machine::step@-1 (line 263)
  0.02%    0.04%              0x00007f1cc859b1cf: mov    %edi,0x20(%rsp)
  0.10%    0.08%              0x00007f1cc859b1d3: mov    %r9d,0x14(%rsp)
  0.06%    0.02%              0x00007f1cc859b1d8: mov    %rcx,0x18(%rsp)
  0.04%    0.01%              0x00007f1cc859b1dd: mov    %r8d,0x10(%rsp)
  0.01%    0.00%              0x00007f1cc859b1e2: mov    %rdx,0x8(%rsp)
  0.10%    0.09%              0x00007f1cc859b1e7: mov    %rsi,0x28(%rsp)
  0.02%    0.01%              0x00007f1cc859b1ec: mov    0x10(%rsi),%r10d   ;*getfield re2
                                                                            ; - com.google.re2j.Machine::step@1 (line 263)
  0.03%    0.03%              0x00007f1cc859b1f0: movzbl 0x18(%r12,%r10,8),%r11d  ;*getfield longest
                                                                            ; - com.google.re2j.Machine::step@4 (line 263)
                                                                            ; implicit exception: dispatches to 0x00007f1cc859c729
  0.04%    0.02%              0x00007f1cc859b1f6: mov    %r11d,0x24(%rsp)
  0.13%    0.06%              0x00007f1cc859b1fb: mov    0xc(%rdx),%r11d    ; implicit exception: dispatches to 0x00007f1cc859c739
  0.03%    0.01%              0x00007f1cc859b1ff: test   %r11d,%r11d
                              0x00007f1cc859b202: jle    0x00007f1cc859b594  ;*if_icmpge
                                                                            ; - com.google.re2j.Machine::step@18 (line 264)
  0.03%    0.03%              0x00007f1cc859b208: xor    %r8d,%r8d
                  ╭           0x00007f1cc859b20b: jmpq   0x00007f1cc859b2fc
  0.28%    0.27%  │  ↗        0x00007f1cc859b210: mov    0xc(%r12,%rcx,8),%ebx  ; implicit exception: dispatches to 0x00007f1cc859c719
  1.48%    2.00%  │  │        0x00007f1cc859b215: test   %ebx,%ebx
                  │  │        0x00007f1cc859b217: jbe    0x00007f1cc859bf01  ;*iaload
                  │  │                                                      ; - com.google.re2j.Machine::step@324 (line 310)
  0.39%    0.41%  │  │        0x00007f1cc859b21d: mov    0x10(%r12,%rcx,8),%r11d
           0.00%  │  │        0x00007f1cc859b222: mov    0x20(%rsp),%ecx
                  │  │        0x00007f1cc859b226: cmp    %r11d,%ecx
                  │  │        0x00007f1cc859b229: je     0x00007f1cc859bb88  ;*goto
                  │  │                                                      ; - com.google.re2j.Machine::step@313 (line 307)
  0.45%    0.55%  │  │    ↗   0x00007f1cc859b22f: mov    %r10,0x50(%rsp)    ;*aload
                  │  │    │                                                 ; - com.google.re2j.Machine::step@399 (line 327)
  0.08%    0.07%  │  │   ↗│   0x00007f1cc859b234: mov    0x28(%rsp),%r10
  0.00%           │  │   ││   0x00007f1cc859b239: mov    0x20(%r10),%ebp    ;*getfield pool
                  │  │   ││                                                 ; - com.google.re2j.Machine::step@405 (line 329)
                  │  │   ││   0x00007f1cc859b23d: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f1cc859c655
  0.56%    0.67%  │  │   ││   0x00007f1cc859b242: cmp    $0xf8002f22,%r10d  ;   {metadata(&apos;java/util/ArrayList&apos;)}
                  │  │   ││   0x00007f1cc859b249: jne    0x00007f1cc859bcfd
  0.08%    0.07%  │  │   ││   0x00007f1cc859b24f: lea    (%r12,%rbp,8),%r9  ;*invokeinterface add
                  │  │   ││                                                 ; - com.google.re2j.Machine::step@410 (line 329)
  0.00%           │  │   ││   0x00007f1cc859b253: mov    0x14(%r9),%edx     ;*getfield elementData
                  │  │   ││                                                 ; - java.util.ArrayList::ensureCapacityInternal@1 (line 223)
                  │  │   ││                                                 ; - java.util.ArrayList::add@7 (line 458)
                  │  │   ││                                                 ; - com.google.re2j.Machine::step@410 (line 329)
                  │  │   ││   0x00007f1cc859b257: mov    0x10(%r9),%ebp     ;*getfield size
                  │  │   ││                                                 ; - java.util.ArrayList::add@2 (line 458)
                  │  │   ││                                                 ; - com.google.re2j.Machine::step@410 (line 329)
  0.54%    0.63%  │  │   ││   0x00007f1cc859b25b: mov    %ebp,%r11d
  0.04%    0.05%  │  │   ││   0x00007f1cc859b25e: inc    %r11d              ;*iadd
                  │  │   ││                                                 ; - java.util.ArrayList::add@6 (line 458)
                  │  │   ││                                                 ; - com.google.re2j.Machine::step@410 (line 329)
           0.00%  │  │   ││   0x00007f1cc859b261: cmp    $0xed9f0db7,%edx   ;   {oop(a &apos;java/lang/Object&apos;[0] )}
                  │  │   ││   0x00007f1cc859b267: je     0x00007f1cc859bb68  ;*if_acmpne
                  │  │   ││                                                 ; - java.util.ArrayList::ensureCapacityInternal@7 (line 223)
                  │  │   ││                                                 ; - java.util.ArrayList::add@7 (line 458)
                  │  │   ││                                                 ; - com.google.re2j.Machine::step@410 (line 329)
  0.00%    0.00%  │  │   ││   0x00007f1cc859b26d: mov    %r11d,%esi         ;*aload_0
                  │  │   ││                                                 ; - java.util.ArrayList::ensureCapacityInternal@17 (line 227)
                  │  │   ││                                                 ; - java.util.ArrayList::add@7 (line 458)
                  │  │   ││                                                 ; - com.google.re2j.Machine::step@410 (line 329)
  0.41%    0.43%  │  │   ││   0x00007f1cc859b270: mov    0xc(%r9),%ebx      ;*getfield modCount
                  │  │   ││                                                 ; - java.util.ArrayList::ensureExplicitCapacity@2 (line 231)
                  │  │   ││                                                 ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                  │  │   ││                                                 ; - java.util.ArrayList::add@7 (line 458)
                  │  │   ││                                                 ; - com.google.re2j.Machine::step@410 (line 329)
  0.06%    0.05%  │  │   ││   0x00007f1cc859b274: inc    %ebx
  0.00%           │  │   ││   0x00007f1cc859b276: mov    %ebx,0xc(%r9)      ;*putfield modCount
                  │  │   ││                                                 ; - java.util.ArrayList::ensureExplicitCapacity@7 (line 231)
                  │  │   ││                                                 ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                  │  │   ││                                                 ; - java.util.ArrayList::add@7 (line 458)
                  │  │   ││                                                 ; - com.google.re2j.Machine::step@410 (line 329)
                  │  │   ││   0x00007f1cc859b27a: mov    0xc(%r12,%rdx,8),%eax  ;*arraylength
                  │  │   ││                                                 ; - java.util.ArrayList::ensureExplicitCapacity@15 (line 234)
                  │  │   ││                                                 ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                  │  │   ││                                                 ; - java.util.ArrayList::add@7 (line 458)
                  │  │   ││                                                 ; - com.google.re2j.Machine::step@410 (line 329)
                  │  │   ││                                                 ; implicit exception: dispatches to 0x00007f1cc859c665
  0.50%    0.48%  │  │   ││   0x00007f1cc859b27f: mov    %esi,%r10d
  0.07%    0.04%  │  │   ││   0x00007f1cc859b282: sub    %eax,%r10d
  0.02%    0.02%  │  │   ││   0x00007f1cc859b285: test   %r10d,%r10d
                  │  │   ││   0x00007f1cc859b288: jg     0x00007f1cc859b8ce  ;*ifle
                  │  │   ││                                                 ; - java.util.ArrayList::ensureExplicitCapacity@17 (line 234)
                  │  │   ││                                                 ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                  │  │   ││                                                 ; - java.util.ArrayList::add@7 (line 458)
                  │  │   ││                                                 ; - com.google.re2j.Machine::step@410 (line 329)
  0.02%    0.01%  │  │   ││   0x00007f1cc859b28e: mov    %rdx,%r10
  0.48%    0.40%  │  │   ││   0x00007f1cc859b291: shl    $0x3,%r10          ;*return
                  │  │   ││                                                 ; - java.util.ArrayList::ensureExplicitCapacity@25 (line 236)
                  │  │   ││                                                 ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                  │  │   ││                                                 ; - java.util.ArrayList::add@7 (line 458)
                  │  │   ││                                                 ; - com.google.re2j.Machine::step@410 (line 329)
  0.05%    0.09%  │  │   ││   0x00007f1cc859b295: mov    %r11d,0x10(%r9)    ;*putfield size
                  │  │   ││                                                 ; - java.util.ArrayList::add@22 (line 459)
                  │  │   ││                                                 ; - com.google.re2j.Machine::step@410 (line 329)
                  │  │   ││   0x00007f1cc859b299: mov    0xc(%r10),%r11d    ; implicit exception: dispatches to 0x00007f1cc859c675
  0.01%    0.00%  │  │   ││   0x00007f1cc859b29d: cmp    %r11d,%ebp
                  │  │   ││   0x00007f1cc859b2a0: jae    0x00007f1cc859bcb9
  0.51%    0.45%  │  │   ││   0x00007f1cc859b2a6: mov    0x8(%r10),%r11d
  0.06%    0.06%  │  │   ││   0x00007f1cc859b2aa: cmp    $0xf80022f5,%r11d  ;   {metadata(&apos;java/lang/Object&apos;[])}
                  │  │   ││   0x00007f1cc859b2b1: jne    0x00007f1cc859bd39
                  │  │   ││   0x00007f1cc859b2b7: lea    0x10(%r10,%rbp,4),%r10
           0.01%  │  │   ││   0x00007f1cc859b2bc: mov    0x50(%rsp),%r11
  0.47%    0.35%  │  │   ││   0x00007f1cc859b2c1: shr    $0x3,%r11
  0.06%    0.08%  │  │   ││   0x00007f1cc859b2c5: mov    %r11d,(%r10)
  0.00%    0.02%  │  │   ││   0x00007f1cc859b2c8: shr    $0x9,%r10
  0.01%    0.00%  │  │   ││   0x00007f1cc859b2cc: movabs $0x7f1cc3da6000,%r11
  0.43%    0.32%  │  │   ││   0x00007f1cc859b2d6: mov    %r12b,(%r11,%r10,1)  ;*aastore
                  │  │   ││                                                 ; - java.util.ArrayList::add@26 (line 459)
                  │  │   ││                                                 ; - com.google.re2j.Machine::step@410 (line 329)
  0.06%    0.12%  │  │   ││   0x00007f1cc859b2da: xor    %r11d,%r11d        ; OopMap{[8]=Oop [24]=Oop [40]=Oop off=317}
                  │  │   ││                                                 ;*goto
                  │  │   ││                                                 ; - com.google.re2j.Machine::step@419 (line 264)
                  │ ↗│  ↗││   0x00007f1cc859b2dd: test   %eax,0x15f82d1d(%rip)        # 0x00007f1cde51e000
                  │ ││  │││                                                 ;*goto
                  │ ││  │││                                                 ; - com.google.re2j.Machine::step@419 (line 264)
                  │ ││  │││                                                 ;   {poll}
  0.48%    0.60%  │ ││  │││   0x00007f1cc859b2e3: mov    0x8(%rsp),%r10
  0.67%    0.44%  │ ││  │││   0x00007f1cc859b2e8: mov    0xc(%r10),%r11d
  0.18%    0.22%  │ ││  │││   0x00007f1cc859b2ec: cmp    %r11d,%edi
                  │ ││  │││   0x00007f1cc859b2ef: jge    0x00007f1cc859b594
                  │ ││  │││   0x00007f1cc859b2f5: mov    %ecx,0x20(%rsp)
  0.53%    0.42%  │ ││  │││   0x00007f1cc859b2f9: mov    %edi,%r8d          ;*aload_1
                  │ ││  │││                                                 ; - com.google.re2j.Machine::step@21 (line 265)
  0.54%    0.37%  ↘ ││  │││   0x00007f1cc859b2fc: mov    0x8(%rsp),%r10
  0.24%    0.19%    ││  │││   0x00007f1cc859b301: mov    0x10(%r10),%r10d   ;*getfield dense
                    ││  │││                                                 ; - com.google.re2j.Machine::step@22 (line 265)
  0.25%    0.23%    ││  │││   0x00007f1cc859b305: mov    0xc(%r12,%r10,8),%r9d  ; implicit exception: dispatches to 0x00007f1cc859c621
  0.89%    0.98%    ││  │││   0x00007f1cc859b30a: cmp    %r9d,%r8d
                    ││  │││   0x00007f1cc859b30d: jae    0x00007f1cc859bbe7
  0.62%    0.82%    ││  │││   0x00007f1cc859b313: shl    $0x3,%r10
  0.16%    0.18%    ││  │││   0x00007f1cc859b317: mov    0x10(%r10,%r8,4),%r10d  ;*aaload
                    ││  │││                                                 ; - com.google.re2j.Machine::step@27 (line 265)
  0.04%    0.05%    ││  │││   0x00007f1cc859b31c: mov    0x10(%r12,%r10,8),%r11d  ;*getfield thread
                    ││  │││                                                 ; - com.google.re2j.Machine::step@40 (line 269)
                    ││  │││                                                 ; implicit exception: dispatches to 0x00007f1cc859c695
  1.68%    1.83%    ││  │││   0x00007f1cc859b321: mov    %r8d,%edi
  0.42%    0.39%    ││  │││   0x00007f1cc859b324: inc    %edi               ;*iadd
                    ││  │││                                                 ; - com.google.re2j.Machine::step@241 (line 293)
  0.13%    0.17%    ││  │││   0x00007f1cc859b326: test   %r11d,%r11d
                   ╭││  │││   0x00007f1cc859b329: jne    0x00007f1cc859b336  ;*ifnonnull
                   │││  │││                                                 ; - com.google.re2j.Machine::step@47 (line 270)
  0.27%    0.29%   │││  │││   0x00007f1cc859b32b: mov    0x24(%rsp),%r11d
  0.17%    0.21%   │││  │││   0x00007f1cc859b330: mov    0x20(%rsp),%ecx
  0.10%    0.11%   │╰│  │││   0x00007f1cc859b334: jmp    0x00007f1cc859b2dd
  0.04%    0.14%   ↘ │  │││   0x00007f1cc859b336: mov    0x24(%rsp),%r9d
  0.18%    0.14%     │  │││   0x00007f1cc859b33b: test   %r9d,%r9d
                     │  │││   0x00007f1cc859b33e: jne    0x00007f1cc859bf4d  ;*ifeq
                     │  │││                                                 ; - com.google.re2j.Machine::step@55 (line 273)
  0.42%    0.25%     │  │││   0x00007f1cc859b344: mov    0x10(%r12,%r11,8),%r9d  ;*getfield inst
                     │  │││                                                 ; - com.google.re2j.Machine::step@107 (line 278)
  0.89%    1.28%     │  │││   0x00007f1cc859b349: mov    0xc(%r12,%r9,8),%esi  ;*getfield op
                     │  │││                                                 ; - com.google.re2j.Machine::step@117 (line 280)
                     │  │││                                                 ; implicit exception: dispatches to 0x00007f1cc859c645
  2.66%    2.58%     │  │││   0x00007f1cc859b34e: mov    0x18(%r12,%r9,8),%ecx  ;*getfield runes
                     │  │││                                                 ; - com.google.re2j.Machine::step@320 (line 310)
  0.08%    0.11%     │  │││   0x00007f1cc859b353: mov    0xc(%r12,%r11,8),%r14d  ;*getfield cap
                     │  │││                                                 ; - com.google.re2j.Machine::step@176 (line 287)
  0.02%              │  │││   0x00007f1cc859b358: lea    (%r12,%r11,8),%r10  ;*getfield thread
                     │  │││                                                 ; - com.google.re2j.Machine::step@40 (line 269)
  0.04%    0.04%     │  │││   0x00007f1cc859b35c: cmp    $0x9,%esi
                     ╰  │││   0x00007f1cc859b35f: je     0x00007f1cc859b210
  0.36%    0.35%        │││   0x00007f1cc859b365: cmp    $0x9,%esi
                        │││   0x00007f1cc859b368: jle    0x00007f1cc859b415
  0.10%    0.02%        │││   0x00007f1cc859b36e: cmp    $0xb,%esi
                      ╭ │││   0x00007f1cc859b371: je     0x00007f1cc859b3f1
  0.10%    0.06%      │ │││   0x00007f1cc859b373: cmp    $0xb,%esi
                      │ │││   0x00007f1cc859b376: jg     0x00007f1cc859bf99  ;*tableswitch
                      │ │││                                                 ; - com.google.re2j.Machine::step@120 (line 280)
  0.07%    0.01%      │ │││   0x00007f1cc859b37c: mov    %r8d,0x94(%rsp)
                      │ │││   0x00007f1cc859b384: mov    %edi,0x9c(%rsp)
  0.02%    0.00%      │ │││   0x00007f1cc859b38b: mov    %r10,%rax          ;*ifeq
                      │ │││                                                 ; - com.google.re2j.Machine::step@373 (line 324)
  0.03%    0.05%      │ │││↗  0x00007f1cc859b38e: mov    0x10(%r12,%r9,8),%ecx  ;*getfield out
                      │ ││││                                                ; - com.google.re2j.Machine::step@380 (line 325)
  0.12%    0.05%      │ ││││  0x00007f1cc859b393: mov    %r14,%r9
                      │ ││││  0x00007f1cc859b396: shl    $0x3,%r9           ;*getfield cap
                      │ ││││                                                ; - com.google.re2j.Machine::step@176 (line 287)
  0.01%    0.01%      │ ││││  0x00007f1cc859b39a: mov    0x28(%rsp),%rsi
  0.09%    0.04%      │ ││││  0x00007f1cc859b39f: mov    0x18(%rsp),%rdx
  0.07%    0.06%      │ ││││  0x00007f1cc859b3a4: mov    0x14(%rsp),%r8d
                      │ ││││  0x00007f1cc859b3a9: mov    0x90(%rsp),%edi
                      │ ││││  0x00007f1cc859b3b0: mov    %rax,(%rsp)
  0.08%    0.05%      │ ││││  0x00007f1cc859b3b4: data16 xchg %ax,%ax
  0.07%    0.04%      │ ││││  0x00007f1cc859b3b7: callq  0x00007f1cc83be020  ; OopMap{[8]=Oop [24]=Oop [40]=Oop off=540}
                      │ ││││                                                ;*invokespecial add
                      │ ││││                                                ; - com.google.re2j.Machine::step@394 (line 325)
                      │ ││││                                                ;   {optimized virtual_call}
                      │ ││││  0x00007f1cc859b3bc: test   %rax,%rax
                      │╭││││  0x00007f1cc859b3bf: jne    0x00007f1cc859b3d4  ;*ifnull
                      ││││││                                                ; - com.google.re2j.Machine::step@401 (line 327)
  0.01%               ││││││  0x00007f1cc859b3c1: xor    %r11d,%r11d
                      ││││││  0x00007f1cc859b3c4: mov    0x20(%rsp),%ecx
  0.19%    0.24%      ││││││  0x00007f1cc859b3c8: mov    0x9c(%rsp),%edi
                      ││╰│││  0x00007f1cc859b3cf: jmpq   0x00007f1cc859b2dd
                      │↘ │││  0x00007f1cc859b3d4: mov    %rax,0x50(%rsp)
                      │  │││  0x00007f1cc859b3d9: mov    0x20(%rsp),%ecx
                      │  │││  0x00007f1cc859b3dd: mov    0x94(%rsp),%r8d
  0.00%               │  │││  0x00007f1cc859b3e5: mov    0x9c(%rsp),%edi
                      │  ╰││  0x00007f1cc859b3ec: jmpq   0x00007f1cc859b234
                      ↘   ││  0x00007f1cc859b3f1: mov    0x20(%rsp),%ecx
                          ││  0x00007f1cc859b3f5: cmp    $0xa,%ecx
                          ╰│  0x00007f1cc859b3f8: je     0x00007f1cc859b22f  ;*if_icmpeq
                           │                                                ; - com.google.re2j.Machine::step@348 (line 318)
                           │  0x00007f1cc859b3fe: mov    %r8d,0x94(%rsp)
                           │  0x00007f1cc859b406: mov    %edi,0x9c(%rsp)
                           │  0x00007f1cc859b40d: mov    %r10,%rax
                           ╰  0x00007f1cc859b410: jmpq   0x00007f1cc859b38e
  0.11%    0.17%              0x00007f1cc859b415: cmp    $0x7,%esi
....................................................................................................
 21.02%   21.43%  <total for region 2>

....[Hottest Regions]...............................................................................
 29.60%   29.11%         C2, level 4  com.google.re2j.Machine::add, version 514 (351 bytes) 
 21.02%   21.43%         C2, level 4  com.google.re2j.Machine::step, version 501 (549 bytes) 
  9.76%    8.16%         C2, level 4  com.google.re2j.Machine::add, version 514 (244 bytes) 
  7.84%   10.04%         C2, level 4  com.google.re2j.Machine::step, version 501 (304 bytes) 
  7.42%    7.41%         C2, level 4  com.google.re2j.Machine::add, version 514 (115 bytes) 
  7.41%    7.98%         C2, level 4  com.google.re2j.Machine::step, version 501 (223 bytes) 
  7.12%    7.46%         C2, level 4  com.google.re2j.Machine::match, version 556 (754 bytes) 
  3.33%    1.54%        runtime stub  StubRoutines::jint_disjoint_arraycopy (128 bytes) 
  1.65%    2.23%         C2, level 4  com.google.re2j.Machine::step, version 501 (149 bytes) 
  1.22%    1.56%         C2, level 4  com.google.re2j.Machine::add, version 514 (40 bytes) 
  0.37%    0.14%         C2, level 4  com.google.re2j.Machine::init, version 557 (209 bytes) 
  0.28%    0.28%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.21%    0.22%         C2, level 4  com.google.re2j.Machine::step, version 501 (29 bytes) 
  0.13%    0.26%         C2, level 4  com.google.re2j.Machine::match, version 556 (79 bytes) 
  0.11%    0.04%   [kernel.kallsyms]  [unknown] (43 bytes) 
  0.07%    0.00%   [kernel.kallsyms]  [unknown] (39 bytes) 
  0.06%    0.01%   [kernel.kallsyms]  [unknown] (27 bytes) 
  0.06%    0.02%   [kernel.kallsyms]  [unknown] (28 bytes) 
  0.05%    0.00%   [kernel.kallsyms]  [unknown] (25 bytes) 
  0.05%    0.05%         C2, level 4  com.google.re2j.Machine::match, version 556 (192 bytes) 
  2.23%    2.02%  <...other 414 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 47.99%   46.25%         C2, level 4  com.google.re2j.Machine::add, version 514 
 38.15%   41.96%         C2, level 4  com.google.re2j.Machine::step, version 501 
  7.49%    7.89%         C2, level 4  com.google.re2j.Machine::match, version 556 
  3.33%    1.54%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
  1.31%    1.07%   [kernel.kallsyms]  [unknown] 
  0.56%    0.23%         C2, level 4  com.google.re2j.Machine::init, version 557 
  0.17%    0.11%         C2, level 4  com.google.re2j.Matcher::find, version 581 
  0.14%    0.02%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 647 
  0.06%    0.03%         C2, level 4  java.util.Collections::shuffle, version 598 
  0.05%    0.03%      hsdis-amd64.so  [unknown] 
  0.04%    0.05%           libjvm.so  _ZN18PSPromotionManager22copy_to_survivor_spaceILb0EEEP7oopDescS2_ 
  0.03%    0.08%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.03%    0.01%  libpthread-2.26.so  __libc_write 
  0.03%    0.03%        libc-2.26.so  vfprintf 
  0.02%    0.02%           libjvm.so  _ZN18PSPromotionManager18drain_stacks_depthEb 
  0.02%    0.01%           libjvm.so  _ZN19GenericTaskQueueSetI17OverflowTaskQueueI8StarTaskL10MemoryType1ELj131072EELS2_1EE15steal_best_of_2EjPiRS1_ 
  0.02%    0.02%        libc-2.26.so  _IO_fwrite 
  0.02%    0.04%           libjvm.so  _ZN13xmlTextStream5writeEPKcm 
  0.02%    0.01%        libc-2.26.so  _IO_vsnprintf 
  0.02%    0.02%           libjvm.so  _ZN12outputStream15update_positionEPKcm 
  0.50%    0.36%  <...other 72 warm methods...>
....................................................................................................
100.00%   99.80%  <totals>

....[Distribution by Source]........................................................................
 94.59%   96.49%         C2, level 4
  3.33%    1.54%        runtime stub
  1.31%    1.07%   [kernel.kallsyms]
  0.44%    0.58%           libjvm.so
  0.17%    0.22%        libc-2.26.so
  0.06%    0.04%  libpthread-2.26.so
  0.05%    0.03%      hsdis-amd64.so
  0.03%    0.01%         interpreter
  0.01%    0.01%              [vdso]
  0.00%    0.00%         C1, level 3
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                     Mode  Cnt     Score     Error  Units
Re2jFindRegex.testExp1       thrpt   20  5684.053 ± 212.745  ops/s
Re2jFindRegex.testExp1:·asm  thrpt            NaN              ---
