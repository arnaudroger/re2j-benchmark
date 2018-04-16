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
# Warmup Iteration   1: 1159.892 ops/s
# Warmup Iteration   2: 1726.375 ops/s
# Warmup Iteration   3: 2033.422 ops/s
# Warmup Iteration   4: 2056.727 ops/s
# Warmup Iteration   5: 2083.687 ops/s
# Warmup Iteration   6: 2075.673 ops/s
# Warmup Iteration   7: 2104.356 ops/s
# Warmup Iteration   8: 2101.086 ops/s
# Warmup Iteration   9: 2085.705 ops/s
# Warmup Iteration  10: 2102.531 ops/s
# Warmup Iteration  11: 2093.504 ops/s
# Warmup Iteration  12: 2082.317 ops/s
# Warmup Iteration  13: 2076.116 ops/s
# Warmup Iteration  14: 2069.507 ops/s
# Warmup Iteration  15: 2086.687 ops/s
# Warmup Iteration  16: 2087.485 ops/s
# Warmup Iteration  17: 2095.732 ops/s
# Warmup Iteration  18: 2077.680 ops/s
# Warmup Iteration  19: 2073.608 ops/s
# Warmup Iteration  20: 2085.786 ops/s
Iteration   1: 2088.290 ops/s
Iteration   2: 2077.552 ops/s
Iteration   3: 2073.329 ops/s
Iteration   4: 1991.879 ops/s
Iteration   5: 2091.261 ops/s
Iteration   6: 2097.287 ops/s
Iteration   7: 2092.001 ops/s
Iteration   8: 2066.606 ops/s
Iteration   9: 1757.067 ops/s
Iteration  10: 2077.428 ops/s
Iteration  11: 2051.104 ops/s
Iteration  12: 2071.429 ops/s
Iteration  13: 2048.327 ops/s
Iteration  14: 2060.811 ops/s
Iteration  15: 2079.895 ops/s
Iteration  16: 2083.703 ops/s
Iteration  17: 2091.920 ops/s
Iteration  18: 2089.931 ops/s
Iteration  19: 2076.317 ops/s
Iteration  20: 2093.164 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  2057.965 ±(99.9%) 64.840 ops/s [Average]
  (min, avg, max) = (1757.067, 2057.965, 2097.287), stdev = 74.670
  CI (99.9%): [1993.125, 2122.805] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine:·asm":
PrintAssembly processed: 216704 total address lines.
Perf output processed (skipped 23.268 seconds):
 Column 1: cycles (20768 events)
 Column 2: instructions (20845 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 545 (398 bytes) 

                       # parm4:    rdi       = int
                       # parm5:    [sp+0x70]   = &apos;com/google/re2j/Machine$Thread&apos;  (sp of caller)
                       0x00007ff7783b2d00: mov    0x8(%rsi),%r10d    ;   {no_reloc}
                       0x00007ff7783b2d04: shl    $0x3,%r10
                       0x00007ff7783b2d08: cmp    %r10,%rax
                       0x00007ff7783b2d0b: jne    0x00007ff7781afe20  ;   {runtime_call}
                       0x00007ff7783b2d11: data16 xchg %ax,%ax
                       0x00007ff7783b2d14: nopl   0x0(%rax,%rax,1)
                       0x00007ff7783b2d1c: data16 data16 xchg %ax,%ax
                     [Verified Entry Point]
  0.49%    0.52%       0x00007ff7783b2d20: mov    %eax,-0x14000(%rsp)
  0.39%    0.28%       0x00007ff7783b2d27: push   %rbp
  0.27%    0.32%       0x00007ff7783b2d28: sub    $0x60,%rsp         ;*synchronization entry
                                                                     ; - com.google.re2j.Machine::add@-1 (line 341)
  0.31%    0.40%       0x00007ff7783b2d2c: mov    %edi,0x28(%rsp)
  0.40%    0.33%       0x00007ff7783b2d30: mov    %r9,0x20(%rsp)
  0.26%    0.19%       0x00007ff7783b2d35: mov    %r8d,0x1c(%rsp)
  0.36%    0.40%       0x00007ff7783b2d3a: mov    %rsi,0x8(%rsp)
  0.04%    0.11%       0x00007ff7783b2d3f: mov    %ecx,0x40(%rsp)
  0.33%    0.23%       0x00007ff7783b2d43: test   %ecx,%ecx
                       0x00007ff7783b2d45: je     0x00007ff7783b33ad  ;*ifne
                                                                     ; - com.google.re2j.Machine::add@1 (line 341)
  0.22%    0.25%       0x00007ff7783b2d4b: mov    %rdx,0x48(%rsp)
  0.19%    0.29%       0x00007ff7783b2d50: mov    0x14(%rdx),%r9d    ;*getfield sparse
                                                                     ; - com.google.re2j.Machine$Queue::contains@1 (line 48)
                                                                     ; - com.google.re2j.Machine::add@9 (line 344)
                                                                     ; implicit exception: dispatches to 0x00007ff7783b35f5
  0.03%    0.06%       0x00007ff7783b2d54: mov    0xc(%r12,%r9,8),%r10d  ; implicit exception: dispatches to 0x00007ff7783b3609
  0.49%    0.35%       0x00007ff7783b2d59: cmp    %r10d,%ecx
                       0x00007ff7783b2d5c: jae    0x00007ff7783b3277  ;*iaload
                                                                     ; - com.google.re2j.Machine$Queue::contains@5 (line 48)
                                                                     ; - com.google.re2j.Machine::add@9 (line 344)
  0.26%    0.26%       0x00007ff7783b2d62: mov    0x10(%rdx),%ecx    ;*getfield dense
                                                                     ; - com.google.re2j.Machine$Queue::contains@18 (line 52)
                                                                     ; - com.google.re2j.Machine::add@9 (line 344)
  0.30%    0.14%       0x00007ff7783b2d65: mov    0xc(%rdx),%r11d    ;*getfield size
                                                                     ; - com.google.re2j.Machine$Queue::contains@9 (line 49)
                                                                     ; - com.google.re2j.Machine::add@9 (line 344)
  0.04%    0.03%       0x00007ff7783b2d69: lea    (%r12,%r9,8),%rdi
  0.32%    0.32%       0x00007ff7783b2d6d: mov    0x40(%rsp),%ebx
  0.43%    0.29%       0x00007ff7783b2d71: mov    0x10(%rdi,%rbx,4),%ebp  ;*iaload
                                                                     ; - com.google.re2j.Machine$Queue::contains@5 (line 48)
                                                                     ; - com.google.re2j.Machine::add@9 (line 344)
  0.37%    0.39%       0x00007ff7783b2d75: cmp    %r11d,%ebp
                  ╭    0x00007ff7783b2d78: jl     0x00007ff7783b2e93  ;*iastore
                  │                                                  ; - com.google.re2j.Machine$Queue::add@18 (line 60)
                  │                                                  ; - com.google.re2j.Machine::add@20 (line 347)
  0.44%    0.41%  │ ↗  0x00007ff7783b2d7e: mov    %r11d,%r8d
  0.24%    0.21%  │ │  0x00007ff7783b2d81: inc    %r8d
  0.25%    0.07%  │ │  0x00007ff7783b2d84: mov    0x48(%rsp),%rbx
  0.21%    0.26%  │ │  0x00007ff7783b2d89: mov    %r8d,0xc(%rbx)     ;*putfield size
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@8 (line 59)
                  │ │                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.25%    0.22%  │ │  0x00007ff7783b2d8d: mov    0x40(%rsp),%r8d
  0.34%    0.26%  │ │  0x00007ff7783b2d92: cmp    %r10d,%r8d
                  │ │  0x00007ff7783b2d95: jae    0x00007ff7783b32b1
  0.37%    0.26%  │ │  0x00007ff7783b2d9b: mov    %r11d,0x10(%rdi,%r8,4)  ;*iastore
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@18 (line 60)
                  │ │                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.70%    0.85%  │ │  0x00007ff7783b2da0: mov    0xc(%r12,%rcx,8),%r8d  ; implicit exception: dispatches to 0x00007ff7783b361d
  0.24%    0.17%  │ │  0x00007ff7783b2da5: cmp    %r8d,%r11d
                  │ │  0x00007ff7783b2da8: jae    0x00007ff7783b32f9  ;*aaload
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@24 (line 61)
                  │ │                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.31%    0.17%  │ │  0x00007ff7783b2dae: lea    (%r12,%rcx,8),%r10  ;*getfield dense
                  │ │                                                ; - com.google.re2j.Machine$Queue::contains@18 (line 52)
                  │ │                                                ; - com.google.re2j.Machine::add@9 (line 344)
  0.14%    0.16%  │ │  0x00007ff7783b2db2: mov    %r10,0x38(%rsp)
  0.26%    0.36%  │ │  0x00007ff7783b2db7: lea    0x10(%r10,%r11,4),%rbp
  0.18%    0.14%  │ │  0x00007ff7783b2dbc: mov    0x0(%rbp),%r10d    ;*aaload
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@24 (line 61)
                  │ │                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.34%    0.24%  │ │  0x00007ff7783b2dc0: test   %r10d,%r10d
                  │╭│  0x00007ff7783b2dc3: je     0x00007ff7783b2ec4  ;*ifnonnull
                  │││                                                ; - com.google.re2j.Machine$Queue::add@27 (line 62)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.15%    0.18%  │││  0x00007ff7783b2dc9: lea    (%r12,%r10,8),%rbx  ;*aload_3
                  │││                                                ; - com.google.re2j.Machine$Queue::add@45 (line 65)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.27%    0.21%  │││  0x00007ff7783b2dcd: mov    0x40(%rsp),%r10d
  0.19%    0.17%  │││  0x00007ff7783b2dd2: mov    %r10d,0xc(%rbx)    ;*putfield pc
                  │││                                                ; - com.google.re2j.Machine$Queue::add@52 (line 66)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.83%    0.66%  │││  0x00007ff7783b2dd6: mov    0x8(%rsp),%r10
  0.11%    0.11%  │││  0x00007ff7783b2ddb: mov    0x14(%r10),%r11d   ;*getfield prog
                  │││                                                ; - com.google.re2j.Machine::add@26 (line 348)
  0.22%    0.22%  │││  0x00007ff7783b2ddf: mov    %r12d,0x10(%rbx)   ;*putfield thread
                  │││                                                ; - com.google.re2j.Machine$Queue::add@47 (line 65)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.24%    0.24%  │││  0x00007ff7783b2de3: mov    0x14(%r12,%r11,8),%ebp  ;*getfield inst
                  │││                                                ; - com.google.re2j.Prog::getInst@1 (line 29)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 348)
                  │││                                                ; implicit exception: dispatches to 0x00007ff7783b3631
  0.51%    0.47%  │││  0x00007ff7783b2de8: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007ff7783b3645
  0.69%    0.68%  │││  0x00007ff7783b2ded: cmp    $0xf8002f22,%r10d  ;   {metadata(&apos;java/util/ArrayList&apos;)}
                  │││  0x00007ff7783b2df4: jne    0x00007ff7783b3385
  0.34%    0.31%  │││  0x00007ff7783b2dfa: lea    (%r12,%rbp,8),%r11  ;*invokeinterface get
                  │││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.19%    0.20%  │││  0x00007ff7783b2dfe: mov    0x10(%r11),%ebp    ;*getfield size
                  │││                                                ; - java.util.ArrayList::rangeCheck@2 (line 652)
                  │││                                                ; - java.util.ArrayList::get@2 (line 429)
                  │││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.33%    0.14%  │││  0x00007ff7783b2e02: mov    0x40(%rsp),%r8d
  0.13%    0.08%  │││  0x00007ff7783b2e07: cmp    %ebp,%r8d
                  │││  0x00007ff7783b2e0a: jge    0x00007ff7783b33d5  ;*if_icmplt
                  │││                                                ; - java.util.ArrayList::rangeCheck@5 (line 652)
                  │││                                                ; - java.util.ArrayList::get@2 (line 429)
                  │││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.44%    0.38%  │││  0x00007ff7783b2e10: mov    0x14(%r11),%ebp    ;*getfield elementData
                  │││                                                ; - java.util.ArrayList::elementData@1 (line 418)
                  │││                                                ; - java.util.ArrayList::get@7 (line 431)
                  │││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.18%    0.12%  │││  0x00007ff7783b2e14: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007ff7783b3659
  1.36%    0.97%  │││  0x00007ff7783b2e19: cmp    %r10d,%r8d
                  │││  0x00007ff7783b2e1c: jae    0x00007ff7783b334d
  0.94%    0.79%  │││  0x00007ff7783b2e22: lea    (%r12,%rbp,8),%r10
  0.04%    0.04%  │││  0x00007ff7783b2e26: mov    0x10(%r10,%r8,4),%ebp  ;*aaload
                  │││                                                ; - java.util.ArrayList::elementData@5 (line 418)
                  │││                                                ; - java.util.ArrayList::get@7 (line 431)
                  │││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.13%    0.17%  │││  0x00007ff7783b2e2b: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007ff7783b366d
  2.45%    2.13%  │││  0x00007ff7783b2e30: cmp    $0xf80197c3,%r11d  ;   {metadata(&apos;com/google/re2j/Inst&apos;)}
                  │││  0x00007ff7783b2e37: jne    0x00007ff7783b35b8
  0.66%    0.60%  │││  0x00007ff7783b2e3d: lea    (%r12,%rbp,8),%r10  ;*checkcast
                  │││                                                ; - com.google.re2j.Prog::getInst@10 (line 29)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.01%    0.01%  │││  0x00007ff7783b2e41: mov    %r10,0x38(%rsp)
  0.09%    0.13%  │││  0x00007ff7783b2e46: mov    0xc(%r10),%r10d    ;*getfield op
                  │││                                                ; - com.google.re2j.Inst::op@1 (line 42)
                  │││                                                ; - com.google.re2j.Machine::add@37 (line 349)
  0.19%    0.08%  │││  0x00007ff7783b2e4a: mov    %r10d,%r11d
  0.68%    0.59%  │││  0x00007ff7783b2e4d: add    $0xfffffff7,%r11d
  0.11%    0.11%  │││  0x00007ff7783b2e51: mov    $0x8,%r8d
  0.07%    0.09%  │││  0x00007ff7783b2e57: cmp    $0x3,%r11d
  0.66%    0.70%  │││  0x00007ff7783b2e5b: cmovb  %r8d,%r10d         ;*invokevirtual op
                  │││                                                ; - com.google.re2j.Machine::add@37 (line 349)
  1.27%    1.48%  │││  0x00007ff7783b2e5f: mov    %r10d,%r11d
  0.03%    0.02%  │││  0x00007ff7783b2e62: dec    %r11d
  0.90%    0.90%  │││  0x00007ff7783b2e65: cmp    $0xb,%r11d
                  │││  0x00007ff7783b2e69: jae    0x00007ff7783b3375  ;*tableswitch
                  │││                                                ; - com.google.re2j.Machine::add@40 (line 349)
  0.74%    0.76%  │││  0x00007ff7783b2e6f: mov    0x38(%rsp),%r11
  0.02%    0.01%  │││  0x00007ff7783b2e74: mov    0x14(%r11),%r11d   ;*getfield arg
                  │││                                                ; - com.google.re2j.Machine::add@156 (line 363)
  0.05%    0.00%  │││  0x00007ff7783b2e78: mov    0x38(%rsp),%r8
  0.03%    0.04%  │││  0x00007ff7783b2e7d: mov    0x10(%r8),%ecx     ;*getfield out
                  │││                                                ; - com.google.re2j.Machine::add@193 (line 369)
  0.79%    0.86%  │││  0x00007ff7783b2e81: movslq %r10d,%r10
  0.01%    0.03%  │││  0x00007ff7783b2e84: movabs $0x7ff7783b2ca0,%r9  ;   {section_word}
  0.02%    0.01%  │││  0x00007ff7783b2e8e: jmpq   *-0x8(%r9,%r10,8)  ;*tableswitch
                  │││                                                ; - com.google.re2j.Machine::add@40 (line 349)
  0.05%    0.05%  ↘││  0x00007ff7783b2e93: mov    0xc(%r12,%rcx,8),%ebx  ; implicit exception: dispatches to 0x00007ff7783b3715
  0.04%    0.05%   ││  0x00007ff7783b2e98: cmp    %ebx,%ebp
                   ││  0x00007ff7783b2e9a: jae    0x00007ff7783b3520
  0.01%    0.00%   ││  0x00007ff7783b2ea0: lea    (%r12,%rcx,8),%r8
  0.01%    0.07%   ││  0x00007ff7783b2ea4: mov    0x10(%r8,%rbp,4),%ebp  ;*aaload
                   ││                                                ; - com.google.re2j.Machine$Queue::contains@22 (line 52)
                   ││                                                ; - com.google.re2j.Machine::add@9 (line 344)
  0.07%    0.08%   ││  0x00007ff7783b2ea9: mov    0xc(%r12,%rbp,8),%edx  ; implicit exception: dispatches to 0x00007ff7783b3725
  0.37%    0.24%   ││  0x00007ff7783b2eae: mov    0x40(%rsp),%ebx
                   ││  0x00007ff7783b2eb2: cmp    %ebx,%edx
                   │╰  0x00007ff7783b2eb4: jne    0x00007ff7783b2d7e
                   │   0x00007ff7783b2eba: mov    0x70(%rsp),%rax
                   │   0x00007ff7783b2ebf: jmpq   0x00007ff7783b3143
                   ↘   0x00007ff7783b2ec4: mov    0x60(%r15),%rbx
                       0x00007ff7783b2ec8: mov    %rbx,%r10
                       0x00007ff7783b2ecb: add    $0x18,%r10
                       0x00007ff7783b2ecf: cmp    0x70(%r15),%r10
                       0x00007ff7783b2ed3: jae    0x00007ff7783b34ed
                       0x00007ff7783b2ed9: mov    %r10,0x60(%r15)
....................................................................................................
 26.34%   24.12%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 553 (335 bytes) 

                          0x00007ff7783bd2c0: jmpq   0x00007ff7783bcff7  ;*if_icmpge
                                                                        ; - com.google.re2j.Machine::step@250 (line 293)
                          0x00007ff7783bd2c5: mov    0x8(%rsp),%r10
                          0x00007ff7783bd2ca: mov    %r12d,0xc(%r10)    ;*putfield size
                                                                        ; - com.google.re2j.Machine::step@293 (line 300)
                          0x00007ff7783bd2ce: mov    0x28(%rsp),%r10
                          0x00007ff7783bd2d3: movb   $0x1,0xc(%r10)     ;*putfield matched
                                                                        ; - com.google.re2j.Machine::step@298 (line 302)
                          0x00007ff7783bd2d8: mov    0x20(%rsp),%ecx
                          0x00007ff7783bd2dc: jmpq   0x00007ff7783bcb6e
  0.49%    0.57%   ↗      0x00007ff7783bd2e1: mov    %r8d,%r10d
  0.38%    0.54%   │      0x00007ff7783bd2e4: sub    0x20(%rsp),%r10d   ;*isub
                   │                                                    ; - com.google.re2j.Unicode::simpleFold@15 (line 208)
                   │                                                    ; - com.google.re2j.Inst::matchRune@50 (line 65)
                   │                                                    ; - com.google.re2j.Machine::step@308 (line 306)
  0.42%    0.53%   │      0x00007ff7783bd2e9: mov    %r10d,%esi
  0.44%    0.60%   │      0x00007ff7783bd2ec: sar    $0x1f,%esi
  0.48%    0.58%   │      0x00007ff7783bd2ef: shr    $0x1f,%esi
  0.47%    0.50%   │      0x00007ff7783bd2f2: add    %r10d,%esi
  0.40%    0.54%   │      0x00007ff7783bd2f5: sar    %esi               ;*idiv
                   │                                                    ; - com.google.re2j.Unicode::simpleFold@17 (line 208)
                   │                                                    ; - com.google.re2j.Inst::matchRune@50 (line 65)
                   │                                                    ; - com.google.re2j.Machine::step@308 (line 306)
  0.44%    0.58%   │      0x00007ff7783bd2f7: mov    0x20(%rsp),%r11d
  0.52%    0.51%   │      0x00007ff7783bd2fc: add    %esi,%r11d         ;*iadd
                   │                                                    ; - com.google.re2j.Unicode::simpleFold@18 (line 208)
                   │                                                    ; - com.google.re2j.Inst::matchRune@50 (line 65)
                   │                                                    ; - com.google.re2j.Machine::step@308 (line 306)
  0.50%    0.59%   │      0x00007ff7783bd2ff: vmovd  %r8d,%xmm2
  0.41%    0.52%   │      0x00007ff7783bd304: mov    %r11d,%r8d         ;*idiv
                   │                                                    ; - com.google.re2j.Unicode::simpleFold@17 (line 208)
                   │                                                    ; - com.google.re2j.Inst::matchRune@50 (line 65)
                   │                                                    ; - com.google.re2j.Machine::step@308 (line 306)
  0.46%    0.71%   │  ↗   0x00007ff7783bd307: cmp    $0x3f,%r8d
                   │  │   0x00007ff7783bd30b: jae    0x00007ff7783bd85d
  0.61%    0.82%   │  │   0x00007ff7783bd311: movslq %esi,%r10
  0.56%    0.65%   │  │   0x00007ff7783bd314: movslq 0x20(%rsp),%r11
  0.46%    0.65%   │  │   0x00007ff7783bd319: add    %r10,%r11
  0.52%    0.66%   │  │   0x00007ff7783bd31c: mov    0x10(%r9,%r11,4),%ebp  ;*aaload
                   │  │                                                 ; - com.google.re2j.Unicode::simpleFold@24 (line 209)
                   │  │                                                 ; - com.google.re2j.Inst::matchRune@50 (line 65)
                   │  │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.79%    0.87%   │  │   0x00007ff7783bd321: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007ff7783be355
  2.01%    2.80%   │  │   0x00007ff7783bd326: test   %r11d,%r11d
                   │  │   0x00007ff7783bd329: jbe    0x00007ff7783bd8b5  ;*iaload
                   │  │                                                 ; - com.google.re2j.Unicode::simpleFold@26 (line 209)
                   │  │                                                 ; - com.google.re2j.Inst::matchRune@50 (line 65)
                   │  │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  1.00%    1.37%   │  │   0x00007ff7783bd32f: mov    0x10(%r12,%rbp,8),%r11d
  0.35%    0.53%   │  │   0x00007ff7783bd334: cmp    %r14d,%r11d
                  ╭│  │   0x00007ff7783bd337: jl     0x00007ff7783bd40f  ; OopMap{r9=Oop rdi=NarrowOop rdx=NarrowOop rax=NarrowOop r13=Oop xmm0=Oop [8]=Oop [24]=Oop [40]=Oop off=2141}
                  ││  │                                                 ;*goto
                  ││  │                                                 ; - com.google.re2j.Unicode::simpleFold@40 (line 214)
                  ││  │                                                 ; - com.google.re2j.Inst::matchRune@50 (line 65)
                  ││  │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.77%    0.91%  ││  │↗  0x00007ff7783bd33d: test   %eax,0x15e85cbd(%rip)        # 0x00007ff78e243000
                  ││  ││                                                ;*goto
                  ││  ││                                                ; - com.google.re2j.Unicode::simpleFold@40 (line 214)
                  ││  ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 65)
                  ││  ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
                  ││  ││                                                ;   {poll}
  0.42%    0.58%  ││  ││  0x00007ff7783bd343: mov    0x20(%rsp),%r10d
  0.73%    0.71%  ││  ││  0x00007ff7783bd348: cmp    %r8d,%r10d
                  │╰  ││  0x00007ff7783bd34b: jl     0x00007ff7783bd2e1  ;*if_icmpge
                  │   ││                                                ; - com.google.re2j.Unicode::simpleFold@9 (line 207)
                  │   ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 65)
                  │   ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
                  │   ││  0x00007ff7783bd34d: mov    0x20(%rsp),%r8d
  0.21%    0.30%  │   ││  0x00007ff7783bd352: cmp    $0x3f,%r10d
                  │   ││  0x00007ff7783bd356: jge    0x00007ff7783bddfd  ;*if_icmpge
                  │   ││                                                ; - com.google.re2j.Unicode::simpleFold@48 (line 215)
                  │   ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 65)
                  │   ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
                  │   ││  0x00007ff7783bd35c: cmp    $0x3f,%r10d
                  │   ││  0x00007ff7783bd360: jae    0x00007ff7783bdc45
  0.14%    0.15%  │   ││  0x00007ff7783bd366: mov    0x10(%r9,%r10,4),%ebp  ;*aaload
                  │   ││                                                ; - com.google.re2j.Unicode::simpleFold@55 (line 215)
                  │   ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 65)
                  │   ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
                  │   ││  0x00007ff7783bd36b: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007ff7783be479
  0.34%    0.34%  │   ││  0x00007ff7783bd370: test   %r11d,%r11d
                  │   ││  0x00007ff7783bd373: jbe    0x00007ff7783bdc95
  0.11%    0.06%  │   ││  0x00007ff7783bd379: mov    0x10(%r12,%rbp,8),%ebp  ;*iaload
                  │   ││                                                ; - com.google.re2j.Unicode::simpleFold@57 (line 215)
                  │   ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 65)
                  │   ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.08%    0.06%  │   ││  0x00007ff7783bd37e: cmp    %r14d,%ebp
                  │   ││  0x00007ff7783bd381: je     0x00007ff7783bde4d  ;*if_icmpne
                  │   ││                                                ; - com.google.re2j.Unicode::simpleFold@59 (line 215)
                  │   ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 65)
                  │   ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.10%    0.09%  │   ││  0x00007ff7783bd387: mov    %r14d,%r8d
  0.21%    0.22%  │   ││  0x00007ff7783bd38a: cmp    $0x7f,%r8d
                  │   ││  0x00007ff7783bd38e: jg     0x00007ff7783bde9d  ;*if_icmpgt
                  │   ││                                                ; - com.google.re2j.Unicode::toLower@3 (line 177)
                  │   ││                                                ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                  │   ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 65)
                  │   ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.01%    0.02%  │   ││  0x00007ff7783bd394: cmp    $0x41,%r8d
                  │   ││  0x00007ff7783bd398: jl     0x00007ff7783bddad  ;*if_icmpgt
                  │   ││                                                ; - com.google.re2j.Unicode::toLower@9 (line 178)
                  │   ││                                                ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                  │   ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 65)
                  │   ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.07%    0.07%  │   ││  0x00007ff7783bd39e: cmp    $0x5a,%r8d
                  │ ╭ ││  0x00007ff7783bd3a2: jg     0x00007ff7783bd3b0  ;*if_icmpgt
                  │ │ ││                                                ; - com.google.re2j.Unicode::toLower@15 (line 178)
                  │ │ ││                                                ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                  │ │ ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 65)
                  │ │ ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
                  │ │ ││  0x00007ff7783bd3a4: mov    %r8d,%r10d
                  │ │ ││  0x00007ff7783bd3a7: add    $0x20,%r10d        ;*iinc
                  │ │ ││                                                ; - com.google.re2j.Unicode::toLower@18 (line 179)
                  │ │ ││                                                ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                  │ │ ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 65)
                  │ │ ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
                  │ │ ││  0x00007ff7783bd3ab: cmp    %r8d,%r10d
                  │ │╭││  0x00007ff7783bd3ae: jne    0x00007ff7783bd3cb  ;*if_icmpeq
                  │ ││││                                                ; - com.google.re2j.Unicode::simpleFold@77 (line 224)
                  │ ││││                                                ; - com.google.re2j.Inst::matchRune@50 (line 65)
                  │ ││││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.09%    0.04%  │ ↘│││  0x00007ff7783bd3b0: cmp    $0x61,%r8d
                  │  │││  0x00007ff7783bd3b4: jl     0x00007ff7783be0f9  ;*if_icmpgt
                  │  │││                                                ; - com.google.re2j.Unicode::toUpper@9 (line 167)
                  │  │││                                                ; - com.google.re2j.Unicode::simpleFold@83 (line 227)
                  │  │││                                                ; - com.google.re2j.Inst::matchRune@50 (line 65)
                  │  │││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.17%    0.18%  │  │││  0x00007ff7783bd3ba: cmp    $0x7a,%r8d
                  │  │││  0x00007ff7783bd3be: jg     0x00007ff7783be145  ;*if_icmpgt
                  │  │││                                                ; - com.google.re2j.Unicode::toUpper@15 (line 167)
                  │  │││                                                ; - com.google.re2j.Unicode::simpleFold@83 (line 227)
                  │  │││                                                ; - com.google.re2j.Inst::matchRune@50 (line 65)
                  │  │││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.00%    0.02%  │  │││  0x00007ff7783bd3c4: mov    %r8d,%r10d
  0.05%    0.04%  │  │││  0x00007ff7783bd3c7: add    $0xffffffe0,%r10d  ; OopMap{r9=Oop rdi=NarrowOop rdx=NarrowOop rax=NarrowOop r13=Oop xmm0=Oop [8]=Oop [24]=Oop [40]=Oop off=2283}
                  │  │││                                                ;*goto
                  │  │││                                                ; - com.google.re2j.Inst::matchRune@54 (line 65)
                  │  │││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.09%    0.07%  │  ↘││  0x00007ff7783bd3cb: test   %eax,0x15e85c2f(%rip)        # 0x00007ff78e243000
                  │   ││                                                ;*goto
                  │   ││                                                ; - com.google.re2j.Inst::matchRune@54 (line 65)
                  │   ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
                  │   ││                                                ;   {poll}
  0.18%    0.15%  │   ││  0x00007ff7783bd3d1: cmp    %ebx,%r10d
                  │   ││  0x00007ff7783bd3d4: je     0x00007ff7783bcfc0  ;*if_icmpeq
                  │   ││                                                ; - com.google.re2j.Inst::matchRune@39 (line 64)
                  │   ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
                  │   ││  0x00007ff7783bd3da: mov    %ebx,%r11d         ;*iload_1
                  │   ││                                                ; - com.google.re2j.Inst::matchRune@42 (line 66)
                  │   ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.09%    0.14%  │   ││  0x00007ff7783bd3dd: cmp    %r10d,%ecx
                  │   ││  0x00007ff7783bd3e0: je     0x00007ff7783bd6f8  ;*if_icmpne
                  │   ││                                                ; - com.google.re2j.Inst::matchRune@44 (line 66)
                  │   ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
           0.00%  │   ││  0x00007ff7783bd3e6: mov    %r10d,%r14d
  0.06%    0.09%  │   ││  0x00007ff7783bd3e9: mov    %r11d,%ebx
  0.12%    0.21%  │   ││  0x00007ff7783bd3ec: mov    $0x1f,%esi
  0.13%    0.14%  │   ││  0x00007ff7783bd3f1: mov    $0x1f,%r8d
  0.00%    0.00%  │   ││  0x00007ff7783bd3f7: xor    %r10d,%r10d
  0.08%    0.12%  │   ││  0x00007ff7783bd3fa: mov    $0x3f,%r11d
  0.14%    0.19%  │   ││  0x00007ff7783bd400: mov    %r10d,0x20(%rsp)
  0.11%    0.14%  │   ││  0x00007ff7783bd405: vmovd  %r11d,%xmm2
  0.00%    0.03%  │   ╰│  0x00007ff7783bd40a: jmpq   0x00007ff7783bd307
  0.23%    0.32%  ↘    │  0x00007ff7783bd40f: inc    %r8d               ;*iadd
                       │                                                ; - com.google.re2j.Unicode::simpleFold@33 (line 210)
                       │                                                ; - com.google.re2j.Inst::matchRune@50 (line 65)
                       │                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.03%    0.08%       │  0x00007ff7783bd412: mov    %r8d,0x20(%rsp)
  0.10%    0.18%       │  0x00007ff7783bd417: vmovd  %xmm2,%r8d
  0.04%    0.02%       ╰  0x00007ff7783bd41c: jmpq   0x00007ff7783bd33d
  0.06%    0.08%          0x00007ff7783bd421: xor    %r11d,%r11d
                          0x00007ff7783bd424: mov    0x20(%rsp),%ecx
  0.00%                   0x00007ff7783bd428: mov    0xac(%rsp),%r14d
  0.06%    0.07%          0x00007ff7783bd430: jmpq   0x00007ff7783bcc95
                          0x00007ff7783bd435: mov    0xb0(%rsp),%edx
                          0x00007ff7783bd43c: test   %edx,%edx
                          0x00007ff7783bd43e: jne    0x00007ff7783bcdff  ;*ifne
                                                                        ; - com.google.re2j.Machine::step@168 (line 282)
                          0x00007ff7783bd444: mov    0x20(%rsp),%ecx
                          0x00007ff7783bd448: jmpq   0x00007ff7783bcb6e
                          0x00007ff7783bd44d: mov    %r11d,%r9d
                          0x00007ff7783bd450: sar    %r9d
                          0x00007ff7783bd453: add    %r11d,%r9d         ;*iadd
                                                                        ; - java.util.ArrayList::grow@10 (line 255)
....................................................................................................
 16.73%   20.93%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 553 (220 bytes) 

                      0x00007ff7783bce99: mov    0x40(%rsp),%rbx    ;*iload
                                                                    ; - com.google.re2j.Machine::step@233 (line 291)
                      0x00007ff7783bce9e: mov    0x8(%rsp),%rcx
                      0x00007ff7783bcea3: mov    0xc(%rcx),%edi
                      0x00007ff7783bcea6: cmp    %edi,%r14d
                      0x00007ff7783bcea9: jge    0x00007ff7783bd2c5  ;*if_icmpge
                                                                    ; - com.google.re2j.Machine::step@250 (line 293)
                      0x00007ff7783bceaf: mov    %r14d,%ecx
                      0x00007ff7783bceb2: jmpq   0x00007ff7783bd07d  ;*if_icmpge
                                                                    ; - com.google.re2j.Machine::step@18 (line 264)
  0.05%    0.03%      0x00007ff7783bceb7: mov    0x8(%rsp),%r10
           0.01%      0x00007ff7783bcebc: mov    %r12d,0xc(%r10)    ;*getfield size
                                                                    ; - com.google.re2j.Machine::step@15 (line 264)
  0.04%    0.07%      0x00007ff7783bcec0: add    $0x90,%rsp
                      0x00007ff7783bcec7: pop    %rbp
  0.05%    0.07%      0x00007ff7783bcec8: test   %eax,0x15e86132(%rip)        # 0x00007ff78e243000
                                                                    ;   {poll_return}
           0.02%      0x00007ff7783bcece: retq   
                      0x00007ff7783bcecf: nop
  0.30%    0.56%  ↗   0x00007ff7783bced0: mov    %r8d,%r14d
  0.68%    0.63%  │   0x00007ff7783bced3: vmovd  %ebx,%xmm1
  0.37%    0.26%  │   0x00007ff7783bced7: mov    %ebx,%r8d
  0.32%    0.45%  │   0x00007ff7783bceda: sub    %r14d,%r8d         ;*isub
                  │                                                 ; - com.google.re2j.Unicode::simpleFold@15 (line 208)
                  │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 63)
                  │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.41%    0.43%  │   0x00007ff7783bcedd: mov    %r8d,%r10d
  0.70%    0.46%  │   0x00007ff7783bcee0: sar    $0x1f,%r10d
  0.31%    0.15%  │   0x00007ff7783bcee4: shr    $0x1f,%r10d
  0.33%    0.46%  │   0x00007ff7783bcee8: add    %r8d,%r10d
  0.39%    0.34%  │   0x00007ff7783bceeb: sar    %r10d
  0.62%    0.52%  │   0x00007ff7783bceee: mov    %r14d,%ebx
  0.37%    0.23%  │   0x00007ff7783bcef1: add    %r10d,%ebx         ;*idiv
                  │                                                 ; - com.google.re2j.Unicode::simpleFold@17 (line 208)
                  │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 63)
                  │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.33%    0.39%  │   0x00007ff7783bcef4: cmp    $0x3f,%ebx
                  │   0x00007ff7783bcef7: jae    0x00007ff7783bd9c1
  0.59%    0.75%  │   0x00007ff7783bcefd: movslq %r10d,%r10
  0.68%    0.93%  │   0x00007ff7783bcf00: movslq %r14d,%r11
  0.41%    0.56%  │   0x00007ff7783bcf03: add    %r10,%r11
  0.37%    0.46%  │   0x00007ff7783bcf06: mov    0x10(%r9,%r11,4),%ebp  ;*aaload
                  │                                                 ; - com.google.re2j.Unicode::simpleFold@24 (line 209)
                  │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 63)
                  │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.65%    0.62%  │   0x00007ff7783bcf0b: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007ff7783be3a5
  0.78%    0.83%  │   0x00007ff7783bcf10: test   %r10d,%r10d
                  │   0x00007ff7783bcf13: jbe    0x00007ff7783bda11  ;*iaload
                  │                                                 ; - com.google.re2j.Unicode::simpleFold@26 (line 209)
                  │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 63)
                  │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.53%    0.74%  │   0x00007ff7783bcf19: mov    0x10(%r12,%rbp,8),%r10d
  0.42%    0.54%  │   0x00007ff7783bcf1e: cmp    0x20(%rsp),%r10d
                  │   0x00007ff7783bcf23: jl     0x00007ff7783bcfd8  ;*if_icmpge
                  │                                                 ; - com.google.re2j.Unicode::simpleFold@28 (line 209)
                  │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 63)
                  │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.76%    0.95%  │   0x00007ff7783bcf29: mov    %r14d,%r8d         ; OopMap{r9=Oop rdi=NarrowOop rdx=NarrowOop rax=NarrowOop r13=Oop xmm0=Oop [8]=Oop [24]=Oop [40]=Oop off=1100}
                  │                                                 ;*goto
                  │                                                 ; - com.google.re2j.Unicode::simpleFold@40 (line 214)
                  │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 63)
                  │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.56%    0.68%  │   0x00007ff7783bcf2c: test   %eax,0x15e860ce(%rip)        # 0x00007ff78e243000
                  │                                                 ;*goto
                  │                                                 ; - com.google.re2j.Unicode::simpleFold@40 (line 214)
                  │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 63)
                  │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
                  │                                                 ;   {poll}
  0.59%    0.53%  │   0x00007ff7783bcf32: cmp    %ebx,%r8d
                  ╰   0x00007ff7783bcf35: jl     0x00007ff7783bced0  ;*if_icmpge
                                                                    ; - com.google.re2j.Unicode::simpleFold@9 (line 207)
                                                                    ; - com.google.re2j.Inst::matchRune@33 (line 63)
                                                                    ; - com.google.re2j.Machine::step@308 (line 306)
           0.00%      0x00007ff7783bcf37: cmp    $0x3f,%r8d
                      0x00007ff7783bcf3b: jge    0x00007ff7783be02d  ;*if_icmpge
                                                                    ; - com.google.re2j.Unicode::simpleFold@48 (line 215)
                                                                    ; - com.google.re2j.Inst::matchRune@33 (line 63)
                                                                    ; - com.google.re2j.Machine::step@308 (line 306)
  0.06%    0.12%      0x00007ff7783bcf41: cmp    $0x3f,%r8d
                      0x00007ff7783bcf45: jae    0x00007ff7783bdce1
  0.14%    0.27%      0x00007ff7783bcf4b: mov    0x10(%r9,%r8,4),%ebp  ;*aaload
                                                                    ; - com.google.re2j.Unicode::simpleFold@55 (line 215)
                                                                    ; - com.google.re2j.Inst::matchRune@33 (line 63)
                                                                    ; - com.google.re2j.Machine::step@308 (line 306)
  0.15%    0.11%      0x00007ff7783bcf50: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007ff7783be499
  0.04%    0.01%      0x00007ff7783bcf55: test   %r11d,%r11d
                      0x00007ff7783bcf58: jbe    0x00007ff7783bdd75
  0.06%    0.10%      0x00007ff7783bcf5e: mov    0x10(%r12,%rbp,8),%ebp  ;*iaload
                                                                    ; - com.google.re2j.Unicode::simpleFold@57 (line 215)
                                                                    ; - com.google.re2j.Inst::matchRune@33 (line 63)
                                                                    ; - com.google.re2j.Machine::step@308 (line 306)
  0.16%    0.19%      0x00007ff7783bcf63: cmp    0x20(%rsp),%ebp
                      0x00007ff7783bcf67: je     0x00007ff7783be075  ;*if_icmpne
                                                                    ; - com.google.re2j.Unicode::simpleFold@59 (line 215)
                                                                    ; - com.google.re2j.Inst::matchRune@33 (line 63)
                                                                    ; - com.google.re2j.Machine::step@308 (line 306)
  0.07%    0.09%      0x00007ff7783bcf6d: mov    0x20(%rsp),%r11d
  0.01%               0x00007ff7783bcf72: cmp    $0x7f,%r11d
                      0x00007ff7783bcf76: jg     0x00007ff7783be0ad  ;*if_icmpgt
                                                                    ; - com.google.re2j.Unicode::toLower@3 (line 177)
                                                                    ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                                                                    ; - com.google.re2j.Inst::matchRune@33 (line 63)
                                                                    ; - com.google.re2j.Machine::step@308 (line 306)
  0.06%    0.07%      0x00007ff7783bcf7c: cmp    $0x41,%r11d
  0.17%    0.19%      0x00007ff7783bcf80: jl     0x00007ff7783bdf25  ;*if_icmpgt
                                                                    ; - com.google.re2j.Unicode::toLower@9 (line 178)
                                                                    ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                                                                    ; - com.google.re2j.Inst::matchRune@33 (line 63)
                                                                    ; - com.google.re2j.Machine::step@308 (line 306)
  0.13%    0.13%      0x00007ff7783bcf86: cmp    $0x5a,%r11d
                   ╭  0x00007ff7783bcf8a: jg     0x00007ff7783bcf9c  ;*if_icmpgt
                   │                                                ; - com.google.re2j.Unicode::toLower@15 (line 178)
                   │                                                ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                   │                                                ; - com.google.re2j.Inst::matchRune@33 (line 63)
                   │                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.01%    0.01%   │  0x00007ff7783bcf8c: mov    %r11d,%r10d
  0.07%    0.13%   │  0x00007ff7783bcf8f: add    $0x20,%r10d        ;*iinc
                   │                                                ; - com.google.re2j.Unicode::toLower@18 (line 179)
                   │                                                ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                   │                                                ; - com.google.re2j.Inst::matchRune@33 (line 63)
                   │                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.13%    0.28%   │  0x00007ff7783bcf93: cmp    %r11d,%r10d
                   │  0x00007ff7783bcf96: jne    0x00007ff7783bd3dd  ;*if_icmpeq
                   │                                                ; - com.google.re2j.Unicode::simpleFold@77 (line 224)
                   │                                                ; - com.google.re2j.Inst::matchRune@33 (line 63)
                   │                                                ; - com.google.re2j.Machine::step@308 (line 306)
                   ↘  0x00007ff7783bcf9c: cmp    $0x61,%r11d
                      0x00007ff7783bcfa0: jl     0x00007ff7783be191  ;*if_icmpgt
....................................................................................................
 12.90%   14.36%  <total for region 3>

....[Hottest Region 4]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 545 (403 bytes) 

                          0x00007ff7783b2fa2: mov    %r10,(%rsp)
                          0x00007ff7783b2fa6: nop
                          0x00007ff7783b2fa7: callq  0x00007ff7781b0020  ; OopMap{off=684}
                                                                        ;*invokespecial add
                                                                        ; - com.google.re2j.Machine::add@203 (line 369)
                                                                        ;   {optimized virtual_call}
                  ╭       0x00007ff7783b2fac: jmpq   0x00007ff7783b3143
                  │       0x00007ff7783b2fb1: mov    0x70(%rsp),%rax
                  │╭      0x00007ff7783b2fb6: jmpq   0x00007ff7783b3143  ;*tableswitch
                  ││                                                    ; - com.google.re2j.Machine::add@40 (line 349)
  1.29%    1.37%  ││      0x00007ff7783b2fbb: mov    0x8(%rsp),%rsi
                  ││      0x00007ff7783b2fc0: mov    0x48(%rsp),%rdx
  0.00%           ││      0x00007ff7783b2fc5: mov    0x1c(%rsp),%r8d
           0.00%  ││      0x00007ff7783b2fca: mov    0x20(%rsp),%r9
  0.34%    0.29%  ││      0x00007ff7783b2fcf: mov    0x28(%rsp),%edi
                  ││      0x00007ff7783b2fd3: mov    0x70(%rsp),%r10
  0.00%           ││      0x00007ff7783b2fd8: mov    %r10,(%rsp)
  0.00%    0.00%  ││      0x00007ff7783b2fdc: mov    %rsi,%rbp
  0.35%    0.33%  ││      0x00007ff7783b2fdf: callq  0x00007ff7781b0020  ; OopMap{rbp=Oop [32]=Oop [56]=Oop [72]=Oop off=740}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@127 (line 358)
                  ││                                                    ;   {optimized virtual_call}
  0.00%    0.00%  ││      0x00007ff7783b2fe4: mov    0x38(%rsp),%r10
  0.15%    0.10%  ││      0x00007ff7783b2fe9: mov    0x14(%r10),%ecx    ;*getfield arg
                  ││                                                    ; - com.google.re2j.Machine::add@136 (line 359)
  0.13%    0.29%  ││      0x00007ff7783b2fed: mov    %rbp,%rsi
  0.00%           ││      0x00007ff7783b2ff0: mov    0x48(%rsp),%rdx
  0.00%    0.01%  ││      0x00007ff7783b2ff5: mov    0x1c(%rsp),%r8d
  0.18%    0.18%  ││      0x00007ff7783b2ffa: mov    0x20(%rsp),%r9
  0.16%    0.21%  ││      0x00007ff7783b2fff: mov    0x28(%rsp),%edi
  0.01%    0.01%  ││      0x00007ff7783b3003: mov    %rax,(%rsp)
  0.01%           ││      0x00007ff7783b3007: callq  0x00007ff7781b0020  ; OopMap{off=780}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@146 (line 359)
                  ││                                                    ;   {optimized virtual_call}
  0.01%    0.01%  ││╭     0x00007ff7783b300c: jmpq   0x00007ff7783b3143  ;*aload
                  │││                                                   ; - com.google.re2j.Machine::add@293 (line 388)
  2.38%    1.75%  │││     0x00007ff7783b3011: mov    %r8,%r10
           0.00%  │││     0x00007ff7783b3014: mov    %r10,%r9
  0.00%    0.00%  │││     0x00007ff7783b3017: shr    $0x3,%r9           ;*putfield inst
                  │││                                                   ; - com.google.re2j.Machine::alloc@47 (line 151)
                  │││                                                   ; - com.google.re2j.Machine::add@301 (line 389)
  0.00%           │││     0x00007ff7783b301b: mov    0x70(%rsp),%rbp
  0.50%    0.30%  │││     0x00007ff7783b3020: test   %rbp,%rbp
                  │││╭    0x00007ff7783b3023: je     0x00007ff7783b3043  ;*ifnonnull
                  ││││                                                  ; - com.google.re2j.Machine::add@295 (line 388)
                  ││││    0x00007ff7783b3025: mov    %r9d,0x10(%rbp)
                  ││││    0x00007ff7783b3029: mov    %rbp,%r10
                  ││││    0x00007ff7783b302c: shr    $0x9,%r10
  0.06%    0.01%  ││││    0x00007ff7783b3030: movabs $0x7ff773b98000,%r11
                  ││││    0x00007ff7783b303a: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                  ││││                                                  ; - com.google.re2j.Machine::add@313 (line 391)
                  ││││╭   0x00007ff7783b303e: jmpq   0x00007ff7783b30d4
  0.00%           │││↘│   0x00007ff7783b3043: mov    0x8(%rsp),%r10
           0.00%  │││ │   0x00007ff7783b3048: mov    0x20(%r10),%ebp    ;*getfield pool
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@1 (line 147)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
           0.00%  │││ │   0x00007ff7783b304c: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007ff7783b36ad
  0.40%    0.24%  │││ │   0x00007ff7783b3051: cmp    $0xf8002f22,%r10d  ;   {metadata(&apos;java/util/ArrayList&apos;)}
                  │││ │   0x00007ff7783b3058: jne    0x00007ff7783b3449
  0.01%           │││ │   0x00007ff7783b305e: lea    (%r12,%rbp,8),%r10  ;*invokeinterface size
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@4 (line 147)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
           0.01%  │││ │   0x00007ff7783b3062: mov    0x10(%r10),%ecx    ;*getfield size
                  │││ │                                                 ; - java.util.ArrayList::size@1 (line 278)
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@4 (line 147)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
  0.00%           │││ │   0x00007ff7783b3066: test   %ecx,%ecx
                  │││ │   0x00007ff7783b3068: jle    0x00007ff7783b3176  ;*ifle
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@11 (line 148)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
  0.43%    0.12%  │││ │   0x00007ff7783b306e: mov    %ecx,%r11d
                  │││ │   0x00007ff7783b3071: dec    %r11d              ;*isub
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@20 (line 148)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
  0.01%           │││ │   0x00007ff7783b3074: cmp    %ecx,%r11d
                  │││ │   0x00007ff7783b3077: jge    0x00007ff7783b3499  ;*if_icmplt
                  │││ │                                                 ; - java.util.ArrayList::rangeCheck@5 (line 652)
                  │││ │                                                 ; - java.util.ArrayList::remove@2 (line 492)
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@21 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
  0.00%           │││ │   0x00007ff7783b307d: incl   0xc(%r10)          ;*putfield modCount
                  │││ │                                                 ; - java.util.ArrayList::remove@12 (line 494)
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@21 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
  0.47%    0.13%  │││ │   0x00007ff7783b3081: mov    0x14(%r10),%ebp    ;*getfield elementData
                  │││ │                                                 ; - java.util.ArrayList::elementData@1 (line 418)
                  │││ │                                                 ; - java.util.ArrayList::remove@17 (line 495)
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@21 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
  0.00%           │││ │   0x00007ff7783b3085: mov    0xc(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007ff7783b36d5
  0.49%    0.23%  │││ │   0x00007ff7783b308a: cmp    %r8d,%r11d
                  │││ │   0x00007ff7783b308d: jae    0x00007ff7783b3421  ;*aaload
                  │││ │                                                 ; - java.util.ArrayList::elementData@5 (line 418)
                  │││ │                                                 ; - java.util.ArrayList::remove@17 (line 495)
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@21 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
                  │││ │   0x00007ff7783b3093: mov    %r11d,0x10(%r10)   ;*putfield size
                  │││ │                                                 ; - java.util.ArrayList::remove@62 (line 501)
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@21 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
  0.00%    0.01%  │││ │   0x00007ff7783b3097: lea    (%r12,%rbp,8),%r10
  0.00%    0.01%  │││ │   0x00007ff7783b309b: mov    0xc(%r10,%rcx,4),%ebp  ;*aaload
                  │││ │                                                 ; - java.util.ArrayList::elementData@5 (line 418)
                  │││ │                                                 ; - java.util.ArrayList::remove@17 (line 495)
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@21 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
  0.45%    0.36%  │││ │   0x00007ff7783b30a0: mov    %r12d,0xc(%r10,%rcx,4)  ;*aastore
                  │││ │                                                 ; - java.util.ArrayList::remove@66 (line 501)
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@21 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
                  │││ │   0x00007ff7783b30a5: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007ff7783b36e9
  0.01%    0.00%  │││ │   0x00007ff7783b30aa: cmp    $0xf8019b16,%r10d  ;   {metadata(&apos;com/google/re2j/Machine$Thread&apos;)}
                  │││ │   0x00007ff7783b30b1: jne    0x00007ff7783b35e1
           0.01%  │││ │   0x00007ff7783b30b7: shl    $0x3,%rbp          ;*astore_3
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@44 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
  0.41%    0.36%  │││ │   0x00007ff7783b30bb: mov    %r9d,0x10(%rbp)
  0.00%    0.00%  │││ │   0x00007ff7783b30bf: mov    %rbp,%r10
  0.00%           │││ │   0x00007ff7783b30c2: shr    $0x9,%r10
  0.01%    0.00%  │││ │   0x00007ff7783b30c6: movabs $0x7ff773b98000,%r11
  0.48%    0.20%  │││ │   0x00007ff7783b30d0: mov    %r12b,(%r11,%r10,1)  ;*aload
                  │││ │                                                 ; - com.google.re2j.Machine::add@316 (line 393)
  0.00%    0.01%  │││ ↘   0x00007ff7783b30d4: mov    0x20(%rsp),%rdi
  0.11%    0.01%  │││     0x00007ff7783b30d9: mov    0xc(%rdi),%r10d    ;*arraylength
                  │││                                                   ; - com.google.re2j.Machine::add@318 (line 393)
                  │││                                                   ; implicit exception: dispatches to 0x00007ff7783b369d
  0.01%           │││     0x00007ff7783b30dd: test   %r10d,%r10d
                  │││     0x00007ff7783b30e0: jle    0x00007ff7783b347e  ;*ifle
                  │││                                                   ; - com.google.re2j.Machine::add@319 (line 393)
  0.41%    0.21%  │││     0x00007ff7783b30e6: mov    0xc(%rbp),%r8d     ;*getfield cap
                  │││                                                   ; - com.google.re2j.Machine::add@324 (line 393)
  0.01%    0.03%  │││     0x00007ff7783b30ea: mov    %r8,%r11
  0.08%    0.03%  │││     0x00007ff7783b30ed: shl    $0x3,%r11
           0.01%  │││     0x00007ff7783b30f1: cmp    %rdi,%r11
                  │││  ╭  0x00007ff7783b30f4: je     0x00007ff7783b3121  ;*if_acmpeq
                  │││  │                                                ; - com.google.re2j.Machine::add@329 (line 393)
  0.44%    0.19%  │││  │  0x00007ff7783b30f6: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x00007ff7783b36bd
  0.03%    0.03%  │││  │  0x00007ff7783b30fb: lea    (%r12,%r8,8),%rcx  ;*getfield cap
                  │││  │                                                ; - com.google.re2j.Machine::add@324 (line 393)
  0.00%    0.00%  │││  │  0x00007ff7783b30ff: cmp    %r10d,%r11d
                  │││  │  0x00007ff7783b3102: jb     0x00007ff7783b345d
  0.02%    0.03%  │││  │  0x00007ff7783b3108: lea    0x10(%r12,%r8,8),%rsi
  0.41%    0.24%  │││  │  0x00007ff7783b310d: add    $0x10,%rdi
           0.00%  │││  │  0x00007ff7783b3111: movslq %r10d,%rdx
  0.00%           │││  │  0x00007ff7783b3114: movabs $0x7ff7781bc640,%r10
  0.04%    0.04%  │││  │  0x00007ff7783b311e: callq  *%r10              ;*aload
                  │││  │                                                ; - com.google.re2j.Machine::add@347 (line 396)
                  │││  ↘  0x00007ff7783b3121: mov    %rbx,%r10
  0.00%    0.02%  │││     0x00007ff7783b3124: mov    %rbp,%r8
  0.09%    0.03%  │││     0x00007ff7783b3127: shr    $0x3,%r8
  0.39%    0.56%  │││     0x00007ff7783b312b: mov    %r8d,0x10(%rbx)
  0.00%           │││     0x00007ff7783b312f: shr    $0x9,%r10
  0.01%    0.03%  │││     0x00007ff7783b3133: movabs $0x7ff773b98000,%r11
  0.09%    0.09%  │││     0x00007ff7783b313d: mov    %r12b,(%r11,%r10,1)  ;*putfield thread
                  │││                                                   ; - com.google.re2j.Machine::add@351 (line 396)
  0.41%    0.59%  │││     0x00007ff7783b3141: xor    %eax,%eax          ;*synchronization entry
                  │││                                                   ; - com.google.re2j.Machine::add@-1 (line 341)
  0.33%    0.32%  ↘↘↘     0x00007ff7783b3143: add    $0x60,%rsp
  0.04%    0.04%          0x00007ff7783b3147: pop    %rbp
  0.49%    0.71%          0x00007ff7783b3148: test   %eax,0x15e8feb2(%rip)        # 0x00007ff78e243000
                                                                        ;   {poll_return}
  0.39%    0.54%          0x00007ff7783b314e: retq                      ;*tableswitch
                                                                        ; - com.google.re2j.Machine::add@40 (line 349)
                          0x00007ff7783b314f: mov    0x8(%rsp),%rsi
                          0x00007ff7783b3154: mov    0x48(%rsp),%rdx
                          0x00007ff7783b3159: mov    0x1c(%rsp),%r8d
                          0x00007ff7783b315e: mov    0x20(%rsp),%r9
                          0x00007ff7783b3163: mov    %ebx,%edi
                          0x00007ff7783b3165: mov    0x70(%rsp),%r10
                          0x00007ff7783b316a: mov    %r10,(%rsp)
                          0x00007ff7783b316e: nop
....................................................................................................
 12.65%   10.37%  <total for region 4>

....[Hottest Region 5]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 553 (310 bytes) 

                                                                    ;*invokespecial add
                                                                    ; - com.google.re2j.Machine::step@394 (line 325)
                                                                    ;   {optimized virtual_call}
                      0x00007ff7783bcbc0: test   %rax,%rax
                      0x00007ff7783bcbc3: je     0x00007ff7783bd421
                      0x00007ff7783bcbc9: mov    %rax,0x50(%rsp)
                      0x00007ff7783bcbce: mov    0x20(%rsp),%ecx
                      0x00007ff7783bcbd2: mov    0xa4(%rsp),%r8d
                      0x00007ff7783bcbda: mov    0xac(%rsp),%r14d   ;*aload
                                                                    ; - com.google.re2j.Machine::step@399 (line 327)
  0.27%    0.20%      0x00007ff7783bcbe2: mov    0x28(%rsp),%r10
                      0x00007ff7783bcbe7: mov    0x20(%r10),%ebp    ;*getfield pool
                                                                    ; - com.google.re2j.Machine::step@405 (line 329)
  0.12%    0.13%      0x00007ff7783bcbeb: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007ff7783be375
  0.07%    0.06%      0x00007ff7783bcbf0: cmp    $0xf8002f22,%r11d  ;   {metadata(&apos;java/util/ArrayList&apos;)}
                      0x00007ff7783bcbf7: jne    0x00007ff7783bd941
  0.26%    0.36%      0x00007ff7783bcbfd: lea    (%r12,%rbp,8),%rbx  ;*invokeinterface add
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
           0.01%      0x00007ff7783bcc01: mov    0x14(%rbx),%edx    ;*getfield elementData
                                                                    ; - java.util.ArrayList::ensureCapacityInternal@1 (line 223)
                                                                    ; - java.util.ArrayList::add@7 (line 458)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
  0.10%    0.17%      0x00007ff7783bcc04: mov    0x10(%rbx),%ebp    ;*getfield size
                                                                    ; - java.util.ArrayList::add@2 (line 458)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
  0.07%    0.05%      0x00007ff7783bcc07: mov    %ebp,%r9d
  0.32%    0.30%      0x00007ff7783bcc0a: inc    %r9d               ;*iadd
                                                                    ; - java.util.ArrayList::add@6 (line 458)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
                      0x00007ff7783bcc0d: cmp    $0xed9f0db7,%edx   ;   {oop(a &apos;java/lang/Object&apos;[0] )}
                      0x00007ff7783bcc13: je     0x00007ff7783bd704  ;*if_acmpne
                                                                    ; - java.util.ArrayList::ensureCapacityInternal@7 (line 223)
                                                                    ; - java.util.ArrayList::add@7 (line 458)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
  0.13%    0.13%      0x00007ff7783bcc19: mov    %r9d,%esi          ;*aload_0
                                                                    ; - java.util.ArrayList::ensureCapacityInternal@17 (line 227)
                                                                    ; - java.util.ArrayList::add@7 (line 458)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
  0.07%    0.06%      0x00007ff7783bcc1c: mov    0xc(%rbx),%r11d    ;*getfield modCount
                                                                    ; - java.util.ArrayList::ensureExplicitCapacity@2 (line 231)
                                                                    ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                                    ; - java.util.ArrayList::add@7 (line 458)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
  0.26%    0.29%      0x00007ff7783bcc20: inc    %r11d
                      0x00007ff7783bcc23: mov    %r11d,0xc(%rbx)    ;*putfield modCount
                                                                    ; - java.util.ArrayList::ensureExplicitCapacity@7 (line 231)
                                                                    ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                                    ; - java.util.ArrayList::add@7 (line 458)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
  0.14%    0.16%      0x00007ff7783bcc27: mov    0xc(%r12,%rdx,8),%r11d  ;*arraylength
                                                                    ; - java.util.ArrayList::ensureExplicitCapacity@15 (line 234)
                                                                    ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                                    ; - java.util.ArrayList::add@7 (line 458)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
                                                                    ; implicit exception: dispatches to 0x00007ff7783be385
  0.06%    0.10%      0x00007ff7783bcc2c: mov    %esi,%r10d
  0.27%    0.27%      0x00007ff7783bcc2f: sub    %r11d,%r10d
  0.01%    0.01%      0x00007ff7783bcc32: test   %r10d,%r10d
                      0x00007ff7783bcc35: jg     0x00007ff7783bd44d  ;*ifle
                                                                    ; - java.util.ArrayList::ensureExplicitCapacity@17 (line 234)
                                                                    ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                                    ; - java.util.ArrayList::add@7 (line 458)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
  0.10%    0.10%      0x00007ff7783bcc3b: mov    %rdx,%r11
  0.03%    0.07%      0x00007ff7783bcc3e: shl    $0x3,%r11          ;*return
                                                                    ; - java.util.ArrayList::ensureExplicitCapacity@25 (line 236)
                                                                    ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                                    ; - java.util.ArrayList::add@7 (line 458)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
  0.31%    0.18%      0x00007ff7783bcc42: mov    %r9d,0x10(%rbx)    ;*putfield size
                                                                    ; - java.util.ArrayList::add@22 (line 459)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
  0.01%               0x00007ff7783bcc46: mov    0xc(%r11),%r10d    ; implicit exception: dispatches to 0x00007ff7783be395
  0.09%    0.11%      0x00007ff7783bcc4a: cmp    %r10d,%ebp
                      0x00007ff7783bcc4d: jae    0x00007ff7783bd8fd
  0.06%    0.07%      0x00007ff7783bcc53: mov    0x8(%r11),%r10d
  0.26%    0.24%      0x00007ff7783bcc57: cmp    $0xf80022f5,%r10d  ;   {metadata(&apos;java/lang/Object&apos;[])}
                      0x00007ff7783bcc5e: jne    0x00007ff7783bd97d
  0.00%               0x00007ff7783bcc64: lea    0x10(%r11,%rbp,4),%r10
  0.07%    0.11%      0x00007ff7783bcc69: mov    0x50(%rsp),%r11
  0.08%    0.03%      0x00007ff7783bcc6e: shr    $0x3,%r11
  0.21%    0.14%      0x00007ff7783bcc72: mov    %r11d,(%r10)
  0.02%    0.00%      0x00007ff7783bcc75: shr    $0x9,%r10
  0.08%    0.08%      0x00007ff7783bcc79: movabs $0x7ff773b98000,%r11
  0.07%    0.03%      0x00007ff7783bcc83: mov    %r12b,(%r11,%r10,1)  ;*aastore
                                                                    ; - java.util.ArrayList::add@26 (line 459)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
  0.35%    0.12%      0x00007ff7783bcc87: xor    %r11d,%r11d
                  ╭   0x00007ff7783bcc8a: jmp    0x00007ff7783bcc95
  0.17%    0.13%  │↗  0x00007ff7783bcc8c: mov    0x24(%rsp),%r11d
  0.02%    0.05%  ││  0x00007ff7783bcc91: mov    0x20(%rsp),%ecx    ; OopMap{[8]=Oop [24]=Oop [40]=Oop off=437}
                  ││                                                ;*goto
                  ││                                                ; - com.google.re2j.Machine::step@419 (line 264)
  0.16%    0.12%  ↘│  0x00007ff7783bcc95: test   %eax,0x15e86365(%rip)        # 0x00007ff78e243000
                   │                                                ;*goto
                   │                                                ; - com.google.re2j.Machine::step@419 (line 264)
                   │                                                ;   {poll}
  0.07%    0.07%   │  0x00007ff7783bcc9b: mov    0x8(%rsp),%r10
  0.43%    0.40%   │  0x00007ff7783bcca0: mov    0xc(%r10),%r11d
  0.15%    0.08%   │  0x00007ff7783bcca4: cmp    %r11d,%r14d
                   │  0x00007ff7783bcca7: jge    0x00007ff7783bceb7
  0.17%    0.08%   │  0x00007ff7783bccad: mov    %ecx,0x20(%rsp)
  0.09%    0.05%   │  0x00007ff7783bccb1: mov    %r14d,%r8d         ;*aload_1
                   │                                                ; - com.google.re2j.Machine::step@21 (line 265)
  0.53%    0.35%   │  0x00007ff7783bccb4: mov    0x8(%rsp),%r10
  0.28%    0.23%   │  0x00007ff7783bccb9: mov    0x10(%r10),%r11d   ;*getfield dense
                   │                                                ; - com.google.re2j.Machine::step@22 (line 265)
  0.44%    0.26%   │  0x00007ff7783bccbd: mov    0xc(%r12,%r11,8),%r10d  ; implicit exception: dispatches to 0x00007ff7783be31d
  0.36%    0.41%   │  0x00007ff7783bccc2: cmp    %r10d,%r8d
                   │  0x00007ff7783bccc5: jae    0x00007ff7783bd7d3
  0.48%    0.61%   │  0x00007ff7783bcccb: lea    (%r12,%r11,8),%r10
  0.07%    0.17%   │  0x00007ff7783bcccf: mov    0x10(%r10,%r8,4),%r9d  ;*aaload
                   │                                                ; - com.google.re2j.Machine::step@27 (line 265)
  0.21%    0.14%   │  0x00007ff7783bccd4: mov    0x10(%r12,%r9,8),%r11d  ;*getfield thread
                   │                                                ; - com.google.re2j.Machine::step@40 (line 269)
                   │                                                ; implicit exception: dispatches to 0x00007ff7783be3b5
  0.69%    0.88%   │  0x00007ff7783bccd9: mov    %r8d,%r14d
  0.35%    0.44%   │  0x00007ff7783bccdc: inc    %r14d              ;*iadd
                   │                                                ; - com.google.re2j.Machine::step@241 (line 293)
  0.11%    0.05%   │  0x00007ff7783bccdf: test   %r11d,%r11d
                   ╰  0x00007ff7783bcce2: je     0x00007ff7783bcc8c  ;*ifnonnull
                                                                    ; - com.google.re2j.Machine::step@47 (line 270)
  0.18%    0.13%      0x00007ff7783bcce4: mov    0x24(%rsp),%r9d
  0.06%    0.07%      0x00007ff7783bcce9: test   %r9d,%r9d
                      0x00007ff7783bccec: jne    0x00007ff7783bdbd1  ;*ifeq
                                                                    ; - com.google.re2j.Machine::step@55 (line 273)
  0.31%    0.42%      0x00007ff7783bccf2: mov    0x10(%r12,%r11,8),%r10d  ;*getfield inst
                                                                    ; - com.google.re2j.Machine::step@107 (line 278)
  0.62%    0.69%      0x00007ff7783bccf7: mov    0xc(%r12,%r10,8),%esi  ;*getfield op
                                                                    ; - com.google.re2j.Machine::step@117 (line 280)
                                                                    ; implicit exception: dispatches to 0x00007ff7783be365
  1.73%    2.20%      0x00007ff7783bccfc: mov    0x18(%r12,%r10,8),%ecx  ;*getfield runes
                                                                    ; - com.google.re2j.Machine::step@320 (line 310)
  0.09%    0.09%      0x00007ff7783bcd01: mov    0xc(%r12,%r11,8),%edi  ;*getfield cap
                                                                    ; - com.google.re2j.Machine::step@176 (line 287)
  0.01%    0.03%      0x00007ff7783bcd06: lea    (%r12,%r11,8),%r9  ;*getfield thread
                                                                    ; - com.google.re2j.Machine::step@40 (line 269)
  0.01%    0.00%      0x00007ff7783bcd0a: cmp    $0x9,%esi
                      0x00007ff7783bcd0d: je     0x00007ff7783bcb50
  0.38%    0.41%      0x00007ff7783bcd13: cmp    $0x9,%esi
                      0x00007ff7783bcd16: jle    0x00007ff7783bcd48
  0.02%    0.01%      0x00007ff7783bcd18: cmp    $0xb,%esi
                      0x00007ff7783bcd1b: jne    0x00007ff7783bcb75  ;*tableswitch
                                                                    ; - com.google.re2j.Machine::step@120 (line 280)
                      0x00007ff7783bcd21: mov    0x20(%rsp),%ecx
                      0x00007ff7783bcd25: cmp    $0xa,%ecx
                      0x00007ff7783bcd28: je     0x00007ff7783bcb6e  ;*if_icmpeq
                                                                    ; - com.google.re2j.Machine::step@348 (line 318)
                      0x00007ff7783bcd2e: mov    %r8d,0xa4(%rsp)
                      0x00007ff7783bcd36: mov    %r14d,0xac(%rsp)
                      0x00007ff7783bcd3e: mov    %edi,%eax
                      0x00007ff7783bcd40: mov    %r9,%r13
....................................................................................................
 12.12%   12.19%  <total for region 5>

....[Hottest Regions]...............................................................................
 26.34%   24.12%         C2, level 4  com.google.re2j.Machine::add, version 545 (398 bytes) 
 16.73%   20.93%         C2, level 4  com.google.re2j.Machine::step, version 553 (335 bytes) 
 12.90%   14.36%         C2, level 4  com.google.re2j.Machine::step, version 553 (220 bytes) 
 12.65%   10.37%         C2, level 4  com.google.re2j.Machine::add, version 545 (403 bytes) 
 12.12%   12.19%         C2, level 4  com.google.re2j.Machine::step, version 553 (310 bytes) 
  4.96%    5.20%         C2, level 4  com.google.re2j.Machine::match, version 596 (815 bytes) 
  3.38%    3.84%         C2, level 4  com.google.re2j.Machine::step, version 553 (148 bytes) 
  3.07%    1.37%        runtime stub  StubRoutines::jint_disjoint_arraycopy (128 bytes) 
  1.64%    1.69%         C2, level 4  com.google.re2j.Machine::step, version 553 (187 bytes) 
  1.40%    1.39%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.46%    0.47%         C2, level 4  com.google.re2j.Machine::step, version 553 (30 bytes) 
  0.34%    0.44%         C2, level 4  com.google.re2j.Machine::add, version 545 (40 bytes) 
  0.30%    0.32%         C2, level 4  com.google.re2j.Machine::match, version 596 (106 bytes) 
  0.18%    0.04%         C2, level 4  com.google.re2j.Machine::init, version 602 (91 bytes) 
  0.16%    0.01%   [kernel.kallsyms]  [unknown] (6 bytes) 
  0.11%    0.03%   [kernel.kallsyms]  [unknown] (22 bytes) 
  0.09%            [kernel.kallsyms]  [unknown] (45 bytes) 
  0.08%    0.01%   [kernel.kallsyms]  [unknown] (37 bytes) 
  0.08%            [kernel.kallsyms]  [unknown] (15 bytes) 
  0.08%    0.01%   [kernel.kallsyms]  [unknown] (29 bytes) 
  2.92%    3.21%  <...other 571 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 47.33%   53.58%         C2, level 4  com.google.re2j.Machine::step, version 553 
 39.33%   34.93%         C2, level 4  com.google.re2j.Machine::add, version 545 
  5.34%    5.60%         C2, level 4  com.google.re2j.Machine::match, version 596 
  3.07%    1.37%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
  2.90%    2.38%   [kernel.kallsyms]  [unknown] 
  0.28%    0.12%         C2, level 4  com.google.re2j.Machine::init, version 602 
  0.13%    0.06%         C2, level 4  com.google.re2j.Matcher::find, version 612 
  0.09%    0.07%      hsdis-amd64.so  [unknown] 
  0.09%    0.12%        libc-2.26.so  vfprintf 
  0.08%    0.03%           libjvm.so  GenericTaskQueueSet<OverflowTaskQueue<StarTask, (MemoryType)1, 131072u>, (MemoryType)1>::steal_best_of_2 
  0.07%    0.15%           libjvm.so  RelocIterator::initialize 
  0.06%    0.07%        libc-2.26.so  _IO_fwrite 
  0.06%    0.05%           libjvm.so  PSPromotionManager::copy_to_survivor_space<false> 
  0.04%    0.03%           libjvm.so  xmlTextStream::write 
  0.04%    0.03%        libc-2.26.so  _IO_default_xsputn 
  0.03%                  C2, level 4  java.util.Collections::shuffle, version 634 
  0.03%    0.03%         C2, level 4  com.google.re2j.MachineInput$UTF16Input::indexOf, version 619 
  0.03%    0.03%         C2, level 4  com.github.arnaudroger.re2j.Re2jFindRegex::testCombine, version 635 
  0.03%    0.06%           libjvm.so  fileStream::write 
  0.03%    0.05%        libc-2.26.so  __strlen_avx2 
  0.94%    0.78%  <...other 119 warm methods...>
....................................................................................................
100.00%   99.57%  <totals>

....[Distribution by Source]........................................................................
 92.54%   94.36%         C2, level 4
  3.08%    1.38%        runtime stub
  2.90%    2.38%   [kernel.kallsyms]
  0.84%    1.04%           libjvm.so
  0.39%    0.59%        libc-2.26.so
  0.10%    0.09%      hsdis-amd64.so
  0.06%    0.12%  libpthread-2.26.so
  0.05%    0.02%         interpreter
  0.04%    0.02%         C1, level 3
  0.01%                       [vdso]
  0.00%               perf-19236.map
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                        Mode  Cnt     Score    Error  Units
Re2jFindRegex.testCombine       thrpt   20  2057.965 ± 64.840  ops/s
Re2jFindRegex.testCombine:·asm  thrpt            NaN             ---
